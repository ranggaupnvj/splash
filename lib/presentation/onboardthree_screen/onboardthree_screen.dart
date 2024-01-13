import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:splash/core/app_export.dart';
import 'package:splash/widgets/custom_elevated_button.dart';

class OnboardthreeScreen extends StatelessWidget {
  const OnboardthreeScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(
                height: 554.v,
                width: double.maxFinite,
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgVector11,
                      height: 501.v,
                      width: 393.h,
                      alignment: Alignment.topCenter,
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgImageRemovebgPreview322x300,
                      height: 322.v,
                      width: 300.h,
                      alignment: Alignment.bottomCenter,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 19.v),
              SizedBox(
                width: 202.h,
                child: Text(
                  "Akses Database Bersama",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.headlineMedium!.copyWith(
                    height: 1.15,
                  ),
                ),
              ),
              SizedBox(height: 20.v),
              Container(
                width: 321.h,
                margin: EdgeInsets.only(
                  left: 36.h,
                  right: 35.h,
                ),
                child: Text(
                  "Lihat bagaimana pengguna lainnya menghemat energi mereka  dan belajar cara mengoptimalkan penggunaan energi bersama!",
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.bodyMedium!.copyWith(
                    height: 1.43,
                  ),
                ),
              ),
              SizedBox(height: 21.v),
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
                    dotWidth: 8.h,
                  ),
                ),
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
        bottomNavigationBar: _buildStartButton(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildStartButton(BuildContext context) {
    return CustomElevatedButton(
      text: "Mulai",
      margin: EdgeInsets.only(
        left: 20.h,
        right: 20.h,
        bottom: 38.v,
      ),
    );
  }
}
