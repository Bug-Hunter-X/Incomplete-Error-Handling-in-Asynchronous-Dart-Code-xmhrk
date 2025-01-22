```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Properly handle the response
      final jsonData = jsonDecode(response.body);
      // Process jsonData
    } else {
      // Handle errors properly
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    // This catch block only handles exceptions during the API call.
    // It doesn't handle potential errors in jsonDecode or subsequent processing.
    print('Error fetching data: $e');
    // Consider rethrowing the exception or handling it appropriately based on the app's logic.
  }
}
```