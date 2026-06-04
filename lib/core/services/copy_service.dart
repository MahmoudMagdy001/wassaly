import 'package:flutter/services.dart';
import 'package:wassaly/core/utils/utils.dart';

/// A service to handle clipboard operations.
class CopyService {
  CopyService._();
  static final CopyService instance = CopyService._();

  /// Copy text to the system clipboard.
  FutureEither<void> copy(String text) async => runTask(() async {
      await Clipboard.setData(ClipboardData(text: text));
      AppLogger.info('Text copied to clipboard');
    });
}
