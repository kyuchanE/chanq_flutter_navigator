import 'package:chanq_flutter_navigator/ui/info_detail_page.dart';
import 'package:flutter/material.dart';

class MyInfoWidget extends StatelessWidget {
  const MyInfoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO chan - click list item go to detail page
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(Icons.arrow_back_ios),
        ),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => InfoDetailWidget()),
          ),
          child: Text('detal'),
        ),
      ),
    );
  }
}
