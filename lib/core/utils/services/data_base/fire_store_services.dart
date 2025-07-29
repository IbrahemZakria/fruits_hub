import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fruit_hub/core/utils/services/data_base/data_base_services.dart';

class FireStoreServices implements DataBaseServices {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  @override
  Future<void> addData(String path, Map<String, dynamic> data) async {
    CollectionReference collectionReference = firestore.collection(path);
    await collectionReference.add(data);
  }
}
