import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_drop_down.dart';
import 'widgets/card_item_widget.dart'; // ignore_for_file: must_be_immutable

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key})
      : super(
          key: key,
        );

  @override
  ProfilePageState createState() => ProfilePageState();
}
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class ProfilePageState extends State<ProfilePage>
    with AutomaticKeepAliveClientMixin<ProfilePage> {
  List<String> dropdownItemList = ["Item One", "Item Two", "Item Three"];

  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        backgroundColor: Colors.transparent,
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
          child: Container(
            decoration: AppDecoration.gradientLightBlueToWhiteA,
            child: Column(
              children: [
                SizedBox(height: 18.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 17.h),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "สถิติการแยกขยะของฉัน",
                              style: CustomTextStyles.titleLargeGray600,
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 2.v),
                              child: CustomDropDown(
                                width: 107.h,
                                icon: Container(
                                  margin:
                                      EdgeInsets.symmetric(horizontal: 10.h),
                                  child: CustomImageView(
                                    imagePath:
                                        ImageConstant.imgArrowdownBlueGray10001,
                                    height: 18.adaptSize,
                                    width: 18.adaptSize,
                                  ),
                                ),
                                hintText: "เดือนมีนาคม",
                                items: dropdownItemList,
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 11.v),
                      SizedBox(
                        height: 277.v,
                        width: 358.h,
                        child: Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            Align(
                              alignment: Alignment.topLeft,
                              child: Padding(
                                padding: EdgeInsets.only(left: 8.h),
                                child: Text(
                                  "386",
                                  style: theme.textTheme.displayMedium,
                                ),
                              ),
                            ),
                            _buildStatistics(context)
                          ],
                        ),
                      )
                    ],
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
  Widget _buildStatistics(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 45.h,
            margin: EdgeInsets.only(left: 101.h),
            padding: EdgeInsets.symmetric(
              horizontal: 4.h,
              vertical: 2.v,
            ),
            decoration: AppDecoration.fillGreen.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder5,
            ),
            child: Text(
              "+2.4%",
              style: CustomTextStyles.labelLargeTeal300,
            ),
          ),
          SizedBox(height: 41.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.h),
            child: SizedBox(
              height: 8.v,
              width: 342.h,
              child: ClipRRect(
                child: LinearProgressIndicator(
                  value: 0,
                ),
              ),
            ),
          ),
          SizedBox(height: 18.v),
          GridView.builder(
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisExtent: 80.v,
              crossAxisCount: 2,
              mainAxisSpacing: 13.h,
              crossAxisSpacing: 13.h,
            ),
            physics: NeverScrollableScrollPhysics(),
            itemCount: 4,
            itemBuilder: (context, index) {
              return CardItemWidget();
            },
          )
        ],
      ),
    );
  }
}
