import 'package:flutter/material.dart';
import 'package:handy_link/signup_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HandyLink.',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'HandyLink.'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: Center(
        child: Container(
          width: 360,
          height: 720,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(28),
            boxShadow: [
              BoxShadow(
                color: const Color.fromARGB(133, 27, 26, 26),
                blurRadius: 20,
                offset: Offset(0, 8),
              ),
            ],
            border: Border.all(color: const Color.fromARGB(221, 132, 126, 126), width: 6),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 28.0, vertical: 40.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 24),
                const Spacer(),
                Text(
                  'Welcome to HandyLink.',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 36),

                // Form fields container width
                SizedBox(
                  width: 260,
                  child: Column(
                    children: [
                      TextField(
                        decoration: InputDecoration(
                          hintText: 'Username',
                          filled: true,
                          fillColor: Colors.grey[300],
                          contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 14),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.zero,
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                      const SizedBox(height: 18),
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: 'Password',
                          filled: true,
                          fillColor: Colors.grey[300],
                          contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 14),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.zero,
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 10),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const SignupPage()),
                    );
                  },
                  child: const Text(
                    "Don't have an account?",
                    style: TextStyle(fontSize: 16, color: Color.fromARGB(255, 73, 107, 208)),
                  ),
                ),

                const Spacer(),

                SizedBox(
                  width: 240,
                  height: 46,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      shape: const StadiumBorder(),
                      elevation: 4,
                    ),
                    child: const Text(
                      "Continue with Google.",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                ),

                const Spacer(),

                 SizedBox(
                  width: 240,
                  height: 46,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      shape: const StadiumBorder(),
                      elevation: 4,
                    ),
                    child: const Text(
                      'Login',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                ), 

                const SizedBox(height: 36),
              ],
            ),
          ),
        ),
      ),
    );
  }
} 
