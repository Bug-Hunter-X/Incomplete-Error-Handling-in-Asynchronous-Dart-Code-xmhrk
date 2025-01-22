```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      try {
        final jsonData = jsonDecode(response.body);
        // Process jsonData
      } on FormatException catch (e) {
        print('Error: Invalid JSON format: $e');
        // Handle JSON format exception appropriately.
      } catch (e) {
        print('Error processing data: $e');
        // Handle other potential errors during data processing.
      }
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    print('Error fetching or processing data: $e');
    // Consider rethrowing the exception or implementing more sophisticated error handling
  }
}
```