import 'package:wassaly/core/imports/core_imports.dart';
import 'package:wassaly/core/imports/packages_imports.dart';

class SocialButton extends StatelessWidget {
  final String label;
  final String iconPath;
  final Color backgroundColor;
  final Color foregroundColor;
  final VoidCallback onPressed;

  const SocialButton({
    super.key,
    required this.label,
    required this.iconPath,
    required this.backgroundColor,
    required this.foregroundColor,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        backgroundColor: backgroundColor,
        foregroundColor: foregroundColor,
        padding: EdgeInsets.symmetric(vertical: 14.h),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.r),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            label,
            style: TextStyle(
              color: foregroundColor,
              fontSize: 14.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
          8.horizontalSpace,
          SvgPicture.asset(
            iconPath,
            width: 20.w,
            height: 20.h,
            colorFilter: ColorFilter.mode(foregroundColor, BlendMode.srcIn),
          ),
        ],
      ),
    );
  }
}
