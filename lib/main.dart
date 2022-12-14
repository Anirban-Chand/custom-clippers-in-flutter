import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Custom Clippers Demo App',
    home: HomePage(),
    debugShowCheckedModeBanner: false,
  ));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Custom Clippers Demo'),
          backgroundColor: Colors.amber[800]),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ClipPath(
                  child: Container(
                      color: Colors.amber[200],
                      height: 120,
                      width: 120,
                      child: Text('Clip - 1')),
                  clipper: MyCustomClipper1(),
                ),
                ClipPath(
                  child: Container(
                      color: Colors.amber[300],
                      height: 120,
                      width: 120,
                      child: Text('Clip - 2')),
                  clipper: MyCustomClipper2(),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ClipPath(
                  child: Container(
                      color: Colors.amber[400],
                      height: 120,
                      width: 120,
                      child: Text('Clip - 3')),
                  clipper: MyCustomClipper3(),
                ),
                ClipPath(
                  child: Container(
                      color: Colors.amber[500],
                      height: 120,
                      width: 120,
                      child: Text('Clip - 4')),
                  clipper: MyCustomClipper4(),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ClipPath(
                  child: Container(
                    alignment: Alignment.topCenter,
                      color: Colors.amber[600],
                      height: 120,
                      width: 120,
                      child: Text('Clip - 5')),
                  clipper: MyCustomClipper5(),
                ),
                ClipPath(
                  child: Container(
                      color: Colors.amber[700],
                      height: 120,
                      width: 120,
                      child: Text('Clip - 6')),
                  clipper: MyCustomClipper6(),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ClipPath(
                  child: Container(
                      color: Colors.amber[800],
                      height: 120,
                      width: 120,
                      child: Text('Clip - 7')),
                  clipper: MyCustomClipper7(),
                ),
                ClipPath(
                  child: Container(
                      color: Colors.amber[900],
                      height: 120,
                      width: 120,
                      child: Text('Clip - 8')),
                  clipper: MyCustomClipper8(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// Clipper - 1
class MyCustomClipper1 extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    var path = Path();
    path.lineTo(0, 0);
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) => false;
}

// Clipper - 2
class MyCustomClipper2 extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    var path = Path();
    path.lineTo(0, 0);
    path.lineTo(size.width, 0);
    path.lineTo(0, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) => false;
}

// Clipper - 3
class MyCustomClipper3 extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    var path = Path();
    path.lineTo(0, 0);
    path.lineTo(0, size.height/2);
    path.quadraticBezierTo(size.width/2, 0, size.width, size.height/2);
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) => false;
}

// Clipper - 4
class MyCustomClipper4 extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    var path = Path();
    path.lineTo(0, 0);
    path.lineTo(0, size.height/2);
    path.quadraticBezierTo(size.width/2, size.height, size.width, size.height/2);
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) => false;
}

// Clipper - 5
class MyCustomClipper5 extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    var path = Path();
    path.lineTo(0, 0);
    path.lineTo(size.width, 0);
    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) => false;
}

// Clipper - 6
class MyCustomClipper6 extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    var path = Path();
    path.lineTo(0, 0);
    path.lineTo(0, size.height);
    path.quadraticBezierTo(size.width, size.height, size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) => false;
}

// Clipper - 7
class MyCustomClipper7 extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    var path = Path();
    path.lineTo(0, 0);
    path.lineTo(0, size.height/2);
    path.quadraticBezierTo(size.width/4, size.height/4, size.width/2, size.height/2);
    path.quadraticBezierTo(size.width*0.75, size.height*0.75, size.width, size.height/2);
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) => false;
}

// Clipper - 8
class MyCustomClipper8 extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height/2);
    path.lineTo(0, 0);
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height/2);
    path.quadraticBezierTo(size.width/2, -20, 0, size.height/2);
    path.quadraticBezierTo(size.width/2, size.height+20, size.width, size.height/2);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.lineTo(0, size.height/2);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) => false;
}
