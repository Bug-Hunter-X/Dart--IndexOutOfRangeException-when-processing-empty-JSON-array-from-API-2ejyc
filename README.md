# Dart: Handling Empty JSON Arrays from APIs

This repository demonstrates a common error in Dart when handling JSON arrays returned from APIs: the `IndexOutOfRangeException`.  The `bug.dart` file shows code that fails when an API returns an empty array, and `bugSolution.dart` provides a corrected version.

The error occurs because the code attempts to access the first element (`data[0]`) of the array before checking if the array is empty.  If the array is empty, this will throw an exception.

The solution involves adding a check to ensure the array is not empty before accessing its elements.