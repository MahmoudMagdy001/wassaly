import 'package:flutter_bloc/flutter_bloc.dart' as fb;
import 'package:flutter_bloc/flutter_bloc.dart' show Emitter, BlocBase;

/// A mixin to protect Blocs from `StateError (Bad state: Cannot emit new states after calling close)`
mixin SafeBlocMixin<Event, State> on fb.Bloc<Event, State> {
  @override
  void on<E extends Event>(
    fb.EventHandler<E, State> handler, {
    fb.EventTransformer<E>? transformer,
  }) {
    super.on<E>(
      (event, emit) async {
        if (isClosed) return;
        final safeEmitter = _SafeEmitter(emit, this);
        await handler(event, safeEmitter);
      },
      transformer: transformer,
    );
  }
}

/// A mixin to protect Cubits from `StateError (Bad state: Cannot emit new states after calling close)`
mixin SafeCubitMixin<State> on fb.Cubit<State> {
  @override
  void emit(State state) {
    if (!isClosed) {
      super.emit(state);
    }
  }
}

/// A safe base Bloc class that prevents the StateError on emit.
abstract class Bloc<Event, State> extends fb.Bloc<Event, State>
    with SafeBlocMixin<Event, State> {
  Bloc(super.initialState);
}

/// A safe base Cubit class that prevents the StateError on emit.
abstract class Cubit<State> extends fb.Cubit<State> with SafeCubitMixin<State> {
  Cubit(super.initialState);
}

class _SafeEmitter<State> implements Emitter<State> {
  final Emitter<State> _delegate;
  final BlocBase<State> _bloc;

  _SafeEmitter(this._delegate, this._bloc);

  @override
  void call(State state) {
    if (!_delegate.isDone && !_bloc.isClosed) {
      _delegate(state);
    }
  }

  @override
  Future<void> forEach<T>(
    Stream<T> stream, {
    required State Function(T data) onData,
    State Function(Object error, StackTrace stackTrace)? onError,
  }) {
    return _delegate.forEach(
      stream,
      onData: onData,
      onError: onError,
    );
  }

  @override
  bool get isDone => _delegate.isDone || _bloc.isClosed;

  @override
  Future<void> onEach<T>(
    Stream<T> stream, {
    required void Function(T data) onData,
    void Function(Object error, StackTrace stackTrace)? onError,
  }) {
    return _delegate.onEach(
      stream,
      onData: onData,
      onError: onError,
    );
  }
}
