import 'package:attendance_manager/constant/app_colors.dart';
import 'package:attendance_manager/constant/app_styles.dart';
import 'package:flutter/material.dart';

class CustomRoundButton extends StatelessWidget {
  final title;
  final VoidCallback onPress;
  final Color color, textColor;
  final bool loading, gradient;
  final double height,borderRaduis,width;
  final TextStyle? textStyle;

  const CustomRoundButton({
    Key? key,
    required this.title,
    required this.onPress,
    this.color = AppColors.kGrey,
    this.textColor = AppColors.kTextWhiteColor,
    this.loading = false,
    this.gradient = true,
    this.height = 50,
    this.width=double.infinity,
    this.borderRaduis=25,
    this.textStyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: loading ? null : onPress,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: color,
          gradient: gradient ? AppColors.kPrimaryLinearGradient : null,
          borderRadius: BorderRadius.circular(borderRaduis),
        ),
        child: loading
            ? const Center(
                child: CircularProgressIndicator(
                  color: AppColors.kWhite,
                ),
              )
            : Center(
                child: Text(
                  title,
                  style: textStyle ??
                      AppStyles().defaultStyle(
                        17,
                        AppColors.kTextWhiteColor,
                        FontWeight.w500,
                      ),
                ),
              ),
      ),
    );
  }
}
