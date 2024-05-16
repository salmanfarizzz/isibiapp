import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:isibi/app/shared/theme.dart';
import 'package:video_player/video_player.dart';

class ChewieListItem extends StatefulWidget {
  final VideoPlayerController videoPlayerController;
  final bool looping;
  final String kamus_title;

  const ChewieListItem(
      {Key? key,
      required this.videoPlayerController,
      required this.looping,
      required this.kamus_title})
      : super(key: key);

  @override
  State<ChewieListItem> createState() => _ChewieListItemState();
}

class _ChewieListItemState extends State<ChewieListItem> {
  ChewieController? _chewieController;
  String? _titleVideo;

  @override
  void initState() {
    // print(widget.kamus_title);
    // _titleVideo = widget.kamus_title;
    _chewieController = ChewieController(
        videoPlayerController: widget.videoPlayerController,
        // aspectRatio: widget.videoPlayerController.value.aspectRatio,
        aspectRatio: 16 / 9,
        // autoPlay: true,
        autoInitialize: true,
        looping: widget.looping,
        errorBuilder: (context, errorMessage) {
          return Center(
            child: Text(
              errorMessage,
              style: semibold.copyWith(fontSize: 20, color: Colors.white),
            ),
          );
        });
    super.initState();
  }

  @override
  void dispose() {
    widget.videoPlayerController.dispose();
    _chewieController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      // overflow: TextOverflow.visible,
      children: [
        Positioned(
          top: 50,
          right: 20,
          child: Text(
            widget.kamus_title,
            style: bold.copyWith(fontSize: 20),
          ),
        ),
        Padding(
            padding: EdgeInsets.all(1),
            child: Chewie(controller: _chewieController!))
      ],
    );
  }
}
