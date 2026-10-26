<!--
SPDX-FileCopyrightText: 2019-Present Christian Kußowski
SPDX-FileCopyrightText: 2019-Present Contributors to FluffyChat

SPDX-License-Identifier: AGPL-3.0-or-later
-->

# WhiskerChat

> **Your conversations. Your homeserver. Your choice.**
>
> WhiskerChat is an open-source messenger for the decentralized [Matrix](https://matrix.org) network. Chat across homeservers, keep control of where your account lives, and connect with people using other Matrix apps.

[Get WhiskerChat](https://github.com/thecathousemp3/whiskerchat/releases) · [Explore the code](https://github.com/thecathousemp3/whiskerchat) · [Report an issue](https://github.com/thecathousemp3/whiskerchat/issues)

## Made for everyday conversations

| Messages | Communities | Privacy |
| --- | --- | --- |
| Share messages, photos, files, voice notes, and your location. | Join group chats and public rooms, organize with Spaces, and use polls, stickers, and custom emotes. | Use end-to-end encrypted chats, encrypted backups, and cross-signing. |

WhiskerChat also supports voice and video calls, push notifications, message search, and tools for room moderation.

## A more open network

Matrix is an open protocol, not a single chat service. Choose a homeserver, bring your account to conversations across the network, and use WhiskerChat alongside other compatible Matrix clients.

## Get started

Check [Releases](https://github.com/thecathousemp3/whiskerchat/releases) for available downloads. No release is published yet? Build from source using the instructions below.

## Build from source

Install [Flutter](https://flutter.dev) and [Rust](https://www.rust-lang.org/tools/install), then clone the repository:

```sh
git clone https://github.com/thecathousemp3/whiskerchat.git
cd whiskerchat
```

Run the app on a connected device or desktop:

```sh
flutter run
```

### Web

Install the Vodozemac dependency once before running or building for web:

```bash
./scripts/prepare-web.sh
```

Optionally serve a `config.json` alongside the web app to customize settings. See [`config.sample.json`](config.sample.json) for available options.

## Run integration tests

Install Docker and prepare the integration-test environment:

```sh
./scripts/prepare_integration_test.sh
```

Run the tests:

```sh
flutter test integration_test/mobile_test.dart
```

## License

WhiskerChat is free software, licensed under the [GNU AGPL v3.0 or later](LICENSE).