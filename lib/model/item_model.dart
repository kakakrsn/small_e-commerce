import 'package:flutter/cupertino.dart';

var data = [
  {
    "name": "Getuk Goreng Original",
    "weight": "2000 gram",
    "price": 120000,
    "fav": false,
    "rating": 4.5,
    "image":
        "https://joss.co.id/data/uploads/2021/07/getuk-goreng-sokaraja-678x381.jpg",
    "desc": "Getuk goreng adalah penganan khas Sokaraja (Banyumas) yang manis dan gurih, dibuat dari singkong dan dibumbui gula kelapa. Getuk goreng ditemukan secara tidak sengaja pada tahun 1918 oleh Sanpirngad, seorang penjual nasi keliling di daerah Sokaraja.",
  },
  {
    "name": "Getuk Goreng Original",
    "weight": "1000 gram", 
    "price": 60000,
    "fav": false,
    "rating": 4.5,
    "image":
        "https://joss.co.id/data/uploads/2021/07/getuk-goreng-sokaraja-678x381.jpg",
    "desc": "Getuk goreng adalah penganan khas Sokaraja (Banyumas) yang manis dan gurih, dibuat dari singkong dan dibumbui gula kelapa. Getuk goreng ditemukan secara tidak sengaja pada tahun 1918 oleh Sanpirngad, seorang penjual nasi keliling di daerah Sokaraja."
  },
  {
    "name": "Getuk Goreng Original",
    "weight": "500 gram",
    "price": 27000,
    "fav": false,
    "rating": 4.5,
    "image":
        "https://joss.co.id/data/uploads/2021/07/getuk-goreng-sokaraja-678x381.jpg",
    "desc": "Getuk goreng adalah penganan khas Sokaraja (Banyumas) yang manis dan gurih, dibuat dari singkong dan dibumbui gula kelapa. Getuk goreng ditemukan secara tidak sengaja pada tahun 1918 oleh Sanpirngad, seorang penjual nasi keliling di daerah Sokaraja."
  },
  {
    "name": "Getuk Goreng Original",
    "weight": "250 gram",
    "price": 15000,
    "fav": false,
    "rating": 4.5,
    "image":
        "https://joss.co.id/data/uploads/2021/07/getuk-goreng-sokaraja-678x381.jpg",
    "desc": "Getuk goreng adalah penganan khas Sokaraja (Banyumas) yang manis dan gurih, dibuat dari singkong dan dibumbui gula kelapa. Getuk goreng ditemukan secara tidak sengaja pada tahun 1918 oleh Sanpirngad, seorang penjual nasi keliling di daerah Sokaraja."
  },
  {
    "name": "Getuk Goreng Coklat",
    "weight": "2000 gram",
    "price": 120000,
    "fav": false,
    "rating": 4.5,
    "image":
        "https://joss.co.id/data/uploads/2021/07/getuk-goreng-sokaraja-678x381.jpg",
    "desc": "Getuk goreng adalah penganan khas Sokaraja (Banyumas) yang manis dan gurih, dibuat dari singkong dan dibumbui gula kelapa. Getuk goreng ditemukan secara tidak sengaja pada tahun 1918 oleh Sanpirngad, seorang penjual nasi keliling di daerah Sokaraja."
  },
  {
    "name": "Getuk Goreng Coklat",
    "weight": "1000 gram",
    "price": 60000,
    "fav": false,
    "rating": 4.5,
    "image":
        "https://joss.co.id/data/uploads/2021/07/getuk-goreng-sokaraja-678x381.jpg",
    "desc": "Getuk goreng adalah penganan khas Sokaraja (Banyumas) yang manis dan gurih, dibuat dari singkong dan dibumbui gula kelapa. Getuk goreng ditemukan secara tidak sengaja pada tahun 1918 oleh Sanpirngad, seorang penjual nasi keliling di daerah Sokaraja."
  },
  {
    "name": "Getuk Goreng Coklat",
    "weight": "500 gram",
    "price": 27000,
    "fav": false,
    "rating": 4.5,
    "image":
        "https://joss.co.id/data/uploads/2021/07/getuk-goreng-sokaraja-678x381.jpg",
    "desc": "Getuk goreng adalah penganan khas Sokaraja (Banyumas) yang manis dan gurih, dibuat dari singkong dan dibumbui gula kelapa. Getuk goreng ditemukan secara tidak sengaja pada tahun 1918 oleh Sanpirngad, seorang penjual nasi keliling di daerah Sokaraja."
  },
  {
    "name": "Getuk Goreng Coklat",
    "weight": "250 gram",
    "price": 15000,
    "fav": false,
    "rating": 4.5,
    "image":
        "https://joss.co.id/data/uploads/2021/07/getuk-goreng-sokaraja-678x381.jpg",
    "desc": "Getuk goreng adalah penganan khas Sokaraja (Banyumas) yang manis dan gurih, dibuat dari singkong dan dibumbui gula kelapa. Getuk goreng ditemukan secara tidak sengaja pada tahun 1918 oleh Sanpirngad, seorang penjual nasi keliling di daerah Sokaraja."
  },
  {
    "name": "Getuk Goreng Durian",
    "weight": "2000 gram",
    "price": 120000,
    "fav": false,
    "rating": 4.5,
    "image":
        "https://joss.co.id/data/uploads/2021/07/getuk-goreng-sokaraja-678x381.jpg",
    "desc": "Getuk goreng adalah penganan khas Sokaraja (Banyumas) yang manis dan gurih, dibuat dari singkong dan dibumbui gula kelapa. Getuk goreng ditemukan secara tidak sengaja pada tahun 1918 oleh Sanpirngad, seorang penjual nasi keliling di daerah Sokaraja."
  },
  {
    "name": "Getuk Goreng Durian",
    "weight": "1000 gram",
    "price": 60000,
    "fav": false,
    "rating": 4.5,
    "image":
        "https://joss.co.id/data/uploads/2021/07/getuk-goreng-sokaraja-678x381.jpg",
    "desc": "Getuk goreng adalah penganan khas Sokaraja (Banyumas) yang manis dan gurih, dibuat dari singkong dan dibumbui gula kelapa. Getuk goreng ditemukan secara tidak sengaja pada tahun 1918 oleh Sanpirngad, seorang penjual nasi keliling di daerah Sokaraja."
  },
  {
    "name": "Getuk Goreng Durian",
    "weight": "500 gram",
    "price": 27000,
    "fav": false,
    "rating": 4.5,
    "image":
        "https://joss.co.id/data/uploads/2021/07/getuk-goreng-sokaraja-678x381.jpg",
    "desc": "Getuk goreng adalah penganan khas Sokaraja (Banyumas) yang manis dan gurih, dibuat dari singkong dan dibumbui gula kelapa. Getuk goreng ditemukan secara tidak sengaja pada tahun 1918 oleh Sanpirngad, seorang penjual nasi keliling di daerah Sokaraja."
  },
  {
    "name": "Getuk Goreng Durian",
    "weight": "250 gram",
    "price": 15000,
    "fav": false,
    "rating": 4.5,
    "image":
        "https://joss.co.id/data/uploads/2021/07/getuk-goreng-sokaraja-678x381.jpg",
    "desc": "Getuk goreng adalah penganan khas Sokaraja (Banyumas) yang manis dan gurih, dibuat dari singkong dan dibumbui gula kelapa. Getuk goreng ditemukan secara tidak sengaja pada tahun 1918 oleh Sanpirngad, seorang penjual nasi keliling di daerah Sokaraja."
  }
];

class ShopDataModel {
  String name;
  String weight;
  int price;
  bool fav;
  double rating;
  String image;
  String desc;
  int id;
  int? shopId;

  ShopDataModel(
      {this.shopId,
      required this.id,
      required this.fav,
      required this.rating,
      required this.price,
      required this.image,
      required this.name,
      required this.weight,
      required this.desc,
      });

  factory ShopDataModel.fromJson(Map<String, dynamic> json) {
    return ShopDataModel(
      id: json['id'],
      fav: json['fav'] == 1,
      rating: json['rating'],
      price: json['price'],
      image: json['image'],
      name: json['name'],
      weight: json['weight'],
      desc: json['desc'],
      shopId: json['shop_id'] ?? 0,
    );
  }
}
