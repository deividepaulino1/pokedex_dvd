import 'package:flutter/material.dart';

class PokeModalInfoWidget extends StatefulWidget {
  const PokeModalInfoWidget({super.key});

  @override
  State<PokeModalInfoWidget> createState() => _PokeModalInfoWidgetState();
}

class _PokeModalInfoWidgetState extends State<PokeModalInfoWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.8,
      color: Colors.red,
      child: Column(
        children: [],
      ),
    );
  }
}
