# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user = User.find(1)

tournament = user.tournaments.create(event: "World Championship", location: "Reykjavik, Iceland", date: "July 1972")

tournament.games.create(round: 1, white: "Boris Spassky", white_rating: 2660, black: "Robert James Fischer", black_rating: 2785, pgn: '[Event "Reykjavik WCh"]
[Site "Reykjavik WCh"]
[Date "1972.07.11"]
[EventDate "?"]
[Round "1"]
[Result "1-0"]
[White "Boris Spassky"]
[Black "Robert James Fischer"]
[ECO "E56"]
[WhiteElo "?"]
[BlackElo "?"]
[PlyCount "111"]

1. d4 Nf6 2. c4 e6 3. Nf3 d5 4. Nc3 Bb4 5. e3 O-O 6. Bd3 c5
7. O-O Nc6 8. a3 Ba5 9. Ne2 dxc4 10. Bxc4 Bb6 11. dxc5 Qxd1
12. Rxd1 Bxc5 13. b4 Be7 14. Bb2 Bd7 15. Rac1 Rfd8 16. Ned4
Nxd4 17. Nxd4 Ba4 18. Bb3 Bxb3 19. Nxb3 Rxd1+ 20. Rxd1 Rc8
21. Kf1 Kf8 22. Ke2 Ne4 23. Rc1 Rxc1 24. Bxc1 f6 25. Na5 Nd6
26. Kd3 Bd8 27. Nc4 Bc7 28. Nxd6 Bxd6 29. b5 Bxh2 30. g3 h5
31. Ke2 h4 32. Kf3 Ke7 33. Kg2 hxg3 34. fxg3 Bxg3 35. Kxg3 Kd6
36. a4 Kd5 37. Ba3 Ke4 38. Bc5 a6 39. b6 f5 40. Kh4 f4
41. exf4 Kxf4 42. Kh5 Kf5 43. Be3 Ke4 44. Bf2 Kf5 45. Bh4 e5
46. Bg5 e4 47. Be3 Kf6 48. Kg4 Ke5 49. Kg5 Kd5 50. Kf5 a5
51. Bf2 g5 52. Kxg5 Kc4 53. Kf5 Kb4 54. Kxe4 Kxa4 55. Kd5 Kb5
56. Kd6 1-0')

tournament.games.create(round: 2, white: "Robert James Fischer", white_rating: 2785, black: "Boris Spassky", black_rating: 2660, pgn: '[Event "Reykjavik WCh"]
[Site "Reykjavik WCh"]
[Date "1972.07.13"]
[EventDate "?"]
[Round "2"]
[Result "0-1"]
[White "Robert James Fischer"]
[Black "Boris Spassky"]
[ECO "A00"]
[WhiteElo "?"]
[BlackElo "?"]
[PlyCount "0"]

0-1')

tournament.games.create(round: 3, white: "Boris Spassky", white_rating: 2660, black: "Robert James Fischer", black_rating: 2785, pgn: '[Event "Reykjavik-Wch"]
[Site "Reykjavik-Wch"]
[Date "1972.07.16"]
[EventDate "?"]
[Round "3"]
[Result "0-1"]
[White "Boris Spassky"]
[Black "Robert James Fischer"]
[ECO "A61"]
[WhiteElo "?"]
[BlackElo "?"]
[PlyCount "82"]

1. d4 Nf6 2. c4 e6 3. Nf3 c5 4. d5 exd5 5. cxd5 d6 6. Nc3 g6
7. Nd2 Nbd7 8. e4 Bg7 9. Be2 O-O 10. O-O Re8 11. Qc2 Nh5
12. Bxh5 gxh5 13. Nc4 Ne5 14. Ne3 Qh4 15. Bd2 Ng4 16. Nxg4
hxg4 17. Bf4 Qf6 18. g3 Bd7 19. a4 b6 20. Rfe1 a6 21. Re2 b5
22. Rae1 Qg6 23. b3 Re7 24. Qd3 Rb8 25. axb5 axb5 26. b4 c4
27. Qd2 Rbe8 28. Re3 h5 29. R3e2 Kh7 30. Re3 Kg8 31. R3e2 Bxc3
32. Qxc3 Rxe4 33. Rxe4 Rxe4 34. Rxe4 Qxe4 35. Bh6 Qg6 36. Bc1
Qb1 37. Kf1 Bf5 38. Ke2 Qe4+ 39. Qe3 Qc2+ 40. Qd2 Qb3 41. Qd4
Bd3+ 0-1')

tournament.games.create(round: 4, white: "Robert James Fischer", white_rating: 2785, black: "Boris Spassky", black_rating: 2660, pgn: '[Event "Reykjavik WCh"]
[Site "Reykjavik WCh"]
[Date "1972.07.18"]
[EventDate "?"]
[Round "4"]
[Result "1/2-1/2"]
[White "Robert James Fischer"]
[Black "Boris Spassky"]
[ECO "B88"]
[WhiteElo "?"]
[BlackElo "?"]
[PlyCount "89"]

1. e4 c5 2. Nf3 d6 3. d4 cxd4 4. Nxd4 Nf6 5. Nc3 Nc6 6. Bc4 e6
7. Bb3 Be7 8. Be3 O-O 9. O-O a6 10. f4 Nxd4 11. Bxd4 b5 12. a3
Bb7 13. Qd3 a5 14. e5 dxe5 15. fxe5 Nd7 16. Nxb5 Nc5 17. Bxc5
Bxc5+ 18. Kh1 Qg5 19. Qe2 Rad8 20. Rad1 Rxd1 21. Rxd1 h5
22. Nd6 Ba8 23. Bc4 h4 24. h3 Be3 25. Qg4 Qxe5 26. Qxh4 g5
27. Qg4 Bc5 28. Nb5 Kg7 29. Nd4 Rh8 30. Nf3 Bxf3 31. Qxf3 Bd6
32. Qc3 Qxc3 33. bxc3 Be5 34. Rd7 Kf6 35. Kg1 Bxc3 36. Be2 Be5
37. Kf1 Rc8 38. Bh5 Rc7 39. Rxc7 Bxc7 40. a4 Ke7 41. Ke2 f5
42. Kd3 Be5 43. c4 Kd6 44. Bf7 Bg3 45. c5+ 1/2-1/2')

tournament.games.create(round: 5, white: "Boris Spassky", white_rating: 2660, black: "Robert James Fischer", black_rating: 2785, pgn: '[Event "Reykjavik WCh"]
[Site "Reykjavik WCh"]
[Date "1972.07.20"]
[EventDate "?"]
[Round "5"]
[Result "0-1"]
[White "Boris Spassky"]
[Black "Robert James Fischer"]
[ECO "E41"]
[WhiteElo "?"]
[BlackElo "?"]
[PlyCount "54"]

1. d4 Nf6 2. c4 e6 3. Nc3 Bb4 4. Nf3 c5 5. e3 Nc6 6. Bd3 Bxc3+
7. bxc3 d6 8. e4 e5 9. d5 Ne7 10. Nh4 h6 11. f4 Ng6 12. Nxg6
fxg6 13. fxe5 dxe5 14. Be3 b6 15. O-O O-O 16. a4 a5 17. Rb1
Bd7 18. Rb2 Rb8 19. Rbf2 Qe7 20. Bc2 g5 21. Bd2 Qe8 22. Be1
Qg6 23. Qd3 Nh5 24. Rxf8+ Rxf8 25. Rxf8+ Kxf8 26. Bd1 Nf4
27. Qc2 Bxa4 0-1')

tournament.games.create(round: 6, white: "Robert James Fischer", white_rating: 2785, black: "Boris Spassky", black_rating: 2660, pgn: '[Event "Reykjavik WCh"]
[Site "Reykjavik WCh"]
[Date "1972.07.23"]
[EventDate "?"]
[Round "6"]
[Result "1-0"]
[White "Robert James Fischer"]
[Black "Boris Spassky"]
[ECO "D59"]
[WhiteElo "?"]
[BlackElo "?"]
[PlyCount "81"]

1. c4 e6 2. Nf3 d5 3. d4 Nf6 4. Nc3 Be7 5. Bg5 O-O 6. e3 h6
7. Bh4 b6 8. cxd5 Nxd5 9. Bxe7 Qxe7 10. Nxd5 exd5 11. Rc1 Be6
12. Qa4 c5 13. Qa3 Rc8 14. Bb5 a6 15. dxc5 bxc5 16. O-O Ra7
17. Be2 Nd7 18. Nd4 Qf8 19. Nxe6 fxe6 20. e4 d4 21. f4 Qe7
22. e5 Rb8 23. Bc4 Kh8 24. Qh3 Nf8 25. b3 a5 26. f5 exf5
27. Rxf5 Nh7 28. Rcf1 Qd8 29. Qg3 Re7 30. h4 Rbb7 31. e6 Rbc7
32. Qe5 Qe8 33. a4 Qd8 34. R1f2 Qe8 35. R2f3 Qd8 36. Bd3 Qe8
37. Qe4 Nf6 38. Rxf6 gxf6 39. Rxf6 Kg8 40. Bc4 Kh8 41. Qf4 1-0')

tournament.games.create(round: 7, white: "Boris Spassky", white_rating: 2660, black: "Robert James Fischer", black_rating: 2785, pgn: '[Event "Reykjavik-Wch"]
[Site "Reykjavik-Wch"]
[Date "1972.07.25"]
[EventDate "?"]
[Round "7"]
[Result "1/2-1/2"]
[White "Boris Spassky"]
[Black "Robert James Fischer"]
[ECO "B97"]
[WhiteElo "?"]
[BlackElo "?"]
[PlyCount "97"]

1. e4 c5 2. Nf3 d6 3. d4 cxd4 4. Nxd4 Nf6 5. Nc3 a6 6. Bg5 e6
7. f4 Qb6 8. Qd2 Qxb2 9. Nb3 Qa3 10. Bd3 Be7 11. O-O h6
12. Bh4 Nxe4 13. Nxe4 Bxh4 14. f5 exf5 15. Bb5+ axb5 16. Nxd6+
Kf8 17. Nxc8 Nc6 18. Nd6 Rd8 19. Nxb5 Qe7 20. Qf4 g6 21. a4
Bg5 22. Qc4 Be3+ 23. Kh1 f4 24. g3 g5 25. Rae1 Qb4 26. Qxb4+
Nxb4 27. Re2 Kg7 28. Na5 b6 29. Nc4 Nd5 30. Ncd6 Bc5 31. Nb7
Rc8 32. c4 Ne3 33. Rf3 Nxc4 34. gxf4 g4 35. Rd3 h5 36. h3 Na5
37. N7d6 Bxd6 38. Nxd6 Rc1+ 39. Kg2 Nc4 40. Ne8+ Kg6 41. h4 f6
42. Re6 Rc2+ 43. Kg1 Kf5 44. Ng7+ Kxf4 45. Rd4+ Kg3 46. Nf5+
Kf3 47. Ree4 Rc1+ 48. Kh2 Rc2+ 49. Kg1 1/2-1/2')

tournament.games.create(round: 8, white: "Robert James Fischer", white_rating: 2785, black: "Boris Spassky", black_rating: 2660, pgn: '[Event "Reykjavik-Wch"]
[Site "Reykjavik-Wch"]
[Date "1972.07.27"]
[EventDate "?"]
[Round "8"]
[Result "1-0"]
[White "Robert James Fischer"]
[Black "Boris Spassky"]
[ECO "A39"]
[WhiteElo "?"]
[BlackElo "?"]
[PlyCount "73"]

1. c4 c5 2. Nc3 Nc6 3. Nf3 Nf6 4. g3 g6 5. Bg2 Bg7 6. O-O O-O
7. d4 cxd4 8. Nxd4 Nxd4 9. Qxd4 d6 10. Bg5 Be6 11. Qf4 Qa5
12. Rac1 Rab8 13. b3 Rfc8 14. Qd2 a6 15. Be3 b5 16. Ba7 bxc4
17. Bxb8 Rxb8 18. bxc4 Bxc4 19. Rfd1 Nd7 20. Nd5 Qxd2
21. Nxe7+ Kf8 22. Rxd2 Kxe7 23. Rxc4 Rb1+ 24. Bf1 Nc5 25. Kg2
a5 26. e4 Ba1 27. f4 f6 28. Re2 Ke6 29. Rec2 Bb2 30. Be2 h5
31. Rd2 Ba3 32. f5+ gxf5 33. exf5+ Ke5 34. Rcd4 Kxf5 35. Rd5+
Ke6 36. Rxd6+ Ke7 37. Rc6 1-0')

tournament.games.create(round: 9, white: "Boris Spassky", white_rating: 2660, black: "Robert James Fischer", black_rating: 2785, pgn: '[Event "Worlds Championship"]
[Site "Worlds Championship"]
[Date "1972.08.01"]
[EventDate "?"]
[Round "9"]
[Result "1/2-1/2"]
[White "Boris Spassky"]
[Black "Robert James Fischer"]
[ECO "D41"]
[WhiteElo "?"]
[BlackElo "?"]
[PlyCount "57"]

1. d4 Nf6 2. c4 e6 3. Nf3 d5 4. Nc3 c5 5. cxd5 Nxd5 6. e4 Nxc3
7. bxc3 cxd4 8. cxd4 Nc6 9. Bc4 b5 10. Bd3 Bb4+ 11. Bd2 Bxd2+
12. Qxd2 a6 13. a4 O-O 14. Qc3 Bb7 15. axb5 axb5 16. O-O Qb6
17. Rab1 b4 18. Qd2 Nxd4 19. Nxd4 Qxd4 20. Rxb4 Qd7 21. Qe3
Rfd8 22. Rfb1 Qxd3 23. Qxd3 Rxd3 24. Rxb7 g5 25. Rb8+ Rxb8
26. Rxb8+ Kg7 27. f3 Rd2 28. h4 h6 29. hxg5 1/2-1/2')

tournament.games.create(round: 10, white: "Robert James Fischer", white_rating: 2785, black: "Boris Spassky", black_rating: 2660, pgn: '[Event "World Ch. Match"]
[Site "Reykjavik"]
[Date "1972.08.03"]
[EventDate "?"]
[Round "10"]
[Result "1-0"]
[White "Robert James Fischer"]
[Black "Boris Spassky"]
[ECO "C95"]
[WhiteElo "?"]
[BlackElo "?"]
[PlyCount "111"]

1. e4 e5 2. Nf3 Nc6 3. Bb5 a6 4. Ba4 Nf6 5. O-O Be7 6. Re1 b5
7. Bb3 d6 8. c3 O-O 9. h3 Nb8 10. d4 Nbd7 11. Nbd2 Bb7 12. Bc2
Re8 13. b4 Bf8 14. a4 Nb6 15. a5 Nbd7 16. Bb2 Qb8 17. Rb1 c5
18. bxc5 dxc5 19. dxe5 Nxe5 20. Nxe5 Qxe5 21. c4 Qf4 22. Bxf6
Qxf6 23. cxb5 Red8 24. Qc1 Qc3 25. Nf3 Qxa5 26. Bb3 axb5
27. Qf4 Rd7 28. Ne5 Qc7 29. Rbd1 Re7 30. Bxf7+ Rxf7 31. Qxf7+
Qxf7 32. Nxf7 Bxe4 33. Rxe4 Kxf7 34. Rd7+ Kf6 35. Rb7 Ra1+
36. Kh2 Bd6+ 37. g3 b4 38. Kg2 h5 39. Rb6 Rd1 40. Kf3 Kf7
41. Ke2 Rd5 42. f4 g6 43. g4 hxg4 44. hxg4 g5 45. f5 Be5
46. Rb5 Kf6 47. Rexb4 Bd4 48. Rb6+ Ke5 49. Kf3 Rd8 50. Rb8 Rd7
51. R4b7 Rd6 52. Rb6 Rd7 53. Rg6 Kd5 54. Rxg5 Be5 55. f6 Kd4
56. Rb1 1-0')

tournament.games.create(round: 11, white: "Boris Spassky", white_rating: 2660, black: "Robert James Fischer", black_rating: 2785, pgn: '[Event "Reykjavik WCh"]
[Site "Reykjavik WCh"]
[Date "1972.08.06"]
[EventDate "?"]
[Round "11"]
[Result "1-0"]
[White "Boris Spassky"]
[Black "Robert James Fischer"]
[ECO "B97"]
[WhiteElo "?"]
[BlackElo "?"]
[PlyCount "61"]

1. e4 c5 2. Nf3 d6 3. d4 cxd4 4. Nxd4 Nf6 5. Nc3 a6 6. Bg5 e6
7. f4 Qb6 8. Qd2 Qxb2 9. Nb3 Qa3 10. Bxf6 gxf6 11. Be2 h5
12. O-O Nc6 13. Kh1 Bd7 14. Nb1 Qb4 15. Qe3 d5 16. exd5 Ne7
17. c4 Nf5 18. Qd3 h4 19. Bg4 Nd6 20. N1d2 f5 21. a3 Qb6
22. c5 Qb5 23. Qc3 fxg4 24. a4 h3 25. axb5 hxg2+ 26. Kxg2 Rh3
27. Qf6 Nf5 28. c6 Bc8 29. dxe6 fxe6 30. Rfe1 Be7 31. Rxe6 1-0')

tournament.games.create(round: 12, white: "Robert James Fischer", white_rating: 2785, black: "Boris Spassky", black_rating: 2660, pgn: '[Event "Reykjavik-Wch"]
[Site "Reykjavik-Wch"]
[Date "1972.08.08"]
[EventDate "?"]
[Round "12"]
[Result "1/2-1/2"]
[White "Robert James Fischer"]
[Black "Boris Spassky"]
[ECO "D55"]
[WhiteElo "?"]
[BlackElo "?"]
[PlyCount "110"]

1. c4 e6 2. Nf3 d5 3. d4 Nf6 4. Nc3 Be7 5. Bg5 h6 6. Bh4 O-O
7. e3 Nbd7 8. Rc1 c6 9. Bd3 dxc4 10. Bxc4 b5 11. Bd3 a6 12. a4
bxa4 13. Nxa4 Qa5+ 14. Nd2 Bb4 15. Nc3 c5 16. Nb3 Qd8 17. O-O
cxd4 18. Nxd4 Bb7 19. Be4 Qb8 20. Bg3 Qa7 21. Nc6 Bxc6
22. Bxc6 Rac8 23. Na4 Rfd8 24. Bf3 a5 25. Rc6 Rxc6 26. Bxc6
Rc8 27. Bf3 Qa6 28. h3 Qb5 29. Be2 Qc6 30. Bf3 Qb5 31. b3 Be7
32. Be2 Qb4 33. Ba6 Rc6 34. Bd3 Nc5 35. Qf3 Rc8 36. Nxc5 Bxc5
37. Rc1 Rd8 38. Bc4 Qd2 39. Rf1 Bb4 40. Bc7 Rd7 41. Qc6 Qc2
42. Be5 Rd2 43. Qa8+ Kh7 44. Bxf6 gxf6 45. Qf3 f5 46. g4 Qe4
47. Kg2 Kg6 48. Rc1 Ba3 49. Ra1 Bb4 50. Rc1 Be7 51. gxf5+ exf5
52. Re1 Rxf2+ 53. Kxf2 Bh4+ 54. Ke2 Qxf3+ 55. Kxf3 Bxe1
1/2-1/2')

tournament.games.create(round: 13, white: "Boris Spassky", white_rating: 2660, black: "Robert James Fischer", black_rating: 2785, pgn: '[Event "Reykjavik"]
[Site "m"]
[Date "1972.08.10"]
[EventDate "?"]
[Round "13"]
[Result "0-1"]
[White "Boris Spassky"]
[Black "Robert James Fischer"]
[ECO "B04"]
[WhiteElo "?"]
[BlackElo "?"]
[PlyCount "148"]

1. e4 Nf6 2. e5 Nd5 3. d4 d6 4. Nf3 g6 5. Bc4 Nb6 6. Bb3 Bg7
7. Nbd2 O-O 8. h3 a5 9. a4 dxe5 10. dxe5 Na6 11. O-O Nc5
12. Qe2 Qe8 13. Ne4 Nbxa4 14. Bxa4 Nxa4 15. Re1 Nb6 16. Bd2 a4
17. Bg5 h6 18. Bh4 Bf5 19. g4 Be6 20. Nd4 Bc4 21. Qd2 Qd7
22. Rad1 Rfe8 23. f4 Bd5 24. Nc5 Qc8 25. Qc3 e6 26. Kh2 Nd7
27. Nd3 c5 28. Nb5 Qc6 29. Nd6 Qxd6 30. exd6 Bxc3 31. bxc3 f6
32. g5 hxg5 33. fxg5 f5 34. Bg3 Kf7 35. Ne5+ Nxe5 36. Bxe5 b5
37. Rf1 Rh8 38. Bf6 a3 39. Rf4 a2 40. c4 Bxc4 41. d7 Bd5
42. Kg3 Ra3+ 43. c3 Rha8 44. Rh4 e5 45. Rh7+ Ke6 46. Re7+ Kd6
47. Rxe5 Rxc3+ 48. Kf2 Rc2+ 49. Ke1 Kxd7 50. Rexd5+ Kc6
51. Rd6+ Kb7 52. Rd7+ Ka6 53. R7d2 Rxd2 54. Kxd2 b4 55. h4 Kb5
56. h5 c4 57. Ra1 gxh5 58. g6 h4 59. g7 h3 60. Be7 Rg8 61. Bf8
h2 62. Kc2 Kc6 63. Rd1 b3+ 64. Kc3 h1=Q 65. Rxh1 Kd5 66. Kb2
f4 67. Rd1+ Ke4 68. Rc1 Kd3 69. Rd1+ Ke2 70. Rc1 f3 71. Bc5
Rxg7 72. Rxc4 Rd7 73. Re4+ Kf1 74. Bd4 f2 0-1')

tournament.games.create(round: 14, white: "Robert James Fischer", white_rating: 2785, black: "Boris Spassky", black_rating: 2660, pgn: '[Event "Reykjavik-Wch"]
[Site "Reykjavik-Wch"]
[Date "1972.08.15"]
[EventDate "?"]
[Round "14"]
[Result "1/2-1/2"]
[White "Robert James Fischer"]
[Black "Boris Spassky"]
[ECO "D37"]
[WhiteElo "?"]
[BlackElo "?"]
[PlyCount "80"]

1. c4 e6 2. Nf3 d5 3. d4 Nf6 4. Nc3 Be7 5. Bf4 O-O 6. e3 c5
7. dxc5 Nc6 8. cxd5 exd5 9. Be2 Bxc5 10. O-O Be6 11. Rc1 Rc8
12. a3 h6 13. Bg3 Bb6 14. Ne5 Ne7 15. Na4 Ne4 16. Rxc8 Bxc8
17. Nf3 Bd7 18. Be5 Bxa4 19. Qxa4 Nc6 20. Bf4 Qf6 21. Bb5 Qxb2
22. Bxc6 Nc3 23. Qb4 Qxb4 24. axb4 bxc6 25. Be5 Nb5 26. Rc1
Rc8 27. Nd4 f6 28. Bxf6 Bxd4 29. Bxd4 Nxd4 30. exd4 Rb8
31. Kf1 Rxb4 32. Rxc6 Rxd4 33. Ra6 Kf7 34. Rxa7+ Kf6 35. Rd7
h5 36. Ke2 g5 37. Ke3 Re4+ 38. Kd3 Ke6 39. Rg7 Kf6 40. Rd7 Ke6
1/2-1/2')

tournament.games.create(round: 15, white: "Boris Spassky", white_rating: 2660, black: "Robert James Fischer", black_rating: 2785, pgn: '[Event "Reykjavik-Wch"]
[Site "Reykjavik-Wch"]
[Date "1972.08.17"]
[EventDate "?"]
[Round "15"]
[Result "1/2-1/2"]
[White "Boris Spassky"]
[Black "Robert James Fischer"]
[ECO "B99"]
[WhiteElo "?"]
[BlackElo "?"]
[PlyCount "86"]

1. e4 c5 2. Nf3 d6 3. d4 cxd4 4. Nxd4 Nf6 5. Nc3 a6 6. Bg5 e6
7. f4 Be7 8. Qf3 Qc7 9. O-O-O Nbd7 10. Bd3 b5 11. Rhe1 Bb7
12. Qg3 O-O-O 13. Bxf6 Nxf6 14. Qxg7 Rdf8 15. Qg3 b4 16. Na4
Rhg8 17. Qf2 Nd7 18. Kb1 Kb8 19. c3 Nc5 20. Bc2 bxc3 21. Nxc3
Bf6 22. g3 h5 23. e5 dxe5 24. fxe5 Bh8 25. Nf3 Rd8 26. Rxd8+
Rxd8 27. Ng5 Bxe5 28. Qxf7 Rd7 29. Qxh5 Bxc3 30. bxc3 Qb6+
31. Kc1 Qa5 32. Qh8+ Ka7 33. a4 Nd3+ 34. Bxd3 Rxd3 35. Kc2 Rd5
36. Re4 Rd8 37. Qg7 Qf5 38. Kb3 Qd5+ 39. Ka3 Qd2 40. Rb4 Qc1+
41. Rb2 Qa1+ 42. Ra2 Qc1+ 43. Rb2 Qa1+ 1/2-1/2')

tournament.games.create(round: 16, white: "Robert James Fischer", white_rating: 2785, black: "Boris Spassky", black_rating: 2660, pgn: '[Event "Reykjavik-Wch"]
[Site "Reykjavik-Wch"]
[Date "1972.08.20"]
[EventDate "?"]
[Round "16"]
[Result "1/2-1/2"]
[White "Robert James Fischer"]
[Black "Boris Spassky"]
[ECO "C69"]
[WhiteElo "?"]
[BlackElo "?"]
[PlyCount "120"]

1. e4 e5 2. Nf3 Nc6 3. Bb5 a6 4. Bxc6 dxc6 5. O-O f6 6. d4 Bg4
7. dxe5 Qxd1 8. Rxd1 fxe5 9. Rd3 Bd6 10. Nbd2 Nf6 11. Nc4 Nxe4
12. Ncxe5 Bxf3 13. Nxf3 O-O 14. Be3 b5 15. c4 Rab8 16. Rc1
bxc4 17. Rd4 Rfe8 18. Nd2 Nxd2 19. Rxd2 Re4 20. g3 Be5
21. Rcc2 Kf7 22. Kg2 Rxb2 23. Kf3 c3 24. Kxe4 cxd2 25. Rxd2
Rb5 26. Rc2 Bd6 27. Rxc6 Ra5 28. Bf4 Ra4+ 29. Kf3 Ra3+ 30. Ke4
Rxa2 31. Bxd6 cxd6 32. Rxd6 Rxf2 33. Rxa6 Rxh2 34. Kf3 Rd2
35. Ra7+ Kf6 36. Ra6+ Ke7 37. Ra7+ Rd7 38. Ra2 Ke6 39. Kg2 Re7
40. Kh3 Kf6 41. Ra6+ Re6 42. Ra5 h6 43. Ra2 Kf5 44. Rf2+ Kg5
45. Rf7 g6 46. Rf4 h5 47. Rf3 Rf6 48. Ra3 Re6 49. Rf3 Re4
50. Ra3 Kh6 51. Ra6 Re5 52. Kh4 Re4+ 53. Kh3 Re7 54. Kh4 Re5
55. Rb6 Kg7 56. Rb4 Kh6 57. Rb6 Re1 58. Kh3 Rh1+ 59. Kg2 Ra1
60. Kh3 Ra4 1/2-1/2')

tournament.games.create(round: 17, white: "Boris Spassky", white_rating: 2660, black: "Robert James Fischer", black_rating: 2785, pgn: '[Event "Reykjavik-Wch"]
[Site "Reykjavik-Wch"]
[Date "1972.08.22"]
[EventDate "?"]
[Round "17"]
[Result "1/2-1/2"]
[White "Boris Spassky"]
[Black "Robert James Fischer"]
[ECO "B09"]
[WhiteElo "?"]
[BlackElo "?"]
[PlyCount "89"]

1. e4 d6 2. d4 g6 3. Nc3 Nf6 4. f4 Bg7 5. Nf3 c5 6. dxc5 Qa5
7. Bd3 Qxc5 8. Qe2 O-O 9. Be3 Qa5 10. O-O Bg4 11. Rad1 Nc6
12. Bc4 Nh5 13. Bb3 Bxc3 14. bxc3 Qxc3 15. f5 Nf6 16. h3 Bxf3
17. Qxf3 Na5 18. Rd3 Qc7 19. Bh6 Nxb3 20. cxb3 Qc5+ 21. Kh1
Qe5 22. Bxf8 Rxf8 23. Re3 Rc8 24. fxg6 hxg6 25. Qf4 Qxf4
26. Rxf4 Nd7 27. Rf2 Ne5 28. Kh2 Rc1 29. Ree2 Nc6 30. Rc2 Re1
31. Rfe2 Ra1 32. Kg3 Kg7 33. Rcd2 Rf1 34. Rf2 Re1 35. Rfe2 Rf1
36. Re3 a6 37. Rc3 Re1 38. Rc4 Rf1 39. Rdc2 Ra1 40. Rf2 Re1
41. Rfc2 g5 42. Rc1 Re2 43. R1c2 Re1 44. Rc1 Re2 45. R1c2
1/2-1/2')

tournament.games.create(round: 18, white: "Robert James Fischer", white_rating: 2785, black: "Boris Spassky", black_rating: 2660, pgn: '[Event "Reykjavik-Wch"]
[Site "Reykjavik-Wch"]
[Date "1972.08.24"]
[EventDate "?"]
[Round "18"]
[Result "1/2-1/2"]
[White "Robert James Fischer"]
[Black "Boris Spassky"]
[ECO "B69"]
[WhiteElo "?"]
[BlackElo "?"]
[PlyCount "94"]

1. e4 c5 2. Nf3 d6 3. Nc3 Nc6 4. d4 cxd4 5. Nxd4 Nf6 6. Bg5 e6
7. Qd2 a6 8. O-O-O Bd7 9. f4 Be7 10. Nf3 b5 11. Bxf6 gxf6
12. Bd3 Qa5 13. Kb1 b4 14. Ne2 Qc5 15. f5 a5 16. Nf4 a4
17. Rc1 Rb8 18. c3 b3 19. a3 Ne5 20. Rhf1 Nc4 21. Bxc4 Qxc4
22. Rce1 Kd8 23. Ka1 Rb5 24. Nd4 Ra5 25. Nd3 Kc7 26. Nb4 h5
27. g3 Re5 28. Nd3 Rb8 29. Qe2 Ra5 30. fxe6 fxe6 31. Rf2 e5
32. Nf5 Bxf5 33. Rxf5 d5 34. exd5 Qxd5 35. Nb4 Qd7 36. Rxh5
Bxb4 37. cxb4 Rd5 38. Rc1+ Kb7 39. Qe4 Rc8 40. Rb1 Kb6 41. Rh7
Rd4 42. Qg6 Qc6 43. Rf7 Rd6 44. Qh6 Qf3 45. Qh7 Qc6 46. Qh6
Qf3 47. Qh7 Qc6 1/2-1/2')

tournament.games.create(round: 19, white: "Boris Spassky", white_rating: 2660, black: "Robert James Fischer", black_rating: 2785, pgn: '[Event "Reykjavik WCh"]
[Site "Reykjavik WCh"]
[Date "1972.08.27"]
[EventDate "?"]
[Round "19"]
[Result "1/2-1/2"]
[White "Boris Spassky"]
[Black "Robert James Fischer"]
[ECO "B05"]
[WhiteElo "?"]
[BlackElo "?"]
[PlyCount "80"]

1. e4 Nf6 2. e5 Nd5 3. d4 d6 4. Nf3 Bg4 5. Be2 e6 6. O-O Be7
7. h3 Bh5 8. c4 Nb6 9. Nc3 O-O 10. Be3 d5 11. c5 Bxf3 12. Bxf3
Nc4 13. b3 Nxe3 14. fxe3 b6 15. e4 c6 16. b4 bxc5 17. bxc5 Qa5
18. Nxd5 Bg5 19. Bh5 cxd5 20. Bxf7+ Rxf7 21. Rxf7 Qd2 22. Qxd2
Bxd2 23. Raf1 Nc6 24. exd5 exd5 25. Rd7 Be3+ 26. Kh1 Bxd4
27. e6 Be5 28. Rxd5 Re8 29. Re1 Rxe6 30. Rd6 Kf7 31. Rxc6 Rxc6
32. Rxe5 Kf6 33. Rd5 Ke6 34. Rh5 h6 35. Kh2 Ra6 36. c6 Rxc6
37. Ra5 a6 38. Kg3 Kf6 39. Kf3 Rc3+ 40. Kf2 Rc2+ 1/2-1/2')

tournament.games.create(round: 20, white: "Robert James Fischer", white_rating: 2785, black: "Boris Spassky", black_rating: 2660, pgn: '[Event "Reykjavik-Wch"]
[Site "Reykjavik-Wch"]
[Date "1972.08.29"]
[EventDate "?"]
[Round "20"]
[Result "1/2-1/2"]
[White "Robert James Fischer"]
[Black "Boris Spassky"]
[ECO "B68"]
[WhiteElo "?"]
[BlackElo "?"]
[PlyCount "108"]

1. e4 c5 2. Nf3 Nc6 3. d4 cxd4 4. Nxd4 Nf6 5. Nc3 d6 6. Bg5 e6
7. Qd2 a6 8. O-O-O Bd7 9. f4 Be7 10. Be2 O-O 11. Bf3 h6
12. Bh4 Nxe4 13. Bxe7 Nxd2 14. Bxd8 Nxf3 15. Nxf3 Rfxd8
16. Rxd6 Kf8 17. Rhd1 Ke7 18. Na4 Be8 19. Rxd8 Rxd8 20. Nc5
Rb8 21. Rd3 a5 22. Rb3 b5 23. a3 a4 24. Rc3 Rd8 25. Nd3 f6
26. Rc5 Rb8 27. Rc3 g5 28. g3 Kd6 29. Nc5 g4 30. Ne4+ Ke7
31. Ne1 Rd8 32. Nd3 Rd4 33. Nef2 h5 34. Rc5 Rd5 35. Rc3 Nd4
36. Rc7+ Rd7 37. Rxd7+ Bxd7 38. Ne1 e5 39. fxe5 fxe5 40. Kd2
Bf5 41. Nd1 Kd6 42. Ne3 Be6 43. Kd3 Bf7 44. Kc3 Kc6 45. Kd3
Kc5 46. Ke4 Kd6 47. Kd3 Bg6+ 48. Kc3 Kc5 49. Nd3+ Kd6 50. Ne1
Kc6 51. Kd2 Kc5 52. Nd3+ Kd6 53. Ne1 Ne6 54. Kc3 Nd4 1/2-1/2')

tournament.games.create(round: 21, white: "Boris Spassky", white_rating: 2660, black: "Robert James Fischer", black_rating: 2785, pgn: '[Event "World Ch. Match"]
[Site "Reykjavik"]
[Date "1972.08.31"]
[EventDate "?"]
[Round "21"]
[Result "0-1"]
[White "Boris Spassky"]
[Black "Robert James Fischer"]
[ECO "B46"]
[WhiteElo "?"]
[BlackElo "?"]
[PlyCount "81"]

1. e4 c5 2. Nf3 e6 3. d4 cxd4 4. Nxd4 a6 5. Nc3 Nc6 6. Be3 Nf6
7. Bd3 d5 8. exd5 exd5 9. O-O Bd6 10. Nxc6 bxc6 11. Bd4 O-O
12. Qf3 Be6 13. Rfe1 c5 14. Bxf6 Qxf6 15. Qxf6 gxf6 16. Rad1
Rfd8 17. Be2 Rab8 18. b3 c4 19. Nxd5 Bxd5 20. Rxd5 Bxh2+
21. Kxh2 Rxd5 22. Bxc4 Rd2 23. Bxa6 Rxc2 24. Re2 Rxe2 25. Bxe2
Rd8 26. a4 Rd2 27. Bc4 Ra2 28. Kg3 Kf8 29. Kf3 Ke7 30. g4 f5
31. gxf5 f6 32. Bg8 h6 33. Kg3 Kd6 34. Kf3 Ra1 35. Kg2 Ke5
36. Be6 Kf4 37. Bd7 Rb1 38. Be6 Rb2 39. Bc4 Ra2 40. Be6 h5
41. Bd7 0-1')


