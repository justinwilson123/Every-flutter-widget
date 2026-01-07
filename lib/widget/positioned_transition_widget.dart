import 'package:flutter/material.dart';

class PositionedTransitionWidget extends StatefulWidget {
  const PositionedTransitionWidget({super.key});

  @override
  State<PositionedTransitionWidget> createState() =>
      _PositionedTransitionWidgetState();
}

class _PositionedTransitionWidgetState extends State<PositionedTransitionWidget>
    with SingleTickerProviderStateMixin {
  late final AnimationController controller = AnimationController(
    vsync: this,
    duration: Duration(seconds: 2),
  )..repeat(reverse: true);
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    const double smallLogo = 100;
    const double biglogo = 200;
    return Scaffold(
      body: SafeArea(
        child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            final Size biggest = constraints.biggest;
            return Stack(
              children: [
                PositionedTransition(
                  rect:
                      RelativeRectTween(
                        begin: RelativeRect.fromSize(
                          Rect.fromLTWH(
                            biggest.width / 2 - smallLogo / 2,
                            0,
                            smallLogo,
                            smallLogo,
                          ),
                          biggest,
                        ),
                        end: RelativeRect.fromSize(
                          Rect.fromLTWH(
                            biggest.width / 2 - biglogo / 2,
                            biggest.height,
                            biglogo,
                            biglogo,
                          ),
                          biggest,
                        ),
                      ).animate(
                        CurvedAnimation(
                          parent: controller,
                          curve: Curves.slowMiddle,
                        ),
                      ),
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.orange,
                      ),
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
