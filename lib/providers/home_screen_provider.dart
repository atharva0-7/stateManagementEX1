import 'package:flutter/foundation.dart';

class HomePageProvider with ChangeNotifier{
  bool isEligible = false;
  String message = "";



  void checkEligibilty(int age)
  {
    if(age>=18)
    {
      isEligible = true;
      message = "YOu are eligible";
      notifyListeners();
    }else
    {
      isEligible = false;
      message = " not eligible";
      notifyListeners();
    }
  }
}