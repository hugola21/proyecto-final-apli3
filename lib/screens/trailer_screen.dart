import 'package:flutter/material.dart';
import 'package:youtube_player_embed/youtube_player_embed.dart';

class TrailerScreen extends StatelessWidget {
  final String videoId;

  TrailerScreen({required this.videoId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MAX PELIS'),
        backgroundColor: Color(0xFF0F171E), 
      ),
      body: Container(
        color: Color(0xFF0F171E), 
        child: Center(
          child: YoutubePlayerView(
            videoId: videoId,
            autoPlay: true,
            mute: false,
            enabledShareButton: false,
            aspectRatio: 16 / 9,
          ),
        ),
      ),
    );
  }
}
