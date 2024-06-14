abstract class Assets {
  const Assets._();

  // ignore: library_private_types_in_public_api
  static _Icons get icons => const _Icons();

  // ignore: library_private_types_in_public_api
  static _Images get images => const _Images();
  static _Lottie get lottie => const _Lottie();

  // ignore: library_private_types_in_public_api
  // static _ChannelsList get channelList =>> _ChannelsList();

  // ignore: library_private_types_in_public_api
  // static _Videos get videos => const _Videos();

// ignore: library_private_types_in_public_api
  static _Audios get audios => const _Audios();
}

abstract class _AssetsHolder {
  final String basePath;

  const _AssetsHolder(this.basePath);
}

class _Icons extends _AssetsHolder {
  const _Icons() : super('assets/icons');

  String get left => '$basePath/arrow-left.svg';
  String get begin => '$basePath/begin.svg';
  String get call => '$basePath/call.svg';
  String get camera => '$basePath/camera.svg';
  String get chervonDown => '$basePath/chervonDown.svg';
  String get delTrainer => '$basePath/del_trainer.svg';
  String get goTraining => '$basePath/go_training.svg';
  String get microphone => '$basePath/Microphone.svg';
  String get plus => '$basePath/plus.svg';
  String get receipt => '$basePath/receipt.svg';
  String get search => '$basePath/Search.svg';
  String get trash => '$basePath/trash.svg';
  String get user => '$basePath/user.svg';
  String get video => '$basePath/video.svg';
  String get share => '$basePath/share.svg';
  String get heart => '$basePath/heart.svg';
}

class _Images extends _AssetsHolder {
  const _Images() : super('assets/images');

  String get trainer => '$basePath/trainer.png';
}

class _Lottie extends _AssetsHolder {
  const _Lottie() : super('assets/lottie');
  String get succes => "$basePath/succes.json";
}

class _Audios extends _AssetsHolder {
  const _Audios() : super('audio');

  String get one => "audio/1.mp3";
}
