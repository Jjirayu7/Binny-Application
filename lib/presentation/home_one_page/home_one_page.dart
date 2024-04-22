import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_title_image.dart';
import '../../widgets/app_bar/appbar_trailing_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_icon_button.dart';
import 'widgets/commentsection_item_widget.dart';
import 'widgets/contactsales_item_widget.dart';
import 'widgets/userprofile_item_widget.dart'; // ignore_for_file: must_be_immutable

class HomeOnePage extends StatelessWidget {
  const HomeOnePage({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        backgroundColor: Colors.transparent,
        appBar: _buildAppBar(context),
        body: Container(
          width: SizeUtils.width,
          height: SizeUtils.height,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(0.5, 0),
              end: Alignment(0.5, 0.35),
              colors: [appTheme.gray900, appTheme.black900],
            ),
          ),
          child: SizedBox(
            height: 672.v,
            child: Stack(
              alignment: Alignment.topLeft,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgGroupGreenA70001,
                  height: 44.v,
                  width: 80.h,
                  alignment: Alignment.topLeft,
                  margin: EdgeInsets.only(top: 125.v),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgGroupGreenA7000159x242,
                  height: 59.v,
                  width: 242.h,
                  alignment: Alignment.topLeft,
                  margin: EdgeInsets.only(
                    left: 30.h,
                    top: 110.v,
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgGroup49,
                  height: 164.v,
                  width: 195.h,
                  alignment: Alignment.topRight,
                  margin: EdgeInsets.only(top: 55.v),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: SizedBox(
                    height: 600.v,
                    width: double.maxFinite,
                    child: Stack(
                      alignment: Alignment.topCenter,
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            height: 1096.v,
                            width: double.maxFinite,
                            decoration: BoxDecoration(
                              color: appTheme.whiteA700,
                              borderRadius: BorderRadius.vertical(
                                top: Radius.circular(10.h),
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: appTheme.black90001.withOpacity(0.1),
                                  spreadRadius: 2.h,
                                  blurRadius: 2.h,
                                  offset: Offset(
                                    0,
                                    0,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        _buildContactTestimonials(context),
                        // Align(
                        //   alignment: Alignment.center,
                        //   child: Container(
                        //     height: 170.v,
                        //     width: 369.h,
                        //     decoration: BoxDecoration(
                        //       borderRadius: BorderRadius.circular(
                        //         8.h,
                        //       ),
                        //       gradient: LinearGradient(
                        //         begin: Alignment(0.5, 0),
                        //         end: Alignment(0.5, 1),
                        //         colors: [
                        //           appTheme.whiteA700,
                        //           appTheme.blueGray10002
                        //         ],
                        //       ),
                        //     ),
                        //   ),
                        // ),
                        // Align(
                        //   alignment: Alignment.bottomLeft,
                        //   child: Padding(
                        //     padding: EdgeInsets.only(
                        //       left: 23.h,
                        //       bottom: 422.v,
                        //     ),
                        //     child: Text(
                        //       "ปัญหาชวนคุย",
                        //       style:
                        //           CustomTextStyles.headlineSmallIBMPlexSansThai,
                        //     ),
                        //   ),
                        // ),
                        // Align(
                        //   alignment: Alignment.bottomLeft,
                        //   child: Padding(
                        //     padding: EdgeInsets.only(
                        //       left: 23.h,
                        //       bottom: 402.v,
                        //     ),
                        //     child: Text(
                        //       "ร่วมตอบคำถาม หาทางออกไปกับกระทู้ของเพื่อน ๆ",
                        //       style: theme.textTheme.bodyMedium,
                        //     ),
                        //   ),
                        // ),
                        // _buildUserProfile(context),
                        // _buildCommentSection(context)
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      title: AppbarTitleImage(
        imagePath: ImageConstant.imgSettings,
        margin: EdgeInsets.only(
          left: 32.h,
          top: 9.v,
        ),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgFrame24,
          margin: EdgeInsets.symmetric(horizontal: 32.h),
        )
      ],
    );
  }

  /// Section Widget
  Widget _buildContactTestimonials(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Align(
        alignment: Alignment.topCenter,
        child: Padding(
          padding: EdgeInsets.only(
            left: 26.h,
            top: 22.v,
            right: 26.h,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                child: SizedBox(
                  height: 61.v,
                  child: ListView.separated(
                    padding: EdgeInsets.only(
                      left: 3.h,
                      right: 12.h,
                    ),
                    scrollDirection: Axis.horizontal,
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        width: 10.h,
                      );
                    },
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return ContactsalesItemWidget();
                    },
                  ),
                ),
              ),
              SizedBox(height: 11.v),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 1.h),
                height: 311.v,
                padding: EdgeInsets.symmetric(
                  horizontal: 19.h,
                  vertical: 1.v,
                ),
                decoration: AppDecoration.black.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder14,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 2.v),
                    Padding(
                      padding: EdgeInsets.only(right: 13.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 75.h,
                            margin: EdgeInsets.only(top: 5.v),
                            padding: EdgeInsets.symmetric(
                              horizontal: 8.h,
                              vertical: 2.v,
                            ),
                            decoration: AppDecoration.fillGreenA.copyWith(
                              borderRadius: BorderRadiusStyle.circleBorder11,
                            ),
                            child: Text(
                              "Level. 01",
                              style: CustomTextStyles.titleSmallInterWhiteA700,
                            ),
                          ),
                          Text(
                            "ปริมาณขยะที่ฉันช่วยไว้",
                            style: theme.textTheme.titleMedium,
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 2.v),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: 58.v),
                          child: Text(
                            "#0023412000",
                            style: CustomTextStyles.bodySmallInterLight,
                          ),
                        ),
                        Container(
                          height: 69.v,
                          width: 134.h,
                          margin: EdgeInsets.only(top: 2.v),
                          child: Stack(
                            alignment: Alignment.topLeft,
                            children: [
                              Align(
                                alignment: Alignment.bottomRight,
                                child: Text(
                                  "kg",
                                  style: theme.textTheme.bodyLarge,
                                ),
                              ),
                              Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  "10.25",
                                  style:
                                      CustomTextStyles.displayMediumWhiteA700,
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    Divider(
                      color: appTheme.whiteA700.withOpacity(0.45),
                    ),
                    SizedBox(height: 4.v),
                    CustomIconButton(
                      height: 23.adaptSize,
                      width: 23.adaptSize,
                      padding: EdgeInsets.all(5.h),
                      decoration: IconButtonStyleHelper.fillGray,
                      child: CustomImageView(
                        imagePath: ImageConstant.imgMdiCreditCardScanOutline,
                      ),
                    ),
                    SizedBox(
                      width: 130.h,
                      child: Text(
                        "สแกนกับร้านรับซื้อขยะที่เข้าร่วม",
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: CustomTextStyles.labelMediumWhiteA700,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 10.v),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 155.v,
                    width: 191.h,
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Card(
                            clipBehavior: Clip.antiAlias,
                            elevation: 0,
                            margin: EdgeInsets.all(0),
                            color: appTheme.gray900,
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                color: appTheme.gray900,
                                width: 1.h,
                              ),
                              borderRadius: BorderRadiusStyle.roundedBorder14,
                            ),
                            child: Container(
                              height: 154.v,
                              width: 189.h,
                              decoration: AppDecoration.outlineGray.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder14,
                              ),
                              child: Stack(
                                alignment: Alignment.topLeft,
                                children: [
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                        left: 13.h,
                                        top: 4.v,
                                      ),
                                      child: Text(
                                        "ชุมชนคนรักษ์โลก",
                                        style: theme.textTheme.titleMedium,
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                        left: 13.h,
                                        top: 29.v,
                                      ),
                                      child: Text(
                                        "Let’s join the community!",
                                        style: CustomTextStyles.bodySmallInter,
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.center,
                                    child: Container(
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 13.h,
                                        vertical: 4.v,
                                      ),
                                      decoration:
                                          AppDecoration.outlineGray.copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder14,
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "ชุมชนคนรักษ์โลก",
                                            style: theme.textTheme.titleMedium,
                                          ),
                                          Text(
                                            "Let’s join the community!",
                                            style:
                                                CustomTextStyles.bodySmallInter,
                                          )
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: SizedBox(
                            height: 107.v,
                            width: 191.h,
                            child: Stack(
                              alignment: Alignment.topLeft,
                              children: [
                                Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Container(
                                    height: 36.v,
                                    width: 191.h,
                                    margin: EdgeInsets.only(bottom: 12.v),
                                    decoration: BoxDecoration(
                                      color: appTheme.teal800,
                                      borderRadius: BorderRadius.vertical(
                                        bottom: Radius.circular(14.h),
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Container(
                                    height: 65.v,
                                    width: 128.h,
                                    margin: EdgeInsets.only(top: 9.v),
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 23.h,
                                      vertical: 3.v,
                                    ),
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: fs.Svg(
                                          ImageConstant.imgGroup157,
                                        ),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    child: Stack(
                                      alignment: Alignment.bottomRight,
                                      children: [
                                        Align(
                                          alignment: Alignment.bottomRight,
                                          child: Padding(
                                            padding:
                                                EdgeInsets.only(right: 37.h),
                                            child: SizedBox(
                                              height: 17.v,
                                              child: VerticalDivider(
                                                width: 3.h,
                                                thickness: 3.v,
                                                color: appTheme.gray900,
                                              ),
                                            ),
                                          ),
                                        ),
                                        CustomImageView(
                                          imagePath:
                                              ImageConstant.imgTelevision,
                                          height: 11.v,
                                          width: 29.h,
                                          alignment: Alignment.bottomRight,
                                          margin: EdgeInsets.only(right: 7.h),
                                        ),
                                        Align(
                                          alignment: Alignment.bottomRight,
                                          child: Padding(
                                            padding:
                                                EdgeInsets.only(right: 4.h),
                                            child: SizedBox(
                                              height: 17.v,
                                              child: VerticalDivider(
                                                width: 3.h,
                                                thickness: 3.v,
                                                color: appTheme.gray900,
                                              ),
                                            ),
                                          ),
                                        ),
                                        CustomImageView(
                                          imagePath: ImageConstant.imgArrowUp,
                                          height: 10.v,
                                          width: 44.h,
                                          alignment: Alignment.bottomRight,
                                          margin: EdgeInsets.only(bottom: 16.v),
                                        ),
                                        CustomImageView(
                                          imagePath: ImageConstant.imgBarcode,
                                          height: 6.v,
                                          width: 43.h,
                                          alignment: Alignment.bottomRight,
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topRight,
                                  child: Container(
                                    margin: EdgeInsets.only(
                                      left: 131.h,
                                      right: 25.h,
                                    ),
                                    padding: EdgeInsets.all(2.h),
                                    decoration:
                                        AppDecoration.fillBlueGray.copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.customBorderTL3,
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        SizedBox(height: 1.v),
                                        CustomImageView(
                                          imagePath: ImageConstant.imgGrid,
                                          height: 53.v,
                                          width: 31.h,
                                        ),
                                        SizedBox(height: 3.v),
                                        Container(
                                          height: 12.v,
                                          width: 10.h,
                                          margin: EdgeInsets.only(left: 9.h),
                                          decoration: BoxDecoration(
                                            color: appTheme.gray900,
                                            borderRadius: BorderRadius.vertical(
                                              top: Radius.circular(5.h),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topRight,
                                  child: Container(
                                    margin: EdgeInsets.only(
                                      left: 109.h,
                                      top: 10.v,
                                      right: 55.h,
                                    ),
                                    padding: EdgeInsets.all(2.h),
                                    decoration: AppDecoration.fillWhiteA,
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        SizedBox(height: 4.v),
                                        SizedBox(
                                          width: 23.h,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Container(
                                                height: 12.v,
                                                width: 6.h,
                                                decoration: BoxDecoration(
                                                  color: appTheme.gray900,
                                                ),
                                              ),
                                              Container(
                                                height: 12.v,
                                                width: 7.h,
                                                decoration: BoxDecoration(
                                                  color: appTheme.gray900,
                                                ),
                                              ),
                                              Container(
                                                height: 12.v,
                                                width: 6.h,
                                                decoration: BoxDecoration(
                                                  color: appTheme.gray900,
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        SizedBox(height: 1.v),
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: Container(
                                            height: 5.v,
                                            width: 6.h,
                                            decoration: BoxDecoration(
                                              color: appTheme.gray900,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          height: 5.v,
                                          width: 7.h,
                                          decoration: BoxDecoration(
                                            color: appTheme.gray900,
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.centerRight,
                                          child: Container(
                                            height: 5.v,
                                            width: 6.h,
                                            decoration: BoxDecoration(
                                              color: appTheme.gray900,
                                            ),
                                          ),
                                        ),
                                        SizedBox(height: 2.v),
                                        SizedBox(
                                          width: 23.h,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Container(
                                                height: 12.v,
                                                width: 6.h,
                                                decoration: BoxDecoration(
                                                  color: appTheme.gray900,
                                                ),
                                              ),
                                              Container(
                                                height: 12.v,
                                                width: 7.h,
                                                decoration: BoxDecoration(
                                                  color: appTheme.gray900,
                                                ),
                                              ),
                                              Container(
                                                height: 12.v,
                                                width: 6.h,
                                                decoration: BoxDecoration(
                                                  color: appTheme.gray900,
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        SizedBox(height: 1.v),
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: Container(
                                            height: 5.v,
                                            width: 6.h,
                                            decoration: BoxDecoration(
                                              color: appTheme.gray900,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          height: 5.v,
                                          width: 7.h,
                                          decoration: BoxDecoration(
                                            color: appTheme.gray900,
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.centerRight,
                                          child: Container(
                                            height: 5.v,
                                            width: 6.h,
                                            decoration: BoxDecoration(
                                              color: appTheme.gray900,
                                            ),
                                          ),
                                        ),
                                        SizedBox(height: 5.v),
                                        Container(
                                          height: 12.v,
                                          width: 15.h,
                                          decoration: BoxDecoration(
                                            color: appTheme.gray900,
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(6.h),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topRight,
                                  child: Container(
                                    margin: EdgeInsets.only(
                                      left: 156.h,
                                      top: 18.v,
                                      right: 6.h,
                                    ),
                                    padding:
                                        EdgeInsets.symmetric(vertical: 3.v),
                                    decoration:
                                        AppDecoration.fillPinkA.copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.customBorderTL14,
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Container(
                                          height: 27.v,
                                          width: 23.h,
                                          margin: EdgeInsets.only(right: 2.h),
                                          decoration: BoxDecoration(
                                            color: appTheme.gray900,
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(11.h),
                                            ),
                                          ),
                                        ),
                                        SizedBox(height: 19.v),
                                        CustomImageView(
                                          imagePath:
                                              ImageConstant.imgBarcodeWhiteA700,
                                          height: 7.v,
                                          width: 29.h,
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Container(
                                    height: 36.v,
                                    width: 191.h,
                                    decoration: BoxDecoration(
                                      color: appTheme.greenA70001,
                                      borderRadius: BorderRadius.vertical(
                                        bottom: Radius.circular(14.h),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 2.h,
                      vertical: 1.v,
                    ),
                    decoration: AppDecoration.gradientGrayToBlueGray.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder14,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 6.h),
                          child: Text(
                            "สวนของฉัน",
                            style: theme.textTheme.titleMedium,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 6.h),
                          child: Text(
                            "Be kind with my garden",
                            style: CustomTextStyles.bodySmallLight11,
                          ),
                        ),
                        SizedBox(height: 22.v),
                        CustomImageView(
                          imagePath: ImageConstant.imgGroup81,
                          height: 78.v,
                          width: 134.h,
                        ),
                        SizedBox(height: 9.v)
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildUserProfile(BuildContext context) {
    return Align(
      alignment: Alignment.bottomRight,
      child: SizedBox(
        height: 1096.v,
        child: ListView.separated(
          padding: EdgeInsets.only(
            left: 22.h,
            top: 932.v,
            bottom: 23.v,
          ),
          scrollDirection: Axis.horizontal,
          separatorBuilder: (context, index) {
            return SizedBox(
              width: 11.h,
            );
          },
          itemCount: 3,
          itemBuilder: (context, index) {
            return UserprofileItemWidget();
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildCommentSection(BuildContext context) {
    return Align(
      alignment: Alignment.bottomRight,
      child: SizedBox(
        height: 1096.v,
        child: ListView.separated(
          padding: EdgeInsets.only(
            left: 23.h,
            top: 438.v,
            bottom: 180.v,
          ),
          scrollDirection: Axis.horizontal,
          separatorBuilder: (context, index) {
            return SizedBox(
              width: 1.h,
            );
          },
          itemCount: 3,
          itemBuilder: (context, index) {
            return CommentsectionItemWidget();
          },
        ),
      ),
    );
  }
}
