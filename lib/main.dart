import 'package:flutter/material.dart';
import 'package:shopest/pages/FacePage.dart';
import 'package:shopest/models/FacePageProvider.dart';

import 'package:shopest/theme.dart';
import 'package:provider/provider.dart';
import 'package:shopest/widgets/FacePage/MenuBar.dart';

void main() {
  // debugPaintSizeEnabled=true;
  runApp(const MyApp());
}

FacePageProvider model = FacePageProvider();

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => model,
      child: MaterialApp(
        title: 'Shopest',
        theme: getTheme(),
        home: Scaffold(
          bottomSheet: const MenuBar(),
          body: FacePage(model: model),
        ),
      ),
    );
  }
}
