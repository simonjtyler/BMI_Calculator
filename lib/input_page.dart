class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("BMI CALCULATOR"),
        ),
        body: Center(child: Text("Content goes here")),
    //     floatingActionButton: Container(
    //       child: Theme(
    //         data: ThemeData(
    //           accentColor: Colors.purple,
    //         ),
    //         child: FloatingActionButton(
    //           child: Icon(Icons.add),
    //           onPressed: () {},
    //         ),
    //       ),
    //     ),
    // );
  }
}