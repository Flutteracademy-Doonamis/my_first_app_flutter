import 'package:flutter/material.dart';
import 'package:my_first_app_flutter/ui/screens/home_page.dart';

class Page2 extends StatefulWidget {
  int counter;
  Page2({
    Key? key,
    required this.counter,
  }) : super(key: key);

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {
        setState(() {
          widget.counter++;
          print(counter);
        });
      }),
      appBar: AppBar(
        automaticallyImplyLeading: true,
      ),
      body: Center(
        child: Column(
          children: [
            Text("Pagina 2"),
            Text("${widget.counter}"),
          ],
        ),
      ),
    );
  }
}
