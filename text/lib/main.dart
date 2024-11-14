import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Navigation Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: GoogleFonts.ralewayTextTheme(Theme.of(context)
            .textTheme), // Apply Raleway font to the entire textTheme
      ),
      home: FirstPage(),
    );
  }
}

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Нүүр Хуудас', style: GoogleFonts.raleway()),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => onePage()),
                );
              },
              child: Text('Хуудас 1 руу шилжих', style: GoogleFonts.raleway()),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => twoPage()),
                );
              },
              child: Text('Хуудас 2 руу шилжих', style: GoogleFonts.raleway()),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => threePage()),
                );
              },
              child: Text('Хуудас 3 руу шилжих', style: GoogleFonts.raleway()),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => fourPage()),
                );
              },
              child: Text('Хуудас 4 руу шилжих', style: GoogleFonts.raleway()),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => fivePage()),
                );
              },
              child: Text('5. Flutter-т Font болон TextTheme-ийг ашиглах',
                  style: GoogleFonts.raleway()),
            ),
          ],
        ),
      ),
    );
  }
}

class onePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Хуудас 1', style: GoogleFonts.raleway()),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Hello, World! font is raleway!',
              style: GoogleFonts.raleway(fontSize: 24, ),
            ),
            Text(
              'Roboto Mono sample',
              style: TextStyle(fontFamily: 'RobotoMono', fontSize: 24),
            ),
            SizedBox(height: 20),
            Text(
              'This is a page with Roboto Mono font!',
              style: TextStyle(fontFamily: 'RobotoMono', fontSize: 24),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child:
                  Text('Нүүр хуудас руу буцах', style: GoogleFonts.raleway()),
            ),
          ],
        ),
      ),
    );
  }
}

class twoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Хуудас 2', style: GoogleFonts.raleway()),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Нүүр хуудас руу буцах', style: GoogleFonts.raleway()),
        ),
      ),
    );
  }
}

class threePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Хуудас 3', style: GoogleFonts.raleway()),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Нүүр хуудас руу буцах', style: GoogleFonts.raleway()),
        ),
      ),
    );
  }
}

class fourPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Хуудас 4', style: GoogleFonts.raleway()),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Нүүр хуудас руу буцах', style: GoogleFonts.raleway()),
        ),
      ),
    );
  }
}

class fivePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Example 1', style: GoogleFonts.raleway()),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'This is Google Fonts',
              style: GoogleFonts.lato(),
            ),
            SizedBox(height: 20),
            Text(
              'This is Google Fonts',
              style: GoogleFonts.lato(
                textStyle: Theme.of(context).textTheme.displayLarge,
                fontSize: 48,
                fontWeight: FontWeight.w700,
                fontStyle: FontStyle.italic,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Сайн байна уу?',
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child:
                  Text('Нүүр хуудас руу буцах', style: GoogleFonts.raleway()),
            ),
          ],
        ),
      ),
    );
  }
}
