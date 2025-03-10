enum HomeTab {
  all,
  writing,
  creative,
  business,
  socialMedia,
  developer,
  personal,
  other
}

extension HomeTabX on HomeTab {
  String get rawValue {
    switch (this) {
      case HomeTab.all:
        return "All";
      case HomeTab.writing:
        return "Writing";
      case HomeTab.creative:
        return "Creative";
      case HomeTab.business:
        return "business";
      case HomeTab.socialMedia:
        return "socialMedia";
      case HomeTab.developer:
        return "developer";
      case HomeTab.personal:
        return "personal";
      case HomeTab.other:
        return "other";
    }
  }
}

enum NotifiTab {
  all,
  read,
  unread,
}

extension NotifiTabX on NotifiTab {
  String get rawValue {
    switch (this) {
      case NotifiTab.all:
        return "All";
      case NotifiTab.read:
        return "Read";
      case NotifiTab.unread:
        return "Rnread";
    }
  }
}

enum AccountTab {
  recipe,
  videos,
  tag,
}

extension AccountTabX on AccountTab {
  String get rawValue {
    switch (this) {
      case AccountTab.recipe:
        return "Recipe";
      case AccountTab.videos:
        return "Videos";
      case AccountTab.tag:
        return "Tag";
    }
  }
}
