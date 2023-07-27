import 'package:flutter/material.dart';
import 'package:marvel_comics_app/presentation/screens/comic_detail.dart';

class ListTileComic extends StatelessWidget {
  const ListTileComic({
    super.key,
    required this.imageUrl,
    required this.titleImage,
  });

  final String imageUrl;
  final String titleImage;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const ComicDetail(),
          )),
      child: SizedBox(
        width: 175,
        child: ListTile(
          minVerticalPadding: 0.0,
          contentPadding: const EdgeInsets.symmetric(horizontal: 5.5),
          title: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                imageUrl,
              )),
          subtitle: Padding(
            padding: EdgeInsets.only(top: titleImage.isEmpty ? 0.0 : 10.0),
            child: Text(
              titleImage.toUpperCase(),
              style:
                  const TextStyle(fontWeight: FontWeight.w500, fontSize: 18.0),
            ),
          ),
        ),
      ),
    );
  }
}
