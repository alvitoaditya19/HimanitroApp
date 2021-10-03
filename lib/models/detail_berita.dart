part of 'models.dart';

class DetailBerita extends Equatable {
 final String gambar;
  final String judul;
  final  String subjudul;
  

  DetailBerita({
  this.gambar,
    this.judul,
    this.subjudul,
  });
  
  @override
  List<Object> get props =>
      [gambar, judul, subjudul];
}
