import 'package:api/api_helper.dart';
import 'package:api/modal.dart';
import 'package:get/get.dart';

class Homecontroller extends GetxController
{
  Future<Textmodel> callapi()
  async {
    return await Apihelper.apihelper.getapi();
  }
}