import 'package:google_generative_ai/google_generative_ai.dart';

class BackendService {
  final model = GenerativeModel(model: 'gemini-2.0-flash', apiKey: 'AIzaSyCRJuTgQ4_zHlHitR9kxwWA4uQ2bwemW_I');

  Future<String> getResponse(String userMessage) async {
    try {
      final response = await model.generateContent([Content.text(userMessage)]);
      return response.text ?? "No response from Gemini";
    } catch (e) {
      return "Error: ${e.toString()}";
    }
  }
}
