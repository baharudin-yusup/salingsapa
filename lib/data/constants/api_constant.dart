class ApiConstant {
  static String createRoom() => '/rooms';

  static String joinRoom(String roomId) => '/rooms/$roomId/join';

  static String leaveRoom(String roomId) => '/rooms/$roomId/leave';

  static String modifyRoom(String roomId) => '/rooms/$roomId';

  static String updateUserProfile() => '/users/me';

  static String acceptInvitation(String invitationId) =>
      '/invitations/$invitationId/accept';

  static String rejectInvitation(String invitationId) =>
      '/invitations/$invitationId/reject';
}
