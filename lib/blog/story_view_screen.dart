import 'package:flutter/material.dart';

class StoryViewScreen extends StatefulWidget {
  const StoryViewScreen({Key? key}) : super(key: key);

  @override
  State<StoryViewScreen> createState() => _StoryViewScreeState();
}

class _StoryViewScreeState extends State<StoryViewScreen> {
  final controller = StoryController();

  @override
  Widget build(context) {
    List<StoryItem> storyItems = [
      StoryItem.text(
        title: 'Welcome in flutter course',
        backgroundColor: Colors.blueGrey,

      ),
      StoryItem.pageImage(
        url:
        'https://images.unsplash.com/photo-1503023345310-bd7c1de61c7d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8aHVtYW58ZW58MHx8MHx8fDA%3D&w=1000&q=80',
        controller: controller,
        duration: const Duration(seconds: 10),
      ),
      StoryItem.pageImage(
        url:
        'https://cdn1.img.sputnikarabic.ae/img/104012/71/1040127161_0:171:4032:2439_600x0_80_0_0_bf877107b21a7dab90c7ce76c503464d.jpg',
        controller: controller,
      ),
      StoryItem.pageImage(
        url:
        'https://phantom-marca.unidadeditorial.es/e78616bbda77fe6fbc6b1ed5a05d3232/resize/828/f/webp/assets/multimedia/imagenes/2023/06/21/16873550466244.png',
        controller: controller,
      ),
      StoryItem.pageImage(
        url:
        'https://burst.shopifycdn.com/photos/two-customized-cars-rolling-through-a-city-street.jpg',
        controller: controller,
      ),
      StoryItem.pageImage(
        url:
        'https://cdn.pixabay.com/photo/2015/07/08/07/41/tree-835455_640.jpg',
        controller: controller,
      ),
    ]; // your list of stories

    return StoryView(
        storyItems: storyItems,
        controller: controller,
        // pass controller here too
        repeat: true,
        // should the stories be slid forever
        onComplete: () {
          Navigator.pop(context);
        },
        onVerticalSwipeComplete: (direction) {
          if (direction == Direction.down) {
            Navigator.pop(context);
          }
        } // To disable vertical swipe gestures, ignore this parameter.
      // Preferrably for inline story view.
    );
  }
}
