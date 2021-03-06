import 'package:app_store_route/app_store_card.dart';
import 'package:flutter/material.dart';

class StaticCard extends StatelessWidget {
  const StaticCard({
    required this.radius,
    this.isPage = false,
    this.size,
    Key? key,
  }) : super(key: key);

  final double radius;
  final bool isPage;
  final Size? size;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    if (!isPage) {
      return _headingContainer(theme);
    }
    final _size = size;
    if (_size == null) {
      return SizedBox.shrink();
    }

    final ratio = _size.width / AppStoreCard.size.width;
    final preferredCardSize = AppStoreCard.size * ratio;
    return SizedBox.fromSize(
      size: _size,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(radius),
        child: Scaffold(
          body: ListView(
            children: [
              SizedBox.fromSize(
                size: preferredCardSize,
                child: FittedBox(
                  child: _headingContainer(theme),
                ),
              ),
              SizedBox(height: 32),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                ),
                child: Text(
                  'なんかめちゃくちゃむずいんやけど',
                  style: theme.textTheme.bodyText2!.copyWith(
                    color: Colors.black.withOpacity(0.8),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  SizedBox _headingContainer(ThemeData theme) {
    return SizedBox.fromSize(
      size: AppStoreCard.size,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius),
          border: Border.all(
            width: 0,
            color: Colors.black.withOpacity(isPage ? 1 : 0),
          ),
          boxShadow: [
            if (!isPage)
              BoxShadow(
                color: Colors.black.withOpacity(0.3),
                blurRadius: 20,
                spreadRadius: 0,
              ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(radius),
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
