import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:splash/core/app_export.dart';
import 'package:splash/widgets/custom_elevated_button.dart';

class OnboardScreen extends StatelessWidget {
  const OnboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(
                      height: 563.v,
                      width: double.maxFinite,
                      child:
                          Stack(alignment: Alignment.bottomCenter, children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgVector21,
                            height: 482.v,
                            width: 393.h,
                            alignment: Alignment.topCenter),
                        CustomImageView(
                            imagePath: ImageConstant.imgImageRemovebgPreview,
                            height: 330.v,
                            width: 300.h,
                            alignment: Alignment.bottomCenter)
                      ])),
                  SizedBox(height: 23.v),
                  Text("Hemat Energi", style: theme.textTheme.headlineMedium),
                  SizedBox(height: 35.v),
                  Container(
                      width: 320.h,
                      margin: EdgeInsets.only(left: 37.h, right: 35.h),
                      child: Text(
                          "Mari memulai langkah kecil menuju hemat energi yang membawa kebaikan untuk lingkungan dan kantong Anda. ",
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: theme.textTheme.bodyMedium!
                              .copyWith(height: 1.43))),
                  SizedBox(height: 25.v),
                  SizedBox(
                      height: 8.v,
                      child: AnimatedSmoothIndicator(
                          activeIndex: 0,
                          count: 3,
                          effect: ScrollingDotsEffect(
                              spacing: 10,
                              activeDotColor: appTheme.lightBlue100,
                              dotColor: appTheme.blueGray100,
                              dotHeight: 8.v,
                              dotWidth: 8.h))),
                  SizedBox(height: 5.v)
                ])),
            bottomNavigationBar: _buildContinueButton(context)));
  }

  /// Section Widget
  Widget _buildContinueButton(BuildContext context) {
    return CustomElevatedButton(
        text: "Lanjutkan",
        margin: EdgeInsets.only(left: 20.h, right: 20.h, bottom: 38.v),
        onPressed: () {
          onTapContinueButton(context);
        });
  }

  /// Navigates to the onboardtwoScreen when the action is triggered.
  onTapContinueButton(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.onboardtwoScreen);
  }
}
