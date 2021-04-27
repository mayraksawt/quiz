import "package:flutter/material.dart";

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Siriluck Raksawat',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(title: 'LAB QUIZ'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LAB QUIZ'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'ระบบลงทะเบียนเรีย มอ.',
              style: TextStyle(fontSize: 20),
            ),
            Text(
              'กรุณากรอก บัญชีผู้ใช้ และ หรัสผ่าน',
              style: TextStyle(fontSize: 15),
            ),
            Text(
              '(สำหรับผู้ใช้ใหม่งานกรุณาลงทะเบียน)',
              style: TextStyle(fontSize: 13),
            ),
            TextField(
              controller: email,
              decoration: InputDecoration(hintText: 'username (email address)'),
            ),
            TextField(
              controller: password,
              obscureText: true,
              decoration: InputDecoration(hintText: 'password'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () {
                      print('email : ${email.text.trim()}');
                      print('password : ${password.text.trim()}');
                    },
                    child: Text('Login')),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Register(),
                          ));
                    },
                    child: Text('Register')),
                ElevatedButton(
                    onPressed: () async {
                      final datetime = await showTimePicker(
                          context: context,
                          initialTime: TimeOfDay(hour: 17, minute: 30));
                      print(datetime);
                    },
                    child: Text('Show Current DateTime')),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class Register extends StatelessWidget {
  const Register({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Register'),
      ),
      body: Container(),
    );
  }
}
