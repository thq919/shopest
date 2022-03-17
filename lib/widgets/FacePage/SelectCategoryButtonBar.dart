import 'package:flutter/material.dart';

class CustomSelectCategoryButtonBar extends StatefulWidget {
  const CustomSelectCategoryButtonBar({Key? key}) : super(key: key);

  @override
  State<CustomSelectCategoryButtonBar> createState() =>
      _CustomSelectCategoryButtonBarState();
}

class _CustomSelectCategoryButtonBarState
    extends State<CustomSelectCategoryButtonBar> {
  int selectedButton = 1;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 158,
      child: Center(
        child: Column(
          children: [
            SizedBox(
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Select Category',
                      style: TextStyle(
                          color: Color.fromRGBO(1, 0, 53, 1),
                          fontWeight: FontWeight.w700,
                          fontSize: 15),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          'view all',
                          style: TextStyle(
                              color: Color.fromRGBO(255, 110, 78, 1),
                              fontWeight: FontWeight.w400),
                        )),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 90,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: ButtonBar(
                  //spacing: 4,
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          selectedButton = 1;
                        });
                      },
                      customBorder: const CircleBorder(),
                      borderRadius: BorderRadius.circular(25.0),
                      child: SizedBox(
                        width: 71,
                        height: 71,
                        child: DecoratedBox(
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: selectedButton == 1
                                    ? const Color.fromRGBO(255, 110, 78, 1)
                                    : Colors.white),
                            child: selectedButton == 1
                                ? const ImageIcon(
                                    AssetImage('./assets/images/phoneicon.png'),
                                    color: Colors.white,
                                  )
                                : const ImageIcon(
                                    AssetImage('./assets/images/phoneicon.png'),
                                    color: Colors.black,
                                  )),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          selectedButton = 2;
                        });
                      },
                      customBorder: const CircleBorder(),
                      borderRadius: BorderRadius.circular(25.0),
                      child: SizedBox(
                        width: 71,
                        height: 71,
                        child: DecoratedBox(
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: selectedButton == 2
                                    ? const Color.fromRGBO(255, 110, 78, 1)
                                    : Colors.white),
                            child: selectedButton == 2
                                ? const ImageIcon(
                                    AssetImage('./assets/images/pcicon.png'),
                                    color: Colors.white,
                                  )
                                : const ImageIcon(
                                    AssetImage('./assets/images/pcicon.png'),
                                    color: Colors.black,
                                  )),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          selectedButton = 3;
                        });
                      },
                      customBorder: const CircleBorder(),
                      borderRadius: BorderRadius.circular(25.0),
                      child: SizedBox(
                        width: 71,
                        height: 71,
                        child: DecoratedBox(
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: selectedButton == 3
                                    ? const Color.fromRGBO(255, 110, 78, 1)
                                    : Colors.white),
                            child: selectedButton == 3
                                ? const ImageIcon(
                                    AssetImage('./assets/images/hearthicon.png'),
                                    color: Color.fromRGBO(1, 0, 53, 0.3),
                                  )
                                : const ImageIcon(
                                    AssetImage('./assets/images/hearthicon.png'),
                                    color: Colors.black,
                                  )),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          selectedButton = 4;
                        });
                      },
                      customBorder: const CircleBorder(),
                      borderRadius: BorderRadius.circular(25.0),
                      child: SizedBox(
                        width: 71,
                        height: 71,
                        child: DecoratedBox(
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: selectedButton == 4
                                    ? const Color.fromRGBO(255, 110, 78, 1)
                                    : Colors.white),
                            child: selectedButton == 4
                                ? const ImageIcon(
                                    AssetImage('./assets/images/shelficon.png'),
                                    color: Colors.white,
                                  )
                                : const ImageIcon(
                                    AssetImage('./assets/images/shelficon.png'),
                                    color: Colors.black,
                                  )),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          selectedButton = 5;
                        });
                      },
                      customBorder: const CircleBorder(),
                      borderRadius: BorderRadius.circular(25.0),
                      child: SizedBox(
                        width: 71,
                        height: 71,
                        child: DecoratedBox(
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: selectedButton == 5
                                    ? const Color.fromRGBO(255, 110, 78, 1)
                                    : Colors.white),
                            child: selectedButton == 5
                                ? const ImageIcon(
                                    AssetImage('./assets/images/phoneicon.png'),
                                    color: Colors.white,
                                  )
                                : const ImageIcon(
                                    AssetImage('./assets/images/phoneicon.png'),
                                    color: Colors.black,
                                  )),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
