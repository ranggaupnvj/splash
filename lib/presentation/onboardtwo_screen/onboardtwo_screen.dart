import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:splash/core/app_export.dart';
import 'package:splash/widgets/custom_elevated_button.dart';

class OnboardtwoScreen extends StatelessWidget {
  const OnboardtwoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(
                      height: 500.v,
                      width: double.maxFinite,
                      child: Stack(alignment: Alignment.bottomLeft, children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgVector1,
                            height: 500.v,
                            width: 393.h,
                            alignment: Alignment.center),
                        CustomImageView(
                            imagePath:
                                ImageConstant.imgImageRemovebgPreview323x264,
                            height: 323.v,
                            width: 264.h,
                            alignment: Alignment.bottomLeft,
                            margin: EdgeInsets.only(bottom: 3.v))
                      ])),
                  SizedBox(height: 86.v),
                  Text("Sumber Konsumsi Energi",
                      style: theme.textTheme.headlineMedium),
                  SizedBox(height: 33.v),
                  Container(
                      width: 317.h,
                      margin: EdgeInsets.symmetric(horizontal: 37.h),
                      child: Text(
                          "Tambahkan perangkat elektronik Anda ke dalam aplikasi dan lihat seberapa besar dampaknya terhadap konsumsi energi Anda. ",
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

  /// Navigates to the onboardthreeScreen when the action is triggered.
  onTapContinueButton(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.onboardthreeScreen);
  }
}
