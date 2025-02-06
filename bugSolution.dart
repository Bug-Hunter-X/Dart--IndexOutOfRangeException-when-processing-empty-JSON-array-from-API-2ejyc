```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final data = jsonDecode(response.body) as List<dynamic>;

      // Check if the list is empty before accessing elements
      if (data.isNotEmpty) {
        final firstItem = data[0];
        print('First item: $firstItem');
      } else {
        print('API returned an empty array.');
        //Handle the empty array case
      }
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    print('Error fetching data: $e');
    // Handle the error appropriately, perhaps retry or display an error message
  }
}
```