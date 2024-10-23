part of '../normie.dart';

class _Files {
  const _Files();

  String getExtension(String filePath) {
    try {
      return '.${filePath.split('.').last}';
    } catch (e) {
      throw ('Could not retrieve file extension. Error: $e');
    }
  }

  String getMimeType(String filePath) {
    final ext = getExtension(filePath).toLowerCase();
    final mimeTypes = {
      '.txt': 'text/plain',
      '.html': 'text/html',
      '.css': 'text/css',
      '.js': 'application/javascript',
      '.json': 'application/json',
      '.png': 'image/png',
      '.jpg': 'image/jpeg',
      '.jpeg': 'image/jpeg',
      '.gif': 'image/gif',
      '.svg': 'image/svg+xml',
      '.pdf': 'application/pdf',
      '.doc': 'application/msword',
      '.docx':
          'application/vnd.openxmlformats-officedocument.wordprocessingml.document',
      '.xls': 'application/vnd.ms-excel',
      '.xlsx':
          'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet',
      '.zip': 'application/zip',
      '.mp3': 'audio/mpeg',
      '.mp4': 'video/mp4',
    };

    return mimeTypes[ext] ?? 'application/octet-stream';
  }

  bool isImage(String filePath) {
    final mimeType = getMimeType(filePath);
    return mimeType.startsWith('image/');
  }

  bool isVideo(String filePath) {
    final mimeType = getMimeType(filePath);
    return mimeType.startsWith('video/');
  }

  bool isAudio(String filePath) {
    final mimeType = getMimeType(filePath);
    return mimeType.startsWith('audio/');
  }

  bool isDocument(String filePath) {
    final mimeType = getMimeType(filePath);
    return mimeType.contains('document') ||
        mimeType.contains('pdf') ||
        mimeType.contains('msword');
  }
}
