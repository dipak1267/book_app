import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:project_beta/src/json/cities_json.dart';
import 'package:project_beta/src/json/states_json.dart';
import 'package:project_beta/src/models/state_city_model.dart';

class PersonalGetXController extends GetxController {
  var states = statesDummyList
      .map<StatesModel>((item) => StatesModel.fromJson(item))
      .toList()
      .obs;
  var cities = citiesDummyList
      .map<CitiesModel>((item) => CitiesModel.fromJson(item))
      .toList()
      .obs;

  @override
  void onInit() {
    selectedCity = cities.first.name;
    selectedState = states.first.name;
    super.onInit();
  }

  late String? selectedCity;
  late String? selectedState;

  getSelectedCity(String city) async {
    if (selectedCity != null || selectedCity!.isNotEmpty) {
      selectedCity = city;
    }
    update();
  }

  getSelectedState(String state) async {
    if (selectedState != null || selectedState!.isNotEmpty) {
      selectedState = state;
    }
    update();
  }
}

class ImagePickerGetXController extends GetxController {
  var selectedImagePath = ''.obs;

  getImage() async {
    var pickedFile = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (pickedFile == null) {
      pickedFile = await ImagePicker().pickImage(source: ImageSource.camera);
    }

    if (pickedFile != null) {
      selectedImagePath.value = pickedFile.path;
    }
    update();
  }
}
