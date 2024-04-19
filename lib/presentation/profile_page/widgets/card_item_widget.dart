import 'package:flutter/material.dart';
import '../../../core/app_export.dart'; // ignore: must_be_immutable

class CardItemWidget extends StatelessWidget {
  const CardItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 11.h,
        vertical: 5.v,
      ),
      decoration: AppDecoration.outlineGray100.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Container(
                height: 6.adaptSize,
                width: 6.adaptSize,
                margin: EdgeInsets.only(
                  top: 11.v,
                  bottom: 6.v,
                ),
                decoration: BoxDecoration(
                  color: appTheme.teal300,
                  borderRadius: BorderRadius.circular(
                    3.h,
                  ),
                ),
              ),
              Container(
                width: 89.h,
                margin: EdgeInsets.only(left: 9.h),
                child: Text(
                  "พลาสติกใส PET",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.titleSmall!.copyWith(
                    height: 1.29,
                  ),
                ),
              )
            ],
          ),
          SizedBox(height: 10.v),
          Text(
            "68 kg",
            style: theme.textTheme.headlineSmall,
          ),
          SizedBox(height: 1.v)
        ],
      ),
    );
  }
}
