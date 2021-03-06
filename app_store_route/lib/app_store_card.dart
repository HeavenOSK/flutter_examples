import 'package:app_store_route/static_card.dart';
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
  final _containerKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (_) {
        setState(() {
          _pressing = true;
        });
      },
      onTapUp: (_) async {
        setState(() {
          _pressing = false;
        });
        await Future.delayed(Duration(milliseconds: 260));
        Navigator.of(context).push(
          _AppOpenContainerRoute(
            containerKey: _containerKey,
          ),
        );
      },
      onTapCancel: () {
        setState(() {
          _pressing = false;
        });
      },
      child: SizedBox.fromSize(
        size: AppStoreCard.size,
        child: TweenAnimationBuilder<Size>(
          tween: Tween<Size>(
            begin: AppStoreCard.size,
            end: preferredSize,
          ),
          curve: Curves.easeOut,
          duration: Duration(milliseconds: 260),
          builder: (_, size, __) {
            return Center(
              child: SizedBox.fromSize(
                key: _containerKey,
                size: size,
                child: FittedBox(
                  fit: BoxFit.fitWidth,
                  child: StaticCard(),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class _AppOpenContainerRoute<T> extends ModalRoute<T> {
  _AppOpenContainerRoute({
    required this.containerKey,
  });

  final GlobalKey containerKey;

  @override
  bool get maintainState => true;

  @override
  Color? get barrierColor => null;

  @override
  bool get opaque => true;

  @override
  bool get barrierDismissible => false;

  @override
  String? get barrierLabel => null;

  @override
  Duration get transitionDuration => const Duration(milliseconds: 260);

  @override
  Duration get reverseTransitionDuration => const Duration(milliseconds: 200);

  RenderBox? _navigator(BuildContext context) {
    return Navigator.of(context).context.findRenderObject() as RenderBox?;
  }

  Rect _rectForKey(GlobalKey key, RenderBox rootRenderBox) {
    final render = key.currentContext!.findRenderObject() as RenderBox?;
    return MatrixUtils.transformRect(
      render!.getTransformTo(rootRenderBox),
      Offset.zero & render.size,
    );
  }

  @override
  Widget buildPage(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
  ) {
    final topPadding = MediaQuery.of(context).padding.top;
    final diffOffset = Offset(0, topPadding);
    final navigator = _navigator(context);
    final containerRect = _rectForKey(
      containerKey,
      navigator!,
    );

    final pageRect = Offset.zero & navigator.size;
    final offsetTween = Tween<Offset>(
      begin: containerRect.topLeft - diffOffset,
      end: pageRect.topLeft,
    );
    final sizeTween = Tween<Size>(
      begin: containerRect.size,
      end: pageRect.size,
    );
    return Align(
      alignment: Alignment.topLeft,
      child: AnimatedBuilder(
        animation: animation,
        builder: (context, _) {
          final curve = CurvedAnimation(
            parent: animation,
            curve: Curves.easeOut,
          );
          final offset = offsetTween.transform(curve.value);
          final size = sizeTween.transform(curve.value);

          /// Padding の代わりに Stack を使う。
          /// offset がマイナスに振れた時のケア
          return Stack(
            children: [
              Positioned(
                top: offset.dy,
                left: offset.dx,
                child: StaticCard(
                  size: size,
                  animationValue: curve.value,
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
