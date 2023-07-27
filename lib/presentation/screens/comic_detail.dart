import 'package:flutter/material.dart';
import 'package:marvel_comics_app/presentation/screens/home_page.dart';
import 'package:marvel_comics_app/presentation/utils/extensions.dart';
import 'package:marvel_comics_app/presentation/widgets/custom_padding.dart';
import 'package:marvel_comics_app/presentation/widgets/list_row_tile_comic.dart';
import 'package:marvel_comics_app/presentation/widgets/list_tile_comic.dart';
import 'package:marvel_comics_app/presentation/widgets/shop_icon.dart';

class ComicDetail extends StatelessWidget {
  const ComicDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => const HomePage()));
            },
            icon: const Icon(
              Icons.arrow_back_ios_new_rounded,
              size: 30,
            )),
        elevation: 0,
        actions: const [
          Padding(
            padding: EdgeInsets.only(
              right: 10,
            ),
            child: ShopIcon(
              numberFavorite: 11,
            ),
          )
        ],
      ),
      body: SafeArea(
          child: CustomPadding(
              child: Column(
        children: [
          50.h,
          const Center(
              child: Column(
            children: [
              ListTileComic(
                  imageUrl: 'assets/images/spiderman.jpg', titleImage: ''),
              Text(
                'Spider-Ham (2019) #1',
                style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '5.0',
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 8.0,
                  ),
                  RowStarts(
                    number: 5,
                  ),
                ],
              ),
            ],
          )),
          20.h,
          RichText(
            text: TextSpan(
              children: [
                const TextSpan(
                  style: TextStyle(fontSize: 19.0),
                  text:
                      'Commodo dolor quis culpa dolor sint irure cupidatat anim incididunt anim incididunt cillum sunt nisi. Culpa laborum occaecat nisi reprehenderit commodo non do deserunt quis. Ipsum fugiat fugiat deserunt ea. Eiusmod eiusmod commodo aute aliqua anim ipsum sit sunt eiusmod occaecat. Ex qui occaecat elit sunt. Voluptate irure irure elit laborum occaecat ex adipisicing exercitation qui aliqua amet. Eu consequat veniam voluptate cillum culpa esse eu cillum anim.Consequat proident est dolore sint et sint ut tempor nulla ea commodo incididunt mollit id. Aliqua cupidatat ipsum non eu dolore sit qui irure ea in sint nulla. Aliqua cupidatat ipsum non eu dolore sit qui irure ea in sint nulla.',
                ),
                TextSpan(
                  text: 'See variant covers',
                  style: const TextStyle(
                      fontSize: 18.5,
                      fontWeight: FontWeight.w500,
                      color: Colors.indigo),
                ),
                const WidgetSpan(
                    child: Wrap(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Icon(Icons.arrow_forward, size: 20.0, color: Colors.indigo)
                  ],
                ))
              ],
              style: const TextStyle(
                color: Colors.grey,
                fontSize: 15.0,
                wordSpacing: 10.0,
              ),
            ),
          ),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  'Cancel',
                  style: TextStyle(color: Colors.red, fontSize: 20.0),
                ),
                style: ButtonStyle(elevation: MaterialStateProperty.all(0)),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15.0, vertical: 10),
                      child: Text(
                        'Buy Full Version',
                        style: TextStyle(fontSize: 18.0, color: Colors.white),
                      ),
                    ),
                    20.w,
                    Icon(Icons.shopping_bag_outlined, color: Colors.white)
                  ],
                ),
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.red),
                    shadowColor: MaterialStateProperty.all(Colors.redAccent),
                    elevation: MaterialStateProperty.all(7)),
              )
            ],
          ),
          30.h
        ],
      ))),
    );
  }
}
