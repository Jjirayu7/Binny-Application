import 'package:flutter/material.dart';
import '../../../core/app_export.dart'; // ignore: must_be_immutable

class UserprofileItemWidget extends StatelessWidget {
  const UserprofileItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 348.h,
      child: Align(
        alignment: Alignment.bottomRight,
        child: SizedBox(
          height: 141.v,
          width: 348.h,
          child: Stack(
            alignment: Alignment.centerLeft,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgRectangle198,
                height: 141.v,
                width: 348.h,
                radius: BorderRadius.circular(
                  8.h,
                ),
                alignment: Alignment.center,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 17.h,
                    right: 173.h,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "ขยะกำพร้าไปไหนดี?",
                        style: theme.textTheme.titleLarge,
                      ),
                      Text(
                        "N15 Technology",
                        style: theme.textTheme.bodyLarge,
                      ),
                      SizedBox(height: 45.v),
                      Text(
                        "#ประเภทขยะกำพร้า",
                        style: CustomTextStyles.bodyLargeRegular,
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
