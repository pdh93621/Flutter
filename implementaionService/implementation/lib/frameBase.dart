import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Page1(),
    ),
  );
}

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        //컨테이너로 감싼다.
        decoration: BoxDecoration(
            //decoration 을 준다.
            image: DecorationImage(
                image: AssetImage("assets/bg.jpg"), fit: BoxFit.contain)),
        child: Center(
          child: IconButton(
              padding: EdgeInsets.all(0),
              icon: Icon(
                Icons.ac_unit_rounded,
                color: Colors.blue[100],
                size: 0,
              ),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Page2()));
              }),
        ),
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        //컨테이너로 감싼다.
        decoration: BoxDecoration(
            //decoration 을 준다.
            image: DecorationImage(
                image: AssetImage("assets/bg.jpg"), fit: BoxFit.contain)),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              //Go to Page3 - information
              IconButton(
                  padding: EdgeInsets.all(0),
                  icon: Icon(
                    Icons.ac_unit_rounded,
                    color: Colors.pink[900],
                    size: 50,
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Page3()));
                  }),
              //Take a photo
              IconButton(
                  padding: EdgeInsets.all(0),
                  icon: Icon(
                    Icons.camera_alt_outlined,
                    color: Colors.pink[900],
                    size: 50,
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Page4()));
                  }),
              //Undefined
              IconButton(
                  padding: EdgeInsets.all(0),
                  icon: Icon(
                    Icons.camera_alt_outlined,
                    color: Colors.pink[900],
                    size: 50,
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Page2()));
                  }),
              //Undefined
              IconButton(
                  padding: EdgeInsets.all(0),
                  icon: Icon(
                    Icons.camera_alt_outlined,
                    color: Colors.pink[900],
                    size: 50,
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Page2()));
                  }),
            ],
          ),
        ),
      ),
    );
  }
}

class Page3 extends StatelessWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Info")),
        body: Container(
          //컨테이너로 감싼다.
          decoration: BoxDecoration(
              //decoration 을 준다.
              image: DecorationImage(
                  image: AssetImage("assets/bg3.jpg"), fit: BoxFit.contain)),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(32.0),
              child: Text(
                "test",
                style: TextStyle(fontSize: 30, color: Colors.red[900]),
              ),
            ),
          ),
        ));
  }
}

class Page4 extends StatelessWidget {
  const Page4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Camera Page")),
        body: Container(
          //컨테이너로 감싼다.
          decoration: BoxDecoration(
              //decoration 을 준다.
              image: DecorationImage(
                  image: AssetImage("assets/loading.jpeg"),
                  fit: BoxFit.contain)),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "camera",
                  style: TextStyle(fontSize: 30, color: Colors.red[900]),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                        padding: EdgeInsets.all(0),
                        icon: Icon(
                          Icons.play_arrow_outlined,
                          color: Colors.pink[900],
                          size: 50,
                        ),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Page2()));
                        }),
                    IconButton(
                        padding: EdgeInsets.all(0),
                        icon: Icon(
                          Icons.stop_circle_outlined,
                          color: Colors.pink[900],
                          size: 50,
                        ),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Page2()));
                        }),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
