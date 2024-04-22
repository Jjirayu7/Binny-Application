import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../../../widgets/custom_icon_button.dart'; // ignore: must_be_immutable

class CommentsectionItemWidget extends StatelessWidget {
  const CommentsectionItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 216.h,
      child: Align(
        alignment: Alignment.bottomRight,
        child: Container(
          margin: EdgeInsets.only(top: 262.v),
          padding: EdgeInsets.fromLTRB(2.h, 90.v, 9.h, 90.v),
          decoration: AppDecoration.black.copyWith(
            borderRadius: BorderRadiusStyle.circleBorder11,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 165.h,
                margin: EdgeInsets.only(left: 7.h),
                child: Text(
                  "ทำไมพวกเราถึงต้อง\nแยกขยะด้วยหรอคะ?",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.titleLarge!.copyWith(
                    height: 1.40,
                  ),
                ),
              ),
              SizedBox(height: 14.v),
              Padding(
                padding: EdgeInsets.only(left: 7.h),
                child: Text(
                  "Top comment",
                  style: CustomTextStyles.bodySmallGreen200,
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: SizedBox(
                  width: 184.h,
                  child: Text(
                    "ส่วนตัวผมมองเป็นในด้านของความรับ ผิดชอบที่มีต่อสังคมมากกว่าครับ เพราะว่าถ้าพวกเราไม่",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.bodySmall!.copyWith(
                      height: 1.50,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 32.v),
              Align(
                alignment: Alignment.centerRight,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 2.v),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            "Anonymous",
                            style: theme.textTheme.bodySmall,
                          ),
                          Text(
                            "21 ก.พ. 67",
                            style: CustomTextStyles.bodySmallLight,
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 5.h),
                      child: CustomIconButton(
                        height: 37.adaptSize,
                        width: 37.adaptSize,
                        padding: EdgeInsets.all(5.h),
                        child: CustomImageView(
                          imagePath: ImageConstant.imgGroup,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 2.v)
            ],
          ),
        ),
      ),
    );
  }
}
