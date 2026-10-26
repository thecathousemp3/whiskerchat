// SPDX-FileCopyrightText: 2019-Present Christian Kußowski
// SPDX-FileCopyrightText: 2019-Present Contributors to FluffyChat
//
// SPDX-License-Identifier: AGPL-3.0-or-later

abstract class AppConfig {
  static const double messageFontSize = 16.0;
  static const bool allowOtherHomeservers = true;
  static const bool enableRegistration = true;
  static const bool hideTypingUsernames = false;

  static const String inviteLinkPrefix = 'https://matrix.to/#/';
  static const String deepLinkPrefix = 'im.fluffychat://chat/';
  static const String schemePrefix = 'matrix:';
  static const String pushNotificationsChannelId = 'fluffychat_push';
  static const String pushNotificationsAppId = 'chat.fluffy.fluffychat';
  static const double borderRadius = 4.0;
  static const double spaceBorderRadius = 3.0;
  static const double columnWidth = 360.0;

  static const String enablePushTutorial =
      'https://github.com/thecathousemp3/whiskerchat/issues';
  static const String encryptionTutorial =
      'https://github.com/thecathousemp3/whiskerchat/issues';
  static const String howDoIGetStickersTutorial =
      'https://github.com/thecathousemp3/whiskerchat/issues';
  static const String appId = 'im.fluffychat.app';
  static const String appOpenUrlScheme = 'im.fluffychat';
  static const String appSsoUrlScheme = 'im.fluffychat.auth';
  // Identifies the notification activation callback on Windows. Never change!
  static const String windowsNotificationGuid =
      '4894dfda-c70a-4ebc-b139-acae55f3988d';

  static const String sourceCodeUrl =
      'https://github.com/thecathousemp3/whiskerchat';
  static const String supportUrl =
      'https://github.com/thecathousemp3/whiskerchat/issues';
  static const String changelogUrl =
      'https://github.com/thecathousemp3/whiskerchat/blob/main/CHANGELOG.md';
  static const String latestReleaseApiUrl =
      'https://api.github.com/repos/thecathousemp3/whiskerchat/releases/latest';
  static const String helpUrl =
      'https://github.com/thecathousemp3/whiskerchat/issues';

  static const Set<String> defaultReactions = {'👍', '❤️', '😂', '😮', '😢'};

  static final Uri newIssueUrl = Uri(
    scheme: 'https',
    host: 'github.com',
    path: '/thecathousemp3/whiskerchat/issues/new',
  );

  static final Uri homeserverList = Uri(
    scheme: 'https',
    host: 'raw.githubusercontent.com',
    path: 'thecathousemp3/whiskerchat/refs/heads/main/recommended_homeservers.json',
  );

  static final Uri crashReportEndpoint = Uri(
    scheme: 'https',
    host: 'crash.fluffy.chat',
  );

  static const String mainIsolatePortName = 'main_isolate';
  static const String pushIsolatePortName = 'push_isolate';
  static const String pushHelperCrashReportKey = 'push_helper_crash_report';

  static const String vodozemacVersion = '0.8.1';
}
