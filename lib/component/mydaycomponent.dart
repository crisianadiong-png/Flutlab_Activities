import 'package:flutter/material.dart';

class MyDayStory {
  final String name;
  final String image;
  final bool isCreateStory;

  const MyDayStory({
    required this.name,
    required this.image,
    this.isCreateStory = false,
  });
}

class MyDayPageView extends StatelessWidget {
  final List<MyDayStory> stories;
  final VoidCallback? onCreateStory;
  final Function(MyDayStory story)? onStoryTap;

  const MyDayPageView({
    super.key,
    required this.stories,
    this.onCreateStory,
    this.onStoryTap,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160,
      child: PageView.builder(
        controller: PageController(viewportFraction: 0.27),
        padEnds: false,
        itemCount: stories.length,
        itemBuilder: (context, index) {
          final story = stories[index];

          return Padding(
            padding: const EdgeInsets.only(right: 8),
            child: _StoryCard(
              story: story,
              onTap: () {
                if (story.isCreateStory) {
                  onCreateStory?.call();
                } else {
                  onStoryTap?.call(story);
                }
              },
            ),
          );
        },
      ),
    );
  }
}

class _StoryCard extends StatelessWidget {
  final MyDayStory story;
  final VoidCallback onTap;

  const _StoryCard({required this.story, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset(story.image, fit: BoxFit.cover),

            // Dark gradient at bottom
            Positioned.fill(
              child: DecoratedBox(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.transparent,
                      Colors.black.withOpacity(0.75),
                    ],
                  ),
                ),
              ),
            ),

            // Story ring
            if (!story.isCreateStory)
              Positioned(
                top: 10,
                left: 10,
                child: Container(
                  padding: const EdgeInsets.all(3),
                  decoration: const BoxDecoration(
                    color: Colors.blue,
                    shape: BoxShape.circle,
                  ),
                  child: CircleAvatar(
                    radius: 18,
                    backgroundImage: AssetImage(story.image),
                  ),
                ),
              ),

            // Create story button
            if (story.isCreateStory)
              Positioned(
                bottom: 40,
                left: 0,
                right: 0,
                child: Center(
                  child: Container(
                    width: 34,
                    height: 34,
                    decoration: const BoxDecoration(
                      color: Colors.blue,
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(Icons.add, color: Colors.white, size: 24),
                  ),
                ),
              ),

            // Name
            Positioned(
              bottom: 10,
              left: 8,
              right: 8,
              child: Text(
                story.name,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
