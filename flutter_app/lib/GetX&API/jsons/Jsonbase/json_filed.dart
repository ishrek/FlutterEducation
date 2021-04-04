class JSONField {
  //Specify the parse field name
  final String name;

  //Specify the time resolution format
  final String format;

  //Whether to participate in toJson
  final bool serialize;

  //Whether to participate in fromMap
  final bool deserialize;

  const JSONField({this.name, this.format, this.serialize, this.deserialize});
}