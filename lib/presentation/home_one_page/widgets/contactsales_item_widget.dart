import 'package:flutter/material.dart';
import '../../../core/app_export.dart'; // ignore: must_be_immutable

class ContactsalesItemWidget extends StatelessWidget {
  const ContactsalesItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 77.h,
      child: Padding(
        padding: EdgeInsets.only(bottom: 2.v),
        child: Column(
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgImage37,
              height: 35.adaptSize,
              width: 35.adaptSize,
            ),
            Text(
              "ติดต่อขายขยะ",
              style: CustomTextStyles.titleSmallGray900,
            )
          ],
        ),
      ),
    );
  }
}
