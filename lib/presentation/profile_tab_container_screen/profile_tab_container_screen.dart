import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_title_image.dart';
import '../../widgets/app_bar/appbar_trailing_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_bottom_bar.dart';
import '../profile_page/profile_page.dart';

class ProfileTabContainerScreen extends StatefulWidget {
  const ProfileTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  ProfileTabContainerScreenState createState() =>
      ProfileTabContainerScreenState();
}
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class ProfileTabContainerScreenState extends State<ProfileTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        appBar: _buildAppBar(context),
        body: Container(
          width: SizeUtils.width,
          height: SizeUtils.height,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(0.5, 0),
              end: Alignment(0.5, 0.29),
              colors: [appTheme.lightBlue200, appTheme.whiteA700],
            ),
          ),
          child: SizedBox(
            height: 656.v,
            child: Stack(
              alignment: Alignment.topLeft,
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    height: 46.v,
                    width: 100.h,
                    margin: EdgeInsets.only(top: 43.v),
                    child: Stack(
                      alignment: Alignment.bottomLeft,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgVector,
                          height: 46.v,
                          width: 100.h,
                          alignment: Alignment.center,
                        ),
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Container(
                            height: 4.adaptSize,
                            width: 4.adaptSize,
                            margin: EdgeInsets.only(
                              left: 30.h,
                              bottom: 11.v,
                            ),
                            decoration: BoxDecoration(
                              color: appTheme.lime20001,
                              borderRadius: BorderRadius.circular(
                                2.h,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    width: 145.h,
                    margin: EdgeInsets.fromLTRB(41.h, 26.v, 206.h, 567.v),
                    padding: EdgeInsets.symmetric(
                      horizontal: 1.h,
                      vertical: 14.v,
                    ),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          ImageConstant.imgVector,
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 4.adaptSize,
                          width: 4.adaptSize,
                          margin: EdgeInsets.only(
                            top: 13.v,
                            bottom: 17.v,
                          ),
                          decoration: BoxDecoration(
                            color: appTheme.cyan900,
                            borderRadius: BorderRadius.circular(
                              2.h,
                            ),
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgGroupLime20001,
                          height: 30.v,
                          width: 29.h,
                          margin: EdgeInsets.only(
                            left: 32.h,
                            top: 5.v,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgVector,
                  height: 41.v,
                  width: 93.h,
                  alignment: Alignment.topRight,
                  margin: EdgeInsets.only(
                    top: 49.v,
                    right: 63.h,
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgGroupCyan900,
                  height: 17.adaptSize,
                  width: 17.adaptSize,
                  alignment: Alignment.topRight,
                  margin: EdgeInsets.only(
                    top: 59.v,
                    right: 87.h,
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    decoration: AppDecoration.outlineGray300.copyWith(
                      borderRadius: BorderRadiusStyle.customBorderTL10,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                            padding: EdgeInsets.only(right: 25.h),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgAkarIconsEdit,
                                  height: 15.adaptSize,
                                  width: 15.adaptSize,
                                  margin: EdgeInsets.only(top: 4.v),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 3.h),
                                  child: Text(
                                    "แก้ไขโปรไฟล์",
                                    style: CustomTextStyles
                                        .labelLargeIBMPlexSansThaiGreenA700Medium,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 6.v),
                        Text(
                          "Binny Bun",
                          style: theme.textTheme.headlineLarge,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 2.v),
                              child: Text(
                                "@binny.bin",
                                style: theme.textTheme.bodyMedium,
                              ),
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgCiCopy,
                              height: 15.adaptSize,
                              width: 15.adaptSize,
                              margin: EdgeInsets.only(
                                left: 4.h,
                                bottom: 5.v,
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 10.v),
                        _buildTabview(context),
                        _buildTabBarView(context)
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    height: 114.adaptSize,
                    width: 114.adaptSize,
                    margin: EdgeInsets.only(top: 3.v),
                    padding: EdgeInsets.symmetric(
                      horizontal: 17.h,
                      vertical: 1.v,
                    ),
                    decoration: AppDecoration.black.copyWith(
                      borderRadius: BorderRadiusStyle.circleBorder57,
                    ),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgGroupLime100,
                      height: 110.v,
                      width: 73.h,
                      alignment: Alignment.centerRight,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    height: 63.v,
                    width: 145.h,
                    margin: EdgeInsets.only(top: 26.v),
                    padding: EdgeInsets.symmetric(
                      horizontal: 29.h,
                      vertical: 1.v,
                    ),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          ImageConstant.imgVector,
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgGroupLime20001,
                      height: 48.adaptSize,
                      width: 48.adaptSize,
                      alignment: Alignment.bottomLeft,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        bottomNavigationBar: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.h),
          child: _buildBottomBar(context),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 56.v,
      title: AppbarTitleImage(
        imagePath: ImageConstant.imgFrame81,
        margin: EdgeInsets.only(left: 14.h),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgGroup23,
          margin: EdgeInsets.symmetric(
            horizontal: 13.h,
            vertical: 3.v,
          ),
        )
      ],
    );
  }

  /// Section Widget
  Widget _buildTabview(BuildContext context) {
    return SizedBox(
      height: 63.v,
      width: 343.h,
      child: TabBar(
        controller: tabviewController,
        labelPadding: EdgeInsets.zero,
        tabs: [
          Tab(
            child: Text(
              "กำลังติดตาม",
            ),
          ),
          Tab(
            child: Text(
              "15",
            ),
          ),
          Tab(
            child: Text(
              "ผู้ติดตาม",
            ),
          ),
          Tab(
            child: Text(
              "4",
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTabBarView(BuildContext context) {
    return SizedBox(
      height: 399.v,
      child: TabBarView(
        controller: tabviewController,
        children: [ProfilePage(), ProfilePage(), ProfilePage(), ProfilePage()],
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {},
    );
  }
}
