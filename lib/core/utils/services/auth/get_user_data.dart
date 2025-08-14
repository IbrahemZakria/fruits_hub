import 'dart:convert';

import 'package:fruit_hub/constant.dart';
import 'package:fruit_hub/core/utils/services/shared_preferance.dart';
import 'package:fruit_hub/features/auth/data/models/user_model.dart';
import 'package:fruit_hub/features/auth/domain/entities/user_entity.dart';

UserEntity getUserData() {
  var jsonData = SharedPreferance.getData<String>(Constant.userData);
  UserEntity userEntity = UserModel.fromJson(jsonDecode(jsonData!));
  return userEntity;
}
