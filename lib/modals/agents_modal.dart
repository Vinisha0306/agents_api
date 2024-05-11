class Agents {
  String uuid;
  String displayName;
  String description;
  String developerName;
  dynamic characterTags;
  String displayIcon;
  String displayIconSmall;
  String bustPortrait;
  String fullPortrait;
  String fullPortraitV2;
  String killfeedPortrait;
  String background;
  List<String> backgroundGradientColors;
  String assetPath;
  bool isFullPortraitRightFacing;
  bool isPlayableCharacter;
  bool isAvailableForTest;
  bool isBaseContent;
  Role role;
  dynamic recruitmentData;
  List<Ability> abilities;
  dynamic voiceLine;

  Agents({
    required this.uuid,
    required this.displayName,
    required this.description,
    required this.developerName,
    required this.characterTags,
    required this.displayIcon,
    required this.displayIconSmall,
    required this.bustPortrait,
    required this.fullPortrait,
    required this.fullPortraitV2,
    required this.killfeedPortrait,
    required this.background,
    required this.backgroundGradientColors,
    required this.assetPath,
    required this.isFullPortraitRightFacing,
    required this.isPlayableCharacter,
    required this.isAvailableForTest,
    required this.isBaseContent,
    required this.role,
    required this.recruitmentData,
    required this.abilities,
    required this.voiceLine,
  });

  factory Agents.fromJson(Map<String, dynamic> json) => Agents(
        uuid: json["uuid"] ?? "0",
        displayName: json["displayName"] ?? "0",
        description: json["description"] ?? "0",
        developerName: json["developerName"] ?? "0",
        characterTags: json["characterTags"] ?? "0",
        displayIcon: json["displayIcon"] ?? "0",
        displayIconSmall: json["displayIconSmall"] ?? "0",
        bustPortrait: json["bustPortrait"] ?? "0",
        fullPortrait: json["fullPortrait"] ?? "0",
        fullPortraitV2: json["fullPortraitV2"] ?? "0",
        killfeedPortrait: json["killfeedPortrait"] ?? "0",
        background: json["background"] ?? "0",
        backgroundGradientColors:
            List<String>.from(json["backgroundGradientColors"].map((x) => x)) ??
                [],
        assetPath: json["assetPath"] ?? "0",
        isFullPortraitRightFacing: json["isFullPortraitRightFacing"] ?? "0",
        isPlayableCharacter: json["isPlayableCharacter"] ?? "0",
        isAvailableForTest: json["isAvailableForTest"] ?? "0",
        isBaseContent: json["isBaseContent"] ?? "0",
        role: Role.fromJson(json["role"] ?? {}),
        recruitmentData: json["recruitmentData"] ?? "0",
        abilities: List<Ability>.from(
                json["abilities"].map((x) => Ability.fromJson(x))) ??
            [],
        voiceLine: json["voiceLine"] ?? "0",
      );

  Map<String, dynamic> toJson() => {
        "uuid": uuid,
        "displayName": displayName,
        "description": description,
        "developerName": developerName,
        "characterTags": characterTags,
        "displayIcon": displayIcon,
        "displayIconSmall": displayIconSmall,
        "bustPortrait": bustPortrait,
        "fullPortrait": fullPortrait,
        "fullPortraitV2": fullPortraitV2,
        "killfeedPortrait": killfeedPortrait,
        "background": background,
        "backgroundGradientColors":
            List<dynamic>.from(backgroundGradientColors.map((x) => x)),
        "assetPath": assetPath,
        "isFullPortraitRightFacing": isFullPortraitRightFacing,
        "isPlayableCharacter": isPlayableCharacter,
        "isAvailableForTest": isAvailableForTest,
        "isBaseContent": isBaseContent,
        "role": role.toJson(),
        "recruitmentData": recruitmentData,
        "abilities": List<dynamic>.from(abilities.map((x) => x.toJson())),
        "voiceLine": voiceLine,
      };
}

class Ability {
  String slot;
  String displayName;
  String description;
  String displayIcon;

  Ability({
    required this.slot,
    required this.displayName,
    required this.description,
    required this.displayIcon,
  });

  factory Ability.fromJson(Map<String, dynamic> json) => Ability(
        slot: json["slot"] ?? "0",
        displayName: json["displayName"] ?? "0",
        description: json["description"] ?? "0",
        displayIcon: json["displayIcon"] ?? "0",
      );

  Map<String, dynamic> toJson() => {
        "slot": slot,
        "displayName": displayName,
        "description": description,
        "displayIcon": displayIcon,
      };
}

class Role {
  String uuid;
  String displayName;
  String description;
  String displayIcon;
  String assetPath;

  Role({
    required this.uuid,
    required this.displayName,
    required this.description,
    required this.displayIcon,
    required this.assetPath,
  });

  factory Role.fromJson(Map<String, dynamic> json) => Role(
        uuid: json["uuid"] ?? "0",
        displayName: json["displayName"] ?? "0",
        description: json["description"] ?? "0",
        displayIcon: json["displayIcon"] ?? "0",
        assetPath: json["assetPath"] ?? "0",
      );

  Map<String, dynamic> toJson() => {
        "uuid": uuid,
        "displayName": displayName,
        "description": description,
        "displayIcon": displayIcon,
        "assetPath": assetPath,
      };
}
