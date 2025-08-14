import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fruit_hub/core/exceptions/custom_exception.dart';
import 'package:fruit_hub/core/utils/services/data_base/data_base_services.dart';

class FireStoreServices implements DataBaseServices {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  @override
  Future<void> addData({
    required String path,
    required Map<String, dynamic> data,
    String? documentId,
  }) async {
    try {
      CollectionReference collectionReference = firestore.collection(path);

      if (documentId != null) {
        await collectionReference.doc(documentId).set(data);
      } else {
        await collectionReference.add(data);
      }
    } on Exception catch (e) {
      throw CustomException(e.toString());
    }
  }

  @override
  Future<dynamic> getData({
    required String path,
    String? documentId,
    String? orderBy,
    bool descending = false,
    int? limit,
  }) async {
    try {
      CollectionReference collectionReference = firestore.collection(path);

      if (documentId != null) {
        // جلب مستند واحد
        DocumentSnapshot docSnap = await collectionReference
            .doc(documentId)
            .get();
        return docSnap.data() as Map<String, dynamic>?;
      } else {
        // بناء الاستعلام
        Query query = collectionReference;
        if (orderBy != null) {
          query = query.orderBy(orderBy, descending: descending);
        }
        if (limit != null) {
          query = query.limit(limit);
        }

        QuerySnapshot querySnap = await query.get();
        return querySnap.docs
            .map((doc) => doc.data() as Map<String, dynamic>)
            .toList();
      }
    } on Exception catch (e) {
      throw CustomException(e.toString());
    }
  }
}
