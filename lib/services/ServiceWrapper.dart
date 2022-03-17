import 'package:dio/dio.dart';
import 'package:shopest/models/SinglePhoneHomeStore.dart';
import 'package:shopest/services/ClientService.dart';

class ServiceWrapper {
  ClientService client = ClientService();

  Future<List<SinglePhoneHomeStore>> getBestSeller() async {
    Response<dynamic> response = await client.getFacePageGallery();
    List<SinglePhoneHomeStore> list = List.empty(growable: true);
    Map responseBody = response.data[0];

    for (Map<String, dynamic> item in responseBody['best_seller']) {
      list.add(SinglePhoneHomeStore(
        id: item['id'],
        isNew: item['is_new'],
        title: item['title'],
        subtitle: item['subtitle'],
        picture: item['picture'],
        isBuy: item['is_buy'],
        discountPrice: item['discount_price'],
        priceWithoutDiscount:
            item['price_without_discount'] ?? item['priae_without_discount'],
        isFavorites: item['is_favorites'],
      ));
    }

    /* for (Map<String, dynamic> item in responseBody['home_store']) {
      list.add(SinglePhoneHomeStore(
        id: item['id'],
        isNew: item['is_new'],
        title: item['title'],
        subtitle: item['subtitle'],
        picture: item['picture'],
        isBuy: item['is_buy'],
        discountPrice: item['discount_price'],
        priceWithoutDiscount:
            item['price_without_discount'] ?? item['priae_without_discount'],
        isFavorites: item['is_favorites'],
      ));
    } */

    return list;
  }
}
