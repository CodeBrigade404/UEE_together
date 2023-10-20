class Artist {
  final String name;
  final String username;
  final String image;
  bool isFollowedByMe;

  Artist(this.name, this.username, this.image, this.isFollowedByMe);
}



final List<Artist> artist = [
  Artist(
      'Elliana Palacios',
      '@elliana',
      'https://images.unsplash.com/photo-1504735217152-b768bcab5ebc?ixlib=rb-0.3.5&q=80&fm=jpg&crop=faces&fit=crop&h=200&w=200&s=0ec8291c3fd2f774a365c8651210a18b',
      false),
  Artist(
      'Kayley Dwyer',
      '@kayley',
      'https://images.unsplash.com/photo-1503467913725-8484b65b0715?ixlib=rb-0.3.5&q=80&fm=jpg&crop=faces&fit=crop&h=200&w=200&s=cf7f82093012c4789841f570933f88e3',
      false),
  Artist(
      'Kathleen Mcdonough',
      '@kathleen',
      'https://images.unsplash.com/photo-1507081323647-4d250478b919?ixlib=rb-0.3.5&q=80&fm=jpg&crop=faces&fit=crop&h=200&w=200&s=b717a6d0469694bbe6400e6bfe45a1da',
      false),
  Artist(
      'Kathleen Dyer',
      '@kathleen',
      'https://images.unsplash.com/photo-1502980426475-b83966705988?ixlib=rb-0.3.5&q=80&fm=jpg&crop=faces&fit=crop&h=200&w=200&s=ddcb7ec744fc63472f2d9e19362aa387',
      false),
  Artist(
      'Mikayla Marquez',
      '@mikayla',
      'https://images.unsplash.com/photo-1541710430735-5fca14c95b00?ixlib=rb-1.2.1&q=80&fm=jpg&crop=faces&fit=crop&h=200&w=200&ixid=eyJhcHBfaWQiOjE3Nzg0fQ',
      false)
];
