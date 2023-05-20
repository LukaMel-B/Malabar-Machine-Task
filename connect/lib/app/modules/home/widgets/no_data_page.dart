import 'package:connect/app/modules/home/controllers/home_controller.dart';
import 'package:connect/app/modules/home/widgets/footer.dart';
import 'package:connect/app/modules/home/widgets/header.dart';
import 'package:connect/app/modules/utils/responsive_helper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'appbar.dart';

class NoDataPageWidget extends GetView<HomeController> {
  const NoDataPageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const AppBarWidget(),
        const Divider(
          color: Colors.white,
          thickness: 1,
          height: 0,
        ),
        SizedBox(
          height: ResponsiveValueSet.spaceAfterAppBar(context) + 2.h,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 5.w),
          child: Column(
            children: [
              const HeaderNoDataWidget(),
              SizedBox(
                height: ResponsiveValueSet.spaceAfterAppBar(context) - 1.7.h,
              ),
            ],
          ),
        ),
        const Expanded(child: SizedBox()),
        Center(
          child: Padding(
            padding: ResponsiveValueSet.isSmallScreen(context)
                ? EdgeInsets.symmetric(horizontal: 10.w)
                : EdgeInsets.zero,
            child: Image.asset(
              ResponsiveValueSet.bgImageNoData(context),
              width: ResponsiveValueSet.bgImageNoDataSize(context),
              fit: BoxFit.cover,
            ),
          ),
        ),
        const Expanded(child: SizedBox()),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 5.w),
          child: const FooterNoDataWidget(),
        )
      ],
    );
  }
}
