class UserModel {
  UserModel({
    this.id,
    this.name,
    this.lastName,
  });

  int? id;
  String? name;
  String? lastName;

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json["id"],
      name: json["name"],
      lastName: json["lastName"],
    );
  }

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "lastName": lastName,
      };
}
