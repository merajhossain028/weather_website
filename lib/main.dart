import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Weather',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // late FlutterGifController controller;
  // @override
  // void initState() {
  //   controller = FlutterGifController(vsync: this);
  //   WidgetsBinding.instance.addPostFrameCallback((_) {
  //     controller.repeat(
  //       min: 0,
  //       max: 53,
  //       period: const Duration(milliseconds: 200),
  //     );
  //   });
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'আবহাওয়া',
          style: TextStyle(color: Colors.blue),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Stack(
        children: [
          SizedBox(
            height: size.height,
            width: double.infinity,
            child: const Image(
              image: NetworkImage(
                'https://cdn.pixabay.com/photo/2018/06/21/13/57/clouds-3488632__340.jpg',
              ),
              fit: BoxFit.cover,
            ),
          ),
          Container(
            height: size.height,
            width: double.infinity,
            color: Colors.white.withOpacity(0.5),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                height: 200,
                width: 400,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.white,
                ),
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      SizedBox(height: 16),
                      Text(
                        'আজকের আবহাওয়া',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 16),
                      Text(
                        'ঢাকা',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 16),
                      Text(
                        'আজকের আবহাওয়া বৃষ্টি এবং বাতাসের সম্পর্কে কিছু তথ্য',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 20,
            right: 500,
            child: Container(
              height: 200,
              width: 400,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.white,
              ),
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Image(
                      height: 150,
                      width: 150,
                      image: NetworkImage(
                          'https://cdn.dribbble.com/users/40760/screenshots/7007227/sunny_weather.gif'),
                    ),
                    Text(
                      '২৩°c',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 20,
            right: 500,
            child: Container(
              height: 200,
              width: 400,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.white,
              ),
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Image(
                      height: 150,
                      width: 150,
                      image: NetworkImage(
                          'https://cdn.dribbble.com/users/40760/screenshots/7007227/sunny_weather.gif'),
                    ),
                    Text(
                      '২৩°c',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 20,
            right: 30,
            child: Container(
              height: 200,
              width: 400,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.white,
              ),
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Image(
                      height: 150,
                      width: 150,
                      image: NetworkImage(
                          'https://media.tenor.com/bSlq4V2aDdIAAAAC/location-icon.gif'),
                    ),
                    Text(
                      'মহাখালী, ডিওএইচএস',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 350,
            right: 200,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                height: 130,
                width: 1000,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.white,
                ),
                child: Center(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Spacer(),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          SizedBox(height: 16),
                          Text('ঢাকা',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              )),
                          Image(
                            height: 50,
                            width: 50,
                            image: NetworkImage(
                                'https://cdn.dribbble.com/users/40760/screenshots/7007227/sunny_weather.gif'),
                          ),
                          Text(
                            '২৩°c',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          SizedBox(height: 16),
                          Text('ঢাকা',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              )),
                          Image(
                            height: 50,
                            width: 50,
                            image: NetworkImage(
                                'https://cdn.dribbble.com/users/40760/screenshots/7007227/sunny_weather.gif'),
                          ),
                          Text(
                            '২৩°c',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          SizedBox(height: 16),
                          Text('ঢাকা',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              )),
                          Image(
                            height: 50,
                            width: 50,
                            image: NetworkImage(
                                'https://cdn.dribbble.com/users/40760/screenshots/7007227/sunny_weather.gif'),
                          ),
                          Text(
                            '২৩°c',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          SizedBox(height: 16),
                          Text('ঢাকা',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              )),
                          Image(
                            height: 50,
                            width: 50,
                            image: NetworkImage(
                                'https://cdn.dribbble.com/users/40760/screenshots/7007227/sunny_weather.gif'),
                          ),
                          Text(
                            '২৩°c',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          SizedBox(height: 16),
                          Text('ঢাকা',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              )),
                          Image(
                            height: 50,
                            width: 50,
                            image: NetworkImage(
                                'https://cdn.dribbble.com/users/40760/screenshots/7007227/sunny_weather.gif'),
                          ),
                          Text(
                            '২৩°c',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          SizedBox(height: 16),
                          Text('ঢাকা',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              )),
                          Image(
                            height: 50,
                            width: 50,
                            image: NetworkImage(
                                'https://cdn.dribbble.com/users/40760/screenshots/7007227/sunny_weather.gif'),
                          ),
                          Text(
                            '২৩°c',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          SizedBox(height: 16),
                          Text('ঢাকা',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              )),
                          Image(
                            height: 50,
                            width: 50,
                            image: NetworkImage(
                                'https://cdn.dribbble.com/users/40760/screenshots/7007227/sunny_weather.gif'),
                          ),
                          Text(
                            '২৩°c',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          SizedBox(height: 16),
                          Text('ঢাকা',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              )),
                          Image(
                            height: 50,
                            width: 50,
                            image: NetworkImage(
                                'https://cdn.dribbble.com/users/40760/screenshots/7007227/sunny_weather.gif'),
                          ),
                          Text(
                            '২৩°c',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          SizedBox(height: 16),
                          Text('ঢাকা',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              )),
                          Image(
                            height: 50,
                            width: 50,
                            image: NetworkImage(
                                'https://cdn.dribbble.com/users/40760/screenshots/7007227/sunny_weather.gif'),
                          ),
                          Text(
                            '২৩°c',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          SizedBox(height: 16),
                          Text('ঢাকা',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              )),
                          Image(
                            height: 50,
                            width: 50,
                            image: NetworkImage(
                                'https://cdn.dribbble.com/users/40760/screenshots/7007227/sunny_weather.gif'),
                          ),
                          Text(
                            '২৩°c',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
