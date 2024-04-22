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
        padding: EdgeInsets.only(bottom: 1.v),
        child: Column(
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgImage37,
              height: 35.adaptSize,
              width: 35.adaptSize,
            ),
            SizedBox(
              width: 77.h,
              child: Text(
                "ติดต่อขายขยะ",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: theme.textTheme.titleSmall,
              ),
            )
          ],
        ),
      ),
    );
  }
}
