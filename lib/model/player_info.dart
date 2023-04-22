class PlayerInfo {
  final int position;
  final String name;
  final String iconImage;
  final String description;
  // final List<String> images;

  PlayerInfo(
      this.position, {

        required this.name,
        required this.iconImage,
        required this.description,
        // required this.images,
      });
}

List<PlayerInfo> playerInfo = [
  PlayerInfo(1,
      name: 'Ms Dhoni',
      iconImage: 'lib/assets/images/keeper.jpeg',
      description: "CSK",
   ),
  PlayerInfo(2,
      name: 'Virat Kohli',
      iconImage: 'lib/assets/images/batsmen.jpeg',
      description: "RCB",

  ),
  PlayerInfo(3,
      name: 'Md. Siraj',
      iconImage: 'lib/assets/images/bowler.jpeg',
      description: "MI",
  ),
  PlayerInfo(4,
      name: 'Shubhman Gill',
      iconImage: 'lib/assets/images/batsmen.jpeg',
      description: "LSG",
  ),
  PlayerInfo(5,
      name: 'Ishan Kishan',
      iconImage: 'lib/assets/images/keeper.jpeg',
      description:
      "MI",
  ),
 ];