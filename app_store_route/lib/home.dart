import 'package:app_store_route/app_store_card.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: ListView(
            children: [
              FractionallySizedBox(
                widthFactor: 0.85,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '3月6日 土曜日',
                      style: theme.textTheme.subtitle2!.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Colors.black.withOpacity(0.35),
                      ),
                    ),
                    Text(
                      'Today',
                      style: theme.textTheme.headline4!.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 12),
              AppStoreCard(),
              SizedBox(height: 56),
              AppStoreCard(),
              SizedBox(height: 56),
              AppStoreCard(),
            ],
          ),
        ),
      ),
    );
  }
}
