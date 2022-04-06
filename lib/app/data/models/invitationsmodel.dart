class InvitationUsers {
  final String name;
  final String profession;
  final int mututalFriends;
  final String time;
  final String imageUrl;

  InvitationUsers(
      {required this.name,
      required this.profession,
      required this.mututalFriends,
      required this.time,
      required this.imageUrl});
}

List<InvitationUsers> invitationUsers = [
  //1
  InvitationUsers(
    name: "Vikas Gupta",
    profession: "Junior UI/UX designer",
    mututalFriends: 11,
    imageUrl: "images/mens/men1.jpeg",
    time: '',
  ),

  //2
  InvitationUsers(
      name: "Anjali Tiwari",
      profession: "Software Engineer",
      mututalFriends: 11,
      imageUrl: "images/womens/women4.jpg",
      time: ''),

  //3
  InvitationUsers(
      name: "Shreyansh Gupta",
      profession: "Graphic Designer",
      mututalFriends: 11,
      imageUrl: "images/mens/men2.jpeg",
      time: ''),

  //4
  InvitationUsers(
      name: "Niharika Agarwal",
      profession: "Data Scientis",
      mututalFriends: 11,
      imageUrl: "images/womens/women8.jpg",
      time: ''),
  //5
  InvitationUsers(
      name: "Prashant Jain",
      profession: "Product Manager",
      mututalFriends: 11,
      imageUrl: "images/mens/men3.jpg",
      time: ''),

//6
  InvitationUsers(
      name: "Nandini Maheswari",
      profession: "FLutter Developer",
      mututalFriends: 11,
      imageUrl: "images/womens/women3.jpg",
      time: ''),
  //7
  InvitationUsers(
      name: "Harsh Trivedi",
      profession: "UI/UX designer",
      mututalFriends: 11,
      imageUrl: "images/mens/men4.jpg",
      time: ''),

  //8
  InvitationUsers(
      name: "Harshita Mathur",
      profession: "Junior(React) Frontend Developer",
      mututalFriends: 11,
      imageUrl: "images/womens/women4.jpg",
      time: ''),

  //9
  InvitationUsers(
      name: "Purnima Jain",
      imageUrl: "images/womens/women6.jpg",
      profession: "Android Developer",
      mututalFriends: 11,
      time: ''),

//10
  InvitationUsers(
      name: "Agustya Rajpurohit",
      profession: "Engineering Student",
      mututalFriends: 11,
      imageUrl: "images/mens/men8.jpg",
      time: ''),
];
