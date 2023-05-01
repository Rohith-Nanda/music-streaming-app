import 'package:spotifyapp/models/categories.dart';

class Categoryoperation{
  Categoryoperation._() {}
 static List<Categories> getCategories(){
    return <Categories>[
          Categories("https://i.scdn.co/image/ab67706c0000da84f71afded6326f0b319311eb9", "Top songs"),
          Categories("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRRKlbBGTz3WggaNzyP8rWi8hG6ojkpow4o0A", "Drake top hits"),
          Categories("https://i.scdn.co/image/ab67706c0000da8403cf313629c65849e80db511", "Justin \nTimberlake"),
          Categories("https://i.scdn.co/image/ab67706f00000002b0c066c63921e8d43068982c", "Taylor top hits"),
          Categories("https://i.scdn.co/image/ab67616d0000b2736597f07e711333210fa77b1c", "darshan Raval"),
          Categories("https://i.scdn.co/image/ab67616d00001e02ea3ef7697cfd5705b8f47521", "Shawn Mendes")
    ];
  }
}