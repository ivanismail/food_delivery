class ProductRepo {
  static const ALL_PRODUCT = 'food';

  static String byKategori({String category}) =>
      'get-produk?kategori=$category';
}
