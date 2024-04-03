import 'package:flutter/material.dart';
import 'package:news_app/models/feature_list.dart';

class AboutView extends StatelessWidget {
  const AboutView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverAppBar(
            pinned: true,
            expandedHeight: 400.0,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('About Newsy'),
              background: Image(
                image: AssetImage('assets/blueAbout.jpg'),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              const SizedBox(height: 16.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Description',
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8.0),
                    const Text(
                      'We\'re constantly working on improving our app and bringing you the best news experience possible. Here are some exciting features we have in the pipeline:',
                    ),
                    const SizedBox(height: 16.0),
                    const Text(
                      'Upcoming Features',
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8.0),
                    const FeatureList(),
                    const SizedBox(height: 16.0),
                    const Text(
                      'Design and Branding',
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8.0),
                    const Text(
                      'Our app features a modern and sleek design that is visually appealing and easy to navigate. The color scheme and typography are carefully chosen to create a cohesive and unified brand experience.',
                    ),
                    const SizedBox(height: 16.0),
                    const Text(
                      '2nd April 2024',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 105, 105, 105),
                      ),
                    ),
                    const SizedBox(height: 16.0),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'DEVELOPED BY',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF637ADE),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 6.0),
                    Center(
                      child: Container(
                        width: 170,
                        alignment: Alignment.center,
                        child: const Image(
                          image: AssetImage("assets/HAH_Logo.png"),
                        ),
                      ),
                    ),
                    const SizedBox(height: 16.0),
                  ],
                ),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
