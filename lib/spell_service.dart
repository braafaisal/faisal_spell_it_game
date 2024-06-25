// import 'dart:convert';
import 'dart:math';
// import 'package:http/http.dart' as http;

class SpellService {
  // final String apiUrl = "https://ms.akashrajpurohit.com/api/spell-it";

  Future<List<String>> fetchWords() async {
    try {
      // Mocking data for testing
      List<String> mockData = [
        "apple",
        "banana",
        "cherry",
        "date",
        "bear",
        "fig",
        "play",
        "study",
        "kiwi",
        "lemon",
        "mango",
        "understand",
        "orange",
        "pay",
        "pray",
        "go",
        "easy",
        "cat",
        "dog",
        "pen"
      ];

      // Shuffle and select the first 10 words
      mockData.shuffle(Random());
      return mockData.take(10).toList();

      // Uncomment the following lines when you have the correct API endpoint
      /*
      final response = await http.get(Uri.parse(apiUrl));
      print('API Response: ${response.body}'); // Log the response body

      if (response.statusCode == 200) {
        List<dynamic> data = json.decode(response.body);
        data.shuffle(Random());
        return data.map((word) => word.toString()).take(10).toList();
      } else {
        throw Exception('Failed to load words: ${response.reasonPhrase}');
      }
      */
    } catch (e) {
      print('Exception: $e'); // Log any exception
      throw Exception('Failed to load words: $e');
    }
  }
}
