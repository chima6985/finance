import 'package:flutter/material.dart';

class DecoratedContainer extends StatefulWidget {
  const DecoratedContainer({
    super.key,
    this.enablePadding = false,
    required this.child,
    this.isAnimate = false,
    // this.canPop =true,
  });

  final child;
  final bool enablePadding;
  final bool isAnimate;
  // final bool canPop;
  @override
  State<DecoratedContainer> createState() => _DecoratedContainerState();
}

class _DecoratedContainerState extends State<DecoratedContainer> {
  @override
  Widget build(BuildContext context) {
    final mqr = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: mqr.width,
        height: mqr.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/jpegs/dec_container.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: widget.child,
      ),
    );
  }
}
