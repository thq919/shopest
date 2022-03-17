import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:shopest/models/FacePageProvider.dart';
import 'package:shopest/widgets/FacePage/PhoneGallery/PhoneOfFacePage.dart';

import '../../../models/SinglePhoneHomeStore.dart';

class CustomFutureBuilderSectionPhoneGallery extends StatelessWidget {
  const CustomFutureBuilderSectionPhoneGallery({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<SinglePhoneHomeStore>? list =
        context.watch<FacePageProvider>().phoneList;

    return GridView.count(
        physics: NeverScrollableScrollPhysics(),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        mainAxisSpacing: 12,
        crossAxisSpacing: 8,
        childAspectRatio: 0.57,
        // padding: const EdgeInsets.all(2),
        shrinkWrap: true,
        crossAxisCount: 2,
        children: itemBuilder(list));
  }
}

List<PhoneOfFacePage> itemBuilder(List<SinglePhoneHomeStore>? list) {
  List<PhoneOfFacePage> listToReturn = List.empty(growable: true);
  list?.forEach((element) {
    listToReturn.add(PhoneOfFacePage(phone: element));
  });
  return listToReturn;
}
