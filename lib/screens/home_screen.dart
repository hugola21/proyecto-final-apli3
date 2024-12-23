import 'package:flutter/material.dart';
import 'package:taller_dos/screens/video_player.dart';
import 'package:taller_dos/widgets/movie_card.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool _isDarkMode = true;

  final movies = [
    {
      'title': 'BATMAN',
      'videoUrl': 'https://www.dropbox.com/scl/fo/uhrn9fkbhapwe5vlqos9y/APGP4wlD14QGaMIb1AyidB0/Batman%20-%20Teaser%20de%20DC%20FanDome..mp4?rlkey=lp7ejlx31w5xyfcm44gpuw25z&e=2&st=wmq6ngx5&dl=1',
      'description': 'El Caballero Oscuro debe enfrentarse a nuevos villanos...',
    },
    {
      'title': 'Contra Lo impossible',
      'image': 'assets/images/shrek.jpg',
      'videoUrl': 'https://www.dropbox.com/scl/fo/uhrn9fkbhapwe5vlqos9y/AAXqCKTKzVxAwaPWJ_ml010/Contra%20Lo%20impossible%20(Ford%20V%20Ferrari)%20-Trailer%20%5BDOBLADO%5D%20Latino..mp4?rlkey=lp7ejlx31w5xyfcm44gpuw25z&e=1&st=ca1xd1pl&dl=1',
      'description': 'Contra Lo impossible...',
    },
    {
      'title': 'CORAZONES DE ACERO',
      'videoUrl': 'https://www.dropbox.com/scl/fo/uhrn9fkbhapwe5vlqos9y/AI510pH3G19Aikl58UYvESE/CORAZONES%20DE%20ACERO.%20Tr%C3%A1iler%20Oficial%20HD.%20Ya%20en%20cines...mp4?rlkey=lp7ejlx31w5xyfcm44gpuw25z&e=1&st=v15dalxe&dl=1',
      'description': 'CORAZONES DE ACERO...',
    },
    {
      'title': 'CREED III',
      'videoUrl': 'https://www.dropbox.com/scl/fo/uhrn9fkbhapwe5vlqos9y/ACaLpTXBp6fN5dyDTxmZ14w/CREED%20III%20_%20Tr%C3%A1iler%20oficial%20_%20Doblado..mp4?rlkey=lp7ejlx31w5xyfcm44gpuw25z&e=1&st=xrkl3jsr&dl=1',
      'description': 'CREED III...',
    },
    {
      'title': 'DUNKERQUE',
      'videoUrl': 'https://www.dropbox.com/scl/fo/uhrn9fkbhapwe5vlqos9y/AFyPxtiW1puy74Pb8O4O6gE/DUNKERQUE%20-%20Trailer%201%20-%20Oficial%20Warner%20Bros.%20Pictures..mp4?rlkey=lp7ejlx31w5xyfcm44gpuw25z&e=1&st=htusol02&dl=1',
      'description': 'DUNKERQUE...',
    },
    {
      'title': 'GLADIADOR 2',
      'videoUrl': 'https://www.dropbox.com/scl/fo/uhrn9fkbhapwe5vlqos9y/AIIDlsnLjODSTs9Ehacsdv8/GLADIADOR%202%20Tr%C3%A1iler%20Espa%C3%B1ol%20Latino%20(2024)%20Pedro%20Pascal%2C%20Denzel%20Washington%2C%20Paul%20Mescal..mp4?rlkey=lp7ejlx31w5xyfcm44gpuw25z&e=1&st=sxuaff3n&dl=1',
      'description': 'GLADIADOR 2...',
    },
    {
      'title': 'INTERESTELAR',
      'videoUrl': 'https://www.dropbox.com/scl/fo/uhrn9fkbhapwe5vlqos9y/ADkw33rqtUQOBTWQADrnFig/INTERESTELAR%20-%20Tr%C3%A1iler%204%20Doblado%20HD%20-%20Oficial%20Warner%20Bros.%20Pictures..mp4?rlkey=lp7ejlx31w5xyfcm44gpuw25z&e=1&st=2kbho4ee&dl=1',
      'description': 'INTERESTELAR...',
    },
    {
      'title': 'Shrek',
      'videoUrl': 'https://www.dropbox.com/scl/fo/uhrn9fkbhapwe5vlqos9y/ABdukova4rPLPeyAez8xzI8/Shrek%20(2001)%20-%20Trailer%201%20Doblado..mp4?rlkey=lp7ejlx31w5xyfcm44gpuw25z&e=1&st=woax4536&dl=1',
      'description': 'Shrek...',
    },
    {
      'title': 'Terminator 3',
      'videoUrl': 'https://www.dropbox.com/scl/fo/uhrn9fkbhapwe5vlqos9y/ADEsemDYB3oQi2-070Qykt0/Terminator%203%20(2003)%20-%20Tr%C3%A1iler%201%20en%20espa%C3%B1ol..mp4?rlkey=lp7ejlx31w5xyfcm44gpuw25z&e=1&st=2lcuszfp&dl=1',
      'description': 'Terminator 3...',
    },
    {
      'title': 'The Man in the High Castle',
      'videoUrl': 'https://www.dropbox.com/scl/fo/uhrn9fkbhapwe5vlqos9y/ALJp0siHp3LotdEXAFqtDGM/The%20Man%20in%20the%20High%20Castle%20Temporada%204%20-%20Tr%C3%A1iler%20oficial%20_%20Amazon%20Prime%20Video..mp4?rlkey=lp7ejlx31w5xyfcm44gpuw25z&e=1&st=ve8i8zp9&dl=1',
      'description': 'The Man in the High Castle...',
    }
  ];

  @override
  Widget build(BuildContext context) {
    final backgroundColor = _isDarkMode ? Color(0xFF0F171E) : Colors.white;
    final appBarColor     = _isDarkMode ? Color(0xFF0F171E) : Colors.blue;

    return Scaffold(
      appBar: AppBar(
        title: Text('Películas - Trailers'),
        backgroundColor: appBarColor,
        actions: [
          IconButton(
            icon: Icon(_isDarkMode ? Icons.brightness_7 : Icons.brightness_4),
            onPressed: () {
              setState(() {
                _isDarkMode = !_isDarkMode;
              });
            },
          ),
        ],
      ),
      body: Container(
        color: backgroundColor,
        child: ListView.builder(
          itemCount: movies.length,
          itemBuilder: (context, index) {
            final movie = movies[index];
            return MovieCard(
              movie: movie,
              isDarkMode: _isDarkMode,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => MoviePlayerScreen(
                      videoUrl: movie['videoUrl'] ?? '',
                      isDarkMode: _isDarkMode,
                    ),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
