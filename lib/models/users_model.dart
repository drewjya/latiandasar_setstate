// ignore_for_file: non_constant_identifier_names

import 'dart:convert';

class UserModel {
  final String login;
  final int id;
  final String node_id;
  final String avatar_url;
  final String gravatar_id;
  final String url;
  final String html_url;
  final String followers_url;
  final String following_url;
  final String gists_url;
  final String starred_url;
  final String subscriptions_url;
  final String organizations_url;
  final String repos_url;
  final String events_url;
  final String received_events_url;
  final String type;
  final bool site_admin;
  UserModel({
    required this.login,
    required this.id,
    required this.node_id,
    required this.avatar_url,
    required this.gravatar_id,
    required this.url,
    required this.html_url,
    required this.followers_url,
    required this.following_url,
    required this.gists_url,
    required this.starred_url,
    required this.subscriptions_url,
    required this.organizations_url,
    required this.repos_url,
    required this.events_url,
    required this.received_events_url,
    required this.type,
    required this.site_admin,
  });

  UserModel copyWith({
    String? login,
    int? id,
    String? node_id,
    String? avatar_url,
    String? gravatar_id,
    String? url,
    String? html_url,
    String? followers_url,
    String? following_url,
    String? gists_url,
    String? starred_url,
    String? subscriptions_url,
    String? organizations_url,
    String? repos_url,
    String? events_url,
    String? received_events_url,
    String? type,
    bool? site_admin,
  }) {
    return UserModel(
      login: login ?? this.login,
      id: id ?? this.id,
      node_id: node_id ?? this.node_id,
      avatar_url: avatar_url ?? this.avatar_url,
      gravatar_id: gravatar_id ?? this.gravatar_id,
      url: url ?? this.url,
      html_url: html_url ?? this.html_url,
      followers_url: followers_url ?? this.followers_url,
      following_url: following_url ?? this.following_url,
      gists_url: gists_url ?? this.gists_url,
      starred_url: starred_url ?? this.starred_url,
      subscriptions_url: subscriptions_url ?? this.subscriptions_url,
      organizations_url: organizations_url ?? this.organizations_url,
      repos_url: repos_url ?? this.repos_url,
      events_url: events_url ?? this.events_url,
      received_events_url: received_events_url ?? this.received_events_url,
      type: type ?? this.type,
      site_admin: site_admin ?? this.site_admin,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'login': login,
      'id': id,
      'node_id': node_id,
      'avatar_url': avatar_url,
      'gravatar_id': gravatar_id,
      'url': url,
      'html_url': html_url,
      'followers_url': followers_url,
      'following_url': following_url,
      'gists_url': gists_url,
      'starred_url': starred_url,
      'subscriptions_url': subscriptions_url,
      'organizations_url': organizations_url,
      'repos_url': repos_url,
      'events_url': events_url,
      'received_events_url': received_events_url,
      'type': type,
      'site_admin': site_admin,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      login: map['login'] ?? '',
      id: map['id']?.toInt() ?? 0,
      node_id: map['node_id'] ?? '',
      avatar_url: map['avatar_url'] ?? '',
      gravatar_id: map['gravatar_id'] ?? '',
      url: map['url'] ?? '',
      html_url: map['html_url'] ?? '',
      followers_url: map['followers_url'] ?? '',
      following_url: map['following_url'] ?? '',
      gists_url: map['gists_url'] ?? '',
      starred_url: map['starred_url'] ?? '',
      subscriptions_url: map['subscriptions_url'] ?? '',
      organizations_url: map['organizations_url'] ?? '',
      repos_url: map['repos_url'] ?? '',
      events_url: map['events_url'] ?? '',
      received_events_url: map['received_events_url'] ?? '',
      type: map['type'] ?? '',
      site_admin: map['site_admin'] ?? false,
    );
  }

  String toJson() => json.encode(toMap());

  factory UserModel.fromJson(String source) =>
      UserModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'UserModel(login: $login, id: $id, node_id: $node_id, avatar_url: $avatar_url, gravatar_id: $gravatar_id, url: $url, html_url: $html_url, followers_url: $followers_url, following_url: $following_url, gists_url: $gists_url, starred_url: $starred_url, subscriptions_url: $subscriptions_url, organizations_url: $organizations_url, repos_url: $repos_url, events_url: $events_url, received_events_url: $received_events_url, type: $type, site_admin: $site_admin)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is UserModel &&
        other.login == login &&
        other.id == id &&
        other.node_id == node_id &&
        other.avatar_url == avatar_url &&
        other.gravatar_id == gravatar_id &&
        other.url == url &&
        other.html_url == html_url &&
        other.followers_url == followers_url &&
        other.following_url == following_url &&
        other.gists_url == gists_url &&
        other.starred_url == starred_url &&
        other.subscriptions_url == subscriptions_url &&
        other.organizations_url == organizations_url &&
        other.repos_url == repos_url &&
        other.events_url == events_url &&
        other.received_events_url == received_events_url &&
        other.type == type &&
        other.site_admin == site_admin;
  }

  @override
  int get hashCode {
    return login.hashCode ^
        id.hashCode ^
        node_id.hashCode ^
        avatar_url.hashCode ^
        gravatar_id.hashCode ^
        url.hashCode ^
        html_url.hashCode ^
        followers_url.hashCode ^
        following_url.hashCode ^
        gists_url.hashCode ^
        starred_url.hashCode ^
        subscriptions_url.hashCode ^
        organizations_url.hashCode ^
        repos_url.hashCode ^
        events_url.hashCode ^
        received_events_url.hashCode ^
        type.hashCode ^
        site_admin.hashCode;
  }
}

List<UserModel> data = [
  {
    "login": "mojombo",
    "id": 1,
    "node_id": "MDQ6VXNlcjE=",
    "avatar_url": "https://avatars.githubusercontent.com/u/1?v=4",
    "gravatar_id": "",
    "url": "https://api.github.com/users/mojombo",
    "html_url": "https://github.com/mojombo",
    "followers_url": "https://api.github.com/users/mojombo/followers",
    "following_url":
        "https://api.github.com/users/mojombo/following{/other_user}",
    "gists_url": "https://api.github.com/users/mojombo/gists{/gist_id}",
    "starred_url":
        "https://api.github.com/users/mojombo/starred{/owner}{/repo}",
    "subscriptions_url": "https://api.github.com/users/mojombo/subscriptions",
    "organizations_url": "https://api.github.com/users/mojombo/orgs",
    "repos_url": "https://api.github.com/users/mojombo/repos",
    "events_url": "https://api.github.com/users/mojombo/events{/privacy}",
    "received_events_url":
        "https://api.github.com/users/mojombo/received_events",
    "type": "User",
    "site_admin": false
  },
  {
    "login": "defunkt",
    "id": 2,
    "node_id": "MDQ6VXNlcjI=",
    "avatar_url": "https://avatars.githubusercontent.com/u/2?v=4",
    "gravatar_id": "",
    "url": "https://api.github.com/users/defunkt",
    "html_url": "https://github.com/defunkt",
    "followers_url": "https://api.github.com/users/defunkt/followers",
    "following_url":
        "https://api.github.com/users/defunkt/following{/other_user}",
    "gists_url": "https://api.github.com/users/defunkt/gists{/gist_id}",
    "starred_url":
        "https://api.github.com/users/defunkt/starred{/owner}{/repo}",
    "subscriptions_url": "https://api.github.com/users/defunkt/subscriptions",
    "organizations_url": "https://api.github.com/users/defunkt/orgs",
    "repos_url": "https://api.github.com/users/defunkt/repos",
    "events_url": "https://api.github.com/users/defunkt/events{/privacy}",
    "received_events_url":
        "https://api.github.com/users/defunkt/received_events",
    "type": "User",
    "site_admin": false
  },
  {
    "login": "pjhyett",
    "id": 3,
    "node_id": "MDQ6VXNlcjM=",
    "avatar_url": "https://avatars.githubusercontent.com/u/3?v=4",
    "gravatar_id": "",
    "url": "https://api.github.com/users/pjhyett",
    "html_url": "https://github.com/pjhyett",
    "followers_url": "https://api.github.com/users/pjhyett/followers",
    "following_url":
        "https://api.github.com/users/pjhyett/following{/other_user}",
    "gists_url": "https://api.github.com/users/pjhyett/gists{/gist_id}",
    "starred_url":
        "https://api.github.com/users/pjhyett/starred{/owner}{/repo}",
    "subscriptions_url": "https://api.github.com/users/pjhyett/subscriptions",
    "organizations_url": "https://api.github.com/users/pjhyett/orgs",
    "repos_url": "https://api.github.com/users/pjhyett/repos",
    "events_url": "https://api.github.com/users/pjhyett/events{/privacy}",
    "received_events_url":
        "https://api.github.com/users/pjhyett/received_events",
    "type": "User",
    "site_admin": false
  },
  {
    "login": "wycats",
    "id": 4,
    "node_id": "MDQ6VXNlcjQ=",
    "avatar_url": "https://avatars.githubusercontent.com/u/4?v=4",
    "gravatar_id": "",
    "url": "https://api.github.com/users/wycats",
    "html_url": "https://github.com/wycats",
    "followers_url": "https://api.github.com/users/wycats/followers",
    "following_url":
        "https://api.github.com/users/wycats/following{/other_user}",
    "gists_url": "https://api.github.com/users/wycats/gists{/gist_id}",
    "starred_url": "https://api.github.com/users/wycats/starred{/owner}{/repo}",
    "subscriptions_url": "https://api.github.com/users/wycats/subscriptions",
    "organizations_url": "https://api.github.com/users/wycats/orgs",
    "repos_url": "https://api.github.com/users/wycats/repos",
    "events_url": "https://api.github.com/users/wycats/events{/privacy}",
    "received_events_url":
        "https://api.github.com/users/wycats/received_events",
    "type": "User",
    "site_admin": false
  }
].map((e) => UserModel.fromMap(e)).toList();
