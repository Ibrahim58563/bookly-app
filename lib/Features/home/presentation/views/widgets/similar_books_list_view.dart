import 'package:flutter/material.dart';

import 'custom_book_image.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.18,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.0),
              child: CustomBookImage(
                imageUrl:
                    'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.pexels.com%2Fsearch%2Fchild%2F&psig=AOvVaw2tcgjbQQ-LiYTQ-RNoheAA&ust=1678705773940000&source=images&cd=vfe&ved=0CBAQjRxqFwoTCOisqr2g1v0CFQAAAAAdAAAAABAD',
              ),
            );
          }),
    );
  }
}
