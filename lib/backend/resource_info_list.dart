import 'package:sampleapp/backend/resource.dart';

class ResourceInfoList {
  List<Resource> _resourceList;

  ResourceInfoList(
    this._resourceList,
  );

  List<Resource> get resourceList => _resourceList;
}
