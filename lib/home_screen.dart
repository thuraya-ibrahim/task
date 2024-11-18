import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
                vertical: 28,
              ),
              child: Row(
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xfffe0156),
                    ),
                    height: 56,
                    width: 56,
                    padding: const EdgeInsets.all(8),
                    child: ColorFiltered(
                      colorFilter: const ColorFilter.mode(
                        Colors.white,
                        BlendMode.srcIn,
                      ),
                      child: Image.asset(
                        'assets/images/user_home_screen.png',
                      ),
                    ),
                  ),
                  const SizedBox(width: 16),
                  const Text(
                    'Anonymous',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w700,
                     color: Color(0xff540393),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: Color(0xFFeef4ec),
                ),
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    const Row(
                      children: [
                        Expanded(
                          child: HomeCard(
                            imageName: 'assets/images/inspection.png',
                            title: 'Inspection',
                          ),
                        ),
                        SizedBox(width: 16),
                        Expanded(
                          child: HomeCard(
                            imageName: 'assets/images/fiber.png',
                            title: 'e-PAT',
                          ),
                        ),
                        SizedBox(width: 16),
                        Expanded(
                          child: HomeCard(
                            imageName: 'assets/images/material-management.png',
                            title: 'MDM',
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    const Row(
                      children: [
                        Expanded(
                          child: HomeCard(
                            imageName: 'assets/images/surveyor.png',
                            title: 'FO Survey',
                          ),
                        ),
                        SizedBox(width: 16),
                        Expanded(
                          child: HomeCard(
                            imageName: 'assets/images/surveyor.png',
                            title: 'RFS Survey',
                          ),
                        ),
                        SizedBox(width: 16),
                        Expanded(
                          child: HomeCard(
                            imageName: 'assets/images/settings.png',
                            title: 'Settings',
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    Spacer(),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: const [
                          BoxShadow(
                            color: Color(0x1A000000),
                            offset: Offset(0, 2),
                            blurRadius: 0.1,
                            spreadRadius: 0.1,
                          ),
                        ],
                      ),
                      padding: EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'Sign In',
                          style:TextStyle(color: Color(0xff540393),
                          fontFamily: 'STC',
                          fontWeight: FontWeight.w700,
                          fontSize: 17,)
                          ),
                          Divider(),
                          Text(
                            'You are not signed in. please sign in to access all the features of the application',
                              style:TextStyle(color: Colors.black,
                                fontSize: 14,)
                          ),
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
                        ],
                      ),
                    ),
                    // Expanded(
                    //   child: Align(
                    //     alignment: Alignment.bottomCenter,
                    //     child: Container(
                    //       decoration: BoxDecoration(
                    //         color: Colors.white,
                    //         borderRadius: BorderRadius.circular(12),
                    //         boxShadow: const [
                    //           BoxShadow(
                    //             color: Color(0x1A000000),
                    //             offset: Offset(0, 2),
                    //             blurRadius: 0.1,
                    //             spreadRadius: 0.1,
                    //           ),
                    //         ],
                    //       ),
                    //       padding: EdgeInsets.all(16),
                    //       child: Column(
                    //         crossAxisAlignment: CrossAxisAlignment.stretch,
                    //         mainAxisSize: MainAxisSize.min,
                    //         children: [
                    //           Text(
                    //             'Sign In',
                    //           ),
                    //           Divider(),
                    //           Text(
                    //             'You are not signed in. please sign in to continue',
                    //           ),
                    //           ElevatedButton(
                    //             style: ElevatedButton.styleFrom(
                    //               foregroundColor: Colors.white,
                    //               backgroundColor: Color(0xfffe0156),
                    //               elevation: 0,
                    //               shape: RoundedRectangleBorder(
                    //                 borderRadius: BorderRadius.circular(12),
                    //               ),
                    //             ),
                    //             onPressed: () {
                    //               Navigator.push(
                    //                 context,
                    //                 MaterialPageRoute(
                    //                   builder: (context) => HomeScreen(),
                    //                 ),
                    //               );
                    //             },
                    //             child: Row(
                    //               mainAxisAlignment: MainAxisAlignment.center,
                    //               // crossAxisAlignment: CrossAxisAlignment.stretch,
                    //               children: [
                    //                 Icon(Icons.arrow_circle_right_outlined),
                    //                 const SizedBox(width: 6),
                    //                 Text('Sign in')
                    //               ],
                    //             ),
                    //           ),
                    //         ],
                    //       ),
                    //     ),
                    //   ),
                    // ),
                  ],
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}

class HomeCard extends StatelessWidget {
  const HomeCard({
    super.key,
    required this.imageName,
    required this.title,
  });

  final String title;
  final String imageName;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(4),
        boxShadow: const [
          BoxShadow(
            color: Color(0x1A000000),
            offset: Offset(0, 2),
            blurRadius: 0.1,
            spreadRadius: 0.1,
          ),
        ],
      ),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 50,
            width: 50,
            child: ColorFiltered(
              colorFilter: const ColorFilter.mode(
                Color(0xff540393),
                BlendMode.srcIn,
              ),
              child: Image.asset(imageName),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            title,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w700,
              color: Color(0xff540393),
            ),
          ),
        ],
      ),
    );
  }
}
