import 'package:flutter/material.dart';

enum Answers{
  YES,
  NO
}

class Screen extends StatefulWidget {
  const Screen({super.key});

  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  String _value = '';

  void _setValue(String value) => setState(() => _value = value);

  Future _showDialog() async {
    var value = await showDialog(
      context: context,
      builder: (BuildContext context) => new AlertDialog(
        content: new Text('本当に登録しますか？'),
        actions: <Widget>[
          new SimpleDialogOption(child: new Text('登録する'),onPressed: (){Navigator.pop(context, Answers.YES);},),
          new SimpleDialogOption(child: new Text('戻る'),onPressed: (){Navigator.pop(context, Answers.NO);},),
        ],
      ),
    );
    switch(value) {
      case Answers.YES:
        _setValue('Yes');
        break;
      case Answers.NO:
        _setValue('NO');
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
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
                          'Push通知',
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
            Card.outlined(
              child: ListTile(
                    title: Text(
                      '通知登録',
                      style: TextStyle(fontSize: 13.0),
                    ),
                    trailing: Icon(Icons.keyboard_arrow_right),
                    onTap: () {
                      _showDialog();
                    },
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
