import 'package:flutter/material.dart';
import '../../../../../core/utils/app_images.dart';

class CategorisList extends StatelessWidget {
  final Function()? onTap;
  const CategorisList({
    super.key,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Column(
        children: [
          Container(
            alignment: Alignment.topRight,
            height: 30,
            child: const Expanded(
              flex: 1,
              child: Text(
                "رجالي",
                style: TextStyle(fontSize: 25),
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 5, // Update the itemCount accordingly
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: onTap,
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Image.asset(
                          Assets.mans,
                          height: 80,
                          width: 80,
                        ),
                        const SizedBox(height: 5),
                        const Text(
                          "رجالي",
                          style: TextStyle(fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
