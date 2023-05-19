import 'package:connect/app/modules/utils/responsive_helper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:sizer/sizer.dart';

class AppBarWidget extends GetView {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 1.8.w),
      child: SizedBox(
        height: ResponsiveValueSet.appBarDividerHeight(context),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Visibility(
                visible: ResponsiveValueSet.isVisibleAppBarLeading(context),
                child: Wrap(
                  crossAxisAlignment: WrapCrossAlignment.center,
                  spacing: 1.8.w,
                  children: [
                    Text(
                      'MDSC 2022-23',
                      style: TextStyle(
                          fontSize: ResponsiveValueSet.appBarSubTitleFontSize(
                              context),
                          color: Colors.white),
                    ),
                    SizedBox(
                      height: ResponsiveValueSet.appBarDividerHeight(context),
                      child: const VerticalDivider(
                        color: Colors.white,
                        thickness: 1,
                        width: 0,
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                child: Text(
                  'Malabar Dental College and Dheeksha',
                  textAlign: ResponsiveValueSet.appBarTitleAlign(context),
                  style: TextStyle(
                      fontSize: ResponsiveValueSet.appBarTitleFontSize(context),
                      color: Colors.white),
                ),
              ),
              Visibility(
                  visible: !ResponsiveValueSet.isVisibleAppBarLeading(context),
                  child: const SizedBox(
                    width: 70,
                  )),
              Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                spacing: 1.8.w,
                children: [
                  SizedBox(
                    height: ResponsiveValueSet.appBarDividerHeight(context),
                    child: const VerticalDivider(
                      color: Colors.white,
                      thickness: 1,
                      width: 0,
                    ),
                  ),
                  Text(
                    DateFormat.yMMMEd().format(DateTime.now()),
                    style: TextStyle(
                        fontSize:
                            ResponsiveValueSet.appBarSubTitleFontSize(context),
                        color: Colors.white),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
