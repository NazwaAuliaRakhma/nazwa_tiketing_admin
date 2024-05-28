import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MovieScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1C1C1C),
      appBar: AppBar(
        backgroundColor: Color(0xFF1C1C1C),
        elevation: 0,
        title: Text(
          'MOVIE',
          style: GoogleFonts.poppins(
            textStyle: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            MovieCard(
              title: 'KKN Di Desa Penari',
              description:
                  'KKN Desa Penari merupakan sebuah film horor yang diangkat dari kisah nyata enam mahasiswa.',
              studio: 'STUDIO 1',
              showtimes: ['13:30', '15:00', '16:30', '18:00'],
              genre: 'Horror',
              duration: '1j 30m',
              ticketCount: 44,
              price: 40000,
              imageUrl: 'assets/img_rectangle_67.png',
              date: '28.06.2024',
            ),
            SizedBox(height: 16),
            MovieCard(
              title: 'My Sassy Girl',
              description:
                  'Gian seharusnya pergi ke rumah tantenya karena sang tante ingin menjodohkan Gian dengan mantan kekasih almarhum anaknya.',
              studio: 'STUDIO 2',
              showtimes: ['15:30', '18:00', '19:30', '21:00'],
              genre: 'Romance',
              duration: '1j 30m',
              ticketCount: 44,
              price: 40000,
              imageUrl: 'assets/img_rectangle_86.png',
              date: '28.06.2024',
            ),
            SizedBox(height: 16),
            MovieCard(
              title: 'Keluarga Cemara 2',
              description:
                  'Setelah jatuh miskin, Emak dan Abah bertahan hidup di desa. Ingin sejahtera, tapi lupa dengan kebahagiaan anak-anaknya.',
              studio: 'STUDIO 3',
              showtimes: ['14:00', '15:30', '17:00', '18:30'],
              genre: 'Family',
              duration: '1j 30m',
              ticketCount: 44,
              price: 40000,
              imageUrl: 'assets/img_rectangle_90.png',
              date: '28.06.2024',
            ),
          ],
        ),
      ),
    );
  }
}

class MovieCard extends StatelessWidget {
  final String title;
  final String description;
  final String studio;
  final List<String> showtimes;
  final String genre;
  final String duration;
  final int ticketCount;
  final int price;
  final String imageUrl;
  final String date;

  MovieCard({
    required this.title,
    required this.description,
    required this.studio,
    required this.showtimes,
    required this.genre,
    required this.duration,
    required this.ticketCount,
    required this.price,
    required this.imageUrl,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Color(0xFF2C2C2C),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: 80,
                height: 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  image: DecorationImage(
                    image: AssetImage(imageUrl),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      description,
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.white70,
                        ),
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      studio,
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.white70,
                        ),
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Showtimes: ${showtimes.join(', ')}',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.white70,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InfoTag(icon: Icons.category, label: genre),
              InfoTag(icon: Icons.access_time, label: duration),
              InfoTag(icon: Icons.event_seat, label: '$ticketCount'),
              InfoTag(icon: Icons.attach_money, label: '$price'),
            ],
          ),
        ],
      ),
    );
  }
}

class InfoTag extends StatelessWidget {
  final IconData icon;
  final String label;

  InfoTag({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, color: Colors.white70, size: 16),
        SizedBox(width: 4),
        Text(
          label,
          style: GoogleFonts.poppins(
            textStyle: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: Colors.white70,
            ),
          ),
        ),
      ],
    );
  }
}
