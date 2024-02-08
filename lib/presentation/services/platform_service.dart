import 'dart:io';

enum PlatformOS { android, iOS }

abstract class PlatformService {
  PlatformOS get os;
}

class PlatformServiceImpl implements PlatformService {
  @override
  PlatformOS get os {
    return Platform.isIOS ? PlatformOS.iOS : PlatformOS.android;
  }
}
