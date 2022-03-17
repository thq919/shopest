import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shopest/models/SinglePhoneHomeStore.dart';

class PhoneOfFacePage extends StatelessWidget {
  final SinglePhoneHomeStore phone;
  const PhoneOfFacePage({Key? key, required this.phone}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        // physics: NeverScrollableScrollPhysics(),

        // itemExtent: 80,
        // shrinkWrap: true,
        children: [
          SizedBox(
            child: Stack(
              alignment: AlignmentDirectional.topEnd,
              children: [
                Container(
                    color: Colors.white,
                    child: Image.network(
                      phone.picture,
                      height: 187,
                      width: 168,
                    )),
                Positioned(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      shape: const CircleBorder(),
                      fixedSize: const Size(10, 10)
                    ),
                    onPressed: () => {},
                    child:
                        ImageIcon(AssetImage(
                          phone.isFavorites == true? 
                          './assets/images/hearticonfilled.png' :
                          './assets/images/hearticon.png'), color: const Color.fromRGBO(255, 110, 78, 1),),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const Padding(padding: EdgeInsets.only(left: 10)),
                Text(
                  '\$' + phone.discountPrice.toString(),
                  style: const TextStyle(
                    color: Color.fromRGBO(1, 0, 53, 1),
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                  ),
                ),
                const Padding(padding: EdgeInsets.all(7)),
                Text(
                  '\$' + phone.priceWithoutDiscount.toString(),
                  style: const TextStyle(
                      decoration: TextDecoration.lineThrough,
                      fontWeight: FontWeight.w500,
                      fontSize: 10,
                      color: Color.fromRGBO(204, 204, 204, 1)),
                )
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: Text(
              phone.title,
              style: const TextStyle(
                color: Color.fromRGBO(1, 0, 53, 1),
                fontWeight: FontWeight.w400,
                fontSize: 10,
              ),
            ),
          )
        ],
      ),
    );
  }
}
