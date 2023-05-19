import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/state_manager.dart';
import 'package:sale_car_project/data/model/car_model.dart';

class CarController extends GetxController {
  var listofCar = [
    CarModel(
      id: 1,
      name: 'BMW',
      type: 'UV',
      price: 39999,
    ),
    CarModel(
      id: 2,
      name: 'LUXUS 400T FSport',
      type: 'Sedan',
      price: 53000,
    ),
    CarModel(
      id: 3,
      name: 'Jeep Wrangle',
      type: 'Offroad',
      price: 67000,
    ),
    CarModel(
      id: 4,
      name: 'Mercedes C300',
      type: 'Sedan',
      price: 42000,
    ),
    CarModel(
      id: 5,
      name: 'Mercedes C300 Coupe',
      type: 'Sport',
      price: 59999,
    ),
    CarModel(
      id: 6,
      name: 'Mercedes CLA45',
      type: 'Sedan',
      price: 43000,
    ),
    CarModel(
      id: 7,
      name: 'Mustang 2015',
      type: 'Sport',
      price: 38000,
    ),
    CarModel(
      id: 8,
      name: 'RX400H',
      type: 'SUV',
      price: 78000,
    ),
  ];
}
