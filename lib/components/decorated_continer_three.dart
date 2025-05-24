import 'package:flutter/material.dart';

class DecoratedContinerThree extends StatefulWidget {
  const DecoratedContinerThree({
    super.key,
    this.enablePadding = false,
    required this.child,
    this.isAnimate = false,
    required this.resize,
  });

  final child;
  final bool enablePadding;
  final bool isAnimate;
  final bool resize;

  @override
  State<DecoratedContinerThree> createState() => _DecoratedContinerThreeState();
}

class _DecoratedContinerThreeState extends State<DecoratedContinerThree> {
  @override
  Widget build(BuildContext context) {
    final mqr = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        resizeToAvoidBottomInset: widget.resize,
        body: ConstrainedBox(
          constraints: BoxConstraints(
            minHeight: MediaQuery.of(context).size.height,
          ),
          child: Container(
            width: mqr.width,
            height: mqr.height,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/images/jpegs/dec_container_three.png',
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: widget.child,
          ),
        ),
      ),
    );
  }
}
