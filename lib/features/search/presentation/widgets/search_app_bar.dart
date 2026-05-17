import 'package:wassaly/core/imports/imports.dart';
import 'package:wassaly/features/search/presentation/bloc/search_bloc.dart';
import 'package:wassaly/features/search/presentation/bloc/search_event.dart';

class SearchAppBar extends StatelessWidget {
  const SearchAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppSliverTopBar(
      titleWidget: Expanded(
        child: AppTextField(
          suffixIcon: const Icon(Icons.search),
          autofocus: true,
          onChanged: (value) {
            context.read<SearchBloc>().add(SearchQueryChanged(value));
          },
          onFieldSubmitted: (_) {
            context.read<SearchBloc>().add(const SearchSubmitted());
          },
          hint: context.l10n.search_search_hint,
        ),
      ),
    );
  }
}
