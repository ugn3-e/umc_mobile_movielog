import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart'; // SVG 로고 사용을 위한 패키지 임포트
import 'profile_screen.dart';
import 'theme/app_theme.dart';

void main() {
  runApp(const MovieLogApp());
}

class MovieLogApp extends StatelessWidget {
  const MovieLogApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MovieLog',
      theme: AppTheme.light, // AppTheme에서 정의한 light 테마로 지정
      //home: const StartScreen(), // 첫 실행 화면을 StartScreen으로 지정
      home: const ProfileScreen(), // 첫 실행 화면을 ProfileScreen으로 지정
    );
  }
}

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, // 세로 기준 가운데 정렬
            children: [
              // const Icon(
              //   Icons.movie_outlined,
              //   size: 72,
              //   color: Colors.deepPurple,
              //   semanticLabel: '영화 로고 아이콘',
              // ),
              SvgPicture.asset( // Icons.movie_outlined 제거
                'assets/logos/movielog_logo.svg',
                width: 72,
                height: 72,
                semanticsLabel: 'MovieLog 로고',
              ),
              const SizedBox(height: 24), // 위젯 사이 여백
              const Text(
                '영화의 순간을 기록하세요',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                '보고 싶은 영화부터 나만의 평점까지\n한곳에서 관리해요',
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 48),
              ElevatedButton(
                onPressed: () {
                  debugPrint('시작하기 버튼을 눌렀습니다.');
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(200, 48), // 버튼 크기
                ),
                child: const Text('시작하기'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
