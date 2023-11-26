import 'package:chanq_flutter_navigator/ui/home_page.dart';
import 'package:flutter/material.dart';

class InfoDetailWidget extends StatelessWidget {
  const InfoDetailWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('detail'),
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(Icons.arrow_back_ios),
        ),
        actions: [
          IconButton(
            onPressed: () =>
                //     Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => HomeWidget()),
                // ),
                Navigator.popUntil(
              context,
              (route) => route.isFirst,
            ),
            icon: Icon(Icons.home),
          ),
        ],
      ),
      body: Container(),
    );
  }
}
