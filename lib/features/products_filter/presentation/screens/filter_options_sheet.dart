import 'package:wassaly/core/imports/imports.dart';
import 'package:wassaly/features/home/domain/entities/category_entity.dart';
import 'package:wassaly/features/products_filter/domain/entities/product_filter_params.dart';

class FilterOptionsSheet extends StatefulWidget {
  final ProductFilterParams initialParams;
  final List<CategoryEntity> categories;
  final void Function(ProductFilterParams) onApply;

  const FilterOptionsSheet({
    required this.initialParams,
    required this.categories,
    required this.onApply,
    super.key,
  });

  @override
  State<FilterOptionsSheet> createState() => _FilterOptionsSheetState();
}

class _FilterOptionsSheetState extends State<FilterOptionsSheet> {
  int? _selectedCategoryId;
  double? _minPrice;
  double? _maxPrice;
  bool? _specialOffers;
  late List<int> _selectedRatings;
  String? _sort;

  late TextEditingController _minPriceController;
  late TextEditingController _maxPriceController;

  @override
  void initState() {
    super.initState();
    _selectedCategoryId = widget.initialParams.categoryId;
    _minPrice = widget.initialParams.minPrice;
    _maxPrice = widget.initialParams.maxPrice;
    _specialOffers = widget.initialParams.specialOffers;
    _selectedRatings = List<int>.from(widget.initialParams.ratings ?? []);
    _sort = widget.initialParams.sort;

    _minPriceController = TextEditingController(
      text: _minPrice != null ? _minPrice!.toStringAsFixed(0) : '',
    );
    _maxPriceController = TextEditingController(
      text: _maxPrice != null ? _maxPrice!.toStringAsFixed(0) : '',
    );
  }

  @override
  void dispose() {
    _minPriceController.dispose();
    _maxPriceController.dispose();
    super.dispose();
  }

  void _onCategorySelected(int? categoryId) {
    setState(() {
      _selectedCategoryId =
          _selectedCategoryId == categoryId ? null : categoryId;
    });
  }

  void _onRatingToggled(int rating) {
    setState(() {
      if (_selectedRatings.contains(rating)) {
        _selectedRatings.remove(rating);
      } else {
        _selectedRatings.add(rating);
      }
    });
  }

  void _onSortSelected(String? sortType) {
    setState(() {
      _sort = _sort == sortType ? null : sortType;
    });
  }

  void _resetAll() {
    setState(() {
      _selectedCategoryId = null;
      _minPrice = null;
      _maxPrice = null;
      _specialOffers = null;
      _selectedRatings = [];
      _sort = null;
      _minPriceController.clear();
      _maxPriceController.clear();
    });
  }

  void _applyFilters() {
    final minPriceText = _minPriceController.text.trim();
    final maxPriceText = _maxPriceController.text.trim();

    final minPriceParsed = double.tryParse(minPriceText);
    final maxPriceParsed = double.tryParse(maxPriceText);

    final params = ProductFilterParams(
      categoryId: _selectedCategoryId,
      minPrice: minPriceParsed,
      maxPrice: maxPriceParsed,
      specialOffers: _specialOffers,
      ratings: _selectedRatings.isEmpty ? null : _selectedRatings,
      sort: _sort,
    );

    widget.onApply(params);
    context.pop();
  }

  @override
  Widget build(BuildContext context) {
    final cs = context.theme.colorScheme;
    final tt = context.theme.textTheme;
    final bottomInset = MediaQuery.viewInsetsOf(context).bottom;

    return Padding(
      padding: EdgeInsets.only(bottom: bottomInset),
      child: Container(
        height: MediaQuery.sizeOf(context).height * 0.85,
        decoration: BoxDecoration(
          color: cs.surface,
          borderRadius: BorderRadius.vertical(top: Radius.circular(24.r)),
        ),
        child: Column(
          children: [
            // Header
            Padding(
              padding: EdgeInsets.all(16.r),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    context.l10n.filter_title,
                    style: tt.titleLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: cs.onSurface,
                    ),
                  ),
                  TextButton(
                    onPressed: _resetAll,
                    child: Text(
                      context.l10n.filter_reset,
                      style: tt.bodyMedium?.copyWith(
                        color: cs.error,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Divider(height: 1),

            // Scrollable Content
            Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.all(16.r),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Categories
                    if (widget.categories.isNotEmpty) ...[
                      Text(
                        context.l10n.filter_category,
                        style: tt.titleMedium?.copyWith(
                          fontWeight: FontWeight.bold,
                          color: cs.onSurface,
                        ),
                      ),
                      8.verticalSpace,
                      Wrap(
                        spacing: 8.w,
                        runSpacing: 8.h,
                        children: widget.categories.map((category) {
                          final isSelected = _selectedCategoryId == category.id;
                          return ChoiceChip(
                            label: Text(category.name),
                            selected: isSelected,
                            onSelected: (_) => _onCategorySelected(category.id),
                            selectedColor: cs.primary,
                            labelStyle: TextStyle(
                              color: isSelected ? cs.onPrimary : cs.onSurface,
                            ),
                          );
                        }).toList(),
                      ),
                      24.verticalSpace,
                    ],

                    // Price Range inputs
                    Text(
                      context.l10n.filter_price_range,
                      style: tt.titleMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: cs.onSurface,
                      ),
                    ),
                    8.verticalSpace,
                    Row(
                      children: [
                        Expanded(
                          child: AppTextField(
                            controller: _minPriceController,
                            keyboardType: const TextInputType.numberWithOptions(
                              decimal: true,
                            ),
                            label: context.l10n.filter_min_price,
                            hint: '0',
                            suffixIcon: Padding(
                              padding: EdgeInsets.symmetric(vertical: 12.h),
                              child: Text(
                                context.l10n.shared_currency_egp,
                                style: tt.bodyMedium?.copyWith(
                                  color: cs.onSurfaceVariant,
                                ),
                              ),
                            ),
                          ),
                        ),
                        16.horizontalSpace,
                        Expanded(
                          child: AppTextField(
                            controller: _maxPriceController,
                            keyboardType: const TextInputType.numberWithOptions(
                              decimal: true,
                            ),
                            label: context.l10n.filter_max_price,
                            hint: '10000',
                            suffixIcon: Padding(
                              padding: EdgeInsets.symmetric(vertical: 12.h),
                              child: Text(
                                context.l10n.shared_currency_egp,
                                style: tt.bodyMedium?.copyWith(
                                  color: cs.onSurfaceVariant,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    24.verticalSpace,

                    // Ratings Selection
                    Text(
                      context.l10n.filter_ratings,
                      style: tt.titleMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: cs.onSurface,
                      ),
                    ),
                    8.verticalSpace,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: List.generate(5, (index) {
                        final starRating = 5 - index;
                        final isSelected =
                            _selectedRatings.contains(starRating);
                        return Expanded(
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 4.w),
                            child: ChoiceChip(
                              padding: EdgeInsets.symmetric(horizontal: 4.w),
                              label: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('$starRating'),
                                  2.horizontalSpace,
                                  Icon(
                                    Icons.star_rounded,
                                    size: 14.r,
                                    color: isSelected
                                        ? cs.onPrimary
                                        : cs.secondary,
                                  ),
                                ],
                              ),
                              selected: isSelected,
                              onSelected: (_) => _onRatingToggled(starRating),
                              selectedColor: cs.primary,
                              labelStyle: TextStyle(
                                color: isSelected ? cs.onPrimary : cs.onSurface,
                              ),
                            ),
                          ),
                        );
                      }),
                    ),
                    24.verticalSpace,

                    // Special Offers switch
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          context.l10n.filter_special_offers,
                          style: tt.titleMedium?.copyWith(
                            fontWeight: FontWeight.bold,
                            color: cs.onSurface,
                          ),
                        ),
                        Switch.adaptive(
                          value: _specialOffers ?? false,
                          onChanged: (value) {
                            setState(() {
                              _specialOffers = value ? true : null;
                            });
                          },
                          activeTrackColor: cs.primary,
                        ),
                      ],
                    ),
                    24.verticalSpace,

                    // Sort order ChoiceChips
                    Text(
                      context.l10n.filter_sort_by,
                      style: tt.titleMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: cs.onSurface,
                      ),
                    ),
                    8.verticalSpace,
                    Wrap(
                      spacing: 8.w,
                      runSpacing: 8.h,
                      children: [
                        ChoiceChip(
                          label: Text(context.l10n.filter_sort_price_asc),
                          selected: _sort == 'price_asc',
                          onSelected: (_) => _onSortSelected('price_asc'),
                          selectedColor: cs.primary,
                          labelStyle: TextStyle(
                            color: _sort == 'price_asc'
                                ? cs.onPrimary
                                : cs.onSurface,
                          ),
                        ),
                        ChoiceChip(
                          label: Text(context.l10n.filter_sort_price_desc),
                          selected: _sort == 'price_desc',
                          onSelected: (_) => _onSortSelected('price_desc'),
                          selectedColor: cs.primary,
                          labelStyle: TextStyle(
                            color: _sort == 'price_desc'
                                ? cs.onPrimary
                                : cs.onSurface,
                          ),
                        ),
                        ChoiceChip(
                          label: Text(context.l10n.filter_sort_rating_desc),
                          selected: _sort == 'rating_desc',
                          onSelected: (_) => _onSortSelected('rating_desc'),
                          selectedColor: cs.primary,
                          labelStyle: TextStyle(
                            color: _sort == 'rating_desc'
                                ? cs.onPrimary
                                : cs.onSurface,
                          ),
                        ),
                        ChoiceChip(
                          label: Text(context.l10n.filter_sort_newest),
                          selected: _sort == 'newest',
                          onSelected: (_) => _onSortSelected('newest'),
                          selectedColor: cs.primary,
                          labelStyle: TextStyle(
                            color:
                                _sort == 'newest' ? cs.onPrimary : cs.onSurface,
                          ),
                        ),
                      ],
                    ),
                    24.verticalSpace,
                  ],
                ),
              ),
            ),

            // Apply Button
            Padding(
              padding: EdgeInsets.all(16.r),
              child: AppButton(
                label: context.l10n.filter_apply,
                onPressed: _applyFilters,
                isFullWidth: true,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
