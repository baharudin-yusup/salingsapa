class ApiConstant {
  static String createRoom() => '/rooms';
  static String joinRoom(String roomId) => '/rooms/$roomId/join';
  static String leaveRoom(String roomId) => '/rooms/$roomId/leave';
}
