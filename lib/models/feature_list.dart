
import 'package:flutter/material.dart';
import 'package:news_app/models/feature_model.dart';

class FeatureList extends StatelessWidget {
  const FeatureList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FeatureModel(
          icon: Icons.language,
          title: 'Multi-language Support',
          description:
              'Our app will soon support multiple languages, allowing users from around the world to access news in their preferred language.',
        ),
        FeatureModel(
          icon: Icons.audio_file,
          title: 'Audio Articles',
          description:
              'We\'re working on introducing audio versions of articles, allowing you to listen to your favorite news while on the go.',
        ),
        FeatureModel(
          icon: Icons.video_library,
          title: 'Video Content',
          description:
              'In addition to text articles, we\'re planning to incorporate video content to provide a more engaging and immersive news experience.',
        ),
        FeatureModel(
          icon: Icons.personal_injury,
          title: 'Personalized Recommendations',
          description:
              'Our app will soon offer personalized news recommendations based on your interests and reading history, ensuring you never miss the stories that matter most to you.',
        ),
      ],
    );
  }
}
