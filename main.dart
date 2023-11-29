import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginScreen(),
    );
  }
}

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Colors.blueAccent
        ),
        title: Text('Login Page',
            style: TextStyle(color: Colors.white )),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.network(
              'https://storage.googleapis.com/cms-storage-bucket/70760bf1e88b184bb1bc.png', // varsayılan bir resim dosyasının yolunu belirtin
              height: 150,
              width: 150,
            ),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 12),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            ButtonBar(
              alignment: MainAxisAlignment.center,
              children: [
                TextButton(
                    onPressed: (){
                    },
                    child: Text('forgot password',
                      style: TextStyle(color: Colors.blueAccent),
                    )),
              ],
            ),
            ElevatedButton(
              onPressed: () {
                // Burada giriş butonuna basıldığında yapılacak işlemleri ekleyebilirsiniz.
              },

              style: ElevatedButton.styleFrom(
                elevation: 2.0,
                primary: Colors.blue,
              ),
              child: Text('Login',
                style: TextStyle(fontSize: 25,
                  color:Colors.white,),),
            ),
            ButtonBar(
              alignment: MainAxisAlignment.center,
              children: [

                TextButton(onPressed: (){
                },
                    child:Text('New User?Create Account',
                      style: TextStyle(color: Colors.black),))
              ],
            )
          ],
        ),
      ),
    );
  }
}