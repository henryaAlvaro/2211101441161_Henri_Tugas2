import 'dart:convert';

class Document {
  final Map<String, Object?> _json;

  Document() : _json = jsonDecode(documentJson);

  Map<String, dynamic> get metadata {
    return _json['metadata'] as Map<String, dynamic>;
  }

  String getMetadata() {
    var title = metadata['title'] as String;
    var modified = DateTime.parse(metadata['modified'] as String);

    return 'Title: $title, Modified: $modified';
  }
}

const documentJson = '''
{
  "metadata": {
    "title": "My Document",
    "modified": "2023-05-10"
  },
  "blocks": [
    {
      "type": "h1",
      "text": "Chapter 1"
    },
    {
      "type": "p",
      "text": "Lorem ipsum dolor sit amet, consectetur adipiscing elit."
    },
    {
      "type": "checkbox",
      "checked": false,
      "text": "Learn Dart 3"
    }
  ]
}
''';

void main() {
  var doc = Document();
  print(doc.getMetadata());
}
