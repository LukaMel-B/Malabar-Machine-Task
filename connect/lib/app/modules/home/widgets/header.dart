import 'package:connect/app/modules/utils/responsive_helper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HeaderWidget extends GetView {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'It\'s your special day — \nLet’s celebrate it\ntogether!',
          textAlign: TextAlign.start,
          style: TextStyle(
              fontSize: ResponsiveValueSet.headingFontSize(context),
              color: Colors.white,
              fontFamily: 'Montserrat Black'),
        ),
        Visibility(
          visible: ResponsiveValueSet.isVisibleAppBarLeading(context),
          child: TextButton(
            style: TextButton.styleFrom(
                backgroundColor: const Color(0xFFF2D977),
                padding: EdgeInsets.all(
                    ResponsiveValueSet.addButtonPadding(context))),
            onPressed: () {},
            child: Text(
              'Add Your Birthday',
              style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Montserrat Bold',
                  fontSize: ResponsiveValueSet.addButtonFontSize(context)),
            ),
          ),
        )
      ],
    );
  }
}

class HeaderNoDataWidget extends GetView {
  const HeaderNoDataWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Whoops! Time to weep —\nits a no-celebration\nday',
          textAlign: TextAlign.start,
          style: TextStyle(
              fontSize: ResponsiveValueSet.headingFontSize(context),
              color: Colors.white,
              fontFamily: 'Montserrat Black'),
        ),
        Visibility(
          visible: ResponsiveValueSet.isVisibleAppBarLeading(context),
          child: TextButton(
            style: TextButton.styleFrom(
                backgroundColor: const Color(0xFFF2D977),
                padding: EdgeInsets.all(
                    ResponsiveValueSet.addButtonPadding(context))),
            onPressed: () {},
            child: Text(
              'Add Your Birthday',
              style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Montserrat Bold',
                  fontSize: ResponsiveValueSet.addButtonFontSize(context)),
            ),
          ),
        )
      ],
    );
  }
}
