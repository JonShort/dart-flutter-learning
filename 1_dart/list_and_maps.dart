void main() {
  List<dynamic> exampleList = [1, false, 3, 'hello'];

  print(exampleList);
  print(exampleList[0]);
  print(exampleList[1]);

  print(exampleList.length);
  print(exampleList.first);
  print(exampleList.last);

  print(exampleList.isEmpty);
  print(exampleList.isNotEmpty);

  exampleList.add('value');
  print(exampleList);

  exampleList.addAll(['a', 'b', 'c']);
  print(exampleList);

  Map<String, String> exampleMap = {
    'key1': 'value1',
    'key2': 'key2',
  };

  print(exampleMap);
  print(exampleMap['key1']);
  print(exampleMap.length);
  print(exampleMap.keys);
  print(exampleMap.values);
}
