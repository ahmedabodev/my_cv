import 'package:get/get.dart';

class indcator_controller extends GetxController{
  int index=0;
  changeind(value){
    index=value;
    update();
  }
}