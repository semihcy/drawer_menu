import 'package:flutter/material.dart';
import 'home_page.dart';

class UserPage extends StatelessWidget {
  const UserPage({super.key});

  @override
  Widget build(BuildContext context) {
    String userName = 'Semih Çay';
    String userEmail = 'ssemihcay@gmail.com';
    String profileImage = 'assets/profile_image.jpg';
    String userWebsite = 'https://www.semihcay.com';

    return Scaffold(
      appBar: AppBar(
        title: const Text('User Page'),
      ),
      drawer: const AppDrawer(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage(profileImage),
            ),
            const SizedBox(height: 20),
            Text(
              'Name: $userName',
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 10),
            Text(
              'Email: $userEmail',
              style: const TextStyle(fontSize: 18),
            ),
        const SizedBox(height: 10),
        const Text(
          'Website: ',
          style: TextStyle(fontSize: 18),
        ),
        InkWell(
          onTap: () {
            // Open the user's website when tapped
            // You might want to use a package like url_launcher for this
            // https://pub.dev/packages/url_launcher
          },
          child: Text(
            userWebsite,
            style: const TextStyle(
              fontSize: 18,
              color: Colors.blue,
              decoration: TextDecoration.underline,
            ),
          ),
        ),
          ],
        ),
      ),
    );
  }
}
