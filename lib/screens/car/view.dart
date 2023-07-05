import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task1/screens/car/component/item_car.dart';
import 'package:task1/screens/car/cubit.dart';
import 'package:task1/screens/car/state.dart';

class CarView extends StatelessWidget {
  const CarView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => CarCubit()..getCar(),
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Cars'),
            centerTitle: true,
          ),
          body: BlocBuilder<CarCubit, CarState>(
            builder: (context, state) {
              if (state is CarLoadingState) {
                return const Center(child: CircularProgressIndicator());
              } else if (state is CarFailedState) {
                return Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text(
                        'Failed Please Try Again',
                        style: const TextStyle(fontSize: 20),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          CarCubit cubit = BlocProvider.of(context);
                          cubit.getCar(isSuccess: true);
                        },
                        child: const Text('Try Again '),
                      ),
                    ],
                  ),
                );
              } else if (state is CarSuccessState) {
                return GridView.builder(
                    itemCount: state.list.length,
                    padding: const EdgeInsets.all(10),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 10,
                            mainAxisExtent: 250),
                    itemBuilder: (context, index) {
                      return ItemCar(
                        model: state.list[index],
                      );
                    });
              }
              return const Text('Something wrong');
            },
          ),
        ));
  }
}
