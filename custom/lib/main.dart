import 'package:flutter/material.dart';

// background color тодорхойлох
final Color darkBlue = Color.fromARGB(255, 109, 140, 174);

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  // Контейнеруудын анхны хэмжээний утгууд
  double outerWidth = 300;
  double outerHeight = 400;
  double innerWidth = 200;
  double innerHeight = 200;

  // Төлөвийг солихын тулд өргөтгөсөн эсэхийг шалгах флаг
  bool isExpanded = false;

  // дүрсийн анимейшн
  late AnimationController _loadingController;

  @override
  void initState() {
    super.initState();
    _loadingController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    )..repeat(); // Анимейшн дахин дахин давтагдана
  }

  @override
  void dispose() {//чөлөөлөх, цэвэрлэх  Ингэснээр санах ойн хэрэглээг хэмнэж, аппликейшний ажиллагааг сайжруулдаг.
    _loadingController.dispose();
    super.dispose();
  }

  // Контейнеруудын хэмжээ болон төлөвийг солих функц
  void _animateContainers() {
    setState(() {
      // Төлөвийг солих
      isExpanded = !isExpanded;

      // Контейнеруудын хэмжээг  өөрчлөглөх
      outerWidth = isExpanded ? 430 : 300;
      outerHeight = isExpanded ? 500 : 400;
      innerWidth = isExpanded ? 300 : 200;
      innerHeight = isExpanded ? 300 : 200;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: darkBlue),
      home: Scaffold(
        body: Center(
          child: Stack(
            alignment: Alignment.center,
            children: [
              GestureDetector(
                onTap: _animateContainers, // Дархад анимейшнийг ажилуулна
                child: AnimatedContainer(
                  width: outerWidth,
                  height: outerHeight,
                  duration:
                      Duration(seconds: 1), // Анимейшний үргэлжлэх хугацаа
                  curve: Curves.easeInOut,
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 80),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(
                        30), // Гаднах контейнерийн дугуй өнцөг
                  ),
                  child: AnimatedContainer(
                    width: innerWidth,
                    height: innerHeight,
                    duration: Duration(seconds: 1),
                    curve: Curves.easeInOut,
                    decoration: BoxDecoration(
                      color: Colors.yellow,
                      borderRadius: BorderRadius.circular(
                          200), // Дотор контейнерийн дугуй өнцөг
                    ),
                  ),
                ),
              ),
              AnimatedOpacity(
                opacity: isExpanded ? 1.0 : 0.0,
                duration: Duration(seconds: 1),
                child: RotationTransition(
                  turns: _loadingController, // loading анимейшн
                  child: CircularProgressIndicator(
                    color: Colors.blue,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
