import 'package:google_generative_ai/google_generative_ai.dart';

class BackendService {
  final model = GenerativeModel(model: 'gemini-2.0-flash', apiKey: 'AIzaSyC0kkVIT7v0MFNBWSPbK1PhpTgc95VArgE');

  // Simplified method to get the response from the Gemini model
  Future<String> getResponse(String userMessage) async {
    try {
      final response = await model.generateContent([Content.text(userMessage)]);
      return response.text ?? "No response from Gemini";
    } catch (e) {
      return "Error: ${e.toString()}";
    }
  }
}
