import 'package:flutter/material.dart';

class AppStoreCard extends StatelessWidget {
  const AppStoreCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      children: [
        AspectRatio(
          aspectRatio: 400 / 300,
          child: ClipRect(
            child: Image.asset(
              'images/image_3.jpg',
              fit: BoxFit.fitWidth,
            ),
          ),
        ),
        Container(
          color: Colors.white,
          height: 80,
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                AspectRatio(
                  aspectRatio: 1,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(
                      'images/image_3.jpg',
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ),
                SizedBox(width: 16),
                FittedBox(
                  fit: BoxFit.fitHeight,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Developer',
                        style: theme.textTheme.subtitle2!.copyWith(
                          fontWeight: FontWeight.bold,
                          color: Colors.black.withOpacity(0.5),
                        ),
                      ),
                      Text(
                        'App',
                        style: theme.textTheme.subtitle2!.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Describe about App',
                        style: theme.textTheme.subtitle2!.copyWith(
                          fontWeight: FontWeight.bold,
                          color: Colors.black.withOpacity(0.35),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
