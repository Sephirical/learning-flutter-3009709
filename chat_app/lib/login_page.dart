import "package:flutter/material.dart";

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('Button clicked');
        },
      ),
      body: Column(
        children: [
          Text(
            'Let\'s sign you in!',
            style: TextStyle(
              fontSize: 30,
              color: Colors.brown,
              fontWeight: FontWeight.bold,
              letterSpacing: 0.5,
            )
          ),
          Text(
            "Welcome back! \n You've been missed!",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Colors.blueGrey,
            )
          ),
          Image.network("https://images.genius.com/a3c775785c08bb746278232194792f6d.750x750x1.jpg", height: 200),
          Container(
            height: 150,
            width: 150,
            // child: FlutterLogo(),
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(50),
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fitHeight,
                image: NetworkImage(
                  "https://images.genius.com/a3c775785c08bb746278232194792f6d.750x750x1.jpg"
                )
              ),
              borderRadius: BorderRadius.circular(24),
              color: Colors.blue,
            ),
          )
        ],
      )
    );
  }
}