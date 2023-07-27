import 'package:flutter/material.dart';
import 'package:marvel_comics_app/presentation/utils/extensions.dart';
import 'package:marvel_comics_app/presentation/widgets/custom_padding.dart';
import 'package:marvel_comics_app/presentation/widgets/custom_row_line.dart';
import 'package:marvel_comics_app/presentation/widgets/custom_userbar.dart';
import 'package:marvel_comics_app/presentation/widgets/list_row_tile_comic.dart';
import 'package:marvel_comics_app/presentation/widgets/list_tile_comic.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        //widget personalizado de /widgets
        child: CustomPadding(
          child: Column(
            children: [
              20.h,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const UserInformation(),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.search,
                        size: 30,
                      )),
                ],
              ),
              20.h,
              RowInformation(title: 'Best selling comics',onPressed: (){},),
              20.h,
              SizedBox(
                height: 300,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    ListTileComic(
                        imageUrl: 'assets/images/spiderman.jpg',
                        titleImage: 'Spiderman '),
                    ListTileComic(
                        imageUrl: 'assets/images/venom.jpg',
                        titleImage: 'Venom'),
                    ListTileComic(
                        imageUrl: 'assets/images/ironman.jpg',
                        titleImage: 'ironman'),
                  ],
                ),
              ),
              10.h,
              RowInformation(title: 'Last Updated',onPressed: (){},),
              Expanded(
                child: ListView(
                  children: [
                    ListTileRowComic(
                      imageUrl: 'assets/images/spiderman.jpg',
                      title: 'Spiderman',
                      numberStart: 4.5,
                      date: DateTime.now(),
                      price: 15.99,
                    ),
                    ListTileRowComic(
                      imageUrl: 'assets/images/venom.jpg',
                      title: 'Venom',
                      numberStart: 4.8,
                      date: DateTime.now(),
                      price: 35.89,
                    ),
                    ListTileRowComic(
                      imageUrl: 'assets/images/ironman.jpg',
                      title: 'ironman',
                      numberStart: 2.5,
                      date: DateTime.now(),
                      price: 20.99,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
