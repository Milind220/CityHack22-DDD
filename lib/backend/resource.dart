class Resource {
  final String _resourceLink;
  final String _title;
  final String _description;

  Resource(
    this._resourceLink,
    this._title,
    this._description,
  );

  String get resourceLink => _resourceLink;
  String get title => _title;
  String get description => _description;
}
