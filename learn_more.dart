

import 'package:flutter/material.dart';

class LearnMore extends StatefulWidget {
  const LearnMore({Key? key}) : super(key: key);

  @override
  State<LearnMore> createState() => _LearnMoreState();
}

class _LearnMoreState extends State<LearnMore> {

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      backgroundColor: Colors.white24,
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text('Learn More'),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            const Spacer(),
            SizedBox(
              height: 400,
              child: PageView(
                children: [
                Card(
                    child: Column(
                      children: [
                         const Flexible(
                           flex: 3,
                           child: Padding(
                             padding: EdgeInsets.all(16),
                             child: Text('Around 27,000 trees are cut down each day just to produce toilet paper',
                          style: TextStyle(
                            fontSize: 30
                          )),
                           ),
                         ),
                        Flexible(child: Image.asset('assets/toilet_paper.gif'),
                        flex: 2,)],
                    ),
                   ),
                  Card(
                      child: Column(
                        children: [
                          const Flexible(
                            flex: 3,
                            child: Padding(
                                padding: EdgeInsets.all(16),
                                child: Text('Beef is one of the biggest causes of deforestation',
                                    style: TextStyle(
                                        fontSize: 30
                                    ))
                            ),
                          ),
                          Flexible(child: Image.asset('assets/cow.gif'),
                          flex: 2,)],
                      )
                  ),
                  Card(
                    child: Column(
                      children: [
                        const Flexible(
                          flex: 3,
                          child: Padding(
                            padding: EdgeInsets.all(16),
                            child: Text('Recycling one aluminum can could save enough energy to run a TV for three hours.',
                                style: TextStyle(
                                    fontSize: 30
                                )),
                          ),
                        ),
                        Flexible(child: Image.asset('assets/tv.gif'),
                          flex: 2,)],
                    ),
                  ),
                  Card(
                      child: Column(
                        children: [
                          const Flexible(
                            flex: 3,
                            child: Padding(
                                padding: EdgeInsets.all(16),
                                child: Text('Automatic dishwashers use about 6 gallons '
                                    'of hot water per cycle (over 2,000 gallons per year),'
                                    ' which is actually less than the water required to do dishes by hand',
                                    style: TextStyle(
                                        fontSize: 25
                                    ))
                            ),
                          ),
                          Flexible(child: Image.asset('assets/dishes.gif'),
                            flex: 2,)],
                      )
                  ),
                ], ),
            ),
            const Spacer()
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}