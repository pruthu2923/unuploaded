import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:getx_demo/model/photos_model.dart';
import 'package:http/http.dart' as http;

class HomeController extends GetxController {
  List<PhotosModel> photosList = [];
  PhotosModel photosModel = PhotosModel();

  getAllPhotos() async {
    Uri url = Uri.parse("https://jsonplaceholder.typicode.com/photos");
    var response = await http.get(url);
    print(response.statusCode);
    if (response.statusCode == 200) {
      photosList = photosModelFromJson(response.body);
      print(photosList);
      update();
    } else {
      Fluttertoast.showToast(
        msg: "Something Went Wring...",
        gravity: ToastGravity.BOTTOM,
        toastLength: Toast.LENGTH_SHORT,
      );
    }
    update();
  }
}
