@override
Widget build(BuildContext context) {
  var metadataRecord = document.getMetadata();

  return Scaffold(
    appBar: AppBar(
      title: Text(metadataRecord.title),
    ),
    body: Column(
      children: [
        Center(
          child: Text(
            'Last modified ${metadataRecord.modified}',
          ),
        ),
      ],
    ),
  );
}
