class UserModel {
  UserModel({
    this.idUser = 0,
    this.name,
    this.lastname,
    this.address,
    this.email,
  });

  late int idUser;
  String? name;
  String? lastname;
  String? address;
  String? email;

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        idUser: json["idUser"],
        name: json["name"],
        lastname: json["lastname"],
        address: json["address"],
        email: json["email"],
      );

  Map<String, dynamic> toJson() => {
        "idUser": idUser,
        "name": name,
        "lastname": lastname,
        "address": address,
        "email": email,
      };
}
