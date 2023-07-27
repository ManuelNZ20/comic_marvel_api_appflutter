import 'package:flutter/material.dart';

class ShopIcon extends StatelessWidget {
  const ShopIcon({super.key, required this.numberFavorite});
  final int numberFavorite;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      style:
          ButtonStyle(foregroundColor: MaterialStateProperty.all(Colors.black)),
      onPressed: () {},
      child: Stack(
        children: [
          const Icon(
            Icons.shopping_bag_outlined,
            size: 35,
          ),
          Positioned(
            left: 0,
            bottom: 0,
            child: Container(
              height: 20.0,
              width: 20.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.redAccent),
              child: Text(
                numberFavorite < 10 ? '$numberFavorite' : '9+',
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color:Colors.white,
                  fontSize: 11.0),
                
              ),
            ),
          )
        ],
      ),
    );
  }
}
