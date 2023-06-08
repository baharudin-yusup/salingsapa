import 'dart:typed_data';

import '../../domain/entities/video_frame.dart';

class SalingsapaVideoFrameModel {
  final Uint8List y;
  final Uint8List u;
  final Uint8List v;

  final int width;
  final int height;

  SalingsapaVideoFrameModel({
    required this.y,
    required this.u,
    required this.v,
    required this.width,
    required this.height,
  });

  factory SalingsapaVideoFrameModel.fromEntity(SalingsapaVideoFrame frame) {
    final y = frame.buffer[0];
    final u = frame.buffer[1];
    final v = frame.buffer[2];
    return SalingsapaVideoFrameModel(
      y: y,
      u: u,
      v: v,
      width: frame.width,
      height: frame.height,
    );
  }
}

extension SalingsapaVideoFrameToModel on SalingsapaVideoFrameModel {
  SalingsapaVideoFrame toEntity() {
    return SalingsapaVideoFrame(
      toBuffer(),
      width,
      height,
    );
  }

  List<Uint8List> toBuffer() {
    return [y, u, v];
  }
}

class PhotoSnapshotModel {
  final String filePath;

  PhotoSnapshotModel(this.filePath);

  factory PhotoSnapshotModel.fromEntity(PhotoSnapshot entity) {
    return PhotoSnapshotModel(entity.filePath);
  }

  PhotoSnapshot toEntity() {
    return PhotoSnapshot(filePath);
  }
}
