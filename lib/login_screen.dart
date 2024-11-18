import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled6/home_screen.dart';

//Naming Convention

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  final numbers = const [1, 5, 4, 8, 7];

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        primaryFocus?.unfocus();
      },
      child: Scaffold(
        backgroundColor: Color(0xFFeef4ec),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            // mainAxisAlignment: MainAxisAlignment.start,
            // mainAxisSize: MainAxisSize.min,
            children: [
              //Icon Button
              //Elevated Button
              //Text Button
              Align(
                //AlignmentDirectional
                //Alignment
                alignment: AlignmentDirectional.centerStart,
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.arrow_back,
                    color: Color(0xfffc004b),
                  ),
                ),
              ),
              Expanded(
                child: Center(
                  child: Container(
                    margin: const EdgeInsets.all(24),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: const [
                        BoxShadow(
                          color: Color(0x1A000000),
                          offset: Offset(0, 2),
                          blurRadius: 0.1,
                          spreadRadius: 0.1,
                        ),
                      ],
                    ),
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'e Q A I T',
                              style: TextStyle(
                                color: Color(0xff540393),
                                fontFamily: 'STC',
                                fontSize: 32,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Icon(
                              Icons.add,
                              color: Color(0xfffc0355),
                              size: 24,
                            ),
                          ],
                        ),
                        Text(
                          '2.2.6-DEV (20202465465516)',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black54,
                          ),
                        ),
                        SizedBox(height: 32),
                        TextField(
                          decoration: InputDecoration(
                            disabledBorder: OutlineInputBorder(),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(16),
                              borderSide: BorderSide(
                                color: Colors.black45,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(16),
                              borderSide: BorderSide(
                                color: Color(0xff540393),
                              ),
                            ),
                            labelText: 'Email/Username',
                            labelStyle: TextStyle(color: Colors.black87),
                            floatingLabelStyle: TextStyle(
                              color: Color(0xff540393),
                            ),
                            prefixIcon: Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 8.0,
                                vertical: 12,
                              ),
                              child: SizedBox(
                                height: 24,
                                child: ColorFiltered(
                                  colorFilter: ColorFilter.mode(
                                    Color(0xff540393),
                                    BlendMode.srcIn,
                                  ),
                                  child: Image.asset(
                                    'assets/images/user.png',
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 16),
                        TextField(
                          decoration: InputDecoration(
                            disabledBorder: OutlineInputBorder(),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(16),
                              borderSide: BorderSide(
                                color: Colors.black45,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(16),
                              borderSide: BorderSide(
                                color: Color(0xff540393),
                              ),
                            ),
                            hintText: 'example@example.com',
                            labelText: 'Password',
                            labelStyle: TextStyle(color: Colors.black87),
                            floatingLabelStyle: TextStyle(
                              color: Color(0xff540393),
                            ),
                            prefixIcon: Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 8.0,
                                vertical: 12,
                              ),
                              child: SizedBox(
                                height: 24,
                                child: ColorFiltered(
                                  colorFilter: ColorFilter.mode(
                                    Color(0xff540393),
                                    BlendMode.srcIn,
                                  ),
                                  child: Image.asset(
                                    'assets/images/padlock.png',
                                  ),
                                ),
                              ),
                            ),
                            suffixIcon: Icon(Icons.visibility_off_outlined),
                            suffixIconColor: Colors.black,
                          ),
                        ),
                        const SizedBox(height: 36),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.white,
                            backgroundColor: Color(0xfffe0156),
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => HomeScreen(),
                              ),
                            );
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            // crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Icon(Icons.arrow_circle_right_outlined),
                              const SizedBox(width: 6),
                              Text('Sign in')
                            ],
                          ),
                        ),
                        const SizedBox(height: 16),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          // crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            SizedBox(
                              width: 75,
                              child: Image.asset(
                                'assets/images/nt_logo.png',
                              ),
                            ),
                            const SizedBox(width: 16),
                            SizedBox(
                              width: 40,
                              child: Image.asset(
                                'assets/images/stc.png',
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Opacity(
                opacity: 0.15,
                child: Image.asset(
                  'assets/images/riyadh_landscape.png',
                  fit: BoxFit.cover,
                ),
              ),
              // Align(
              //   alignment: AlignmentDirectional.centerStart,
              //   child: Container(
              //     decoration: BoxDecoration(
              //       color: Colors.redAccent,
              //     ),
              //     height: 80,
              //     width: 80,
              //   ),
              // ),
              // SizedBox(height: 16),
              // Container(
              //   decoration: BoxDecoration(
              //     color: Colors.redAccent,
              //   ),
              //   height: 100,
              //   width: 300,
              // ),
              // SizedBox(height: 16),
              // Container(
              //   decoration: BoxDecoration(
              //     color: Colors.redAccent,
              //   ),
              //   height: 80,
              //   width: 40,
              // ),
              // SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}
