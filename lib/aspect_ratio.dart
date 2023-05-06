import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoDialog extends StatefulWidget {
  final String videoUrl;

  VideoDialog({required this.videoUrl});

  @override
  _VideoDialogState createState() => _VideoDialogState();
}

class _VideoDialogState extends State<VideoDialog> {
  late VideoPlayerController _videoController;

  @override
  void initState() {
    super.initState();
    _videoController = VideoPlayerController.network(widget.videoUrl,)
      ..initialize().then((_) {
        setState(() {});
        _videoController.play();
      });
  }

  @override
  void dispose() {
    _videoController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor : Colors.transparent,
      child: AspectRatio(
        aspectRatio: _videoController.value.aspectRatio,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            VideoPlayer(_videoController),
            IconButton(
              icon: const Icon(Icons.close),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}

//.......................................

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
  /*  Timer(Duration(seconds: 3), () {
      // TODO: Navigate to the next screen
    });*/
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child:

        AspectRatio(
          aspectRatio: 1,
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    'https://avatars.githubusercontent.com/u/98302956?v=4'),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),

       /* AspectRatio(
          aspectRatio: 1, // Customize the aspect ratio as per your logo's dimensions
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/logo.png'),
                fit: BoxFit.none,
              ),
            ),
          ),
        ),*/




      ),
    );
  }
}

//.......................................

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 4/4,
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage( 'assets/images/bg.webp',),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}

