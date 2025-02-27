class PostDetailsModel{
   final int id;
 final String name;
 final String username;
 final String email;
 final Address address;

 PostDetailsModel(
      {
        required this.id,
        required this.name,
        required this.username,
        required this.email,
        required this.address
      });

       factory PostDetailsModel.fromJson (Map<String,dynamic> json){
  return PostDetailsModel(
    id: json["id"], 
    name: json["name"], 
    username: json["username"], 
    email: json["email"],
    address: Address.fromJson(json["address"]),
    );
  } 
}
class Address{
  final String street;
  final String city;
  final String zipcode;
  final Geo geo;

  Address({
    required this.street,
    required this.city,
    required this.zipcode,
    required this.geo,
  });

  factory Address.fromJson (Map<String,dynamic> json){
  return Address(
    street: json["street"], 
    city: json["city"], 
    zipcode: json["zipcode"], 
    geo: Geo.fromJson(json["geo"])
    );
  }  
}
class Geo {
  final String lat;
  final String lng;

  Geo({
    required this.lat,
    required this.lng,
  });

factory Geo.fromJson (Map<String,dynamic> json){
  return Geo(
    lat: json["lat"], 
    lng: json["lng"],
    );
  } 

}