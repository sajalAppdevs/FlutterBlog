import 'package:flutter/material.dart';

class CustomStackWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          color: Colors.blue,
          height: 200.0,
          width: 200.0,
        ),
        Positioned(
          top: 50.0,
          left: 50.0,
          child: Container(
            color: Colors.red,
            height: 100.0,
            width: 100.0,
          ),
        ),
        Positioned(
          top: 100.0,
          left: 100.0,
          child: Text(
            'Custom Stack Widget',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}




class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Image.asset(
            'assets/images/bg.webp',
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
          ),
          Container(
            color: Colors.black54,
            height: double.infinity,
            width: double.infinity,
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  'assets/images/boltuix.png',
                  height: 150.0,
                ),
                SizedBox(height: 50.0),
                ElevatedButton(
                  onPressed: () {},
                 // color: Colors.white,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 30.0,
                      vertical: 10.0,
                    ),
                    child: Text(
                      'Get Started',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}



class ImageCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          elevation: 5,
          child: Container(
            width: double.infinity,
            height: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              image: DecorationImage(
                image: AssetImage('assets/image.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 160),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    'Image Title',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: 16,
          right: 16,
          child: Icon(
            Icons.favorite,
            color: Colors.red,
          ),
        ),
      ],
    );
  }
}

class EmptyStateScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Positioned.fill(
          child: Image.asset(
            'assets/images/bg.webp',
            fit: BoxFit.cover,
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'No data found',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Please try again later.',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            SizedBox(height: 32),
            ElevatedButton(
              onPressed: () {},
              child: Text('Retry'),
            ),
          ],
        ),
      ],
    );
  }
}




class NoInternetScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Positioned.fill(
          child: Image.asset(
            'assets/images/bg.webp',
            fit: BoxFit.cover,
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'No Internet Connection',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Please check your internet connection and try again.',
              style: TextStyle(
                fontSize: 16,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 32),
            ElevatedButton(
              onPressed: () {},
              child: Text('Retry'),
            ),
          ],
        ),
      ],
    );
  }
}


class ImageOverlayScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'assets/images/bg.webp',
          fit: BoxFit.cover,
          height: double.infinity,
          width: double.infinity,
        ),
        Positioned.fill(
          child: Container(
            color: Colors.black.withOpacity(0.6),
          ),
        ),
        Positioned(
          top: 80,
          left: 0,
          right: 0,
          child: Column(
            children: [
              Text(
                'Welcome to Flutter',
                style: TextStyle(
                  fontSize: 32,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16),
              Text(
                'A framework for building beautiful, natively compiled applications for mobile, web, and desktop from a single codebase.',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
