import 'package:flutter/cupertino.dart';

class Tittle extends StatefulWidget {
  final String tittle;
  final Color color;
  final double fontsize;
  final FontWeight fontWeight;
  final TextAlign textAlign;
  Tittle(
      {this.tittle = "",
      this.color,
      this.fontsize,
      this.textAlign,
      this.fontWeight});

  @override
  _TittleState createState() => _TittleState();
}

class _TittleState extends State<Tittle> {
  @override
  Widget build(BuildContext context) {
    return Text(
      widget.tittle,
      textAlign: widget.textAlign,
      style: TextStyle(
          color: widget.color,
          fontSize: widget.fontsize,
          fontWeight: widget.fontWeight),
    );
  }
}
