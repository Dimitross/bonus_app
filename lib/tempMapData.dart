import 'dart:convert';

class DBData {
  getNovelty() {
    return json.encode({
      "id": 1,
      "name": "Cinema World",
      "backpic": "assets/novelty/File1.jpg",
      "logo": "assets/logos/cinemaworld.jpg",
      "category": ""
    });
  }
}
