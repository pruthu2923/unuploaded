import 'dart:io';

class Product
{
  int pro_id;
  String pro_name;
  int pro_price;

  Product(
    {required this.pro_id,required this.pro_name,required this.pro_price}
  );
  factory Product.fromMap({required Map data})
  {
    return Product(
      pro id: data['pro_id'],
      pro_name
    )
  }
}
void main()
{
  List<int>
}