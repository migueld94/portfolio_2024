import 'dart:io';

import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:chewie/chewie.dart';

class Iphone extends StatefulWidget {
  const Iphone({super.key, required this.url, required this.dataSourceType});

  final String url;
  final DataSourceType dataSourceType;

  @override
  State<Iphone> createState() => _IphoneState();
}

class _IphoneState extends State<Iphone> {
  late VideoPlayerController _controller;
  late ChewieController _chewieController;

  @override
  void initState() {
    super.initState();
    // _controller = VideoPlayerController.asset('assets/videos/video.mp4')
    //   ..initialize().then((_) {
    //     setState(() {});
    //   });

    switch (widget.dataSourceType) {
      case DataSourceType.asset:
        _controller = VideoPlayerController.asset(widget.url);
        break;
      case DataSourceType.network:
        _controller = VideoPlayerController.asset(widget.url);
        break;
      case DataSourceType.file:
        _controller = VideoPlayerController.file(File(widget.url));
        break;
      case DataSourceType.contentUri:
        _controller = VideoPlayerController.contentUri(Uri.parse(widget.url));
    }

    _chewieController = ChewieController(
      videoPlayerController: _controller,
      aspectRatio: 9 / 16,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    _chewieController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text(
              widget.dataSourceType.name.toUpperCase(),
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const Divider(),
            AspectRatio(
              aspectRatio: 16 / 9,
              child: Chewie(controller: _chewieController),
            )
          ],
        ),
      ),
      // body: Center(
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: [
      //       Container(
      //         width: 300,
      //         height: 600,
      //         decoration: BoxDecoration(
      //           color: PortfolioColors.colorPrimary,
      //           borderRadius: borderRadius40,
      //           border:
      //               Border.all(color: PortfolioColors.colorBlack, width: 10.0),
      //           boxShadow: [
      //             BoxShadow(
      //               offset: const Offset(0, 3),
      //               color: PortfolioColors.colorBlack.withOpacity(0.5),
      //               blurRadius: 10,
      //             )
      //           ],
      //           image: const DecorationImage(
      //             image: AssetImage(
      //               Assets.pic_00,
      //             ),
      //             fit: BoxFit.cover,
      //           ),
      //         ),
      //         child: Padding(
      //           padding: const EdgeInsets.all(8.0),
      //           child: Column(
      //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //             children: [
      //               Container(
      //                 width: 100,
      //                 height: 30,
      //                 decoration: BoxDecoration(
      //                   color: PortfolioColors.colorBlack,
      //                   borderRadius: borderRadius20,
      //                 ),
      //               ),
      //               // Icon(
      //               //   Icons.play_circle_fill_outlined,
      //               //   color: PortfolioColors.colorBlack,
      //               //   size: 60.0,
      //               // ),
      //               Container(
      //                 width: 150,
      //                 height: 3.0,
      //                 decoration: BoxDecoration(
      //                   color: PortfolioColors.colorBlack,
      //                   borderRadius: borderRadius5,
      //                 ),
      //               )
      //             ],
      //           ),
      //         ),
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}
