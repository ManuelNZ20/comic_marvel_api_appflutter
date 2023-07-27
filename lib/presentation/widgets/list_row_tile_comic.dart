import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:marvel_comics_app/presentation/screens/comic_detail.dart';
import 'package:marvel_comics_app/presentation/utils/extensions.dart';

class ListTileRowComic extends StatelessWidget {
  const ListTileRowComic(
      {super.key,
      required this.imageUrl,
      required this.title,
      required this.numberStart,
      required this.date,
      required this.price});

  final String imageUrl;
  final String title;
  final double numberStart;
  final DateTime date;
  final double price;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
              width: 140,
              height: 170,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  imageUrl,
                  fit: BoxFit.cover,
                ),
              )),
          20.w,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 60,
                  child: Text(
                    title.toUpperCase(),
                    overflow: TextOverflow.fade,
                    style: const TextStyle(
                        fontSize: 20.0, fontWeight: FontWeight.w500),
                  ),
                ),
                5.h,
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RowStarts(
                      number: numberStart,
                    ),
                    5.w,
                    Text(
                      '$numberStart',
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                15.h,
                Text(
                  'ON SALE ${DateFormat('dd/MM').format(date)}',
                  style: const TextStyle(fontSize: 16.0, color: Colors.grey),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'U.S PRICE: \$$price ',
                      style: const TextStyle(
                          fontSize: 16.0, fontWeight: FontWeight.bold),
                    ),
                    IconButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) => ComicDetail()));
                        },
                        icon: const Icon(Icons.arrow_forward_rounded))
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class RowStarts extends StatelessWidget {
  const RowStarts({super.key, this.number = 0});

  final double number;

  List<Widget> listStart(double number) {
    List<Widget> icon = [];
    for (int i = 0; i < number.round(); i++) {
      icon.add(const Icon(Icons.star, color: Colors.amberAccent));
    }
    return icon;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: listStart(number),
    );
  }
}
