import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:shopest/main.dart';

import 'package:shopest/models/FacePageProvider.dart';
import 'package:shopest/models/SinglePhoneHomeStore.dart';

import 'package:shopest/services/ServiceWrapper.dart';

import 'package:shopest/widgets/FacePage/PhoneGallery/FutureBuilderSectionPhoneGallery.dart';
import 'package:shopest/widgets/FacePage/CustomSearchTextField.dart';
import 'package:shopest/widgets/FacePage/CustomTextBlock.dart';
import 'package:shopest/widgets/FacePage/CustomTextBlockSectionSecond.dart';
import 'package:shopest/widgets/FacePage/LocationMessage.dart';
import 'package:shopest/widgets/FacePage/SelectCategoryButtonBar.dart';

import '../widgets/FacePage/CustomCircularProgressIndicator.dart';


class FacePage extends StatefulWidget {
  FacePageProvider model;
  FacePage({Key? key, required this.model}) : super(key: key);

  @override
  State<FacePage> createState() => _FacePageState();
}

class _FacePageState extends State<FacePage> {
  @override
  void initState() {
    super.initState();
    getListSinglePhoneHomeStore().then((list) => model.setPhoneList(list));
  }

  Future<List<SinglePhoneHomeStore>> getListSinglePhoneHomeStore() async {
    List<SinglePhoneHomeStore> futureList =
        await ServiceWrapper().getBestSeller();
    return futureList;
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
       shrinkWrap: true,
          primary: true,
          padding: const EdgeInsets.only(
            bottom: 100,
            left: 15,
            right: 21,
            top: 32,
          ),
      children: [
      const LocationMessage(),
      const CustomSelectCategoryButtonBar(),
      const CustomSearchTextField(),
      const CustomTextBlockSectionFirst(),
      Image.asset('./assets/images/imagestore.png'),
      const CustomTextBlockSectionSecond(),
      context.watch<FacePageProvider>().isPhoneListCreated
          ? const CustomFutureBuilderSectionPhoneGallery()
          : const CustomCircularProgressIndicator() ,
          
    ]);
  }
}


