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
  final _areaKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      key: _areaKey,
      onTap: () {
        Navigator.of(context).push(
          _AppOpenContainerRoute(
            containerKey: _containerKey,
            areaKey: _areaKey,
          ),
        );
      },
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
                key: _containerKey,
                size: size,
                child: FittedBox(
                  fit: BoxFit.fitWidth,
                  child: StaticCard(
                    radius: 16,
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

class _AppOpenContainerRoute<T> extends ModalRoute<T> {
  _AppOpenContainerRoute({
    required this.containerKey,
    required this.areaKey,
  });

  final GlobalKey containerKey;
  final GlobalKey areaKey;

  @override
  bool get maintainState => true;

  @override
  Color? get barrierColor => null;

  @override
  bool get opaque => true;

  @override
  bool get barrierDismissible => true;

  @override
  String? get barrierLabel => null;

  @override
  Duration get transitionDuration => const Duration(milliseconds: 300);

  @override
  Duration get reverseTransitionDuration => const Duration(milliseconds: 250);

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
    final navigator = _navigator(context);
    final containerRect = _rectForKey(
      containerKey,
      navigator!,
    );
    print(containerRect.topLeft);
    final areaRect = _rectForKey(
      areaKey,
      navigator,
    );
    print(areaRect.topLeft);
    final pageRect = Offset.zero & navigator.size;
    print(pageRect.topLeft);

    return Align(
      alignment: Alignment.topLeft,
      child: AnimatedBuilder(
        animation: animation,
        builder: (context, _) {
          Curve _preferredCurve() {
            switch (animation.status) {
              case AnimationStatus.dismissed:
              case AnimationStatus.completed:
              case AnimationStatus.forward:
                return Curves.easeOut;
              case AnimationStatus.reverse:
                return Curves.easeIn;
            }
          }

          Tween<Offset> _preferredOffsetTween() {
            switch (animation.status) {
              case AnimationStatus.dismissed:
              case AnimationStatus.completed:
              case AnimationStatus.forward:
                return Tween<Offset>(
                  begin: containerRect.topLeft,
                  end: pageRect.topLeft,
                );
              case AnimationStatus.reverse:
                return Tween<Offset>(
                  begin: areaRect.topLeft,
                  end: pageRect.topLeft,
                );
            }
          }

          Tween<Size> _preferredSizeTween() {
            switch (animation.status) {
              case AnimationStatus.dismissed:
              case AnimationStatus.completed:
              case AnimationStatus.forward:
                return Tween<Size>(
                  begin: containerRect.size,
                  end: pageRect.size,
                );
              case AnimationStatus.reverse:
                return Tween<Size>(
                  begin: areaRect.size,
                  end: pageRect.size,
                );
            }
          }

          final curve = CurvedAnimation(
            parent: animation,
            curve: _preferredCurve(),
          );
          final offset = _preferredOffsetTween().transform(curve.value);
          final size = _preferredSizeTween().transform(curve.value);
          return Scaffold(
            backgroundColor: Colors.white,
            body: Stack(
              children: [
                Positioned(
                  top: offset.dy,
                  left: offset.dx,
                  child: StaticCard(
                    radius: 16 - curve.value * 16,
                    isPage: true,
                    size: size,
                  ),
                ),
                SafeArea(
                  child: Opacity(
                    opacity: 1,
                    child: Align(
                      alignment: Alignment.topRight,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.of(context).pop();
                          },
                          child: Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.9),
                              borderRadius: BorderRadius.circular(100),
                            ),
                            child: Icon(
                              Icons.close,
                              color: Colors.grey,
                              size: 20,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
