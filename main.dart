import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  String _img1 =
      "https://emrealtunbilek.com/wp-content/uploads/2016/10/apple-icon-72x72.png";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.teal, accentColor: Colors.blue),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Başlık'),
          backgroundColor: Color.fromARGB(255, 202, 17, 17),
        ),
        body: Center(
          child: Container(
            padding: EdgeInsets.all(12),
            child: Text('Şamil Nugay', style: TextStyle(fontSize: 36)),
            decoration: BoxDecoration(
              color: Colors.orange,
              shape: BoxShape.rectangle,
              border: Border.all(width: 4, color: Colors.purple),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  topRight: Radius.circular(30)),
              boxShadow: [
                BoxShadow(
                    color: Colors.yellow,
                    offset: Offset(0, -20),
                    blurRadius: 50),
                BoxShadow(
                    color: Colors.green, offset: Offset(0, 20), blurRadius: 30),
              ],
              image: DecorationImage(
                  image: NetworkImage(_img1),
                  fit: BoxFit.scaleDown,
                  repeat: ImageRepeat.repeat),
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // tıklanıldığında..
            debugPrint('Tıklandı'); // isimlendirilmemiş bir yapı
          },
          child: Icon(
            Icons.account_circle_rounded,
            color: Colors.blue,
          ),
          backgroundColor: Colors.red,
        ),
      ),
    );
  }
}
