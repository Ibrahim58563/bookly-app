import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import 'book_rating.dart';
import 'custom_book_image.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.23),
          child:  CustomBookImage(imageUrl: 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.pexels.com%2Fsearch%2Fchild%2F&psig=AOvVaw2tcgjbQQ-LiYTQ-RNoheAA&ust=1678705773940000&source=images&cd=vfe&ved=0CBAQjRxqFwoTCOisqr2g1v0CFQAAAAAdAAAAABAD',),
        ),
        const SizedBox(
          height: 30,
        ),
        Text(
          'The Jungle Book',
          style: Styles.textStyle30.copyWith(fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 6,
        ),
        Text(
          'Rudyard Kipling',
          style: Styles.textStyle18.copyWith(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
              color: Colors.white.withOpacity(0.7)),
        ),
        const SizedBox(
          height: 14,
        ),
        const BookRating(
          mainAxisAlignment: MainAxisAlignment.center,
        ),
      ],
    );
  }
}
