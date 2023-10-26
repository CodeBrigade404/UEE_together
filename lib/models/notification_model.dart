class Notification {
  final String title;
  final String status;
  final String avatarImage;
  final String level;
  final String dateTime;
  final String message;
  final String partyName;
  final String inviterName;
  final bool isFriendJoinNotify;

  Notification({
    required this.title,
    required this.status,
    required this.avatarImage,
    required this.level,
    required this.dateTime,
    required this.message,
    required this.partyName,
    required this.inviterName,
    required this.isFriendJoinNotify,
  });
}
