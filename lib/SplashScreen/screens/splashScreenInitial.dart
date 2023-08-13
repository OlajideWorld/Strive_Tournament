import "package:artelio/SplashScreen/screens/splashscreen.dart";
import "package:flutter/material.dart";
import "package:get/get.dart";
import "package:video_player/video_player.dart";

class SplashScreenInitial extends StatefulWidget {
  const SplashScreenInitial({super.key});

  @override
  State<SplashScreenInitial> createState() => _SplashScreenInitialState();
}

class _SplashScreenInitialState extends State<SplashScreenInitial> {
  late VideoPlayerController videoPlayerController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    videoPlayerController =
        VideoPlayerController.asset("assets/videos/video2.MP4");

    videoPlayerController.setLooping(true);

    videoPlayerController.addListener(() {
      setState(() {});
    });

    videoPlayerController.initialize().then((_) {
      setState(() {});
    });
    // ..setVolume(0.0);

    playVideo();
  }

  void playVideo() async {
    videoPlayerController.play();
    await Future.delayed(Duration(seconds: 7), () {});
    videoPlayerController.pause();
    Get.to(() => const SplashScreen());
  }

  @override
  void dispose() {
    // TODO: implement dispose
    videoPlayerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
          child: videoPlayerController.value.isInitialized
              ? AspectRatio(
                  aspectRatio: videoPlayerController.value.aspectRatio,
                  child: VideoPlayer(videoPlayerController),
                )
              : Container()),
    );
  }
}
