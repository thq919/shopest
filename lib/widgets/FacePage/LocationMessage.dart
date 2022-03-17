import 'package:flutter/material.dart';

class LocationMessage extends StatefulWidget {
  const LocationMessage({Key? key}) : super(key: key);

  @override
  State<LocationMessage> createState() => _LocationMessageState();
}

class _LocationMessageState extends State<LocationMessage> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      child: Center(
        
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          const Spacer(
            flex: 24,
          ),
          const Icon(Icons.location_on_outlined,
              color: Color.fromRGBO(255, 110, 78, 1)),
          const Spacer(
            flex: 2,
          ),
          const Text(
            'Zihuatanejo, Gro',
            style: TextStyle(fontSize: 15, fontFamily: 'Mark Pro', color: Color.fromRGBO(1, 0, 53, 1), fontWeight: FontWeight.w500),
          ),
          IconButton(
              onPressed: () => {},
              icon: const Icon(
                Icons.keyboard_arrow_down,
                color: Color.fromRGBO(178, 178, 178, 1),
              )),
          const Spacer(
            flex: 6,
          ),
          const ImageIcon(AssetImage('./assets/images/sorticon.png')),
          const Spacer(flex: 2),
        ]),
      ),
    );
  }
}
