import 'package:connect/app/modules/utils/responsive_helper.dart';
import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class BirthdayCardView extends GetView {
  final int type;
  final String name;
  final String data;
  final String image;
  const BirthdayCardView({
    Key? key,
    required this.type,
    required this.name,
    required this.data,
    required this.image,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Wrap(
      direction: Axis.vertical,
      crossAxisAlignment: WrapCrossAlignment.center,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: ResponsiveValueSet.cardClipperHeight(context),
              width: ResponsiveValueSet.cardClipperWidth(context),
              child: ColoredBox(
                color: (type == 0)
                    ? const Color(0xff71104F)
                    : const Color(0xFF04667B),
              ),
            ),
          ],
        ),
        Container(
          width: ResponsiveValueSet.birthdayCardWidth(context),
          padding: EdgeInsets.symmetric(
              horizontal: ResponsiveValueSet.birthdayCardPadding(context),
              vertical: 1.h),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  (type == 0) ? 'Student' : 'Staff',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: ResponsiveValueSet.birthdayTypeFontSize(context),
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(
                height: .5.h,
              ),
              ExtendedImage.network(
                'https://app.conext.in$image',
                height: ResponsiveValueSet.birthdayimageHeight(context),
                width: double.infinity,
                retries: 2,
                fit: BoxFit.cover,
                filterQuality: FilterQuality.low,
                cache: true,
                // border: Border.all(color: Color.fromARGB(255, 56, 56, 56), width: 1.0),
                borderRadius: const BorderRadius.all(Radius.circular(30.0)),
                cancelToken: CancellationToken(),
              ),
              SizedBox(
                height: .8.h,
              ),
              Text(
                name,
                textAlign: TextAlign.justify,
                style: TextStyle(
                    fontSize:
                        ResponsiveValueSet.birthdayHeaderFontSize(context),
                    color: Colors.black,
                    fontFamily: 'Montserrat Bold'),
              ),
              Text(
                data,
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: ResponsiveValueSet.birthdayBodyFontSize(context),
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: .5.h,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
