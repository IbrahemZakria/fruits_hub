abstract class DataBaseServices {
  Future<void> addData({
    required String path,
    required Map<String, dynamic> data,
    String documentId,
  });
  Future<dynamic> getData({
    required String path,
    String? documentId,
    String? orderBy,
    bool descending = false,
    int? limit,
  });
}
