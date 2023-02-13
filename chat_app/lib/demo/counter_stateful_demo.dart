import "package:flutter/material.dart";
//TODO: Recreate the counter app

class CounterStateful extends StatefulWidget {
  const CounterStateful({Key? key}) : super(key: key);

  @override
  State<CounterStateful> createState() {
    State<CounterStateful> stateClassAssociatedWithWidget = _CounterStatefulState();
    return stateClassAssociatedWithWidget;
  }
}

class _CounterStatefulState extends State<CounterStateful> {
  int counter = 0;
  void increment() {
    setState(() {
      counter++;
    });
    print(counter);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          increment();
        },
      ),
      body: Center(child: Text('$counter', style: TextStyle(fontSize: 30))),
    );
  }
}
