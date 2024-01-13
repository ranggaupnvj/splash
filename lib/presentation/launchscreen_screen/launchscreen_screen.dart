import 'package:flutter/material.dart';
import 'package:splash/core/app_export.dart';
import 'package:splash/widgets/custom_elevated_button.dart';
import 'package:splash/widgets/custom_outlined_button.dart';

class LaunchscreenScreen extends StatelessWidget {
  const LaunchscreenScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.blue50,
        body: SizedBox(
          height: SizeUtils.height,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              _buildWelcomeMessage(context),
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  margin: EdgeInsets.only(top: 21.v),
                  padding: EdgeInsets.symmetric(
                    horizontal: 47.h,
                    vertical: 13.v,
                  ),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        ImageConstant.imgGroup2,
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      SizedBox(height: 126.v),
                      CustomImageView(
                        imagePath: ImageConstant.imgImageRemovebgPreview300x278,
                        height: 300.v,
                        width: 278.h,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildWelcomeMessage(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 19.h,
          vertical: 35.v,
        ),
        decoration: AppDecoration.outlineBlack.copyWith(
          borderRadius: BorderRadiusStyle.customBorderTL20,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 4.v),
            Text(
              "Selamat datang di Charge-Q!",
              style: CustomTextStyles.titleLargeBlack900,
            ),
            SizedBox(height: 11.v),
            Padding(
              padding: EdgeInsets.only(left: 2.h),
              child: Text(
                "Hemat Energi, Lebih dari Sekedar Hemat Biaya",
                style: CustomTextStyles.bodyMediumOnPrimary,
              ),
            ),
            SizedBox(height: 101.v),
            CustomElevatedButton(
              text: "Masuk",
              buttonStyle: CustomButtonStyles.fillPrimaryTL15,
            ),
            SizedBox(height: 15.v),
            CustomOutlinedButton(
              text: "Daftar",
            ),
            SizedBox(height: 38.v),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "Dengan masuk atau daftar, Anda setuju dengan ",
                    style: theme.textTheme.bodySmall,
                  ),
                  TextSpan(
                    text: "Syarat",
                    style: CustomTextStyles.bodySmallff3293ff.copyWith(
                      decoration: TextDecoration.underline,
                    ),
                  ),
                  TextSpan(
                    text: " dan ",
                    style: theme.textTheme.bodySmall,
                  ),
                  TextSpan(
                    text: "Ketentuan",
                    style: CustomTextStyles.bodySmallff3293ff.copyWith(
                      decoration: TextDecoration.underline,
                    ),
                  ),
                  TextSpan(
                    text: " kami",
                    style: CustomTextStyles.bodySmallff636464,
                  ),
                ],
              ),
              textAlign: TextAlign.left,
            ),
          ],
        ),
      ),
    );
  }
}
