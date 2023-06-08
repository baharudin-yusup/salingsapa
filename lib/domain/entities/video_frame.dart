import 'dart:typed_data';

class SalingsapaVideoFrame {
  final List<Uint8List> buffer;

  final int width;
  final int height;

  SalingsapaVideoFrame(this.buffer, this.width, this.height);
}

class PhotoSnapshot {
  final String filePath;

  PhotoSnapshot(this.filePath);
}
