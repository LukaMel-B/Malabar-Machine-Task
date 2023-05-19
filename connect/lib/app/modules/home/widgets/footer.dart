import 'package:connect/app/modules/utils/responsive_helper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FooterWidget extends GetView {
  const FooterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Text(
            'Woohoo! 5 of us skipped an age today...',
            style: TextStyle(
                fontSize: ResponsiveValueSet.footerCountFontSize(context),
                color: Colors.white),
          ),
        ),
        Visibility(
          visible: !ResponsiveValueSet.isVisibleAppBarLeading(context),
          child: SizedBox(
            height: ResponsiveValueSet.spaceAfterAppBar(context),
          ),
        ),
        Visibility(
          visible: !ResponsiveValueSet.isVisibleAppBarLeading(context),
          child: Center(
            child: TextButton(
              style: TextButton.styleFrom(
                  backgroundColor: const Color(0xFFF2D977),
                  padding: EdgeInsets.all(
                      ResponsiveValueSet.addButtonPadding(context))),
              onPressed: () {},
              child: Text(
                'Add Your Birthday',
                style: TextStyle(
                    fontSize: ResponsiveValueSet.addButtonFontSize(context),
                    color: Colors.black,
                    fontFamily: 'Montserrat Bold'),
              ),
            ),
          ),
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              ResponsiveValueSet.bgImage(context),
              width: ResponsiveValueSet.bgImageSize(context),
            ),
            const SizedBox(width: 30),
            Flexible(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 40),
                child: Text(
                  'MDSU 2022-23 | IT department | Macity Connect',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: ResponsiveValueSet.footerFontSize(context),
                      color: Colors.white),
                ),
              ),
            ),
            const SizedBox(width: 30),
          ],
        )
      ],
    );
  }
}
