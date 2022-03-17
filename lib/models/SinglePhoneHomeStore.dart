class SinglePhoneHomeStore {
  final int id;
  final bool? isNew;
  final String title;
  final String? subtitle;
  final String picture;
  final bool? isBuy;
  final bool? isFavorites;
  final int? priceWithoutDiscount;
  final int? discountPrice;

  SinglePhoneHomeStore({
    this.isFavorites,
    this.priceWithoutDiscount,
    this.discountPrice,
    this.isNew,
    this.subtitle,
    this.isBuy,
    required this.id,
    required this.title,
    required this.picture,
  });
}
