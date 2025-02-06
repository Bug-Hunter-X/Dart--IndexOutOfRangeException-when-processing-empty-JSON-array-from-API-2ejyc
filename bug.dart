```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Assuming the response body is a JSON list
      final data = jsonDecode(response.body) as List<dynamic>;

      // This is where the bug happens if the server returns an empty list([])
      final firstItem = data[0]; // This will throw an error if data is empty

      // Process the first item
      print('First item: $firstItem');
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    print('Error fetching data: $e');
    // Handle the error appropriately, perhaps retry or display an error message
  }
}
```