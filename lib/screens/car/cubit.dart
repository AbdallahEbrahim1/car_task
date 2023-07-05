import 'package:flutter_bloc/flutter_bloc.dart';

import 'model.dart';
import 'state.dart';

class CarCubit extends Cubit<CarState> {
  CarCubit() : super(CarState());

  void getCar({bool isSuccess = false}) async {
    emit(CarLoadingState());
    await Future.delayed(
      const Duration(
        seconds: 2,
      ),
    );
    List<Car> list = [
      Car(
          price: '13000000',
          name: 'Mercedes',
          color: 'black',
          image:
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRA55JaVriOBqnqNfgNIetLDa-Uejg02AwUnAh5T402NJtI80QtvHo6tMnr2uZvFhJGGdE&usqp=CAU'),
      Car(
          price: '33000000',
          name: 'Audi',
          color: 'white',
          image:
              'https://media.hatla2eestatic.com/uploads/ncarmodel/8559/big-up_4d8adeb48d3a5d8cc90908a6c384bdc1.jpg'),
      Car(
          price: '8000900',
          name: 'BMW',
          color: 'Red',
          image:
              'https://www.cnet.com/a/img/resize/ddb20b964545336d2324614f2fc1453ba85565ac/hub/2022/01/20/49b42973-a81d-4b01-8d59-c209eb739df6/dsc01540.jpg?auto=webp&width=1200'),
      Car(
          price: '904000',
          name: 'porsche',
          color: 'green',
          image:
              'https://files.porsche.com/filestore/image/multimedia/none/992-gt3-modelimage-sideshot/model/765dfc51-51bc-11eb-80d1-005056bbdc38/porsche-model.png'),
      Car(
          price: '8200000',
          name: 'mclaren',
          color: 'black',
          image:
              'https://www.supercars.net/blog/wp-content/uploads/2018/09/26-McLaren-P1-scaled.jpg'),
      Car(
          price: '9009000',
          name: 'ferrari',
          color: 'red',
          image:
              'https://www.supercars.net/blog/wp-content/uploads/2022/02/Ferrari-SF90-Stradale-1.jpg'),
      Car(
          price: '2800000',
          name: 'Audi',
          color: 'white',
          image:
              'https://media.hatla2eestatic.com/uploads/ncarmodel/8559/big-up_4d8adeb48d3a5d8cc90908a6c384bdc1.jpg'),
      Car(
          price: '904000',
          name: 'porsche',
          color: 'green',
          image:
              'https://files.porsche.com/filestore/image/multimedia/none/992-gt3-modelimage-sideshot/model/765dfc51-51bc-11eb-80d1-005056bbdc38/porsche-model.png'),
      Car(
          price: '10000000',
          name: 'Mercedes',
          color: 'black',
          image:
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRA55JaVriOBqnqNfgNIetLDa-Uejg02AwUnAh5T402NJtI80QtvHo6tMnr2uZvFhJGGdE&usqp=CAU'),
      Car(
          price: '2800000',
          name: 'Audi',
          color: 'white',
          image:
              'https://media.hatla2eestatic.com/uploads/ncarmodel/8559/big-up_4d8adeb48d3a5d8cc90908a6c384bdc1.jpg'),
      Car(
          price: '390000',
          name: 'dodge',
          color: 'gray',
          image:
              'https://hips.hearstapps.com/hmg-prod/images/2019-dodge-challenger-srt-hellcat-redeye-comparison-104-1581425446.jpg?crop=0.651xw:0.489xh;0.0928xw,0.333xh&resize=1200:*'),
      Car(
          price: '13000000',
          name: 'Mercedes',
          color: 'black',
          image:
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRA55JaVriOBqnqNfgNIetLDa-Uejg02AwUnAh5T402NJtI80QtvHo6tMnr2uZvFhJGGdE&usqp=CAU'),
    ];
    if (isSuccess) {
      emit(CarSuccessState(
        list: list,
      ));
    } else {
      emit(CarFailedState(
        message: 'Server Error',
      ));
    }
  }
}
