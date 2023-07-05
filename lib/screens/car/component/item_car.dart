import 'package:flutter/material.dart';
import 'package:task1/screens/car/model.dart';
import 'package:task1/screens/car_details/view.dart';

class ItemCar extends StatelessWidget {
  final Car model;

  const ItemCar({Key? key, required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => CarDetailsView(
              image: model.image,
              name: model.name,
              price: model.price,
            ),
          ),
        );
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(model.image),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                model.name,
                style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueGrey),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.add, size: 24, color: Colors.blueGrey),
              )
            ],
          ),
          Text(
            model.price,
            style: const TextStyle(fontSize: 15),
          ),
        ],
      ),
    );
  }
}
