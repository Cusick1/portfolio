import 'package:flutter/material.dart';

//TODO: Most likely need to change this back to stateful, but wait until we need to make stateful changes.
class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    //TODO: research if scaffold is most comomonly used or do people create their own custom scaffolds.
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Ryan Cusick'),
      ),
      //TODO: We could consider making the child be one of 3 different page widgets and set state if one of the bottom buttons is pressed to change the content.
      //TODO: If we don't want to use set state, then we could tyr to set up a listener and listen to a variable and adjust screens based on that.
      body: Center(
        child: Column(
          // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
          // action in the IDE, or press "p" in the console), to see the
          // wireframe for each widget.
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('You have pushed the button this many times:'),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.teal[400],
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              color: Colors.black,
              icon: const Icon(Icons.home_rounded),
              onPressed: () {
                // Handle home button press
              },
            ),
            IconButton(
              color: Colors.black,
              icon: const Icon(Icons.remember_me_rounded),
              onPressed: () {
                // Handle resume button press
              },
            ),
            IconButton(
              color: Colors.black,
              icon: const Icon(Icons.now_wallpaper_rounded),
              onPressed: () {
                // Handle projects button press
              },
            ),
          ],
        ),
      ),
    );
  }
}
