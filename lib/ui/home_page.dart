import 'package:chanq_flutter_navigator/ui/my_info_page.dart';
import 'package:flutter/material.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 250,
              height: 250,
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://img1.daumcdn.net/thumb/R800x0/?scode=mtistory2&fname=https%3A%2F%2Ftistory1.daumcdn.net%2Ftistory%2F4401652%2Fattach%2F6e39dfcfae364245b9a73dc552e6c9eb'),
              ),
            ),
            ElevatedButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyInfoWidget()),
              ),
              child: Text('Go Info Page'),
            ),
            ElevatedButton(
              onPressed: () {
                if (Navigator.canPop(context)) {
                  Navigator.pop(context);
                } else {
                  print('HomeWidge >> cant pop!!!');
                }
              },
              child: Text('POP'),
            ),
          ],
        ),
      ),
    );
  }
}
