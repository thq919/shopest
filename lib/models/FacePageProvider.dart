import 'package:flutter/foundation.dart';
import 'package:shopest/models/SinglePhoneHomeStore.dart';

class FacePageProvider extends ChangeNotifier {
  
  List<SinglePhoneHomeStore>? phoneList;
  bool isPhoneListCreated = false;

  void setPhoneList(List<SinglePhoneHomeStore> list) {
    phoneList = list;
    isPhoneListCreated = true;
    notifyListeners();
  }

  
}
