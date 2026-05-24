import 'package:wassaly/core/imports/imports.dart';

/// A shared icon widget that displays a Cupertino icon on iOS and a Material icon
/// on other platforms, helping maintain the native feel across platforms.
///
/// It features an automatic mapper that converts most standard Material icons
/// to their sleek, native iOS Cupertino equivalents without needing to specify
/// [cupertinoIcon] manually for every call.
///
/// Usage:
/// ```dart
/// AppIcon(
///   materialIcon: Icons.favorite,
///   // Automatically maps to CupertinoIcons.heart_fill on iOS!
/// )
/// ```
class AppIcon extends StatelessWidget {
  const AppIcon({
    super.key,
    required this.materialIcon,
    this.cupertinoIcon,
    this.size,
    this.color,
  });

  final IconData materialIcon;
  final IconData? cupertinoIcon;
  final double? size;
  final Color? color;

  // Comprehensive mapping from Material Icons to Cupertino (iOS) Icons
  static final Map<IconData, IconData> _cupertinoMapping = {
    // Favorites & Stars
    Icons.favorite: CupertinoIcons.heart_fill,
    Icons.favorite_rounded: CupertinoIcons.heart_fill,
    Icons.favorite_border: CupertinoIcons.heart,
    Icons.favorite_outline_rounded: CupertinoIcons.heart,
    Icons.star: CupertinoIcons.star_fill,
    Icons.star_rounded: CupertinoIcons.star_fill,
    Icons.star_border: CupertinoIcons.star,
    Icons.star_outline: CupertinoIcons.star,
    Icons.home_rounded: CupertinoIcons.house_fill,

    // Navigation & General UI
    Icons.arrow_back: CupertinoIcons.back,
    Icons.arrow_back_ios: CupertinoIcons.back,
    Icons.arrow_back_ios_new: CupertinoIcons.back,
    Icons.arrow_forward: CupertinoIcons.forward,
    Icons.arrow_forward_ios: CupertinoIcons.forward,
    Icons.chevron_right: CupertinoIcons.chevron_right,
    Icons.chevron_right_rounded: CupertinoIcons.chevron_right,
    Icons.chevron_left: CupertinoIcons.chevron_left,
    Icons.chevron_left_rounded: CupertinoIcons.chevron_left,
    Icons.search: CupertinoIcons.search,
    Icons.search_rounded: CupertinoIcons.search,
    Icons.search_off_rounded: CupertinoIcons.search,
    Icons.close: CupertinoIcons.xmark,
    Icons.close_rounded: CupertinoIcons.xmark,
    Icons.cancel: CupertinoIcons.xmark_circle_fill,
    Icons.cancel_rounded: CupertinoIcons.xmark_circle_fill,
    Icons.add: CupertinoIcons.add,
    Icons.add_circle: CupertinoIcons.add_circled,
    Icons.add_circle_outline: CupertinoIcons.add_circled,
    Icons.remove: CupertinoIcons.minus,
    Icons.remove_circle: CupertinoIcons.minus_circled,
    Icons.remove_circle_outline: CupertinoIcons.minus_circled,
    Icons.check: CupertinoIcons.checkmark,
    Icons.check_circle: CupertinoIcons.checkmark_circle_fill,
    Icons.check_circle_outline: CupertinoIcons.checkmark_circle,
    Icons.info: CupertinoIcons.info,
    Icons.info_outline: CupertinoIcons.info,
    Icons.error: CupertinoIcons.exclamationmark_circle_fill,
    Icons.error_rounded: CupertinoIcons.exclamationmark_circle_fill,
    Icons.error_outline: CupertinoIcons.exclamationmark_circle,
    Icons.error_outline_rounded: CupertinoIcons.exclamationmark_circle,
    Icons.warning: CupertinoIcons.exclamationmark_triangle_fill,
    Icons.warning_amber_rounded: CupertinoIcons.exclamationmark_triangle,

    // Core Screens & Settings
    Icons.home: CupertinoIcons.home,
    Icons.home_outlined: CupertinoIcons.home,
    Icons.settings: CupertinoIcons.settings,
    Icons.settings_outlined: CupertinoIcons.settings,
    Icons.person: CupertinoIcons.person_fill,
    Icons.person_outline: CupertinoIcons.person,
    Icons.person_rounded: CupertinoIcons.person_fill,
    Icons.shopping_cart: CupertinoIcons.cart_fill,
    Icons.shopping_cart_outlined: CupertinoIcons.cart,
    Icons.shopping_cart_rounded: CupertinoIcons.cart_fill,
    Icons.notifications: CupertinoIcons.bell_fill,
    Icons.notifications_none: CupertinoIcons.bell,
    Icons.notifications_outlined: CupertinoIcons.bell,
    Icons.notifications_active: CupertinoIcons.bell_fill,

    // E-Commerce & Action Icons
    Icons.remove_red_eye: CupertinoIcons.eye_fill,
    Icons.remove_red_eye_outlined: CupertinoIcons.eye,
    Icons.visibility: CupertinoIcons.eye_fill,
    Icons.visibility_off: CupertinoIcons.eye_slash_fill,
    Icons.visibility_outlined: CupertinoIcons.eye,
    Icons.visibility_off_outlined: CupertinoIcons.eye_slash,
    Icons.alternate_email: CupertinoIcons.at,
    Icons.lock_reset_outlined: CupertinoIcons.lock_shield,
    Icons.photo_library_outlined: CupertinoIcons.photo_on_rectangle,
    Icons.send_outlined: CupertinoIcons.paperplane,
    Icons.verified_outlined: CupertinoIcons.checkmark_seal,
    Icons.delete: CupertinoIcons.delete,
    Icons.delete_outline: CupertinoIcons.delete,
    Icons.edit: CupertinoIcons.pencil,
    Icons.edit_outlined: CupertinoIcons.pencil,
    Icons.share: CupertinoIcons.share,
    Icons.share_outlined: CupertinoIcons.share,
    Icons.more_vert: CupertinoIcons.ellipsis,
    Icons.more_horiz: CupertinoIcons.ellipsis,
    Icons.filter_list: CupertinoIcons.slider_horizontal_3,
    Icons.tune: CupertinoIcons.slider_horizontal_3,
    Icons.image: CupertinoIcons.photo,
    Icons.image_outlined: CupertinoIcons.photo,
    Icons.image_not_supported: CupertinoIcons.photo,
    Icons.image_not_supported_outlined: CupertinoIcons.photo,
    Icons.camera_alt: CupertinoIcons.camera,
    Icons.camera_alt_outlined: CupertinoIcons.camera,
    Icons.history: CupertinoIcons.clock,
    Icons.credit_card: CupertinoIcons.creditcard,
    Icons.help: CupertinoIcons.question_circle,
    Icons.help_outline: CupertinoIcons.question_circle,
    Icons.list: CupertinoIcons.list_bullet,
    Icons.menu: CupertinoIcons.bars,
    Icons.local_shipping: CupertinoIcons.car_fill,
    Icons.local_shipping_outlined: CupertinoIcons.car_fill,
    Icons.store: CupertinoIcons.house_fill,
    Icons.language: CupertinoIcons.globe,
    Icons.logout: CupertinoIcons.square_arrow_right,
    Icons.phone: CupertinoIcons.phone_fill,
    Icons.phone_outlined: CupertinoIcons.phone,
    Icons.email: CupertinoIcons.mail_solid,
    Icons.email_outlined: CupertinoIcons.mail,
    Icons.location_on: CupertinoIcons.location_solid,
    Icons.location_on_outlined: CupertinoIcons.location,
    Icons.map: CupertinoIcons.map,
    Icons.map_outlined: CupertinoIcons.map,
    Icons.lock: CupertinoIcons.lock_fill,
    Icons.lock_outline: CupertinoIcons.lock,

    // Additional specific icons
    Icons.inbox: CupertinoIcons.tray,
    Icons.inbox_outlined: CupertinoIcons.tray,
    Icons.wifi_off: CupertinoIcons.wifi_exclamationmark,
    Icons.wifi_off_rounded: CupertinoIcons.wifi_exclamationmark,
    Icons.storage: CupertinoIcons.folder_badge_minus,
    Icons.storage_rounded: CupertinoIcons.folder_badge_minus,
  };

  /// Automatically converts a standard [Icon] widget to an adaptive [AppIcon]
  /// if it is an instance of [Icon], ensuring all icon properties are preserved.
  static Widget? adapt(Widget? iconWidget) {
    if (iconWidget == null) return null;
    if (iconWidget is Icon && iconWidget.icon != null) {
      return AppIcon(
        materialIcon: iconWidget.icon!,
        size: iconWidget.size,
        color: iconWidget.color,
      );
    }
    return iconWidget;
  }

  @override
  Widget build(BuildContext context) {
    final isIOS = context.isIOS;
    final resolvedIcon = isIOS
        ? (cupertinoIcon ?? _cupertinoMapping[materialIcon] ?? materialIcon)
        : materialIcon;

    return Icon(
      resolvedIcon,
      size: size,
      color: color,
    );
  }
}
