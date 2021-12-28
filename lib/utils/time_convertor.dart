class TimeConvertor {
  static millisecondsToHours(int milliseconds) =>
      ((milliseconds / (1000 * 60 * 60)) % 24);
}
