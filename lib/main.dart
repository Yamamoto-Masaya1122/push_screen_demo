import 'package:flutter/material.dart';
import 'screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the rootの your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: false,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'タイトル',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(width: 4.0),
            Text(
              '®',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
              ),
            )
          ],
        ),
        backgroundColor: Colors.white,
        elevation: 1.0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(height: 24),
            Container(
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 28,
                      padding: const EdgeInsets.only(left: 8.0),
                      decoration: BoxDecoration(
                        border: const Border(
                          left: BorderSide(
                            color: Color(0xFF3C4755),
                            width: 6,
                          ),
                        ),
                      ),
                      child: const Text(
                        'プッシュ通知',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF3C4755),
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ),
            SizedBox(height: 24),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: Colors.black87,
                  width: 0.1,
                ),
                borderRadius: BorderRadius.circular(4.0),
              ),
              child: ListTile(
                title: Text(
                  '通知登録',
                  style: TextStyle(fontSize: 13.0),
                ),
                trailing: Opacity(
                  opacity: 0.9,
                  child: ElevatedButton(
                    onPressed: () {
                    },
                    child: Text(
                      '登録',
                      style: TextStyle(color: Colors.white),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromRGBO(79, 132, 231, 1),
                      elevation: 1.0,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 24),
            Container(
              width: double.infinity,
              child:
              Opacity(
                opacity: 0.9,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Screen()),
                    );
                  },
                  child: Text(
                    '戻る',
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromRGBO(158, 158, 158, 1),
                    elevation: 1.0,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}



