import 'package:flutter/material.dart';

class AppStoreCard extends StatefulWidget {
  const AppStoreCard({Key? key}) : super(key: key);

  static const size = Size(360, 434);

  @override
  _AppStoreCardState createState() => _AppStoreCardState();
}

class _AppStoreCardState extends State<AppStoreCard> {
  bool _pressing = false;

  Size get preferredSize =>
      !_pressing ? AppStoreCard.size : AppStoreCard.size * 0.97;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return GestureDetector(
      onTapDown: (_) {
        setState(() {
          _pressing = true;
        });
      },
      onTapUp: (_) {
        setState(() {
          _pressing = false;
        });
      },
      onTapCancel: () {
        setState(() {
          _pressing = false;
        });
      },
      child: TweenAnimationBuilder<Size>(
        tween: Tween<Size>(
          begin: AppStoreCard.size,
          end: preferredSize,
        ),
        curve: Curves.easeOut,
        duration: Duration(milliseconds: 260),
        builder: (_, size, __) {
          return SizedBox.fromSize(
            size: AppStoreCard.size,
            child: Center(
              child: SizedBox.fromSize(
                size: size,
                child: FittedBox(
                  fit: BoxFit.fitWidth,
                  child: SizedBox.fromSize(
                    size: AppStoreCard.size,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.3),
                            blurRadius: 20,
                            spreadRadius: 0,
                          ),
                        ],
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(16),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            AspectRatio(
                              aspectRatio: 400 / 360,
                              child: ClipRect(
                                child: Image.asset(
                                  'images/image_3.jpg',
                                  fit: BoxFit.fitWidth,
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                color: Colors.white,
                                child: Padding(
                                  padding: const EdgeInsets.all(16),
                                  child: Row(
                                    children: [
                                      AspectRatio(
                                        aspectRatio: 1,
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(8),
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
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Developer',
                                              style: theme.textTheme.subtitle2!
                                                  .copyWith(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black
                                                    .withOpacity(0.5),
                                              ),
                                            ),
                                            Text(
                                              'App',
                                              style: theme.textTheme.subtitle2!
                                                  .copyWith(
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            Text(
                                              'Describe about App',
                                              style: theme.textTheme.subtitle2!
                                                  .copyWith(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black
                                                    .withOpacity(0.35),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
