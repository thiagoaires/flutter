import 'package:flutter/material.dart';

class ButtonRowIcon extends StatelessWidget {
  final Color color;
  final String text;
  final IconData icon;

  const ButtonRowIcon({Key key, this.color = Colors.black26, this.text = "", this.icon = Icons.hot_tub}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      
      padding: const EdgeInsets.all(8.0),
      child: Container(

        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          color: color
        ),
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                flex: 1,
                
                child: Icon(icon, color: Colors.black, size: 40,)
              ),
              Expanded(
                flex: 4,
                child: Text(text, style: TextStyle(color: Colors.black, fontSize: 40, ), textAlign: TextAlign.center,)
              )
            ],
          ),
        ),
      ),
    );
  }
}
