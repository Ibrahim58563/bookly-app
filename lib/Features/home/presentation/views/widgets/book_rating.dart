import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/styles.dart';

class BookRating extends StatelessWidget {
  const BookRating(
      {super.key, this.mainAxisAlignment = MainAxisAlignment.start});
  final MainAxisAlignment mainAxisAlignment;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          color: Color(0xffFFDD4F),
          size: 16,
        ),
        const SizedBox(
          width: 8,
        ),
        const Text(
          '4.9',
          style: Styles.textStyle16,
        ),
        const SizedBox(
          width: 6,
        ),
        Opacity(
          opacity: 0.5,
          child: Text(
            '(543)',
            style: Styles.textStyle14.copyWith(),
          ),
        ),
      ],
    );
  }
}
