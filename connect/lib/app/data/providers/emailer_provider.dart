import 'package:get/get.dart';

class EmailerProvider extends GetConnect {
  @override
  void onInit() {}

  emailer() async {
    await get('https://app.conext.in/mdsu/Emailer');
  }
}
