import 'package:fruit_hub/features/check_out/domain/entities/adress_entity.dart';

class AdressModel {
  final String name, phone, adress, adressDetails, email;

  AdressModel({
    required this.name,
    required this.phone,
    required this.adress,
    required this.adressDetails,
    required this.email,
  });
  factory AdressModel.fromEntity(AdressEntity adressEntity) {
    return AdressModel(
      name: adressEntity.name ?? "",
      phone: adressEntity.phone ?? "",
      adress: adressEntity.adress ?? "",
      adressDetails: adressEntity.adressDetails ?? "",
      email: adressEntity.email ?? "",
    );
  }
  factory AdressModel.fromJson(Map<String, dynamic> json) {
    return AdressModel(
      name: json["name"],
      phone: json["phone"],
      adress: json["adress"],
      adressDetails: json["adressDetails"],
      email: json["email"],
    );
  }
  Map<String, dynamic> toJson() {
    return {
      "email": email,
      "adressDetails": adressDetails,
      "adress": adress,
      "name": name,
      "phone": phone,
    };
  }
}
