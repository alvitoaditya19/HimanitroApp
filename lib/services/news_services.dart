part of 'services.dart';

class NewsServices {
  static CollectionReference _userCollection =
      FirebaseFirestore.instance.collection('info');


  static Future<List<DetailBerita>> getTransaction(String userID) async {
    QuerySnapshot snapshot = await _userCollection.get();

    var documents = snapshot.docs
        .where((document) => document.data()['judul'] == userID);

    return documents
        .map((e) => DetailBerita(
            judul: e.data()['judul'],
            subjudul: e.data()['subjudul'],
            gambar: e.data()['gambar'],
            ))
        .toList();
  }
}
