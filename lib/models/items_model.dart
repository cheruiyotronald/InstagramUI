class UserDetail {
  String id;
  String image;
  String name;
  String userName;
  int post;
  int followers;
  int following;
  int likes;
  String comment;
  String address;

  UserDetail({
    required this.id,
    required this.image,
    required this.name,
    required this.userName,
    required this.post,
    required this.followers,
    required this.following,
    required this.likes,
    required this.comment,
    required this.address,
  });
}

List<UserDetail> userItems = [
  UserDetail(
      id: "1",
      image: "images/c.png",
      name: "Alice Smith",
      post: 25,
      userName: "alicesmith",
      followers: 8050,
      following: 100,
      likes: 1298,
      comment: "so beautiful",
      address: "fashion-designer, London, UK"),
  UserDetail(
      id: "2",
      image: "images/a.png",
      name: "Wesly Rono",
      userName: "wesly.Rono",
      post: 245,
      followers: 750,
      following: 715,
      likes: 2875,
      comment: "wow, I like it",
      address: "Designer, Eldoret"),
  UserDetail(
      id: "3",
      image: "images/b.png",
      name: "Kip Maxwell",
      userName: "kipmaxwell",
      post: 245,
      followers: 850,
      following: 1,
      likes: 2234,
      comment: "in heaven",
      address: "Programmer, Nairobi"),
  UserDetail(
      id: "4",
      image: "images/d.png",
      name: "miss beauty",
      userName: "mis_beauty",
      post: 245,
      followers: 7850,
      following: 230,
      likes: 2,
      comment: "beautiful",
      address: "Flutter developer, Nyeri"),
  UserDetail(
      id: "5",
      image: "images/e.png",
      name: "Steve Mweupe",
      userName: "steve_mweupe",
      post: 245,
      followers: 780,
      following: 1236,
      likes: 7809,
      comment: "you are a don",
      address: "manager, Mombasa"),
  UserDetail(
      id: "6",
      image: "images/f.png",
      name: "Mos",
      userName: 'mos',
      post: 245,
      followers: 705,
      following: 10,
      likes: 5555,
      comment: "On my way",
      address: "Youtuber, Juja"),
];
