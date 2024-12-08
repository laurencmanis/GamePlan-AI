########################################################## TRAINING DATA COMPILATION ########################################################## 
## Game Logs & Adapted Game Summaries for Phase II Fine-Tuning 
## Logs retrieved from nflfastr package, summaries adapted from ESPN/AP
###################################################################################################################################  

# Initalize training dataframe
training <- data.frame(matrix(nrow = 0, ncol = 2)) 
colnames(training) <- c("game_log", "game_summary")
head(training)

bal_kc_log <- "7-H.Butker kicks 65 yards from KC 35 to end zone, Touchback to the BAL 30.(15:00) (Shotgun) 22-D.Henry left end to BAL 32 for 2 yards (35-Ja.Watson).(14:19) (Shotgun) 8-L.Jackson pass short right to 4-Z.Flowers to BAL 34 for 2 yards (23-D.Tranquill). PENALTY on BAL-79-R.Stanley, Illegal Formation, 5 yards, enforced at BAL 32 - No Play.(13:55) (Shotgun) 8-L.Jackson pass short right to 43-J.Hill pushed ob at BAL 29 for 2 yards (27-C.Conner).
(13:20) (Shotgun) 8-L.Jackson pass short right to 43-J.Hill ran ob at BAL 47 for 18 yards (35-Ja.Watson).
(12:43) 22-D.Henry up the middle to BAL 48 for 1 yard (95-C.Jones; 69-M.Pennel).
(12:00) (Shotgun) 8-L.Jackson pass incomplete short left to 22-D.Henry (54-L.Chenal). Penalty on BAL-65-P.Mekari, Illegal Formation, declined.
(11:55) (Shotgun) 8-L.Jackson pass incomplete deep right to 4-Z.Flowers. Penalty on BAL-79-R.Stanley, Illegal Formation, offsetting, enforced at BAL 48 - No Play. Penalty on KC-35-Ja.Watson, Defensive Pass Interference, offsetting.
(11:49) (Shotgun) 8-L.Jackson pass deep middle to 4-Z.Flowers to KC 33 for 19 yards (22-T.McDuffie).
(11:05) (Shotgun) 22-D.Henry right end to KC 27 for 6 yards (20-J.Reid).
(10:26) (Shotgun) 22-D.Henry up the middle to KC 24 for 3 yards (54-L.Chenal; 32-N.Bolton).
(9:40) (Shotgun) 8-L.Jackson left end ran ob at KC 13 for 11 yards (20-J.Reid).
(9:00) (Shotgun) 8-L.Jackson left end to KC 5 for 8 yards (20-J.Reid).
(8:18) 22-D.Henry right guard for 5 yards, TOUCHDOWN.
9-J.Tucker extra point is GOOD, Center-46-N.Moore, Holder-11-J.Stout.
9-J.Tucker kicks 60 yards from BAL 35 to KC 5. 42-C.Steele to KC 33 for 28 yards (49-C.Board; 25-K.Hollman).
(8:09) (Shotgun) 15-P.Mahomes pass short left to 4-R.Rice to KC 44 for 11 yards (32-M.Williams, 0-R.Smith).
(7:39) (Shotgun) 15-P.Mahomes sacked at KC 44 for 0 yards (sack split by 23-T.Simpson and 92-J.Madubuike).
(7:03) 10-I.Pacheco up the middle to KC 48 for 4 yards (92-J.Madubuike; 0-R.Smith).
(6:23) (Shotgun) 15-P.Mahomes pass short middle to 4-R.Rice to BAL 36 for 16 yards (0-R.Smith). PENALTY on BAL-0-R.Smith, Horse Collar Tackle, 15 yards, enforced at BAL 36.
(6:02) 1-X.Worthy right end for 21 yards, TOUCHDOWN.
7-H.Butker extra point is GOOD, Center-41-J.Winchester, Holder-14-M.Araiza.
7-H.Butker kicks 65 yards from KC 35 to end zone, Touchback to the BAL 30.
(5:55) 8-L.Jackson pass short left to 80-I.Likely to BAL 45 for 15 yards (6-B.Cook).
(5:13) 22-D.Henry left end to BAL 46 for 1 yard (98-T.Wharton; 54-L.Chenal).
(4:29) (Shotgun) 8-L.Jackson pass short right to 4-Z.Flowers to BAL 49 for 3 yards (22-T.McDuffie).
(3:48) (Shotgun) 8-L.Jackson pass short right to 43-J.Hill to 50 for 1 yard (20-J.Reid).
(3:03) 11-J.Stout punts 40 yards to KC 10, Center-46-N.Moore, fair catch by 17-M.Hardman.
(2:55) (Shotgun) 15-P.Mahomes pass short left to 10-I.Pacheco ran ob at KC 33 for 23 yards (21-B.Stephens) [53-K.Van Noy].
(2:19) (Shotgun) 15-P.Mahomes pass short middle to 4-R.Rice to BAL 48 for 19 yards (39-E.Jackson).
(1:39) (Shotgun) 10-I.Pacheco up the middle to BAL 47 for 1 yard (96-B.Washington; 14-K.Hamilton).
(1:09) 15-P.Mahomes pass short right to 4-R.Rice to BAL 46 for 1 yard (99-O.Oweh; 2-N.Wiggins).
(:29) (Shotgun) 15-P.Mahomes sacked at KC 44 for -10 yards (90-D.Ojabo).
END QUARTER 1
(15:00) 14-M.Araiza punts 56 yards to end zone, Center-41-J.Winchester, Touchback.
(14:53) 8-L.Jackson sacked at BAL 13 for -7 yards (95-C.Jones). FUMBLES (95-C.Jones), RECOVERED by KC-97-F.Anudike-Uzomah at BAL 14.
(14:44) (Shotgun) Direct snap to 10-I.Pacheco. 10-I.Pacheco left end to BAL 11 for 3 yards (99-O.Oweh). PENALTY on KC-87-T.Kelce, Offensive Holding, 10 yards, enforced at BAL 14 - No Play.
(14:30) 15-P.Mahomes pass incomplete short right to 10-I.Pacheco.
(14:26) 15-P.Mahomes pass short middle to 83-N.Gray to BAL 13 for 11 yards (0-R.Smith; 14-K.Hamilton).
Timeout #1 by KC at 14:26.
(13:44) (Shotgun) 15-P.Mahomes pass incomplete short left to 9-J.Smith-Schuster (32-M.Williams) [99-O.Oweh].
(13:40) 7-H.Butker 32 yard field goal is GOOD, Center-41-J.Winchester, Holder-14-M.Araiza.
7-H.Butker kicks 65 yards from KC 35 to end zone, Touchback to the BAL 30.
(13:37) (Shotgun) 8-L.Jackson pass short left to 4-Z.Flowers to BAL 37 for 7 yards (27-C.Conner).
(12:59) (Shotgun) 22-D.Henry left guard to BAL 43 for 6 yards (23-D.Tranquill).
(12:17) 8-L.Jackson pass short right to 80-I.Likely to BAL 48 for 5 yards (27-C.Conner).
(11:36) (Shotgun) 8-L.Jackson pass short left to 4-Z.Flowers to KC 48 for 4 yards (98-T.Wharton; 22-T.McDuffie). PENALTY on BAL-7-R.Bateman, Offensive Pass Interference, 10 yards, enforced at BAL 48 - No Play.
(11:13) (Shotgun) 8-L.Jackson scrambles right guard to BAL 43 for 5 yards (20-J.Reid, 23-D.Tranquill).
(10:28) (Shotgun) 8-L.Jackson scrambles right end pushed ob at 50 for 7 yards (35-Ja.Watson; 32-N.Bolton).
(9:45) (Shotgun) 8-L.Jackson pass short right to 4-Z.Flowers to KC 49 for 1 yard (22-T.McDuffie).
(9:39) 10-I.Pacheco right tackle to BAL 49 for 2 yards (58-M.Pierce; 23-T.Simpson).
(9:02) (Shotgun) 15-P.Mahomes pass short left to 87-T.Kelce to BAL 48 for 1 yard (44-M.Humphrey).
(8:20) (Shotgun) PENALTY on KC-74-J.Taylor, False Start, 5 yards, enforced at BAL 48 - No Play.
(8:05) (Shotgun) 15-P.Mahomes pass deep right to 87-T.Kelce to BAL 30 for 23 yards (21-B.Stephens).
(7:15) (Shotgun) 15-P.Mahomes pass short right to 1-X.Worthy to BAL 18 for 12 yards (21-B.Stephens).
(6:35) (Shotgun) 10-I.Pacheco left guard to BAL 13 for 5 yards (0-R.Smith).
(5:56) (Shotgun) 15-P.Mahomes pass incomplete short middle to 87-T.Kelce.
(5:53) (Shotgun) 15-P.Mahomes pass incomplete short right to 1-X.Worthy (29-A.Washington) [92-N.Madubuike].
(5:47) 7-H.Butker 31 yard field goal is GOOD, Center-41-J.Winchester, Holder-14-M.Araiza.
7-H.Butker kicks 65 yards from KC 35 to end zone, Touchback to the BAL 30.
(5:44) (Shotgun) 8-L.Jackson pass incomplete short middle to 4-Z.Flowers. PENALTY on KC-23-D.Tranquill, Defensive Pass Interference, 5 yards, enforced at BAL 30 - No Play.
(5:40) 4-Z.Flowers right end to BAL 41 for 6 yards (56-G.Karlaftis).
(5:03) 22-D.Henry right guard to 50 for 9 yards (20-J.Reid). Penalty on KC-95-C.Jones, Defensive Offside, declined.
(4:36) (Shotgun) 8-L.Jackson scrambles up the middle to KC 37 for 13 yards (35-Ja.Watson).
(3:46) (Shotgun) PENALTY on BAL, Delay of Game, 5 yards, enforced at KC 37 - No Play.
(3:26) (Shotgun) 8-L.Jackson right end to KC 39 for 3 yards (54-L.Chenal).
(2:41) (Shotgun) 8-L.Jackson pass short right to 89-M.Andrews to KC 30 for 9 yards (23-D.Tranquill; 22-T.McDuffie). PENALTY on BAL-79-R.Stanley, Illegal Formation, 5 yards, enforced at KC 39 - No Play.
(2:21) (Shotgun) 8-L.Jackson pass short left to 4-Z.Flowers to KC 35 for 9 yards (32-N.Bolton).
(2:00) (Shotgun) 8-L.Jackson pass incomplete short right to 7-R.Bateman [56-G.Karlaftis].
(1:55) 9-J.Tucker 53 yard field goal is No Good, Wide Left, Center-46-N.Moore, Holder-11-J.Stout.
(1:50) (Shotgun) 15-P.Mahomes pass short middle intended for 4-R.Rice INTERCEPTED by 0-R.Smith at BAL 49. 0-R.Smith to BAL 49 for no gain (4-R.Rice).
(1:44) (Shotgun) 8-L.Jackson pass short left to 43-J.Hill pushed ob at KC 44 for 7 yards (6-B.Cook).
(1:36) (Shotgun) 8-L.Jackson scrambles left guard to KC 34 for 10 yards (27-C.Conner).
(1:03) (Shotgun) 8-L.Jackson scrambles left end to KC 28 for 6 yards (51-M.Danna).
(:32) (No Huddle, Shotgun) 8-L.Jackson pass short right to 80-I.Likely ran ob at KC 19 for 9 yards (22-T.McDuffie; 56-G.Karlaftis).
(:27) (Shotgun) 8-L.Jackson pass short right to 80-I.Likely to KC 10 for 9 yards (23-D.Tranquill).
Timeout #1 by BAL at 00:27.
(:21) (Shotgun) 8-L.Jackson pass incomplete short right to 4-Z.Flowers.
Timeout #2 by BAL at 00:21.
(:18) 43-J.Hill right end to KC 7 for 3 yards (32-N.Bolton; 54-L.Chenal).
(:13) (Shotgun) 8-L.Jackson pass incomplete short left to 43-J.Hill (54-L.Chenal).
Timeout #3 by BAL at 00:13.
(:09) (Shotgun) 8-L.Jackson pass incomplete short right to 43-J.Hill.
Timeout #2 by KC at 00:09.
(:05) 9-J.Tucker 25 yard field goal is GOOD, Center-46-N.Moore, Holder-11-J.Stout.
9-J.Tucker kicks 65 yards from BAL 35 to end zone, Touchback to the KC 30.
(:03) 15-P.Mahomes kneels to KC 29 for -1 yards.
END QUARTER 2
9-J.Tucker kicks 65 yards from BAL 35 to KC 0. 17-M.Hardman to KC 31 for 31 yards (51-J.Ross). PENALTY on KC-43-J.Cochrane, Offensive Holding, 10 yards, enforced at KC 29.
(14:54) 10-I.Pacheco right end to KC 24 for 5 yards (53-K.Van Noy).
(14:13) (Shotgun) 15-P.Mahomes pass short middle to 4-R.Rice to BAL 43 for 33 yards (5-J.Armour-Davis, 32-M.Williams).
(13:30) (Shotgun) 15-P.Mahomes pass short middle to 84-Ju.Watson to BAL 18 for 25 yards (23-T.Simpson).
Timeout #1 by BAL at 13:30.
(12:45) (Shotgun) 10-I.Pacheco left guard to BAL 9 for 9 yards (32-M.Williams). PENALTY on KC-76-K.Suamataia, Offensive Holding, 10 yards, enforced at BAL 18 - No Play.
(12:27) (Shotgun) 15-P.Mahomes pass incomplete short middle to 4-R.Rice (23-T.Simpson).
(12:23) (Shotgun) 15-P.Mahomes pass incomplete short left to 9-J.Smith-Schuster. BAL-53-K.Van Noy was injured during the play. PENALTY on BAL-92-N.Madubuike, Roughing the Passer, 14 yards, enforced at BAL 28 - No Play.
(12:19) (Shotgun) 15-P.Mahomes pass short right to 83-N.Gray to BAL 1 for 13 yards (32-M.Williams, 44-M.Humphrey).
(11:38) (Shotgun) 10-I.Pacheco right guard for 1 yard, TOUCHDOWN.
7-H.Butker extra point is GOOD, Center-41-J.Winchester, Holder-14-M.Araiza.
7-H.Butker kicks 65 yards from KC 35 to end zone, Touchback to the BAL 30.
(11:28) (Shotgun) 8-L.Jackson pass incomplete short right to 4-Z.Flowers.
(11:24) 8-L.Jackson pass short left to 4-Z.Flowers to BAL 28 for -2 yards (97-F.Anudike-Uzomah).
(10:45) (Shotgun) 8-L.Jackson pass short left to 43-J.Hill ran ob at BAL 45 for 17 yards (2-J.Williams).
(10:03) (Shotgun) 8-L.Jackson pass short left to 89-M.Andrews to KC 44 for 11 yards (20-J.Reid).
(9:24) 22-D.Henry right guard to KC 45 for -1 yards (54-L.Chenal, 32-N.Bolton).
(8:43) (Shotgun) 8-L.Jackson pass incomplete deep middle to 80-I.Likely.
(8:37) (Shotgun) 8-L.Jackson pass incomplete deep right to 4-Z.Flowers (35-Ja.Watson).
(8:31) 11-J.Stout punts 35 yards to KC 10, Center-46-N.Moore, fair catch by 17-M.Hardman.
(8:24) (Shotgun) 10-I.Pacheco left end pushed ob at KC 15 for 5 yards (23-T.Simpson).
(7:50) (Shotgun) 10-I.Pacheco right tackle to KC 17 for 2 yards (0-R.Smith).
(7:08) (Shotgun) 15-P.Mahomes pass short right to 87-T.Kelce to KC 27 for 10 yards (14-K.Hamilton).
(6:29) (Shotgun) 15-P.Mahomes pass short middle to 4-R.Rice to KC 42 for 15 yards (32-M.Williams).
Timeout #2 by BAL at 06:29.
(5:53) (Shotgun) 10-I.Pacheco left guard to KC 45 for 3 yards (40-M.Harrison).
(5:18) (Shotgun) 15-P.Mahomes pass short right to 34-S.Perine to BAL 45 for 10 yards (98-T.Jones).
(4:38) 42-C.Steele left guard to BAL 40 for 5 yards (58-M.Pierce, 40-M.Harrison).
(3:56) (Shotgun) 15-P.Mahomes pass incomplete short right.
(3:50) (Shotgun) 15-P.Mahomes pass incomplete short left to 34-S.Perine.
(3:46) 14-M.Araiza punts 40 yards to end zone, Center-41-J.Winchester, Touchback.
(3:37) (Shotgun) 8-L.Jackson pass incomplete short left to 22-D.Henry.
(3:33) 8-L.Jackson pass short right to 7-R.Bateman to BAL 35 for 15 yards (20-J.Reid, 35-Ja.Watson).
(2:56) (Shotgun) 22-D.Henry right guard to BAL 41 for 6 yards (51-M.Danna).
(2:16) 22-D.Henry right end to BAL 42 for 1 yard (98-T.Wharton).
(1:30) (Shotgun) 8-L.Jackson scrambles right guard to KC 42 for 16 yards (6-B.Cook).
(:46) (Shotgun) 8-L.Jackson scrambles right end ran ob at KC 13 for 29 yards (22-T.McDuffie). PENALTY on BAL-64-T.Linderbaum, Offensive Holding, 10 yards, enforced at KC 42 - No Play.
(:11) (Shotgun) 8-L.Jackson right end to KC 49 for 3 yards (35-Ja.Watson).
END QUARTER 3
(15:00) (Shotgun) 8-L.Jackson pass deep right to 80-I.Likely for 49 yards, TOUCHDOWN.
9-J.Tucker extra point is GOOD, Center-46-N.Moore, Holder-11-J.Stout.
9-J.Tucker kicks 65 yards from BAL 35 to end zone, Touchback to the KC 30.
(14:47) (Shotgun) 15-P.Mahomes pass short right to 4-R.Rice pushed ob at KC 38 for 8 yards (21-B.Stephens).
(14:16) (Shotgun) 10-I.Pacheco right guard to KC 41 for 3 yards (58-M.Pierce; 23-T.Simpson).
(13:37) 15-P.Mahomes pass short right to 83-N.Gray to BAL 46 for 13 yards (32-M.Williams) [23-T.Simpson].
(12:57) 10-I.Pacheco right tackle to BAL 41 for 5 yards (58-M.Pierce).
(12:21) (Shotgun) 10-I.Pacheco left guard to BAL 39 for 2 yards (99-O.Oweh).
(11:40) (Shotgun) 15-P.Mahomes scrambles left end pushed ob at BAL 35 for 4 yards (32-M.Williams).
(11:11) (Shotgun) 10-I.Pacheco left end to BAL 35 for no gain (99-O.Oweh).
(10:32) (Shotgun) 15-P.Mahomes pass deep right to 1-X.Worthy for 35 yards, TOUCHDOWN.
7-H.Butker extra point is GOOD, Center-41-J.Winchester, Holder-14-M.Araiza.
7-H.Butker kicks 65 yards from KC 35 to end zone, Touchback to the BAL 30.
(10:25) 4-Z.Flowers right end to BAL 38 for 8 yards (23-D.Tranquill).
(9:46) (Shotgun) 8-L.Jackson pass short left to 80-I.Likely to BAL 42 for 4 yards (6-B.Cook; 51-M.Danna).
(9:19) (No Huddle, Shotgun) 8-L.Jackson left end to KC 49 for 9 yards (98-T.Wharton).
(8:40) (No Huddle, Shotgun) 22-D.Henry right guard to KC 44 for 5 yards (51-M.Danna).
(8:16) (No Huddle, Shotgun) 8-L.Jackson right end to KC 31 for 13 yards (35-Ja.Watson; 95-C.Jones).
(7:45) (No Huddle, Shotgun) 8-L.Jackson pass incomplete deep left to 7-R.Bateman.
(7:38) (Shotgun) 8-L.Jackson pass short left to 15-N.Agholor to KC 25 for 6 yards (6-B.Cook).
(7:13) (No Huddle, Shotgun) 8-L.Jackson pass short right to 89-M.Andrews to KC 22 for 3 yards (27-C.Conner).
(6:34) 22-D.Henry left guard to KC 20 for 2 yards (20-J.Reid; 69-M.Pennel).
(5:50) (Shotgun) 8-L.Jackson scrambles right end ran ob at KC 16 for 4 yards (35-Ja.Watson; 54-L.Chenal).
(5:15) (Shotgun) 8-L.Jackson pass incomplete short right.
(5:06) (Shotgun) 8-L.Jackson scrambles left guard to KC 14 for 2 yards (54-L.Chenal). Penalty on BAL-7-R.Bateman, Illegal Formation, declined.
(4:58) 9-J.Tucker 32 yard field goal is GOOD, Center-46-N.Moore, Holder-11-J.Stout.
9-J.Tucker kicks 65 yards from BAL 35 to end zone, Touchback to the KC 30.
(4:54) 10-I.Pacheco right tackle to KC 35 for 5 yards (39-E.Jackson).
(4:14) (Shotgun) PENALTY on KC-74-J.Taylor, False Start, 5 yards, enforced at KC 35 - No Play.
(4:14) (Shotgun) 15-P.Mahomes scrambles right end pushed ob at KC 49 for 19 yards (0-R.Smith). Penalty on KC-4-R.Rice, Offensive Holding, offsetting, enforced at KC 30 - No Play. Penalty on BAL-32-M.Williams, Unnecessary Roughness, offsetting.
(4:06) (Shotgun) 15-P.Mahomes pass short right to 10-I.Pacheco to KC 40 for 10 yards (2-N.Wiggins).
(3:29) (No Huddle, Shotgun) 10-I.Pacheco right guard to KC 42 for 2 yards (98-T.Jones).
(2:47) 42-C.Steele left end to KC 40 for -2 yards (0-R.Smith).
(2:36) (Shotgun) 15-P.Mahomes pass short middle to 15-P.Mahomes to KC 42 for 2 yards (99-O.Oweh).
Timeout #3 by BAL at 02:36.
(2:00) 14-M.Araiza punts 48 yards to BAL 10, Center-41-J.Winchester. 3-D.Harty to BAL 13 for 3 yards (13-N.Johnson).
(1:50) (Shotgun) 8-L.Jackson pass short right to 80-I.Likely pushed ob at BAL 21 for 8 yards (35-Ja.Watson).
(1:45) (Shotgun) 8-L.Jackson scrambles right end pushed ob at BAL 30 for 9 yards (27-C.Conner).
(1:37) (Shotgun) 8-L.Jackson pass incomplete deep left to 7-R.Bateman.
(1:31) (Shotgun) 8-L.Jackson pass short right to 80-I.Likely pushed ob at BAL 38 for 8 yards (35-Ja.Watson).
(1:26) (Shotgun) 8-L.Jackson scrambles up the middle to BAL 41 for 3 yards (32-N.Bolton). KC-54-L.Chenal was injured during the play.
(1:11) (Shotgun) 8-L.Jackson pass short right to 43-J.Hill to BAL 48 for 7 yards (32-N.Bolton).
Timeout #1 by KC at 01:11.
(:47) (No Huddle, Shotgun) 8-L.Jackson pass short right to 80-I.Likely pushed ob at KC 48 for 4 yards (35-Ja.Watson).
(:43) (Shotgun) 8-L.Jackson pass deep right to 7-R.Bateman to KC 10 for 38 yards (6-B.Cook).
(:18) (No Huddle, Shotgun) 8-L.Jackson pass incomplete short left to 80-I.Likely. BAL-80-I.Likely was injured during the play.
(:10) (Shotgun) 8-L.Jackson pass incomplete short middle to 4-Z.Flowers. ** Injury Update: KC-54-L.Chenal has returned to the game.
Timeout #4 by BAL at 00:10.
(:05) (Shotgun) 8-L.Jackson pass short middle to 80-I.Likely for 10 yards, TOUCHDOWN. The Replay Official reviewed the pass completion ruling, and the play was REVERSED. (Shotgun) 8-L.Jackson pass incomplete short middle to 80-I.Likely (32-N.Bolton). ** Injury Update: BAL-80-I.Likely has returned to the game.
END GAME"

bal_kc_summary <- "Headline: Chiefs hold off Ravens 27-20 when review overturns TD on final play of NFL's season opener.
Summary: The Ravens opened the game with an 11-play, 70-yard drive that ended with Derrick Henry plunging into the end zone from 5 yards out for the early lead. Mahomes twice connected with Rashee Rice, before Worthy ran for a 21-yard touchdown. After those two drives, though, the first half was mostly marked by blunders. Jackson was strip-sacked by Chris Jones deep in his own territory, leading to a Kansas City field goal and later, Justin Tucker pulled a 53-yard field-goal attempt wide left. On the Chiefs’ side, Mahomes’ pass was intercepted by Roquan Smith late in the first half, leading to a chip-shot field goal that got Baltimore to 13-10 at the break. The Chiefs opened the second half with an 81-yard touchdown march to extend their lead and a few possessions later, Mahomes drove them 70 yards for a touchdown that made it 27-17 with 10 minutes to go. The Ravens kicked a field goal, then got the ball back at their own 13 with 1:50 left and no timeouts. On the final drive, Jackson completed a couple of throws to Likely, who had 111 yards receiving and a score, another to Rashod Bateman down the sideline for 38 yards, and then the final throw to Likely that would have forced overtime. Upon review, it was decided that Likely landed with his toe on the endline, putting the Baltimore tight end out of bounds, and giving the Chiefs a 27-20 victory.
Notable Performances: Mahomes threw for 291 yards and with a touchdown pass to Xavier Worthy, who also scored a rushing TD. Lamar Jackson was sublime Thursday night, throwing for 273 yards and a touchdown and adding 122 yards on the ground.
Injuries: Baltimore: LB Kyle Van Noy left six plays into the second half because of an eye injury and did not return.
"

# Append game log and summary to training dataframe 
bal_kc <- as.data.frame(cbind(bal_kc_log, bal_kc_summary)) %>% rename(game_log = bal_kc_log, game_summary = bal_kc_summary)
training <- rbind(training, bal_kc)

la_det_log <- "GAME. 
39-J.Bates kicks 65 yards from DET 35 to end zone, Touchback to the LA 30.
(15:00) (Shotgun) 9-M.Stafford pass short right to 23-K.Williams to LA 29 for -1 yards (34-A.Anzalone).
(14:28) (Shotgun) 9-M.Stafford pass incomplete deep left to 15-D.Robinson.
(14:22) (Shotgun) 9-M.Stafford pass short left to 10-C.Kupp to LA 27 for -2 yards (34-A.Anzalone).
(13:38) 42-E.Evans punts 48 yards to DET 25, Center-47-A.Ward. 11-K.Raymond to DET 36 for 11 yards (56-C.Rozeboom; 20-R.Rivers).
(13:26) 5-D.Montgomery up the middle to DET 38 for 2 yards (56-C.Rozeboom; 8-J.Verse).
(12:55) (Shotgun) 16-J.Goff pass short middle to 14-A.St. Brown to DET 42 for 4 yards (56-C.Rozeboom).
(12:10) (Shotgun) 16-J.Goff sacked at DET 33 for -9 yards (0-B.Young).
(11:29) 3-J.Fox punts 67 yards to end zone, Center-49-H.Hatten, Touchback. PENALTY on LA-56-C.Rozeboom, Offensive Holding, 10 yards, enforced at LA 20.
(11:20) (Shotgun) 9-M.Stafford pass short left to 10-C.Kupp ran ob at LA 15 for 5 yards.
(10:59) (No Huddle, Shotgun) 9-M.Stafford pass short left to 10-C.Kupp to LA 26 for 11 yards (0-T.Arnold, 32-B.Branch).
(10:23) (No Huddle, Shotgun) 9-M.Stafford pass short right to 86-C.Parkinson to LA 36 for 10 yards (23-C.Davis).
(9:50) (Shotgun) 9-M.Stafford pass short middle to 10-C.Kupp to LA 44 for 8 yards (23-C.Davis).
(9:24) (No Huddle, Shotgun) 23-K.Williams left tackle to LA 46 for 2 yards (23-C.Davis).
(8:44) (Shotgun) 9-M.Stafford pass short right to 17-P.Nacua pushed ob at DET 38 for 16 yards (34-A.Anzalone).
(8:01) (Shotgun) 9-M.Stafford pass short left to 10-C.Kupp pushed ob at DET 34 for 4 yards (0-T.Arnold).
(7:36) (No Huddle, Shotgun) 9-M.Stafford pass incomplete short middle to 15-D.Robinson [94-M.Wingo].
(7:32) (Shotgun) 9-M.Stafford pass short right to 86-C.Parkinson to DET 19 for 15 yards (34-A.Anzalone; 31-K.Joseph).
(6:46) (Shotgun) 9-M.Stafford pass incomplete short right to 87-D.Allen.
(6:41) (Shotgun) 9-M.Stafford sacked at DET 27 for -8 yards (sack split by 91-L.Onwuzurike and 92-M.Davenport).
(5:58) (Shotgun) PENALTY on LA-71-W.McClendon, False Start, 5 yards, enforced at DET 27 - No Play.
(5:36) (Shotgun) 23-K.Williams up the middle to DET 23 for 9 yards (42-J.Reeves-Maybin; 31-K.Joseph).
(4:54) 16-J.Karty 41 yard field goal is GOOD, Center-47-A.Ward, Holder-42-E.Evans.
42-E.Evans kicks 65 yards from LA 35 to end zone, Touchback to the DET 30.
(4:50) 5-D.Montgomery right tackle to DET 33 for 3 yards (55-B.Fiske; 91-K.Turner).
(4:10) (Shotgun) 26-J.Gibbs right end pushed ob at DET 39 for 6 yards (3-K.Curl).
(3:35) 70-D.Skipper reported in as eligible. 5-D.Montgomery left tackle to DET 41 for 2 yards (51-T.Reeder).
(2:55) 5-D.Montgomery left end to DET 46 for 5 yards (51-T.Reeder; 56-C.Rozeboom). PENALTY on LA-0-B.Young, Illegal Use of Hands, 5 yards, enforced at DET 46.
(2:34) (Shotgun) 5-D.Montgomery left end to LA 41 for 8 yards (51-T.Reeder, 43-J.Johnson).
(1:51) 5-D.Montgomery left end to LA 35 for 6 yards (37-Q.Lake, 8-J.Verse).
(1:13) (Shotgun) 5-D.Montgomery left tackle to LA 28 for 7 yards (51-T.Reeder; 27-T.White).
(:33) (Shotgun) 16-J.Goff pass short left to 9-J.Williams to LA 27 for 1 yard (37-Q.Lake; 43-J.Johnson).
END QUARTER 1
(15:00) (Shotgun) 16-J.Goff pass incomplete short middle to 14-A.St. Brown.
(14:56) (Shotgun) 5-D.Montgomery up the middle to LA 24 for 3 yards (95-B.Brown).
(14:26) (Shotgun) 16-J.Goff pass short left to 87-S.LaPorta to LA 10 for 14 yards (43-J.Johnson).
(13:44) 16-J.Goff pass short left to 14-A.St. Brown to LA 6 for 4 yards (51-T.Reeder).
(13:00) 5-D.Montgomery left tackle to LA 7 for -1 yards (97-M.Hoecht, 37-Q.Lake).
(12:25) (Shotgun) 16-J.Goff pass incomplete short middle to 87-S.LaPorta.
(12:20) 39-J.Bates 25 yard field goal is GOOD, Center-49-H.Hatten, Holder-3-J.Fox.
39-J.Bates kicks 63 yards from DET 35 to LA 2. 88-J.Whittington to LA 22 for 20 yards (30-K.Dorsey; 44-M.Rodriguez).
(12:11) 17-P.Nacua left end pushed ob at LA 29 for 7 yards (55-D.Barnes; 46-J.Campbell).
(11:35) (Shotgun) 20-R.Rivers right tackle to LA 33 for 4 yards (90-C.Smith; 46-J.Campbell).
(10:49) (Shotgun) 9-M.Stafford pass incomplete short middle to 86-C.Parkinson.
(10:45) (Shotgun) 20-R.Rivers left end pushed ob at LA 45 for 12 yards (34-A.Anzalone).
(10:01) (Shotgun) 9-M.Stafford pass short middle to 17-P.Nacua to DET 48 for 7 yards (34-A.Anzalone).
Timeout #1 by LA at 10:01.
(9:21) 10-C.Kupp left end pushed ob at DET 39 for 9 yards (0-T.Arnold).
(8:42) (Shotgun) 9-M.Stafford pass short middle to 17-P.Nacua to DET 33 for 6 yards (46-J.Campbell; 31-K.Joseph).
(8:05) (Shotgun) 23-K.Williams left tackle to DET 29 for 4 yards (97-A.Hutchinson; 23-C.Davis).
(7:27) (Shotgun) 9-M.Stafford pass incomplete short left to 10-C.Kupp (32-B.Branch).
(7:23) (Shotgun) 9-M.Stafford pass incomplete short left. Ball thrown away.
(7:16) (Shotgun) 9-M.Stafford pass short right to 17-P.Nacua to DET 23 for 6 yards (32-B.Branch) [97-A.Hutchinson]. LA-17-P.Nacua was injured during the play.
(6:36) (Shotgun) 9-M.Stafford pass incomplete short right to 10-C.Kupp [92-M.Davenport].TURNOVER ON DOWNS. 
(6:31) 16-J.Goff pass short middle to 9-J.Williams pushed ob at LA 41 for 36 yards (43-J.Johnson).
(5:56) 16-J.Goff pass incomplete deep left to 9-J.Williams.
(5:49) (Shotgun) 16-J.Goff pass short left to 26-J.Gibbs to LA 27 for 14 yards (37-Q.Lake).
(5:08) 9-J.Williams right end to LA 14 for 13 yards (56-C.Rozeboom; 14-C.Durant). DET-9-J.Williams was injured during the play.
(4:33) (Shotgun) 26-J.Gibbs up the middle to LA 6 for 8 yards (90-T.Davis).
(3:54) 26-J.Gibbs left tackle to LA 5 for 1 yard (55-B.Fiske, 95-B.Brown). ** Injury Update: DET-9-J.Williams has returned to the game.
(3:09) 70-D.Skipper reported in as eligible. 26-J.Gibbs right end to LA 3 for 2 yards (0-B.Young; 37-Q.Lake).
(2:28) 16-J.Goff pass short left to 89-B.Wright to LA 1 for 2 yards (3-K.Curl).
(2:00) 26-J.Gibbs left tackle to LA 1 for no gain (3-K.Curl, 51-T.Reeder). The Replay Official reviewed the short of the goal line ruling, and the play was REVERSED. 26-J.Gibbs left tackle for 1 yard, TOUCHDOWN.
39-J.Bates extra point is GOOD, Center-49-H.Hatten, Holder-3-J.Fox.
39-J.Bates kicks 65 yards from DET 35 to end zone, Touchback to the LA 30.
(1:57) (Shotgun) 23-K.Williams up the middle to LA 34 for 4 yards (91-L.Onwuzurike; 44-M.Rodriguez). ** Injury Update: LA-17-P.Nacua has returned to the game.
(1:20) (Shotgun) 23-K.Williams right end to LA 32 for -2 yards (91-L.Onwuzurike; 92-M.Davenport). PENALTY on DET-92-M.Davenport, Defensive Offside, 5 yards, enforced at LA 34 - No Play.
(1:15) (Shotgun) 23-K.Williams up the middle to LA 43 for 4 yards (55-D.Barnes, 97-A.Hutchinson).
(:53) (No Huddle, Shotgun) 9-M.Stafford pass incomplete short middle to 10-C.Kupp (21-A.Robertson).
(:50) (Shotgun) 9-M.Stafford pass short left to 18-T.Johnson to LA 45 for 2 yards (23-C.Davis). PENALTY on DET-97-A.Hutchinson, Roughing the Passer, 15 yards, enforced at LA 45.
(:43) (Shotgun) 9-M.Stafford pass short right to 86-C.Parkinson pushed ob at DET 20 for 20 yards (21-A.Robertson).
(:37) (Shotgun) 9-M.Stafford pass short left to 23-K.Williams to DET 12 for 8 yards (34-A.Anzalone).
(:29) (Shotgun) 9-M.Stafford pass short left to 10-C.Kupp ran ob at DET 8 for 4 yards (31-K.Joseph).
Timeout #2 by LA at 00:29.
(:26) (Shotgun) 9-M.Stafford pass incomplete short right to 15-D.Robinson [92-M.Davenport].
(:21) (Shotgun) 9-M.Stafford pass short middle intended for 18-T.Johnson INTERCEPTED by 31-K.Joseph at DET -7. Touchback.
(:15) (Shotgun) 16-J.Goff sacked at DET 12 for -8 yards (8-J.Verse).
END QUARTER 2
42-E.Evans kicks 65 yards from LA 35 to end zone, Touchback to the DET 30.
(15:00) 5-D.Montgomery right tackle to DET 32 for 2 yards (51-T.Reeder).
(14:30) (Shotgun) 5-D.Montgomery up the middle to DET 36 for 4 yards (3-K.Curl; 51-T.Reeder).
(13:52) (Shotgun) 16-J.Goff pass incomplete short middle to 9-J.Williams (51-T.Reeder).
(13:46) 3-J.Fox punts 64 yards to end zone, Center-49-H.Hatten, Touchback.
(13:35) (Shotgun) 23-K.Williams right end to LA 19 for -1 yards (46-J.Campbell, 23-C.Davis).
(12:53) (Shotgun) 9-M.Stafford pass short middle to 18-T.Johnson to LA 20 for 1 yard (0-T.Arnold).
(12:18) (No Huddle, Shotgun) 9-M.Stafford pass incomplete deep middle to 10-C.Kupp (32-B.Branch).
(12:12) 42-E.Evans punts 43 yards to DET 37, Center-47-A.Ward. 11-K.Raymond to DET 41 for 4 yards (31-N.Hampton, 22-B.Corum).
(12:01) 5-D.Montgomery up the middle to DET 46 for 5 yards (0-B.Young).
(11:24) (Shotgun) 16-J.Goff pass short middle to 5-D.Montgomery to DET 48 for 2 yards (56-C.Rozeboom) [8-J.Verse].
(10:37) (Shotgun) 16-J.Goff pass deep left to 9-J.Williams for 52 yards, TOUCHDOWN. Penalty on LA-27-T.White, Illegal Contact, declined.
39-J.Bates extra point is GOOD, Center-49-H.Hatten, Holder-3-J.Fox.
39-J.Bates kicks 65 yards from DET 35 to end zone, Touchback to the LA 30.
(10:29) (Shotgun) 9-M.Stafford pass short left to 23-K.Williams to LA 27 for -3 yards (34-A.Anzalone).
(9:45) (Shotgun) 23-K.Williams right end to LA 30 for 3 yards (23-C.Davis; 21-A.Robertson).
(8:59) (Shotgun) 9-M.Stafford pass short left to 10-C.Kupp pushed ob at LA 43 for 13 yards (31-K.Joseph).
(8:20) (Shotgun) 9-M.Stafford pass deep left to 10-C.Kupp pushed ob at DET 36 for 21 yards (0-T.Arnold).
(7:42) (Shotgun) 9-M.Stafford pass short left to 18-T.Johnson to DET 36 for no gain (0-T.Arnold).
(7:01) (Shotgun) 23-K.Williams left tackle to DET 30 for 6 yards (34-A.Anzalone).
(6:23) (Shotgun) 23-K.Williams right tackle to DET 29 for 1 yard (34-A.Anzalone, 46-J.Campbell).
(5:38) (Shotgun) 9-M.Stafford pass short middle to 15-D.Robinson to DET 15 for 14 yards (31-K.Joseph). DET-0-T.Arnold was injured during the play.
(5:03) 10-C.Kupp right end to DET 14 for 1 yard (32-B.Branch, 15-E.Rakestraw).
(4:22) (Shotgun) 23-K.Williams left tackle to DET 11 for 3 yards (97-A.Hutchinson).
(3:40) (Shotgun) 9-M.Stafford pass incomplete short right to 10-C.Kupp [97-A.Hutchinson]. ** Injury Update: DET-0-T.Arnold has returned to the game. PENALTY on DET-0-T.Arnold, Defensive Pass Interference, 9 yards, enforced at DET 11 - No Play.
(3:36) 23-K.Williams right tackle for 2 yards, TOUCHDOWN.
16-J.Karty extra point is GOOD, Center-47-A.Ward, Holder-42-E.Evans.
42-E.Evans kicks 65 yards from LA 35 to end zone, Touchback to the DET 30.
(3:33) 16-J.Goff pass short right to 26-J.Gibbs to DET 32 for 2 yards (3-K.Curl).
(3:01) 26-J.Gibbs left end pushed ob at DET 35 for 3 yards (37-Q.Lake).
(2:20) (Shotgun) 16-J.Goff pass short middle to 87-S.LaPorta to DET 39 for 4 yards (43-J.Johnson; 37-Q.Lake).
(1:42) 3-J.Fox punts 45 yards to LA 16, Center-49-H.Hatten. 23-K.Williams to LA 16 for no gain.
(1:31) (Shotgun) 23-K.Williams left tackle to LA 14 for -2 yards (32-B.Branch).
(:52) (Shotgun) 9-M.Stafford pass short middle to 18-T.Johnson to DET 23 for 63 yards (44-M.Rodriguez) [97-A.Hutchinson].
END QUARTER 3
(15:00) (Shotgun) 9-M.Stafford pass short right to 10-C.Kupp to DET 18 for 5 yards (23-C.Davis; 34-A.Anzalone).
(14:16) 9-M.Stafford pass incomplete deep left to 15-D.Robinson. PENALTY on DET-0-T.Arnold, Defensive Pass Interference, 17 yards, enforced at DET 18 - No Play.
(14:10) 23-K.Williams left tackle to DET 1 for no gain (55-D.Barnes, 32-B.Branch).
(13:28) 88-J.Whittington left end for 1 yard, TOUCHDOWN NULLIFIED by Penalty. PENALTY on LA-61-A.Arcuri, Offensive Holding, 10 yards, enforced at DET 1 - No Play.
(13:24) (Shotgun) 23-K.Williams right tackle to DET 8 for 3 yards (97-A.Hutchinson).
(12:41) (Shotgun) 9-M.Stafford pass incomplete short left to 10-C.Kupp (32-B.Branch). Penalty on LA-61-A.Arcuri, Offensive Holding, declined.
(12:35) 16-J.Karty 26 yard field goal is GOOD, Center-47-A.Ward, Holder-42-E.Evans.
42-E.Evans kicks 65 yards from LA 35 to end zone, Touchback to the DET 30.
(12:32) 26-J.Gibbs right end to DET 30 for no gain (55-B.Fiske, 92-N.Gallimore). ** Injury Update: LA-14-C.Durant has returned to the game.
(11:52) (Shotgun) PENALTY on DET-60-G.Glasgow, False Start, 5 yards, enforced at DET 30 - No Play.
(11:52) (Shotgun) 16-J.Goff pass short left to 87-S.LaPorta to DET 34 for 9 yards (56-C.Rozeboom; 14-C.Durant).
(11:21) (Shotgun) 16-J.Goff scrambles up the middle to DET 41 for 7 yards (37-Q.Lake).
(10:39) 16-J.Goff pass short left to 9-J.Williams ran ob at LA 32 for 27 yards (27-T.White) [37-Q.Lake].
(9:59) 26-J.Gibbs right tackle to LA 25 for 7 yards (92-N.Gallimore; 0-B.Young).
(9:15) (Shotgun) PENALTY on DET-77-F.Ragnow, False Start, 5 yards, enforced at LA 25 - No Play.
(9:15) (Shotgun) 16-J.Goff pass short middle intended for 14-A.St. Brown INTERCEPTED by 43-J.Johnson at LA 20. 43-J.Johnson to LA 20 for no gain (14-A.St. Brown).
(9:09) (Shotgun) 9-M.Stafford pass short left to 10-C.Kupp ran ob at LA 27 for 7 yards (34-A.Anzalone).
(8:33) (Shotgun) 9-M.Stafford pass short right to 86-C.Parkinson pushed ob at LA 29 for 2 yards (23-C.Davis).
(7:55) (Shotgun) 9-M.Stafford pass short middle to 18-T.Johnson to LA 42 for 13 yards (55-D.Barnes) [96-K.Peko].
(7:31) (No Huddle, Shotgun) 9-M.Stafford pass short left to 10-C.Kupp to LA 42 for no gain (0-T.Arnold).
(6:48) (Shotgun) 9-M.Stafford pass short middle to 15-D.Robinson to DET 49 for 9 yards (23-C.Davis).
(6:22) (No Huddle) 23-K.Williams up the middle to DET 47 for 2 yards (32-B.Branch).
(5:40) (Shotgun) 9-M.Stafford pass deep left to 10-C.Kupp to DET 27 for 20 yards.
(5:24) (No Huddle) 23-K.Williams up the middle to DET 22 for 5 yards (54-A.McNeill).
(4:44) (Shotgun) 9-M.Stafford pass short right to 15-D.Robinson ran ob at DET 9 for 13 yards (0-T.Arnold).
(4:35) 9-M.Stafford pass short left to 10-C.Kupp for 9 yards, TOUCHDOWN.
16-J.Karty extra point is GOOD, Center-47-A.Ward, Holder-42-E.Evans.
42-E.Evans kicks 65 yards from LA 35 to end zone, Touchback to the DET 30.
(4:30) (Shotgun) 16-J.Goff pass short right to 14-A.St. Brown pushed ob at DET 35 for 5 yards (14-C.Durant).
(4:26) 16-J.Goff pass incomplete short right to 9-J.Williams [14-C.Durant].
(4:22) (Shotgun) 16-J.Goff pass incomplete deep left to 9-J.Williams (14-C.Durant).
(4:17) 3-J.Fox punts 54 yards to LA 11, Center-49-H.Hatten, fair catch by 23-K.Williams.
(4:10) (Shotgun) 9-M.Stafford pass short middle to 10-C.Kupp to LA 16 for 5 yards (46-J.Campbell, 34-A.Anzalone).
(3:25) (Shotgun) 9-M.Stafford pass incomplete short middle to 18-T.Johnson [91-L.Onwuzurike].
(3:20) (Shotgun) 9-M.Stafford pass short left to 15-D.Robinson to LA 22 for 6 yards (32-B.Branch) [92-M.Davenport].
(2:37) (Shotgun) 23-K.Williams right tackle to LA 20 for -2 yards (96-K.Peko, 46-J.Campbell).
(2:31) (Shotgun) PENALTY on LA-71-W.McClendon, False Start, 5 yards, enforced at LA 20 - No Play.
Timeout #1 by DET at 02:31.
(2:31) (Shotgun) 23-K.Williams left end pushed ob at LA 22 for 7 yards (44-M.Rodriguez).
(2:26) (Shotgun) 9-M.Stafford pass incomplete deep left to 10-C.Kupp.
(2:21) 42-E.Evans punts 50 yards to DET 28, Center-47-A.Ward. 11-K.Raymond to DET 31 for 3 yards (88-J.Whittington).
(2:11) (Shotgun) 26-J.Gibbs up the middle to DET 36 for 5 yards (55-B.Fiske; 27-T.White).
(2:00) (Shotgun) 16-J.Goff pass short middle to 87-S.LaPorta to LA 46 for 18 yards (26-K.Kinchens). PENALTY on LA-26-K.Kinchens, Unnecessary Roughness, 15 yards, enforced at LA 46.
(1:53) (Shotgun) 16-J.Goff pass short right to 26-J.Gibbs to LA 23 for 8 yards (56-C.Rozeboom).
(1:11) (Shotgun) 16-J.Goff pass incomplete deep left to 26-J.Gibbs.
(1:06) (Shotgun) 26-J.Gibbs right end pushed ob at LA 19 for 4 yards (3-K.Curl). The Replay Official reviewed the runner was out of bounds ruling, and the play was REVERSED. (Shotgun) 26-J.Gibbs right end to LA 19 for 4 yards (3-K.Curl).
(:41) (Shotgun) 16-J.Goff pass incomplete short middle to 14-A.St. Brown.
(:38) (Shotgun) 16-J.Goff pass short middle to 9-J.Williams to LA 14 for 5 yards (37-Q.Lake).
(:24) (Shotgun) 16-J.Goff pass incomplete short right to 26-J.Gibbs.
Timeout #2 by DET at 00:24.
(:20) 39-J.Bates 32 yard field goal is GOOD, Center-49-H.Hatten, Holder-3-J.Fox.
39-J.Bates kicks 65 yards from DET 35 to end zone, Touchback to the LA 30.
(:17) (Shotgun) 9-M.Stafford pass incomplete deep right to 10-C.Kupp [97-A.Hutchinson]. DET-23-C.Davis was injured during the play.
(:11) (Shotgun) 9-M.Stafford sacked at LA 25 for -5 yards (97-A.Hutchinson).
Timeout #3 by DET at 00:11.
END QUARTER 4
42-E.Evans kicks 65 yards from LA 35 to end zone, Touchback to the DET 30.
(10:00) 11-K.Raymond left end to DET 42 for 12 yards (56-C.Rozeboom).
(9:23) 5-D.Montgomery right end to LA 37 for 21 yards (27-T.White).
(8:43) 5-D.Montgomery left tackle to LA 28 for 9 yards (8-J.Verse).
(8:02) 16-J.Goff pass short right to 26-J.Gibbs pushed ob at LA 18 for 10 yards (27-T.White).
(7:22) 26-J.Gibbs left tackle to LA 15 for 3 yards (51-T.Reeder, 37-Q.Lake).
(6:43) (Shotgun) 5-D.Montgomery up the middle to LA 9 for 6 yards (91-K.Turner; 55-B.Fiske).
(6:03) 5-D.Montgomery up the middle to LA 1 for 8 yards (95-B.Brown; 43-J.Johnson).
(5:24) 5-D.Montgomery right tackle for 1 yard, TOUCHDOWN.
Timeout #1 by LA at 05:24.
END GAME"

la_det_summary <- "Headline: Montgomery’s 1-yard touchdown run in OT lifts Lions to 26-20 win over Rams.
Summary: The Detroit Lions outlasted the Los Angeles Rams with a balanced offense, grinding out yards on the ground and going to the air for some pivotal plays. David Montgomery's 1-yard touchdown run in overtime lifted the Lions to a 26-20 win over the Stafford-led Rams. Early in the game, with a chance to attempt a 40-yard field goal when it was tied at 3, LA elected to go for it and turned the ball over on downs when Stafford threw an incomplete pass that targeted Kupp. The Lions had a 17-3 lead in the third quarter after Jared Goff threw a 52-yard touchdown pass to Jameson Williams. Detroit, though, lost the comfortable cushion because its quarterback threw an interception early in the fourth. John Johnson intercepted Goff’s pass over the middle at the Rams 20, taking away Detroit’s chance to score and restore its lead. Stafford took advantage, leading a 10-play, 80-yard drive that he capped with the 9-yard scoring pass to Kupp. He could not complete enough passes late in the fourth to keep the ball and seal the win, leading to a punt that gave Goff another shot from his 31 with 2:11 to go. The Lions reached the Rams 14 and settled for Bates’ tying field goal that sent the game to overtime.
Detroit won the coin flip and took advantage of having the ball, gaining at least 9 yards on its first four plays in overtime to set up Montgomery's winning score.
Notable Performances: Stafford completed 34 of 49 passes for 317 yards with a touchdown and an interception, lobbing a ball in the middle of end zone where Kerby Joseph was waiting early in the second quarter. Kupp ended with 14 receptions and had 110 yards receiving. Goff was 18 of 28 for 217 yards with a touchdown and an interception. Williams had five catches for 121 yards receiving. Montgomery had 17 carries for 91 yards and Jahmyr Gibbs ran 11 times for 40 yards — with both scoring a TD.
Injuries: Rams: Nacua (knee) was hurt in the first half after catching four passes for 35 yards and didn’t return. LT Joe Noteboom (ankle) was carted off the field in the second quarter."

# Append game log and summary to training dataframe 
la_det <- as.data.frame(cbind(la_det_log, la_det_summary)) %>% rename(game_log = la_det_log, game_summary = la_det_summary)
training <- rbind(training, la_det)

gb_phi_log <- "GAME
10-B.Mann kicks 65 yards from PHI 35 to end zone, Touchback to the GB 30. PENALTY on PHI-22-K.Ringo, Illegal Formation, 5 yards, enforced at GB 30.
(15:00) 8-J.Jacobs up the middle to GB 34 for -1 yards (19-J.Sweat, 93-M.Williams).
(14:21) (Shotgun) 10-J.Love pass short right to 9-C.Watson to GB 39 for 5 yards (2-D.Slay; 29-A.Maddox).
(13:39) (No Huddle, Shotgun) 10-J.Love pass short left to 87-R.Doubs pushed ob at PHI 42 for 19 yards (29-A.Maddox; 32-R.Blankenship).
(12:59) 8-J.Jacobs left guard to PHI 38 for 4 yards (53-Z.Baun, 27-Q.Mitchell).
(12:17) 8-J.Jacobs left tackle to PHI 38 for no gain (53-Z.Baun, 3-N.Smith).
(12:01) (No Huddle) 10-J.Love pass deep left to 11-J.Reed for 38 yards, TOUCHDOWN NULLIFIED by Penalty. Penalty on PHI, Defensive Too Many Men on Field, offsetting, enforced at PHI 38 - No Play. Penalty on GB, Offensive Too Many Men on Field, offsetting.
(11:52) (Shotgun) 10-J.Love pass incomplete deep left to 9-C.Watson.
(11:47) (Shotgun) PENALTY on GB-50-Z.Tom, False Start, 5 yards, enforced at PHI 38 - No Play.
Timeout #1 by GB at 11:47.
(11:47) 19-D.Whelan punts 33 yards to PHI 10, Center-42-M.Orzech, out of bounds.
(11:40) 26-S.Barkley left end to PHI 5 for -5 yards (45-Er.Wilson).
(11:03) (Shotgun) 1-J.Hurts pass incomplete deep left to 11-A.Brown.
(10:57) (Shotgun) 1-J.Hurts pass deep middle intended for 6-D.Smith INTERCEPTED by 29-X.McKinney at PHI 36. 29-X.McKinney to PHI 19 for 17 yards (68-J.Mailata).
(10:46) (Shotgun) 10-J.Love sacked at PHI 24 for -5 yards (53-Z.Baun). PENALTY on PHI-98-J.Carter, Unnecessary Roughness, 12 yards, enforced at PHI 24.
(10:19) (Shotgun) 8-J.Jacobs right tackle to PHI 12 for no gain (8-C.Gardner-Johnson).
(9:39) 10-J.Love pass short right to 88-L.Musgrave to PHI 13 for -1 yards (8-C.Gardner-Johnson; 2-D.Slay). PENALTY on GB-63-R.Walker, Offensive Holding, 10 yards, enforced at PHI 12 - No Play.
(9:17) (Shotgun) 10-J.Love pass incomplete short middle to 13-D.Wicks.
(9:13) (Shotgun) 10-J.Love pass short left to 8-J.Jacobs to PHI 13 for 9 yards (29-A.Maddox; 59-T.Booker).
(8:30) 44-B.Narveson 31 yard field goal is GOOD, Center-42-M.Orzech, Holder-19-D.Whelan.
44-B.Narveson kicks 61 yards from GB 35 to PHI 4. 14-K.Gainwell MUFFS catch, and recovers at PHI 7. 14-K.Gainwell to PHI 16 for 9 yards (56-E.Cooper).
(8:21) 26-S.Barkley right guard to PHI 19 for 3 yards (93-T.Slaton).
(7:46) (Shotgun) 1-J.Hurts pass short left to 88-D.Goedert to PHI 20 for 1 yard (20-J.Bullard).
(7:11) (No Huddle, Shotgun) 1-J.Hurts FUMBLES (Aborted) at PHI 15, touched at PHI 14, RECOVERED by GB-95-D.Wyatt at PHI 13.
(7:06) 8-J.Jacobs right end to PHI 5 for 8 yards (2-D.Slay). PENALTY on GB-85-T.Kraft, Offensive Holding, 10 yards, enforced at PHI 13 - No Play.
(6:43) (Shotgun) 10-J.Love pass short right to 11-J.Reed to PHI 14 for 9 yards (32-R.Blankenship; 53-Z.Baun).
(5:58) (Shotgun) 10-J.Love pass short right to 87-R.Doubs to PHI 4 for 10 yards (2-D.Slay).
(5:27) 8-J.Jacobs up the middle to PHI 5 for -1 yards (17-N.Dean, 55-B.Graham).
(4:44) 8-J.Jacobs right tackle to PHI 3 for 2 yards (8-C.Gardner-Johnson; 53-Z.Baun).
(3:58) (Shotgun) 10-J.Love pass incomplete short left to 9-C.Watson (32-R.Blankenship). PENALTY on GB-87-R.Doubs, Offensive Pass Interference, 10 yards, enforced at PHI 3 - No Play.
Timeout #2 by GB at 03:58.
(3:53) (Shotgun) 10-J.Love pass short right to 85-T.Kraft pushed ob at PHI 5 for 8 yards (8-C.Gardner-Johnson, 98-J.Carter).
(3:15) 10-J.Love pass incomplete short right [19-J.Sweat].
(3:09) (Shotgun) 10-J.Love pass incomplete short right to 9-C.Watson.
(3:04) 44-B.Narveson 23 yard field goal is GOOD, Center-42-M.Orzech, Holder-19-D.Whelan.
44-B.Narveson kicks 65 yards from GB 35 to end zone, Touchback to the PHI 30.
(3:01) (Shotgun) 1-J.Hurts pass short right to 88-D.Goedert to PHI 34 for 4 yards (23-J.Alexander).
(2:23) (Shotgun) 26-S.Barkley left tackle to PHI 39 for 5 yards (7-Q.Walker).
(1:40) (Shotgun) 1-J.Hurts pass short left to 11-A.Brown to PHI 47 for 8 yards (23-J.Alexander). Penalty on GB-97-K.Clark, Defensive Offside, declined.
(1:21) (Shotgun) 1-J.Hurts right end pushed ob at PHI 49 for 2 yards (25-K.Nixon).
(:40) (Shotgun) 1-J.Hurts pass short right to 6-D.Smith to GB 43 for 8 yards (94-K.Brooks; 7-Q.Walker).
(:06) (No Huddle, Shotgun) 1-J.Hurts pass short left to 6-D.Smith pushed ob at GB 34 for 9 yards (25-K.Nixon).
END QUARTER 1
(15:00) (Shotgun) 1-J.Hurts pass incomplete short right.
(14:54) (No Huddle) 1-J.Hurts up the middle to GB 34 for no gain (7-Q.Walker).
(14:21) (No Huddle) PENALTY on GB-93-T.Slaton, Encroachment, 6 yards, enforced at GB 34 - No Play.
(14:08) (Shotgun) 26-S.Barkley up the middle to GB 17 for 11 yards (29-X.McKinney).
(13:27) 26-S.Barkley up the middle to GB 18 for -1 yards (45-Er.Wilson, 93-T.Slaton).
(12:43) (Shotgun) 1-J.Hurts pass deep left to 26-S.Barkley for 18 yards, TOUCHDOWN.
4-J.Elliott extra point is GOOD, Center-49-R.Lovato, Holder-10-B.Mann.
10-B.Mann kicks 65 yards from PHI 35 to end zone, Touchback to the GB 30.
(12:38) 10-J.Love pass incomplete deep middle to 13-D.Wicks.
(12:33) (Shotgun) 31-Em.Wilson left tackle to GB 44 for 14 yards (32-R.Blankenship).
(11:57) (Shotgun) 31-Em.Wilson left end to GB 49 for 5 yards (53-Z.Baun).
(11:13) (Shotgun) 31-Em.Wilson up the middle to PHI 33 for 18 yards (53-Z.Baun).
(10:24) (Shotgun) 11-J.Reed right end for 33 yards, TOUCHDOWN.
Timeout #3 by GB at 10:24.
44-B.Narveson extra point is GOOD, Center-42-M.Orzech, Holder-19-D.Whelan. PENALTY on PHI-98-J.Carter, Defensive Offside, 1 yard, enforced at PHI 15 - No Play.
77-J.Morgan reported in as eligible. TWO-POINT CONVERSION ATTEMPT. 8-J.Jacobs rushes left tackle. ATTEMPT FAILS.
44-B.Narveson kicks 65 yards from GB 35 to end zone, Touchback to the PHI 30.
(10:16) (Shotgun) 26-S.Barkley left tackle to PHI 32 for 2 yards (94-K.Brooks, 58-I.McDuffie).
(9:33) (Shotgun) 1-J.Hurts pass incomplete deep right [52-R.Gary].
(9:26) (No Huddle, Shotgun) 1-J.Hurts pass short left to 11-A.Brown ran ob at GB 48 for 20 yards (29-X.McKinney) [25-K.Nixon].
(8:47) (No Huddle, Shotgun) 1-J.Hurts right end to GB 47 for 1 yard (7-Q.Walker).
(8:04) (Shotgun) 1-J.Hurts pass short left to 6-D.Smith to GB 22 for 25 yards (20-J.Bullard).
(7:19) (Shotgun) 1-J.Hurts pass short left to 26-S.Barkley pushed ob at GB 17 for 5 yards (7-Q.Walker).
(6:40) (Shotgun) 1-J.Hurts right guard to GB 13 for 4 yards (56-E.Cooper, 93-T.Slaton).
(6:08) 1-J.Hurts up the middle to GB 11 for 2 yards (7-Q.Walker).
(5:38) (No Huddle, Shotgun) 26-S.Barkley right guard for 11 yards, TOUCHDOWN.
4-J.Elliott extra point is GOOD, Center-49-R.Lovato, Holder-10-B.Mann.
10-B.Mann kicks 65 yards from PHI 35 to end zone, Touchback to the GB 30.
(5:34) (Shotgun) 10-J.Love pass incomplete short right to 8-J.Jacobs.
(5:29) (Shotgun) 10-J.Love pass incomplete deep left to 88-L.Musgrave (27-Q.Mitchell).
(5:22) (Shotgun) 10-J.Love pass deep right to 11-J.Reed for 70 yards, TOUCHDOWN.
(Kick formation) PENALTY on GB-63-R.Walker, False Start, 5 yards, enforced at PHI 15 - No Play.
44-B.Narveson extra point is GOOD, Center-42-M.Orzech, Holder-19-D.Whelan.
44-B.Narveson kicks 71 yards from GB 35 to PHI -6. 14-K.Gainwell to PHI 23 for 29 yards (39-Z.Anderson).
(5:06) (Shotgun) 1-J.Hurts pass incomplete short middle to 11-A.Brown.
(5:01) (Shotgun) 1-J.Hurts pass short left to 11-A.Brown to PHI 36 for 13 yards (23-J.Alexander).
(4:20) (No Huddle, Shotgun) 1-J.Hurts pass incomplete short right.
(4:11) (Shotgun) 26-S.Barkley right tackle to PHI 39 for 3 yards (94-K.Brooks).
(3:34) (No Huddle, Shotgun) 1-J.Hurts pass short left to 88-D.Goedert pushed ob at GB 40 for 21 yards (23-J.Alexander).
(2:55) (No Huddle, Shotgun) 26-S.Barkley up the middle to GB 38 for 2 yards (90-L.Van Ness).
(2:12) (Shotgun) 1-J.Hurts pass incomplete deep right to 89-J.Wilson.
(2:03) (Shotgun) 1-J.Hurts up the middle to GB 33 for 5 yards (52-R.Gary; 97-K.Clark).
(1:59) (Shotgun) 1-J.Hurts pass short left to 6-D.Smith to GB 26 for 7 yards (58-I.McDuffie).
Timeout #1 by PHI at 01:59.
(1:24) (No Huddle, Shotgun) 14-K.Gainwell up the middle to GB 24 for 2 yards (97-K.Clark).
(:54) (No Huddle, Shotgun) 1-J.Hurts pass short left to 14-K.Gainwell to GB 14 for 10 yards (29-X.McKinney; 7-Q.Walker).
(:43) (Shotgun) 1-J.Hurts sacked at GB 20 for -6 yards (25-K.Nixon).
Timeout #2 by PHI at 00:43.
(:31) (Shotgun) PENALTY on PHI-88-D.Goedert, False Start, 5 yards, enforced at GB 20 - No Play.
Timeout #3 by PHI at 00:31.
(:31) (Shotgun) 1-J.Hurts pass short left to 88-D.Goedert to GB 20 for 5 yards (20-J.Bullard).
(:05) (No Huddle) 1-J.Hurts spiked the ball to stop the clock.
(:04) 4-J.Elliott 38 yard field goal is GOOD, Center-49-R.Lovato, Holder-10-B.Mann.
END QUARTER 2
44-B.Narveson kicks 65 yards from GB 35 to end zone, Touchback to the PHI 30.
(15:00) (Shotgun) 26-S.Barkley right tackle to PHI 33 for 3 yards (45-Er.Wilson).
(14:22) (Shotgun) 1-J.Hurts pass deep right to 11-A.Brown for 67 yards, TOUCHDOWN.
4-J.Elliott extra point is GOOD, Center-49-R.Lovato, Holder-10-B.Mann.
10-B.Mann kicks 65 yards from PHI 35 to end zone, Touchback to the GB 30.
(14:09) 10-J.Love pass incomplete deep left.
(13:59) (Shotgun) 8-J.Jacobs right guard to GB 35 for 5 yards (2-D.Slay). FUMBLES (2-D.Slay), recovered by GB-80-B.Melton at GB 39.
(13:31) (No Huddle, Shotgun) 10-J.Love pass incomplete short left to 80-B.Melton. PENALTY on PHI-53-Z.Baun, Roughing the Passer, 16 yards, enforced at GB 39 - No Play. Penalty on PHI-27-Q.Mitchell, Defensive Pass Interference, declined.
(13:25) (Shotgun) 10-J.Love pass short left to 85-T.Kraft pushed ob at PHI 16 for 29 yards (32-R.Blankenship).
(12:46) (Shotgun) 8-J.Jacobs left guard to PHI 15 for 1 yard (8-C.Gardner-Johnson; 53-Z.Baun).
(12:06) (Shotgun) 10-J.Love pass incomplete short right to 85-T.Kraft [98-J.Carter].
(12:02) (Shotgun) 10-J.Love pass incomplete short right to 13-D.Wicks. PENALTY on PHI-29-A.Maddox, Defensive Pass Interference, 13 yards, enforced at PHI 15 - No Play.
(11:58) (Shotgun) 10-J.Love pass short left to 9-C.Watson for 2 yards, TOUCHDOWN.
44-B.Narveson extra point is GOOD, Center-42-M.Orzech, Holder-19-D.Whelan.
44-B.Narveson kicks 65 yards from GB 35 to end zone, Touchback to the PHI 30.
(11:55) 1-J.Hurts pass incomplete short right to 88-D.Goedert (52-R.Gary).
(11:50) (Shotgun) 26-S.Barkley right end to PHI 32 for 2 yards (56-E.Cooper).
(11:25) (No Huddle, Shotgun) 1-J.Hurts sacked at PHI 26 for -6 yards (52-R.Gary).
(10:34) 10-B.Mann punts 54 yards to GB 20, Center-49-R.Lovato, fair catch by 11-J.Reed.
(10:26) (Shotgun) 10-J.Love pass short left to 87-R.Doubs pushed ob at GB 32 for 12 yards (27-Q.Mitchell).
(9:47) (Shotgun) 31-Em.Wilson right guard to GB 36 for 4 yards (53-Z.Baun). PENALTY on GB, Illegal Shift, 5 yards, enforced at GB 32 - No Play.
(9:23) 10-J.Love pass incomplete deep left to 11-J.Reed.
(9:18) (Shotgun) 10-J.Love pass incomplete short middle to 87-R.Doubs.
(9:13) (Shotgun) 10-J.Love pass incomplete short left to 31-Em.Wilson (17-N.Dean). Penalty on GB, Illegal Shift, declined.
(9:09) 19-D.Whelan punts 56 yards to PHI 17, Center-42-M.Orzech. 18-B.Covey to PHI 30 for 13 yards (45-Er.Wilson). Penalty on GB-58-I.McDuffie, Illegal Formation, offsetting, enforced at GB 27 - No Play. Penalty on PHI-36-T.McCollum, Illegal Blindside Block, offsetting.
(8:56) 19-D.Whelan punts 41 yards to PHI 32, Center-42-M.Orzech, fair catch by 18-B.Covey.
(8:47) (Shotgun) 26-S.Barkley left tackle to PHI 40 for 8 yards (25-K.Nixon).
(8:15) (No Huddle, Shotgun) 1-J.Hurts left end to PHI 40 for no gain (91-P.Smith).
(7:34) (Shotgun) 1-J.Hurts pass incomplete short right [58-I.McDuffie].
(7:27) 10-B.Mann punts 47 yards to GB 13, Center-49-R.Lovato, fair catch by 11-J.Reed.
(7:21) 8-J.Jacobs up the middle to GB 22 for 9 yards (32-R.Blankenship; 0-B.Huff).
(6:38) 8-J.Jacobs left end to GB 29 for 7 yards (8-C.Gardner-Johnson; 27-Q.Mitchell). PENALTY on GB-63-R.Walker, Offensive Holding, 10 yards, enforced at GB 22 - No Play.
(6:15) (Shotgun) 10-J.Love pass short middle intended for 88-L.Musgrave INTERCEPTED by 32-R.Blankenship at GB 25. 32-R.Blankenship to GB 24 for 1 yard (13-D.Wicks).
(6:08) (Shotgun) 1-J.Hurts pass short right to 6-D.Smith to GB 16 for 8 yards (58-I.McDuffie).
(5:35) (No Huddle, Shotgun) 26-S.Barkley left guard to GB 11 for 5 yards (90-L.Van Ness, 20-J.Bullard).
(5:07) (No Huddle, Shotgun) 26-S.Barkley up the middle to GB 2 for 9 yards (25-K.Nixon, 20-J.Bullard).
(4:32) (No Huddle, Shotgun) 26-S.Barkley up the middle for 2 yards, TOUCHDOWN.
4-J.Elliott extra point is GOOD, Center-49-R.Lovato, Holder-10-B.Mann.
10-B.Mann kicks 65 yards from PHI 35 to end zone, Touchback to the GB 30.
(4:26) (Shotgun) 10-J.Love pass short left to 87-R.Doubs to GB 39 for 9 yards (17-N.Dean).
(3:51) (Shotgun) 8-J.Jacobs up the middle to GB 42 for 3 yards (53-Z.Baun).
(3:11) (Shotgun) 10-J.Love pass incomplete short left to 13-D.Wicks (27-Q.Mitchell).
(3:07) (Shotgun) 10-J.Love pass short right to 8-J.Jacobs to PHI 47 for 11 yards (98-J.Carter; 8-C.Gardner-Johnson). PHI-8-C.Gardner-Johnson was injured during the play. PHI-27-Q.Mitchell was injured during the play.
(2:33) 8-J.Jacobs right guard to PHI 25 for 22 yards (32-R.Blankenship).
(1:52) 8-J.Jacobs right end to PHI 25 for no gain (53-Z.Baun). ** Injury Update: PHI-8-C.Gardner-Johnson has returned to the game.
(1:10) (Shotgun) 10-J.Love pass short left to 31-Em.Wilson to PHI 25 for no gain (53-Z.Baun).
(:26) (Shotgun) 10-J.Love pass incomplete short left to 11-J.Reed.
(:21) 44-B.Narveson 43 yard field goal is No Good, Hit Right Upright, Center-42-M.Orzech, Holder-19-D.Whelan.
(:17) (Shotgun) 26-S.Barkley left guard to GB 33 for 34 yards (20-J.Bullard).
END QUARTER 3
(15:00) (Shotgun) 1-J.Hurts pass incomplete short right to 11-A.Brown (56-E.Cooper).
(14:57) (Shotgun) 1-J.Hurts pass short right to 81-G.Calcaterra to GB 22 for 11 yards (20-J.Bullard).
(14:30) (No Huddle, Shotgun) 1-J.Hurts pass short left to 11-A.Brown to GB 11 for 11 yards (20-J.Bullard; 25-K.Nixon).
(13:52) (No Huddle, Shotgun) 1-J.Hurts left guard to GB 14 for -3 yards (25-K.Nixon, 91-P.Smith).
(13:16) (No Huddle, Shotgun) 1-J.Hurts pass incomplete short left to 83-J.Dotson (25-K.Nixon).
(13:10) (Shotgun) 1-J.Hurts pass deep middle intended for 11-A.Brown INTERCEPTED by 23-J.Alexander at GB -4. 23-J.Alexander to GB 13 for 17 yards (6-D.Smith).
(12:53) (Shotgun) 8-J.Jacobs left tackle pushed ob at GB 45 for 32 yards (17-N.Dean). ** Injury Update: PHI-27-Q.Mitchell has returned to the game.
(12:15) (Shotgun) 8-J.Jacobs left tackle to GB 44 for -1 yards (17-N.Dean).
(11:37) (Shotgun) 10-J.Love pass short left to 9-C.Watson to 50 for 6 yards (27-Q.Mitchell).
(10:56) (No Huddle, Shotgun) 10-J.Love pass deep left to 11-J.Reed to PHI 24 for 26 yards (32-R.Blankenship).
(10:11) 31-Em.Wilson left guard to PHI 15 for 9 yards (27-Q.Mitchell, 98-J.Carter).
(9:30) 10-J.Love pass short right to 31-Em.Wilson to PHI 13 for 2 yards (53-Z.Baun).
(8:49) (Shotgun) 8-J.Jacobs right guard to PHI 8 for 5 yards (53-Z.Baun; 32-R.Blankenship).
(8:06) 10-J.Love pass incomplete short left.
(8:01) (Shotgun) 10-J.Love pass incomplete short middle to 87-R.Doubs [97-M.Ojomo].
(7:56) 44-B.Narveson 26 yard field goal is GOOD, Center-42-M.Orzech, Holder-19-D.Whelan.
44-B.Narveson kicks 65 yards from GB 35 to end zone, Touchback to the PHI 30.
(7:52) (Shotgun) 26-S.Barkley left end to PHI 28 for -2 yards (7-Q.Walker). PHI-11-A.Brown was injured during the play.
(7:09) (Shotgun) 1-J.Hurts pass incomplete short right [90-L.Van Ness]. PENALTY on GB-23-J.Alexander, Defensive Holding, 5 yards, enforced at PHI 28 - No Play.
(6:59) (Shotgun) 26-S.Barkley up the middle to PHI 42 for 9 yards (58-I.McDuffie). ** Injury Update: PHI-11-A.Brown has returned to the game.
(6:18) (Shotgun) 26-S.Barkley up the middle to PHI 44 for 2 yards (56-E.Cooper; 52-R.Gary).
(5:33) (Shotgun) 1-J.Hurts scrambles right tackle to GB 48 for 8 yards (20-J.Bullard).
Timeout #1 by PHI at 05:33.
(4:52) (Shotgun) 1-J.Hurts pass short right to 14-K.Gainwell ran ob at GB 45 for 3 yards (21-E.Stokes). PENALTY on PHI-65-L.Johnson, Illegal Formation, 5 yards, enforced at GB 48 - No Play.
(4:48) (Shotgun) 1-J.Hurts pass incomplete short right to 11-A.Brown (23-J.Alexander). Penalty on PHI-51-C.Jurgens, Ineligible Downfield Pass, declined.
(4:43) (Shotgun) 1-J.Hurts scrambles up the middle to GB 47 for 6 yards (7-Q.Walker, 94-K.Brooks). PENALTY on GB-97-K.Clark, Defensive Holding, 5 yards, enforced at GB 47.
(4:32) (Shotgun) 26-S.Barkley left tackle to GB 40 for 2 yards (45-Er.Wilson; 58-I.McDuffie).
(3:48) (Shotgun) 1-J.Hurts scrambles left end to GB 32 for 8 yards (21-E.Stokes, 7-Q.Walker).
(3:04) (Shotgun) 26-S.Barkley up the middle to GB 35 for -3 yards (95-D.Wyatt).
(2:23) (Shotgun) 1-J.Hurts pass short left to 6-D.Smith to GB 19 for 16 yards (29-X.McKinney).
(2:15) (Shotgun) 26-S.Barkley up the middle to GB 17 for 2 yards (58-I.McDuffie; 93-T.Slaton).
Timeout #1 by GB at 02:15.
(2:10) (Shotgun) 1-J.Hurts pass short left to 6-D.Smith to GB 6 for 11 yards (20-J.Bullard; 21-E.Stokes).
Timeout #2 by GB at 02:10.
(2:00) (Shotgun) 26-S.Barkley up the middle to GB 4 for 2 yards (20-J.Bullard).
(1:57) (Shotgun) 26-S.Barkley right guard to GB 1 for 3 yards (7-Q.Walker; 93-T.Slaton).
Timeout #3 by GB at 01:57.
(1:12) 1-J.Hurts FUMBLES (Aborted) at GB 2, recovered by PHI-26-S.Barkley at GB 3.
Timeout #2 by PHI at 01:12.
(:30) 4-J.Elliott 21 yard field goal is GOOD, Center-49-R.Lovato, Holder-10-B.Mann. Penalty on GB-29-X.McKinney, Defensive Offside, declined.
Timeout #3 by PHI at 00:30.
10-B.Mann kicks 73 yards from PHI 35 to GB -8. 25-K.Nixon to GB 16 for 24 yards (28-W.Shipley, 3-N.Smith).
(:22) (Shotgun) 10-J.Love pass deep left to 11-J.Reed pushed ob at GB 49 for 33 yards (27-Q.Mitchell).
(:15) (No Huddle, Shotgun) 8-J.Jacobs left end ran ob at PHI 47 for 4 yards (53-Z.Baun). GB-10-J.Love was injured during the play. GB-71-J.Myers was injured during the play.
(:06) (Shotgun) 2-M.Willis pass incomplete short left to 87-R.Doubs.
Timeout #4 by GB at 00:06.
(:03) (Shotgun) 2-M.Willis sacked at GB 49 for -4 yards (53-Z.Baun).
END GAME"

gb_phi_summary <- "Headline: Barkley scores 3 TDs as Eagles beat Packers 34-29. Packers' Love injured in final minute.
Summary: Saquon Barkley had a spectacular performance for the Philadelphia Eagles. Barkley scored three touchdowns, and led the Eagles to a 34-29 victory over the Green Bay Packers, who lost quarterback Jordan Love to an injury in the closing seconds. The game began with Philadelphia committing turnovers on each of its first two series, enabling Green Bay to start back-to-back drives in the red zone, but the Packers settled for field goals both times. The offenses improved massively and took over in the second and third quarters. Six of seven possessions resulted in touchdowns. Barkley’s third touchdown put the Eagles ahead 31-26 with 4:26 left in the third quarter. Reed Blankenship set up that score with an interception that gave Philadelphia the ball at Green Bay’s 25. The Eagles still led 31-26 when Jaire Alexander intercepted Hurts in the end zone early in the fourth quarter. Green Bay drove into the red zone but settled for a 26-yard field goal by Narveson, who went 3 for 4 on his attempts. Philadelphia then controlled possession until Jake Elliott kicked a 21-yard field goal with 27 seconds left. In the final seconds, Green Bay backup quarterback Malik Willis was sacked by Zack Baun on the final play, preventing him from launching a Hail Mary from the Philadelphia 47.
Notable Performances: Barkley rushed for 109 yards and scored on an 18-yard catch and runs of 11 and 2 yards. Jalen Hurts was 20 of 34 for 278 yards with two touchdowns and two interceptions for the Eagles. A.J. Brown caught five passes for 119 yards, including a 67-yard touchdown.  Green Bay’s Jayden Reed scored on a 33-yard jet sweep and a 70-yard reception. He finished with four catches for 138 yards. Love went 17 of 34 for 260 yards with two touchdowns and an interception."

# Append game log and summary to training dataframe 
gb_phi <- as.data.frame(cbind(gb_phi_log, gb_phi_summary)) %>% rename(game_log = gb_phi_log, game_summary = gb_phi_summary)
training <- rbind(training, gb_phi)

min_nyg_log <- "GAME
16-W.Reichard kicks 65 yards from MIN 35 to end zone, Touchback to the NYG 30.
(15:00) 26-D.Singletary right guard to NYG 32 for 2 yards (51-B.Cashman; 97-H.Phillips).
(14:20) 8-D.Jones pass short left to 26-D.Singletary to NYG 26 for -6 yards (7-B.Murphy).
(13:31) (Shotgun) PENALTY on NYG, Delay of Game, 5 yards, enforced at NYG 26 - No Play.
(13:14) (Shotgun) 8-D.Jones pass incomplete short left to 84-T.Johnson.
(13:09) 6-J.Gillan punts 54 yards to MIN 25, Center-59-C.Kreiter. 4-B.Powell pushed ob at MIN 37 for 12 yards (47-T.Summers). PENALTY on MIN-20-Jy.Ward, Offensive Holding, 10 yards, enforced at MIN 25.
(12:59) 33-A.Jones up the middle to MIN 16 for 1 yard (93-R.Nunez-Roches, 97-D.Lawrence).
(12:16) 14-S.Darnold sacked at MIN 9 for -7 yards (97-D.Lawrence).
(11:30) (Shotgun) 14-S.Darnold pass short right to 30-C.Ham to MIN 17 for 8 yards (22-A.Phillips). FUMBLES (22-A.Phillips), RECOVERED by NYG-58-B.Okereke at MIN 21. 58-B.Okereke ran ob at MIN 20 for 1 yard.
(11:23) 20-E.Gray left end to MIN 20 for no gain (0-I.Pace).
(10:39) 8-D.Jones pass short right to 82-D.Bellinger to MIN 17 for 3 yards (51-B.Cashman) [0-I.Pace].
(9:54) (Shotgun) 8-D.Jones scrambles right end to MIN 10 for 7 yards (22-H.Smith; 51-B.Cashman). Penalty on MIN-15-D.Turner, Defensive Offside, declined.
(9:23) 26-D.Singletary right guard to MIN 6 for 4 yards (44-J.Metellus).
(8:40) (Shotgun) 8-D.Jones left end to MIN 5 for 1 yard (43-A.Van Ginkel; 97-H.Phillips).
(7:58) (Shotgun) 8-D.Jones sacked at MIN 5 for 0 yards (43-A.Van Ginkel).
(7:19) 9-G.Gano 23 yard field goal is GOOD, Center-59-C.Kreiter, Holder-6-J.Gillan.
9-G.Gano kicks 65 yards from NYG 35 to end zone, Touchback to the MIN 30. PENALTY on NYG-22-A.Phillips, Illegal Formation, 5 yards, enforced at MIN 30.
(7:16) 33-A.Jones left end pushed ob at MIN 46 for 11 yards (44-N.McCloud). PENALTY on MIN-56-G.Bradbury, Offensive Holding, 10 yards, enforced at MIN 35 - No Play.
(6:50) (Shotgun) 14-S.Darnold scrambles up the middle to MIN 28 for 3 yards (28-C.Flott; 53-D.Muasau).
(6:08) (Shotgun) 14-S.Darnold pass short right to 33-A.Jones pushed ob at MIN 37 for 9 yards (3-D.Banks).
(5:32) (Shotgun) 14-S.Darnold pass incomplete deep right to 3-J.Addison. PENALTY on NYG-21-A.Jackson, Defensive Pass Interference, 36 yards, enforced at MIN 37 - No Play.
(5:26) 14-S.Darnold pass deep middle to 84-J.Oliver to NYG 5 for 22 yards (31-T.Nubin).
(4:42) (Shotgun) 33-A.Jones right guard to NYG 3 for 2 yards (0-B.Burns).
(3:56) 33-A.Jones left end for 3 yards, TOUCHDOWN.
16-W.Reichard extra point is GOOD, Center-42-A.DePaola, Holder-17-R.Wright.
16-W.Reichard kicks 59 yards from MIN 35 to NYG 6. 20-E.Gray to NYG 28 for 22 yards (0-I.Pace).
(3:45) 8-D.Jones scrambles left end ran ob at NYG 32 for 4 yards (2-S.Gilmore).
(3:09) 26-D.Singletary left guard to NYG 35 for 3 yards (0-I.Pace).
(2:25) (Shotgun) 8-D.Jones pass short middle to 17-W.Robinson to NYG 40 for 5 yards (7-B.Murphy).
(1:49) 8-D.Jones pass incomplete short left to 1-M.Nabers (44-J.Metellus).
(1:45) (Shotgun) 8-D.Jones pass incomplete short left to 1-M.Nabers.
(1:42) (Shotgun) 8-D.Jones pass short left to 1-M.Nabers to MIN 35 for 25 yards (24-C.Bynum, 22-H.Smith).
(1:04) PENALTY on NYG, Offensive Too Many Men on Field, 5 yards, enforced at MIN 35 - No Play.
(:49) (Shotgun) 8-D.Jones pass short left to 1-M.Nabers to MIN 36 for 4 yards (0-I.Pace; 2-S.Gilmore).
(:09) (Shotgun) PENALTY on NYG-72-J.Eluemunor, False Start, 5 yards, enforced at MIN 36 - No Play.
END QUARTER 1
(15:00) (Shotgun) 29-T.Tracy left end to MIN 31 for 10 yards (22-H.Smith). PENALTY on NYG-17-W.Robinson, Offensive Holding, 10 yards, enforced at MIN 39. Officially a 2 yard rush.
(14:42) (Shotgun) 8-D.Jones pass short left to 26-D.Singletary to MIN 40 for 9 yards (0-I.Pace).
(13:55) (Shotgun) 8-D.Jones pass incomplete short right to 17-W.Robinson [58-J.Greenard].
(13:51) 6-J.Gillan punts 39 yards to MIN 1, impetus ends at MIN 1, Center-59-C.Kreiter, downed by NYG-88-B.Ford-Wheaton.
(13:39) 32-T.Chandler right guard to MIN 2 for 1 yard (97-D.Lawrence, 31-T.Nubin).
(12:58) 14-S.Darnold pass short right to 32-T.Chandler pushed ob at MIN 12 for 10 yards (53-D.Muasau).
(12:22) PENALTY on MIN-64-B.Brandel, False Start, 5 yards, enforced at MIN 12 - No Play.
(12:08) (Shotgun) 32-T.Chandler right tackle to MIN 10 for 3 yards (28-C.Flott; 93-R.Nunez-Roches).
(11:41) (No Huddle, Shotgun) 14-S.Darnold pass deep left to 18-J.Jefferson to NYG 46 for 44 yards (3-D.Banks).
(10:55) 32-T.Chandler right end to NYG 40 for 6 yards (0-B.Burns).
(10:30) (No Huddle, Shotgun) 14-S.Darnold pass deep right to 3-J.Addison to NYG 24 for 16 yards (44-N.McCloud) [5-K.Thibodeaux].
(9:41) (Shotgun) 14-S.Darnold pass short right to 3-J.Addison pushed ob at NYG 11 for 13 yards (44-N.McCloud).
(9:02) (Shotgun) 14-S.Darnold pass short right to 32-T.Chandler to NYG 6 for 5 yards (53-D.Muasau).
(8:25) 32-T.Chandler left end to NYG 9 for -3 yards (3-D.Banks).
(7:41) (Shotgun) 14-S.Darnold pass short left to 3-J.Addison to NYG 3 for 6 yards (22-A.Phillips).
(6:58) (Shotgun) 14-S.Darnold pass short left to 18-J.Jefferson for 3 yards, TOUCHDOWN.
16-W.Reichard extra point is GOOD, Center-42-A.DePaola, Holder-17-R.Wright.
16-W.Reichard kicks 65 yards from MIN 35 to end zone, Touchback to the NYG 30.
(6:55) 26-D.Singletary up the middle to NYG 36 for 6 yards (1-S.Griffin, 43-A.Van Ginkel).
(6:14) 8-D.Jones pass incomplete short right to 84-T.Johnson.
(6:10) (Shotgun) 8-D.Jones pass short right to 86-D.Slayton pushed ob at NYG 44 for 8 yards (7-B.Murphy).
(5:36) (Shotgun) 26-D.Singletary left tackle to NYG 49 for 5 yards (43-A.Van Ginkel).
(4:53) (Shotgun) 8-D.Jones left tackle to MIN 48 for 3 yards (51-B.Cashman, 91-P.Jones).
(4:15) (Shotgun) 8-D.Jones right tackle to MIN 49 for -1 yards (90-J.Bullard).
(3:39) 6-J.Gillan punts 34 yards to MIN 15, Center-59-C.Kreiter, out of bounds.
(3:33) 33-A.Jones right end pushed ob at MIN 16 for 1 yard (21-A.Jackson). PENALTY on MIN-84-J.Oliver, Offensive Holding, 7 yards, enforced at MIN 15 - No Play.
(3:01) (Shotgun) 14-S.Darnold pass short middle to 33-A.Jones to MIN 14 for 6 yards (58-B.Okereke).
(2:40) (No Huddle) 33-A.Jones left tackle to MIN 24 for 10 yards (27-J.Pinnock).
(2:00) (Shotgun) 33-A.Jones right guard to MIN 26 for 2 yards (31-T.Nubin).
(1:21) 14-S.Darnold pass short right to 18-J.Jefferson ran ob at MIN 29 for 3 yards (21-A.Jackson).
(1:15) (Shotgun) 14-S.Darnold pass incomplete short middle to 3-J.Addison (24-D.Belton).
(1:09) (Shotgun) 14-S.Darnold pass short left to 86-J.Mundt to MIN 35 for 6 yards (21-A.Jackson).
(1:01) 17-R.Wright punts 44 yards to NYG 21, Center-42-A.DePaola. 86-D.Slayton MUFFS catch, touched at NYG 17, recovered by NYG-24-D.Belton at NYG 13. PENALTY on MIN-0-I.Pace, Unnecessary Roughness, 15 yards, enforced at NYG 13. Penalty on MIN-0-I.Pace, Offensive Holding, declined.
Timeout #1 by NYG at 01:01.
(:51) (Shotgun) 8-D.Jones pass short left to 17-W.Robinson to NYG 35 for 7 yards (22-H.Smith; 7-B.Murphy).
(:33) (No Huddle, Shotgun) 8-D.Jones pass incomplete short left to 84-T.Johnson [52-Ji.Ward].
(:29) (Shotgun) 8-D.Jones pass incomplete short left to 86-D.Slayton. PENALTY on MIN-1-S.Griffin, Defensive Pass Interference, 6 yards, enforced at NYG 35 - No Play.
(:26) (Shotgun) 8-D.Jones sacked at NYG 37 for -4 yards (15-D.Turner).
(:21) (Shotgun) 8-D.Jones pass incomplete short right [43-A.Van Ginkel].
Timeout #2 by NYG at 00:21.
(:14) (Shotgun) 8-D.Jones pass incomplete short middle to 17-W.Robinson.
(:09) 6-J.Gillan punts 52 yards to MIN 11, Center-59-C.Kreiter, downed by NYG-24-D.Belton.
END QUARTER 2
9-G.Gano kicks 65 yards from NYG 35 to end zone, Touchback to the MIN 30.
(15:00) 33-A.Jones left end to MIN 34 for 4 yards (93-R.Nunez-Roches; 58-B.Okereke).
(14:33) (No Huddle) 14-S.Darnold pass short left to 3-J.Addison to MIN 34 for no gain (53-D.Muasau). PENALTY on MIN-71-C.Darrisaw, Offensive Holding, 10 yards, enforced at MIN 34 - No Play.
(14:12) (Shotgun) 14-S.Darnold pass incomplete short left to 86-J.Mundt.
(14:08) (Shotgun) 14-S.Darnold pass short right to 86-J.Mundt to MIN 33 for 9 yards (58-B.Okereke, 22-A.Phillips). PENALTY on NYG-5-K.Thibodeaux, Face Mask, 15 yards, enforced at MIN 33.
(13:40) 33-A.Jones right tackle to NYG 40 for 12 yards (31-T.Nubin).
(12:59) 33-A.Jones left guard to NYG 21 for 19 yards (31-T.Nubin).
(12:13) (Shotgun) 14-S.Darnold pass deep right to 83-J.Nailor for 21 yards, TOUCHDOWN.
16-W.Reichard extra point is GOOD, Center-42-A.DePaola, Holder-17-R.Wright.
16-W.Reichard kicks 65 yards from MIN 35 to end zone, Touchback to the NYG 30.
(12:08) (Shotgun) 8-D.Jones pass short middle to 1-M.Nabers to NYG 35 for 5 yards (7-B.Murphy).
(11:25) (Shotgun) 8-D.Jones pass incomplete short middle to 26-D.Singletary.
(11:20) (Shotgun) 8-D.Jones pass deep left to 1-M.Nabers to MIN 40 for 25 yards (7-B.Murphy, 24-C.Bynum).
(10:34) 29-T.Tracy right tackle to MIN 40 for no gain (44-J.Metellus, 99-J.Tillery).
(9:57) 8-D.Jones sacked at MIN 42 for -2 yards (97-H.Phillips).
(9:13) (Shotgun) 8-D.Jones pass short left to 17-W.Robinson to MIN 31 for 11 yards (51-B.Cashman).
(8:34) 8-D.Jones up the middle to MIN 30 for 1 yard (99-J.Tillery).
(7:51) 8-D.Jones pass incomplete short left to 26-D.Singletary. PENALTY on NYG-74-G.Van Roten, Offensive Holding, 9 yards, enforced at MIN 30 - No Play.
(7:46) (Shotgun) 8-D.Jones pass incomplete short left to 29-T.Tracy.
(7:43) (Shotgun) 8-D.Jones sacked at MIN 46 for -7 yards (91-P.Jones).
(7:03) (Shotgun) 8-D.Jones pass short middle to 17-W.Robinson to MIN 31 for 15 yards (22-H.Smith).
(6:14) 9-G.Gano 50 yard field goal is GOOD, Center-59-C.Kreiter, Holder-6-J.Gillan.
9-G.Gano kicks 65 yards from NYG 35 to end zone, Touchback to the MIN 30.
(6:08) (Shotgun) 32-T.Chandler left guard to MIN 31 for 1 yard (31-T.Nubin).
Timeout #1 by MIN at 06:08.
(5:29) 14-S.Darnold pass short right to 84-J.Oliver to MIN 36 for 5 yards (0-B.Burns).
(4:41) (Shotgun) 14-S.Darnold pass incomplete deep left to 18-J.Jefferson (27-J.Pinnock).
Timeout #2 by MIN at 04:41.
(4:37) 17-R.Wright punts 47 yards to NYG 17, Center-42-A.DePaola, downed by MIN-28-B.McCain.
(4:26) (Shotgun) 8-D.Jones pass short right intended for 17-W.Robinson INTERCEPTED by 43-A.Van Ginkel at NYG 10. 43-A.Van Ginkel for 10 yards, TOUCHDOWN.
16-W.Reichard extra point is GOOD, Center-42-A.DePaola, Holder-17-R.Wright.
16-W.Reichard kicks 65 yards from MIN 35 to end zone, Touchback to the NYG 30.
(4:22) (Shotgun) 8-D.Jones pass incomplete short left. Penalty on NYG-72-J.Eluemunor, Ineligible Downfield Pass, declined.
(4:17) (Shotgun) 8-D.Jones pass short left to 1-M.Nabers to NYG 37 for 7 yards (7-B.Murphy).
(3:36) (Shotgun) 8-D.Jones pass incomplete short right to 17-W.Robinson (97-H.Phillips).
(3:32) (Shotgun) PENALTY on NYG, Delay of Game, 5 yards, enforced at NYG 37 - No Play.
(3:32) 6-J.Gillan punts 50 yards to MIN 18, Center-59-C.Kreiter, out of bounds.
(3:21) 14-S.Darnold pass short right to 18-J.Jefferson pushed ob at MIN 27 for 9 yards (28-C.Flott).
(2:48) 33-A.Jones right tackle to MIN 35 for 8 yards (93-R.Nunez-Roches).
(2:24) (No Huddle) 14-S.Darnold pass deep left INTERCEPTED by 53-D.Muasau (97-D.Lawrence) at NYG 48. 53-D.Muasau to NYG 49 for 1 yard (84-J.Oliver).
(2:15) 8-D.Jones pass short middle to 26-D.Singletary to MIN 39 for 12 yards (1-S.Griffin) [44-J.Metellus].
(1:24) (Shotgun) 26-D.Singletary right tackle to MIN 38 for 1 yard (51-B.Cashman, 1-S.Griffin).
(:45) (Shotgun) 8-D.Jones pass short right to 86-D.Slayton ran ob at MIN 31 for 7 yards (44-J.Metellus).
(:07) 26-D.Singletary left guard to MIN 24 for 7 yards (2-S.Gilmore).
END QUARTER 3
(15:00) (Shotgun) 8-D.Jones pass short right to 86-D.Slayton to MIN 13 for 11 yards (7-B.Murphy).
(14:35) (No Huddle, Shotgun) 8-D.Jones pass incomplete short right.
(14:31) 26-D.Singletary up the middle to MIN 11 for 2 yards (44-J.Metellus; 97-H.Phillips).
(13:49) (Shotgun) 8-D.Jones pass incomplete short right to 17-W.Robinson.
(13:46) (Shotgun) 8-D.Jones pass short middle intended for 86-D.Slayton INTERCEPTED by 22-H.Smith at MIN -2. Touchback.
(13:40) 32-T.Chandler left end pushed ob at MIN 25 for 5 yards (3-D.Banks).
(13:01) 32-T.Chandler left guard to MIN 26 for 1 yard (93-R.Nunez-Roches).
(12:18) (Shotgun) 14-S.Darnold pass short right to 32-T.Chandler pushed ob at MIN 36 for 10 yards (24-D.Belton).
(11:38) 32-T.Chandler right guard to MIN 39 for 3 yards (53-D.Muasau).
(10:56) 14-S.Darnold pass short right to 30-C.Ham to MIN 42 for 3 yards (51-A.Ojulari).
(10:10) (Shotgun) 14-S.Darnold pass incomplete short left to 18-J.Jefferson.
(10:05) 17-R.Wright punts 26 yards to NYG 32, Center-42-A.DePaola, out of bounds.
(9:59) (Shotgun) 8-D.Jones pass incomplete deep middle to 13-J.Hyatt.
(9:54) (Shotgun) 26-D.Singletary right guard to NYG 36 for 4 yards (15-D.Turner, 97-H.Phillips).
(9:12) (Shotgun) 8-D.Jones pass short middle to 17-W.Robinson to NYG 42 for 6 yards (7-B.Murphy).
(8:49) (No Huddle, Shotgun) 8-D.Jones pass short middle to 84-T.Johnson to MIN 40 for 18 yards (22-H.Smith).
(8:27) (No Huddle, Shotgun) 8-D.Jones pass short right to 26-D.Singletary to MIN 40 for no gain (24-C.Bynum; 0-I.Pace).
(7:50) (Shotgun) 17-W.Robinson left end to MIN 26 for 14 yards (24-C.Bynum, 22-H.Smith).
(7:20) (No Huddle, Shotgun) 8-D.Jones pass short left to 20-E.Gray to MIN 17 for 9 yards (99-J.Tillery; 91-P.Jones).
(6:41) (No Huddle, Shotgun) 20-E.Gray left tackle to MIN 11 for 6 yards (15-D.Turner).
(6:05) 26-D.Singletary left end to MIN 8 for 3 yards (1-S.Griffin).
(5:39) (Shotgun) 8-D.Jones pass short right to 17-W.Robinson pushed ob at MIN 8 for no gain (2-S.Gilmore).
Timeout #3 by MIN at 05:39.
(5:01) (Shotgun) 8-D.Jones pass incomplete short right [52-Ji.Ward].
(4:56) (Shotgun) 8-D.Jones pass incomplete short middle to 17-W.Robinson (7-B.Murphy). TURNOVER ON DOWNS. 
(4:52) 33-A.Jones left end to MIN 27 for 19 yards (53-D.Muasau).
(4:02) 33-A.Jones right tackle to MIN 26 for -1 yards (22-A.Phillips).
(3:17) (Shotgun) 33-A.Jones right guard to MIN 36 for 10 yards (27-J.Pinnock).
(2:57) (No Huddle) 14-S.Darnold up the middle to MIN 37 for 1 yard (94-E.Chatman).
(2:04) 33-A.Jones left end to MIN 41 for 4 yards (0-B.Burns).
(1:57) 33-A.Jones left end to MIN 42 for 1 yard (95-J.Riley).
(1:47) (Shotgun) 37-M.Gaskin up the middle to MIN 39 for -3 yards (53-D.Muasau).
Timeout #1 by NYG at 01:47.
(1:42) 17-R.Wright punts 47 yards to NYG 14, Center-42-A.DePaola, fair catch by 86-D.Slayton.
Timeout #2 by NYG at 01:42.
(1:36) (Shotgun) 8-D.Jones pass short right to 29-T.Tracy to NYG 19 for 5 yards (26-Th.Jackson).
(1:13) (No Huddle, Shotgun) 8-D.Jones pass incomplete short right to 29-T.Tracy (99-J.Tillery) [99-J.Tillery].
(1:10) (No Huddle, Shotgun) 8-D.Jones sacked at NYG 12 for -7 yards (91-P.Jones).
(:36) 6-J.Gillan punts 48 yards to MIN 40, Center-59-C.Kreiter, out of bounds.
(:29) 14-S.Darnold kneels to MIN 39 for -1 yards.
END GAME"

min_nyg_summary <- "Headline:
Darnold throws 2 TD passes and Van Ginkel scores on an INT as Vikings easily top Giants 28-6.
Summary:
Darnold threw two touchdown passes in a highly efficient performance and Andrew Van Ginkel scored on a spectacular one-handed 10-yard interception return to lead the Vikings to an easy 28-6 victory the New York Giants.
Darnold completed his first 12 passes and had touchdown passes of 3 yards to Justin Jefferson and 21 to Jalen Nailor. He also had a 22-yard pass to Josh Oliver to help set up Aaron Jones' 3-yard TD run that put Minnesota ahead 7-3 late in the first quarter.
Giants inside linebacker Bobby Okereke recovered a fumble to set up the game's opening score. 
The Vikings made all the big plays and none was more impressive than Van Ginkel’s grab of Daniel Jones' pass deep in his own territory late in the third quarter put an exclamation point on a solid defensive performance by Minnesota’s unit.
Jones did not play well and got little help from his new offensive line or his receivers, resulting in an overall disappointing performance by the Giants.
Notable Performances:
Darnold finished 19 of 24 for 208 yards, 2 TDs, and one interception that came on a deflected pass.
Jefferson had four catches for 59 yards, with his 1 TD coming on a fourth-down pass. 
Malik Nabers had five receptions for 66 yards, including two for 25 yards.
Jones finished 22 of 42 for 186 yards and two interceptions, the second by safety Harrison Smith.
Injuries:
Vikings: WR Jordan Addison was ruled out after an ankle injury in the second half."

# Append game log and summary to training dataframe 
min_nyg <- as.data.frame(cbind(min_nyg_log, min_nyg_summary)) %>% rename(game_log = min_nyg_log, game_summary = min_nyg_summary)
training <- rbind(training, min_nyg)

buf_mia_log <- "GAME
2-T.Bass kicks 65 yards from BUF 35 to end zone, Touchback to the MIA 30.
(15:00) (Shotgun) 1-T.Tagovailoa pass short left to 17-J.Waddle to MIA 33 for 3 yards (31-R.Douglas).
(14:27) (Shotgun) 28-D.Achane right guard to MIA 39 for 6 yards (43-T.Bernard, 31-R.Douglas).
(13:49) 30-A.Ingold right guard to MIA 42 for 3 yards (91-E.Oliver).
(13:12) (Shotgun) 28-D.Achane right end to MIA 39 for -3 yards (31-R.Douglas).
(12:32) (Shotgun) 1-T.Tagovailoa pass incomplete deep left to 10-T.Hill.
(12:26) (Shotgun) 1-T.Tagovailoa pass deep left intended for 88-G.DuBose INTERCEPTED by 46-J.Ingram at BUF 38. 46-J.Ingram to MIA 37 for 25 yards (0-B.Berrios, 9-J.Smith).
(12:16) (Shotgun) 17-J.Allen pass short left to 86-D.Kincaid to MIA 28 for 9 yards (8-J.Holland; 20-J.Brooks).
(11:46) (No Huddle) 4-J.Cook up the middle to MIA 24 for 4 yards (29-K.Fuller).
(11:18) (Shotgun) 17-J.Allen pass short right to 86-D.Kincaid to MIA 16 for 8 yards (21-J.Poyer).
(10:43) 17-J.Allen pass incomplete short right.
(10:37) (Shotgun) 26-Ty.Johnson up the middle to MIA 17 for -1 yards (11-D.Long, 92-Z.Sieler).
(9:55) 17-J.Allen pass short left to 4-J.Cook for 17 yards, TOUCHDOWN.
Timeout #1 by BUF at 09:55.
2-T.Bass extra point is GOOD, Center-69-R.Ferguson, Holder-8-S.Martin.
2-T.Bass kicks 65 yards from BUF 35 to end zone, Touchback to the MIA 30.
(9:49) (Shotgun) 1-T.Tagovailoa pass short left to 9-J.Smith to MIA 45 for 15 yards (3-D.Hamlin).
(9:09) (Shotgun) 17-J.Waddle right end pushed ob at MIA 49 for 4 yards (9-T.Rapp).
(8:34) (Shotgun) 1-T.Tagovailoa pass short middle to 10-T.Hill pushed ob at BUF 41 for 10 yards (47-C.Benford).
(7:56) (Shotgun) PENALTY on MIA-89-J.Hill, False Start, 5 yards, enforced at BUF 41 - No Play.
(7:43) (Shotgun) 28-D.Achane right end to BUF 32 for 14 yards (3-D.Hamlin).
(7:01) (Shotgun) 28-D.Achane up the middle to BUF 24 for 8 yards (47-C.Benford).
(6:23) (Shotgun) 28-D.Achane left end to BUF 24 for no gain (57-A.Epenesa).
(5:44) (Shotgun) 1-T.Tagovailoa pass short left to 23-J.Wilson to BUF 18 for 6 yards (43-T.Bernard).
(5:03) (Shotgun) 1-T.Tagovailoa pass short middle to 17-J.Waddle to BUF 1 for 17 yards (3-D.Hamlin).
(4:18) (Shotgun) PENALTY on MIA-74-L.Eichenberg, False Start, 5 yards, enforced at BUF 1 - No Play.
(4:05) (Shotgun) 28-D.Achane up the middle to BUF 5 for 1 yard (57-A.Epenesa).
(3:28) (Shotgun) 1-T.Tagovailoa pass short right to 28-D.Achane for 5 yards, TOUCHDOWN.
7-J.Sanders extra point is GOOD, Center-48-B.Ferguson, Holder-16-J.Bailey.
7-J.Sanders kicks 65 yards from MIA 35 to end zone, Touchback to the BUF 30.
(3:21) 4-J.Cook left guard to BUF 33 for 3 yards (11-D.Long).
(2:55) (No Huddle, Shotgun) 17-J.Allen pass short middle to 10-K.Shakir to BUF 39 for 6 yards (11-D.Long).
(2:14) (Shotgun) 17-J.Allen to BUF 34 for -5 yards. FUMBLES, and recovers at BUF 33. 17-J.Allen pass incomplete short right to 13-M.Hollins (93-C.Campbell).
(2:07) 8-S.Martin punts 45 yards to MIA 16, Center-69-R.Ferguson, fair catch by 0-B.Berrios.
(2:00) (Shotgun) 28-D.Achane left tackle to MIA 17 for 1 yard (54-B.Spector).
(1:23) 10-T.Hill left end pushed ob at MIA 29 for 12 yards (3-D.Hamlin).
(:47) (Shotgun) 1-T.Tagovailoa pass deep right intended for 84-R.Chosen INTERCEPTED by 47-C.Benford at 50. 47-C.Benford pushed ob at MIA 44 for 6 yards (84-R.Chosen). ** Injury Update: BUF-99-C.Toohill has returned to the game.
(:41) (Shotgun) 10-K.Shakir left end to MIA 42 for 2 yards (8-J.Holland).
END QUARTER 1
(15:00) (Shotgun) 17-J.Allen scrambles right tackle to MIA 39 for 3 yards (20-J.Brooks).
(14:22) (Shotgun) 17-J.Allen pass short middle to 10-K.Shakir to MIA 28 for 11 yards (11-D.Long).
(13:43) 4-J.Cook left guard to MIA 25 for 3 yards (20-J.Brooks).
(12:56) (Shotgun) 17-J.Allen pass incomplete deep left to 1-C.Samuel (20-J.Brooks).
(12:50) (Shotgun) 17-J.Allen pass incomplete short right to 26-Ty.Johnson.
(12:45) 2-T.Bass 43 yard field goal is GOOD, Center-69-R.Ferguson, Holder-8-S.Martin.
2-T.Bass kicks 65 yards from BUF 35 to end zone, Touchback to the MIA 30.
(12:41) (Shotgun) 25-J.Wright left end to MIA 33 for 3 yards (99-C.Toohill).
(12:06) (Shotgun) 25-J.Wright left guard to MIA 43 for 10 yards (9-T.Rapp; 42-Do.Williams). PENALTY on MIA-72-T.Armstead, Offensive Holding, 10 yards, enforced at MIA 33 - No Play.
(11:45) (Shotgun) 1-T.Tagovailoa pass short left to 9-J.Smith to MIA 37 for 14 yards (42-Do.Williams).
(11:05) (Shotgun) 1-T.Tagovailoa pass incomplete deep left to 10-T.Hill.
(11:02) 16-J.Bailey punts 48 yards to BUF 15, Center-48-B.Ferguson, fair catch by 29-B.Codrington.
(10:54) 17-J.Allen pass short right to 22-R.Davis to BUF 14 for -1 yards (44-C.Robinson, 5-J.Ramsey).
(10:13) (Shotgun) 17-J.Allen pass deep middle to 10-K.Shakir to BUF 35 for 21 yards (21-J.Poyer). PENALTY on MIA-21-J.Poyer, Unnecessary Roughness, 15 yards, enforced at BUF 35.
(9:53) 22-R.Davis up the middle to MIA 42 for 8 yards (4-K.Kohou).
(9:24) (No Huddle) 22-R.Davis up the middle to MIA 32 for 10 yards (21-J.Poyer, 8-J.Holland).
(8:45) 22-R.Davis right tackle to MIA 33 for -1 yards (11-D.Long).
(8:01) (Shotgun) PENALTY on BUF-79-S.Brown, False Start, 5 yards, enforced at MIA 33 - No Play.
(7:52) (Shotgun) 17-J.Allen pass short middle to 10-K.Shakir to MIA 34 for 4 yards (11-D.Long).
(7:11) (Shotgun) 17-J.Allen pass deep right to 26-Ty.Johnson to MIA 1 for 33 yards (5-J.Ramsey).
(6:28) 4-J.Cook left tackle for 1 yard, TOUCHDOWN.
2-T.Bass extra point is GOOD, Center-69-R.Ferguson, Holder-8-S.Martin.
2-T.Bass kicks 65 yards from BUF 35 to end zone, Touchback to the MIA 30.
(6:25) (Shotgun) 28-D.Achane up the middle to MIA 47 for 17 yards (3-D.Hamlin, 9-T.Rapp).
(5:46) (Shotgun) 28-D.Achane up the middle to BUF 48 for 5 yards (54-B.Spector).
(5:07) 28-D.Achane right guard to BUF 44 for 4 yards (98-A.Johnson).
(4:27) 30-A.Ingold left guard to BUF 45 for -1 yards (42-Do.Williams, 54-B.Spector).
(3:50) (Shotgun) 1-T.Tagovailoa sacked at MIA 49 for -6 yards (91-E.Oliver).
(3:45) 70-A.Anderson reported in as eligible. 4-J.Cook up the middle for 49 yards, TOUCHDOWN.
2-T.Bass extra point is GOOD, Center-69-R.Ferguson, Holder-8-S.Martin.
2-T.Bass kicks 65 yards from BUF 35 to end zone, Touchback to the MIA 30.
(3:36) (Shotgun) 1-T.Tagovailoa pass short left to 17-J.Waddle to MIA 30 for no gain (39-C.Lewis).
(3:00) (Shotgun) 28-D.Achane right end to MIA 43 for 13 yards (42-Do.Williams; 50-G.Rousseau).
(2:22) (Shotgun) 28-D.Achane left guard to MIA 46 for 3 yards (39-C.Lewis).
(2:00) (Shotgun) 28-D.Achane right end to BUF 49 for 5 yards (54-B.Spector, 50-G.Rousseau).
(1:22) (Shotgun) 1-T.Tagovailoa pass short right to 9-J.Smith to BUF 45 for 4 yards (47-C.Benford; 42-Do.Williams).
(1:03) (No Huddle, Shotgun) 1-T.Tagovailoa pass short right to 28-D.Achane ran ob at BUF 41 for 4 yards (47-C.Benford).
(:57) (Shotgun) 28-D.Achane right end to BUF 46 for -5 yards (50-G.Rousseau).
(:33) 1-T.Tagovailoa scrambles left end ran ob at BUF 35 for 11 yards (40-V.Miller).
Timeout #1 by MIA at 00:33.
(:27) (Shotgun) 1-T.Tagovailoa pass short left to 23-J.Wilson to BUF 29 for 6 yards (54-B.Spector).
(:21) (Shotgun) 1-T.Tagovailoa pass short middle to 10-T.Hill to BUF 23 for 6 yards (54-B.Spector; 3-D.Hamlin).
Timeout #2 by MIA at 00:21.
(:16) (Shotgun) 1-T.Tagovailoa pass short right to 9-J.Smith ran ob at BUF 16 for 7 yards.
Timeout #3 by MIA at 00:16.
Timeout #2 by BUF at 00:16.
(:12) (Shotgun) 1-T.Tagovailoa pass incomplete short left.
Timeout #3 by BUF at 00:12.
(:08) 7-J.Sanders 34 yard field goal is GOOD, Center-48-B.Ferguson, Holder-16-J.Bailey.
7-J.Sanders kicks 65 yards from MIA 35 to end zone, Touchback to the BUF 30.
(:04) 17-J.Allen kneels to BUF 29 for -1 yards.
END QUARTER 2
7-J.Sanders kicks 62 yards from MIA 35 to BUF 3. 22-R.Davis to BUF 28 for 25 yards (56-Q.Bell). PENALTY on MIA-6-A.Walker, Illegal Formation, 5 yards, enforced at BUF 28.
(14:51) (Shotgun) 17-J.Allen pass short right to 86-D.Kincaid to BUF 42 for 9 yards (11-D.Long; 29-K.Fuller).
(14:12) 70-A.Anderson reported in as eligible. 4-J.Cook left tackle to BUF 47 for 5 yards (29-K.Fuller; 21-J.Poyer).
(13:37) (Shotgun) 17-J.Allen pass short right to 1-C.Samuel to 50 for 3 yards (11-D.Long).
(12:56) 4-J.Cook right guard to 50 for no gain (20-J.Brooks).
(12:22) (Shotgun) 17-J.Allen pass incomplete deep right to 15-M.Valdes-Scantling.
Timeout #1 by MIA at 12:22.
(12:17) 8-S.Martin punts 39 yards to MIA 11, Center-69-R.Ferguson, fair catch by 0-B.Berrios.
(12:10) (Shotgun) 28-D.Achane up the middle to MIA 13 for 2 yards (42-Do.Williams).
(11:34) (Shotgun) 1-T.Tagovailoa pass short left to 28-D.Achane ran ob at MIA 25 for 12 yards (47-C.Benford).
(11:03) (Shotgun) 28-D.Achane right end to MIA 29 for 4 yards (98-A.Johnson).
(10:22) (Shotgun) 28-D.Achane right end to MIA 30 for 1 yard (42-Do.Williams; 54-B.Spector).
(9:37) (Shotgun) 1-T.Tagovailoa pass short left INTERCEPTED by 46-J.Ingram [57-A.Epenesa] at MIA 31. 46-J.Ingram for 31 yards, TOUCHDOWN.
2-T.Bass extra point is GOOD, Center-69-R.Ferguson, Holder-8-S.Martin.
2-T.Bass kicks 65 yards from BUF 35 to end zone, Touchback to the MIA 30.
(9:27) (Shotgun) 1-T.Tagovailoa pass short right to 10-T.Hill to MIA 38 for 8 yards (31-R.Douglas). ** Injury Update: MIA-72-T.Armstead has returned to the game.
(8:46) (Shotgun) 25-J.Wright left end to MIA 36 for -2 yards (9-T.Rapp, 42-Do.Williams).
(8:02) (Shotgun) 1-T.Tagovailoa pass short middle to 17-J.Waddle to BUF 43 for 21 yards (31-R.Douglas).
(7:20) (Shotgun) 1-T.Tagovailoa pass incomplete short left to 10-T.Hill.
(7:14) (Shotgun) 25-J.Wright right end pushed ob at BUF 35 for 8 yards (54-B.Spector).
(6:43) 28-D.Achane up the middle to BUF 19 for 16 yards (9-T.Rapp; 3-D.Hamlin).
(6:00) (Shotgun) 1-T.Tagovailoa pass incomplete deep middle to 89-J.Hill.
(5:56) (Shotgun) 1-T.Tagovailoa pass short right to 9-J.Smith to BUF 12 for 7 yards (39-C.Lewis; 42-Do.Williams).
(5:16) (Shotgun) 28-D.Achane up the middle to BUF 13 for -1 yards (91-E.Oliver).
(4:36) (Shotgun) 1-T.Tagovailoa scrambles up the middle to BUF 7 for 6 yards (3-D.Hamlin). MIA-1-T.Tagovailoa was injured during the play.
(4:11) 19-S.Thompson in at QB. (Shotgun) 28-D.Achane up the middle to BUF 7 for no gain (57-A.Epenesa; 92-Da.Jones).
(3:32) 28-D.Achane up the middle to BUF 8 for -1 yards (3-D.Hamlin).
(2:48) (Shotgun) 19-S.Thompson pass incomplete short left to 0-B.Berrios.
(2:43) (Shotgun) 19-S.Thompson sacked at BUF 15 for -7 yards (40-V.Miller).TURNOVER ON DOWNS.
Timeout #2 by MIA at 02:43.
(2:40) 70-A.Anderson reported in as eligible. 4-J.Cook up the middle to BUF 23 for 8 yards (20-J.Brooks).
(1:56) 70-A.Anderson reported in as eligible. 4-J.Cook right tackle to BUF 27 for 4 yards (93-C.Campbell).
(1:13) 70-A.Anderson reported in as eligible. 4-J.Cook left guard to BUF 28 for 1 yard (11-D.Long, 8-J.Holland).
(:31) (Shotgun) 17-J.Allen pass short left to 86-D.Kincaid to BUF 35 for 7 yards (91-E.Ogbah).
END QUARTER 3
(15:00) (Shotgun) 4-J.Cook right guard to BUF 35 for no gain (11-D.Long, 20-J.Brooks).
(14:23) 8-S.Martin punts 65 yards to end zone, Center-69-R.Ferguson, Touchback.
(14:14) (Shotgun) 19-S.Thompson pass short right to 28-D.Achane to MIA 21 for 1 yard (47-C.Benford).
(13:29) (Shotgun) 19-S.Thompson pass short right to 28-D.Achane to MIA 36 for 15 yards (42-Do.Williams, 31-R.Douglas).
(12:44) (Shotgun) 19-S.Thompson pass incomplete deep left to 88-G.DuBose.
(12:41) (Shotgun) 19-S.Thompson pass short left to 9-J.Smith to MIA 42 for 6 yards (54-B.Spector).
(11:59) (Shotgun) 19-S.Thompson pass incomplete deep right to 9-J.Smith.
(11:55) (Shotgun) PENALTY on MIA-74-L.Eichenberg, False Start, 5 yards, enforced at MIA 42 - No Play.
(11:55) (Shotgun) 19-S.Thompson scrambles left end to MIA 41 for 4 yards (50-G.Rousseau). TURNOVER ON DOWNS.
(11:47) 70-A.Anderson reported in as eligible. 22-R.Davis right tackle to MIA 38 for 3 yards (90-D.Hand).
(11:03) 70-A.Anderson reported in as eligible. 22-R.Davis left guard to MIA 38 for no gain (5-J.Ramsey; 44-C.Robinson).
Timeout #1 by BUF at 11:03.
(10:19) (Shotgun) 17-J.Allen pass short right to 10-K.Shakir to MIA 26 for 12 yards (4-K.Kohou).
(9:35) 70-A.Anderson reported in as eligible. 22-R.Davis left tackle to MIA 24 for 2 yards (29-K.Fuller, 11-D.Long).
(8:52) 70-A.Anderson reported in as eligible. 22-R.Davis left tackle to MIA 27 for -3 yards (92-Z.Sieler).
(8:08) (Shotgun) 17-J.Allen pass incomplete deep right to 0-K.Coleman (29-K.Fuller).
Timeout #2 by BUF at 08:08.
(7:59) 2-T.Bass 45 yard field goal is No Good, Wide Left, Center-69-R.Ferguson, Holder-8-S.Martin.
(7:54) (Shotgun) PENALTY on MIA-73-A.Jackson, False Start, 5 yards, enforced at MIA 35 - No Play.
(7:54) (No Huddle, Shotgun) 19-S.Thompson pass short middle to 84-R.Chosen to MIA 35 for 5 yards (3-D.Hamlin).
(7:18) (Shotgun) 25-J.Wright left end pushed ob at MIA 31 for -4 yards (54-B.Spector).
(6:34) (Shotgun) 19-S.Thompson pass short right to 28-D.Achane to MIA 47 for 16 yards (39-C.Lewis).
(5:51) (Shotgun) 28-D.Achane left tackle to BUF 47 for 6 yards (9-T.Rapp).
(5:07) (Shotgun) 19-S.Thompson pass deep left to 28-D.Achane to BUF 31 for 16 yards (42-Do.Williams).
(4:19) (Shotgun) 25-J.Wright right end to BUF 32 for -1 yards (99-C.Toohill).
Timeout #3 by BUF at 04:19.
(3:39) (Shotgun) 19-S.Thompson pass short middle to 88-G.DuBose to BUF 19 for 13 yards (24-C.Bishop) [59-K.Jonathan].
(2:57) (Shotgun) 19-S.Thompson pass incomplete deep middle to 89-J.Hill.
(2:52) (Shotgun) 19-S.Thompson pass short left to 81-D.Smythe to BUF 11 for 8 yards (47-C.Benford).
(2:11) (Shotgun) 19-S.Thompson pass incomplete short left to 84-R.Chosen.
(2:08) (Shotgun) 19-S.Thompson pass incomplete short left to 84-R.Chosen (24-C.Bishop) [98-A.Johnson].
(2:02) 11-M.Trubisky in at QB. 22-R.Davis left tackle to BUF 13 for 1 yard (26-M.Maye; 56-Q.Bell).
(1:57) 22-R.Davis left guard to BUF 22 for 9 yards (22-E.Campbell, 26-M.Maye).
(1:12) 11-M.Trubisky kneels to BUF 21 for -1 yards.
(:32) 11-M.Trubisky kneels to BUF 20 for -1 yards.
END GAME"

buf_mia_summary <- "Headline: Cook scores 3 TDs to help Bills rout Dolphins 31-10, Tagovailoa leaves with injury.
Summary: James Cook caught a touchdown pass and ran for two scores and the Bills routed Miami 31-10, with Dolphins quarterback Tua Tagovailoa leaving early because of a concussion. Buffalo scored 10 points off two first-half turnovers by Tagovailoa. Ja'Marcus Ingram intercepted Tagovailoa's pass on Miami's opening drive. Then Christian Benford picked off another pass from the Miami quarterback. Tagovailoa thew another interception to Ingram on Miami's opening drive of the third. Ingram returned the ball 31 yards for a score that put Buffalo up 31-10. Tagovailoa ran for a first down with 4:36 in the third and collided into Hamlin, causing him to leave the game and not return.
Notable Performances: Allen completed 13 of 19 passes for 139 yards.  Buffalo’s defense forced three turnovers and held Miami’s offense to one touchdown and one field goal. Cook caught a 17-yard touchdown pass from Allen and scored on runs of 1 and 49 yards in the first half, for a total of 3 touchdowns. Backup Mitchell Trubisky replaced Allen late in the fourth with Buffalo up by 21. Tagovailoa threw for 145 yards and a 5-yard touchdown to De'Von Achane.
Injuries: Bills: Middle linebacker and Terrel Bernard left with an injury in the first quarter and did not return. Dolphins: Offensive linemen Terron Armstead and Rob Jones both left injuries. Jeff Wilson Jr. left with an injury and did not return."

# Append game log and summary to training dataframe 
buf_mia <- as.data.frame(cbind(buf_mia_log, buf_mia_summary)) %>% rename(game_log = buf_mia_log, game_summary = buf_mia_summary)
training <- rbind(training, buf_mia)

tb_det_log <- "GAME
39-J.Bates kicks 65 yards from DET 35 to end zone, Touchback to the TB 30.
(15:00) (Shotgun) 6-B.Mayfield pass short left to 14-C.Godwin to TB 31 for 1 yard (55-D.Barnes).
(14:23) (Shotgun) 6-B.Mayfield pass short middle to 14-C.Godwin to TB 49 for 18 yards (23-C.Davis).
(13:39) 1-R.White right tackle to DET 46 for 5 yards (23-C.Davis).
(13:01) 6-B.Mayfield pass incomplete deep left to 10-T.Palmer. PENALTY on DET-0-T.Arnold, Defensive Pass Interference, 41 yards, enforced at DET 46 - No Play.
(12:54) (Shotgun) 1-R.White up the middle to DET 3 for 2 yards (32-B.Branch).
(12:19) (Shotgun) 6-B.Mayfield pass incomplete short middle to 88-C.Otton (32-B.Branch).
(12:15) (Shotgun) 6-B.Mayfield sacked at DET 11 for -8 yards (97-A.Hutchinson). FUMBLES (97-A.Hutchinson) [97-A.Hutchinson], recovered by TB-77-J.Skule at DET 12.
(11:34) 4-C.McLaughlin 30 yard field goal is GOOD, Center-86-E.Deckers, Holder-5-J.Camarda.
5-J.Camarda kicks 65 yards from TB 35 to end zone, Touchback to the DET 30.
(11:31) (Shotgun) 16-J.Goff pass deep right intended for 9-J.Williams INTERCEPTED by 27-Z.McCollum at DET 48. 27-Z.McCollum to DET 44 for 4 yards (14-A.St. Brown).
(11:20) (Shotgun) PENALTY on TB-69-C.Mauch, False Start, 5 yards, enforced at DET 44 - No Play.
(11:20) (Shotgun) 1-R.White left tackle to DET 44 for 5 yards (34-A.Anzalone).
(10:35) (Shotgun) 6-B.Mayfield sacked at TB 44 for -12 yards (97-A.Hutchinson).
(9:53) (Shotgun) 6-B.Mayfield pass short right to 14-C.Godwin to DET 37 for 19 yards (23-C.Davis).
(9:05) 4-C.McLaughlin 55 yard field goal is GOOD, Center-86-E.Deckers, Holder-5-J.Camarda.
5-J.Camarda kicks 66 yards from TB 35 to DET -1. 85-T.Kennedy pushed ob at DET 30 for 31 yards (37-T.Thomas).
(8:55) 16-J.Goff pass deep right to 9-J.Williams to TB 20 for 50 yards (35-J.Dean).
(8:09) (Shotgun) 16-J.Goff pass incomplete deep left to 87-S.LaPorta. PENALTY on TB-0-Y.Diaby, Roughing the Passer, 10 yards, enforced at TB 20 - No Play.
(8:01) (Shotgun) 16-J.Goff pass incomplete short right. Ball thrown away.
(7:56) 5-D.Montgomery right tackle to TB 3 for 7 yards (3-J.Whitehead).
(7:19) (Shotgun) 16-J.Goff pass incomplete short right to 9-J.Williams.
(7:16) 39-J.Bates 22 yard field goal is GOOD, Center-49-H.Hatten, Holder-3-J.Fox.
39-J.Bates kicks 65 yards from DET 35 to end zone, Touchback to the TB 30.
(7:13) (Shotgun) 6-B.Mayfield pass incomplete short middle to 13-M.Evans.
(7:07) (Shotgun) 6-B.Mayfield scrambles up the middle to TB 42 for 12 yards (32-B.Branch).
(6:22) 7-B.Irving left tackle to TB 44 for 2 yards (55-D.Barnes).
(5:42) (Shotgun) 6-B.Mayfield pass incomplete deep right to 14-C.Godwin (21-A.Robertson).
(5:38) (Shotgun) 6-B.Mayfield sacked at TB 37 for -7 yards (97-A.Hutchinson). ** Injury Update: TB-1-R.White has returned to the game.
(4:46) 5-J.Camarda punts 47 yards to DET 16, Center-86-E.Deckers, downed by TB-8-S.Dennis.
(4:36) (Shotgun) 26-J.Gibbs left end to DET 20 for 4 yards (92-W.Gholston).
(3:58) (Shotgun) 16-J.Goff pass short left to 9-J.Williams to DET 25 for 5 yards (35-J.Dean).
(3:20) (Shotgun) 16-J.Goff pass short middle to 14-A.St. Brown to DET 40 for 15 yards (29-C.Izien). Penalty on TB-35-J.Dean, Defensive Holding, declined.
(2:58) 26-J.Gibbs right tackle to DET 48 for 8 yards (52-K.Britt).
(2:25) 16-J.Goff pass short right to 14-A.St. Brown to TB 48 for 4 yards (27-Z.McCollum) [43-C.Braswell].
(1:48) 26-J.Gibbs left end to TB 44 for 4 yards (3-J.Whitehead, 35-J.Dean).
(1:14) 16-J.Goff pass deep right to 14-A.St. Brown pushed ob at TB 28 for 16 yards (3-J.Whitehead).
(:29) (Shotgun) 16-J.Goff pass short middle to 14-A.St. Brown to TB 22 for 6 yards (27-Z.McCollum).
END QUARTER 1
(15:00) 16-J.Goff pass short right to 26-J.Gibbs to TB 18 for 4 yards (54-L.David).
(14:13) 26-J.Gibbs up the middle to TB 18 for no gain (9-J.Tryon; 0-Y.Diaby).
(13:37) (Shotgun) 16-J.Goff pass incomplete short left to 9-J.Williams.
(13:34) (Shotgun) 16-J.Goff pass short right to 26-J.Gibbs to TB 17 for 1 yard (54-L.David, 8-S.Dennis).
(12:51) 39-J.Bates 35 yard field goal is GOOD, Center-49-H.Hatten, Holder-3-J.Fox.
39-J.Bates kicks 65 yards from DET 35 to end zone, Touchback to the TB 30.
(12:47) 1-R.White up the middle to TB 30 for no gain (55-D.Barnes, 91-L.Onwuzurike).
(12:07) (Shotgun) 1-R.White left tackle to TB 30 for no gain (44-M.Rodriguez). ** Injury Update: DET-0-T.Arnold has returned to the game.
(11:24) (Shotgun) 6-B.Mayfield pass deep right to 14-C.Godwin to TB 47 for 17 yards.
(10:42) 1-R.White left tackle to TB 48 for 1 yard (31-K.Joseph; 91-L.Onwuzurike).
(9:57) (Shotgun) 6-B.Mayfield pass short right to 14-C.Godwin pushed ob at DET 41 for 11 yards (23-C.Davis).
(9:15) (Shotgun) 6-B.Mayfield pass deep left to 14-C.Godwin for 41 yards, TOUCHDOWN.
Timeout #1 by TB at 09:15.
4-C.McLaughlin extra point is GOOD, Center-86-E.Deckers, Holder-5-J.Camarda.
5-J.Camarda kicks 65 yards from TB 35 to DET 0. 85-T.Kennedy to DET 22 for 22 yards (37-T.Thomas).
(9:04) 5-D.Montgomery right tackle to DET 20 for -2 yards (0-Y.Diaby, 3-J.Whitehead).
(8:21) (Shotgun) 16-J.Goff pass incomplete short left to 14-A.St. Brown (35-J.Dean).
(8:17) (Shotgun) 16-J.Goff pass incomplete deep right to 17-T.Patrick (27-Z.McCollum).
(8:11) (Punt formation) 3-J.Fox pass short middle to 33-S.Vaki to DET 37 for 17 yards (8-S.Dennis).
(7:27) 16-J.Goff pass incomplete deep middle to 14-A.St. Brown (3-J.Whitehead).
(7:23) (Shotgun) 16-J.Goff pass short left to 5-D.Montgomery to DET 45 for 8 yards (54-L.David, 29-C.Izien).
(6:43) (Shotgun) 16-J.Goff pass incomplete deep right to 14-A.St. Brown.
(6:37) (Shotgun) 5-D.Montgomery right end to DET 48 for 3 yards (9-J.Tryon; 54-L.David).
(5:58) 5-D.Montgomery left end to TB 48 for 4 yards (43-C.Braswell).
(5:20) 16-J.Goff pass incomplete short left to 14-A.St. Brown [98-A.Nelson].
(5:14) (Shotgun) 16-J.Goff pass incomplete short right to 14-A.St. Brown (29-C.Izien).
(5:09) 3-J.Fox punts 35 yards to TB 13, Center-49-H.Hatten, fair catch by 10-T.Palmer.
(5:02) (Shotgun) 7-B.Irving right tackle to TB 16 for 3 yards (46-J.Campbell; 34-A.Anzalone).
(4:22) (Shotgun) 6-B.Mayfield pass short left to 14-C.Godwin to TB 26 for 10 yards (32-B.Branch).
(3:43) 6-B.Mayfield pass short left to 13-M.Evans to TB 42 for 16 yards (0-T.Arnold).
(2:56) (Shotgun) 7-B.Irving right end to TB 44 for 2 yards (34-A.Anzalone).
(2:12) 6-B.Mayfield scrambles up the middle to TB 45 for 1 yard (93-J.Paschal).
(2:00) (Shotgun) 6-B.Mayfield pass short right intended for 13-M.Evans INTERCEPTED by 32-B.Branch at DET 43. 32-B.Branch to DET 44 for 1 yard (14-C.Godwin).
(1:52) (Shotgun) 5-D.Montgomery left end to TB 47 for 9 yards (98-A.Nelson; 3-J.Whitehead).
(1:17) (Shotgun) 16-J.Goff pass short left to 14-A.St. Brown to TB 38 for 9 yards (35-J.Dean).
(1:10) (Shotgun) 16-J.Goff pass incomplete short middle to 87-S.LaPorta (50-V.Vea) [96-G.Gaines].
Timeout #1 by DET at 01:10.
(1:06) (Shotgun) 16-J.Goff pass short middle to 17-T.Patrick to TB 28 for 10 yards (3-J.Whitehead).
(:49) (Shotgun) 26-J.Gibbs left end to TB 22 for 6 yards (8-S.Dennis). TB-0-Y.Diaby was injured during the play.
Timeout #2 by DET at 00:49.
(:34) (Shotgun) 16-J.Goff scrambles up the middle to TB 20 for 2 yards (8-S.Dennis).
Timeout #2 by TB at 00:34.
(:28) (Shotgun) 16-J.Goff scrambles right end ran ob at TB 17 for 3 yards (27-Z.McCollum). ** Injury Update: TB-0-Y.Diaby has returned to the game.
Timeout #3 by DET at 00:28.
(:22) (Shotgun) 16-J.Goff pass incomplete deep left to 9-J.Williams.
(:18) (Shotgun) 16-J.Goff pass short middle to 14-A.St. Brown to TB 9 for 8 yards (27-Z.McCollum; 29-C.Izien).
(:04) (No Huddle) 16-J.Goff spiked the ball to stop the clock. PENALTY on DET, Offensive Too Many Men on Field, 5 yards, enforced at TB 9 - No Play.
END QUARTER 2
5-J.Camarda kicks 63 yards from TB 35 to DET 2. 85-T.Kennedy to DET 30 for 28 yards (8-S.Dennis; 51-J.Russell).
(14:54) 16-J.Goff pass deep left to 14-A.St. Brown ran ob at 50 for 20 yards (35-J.Dean). PENALTY on TB-92-W.Gholston, Roughing the Passer, 15 yards, enforced at 50.
(14:35) (Shotgun) 9-J.Williams right end to TB 20 for 15 yards (3-J.Whitehead).
(13:55) (Shotgun) 16-J.Goff pass short left to 11-K.Raymond to TB 19 for 1 yard (52-K.Britt; 92-W.Gholston).
(13:13) (Shotgun) 5-D.Montgomery up the middle to TB 16 for 3 yards (54-L.David, 52-K.Britt).
(12:40) (Shotgun) 16-J.Goff pass short middle to 5-D.Montgomery to TB 13 for 3 yards (54-L.David; 8-S.Dennis).
(11:57) 39-J.Bates 32 yard field goal is GOOD, Center-49-H.Hatten, Holder-3-J.Fox.
39-J.Bates kicks 65 yards from DET 35 to end zone, Touchback to the TB 30.
(11:53) (Shotgun) 6-B.Mayfield pass short right to 1-R.White to TB 35 for 5 yards (46-J.Campbell).
(11:11) 1-R.White up the middle to TB 34 for -1 yards (46-J.Campbell).
(10:26) (Shotgun) 6-B.Mayfield sacked at TB 27 for -7 yards (97-A.Hutchinson).
(9:44) 5-J.Camarda punts 51 yards to DET 22, Center-86-E.Deckers. 11-K.Raymond to DET 32 for 10 yards (23-T.Smith).
(9:33) 16-J.Goff pass incomplete deep middle to 14-A.St. Brown (27-Z.McCollum).
(9:27) (Shotgun) 16-J.Goff pass incomplete short right to 14-A.St. Brown.
(9:23) (Shotgun) 16-J.Goff pass short middle to 9-J.Williams to DET 45 for 13 yards (8-S.Dennis).
(8:55) (No Huddle, Shotgun) 16-J.Goff pass short middle to 14-A.St. Brown to TB 49 for 6 yards (52-K.Britt).
(8:16) 26-J.Gibbs right tackle to TB 33 for 16 yards (27-Z.McCollum).
(7:28) (Shotgun) 16-J.Goff pass short left to 17-T.Patrick pushed ob at TB 31 for 2 yards (35-J.Dean).
(6:51) (Shotgun) 26-J.Gibbs right tackle to TB 27 for 4 yards (95-C.Brewer; 91-M.Greene).
(6:10) (Shotgun) 16-J.Goff pass short left to 87-S.LaPorta to TB 20 for 7 yards (23-T.Smith; 35-J.Dean).
(5:24) 26-J.Gibbs left end to TB 24 for -4 yards (3-J.Whitehead).
(4:41) (Shotgun) 16-J.Goff pass short left to 26-J.Gibbs ran ob at TB 18 for 6 yards (8-S.Dennis; 35-J.Dean).
(4:09) (Shotgun) 16-J.Goff pass short right to 14-A.St. Brown to TB 1 for 17 yards (29-C.Izien, 23-T.Smith). DET-14-A.St. Brown was injured during the play.
(3:32) 5-D.Montgomery up the middle for 1 yard, TOUCHDOWN.
39-J.Bates extra point is GOOD, Center-49-H.Hatten, Holder-3-J.Fox.
39-J.Bates kicks 65 yards from DET 35 to end zone, Touchback to the TB 30.
(3:26) 7-B.Irving left end to TB 36 for 6 yards (55-D.Barnes). PENALTY on DET-0-T.Arnold, Face Mask, 15 yards, enforced at TB 36.
(2:57) 6-B.Mayfield pass deep left to 15-J.McMillan to DET 28 for 21 yards (46-J.Campbell).
(2:15) (Shotgun) 7-B.Irving right end to DET 22 for 6 yards (34-A.Anzalone, 98-D.Reader).
(1:34) 6-B.Mayfield pass incomplete short right to 88-C.Otton.
(1:30) (Shotgun) 6-B.Mayfield scrambles right tackle to DET 11 for 11 yards (32-B.Branch).
(:42) (Shotgun) 6-B.Mayfield up the middle for 11 yards, TOUCHDOWN.
4-C.McLaughlin extra point is GOOD, Center-86-E.Deckers, Holder-5-J.Camarda.
5-J.Camarda kicks 65 yards from TB 35 to end zone, Touchback to the DET 30.
(:34) 5-D.Montgomery up the middle to DET 36 for 6 yards (95-C.Brewer). ** Injury Update: DET-14-A.St. Brown has returned to the game.
(:02) PENALTY on TB-9-J.Tryon, Neutral Zone Infraction, 5 yards, enforced at DET 36 - No Play.
END QUARTER 3
(15:00) 16-J.Goff pass short right to 5-D.Montgomery to TB 44 for 15 yards (95-C.Brewer; 29-C.Izien).
(14:18) 5-D.Montgomery right tackle to TB 44 for no gain (3-J.Whitehead).
(13:39) 5-D.Montgomery left tackle to TB 41 for 3 yards (23-T.Smith).
(13:05) (Shotgun) 16-J.Goff pass incomplete short right to 11-K.Raymond.
(13:01) 3-J.Fox punts 32 yards to TB 9, Center-49-H.Hatten, out of bounds.
(12:53) 6-B.Mayfield pass short left to 13-M.Evans to TB 24 for 15 yards (31-K.Joseph).
(12:15) 7-B.Irving right end to TB 23 for -1 yards (46-J.Campbell).
(11:36) (Shotgun) 7-B.Irving up the middle to TB 27 for 4 yards (44-M.Rodriguez; 55-D.Barnes).
(10:55) (Shotgun) 6-B.Mayfield sacked at TB 23 for -4 yards (sack split by 91-L.Onwuzurike and 97-A.Hutchinson). FUMBLES (91-L.Onwuzurike) [97-A.Hutchinson], and recovers at TB 23.
(10:09) 5-J.Camarda punts 42 yards to DET 35, Center-86-E.Deckers. 11-K.Raymond to DET 48 for 13 yards (44-S.Tucker).
(9:57) (Shotgun) 16-J.Goff pass short right to 9-J.Williams to TB 46 for 6 yards (98-A.Nelson) [96-G.Gaines].
(9:27) 16-J.Goff pass incomplete short right [98-A.Nelson].
(9:22) (Shotgun) 26-J.Gibbs left tackle to TB 22 for 24 yards (35-J.Dean).
(8:36) (Shotgun) 26-J.Gibbs left guard to TB 18 for 4 yards (90-L.Hall, 29-C.Izien).
(8:00) (Shotgun) 26-J.Gibbs up the middle to TB 16 for 2 yards (0-Y.Diaby; 23-T.Smith). PENALTY on DET-77-F.Ragnow, Offensive Holding, 10 yards, enforced at TB 18 - No Play.
(7:41) (Shotgun) 16-J.Goff pass deep middle intended for 17-T.Patrick INTERCEPTED by 29-C.Izien [95-C.Brewer] at TB 9. 29-C.Izien to TB 26 for 17 yards (9-J.Williams).
(7:34) (Shotgun) 6-B.Mayfield pass short right to 13-M.Evans to TB 37 for 11 yards (31-K.Joseph).
(6:52) (Shotgun) 1-R.White right tackle to TB 39 for 2 yards (31-K.Joseph).
(6:11) 88-C.Otton right end to TB 35 for -4 yards (54-A.McNeill, 32-B.Branch).
(5:24) (Shotgun) 6-B.Mayfield pass incomplete deep right to 15-J.McMillan.
(5:19) 5-J.Camarda punts 47 yards to DET 18, Center-86-E.Deckers, fair catch by 11-K.Raymond.
(5:12) 16-J.Goff pass short right to 5-D.Montgomery to DET 27 for 9 yards (27-Z.McCollum).
(4:36) 16-J.Goff pass deep right to 11-K.Raymond pushed ob at DET 45 for 18 yards (23-T.Smith).
(4:30) (Shotgun) 5-D.Montgomery left tackle to DET 46 for 1 yard (96-G.Gaines, 3-J.Whitehead).
(3:54) (Shotgun) 26-J.Gibbs left end to DET 46 for no gain (8-S.Dennis).
(3:10) (Shotgun) 16-J.Goff pass short right to 14-A.St. Brown pushed ob at TB 45 for 9 yards (23-T.Smith).
(3:05) 16-J.Goff pass short middle to 11-K.Raymond to TB 37 for 8 yards (29-C.Izien).
(2:27) (Shotgun) 26-J.Gibbs right end to TB 42 for -5 yards (23-T.Smith).
(2:00) (Shotgun) 16-J.Goff pass short left to 87-S.LaPorta to TB 36 for 6 yards (29-C.Izien) [0-Y.Diaby].
(1:23) 26-J.Gibbs left end pushed ob at TB 13 for 23 yards (29-C.Izien).
(1:17) (Shotgun) 16-J.Goff pass short left to 26-J.Gibbs to TB 17 for -4 yards (9-J.Tryon).
(1:12) (Shotgun) 16-J.Goff pass short left to 9-J.Williams pushed ob at TB 12 for 5 yards (35-J.Dean).
Timeout #1 by TB at 01:12.
(1:08) (Shotgun) 16-J.Goff pass short left to 26-J.Gibbs to TB 11 for 1 yard (8-S.Dennis).
(1:01) (Shotgun) 16-J.Goff pass short middle to 26-J.Gibbs to TB 6 for 5 yards (3-J.Whitehead, 29-C.Izien) [0-Y.Diaby]. TURNOVER.
Timeout #2 by TB at 01:01.
(:53) 1-R.White right end to TB 7 for 1 yard (32-B.Branch).
Timeout #1 by DET at 00:49.
(:49) (Shotgun) 1-R.White right tackle to TB 10 for 3 yards (46-J.Campbell; 91-L.Onwuzurike).
(:45) 6-B.Mayfield pass incomplete short right to 13-M.Evans (55-D.Barnes). Ball batted at the line
Timeout #2 by DET at 00:45.
(:42) 5-J.Camarda punts 43 yards to DET 47, Center-86-E.Deckers. 11-K.Raymond to TB 44 for 9 yards (41-K.Kieft).
(:33) (Shotgun) 16-J.Goff pass short left to 14-A.St. Brown to TB 35 for 9 yards (54-L.David).
Timeout #3 by DET at 00:27.
(:27) (Shotgun) 16-J.Goff pass short right to 26-J.Gibbs to TB 26 for 9 yards (23-T.Smith, 8-S.Dennis).
(:15) (No Huddle) 16-J.Goff spiked the ball to stop the clock.
(:14) (Shotgun) 16-J.Goff pass incomplete short left to 9-J.Williams.
(:10) (Shotgun) 16-J.Goff pass incomplete short right to 9-J.Williams (27-Z.McCollum) [98-A.Nelson].
(:06) (Shotgun) 16-J.Goff pass incomplete short left to 85-T.Kennedy [0-Y.Diaby].
(:02) 6-B.Mayfield kneels to TB 26 for -1 yards.
END GAME"

tb_det_summary <- "Headline: Mayfield runs for a TD and throws a TD pass, lifting Bucs to 20-16 win over Lions.
Summary: Mayfield had an 11-yard TD on a designed run one snap after converting a third down with another 11-yard run late in the third quarter. The Lions were relegated to field goals until David Montgomery ran for a go-ahead, 1-yard touchdown late in the third quarter. Tampa Bay fell behind only once in the closely contested game, and it stopped Detroit when it had two chances to drive for a go-ahead touchdown in the final minutes. The Lions turned it over on downs at the Bucs 6 with 53 seconds left and again at their 26 with 2 seconds left. Detroit QB Jared Goff threw two interceptions and got a break when defenders dropped two other passes that could have been picked off.
Notable Performances: Goff finished 34 of 55 for 307 yards, and the offense he leads was 1 of 7 in the red zone. Mayfield, was efficient through the air by completing 12 of 19 passes for 185 yards, including a tiebreaking 41-yard touchdown pass to Chris Godwin in the second quarter, with an interception. He also ran four times for 35 yards.  Godwin had seven catches for 117 yards. Detroit's Aidan Hutchinson had three sacks in the first quarter and finished with five sacks. Amon-Ra St. Brown had 11 receptions for 119 yards for the Lions.
Injuries: Bucs: DT Vita Vea left the game with an injury Lions: LB Alex Anzalone was knocked out of the game and did not return."

# Append game log and summary to training dataframe 
tb_det <- as.data.frame(cbind(tb_det_log, tb_det_summary)) %>% rename(game_log = tb_det_log, game_summary = tb_det_summary)
training <- rbind(training, tb_det)

chi_hou_log <- "GAME
8-C.Santos kicks 66 yards from CHI 35 to HOU -1. 2-R.Woods to HOU 29 for 30 yards (94-A.Booker).
(14:54) 7-C.Stroud pass incomplete deep right to 12-N.Collins (57-J.Sanborn).
(14:48) (Shotgun) 7-C.Stroud pass short left to 9-B.Jordan to HOU 33 for 4 yards (9-J.Brisker).
(14:07) (Shotgun) 7-C.Stroud pass short middle to 28-J.Mixon to HOU 41 for 8 yards (53-T.Edwards).
(13:26) 28-J.Mixon left end to CHI 43 for 16 yards (31-K.Byard).
(12:41) 22-C.Akers right tackle to CHI 43 for no gain (49-T.Edmunds).
(11:56) PENALTY on HOU-76-Ky.Green, False Start, 5 yards, enforced at CHI 43 - No Play.
(11:47) (Shotgun) 7-C.Stroud pass short middle to 22-C.Akers to CHI 45 for 3 yards (49-T.Edmunds).
(11:08) (Shotgun) 7-C.Stroud pass short middle to 33-D.Ogunbowale to CHI 38 for 7 yards (49-T.Edmunds, 31-K.Byard).
(10:25) 15-K.Fairbairn 56 yard field goal is GOOD, Center-46-J.Weeks, Holder-6-T.Townsend.
15-K.Fairbairn kicks 66 yards from HOU 35 to CHI -1. 11-D.Carter to CHI 23 for 24 yards (43-N.Hewitt; 35-J.Hansen).
(10:15) (Shotgun) 18-C.Williams pass short left to 14-G.Everett pushed ob at CHI 25 for 2 yards (5-J.Pitre).
(9:52) (No Huddle, Shotgun) 4-D.Swift left tackle to CHI 21 for -4 yards (55-D.Hunter, 91-F.Fatukasi).
(9:08) (Shotgun) 18-C.Williams pass short right to 11-D.Carter ran ob at CHI 35 for 14 yards.
(8:44) (No Huddle, Shotgun) 18-C.Williams pass short left to 11-D.Carter pushed ob at CHI 47 for 12 yards (5-J.Pitre).
(8:09) 4-D.Swift up the middle to CHI 47 for no gain (39-H.To'oTo'o).
(7:31) (Shotgun) 18-C.Williams pass short right to 4-D.Swift to HOU 45 for 8 yards (39-H.To'oTo'o).
(6:47) (Shotgun) 18-C.Williams pass short left to 2-D.Moore to HOU 26 for 19 yards (0-A.Al-Shaair; 21-C.Bullock).
(6:03) 4-D.Swift left tackle to HOU 24 for 2 yards (0-A.Al-Shaair).
(5:23) (Shotgun) 4-D.Swift up the middle to HOU 25 for -1 yards (0-A.Al-Shaair, 39-H.To'oTo'o).
(4:42) (Shotgun) 18-C.Williams sacked at HOU 35 for -10 yards (sack split by 51-W.Anderson and 55-D.Hunter).
(3:55) 8-C.Santos 53 yard field goal is GOOD, Center-46-S.Daly, Holder-19-T.Taylor.
8-C.Santos kicks 63 yards from CHI 35 to HOU 2. 2-R.Woods to HOU 33 for 31 yards (36-J.Owens; 22-E.Hicks). PENALTY on HOU-17-K.Boyd, Offensive Holding, 10 yards, enforced at HOU 33.
(3:45) (Shotgun) 7-C.Stroud pass short middle to 12-N.Collins to HOU 41 for 18 yards (6-K.Gordon).
(3:06) 28-J.Mixon right end to HOU 44 for 3 yards (97-A.Billings).
(2:27) (Shotgun) 7-C.Stroud pass incomplete short right to 28-J.Mixon (98-M.Sweat).
(2:21) (Shotgun) 7-C.Stroud pass short right to 12-N.Collins to 50 for 6 yards (29-T.Stevenson).
(1:40) 7-C.Stroud pass short right to 87-C.Stover pushed ob at CHI 32 for 18 yards (49-T.Edmunds).
(:57) 3-T.Dell right end to CHI 14 for 18 yards (31-K.Byard).
(:11) 28-J.Mixon right tackle to CHI 13 for 1 yard (52-D.Taylor, 49-T.Edmunds). PENALTY on HOU-12-N.Collins, Unnecessary Roughness, 15 yards, enforced at CHI 13.
END QUARTER 1
(15:00) (Shotgun) 7-C.Stroud pass short middle to 12-N.Collins for 28 yards, TOUCHDOWN. Penalty on CHI-29-T.Stevenson, Illegal Use of Hands, declined.
15-K.Fairbairn extra point is GOOD, Center-46-J.Weeks, Holder-6-T.Townsend.
15-K.Fairbairn kicks 65 yards from HOU 35 to end zone, Touchback to the CHI 30.
(14:55) (Shotgun) 18-C.Williams pass short middle to 2-D.Moore pushed ob at CHI 30 for no gain (4-K.Lassiter).
(14:26) (Shotgun) 18-C.Williams pass short right to 15-R.Odunze pushed ob at CHI 36 for 6 yards (4-K.Lassiter).
(13:45) (Shotgun) 18-C.Williams pass incomplete short right [97-M.Edwards].
(13:40) 19-T.Taylor punts 41 yards to HOU 23, Center-46-S.Daly, fair catch by 82-S.Sims.
(13:33) 28-J.Mixon left guard to HOU 23 for no gain (53-T.Edwards).
(12:55) (Shotgun) 7-C.Stroud pass incomplete short right to 28-J.Mixon (1-J.Johnson).
(12:51) (Shotgun) 7-C.Stroud pass deep left to 1-S.Diggs ran ob at HOU 44 for 21 yards. Chicago challenged the pass completion ruling, and the play was Upheld. The ruling on the field stands. (Timeout #1.)
(12:30) (Shotgun) 7-C.Stroud pass deep right to 12-N.Collins pushed ob at CHI 38 for 18 yards (31-K.Byard) [52-D.Taylor].
(11:50) 28-J.Mixon right tackle to CHI 37 for 1 yard (49-T.Edmunds).
(11:11) (Shotgun) 3-T.Dell right end to CHI 34 for 3 yards (94-A.Booker).
(10:30) (Shotgun) 7-C.Stroud pass short right to 1-S.Diggs pushed ob at CHI 29 for 5 yards (29-T.Stevenson). Houston challenged the short of the line to gain ruling, and the play was Upheld. The ruling on the field stands. (Timeout #1.)
(9:58) 15-K.Fairbairn 47 yard field goal is GOOD, Center-46-J.Weeks, Holder-6-T.Townsend.
15-K.Fairbairn kicks 65 yards from HOU 35 to end zone, Touchback to the CHI 30.
(9:55) 4-D.Swift up the middle to CHI 37 for 7 yards (39-H.To'oTo'o).
(9:32) (No Huddle, Shotgun) 4-D.Swift right guard to CHI 39 for 2 yards (39-H.To'oTo'o).
(9:09) (No Huddle) 18-C.Williams up the middle to CHI 39 for no gain (39-H.To'oTo'o; 51-W.Anderson).
(8:25) (Shotgun) 24-K.Herbert up the middle to CHI 40 for 1 yard (20-J.Ward, 4-K.Lassiter).
(7:43) (No Huddle, Shotgun) 18-C.Williams pass short right to 11-D.Carter to CHI 46 for 6 yards (20-J.Ward, 0-A.Al-Shaair).
(7:02) 18-C.Williams pass incomplete short left to 4-D.Swift.
(6:58) (Shotgun) PENALTY on CHI-64-N.Davis, False Start, 5 yards, enforced at CHI 46 - No Play.
Timeout #2 by CHI at 06:58.
(6:58) (Shotgun) 18-C.Williams sacked at CHI 33 for -8 yards (95-D.Barnett).
(6:07) 19-T.Taylor punts 54 yards to HOU 13, Center-46-S.Daly, out of bounds.
(6:01) 28-J.Mixon left tackle to HOU 11 for -2 yards (9-J.Brisker).
(5:20) (Shotgun) 7-C.Stroud pass short left to 28-J.Mixon to HOU 19 for 8 yards (49-T.Edmunds; 6-K.Gordon).
(4:33) (Shotgun) 7-C.Stroud sacked at HOU 12 for -7 yards (49-T.Edmunds).
(3:49) 6-T.Townsend punts 37 yards to HOU 49, Center-46-J.Weeks, out of bounds.
(3:42) 18-C.Williams pass short right to 4-D.Swift to HOU 42 for 7 yards (21-C.Bullock).
(3:09) (No Huddle, Shotgun) 4-D.Swift up the middle to HOU 42 for no gain (5-J.Pitre).
(2:28) (Shotgun) 18-C.Williams pass short right to 2-D.Moore pushed ob at HOU 26 for 16 yards (5-J.Pitre).
(2:00) (Shotgun) 18-C.Williams pass short left to 14-G.Everett to HOU 27 for -1 yards (51-W.Anderson, 5-J.Pitre).
(1:17) (Shotgun) 18-C.Williams pass short middle to 24-K.Herbert to HOU 25 for 2 yards (39-H.To'oTo'o).
(1:11) (Shotgun) PENALTY on CHI-58-D.Wright, False Start, 5 yards, enforced at HOU 25 - No Play.
Timeout #2 by HOU at 01:11.
(1:11) (Shotgun) 18-C.Williams pass incomplete deep middle to 11-D.Carter. PENALTY on HOU-21-C.Bullock, Defensive Pass Interference, 24 yards, enforced at HOU 30 - No Play.
(1:07) (Shotgun) PENALTY on CHI-84-M.Lewis, False Start, 5 yards, enforced at HOU 6 - No Play.
(1:07) (Shotgun) 18-C.Williams scrambles up the middle to HOU 2 for 9 yards (21-C.Bullock).
(:38) (No Huddle, Shotgun) 18-C.Williams pass incomplete short right to 15-R.Odunze.
(:35) (Shotgun) 24-K.Herbert left end for 2 yards, TOUCHDOWN.
8-C.Santos extra point is GOOD, Center-46-S.Daly, Holder-19-T.Taylor.
8-C.Santos kicks 65 yards from CHI 35 to end zone, Touchback to the HOU 30. PENALTY on CHI-45-A.Ogbongbemiga, Illegal Formation, 5 yards, enforced at HOU 30.
(:32) (Shotgun) 7-C.Stroud pass short left to 33-D.Ogunbowale to HOU 48 for 13 yards (9-J.Brisker).
(:22) (Shotgun) 7-C.Stroud pass incomplete deep right to 3-T.Dell.
Timeout #3 by HOU at 00:22.
(:17) (Shotgun) 7-C.Stroud pass deep right to 12-N.Collins pushed ob at CHI 36 for 16 yards (31-K.Byard). The Replay Official reviewed the pass completion ruling, and the play was Upheld. The ruling on the field stands.
(:09) (Shotgun) PENALTY on HOU-78-L.Tunsil, False Start, 5 yards, enforced at CHI 36 - No Play.
(:09) (Shotgun) 7-C.Stroud pass incomplete short right.
Timeout #3 by CHI at 00:09.
(:06) 15-K.Fairbairn 59 yard field goal is GOOD, Center-46-J.Weeks, Holder-6-T.Townsend.
15-K.Fairbairn kicks 67 yards from HOU 35 to CHI -2. 11-D.Carter to CHI 24 for 26 yards (33-D.Ogunbowale).
END QUARTER 2
15-K.Fairbairn kicks 65 yards from HOU 35 to end zone, Touchback to the CHI 30.
(15:00) (Shotgun) 18-C.Williams pass short left to 85-C.Kmet to CHI 33 for 3 yards (0-A.Al-Shaair).
(14:17) 4-D.Swift right guard to CHI 37 for 4 yards (4-K.Lassiter, 0-A.Al-Shaair).
(13:40) (Shotgun) 18-C.Williams pass incomplete deep left to 11-D.Carter.
(13:35) 19-T.Taylor punts 53 yards to HOU 10, Center-46-S.Daly. 82-S.Sims to HOU 10 for no gain (39-J.Blackwell).
(13:25) (Shotgun) 28-J.Mixon left end pushed ob at HOU 11 for 1 yard (29-T.Stevenson; 9-J.Brisker).
(13:10) (Shotgun) 7-C.Stroud pass short left to 12-N.Collins to HOU 27 for 16 yards (29-T.Stevenson, 31-K.Byard).
(12:39) 7-C.Stroud pass short right to 3-T.Dell to HOU 24 for -3 yards (31-K.Byard).
(11:57) (Shotgun) 7-C.Stroud pass short right to 28-J.Mixon to HOU 33 for 9 yards (53-T.Edwards). HOU-28-J.Mixon was injured during the play.
(11:32) (Shotgun) 7-C.Stroud pass incomplete deep middle to 3-T.Dell.
(11:26) 6-T.Townsend punts 60 yards to CHI 7, Center-46-J.Weeks, downed by HOU-37-D.Ross.
(11:12) (Shotgun) 18-C.Williams pass incomplete short right. PENALTY on HOU-5-J.Pitre, Defensive Pass Interference, 6 yards, enforced at CHI 7 - No Play.
(11:06) (Shotgun) 4-D.Swift left end to CHI 9 for -4 yards (39-H.To'oTo'o).
(10:25) (Shotgun) 18-C.Williams pass incomplete deep right to 15-R.Odunze.
(10:19) (Shotgun) 18-C.Williams scrambles left end pushed ob at CHI 19 for 10 yards (0-A.Al-Shaair).
(9:38) 19-T.Taylor punts 57 yards to HOU 24, Center-46-S.Daly. 82-S.Sims to HOU 48 for 24 yards (46-S.Daly; 92-D.Hardy). PENALTY on HOU-17-K.Boyd, Offensive Holding, 10 yards, enforced at HOU 24.
(9:24) 7-C.Stroud pass incomplete deep right to 86-D.Schultz.
(9:17) 7-C.Stroud pass incomplete deep middle to 1-S.Diggs.
(9:13) (Shotgun) PENALTY on HOU-78-L.Tunsil, False Start, 5 yards, enforced at HOU 14 - No Play.
(9:13) (Shotgun) 7-C.Stroud pass incomplete short middle to 1-S.Diggs.
(9:08) 6-T.Townsend punts 47 yards to CHI 44, Center-46-J.Weeks, downed by HOU-37-D.Ross. PENALTY on CHI-22-E.Hicks, Offensive Holding, 10 yards, enforced at CHI 44.
(8:56) (Shotgun) PENALTY on CHI, Delay of Game, 5 yards, enforced at CHI 34 - No Play.
(8:56) (Shotgun) 18-C.Williams pass short right to 85-C.Kmet to CHI 35 for 6 yards (20-J.Ward; 39-H.To'oTo'o).
(8:19) (Shotgun) 18-C.Williams pass deep left intended for 15-R.Odunze INTERCEPTED by 4-K.Lassiter [97-M.Edwards] at HOU 30. 4-K.Lassiter to HOU 30 for no gain (15-R.Odunze). PENALTY on HOU-39-H.To'oTo'o, Defensive Holding, 5 yards, enforced at CHI 35 - No Play.
(8:11) 18-C.Williams pass short right to 2-D.Moore to 50 for 10 yards (39-H.To'oTo'o, 55-D.Hunter).
(7:26) (Shotgun) PENALTY on CHI-64-N.Davis, False Start, 5 yards, enforced at 50 - No Play.
(7:12) (Shotgun) 18-C.Williams sacked at CHI 45 for 0 yards (0-A.Al-Shaair).
(7:03) (Shotgun) 18-C.Williams pass short left to 4-D.Swift to HOU 41 for 14 yards (20-J.Ward).
(6:14) (Shotgun) 18-C.Williams sacked at HOU 48 for -7 yards (51-W.Anderson).
(5:32) 19-T.Taylor punts 25 yards to HOU 23, Center-46-S.Daly, out of bounds.
(5:27) (Shotgun) 7-C.Stroud pass short right to 86-D.Schultz pushed ob at HOU 28 for 5 yards (31-K.Byard).
(4:59) 22-C.Akers left tackle to HOU 35 for 7 yards (53-T.Edwards, 31-K.Byard).
(4:22) (Shotgun) 7-C.Stroud pass incomplete short right.
(4:16) (Shotgun) 7-C.Stroud pass incomplete short right to 12-N.Collins (6-K.Gordon). Chicago challenged the incomplete pass ruling, and the play was Upheld. The ruling on the field stands. (Timeout #1.)
(4:11) (Shotgun) 7-C.Stroud sacked at HOU 25 for -10 yards (99-G.Dexter).
(3:37) 6-T.Townsend punts 42 yards to CHI 33, Center-46-J.Weeks. 11-D.Carter to CHI 34 for 1 yard (17-K.Boyd). ** Injury Update: CHI-45-A.Ogbongbemiga has returned to the game.
(3:28) (Shotgun) 4-D.Swift right end to CHI 40 for 6 yards (91-F.Fatukasi).
(3:02) (No Huddle) 4-D.Swift right tackle to CHI 41 for 1 yard (55-D.Hunter). PENALTY on HOU-91-F.Fatukasi, Defensive Holding, 5 yards, enforced at CHI 41.
(2:33) (Shotgun) 4-D.Swift left end pushed ob at CHI 47 for 1 yard (0-A.Al-Shaair).
(1:58) (Shotgun) 18-C.Williams pass short right to 2-D.Moore pushed ob at CHI 49 for 2 yards (20-J.Ward). PENALTY on CHI-4-D.Swift, Offensive Holding, 10 yards, enforced at CHI 48.
(1:37) (Shotgun) 18-C.Williams pass short left to 24-K.Herbert pushed ob at CHI 40 for 2 yards (5-J.Pitre).
(:56) (Shotgun) 18-C.Williams pass deep left intended for 2-D.Moore INTERCEPTED by 24-D.Stingley [0-A.Al-Shaair] at HOU 34. 24-D.Stingley to HOU 34 for no gain (2-D.Moore).
(:50) 3-T.Dell left end to HOU 29 for -5 yards (6-K.Gordon). ** Injury Update: HOU-28-J.Mixon has returned to the game.
(:13) (Shotgun) 7-C.Stroud pass short right to 1-S.Diggs to HOU 36 for 7 yards (6-K.Gordon, 49-T.Edmunds).
END QUARTER 3
(15:00) (Shotgun) 7-C.Stroud pass deep right to 12-N.Collins to CHI 38 for 26 yards (6-K.Gordon).
(14:31) (No Huddle) 7-C.Stroud pass incomplete short right to 3-T.Dell.
(14:26) 28-J.Mixon right tackle to CHI 34 for 4 yards (53-T.Edwards).
(13:45) (Shotgun) 7-C.Stroud pass incomplete short right to 19-X.Hutchinson (29-T.Stevenson).
(13:43) 15-K.Fairbairn 53 yard field goal is GOOD, Center-46-J.Weeks, Holder-6-T.Townsend.
15-K.Fairbairn kicks 65 yards from HOU 35 to end zone, Touchback to the CHI 30.
(13:39) (Shotgun) 18-C.Williams pass short right to 4-D.Swift to CHI 25 for -5 yards (5-J.Pitre).
(13:07) (No Huddle, Shotgun) 18-C.Williams pass deep right intended for 85-C.Kmet INTERCEPTED by 4-K.Lassiter at HOU 48. 4-K.Lassiter pushed ob at CHI 43 for 9 yards (15-R.Odunze).
(12:55) (Shotgun) 28-J.Mixon left end pushed ob at CHI 42 for 1 yard (53-T.Edwards).
(12:15) (Shotgun) 7-C.Stroud sacked at 50 for -8 yards (57-J.Sanborn).
(11:31) (Shotgun) 7-C.Stroud pass short right to 12-N.Collins to CHI 43 for 7 yards (49-T.Edmunds, 31-K.Byard).
(10:51) 6-T.Townsend punts 37 yards to CHI 6, Center-46-J.Weeks, downed by HOU-37-D.Ross.
(10:43) 4-D.Swift left tackle to CHI 9 for 3 yards (23-E.Murray).
(10:21) (No Huddle, Shotgun) 18-C.Williams pass incomplete deep left.
(10:15) (Shotgun) 18-C.Williams sacked at CHI 2 for -7 yards (97-M.Edwards).
(9:36) 19-T.Taylor punts 54 yards to HOU 44, Center-46-S.Daly. 82-S.Sims to CHI 45 for 11 yards (92-D.Hardy, 21-J.Jones).
(9:24) (Shotgun) 22-C.Akers right tackle to CHI 38 for 7 yards (31-K.Byard).
(8:47) 22-C.Akers right guard pushed ob at CHI 25 for 13 yards (29-T.Stevenson).
(8:08) 22-C.Akers up the middle to CHI 24 for 1 yard (95-D.Walker).
(7:29) (Shotgun) 22-C.Akers up the middle to CHI 20 for 4 yards (49-T.Edmunds, 9-J.Brisker).
(7:22) (Shotgun) 7-C.Stroud pass short left to 86-D.Schultz to CHI 4 for 16 yards (53-T.Edwards, 9-J.Brisker).
Timeout #2 by CHI at 07:22.
(6:38) 22-C.Akers up the middle to CHI 4 for no gain (97-A.Billings). FUMBLES (97-A.Billings), RECOVERED by CHI-31-K.Byard at CHI 3.
(6:28) (Shotgun) 4-D.Swift left guard to CHI 4 for 1 yard (39-H.To'oTo'o).
(6:05) (No Huddle, Shotgun) 18-C.Williams pass incomplete short middle to 2-D.Moore (23-E.Murray).
(6:00) (No Huddle, Shotgun) 18-C.Williams scrambles right end to CHI 28 for 24 yards (21-C.Bullock).
(5:33) (No Huddle, Shotgun) 18-C.Williams pass short left to 2-D.Moore to CHI 35 for 7 yards (5-J.Pitre).
(5:09) (No Huddle, Shotgun) 18-C.Williams pass incomplete deep left to 2-D.Moore.
(5:02) (Shotgun) 18-C.Williams pass short left to 85-C.Kmet to CHI 47 for 12 yards (23-E.Murray) [91-F.Fatukasi].
(4:29) (No Huddle, Shotgun) 18-C.Williams pass short right to 85-C.Kmet to HOU 47 for 6 yards (5-J.Pitre).
(4:11) (Shotgun) 18-C.Williams pass incomplete short right. PENALTY on CHI-18-C.Williams, Intentional Grounding, 10 yards, enforced at HOU 47.
(4:07) (Shotgun) 18-C.Williams pass incomplete deep right to 2-D.Moore. PENALTY on HOU-97-M.Edwards, Roughing the Passer, 15 yards, enforced at CHI 43 - No Play.
(4:02) (Shotgun) 18-C.Williams sacked at HOU 42 for 0 yards (39-H.To'oTo'o).
(3:36) (No Huddle, Shotgun) 20-T.Homer up the middle to HOU 36 for 6 yards (20-J.Ward, 39-H.To'oTo'o).
(3:01) (No Huddle, Shotgun) 18-C.Williams pass incomplete deep left to 2-D.Moore.
(2:56) 8-C.Santos 54 yard field goal is GOOD, Center-46-S.Daly, Holder-19-T.Taylor.
8-C.Santos kicks 63 yards from CHI 35 to HOU 2. 82-S.Sims pushed ob at HOU 39 for 37 yards (22-E.Hicks).
(2:45) 33-D.Ogunbowale up the middle to HOU 39 for no gain (57-J.Sanborn; 95-D.Walker).
(2:02) 33-D.Ogunbowale right guard to HOU 42 for 3 yards (9-J.Brisker, 53-T.Edwards).
(1:57) (Shotgun) 7-C.Stroud scrambles right end to CHI 48 for 10 yards (9-J.Brisker). PENALTY on HOU-71-T.Howard, Illegal Use of Hands, 10 yards, enforced at HOU 42 - No Play.
(1:50) (Shotgun) 7-C.Stroud pass short left to 1-S.Diggs to HOU 36 for 4 yards (9-J.Brisker; 6-K.Gordon).
(1:45) 6-T.Townsend punts 44 yards to CHI 20, Center-46-J.Weeks, fair catch by 11-D.Carter.
Timeout #3 by CHI at 01:45.
(1:37) (Shotgun) 18-C.Williams pass short right to 15-R.Odunze to CHI 47 for 27 yards (20-J.Ward).
(1:11) (No Huddle, Shotgun) 18-C.Williams pass incomplete short right to 14-G.Everett.
(1:07) (Shotgun) 18-C.Williams sacked at CHI 39 for -8 yards (55-D.Hunter).
(:40) (No Huddle, Shotgun) 18-C.Williams scrambles left end to CHI 40 for 1 yard (5-J.Pitre; 0-A.Al-Shaair). Penalty on CHI-70-B.Jones, Illegal Formation, declined.
(:34) (Shotgun) 18-C.Williams pass incomplete deep right to 15-R.Odunze.
(:30) 7-C.Stroud kneels to CHI 41 for -1 yards.
END GAME"

chi_hou_summary <- "Headline: Stroud throws a TD pass and Fairbairn kicks 4 field goals to help the Texans top the Bears 19-13.
Summary: Early in the second quarter, the Texans went in front for good on Collins' 28-yard TD reception from Stroud on the first play of the second quarter. That play came after he was flagged for unsportsmanlike conduct on the previous play.  The Texans made it 13-3 with a 47-yard field goal on their next possession. Stroud had a stellar throw on the drive, finding Collins for an 18-yard gain on the run despite taking a hit as he threw. A 2-yard scoring run by Khalil Herbert just before halftime cut Houston's lead to 13-10. The score was set up by a pass interference call on Calen Bullock that gave the Bears a first down at the 6. A 59-yard field goal by Fairbairn made it 16-10 at halftime. Neither team scored in the second half until Houston extended the lead to 19-10 with a 53-yard field goal early in the fourth quarter. That score was set up when Williams was hit as he threw and was intercepted by Derek Stingley. On Chicago’s second play of the next drive Williams escaped a sack only to throw another interception. This time he was picked off by rookie Kamari Lassiter, a second-round pick from Georgia. Houston’s Cam Akers fumbled on the Chicago 4 with about 6 1/2 minutes left, and the Bears recovered. Cairo Santos made a 54-yard field goal to make it 19-13 with 2:51 left. The Texans couldn’t get anything going on their next drive and punted with about 90 seconds left. But Williams was sacked by Danielle Hunter on second down and his fourth-down pass fell incomplete to allow Houston to run out the clock.
Notable Performances: Stroud threw for 260 yards and a touchdown. Ka′imi Fairbairn kicked four field goals to help the Houston to the win, connecting from 56, 47, 59 and 53 yards.  Houston's defense put heavy pressure on Williams for much of the game. Will Anderson Jr., had 1 1/2 sacks.  Williams was 23 of 37 for 174 yards. He was sacked seven times. Collins had 135 yards receiving. Joe Mixon left briefly with an injury. He then managed just 25 yards rushing.
Injuries: Bears: DL Zacch Pickens left in the second half with injury. Texans: RB Joe Mixon left with an injury but later returned. "

# Append game log and summary to training dataframe 
chi_hou <- as.data.frame(cbind(chi_hou_log, chi_hou_summary)) %>% rename(game_log = chi_hou_log, game_summary = chi_hou_summary)
training <- rbind(training, chi_hou)

cin_kc_log <- "GAME
7-H.Butker kicks 65 yards from KC 35 to end zone, Touchback to the CIN 30.
(15:00) 9-J.Burrow pass short right to 89-D.Sample to CIN 38 for 8 yards (54-L.Chenal). FUMBLES (54-L.Chenal), ball out of bounds at CIN 40.
(14:23) (Shotgun) 9-J.Burrow pass short right to 89-D.Sample to 50 for 12 yards (23-D.Tranquill, 20-J.Reid).
(13:45) 31-Z.Moss left end to KC 49 for 1 yard (54-L.Chenal, 51-M.Danna).
(13:02) (Shotgun) 9-J.Burrow pass short right to 1-J.Chase to KC 43 for 6 yards (32-N.Bolton).
(12:17) (Shotgun) 9-J.Burrow pass incomplete short right to 16-T.Irwin (32-N.Bolton).
(12:14) (Shotgun) 9-J.Burrow pass short right to 88-M.Gesicki pushed ob at KC 6 for 37 yards (6-B.Cook).
(11:34) 31-Z.Moss right end to KC 4 for 2 yards (20-J.Reid; 23-D.Tranquill).
(10:53) (Shotgun) 9-J.Burrow pass incomplete short middle to 1-J.Chase (22-T.McDuffie).
(10:49) (Shotgun) 9-J.Burrow pass incomplete short right to 16-T.Irwin [56-G.Karlaftis].
Timeout #1 by CIN at 10:49.
(10:44) 2-E.McPherson 22 yard field goal is GOOD, Center-48-C.Adomitis, Holder-8-R.Rehkow.
2-E.McPherson kicks 65 yards from CIN 35 to end zone, Touchback to the KC 30.
(10:41) 10-I.Pacheco right end to KC 31 for 1 yard (57-G.Pratt).
(10:08) (Shotgun) 10-I.Pacheco right guard to KC 42 for 11 yards (22-G.Stone, 24-V.Bell).
(9:31) (Shotgun) 15-P.Mahomes pass short left to 10-I.Pacheco pushed ob at KC 47 for 5 yards (55-L.Wilson).
(9:01) (Shotgun) 15-P.Mahomes pass short left to 4-R.Rice to CIN 44 for 9 yards (55-L.Wilson).
(8:27) 15-P.Mahomes scrambles right end pushed ob at CIN 35 for 9 yards (23-D.Hill).
(7:51) (Shotgun) 42-C.Steele up the middle to CIN 26 for 9 yards (22-G.Stone).
(7:20) (Shotgun) 10-I.Pacheco right guard to CIN 20 for 6 yards (97-J.Tufele, 57-G.Pratt).
(6:45) 10-I.Pacheco left guard to CIN 12 for 8 yards (22-G.Stone).
(6:07) 15-P.Mahomes pass short left to 84-Ju.Watson to CIN 6 for 6 yards (29-C.Taylor-Britt; 57-G.Pratt).
(5:32) (Shotgun) 15-P.Mahomes pass incomplete short right to 87-T.Kelce.
(5:28) (Shotgun) 10-I.Pacheco left guard to CIN 3 for 3 yards (55-L.Wilson, 22-G.Stone).
(4:49) 42-C.Steele up the middle to CIN 2 for 1 yard (92-B.Hill; 55-L.Wilson).
(4:14) (Shotgun) 10-I.Pacheco left guard to CIN 2 for no gain (98-S.Rankins; 55-L.Wilson).
(3:40) (Shotgun) 10-I.Pacheco up the middle to CIN 2 for no gain (94-S.Hubbard, 97-J.Tufele).
(2:59) (Shotgun) 15-P.Mahomes pass short right to 10-I.Pacheco to CIN 1 for 1 yard (57-G.Pratt; 24-V.Bell).
(2:13) 7-H.Butker 19 yard field goal is GOOD, Center-41-J.Winchester, Holder-14-M.Araiza.
7-H.Butker kicks 61 yards from KC 35 to CIN 4. 32-T.Williams to CIN 24 for 20 yards (27-C.Conner).
(2:07) PENALTY on CIN-77-T.Brown, False Start, 5 yards, enforced at CIN 24 - No Play.
(2:07) (Shotgun) 9-J.Burrow pass incomplete short middle to 80-A.Iosivas.
(2:03) (Shotgun) 31-Z.Moss right end to CIN 25 for 6 yards (56-G.Karlaftis, 23-D.Tranquill).
(1:18) (Shotgun) 9-J.Burrow scrambles up the middle to CIN 28 for 3 yards (51-M.Danna).
(:38) 8-R.Rehkow punts 45 yards to KC 27, Center-48-C.Adomitis. 17-M.Hardman to KC 29 for 2 yards (26-T.Anderson).
(:28) (Shotgun) 15-P.Mahomes pass short middle intended for 87-T.Kelce INTERCEPTED by 59-A.Davis-Gaither at KC 43. 59-A.Davis-Gaither to KC 31 for 12 yards (65-T.Smith).
(:19) (Shotgun) 9-J.Burrow pass short left to 83-E.All to KC 22 for 9 yards (32-N.Bolton) [95-C.Jones].
END QUARTER 1
(15:00) 9-J.Burrow left guard to KC 21 for 1 yard (23-D.Tranquill).
(14:18) (Shotgun) 30-C.Brown up the middle to KC 14 for 7 yards (21-J.Hicks).
(13:37) 61-C.Ford reported in as eligible. 31-Z.Moss left guard to KC 9 for 5 yards (54-L.Chenal).
(12:57) (Shotgun) 9-J.Burrow pass short right to 16-T.Irwin to KC 4 for 5 yards (22-T.McDuffie).
(12:17) 9-J.Burrow pass incomplete short right.
(12:09) (Shotgun) 9-J.Burrow pass short left to 80-A.Iosivas for 4 yards, TOUCHDOWN.
2-E.McPherson extra point is GOOD, Center-48-C.Adomitis, Holder-8-R.Rehkow.
2-E.McPherson kicks 65 yards from CIN 35 to end zone, Touchback to the KC 30.
(12:04) (Shotgun) 15-P.Mahomes pass short right to 1-X.Worthy pushed ob at KC 35 for 5 yards (23-D.Hill).
(11:30) (Shotgun) 10-I.Pacheco left guard to KC 45 for 10 yards (24-V.Bell; 57-G.Pratt).
(10:55) (Shotgun) 1-X.Worthy right end to 50 for 5 yards (22-G.Stone).
(10:16) (Shotgun) 15-P.Mahomes pass short left to 10-I.Pacheco to CIN 49 for 1 yard (59-A.Davis-Gaither).
(9:36) (Shotgun) 15-P.Mahomes scrambles left end to CIN 44 for 5 yards (55-L.Wilson).
(8:57) (Shotgun) 15-P.Mahomes pass deep left to 4-R.Rice for 44 yards, TOUCHDOWN.
7-H.Butker extra point is GOOD, Center-41-J.Winchester, Holder-14-M.Araiza.
7-H.Butker kicks 65 yards from KC 35 to end zone, Touchback to the CIN 30.
(8:50) (Shotgun) 9-J.Burrow pass short right to 89-D.Sample to CIN 38 for 8 yards (35-Ja.Watson).
(8:11) 31-Z.Moss up the middle to CIN 41 for 3 yards (54-L.Chenal).
(7:33) (Shotgun) 9-J.Burrow pass deep left to 83-E.All pushed ob at KC 40 for 19 yards (35-Ja.Watson).
Timeout #2 by CIN at 07:33.
(6:52) (Shotgun) 9-J.Burrow pass short left to 1-J.Chase to KC 28 for 12 yards (35-Ja.Watson; 23-D.Tranquill).
(6:05) (Shotgun) 31-Z.Moss left end to KC 26 for 2 yards (98-T.Wharton; 23-D.Tranquill).
(5:21) (Shotgun) 9-J.Burrow pass incomplete deep left to 1-J.Chase. PENALTY on KC-22-T.McDuffie, Defensive Pass Interference, 14 yards, enforced at KC 26 - No Play.
(5:17) (Shotgun) 9-J.Burrow pass incomplete short left to 88-M.Gesicki.
(5:13) (Shotgun) 9-J.Burrow pass incomplete short right to 16-T.Irwin (35-Ja.Watson).
(5:07) (Shotgun) 9-J.Burrow sacked at KC 15 for -3 yards (56-G.Karlaftis).
(4:23) 2-E.McPherson 33 yard field goal is GOOD, Center-48-C.Adomitis, Holder-8-R.Rehkow.
2-E.McPherson kicks 65 yards from CIN 35 to end zone, Touchback to the KC 30.
(4:19) 10-I.Pacheco right tackle to KC 38 for 8 yards (57-G.Pratt).
(3:44) 10-I.Pacheco up the middle to KC 42 for 4 yards (57-G.Pratt).
(3:10) 15-P.Mahomes pass incomplete short left to 4-R.Rice (29-C.Taylor-Britt).
(3:05) (Shotgun) 42-C.Steele up the middle to KC 45 for 3 yards (57-G.Pratt; 98-S.Rankins). FUMBLES (57-G.Pratt), RECOVERED by CIN-57-G.Pratt at KC 46.
(3:01) 9-J.Burrow pass short right to 83-E.All to KC 47 for -1 yards (32-N.Bolton) [95-C.Jones].
(2:18) (Shotgun) 9-J.Burrow pass short middle to 88-M.Gesicki to KC 35 for 12 yards (20-J.Reid).
(2:00) (Shotgun) 30-C.Brown up the middle to KC 29 for 6 yards (22-T.McDuffie).
(1:54) (Shotgun) 9-J.Burrow pass incomplete deep left to 81-J.Burton.
Timeout #1 by KC at 01:54.
(1:50) (Shotgun) 9-J.Burrow pass incomplete short left to 88-M.Gesicki. PENALTY on CIN-16-T.Irwin, Offensive Pass Interference, 10 yards, enforced at KC 29 - No Play.
(1:47) (Shotgun) 9-J.Burrow pass short right to 88-M.Gesicki to KC 30 for 9 yards (54-L.Chenal).
(1:37) 2-E.McPherson 48 yard field goal is GOOD, Center-48-C.Adomitis, Holder-8-R.Rehkow.
Timeout #2 by KC at 01:37.
2-E.McPherson kicks 65 yards from CIN 35 to end zone, Touchback to the KC 30.
(1:33) (Shotgun) 15-P.Mahomes pass short middle to 87-T.Kelce to KC 35 for 5 yards (57-G.Pratt).
(1:16) (No Huddle, Shotgun) 15-P.Mahomes pass short right to 84-Ju.Watson ran ob at CIN 49 for 16 yards.
(1:11) (Shotgun) 15-P.Mahomes pass short left to 10-I.Pacheco pushed ob at CIN 48 for 1 yard (21-M.Hilton) [91-T.Hendrickson]. The Replay Official reviewed the runner was out of bounds ruling, and the play was REVERSED. (Shotgun) 15-P.Mahomes pass short left to 10-I.Pacheco to CIN 48 for 1 yard (21-M.Hilton) [91-T.Hendrickson].
(:52) (Shotgun) 15-P.Mahomes sacked at KC 42 for -10 yards (91-T.Hendrickson).
(:32) (No Huddle, Shotgun) 15-P.Mahomes scrambles left end ran ob at 50 for 8 yards (29-C.Taylor-Britt).
(:24) 14-M.Araiza punts 49 yards to CIN 1, impetus ends at CIN 1, Center-41-J.Winchester, downed by KC-13-N.Johnson.
Timeout #3 by KC at 00:24.
(:14) PENALTY on CIN, Delay of Game, 0 yards, enforced at CIN 1 - No Play.
Timeout #3 by CIN at 00:14.
(:14) 9-J.Burrow up the middle to CIN 1 for no gain (91-D.Nnadi).
END QUARTER 2
2-E.McPherson kicks 65 yards from CIN 35 to end zone, Touchback to the KC 30.
(15:00) 10-I.Pacheco left guard to KC 32 for 2 yards (91-T.Hendrickson, 57-G.Pratt).
(14:24) (Shotgun) 15-P.Mahomes pass short right to 1-X.Worthy to KC 44 for 12 yards (55-L.Wilson, 24-V.Bell).
(13:52) 10-I.Pacheco right end to KC 49 for 5 yards (94-S.Hubbard). PENALTY on CIN-97-J.Tufele, Defensive Holding, 5 yards, enforced at KC 49.
(13:26) (Shotgun) 10-I.Pacheco up the middle to CIN 37 for 9 yards (55-L.Wilson).
(12:49) (Shotgun) 15-P.Mahomes pass incomplete short right to 1-X.Worthy.
(12:45) (Shotgun) Direct snap to 10-I.Pacheco. 10-I.Pacheco up the middle to CIN 37 for no gain (57-G.Pratt; 55-L.Wilson).
(12:01) (Shotgun) 64-W.Morris and 54-L.Chenal reported in as eligible. 42-C.Steele left guard to CIN 32 for 5 yards (22-G.Stone; 24-V.Bell).
(11:22) 15-P.Mahomes scrambles right end pushed ob at CIN 25 for 7 yards (91-T.Hendrickson).
(10:46) (Shotgun) 15-P.Mahomes pass short left to 10-I.Pacheco to CIN 12 for 13 yards (57-G.Pratt).
(10:06) 10-I.Pacheco left guard to CIN 4 for 8 yards (24-V.Bell, 59-A.Davis-Gaither).
(9:30) (Shotgun) 42-C.Steele up the middle to CIN 2 for 2 yards (57-G.Pratt).
(8:49) 87-T.Kelce right end to CIN 1 for 1 yard (98-S.Rankins, 59-A.Davis-Gaither). CIN-98-S.Rankins was injured during the play.
(8:25) (Shotgun) 64-W.Morris and 54-L.Chenal reported in as eligible. 15-P.Mahomes pass short right to 64-W.Morris for 1 yard, TOUCHDOWN.
7-H.Butker extra point is GOOD, Center-41-J.Winchester, Holder-14-M.Araiza.
7-H.Butker kicks 65 yards from KC 35 to end zone, Touchback to the CIN 30.
(8:21) (Shotgun) 9-J.Burrow pass deep left to 81-J.Burton to KC 23 for 47 yards (35-Ja.Watson).
(7:38) 9-J.Burrow FUMBLES (Aborted) at KC 24, and recovers at KC 25.
(7:01) (Shotgun) 9-J.Burrow pass short left to 88-M.Gesicki to KC 15 for 10 yards (32-N.Bolton).
(6:13) (Shotgun) 9-J.Burrow scrambles left guard to KC 11 for 4 yards (32-N.Bolton).
(5:30) (Shotgun) 31-Z.Moss up the middle to KC 3 for 8 yards (6-B.Cook; 20-J.Reid).
(4:40) 61-C.Ford reported in as eligible. 31-Z.Moss right end to KC 2 for 1 yard (6-B.Cook).
(4:01) 61-C.Ford reported in as eligible. 9-J.Burrow up the middle to KC 1 for 1 yard (54-L.Chenal; 91-D.Nnadi).
Timeout #1 by CIN at 04:01.
(3:27) (Shotgun) 9-J.Burrow pass incomplete short left to 16-T.Irwin.
(3:22) 61-C.Ford reported in as eligible. 31-Z.Moss right end to KC 3 for -2 yards (51-M.Danna, 32-N.Bolton).
(2:28) (Shotgun) 9-J.Burrow pass incomplete short middle to 16-T.Irwin (6-B.Cook).
(2:22) (Shotgun) 9-J.Burrow pass short left to 80-A.Iosivas for 3 yards, TOUCHDOWN.
2-E.McPherson extra point is No Good, Wide Right, Center-48-C.Adomitis, Holder-8-R.Rehkow.
2-E.McPherson kicks 65 yards from CIN 35 to end zone, Touchback to the KC 30.
(2:16) 10-I.Pacheco left tackle to KC 34 for 4 yards (21-M.Hilton).
(1:41) (Shotgun) 15-P.Mahomes pass short right to 4-R.Rice to KC 36 for 2 yards (21-M.Hilton; 55-L.Wilson).
(1:06) (Shotgun) 15-P.Mahomes pass deep left intended for 84-Ju.Watson INTERCEPTED by 20-D.Turner [55-L.Wilson] at CIN 38. 20-D.Turner to CIN 38 for no gain (84-Ju.Watson). ** Injury Update: CIN-98-S.Rankins has returned to the game. PENALTY on CIN-33-D.Anthony, Illegal Contact, 5 yards, enforced at KC 36 - No Play.
(:59) 15-P.Mahomes pass short right to 10-I.Pacheco to KC 49 for 8 yards (95-Z.Carter) [97-J.Tufele]. PENALTY on KC-76-K.Suamataia, Offensive Holding, 10 yards, enforced at KC 41 - No Play.
(:38) (Shotgun) 15-P.Mahomes pass short right to 12-J.Wiley to KC 38 for 7 yards (57-G.Pratt).
(:01) (Shotgun) 15-P.Mahomes pass deep left intended for 1-X.Worthy INTERCEPTED by 29-C.Taylor-Britt at CIN 34. 29-C.Taylor-Britt to CIN 34 for no gain (1-X.Worthy).
END QUARTER 3
(15:00) 9-J.Burrow pass incomplete short left to 88-M.Gesicki.
(14:55) (Shotgun) 9-J.Burrow pass incomplete short left.
(14:52) (Shotgun) 9-J.Burrow sacked at CIN 34 for 0 yards (sack split by 98-T.Wharton and 51-M.Danna). FUMBLES (98-T.Wharton) [51-M.Danna], RECOVERED by KC-27-C.Conner at CIN 38. 27-C.Conner for 38 yards, TOUCHDOWN.
TWO-POINT CONVERSION ATTEMPT. 15-P.Mahomes pass to 1-X.Worthy is incomplete. ATTEMPT FAILS.
7-H.Butker kicks 61 yards from KC 35 to CIN 4. 30-C.Brown to CIN 32 for 28 yards (27-C.Conner; 88-P.Hendershot).
(14:34) 30-C.Brown right end to CIN 38 for 6 yards (27-C.Conner, 35-Ja.Watson).
(13:54) (Shotgun) 9-J.Burrow pass short right to 31-Z.Moss to KC 49 for 13 yards (20-J.Reid).
(13:12) (Shotgun) 31-Z.Moss left guard to KC 46 for 3 yards (97-F.Anudike-Uzomah; 35-Ja.Watson).
(12:27) (Shotgun) 9-J.Burrow pass short left to 1-J.Chase to KC 33 for 13 yards (6-B.Cook).
(11:42) (Shotgun) 9-J.Burrow scrambles up the middle to KC 32 for 1 yard (51-M.Danna, 32-N.Bolton). PENALTY on CIN-75-O.Brown, Offensive Holding, 10 yards, enforced at KC 33 - No Play.
(11:21) (Shotgun) 9-J.Burrow pass short left to 88-M.Gesicki pushed ob at KC 34 for 9 yards (22-T.McDuffie).
(10:43) (Shotgun) 9-J.Burrow pass short right to 1-J.Chase to KC 30 for 4 yards (22-T.McDuffie). PENALTY on CIN-1-J.Chase, Unsportsmanlike Conduct, 15 yards, enforced at KC 30.
(10:18) (Shotgun) 9-J.Burrow pass short right to 88-M.Gesicki to KC 35 for 10 yards (27-C.Conner; 20-J.Reid).
(9:33) 2-E.McPherson 53 yard field goal is GOOD, Center-48-C.Adomitis, Holder-8-R.Rehkow.
2-E.McPherson kicks 65 yards from CIN 35 to end zone, Touchback to the KC 30.
(9:28) (Shotgun) 10-I.Pacheco right guard to KC 34 for 4 yards (95-Z.Carter; 98-S.Rankins).
(8:54) (Shotgun) 15-P.Mahomes sacked at KC 30 for -4 yards (91-T.Hendrickson).
(8:14) (Shotgun) 15-P.Mahomes pass deep middle to 87-T.Kelce to CIN 29 for 41 yards (24-V.Bell). CIN-98-S.Rankins was injured during the play. PENALTY on KC-76-K.Suamataia, Offensive Holding, 10 yards, enforced at KC 30 - No Play.
(7:51) (Shotgun) 15-P.Mahomes pass short left to 4-R.Rice to KC 30 for 10 yards (55-L.Wilson).
(7:08) 14-M.Araiza punts 63 yards to CIN 7, Center-41-J.Winchester. 15-C.Jones to CIN 16 for 9 yards (2-J.Williams).
(6:57) 9-J.Burrow pass short middle to 83-E.All to CIN 21 for 5 yards (27-C.Conner).
(6:14) (Shotgun) 31-Z.Moss left end to CIN 22 for 1 yard (23-D.Tranquill).
(5:31) (Shotgun) 9-J.Burrow pass short left to 88-M.Gesicki pushed ob at CIN 26 for 4 yards (20-J.Reid).
(4:59) (Shotgun) 30-C.Brown up the middle to CIN 38 for 12 yards (6-B.Cook).
(4:14) 61-C.Ford reported in as eligible. 31-Z.Moss right guard to CIN 42 for 4 yards (56-G.Karlaftis; 32-N.Bolton).
(3:30) (Shotgun) 9-J.Burrow pass incomplete short left to 80-A.Iosivas.
(3:27) (Shotgun) 9-J.Burrow sacked at CIN 33 for -9 yards (27-C.Conner).
(2:46) 8-R.Rehkow punts 53 yards to KC 14, Center-48-C.Adomitis. 17-M.Hardman pushed ob at KC 25 for 11 yards (48-C.Adomitis).
(2:35) (Shotgun) 10-I.Pacheco up the middle to KC 31 for 6 yards (57-G.Pratt; 24-V.Bell).
(2:08) (Shotgun) 15-P.Mahomes pass short right to 4-R.Rice to KC 41 for 10 yards (23-D.Hill).
(2:00) (Shotgun) 10-I.Pacheco up the middle to KC 42 for 1 yard (55-L.Wilson; 57-G.Pratt).
(1:33) (Shotgun) 15-P.Mahomes pass incomplete short left.
(1:27) (Shotgun) 15-P.Mahomes pass short right to 34-S.Perine to KC 45 for 3 yards (94-S.Hubbard).
(:53) (Shotgun) 15-P.Mahomes pass deep left to 4-R.Rice to CIN 34 for 21 yards (22-G.Stone). PENALTY on KC-64-W.Morris, Illegal Use of Hands, 10 yards, enforced at KC 45 - No Play.
Timeout #2 by CIN at 00:53.
(:48) (Shotgun) 15-P.Mahomes pass incomplete deep left to 4-R.Rice. PENALTY on CIN-33-D.Anthony, Defensive Pass Interference, 29 yards, enforced at KC 35 - No Play.
Timeout #3 by CIN at 00:48.
(:38) (Shotgun) 15-P.Mahomes pass incomplete short left [57-G.Pratt].
(:32) (Shotgun) 42-C.Steele left end to CIN 34 for 2 yards (24-V.Bell, 58-J.Ossai).
(:18) 42-C.Steele right end to CIN 32 for 2 yards (23-D.Hill).
Timeout #1 by KC at 00:18.
(:03) 7-H.Butker 51 yard field goal is GOOD, Center-41-J.Winchester, Holder-14-M.Araiza.
Timeout #2 by KC at 00:03.
END GAME"

cin_kc_summary <- "Headline: Butker hits a 51-yard winner for KC after penalty on Bengals keeps Chiefs alive
Summary: Sample and Gesicki accounted for most of the yardage on an opening drive that produced a field goal. A few minutes later, after Mahomes was picked by Davis-Gaither, All’s catch helped set up Iosivas’ touchdown reception. Mahomes eventually atoned for the interception when he found Rice over defender Cam Taylor-Britt for a tying 44-yard touchdown pass. The Chiefs trailed 16-10 at the half. The Chiefs pulled ahead early in the second half, when Mahomes popped a pass to tackle Morris for a touchdown. The Bengals answered on fourth-and-goal when Burrow connected with Iosivas for a second time, only to see Burrow get stripped a few minutes later and Conner return the fumble 37 yards for another touchdown. Bengals wide receiver Ja’Marr Chase was penalized for unsportsmanlike conduct in the fourth quarter. It forced a third-and-22 at the Chiefs 45, and after a completion to Gesicki got 10 yards back, McPherson kicked the field goal that gave the Bengals a 25-23 lead with 5:12 to go, and their defense gave them the ball back. But the Chiefs forced a punt with 2:59 remaining, giving Mahomes and Co. the opportunity to decide the game. In the final minute of the game on a fourth down and 16, Mahomes threw a pass aiming for Rice. On the play, Cincinnati’s Anthony committed  pass interference, keeping the Chief’s game alive and allowing for Butker to attempt a field goal. Butker successfully made the 51-yard field goal and secured the win for the Chiefs.
Notable Performances: Patrick Mahomes threw for 151 yards with two touchdowns and two interceptions. Joe Burrow threw for 258 yards and two touchdowns, both to Andrei Iosivas. Burrow leaned heavily on his own tight ends — Drew Sample, Mike Gesicki and Erick All Jr. Chamarri Conner returned a fumble 37 yards for a touchdown for the Chiefs. Tackle Wanya Morris— who had a penalty in the final minute — had a touchdown reception.
Injuries: Bengals: DT Hill left in the second quarter. DT Sheldon Rankins left in the fourth. Chiefs: RB Isiah Pacheco left in the final minute 
"

# Append game log and summary to training dataframe 
cin_kc <- as.data.frame(cbind(cin_kc_log, cin_kc_summary)) %>% rename(game_log = cin_kc_log, game_summary = cin_kc_summary)
training <- rbind(training, cin_kc)

bal_dal_log <- "GAME
9-J.Tucker kicks 65 yards from BAL 35 to DAL 0. 30-J.Thomas pushed ob at DAL 34 for 34 yards (40-M.Harrison). PENALTY on DAL-9-K.Turpin, Offensive Holding, 10 yards, enforced at DAL 25.
(14:54) (Shotgun) 4-D.Prescott pass short right to 23-R.Dowdle to DAL 16 for 1 yard (23-T.Simpson).
(14:18) 4-D.Prescott pass incomplete short right to 3-B.Cooks. PENALTY on BAL-99-O.Oweh, Defensive Holding, 5 yards, enforced at DAL 16 - No Play.
(14:12) 23-R.Dowdle left guard to DAL 24 for 3 yards (98-T.Jones).
(13:35) 23-R.Dowdle up the middle to DAL 30 for 6 yards (0-R.Smith).
(13:08) (No Huddle) PENALTY on DAL-89-B.Spann-Ford, False Start, 4 yards, enforced at DAL 30 - No Play.
(12:59) (Shotgun) 4-D.Prescott pass short right to 3-B.Cooks to DAL 33 for 7 yards (14-K.Hamilton).
(12:29) (Shotgun) 4-D.Prescott pass incomplete short middle to 23-R.Dowdle [58-M.Pierce].
(12:24) (Shotgun) 4-D.Prescott pass incomplete short right to 83-J.Brooks [14-K.Hamilton].
(12:18) (Shotgun) PENALTY on DAL-87-J.Ferguson, False Start, 5 yards, enforced at DAL 33 - No Play.
(12:18) (Shotgun) 4-D.Prescott pass incomplete short right to 3-B.Cooks (44-M.Humphrey).
(12:13) 5-B.Anger punts 56 yards to BAL 16, Center-44-T.Sieg. 3-D.Harty to BAL 29 for 13 yards (30-J.Thomas).
(12:03) (Shotgun) 8-L.Jackson left end pushed ob at BAL 41 for 12 yards (28-M.Hooker).
(11:27) (Shotgun) 22-D.Henry right guard to BAL 44 for 3 yards (90-D.Lawrence).
(10:51) (Shotgun) 43-J.Hill left end pushed ob at DAL 39 for 17 yards (6-Do.Wilson).
(10:15) 8-L.Jackson pass short right to 88-C.Kolar pushed ob at DAL 9 for 30 yards (21-C.Carson).
(9:42) (Shotgun) 8-L.Jackson left end for 9 yards, TOUCHDOWN.
9-J.Tucker extra point is GOOD, Center-46-N.Moore, Holder-11-J.Stout.
9-J.Tucker kicks 65 yards from BAL 35 to end zone, Touchback to the DAL 30.
(9:36) 23-R.Dowdle up the middle to DAL 35 for 5 yards (58-M.Pierce).
(9:09) 23-R.Dowdle up the middle to DAL 39 for 4 yards (0-R.Smith, 23-T.Simpson).
(8:35) 4-D.Prescott pass deep left to 40-H.Luepke pushed ob at BAL 44 for 17 yards (14-K.Hamilton).
(8:03) 42-D.Vaughn left tackle to BAL 43 for 1 yard (0-R.Smith).
(7:26) (Shotgun) 4-D.Prescott pass incomplete short middle to 87-J.Ferguson (32-M.Williams).
(7:21) (Shotgun) 4-D.Prescott sacked at BAL 46 for -3 yards (53-K.Van Noy).
(6:38) 17-B.Aubrey 65 yard field goal is GOOD, Center-44-T.Sieg, Holder-5-B.Anger.
17-B.Aubrey kicks 65 yards from DAL 35 to end zone, Touchback to the BAL 30.
(6:33) 22-D.Henry left end to BAL 35 for 5 yards (97-O.Odighizuwa; 99-C.Golston).
(5:53) (Shotgun) 22-D.Henry right tackle to BAL 38 for 3 yards (97-O.Odighizuwa).
(5:14) (Shotgun) 8-L.Jackson right end to BAL 41 for 3 yards (90-D.Lawrence; 6-Do.Wilson).
(4:32) 8-L.Jackson scrambles right end pushed ob at BAL 42 for 1 yard (58-M.Smith).
(3:55) (Shotgun) 8-L.Jackson pass short right to 15-N.Agholor to DAL 2 for 56 yards (13-D.Overshown).
(3:20) (No Huddle, Shotgun) 22-D.Henry up the middle to DAL 1 for 1 yard (13-D.Overshown, 50-E.Kendricks).
(2:45) 66-B.Cleveland reported in as eligible. 22-D.Henry right guard for 1 yard, TOUCHDOWN.
9-J.Tucker extra point is GOOD, Center-46-N.Moore, Holder-11-J.Stout.
9-J.Tucker kicks 65 yards from BAL 35 to end zone, Touchback to the DAL 30.
(2:41) 4-D.Prescott pass short left to 3-B.Cooks to DAL 39 for 9 yards (21-B.Stephens).
(2:05) (Shotgun) 15-E.Elliott up the middle to DAL 43 for 4 yards (98-T.Jones).
(1:37) (Shotgun) 4-D.Prescott pass incomplete deep left to 1-J.Tolbert.
(1:31) (Shotgun) 4-D.Prescott pass short right to 15-E.Elliott to DAL 49 for 6 yards (0-R.Smith).
(:46) (Shotgun) 4-D.Prescott pass deep middle to 87-J.Ferguson to BAL 27 for 24 yards (32-M.Williams; 14-K.Hamilton).
(:14) 4-D.Prescott pass short right to 88-C.Lamb to BAL 9 for 18 yards (14-K.Hamilton; 23-T.Simpson).
END QUARTER 1
(15:00) (Shotgun) 4-D.Prescott scrambles up the middle to BAL 7 for 2 yards (14-K.Hamilton). PENALTY on DAL-73-T.Smith, Offensive Holding, 10 yards, enforced at BAL 9 - No Play.
(14:40) (Shotgun) 4-D.Prescott pass short right to 88-C.Lamb to BAL 10 for 9 yards (2-N.Wiggins). FUMBLES (2-N.Wiggins), RECOVERED by BAL-32-M.Williams at BAL 9.
(14:34) (Shotgun) 8-L.Jackson pass short right to 4-Z.Flowers to BAL 13 for 4 yards (21-C.Carson).
(13:58) (Shotgun) 8-L.Jackson up the middle to BAL 22 for 9 yards (50-E.Kendricks).
(13:20) 22-D.Henry up the middle to BAL 29 for 7 yards (13-D.Overshown).
(12:33) (Shotgun) PENALTY on BAL, Delay of Game, 5 yards, enforced at BAL 29 - No Play.
(12:16) (Shotgun) 4-Z.Flowers left end to BAL 27 for 3 yards (35-M.Liufau).
(11:39) (Shotgun) 8-L.Jackson right end to BAL 32 for 5 yards (21-C.Carson). Dallas challenged the first down ruling, and the play was Upheld. The ruling on the field stands. (Timeout #1.)
(11:07) (Shotgun) 8-L.Jackson pass incomplete short middle to 7-R.Bateman.
(11:01) (Shotgun) 22-D.Henry left end to BAL 34 for 2 yards (50-E.Kendricks).
(10:17) (Shotgun) 8-L.Jackson pass short right to 80-I.Likely to BAL 38 for 4 yards (6-Do.Wilson; 2-J.Lewis) [11-M.Parsons].
(9:28) 11-J.Stout punts 55 yards to DAL 7, Center-46-N.Moore, out of bounds.
(9:18) 15-E.Elliott right tackle to DAL 7 for no gain (14-K.Hamilton, 40-M.Harrison).
(8:45) (Shotgun) 4-D.Prescott pass incomplete short middle to 87-J.Ferguson (23-T.Simpson).
(8:42) (Shotgun) 4-D.Prescott pass short middle to 73-T.Smith to DAL 7 for no gain (98-T.Jones) [92-N.Madubuike]. Penalty on DAL-73-T.Smith, Illegal Touch Pass, declined.
(8:28) 5-B.Anger punts 62 yards to BAL 31, Center-44-T.Sieg. 3-D.Harty to BAL 47 for 16 yards (30-J.Thomas).
(8:14) 22-D.Henry right end to BAL 49 for 2 yards (90-D.Lawrence; 13-D.Overshown).
(7:36) (Shotgun) 8-L.Jackson pass short left to 4-Z.Flowers to DAL 44 for 7 yards (28-M.Hooker, 11-M.Parsons).
(7:02) 22-D.Henry right end to DAL 44 for no gain (50-E.Kendricks; 94-M.Kneeland).
(6:06) (Run formation) PENALTY on BAL, Delay of Game, 5 yards, enforced at DAL 44 - No Play.
(5:53) 11-J.Stout punts 36 yards to DAL 13, Center-46-N.Moore, fair catch by 9-K.Turpin.
(5:46) 4-D.Prescott pass incomplete deep left to 3-B.Cooks.
(5:41) 4-D.Prescott pass short middle to 87-J.Ferguson to DAL 19 for 6 yards (29-A.Washington).
(5:00) (No Huddle, Shotgun) 4-D.Prescott pass short left to 9-K.Turpin to DAL 31 for 12 yards (44-M.Humphrey) [99-O.Oweh].
(4:27) 23-R.Dowdle up the middle to DAL 33 for 2 yards (0-R.Smith; 90-D.Ojabo).
(3:57) (Shotgun) 9-K.Turpin right end to DAL 34 for 1 yard (14-K.Hamilton).
(3:18) (Shotgun) 4-D.Prescott pass incomplete short right to 15-E.Elliott.
(3:15) 5-B.Anger punts 54 yards to BAL 12, Center-44-T.Sieg, fair catch by 3-D.Harty.
(3:07) (Shotgun) 22-D.Henry up the middle to BAL 24 for 12 yards (94-M.Kneeland).
(2:32) (Shotgun) 22-D.Henry left end to BAL 37 for 13 yards (11-M.Parsons).
(2:00) (Shotgun) 8-L.Jackson pass short left to 43-J.Hill pushed ob at 50 for 13 yards (28-M.Hooker).
(1:53) (Shotgun) 8-L.Jackson pass short left to 22-D.Henry to DAL 27 for 23 yards (50-E.Kendricks; 2-J.Lewis).
(1:10) (No Huddle, Shotgun) 22-D.Henry up the middle to DAL 24 for 3 yards (50-E.Kendricks, 97-O.Odighizuwa).
(1:05) (Shotgun) 8-L.Jackson pass short left to 43-J.Hill to DAL 16 for 8 yards (7-T.Diggs).
Timeout #1 by BAL at 01:05.
(:37) (No Huddle, Shotgun) 8-L.Jackson pass short left to 7-R.Bateman to DAL 13 for 3 yards (21-C.Carson).
(:31) (Shotgun) 8-L.Jackson pass short middle to 7-R.Bateman for 13 yards, TOUCHDOWN.
Timeout #2 by BAL at 00:31.
9-J.Tucker extra point is GOOD, Center-46-N.Moore, Holder-11-J.Stout.
9-J.Tucker kicks 65 yards from BAL 35 to end zone, Touchback to the DAL 30.
(:25) (Shotgun) 4-D.Prescott scrambles right end ran ob at DAL 36 for 6 yards (14-K.Hamilton).
(:19) (Shotgun) 4-D.Prescott pass deep right to 88-C.Lamb pushed ob at BAL 33 for 31 yards (32-M.Williams).
(:12) (Shotgun) 4-D.Prescott pass incomplete deep right to 88-C.Lamb. Penalty on DAL-60-T.Guyton, Offensive Holding, offsetting, enforced at BAL 33 - No Play. Penalty on BAL-2-N.Wiggins, Defensive Pass Interference, offsetting.
(:06) 17-B.Aubrey 51 yard field goal is GOOD, Center-44-T.Sieg, Holder-5-B.Anger.
Timeout #3 by BAL at 00:06.
17-B.Aubrey kicks 62 yards from DAL 35 to BAL 3. 3-D.Harty to BAL 23 for 20 yards (41-N.Vigil).
END QUARTER 2
17-B.Aubrey kicks 65 yards from DAL 35 to end zone, Touchback to the BAL 30.
(15:00) (Shotgun) 8-L.Jackson left end pushed ob at BAL 36 for 6 yards (7-T.Diggs; 90-D.Lawrence).
(14:29) 22-D.Henry up the middle to BAL 39 for 3 yards (50-E.Kendricks).
(13:55) 22-D.Henry left guard to DAL 32 for 29 yards (28-M.Hooker).
(13:12) (Shotgun) 43-J.Hill left tackle to DAL 24 for 8 yards (58-M.Smith). PENALTY on BAL-72-A.Vorhees, Offensive Holding, 10 yards, enforced at DAL 32 - No Play.
(12:40) (Shotgun) 8-L.Jackson right end pushed ob at DAL 26 for 16 yards (11-M.Parsons).
(12:06) 22-D.Henry left guard for 26 yards, TOUCHDOWN.
9-J.Tucker extra point is GOOD, Center-46-N.Moore, Holder-11-J.Stout.
9-J.Tucker kicks 69 yards from BAL 35 to DAL -4. 30-J.Thomas to DAL 29 for 33 yards (51-J.Ross).
(11:53) (Shotgun) 23-R.Dowdle right guard to DAL 32 for 3 yards (98-T.Jones, 0-R.Smith).
(11:22) (Shotgun) 4-D.Prescott pass short middle to 88-C.Lamb to DAL 41 for 9 yards (21-B.Stephens).
(10:49) (Shotgun) 42-D.Vaughn up the middle to DAL 45 for 4 yards (23-T.Simpson, 0-R.Smith).
(10:18) 4-D.Prescott pass incomplete short right to 87-J.Ferguson.
(10:13) (Shotgun) 4-D.Prescott pass incomplete short right to 88-C.Lamb (44-M.Humphrey). PENALTY on BAL-2-N.Wiggins, Defensive Holding, 5 yards, enforced at DAL 45 - No Play.
(10:07) (No Huddle) 23-R.Dowdle right end pushed ob at BAL 44 for 6 yards (95-T.Robinson). PENALTY on BAL-39-E.Jackson, Face Mask, 15 yards, enforced at BAL 44.
(9:53) 23-R.Dowdle left tackle to BAL 24 for 5 yards (23-T.Simpson, 0-R.Smith). PENALTY on DAL-89-B.Spann-Ford, Offensive Holding, 10 yards, enforced at BAL 29 - No Play.
(9:29) (Shotgun) 15-E.Elliott right guard to BAL 37 for 2 yards (0-R.Smith).
(8:53) (Shotgun) 4-D.Prescott pass incomplete short right to 42-D.Vaughn (58-M.Pierce).
(8:50) (Shotgun) 4-D.Prescott sacked at BAL 48 for -11 yards (53-K.Van Noy).
(8:00) 5-B.Anger punts 37 yards to BAL 11, Center-44-T.Sieg, fair catch by 3-D.Harty.
(7:52) 22-D.Henry left end to BAL 14 for 3 yards (7-T.Diggs).
(7:10) (Shotgun) 22-D.Henry up the middle to BAL 23 for 9 yards (28-M.Hooker).
(6:28) (Shotgun) 8-L.Jackson right tackle to BAL 32 for 9 yards (21-C.Carson).
(5:37) 22-D.Henry right tackle to BAL 35 for 3 yards (13-D.Overshown; 21-C.Carson).
(4:58) 43-J.Hill right end pushed ob at BAL 48 for 13 yards (6-Do.Wilson; 50-E.Kendricks).
(4:20) (Shotgun) 22-D.Henry left tackle to DAL 49 for 3 yards (11-M.Parsons; 13-D.Overshown). PENALTY on BAL-77-D.Faalele, Offensive Holding, 10 yards, enforced at BAL 48 - No Play.
(3:59) (Shotgun) 43-J.Hill left end ran ob at BAL 38 for no gain (7-T.Diggs).
(3:19) (Shotgun) 8-L.Jackson scrambles up the middle to BAL 43 for 5 yards (50-E.Kendricks).
(2:30) (Shotgun) 8-L.Jackson pass short right to 43-J.Hill to DAL 49 for 8 yards (2-J.Lewis) [11-M.Parsons]. PENALTY on BAL-72-A.Vorhees, Illegal Use of Hands, 5 yards, enforced at BAL 43 - No Play.
(1:57) (Shotgun) 8-L.Jackson pass incomplete short left to 4-Z.Flowers.
(1:55) 11-J.Stout punts 51 yards to DAL 11, Center-46-N.Moore. 9-K.Turpin ran ob at DAL 12 for 1 yard (88-C.Kolar). PENALTY on BAL-46-N.Moore, Offensive Holding, 10 yards, enforced at BAL 38 - No Play.
(1:43) 11-J.Stout punts 49 yards to DAL 23, Center-46-N.Moore, fair catch by 9-K.Turpin.
(1:36) (Shotgun) 4-D.Prescott pass short right to 87-J.Ferguson to DAL 40 for 17 yards (14-K.Hamilton; 32-M.Williams).
(1:11) (No Huddle, Shotgun) PENALTY on DAL-88-C.Lamb, False Start, 5 yards, enforced at DAL 40 - No Play.
(1:02) (Shotgun) 4-D.Prescott pass incomplete deep right to 1-J.Tolbert.
(:55) (Shotgun) 4-D.Prescott pass incomplete short right to 3-B.Cooks. PENALTY on BAL-2-N.Wiggins, Illegal Contact, 5 yards, enforced at DAL 35 - No Play.
(:50) (No Huddle, Shotgun) 4-D.Prescott pass deep middle to 87-J.Ferguson to BAL 34 for 26 yards (0-R.Smith).
(:28) (No Huddle, Shotgun) 4-D.Prescott sacked at BAL 39 for -5 yards. FUMBLES, and recovers at BAL 38.
END QUARTER 3
(15:00) (Shotgun) 4-D.Prescott pass incomplete short middle to 88-C.Lamb (29-A.Washington).
(14:55) (Shotgun) 4-D.Prescott pass incomplete short left to 87-J.Ferguson.
(14:52) (Shotgun) 4-D.Prescott pass incomplete deep left to 3-B.Cooks. Penalty on DAL-3-B.Cooks, Offensive Pass Interference, declined.TURNOVER ON DOWNS.
(14:47) 22-D.Henry left end pushed ob at 50 for 11 yards (7-T.Diggs).
(14:02) (Shotgun) 43-J.Hill left tackle to DAL 48 for 2 yards (58-M.Smith).
(13:26) 8-L.Jackson pass short right to 7-R.Bateman to DAL 36 for 12 yards (18-D.Clark; 6-Do.Wilson).
(12:42) 43-J.Hill left end to DAL 35 for 1 yard (11-M.Parsons).
(12:09) 22-D.Henry right tackle to DAL 31 for 4 yards (18-D.Clark).
(11:27) 22-D.Henry up the middle to DAL 28 for 3 yards (90-D.Lawrence, 50-E.Kendricks).
(10:44) 9-J.Tucker 46 yard field goal is No Good, Wide Left, Center-46-N.Moore, Holder-11-J.Stout.
(10:41) (Shotgun) 4-D.Prescott pass short middle to 23-R.Dowdle to DAL 41 for 5 yards (0-R.Smith).
(10:19) (No Huddle, Shotgun) 4-D.Prescott pass short left to 87-J.Ferguson to BAL 43 for 16 yards (95-T.Robinson).
(9:49) (No Huddle, Shotgun) 4-D.Prescott pass incomplete short right to 23-R.Dowdle.
(9:45) (Shotgun) 4-D.Prescott pass deep middle to 1-J.Tolbert to BAL 24 for 19 yards (21-B.Stephens).
(9:19) (No Huddle, Shotgun) 4-D.Prescott pass deep middle to 9-K.Turpin to BAL 1 for 23 yards (32-M.Williams; 39-E.Jackson).
(8:57) (No Huddle) 4-D.Prescott up the middle for 1 yard, TOUCHDOWN.
TWO-POINT CONVERSION ATTEMPT. 4-D.Prescott pass to 88-C.Lamb is incomplete. ATTEMPT FAILS.
17-B.Aubrey kicks onside 9 yards from DAL 35 to DAL 44, impetus ends at DAL 44. RECOVERED by DAL-29-C.Goodwin.
(8:51) (Shotgun) 23-R.Dowdle left tackle to DAL 47 for 3 yards (14-K.Hamilton, 58-M.Pierce).
(8:30) (No Huddle, Shotgun) 4-D.Prescott pass short left to 1-J.Tolbert to BAL 45 for 8 yards (21-B.Stephens).
(8:02) (No Huddle, Shotgun) 4-D.Prescott pass incomplete short right to 87-J.Ferguson (53-K.Van Noy). BAL-29-A.Washington was injured during the play.
(7:58) (Shotgun) 4-D.Prescott pass short right to 87-J.Ferguson to BAL 39 for 6 yards (14-K.Hamilton).
(7:35) (No Huddle, Shotgun) 4-D.Prescott pass short right to 83-J.Brooks to BAL 15 for 24 yards (2-N.Wiggins) [44-M.Humphrey].
(7:16) (No Huddle, Shotgun) 4-D.Prescott pass incomplete short right to 86-L.Schoonmaker.
(7:12) (Shotgun) 4-D.Prescott pass short middle to 1-J.Tolbert for 15 yards, TOUCHDOWN.
TWO-POINT CONVERSION ATTEMPT. 4-D.Prescott pass to 23-R.Dowdle is incomplete. ATTEMPT FAILS.
17-B.Aubrey kicks onside 12 yards from DAL 35 to DAL 47. 4-Z.Flowers (didn't try to advance) ran ob at DAL 47 for no gain.
(7:05) 22-D.Henry right end to DAL 41 for 6 yards (18-D.Clark).
(6:24) 22-D.Henry up the middle to DAL 40 for 1 yard (6-Do.Wilson; 50-E.Kendricks).
(5:37) (Shotgun) 8-L.Jackson pass incomplete short right to 89-M.Andrews.
(5:34) 11-J.Stout punts 31 yards to DAL 9, Center-46-N.Moore, downed by BAL-28-S.Kane.
(5:26) (Shotgun) 4-D.Prescott pass short middle to 42-D.Vaughn to DAL 17 for 8 yards (0-R.Smith; 14-K.Hamilton). ** Injury Update: BAL-29-A.Washington has returned to the game.
(5:03) (No Huddle, Shotgun) 4-D.Prescott pass incomplete short middle to 88-C.Lamb.
(5:00) (Shotgun) 4-D.Prescott pass short right to 40-H.Luepke to DAL 41 for 24 yards (29-A.Washington).
(4:30) (No Huddle, Shotgun) 4-D.Prescott pass incomplete short right to 83-J.Brooks (44-M.Humphrey).
(4:26) (Shotgun) 4-D.Prescott pass short left to 86-L.Schoonmaker to DAL 46 for 5 yards (21-B.Stephens).
(3:59) (No Huddle, Shotgun) 4-D.Prescott pass incomplete deep middle to 87-J.Ferguson. PENALTY on BAL-32-M.Williams, Illegal Contact, 5 yards, enforced at DAL 46 - No Play.
(3:55) (Shotgun) 4-D.Prescott pass incomplete short left to 88-C.Lamb.
(3:50) (Shotgun) 4-D.Prescott pass incomplete deep right to 88-C.Lamb (29-A.Washington). PENALTY on BAL-99-O.Oweh, Roughing the Passer, 15 yards, enforced at BAL 49 - No Play.
(3:45) (Shotgun) 4-D.Prescott pass incomplete short middle to 40-H.Luepke (0-R.Smith).
(3:41) (Shotgun) 4-D.Prescott pass short left to 23-R.Dowdle to BAL 16 for 18 yards (14-K.Hamilton; 39-E.Jackson).
(3:10) (No Huddle, Shotgun) 4-D.Prescott pass incomplete deep left to 3-B.Cooks (21-B.Stephens).
(3:05) (Shotgun) 4-D.Prescott pass incomplete deep right.
(2:58) (Shotgun) 4-D.Prescott pass deep left to 9-K.Turpin for 16 yards, TOUCHDOWN.
17-B.Aubrey extra point is GOOD, Center-44-T.Sieg, Holder-5-B.Anger.
17-B.Aubrey kicks 65 yards from DAL 35 to BAL 0. 3-D.Harty to BAL 31 for 31 yards (40-H.Luepke; 83-J.Brooks). PENALTY on BAL-49-C.Board, Offensive Holding, 10 yards, enforced at BAL 31.
(2:44) (Shotgun) 8-L.Jackson up the middle to BAL 25 for 4 yards (58-M.Smith).
(2:40) (Shotgun) 22-D.Henry up the middle to BAL 25 for no gain (11-M.Parsons).
Timeout #1 by DAL at 02:40.
(2:36) (Shotgun) 8-L.Jackson pass short right to 4-Z.Flowers to BAL 34 for 9 yards (7-T.Diggs).
Timeout #2 by DAL at 02:36.
(2:28) 22-D.Henry right tackle to BAL 35 for 1 yard (21-C.Carson).
Timeout #3 by DAL at 02:28.
(2:00) (Shotgun) 8-L.Jackson left guard to BAL 45 for 10 yards (13-D.Overshown; 50-E.Kendricks).
(1:13) 8-L.Jackson kneels to BAL 44 for -1 yards.
(:33) 8-L.Jackson kneels to BAL 43 for -1 yards.
END GAME"

bal_dal_summary <- "Headline: Henry rushes for 151 yards, 2 TDs as Ravens hang on to beat Cowboys 28-25
Summary: The Ravens opened with a five-play, 71-yard drive capped by Jackson's 9-yard run to the pylon. His first throw of the game was a 30-yarder to uncovered tight end Charlie Kolar. The Ravens scored touchdowns on their first two drives and led 28-6 before Dak Prescott and the Cowboys rallied big late with some help from a rare onside kick recovery. Prescott scored on a 1-yard quarterback sneak midway through the fourth, C.J. Griffin recovered the onside kick and Jalen Tolbert had a 15-yard TD catch to make it 28-18 before the Cowboys missed on a second consecutive 2-point conversion try. Flowers recovered Dallas' second onside kick after whiffing on the first, but the Ravens went three-and-out. Baltimore was a play away from having to give the ball back to the Cowboys leading by just three when Jackson had a clutch completion to Zay Flowers. Jackson then put the game away with a nifty 10-yard run as the Ravens finished with 274 yards rushing. 
Notable Performances: Jackson was 12 of 15 for 182 yards and 2 total TDs, including a 13-yard scoring toss to Rashod Bateman, and added 87 yards rushing. Prescott ended the game at 28 of 51 for 379 yards and two touchdowns. Derrick Henry ran for 151 yards and two touchdowns, and had a 23 yard catch Brandon Aubrey kicked a 65-yard field goal for the Cowboys. Nelson Agholor had a 56-yard catch-and-run to set up Henry’s first touchdown
Injuries: Cowboys: S Markquese Bell injured left in the first half and didn't return Ravens: CB Jalyn Armour-Davis got injured and didn't return."

# Append game log and summary to training dataframe 
bal_dal <- as.data.frame(cbind(bal_dal_log, bal_dal_summary)) %>% rename(game_log = bal_dal_log, game_summary = bal_dal_summary)
training <- rbind(training, bal_dal)

kc_atl_log <- "GAME
7-H.Butker kicks 65 yards from KC 35 to end zone, Touchback to the ATL 30.
(15:00) 18-K.Cousins pass short right to 1-D.Mooney ran ob at ATL 39 for 9 yards (6-B.Cook).
(14:15) 18-K.Cousins pass deep left to 1-D.Mooney to KC 35 for 26 yards (6-B.Cook).
(13:35) 7-B.Robinson right tackle to KC 36 for -1 yards (32-N.Bolton).
(13:00) (Shotgun) 18-K.Cousins pass short middle to 34-R.McCloud to KC 21 for 15 yards (6-B.Cook).
(12:28) (No Huddle) 7-B.Robinson left end to KC 16 for 5 yards (51-M.Danna).
(11:54) (Shotgun) 18-K.Cousins pass short left to 34-R.McCloud pushed ob at KC 14 for 2 yards (20-J.Reid).
(11:12) (Shotgun) 18-K.Cousins pass short left to 5-D.London for 14 yards, TOUCHDOWN.
6-Y.Koo extra point is GOOD, Center-49-L.McCullough, Holder-13-B.Pinion.
13-B.Pinion kicks 63 yards from ATL 35 to KC 2. 17-M.Hardman to KC 21 for 19 yards (33-A.Hamilton). PENALTY on KC-54-L.Chenal, Offensive Holding, 10 yards, enforced at KC 21.
(11:02) (Shotgun) 15-P.Mahomes pass incomplete short left to 4-R.Rice.
(10:57) (Shotgun) 15-P.Mahomes pass short right to 1-X.Worthy pushed ob at KC 21 for 10 yards (3-J.Bates).
(10:26) (Shotgun) 1-X.Worthy left end to KC 27 for 6 yards (0-L.Carter).
(9:53) (Shotgun) 42-C.Steele left tackle to KC 34 for 7 yards (44-T.Andersen, 21-M.Hughes).
(9:16) (Shotgun) 15-P.Mahomes pass short right to 87-T.Kelce to KC 35 for 1 yard (20-D.Alford).
(8:45) (Shotgun) 15-P.Mahomes pass short right to 4-R.Rice to ATL 48 for 17 yards (55-K.Elliss).
(8:13) (Shotgun) 15-P.Mahomes pass incomplete short left to 9-J.Smith-Schuster.
(8:08) (Shotgun) 15-P.Mahomes scrambles left guard to ATL 39 for 9 yards (44-T.Andersen; 20-D.Alford).
(7:33) 76-K.Suamataia reported in as eligible. 42-C.Steele left guard to ATL 39 for no gain (95-T.Graham).
Timeout #1 by KC at 07:33.
(6:56) 4-R.Rice left end to ATL 38 for 1 yard (15-M.Judon, 97-G.Jarrett). Atlanta challenged the first down ruling, and the play was Upheld. The ruling on the field stands. (Timeout #1.)
(6:22) 15-P.Mahomes pass incomplete deep middle to 1-X.Worthy (21-M.Hughes).
(6:15) (Shotgun) 15-P.Mahomes pass short left to 9-J.Smith-Schuster to ATL 34 for 4 yards (21-M.Hughes).
(5:38) (Shotgun) 15-P.Mahomes pass short right to 4-R.Rice ran ob at ATL 28 for 6 yards.
(5:10) 34-S.Perine right tackle to ATL 27 for 1 yard (97-G.Jarrett). PENALTY on ATL, Defensive Too Many Men on Field, 6 yards, enforced at ATL 28 - No Play.
(4:48) (Shotgun) 34-S.Perine right tackle to ATL 19 for 3 yards (97-G.Jarrett; 44-T.Andersen).
(4:10) (Shotgun) 42-C.Steele right guard to ATL 16 for 3 yards (99-E.Goldman, 95-T.Graham).
(3:32) (Shotgun) 15-P.Mahomes pass short middle to 42-C.Steele to ATL 14 for 2 yards (3-J.Bates) [0-L.Carter].
(2:53) (Shotgun) 15-P.Mahomes pass short right intended for 83-N.Gray INTERCEPTED by 31-J.Simmons [55-K.Elliss] at ATL -1. Touchback.
(2:46) (Shotgun) 7-B.Robinson right tackle to ATL 25 for 5 yards (51-M.Danna).
(2:16) 7-B.Robinson right end to ATL 32 for 7 yards (56-G.Karlaftis; 6-B.Cook).
(1:40) 7-B.Robinson left tackle to ATL 31 for -1 yards (56-G.Karlaftis, 27-C.Conner).
(1:02) (Shotgun) 18-K.Cousins pass short right to 1-D.Mooney to ATL 33 for 2 yards (32-N.Bolton).
(:18) (Shotgun) 18-K.Cousins pass incomplete short right to 8-K.Pitts (35-Ja.Watson) [56-G.Karlaftis]. Penalty on ATL-70-Ja.Matthews, Illegal Use of Hands, declined.
(:10) 13-B.Pinion punts 58 yards to KC 9, Center-49-L.McCullough. 17-M.Hardman to KC 21 for 12 yards (51-D.Malone).
END QUARTER 1
(15:00) 15-P.Mahomes pass short left to 4-R.Rice pushed ob at KC 27 for 6 yards (44-T.Andersen).
(14:34) (Shotgun) 34-S.Perine left guard to KC 30 for 3 yards (44-T.Andersen; 50-J.Smith-Williams).
(13:56) (Shotgun) 15-P.Mahomes pass short middle to 87-T.Kelce to KC 33 for 3 yards (44-T.Andersen; 20-D.Alford).
(13:22) 42-C.Steele left end to KC 36 for 3 yards (55-K.Elliss; 31-J.Simmons).
(12:52) (Shotgun) 15-P.Mahomes pass short right to 4-R.Rice to KC 48 for 12 yards (55-K.Elliss).
(12:15) (Shotgun) 34-S.Perine left tackle to ATL 43 for 9 yards (21-M.Hughes; 31-J.Simmons).
(11:40) (Shotgun) 34-S.Perine right guard to ATL 35 for 8 yards (20-D.Alford).
(11:03) (Shotgun) 34-S.Perine right tackle to ATL 33 for 2 yards (90-D.Onyemata; 24-A.Terrell).
(10:35) (Shotgun) 15-P.Mahomes pass incomplete short middle to 34-S.Perine.
(10:30) (Shotgun) 15-P.Mahomes pass short left to 84-Ju.Watson pushed ob at ATL 20 for 13 yards (20-D.Alford).
(9:51) 76-K.Suamataia reported in as eligible. 34-S.Perine left guard to ATL 20 for no gain (95-T.Graham). Penalty on KC, Illegal Formation, offsetting, enforced at ATL 20 - No Play. Penalty on ATL-95-T.Graham, Defensive Holding, offsetting.
(9:34) (Shotgun) 15-P.Mahomes pass incomplete short left to 42-C.Steele.
(9:30) (Shotgun) 15-P.Mahomes pass short right to 1-X.Worthy to ATL 13 for 7 yards (24-A.Terrell).
(8:51) (Shotgun) 15-P.Mahomes pass short left to 4-R.Rice for 13 yards, TOUCHDOWN. PENALTY on ATL-0-L.Carter, Roughing the Passer, 8 yards, enforced between downs.
7-H.Butker extra point is GOOD, Center-41-J.Winchester, Holder-14-M.Araiza.
7-H.Butker kicks 65 yards from KC 35 to end zone, Touchback to the ATL 30.
(8:45) (Shotgun) 18-K.Cousins pass incomplete short middle to 34-R.McCloud (27-C.Conner) [95-C.Jones].
(8:39) (Shotgun) 25-T.Allgeier left end to ATL 34 for 4 yards (27-C.Conner).
(7:56) (Shotgun) 18-K.Cousins pass incomplete deep left to 5-D.London (13-N.Johnson). ATL-76-K.McGary was injured during the play. PENALTY on KC-95-C.Jones, Roughing the Passer, 15 yards, enforced at ATL 34 - No Play.
(7:51) (Shotgun) 7-B.Robinson left end to ATL 49 for no gain (98-T.Wharton, 95-C.Jones).
(7:08) (Shotgun) 18-K.Cousins pass deep right to 8-K.Pitts to KC 1 for 50 yards (20-J.Reid). Penalty on KC-22-T.McDuffie, Defensive Holding, declined.
(6:44) 7-B.Robinson left tackle for 1 yard, TOUCHDOWN.
6-Y.Koo extra point is GOOD, Center-49-L.McCullough, Holder-13-B.Pinion.
13-B.Pinion kicks 66 yards from ATL 35 to KC -1. 17-M.Hardman pushed ob at KC 31 for 32 yards (20-D.Alford).
(6:31) (Shotgun) 42-C.Steele left guard to KC 40 for 9 yards (55-K.Elliss).
(5:56) (Shotgun) 42-C.Steele left tackle to KC 44 for 4 yards (15-M.Judon).
(5:22) 15-P.Mahomes pass short middle to 83-N.Gray to ATL 43 for 13 yards (31-J.Simmons).
(4:50) (Shotgun) 15-P.Mahomes pass short right to 4-R.Rice to ATL 41 for 2 yards (24-A.Terrell, 3-J.Bates).
(4:14) (Shotgun) 15-P.Mahomes pass short left to 4-R.Rice to ATL 35 for 6 yards (22-C.Phillips).
(3:30) (Shotgun) 34-S.Perine left guard to ATL 35 for no gain (97-G.Jarrett, 90-D.Onyemata).
(2:48) 7-H.Butker 53 yard field goal is GOOD, Center-41-J.Winchester, Holder-14-M.Araiza.
7-H.Butker kicks 65 yards from KC 35 to end zone, Touchback to the ATL 30.
(2:43) 7-B.Robinson left end to ATL 32 for 2 yards (27-C.Conner). ATL-67-D.Dalman was injured during the play.
(2:00) (Shotgun) 18-K.Cousins sacked at ATL 25 for -7 yards (97-F.Anudike-Uzomah). FUMBLES (97-F.Anudike-Uzomah) [97-F.Anudike-Uzomah], touched at ATL 28, ball out of bounds at ATL 25. PENALTY on ATL-7-B.Robinson, Illegal Kick/Kicking Loose Ball, 10 yards, enforced at ATL 32.
(1:53) (Shotgun) 18-K.Cousins FUMBLES (Aborted) at ATL 17, recovered by ATL-7-B.Robinson at ATL 18. 7-B.Robinson to ATL 27 for 9 yards (32-N.Bolton).
(1:46) 13-B.Pinion punts 39 yards to KC 34, Center-49-L.McCullough, downed by ATL-51-D.Malone.
Timeout #2 by KC at 01:46.
(1:37) (Shotgun) 15-P.Mahomes pass short right to 34-S.Perine to KC 39 for 5 yards (44-T.Andersen).
(1:21) (No Huddle, Shotgun) 15-P.Mahomes pass incomplete short right [17-A.Ebiketie].
(1:16) (Shotgun) 15-P.Mahomes pass incomplete short left to 4-R.Rice.
(1:11) 14-M.Araiza punts 42 yards to ATL 19, Center-41-J.Winchester. 26-A.Williams to ATL 30 for 11 yards (34-S.Perine; 41-J.Winchester).
(:59) (Shotgun) PENALTY on ATL-77-S.Norton, False Start, 5 yards, enforced at ATL 30 - No Play.
(:59) (Shotgun) 18-K.Cousins pass short right to 5-D.London to ATL 35 for 10 yards (27-C.Conner).
(:41) (No Huddle, Shotgun) 18-K.Cousins pass short right intended for 8-K.Pitts INTERCEPTED by 27-C.Conner (98-T.Wharton) [98-T.Wharton] at ATL 49. 27-C.Conner to ATL 46 for 3 yards. Lateral to 35-Ja.Watson to ATL 34 for 12 yards (63-C.Lindstrom).
(:32) (Shotgun) 15-P.Mahomes pass short right to 34-S.Perine to ATL 26 for 8 yards (44-T.Andersen).
(:23) (Shotgun) 15-P.Mahomes pass incomplete deep middle.
Timeout #3 by KC at 00:23.
(:15) (Shotgun) 15-P.Mahomes pass incomplete deep left to 84-Ju.Watson.
(:11) 7-H.Butker 44 yard field goal is GOOD, Center-41-J.Winchester, Holder-14-M.Araiza.
7-H.Butker kicks 65 yards from KC 35 to end zone, Touchback to the ATL 30.
(:06) 18-K.Cousins kneels to ATL 29 for -1 yards.
END QUARTER 2
13-B.Pinion kicks 65 yards from ATL 35 to end zone, Touchback to the KC 30.
(15:00) (Shotgun) 15-P.Mahomes pass short right to 87-T.Kelce to KC 39 for 9 yards (55-K.Elliss, 20-D.Alford).
(14:29) (Shotgun) 15-P.Mahomes pass short right to 4-R.Rice to ATL 47 for 14 yards (44-T.Andersen).
(13:56) (Shotgun) 42-C.Steele right guard to ATL 42 for 5 yards (15-M.Judon).
(13:23) (Shotgun) 15-P.Mahomes pass short middle to 4-R.Rice to ATL 36 for 6 yards (20-D.Alford).
(12:49) (Shotgun) 15-P.Mahomes pass short right to 87-T.Kelce to ATL 19 for 17 yards (21-M.Hughes).
(12:17) 42-C.Steele right guard to ATL 10 for 9 yards (31-J.Simmons; 55-K.Elliss).
(11:41) (Shotgun) 42-C.Steele right guard to ATL 3 for 7 yards (95-T.Graham, 3-J.Bates).
(11:02) (Shotgun) Direct snap to 42-C.Steele. 42-C.Steele up the middle to ATL 1 for 2 yards (93-K.Street).
(10:24) (Shotgun) 66-M.Caliendo and 64-W.Morris reported in as eligible. 42-C.Steele left guard to ATL 3 for -2 yards (90-D.Onyemata).
(9:49) (Shotgun) 15-P.Mahomes pass incomplete short left [15-M.Judon].
(9:42) 7-H.Butker 21 yard field goal is GOOD, Center-41-J.Winchester, Holder-14-M.Araiza.
7-H.Butker kicks 65 yards from KC 35 to ATL 0. 26-A.Williams to ATL 28 for 28 yards (44-Ca.Jones; 38-K.Ingram).
(9:33) 18-K.Cousins pass short right to 1-D.Mooney to ATL 33 for 5 yards (35-Ja.Watson).
(8:54) (Shotgun) 7-B.Robinson right tackle to ATL 36 for 3 yards (51-M.Danna; 27-C.Conner).
(8:18) (Shotgun) 18-K.Cousins sacked at ATL 35 for -1 yards (69-M.Pennel).
(7:29) 13-B.Pinion punts 65 yards to end zone, Center-49-L.McCullough, Touchback.
(7:20) 42-C.Steele right guard to KC 25 for 5 yards (44-T.Andersen; 31-J.Simmons).
(6:48) (Shotgun) 15-P.Mahomes pass short left to 4-R.Rice to KC 29 for 4 yards (20-D.Alford).
(6:08) 66-M.Caliendo reported in as eligible. 42-C.Steele right guard to KC 31 for 2 yards (3-J.Bates).
(5:32) (Shotgun) 15-P.Mahomes pass deep right to 4-R.Rice to ATL 42 for 27 yards (21-M.Hughes) [0-L.Carter].
(4:53) (Shotgun) 1-X.Worthy left end pushed ob at ATL 41 for 1 yard (31-J.Simmons).
(4:18) (Shotgun) 15-P.Mahomes scrambles right guard to ATL 26 for 15 yards (3-J.Bates).
(3:40) (Shotgun) 42-C.Steele left guard to ATL 18 for 8 yards (17-A.Ebiketie).
(3:01) 42-C.Steele left tackle to ATL 16 for 2 yards (90-D.Onyemata).
(2:21) 66-M.Caliendo reported in as eligible. 1-X.Worthy left end to ATL 10 for 6 yards (21-M.Hughes; 44-T.Andersen).
(1:41) 15-P.Mahomes pass short right to 4-R.Rice to ATL 13 for -3 yards (24-A.Terrell). KC-4-R.Rice was injured during the play.
(1:21) (Shotgun) 15-P.Mahomes pass short left to 9-J.Smith-Schuster for 13 yards, TOUCHDOWN [97-G.Jarrett].
7-H.Butker extra point is No Good, Hit Right Upright, Center-41-J.Winchester, Holder-14-M.Araiza.
7-H.Butker kicks 68 yards from KC 35 to ATL -3. 34-R.McCloud to ATL 33 for 36 yards (21-J.Hicks). PENALTY on ATL-85-R.Dwelley, Illegal Block Above the Waist, 10 yards, enforced at ATL 25.
(1:09) 18-K.Cousins pass short left to 1-D.Mooney to ATL 26 for 11 yards (27-C.Conner; 22-T.McDuffie) [94-M.Herring].
(:37) 7-B.Robinson left guard to ATL 24 for -2 yards (32-N.Bolton).
(:05) (Shotgun) 18-K.Cousins pass short right to 7-B.Robinson to ATL 41 for 17 yards (6-B.Cook).
END QUARTER 3
(15:00) 25-T.Allgeier left end to ATL 44 for 3 yards (32-N.Bolton; 35-Ja.Watson).
(14:19) 18-K.Cousins pass incomplete deep left to 5-D.London.
(14:15) (Shotgun) 18-K.Cousins pass short left to 1-D.Mooney to KC 39 for 17 yards (27-C.Conner) [51-M.Danna].
(13:39) 7-B.Robinson right tackle to KC 36 for 3 yards (27-C.Conner; 98-T.Wharton).
(13:05) 18-K.Cousins pass incomplete short middle [23-D.Tranquill].
(13:00) (Shotgun) 18-K.Cousins pass incomplete short middle.
(12:56) 6-Y.Koo 54 yard field goal is GOOD, Center-49-L.McCullough, Holder-13-B.Pinion.
13-B.Pinion kicks 65 yards from ATL 35 to end zone, Touchback to the KC 30.
(12:52) (Shotgun) 42-C.Steele right tackle to KC 36 for 6 yards (44-T.Andersen, 24-A.Terrell). ** Injury Update: KC-4-R.Rice has returned to the game.
(12:15) (Shotgun) 15-P.Mahomes pass short left to 34-S.Perine to KC 38 for 2 yards (20-D.Alford).
(11:36) (Shotgun) 15-P.Mahomes pass incomplete short middle to 87-T.Kelce (3-J.Bates) [99-E.Goldman].
(11:31) 14-M.Araiza punts 52 yards to ATL 10, Center-41-J.Winchester. 26-A.Williams to ATL 11 for 1 yard (21-J.Hicks). FUMBLES (21-J.Hicks), RECOVERED by KC-2-J.Williams at ATL 8. The Replay Official reviewed the runner was not down by contact ruling, and the play was REVERSED. 14-M.Araiza punts 52 yards to ATL 10, Center-41-J.Winchester. 26-A.Williams to ATL 11 for 1 yard (21-J.Hicks).
(11:22) (Shotgun) 18-K.Cousins pass incomplete short middle to 34-R.McCloud (56-G.Karlaftis) [56-G.Karlaftis]. PENALTY on ATL-63-C.Lindstrom, Illegal Use of Hands, 5 yards, enforced at ATL 11 - No Play.
(11:17) (Shotgun) 25-T.Allgeier left tackle to ATL 16 for 10 yards (98-T.Wharton).
(10:58) (No Huddle) 25-T.Allgeier left tackle to ATL 28 for 12 yards (27-C.Conner; 20-J.Reid).
(10:32) (No Huddle) 25-T.Allgeier right tackle to ATL 30 for 2 yards (32-N.Bolton).
(9:59) (Shotgun) 18-K.Cousins pass short right to 8-K.Pitts pushed ob at ATL 39 for 9 yards (23-D.Tranquill; 35-Ja.Watson).
(9:26) 7-B.Robinson right tackle to ATL 41 for 2 yards (27-C.Conner).
(8:51) (Shotgun) 18-K.Cousins pass short right to 5-D.London to KC 46 for 13 yards (32-N.Bolton) [23-D.Tranquill]. KC-32-N.Bolton was injured during the play.
(8:22) (Shotgun) 34-R.McCloud left end pushed ob at KC 26 for 20 yards (6-B.Cook).
(7:55) (Shotgun) 18-K.Cousins pass short right to 1-D.Mooney to KC 28 for -2 yards (20-J.Reid).
(7:20) (Shotgun) 18-K.Cousins pass short left to 7-B.Robinson pushed ob at KC 24 for 4 yards (6-B.Cook).
(6:44) (Shotgun) PENALTY on KC-20-J.Reid, Neutral Zone Infraction, 5 yards, enforced at KC 24 - No Play.
(6:30) (Shotgun) 7-B.Robinson right tackle to KC 18 for 1 yard (95-C.Jones; 43-J.Cochrane).
(6:08) (No Huddle, Shotgun) 18-K.Cousins pass short middle to 5-D.London to KC 11 for 7 yards (20-J.Reid).
(5:32) (Shotgun) 7-B.Robinson left end to KC 7 for 4 yards (51-M.Danna, 6-B.Cook).
(4:53) (Shotgun) 25-T.Allgeier right guard to KC 6 for 1 yard (97-F.Anudike-Uzomah). ** Injury Update: KC-32-N.Bolton has returned to the game.
(4:12) (Shotgun) 18-K.Cousins pass incomplete short middle to 8-K.Pitts (6-B.Cook).
(4:08) (Shotgun) 18-K.Cousins pass incomplete short middle to 5-D.London. TURNOVER ON DOWNS.
(4:04) 42-C.Steele right tackle to KC 8 for 2 yards (90-D.Onyemata).
(3:24) (Shotgun) 15-P.Mahomes scrambles left end to KC 14 for 6 yards (55-K.Elliss).
(2:37) (Shotgun) 15-P.Mahomes pass incomplete short left to 1-X.Worthy.
(2:33) 14-M.Araiza punts 51 yards to ATL 35, Center-41-J.Winchester, fair catch by 26-A.Williams.
(2:26) (Shotgun) 18-K.Cousins pass incomplete short right to 1-D.Mooney (22-T.McDuffie). PENALTY on KC-27-C.Conner, Illegal Use of Hands, 5 yards, enforced at ATL 35 - No Play.
(2:21) (Shotgun) 18-K.Cousins pass short right to 5-D.London to KC 48 for 12 yards (35-Ja.Watson).
(2:01) (No Huddle, Shotgun) 18-K.Cousins pass incomplete deep left to 34-R.McCloud. PENALTY on KC-22-T.McDuffie, Defensive Pass Interference, 11 yards, enforced at KC 48 - No Play.
(1:56) (Shotgun) 18-K.Cousins pass incomplete deep left to 5-D.London [56-G.Karlaftis].
(1:51) (Shotgun) 18-K.Cousins pass short right to 1-D.Mooney to KC 37 for no gain (35-Ja.Watson). PENALTY on KC-35-Ja.Watson, Horse Collar Tackle, 15 yards, enforced at KC 37 - No Play.
(1:44) (Shotgun) 18-K.Cousins pass short left to 1-D.Mooney to KC 24 for -2 yards (13-N.Johnson).
(1:10) (Shotgun) 18-K.Cousins pass short middle to 5-D.London to KC 13 for 11 yards (23-D.Tranquill).
(1:03) (Shotgun) 25-T.Allgeier left guard to KC 13 for no gain (23-D.Tranquill).
Timeout #1 by ATL at 01:03.
(:56) 7-B.Robinson left end to KC 16 for -3 yards (32-N.Bolton, 54-L.Chenal).
Timeout #1 by KC at 00:56.
(:51) 15-P.Mahomes kneels to KC 11 for -5 yards.
(:45) 15-P.Mahomes kneels to KC 7 for -4 yards.
Timeout #2 by ATL at 00:45.
(:42) 15-P.Mahomes kneels to KC 3 for -4 yards.
Timeout #3 by ATL at 00:42.
END GAME"

kc_atl_summary <- "Headline: Mahomes throws 2 touchdown passes and the Chiefs' defense preserves a 22-17 win over the Falcons
Summary: The Atlanta Falcons took the opening kickoff and quickly drove 70 yards for a touchdown. Cousins completed all five of his passes for 66 yards, including a 14-yard scoring toss to Drake London. Mahomes bounced back from an early interception to take Kansas City on a 13-play, 79-yard drive that ended with a 13-yard touchdown pass to Rice. The Falcons reclaimed the lead on Robinson’s 1-yard touchdown run, which was set up by Cousins’ 50-yard pass to Kyle Pitts. Atlanta’s offensive line took a pair of hits when right tackle Kaleb McGary and center Drew Dalman both went out with injuries. With a pair of backups joining their ranks, the guys up from struggled to keep the pressure off Cousins, who was sacked twice and hit 10 more times as he threw. One of those hits resulted in a wobbly pass that was picked off by Chamarri Conner, setting up Butker's 44-yard field goal that sliced the Falcons’ edge to 14-13 at halftime. Butker put the Chiefs ahead to stay on a 21-yard chip shot in the third quarter, and Kansas City stretched the lead on Mahomes’ 13-yard touchdown pass to Smith-Schuster late in the third quarter. The Falcons had a couple of shots at the go-ahead touchdown in the closing minutes. Kirk Cousins threw a pair of incompletions in the end zone from the Chiefs 6 after the Falcons passed up a shot at a field goal with just over 4 minutes remaining. Atlanta got the ball back, drove down the field with help from a couple of penalties, and had third-and-1 at the Kansas City 13. Bijan Robinson was thrown for a 3-yard loss on fourth down with less than a minute remaining, preventing them from scoring and extending the game.
Notable Performances: Mahomes threw for 217 yards, including scoring throws to Rashee Rice and JuJu Smith-Schuster. Harrison Butker booted three field goals for the Chiefs. Cousins was 20 of 29 for 230 yards with a 13-yard touchdown pass to Drake London and a 50-yard completion to Kyle Pitts that set up Robinson's 1-yard scoring run. Runningback, Carson Steele, led the way with 17 carries for 72 yards.
Injuries: Falcons: McGary and Dalman both went out in the second quarter."

# Append game log and summary to training dataframe 
kc_atl <- as.data.frame(cbind(kc_atl_log, kc_atl_summary)) %>% rename(game_log = kc_atl_log, game_summary = kc_atl_summary)
training <- rbind(training, kc_atl)

phi_tb_log <- "GAME
10-B.Mann kicks 58 yards from PHI 35 to TB 7. 10-T.Palmer pushed ob at TB 21 for 14 yards (29-A.Maddox).
(14:58) (Shotgun) 6-B.Mayfield pass short right to 13-M.Evans to TB 29 for 8 yards (32-R.Blankenship).
(14:21) (Shotgun) 1-R.White left tackle to TB 46 for 17 yards (93-M.Williams; 32-R.Blankenship).
(13:38) 6-B.Mayfield pass short left to 10-T.Palmer to TB 49 for 3 yards (32-R.Blankenship).
(12:56) (Shotgun) 6-B.Mayfield pass short left to 7-B.Irving to PHI 45 for 6 yards (32-R.Blankenship).
(12:16) 6-B.Mayfield pass short right to 14-C.Godwin to PHI 38 for 7 yards (29-A.Maddox).
(11:41) (Shotgun) 6-B.Mayfield pass incomplete short left to 1-R.White.
(11:38) (Shotgun) 6-B.Mayfield pass short left to 10-T.Palmer to PHI 30 for 8 yards (27-Q.Mitchell).
(11:03) (Shotgun) 6-B.Mayfield pass short left to 1-R.White pushed ob at PHI 8 for 22 yards (27-Q.Mitchell).
(10:30) (Shotgun) 6-B.Mayfield pass short right to 14-C.Godwin to PHI 2 for 6 yards (3-N.Smith).
(9:48) (Shotgun) 6-B.Mayfield pass short left to 13-M.Evans for 2 yards, TOUCHDOWN.
4-C.McLaughlin extra point is GOOD, Center-45-Z.Triner, Holder-16-T.Gill.
16-T.Gill kicks 65 yards from TB 35 to end zone, Touchback to the PHI 30.
(9:44) (Shotgun) 1-J.Hurts pass incomplete deep right to 26-S.Barkley.
(9:36) (Shotgun) 26-S.Barkley left guard to PHI 30 for no gain (54-L.David).
(8:52) (Shotgun) 1-J.Hurts pass short right to 88-D.Goedert to PHI 37 for 7 yards (54-L.David; 27-Z.McCollum) [23-T.Smith].
(8:11) (Punt formation) PENALTY on PHI-36-T.McCollum, False Start, 5 yards, enforced at PHI 37 - No Play.
(7:59) 10-B.Mann punts 48 yards to TB 20, Center-49-R.Lovato, fair catch by 10-T.Palmer.
(7:49) (Shotgun) 6-B.Mayfield pass short middle to 88-C.Otton to TB 36 for 16 yards (17-N.Dean).
(7:10) 6-B.Mayfield pass short right to 14-C.Godwin pushed ob at PHI 36 for 28 yards (8-C.Gardner-Johnson).
(6:27) (Shotgun) 6-B.Mayfield pass short right to 13-M.Evans pushed ob at PHI 19 for 17 yards (2-D.Slay).
(5:52) (Shotgun) 7-B.Irving right guard to PHI 15 for 4 yards (0-B.Huff).
(5:08) (Shotgun) 6-B.Mayfield pass short middle to 10-T.Palmer for 15 yards, TOUCHDOWN.
4-C.McLaughlin extra point is GOOD, Center-45-Z.Triner, Holder-16-T.Gill.
16-T.Gill kicks 65 yards from TB 35 to end zone, Touchback to the PHI 30.
(5:03) (Shotgun) 1-J.Hurts pass incomplete short right to 88-D.Goedert.
(4:59) 57-B.VanSumeren reported in as eligible. 26-S.Barkley left guard to PHI 33 for 3 yards (9-J.Tryon, 29-C.Izien).
(4:18) (Shotgun) 1-J.Hurts sacked at PHI 23 for -10 yards (50-V.Vea).
(3:38) 10-B.Mann punts 55 yards to TB 22, Center-49-R.Lovato. 10-T.Palmer to TB 27 for 5 yards (57-B.VanSumeren, 81-G.Calcaterra).
(3:25) (Run formation) PENALTY on PHI-97-M.Ojomo, Encroachment, 5 yards, enforced at TB 27 - No Play.
(3:25) 1-R.White right end pushed ob at TB 45 for 13 yards (2-D.Slay).
(2:50) (Shotgun) 6-B.Mayfield pass short right to 88-C.Otton to PHI 49 for 6 yards (17-N.Dean, 53-Z.Baun).
(2:05) 6-B.Mayfield sacked at TB 40 for -11 yards (55-B.Graham).
Timeout #1 by TB at 02:05.
(1:24) (Shotgun) 6-B.Mayfield pass incomplete short middle to 88-C.Otton (32-R.Blankenship).
(1:16) 16-T.Gill punts 42 yards to PHI 18, Center-45-Z.Triner. 33-C.DeJean MUFFS catch, RECOVERED by TB-51-J.Russell at PHI 22.
(1:06) 7-B.Irving right end to PHI 7 for 15 yards (2-D.Slay; 98-J.Carter).
(:27) (Shotgun) 6-B.Mayfield pass short right to 88-C.Otton pushed ob at PHI 3 for 4 yards (8-C.Gardner-Johnson).
END QUARTER 1
(15:00) 7-B.Irving right guard to PHI 1 for 2 yards (3-N.Smith; 29-A.Maddox).
(14:18) 6-B.Mayfield pass incomplete short left to 13-M.Evans (27-Q.Mitchell).
(14:13) (Shotgun) 6-B.Mayfield right guard for 1 yard, TOUCHDOWN.
4-C.McLaughlin extra point is GOOD, Center-45-Z.Triner, Holder-16-T.Gill.
16-T.Gill kicks 65 yards from TB 35 to end zone, Touchback to the PHI 30.
(14:09) (Shotgun) 1-J.Hurts pass incomplete deep right to 81-G.Calcaterra. Penalty on PHI-74-F.Johnson, Illegal Formation, declined.
(14:04) 1-J.Hurts pass incomplete short left to 26-S.Barkley (90-L.Hall).
(13:59) (Shotgun) 1-J.Hurts pass incomplete deep right to 83-J.Dotson.
(13:54) 10-B.Mann punts 70 yards to end zone, Center-49-R.Lovato, Touchback.
(13:47) 44-S.Tucker left end to TB 23 for 3 yards (27-Q.Mitchell).
(13:09) (Shotgun) 6-B.Mayfield pass incomplete short right to 88-C.Otton (98-J.Carter).
(13:06) (Shotgun) 6-B.Mayfield pass incomplete deep left to 13-M.Evans. PENALTY on PHI-32-R.Blankenship, Defensive Pass Interference, 16 yards, enforced at TB 23 - No Play.
(13:01) 6-B.Mayfield pass short right to 44-S.Tucker pushed ob at PHI 47 for 14 yards (2-D.Slay).
(12:22) (Shotgun) 6-B.Mayfield pass short middle to 14-C.Godwin to PHI 37 for 10 yards (32-R.Blankenship).
(11:40) (Shotgun) 1-R.White right guard to PHI 34 for 3 yards (3-N.Smith; 53-Z.Baun).
(11:00) (Shotgun) 6-B.Mayfield pass short right to 13-M.Evans pushed ob at PHI 22 for 12 yards (2-D.Slay).
(10:21) (Shotgun) PENALTY on TB-62-G.Barton, False Start, 5 yards, enforced at PHI 22 - No Play.
(10:00) (Shotgun) 7-B.Irving right guard to PHI 24 for 3 yards (17-N.Dean).
(9:23) (Shotgun) 6-B.Mayfield pass short left to 17-S.Shepard to PHI 6 for 18 yards (27-Q.Mitchell).
(8:41) 6-B.Mayfield pass short right to 14-C.Godwin to PHI 3 for 3 yards (29-A.Maddox).
(8:04) 6-B.Mayfield FUMBLES (Aborted) at PHI 3, and recovers at PHI 3.
(7:24) (Shotgun) 6-B.Mayfield pass incomplete short middle to 19-K.Johnson.
(7:21) 4-C.McLaughlin 21 yard field goal is GOOD, Center-45-Z.Triner, Holder-16-T.Gill.
16-T.Gill kicks 65 yards from TB 35 to end zone, Touchback to the PHI 30.
(7:18) (Shotgun) 1-J.Hurts pass short left to 80-P.Campbell to PHI 34 for 4 yards (35-J.Dean, 54-L.David).
(6:53) (No Huddle, Shotgun) 1-J.Hurts pass incomplete short left to 89-J.Wilson (35-J.Dean).
(6:49) (Shotgun) 1-J.Hurts scrambles left end pushed ob at PHI 41 for 7 yards (3-J.Whitehead).
(6:28) (No Huddle, Shotgun) 26-S.Barkley up the middle to PHI 48 for 7 yards (90-L.Hall, 3-J.Whitehead).
(6:09) (No Huddle, Shotgun) 26-S.Barkley right guard to TB 49 for 3 yards (50-V.Vea; 98-A.Nelson). PENALTY on TB-50-V.Vea, Defensive Holding, 5 yards, enforced at TB 49.
(5:45) (Shotgun) 1-J.Hurts pass short middle to 88-D.Goedert to TB 39 for 5 yards (54-L.David).
(5:15) (No Huddle, Shotgun) 26-S.Barkley right guard to TB 35 for 4 yards (0-Y.Diaby). TB-8-S.Dennis was injured during the play.
(4:52) 1-J.Hurts up the middle to TB 33 for 2 yards (52-K.Britt).
(4:27) (No Huddle, Shotgun) 1-J.Hurts pass short left to 88-D.Goedert pushed ob at TB 24 for 9 yards (3-J.Whitehead).
(3:56) (Shotgun) 1-J.Hurts pass deep left to 88-D.Goedert ran ob at TB 6 for 18 yards.
(3:36) (No Huddle, Shotgun) 26-S.Barkley left guard to TB 1 for 5 yards (35-J.Dean).
(3:15) (No Huddle, Shotgun) 26-S.Barkley up the middle to TB 2 for -1 yards (50-V.Vea).
(2:37) (Shotgun) 26-S.Barkley right guard to TB 1 for 1 yard (52-K.Britt).
Timeout #1 by PHI at 02:37.
(2:00) (Shotgun) 1-J.Hurts pass short right to 80-P.Campbell for 1 yard, TOUCHDOWN.
4-J.Elliott extra point is GOOD, Center-49-R.Lovato, Holder-10-B.Mann.
10-B.Mann kicks 65 yards from PHI 35 to end zone, Touchback to the TB 30.
(1:54) (Shotgun) 6-B.Mayfield pass short left to 13-M.Evans to TB 43 for 13 yards (36-T.McCollum).
(1:33) (No Huddle, Shotgun) 6-B.Mayfield pass incomplete short right to 17-S.Shepard.
(1:29) (Shotgun) 6-B.Mayfield pass incomplete short right to 14-C.Godwin (2-D.Slay).
(1:25) (Shotgun) 6-B.Mayfield pass incomplete deep middle to 13-M.Evans.
(1:21) 16-T.Gill punts 37 yards to PHI 20, Center-45-Z.Triner, fair catch by 33-C.DeJean.
(1:14) (Shotgun) 1-J.Hurts pass incomplete short right to 89-J.Wilson.
(1:10) (Shotgun) 1-J.Hurts pass incomplete short right to 14-K.Gainwell.
(1:07) (Shotgun) 1-J.Hurts pass short left to 80-P.Campbell to PHI 25 for 5 yards (54-L.David, 35-J.Dean).
(1:01) 10-B.Mann punts 47 yards to TB 28, Center-49-R.Lovato, out of bounds.
Timeout #2 by TB at 01:01.
(:55) (Shotgun) 6-B.Mayfield pass incomplete short middle to 13-M.Evans.
(:50) (Shotgun) 6-B.Mayfield pass short middle to 13-M.Evans to TB 43 for 15 yards (2-D.Slay; 36-T.McCollum).
(:33) (No Huddle, Shotgun) 6-B.Mayfield pass incomplete short left to 14-C.Godwin (29-A.Maddox).
(:29) (Shotgun) 6-B.Mayfield pass incomplete short middle to 88-C.Otton.
(:24) (Shotgun) 6-B.Mayfield pass short right to 88-C.Otton to TB 47 for 4 yards (2-D.Slay).
(:17) 16-T.Gill punts 32 yards to PHI 21, Center-45-Z.Triner. 54-J.Trotter to PHI 21 for no gain (32-J.Hayes).
Timeout #2 by PHI at 00:17.
(:08) 1-J.Hurts kneels to PHI 20 for -1 yards.
END QUARTER 2
16-T.Gill kicks 65 yards from TB 35 to end zone, Touchback to the PHI 30.
(15:00) (Shotgun) 26-S.Barkley right tackle pushed ob at TB 11 for 59 yards (3-J.Whitehead).
(14:21) (Shotgun) 1-J.Hurts pass short right to 88-D.Goedert to TB 2 for 9 yards (29-C.Izien).
(13:51) (No Huddle, Shotgun) 14-K.Gainwell left guard to TB 2 for no gain (29-C.Izien).
(13:18) 1-J.Hurts up the middle to TB 1 for 1 yard (92-W.Gholston).
(12:40) 1-J.Hurts up the middle for 1 yard, TOUCHDOWN.
4-J.Elliott extra point is GOOD, Center-49-R.Lovato, Holder-10-B.Mann.
10-B.Mann kicks 65 yards from PHI 35 to end zone, Touchback to the TB 30.
(12:28) (Shotgun) 6-B.Mayfield pass short right to 17-S.Shepard to TB 33 for 3 yards (2-D.Slay).
(11:53) (Shotgun) 6-B.Mayfield pass incomplete deep right to 13-M.Evans.
(11:48) (Shotgun) 6-B.Mayfield scrambles left end ran ob at TB 43 for 10 yards (2-D.Slay). PHI-2-D.Slay was injured during the play.
(11:12) 1-R.White right end to TB 42 for -1 yards (53-Z.Baun, 3-N.Smith).
(10:33) (Shotgun) 6-B.Mayfield pass incomplete deep left to 17-S.Shepard (8-C.Gardner-Johnson).
(10:28) (Shotgun) 6-B.Mayfield pass short right to 14-C.Godwin to PHI 43 for 15 yards (34-I.Rodgers, 36-T.McCollum).
(9:46) (Shotgun) 7-B.Irving left end to PHI 35 for 8 yards (17-N.Dean).
(9:05) 7-B.Irving left end to PHI 28 for 7 yards (36-T.McCollum, 59-T.Booker).
(8:26) (Shotgun) 6-B.Mayfield pass short right to 13-M.Evans to PHI 7 for 21 yards (36-T.McCollum).
(7:44) 7-B.Irving left tackle to PHI 2 for 5 yards (36-T.McCollum).
(7:06) 7-B.Irving left guard for 2 yards, TOUCHDOWN. The Replay Official reviewed the runner broke the plane ruling, and the play was REVERSED. 7-B.Irving left guard to PHI 1 for 1 yard (97-M.Ojomo; 17-N.Dean).
(6:53) 7-B.Irving left end for 1 yard, TOUCHDOWN.
4-C.McLaughlin extra point is Blocked (34-I.Rodgers), Center-45-Z.Triner, Holder-16-T.Gill. DEFENSIVE TWO-POINT ATTEMPT. 22-K.Ringo recovered the blocked kick. ATTEMPT SUCCEEDS.
16-T.Gill kicks 61 yards from TB 35 to PHI 4. 28-W.Shipley to PHI 27 for 23 yards (87-P.Durham; 51-J.Russell).
(6:43) (Shotgun) 1-J.Hurts left end to PHI 31 for 4 yards (98-A.Nelson).
(6:08) (Shotgun) 1-J.Hurts pass short left to 26-S.Barkley to TB 42 for 27 yards (43-C.Braswell; 90-L.Hall).
(5:43) (No Huddle, Shotgun) 26-S.Barkley left guard to TB 39 for 3 yards (43-C.Braswell).
(4:58) (No Huddle, Shotgun) 1-J.Hurts pass short left to 88-D.Goedert to TB 33 for 6 yards (52-K.Britt; 35-J.Dean).
(4:29) (No Huddle) 1-J.Hurts up the middle to TB 31 for 2 yards (52-K.Britt; 96-G.Gaines).
(3:54) (No Huddle, Shotgun) 1-J.Hurts pass short left to 88-D.Goedert pushed ob at TB 23 for 8 yards (52-K.Britt).
(3:26) (No Huddle, Shotgun) 1-J.Hurts left end to TB 19 for 4 yards (43-C.Braswell).
(2:44) (Shotgun) 1-J.Hurts sacked at TB 27 for -8 yards (54-L.David). FUMBLES (54-L.David), touched at TB 23, RECOVERED by TB-56-B.Stille at TB 24.
(2:36) 1-R.White right guard to TB 24 for no gain (55-B.Graham). ** Injury Update: PHI-2-D.Slay has returned to the game.
(2:00) (Shotgun) 6-B.Mayfield pass deep left to 17-S.Shepard to PHI 46 for 30 yards (27-Q.Mitchell).
(1:18) 1-R.White right tackle to PHI 48 for -2 yards (17-N.Dean). PHI-98-J.Carter was injured during the play.
(:50) (Shotgun) 6-B.Mayfield sacked at 50 for -2 yards (19-J.Sweat).
(:07) (Shotgun) 6-B.Mayfield pass incomplete short left to 14-C.Godwin [19-J.Sweat]. Penalty on PHI-97-M.Ojomo, Defensive Offside, declined. PENALTY on PHI-29-A.Maddox, Defensive Holding, 5 yards, enforced at 50 - No Play.
END QUARTER 3
(15:00) 6-B.Mayfield pass short left to 1-R.White to PHI 32 for 13 yards (59-T.Booker).
(14:18) 6-B.Mayfield pass incomplete deep left to 13-M.Evans.
(14:12) (Shotgun) 1-R.White left end to PHI 24 for 8 yards (93-M.Williams). PENALTY on TB-68-B.Bredeson, Offensive Holding, 10 yards, enforced at PHI 32 - No Play.
(13:44) (Shotgun) 6-B.Mayfield pass short middle to 88-C.Otton to PHI 34 for 8 yards (36-T.McCollum; 53-Z.Baun).
(13:07) (Shotgun) 6-B.Mayfield pass incomplete short right to 7-B.Irving.
(13:04) 4-C.McLaughlin 52 yard field goal is GOOD, Center-45-Z.Triner, Holder-16-T.Gill.
16-T.Gill kicks 65 yards from TB 35 to landing zone to end zone, Touchback to the PHI 20.
(12:59) (Shotgun) 1-J.Hurts pass short right to 26-S.Barkley to PHI 25 for 5 yards (27-Z.McCollum; 54-L.David).
(12:27) (No Huddle, Shotgun) 1-J.Hurts pass short left to 38-J.Ross to PHI 31 for 6 yards (52-K.Britt).
(12:00) (No Huddle, Shotgun) 1-J.Hurts pass deep middle to 81-G.Calcaterra to TB 43 for 26 yards (3-J.Whitehead).
(11:31) (No Huddle, Shotgun) 1-J.Hurts pass incomplete deep left to 38-J.Ross.
(11:25) (Shotgun) 1-J.Hurts sacked at PHI 48 for -9 yards (54-L.David).
(10:40) (No Huddle, Shotgun) 1-J.Hurts scrambles left end to TB 46 for 6 yards (35-J.Dean). PENALTY on PHI-56-T.Steen, Offensive Holding, 10 yards, enforced at PHI 48 - No Play.
(10:08) (Shotgun) 1-J.Hurts sacked at PHI 29 for -9 yards (0-Y.Diaby). FUMBLES (0-Y.Diaby), touched at PHI 29, recovered by PHI-74-F.Johnson at PHI 28.
(9:27) 10-B.Mann punts 62 yards to TB 10, Center-49-R.Lovato. 19-K.Johnson ran ob at TB 21 for 11 yards (57-B.VanSumeren).
(9:17) (Shotgun) 6-B.Mayfield pass short right to 88-C.Otton to TB 35 for 14 yards (29-A.Maddox; 53-Z.Baun). ** Injury Update: PHI-98-J.Carter has returned to the game.
(8:35) 7-B.Irving left tackle to TB 38 for 3 yards (53-Z.Baun).
(7:56) (Shotgun) 6-B.Mayfield pass incomplete short left to 13-M.Evans (90-J.Davis).
(7:51) (Shotgun) 6-B.Mayfield pass incomplete short left to 14-C.Godwin (29-A.Maddox).
(7:47) 16-T.Gill punts 39 yards to PHI 23, Center-45-Z.Triner, fair catch by 33-C.DeJean.
(7:40) (Shotgun) 1-J.Hurts pass incomplete deep right.
(7:34) (Shotgun) 1-J.Hurts pass short right to 80-P.Campbell to PHI 30 for 7 yards (98-A.Nelson).
(7:14) (No Huddle, Shotgun) 14-K.Gainwell right guard to PHI 39 for 9 yards (3-J.Whitehead).
(6:52) (No Huddle, Shotgun) 1-J.Hurts pass incomplete short right to 87-J.Stoll (54-L.David).
(6:48) (Shotgun) 1-J.Hurts pass short middle to 87-J.Stoll to PHI 43 for 4 yards (23-T.Smith) [43-C.Braswell].
(6:08) (No Huddle, Shotgun) 1-J.Hurts pass short left to 83-J.Dotson to 50 for 7 yards (35-J.Dean).
(5:40) (No Huddle, Shotgun) 1-J.Hurts sacked at PHI 45 for -5 yards (90-L.Hall).
(5:02) (No Huddle, Shotgun) 1-J.Hurts pass short left intended for 83-J.Dotson INTERCEPTED by 35-J.Dean at TB 49. 35-J.Dean for 51 yards, TOUCHDOWN. The Replay Official reviewed the interception ruling, and the play was REVERSED. (No Huddle, Shotgun) 1-J.Hurts pass incomplete short left to 83-J.Dotson (35-J.Dean). Penalty on TB-9-J.Tryon, Unnecessary Roughness, offsetting. Penalty on PHI-14-K.Gainwell, Low Block, offsetting.
(4:58) 1-J.Hurts pass short right to 83-J.Dotson to PHI 49 for 4 yards (27-Z.McCollum).
(4:15) (Shotgun) 1-J.Hurts sacked at PHI 42 for -7 yards (98-A.Nelson). TURNOVER ON DOWNS.
(4:10) (Shotgun) 6-B.Mayfield pass short left to 13-M.Evans to PHI 36 for 6 yards (27-Q.Mitchell). PHI-8-C.Gardner-Johnson was injured during the play.
(3:28) (Shotgun) 1-R.White right end to PHI 29 for 7 yards (59-T.Booker).
(2:42) 1-R.White left end to PHI 29 for no gain (17-N.Dean; 36-T.McCollum).
(2:00) 1-R.White right tackle to PHI 25 for 4 yards (3-N.Smith; 59-T.Booker).
(1:16) 1-R.White left end to PHI 17 for 8 yards (93-M.Williams).
(:33) 6-B.Mayfield kneels to PHI 18 for -1 yards.
END GAME"

phi_tb_summary <- "Headline: Mayfield throws for 347 yards and accounts for three TDs to lead Bucs over Eagles 33-16
Summary: The Buccaneers offense scored a touchdown on its opening possession. Evans’ 2-yard scoring reception finished the 10-play, 79-yard drive that set the tone for the Bucs. Mayfield also threw a first-quarter TD pass to Trey Palmer and scored on a 1-yard run on fourth-and-goal to make it 21-0 early in the second quarter. The Bucs held a 287-67 edge in yardage at halftime, with most of Philadelphia's offense coming on a 14-play drive that Hurts finished with a 1-yard TD throw to Parris Campbell. Despite the huge disparity statistically, the Eagles managed to get back into the game after Saquon Barkley began the second half with a 59-yard run to the Bucs 11. That set up a 1-yard TD run by Hurts that cut into a 24-7 halftime deficit.  The Eagles gave themselves a little more hope when Kelee Ringo scooped up a blocked extra-point kick on Tampa Bay's next touchdown and raced to the other end of the field for a defensive two-point conversion that trimmed the Bucs' lead to 30-16. Hurts took the kickoff and moved the Eagles to the Bucs 19 before linebacker Lavonte David sacked him, forcing a fumble that essentially ended the chance for a successful comeback.
Notable Performances: Mayfield threw for 347 yards and two touchdowns, on 30 for 47 attempts, with no interceptions. Evans finished with eight receptions for 94 yard.  The Tampa Bay defense finished with six sacks. Barkley rushed for 94 yards on 10 carries.  Hurts finished 18 of 30 for 150 yards and no interceptions.
Injuries: Eagles: DT Jalen Carter and C Cam Jurgens missed time in the fourth quarter. Buccaneers: LB SirVocea Dennis departed in the second quarter and did not return.
"

# Append game log and summary to training dataframe 
phi_tb <- as.data.frame(cbind(phi_tb_log, phi_tb_summary)) %>% rename(game_log = phi_tb_log, game_summary = phi_tb_summary)
training <- rbind(training, phi_tb)

min_gb_log <- "GAME
44-B.Narveson kicks 64 yards from GB 35 to MIN 1. 37-M.Gaskin to MIN 27 for 26 yards (18-M.Heath, 59-T.Hopper).
(14:54) 33-A.Jones left end to MIN 32 for 5 yards (25-K.Nixon).
(14:15) 14-S.Darnold pass short left to 33-A.Jones to MIN 44 for 12 yards (20-J.Bullard; 58-I.McDuffie).
(13:33) 33-A.Jones left end to MIN 45 for 1 yard (95-D.Wyatt, 97-K.Clark).
(12:51) (Shotgun) 14-S.Darnold pass incomplete short left to 18-J.Jefferson (58-I.McDuffie).
(12:43) (Shotgun) PENALTY on MIN, Delay of Game, 5 yards, enforced at MIN 45 - No Play.
(12:43) (Shotgun) 14-S.Darnold pass deep right to 83-J.Nailor to GB 29 for 31 yards (21-E.Stokes; 29-X.McKinney).
(11:59) (Shotgun) 14-S.Darnold pass deep right to 3-J.Addison for 29 yards, TOUCHDOWN. Penalty on GB-55-K.Enagbare, Defensive Offside, declined.
16-W.Reichard extra point is GOOD, Center-42-A.DePaola, Holder-17-R.Wright.
16-W.Reichard kicks 65 yards from MIN 35 to end zone, Touchback to the GB 30.
(11:53) (Shotgun) 8-J.Jacobs right guard to GB 38 for 8 yards (51-B.Cashman, 97-H.Phillips).
(11:11) (Shotgun) 10-J.Love pass short left to 88-L.Musgrave to GB 42 for 4 yards (7-B.Murphy; 51-B.Cashman).
(10:34) (Shotgun) 31-Em.Wilson left tackle to GB 45 for 3 yards (97-H.Phillips).
(9:56) 8-J.Jacobs left guard to MIN 42 for 13 yards (22-H.Smith, 7-B.Murphy).
(9:17) (Shotgun) 11-J.Reed right end to MIN 40 for 2 yards (51-B.Cashman, 90-J.Bullard).
(8:40) (Shotgun) 10-J.Love pass short middle to 11-J.Reed to MIN 16 for 24 yards (22-H.Smith).
(7:55) (Shotgun) 10-J.Love pass short left to 85-T.Kraft to MIN 15 for 1 yard (43-A.Van Ginkel).
(7:12) 8-J.Jacobs left tackle to MIN 14 for 1 yard (58-J.Greenard, 99-J.Tillery).
(6:56) (Shotgun) PENALTY on GB-74-E.Jenkins, False Start, 5 yards, enforced at MIN 14 - No Play.
Timeout #1 by MIN at 06:56.
(6:56) (Shotgun) 10-J.Love pass incomplete short middle to 13-D.Wicks.
(6:52) 44-B.Narveson 37 yard field goal is No Good, Hit Right Upright, Center-42-M.Orzech, Holder-19-D.Whelan.
(6:47) 33-A.Jones up the middle to MIN 44 for 17 yards (21-E.Stokes, 29-X.McKinney). PENALTY on GB-56-E.Cooper, Face Mask, 15 yards, enforced at MIN 44.
(6:26) 33-A.Jones right tackle to GB 40 for 1 yard (56-E.Cooper).
(5:46) (Shotgun) 14-S.Darnold pass short left to 3-J.Addison to GB 34 for 6 yards (21-E.Stokes). PENALTY on GB-95-D.Wyatt, Defensive Offside, 5 yards, enforced at GB 40 - No Play.
(5:30) 33-A.Jones up the middle to GB 32 for 3 yards (58-I.McDuffie, 25-K.Nixon).
(4:47) (Shotgun) 14-S.Darnold scrambles left end pushed ob at GB 23 for 9 yards (20-J.Bullard).
(4:03) PENALTY on MIN, Delay of Game, 5 yards, enforced at GB 23 - No Play.
(3:49) (Shotgun) 14-S.Darnold pass short left to 18-J.Jefferson ran ob at GB 23 for 5 yards (58-I.McDuffie).
(3:12) (Shotgun) 14-S.Darnold pass short left to 32-T.Chandler to GB 15 for 8 yards (90-L.Van Ness).
(2:29) (Shotgun) 14-S.Darnold pass incomplete short left to 18-J.Jefferson. PENALTY on GB-21-E.Stokes, Defensive Pass Interference, 12 yards, enforced at GB 15 - No Play.
(2:25) 14-S.Darnold pass incomplete short middle to 18-J.Jefferson. PENALTY on GB-25-K.Nixon, Defensive Holding, 2 yards, enforced at GB 3 - No Play.
(2:19) 33-A.Jones left end to GB 2 for -1 yards (95-D.Wyatt, 94-K.Brooks).
(1:41) 14-S.Darnold pass short left to 84-J.Oliver for 2 yards, TOUCHDOWN.
16-W.Reichard extra point is GOOD, Center-42-A.DePaola, Holder-17-R.Wright.
16-W.Reichard kicks 65 yards from MIN 35 to end zone, Touchback to the GB 30.
(1:37) (Shotgun) 8-J.Jacobs left end to GB 28 for -2 yards (51-B.Cashman).
(1:01) 10-J.Love pass short middle to 88-L.Musgrave to GB 33 for 5 yards (43-A.Van Ginkel, 54-K.Grugier-Hill) [90-J.Bullard].
(:23) (No Huddle, Shotgun) 10-J.Love pass short middle intended for 9-C.Watson INTERCEPTED by 54-K.Grugier-Hill at GB 46. 54-K.Grugier-Hill to GB 46 for no gain (9-C.Watson). GB-9-C.Watson was injured during the play.
(:20) 14-S.Darnold pass short left to 86-J.Mundt to GB 37 for 9 yards (56-E.Cooper).
END QUARTER 1
(15:00) (Shotgun) 33-A.Jones up the middle to GB 34 for 3 yards (7-Q.Walker).
(14:35) (No Huddle, Shotgun) 14-S.Darnold pass short right to 11-T.Sherfield to GB 26 for 8 yards (25-K.Nixon).
(14:03) 33-A.Jones left end to GB 22 for 4 yards (95-D.Wyatt; 91-P.Smith).
(13:23) 33-A.Jones right guard to GB 19 for 3 yards (97-K.Clark, 45-Er.Wilson).
(12:41) (Shotgun) 14-S.Darnold pass short right to 33-A.Jones to GB 7 for 12 yards (7-Q.Walker).
(11:54) 3-J.Addison right end for 7 yards, TOUCHDOWN.
Timeout #2 by MIN at 11:54.
16-W.Reichard extra point is GOOD, Center-42-A.DePaola, Holder-17-R.Wright.
16-W.Reichard kicks 65 yards from MIN 35 to end zone, Touchback to the GB 30.
(11:50) (Shotgun) 10-J.Love pass deep middle to 87-R.Doubs to 50 for 20 yards (7-B.Murphy).
(11:12) (Shotgun) 31-Em.Wilson up the middle to GB 49 for -1 yards (99-J.Tillery, 97-H.Phillips).
(10:30) (Shotgun) 10-J.Love pass short right to 11-J.Reed to MIN 43 for 8 yards (51-B.Cashman).
(9:51) (No Huddle, Shotgun) 10-J.Love pass incomplete deep right to 11-J.Reed. PENALTY on MIN-44-J.Metellus, Defensive Pass Interference, 20 yards, enforced at MIN 43 - No Play.
(9:45) (Shotgun) 31-Em.Wilson left guard to MIN 21 for 2 yards (97-H.Phillips, 91-P.Jones).
(9:02) (Shotgun) 10-J.Love sacked at MIN 31 for -10 yards (91-P.Jones).
(8:14) (Shotgun) 10-J.Love pass incomplete deep left to 85-T.Kraft (24-C.Bynum).
(8:09) 44-B.Narveson 49 yard field goal is No Good, Wide Right, Center-42-M.Orzech, Holder-19-D.Whelan.
(8:04) 14-S.Darnold pass incomplete short middle to 3-J.Addison.
(7:58) (No Huddle, Shotgun) 32-T.Chandler right tackle to MIN 41 for 2 yards (94-K.Brooks).
(7:14) (Shotgun) 14-S.Darnold pass incomplete deep left to 4-B.Powell.
(7:09) 17-R.Wright punts 53 yards to GB 6, Center-42-A.DePaola, downed by MIN-21-A.Evans.
(7:01) (Shotgun) 8-J.Jacobs up the middle to GB 12 for 6 yards (90-J.Bullard, 97-H.Phillips).
(6:42) (No Huddle, Shotgun) 10-J.Love pass short left to 87-R.Doubs pushed ob at GB 19 for 7 yards (1-S.Griffin).
(6:05) (Shotgun) 10-J.Love pass short left intended for 87-R.Doubs INTERCEPTED by 1-S.Griffin [51-B.Cashman] at GB 32. 1-S.Griffin to GB 4 for 28 yards (74-E.Jenkins, 71-J.Myers).
(5:55) 33-A.Jones up the middle to GB 3 for 1 yard (33-E.Williams, 25-K.Nixon). PENALTY on MIN-75-B.O'Neill, Offensive Holding, 10 yards, enforced at GB 4 - No Play.
(5:32) (Shotgun) 14-S.Darnold pass short right to 18-J.Jefferson for 14 yards, TOUCHDOWN.
16-W.Reichard extra point is GOOD, Center-42-A.DePaola, Holder-17-R.Wright.
16-W.Reichard kicks 65 yards from MIN 35 to end zone, Touchback to the GB 30.
(5:28) (Shotgun) 10-J.Love pass incomplete short right to 85-T.Kraft [51-B.Cashman].
(5:22) (Shotgun) 10-J.Love pass incomplete short left to 31-Em.Wilson (51-B.Cashman).
(5:18) (Shotgun) 10-J.Love pass short right to 85-T.Kraft to MIN 49 for 21 yards (24-C.Bynum) [52-Ji.Ward].
(4:35) (Shotgun) 31-Em.Wilson right guard to MIN 44 for 5 yards (58-J.Greenard, 97-H.Phillips).
(3:54) (Shotgun) 10-J.Love pass short right to 88-L.Musgrave to MIN 40 for 4 yards (1-S.Griffin).
(3:13) PENALTY on GB-31-Em.Wilson, False Start, 5 yards, enforced at MIN 40 - No Play.
(2:52) (Shotgun) 10-J.Love scrambles up the middle to MIN 39 for 6 yards (43-A.Van Ginkel). PENALTY on MIN-58-J.Greenard, Illegal Use of Hands, 5 yards, enforced at MIN 39.
(2:27) (Shotgun) 10-J.Love pass deep middle to 87-R.Doubs to MIN 17 for 17 yards (22-H.Smith). Minnesota challenged the pass completion ruling, and the play was REVERSED. (Shotgun) 10-J.Love pass incomplete deep middle to 87-R.Doubs (22-H.Smith).
(2:23) (Shotgun) 10-J.Love pass incomplete deep middle to 13-D.Wicks. Green Bay challenged the incomplete pass ruling, and the play was Upheld. The ruling on the field stands. (Timeout #1.)
(2:16) (Shotgun) 10-J.Love pass incomplete deep left to 13-D.Wicks (1-S.Griffin) [91-P.Jones].
(2:11) (Shotgun) 10-J.Love pass incomplete deep middle to 80-B.Melton (7-B.Murphy).TURNOVER ON DOWNS.
(2:03) (Shotgun) 32-T.Chandler right guard to MIN 37 for 3 yards (52-R.Gary).
(1:59) (Shotgun) 14-S.Darnold pass short left to 86-J.Mundt to MIN 43 for 6 yards (25-K.Nixon).
(1:21) (Shotgun) 14-S.Darnold pass incomplete short middle to 4-B.Powell. MIN-4-B.Powell was injured during the play.
(1:17) 17-R.Wright punts 41 yards to GB 16, Center-42-A.DePaola, fair catch by 11-J.Reed.
Timeout #3 by MIN at 01:17.
(1:11) (Shotgun) 10-J.Love pass incomplete short middle to 87-R.Doubs (24-C.Bynum).
(1:07) (Shotgun) 10-J.Love pass short left to 8-J.Jacobs pushed ob at GB 23 for 7 yards (24-C.Bynum).
(:58) (Shotgun) 10-J.Love pass incomplete deep right to 87-R.Doubs.
(:50) 19-D.Whelan punts 59 yards to MIN 18, Center-42-M.Orzech. 83-J.Nailor MUFFS catch, RECOVERED by GB-80-B.Melton at MIN 3.
(:39) (Shotgun) 10-J.Love pass short middle to 87-R.Doubs to MIN 1 for 2 yards (7-B.Murphy). PENALTY on GB, Unsportsmanlike Conduct, 14 yards, enforced at MIN 1.
(:20) (Shotgun) 10-J.Love pass short right to 11-J.Reed for 15 yards, TOUCHDOWN.
Timeout #2 by GB at 00:20.
44-B.Narveson extra point is GOOD, Center-42-M.Orzech, Holder-19-D.Whelan.
44-B.Narveson kicks 58 yards from GB 35 to MIN 7. 37-M.Gaskin MUFFS catch, and recovers at MIN 5. 37-M.Gaskin to MIN 20 for 15 yards (39-Z.Anderson).
(:08) 14-S.Darnold kneels to MIN 19 for -1 yards.
END QUARTER 2
16-W.Reichard kicks 65 yards from MIN 35 to end zone, Touchback to the GB 30.
(15:00) (Shotgun) 8-J.Jacobs left guard to GB 33 for 3 yards (90-J.Bullard).
(14:28) (Shotgun) 10-J.Love pass short left to 8-J.Jacobs to GB 36 for 3 yards (58-J.Greenard).
(14:03) (No Huddle, Shotgun) 10-J.Love pass short left to 13-D.Wicks ran ob at GB 47 for 11 yards. Minnesota challenged the pass completion ruling, and the play was REVERSED. (No Huddle, Shotgun) 10-J.Love pass incomplete short left to 13-D.Wicks.
(14:00) 19-D.Whelan punts 46 yards to MIN 18, Center-42-M.Orzech, fair catch by 4-B.Powell. ** Injury Update: MIN-4-B.Powell has returned to the game.
(13:53) 33-A.Jones up the middle to MIN 18 for no gain (97-K.Clark).
(13:16) 14-S.Darnold pass incomplete deep left to 18-J.Jefferson.
(13:10) (Shotgun) 14-S.Darnold pass deep left to 3-J.Addison to MIN 43 for 25 yards (21-E.Stokes).
(12:28) 33-A.Jones left end to GB 41 for 16 yards (56-E.Cooper).
(11:54) (No Huddle, Shotgun) 14-S.Darnold scrambles left end ran ob at GB 29 for 12 yards (21-E.Stokes).
(11:10) 33-A.Jones left guard to GB 20 for 9 yards (29-X.McKinney, 58-I.McDuffie).
(10:24) (Shotgun) 14-S.Darnold pass deep left intended for 33-A.Jones INTERCEPTED by 29-X.McKinney at GB 2. 29-X.McKinney ran ob at GB 2 for no gain. The Replay Official reviewed the interception ruling, and the play was Upheld. The ruling on the field stands.
(10:18) (Shotgun) 8-J.Jacobs right tackle to GB 6 for 4 yards (54-K.Grugier-Hill).
(9:38) (Shotgun) 10-J.Love pass incomplete short right to 8-J.Jacobs [58-J.Greenard].
(9:32) (Shotgun) 10-J.Love pass incomplete short right to 13-D.Wicks [52-Ji.Ward].
(9:28) 19-D.Whelan punts 60 yards to MIN 34, Center-42-M.Orzech. 4-B.Powell to MIN 44 for 10 yards (58-I.McDuffie).
(9:16) 33-A.Jones right end to GB 43 for 13 yards (26-C.Ballentine, 7-Q.Walker).
(8:38) 33-A.Jones right end to GB 45 for -2 yards (20-J.Bullard).
(7:57) (Shotgun) 14-S.Darnold sacked at MIN 42 for -13 yards (7-Q.Walker).
(7:14) (Shotgun) 14-S.Darnold pass short middle to 33-A.Jones to GB 44 for 14 yards (58-I.McDuffie; 25-K.Nixon).
(6:35) 17-R.Wright punts 44 yards to end zone, Center-42-A.DePaola, Touchback.
(6:28) (Shotgun) 10-J.Love pass short right to 13-D.Wicks to GB 31 for 11 yards (58-J.Greenard).
(6:02) (No Huddle, Shotgun) 31-Em.Wilson right guard to GB 39 for 8 yards (44-J.Metellus).
(5:43) (No Huddle, Shotgun) 10-J.Love pass short right to 13-D.Wicks pushed ob at GB 47 for 8 yards (7-B.Murphy).
(5:19) (No Huddle, Shotgun) 31-Em.Wilson up the middle to GB 49 for 2 yards (91-P.Jones; 51-B.Cashman).
(4:58) (No Huddle, Shotgun) 10-J.Love pass short left to 11-J.Reed to MIN 34 for 17 yards (24-C.Bynum).
(4:14) 31-Em.Wilson left guard to MIN 11 for 23 yards (24-C.Bynum). PENALTY on GB-85-T.Kraft, Offensive Holding, 10 yards, enforced at MIN 32.
(3:50) (Shotgun) 10-J.Love pass incomplete deep middle to 80-B.Melton (44-J.Metellus).
(3:42) (Shotgun) 10-J.Love pass incomplete short right to 11-J.Reed.
(3:39) (Shotgun) 10-J.Love pass short right to 85-T.Kraft to MIN 32 for 10 yards (43-A.Van Ginkel, 51-B.Cashman).
(3:12) (No Huddle, Shotgun) 10-J.Love pass incomplete deep right to 13-D.Wicks (1-S.Griffin).
(3:02) 33-A.Jones right end to MIN 38 for 5 yards (90-L.Van Ness).
(2:22) PENALTY on MIN-64-B.Brandel, False Start, 5 yards, enforced at MIN 38 - No Play.
(2:05) (Shotgun) 14-S.Darnold pass short left to 18-J.Jefferson pushed ob at MIN 42 for 9 yards (45-Er.Wilson).
(1:25) 32-T.Chandler left end to MIN 42 for no gain (7-Q.Walker).
(:41) 17-R.Wright punts 47 yards to GB 11, Center-42-A.DePaola, out of bounds.
(:33) (Shotgun) 10-J.Love pass short left to 11-J.Reed to GB 23 for 12 yards (51-B.Cashman; 24-C.Bynum).
(:09) (No Huddle, Shotgun) 10-J.Love pass short middle to 8-J.Jacobs to GB 31 for 8 yards (44-J.Metellus).
END QUARTER 3
(15:00) (Shotgun) 10-J.Love pass incomplete short right to 85-T.Kraft [90-J.Bullard].
(14:55) (Shotgun) 8-J.Jacobs up the middle to GB 42 for 11 yards (22-H.Smith, 44-J.Metellus).
(14:33) (No Huddle, Shotgun) 10-J.Love pass short right to 85-T.Kraft pushed ob at GB 45 for 3 yards (1-S.Griffin).
(14:08) (No Huddle, Shotgun) 10-J.Love pass deep right to 80-B.Melton pushed ob at MIN 27 for 28 yards (24-C.Bynum).
(13:40) (No Huddle, Shotgun) 10-J.Love pass short left to 18-M.Heath ran ob at MIN 24 for 3 yards.
(13:00) (No Huddle, Shotgun) 10-J.Love pass short right to 18-M.Heath to MIN 15 for 9 yards (51-B.Cashman).
(12:35) (No Huddle, Shotgun) 10-J.Love pass short middle to 8-J.Jacobs to MIN 6 for 9 yards (51-B.Cashman).
(11:49) (Shotgun) 10-J.Love pass incomplete short right to 8-J.Jacobs [97-H.Phillips].
(11:42) (Shotgun) 10-J.Love pass short middle to 13-D.Wicks for 6 yards, TOUCHDOWN.
44-B.Narveson extra point is GOOD, Center-42-M.Orzech, Holder-19-D.Whelan.
44-B.Narveson kicks 65 yards from GB 35 to end zone, Touchback to the MIN 30.
(11:38) 14-S.Darnold scrambles right end to MIN 32 for 2 yards (52-R.Gary).
(10:50) (Shotgun) 14-S.Darnold sacked at MIN 24 for -8 yards (25-K.Nixon). FUMBLES (25-K.Nixon) [25-K.Nixon], RECOVERED by GB-56-E.Cooper at MIN 24. 56-E.Cooper to MIN 20 for 4 yards (33-A.Jones).
(10:43) (Shotgun) 8-J.Jacobs up the middle to MIN 13 for 7 yards (44-J.Metellus; 51-B.Cashman).
(10:22) (No Huddle, Shotgun) 10-J.Love pass short left to 85-T.Kraft for 13 yards, TOUCHDOWN.
TWO-POINT CONVERSION ATTEMPT. 10-J.Love pass to 85-T.Kraft is complete. ATTEMPT SUCCEEDS.
44-B.Narveson kicks 65 yards from GB 35 to end zone, Touchback to the MIN 30.
(10:16) 14-S.Darnold pass deep left to 18-J.Jefferson to MIN 47 for 17 yards (25-K.Nixon).
(9:36) 14-S.Darnold pass short right to 84-J.Oliver to GB 45 for 8 yards (7-Q.Walker; 58-I.McDuffie).
(8:54) (No Huddle, Shotgun) 14-S.Darnold pass short right to 18-J.Jefferson to GB 18 for 27 yards (26-C.Ballentine). GB-95-D.Wyatt was injured during the play.
(8:23) (Shotgun) 14-S.Darnold pass short left to 33-A.Jones pushed ob at GB 10 for 8 yards (7-Q.Walker).
(7:42) 14-S.Darnold up the middle to GB 15 for -5 yards (56-E.Cooper).
(6:58) (Shotgun) 14-S.Darnold pass incomplete short right.
(6:53) 16-W.Reichard 33 yard field goal is GOOD, Center-42-A.DePaola, Holder-17-R.Wright.
16-W.Reichard kicks 65 yards from MIN 35 to end zone, Touchback to the GB 30.
(6:50) (Shotgun) 10-J.Love pass deep right to 13-D.Wicks pushed ob at MIN 34 for 36 yards (7-B.Murphy).
(6:20) (No Huddle, Shotgun) 10-J.Love pass deep right intended for 13-D.Wicks INTERCEPTED by 7-B.Murphy at MIN -4. Touchback.
(6:13) (Shotgun) 33-A.Jones up the middle to MIN 24 for 4 yards (90-L.Van Ness).
(5:29) 33-A.Jones right guard to MIN 24 for no gain (97-K.Clark, 91-P.Smith).
(4:44) (Shotgun) 14-S.Darnold pass incomplete short left to 83-J.Nailor.
(4:40) 17-R.Wright punts 40 yards to GB 36, Center-42-A.DePaola. 25-K.Nixon to GB 37 for 1 yard (21-A.Evans).
(4:31) (Shotgun) 10-J.Love pass incomplete short left to 13-D.Wicks (2-S.Gilmore).
(4:27) (Shotgun) 10-J.Love pass short right to 85-T.Kraft to GB 44 for 7 yards (7-B.Murphy). FUMBLES (7-B.Murphy), RECOVERED by MIN-24-C.Bynum at GB 42.
(4:18) 33-A.Jones left tackle to GB 40 for 2 yards (7-Q.Walker, 93-T.Slaton).
(4:12) (Shotgun) PENALTY on MIN-84-J.Oliver, False Start, 5 yards, enforced at GB 40 - No Play.
Timeout #1 by GB at 04:12.
(4:12) (Shotgun) 33-A.Jones left guard to GB 44 for 1 yard (52-R.Gary, 20-J.Bullard).
(4:08) (Shotgun) 14-S.Darnold pass incomplete short left to 18-J.Jefferson. Minnesota challenged the incomplete pass ruling, and the play was REVERSED. (Shotgun) 14-S.Darnold pass short left to 18-J.Jefferson ran ob at GB 31 for 13 yards.
Timeout #2 by GB at 04:08.
(4:04) 14-S.Darnold pass deep middle to 3-J.Addison to GB 13 for 18 yards (21-E.Stokes) [93-T.Slaton].
(3:17) 33-A.Jones left end pushed ob at GB 8 for 5 yards (21-E.Stokes).
(3:11) 33-A.Jones up the middle to GB 4 for 4 yards (29-X.McKinney, 93-T.Slaton).
(3:07) 33-A.Jones left end to GB 4 for no gain (52-R.Gary).
Timeout #3 by GB at 03:07.
(2:21) 83-J.Nailor left end to GB 4 for no gain (21-E.Stokes).
Timeout #1 by MIN at 02:21.
(2:18) (Shotgun) 31-Em.Wilson up the middle to GB 10 for 6 yards (58-J.Greenard; 44-J.Metellus). TURNOVER ON DOWNS.
(2:01) (No Huddle, Shotgun) 10-J.Love pass short left to 87-R.Doubs ran ob at GB 20 for 10 yards.
(1:56) (Shotgun) 10-J.Love pass short middle to 11-J.Reed to GB 41 for 21 yards (24-C.Bynum).
(1:35) (No Huddle, Shotgun) 10-J.Love pass deep right to 11-J.Reed to MIN 17 for 42 yards (22-H.Smith).
(1:02) (No Huddle, Shotgun) 10-J.Love pass deep middle to 13-D.Wicks for 17 yards, TOUCHDOWN.
44-B.Narveson extra point is GOOD, Center-42-M.Orzech, Holder-19-D.Whelan.
19-D.Whelan kicks onside 12 yards from GB 35 to GB 47. 84-J.Oliver (didn't try to advance) to GB 47 for no gain.
Timeout #2 by MIN at 00:56.
(:55) 14-S.Darnold kneels to GB 48 for -1 yards.
(:32) 14-S.Darnold kneels to GB 49 for -1 yards.
END GAME"

min_gb_summary <- "Headline:  Sam Darnold Vikings dominate first half and hang on to beat Packers 31-29
Summary: The game went back and forth, featured seven turnovers — four by Green Bay and three by Minnesota. Minnesota capitalized on two interceptions by Love and a pair of missed field goal attempts from Brayden Narveson to built its 28-0 lead in the first 25 minutes. Minnesota scored on each of its first three possession. When the Packers finally forced a punt, Shaq Griffin delivered a 28-yard interception return to set up one more Vikings touchdown. The Vikings led 28-7 and had second-and-1 from the Green Bay 20 in the third quarter when Xavier McKinney picked off Darnold. Love threw a 6-yard touchdown pass to Wicks and a 13-yarder to Tucker Kraft to cut Minnesota’s lead to 28-22 with 10:16 remaining. Minnesota regrouped on its next possession, with a couple of completions to Jefferson setting up Will Reichard's 33-yard kick with 6:50 left. The Packers got one last chance after Minnesota’s Jalen Nailor was stopped for no gain on fourth-and-1 from the Green Bay 4 with less than 2 1/2 minutes left. Love engineered a quick 96-yard drive to cut the margin to two. Green Bay got within 31-29 on Dontayvion Wicks’ second fourth-quarter touchdown catch — a 17-yarder with 56 seconds left. Minnesota’s Josh Oliver sealed the game by recovering Daniel Whelan’s ensuing onside kick to secure the victory.
Notable Performances: Darnold was 20 of 28 for 275 yards with touchdown passes of 29 yards to Addison, 2 yards to Oliver and 14 yards to Justin Jefferson. He also threw an interception and lost a fumble. Jordan Love threw for 389 yards and four touchdowns but also threw 3 interceptions. Aaron Jones had 22 carries for 93 yards and four catches for 46 yards. Jayden Reed had seven receptions for 139 yards and a touchdown for the Packers.
Injuries: Packers: WR Christian Watson was injured on the play that resulted in an interception."

# Append game log and summary to training dataframe 
min_gb <- as.data.frame(cbind(min_gb_log, min_gb_summary)) %>% rename(game_log = min_gb_log, game_summary = min_gb_summary)
training <- rbind(training, min_gb)

bal_cin_log <- "GAME
2-E.McPherson kicks 65 yards from CIN 35 to end zone, Touchback to the BAL 30.
(15:00) 4-Z.Flowers left end ran ob at BAL 39 for 9 yards (29-C.Taylor-Britt).
(14:27) (Shotgun) 22-D.Henry up the middle to BAL 43 for 4 yards (91-T.Hendrickson).
(13:55) (Shotgun) 22-D.Henry right tackle to BAL 45 for 2 yards (23-D.Hill, 94-S.Hubbard).
(13:13) (Shotgun) 8-L.Jackson pass short middle to 88-C.Kolar to CIN 48 for 7 yards (45-M.Njongmeta; 57-G.Pratt).
(12:32) 22-D.Henry left guard to CIN 44 for 4 yards (24-V.Bell).
(11:55) 8-L.Jackson pass incomplete short right to 4-Z.Flowers.
(11:51) (Shotgun) 8-L.Jackson pass short left to 43-J.Hill to CIN 36 for 8 yards (57-G.Pratt).
(11:12) (Shotgun) 43-J.Hill right end pushed ob at CIN 31 for 5 yards (55-L.Wilson).
(10:35) 8-L.Jackson pass deep left to 4-Z.Flowers to CIN 8 for 23 yards (29-C.Taylor-Britt).
(9:52) (Shotgun) 8-L.Jackson right tackle to CIN 5 for 3 yards (92-B.Hill).
(9:12) (Shotgun) 8-L.Jackson right end for 5 yards, TOUCHDOWN. The Replay Official reviewed the runner broke the plane ruling, and the play was REVERSED. (Shotgun) 8-L.Jackson right end to CIN 1 for 4 yards (94-S.Hubbard).
(8:59) 66-B.Cleveland reported in as eligible. 22-D.Henry right end for 1 yard, TOUCHDOWN.
9-J.Tucker extra point is GOOD, Center-46-N.Moore, Holder-11-J.Stout.
9-J.Tucker kicks 65 yards from BAL 35 to end zone, Touchback to the CIN 30.
(8:54) (Shotgun) 9-J.Burrow scrambles left guard to CIN 31 for 1 yard (99-O.Oweh).
(8:16) (Shotgun) 9-J.Burrow pass short middle to 5-T.Higgins to CIN 34 for 3 yards (14-K.Hamilton).
(7:35) (Shotgun) PENALTY on BAL-99-O.Oweh, Neutral Zone Infraction, 5 yards, enforced at CIN 34 - No Play.
(7:27) 61-C.Ford reported in as eligible. 31-Z.Moss right guard to CIN 39 for no gain (0-R.Smith).
(6:46) 8-R.Rehkow punts 45 yards to BAL 16, Center-48-C.Adomitis, fair catch by 16-T.Wallace.
(6:39) (Shotgun) 8-L.Jackson pass incomplete short right to 88-C.Kolar.
(6:34) (Shotgun) 8-L.Jackson pass short left to 4-Z.Flowers to BAL 21 for 5 yards (22-G.Stone).
(5:52) (Shotgun) 8-L.Jackson pass short middle to 4-Z.Flowers to BAL 47 for 26 yards (20-D.Turner, 55-L.Wilson).
(5:10) (Shotgun) 8-L.Jackson pass short right to 80-I.Likely to CIN 47 for 6 yards (20-D.Turner).
(4:27) (Shotgun) 8-L.Jackson sacked at 50 for -3 yards (94-S.Hubbard).
(3:41) (Shotgun) 8-L.Jackson pass incomplete short left to 4-Z.Flowers (29-C.Taylor-Britt).
(3:36) 11-J.Stout punts 36 yards to CIN 14, Center-46-N.Moore, out of bounds.
(3:29) (Shotgun) 9-J.Burrow pass short right to 1-J.Chase to CIN 23 for 9 yards (0-R.Smith).
(2:48) (Shotgun) 30-C.Brown right guard to CIN 26 for 3 yards (0-R.Smith).
(2:13) 30-C.Brown left end to CIN 42 for 16 yards (32-M.Williams, 23-T.Simpson).
(1:32) (Shotgun) 9-J.Burrow pass short left to 31-Z.Moss to BAL 44 for 14 yards (21-B.Stephens).
(:47) (Shotgun) 9-J.Burrow pass incomplete short right to 5-T.Higgins [23-T.Simpson].
(:43) (Shotgun) 9-J.Burrow pass deep right to 88-M.Gesicki pushed ob at BAL 25 for 19 yards (39-E.Jackson).
(:10) 30-C.Brown left tackle to BAL 13 for 12 yards (32-M.Williams).
END QUARTER 1
(15:00) (Shotgun) 30-C.Brown left guard to BAL 12 for 1 yard (21-B.Stephens; 92-N.Madubuike).
(14:26) (Shotgun) 9-J.Burrow pass short right to 30-C.Brown to BAL 11 for 1 yard (29-A.Washington).
(13:47) (Shotgun) 9-J.Burrow pass short left to 5-T.Higgins for 11 yards, TOUCHDOWN.
2-E.McPherson extra point is GOOD, Center-48-C.Adomitis, Holder-8-R.Rehkow.
2-E.McPherson kicks 65 yards from CIN 35 to end zone, Touchback to the BAL 30.
(13:44) 22-D.Henry left end to BAL 34 for 4 yards (29-C.Taylor-Britt; 24-V.Bell).
(13:03) (Shotgun) 22-D.Henry left guard to BAL 35 for 1 yard (94-S.Hubbard).
(12:19) (Shotgun) 8-L.Jackson pass incomplete short left to 7-R.Bateman [58-J.Ossai].
(12:11) 11-J.Stout punts 65 yards to end zone, Center-46-N.Moore, Touchback.
(12:05) (Shotgun) 9-J.Burrow pass incomplete deep left to 5-T.Higgins (21-B.Stephens).
(11:58) (Shotgun) 9-J.Burrow pass incomplete short middle to 80-A.Iosivas.
(11:55) (Shotgun) 9-J.Burrow sacked at CIN 13 for -7 yards (14-K.Hamilton).
(11:18) 8-R.Rehkow punts 49 yards to BAL 38, Center-48-C.Adomitis. 16-T.Wallace to BAL 49 for 11 yards (27-J.Battle).
(11:08) (Shotgun) 8-L.Jackson pass incomplete short left to 15-N.Agholor (29-C.Taylor-Britt).
(11:02) (Shotgun) 8-L.Jackson pass deep left to 7-R.Bateman ran ob at CIN 33 for 18 yards.
(10:21) (Shotgun) 22-D.Henry left tackle to CIN 28 for 5 yards (57-G.Pratt, 58-J.Ossai).
(9:39) (Shotgun) 22-D.Henry right end to CIN 21 for 7 yards (22-G.Stone, 90-K.Jenkins).
(9:00) (Shotgun) 8-L.Jackson pass incomplete short right to 89-M.Andrews.
(8:55) (Shotgun) 8-L.Jackson left end to CIN 16 for 5 yards (91-T.Hendrickson).
(8:16) (Shotgun) 8-L.Jackson pass short right to 7-R.Bateman for 16 yards, TOUCHDOWN [22-G.Stone].
9-J.Tucker extra point is GOOD, Center-46-N.Moore, Holder-11-J.Stout.
9-J.Tucker kicks 65 yards from BAL 35 to end zone, Touchback to the CIN 30.
(8:09) 61-C.Ford reported in as eligible. 30-C.Brown left guard to CIN 31 for 1 yard (98-T.Jones, 0-R.Smith).
(7:35) (Shotgun) 9-J.Burrow pass short left to 5-T.Higgins to CIN 39 for 8 yards (21-B.Stephens).
(6:49) 61-C.Ford reported in as eligible. 9-J.Burrow sacked at CIN 32 for -7 yards (95-T.Robinson).
(6:03) 8-R.Rehkow punts 66 yards to BAL 2, impetus ends at BAL 2, Center-48-C.Adomitis, downed by CIN-26-T.Anderson.
(5:52) 22-D.Henry right tackle tackled in End Zone for -2 yards, SAFETY (94-S.Hubbard). ** Injury Update: BAL-70-R.Rosengarten has returned to the game.
9-J.Tucker kicks 74 yards from BAL 20 to CIN 6. 15-C.Jones to CIN 33 for 27 yards (49-C.Board).
(5:41) (Shotgun) 31-Z.Moss right guard to CIN 37 for 4 yards (95-T.Robinson; 97-B.Urban).
(5:05) (Shotgun) 9-J.Burrow pass short middle to 1-J.Chase to CIN 45 for 8 yards (21-B.Stephens).
(4:21) (Shotgun) 9-J.Burrow pass incomplete short left to 31-Z.Moss (14-K.Hamilton).
(4:17) (Shotgun) 9-J.Burrow pass short middle to 83-E.All to 50 for 5 yards (0-R.Smith, 29-A.Washington).
(3:33) (Shotgun) 9-J.Burrow pass incomplete short right to 1-J.Chase (2-N.Wiggins).
(3:30) 8-R.Rehkow punts 36 yards to BAL 14, Center-48-C.Adomitis, fair catch by 16-T.Wallace.
(3:23) (Shotgun) 22-D.Henry left end to BAL 15 for 1 yard (91-T.Hendrickson, 92-B.Hill).
(2:45) (Shotgun) 8-L.Jackson pass short left to 15-N.Agholor to BAL 19 for 4 yards (55-L.Wilson).
(2:01) (Shotgun) 8-L.Jackson scrambles left end to BAL 23 for 4 yards (57-G.Pratt; 58-J.Ossai).
(1:54) Direct snap to 88-C.Kolar. 88-C.Kolar right guard to BAL 25 for 2 yards (55-L.Wilson; 92-B.Hill).
(1:05) (Shotgun) 8-L.Jackson pass incomplete short right to 15-N.Agholor [94-S.Hubbard].
(:55) (Shotgun) 43-J.Hill left guard to BAL 25 for no gain (55-L.Wilson).
(:49) (Shotgun) 8-L.Jackson pass incomplete deep middle to 4-Z.Flowers [91-T.Hendrickson].
Timeout #1 by BAL at 00:49.
(:44) 11-J.Stout punts 67 yards to CIN 8, Center-46-N.Moore. 15-C.Jones to CIN 21 for 13 yards (2-N.Wiggins).
(:34) (Shotgun) 9-J.Burrow pass short right to 5-T.Higgins pushed ob at CIN 32 for 11 yards (44-M.Humphrey).
(:28) (Shotgun) 9-J.Burrow pass short middle to 31-Z.Moss to CIN 41 for 9 yards (0-R.Smith; 29-A.Washington).
(:21) (Shotgun) 9-J.Burrow pass deep right to 1-J.Chase to BAL 41 for 18 yards (0-R.Smith) [92-N.Madubuike].
Timeout #1 by CIN at 00:21.
(:15) (Shotgun) 9-J.Burrow pass deep right to 1-J.Chase for 41 yards, TOUCHDOWN. PENALTY on BAL-92-N.Madubuike, Roughing the Passer, 1 yard, enforced between downs.
Timeout #2 by CIN at 00:15.
TWO-POINT CONVERSION ATTEMPT. 9-J.Burrow pass to 88-M.Gesicki is intercepted. ATTEMPT FAILS. DEFENSIVE TWO-POINT ATTEMPT. 14-K.Hamilton intercepted the try attempt. ATTEMPT FAILS. PENALTY on BAL-14-K.Hamilton, Defensive Pass Interference, 0 yards, enforced at BAL 1 - No Play.
Timeout #3 by CIN at 00:09.
TWO-POINT CONVERSION ATTEMPT. 30-C.Brown rushes left guard. ATTEMPT SUCCEEDS.
Timeout #2 by BAL at 00:09.
2-E.McPherson kicks 65 yards from CIN 35 to end zone, Touchback to the BAL 30.
(:09) 8-L.Jackson kneels to BAL 29 for -1 yards.
END QUARTER 2
9-J.Tucker kicks 65 yards from BAL 35 to end zone, Touchback to the CIN 30.
(15:00) (Shotgun) 9-J.Burrow pass short right to 1-J.Chase to CIN 26 for -4 yards (23-T.Simpson).
(14:23) (Shotgun) 9-J.Burrow pass incomplete short right to 5-T.Higgins (23-T.Simpson).
(14:20) (Shotgun) 9-J.Burrow pass deep right to 5-T.Higgins to CIN 43 for 17 yards (44-M.Humphrey) [53-K.Van Noy]. Penalty on BAL-44-M.Humphrey, Defensive Holding, declined.
(14:11) (Shotgun) 31-Z.Moss left guard to 50 for 7 yards (32-M.Williams, 23-T.Simpson).
(13:21) 30-C.Brown up the middle to CIN 47 for -3 yards (53-K.Van Noy). CIN-71-A.Mims was injured during the play.
(12:50) (Shotgun) 9-J.Burrow pass short right to 1-J.Chase to BAL 41 for 12 yards (2-N.Wiggins).
(12:09) (Shotgun) 31-Z.Moss left guard to BAL 41 for no gain (14-K.Hamilton; 0-R.Smith).
(11:25) (Shotgun) 9-J.Burrow pass incomplete short middle to 5-T.Higgins.
(11:21) (Shotgun) 9-J.Burrow pass deep right to 80-A.Iosivas pushed ob at BAL 2 for 39 yards (32-M.Williams) [91-Y.Ngakoue].
(10:40) 60-J.Kirkland reported in as eligible. 31-Z.Moss up the middle to BAL 1 for 1 yard (97-B.Urban; 23-T.Simpson).
(9:59) 60-J.Kirkland reported in as eligible. 9-J.Burrow left guard to BAL 1 for no gain (92-N.Madubuike; 0-R.Smith).
(9:07) PENALTY on CIN, Delay of Game, 4 yards, enforced at BAL 1 - No Play.
(8:53) (Shotgun) 9-J.Burrow pass short middle to 5-T.Higgins for 5 yards, TOUCHDOWN.
2-E.McPherson extra point is GOOD, Center-48-C.Adomitis, Holder-8-R.Rehkow.
2-E.McPherson kicks 61 yards from CIN 35 to BAL 4. 38-C.Collier to BAL 26 for 22 yards (45-M.Njongmeta, 59-A.Davis-Gaither).
(8:45) 8-L.Jackson pass short right to 4-Z.Flowers to BAL 41 for 15 yards (55-L.Wilson).
(8:03) (Shotgun) 8-L.Jackson pass deep right to 88-C.Kolar pushed ob at CIN 4 for 55 yards (22-G.Stone).
(7:16) (Shotgun) 22-D.Henry right guard to CIN 1 for 3 yards (92-B.Hill).
(6:41) 66-B.Cleveland reported in as eligible. 8-L.Jackson pass short left to 80-I.Likely for 1 yard, TOUCHDOWN.
9-J.Tucker extra point is GOOD, Center-46-N.Moore, Holder-11-J.Stout.
9-J.Tucker kicks 65 yards from BAL 35 to end zone, Touchback to the CIN 30.
(6:38) (Shotgun) 30-C.Brown left tackle to CIN 34 for 4 yards (90-D.Ojabo, 0-R.Smith).
(5:52) 9-J.Burrow pass short left to 31-Z.Moss to CIN 39 for 5 yards (58-M.Pierce).
(5:09) (Shotgun) 9-J.Burrow pass short left to 1-J.Chase pushed ob at CIN 43 for 4 yards (21-B.Stephens).
(4:31) (Shotgun) PENALTY on CIN-75-O.Brown, False Start, 5 yards, enforced at CIN 43 - No Play.
(4:17) (Shotgun) 9-J.Burrow pass short right to 5-T.Higgins to CIN 46 for 8 yards (14-K.Hamilton).
(3:41) (Shotgun) 9-J.Burrow pass short left to 83-E.All to BAL 49 for 5 yards (21-B.Stephens).
(2:59) (Shotgun) 9-J.Burrow pass short left to 1-J.Chase pushed ob at BAL 33 for 16 yards (21-B.Stephens) [98-T.Jones].
(2:20) 30-C.Brown right tackle to BAL 33 for no gain (0-R.Smith).
(1:37) (Shotgun) 9-J.Burrow pass short left to 30-C.Brown to BAL 30 for 3 yards (29-A.Washington).
(:56) (Shotgun) 9-J.Burrow pass short left to 88-M.Gesicki to BAL 18 for 12 yards (21-B.Stephens).
(:19) (Shotgun) 31-Z.Moss left tackle to BAL 10 for 8 yards (32-M.Williams). PENALTY on BAL-99-O.Oweh, Illegal Use of Hands, 5 yards, enforced at BAL 10.
END QUARTER 3
(15:00) 31-Z.Moss right guard to BAL 4 for 1 yard (0-R.Smith, 58-M.Pierce).
(14:23) (Shotgun) 9-J.Burrow pass short left to 30-C.Brown for 4 yards, TOUCHDOWN.
2-E.McPherson extra point is GOOD, Center-48-C.Adomitis, Holder-8-R.Rehkow.
2-E.McPherson kicks 57 yards from CIN 35 to BAL 8. 38-C.Collier MUFFS catch, ball out of bounds at BAL 8.
(14:18) (Shotgun) 8-L.Jackson pass deep right to 89-M.Andrews to BAL 35 for 27 yards (27-J.Battle).
(13:52) (No Huddle, Shotgun) 8-L.Jackson right end to CIN 47 for 18 yards (57-G.Pratt).
(13:23) (No Huddle, Shotgun) 8-L.Jackson pass incomplete short right to 43-J.Hill. PENALTY on BAL-77-D.Faalele, Offensive Holding, 10 yards, enforced at CIN 47 - No Play.
(13:18) (Shotgun) 8-L.Jackson scrambles left end to CIN 44 for 13 yards (90-K.Jenkins; 35-J.Davis).
(12:37) (No Huddle, Shotgun) 8-L.Jackson pass short middle to 4-Z.Flowers to CIN 31 for 13 yards (20-D.Turner).
(12:09) (No Huddle, Shotgun) 43-J.Hill left guard to CIN 24 for 7 yards (55-L.Wilson).
(11:41) (No Huddle, Shotgun) 8-L.Jackson right end to CIN 22 for 2 yards (20-D.Turner).
(11:11) (No Huddle, Shotgun) 43-J.Hill up the middle to CIN 19 for 3 yards (99-M.Murphy).
(10:32) (Shotgun) 8-L.Jackson pass short right to 22-D.Henry to CIN 15 for 4 yards (99-M.Murphy).
(9:52) (Shotgun) 8-L.Jackson pass short left to 89-M.Andrews to CIN 2 for 13 yards (29-C.Taylor-Britt, 57-G.Pratt).
(9:11) 8-L.Jackson pass short middle to 88-C.Kolar for 2 yards, TOUCHDOWN.
9-J.Tucker extra point is GOOD, Center-46-N.Moore, Holder-11-J.Stout.
9-J.Tucker kicks 65 yards from BAL 35 to end zone, Touchback to the CIN 30.
(9:05) (Shotgun) 9-J.Burrow pass short right to 1-J.Chase for 70 yards, TOUCHDOWN.
2-E.McPherson extra point is GOOD, Center-48-C.Adomitis, Holder-8-R.Rehkow.
2-E.McPherson kicks 65 yards from CIN 35 to end zone, Touchback to the BAL 30.
(8:54) (Shotgun) 8-L.Jackson pass incomplete deep left to 7-R.Bateman.
(8:48) (Shotgun) 8-L.Jackson pass short middle to 89-M.Andrews to BAL 41 for 11 yards (55-L.Wilson; 28-J.Newton).
(8:24) (No Huddle, Shotgun) 8-L.Jackson right end to BAL 39 for -2 yards (59-A.Davis-Gaither).
(7:41) (Shotgun) 8-L.Jackson pass deep right to 4-Z.Flowers ran ob at CIN 44 for 17 yards.
(7:16) (No Huddle, Shotgun) 8-L.Jackson pass incomplete short middle to 43-J.Hill (92-B.Hill).
(7:11) (Shotgun) 8-L.Jackson pass short left to 4-Z.Flowers to CIN 32 for 12 yards (35-J.Davis).
(6:43) (No Huddle, Shotgun) 8-L.Jackson pass incomplete short middle [92-B.Hill].
(6:39) (Shotgun) 8-L.Jackson pass incomplete deep right to 15-N.Agholor.
(6:34) (Shotgun) 8-L.Jackson pass short middle to 16-T.Wallace to CIN 20 for 12 yards (22-G.Stone; 24-V.Bell). PENALTY on CIN-91-T.Hendrickson, Roughing the Passer, 10 yards, enforced at CIN 20.
(6:16) (Shotgun) 8-L.Jackson scrambles right end ran ob at CIN 6 for 4 yards (94-S.Hubbard).
(5:36) (Shotgun) 8-L.Jackson to CIN 12 for -6 yards. FUMBLES, and recovers at CIN 12. 8-L.Jackson pass short middle to 80-I.Likely for 6 yards, TOUCHDOWN [57-G.Pratt].
9-J.Tucker extra point is GOOD, Center-46-N.Moore, Holder-11-J.Stout.
9-J.Tucker kicks 65 yards from BAL 35 to end zone, Touchback to the CIN 30.
(5:24) (Shotgun) 9-J.Burrow pass short left to 1-J.Chase to CIN 49 for 19 yards (0-R.Smith) [23-T.Simpson]. ** Injury Update: CIN-71-A.Mims has returned to the game.
(4:39) (Shotgun) 9-J.Burrow pass short left to 5-T.Higgins to BAL 40 for 11 yards (23-T.Simpson).
(3:57) (Shotgun) 31-Z.Moss left tackle to BAL 37 for 3 yards (99-O.Oweh). CIN-31-Z.Moss was injured during the play.
(3:15) (Shotgun) 9-J.Burrow pass short middle to 5-T.Higgins to BAL 28 for 9 yards (21-B.Stephens).
(3:10) (Shotgun) 31-Z.Moss left guard to BAL 28 for no gain (98-T.Jones). ** Injury Update: CIN-31-Z.Moss has returned to the game.
Timeout #1 by BAL at 03:10.
(3:05) (Shotgun) PENALTY on CIN-75-O.Brown, False Start, 5 yards, enforced at BAL 28 - No Play.
Timeout #2 by BAL at 03:05.
(3:05) (Shotgun) 9-J.Burrow pass short right intended for 1-J.Chase INTERCEPTED by 44-M.Humphrey at BAL 28. 44-M.Humphrey to BAL 28 for no gain (1-J.Chase).
(3:01) (Shotgun) 8-L.Jackson pass short right to 7-R.Bateman to BAL 37 for 9 yards (57-G.Pratt).
(2:32) (No Huddle, Shotgun) 8-L.Jackson pass incomplete deep right to 4-Z.Flowers.
(2:27) (No Huddle, Shotgun) 43-J.Hill left tackle to BAL 39 for 2 yards (55-L.Wilson; 90-K.Jenkins).
(2:05) (No Huddle, Shotgun) 8-L.Jackson pass short middle to 16-T.Wallace to CIN 42 for 19 yards (29-C.Taylor-Britt).
(1:56) (Shotgun) 8-L.Jackson pass incomplete short middle to 4-Z.Flowers.
(1:53) (Shotgun) 8-L.Jackson pass short left to 89-M.Andrews pushed ob at CIN 38 for 4 yards (57-G.Pratt).
(1:43) (Shotgun) 8-L.Jackson pass incomplete short right to 7-R.Bateman.
Timeout #3 by BAL at 01:43.
(1:40) 9-J.Tucker 56 yard field goal is GOOD, Center-46-N.Moore, Holder-11-J.Stout.
9-J.Tucker kicks 65 yards from BAL 35 to end zone, Touchback to the CIN 30.
(1:35) (Shotgun) 9-J.Burrow sacked at CIN 23 for -7 yards (92-N.Madubuike).
(:59) (Shotgun) 9-J.Burrow pass incomplete short left to 5-T.Higgins (2-N.Wiggins).
(:53) (Shotgun) 30-C.Brown up the middle to CIN 32 for 9 yards (53-K.Van Noy).
(:09) 8-R.Rehkow punts 57 yards to BAL 11, Center-48-C.Adomitis, out of bounds.
Timeout #1 by CIN at 00:09.
END QUARTER 4
2-E.McPherson kicks 65 yards from CIN 35 to end zone, Touchback to the BAL 30.
(10:00) (Shotgun) 22-D.Henry left guard to BAL 30 for no gain (94-S.Hubbard; 92-B.Hill).
(9:22) (Shotgun) 22-D.Henry right end to BAL 38 for 8 yards (94-S.Hubbard).
(8:51) (No Huddle, Shotgun) 22-D.Henry left guard to BAL 41 for 3 yards (94-S.Hubbard).
(8:17) 8-L.Jackson pass incomplete short right to 7-R.Bateman.
(8:07) (Shotgun) 8-L.Jackson scrambles up the middle to BAL 46 for 5 yards (57-G.Pratt).
(7:23) (Shotgun) 8-L.Jackson pass short middle to 7-R.Bateman to CIN 39 for 15 yards (29-C.Taylor-Britt).
(6:37) (Shotgun) 8-L.Jackson FUMBLES (Aborted) at CIN 44, touched at CIN 43, RECOVERED by CIN-57-G.Pratt at BAL 47. 57-G.Pratt to BAL 38 for 9 yards (70-R.Rosengarten).
(6:28) 30-C.Brown left guard to BAL 38 for no gain (23-T.Simpson; 0-R.Smith).
(5:42) (Shotgun) 61-C.Ford reported in as eligible. 30-C.Brown right guard to BAL 35 for 3 yards (95-T.Robinson; 0-R.Smith).
Timeout #1 by CIN at 05:42.
(4:58) 61-C.Ford reported in as eligible. 30-C.Brown right guard to BAL 35 for no gain (92-N.Madubuike).
(4:31) 2-E.McPherson 53 yard field goal is No Good, Wide Left, Center-48-C.Adomitis, Holder-8-R.Rehkow.
Timeout #2 by CIN at 04:31.
(4:26) 22-D.Henry left end to CIN 6 for 51 yards (22-G.Stone).
(3:36) 9-J.Tucker 24 yard field goal is GOOD, Center-46-N.Moore, Holder-11-J.Stout.
Timeout #1 by BAL at 03:36.
END GAME"

bal_cin_summary <- "Headline: Justin Tucker's field goal after Derrick Henry's big run lifts Ravens to a wild 41-38 overtime win
Summary: Lamar Jackson and Joe Burrow traded touchdown throws all game. The Bengals led by 10 points three times in the second half, but Jackson brought the Ravens back each time. Burrow’s pass to Ja’Marr Chase turned into a 70-yard touchdown romp that gave the Bengals a 38-28 lead with 8:54 left. The Ravens answered with an 11-play, 70-yard drive capped by an 6-yard TD pass to Isaiah Likely by Jackson. Burrow was intercepted on the next drive and the Bengals stalled on their last possession of regulation, setting up the tying field goal by Tucker. Tucker kicked a 56-yarder with 1:35 left in regulation to force overtime. After Jackson lost a fumble in overtime, McPherson seemed poised to win it for the Bengals in OT, but Evan McPherson missed a 53-yard attempt for Cincinnati after a fumbled snap. That gave Baltimore the ball at its own 43. And on the next play, Henry rumbled for 51 yards to put the Ravens at the Bengals 6, and Justin Tucker kicked a 24-yard field goal to lift Baltimore to a 41-38 win.
Notable Performances: Jackson was 26 for 42 for 348 yards and four touchdowns and rushed for another 55 yards. He threw TD passes of 1 yard and 6 yards to Likely. Burrow finished 30 of 39 for 392 yards five touchdowns, including two each to Chase and Tee Higgins. Chase led the Bengals with 10 catches for 193 yards and 2 touchdowns. Higgins had nine grabs for 83 yards and two touchdowns. Henry had 14 carries for 41 yards and was stopped in the end zone for a safety in the second quarter. He finished with a respectable 92 yards and a first-quarter touchdown.
Injuries: Bengals: CB Dax Hill was declared out after suffering an injury in the first quarter. RT Amarius Mims left the game in the third quarter. Ravens: T Roger Rosengarten left with an injury in the second quarter, but returned.
"

# Append game log and summary to training dataframe 
bal_cin <- as.data.frame(cbind(bal_cin_log, bal_cin_summary)) %>% rename(game_log = bal_cin_log, game_summary = bal_cin_summary)
training <- rbind(training, bal_cin)

nyj_min_log <- "GAME
16-W.Reichard kicks 62 yards from MIN 35 to NYJ 3. 32-I.Davis to NYJ 26 for 23 yards (0-I.Pace; 51-B.Cashman).
(14:54) 20-B.Hall right guard to NYJ 27 for 1 yard (99-J.Tillery).
(14:20) 8-A.Rodgers pass incomplete short right to 5-G.Wilson.
(14:15) (Shotgun) 8-A.Rodgers pass short left to 5-G.Wilson to NYJ 35 for 8 yards (1-S.Griffin).
(13:34) 6-T.Morstead punts 53 yards to MIN 12, Center-42-T.Hennessy, fair catch by 4-B.Powell.
(13:27) 14-S.Darnold pass short right to 18-J.Jefferson to MIN 11 for -1 yards. FUMBLES, touched at MIN 13, ball out of bounds at MIN 17.
(12:51) 33-A.Jones left end to MIN 20 for 9 yards (4-D.Reed; 36-C.Clark).
(12:14) (Shotgun) 14-S.Darnold pass short left to 86-J.Mundt to MIN 31 for 11 yards (56-Qi.Williams).
(11:35) 14-S.Darnold pass deep middle to 18-J.Jefferson to NYJ 43 for 26 yards (22-T.Adams).
(10:53) 33-A.Jones up the middle to NYJ 40 for 3 yards (36-C.Clark).
(10:12) 14-S.Darnold pass incomplete short left to 18-J.Jefferson (4-D.Reed).
(10:08) (Shotgun) 14-S.Darnold pass short right to 18-J.Jefferson pushed ob at NYJ 32 for 8 yards (22-T.Adams).
(9:47) (No Huddle) 30-C.Ham left end to NYJ 24 for 8 yards (44-J.Sherwood, 54-J.Kinlaw).
(9:03) 33-A.Jones left tackle to NYJ 24 for no gain (44-J.Sherwood).
(8:24) 14-S.Darnold sacked at NYJ 36 for -12 yards (99-W.McDonald).
(7:45) 16-W.Reichard 54 yard field goal is GOOD, Center-42-A.DePaola, Holder-17-R.Wright.
16-W.Reichard kicks 65 yards from MIN 35 to end zone, Touchback to the NYJ 30.
(7:41) (Shotgun) 8-A.Rodgers pass short left to 5-G.Wilson to NYJ 34 for 4 yards (2-S.Gilmore).
(7:08) 20-B.Hall up the middle to NYJ 34 for no gain (0-I.Pace).
(6:29) (Shotgun) 8-A.Rodgers pass incomplete deep right to 5-G.Wilson [58-J.Greenard].
(6:24) 6-T.Morstead punts 44 yards to MIN 22, Center-42-T.Hennessy, downed by NYJ-19-I.Charles.
(6:14) 33-A.Jones right guard to MIN 24 for 2 yards (72-M.Clemons).
(5:38) (No Huddle) 14-S.Darnold scrambles right end to MIN 34 for 10 yards (44-J.Sherwood).
(4:54) 33-A.Jones right tackle to MIN 40 for 6 yards (4-D.Reed, 36-C.Clark).
(4:12) 14-S.Darnold pass incomplete short left to 18-J.Jefferson [55-C.Surratt]. MIN-14-S.Darnold was injured during the play.
(4:07) 12-N.Mullens in at QB. (Shotgun) 12-N.Mullens pass deep left to 33-A.Jones to NYJ 36 for 24 yards (56-Qi.Williams) [99-W.McDonald].
(3:22) 14-S.Darnold FUMBLES (Aborted) at NYJ 43, RECOVERED by NYJ-56-Qi.Williams at NYJ 43. 56-Qi.Williams to MIN 42 for 15 yards (14-S.Darnold). ** Injury Update: MIN-14-S.Darnold has returned to the game.
(3:14) (Shotgun) 8-A.Rodgers pass short left to 5-G.Wilson to MIN 38 for 4 yards (7-B.Murphy).
(2:36) 8-A.Rodgers pass incomplete short right to 10-A.Lazard (7-B.Murphy).
(2:30) (Shotgun) 8-A.Rodgers pass short right intended for 5-G.Wilson INTERCEPTED by 43-A.Van Ginkel at MIN 37. 43-A.Van Ginkel for 63 yards, TOUCHDOWN.
16-W.Reichard extra point is GOOD, Center-42-A.DePaola, Holder-17-R.Wright.
16-W.Reichard kicks 62 yards from MIN 35 to NYJ 3. 32-I.Davis to NYJ 30 for 27 yards (0-I.Pace, 30-C.Ham).
(2:12) 0-B.Allen right tackle to NYJ 32 for 2 yards (51-B.Cashman).
(1:34) (Shotgun) 8-A.Rodgers pass incomplete short left to 0-B.Allen.
(1:30) (Shotgun) 8-A.Rodgers pass deep middle intended for 10-A.Lazard INTERCEPTED by 24-C.Bynum at MIN 43. 24-C.Bynum to MIN 43 for no gain (10-A.Lazard).
(1:24) 33-A.Jones right guard to 50 for 7 yards (36-C.Clark).
(1:04) (No Huddle) 33-A.Jones right end to NYJ 48 for 2 yards (44-J.Sherwood; 23-I.Oliver).
(:43) (No Huddle) 14-S.Darnold up the middle to NYJ 45 for 3 yards (95-Q.Williams).
(:15) (Shotgun) PENALTY on NYJ-54-J.Kinlaw, Neutral Zone Infraction, 5 yards, enforced at NYJ 45 - No Play.
END QUARTER 1
(15:00) 32-T.Chandler right tackle to NYJ 41 for -1 yards (93-T.McKinley, 44-J.Sherwood).
(14:22) (Shotgun) 14-S.Darnold sacked at NYJ 47 for -6 yards (23-I.Oliver).
(13:43) (No Huddle, Shotgun) 14-S.Darnold pass incomplete deep middle to 18-J.Jefferson. PENALTY on NYJ-1-A.Gardner, Illegal Contact, 6 yards, enforced at NYJ 47 - No Play.
(13:37) (Shotgun) 32-T.Chandler left guard to NYJ 38 for 3 yards (44-J.Sherwood).
(13:05) (No Huddle) 32-T.Chandler left tackle to NYJ 33 for 5 yards (44-J.Sherwood).
(12:26) (Shotgun) 14-S.Darnold pass incomplete short right to 18-J.Jefferson (22-T.Adams).
(12:20) (Shotgun) 14-S.Darnold pass incomplete deep left to 3-J.Addison.TURNOVER ON DOWNS.
(12:15) (Shotgun) 20-B.Hall left end to NYJ 35 for 1 yard (58-J.Greenard).
(11:39) 8-A.Rodgers pass short middle to 20-B.Hall to NYJ 41 for 6 yards (54-K.Grugier-Hill, 51-B.Cashman).
(10:56) (Shotgun) 8-A.Rodgers pass deep middle to 83-T.Conklin to MIN 34 for 25 yards (24-C.Bynum).
(10:16) (Shotgun) 8-A.Rodgers pass incomplete short left [58-J.Greenard].
(10:11) (Shotgun) 8-A.Rodgers pass short right to 18-M.Williams to MIN 27 for 7 yards (54-K.Grugier-Hill).
(9:32) 0-B.Allen right guard to MIN 26 for 1 yard (0-I.Pace).
(8:49) (Shotgun) 0-B.Allen up the middle to MIN 26 for no gain (15-D.Turner; 51-B.Cashman). TURNOVER ON DOWNS.
(8:46) 14-S.Darnold pass incomplete deep left to 3-J.Addison (4-D.Reed).
(8:41) (Shotgun) 14-S.Darnold pass deep right to 18-J.Jefferson pushed ob at NYJ 47 for 27 yards (23-I.Oliver).
(7:59) 32-T.Chandler right end to NYJ 15 for 32 yards (55-C.Surratt; 22-T.Adams). PENALTY on MIN-18-J.Jefferson, Illegal Shift, 5 yards, enforced at NYJ 47 - No Play.
(7:16) 14-S.Darnold pass short right to 37-M.Gaskin to NYJ 41 for 11 yards (56-Qi.Williams).
(6:49) (Shotgun) 32-T.Chandler left guard to NYJ 36 for 5 yards (99-W.McDonald, 22-T.Adams).
(6:10) 32-T.Chandler right tackle to NYJ 31 for 5 yards (4-D.Reed).
(5:35) (No Huddle) 14-S.Darnold pass incomplete deep left to 18-J.Jefferson. PENALTY on NYJ-4-D.Reed, Defensive Pass Interference, 18 yards, enforced at NYJ 31 - No Play.
(5:28) 37-M.Gaskin left tackle to NYJ 13 for no gain (23-I.Oliver).
(4:53) (Shotgun) 14-S.Darnold pass incomplete short left to 18-J.Jefferson [95-Q.Williams]. PENALTY on NYJ-1-A.Gardner, Defensive Pass Interference, 11 yards, enforced at NYJ 13 - No Play.
(4:49) (Shotgun) 14-S.Darnold pass incomplete short left to 32-T.Chandler (4-D.Reed). PENALTY on MIN-75-B.O'Neill, Illegal Formation, 5 yards, enforced at NYJ 2 - No Play.
(4:46) 32-T.Chandler right end to NYJ 4 for 3 yards (94-S.Thomas).
(4:06) (Shotgun) 14-S.Darnold pass incomplete short right to 18-J.Jefferson. PENALTY on NYJ-1-A.Gardner, Defensive Holding, 2 yards, enforced at NYJ 4 - No Play.
(4:01) 30-C.Ham left guard for 2 yards, TOUCHDOWN.
16-W.Reichard extra point is GOOD, Center-42-A.DePaola, Holder-17-R.Wright.
16-W.Reichard kicks 65 yards from MIN 35 to end zone, Touchback to the NYJ 30.
(3:58) (Shotgun) 8-A.Rodgers pass short right to 83-T.Conklin to NYJ 43 for 13 yards (1-S.Griffin).
(3:33) (No Huddle, Shotgun) 8-A.Rodgers pass short left to 5-G.Wilson to NYJ 47 for 4 yards (44-J.Metellus, 91-P.Jones).
(2:55) 8-A.Rodgers pass incomplete short right to 83-T.Conklin.
(2:51) (Shotgun) 8-A.Rodgers sacked at NYJ 39 for -8 yards (22-H.Smith).
(2:08) (Punt formation) PENALTY on NYJ, Delay of Game, 5 yards, enforced at NYJ 39 - No Play.
(2:00) 6-T.Morstead punts 56 yards to MIN 10, Center-42-T.Hennessy. 4-B.Powell ran ob at MIN 22 for 12 yards (52-S.Eguavoen). PENALTY on MIN-20-Jy.Ward, Illegal Block Above the Waist, 5 yards, enforced at MIN 10.
(1:50) 32-T.Chandler left guard to MIN 9 for 4 yards (44-J.Sherwood; 56-Qi.Williams).
(1:42) (Shotgun) 14-S.Darnold pass incomplete short right to 18-J.Jefferson (1-A.Gardner).
Timeout #1 by NYJ at 01:42.
(1:39) (Shotgun) PENALTY on MIN, Delay of Game, 4 yards, enforced at MIN 9 - No Play.
(1:39) (Shotgun) 32-T.Chandler right tackle to MIN 4 for -1 yards (44-J.Sherwood, 54-J.Kinlaw).
(1:35) 17-R.Wright punts 58 yards to NYJ 38, Center-42-A.DePaola. 82-X.Gipson pushed ob at MIN 31 for 31 yards (26-Th.Jackson).
Timeout #2 by NYJ at 01:36.
(1:22) (Shotgun) 20-B.Hall left tackle to MIN 24 for 7 yards (22-H.Smith).
(:54) (No Huddle, Shotgun) 8-A.Rodgers pass short left to 5-G.Wilson pushed ob at MIN 14 for 10 yards (2-S.Gilmore).
(:48) (Shotgun) 8-A.Rodgers pass incomplete short middle to 10-A.Lazard.
(:45) (Shotgun) 8-A.Rodgers pass incomplete short left to 5-G.Wilson.
(:42) (Shotgun) 8-A.Rodgers pass short middle to 10-A.Lazard for 14 yards, TOUCHDOWN [43-A.Van Ginkel].
9-G.Zuerlein extra point is GOOD, Center-42-T.Hennessy, Holder-6-T.Morstead.
9-G.Zuerlein kicks 65 yards from NYJ 35 to end zone, Touchback to the MIN 30.
(:36) (Shotgun) 14-S.Darnold pass incomplete short left.
(:29) (Shotgun) 14-S.Darnold sacked at MIN 21 for -9 yards (72-M.Clemons).
END QUARTER 2
9-G.Zuerlein kicks 65 yards from NYJ 35 to end zone, Touchback to the MIN 30.
(15:00) 32-T.Chandler right guard to MIN 31 for 1 yard (44-J.Sherwood).
(14:24) 14-S.Darnold pass short right to 32-T.Chandler to MIN 32 for 1 yard (22-T.Adams; 44-J.Sherwood).
(13:40) (Shotgun) 14-S.Darnold pass incomplete short left.
(13:29) 17-R.Wright punts 43 yards to NYJ 25, Center-42-A.DePaola, fair catch by 82-X.Gipson. PENALTY on MIN-21-A.Evans, Fair Catch Interference, 15 yards, enforced at NYJ 25.
(13:21) 20-B.Hall left end to NYJ 43 for 3 yards (90-J.Bullard).
(12:42) 20-B.Hall up the middle to NYJ 38 for -5 yards (0-I.Pace).
(11:59) (Shotgun) 8-A.Rodgers pass short right to 83-T.Conklin pushed ob at NYJ 45 for 7 yards (44-J.Metellus).
(11:18) 6-T.Morstead punts 55 yards to end zone, Center-42-T.Hennessy, Touchback.
(11:10) 14-S.Darnold pass short right to 3-J.Addison to MIN 25 for 5 yards (1-A.Gardner).
(10:37) (No Huddle) 14-S.Darnold pass deep left to 3-J.Addison to NYJ 49 for 26 yards (22-T.Adams). NYJ-1-A.Gardner was injured during the play.
(10:13) PENALTY on MIN-64-B.Brandel, False Start, 5 yards, enforced at NYJ 49 - No Play.
(9:53) 14-S.Darnold pass short left to 3-J.Addison pushed ob at NYJ 49 for 5 yards (4-D.Reed).
(9:17) (Shotgun) 14-S.Darnold sacked at MIN 46 for -5 yards (96-L.Taylor).
(8:31) (Shotgun) 14-S.Darnold pass short left to 32-T.Chandler to NYJ 46 for 8 yards (23-I.Oliver).
(7:51) 17-R.Wright punts 43 yards to NYJ 3, impetus ends at NYJ 1, Center-42-A.DePaola. 82-X.Gipson pushed ob at NYJ 3 for no gain (20-Jy.Ward, 42-A.DePaola).
(7:41) 8-A.Rodgers pass short left to 83-T.Conklin to NYJ 4 for 1 yard (7-B.Murphy, 91-P.Jones).
(6:59) (Shotgun) 8-A.Rodgers pass short left to 5-G.Wilson pushed ob at NYJ 14 for 10 yards (2-S.Gilmore).
(6:23) (Shotgun) 8-A.Rodgers pass incomplete short left to 5-G.Wilson.
(6:19) (Shotgun) 8-A.Rodgers pass incomplete deep right to 10-A.Lazard (51-B.Cashman) [51-B.Cashman].
(6:11) (Shotgun) 8-A.Rodgers pass incomplete short right to 20-B.Hall [52-Ji.Ward]. NYJ-8-A.Rodgers was injured during the play.
(6:07) 6-T.Morstead punts 50 yards to MIN 36, Center-42-T.Hennessy. 4-B.Powell to NYJ 29 for 35 yards (19-I.Charles). PENALTY on MIN-0-I.Pace, Roughing the Kicker, 15 yards, enforced at NYJ 14 - No Play.
(5:59) (Shotgun) 20-B.Hall right tackle to NYJ 39 for 10 yards (24-C.Bynum; 7-B.Murphy). ** Injury Update: NYJ-8-A.Rodgers has returned to the game.
(5:21) 20-B.Hall right guard to NYJ 39 for no gain (58-J.Greenard).
(4:40) (Shotgun) 8-A.Rodgers pass short middle to 5-G.Wilson to 50 for 11 yards (44-J.Metellus; 54-K.Grugier-Hill).
(3:57) (Shotgun) 8-A.Rodgers pass short left to 20-B.Hall to MIN 47 for 3 yards (44-J.Metellus) [0-I.Pace]. MIN-0-I.Pace was injured during the play.
(3:15) (Shotgun) 8-A.Rodgers pass short left to 0-B.Allen pushed ob at MIN 32 for 15 yards (51-B.Cashman).
(2:39) (Shotgun) 0-B.Allen left tackle to MIN 25 for 7 yards (51-B.Cashman, 24-C.Bynum).
(2:00) (Shotgun) 8-A.Rodgers pass incomplete short middle.
(1:57) (Shotgun) 8-A.Rodgers pass short middle to 5-G.Wilson to MIN 16 for 9 yards (22-H.Smith).
(1:36) (No Huddle) 8-A.Rodgers pass short right to 83-T.Conklin to MIN 14 for 2 yards (7-B.Murphy).
(1:00) (Shotgun) 8-A.Rodgers pass incomplete short right to 5-G.Wilson (2-S.Gilmore).
(:56) (Shotgun) 8-A.Rodgers pass incomplete short left to 10-A.Lazard.
(:53) 9-G.Zuerlein 32 yard field goal is GOOD, Center-42-T.Hennessy, Holder-6-T.Morstead. ** Injury Update: MIN-0-I.Pace has returned to the game.
9-G.Zuerlein kicks 65 yards from NYJ 35 to end zone, Touchback to the MIN 30.
(:50) 32-T.Chandler left end to MIN 30 for no gain (56-Qi.Williams).
(:07) (Shotgun) 14-S.Darnold pass incomplete deep left to 18-J.Jefferson. PENALTY on NYJ-4-D.Reed, Defensive Pass Interference, 24 yards, enforced at MIN 30 - No Play.
(:02) 14-S.Darnold pass incomplete deep left to 18-J.Jefferson.
END QUARTER 3
(15:00) 14-S.Darnold pass incomplete short left.
(14:57) (Shotgun) 14-S.Darnold pass incomplete short left [72-M.Clemons].
(14:50) 17-R.Wright punts 39 yards to NYJ 7, Center-42-A.DePaola, downed by MIN-54-K.Grugier-Hill.
(14:41) (Shotgun) 0-B.Allen left guard to NYJ 10 for 3 yards (43-A.Van Ginkel; 99-J.Tillery).
(14:01) 8-A.Rodgers sacked at NYJ 4 for -6 yards (0-I.Pace).
(13:18) (Shotgun) 8-A.Rodgers pass incomplete deep right.
(13:11) 6-T.Morstead punts 39 yards to NYJ 43, Center-42-T.Hennessy. 4-B.Powell to NYJ 37 for 6 yards (21-A.Davis).
(13:03) 14-S.Darnold pass incomplete deep right to 18-J.Jefferson.
(12:57) 37-M.Gaskin left guard to NYJ 35 for 2 yards (58-E.Watts).
(12:17) (Shotgun) 14-S.Darnold pass incomplete short left to 3-J.Addison.
(12:12) 16-W.Reichard 53 yard field goal is GOOD, Center-42-A.DePaola, Holder-17-R.Wright.
16-W.Reichard kicks 65 yards from MIN 35 to end zone, Touchback to the NYJ 30.
(12:07) (Shotgun) 8-A.Rodgers pass short right to 83-T.Conklin pushed ob at NYJ 37 for 7 yards (22-H.Smith).
(11:32) (Shotgun) 8-A.Rodgers sacked at NYJ 25 for -12 yards (97-H.Phillips). FUMBLES (97-H.Phillips) [97-H.Phillips], and recovers at NYJ 25.
(10:56) (Shotgun) 8-A.Rodgers pass incomplete deep left to 5-G.Wilson.
(10:52) 6-T.Morstead punts 48 yards to MIN 27, Center-42-T.Hennessy. 4-B.Powell to MIN 25 for -2 yards (37-Q.Stiggers). PENALTY on MIN-15-D.Turner, Offensive Holding, 10 yards, enforced at MIN 27.
(10:43) 32-T.Chandler left end to MIN 17 for no gain (44-J.Sherwood; 4-D.Reed).
(10:00) 14-S.Darnold pass incomplete deep middle to 3-J.Addison.
(9:54) (Shotgun) PENALTY on MIN-71-C.Darrisaw, False Start, 5 yards, enforced at MIN 17 - No Play.
(9:54) (Shotgun) 14-S.Darnold pass deep right intended for 3-J.Addison INTERCEPTED by 26-B.Echols at MIN 42. 26-B.Echols to MIN 42 for no gain (3-J.Addison).
(9:47) (Shotgun) 8-A.Rodgers pass short right to 10-A.Lazard to MIN 35 for 7 yards (44-J.Metellus).
(9:10) (Shotgun) 8-A.Rodgers pass short right to 5-G.Wilson to MIN 25 for 10 yards (2-S.Gilmore; 22-H.Smith).
(8:27) (Shotgun) 8-A.Rodgers pass incomplete deep middle to 83-T.Conklin (24-C.Bynum).
(8:20) (Shotgun) 8-A.Rodgers pass incomplete deep right to 18-M.Williams [97-H.Phillips].
(8:17) 8-A.Rodgers pass deep middle to 18-M.Williams to MIN 7 for 18 yards (22-H.Smith).
(7:32) (Shotgun) PENALTY on NYJ, Delay of Game, 5 yards, enforced at MIN 7 - No Play.
(7:32) (Shotgun) 8-A.Rodgers pass short left to 20-B.Hall pushed ob at MIN 7 for 5 yards (2-S.Gilmore).
(6:55) (Shotgun) 8-A.Rodgers pass short right to 5-G.Wilson to MIN 2 for 5 yards (7-B.Murphy).
(6:14) (Shotgun) 8-A.Rodgers pass incomplete short right to 5-G.Wilson [43-A.Van Ginkel]. PENALTY on MIN-2-S.Gilmore, Defensive Pass Interference, 1 yard, enforced at MIN 2 - No Play.
(6:10) (Shotgun) 8-A.Rodgers pass short left to 5-G.Wilson for 1 yard, TOUCHDOWN.
9-G.Zuerlein extra point is GOOD, Center-42-T.Hennessy, Holder-6-T.Morstead.
9-G.Zuerlein kicks 65 yards from NYJ 35 to end zone, Touchback to the MIN 30.
(6:04) 32-T.Chandler right end to MIN 31 for 1 yard (95-Q.Williams, 1-A.Gardner). ** Injury Update: NYJ-1-A.Gardner has returned to the game.
(5:42) (No Huddle, Shotgun) 14-S.Darnold pass deep middle to 18-J.Jefferson to NYJ 44 for 25 yards (36-C.Clark).
(5:00) 32-T.Chandler right end to NYJ 40 for 4 yards (56-Qi.Williams). PENALTY on MIN-67-E.Ingram, Illegal Block Above the Waist, 10 yards, enforced at NYJ 42.
(4:53) (Shotgun) 14-S.Darnold pass short left to 18-J.Jefferson to NYJ 46 for 6 yards (23-I.Oliver).
(4:10) 14-S.Darnold pass deep middle to 86-J.Mundt to NYJ 26 for 20 yards (22-T.Adams).
(3:25) 14-S.Darnold pass incomplete short right to 18-J.Jefferson.
(3:19) (Shotgun) 32-T.Chandler left guard to NYJ 23 for 3 yards (54-J.Kinlaw).
(3:15) (Shotgun) 14-S.Darnold pass incomplete short right to 18-J.Jefferson (36-C.Clark).
Timeout #1 by NYJ at 03:15.
(3:11) 16-W.Reichard 41 yard field goal is GOOD, Center-42-A.DePaola, Holder-17-R.Wright.
16-W.Reichard kicks 65 yards from MIN 35 to end zone, Touchback to the NYJ 30.
(3:07) (Shotgun) 8-A.Rodgers pass incomplete deep right to 10-A.Lazard (1-S.Griffin).
(3:02) (Shotgun) 8-A.Rodgers pass short left to 5-G.Wilson to NYJ 46 for 16 yards (24-C.Bynum).
(2:32) (No Huddle, Shotgun) 8-A.Rodgers pass short left to 10-A.Lazard to MIN 47 for 7 yards (24-C.Bynum).
(2:00) (Shotgun) 8-A.Rodgers pass short right to 10-A.Lazard to MIN 41 for 6 yards (24-C.Bynum).
(1:35) (No Huddle, Shotgun) 8-A.Rodgers pass incomplete deep right to 5-G.Wilson.
(1:31) (Shotgun) 8-A.Rodgers pass short right to 5-G.Wilson to MIN 32 for 9 yards (2-S.Gilmore).
(1:05) (Shotgun) 20-B.Hall right guard to MIN 26 for 6 yards (58-J.Greenard).
(:58) (Shotgun) 8-A.Rodgers pass incomplete short right to 83-T.Conklin (52-Ji.Ward).
Timeout #2 by NYJ at 00:58.
(:54) (Shotgun) 8-A.Rodgers pass incomplete short left to 5-G.Wilson [58-J.Greenard].
(:49) (Shotgun) 8-A.Rodgers pass deep right intended for 18-M.Williams INTERCEPTED by 2-S.Gilmore at MIN 9. 2-S.Gilmore to MIN 9 for no gain (18-M.Williams).
(:44) 14-S.Darnold kneels to MIN 8 for -1 yards.
(:25) 14-S.Darnold kneels to MIN 7 for -1 yards.
END GAME"

nyj_min_summary <- "Headline: Vikings hold off Rodgers and the Jets for 23-17 win in London to improve to 5-0
Summary: The Vikings got off to a quick start, capitalizing on the two first-quarter interceptions thrown by Aaron Rodgers. Linebacker Van Ginkel picked off Rodgers for a 63-yard score and a 10-0 lead. Fullback C.J. Ham’s 2-yard run made it 17-0 before the Jets got back in the game when Rodgers found Allen Lazard for a 14-yard touchdown pass late in the first half. Rodgers then went back onto the field and drove the Jets to the Minnesota 14. They settled for Greg Zuerlein's 32-yard field goal to make it 17-10. Reichard kicked a 53-yard field goal to give Minnesota a 20-10 lead early in the fourth quarter.  Rodgers threw a 1-yard touchdown pass to Garrett Wilson to make it 20-17 with just over six minutes remaining before Vikings rookie kicker Will Reichard hit a 41-yard field goal — his third of the game.  The Jets had a chance to drive for a potential winning score in the final minutes. But Stephon Gilmore intercepted Rodgers’ pass and sealed the win. 
Notable Performances: Andrew Van Ginkel returned an Aaron Rodgers interception 63 yards for a touchdown. Wilson finished with 13 catches for 101 yards. Sam Darnold, finished 14 of 31 for 179 yards with an interception and one fumble. Justin Jefferson had six receptions for 92 yards for the Vikings. Rodgers was 29 of 54 for 244 yards, two touchdown passes and three interceptions.
Injuries: Jets: CB Sauce Gardner left the game temporarily but returned. CB Michael Carter II left in the first and didn’t return. Vikings: RB Aaron Jones left in second quarter and was later ruled out."

# Append game log and summary to training dataframe 
nyj_min <- as.data.frame(cbind(nyj_min_log, nyj_min_summary)) %>% rename(game_log = nyj_min_log, game_summary = nyj_min_summary)
training <- rbind(training, nyj_min)

ari_sf_log <- "GAME
38-C.Ryland kicks 65 yards from ARI 35 to end zone, Touchback to the SF 30.
(15:00) 13-B.Purdy pass incomplete deep right to 1-D.Samuel.
(14:56) (Shotgun) 13-B.Purdy scrambles left end ran ob at SF 32 for 2 yards (92-B.Nichols). SF-15-J.Jennings was injured during the play.
(14:15) (Shotgun) 13-B.Purdy pass incomplete deep right to 11-B.Aiyuk.
(14:11) 3-M.Wishnowsky punts 41 yards to ARI 27, Center-46-T.Pepper. 4-G.Dortch to ARI 28 for 1 yard (30-G.Odum).
(13:59) 1-K.Murray pass short left to 85-T.McBride pushed ob at 50 for 22 yards (59-D.Campbell).
(13:20) (Shotgun) 1-K.Murray right tackle for 50 yards, TOUCHDOWN.
38-C.Ryland extra point is GOOD, Center-46-A.Brewer, Holder-12-B.Gillikin.
38-C.Ryland kicks 65 yards from ARI 35 to end zone, Touchback to the SF 30.
(13:11) (Shotgun) 13-B.Purdy pass deep left to 11-B.Aiyuk ran ob at ARI 17 for 53 yards (23-S.Murphy-Bunting). ARI-92-B.Nichols was injured during the play.
(12:44) (Shotgun) 13-B.Purdy pass short right to 1-D.Samuel to ARI 6 for 11 yards (55-D.Stills; 3-B.Baker).
(11:56) (Shotgun) 24-J.Mason up the middle to ARI 6 for no gain (2-Ma.Wilson). ** Injury Update: SF-15-J.Jennings has returned to the game.
(11:17) (Shotgun) 13-B.Purdy pass incomplete short right to 85-G.Kittle (34-J.Thompson).
(11:12) (Shotgun) 13-B.Purdy sacked at ARI 10 for -4 yards (51-K.Barnes).
(10:29) 4-J.Moody 28 yard field goal is GOOD, Center-46-T.Pepper, Holder-3-M.Wishnowsky.
4-J.Moody kicks 65 yards from SF 35 to end zone, Touchback to the ARI 30.
(10:25) 1-K.Murray pass incomplete deep right to 18-M.Harrison (53-D.Winters).
(10:20) (Shotgun) 1-K.Murray pass incomplete short left to 18-M.Harrison.
(10:16) (Shotgun) 1-K.Murray pass short right to 31-E.Demercado to ARI 30 for no gain (2-D.Lenoir).
(9:38) 12-B.Gillikin punts 46 yards to SF 24, Center-46-A.Brewer, out of bounds. Penalty on SF-51-R.Beal, Running Into the Kicker, declined.
(9:31) 24-J.Mason up the middle to SF 26 for 2 yards (55-D.Stills; 96-N.Jones).
(8:50) 1-D.Samuel right tackle to SF 28 for 2 yards (55-D.Stills).
(8:06) (Shotgun) 13-B.Purdy pass deep middle to 11-B.Aiyuk to SF 44 for 16 yards (34-J.Thompson) [7-K.White].
(7:23) (Shotgun) 13-B.Purdy pass short left to 11-B.Aiyuk to ARI 47 for 9 yards (16-M.Melton).
(6:42) 24-J.Mason left guard to ARI 45 for 2 yards (2-Ma.Wilson, 7-K.White).
(6:06) 24-J.Mason left tackle to ARI 43 for 2 yards (55-D.Stills; 7-K.White).
(5:24) 13-B.Purdy scrambles left tackle to ARI 35 for 8 yards (2-Ma.Wilson). ARI-34-J.Thompson was injured during the play.
(4:45) (Shotgun) 13-B.Purdy pass incomplete short middle to 1-D.Samuel (42-D.Taylor-Demerson).
(4:40) 31-I.Guerendo right tackle to ARI 30 for 5 yards (98-R.Lopez; 55-D.Stills). ** Injury Update: ARI-34-J.Thompson has returned to the game.
(3:59) (Shotgun) 13-B.Purdy pass short left to 15-J.Jennings to ARI 17 for 13 yards (16-M.Melton; 3-B.Baker).
(3:14) (Shotgun) 13-B.Purdy pass incomplete short right.
(3:05) (Shotgun) 13-B.Purdy pass short middle to 11-B.Aiyuk to ARI 4 for 13 yards (3-B.Baker).
(2:22) (Shotgun) 13-B.Purdy pass short middle to 85-G.Kittle for 4 yards, TOUCHDOWN.
4-J.Moody extra point is GOOD, Center-46-T.Pepper, Holder-3-M.Wishnowsky.
4-J.Moody kicks 65 yards from SF 35 to end zone, Touchback to the ARI 30.
(2:20) (Shotgun) 6-J.Conner left guard to ARI 30 for no gain (90-K.Givens).
(1:44) (Shotgun) 6-J.Conner left tackle to ARI 37 for 7 yards (54-F.Warner).
(:57) (Shotgun) 1-K.Murray pass deep right to 18-M.Harrison to SF 41 for 22 yards (7-C.Ward).
Timeout #1 by ARI at 00:57.
(:14) (Shotgun) 1-K.Murray pass short middle to 85-T.McBride to SF 30 for 11 yards (29-T.Hufanga, 53-D.Winters).
END QUARTER 1
(15:00) (Shotgun) 6-J.Conner up the middle to SF 30 for no gain (99-M.Collins; 59-D.Campbell).
(14:20) 1-K.Murray pass short left to 6-J.Conner pushed ob at SF 15 for 15 yards (27-J.Brown).
(13:38) (Shotgun) 1-K.Murray scrambles left end to SF 12 for 3 yards (22-I.Yiadom). FUMBLES (22-I.Yiadom), ball out of bounds at SF 12.
(12:55) (Shotgun) 1-K.Murray pass incomplete short left to 85-T.McBride (6-M.Mustapha).
(12:50) 1-K.Murray pass incomplete short left to 85-T.McBride.
(12:47) 38-C.Ryland 30 yard field goal is GOOD, Center-46-A.Brewer, Holder-12-B.Gillikin.
38-C.Ryland kicks 65 yards from ARI 35 to end zone, Touchback to the SF 30.
(12:43) (Shotgun) 13-B.Purdy pass incomplete short right to 85-G.Kittle. ** Injury Update: ARI-92-B.Nichols has returned to the game.
(12:39) (Shotgun) 24-J.Mason right end pushed ob at ARI 36 for 34 yards (34-J.Thompson).
(11:57) 24-J.Mason up the middle to ARI 34 for 2 yards (25-Z.Collins).
(11:20) 1-D.Samuel left tackle to ARI 27 for 7 yards (42-D.Taylor-Demerson).
(10:39) 24-J.Mason left tackle to ARI 28 for -1 yards (3-B.Baker, 58-J.Okwara). PENALTY on SF-64-J.Brendel, Offensive Holding, 10 yards, enforced at ARI 27 - No Play.
Timeout #1 by SF at 10:39.
(10:11) (Shotgun) 13-B.Purdy pass short left to 11-B.Aiyuk to ARI 20 for 17 yards (23-S.Murphy-Bunting).
(9:27) (Shotgun) 13-B.Purdy pass short right to 85-G.Kittle to ARI 15 for 5 yards (34-J.Thompson).
(8:46) 24-J.Mason left tackle to ARI 8 for 7 yards (3-B.Baker).
(8:28) 31-I.Guerendo up the middle to ARI 5 for 3 yards (2-Ma.Wilson; 25-Z.Collins).
(7:49) 13-B.Purdy pass short left to 85-G.Kittle ran ob at ARI 2 for 3 yards.
(7:11) (Shotgun) 13-B.Purdy pass incomplete short right.
(7:02) 4-J.Moody 20 yard field goal is GOOD, Center-46-T.Pepper, Holder-3-M.Wishnowsky.
4-J.Moody kicks 65 yards from SF 35 to end zone, Touchback to the ARI 30.
(6:59) PENALTY on SF-92-J.Elliott, Encroachment, 5 yards, enforced at ARI 30 - No Play.
(6:59) 1-K.Murray pass deep left to 14-Mi.Wilson pushed ob at SF 31 for 34 yards (54-F.Warner). Penalty on SF-27-J.Brown, Defensive Holding, declined.
(6:33) (Shotgun) 6-J.Conner right end to SF 34 for -3 yards (97-N.Bosa).
(5:55) (Shotgun) 1-K.Murray pass short left to 85-T.McBride to SF 27 for 7 yards (2-D.Lenoir, 53-D.Winters).
(5:13) (Shotgun) 1-K.Murray pass incomplete deep left to 18-M.Harrison (22-I.Yiadom).
(5:09) 38-C.Ryland 45 yard field goal is BLOCKED (92-J.Elliott), Center-46-A.Brewer, Holder-12-B.Gillikin, RECOVERED by SF-2-D.Lenoir at SF 39. 2-D.Lenoir for 61 yards, TOUCHDOWN.
4-J.Moody extra point is GOOD, Center-46-T.Pepper, Holder-3-M.Wishnowsky.
4-J.Moody kicks 66 yards from SF 35 to ARI -1. 20-D.Dallas pushed ob at ARI 38 for 39 yards (30-G.Odum). SF-4-J.Moody was injured during the play.
(4:51) (Shotgun) 1-K.Murray pass deep right to 14-Mi.Wilson to SF 42 for 20 yards (27-J.Brown).
(4:15) 6-J.Conner up the middle to SF 41 for 1 yard (27-J.Brown).
(3:36) (Shotgun) 1-K.Murray pass incomplete short middle to 18-M.Harrison (6-M.Mustapha).
(3:32) (Shotgun) 1-K.Murray scrambles left end to SF 28 for 13 yards (54-F.Warner; 2-D.Lenoir).
(2:45) 6-J.Conner left guard to SF 24 for 4 yards (56-L.Floyd).
(2:00) (Shotgun) 1-K.Murray pass short right intended for 6-J.Conner INTERCEPTED by 97-N.Bosa at SF 30. 97-N.Bosa to ARI 40 for 30 yards (62-E.Brown; 6-J.Conner).
(1:50) (Shotgun) 13-B.Purdy scrambles up the middle to ARI 28 for 12 yards (3-B.Baker).
(1:09) (Shotgun) 13-B.Purdy pass short right to 11-B.Aiyuk to ARI 21 for 7 yards (3-B.Baker).
(:29) (Shotgun) 13-B.Purdy pass incomplete deep right to 15-J.Jennings (34-J.Thompson).
(:24) (Shotgun) 13-B.Purdy pass short middle to 85-G.Kittle to ARI 7 for 14 yards (13-K.Clark; 51-K.Barnes) [98-R.Lopez].
(:16) (Shotgun) 13-B.Purdy pass incomplete short left.
Timeout #2 by SF at 00:16.
(:10) (Shotgun) 13-B.Purdy pass incomplete short right to 15-J.Jennings (23-S.Murphy-Bunting).
(:06) (Shotgun) 13-B.Purdy pass incomplete short left to 15-J.Jennings.
(:01) 3-M.Wishnowsky 26 yard field goal is GOOD, Center-46-T.Pepper, Holder-44-K.Juszczyk.
END QUARTER 2
3-M.Wishnowsky kicks 66 yards from SF 35 to ARI -1. 4-G.Dortch to ARI 26 for 27 yards (32-P.Taylor).
(14:55) (Shotgun) 1-K.Murray sacked at ARI 20 for -6 yards (56-L.Floyd).
(14:17) (Shotgun) 1-K.Murray pass incomplete short left to 18-M.Harrison (2-D.Lenoir).
(14:14) (Shotgun) 1-K.Murray pass short right to 85-T.McBride to ARI 27 for 7 yards (54-F.Warner, 2-D.Lenoir). ** Injury Update: SF-27-J.Brown has returned to the game.
(13:35) 12-B.Gillikin punts 60 yards to SF 13, Center-46-A.Brewer, fair catch by 81-T.Taylor.
(13:29) (Shotgun) 13-B.Purdy pass incomplete short left to 11-B.Aiyuk.
(13:23) (Shotgun) 24-J.Mason up the middle to SF 12 for -1 yards (25-Z.Collins).
(12:43) (Shotgun) 13-B.Purdy pass short right to 11-B.Aiyuk to SF 24 for 12 yards (25-Z.Collins).
(12:00) (Shotgun) 13-B.Purdy pass short right intended for 85-G.Kittle INTERCEPTED by 2-Ma.Wilson (98-R.Lopez) at SF 25. 2-Ma.Wilson to SF 25 for no gain (85-G.Kittle).
(11:52) 6-J.Conner up the middle to SF 20 for 5 yards (6-M.Mustapha; 59-D.Campbell).
(11:10) (Shotgun) PENALTY on ARI-14-Mi.Wilson, False Start, 5 yards, enforced at SF 20 - No Play.
(10:48) (Shotgun) 1-K.Murray pass short middle to 85-T.McBride to SF 24 for 1 yard (97-N.Bosa).
(10:08) (Shotgun) 1-K.Murray pass incomplete deep left to 85-T.McBride.
(10:03) 38-C.Ryland 42 yard field goal is GOOD, Center-46-A.Brewer, Holder-12-B.Gillikin.
38-C.Ryland kicks 65 yards from ARI 35 to end zone, Touchback to the SF 30.
(9:59) 24-J.Mason left tackle to SF 37 for 7 yards (96-N.Jones).
(9:23) (Shotgun) 24-J.Mason up the middle to 50 for 13 yards (34-J.Thompson; 42-D.Taylor-Demerson).
(8:41) (Shotgun) 13-B.Purdy pass short middle to 85-G.Kittle to ARI 39 for 11 yards (3-B.Baker).
(7:59) 31-I.Guerendo left end to ARI 35 for 4 yards (24-S.Thomas).
(7:15) (Shotgun) 13-B.Purdy scrambles right end pushed ob at ARI 24 for 11 yards (25-Z.Collins).
(6:30) 31-I.Guerendo left end to ARI 19 for 5 yards (2-Ma.Wilson).
(5:43) 31-I.Guerendo up the middle to ARI 14 for 5 yards (98-R.Lopez; 3-B.Baker).
(5:03) 24-J.Mason left guard to ARI 13 for 1 yard (95-K.Tonga).
(4:19) (Shotgun) PENALTY on SF-15-J.Jennings, False Start, 5 yards, enforced at ARI 13 - No Play.
(3:53) (Shotgun) 13-B.Purdy sacked at ARI 27 for -9 yards (96-N.Jones).
(3:02) (Shotgun) 13-B.Purdy pass incomplete short right to 11-B.Aiyuk (45-D.Gardeck).
(2:57) (Shotgun) 13-B.Purdy pass incomplete short middle to 85-G.Kittle (42-D.Taylor-Demerson). TURNOVER ON DOWNS.
(2:52) (Shotgun) 6-J.Conner right guard to ARI 30 for 3 yards (54-F.Warner; 91-S.Okuayinonu).
(2:14) (Shotgun) 6-J.Conner right guard to ARI 38 for 8 yards (6-M.Mustapha).
(1:33) (Shotgun) 1-K.Murray pass short right to 4-G.Dortch pushed ob at ARI 45 for 7 yards (54-F.Warner; 59-D.Campbell).
(1:12) (Shotgun) 6-J.Conner up the middle to SF 45 for 10 yards (92-J.Elliott).
(:31) 1-K.Murray pass short middle to 6-J.Conner to SF 46 for -1 yards (54-F.Warner, 96-T.McGill).
END QUARTER 3
(15:00) (Shotgun) 1-K.Murray pass short right to 87-T.Reiman to SF 41 for 5 yards (54-F.Warner, 59-D.Campbell).
(14:18) (Shotgun) 1-K.Murray pass short right to 14-Mi.Wilson to SF 31 for 10 yards (59-D.Campbell).
(13:40) 6-J.Conner left guard to SF 30 for 1 yard (56-L.Floyd, 2-D.Lenoir).
(13:03) (Shotgun) 1-K.Murray pass short right to 14-Mi.Wilson to SF 19 for 11 yards (7-C.Ward, 59-D.Campbell). Penalty on SF-97-N.Bosa, Defensive Offside, declined.
(12:35) (Shotgun) 1-K.Murray pass short left to 14-Mi.Wilson to SF 16 for 3 yards (27-J.Brown).
(11:55) (Shotgun) 6-J.Conner up the middle to SF 2 for 14 yards (27-J.Brown, 2-D.Lenoir). ARI-76-W.Hernandez was injured during the play.
(11:30) (Shotgun) 1-K.Murray pass short left to 84-E.Higgins for 2 yards, TOUCHDOWN. PENALTY on SF-91-S.Okuayinonu, Roughing the Passer, 1 yard, enforced between downs.
TWO-POINT CONVERSION ATTEMPT. 6-J.Conner rushes up the middle. ATTEMPT SUCCEEDS.
38-C.Ryland kicks 65 yards from ARI 35 to end zone, Touchback to the SF 30.
(11:25) (Shotgun) 13-B.Purdy pass short middle to 24-J.Mason to SF 39 for 9 yards (3-B.Baker; 7-K.White).
(10:45) (Shotgun) 24-J.Mason up the middle to ARI 41 for 20 yards (3-B.Baker).
(9:59) (Shotgun) 1-D.Samuel right end pushed ob at ARI 41 for no gain (3-B.Baker).
(9:24) 13-B.Purdy pass deep left to 11-B.Aiyuk to ARI 21 for 20 yards (23-S.Murphy-Bunting).
(8:39) 24-J.Mason right guard to ARI 20 for 1 yard (2-Ma.Wilson, 95-K.Tonga).
(7:55) (Shotgun) 13-B.Purdy pass short right to 85-G.Kittle to ARI 17 for 3 yards (42-D.Taylor-Demerson).
(7:07) (Shotgun) 13-B.Purdy pass short middle to 85-G.Kittle to ARI 8 for 9 yards (51-K.Barnes).
(6:20) 24-J.Mason left end to ARI 12 for -4 yards (7-K.White, 43-J.Luketa). FUMBLES (43-J.Luketa), RECOVERED by ARI-2-Ma.Wilson at ARI 9.
(6:11) (Shotgun) 6-J.Conner up the middle to ARI 18 for 9 yards (54-F.Warner).
(5:37) 6-J.Conner left tackle to ARI 24 for 6 yards (2-D.Lenoir).
(4:59) (Shotgun) 6-J.Conner left guard to ARI 27 for 3 yards (54-F.Warner; 56-L.Floyd).
(4:22) (Shotgun) 6-J.Conner up the middle to ARI 35 for 8 yards (2-D.Lenoir; 59-D.Campbell).
(3:39) (Shotgun) 1-K.Murray pass short right to 85-T.McBride to ARI 40 for 5 yards (54-F.Warner).
(2:59) 1-K.Murray pass incomplete deep right to 14-Mi.Wilson.
(2:52) (Shotgun) 1-K.Murray pass incomplete short right to 4-G.Dortch (59-D.Campbell).
(2:49) (Shotgun) 1-K.Murray pass short left to 18-M.Harrison to SF 46 for 14 yards (22-I.Yiadom) [56-L.Floyd].
(2:08) (Shotgun) 1-K.Murray right tackle ran ob at SF 33 for 13 yards (54-F.Warner; 7-C.Ward).
(2:02) 6-J.Conner up the middle to SF 23 for 10 yards (7-C.Ward, 56-L.Floyd).
(1:56) (Shotgun) 6-J.Conner up the middle to SF 24 for -1 yards (97-N.Bosa, 99-M.Collins).
(1:50) 6-J.Conner up the middle to SF 23 for 1 yard (59-D.Campbell; 99-M.Collins).
Timeout #1 by SF at 01:50.
(1:46) (Shotgun) 1-K.Murray right end to SF 16 for 7 yards (97-N.Bosa).
Timeout #2 by SF at 01:46.
(1:40) 38-C.Ryland 35 yard field goal is GOOD, Center-46-A.Brewer, Holder-12-B.Gillikin.
Timeout #3 by SF at 01:40.
38-C.Ryland kicks 70 yards from ARI 35 to SF -5. 31-I.Guerendo to SF 27 for 32 yards (32-J.Blount).
(1:32) (Shotgun) 13-B.Purdy pass short middle to 85-G.Kittle to SF 42 for 15 yards (3-B.Baker).
(1:16) (No Huddle, Shotgun) 13-B.Purdy pass short left intended for 11-B.Aiyuk INTERCEPTED by 7-K.White [34-J.Thompson] at 50. 7-K.White to 50 for no gain (85-G.Kittle).
(1:10) 1-K.Murray kneels to ARI 49 for -1 yards.
(:28) 1-K.Murray kneels to ARI 47 for -2 yards.
END GAME"

ari_sf_summary <- "Headline: Kyler Murray rallies the Cardinals past the 49ers, 24-23
Summary: The Cardinals started fast by forcing a three-and-out to open the game and getting a 50-yard TD run from Murray on their second play from scrimmage.T he 49ers controlled the rest of the first half with Purdy throwing a 4-yard TD to George Kittle and Deommodore Lenoir returning a blocked field goal by Jordan Elliott for a 61-yard score that helped San Francisco take a 23-10 lead at the break. Ultimately, the 49ers squandered several chances and scored only one TD on six drives that reached the end zone, allowing the Cardinals to make a comeback. The most costly error came midway through the fourth quarter when Jordan Mason lost a fumble that Mack Wilson recovered at the 8 to keep Arizona within two points. Murray then led the winning drive. On the key play to Harrison, Murray threw a pass the receiver hauled in for a 14-yard completion into Niners territory. The Cardinals then ran five straight times to set up the field goal by Ryland with 1:37 to play. Kyzir White then intercepted a pass from Brock Purdy to seal Arizona's 24-23 comeback victory.
Notable Performances: James Conner ran for 86 yards and scored on a 2-point conversion. Marvin Harrison Jr. made a fourth-down catch to fuel the winning drive. The Arizona defense pitched a second-half shutout with three takeaways. Murray threw for 195 yards and a TD and added 82 yards rushing. Purdy went 18 for 33 for 229 yards, one touchdown and one interception for the 49ers.
Injuries: Cardinals: RG Will Hernandez left in the fourth quarter and didn't return. 49ers: K Jake Moody left the game in the second quarter. "

# Append game log and summary to training dataframe 
ari_sf <- as.data.frame(cbind(ari_sf_log, ari_sf_summary)) %>% rename(game_log = ari_sf_log, game_summary = ari_sf_summary)
training <- rbind(training, ari_sf)

det_dal_log <- "GAME
39-J.Bates kicks 65 yards from DET 35 to end zone, Touchback to the DAL 30.
(15:00) 23-R.Dowdle right tackle to DAL 31 for 1 yard (34-A.Anzalone; 54-A.McNeill).
(14:33) (Shotgun) 4-D.Prescott pass short right to 23-R.Dowdle pushed ob at DAL 46 for 15 yards (32-B.Branch).
(14:04) (Shotgun) 4-D.Prescott pass short right to 88-C.Lamb to DET 27 for 27 yards (32-B.Branch).
(13:23) (Shotgun) 88-C.Lamb left tackle to DET 25 for 2 yards (21-A.Robertson; 46-J.Campbell).
(12:51) (Shotgun) 4-D.Prescott pass short left to 23-R.Dowdle to DET 23 for 2 yards (46-J.Campbell) [54-A.McNeill].
(12:16) (Shotgun) 4-D.Prescott pass deep middle intended for 87-J.Ferguson INTERCEPTED by 31-K.Joseph [91-L.Onwuzurike] at DET 6. 31-K.Joseph pushed ob at DET 33 for 27 yards (73-T.Smith). PENALTY on DET-34-A.Anzalone, Defensive Holding, 5 yards, enforced at DET 23 - No Play.
(12:08) (Shotgun) 4-D.Prescott pass short right to 88-C.Lamb to DET 16 for 2 yards (91-L.Onwuzurike).
(11:33) (Shotgun) 4-D.Prescott pass incomplete deep right to 88-C.Lamb (23-C.Davis).
(11:28) (Shotgun) 4-D.Prescott pass incomplete short middle [97-A.Hutchinson]. Penalty on DAL-70-Z.Martin, Offensive Holding, declined.
(11:24) 17-B.Aubrey 34 yard field goal is GOOD, Center-44-T.Sieg, Holder-5-B.Anger.
17-B.Aubrey kicks 65 yards from DAL 35 to end zone, Touchback to the DET 30.
(11:21) 70-D.Skipper reported in as eligible. 5-D.Montgomery left end pushed ob at DET 35 for 5 yards (7-T.Diggs).
(10:45) (Shotgun) 16-J.Goff pass incomplete short right to 26-J.Gibbs [97-O.Odighizuwa].
(10:41) (Shotgun) 16-J.Goff pass deep right to 17-T.Patrick to DAL 23 for 42 yards (27-A.Oruwariye).
(9:56) (No Huddle, Shotgun) 5-D.Montgomery right tackle to DAL 16 for 7 yards (6-Do.Wilson, 97-O.Odighizuwa).
(9:13) 5-D.Montgomery left guard for 16 yards, TOUCHDOWN.
39-J.Bates extra point is GOOD, Center-49-H.Hatten, Holder-3-J.Fox.
39-J.Bates kicks 65 yards from DET 35 to end zone, Touchback to the DAL 30.
(9:06) (Shotgun) 4-D.Prescott pass short left to 88-C.Lamb to DAL 38 for 8 yards (0-T.Arnold) [96-K.Peko].
(8:33) (Shotgun) 4-D.Prescott pass deep left to 1-J.Tolbert pushed ob at DET 36 for 26 yards (0-T.Arnold).
(8:05) (No Huddle, Shotgun) 15-E.Elliott left guard to DET 33 for 3 yards (96-K.Peko; 97-A.Hutchinson). DET-96-K.Peko was injured during the play.
(7:42) 4-D.Prescott sacked at DET 38 for -5 yards (97-A.Hutchinson). PENALTY on DET-46-J.Campbell, Defensive Holding, 5 yards, enforced at DET 33 - No Play.
(7:27) 15-E.Elliott up the middle to DET 27 for 1 yard (46-J.Campbell; 97-A.Hutchinson).
(6:56) (Shotgun) 15-E.Elliott left tackle to DET 24 for 3 yards (98-D.Reader).
(6:17) (Shotgun) 4-D.Prescott pass short middle to 9-K.Turpin to DET 12 for 12 yards (21-A.Robertson).
(5:41) 15-E.Elliott up the middle to DET 13 for -1 yards (93-J.Paschal).
(5:12) (Shotgun) 4-D.Prescott pass short right to 87-J.Ferguson to DET 7 for 6 yards (21-A.Robertson).
(4:39) (Shotgun) 4-D.Prescott pass short left intended for 88-C.Lamb INTERCEPTED by 32-B.Branch at DET -8. Touchback.
(4:34) 5-D.Montgomery left tackle to DET 21 for 1 yard (13-D.Overshown).
(3:55) 26-J.Gibbs up the middle to DET 29 for 8 yards (6-Do.Wilson).
(3:11) 70-D.Skipper reported in as eligible. 5-D.Montgomery right tackle to DET 36 for 7 yards (35-M.Liufau).
(2:38) 26-J.Gibbs right end to DET 39 for 3 yards (35-M.Liufau; 93-L.Joseph).
(2:00) 26-J.Gibbs right guard to DAL 48 for 13 yards (6-Do.Wilson; 52-K.Henry).
(1:23) 9-J.Williams right end to DAL 37 for 11 yards (2-J.Lewis).
(:49) 16-J.Goff pass incomplete short middle to 9-J.Williams.
(:43) (Shotgun) 16-J.Goff pass short middle to 9-J.Williams to DAL 22 for 15 yards (7-T.Diggs) [55-C.Lawson].
END QUARTER 1
(15:00) (Shotgun) 16-J.Goff pass incomplete deep left to 26-J.Gibbs.
(14:55) 26-J.Gibbs right end to DAL 25 for -3 yards (18-D.Clark).
(14:14) (Shotgun) 16-J.Goff pass short middle to 26-J.Gibbs pushed ob at DAL 22 for 3 yards (2-J.Lewis; 18-D.Clark).
(13:31) 39-J.Bates 40 yard field goal is GOOD, Center-49-H.Hatten, Holder-3-J.Fox.
39-J.Bates kicks 65 yards from DET 35 to end zone, Touchback to the DAL 30.
(13:28) 23-R.Dowdle left guard to DAL 35 for 5 yards (54-A.McNeill; 32-B.Branch).
(12:53) 4-D.Prescott pass incomplete deep left to 87-J.Ferguson.
(12:46) (Shotgun) 4-D.Prescott pass incomplete short middle to 83-J.Brooks (34-A.Anzalone).
(12:42) (Punt formation) PENALTY on DAL-29-C.Goodwin, False Start, 5 yards, enforced at DAL 35 - No Play.
(12:42) 5-B.Anger punts 38 yards to DET 32, Center-44-T.Sieg, downed by DAL-40-H.Luepke. PENALTY on DAL-29-C.Goodwin, Player Out of Bounds on Kick, 5 yards, enforced at DET 32.
(12:30) (Shotgun) 16-J.Goff pass incomplete deep left to 89-B.Wright.
(12:26) (Shotgun) 16-J.Goff pass short left to 14-A.St. Brown pushed ob at DET 48 for 11 yards (18-D.Clark).
(11:49) 16-J.Goff pass deep right to 87-S.LaPorta for 52 yards, TOUCHDOWN.
39-J.Bates extra point is GOOD, Center-49-H.Hatten, Holder-3-J.Fox.
39-J.Bates kicks 65 yards from DET 35 to end zone, Touchback to the DAL 30.
(11:39) (Shotgun) 15-E.Elliott right guard to DAL 30 for no gain (93-J.Paschal).
(11:11) (Shotgun) 4-D.Prescott pass incomplete short right to 88-C.Lamb (23-C.Davis).
(11:08) (Shotgun) 4-D.Prescott sacked at DAL 20 for -10 yards (54-A.McNeill).
(10:27) 5-B.Anger punts 55 yards to DET 25, Center-44-T.Sieg. 11-K.Raymond to DET 31 for 6 yards (29-C.Goodwin).
(10:17) 5-D.Montgomery up the middle to DET 34 for 3 yards (18-D.Clark; 55-C.Lawson).
(9:42) 5-D.Montgomery right end to DAL 49 for 17 yards (97-O.Odighizuwa).
(9:01) 16-J.Goff pass short left to 14-A.St. Brown to DAL 33 for 16 yards (27-A.Oruwariye).
(8:18) 16-J.Goff scrambles left end to DAL 32 for 1 yard (58-M.Smith).
(7:29) (Shotgun) 16-J.Goff pass incomplete deep middle to 11-K.Raymond.
(7:24) (Shotgun) 16-J.Goff pass short right to 11-K.Raymond to DAL 25 for 7 yards (97-O.Odighizuwa).
(6:45) 26-J.Gibbs left end to DAL 23 for 2 yards (2-J.Lewis; 55-C.Lawson).
(6:01) 5-D.Montgomery right tackle to DAL 22 for 1 yard (97-O.Odighizuwa; 28-M.Hooker).
(5:23) 16-J.Goff pass short right to 5-D.Montgomery to DAL 22 for no gain (6-Do.Wilson; 58-M.Smith).
(4:39) (Shotgun) 16-J.Goff sacked at DAL 30 for -8 yards (sack split by 18-D.Clark and 99-C.Golston).
(4:01) 39-J.Bates 48 yard field goal is GOOD, Center-49-H.Hatten, Holder-3-J.Fox.
39-J.Bates kicks 65 yards from DET 35 to end zone, Touchback to the DAL 30.
(3:57) (Shotgun) 4-D.Prescott pass short middle to 23-R.Dowdle to DAL 34 for 4 yards (46-J.Campbell; 34-A.Anzalone).
(3:23) 4-D.Prescott pass incomplete short right to 88-C.Lamb.
(3:20) (Shotgun) 4-D.Prescott pass short right to 1-J.Tolbert pushed ob at DAL 38 for 4 yards (23-C.Davis).
(2:43) (Shotgun) 4-D.Prescott pass incomplete short left to 9-K.Turpin (0-T.Arnold) [97-A.Hutchinson].TURNOVER ON DOWNS.
(2:39) 26-J.Gibbs left end to DAL 42 for -4 yards (99-C.Golston).
(2:00) (Shotgun) PENALTY on DAL-97-O.Odighizuwa, Encroachment, 5 yards, enforced at DAL 42 - No Play.
(2:00) 16-J.Goff pass deep right to 17-T.Patrick to DAL 19 for 18 yards (28-M.Hooker).
(1:22) (Shotgun) 26-J.Gibbs left tackle to DAL 15 for 4 yards (18-D.Clark; 91-T.Wheat).
(:50) (Shotgun) 16-J.Goff pass short right to 14-A.St. Brown to DAL 9 for 6 yards (18-D.Clark).
(:44) 70-D.Skipper reported in as eligible. 16-J.Goff pass short left to 17-T.Patrick for 9 yards, TOUCHDOWN. The Replay Official reviewed the runner broke the plane ruling, and the play was REVERSED. 70-D.Skipper reported in as eligible. 16-J.Goff pass short left to 17-T.Patrick to DAL 1 for 8 yards (7-T.Diggs).
Timeout #1 by DAL at 00:44.
(:40) 68-T.Decker and 70-D.Skipper reported in as eligible. 5-D.Montgomery right guard for 1 yard, TOUCHDOWN.
Timeout #2 by DAL at 00:40.
39-J.Bates extra point is GOOD, Center-49-H.Hatten, Holder-3-J.Fox.
39-J.Bates kicks 74 yards from DET 35 to DAL -9. 9-K.Turpin pushed ob at DET 30 for 79 yards (39-J.Bates).
(:28) (Shotgun) 4-D.Prescott sacked at DET 38 for -8 yards (54-A.McNeill).
(:23) (Shotgun) 4-D.Prescott pass incomplete short middle to 88-C.Lamb.
Timeout #3 by DAL at 00:23.
(:18) (Shotgun) 4-D.Prescott pass short left to 88-C.Lamb pushed ob at DET 29 for 9 yards (21-A.Robertson).
(:12) 17-B.Aubrey 47 yard field goal is GOOD, Center-44-T.Sieg, Holder-5-B.Anger.
17-B.Aubrey kicks 65 yards from DAL 35 to end zone, Touchback to the DET 30.
(:08) 70-D.Skipper reported in as eligible. 16-J.Goff kneels to DET 29 for -1 yards.
END QUARTER 2
17-B.Aubrey kicks 65 yards from DAL 35 to end zone, Touchback to the DET 30. ** Injury Update: DAL-35-M.Liufau has returned to the game.
(15:00) 26-J.Gibbs right end to DET 41 for 11 yards (18-D.Clark, 13-D.Overshown).
(14:19) 16-J.Goff pass short right to 26-J.Gibbs to DAL 39 for 20 yards (58-M.Smith).
(13:30) 26-J.Gibbs left tackle to DAL 37 for 2 yards (6-Do.Wilson).
(12:46) (Shotgun) 16-J.Goff pass incomplete deep left to 11-K.Raymond.
(12:42) (Shotgun) 16-J.Goff pass deep right to 9-J.Williams for 37 yards, TOUCHDOWN.
39-J.Bates extra point is GOOD, Center-49-H.Hatten, Holder-3-J.Fox.
39-J.Bates kicks 69 yards from DET 35 to DAL -4. 9-K.Turpin to DAL 29 for 33 yards (33-S.Vaki, 53-T.Nowaske).
(12:30) (Shotgun) 4-D.Prescott pass short middle to 88-C.Lamb to DAL 34 for 5 yards (34-A.Anzalone; 46-J.Campbell).
(11:57) (Shotgun) 4-D.Prescott sacked at DAL 28 for -6 yards (97-A.Hutchinson). DET-97-A.Hutchinson was injured during the play.
(11:28) (Shotgun) 4-D.Prescott pass incomplete short right to 1-J.Tolbert. PENALTY on DET-23-C.Davis, Defensive Pass Interference, 10 yards, enforced at DAL 28 - No Play.
(11:24) (Shotgun) 4-D.Prescott scrambles right end to DAL 39 for 1 yard (32-B.Branch).
(10:51) 4-D.Prescott pass short right to 87-J.Ferguson to DAL 43 for 4 yards (23-C.Davis) [32-B.Branch]. DET-23-C.Davis was injured during the play.
(10:27) (Shotgun) 4-D.Prescott pass incomplete deep right to 1-J.Tolbert (29-K.Vildor).
(10:20) (Shotgun) 4-D.Prescott pass short right to 88-C.Lamb to DET 38 for 19 yards (21-A.Robertson; 31-K.Joseph).
(9:50) (No Huddle, Shotgun) 4-D.Prescott pass incomplete short right to 83-J.Brooks. PENALTY on DET-29-K.Vildor, Defensive Pass Interference, 8 yards, enforced at DET 38 - No Play.
(9:47) (No Huddle, Shotgun) 4-D.Prescott pass incomplete deep left to 9-K.Turpin [98-D.Reader].
(9:41) (Shotgun) 4-D.Prescott sacked at DET 32 for -2 yards (53-T.Nowaske).
(8:57) (Shotgun) 4-D.Prescott pass incomplete short left to 83-J.Brooks.
(8:52) 17-B.Aubrey 50 yard field goal is GOOD, Center-44-T.Sieg, Holder-5-B.Anger.
17-B.Aubrey kicks 58 yards from DAL 35 to DET 7. 30-K.Dorsey pushed ob at DET 41 for 34 yards (24-I.Mukuamu).
(8:40) (Shotgun) 16-J.Goff pass deep left to 11-K.Raymond pushed ob at DAL 21 for 38 yards (27-A.Oruwariye) [55-C.Lawson].
(8:11) 5-D.Montgomery up the middle to DAL 2 for 19 yards (93-L.Joseph).
(7:18) 68-T.Decker and 70-D.Skipper reported in as eligible. 16-J.Goff pass incomplete short left to 68-T.Decker (18-D.Clark).
(7:14) 68-T.Decker and 70-D.Skipper reported in as eligible. 5-D.Montgomery up the middle to DAL 1 for 1 yard (28-M.Hooker; 99-C.Golston).
(6:25) 68-T.Decker and 70-D.Skipper reported in as eligible. PENALTY on DET, Delay of Game, 5 yards, enforced at DAL 1 - No Play.
(6:12) (Shotgun) 16-J.Goff sacked at DAL 15 for -9 yards (6-Do.Wilson).
(5:29) 39-J.Bates 33 yard field goal is GOOD, Center-49-H.Hatten, Holder-3-J.Fox.
39-J.Bates kicks 65 yards from DET 35 to end zone, Touchback to the DAL 30.
(5:26) (Shotgun) 23-R.Dowdle up the middle to DAL 31 for 1 yard (46-J.Campbell; 98-D.Reader).
(5:05) (No Huddle, Shotgun) 4-D.Prescott pass incomplete short middle to 23-R.Dowdle (34-A.Anzalone).
(5:00) (Shotgun) 4-D.Prescott pass deep left to 88-C.Lamb to 50 for 19 yards (31-K.Joseph).
(4:34) (No Huddle, Shotgun) 4-D.Prescott pass short left to 80-R.Flournoy to DET 38 for 12 yards (32-B.Branch). FUMBLES (32-B.Branch), RECOVERED by DET-0-T.Arnold at DET 29. 0-T.Arnold to DET 28 for -1 yards (80-R.Flournoy). The Replay Official reviewed the ball was inbounds ruling, and the play was Upheld. The ruling on the field stands.
(4:24) 16-J.Goff pass short left to 9-J.Williams pushed ob at DAL 48 for 24 yards (28-M.Hooker).
(3:51) 26-J.Gibbs up the middle to DAL 33 for 15 yards (99-C.Golston).
(3:09) (Shotgun) 5-D.Montgomery left tackle to DAL 31 for 2 yards (99-C.Golston).
(2:35) (Shotgun) 16-J.Goff pass short right to 11-K.Raymond to DAL 22 for 9 yards (27-A.Oruwariye).
(1:51) 26-J.Gibbs up the middle to DAL 12 for 10 yards (2-J.Lewis; 6-Do.Wilson).
(1:15) 26-J.Gibbs right end pushed ob at DAL 10 for 2 yards (27-A.Oruwariye).
(:37) 16-J.Goff pass short right to 14-A.St. Brown to DAL 11 for -1 yards. Lateral to 58-P.Sewell to DAL 3 for 8 yards (6-Do.Wilson). PENALTY on DET-77-F.Ragnow, Ineligible Downfield Pass, 5 yards, enforced at DAL 10 - No Play.
(:19) (Shotgun) 16-J.Goff scrambles left end to DAL 10 for 5 yards (93-L.Joseph).
END QUARTER 3
(15:00) (Shotgun) 16-J.Goff pass short left to 9-J.Williams for 10 yards, TOUCHDOWN NULLIFIED by Penalty [97-O.Odighizuwa]. PENALTY on DET-26-J.Gibbs, Offensive Pass Interference, 10 yards, enforced at DAL 10 - No Play.
(14:55) (Shotgun) 16-J.Goff pass short right to 26-J.Gibbs to DAL 15 for 5 yards (13-D.Overshown).
(14:15) 39-J.Bates 33 yard field goal is GOOD, Center-49-H.Hatten, Holder-3-J.Fox.
39-J.Bates kicks 70 yards from DET 35 to DAL -5. 9-K.Turpin to DAL 28 for 33 yards (44-M.Rodriguez).
(14:06) (Shotgun) 4-D.Prescott pass short left to 1-J.Tolbert to DAL 32 for 4 yards (21-A.Robertson).
(13:43) (No Huddle, Shotgun) 4-D.Prescott pass incomplete short right to 88-C.Lamb.
(13:39) (Shotgun) 4-D.Prescott pass incomplete short right to 88-C.Lamb [93-J.Paschal].
(13:34) (Shotgun) 4-D.Prescott pass deep middle intended for 83-J.Brooks INTERCEPTED by 32-B.Branch at DET 49. 32-B.Branch to DAL 4 for 47 yards (83-J.Brooks).
(13:22) (Shotgun) 16-J.Goff pass short right to 14-A.St. Brown for 4 yards, TOUCHDOWN. PENALTY on DET-14-A.St. Brown, Unsportsmanlike Conduct, 15 yards, enforced between downs.
39-J.Bates extra point is GOOD, Center-49-H.Hatten, Holder-3-J.Fox.
39-J.Bates kicks 73 yards from DET 35 to DAL -8. 9-K.Turpin to DAL 41 for 49 yards (31-K.Joseph; 29-K.Vildor).
(13:12) (Shotgun) 23-R.Dowdle left tackle to DET 47 for 12 yards (32-B.Branch).
(12:40) (Shotgun) 23-R.Dowdle up the middle to DET 41 for 6 yards (44-M.Rodriguez).
(12:10) (Shotgun) 10-C.Rush pass short left to 23-R.Dowdle to DET 37 for 4 yards (15-E.Rakestraw).
(11:35) 15-E.Elliott left end to DET 35 for 2 yards (45-I.Ukwu).
(11:00) (Shotgun) 10-C.Rush pass short right to 1-J.Tolbert to DET 26 for 9 yards (21-A.Robertson).
(10:20) (Shotgun) 10-C.Rush pass short right to 23-R.Dowdle to DET 21 for 5 yards (44-M.Rodriguez).
(9:33) 10-C.Rush pass short left to 83-J.Brooks to DET 6 for 15 yards (42-J.Reeves-Maybin, 15-E.Rakestraw).
(8:53) (Shotgun) 10-C.Rush pass incomplete short left to 83-J.Brooks.
(8:49) (Shotgun) 10-C.Rush pass incomplete short right to 83-J.Brooks (30-K.Dorsey).
(8:45) (Shotgun) 10-C.Rush pass short left to 87-J.Ferguson to DET 5 for 1 yard (31-K.Joseph).
(8:07) (Shotgun) 10-C.Rush pass short right intended for 9-K.Turpin INTERCEPTED by 31-K.Joseph at DET -5. Touchback.
Timeout #1 by DAL at 08:07.
(8:02) 2-H.Hooker pass short right to 11-K.Raymond to DET 39 for 19 yards (91-T.Wheat).
(7:21) 13-C.Reynolds left end to DET 44 for 5 yards (25-A.Booth; 18-D.Clark).
(6:40) 13-C.Reynolds left tackle pushed ob at DET 47 for 3 yards (14-M.Bell). PENALTY on DAL-14-M.Bell, Face Mask, 15 yards, enforced at DET 47.
(6:08) 13-C.Reynolds right guard to DAL 36 for 2 yards (13-D.Overshown). FUMBLES (13-D.Overshown), and recovers at DAL 36.
(5:25) (Shotgun) 2-H.Hooker pass incomplete short right to 8-A.Robinson (27-A.Oruwariye).
(5:19) (Shotgun) 33-S.Vaki right end to DAL 31 for 5 yards (14-M.Bell).
(4:28) (Shotgun) 70-D.Skipper reported in as eligible. 2-H.Hooker sacked at DAL 40 for -9 yards (52-K.Henry).
(4:23) 15-E.Elliott up the middle to DAL 46 for 6 yards (30-K.Dorsey).
(3:47) (Shotgun) 10-C.Rush pass short right to 9-K.Turpin pushed ob at DET 48 for 6 yards (15-E.Rakestraw).
(3:42) (Shotgun) 15-E.Elliott right tackle to DET 45 for 3 yards (53-T.Nowaske).
(3:07) 9-K.Turpin left end pushed ob at DET 39 for 6 yards (45-I.Ukwu).
(2:59) (No Huddle) 10-C.Rush up the middle to DET 37 for 2 yards (91-L.Onwuzurike).
(2:30) (Shotgun) 10-C.Rush pass short right to 9-K.Turpin pushed ob at DET 34 for 3 yards (29-K.Vildor). DET-21-A.Robertson was injured during the play.
(2:25) (Shotgun) 10-C.Rush pass short middle to 9-K.Turpin to DET 31 for 3 yards (42-J.Reeves-Maybin; 46-J.Campbell). FUMBLES (42-J.Reeves-Maybin), touched at DET 31, RECOVERED by DET-44-M.Rodriguez at DET 33.
(2:18) 13-C.Reynolds left end to DET 37 for 4 yards (25-A.Booth).
(2:00) 13-C.Reynolds right tackle to DET 38 for 1 yard (41-N.Vigil, 52-K.Henry).
(1:14) 13-C.Reynolds left tackle to DET 44 for 6 yards (91-T.Wheat).
Timeout #1 by DET at 01:14.
(:38) 70-D.Skipper reported in as eligible. 2-H.Hooker kneels to DET 43 for -1 yards.
END GAME"

det_dal_summary <- "Headline: Jared Goff throws 3 TD passes, Lions win 47-9 and hand Cowboys lopsided home loss.
Summary: The game was all Detroit. The Lions led 27-6 at the break, and 34-9 in the third quarter. Montgomery's first score was a 16-yarder to put Detroit up for good at 7-3. Goff's 37-yard scoring toss to Jameson Williams built Detroit’s lead to 34-6 early in the third quarter. To top things off, Sam LaPorta had a 52-yard touchdown catch on a trick play when he was wide open after Goff pitched to Montgomery, who then pitched on a reverse to Amon-Ra St. Brown, who got it back to Goff for the deep throw. On the other side, Dallas struggled, committing five turnovers, with Prescott’s first interception occurring in the end zone on a  by Brian Branch when the Cowboys had a chance to retake the lead in the first quarter, from which they never recovered.
Notable Performances: Goff threw for 315 yards on 18 of 25 passing, and three touchdowns, and no interceptions. David Montgomery ran for two scores. Prescott threw two interceptions. Branch had two interceptions and a forced fumble.
Injuries: Lions: DT Kyle Peko left first quarter and didn't return."

# Append game log and summary to training dataframe 
det_dal <- as.data.frame(cbind(det_dal_log, det_dal_summary)) %>% rename(game_log = det_dal_log, game_summary = det_dal_summary)
training <- rbind(training, det_dal)

was_bal_log <- "GAME
3-A.Seibert kicks 65 yards from WAS 35 to BAL 0. 43-J.Hill to BAL 34 for 34 yards (11-J.Chinn; 22-D.Forrest).
(14:53) (Shotgun) 22-D.Henry right end to BAL 36 for 2 yards (54-B.Wagner; 25-B.St-Juste).
(14:18) (Shotgun) 8-L.Jackson pass short left to 4-Z.Flowers pushed ob at WAS 20 for 44 yards (25-B.St-Juste).
(13:40) 22-D.Henry right tackle to WAS 20 for no gain (20-Q.Martin).
(12:58) (Shotgun) 8-L.Jackson pass short left intended for 89-M.Andrews INTERCEPTED by 0-M.Sainristil at WAS 13. 0-M.Sainristil to BAL 49 for 38 yards (8-L.Jackson).
(12:47) (Shotgun) 30-A.Ekeler left guard to BAL 44 for 5 yards (23-T.Simpson, 0-R.Smith).
(12:23) (No Huddle, Shotgun) 5-J.Daniels pass short right to 85-N.Brown to BAL 40 for 4 yards (53-K.Van Noy).
(11:47) (No Huddle, Shotgun) 5-J.Daniels pass short right to 30-A.Ekeler to BAL 16 for 24 yards (32-M.Williams).
(11:17) (No Huddle, Shotgun) 5-J.Daniels right end to BAL 16 for no gain (44-M.Humphrey).
(10:41) (No Huddle, Shotgun) 5-J.Daniels pass short left to 14-O.Zaccheaus pushed ob at BAL 13 for 3 yards (44-M.Humphrey).
(9:57) (No Huddle, Shotgun) 5-J.Daniels sacked at BAL 24 for -11 yards (98-T.Jones).
(9:14) 3-A.Seibert 42 yard field goal is GOOD, Center-69-T.Ott, Holder-10-T.Way.
3-A.Seibert kicks 61 yards from WAS 35 to BAL 4. 3-D.Harty to BAL 30 for 26 yards (11-J.Chinn).
(9:05) (Shotgun) 22-D.Henry up the middle to BAL 35 for 5 yards (11-J.Chinn, 95-J.Newton).
(8:34) (Shotgun) 8-L.Jackson scrambles right end to BAL 39 for 4 yards (54-B.Wagner).
(7:58) (Shotgun) 8-L.Jackson left end to BAL 49 for 10 yards (0-M.Sainristil).
(7:22) (Shotgun) 8-L.Jackson pass short middle to 4-Z.Flowers to WAS 39 for 12 yards (20-Q.Martin).
(6:40) (Shotgun) 22-D.Henry right guard to WAS 35 for 4 yards (54-B.Wagner).
(6:02) (Shotgun) 8-L.Jackson pass short right to 4-Z.Flowers to WAS 26 for 9 yards (25-B.St-Juste).
(5:21) 22-D.Henry left end to WAS 23 for 3 yards (93-J.Allen).
(4:40) (Shotgun) 8-L.Jackson pass incomplete deep right to 80-I.Likely.
(4:31) (Shotgun) 8-L.Jackson Aborted. 64-T.Linderbaum FUMBLES at WAS 23, touched at WAS 25, recovered by BAL-8-L.Jackson at WAS 27.
(3:50) 9-J.Tucker 45 yard field goal is GOOD, Center-46-N.Moore, Holder-11-J.Stout.
9-J.Tucker kicks 65 yards from BAL 35 to end zone, Touchback to the WAS 30.
(3:45) (Shotgun) 17-T.McLaurin right end to WAS 30 for no gain (14-K.Hamilton, 39-E.Jackson).
(3:07) (No Huddle, Shotgun) 5-J.Daniels pass short right to 30-A.Ekeler to WAS 30 for no gain (2-N.Wiggins).
(2:34) (No Huddle, Shotgun) 5-J.Daniels pass incomplete short middle to 14-O.Zaccheaus.
(2:30) 10-T.Way punts 54 yards to BAL 16, Center-69-T.Ott. 3-D.Harty pushed ob at BAL 20 for 4 yards (87-J.Bates).
(2:20) (Shotgun) 8-L.Jackson pass short left to 4-Z.Flowers to BAL 20 for no gain (35-P.Butler).
(1:46) (Shotgun) 22-D.Henry up the middle to BAL 21 for 1 yard (95-J.Newton).
(1:02) (Shotgun) 8-L.Jackson sacked at BAL 10 for -11 yards (6-D.Fowler).
(:11) 11-J.Stout punts 50 yards to WAS 40, Center-46-N.Moore. 14-O.Zaccheaus pushed ob at 50 for 10 yards (49-C.Board).
(:02) (Shotgun) 30-A.Ekeler right guard to BAL 44 for 6 yards (23-T.Simpson).
END QUARTER 1
(15:00) (Shotgun) 30-A.Ekeler left guard to BAL 45 for -1 yards (98-T.Jones).
(14:17) (No Huddle, Shotgun) 5-J.Daniels scrambles left end pushed ob at BAL 39 for 6 yards (21-B.Stephens).
(13:50) (No Huddle, Shotgun) 5-J.Daniels pass short right to 30-A.Ekeler to BAL 41 for -2 yards (44-M.Humphrey, 14-K.Hamilton).
(13:13) (No Huddle, Shotgun) 5-J.Daniels pass incomplete deep right to 14-O.Zaccheaus. BAL-2-N.Wiggins was injured during the play.
(13:06) (Shotgun) 5-J.Daniels pass incomplete deep left to 17-T.McLaurin (21-B.Stephens).
(13:01) 10-T.Way punts 34 yards to BAL 7, impetus ends at BAL 6, Center-69-T.Ott, downed by WAS-32-M.Walker.
(12:53) 8-L.Jackson pass incomplete short middle to 15-N.Agholor (25-B.St-Juste).
(12:49) 22-D.Henry left guard to BAL 12 for 5 yards (32-M.Walker; 35-P.Butler).
(12:10) (Shotgun) 8-L.Jackson pass short left to 7-R.Bateman pushed ob at BAL 25 for 13 yards (25-B.St-Juste).
(11:37) 8-L.Jackson pass deep middle to 7-R.Bateman to BAL 48 for 23 yards (35-P.Butler).
(10:49) 22-D.Henry up the middle to WAS 37 for 15 yards (35-P.Butler).
(10:10) (Shotgun) 8-L.Jackson pass short left to 4-Z.Flowers to WAS 14 for 23 yards (20-Q.Martin).
(9:22) (Shotgun) 8-L.Jackson right end to WAS 16 for -2 yards (6-D.Fowler).
(8:44) (Shotgun) 8-L.Jackson pass short left to 43-J.Hill pushed ob at WAS 14 for 2 yards (0-M.Sainristil).
(8:03) (Shotgun) 8-L.Jackson pass incomplete short middle to 4-Z.Flowers. PENALTY on WAS-25-B.St-Juste, Defensive Pass Interference, 11 yards, enforced at WAS 14 - No Play.
(7:59) 22-D.Henry right end for 3 yards, TOUCHDOWN.
9-J.Tucker extra point is GOOD, Center-46-N.Moore, Holder-11-J.Stout.
9-J.Tucker kicks 65 yards from BAL 35 to end zone, Touchback to the WAS 30.
(7:55) (Shotgun) 5-J.Daniels pass short middle to 85-N.Brown to WAS 45 for 15 yards (44-M.Humphrey) [14-K.Hamilton].
(7:23) (No Huddle, Shotgun) 5-J.Daniels pass incomplete short right to 85-N.Brown (44-M.Humphrey).
(7:17) (No Huddle, Shotgun) 5-J.Daniels pass short left to 17-T.McLaurin to WAS 49 for 4 yards (14-K.Hamilton).
(6:40) (No Huddle, Shotgun) 5-J.Daniels pass short left to 17-T.McLaurin to BAL 43 for 8 yards (21-B.Stephens). ** Injury Update: BAL-2-N.Wiggins has returned to the game.
(6:15) (No Huddle, Shotgun) 5-J.Daniels pass short middle to 30-A.Ekeler to BAL 18 for 25 yards (44-M.Humphrey).
(5:35) (No Huddle, Shotgun) 5-J.Daniels pass short right to 2-D.Brown to BAL 7 for 11 yards (32-M.Williams).
(4:54) (No Huddle, Shotgun) 5-J.Daniels pass short left to 12-L.McCaffrey to BAL 2 for 5 yards (29-A.Washington).
(4:25) (No Huddle, Shotgun) PENALTY on WAS-71-A.Wylie, False Start, 5 yards, enforced at BAL 2 - No Play.
(4:21) (Shotgun) 5-J.Daniels pass short right to 17-T.McLaurin for 7 yards, TOUCHDOWN.
3-A.Seibert extra point is GOOD, Center-69-T.Ott, Holder-10-T.Way.
3-A.Seibert kicks 64 yards from WAS 35 to BAL 1. 3-D.Harty to BAL 22 for 21 yards (57-N.Bellore).
(4:09) 8-L.Jackson pass short middle to 4-Z.Flowers to BAL 32 for 10 yards (0-M.Sainristil; 4-F.Luvu).
(3:26) (Shotgun) PENALTY on BAL-70-R.Rosengarten, False Start, 5 yards, enforced at BAL 32 - No Play.
(3:08) 8-L.Jackson pass incomplete deep middle to 7-R.Bateman (0-M.Sainristil). PENALTY on WAS-1-N.Igbinoghene, Defensive Holding, 5 yards, enforced at BAL 27 - No Play.
(3:02) (Shotgun) 8-L.Jackson pass incomplete deep left to 15-N.Agholor (1-N.Igbinoghene).
(2:56) (Shotgun) 8-L.Jackson pass short left to 4-Z.Flowers to BAL 45 for 13 yards (1-N.Igbinoghene) [99-C.Ferrell].
(2:20) (No Huddle, Shotgun) PENALTY on BAL-65-P.Mekari, False Start, 5 yards, enforced at BAL 45 - No Play.
(2:09) (Shotgun) 8-L.Jackson pass short middle to 15-N.Agholor pushed ob at WAS 35 for 25 yards (20-Q.Martin).
(2:00) (Shotgun) 8-L.Jackson up the middle to WAS 36 for -1 yards (98-P.Mathis).
(1:55) (Shotgun) 8-L.Jackson pass short right to 4-Z.Flowers to WAS 30 for 6 yards (0-M.Sainristil).
Timeout #1 by WAS at 01:55.
(1:49) (Shotgun) 8-L.Jackson pass short middle to 4-Z.Flowers to WAS 15 for 15 yards (25-B.St-Juste; 0-M.Sainristil) [54-B.Wagner].
Timeout #2 by WAS at 01:49.
(1:24) (No Huddle, Shotgun) 43-J.Hill right guard to WAS 13 for 2 yards (6-D.Fowler).
(1:02) (No Huddle, Shotgun) 8-L.Jackson pass incomplete short right to 80-I.Likely.
(:57) (Shotgun) 8-L.Jackson pass short middle to 89-M.Andrews for 13 yards, TOUCHDOWN.
9-J.Tucker extra point is GOOD, Center-46-N.Moore, Holder-11-J.Stout.
9-J.Tucker kicks 65 yards from BAL 35 to end zone, Touchback to the WAS 30.
(:53) (Shotgun) 5-J.Daniels scrambles up the middle to WAS 39 for 9 yards (0-R.Smith).
(:35) (No Huddle, Shotgun) 5-J.Daniels pass short right to 85-N.Brown to 50 for 11 yards (2-N.Wiggins).
(:20) (No Huddle, Shotgun) 5-J.Daniels pass incomplete short left to 30-A.Ekeler.
(:16) (Shotgun) 5-J.Daniels pass short right to 14-O.Zaccheaus pushed ob at BAL 39 for 11 yards (39-E.Jackson).
(:10) (Shotgun) 5-J.Daniels pass short right to 14-O.Zaccheaus ran ob at BAL 34 for 5 yards [99-O.Oweh].
(:05) 3-A.Seibert 52 yard field goal is BLOCKED (66-B.Cleveland), Center-69-T.Ott, Holder-10-T.Way.
END QUARTER 2
9-J.Tucker kicks 65 yards from BAL 35 to end zone, Touchback to the WAS 30.
(15:00) (Shotgun) 30-A.Ekeler left guard to WAS 30 for no gain (53-K.Van Noy).
(14:37) (No Huddle, Shotgun) 5-J.Daniels pass deep left to 85-N.Brown to BAL 42 for 28 yards (44-M.Humphrey).
(14:10) (No Huddle, Shotgun) 30-A.Ekeler left tackle to BAL 37 for 5 yards (0-R.Smith).
(13:39) (No Huddle, Shotgun) 30-A.Ekeler up the middle to BAL 37 for no gain (98-T.Jones).
(12:54) (Shotgun) 5-J.Daniels pass incomplete short right to 85-N.Brown (2-N.Wiggins).
Timeout #1 by WAS at 12:54.
(12:50) 3-A.Seibert 55 yard field goal is GOOD, Center-69-T.Ott, Holder-10-T.Way.
3-A.Seibert kicks 65 yards from WAS 35 to end zone, Touchback to the BAL 30.
(12:45) 22-D.Henry right guard to BAL 37 for 7 yards (32-M.Walker; 54-B.Wagner).
(12:05) (Shotgun) 22-D.Henry up the middle to BAL 38 for 1 yard (90-J.Jean-Baptiste).
(11:26) (Shotgun) 8-L.Jackson right end to WAS 29 for 33 yards (11-J.Chinn).
(10:38) 8-L.Jackson pass short left to 80-I.Likely to WAS 11 for 18 yards (32-M.Walker; 54-B.Wagner).
(9:55) 4-Z.Flowers right end to WAS 9 for 2 yards (35-P.Butler).
(9:17) (Shotgun) 8-L.Jackson sacked at WAS 13 for -4 yards (6-D.Fowler).
(8:31) (Shotgun) 8-L.Jackson pass incomplete short right. Penalty on BAL-80-I.Likely, Offensive Holding, declined.
(8:22) 9-J.Tucker 32 yard field goal is GOOD, Center-46-N.Moore, Holder-11-J.Stout.
9-J.Tucker kicks 66 yards from BAL 35 to WAS -1. 30-A.Ekeler to WAS 31 for 32 yards (88-C.Kolar, 24-B.Brade).
(8:13) (Shotgun) 5-J.Daniels pass deep left to 86-Z.Ertz to BAL 48 for 21 yards (0-R.Smith).
(7:41) (No Huddle) 26-J.McNichols up the middle to BAL 44 for 4 yards (58-M.Pierce; 39-E.Jackson).
(7:10) (No Huddle, Shotgun) 5-J.Daniels pass incomplete short middle to 86-Z.Ertz (97-B.Urban).
(7:06) (No Huddle, Shotgun) 5-J.Daniels pass incomplete deep right to 85-N.Brown.
(6:59) 10-T.Way punts 38 yards to BAL 6, Center-69-T.Ott, downed by WAS-32-M.Walker.
(6:50) 22-D.Henry left guard to BAL 8 for 2 yards (90-J.Jean-Baptiste; 98-P.Mathis).
(6:14) 22-D.Henry left end pushed ob at BAL 20 for 12 yards (54-B.Wagner).
(5:37) (Shotgun) 8-L.Jackson pass short left to 89-M.Andrews to BAL 35 for 15 yards (11-J.Chinn).
(4:57) 22-D.Henry left tackle to BAL 39 for 4 yards (35-P.Butler; 99-C.Ferrell).
(4:18) (Shotgun) 8-L.Jackson scrambles up the middle to BAL 40 for 1 yard (54-B.Wagner).
(3:38) (Shotgun) 8-L.Jackson pass incomplete short right to 7-R.Bateman. PENALTY on WAS-25-B.St-Juste, Defensive Pass Interference, 10 yards, enforced at BAL 40 - No Play.
(3:34) (Shotgun) 8-L.Jackson pass deep left to 89-M.Andrews to WAS 12 for 38 yards (0-M.Sainristil).
(2:48) 22-D.Henry up the middle to WAS 7 for 5 yards (93-J.Allen).
(2:12) 22-D.Henry up the middle for 7 yards, TOUCHDOWN. WAS-93-J.Allen was injured during the play.
9-J.Tucker extra point is GOOD, Center-46-N.Moore, Holder-11-J.Stout.
9-J.Tucker kicks 65 yards from BAL 35 to end zone, Touchback to the WAS 30.
(2:08) 30-A.Ekeler left guard to WAS 33 for 3 yards (58-M.Pierce; 0-R.Smith).
(1:42) (No Huddle, Shotgun) 5-J.Daniels pass short middle to 86-Z.Ertz to WAS 44 for 11 yards (0-R.Smith).
(1:03) (No Huddle, Shotgun) 26-J.McNichols right guard to WAS 49 for 5 yards (58-M.Pierce).
(:22) (No Huddle, Shotgun) 5-J.Daniels pass deep left to 86-Z.Ertz to BAL 27 for 24 yards (2-N.Wiggins; 44-M.Humphrey).
END QUARTER 3
(15:00) (Shotgun) 5-J.Daniels pass short right to 17-T.McLaurin to BAL 13 for 14 yards (14-K.Hamilton).
(14:46) 5-J.Daniels pass incomplete short right [95-T.Robinson].
(14:41) (No Huddle, Shotgun) 5-J.Daniels right end pushed ob at BAL 13 for no gain (2-N.Wiggins).
(14:04) (No Huddle, Shotgun) 5-J.Daniels pass short middle to 86-Z.Ertz to BAL 1 for 12 yards (23-T.Simpson).
(13:39) (No Huddle, Shotgun) 30-A.Ekeler up the middle to BAL 1 for no gain (92-N.Madubuike; 99-O.Oweh).
(12:53) (No Huddle, Shotgun) 73-T.Scott reported in as eligible. 5-J.Daniels right end to BAL 1 for no gain (53-K.Van Noy). PENALTY on WAS, Illegal Formation, 5 yards, enforced at BAL 1 - No Play.
(12:26) (No Huddle, Shotgun) 5-J.Daniels pass incomplete short right [95-T.Robinson].
(12:19) (No Huddle, Shotgun) 5-J.Daniels pass incomplete short right to 85-N.Brown (2-N.Wiggins).
(12:16) (Shotgun) 5-J.Daniels pass short left to 17-T.McLaurin for 6 yards, TOUCHDOWN.
Timeout #1 by BAL at 12:16.
3-A.Seibert extra point is GOOD, Center-69-T.Ott, Holder-10-T.Way.
3-A.Seibert kicks 66 yards from WAS 35 to BAL -1. 43-J.Hill to BAL 22 for 23 yards (57-N.Bellore).
(12:07) 22-D.Henry right end to BAL 30 for 8 yards (4-F.Luvu).
(11:24) 22-D.Henry right guard to BAL 35 for 5 yards (97-E.Obada; 95-J.Newton).
(10:44) (Shotgun) 8-L.Jackson pass deep left to 7-R.Bateman to WAS 48 for 17 yards (1-N.Igbinoghene).
(10:00) 22-D.Henry left guard to WAS 47 for 1 yard (54-B.Wagner; 32-M.Walker).
(9:16) (Shotgun) 8-L.Jackson pass short middle to 7-R.Bateman to WAS 29 for 18 yards (54-B.Wagner).
(8:30) 22-D.Henry left end to WAS 25 for 4 yards (99-C.Ferrell; 54-B.Wagner).
(7:48) (Shotgun) 8-L.Jackson left end to WAS 30 for -5 yards (99-C.Ferrell, 54-B.Wagner).
(7:07) (Shotgun) 8-L.Jackson pass short left to 80-I.Likely to WAS 21 for 9 yards (35-P.Butler).
(6:23) 9-J.Tucker 39 yard field goal is GOOD, Center-46-N.Moore, Holder-11-J.Stout.
9-J.Tucker kicks 65 yards from BAL 35 to end zone, Touchback to the WAS 30.
(6:18) 5-J.Daniels pass short middle to 17-T.McLaurin to WAS 44 for 14 yards (21-B.Stephens).
(5:53) (No Huddle, Shotgun) 30-A.Ekeler right guard to WAS 47 for 3 yards (23-T.Simpson; 98-T.Jones).
(5:14) (No Huddle, Shotgun) 5-J.Daniels sacked at WAS 44 for -3 yards (91-Y.Ngakoue).
(4:32) (No Huddle, Shotgun) 5-J.Daniels pass short middle to 86-Z.Ertz to BAL 47 for 9 yards (91-Y.Ngakoue). PENALTY on WAS-71-A.Wylie, Offensive Holding, 10 yards, enforced at WAS 44 - No Play.
(4:28) (No Huddle, Shotgun) 5-J.Daniels pass short left to 14-O.Zaccheaus to WAS 42 for 8 yards (44-M.Humphrey).
(3:48) (No Huddle, Shotgun) 5-J.Daniels pass incomplete deep right to 85-N.Brown. PENALTY on BAL-2-N.Wiggins, Defensive Pass Interference, 23 yards, enforced at WAS 42 - No Play.
(3:42) (No Huddle, Shotgun) 5-J.Daniels sacked at BAL 37 for -2 yards (sack split by 58-M.Pierce and 92-N.Madubuike).
(3:08) (No Huddle, Shotgun) 5-J.Daniels scrambles left end ran ob at BAL 33 for 4 yards (44-M.Humphrey).
(2:59) (Shotgun) 5-J.Daniels scrambles right end pushed ob at BAL 30 for 3 yards (0-R.Smith).
Timeout #2 by BAL at 02:59.
(2:52) 3-A.Seibert 49 yard field goal is GOOD, Center-69-T.Ott, Holder-10-T.Way.
3-A.Seibert kicks 65 yards from WAS 35 to end zone, Touchback to the BAL 30.
(2:48) 22-D.Henry left tackle to BAL 32 for 2 yards (54-B.Wagner).
(2:44) 22-D.Henry left end to WAS 41 for 27 yards (11-J.Chinn, 20-Q.Martin).
Timeout #2 by WAS at 02:44.
(2:00) 22-D.Henry right guard to WAS 37 for 4 yards (11-J.Chinn).
(1:56) 22-D.Henry left end to WAS 32 for 5 yards (32-M.Walker; 99-C.Ferrell).
Timeout #3 by WAS at 01:56.
(1:10) 66-B.Cleveland reported in as eligible. 8-L.Jackson left end pushed ob at WAS 30 for 2 yards (11-J.Chinn).
Timeout #3 by BAL at 01:10.
(1:05) 8-L.Jackson kneels to WAS 31 for -1 yards.
(:23) 8-L.Jackson kneels to WAS 32 for -1 yards.
END GAME"

was_bal_summary <- "Headline: Jackson outduels Daniels and Henry runs for two TDs as Ravens beat Commanders 30-23.
Summary: The Commanders' defense struggled to contain Jackson and Henry, allowing Baltimore to rack up 484 total yards and get the win. Daniels connected with Terry McLaurin on two TD passes, but did not get nearly enough help from the backfield, as Washington only got 52 yards on the ground. The masterclass by the Ravens included scoring drives of 93 and 94 yards, the second of which became the difference in the game when Henry scored from 7 yards out late in the third quarter.
Notable Performances: Lamar Jackson had 323 yards passing and 40 more rushing. Henry ran for 132 yards and his 2 TDs. Flowers had 132 yards receiving. Daniels went 24 of 35 for 269 yards. 
Injuries:  Commanders: DT Jonathan Allen was ruled out early in the fourth quarter. DE Dorance Armstrong left in the second an injury."

# Append game log and summary to training dataframe 
was_bal <- as.data.frame(cbind(was_bal_log, was_bal_summary)) %>% rename(game_log = was_bal_log, game_summary = was_bal_summary)
training <- rbind(training, was_bal)

det_min_log <- "GAME
16-W.Reichard kicks 65 yards from MIN 35 to end zone, Touchback to the DET 30.
(15:00) 5-D.Montgomery right tackle to DET 33 for 3 yards (58-J.Greenard).
(14:27) (Shotgun) 5-D.Montgomery up the middle to DET 37 for 4 yards (97-H.Phillips). PENALTY on DET-74-K.Awosika, Offensive Holding, 10 yards, enforced at DET 33 - No Play.
(14:00) (Shotgun) 16-J.Goff sacked at DET 14 for -9 yards (43-A.Van Ginkel). Penalty on DET-74-K.Awosika, Offensive Holding, declined.
(13:31) (Shotgun) 16-J.Goff pass short middle to 5-D.Montgomery to DET 33 for 19 yards (22-H.Smith; 24-C.Bynum).
(12:36) (Punt formation) Direct snap to 42-J.Reeves-Maybin. 42-J.Reeves-Maybin right end to DET 34 for 1 yard (44-J.Metellus; 30-C.Ham).
(12:31) (Shotgun) 14-S.Darnold pass short right to 18-J.Jefferson to DET 34 for no gain (44-M.Rodriguez, 45-I.Ukwu).
(11:50) 33-A.Jones left tackle for 34 yards, TOUCHDOWN.
16-W.Reichard extra point is GOOD, Center-42-A.DePaola, Holder-17-R.Wright.
16-W.Reichard kicks 65 yards from MIN 35 to end zone, Touchback to the DET 30.
(11:43) 16-J.Goff pass short right to 26-J.Gibbs pushed ob at DET 32 for 2 yards (43-A.Van Ginkel).
Timeout #1 by DET at 11:43.
(11:10) 26-J.Gibbs left tackle to DET 37 for 5 yards (99-J.Tillery; 43-A.Van Ginkel).
(10:47) (Shotgun) 16-J.Goff sacked at DET 37 for 0 yards (0-I.Pace). Penalty on DET-68-T.Decker, Offensive Holding, declined.
Timeout #1 by MIN at 10:47.
(10:18) 3-J.Fox punts 63 yards to end zone, Center-49-H.Hatten, Touchback.
(10:10) (Shotgun) 33-A.Jones right end to MIN 28 for 8 yards (46-J.Campbell).
(9:46) (No Huddle) 33-A.Jones left tackle to MIN 29 for 1 yard (44-M.Rodriguez).
(9:09) (Shotgun) 14-S.Darnold pass deep right to 18-J.Jefferson to MIN 47 for 18 yards (31-K.Joseph) [98-D.Reader].
(8:26) 33-A.Jones right end to MIN 47 for no gain (46-J.Campbell).
Timeout #2 by MIN at 08:26.
(8:03) (No Huddle, Shotgun) 14-S.Darnold scrambles up the middle to DET 47 for 6 yards (93-J.Paschal). PENALTY on DET-23-C.Davis, Defensive Holding, 5 yards, enforced at DET 47.
(7:40) 33-A.Jones right end to DET 42 for no gain (46-J.Campbell).
(6:58) (Shotgun) 14-S.Darnold pass short right to 86-J.Mundt to DET 40 for 2 yards (34-A.Anzalone).
(6:19) (Shotgun) 14-S.Darnold pass short right to 86-J.Mundt to DET 39 for 1 yard (53-T.Nowaske).
(5:39) 16-W.Reichard 57 yard field goal is GOOD, Center-42-A.DePaola, Holder-17-R.Wright.
16-W.Reichard kicks 65 yards from MIN 35 to end zone, Touchback to the DET 30.
(5:34) 16-J.Goff pass short middle to 17-T.Patrick to DET 33 for 3 yards (97-H.Phillips, 99-J.Tillery) [44-J.Metellus]. Minnesota challenged the runner was down by contact ruling, and the play was Upheld. The ruling on the field stands. (Timeout #3.)
(5:10) 16-J.Goff pass short middle to 5-D.Montgomery to DET 39 for 6 yards (22-H.Smith; 44-J.Metellus).
(4:33) 5-D.Montgomery right tackle to DET 39 for no gain (97-H.Phillips; 90-J.Bullard). DET-5-D.Montgomery was injured during the play.
(4:12) (Run formation) PENALTY on DET-74-K.Awosika, False Start, 4 yards, enforced at DET 39 - No Play.
(4:10) 3-J.Fox punts 55 yards to MIN 10, Center-49-H.Hatten. 4-B.Powell to MIN 20 for 10 yards (53-T.Nowaske).
(3:58) 32-T.Chandler right guard to MIN 21 for 1 yard (23-C.Davis). PENALTY on MIN-86-J.Mundt, Offensive Holding, 10 yards, enforced at MIN 20 - No Play.
(3:36) (Shotgun) 32-T.Chandler left guard to MIN 11 for 1 yard (34-A.Anzalone, 95-P.O'Connor).
(3:06) (No Huddle, Shotgun) 14-S.Darnold pass incomplete short left to 18-J.Jefferson (0-T.Arnold) [54-A.McNeill]. PENALTY on MIN-67-E.Ingram, Offensive Holding, 5 yards, enforced at MIN 11 - No Play.
(2:52) (Shotgun) 14-S.Darnold pass short middle to 83-J.Nailor to MIN 18 for 12 yards (21-A.Robertson).
(2:11) (Shotgun) PENALTY on MIN-56-G.Bradbury, False Start, 5 yards, enforced at MIN 18 - No Play.
(1:51) (Shotgun) 14-S.Darnold pass short right to 3-J.Addison to MIN 23 for 10 yards (23-C.Davis).
(1:01) 17-R.Wright punts 60 yards to DET 17, Center-42-A.DePaola. 11-K.Raymond to DET 31 for 14 yards (26-Th.Jackson; 11-T.Sherfield).
(:51) 26-J.Gibbs left guard to DET 35 for 4 yards (91-P.Jones).
(:13) (Shotgun) 16-J.Goff pass short left to 14-A.St. Brown to DET 43 for 8 yards (24-C.Bynum).
END QUARTER 1
(15:00) 26-J.Gibbs right guard to DET 47 for 4 yards (0-I.Pace).
(14:30) (Shotgun) 16-J.Goff pass short left to 26-J.Gibbs to MIN 45 for 8 yards (24-C.Bynum).
(13:51) 26-J.Gibbs right end for 45 yards, TOUCHDOWN.
39-J.Bates extra point is GOOD, Center-49-H.Hatten, Holder-3-J.Fox.
39-J.Bates kicks 68 yards from DET 35 to MIN -3. 27-C.Akers to MIN 24 for 27 yards (51-B.Niemann). PENALTY on DET-15-E.Rakestraw, Illegal Formation, 5 yards, enforced at MIN 24.
(13:37) (Shotgun) 14-S.Darnold scrambles left guard to MIN 48 for 19 yards (31-K.Joseph).
(12:51) 33-A.Jones right end to MIN 48 for no gain (93-J.Paschal, 23-C.Davis). DET-93-J.Paschal was injured during the play.
(12:20) (Shotgun) 14-S.Darnold pass incomplete deep left to 18-J.Jefferson. PENALTY on MIN, Illegal Formation, 4 yards, enforced at MIN 48 - No Play.
(12:16) (Shotgun) 14-S.Darnold pass short middle to 3-J.Addison to MIN 49 for 5 yards (32-B.Branch). ** Injury Update: DET-93-J.Paschal has returned to the game.
(11:35) (Shotgun) 14-S.Darnold pass incomplete short left to 83-J.Nailor (32-B.Branch).
(11:31) 17-R.Wright punts 34 yards to DET 17, Center-42-A.DePaola, fair catch by 11-K.Raymond.
(11:24) 16-J.Goff pass deep middle to 14-A.St. Brown to DET 34 for 17 yards (22-H.Smith). ** Injury Update: DET-5-D.Montgomery has returned to the game. PENALTY on MIN-0-I.Pace, Roughing the Passer, 15 yards, enforced at DET 34.
(11:04) 5-D.Montgomery left tackle to MIN 46 for 5 yards (99-J.Tillery, 0-I.Pace).
(10:27) 16-J.Goff pass short left to 14-A.St. Brown to MIN 34 for 12 yards (43-A.Van Ginkel) [44-J.Metellus].
(9:47) PENALTY on DET-5-D.Montgomery, False Start, 5 yards, enforced at MIN 34 - No Play.
(9:25) 5-D.Montgomery left guard to MIN 35 for 4 yards (44-J.Metellus).
(8:44) (Shotgun) 16-J.Goff pass deep middle to 14-A.St. Brown for 35 yards, TOUCHDOWN.
39-J.Bates extra point is GOOD, Center-49-H.Hatten, Holder-3-J.Fox.
39-J.Bates kicks 65 yards from DET 35 to MIN 0. 27-C.Akers to MIN 25 for 25 yards (33-S.Vaki, 53-T.Nowaske).
(8:32) 14-S.Darnold pass short left to 18-J.Jefferson to MIN 40 for 15 yards (31-K.Joseph, 0-T.Arnold).
(7:52) 33-A.Jones left guard to MIN 43 for 3 yards (98-D.Reader).
(7:10) 14-S.Darnold pass short right to 33-A.Jones pushed ob at DET 45 for 12 yards (31-K.Joseph).
(6:29) 33-A.Jones left guard to DET 43 for 2 yards (98-D.Reader).
(5:47) 14-S.Darnold pass short right intended for 3-J.Addison INTERCEPTED by 32-B.Branch at DET 28. 32-B.Branch to DET 28 for no gain (3-J.Addison).
(5:39) 26-J.Gibbs left tackle to DET 36 for 8 yards (2-S.Gilmore).
(5:01) 16-J.Goff pass short middle to 26-J.Gibbs to MIN 46 for 18 yards (0-I.Pace; 22-H.Smith).
(4:22) 26-J.Gibbs left guard to MIN 38 for 8 yards (22-H.Smith; 24-C.Bynum).
(3:36) 16-J.Goff pass short left to 14-A.St. Brown to MIN 35 for 3 yards (2-S.Gilmore).
(2:57) 5-D.Montgomery right end to MIN 36 for -1 yards (90-J.Bullard).
(2:15) (Shotgun) 16-J.Goff pass deep middle to 87-S.LaPorta to MIN 11 for 25 yards (0-I.Pace) [99-J.Tillery].
(2:00) 26-J.Gibbs right end to MIN 9 for 2 yards (7-B.Murphy).
(1:15) (Shotgun) 5-D.Montgomery up the middle to MIN 8 for 1 yard (58-J.Greenard; 99-J.Tillery).
(:29) (Shotgun) 26-J.Gibbs up the middle for 8 yards, TOUCHDOWN.
Timeout #2 by DET at 00:29.
39-J.Bates extra point is GOOD, Center-49-H.Hatten, Holder-3-J.Fox.
39-J.Bates kicks 65 yards from DET 35 to landing zone to end zone, Touchback to the MIN 20.
(:23) (Shotgun) 14-S.Darnold pass incomplete short left to 86-J.Mundt.
(:17) (Shotgun) 33-A.Jones left guard to MIN 37 for 17 yards (34-A.Anzalone).
END QUARTER 2
39-J.Bates kicks 65 yards from DET 35 to landing zone to end zone, Touchback to the MIN 20.
(15:00) (Shotgun) 14-S.Darnold pass short left to 18-J.Jefferson pushed ob at MIN 35 for 15 yards (0-T.Arnold).
(14:25) (Shotgun) 14-S.Darnold pass short right to 18-J.Jefferson to MIN 35 for no gain (44-M.Rodriguez).
(13:42) (Shotgun) 14-S.Darnold pass incomplete short right. Penalty on MIN-86-J.Mundt, Offensive Holding, offsetting, enforced at MIN 35 - No Play. Penalty on DET-21-A.Robertson, Defensive Holding, offsetting. Penalty on MIN-75-B.O'Neill, Offensive Holding, offsetting.
(13:34) (Shotgun) 14-S.Darnold pass short right to 18-J.Jefferson to MIN 43 for 8 yards (23-C.Davis). DET-93-J.Paschal was injured during the play.
(12:53) (Shotgun) 14-S.Darnold pass short left to 83-J.Nailor to DET 46 for 11 yards (23-C.Davis). FUMBLES (23-C.Davis), RECOVERED by DET-32-B.Branch at DET 43. 32-B.Branch for 57 yards, TOUCHDOWN. The Replay Official reviewed the runner was inbounds ruling, and the play was REVERSED. (Shotgun) 14-S.Darnold pass short left to 83-J.Nailor pushed ob at DET 46 for 11 yards (23-C.Davis).
(12:34) 33-A.Jones left tackle to DET 37 for 9 yards (31-K.Joseph; 44-M.Rodriguez).
(12:14) (No Huddle) 33-A.Jones up the middle to DET 27 for 10 yards (31-K.Joseph).
(11:37) 14-S.Darnold pass short right to 86-J.Mundt to DET 25 for 2 yards (32-B.Branch). ** Injury Update: DET-93-J.Paschal has returned to the game.
(10:49) (Shotgun) 14-S.Darnold pass incomplete short middle.
(10:47) (Shotgun) 14-S.Darnold pass deep left to 18-J.Jefferson for 25 yards, TOUCHDOWN.
16-W.Reichard extra point is GOOD, Center-42-A.DePaola, Holder-17-R.Wright.
16-W.Reichard kicks 65 yards from MIN 35 to end zone, Touchback to the DET 30.
(10:42) 16-J.Goff pass short left to 5-D.Montgomery ran ob at DET 44 for 14 yards (44-J.Metellus).
(10:11) 5-D.Montgomery left guard to 50 for 6 yards (0-I.Pace; 90-J.Bullard).
(9:36) (Shotgun) 5-D.Montgomery left end to 50 for no gain (58-J.Greenard, 44-J.Metellus). PENALTY on DET-60-G.Glasgow, Offensive Holding, 10 yards, enforced at 50 - No Play.
(9:11) (Shotgun) 16-J.Goff pass short right to 11-K.Raymond ran ob at DET 45 for 5 yards.
(8:33) (Shotgun) 16-J.Goff pass short left to 11-K.Raymond pushed ob at MIN 42 for 13 yards (2-S.Gilmore).
(7:52) 16-J.Goff pass incomplete short left to 87-S.LaPorta (90-J.Bullard).
(7:48) (Shotgun) PENALTY on DET-58-P.Sewell, False Start, 5 yards, enforced at MIN 42 - No Play.
Timeout #1 by DET at 07:48.
(7:48) (Shotgun) 16-J.Goff pass deep middle to 17-T.Patrick to MIN 25 for 22 yards (54-K.Grugier-Hill).
(7:10) (Shotgun) 16-J.Goff pass short left to 9-J.Williams to MIN 29 for -4 yards (43-A.Van Ginkel).
(6:36) 5-D.Montgomery up the middle to MIN 21 for 8 yards (91-P.Jones).
(5:50) (Shotgun) 16-J.Goff pass short left to 11-K.Raymond for 21 yards, TOUCHDOWN.
39-J.Bates extra point is GOOD, Center-49-H.Hatten, Holder-3-J.Fox.
39-J.Bates kicks 65 yards from DET 35 to end zone, Touchback to the MIN 30.
(5:43) 14-S.Darnold pass deep left to 86-J.Mundt pushed ob at DET 40 for 30 yards (44-M.Rodriguez) [91-L.Onwuzurike]. PENALTY on MIN-32-T.Chandler, Offensive Holding, 10 yards, enforced at MIN 30 - No Play.
(5:14) (Shotgun) 14-S.Darnold pass short left to 84-J.Oliver pushed ob at MIN 25 for 5 yards (34-A.Anzalone).
(4:41) (No Huddle, Shotgun) 14-S.Darnold pass deep right to 83-J.Nailor to DET 42 for 33 yards (31-K.Joseph).
(3:51) (Shotgun) 14-S.Darnold scrambles left end pushed ob at DET 35 for 7 yards (0-T.Arnold). PENALTY on MIN-3-J.Addison, Offensive Offside, 5 yards, enforced at DET 42 - No Play.
(3:23) 32-T.Chandler left guard to DET 44 for 3 yards (46-J.Campbell).
(2:40) (Shotgun) 14-S.Darnold pass short left to 86-J.Mundt to DET 41 for 3 yards (34-A.Anzalone).
(1:56) (Shotgun) 14-S.Darnold pass short left to 33-A.Jones to DET 24 for 17 yards (44-M.Rodriguez).
(1:09) 33-A.Jones left tackle to DET 21 for 3 yards (46-J.Campbell; 44-M.Rodriguez).
(:29) 14-S.Darnold sacked at DET 29 for -8 yards (93-J.Paschal).
END QUARTER 3
(15:00) (Shotgun) 14-S.Darnold scrambles right end ran ob at DET 24 for 5 yards (21-A.Robertson).
(14:28) 16-W.Reichard 42 yard field goal is GOOD, Center-42-A.DePaola, Holder-17-R.Wright.
16-W.Reichard kicks 65 yards from MIN 35 to end zone, Touchback to the DET 30.
(14:24) 26-J.Gibbs left tackle to DET 35 for 5 yards (43-A.Van Ginkel).
(13:46) 26-J.Gibbs right tackle to DET 38 for 3 yards (97-H.Phillips).
(13:08) 16-J.Goff pass deep middle to 14-A.St. Brown to MIN 46 for 16 yards (22-H.Smith).
(12:27) 26-J.Gibbs left tackle to MIN 44 for 2 yards (1-S.Griffin, 0-I.Pace).
(11:50) (Shotgun) 16-J.Goff sacked at DET 47 for -9 yards (58-J.Greenard). FUMBLES (58-J.Greenard) [58-J.Greenard], and recovers at DET 46.
(11:04) (Shotgun) 16-J.Goff pass short middle to 14-A.St. Brown to MIN 47 for 7 yards (44-J.Metellus, 0-I.Pace).
(10:19) 3-J.Fox punts 38 yards to MIN 9, Center-49-H.Hatten, downed by DET-29-K.Vildor.
(10:10) 14-S.Darnold pass deep right to 3-J.Addison to DET 40 for 51 yards (32-B.Branch).
(9:22) (Shotgun) 14-S.Darnold pass short right to 33-A.Jones to DET 46 for -6 yards (34-A.Anzalone).
(8:45) (No Huddle, Shotgun) 14-S.Darnold scrambles right end to DET 37 for 9 yards (32-B.Branch). PENALTY on DET-23-C.Davis, Illegal Contact, 5 yards, enforced at DET 37.
(8:18) (Shotgun) 18-J.Jefferson scrambles left end to DET 29 for 3 yards (34-A.Anzalone; 95-P.O'Connor).
(7:30) 14-S.Darnold sacked at DET 29 for 0 yards (46-J.Campbell).
(6:45) (Shotgun) 14-S.Darnold sacked at DET 30 for -1 yards (44-M.Rodriguez).
(6:09) 16-W.Reichard 48 yard field goal is GOOD, Center-42-A.DePaola, Holder-17-R.Wright.
16-W.Reichard kicks 65 yards from MIN 35 to end zone, Touchback to the DET 30.
(6:04) 16-J.Goff pass incomplete short middle to 5-D.Montgomery (90-J.Bullard).
(6:00) 5-D.Montgomery left tackle to DET 35 for 5 yards (44-J.Metellus; 24-C.Bynum). FUMBLES (44-J.Metellus), RECOVERED by MIN-0-I.Pace at DET 36. 0-I.Pace for 36 yards, TOUCHDOWN. Penalty on DET-60-G.Glasgow, Offensive Holding, declined.
TWO-POINT CONVERSION ATTEMPT. 14-S.Darnold pass to 3-J.Addison is incomplete. ATTEMPT FAILS.
16-W.Reichard kicks 65 yards from MIN 35 to end zone, Touchback to the DET 30.
(5:50) 26-J.Gibbs left guard to DET 34 for 4 yards (0-I.Pace; 97-H.Phillips).
(5:13) 16-J.Goff pass incomplete deep left to 11-K.Raymond.
(5:07) (Shotgun) 16-J.Goff sacked at DET 22 for -12 yards (43-A.Van Ginkel). FUMBLES (43-A.Van Ginkel) [43-A.Van Ginkel], recovered by DET-77-F.Ragnow at DET 20.
(4:25) 3-J.Fox punts 63 yards to MIN 17, Center-49-H.Hatten. 4-B.Powell to MIN 22 for 5 yards (30-K.Dorsey).
(4:16) 33-A.Jones left tackle to MIN 27 for 5 yards (93-J.Paschal).
(3:31) 33-A.Jones left end to MIN 28 for 1 yard (53-T.Nowaske, 46-J.Campbell).
(2:46) (Shotgun) 14-S.Darnold pass incomplete deep right to 18-J.Jefferson.
(2:41) 17-R.Wright punts 51 yards to DET 21, Center-42-A.DePaola. 11-K.Raymond to DET 30 for 9 yards (11-T.Sherfield).
(2:32) 26-J.Gibbs right guard to DET 34 for 4 yards (0-I.Pace; 44-J.Metellus).
(2:00) 26-J.Gibbs right tackle to DET 48 for 14 yards (7-B.Murphy).
(1:25) 16-J.Goff pass short right to 26-J.Gibbs pushed ob at MIN 36 for 16 yards (44-J.Metellus).
(1:18) 16-J.Goff pass short right to 14-A.St. Brown to MIN 22 for 14 yards (22-H.Smith; 2-S.Gilmore).
(1:07) 26-J.Gibbs right end to MIN 22 for no gain (90-J.Bullard; 58-J.Greenard).
Timeout #1 by MIN at 01:07.
(1:02) 16-J.Goff kneels to MIN 25 for -3 yards.
Timeout #2 by MIN at 01:02.
(1:00) 16-J.Goff kneels to MIN 26 for -1 yards.
Timeout #3 by MIN at 01:00.
(:19) 39-J.Bates 44 yard field goal is GOOD, Center-49-H.Hatten, Holder-3-J.Fox.
Timeout #2 by DET at 00:19.
39-J.Bates kicks 65 yards from DET 35 to end zone, Touchback to the MIN 30.
(:15) (Shotgun) 14-S.Darnold pass short right to 83-J.Nailor to 50 for 20 yards (34-A.Anzalone).
(:02) (No Huddle) 14-S.Darnold spiked the ball to stop the clock. PENALTY on MIN-71-C.Darrisaw, Illegal Formation, 5 yards, enforced at 50 - No Play.
(:01) (Shotgun) 14-S.Darnold sacked at MIN 39 for -6 yards (53-T.Nowaske).
END GAME"

det_min_summary <- "Headline: Lions top Vikings 31-29 on late FG to cap NFC North thriller
Summary: The Lions played a second quarter for the ages. They had three scoring drives that all covered at least 69 yards on the strength of some shrewd play-calling and Goff beating blitz after blitz, allowing them to build up a 2-score lead going into halftime. In the fourth quarter, Ivan Pace Jr. returned David Montgomery’s fumble 36 yards for a touchdown with 5:50 remaining to give the Vikings a one-point lead after they trailed 21-10 at halftime, but Sam Darnold's crucial 2-point conversion pass sailed past Justin Jefferson. With the help of Jammer Gibbs, Jared Goff and the Lions then went 48 yards in four plays to get in range for their kicker while forcing the Vikings to burn their timeouts. Jake Bates kicked a 44-yard field goal with 15 seconds left to seal the 31-29 victory in a back-and-forth game. The Vikings then reached midfield on their last-gasp possession, but an illegal formation penalty on left tackle Christian Darrisaw pushed them out of field goal range. Darnold was sacked to end the game to give the Lions the win.
Notable Performances: Jahmyr Gibbs rushed for 116 yards, totaling 150 yards, and two of Detroit's three second-quarter touchdowns.  Goff went 22 for 25 for 280 yards with touchdown passes to Amon-Ra St. Brown and Kalif Raymond and no turnovers. Aaron Jones rushed for 93 yards and a touchdown for Minnesota. Jefferson had 81 yards receiving and a score. Reichard made three field goals, including a 57-yarder. Darnold went 22 for 27 for 259 yards, and threw one interception to Brian Branch.
Injuries: Lions: Montgomery left in the first quarter but returned before halftime."

# Append game log and summary to training dataframe 
det_min <- as.data.frame(cbind(det_min_log, det_min_summary)) %>% rename(game_log = det_min_log, game_summary = det_min_summary)
training <- rbind(training, det_min)

sea_atl_log <- "GAME
6-Y.Koo kicks 64 yards from ATL 35 to SEA 1. 1-L.Shenault to SEA 24 for 23 yards (26-A.Williams).
(14:55) 7-G.Smith pass incomplete deep left to 11-J.Smith-Njigba.
(14:50) (No Huddle, Shotgun) 7-G.Smith pass incomplete deep right to 14-D.Metcalf. PENALTY on ATL-24-A.Terrell, Defensive Pass Interference, 17 yards, enforced at SEA 24 - No Play.
(14:45) (Shotgun) 9-K.Walker right end pushed ob at SEA 49 for 8 yards (20-D.Alford).
(14:14) (No Huddle, Shotgun) 9-K.Walker right end pushed ob at ATL 46 for 5 yards (24-A.Terrell).
(13:38) (Shotgun) 7-G.Smith pass deep left to 14-D.Metcalf to ATL 24 for 22 yards (31-J.Simmons).
(13:08) (No Huddle, Shotgun) 9-K.Walker left tackle to ATL 24 for no gain (55-K.Elliss).
(12:26) (Shotgun) 7-G.Smith pass short middle to 11-J.Smith-Njigba to ATL 19 for 5 yards (3-J.Bates).
(11:45) (Shotgun) 7-G.Smith pass short left to 16-T.Lockett to ATL 13 for 6 yards (31-J.Simmons).
(11:02) (Shotgun) 9-K.Walker right end for 13 yards, TOUCHDOWN NULLIFIED by Penalty. PENALTY on SEA-88-A.Barner, Offensive Holding, 10 yards, enforced at ATL 13 - No Play.
(10:55) (Shotgun) 7-G.Smith pass short right to 11-J.Smith-Njigba to ATL 20 for 3 yards (20-D.Alford).
(10:18) (Shotgun) 7-G.Smith pass incomplete deep right to 14-D.Metcalf (24-A.Terrell).
(10:14) (Shotgun) 7-G.Smith pass incomplete deep left to 16-T.Lockett [97-G.Jarrett].
(10:09) 5-J.Myers 38 yard field goal is GOOD, Center-41-C.Stoll, Holder-4-M.Dickson.
5-J.Myers kicks 62 yards from SEA 35 to ATL 3. 34-R.McCloud to ATL 25 for 22 yards (38-B.Russell).
(9:58) (Shotgun) 18-K.Cousins pass short right to 34-R.McCloud pushed ob at ATL 31 for 6 yards (28-N.Pritchett).
(9:28) (Shotgun) 18-K.Cousins pass short right to 8-K.Pitts to ATL 44 for 13 yards (17-J.Baker).
(8:58) (No Huddle, Shotgun) PENALTY on ATL-64-R.Neuzil, False Start, 5 yards, enforced at ATL 44 - No Play.
(8:48) (Shotgun) 18-K.Cousins pass short right to 8-K.Pitts to ATL 49 for 10 yards (17-J.Baker).
(8:28) (No Huddle, Shotgun) 18-K.Cousins pass incomplete short left to 7-B.Robinson.
(8:23) (Shotgun) PENALTY on ATL-70-Ja.Matthews, False Start, 5 yards, enforced at ATL 49 - No Play.
(8:23) (Shotgun) PENALTY on ATL-8-K.Pitts, False Start, 5 yards, enforced at ATL 44 - No Play.
(8:23) (Shotgun) 18-K.Cousins pass short middle to 8-K.Pitts to ATL 47 for 8 yards (8-C.Bryant).
(7:44) 13-B.Pinion punts 41 yards to SEA 12, Center-49-L.McCullough, fair catch by 33-D.Williams.
(7:36) (Shotgun) PENALTY on SEA-65-M.Jerrell, False Start, 5 yards, enforced at SEA 12 - No Play.
(7:36) (Shotgun) 7-G.Smith pass short left to 14-D.Metcalf pushed ob at SEA 18 for 11 yards (20-D.Alford).
(7:15) (No Huddle, Shotgun) 7-G.Smith pass short middle to 9-K.Walker to SEA 25 for 7 yards (55-K.Elliss, 53-N.Landman).
(6:35) 7-G.Smith pass deep left to 87-N.Fant pushed ob at SEA 46 for 21 yards (31-J.Simmons) [55-K.Elliss].
(6:00) (Shotgun) 9-K.Walker right guard to ATL 49 for 5 yards (17-A.Ebiketie).
(5:36) (No Huddle, Shotgun) 9-K.Walker right guard to ATL 42 for 7 yards (53-N.Landman; 55-K.Elliss).
(4:57) (Shotgun) 26-Z.Charbonnet left end to ATL 43 for -1 yards (17-A.Ebiketie).
(4:16) (Shotgun) 7-G.Smith scrambles right guard to ATL 41 for 2 yards (55-K.Elliss; 97-G.Jarrett).
(3:31) (No Huddle, Shotgun) 7-G.Smith FUMBLES (Aborted) at ATL 47, and recovers at ATL 49.
(2:47) 4-M.Dickson punts 37 yards to ATL 12, Center-41-C.Stoll, out of bounds.
(2:37) 7-B.Robinson right end pushed ob at ATL 21 for 9 yards (20-J.Love).
(2:12) (No Huddle, Shotgun) 7-B.Robinson right tackle to ATL 26 for 5 yards (97-J.Hankins; 17-J.Baker).
(1:51) (No Huddle) 7-B.Robinson right guard to ATL 30 for 4 yards (90-Ja.Reed).
(1:11) (Shotgun) 18-K.Cousins pass short left to 1-D.Mooney to ATL 41 for 11 yards (28-N.Pritchett).
(:28) (Shotgun) 25-T.Allgeier right tackle to ATL 41 for no gain (0-T.Dodson, 98-R.Robertson-Harris).
END QUARTER 1
(15:00) (Shotgun) 18-K.Cousins pass short middle to 8-K.Pitts to SEA 49 for 10 yards (8-C.Bryant).
(14:21) (Shotgun) 25-T.Allgeier left end to SEA 39 for 10 yards (8-C.Bryant, 21-D.Witherspoon).
(13:36) (Shotgun) 18-K.Cousins pass short left to 34-R.McCloud pushed ob at SEA 36 for 3 yards (17-J.Baker).
(12:57) (Shotgun) 18-K.Cousins pass incomplete short middle to 1-D.Mooney.
(12:52) (Shotgun) 18-K.Cousins pass incomplete deep right to 34-R.McCloud.
(12:48) 6-Y.Koo 54 yard field goal is No Good, Wide Left, Center-49-L.McCullough, Holder-13-B.Pinion.
(12:43) (Shotgun) 26-Z.Charbonnet right guard to SEA 45 for 1 yard (90-D.Onyemata; 53-N.Landman).
(12:05) 26-Z.Charbonnet right tackle to SEA 47 for 2 yards (24-A.Terrell).
(11:21) (Shotgun) 7-G.Smith pass short middle to 87-N.Fant to ATL 25 for 28 yards (21-M.Hughes).
(10:33) (Shotgun) 7-G.Smith pass short left to 88-A.Barner to ATL 20 for 5 yards (21-M.Hughes).
(9:59) (No Huddle, Shotgun) 9-K.Walker right tackle for 20 yards, TOUCHDOWN.
5-J.Myers extra point is GOOD, Center-41-C.Stoll, Holder-4-M.Dickson.
5-J.Myers kicks 65 yards from SEA 35 to end zone, Touchback to the ATL 30.
(9:52) (Shotgun) 7-B.Robinson left end to SEA 44 for 26 yards (20-J.Love).
(9:06) (Shotgun) 7-B.Robinson right tackle to SEA 39 for 5 yards (97-J.Hankins).
(8:25) (Shotgun) 7-B.Robinson left guard to SEA 32 for 7 yards (24-K.Wallace).
(7:56) (No Huddle, Shotgun) 7-B.Robinson right tackle to SEA 27 for 5 yards (91-B.Murphy). ATL-64-R.Neuzil was injured during the play.
(7:25) 25-T.Allgeier left end to SEA 24 for 3 yards (90-Ja.Reed).
(6:58) (No Huddle, Shotgun) 18-K.Cousins pass short middle to 5-D.London to SEA 12 for 12 yards (8-C.Bryant).
(6:21) (Shotgun) 7-B.Robinson left end to SEA 7 for 5 yards (29-J.Jobe; 20-J.Love).
(5:42) (Shotgun) 7-B.Robinson right tackle to SEA 5 for 2 yards (20-J.Love; 8-C.Bryant).
(5:22) (No Huddle, Shotgun) 7-B.Robinson right tackle for 5 yards, TOUCHDOWN.
6-Y.Koo extra point is GOOD, Center-49-L.McCullough, Holder-13-B.Pinion.
6-Y.Koo kicks 65 yards from ATL 35 to end zone, Touchback to the SEA 30.
(5:18) (Shotgun) 11-J.Smith-Njigba pass deep right to 14-D.Metcalf to ATL 35 for 35 yards (24-A.Terrell) [50-J.Smith-Williams].
(4:32) (Shotgun) 7-G.Smith sacked at ATL 41 for -6 yards (50-J.Smith-Williams).
(3:56) (Shotgun) PENALTY on SEA-64-C.Haynes, False Start, 5 yards, enforced at ATL 41 - No Play.
(3:41) (Shotgun) 7-G.Smith pass short right to 26-Z.Charbonnet to SEA 49 for -5 yards (97-G.Jarrett, 55-K.Elliss).
(2:58) (Shotgun) 7-G.Smith scrambles right end ran ob at ATL 46 for 5 yards (15-M.Judon).
(2:22) 4-M.Dickson punts 36 yards to ATL 10, Center-41-C.Stoll, fair catch by 26-A.Williams.
(2:15) (Shotgun) 25-T.Allgeier right tackle pushed ob at ATL 34 for 24 yards (20-J.Love, 91-B.Murphy). ** Injury Update: ATL-64-R.Neuzil has returned to the game.
(2:00) (Shotgun) 7-B.Robinson right guard to ATL 41 for 7 yards (0-T.Dodson; 20-J.Love).
(1:39) (No Huddle, Shotgun) 18-K.Cousins sacked at ATL 34 for -7 yards (99-L.Williams).
Timeout #1 by SEA at 01:30.
(1:30) (Shotgun) 18-K.Cousins pass short left to 8-K.Pitts to ATL 41 for 7 yards (21-D.Witherspoon; 8-C.Bryant).
(1:20) 13-B.Pinion punts 45 yards to SEA 14, Center-49-L.McCullough. 33-D.Williams to SEA 32 for 18 yards (89-C.Woerner).
Timeout #2 by SEA at 01:20.
(1:07) (Shotgun) 7-G.Smith pass short right to 16-T.Lockett to SEA 47 for 15 yards (31-J.Simmons).
(:49) (No Huddle, Shotgun) 7-G.Smith pass deep left to 16-T.Lockett to ATL 37 for 16 yards (22-C.Phillips).
(:30) (No Huddle, Shotgun) 7-G.Smith pass short left to 87-N.Fant pushed ob at ATL 26 for 11 yards (31-J.Simmons).
(:24) (Shotgun) 7-G.Smith pass short right to 87-N.Fant pushed ob at ATL 21 for 5 yards (20-D.Alford).
(:17) (Shotgun) 7-G.Smith pass incomplete short right [91-D.Harris]. PENALTY on SEA-7-G.Smith, Intentional Grounding, 10 yards, enforced at ATL 21.
(:10) (Shotgun) 7-G.Smith pass deep middle to 14-D.Metcalf for 31 yards, TOUCHDOWN.
Timeout #3 by SEA at 00:10.
5-J.Myers extra point is GOOD, Center-41-C.Stoll, Holder-4-M.Dickson.
5-J.Myers kicks 65 yards from SEA 35 to end zone, Touchback to the ATL 30.
(:04) 18-K.Cousins kneels to ATL 29 for -1 yards.
END QUARTER 2
Timeout #1 by ATL at 00:10.
5-J.Myers kicks 65 yards from SEA 35 to ATL 0. 26-A.Williams to ATL 21 for 21 yards (1-L.Shenault).
(14:55) (Shotgun) 7-B.Robinson left tackle to ATL 21 for no gain (99-L.Williams, 17-J.Baker).
(14:14) (Shotgun) 18-K.Cousins pass short right to 7-B.Robinson pushed ob at ATL 47 for 26 yards (8-C.Bryant) [90-Ja.Reed].
(13:40) (Shotgun) 7-B.Robinson right guard to SEA 46 for 7 yards (8-C.Bryant; 20-J.Love).
(13:04) (Shotgun) 25-T.Allgeier right tackle to SEA 47 for -1 yards (90-Ja.Reed).
(12:41) (No Huddle, Shotgun) 18-K.Cousins pass short left to 1-D.Mooney to SEA 42 for 5 yards (21-D.Witherspoon).
(12:03) (Shotgun) 18-K.Cousins pass short right to 25-T.Allgeier to SEA 33 for 9 yards (8-C.Bryant, 97-J.Hankins). ATL-65-M.Bergeron was injured during the play.
(11:42) (Shotgun) 18-K.Cousins pass short right to 5-D.London to SEA 25 for 8 yards (29-J.Jobe, 17-J.Baker).
(11:10) (Shotgun) 7-B.Robinson left tackle to SEA 16 for 9 yards (20-J.Love; 8-C.Bryant).
(10:28) (Shotgun) 7-B.Robinson left guard to SEA 18 for -2 yards (91-B.Murphy, 98-R.Robertson-Harris).
(9:49) (Shotgun) 18-K.Cousins pass short left to 1-D.Mooney pushed ob at SEA 14 for 4 yards (29-J.Jobe).
(9:15) (Shotgun) 7-B.Robinson left end to SEA 15 for -1 yards (55-D.Jones, 29-J.Jobe).
(8:34) (Shotgun) 18-K.Cousins pass short middle to 5-D.London to SEA 6 for 9 yards (8-C.Bryant) [55-D.Jones].
(8:11) (No Huddle, Shotgun) 7-B.Robinson left end to SEA 5 for 1 yard (0-T.Dodson; 90-Ja.Reed).
(7:47) (No Huddle, Shotgun) 18-K.Cousins pass short right to 5-D.London for 5 yards, TOUCHDOWN.
6-Y.Koo extra point is GOOD, Center-49-L.McCullough, Holder-13-B.Pinion.
13-B.Pinion kicks 62 yards from ATL 35 to SEA 3. 33-D.Williams pushed ob at SEA 37 for 34 yards (32-K.King).
(7:37) (Shotgun) PENALTY on ATL-15-M.Judon, Neutral Zone Infraction, 5 yards, enforced at SEA 37 - No Play.
(7:37) (Shotgun) 9-K.Walker left tackle to SEA 44 for 2 yards (97-G.Jarrett; 90-D.Onyemata).
(7:03) (Shotgun) 9-K.Walker right guard to SEA 47 for 3 yards (53-N.Landman).
(6:23) (No Huddle, Shotgun) 7-G.Smith pass incomplete deep left to 16-T.Lockett (21-M.Hughes).
(6:14) (Shotgun) 7-G.Smith pass short right to 11-J.Smith-Njigba pushed ob at SEA 48 for 1 yard (21-M.Hughes).
(5:41) (No Huddle, Shotgun) 7-G.Smith scrambles right guard to ATL 44 for 8 yards (55-K.Elliss, 15-M.Judon).
(5:03) 26-Z.Charbonnet up the middle to ATL 37 for 7 yards (24-A.Terrell).
(4:22) (Shotgun) 7-G.Smith pass incomplete deep left to 11-J.Smith-Njigba (20-D.Alford).
(4:16) 9-K.Walker right tackle to ATL 32 for 5 yards (17-A.Ebiketie).
(3:32) (Shotgun) 7-G.Smith pass incomplete deep left to 16-T.Lockett. PENALTY on ATL-91-D.Harris, Roughing the Passer, 15 yards, enforced at ATL 32 - No Play.
(3:23) (Shotgun) 7-G.Smith pass deep right to 9-K.Walker for 17 yards, TOUCHDOWN.
5-J.Myers extra point is GOOD, Center-41-C.Stoll, Holder-4-M.Dickson.
5-J.Myers kicks 65 yards from SEA 35 to end zone, Touchback to the ATL 30.
(3:18) 18-K.Cousins pass incomplete short middle to 1-D.Mooney (55-D.Jones) [55-D.Jones].
(3:12) (Shotgun) 18-K.Cousins sacked at ATL 21 for -9 yards (55-D.Jones).
(2:39) (No Huddle, Shotgun) PENALTY on ATL-68-K.Hinton, False Start, 5 yards, enforced at ATL 21 - No Play.
(2:27) (Shotgun) 18-K.Cousins pass short right to 8-K.Pitts to ATL 27 for 11 yards (21-D.Witherspoon).
(1:52) 13-B.Pinion punts 47 yards to SEA 26, Center-49-L.McCullough, fair catch by 33-D.Williams.
(1:44) (Shotgun) 26-Z.Charbonnet right tackle to SEA 28 for 2 yards (97-G.Jarrett). ATL-50-J.Smith-Williams was injured during the play.
(1:15) (Shotgun) 7-G.Smith pass incomplete deep left to 14-D.Metcalf (24-A.Terrell).
(1:08) (Shotgun) 7-G.Smith pass incomplete short left to 11-J.Smith-Njigba [96-Z.Harrison]. PENALTY on ATL-53-N.Landman, Illegal Use of Hands, 5 yards, enforced at SEA 28 - No Play.
(1:04) (Shotgun) 9-K.Walker left guard to SEA 36 for 3 yards (17-A.Ebiketie; 55-K.Elliss).
(:29) 7-G.Smith pass incomplete short right to 19-J.Bobo.
(:22) (Shotgun) 7-G.Smith pass incomplete deep left to 14-D.Metcalf (31-J.Simmons). ** Injury Update: ATL-50-J.Smith-Williams has returned to the game.
(:17) 4-M.Dickson punts 41 yards to ATL 23, Center-41-C.Stoll, fair catch by 26-A.Williams.
(:10) (Shotgun) 18-K.Cousins pass short left to 7-B.Robinson pushed ob at ATL 31 for 8 yards (17-J.Baker).
END QUARTER 3
(15:00) (Shotgun) 7-B.Robinson left end to ATL 32 for 1 yard (97-J.Hankins; 0-T.Dodson).
(14:27) (Shotgun) 7-B.Robinson up the middle to ATL 33 for 1 yard (91-B.Murphy; 99-L.Williams).
(13:58) (No Huddle, Shotgun) 18-K.Cousins pass short right to 8-K.Pitts to ATL 39 for 6 yards (21-D.Witherspoon) [99-L.Williams].
(13:33) (No Huddle, Shotgun) 18-K.Cousins pass incomplete deep right to 5-D.London. PENALTY on SEA-29-J.Jobe, Defensive Pass Interference, 12 yards, enforced at ATL 39 - No Play.
(13:28) (Shotgun) 7-B.Robinson right tackle to SEA 48 for 1 yard (53-B.Mafe, 0-T.Dodson).
(13:04) (No Huddle, Shotgun) 18-K.Cousins pass incomplete deep right to 5-D.London.
(12:59) (Shotgun) 18-K.Cousins sacked at ATL 45 for -7 yards (53-B.Mafe). FUMBLES (53-B.Mafe) [53-B.Mafe], RECOVERED by SEA-58-D.Hall at ATL 36. 58-D.Hall for 36 yards, TOUCHDOWN.
5-J.Myers extra point is GOOD, Center-41-C.Stoll, Holder-4-M.Dickson.
5-J.Myers kicks 65 yards from SEA 35 to end zone, Touchback to the ATL 30.
(12:46) (Shotgun) 18-K.Cousins pass short left to 1-D.Mooney to ATL 36 for 6 yards (28-N.Pritchett).
(12:28) (No Huddle, Shotgun) 18-K.Cousins pass deep right to 5-D.London to SEA 47 for 17 yards (28-N.Pritchett).
(12:02) (No Huddle, Shotgun) 18-K.Cousins pass deep right to 5-D.London to SEA 25 for 22 yards (20-J.Love). PENALTY on ATL-5-D.London, Offensive Pass Interference, 10 yards, enforced at SEA 47 - No Play.
(11:45) (Shotgun) 18-K.Cousins pass incomplete short right to 8-K.Pitts (29-J.Jobe).
(11:42) (Shotgun) 18-K.Cousins pass incomplete deep right to 34-R.McCloud.
(11:37) (Shotgun) 18-K.Cousins pass deep right to 1-D.Mooney pushed ob at SEA 38 for 19 yards (29-J.Jobe). Atlanta challenged the short of the line to gain ruling, and the play was REVERSED. (Shotgun) 18-K.Cousins pass deep right to 1-D.Mooney pushed ob at SEA 37 for 20 yards (29-J.Jobe).
(11:03) (Shotgun) 18-K.Cousins pass deep right intended for 5-D.London INTERCEPTED by 20-J.Love at SEA 15. 20-J.Love to SEA 41 for 26 yards (7-B.Robinson).
(10:55) 9-K.Walker left guard to SEA 43 for 2 yards (97-G.Jarrett).
(10:13) (Shotgun) 9-K.Walker right tackle to SEA 47 for 4 yards (3-J.Bates, 98-R.Orhorhoro).
(9:27) (Shotgun) 7-G.Smith pass short left to 16-T.Lockett to ATL 45 for 8 yards (20-D.Alford).
(8:46) 9-K.Walker left guard to ATL 43 for 2 yards (53-N.Landman; 55-K.Elliss).
(8:05) 9-K.Walker left guard to ATL 40 for 3 yards (90-D.Onyemata).
(7:18) (Shotgun) 7-G.Smith pass incomplete short middle to 11-J.Smith-Njigba [55-K.Elliss].
(7:15) 5-J.Myers 59 yard field goal is GOOD, Center-41-C.Stoll, Holder-4-M.Dickson.
5-J.Myers kicks 65 yards from SEA 35 to end zone, Touchback to the ATL 30.
(7:10) (Shotgun) 18-K.Cousins pass incomplete short left to 7-B.Robinson (29-J.Jobe).
(7:06) (No Huddle, Shotgun) 18-K.Cousins pass incomplete short middle to 1-D.Mooney.
(7:02) (No Huddle, Shotgun) 18-K.Cousins pass short left to 7-B.Robinson pushed ob at ATL 36 for 6 yards (20-J.Love) [58-D.Hall].
(6:32) (No Huddle, Shotgun) 18-K.Cousins pass short right to 5-D.London pushed ob at ATL 48 for 12 yards (21-D.Witherspoon) [55-D.Jones].
(6:03) (No Huddle, Shotgun) 18-K.Cousins pass deep middle intended for 8-K.Pitts INTERCEPTED by 8-C.Bryant at SEA 28. 8-C.Bryant to SEA 37 for 9 yards (7-B.Robinson).
(5:54) 26-Z.Charbonnet left tackle to SEA 38 for 1 yard (55-K.Elliss; 95-T.Graham).
(5:12) 26-Z.Charbonnet right tackle to SEA 40 for 2 yards (90-D.Onyemata; 55-K.Elliss).
(4:32) 25-K.McIntosh left end to SEA 45 for 5 yards (21-M.Hughes).
(3:44) (No Huddle, Shotgun) Penalty on SEA, Delay of Game, declined.
(3:44) 4-M.Dickson punts 42 yards to ATL 13, Center-41-C.Stoll, fair catch by 26-A.Williams.
(3:37) (Shotgun) 7-B.Robinson right guard to ATL 19 for 6 yards (53-B.Mafe; 28-N.Pritchett).
(2:55) (Shotgun) 30-J.McClellan right tackle to ATL 21 for 2 yards (24-K.Wallace; 48-T.Knight).
(2:13) (Shotgun) 9-M.Penix pass short left to 82-Cas.Washington to ATL 35 for 14 yards (0-T.Dodson).
(2:00) (Shotgun) 30-J.McClellan right tackle to ATL 38 for 3 yards (58-D.Hall, 98-R.Robertson-Harris).
(1:19) (Shotgun) 30-J.McClellan left tackle to ATL 44 for 6 yards (29-J.Jobe; 30-F.Hicks).
(:52) (Shotgun) 30-J.McClellan left tackle to ATL 47 for 3 yards (98-R.Robertson-Harris).
(:15) (Shotgun) 30-J.McClellan right tackle to 50 for 3 yards (98-R.Robertson-Harris).
END GAME"

sea_atl_summary <- "Headline: Smith throws 2 TD passes, Seahawks defense dominates in a 34-14 win over the Falcons
Summary: The game was dominated by the Seahawks. Jason Myers booted a field goal and Walker had a 20-yard touchdown run that staked the Seahawks to a 10-0 lead early. The Falcons cut the Seattle lead to 10-7 with a 70-yard drive powered by their running game. Cousins threw only one pass, relying on Bijan Robinson to carry seven times for 55 yards, capped by a 5-yard TD. But Seattle restored some breathing room on its final possession of the first half. Smith completed four straight passes before an intentional grounding penalty forced the Seahawks to burn their final timeout with 10 seconds remaining. Rather than send on the field-goal unit, the Seahawks decided to run one more play from the 31. That decision sure paid off. Smith found Metcalf, delivering a scoring strike with just 4 seconds to go that sent the Seahawks to the locker room up 17-7. Cousins connected with Drake London on a 5-yard touchdown pass in the third quarter, but that fourth-down score turned out to be Atlanta's last gasp. Kenneth Walker scored on a 17-yard touchdown to make it 24-14 late in the third quarter. Seattle’s defense then sealed the win. Kirk Cousins was hit by Boye Mafe as he attempted to throw. Hall scooped it up and rumbled all the way to the end zone with 12:46 remaining. Derick Hall then returning a fumble 36 yards for a clinching score and a 34-14 Seahawks victory.
Notable Performances: Geno Smith passed for two touchdowns and completed 18 of 28 passes for 207 yards. The Seattle defense came up with turnovers on three straight Atlanta possessions in the fourth quarter. Kirk Cousins struggled, throwing two interceptions on his final two possessions, and getting sacked three times.
Injuries: Seahawks: Metcalf's left the game with an apparent injury. Falcons: TE Charlie Woerner left the game briefly but returned.
"

# Append game log and summary to training dataframe 
sea_atl <- as.data.frame(cbind(sea_atl_log, sea_atl_summary)) %>% rename(game_log = sea_atl_log, game_summary = sea_atl_summary)
training <- rbind(training, sea_atl)

ari_mia_log <- "GAME
38-C.Ryland kicks 64 yards from ARI 35 to MIA 1. 82-D.Eskridge pushed ob at MIA 36 for 35 yards (30-D.Hall).
(14:55) 28-D.Achane left tackle to MIA 47 for 11 yards (21-G.Williams; 16-M.Melton).
(14:33) (No Huddle, Shotgun) 1-T.Tagovailoa pass short left to 30-A.Ingold pushed ob at ARI 37 for 16 yards (34-J.Thompson).
(14:01) 1-T.Tagovailoa sacked at ARI 44 for -7 yards (55-D.Stills). FUMBLES (55-D.Stills), recovered by MIA-73-A.Jackson at ARI 44.
(13:32) (Shotgun) 1-T.Tagovailoa pass short right to 10-T.Hill to ARI 36 for 8 yards (2-Ma.Wilson).
(12:51) (Shotgun) 1-T.Tagovailoa pass short left to 10-T.Hill to ARI 23 for 13 yards (21-G.Williams; 3-B.Baker).
(12:15) 28-D.Achane right tackle to ARI 14 for 9 yards (16-M.Melton; 96-N.Jones).
(11:35) (Shotgun) 1-T.Tagovailoa pass short right to 28-D.Achane to ARI 8 for 6 yards (34-J.Thompson).
(10:58) 1-T.Tagovailoa pass incomplete short left to 10-T.Hill (3-B.Baker).
(10:51) (Shotgun) 1-T.Tagovailoa pass short middle to 89-J.Hill to ARI 4 for 4 yards (52-V.Dimukeje). FUMBLES (52-V.Dimukeje), touched at ARI 1, recovered by MIA-65-R.Jones at ARI 1. ARI-34-J.Thompson was injured during the play.
(10:17) 31-R.Mostert up the middle for 1 yard, TOUCHDOWN.
7-J.Sanders extra point is GOOD, Center-49-M.Overton, Holder-16-J.Bailey.
7-J.Sanders kicks 65 yards from MIA 35 to end zone, Touchback to the ARI 30.
(10:15) 6-J.Conner left tackle to ARI 34 for 4 yards (21-J.Poyer).
(9:38) 1-K.Murray pass incomplete short right to 6-J.Conner (5-J.Ramsey).
(9:34) (Shotgun) 1-K.Murray pass incomplete short right to 85-T.McBride (93-C.Campbell).
Timeout #1 by ARI at 09:34.
(9:31) 12-B.Gillikin punts 60 yards to MIA 6, Center-46-A.Brewer. 83-M.Washington to MIA 25 for 19 yards (52-V.Dimukeje; 44-O.Pappoe).
(9:17) 28-D.Achane right tackle to MIA 29 for 4 yards (55-D.Stills). ** Injury Update: ARI-34-J.Thompson has returned to the game.
(8:41) 1-T.Tagovailoa pass short left to 28-D.Achane to MIA 34 for 5 yards (7-K.White).
(7:55) (Shotgun) 1-T.Tagovailoa pass short left to 9-J.Smith to MIA 38 for 4 yards (34-J.Thompson).
(7:17) (Shotgun) 1-T.Tagovailoa pass short middle to 9-J.Smith to MIA 37 for -1 yards (3-B.Baker).
(6:35) (Shotgun) 25-J.Wright left end to MIA 43 for 6 yards (2-Ma.Wilson).
(5:55) (Shotgun) 1-T.Tagovailoa pass short right to 82-D.Eskridge to MIA 49 for 6 yards (16-M.Melton; 3-B.Baker).
(5:13) 1-T.Tagovailoa FUMBLES (Aborted) at MIA 48, and recovers at MIA 48.
(4:30) (Shotgun) 1-T.Tagovailoa pass short middle to 31-R.Mostert to ARI 41 for 11 yards (34-J.Thompson; 3-B.Baker).
(3:47) 31-R.Mostert up the middle to ARI 40 for 1 yard (91-L.Collier; 96-N.Jones).
(3:08) (Shotgun) 1-T.Tagovailoa pass short left to 28-D.Achane to ARI 41 for -1 yards (43-J.Luketa). PENALTY on MIA-73-A.Jackson, Offensive Holding, 10 yards, enforced at ARI 40 - No Play.
(2:39) (Shotgun) 25-J.Wright right end pushed ob at ARI 38 for 12 yards (34-J.Thompson).
(2:01) (Shotgun) 1-T.Tagovailoa pass short right to 28-D.Achane to ARI 35 for 3 yards (7-K.White).
(1:21) 7-J.Sanders 53 yard field goal is GOOD, Center-49-M.Overton, Holder-16-J.Bailey.
7-J.Sanders kicks 65 yards from MIA 35 to end zone, Touchback to the ARI 30.
(1:16) (Shotgun) 1-K.Murray pass deep right to 18-M.Harrison to MIA 45 for 25 yards (8-J.Holland).
(:35) 6-J.Conner right guard to MIA 43 for 2 yards (20-J.Brooks; 93-C.Campbell). PENALTY on MIA-97-N.Farrell, Defensive Holding, 5 yards, enforced at MIA 43.
(:09) (Shotgun) 1-K.Murray pass short left to 18-M.Harrison to MIA 30 for 8 yards (11-D.Long).
END QUARTER 1
(15:00) (Shotgun) 33-T.Benson left tackle to MIA 20 for 10 yards (8-J.Holland, 21-J.Poyer).
(14:21) (Shotgun) 6-J.Conner right guard to MIA 20 for no gain (90-D.Hand, 95-B.Jones).
(13:37) (Shotgun) 1-K.Murray pass short left to 85-T.McBride pushed ob at MIA 8 for 12 yards (5-J.Ramsey).
(12:59) (Shotgun) 1-K.Murray pass short right to 84-E.Higgins to MIA 1 for 7 yards (8-J.Holland).
(12:29) (No Huddle, Shotgun) 6-J.Conner left guard to MIA 1 for no gain (91-E.Ogbah).
(11:50) (Shotgun) PENALTY on ARI-87-T.Reiman, False Start, 5 yards, enforced at MIA 1 - No Play.
(11:37) (Shotgun) 1-K.Murray pass short left to 14-Mi.Wilson for 6 yards, TOUCHDOWN.
38-C.Ryland extra point is GOOD, Center-46-A.Brewer, Holder-12-B.Gillikin.
38-C.Ryland kicks 65 yards from ARI 35 to end zone, Touchback to the MIA 30.
(11:28) 28-D.Achane left tackle to MIA 37 for 7 yards (2-Ma.Wilson; 34-J.Thompson). ** Injury Update: MIA-89-J.Hill has returned to the game.
(10:49) 1-T.Tagovailoa pass incomplete short left to 17-J.Waddle (7-K.White).
(10:44) (Shotgun) 1-T.Tagovailoa pass short left to 9-J.Smith to MIA 42 for 5 yards (24-S.Thomas).
(10:07) 28-D.Achane right guard to MIA 44 for 2 yards (91-L.Collier; 55-D.Stills).
(9:29) 1-T.Tagovailoa pass incomplete short left to 9-J.Smith.
(9:23) (Shotgun) 1-T.Tagovailoa pass incomplete deep left to 10-T.Hill.
(9:17) 16-J.Bailey punts 56 yards to end zone, Center-49-M.Overton, Touchback.
(9:08) 6-J.Conner left tackle to ARI 17 for -3 yards (44-C.Robinson).
(8:25) (Shotgun) 1-K.Murray pass short left to 14-Mi.Wilson to ARI 29 for 12 yards (24-C.Smith, 21-J.Poyer).
(7:55) (No Huddle, Shotgun) 1-K.Murray pass short right to 17-Z.Jones to ARI 32 for 3 yards (8-J.Holland).
(7:20) (No Huddle, Shotgun) 1-K.Murray right end pushed ob at ARI 38 for 6 yards (5-J.Ramsey).
(6:44) (No Huddle, Shotgun) 1-K.Murray pass short middle to 85-T.McBride to ARI 44 for 6 yards (11-D.Long).
(6:06) (Shotgun) 6-J.Conner left tackle pushed ob at MIA 49 for 7 yards (5-J.Ramsey).
(5:39) (No Huddle, Shotgun) Direct snap to 6-J.Conner. 6-J.Conner left guard to MIA 47 for 2 yards (93-C.Campbell, 20-J.Brooks).
(5:11) (No Huddle, Shotgun) 6-J.Conner up the middle to MIA 45 for 2 yards (93-C.Campbell).
(4:33) (Shotgun) 1-K.Murray pass incomplete deep left to 18-M.Harrison.
(4:27) (Shotgun) 1-K.Murray left guard to MIA 42 for 3 yards (96-B.Pili).
(3:54) (Shotgun) 1-K.Murray pass incomplete short right to 14-Mi.Wilson (29-K.Fuller).
(3:51) 12-B.Gillikin punts 37 yards to MIA 5, impetus ends at MIA 1, Center-46-A.Brewer, downed by ARI-46-A.Brewer.
(3:42) 31-R.Mostert left guard to MIA 6 for 1 yard (3-B.Baker; 91-L.Collier).
(3:07) (Shotgun) 1-T.Tagovailoa pass short right to 17-J.Waddle to MIA 6 for no gain (3-B.Baker).
(2:25) (Shotgun) 1-T.Tagovailoa pass short right to 17-J.Waddle pushed ob at MIA 16 for 10 yards (16-M.Melton).
(2:00) (Shotgun) 1-T.Tagovailoa pass short right to 10-T.Hill ran ob at MIA 26 for 10 yards (16-M.Melton).
(1:56) (Shotgun) 1-T.Tagovailoa pass short middle to 28-D.Achane to MIA 34 for 8 yards (3-B.Baker).
(1:39) (No Huddle, Shotgun) 1-T.Tagovailoa pass incomplete short left to 28-D.Achane (55-D.Stills).
(1:35) (Shotgun) 1-T.Tagovailoa pass deep right to 10-T.Hill to ARI 36 for 30 yards (16-M.Melton).
(1:22) (Shotgun) 1-T.Tagovailoa pass short right to 10-T.Hill ran ob at ARI 28 for 8 yards (3-B.Baker).
Timeout #1 by MIA at 01:22.
(1:15) (Shotgun) 1-T.Tagovailoa pass short left to 28-D.Achane pushed ob at ARI 12 for 16 yards (21-G.Williams) [52-V.Dimukeje].
Timeout #2 by MIA at 01:15.
(1:08) (Shotgun) 28-D.Achane up the middle to ARI 6 for 6 yards (3-B.Baker; 52-V.Dimukeje).
(:26) (Shotgun) 31-R.Mostert right guard to ARI 7 for -1 yards (43-J.Luketa, 95-K.Tonga).
(:22) (Shotgun) 1-T.Tagovailoa pass incomplete short left to 10-T.Hill.
Timeout #3 by MIA at 00:22.
(:18) 7-J.Sanders 25 yard field goal is GOOD, Center-49-M.Overton, Holder-16-J.Bailey.
7-J.Sanders kicks 65 yards from MIA 35 to end zone, Touchback to the ARI 30.
(:15) (Shotgun) 1-K.Murray pass incomplete short left.
(:08) (Shotgun) 1-K.Murray pass incomplete short left.
(:01) 1-K.Murray kneels to ARI 29 for -1 yards.
END QUARTER 2
7-J.Sanders kicks 65 yards from MIA 35 to end zone, Touchback to the ARI 30.
(15:00) 1-K.Murray pass deep left to 85-T.McBride to MIA 33 for 37 yards (11-D.Long).
(14:21) (Shotgun) 6-J.Conner right end to MIA 43 for -10 yards (91-E.Ogbah, 11-D.Long).
(13:40) (Shotgun) 1-K.Murray pass short left to 6-J.Conner to MIA 40 for 3 yards (21-J.Poyer; 5-J.Ramsey). PENALTY on ARI-70-P.Johnson, Offensive Holding, 10 yards, enforced at MIA 43 - No Play.
(13:16) (Shotgun) 1-K.Murray pass short middle to 6-J.Conner to MIA 44 for 9 yards (20-J.Brooks; 11-D.Long).
(12:28) (Shotgun) 1-K.Murray pass short left to 85-T.McBride to MIA 38 for 6 yards (20-J.Brooks).
(11:48) 38-C.Ryland 57 yard field goal is GOOD, Center-46-A.Brewer, Holder-12-B.Gillikin.
38-C.Ryland kicks 65 yards from ARI 35 to end zone, Touchback to the MIA 30.
(11:43) (Shotgun) 28-D.Achane left end to ARI 23 for 47 yards (16-M.Melton; 34-J.Thompson).
(10:50) (Shotgun) 1-T.Tagovailoa pass short left to 30-A.Ingold to ARI 22 for 1 yard (7-K.White).
(10:09) (Shotgun) 1-T.Tagovailoa pass incomplete deep middle to 17-J.Waddle.
(10:03) (Shotgun) 1-T.Tagovailoa scrambles left tackle to ARI 9 for 13 yards (24-S.Thomas).
(9:21) 31-R.Mostert right end to ARI 12 for -3 yards (16-M.Melton). ** Injury Update: ARI-96-N.Jones has returned to the game.
(8:35) (Shotgun) 1-T.Tagovailoa pass short left to 28-D.Achane for 12 yards, TOUCHDOWN.
7-J.Sanders extra point is GOOD, Center-49-M.Overton, Holder-16-J.Bailey.
7-J.Sanders kicks 65 yards from MIA 35 to end zone, Touchback to the ARI 30.
(8:31) 6-J.Conner left guard to ARI 32 for 2 yards (90-D.Hand).
(7:51) (Shotgun) 1-K.Murray pass short left to 85-T.McBride to ARI 38 for 6 yards (29-K.Fuller).
(7:05) (Shotgun) 1-K.Murray pass short left to 18-M.Harrison ran ob at ARI 49 for 11 yards (21-J.Poyer). PENALTY on ARI-72-H.Froholdt, Ineligible Downfield Pass, 4 yards, enforced at ARI 38 - No Play.
(6:47) (Shotgun) 1-K.Murray pass incomplete deep left to 31-E.Demercado (21-J.Poyer).
(6:41) 12-B.Gillikin punts 59 yards to MIA 7, Center-46-A.Brewer. 83-M.Washington to MIA 13 for 6 yards (44-O.Pappoe, 20-D.Dallas).
(6:29) (Shotgun) 1-T.Tagovailoa pass incomplete short right to 31-R.Mostert (90-B.Stille).
(6:22) (Shotgun) 1-T.Tagovailoa FUMBLES (Aborted) at MIA 9, touched at MIA -1, ball out of bounds in End Zone, SAFETY. Penalty on MIA-1-T.Tagovailoa, Illegal Bat, declined.
7-J.Sanders kicks 76 yards from MIA 20 to ARI 4. 20-D.Dallas to ARI 25 for 21 yards (6-A.Walker).
(6:08) (Shotgun) 1-K.Murray pass incomplete short middle to 85-T.McBride (91-E.Ogbah).
(6:05) 6-J.Conner left tackle to ARI 38 for 13 yards (21-J.Poyer).
(5:26) 1-K.Murray pass deep right to 85-T.McBride ran ob at MIA 45 for 17 yards.
(4:46) (Shotgun) 1-K.Murray scrambles left tackle pushed ob at MIA 41 for 4 yards (20-J.Brooks).
(4:06) (Shotgun) 1-K.Murray pass incomplete deep left to 4-G.Dortch.
(4:00) (Shotgun) 1-K.Murray pass short right to 4-G.Dortch to MIA 32 for 9 yards (51-T.Bowser).
(3:20) 6-J.Conner left guard to MIA 29 for 3 yards (20-J.Brooks).
(2:40) (Shotgun) 1-K.Murray pass short left to 6-J.Conner pushed ob at MIA 22 for 7 yards (51-T.Bowser).
(2:18) 1-K.Murray pass deep right to 18-M.Harrison for 22 yards, TOUCHDOWN.
TWO-POINT CONVERSION ATTEMPT. 6-J.Conner rushes up the middle. ATTEMPT FAILS.
38-C.Ryland kicks 65 yards from ARI 35 to end zone, Touchback to the MIA 30.
(2:08) (Shotgun) 28-D.Achane left tackle to MIA 34 for 4 yards (7-K.White, 58-J.Okwara).
(1:28) (Shotgun) 1-T.Tagovailoa pass short left to 17-J.Waddle to ARI 46 for 20 yards (34-J.Thompson, 7-K.White).
(:51) (Shotgun) 31-R.Mostert left guard to ARI 33 for 13 yards (3-B.Baker; 24-S.Thomas).
(:14) (Shotgun) 1-T.Tagovailoa pass short left to 30-A.Ingold to ARI 31 for 2 yards (34-J.Thompson).
END QUARTER 3
(15:00) 1-T.Tagovailoa pass short right to 10-T.Hill ran ob at ARI 28 for 3 yards.
(14:21) (Shotgun) 1-T.Tagovailoa pass short left to 17-J.Waddle to ARI 13 for 15 yards (3-B.Baker).
(13:42) (Shotgun) 1-T.Tagovailoa pass short left to 89-J.Hill to ARI 7 for 6 yards (2-Ma.Wilson).
(13:08) (Shotgun) 31-R.Mostert up the middle to ARI 6 for 1 yard (95-K.Tonga; 55-D.Stills).
(12:26) (Shotgun) 31-R.Mostert right end for 6 yards, TOUCHDOWN.
7-J.Sanders extra point is GOOD, Center-49-M.Overton, Holder-16-J.Bailey.
7-J.Sanders kicks 65 yards from MIA 35 to end zone, Touchback to the ARI 30.
Play did not occur as Miami was not given the opportunity to match Substitutions.
(12:22) 1-K.Murray to ARI 21 for -9 yards (93-C.Campbell). FUMBLES (93-C.Campbell), and recovers at ARI 17. 1-K.Murray pass incomplete short left.
(12:13) 1-K.Murray pass short right to 84-E.Higgins to ARI 36 for 6 yards (20-J.Brooks).
(11:31) (Shotgun) 1-K.Murray pass incomplete deep left to 18-M.Harrison [20-J.Brooks]. Arizona challenged the incomplete pass ruling, and the play was REVERSED. (Shotgun) 1-K.Murray pass deep left to 18-M.Harrison ran ob at MIA 48 for 16 yards [20-J.Brooks].
(11:18) (Shotgun) 1-K.Murray pass deep right to 18-M.Harrison to MIA 26 for 22 yards (24-C.Smith).
(10:45) (No Huddle, Shotgun) 1-K.Murray pass short left to 14-Mi.Wilson to MIA 26 for no gain (29-K.Fuller).
(10:08) (Shotgun) 1-K.Murray pass short middle to 85-T.McBride to MIA 10 for 16 yards (20-J.Brooks; 21-J.Poyer).
(9:29) (Shotgun) 1-K.Murray pass short middle to 14-Mi.Wilson to MIA 2 for 8 yards (11-D.Long).
(8:50) (Shotgun) 6-J.Conner left guard for 2 yards, TOUCHDOWN.
38-C.Ryland extra point is GOOD, Center-46-A.Brewer, Holder-12-B.Gillikin.
38-C.Ryland kicks 65 yards from ARI 35 to end zone, Touchback to the MIA 30.
(8:47) 28-D.Achane up the middle to MIA 39 for 9 yards (34-J.Thompson).
(8:09) 30-A.Ingold up the middle to MIA 42 for 3 yards (34-J.Thompson).
(7:33) (Shotgun) 28-D.Achane up the middle to MIA 40 for -2 yards (7-K.White).
(6:55) (Shotgun) 1-T.Tagovailoa pass incomplete deep right to 9-J.Smith.
(6:51) (Shotgun) 1-T.Tagovailoa pass short middle to 9-J.Smith to ARI 49 for 11 yards (3-B.Baker, 34-J.Thompson) [52-V.Dimukeje]. Miami challenged the short of the line to gain ruling, and the play was REVERSED. (Shotgun) 1-T.Tagovailoa pass short middle to 9-J.Smith to ARI 48 for 12 yards (3-B.Baker) [52-V.Dimukeje]. Measurement for first down prior to the challenge.
(6:35) 31-R.Mostert left end to ARI 48 for no gain (21-G.Williams).
(5:55) (Shotgun) 1-T.Tagovailoa pass short left to 89-J.Hill to ARI 47 for 1 yard (7-K.White) [52-V.Dimukeje].
(5:12) (Shotgun) 1-T.Tagovailoa pass incomplete short left to 28-D.Achane.
(5:08) 16-J.Bailey punts 36 yards to ARI 11, Center-49-M.Overton, out of bounds.
(5:01) (Shotgun) 1-K.Murray pass short left to 85-T.McBride to ARI 18 for 7 yards (11-D.Long).
(4:42) (No Huddle, Shotgun) 6-J.Conner right tackle to ARI 20 for 2 yards (90-D.Hand).
(4:04) (Shotgun) 1-K.Murray pass deep left to 85-T.McBride to ARI 37 for 17 yards (21-J.Poyer).
(3:22) (Shotgun) 6-J.Conner left end to 50 for 13 yards (24-C.Smith). PENALTY on ARI-70-P.Johnson, Offensive Holding, 10 yards, enforced at ARI 37 - No Play.
(3:15) (Shotgun) 1-K.Murray pass short left to 14-Mi.Wilson to ARI 32 for 5 yards (24-C.Smith). ARI-14-Mi.Wilson was injured during the play.
(2:51) (Shotgun) 1-K.Murray pass deep middle to 18-M.Harrison to 50 for 18 yards (24-C.Smith).
(2:06) (Shotgun) 6-J.Conner right guard to MIA 33 for 17 yards (21-J.Poyer; 5-J.Ramsey).
(1:58) (Shotgun) 6-J.Conner left guard to MIA 28 for 5 yards (11-D.Long).
(1:54) (Shotgun) 6-J.Conner right guard to MIA 27 for 1 yard (91-E.Ogbah; 90-D.Hand). ** Injury Update: ARI-14-Mi.Wilson has returned to the game.
Timeout #1 by MIA at 01:54.
(1:48) (Shotgun) 1-K.Murray right end to MIA 20 for 7 yards (20-J.Brooks).
Timeout #2 by MIA at 01:48.
(1:02) 67-C.Heck reported in as eligible. 6-J.Conner up the middle to MIA 17 for 3 yards (26-M.Maye; 95-B.Jones).
Timeout #1 by ARI at 01:02.
(:19) 6-J.Conner right guard to MIA 16 for 1 yard (95-B.Jones; 93-C.Campbell).
(:14) 67-C.Heck reported in as eligible. 6-J.Conner left tackle to MIA 16 for no gain (21-J.Poyer; 11-D.Long).
Timeout #3 by MIA at 00:14.
(:01) 38-C.Ryland 34 yard field goal is GOOD, Center-46-A.Brewer, Holder-12-B.Gillikin.
Timeout #2 by ARI at 00:01.
END GAME"

ari_mia_summary <- "Headline: Kyler Murray rallies Cardinals to 28-27 win over Dolphins.
Summary: Tagovailoa’s first pass was a 16-yard completion to fullback Alec Ingold on Miami’s opening drive, which ended with a 1-yard touchdown run by Raheem Mostert. The Dolphins led 13-7 at halftime but their defense could not contain Murray and Harrison in the second half. With the Arizona Cardinals down by two scores in the fourth quarter, Kyler Murray proved he was capable of making the plays his team needed to win. Murray led two scoring drives in the fourth quarter to rally the Cardinals from a nine-point deficit. The first ended with a 2-yard touchdown run by James Conner that got Arizona within 27-25. The second was a 13-play, 71-yard march that took the final 5:01 and ended with Ryland's 34-yard kick.
Notable Performances: Marvin Harrison Jr. had 111 yards and a touchdown on six catches. Tight end Trey McBride led the Cardinals with nine catches for 124 yards. Tagovailoa threw for 234 yards, completing 28 of 38 passes. Raheem Mostert scored 2 touchdowns on the day. Tyreek Hill caught six passes for 72 yards. De’Von Achane rushed for 97 yards and had 50 yards receiving with a 12-yard touchdown catch. Murray completed 26 of 36 passes for 307 yards, added 19 yards rushing, and was not sacked.
Injuries: Cardinals: DL Naquan Jones left in the first quarter but came back in the third. Dolphins: TE Julian Hill left in the first, but later returned. S Jevon Holland left in the second quarter and did not return."

# Append game log and summary to training dataframe 
ari_mia <- as.data.frame(cbind(ari_mia_log, ari_mia_summary)) %>% rename(game_log = ari_mia_log, game_summary = ari_mia_summary)
training <- rbind(training, ari_mia)

dal_sf_log <- "GAME
41-A.Carlson kicks 61 yards from SF 35 to DAL 4. 9-K.Turpin to DAL 30 for 26 yards (32-P.Taylor). PENALTY on DAL-29-C.Goodwin, Illegal Formation, 5 yards, enforced at DAL 30.
(14:55) 15-E.Elliott right guard to DAL 32 for 7 yards (97-N.Bosa).
(14:19) (Shotgun) 4-D.Prescott pass short right to 88-C.Lamb pushed ob at DAL 36 for 4 yards (59-D.Campbell).
(13:50) 15-E.Elliott up the middle to DAL 36 for no gain (2-D.Lenoir; 56-L.Floyd).
(13:16) (Shotgun) 4-D.Prescott pass short left to 88-C.Lamb to DAL 41 for 5 yards (27-J.Brown).
(12:39) (Shotgun) 40-H.Luepke right guard to DAL 41 for no gain (54-F.Warner, 99-M.Collins).
(11:53) 5-B.Anger punts 52 yards to SF 7, Center-44-T.Sieg. 19-J.Cowing to SF 13 for 6 yards (80-R.Flournoy).
(11:44) (Shotgun) 1-D.Samuel left end to SF 14 for 1 yard (55-C.Lawson, 13-D.Overshown).
(11:10) 13-B.Purdy pass short middle to 14-R.Pearsall to SF 22 for 8 yards (27-A.Oruwariye; 13-D.Overshown).
(10:29) PENALTY on SF-18-C.Conley, False Start, 5 yards, enforced at SF 22 - No Play.
(10:15) (Shotgun) 13-B.Purdy pass deep right to 1-D.Samuel to DAL 36 for 47 yards (28-M.Hooker).
(9:31) 24-J.Mason up the middle to DAL 32 for 4 yards (58-M.Smith).
(9:09) (No Huddle) 24-J.Mason left end pushed ob at DAL 27 for 5 yards (28-M.Hooker; 7-T.Diggs). PENALTY on SF-44-K.Juszczyk, Offensive Holding, 10 yards, enforced at DAL 32 - No Play.
(8:44) (Shotgun) 13-B.Purdy pass short middle to 14-R.Pearsall to DAL 36 for 6 yards (27-A.Oruwariye).
(7:58) (Shotgun) 24-J.Mason up the middle to DAL 32 for 4 yards (99-C.Golston).
(7:19) 41-A.Carlson 50 yard field goal is GOOD, Center-46-T.Pepper, Holder-3-M.Wishnowsky.
41-A.Carlson kicks 59 yards from SF 35 to DAL 6. 9-K.Turpin to DAL 32 for 26 yards (45-D.Flannigan-Fowles).
(7:08) 4-D.Prescott pass short right to 87-J.Ferguson to DAL 34 for 2 yards (59-D.Campbell).
(6:28) (Shotgun) 4-D.Prescott pass short middle to 20-D.Cook to DAL 44 for 10 yards (59-D.Campbell).
(5:54) 20-D.Cook right tackle to DAL 45 for 1 yard (59-D.Campbell).
(5:16) (Shotgun) 4-D.Prescott pass short right to 88-C.Lamb to SF 45 for 10 yards (7-C.Ward).
(4:35) (Shotgun) 4-D.Prescott pass deep left intended for 9-K.Turpin INTERCEPTED by 27-J.Brown [97-N.Bosa] at SF 8. 27-J.Brown to SF 8 for no gain (9-K.Turpin).
(4:27) (Shotgun) 24-J.Mason left tackle to SF 14 for 6 yards (93-L.Joseph; 92-C.Watkins). SF-24-J.Mason was injured during the play.
(4:06) 13-B.Purdy pass deep right to 85-G.Kittle to SF 30 for 16 yards (2-J.Lewis).
(3:35) (No Huddle) 13-B.Purdy pass incomplete deep left to 1-D.Samuel.
(3:29) 31-I.Guerendo right tackle to SF 34 for 4 yards (6-Do.Wilson).
(2:48) (Shotgun) 13-B.Purdy pass incomplete deep left to 85-G.Kittle.
(2:44) 3-M.Wishnowsky punts 44 yards to DAL 22, Center-46-T.Pepper. 9-K.Turpin to DAL 35 for 13 yards (45-D.Flannigan-Fowles; 53-D.Winters). Penalty on DAL-30-J.Thomas, Unnecessary Roughness, offsetting. Penalty on SF-54-F.Warner, Unnecessary Roughness, offsetting.
(2:33) 4-D.Prescott pass short right to 88-C.Lamb to DAL 41 for 6 yards (7-C.Ward).
(2:01) 4-D.Prescott pass short left to 1-J.Tolbert ran ob at SF 48 for 11 yards (59-D.Campbell). PENALTY on DAL-87-J.Ferguson, Offensive Holding, 10 yards, enforced at DAL 41 - No Play. Penalty on DAL-60-T.Guyton, Offensive Holding, declined.
(1:40) (Shotgun) 15-E.Elliott up the middle to DAL 36 for 5 yards (27-J.Brown).
(1:06) (Shotgun) 9-K.Turpin right end to DAL 47 for 11 yards (2-D.Lenoir). FUMBLES (2-D.Lenoir), recovered by DAL-56-C.Beebe at DAL 48.
(:24) (Shotgun) 20-D.Cook up the middle to SF 48 for 4 yards (59-D.Campbell).
END QUARTER 1
(15:00) 20-D.Cook right guard to SF 46 for 2 yards (7-C.Ward).
(14:22) (Shotgun) 4-D.Prescott pass short left to 88-C.Lamb to SF 31 for 15 yards (27-J.Brown).
(13:44) (Shotgun) 15-E.Elliott up the middle to SF 20 for 11 yards (54-F.Warner; 6-M.Mustapha).
(13:02) (Shotgun) 4-D.Prescott sacked at SF 25 for -5 yards (97-N.Bosa).
(12:20) (Shotgun) 15-E.Elliott up the middle to SF 20 for 5 yards (6-M.Mustapha; 7-C.Ward).
(11:42) (Shotgun) 4-D.Prescott pass short right to 87-J.Ferguson to SF 10 for 10 yards (56-L.Floyd; 54-F.Warner).
(11:07) 4-D.Prescott pass incomplete short right to 86-L.Schoonmaker. PENALTY on SF-7-C.Ward, Defensive Pass Interference, 9 yards, enforced at SF 10 - No Play.
(11:02) (Shotgun) 15-E.Elliott up the middle for 1 yard, TOUCHDOWN.
17-B.Aubrey extra point is GOOD, Center-44-T.Sieg, Holder-5-B.Anger.
17-B.Aubrey kicks 61 yards from DAL 35 to SF 4. 32-P.Taylor to SF 34 for 30 yards (57-B.Johnson).
(10:52) (Shotgun) 13-B.Purdy pass deep right to 1-D.Samuel for 66 yards, TOUCHDOWN NULLIFIED by Penalty. ** Injury Update: SF-24-J.Mason has returned to the game. PENALTY on SF-82-E.Saubert, Offensive Holding, 10 yards, enforced at SF 34 - No Play.
(10:42) (Shotgun) 13-B.Purdy pass short right to 14-R.Pearsall to SF 35 for 11 yards (35-M.Liufau).
(9:59) 24-J.Mason left guard to SF 37 for 2 yards (99-C.Golston; 58-M.Smith).
(9:19) (Shotgun) 13-B.Purdy pass short right to 14-R.Pearsall to 50 for 13 yards (27-A.Oruwariye).
(8:40) (Shotgun) 13-B.Purdy pass short left to 1-D.Samuel to DAL 45 for 5 yards (2-J.Lewis).
(7:56) 24-J.Mason left end to DAL 44 for 1 yard (99-C.Golston).
(7:13) (Shotgun) 24-J.Mason right tackle to DAL 43 for 1 yard (99-C.Golston; 13-D.Overshown).
(6:35) (Shotgun) 13-B.Purdy pass incomplete short middle to 1-D.Samuel.
Timeout #1 by DAL at 06:35.TURNOVER ON DOWNS.
(6:32) PENALTY on SF-97-N.Bosa, Neutral Zone Infraction, 5 yards, enforced at DAL 43 - No Play.
(6:32) 4-D.Prescott pass short left to 88-C.Lamb ran ob at SF 47 for 5 yards.
(6:02) 20-D.Cook left guard to SF 47 for no gain (92-J.Elliott).
(5:25) 4-D.Prescott pass short right to 87-J.Ferguson to SF 41 for 6 yards (7-C.Ward; 59-D.Campbell).
(4:43) (Shotgun) 4-D.Prescott pass deep left to 1-J.Tolbert to SF 13 for 28 yards (2-D.Lenoir). Penalty on SF-2-D.Lenoir, Illegal Contact, declined.
(4:26) (Shotgun) 4-D.Prescott pass short middle to 88-C.Lamb to SF 10 for 3 yards (53-D.Winters).
(3:49) 4-D.Prescott pass incomplete short right to 89-B.Spann-Ford (6-M.Mustapha).
(3:44) (Shotgun) 4-D.Prescott pass short left to 87-J.Ferguson to SF 9 for 1 yard (0-R.Green; 6-M.Mustapha). FUMBLES (0-R.Green), and recovers at SF 11.
(2:59) 17-B.Aubrey 29 yard field goal is GOOD, Center-44-T.Sieg, Holder-5-B.Anger.
17-B.Aubrey kicks 65 yards from DAL 35 to end zone, Touchback to the SF 30. PENALTY on DAL-14-M.Bell, Illegal Formation, 5 yards, enforced at SF 30.
(2:56) 31-I.Guerendo right tackle to DAL 46 for 19 yards (2-J.Lewis; 28-M.Hooker).
(2:14) 31-I.Guerendo up the middle to DAL 31 for 15 yards (2-J.Lewis; 6-Do.Wilson).
(2:00) 31-I.Guerendo left end to DAL 12 for 19 yards (28-M.Hooker; 50-E.Kendricks). PENALTY on SF-85-G.Kittle, Offensive Holding, 10 yards, enforced at DAL 31 - No Play.
(1:54) (Shotgun) 13-B.Purdy pass incomplete short left to 1-D.Samuel.
(1:50) (Shotgun) 13-B.Purdy pass short right to 31-I.Guerendo ran ob at DAL 36 for 5 yards (27-A.Oruwariye).
(1:45) (Shotgun) 13-B.Purdy pass short right to 85-G.Kittle to DAL 26 for 10 yards (27-A.Oruwariye; 13-D.Overshown).
(1:35) 41-A.Carlson 44 yard field goal is GOOD, Center-46-T.Pepper, Holder-3-M.Wishnowsky.
Timeout #2 by DAL at 01:35.
41-A.Carlson kicks 59 yards from SF 35 to DAL 6. 9-K.Turpin MUFFS catch, and recovers at DAL 10. 9-K.Turpin to DAL 33 for 23 yards (51-R.Beal).
(1:24) (Shotgun) 4-D.Prescott pass short left to 1-J.Tolbert to DAL 40 for 7 yards (0-R.Green).
(1:08) (No Huddle, Shotgun) 4-D.Prescott pass incomplete deep right to 87-J.Ferguson.
(1:04) (Shotgun) 4-D.Prescott pass incomplete short middle to 88-C.Lamb [91-S.Okuayinonu].
(1:01) 5-B.Anger punts 43 yards to SF 17, Center-44-T.Sieg, fair catch by 19-J.Cowing.
(:54) (Shotgun) 13-B.Purdy scrambles left end pushed ob at SF 30 for 13 yards (27-A.Oruwariye). The Replay Official reviewed the runner was out of bounds ruling, and the play was REVERSED. (Shotgun) 13-B.Purdy scrambles left end to SF 30 for 13 yards (27-A.Oruwariye).
(:47) (Shotgun) 13-B.Purdy pass short left to 85-G.Kittle to DAL 40 for 30 yards (28-M.Hooker; 2-J.Lewis).
Timeout #1 by SF at 00:47.
(:39) (Shotgun) 13-B.Purdy pass incomplete short right to 31-I.Guerendo.
Timeout #2 by SF at 00:39.
(:34) (Shotgun) 13-B.Purdy sacked at DAL 47 for -7 yards. FUMBLES, recovered by SF-65-A.Banks at DAL 47.
(:26) (Shotgun) 13-B.Purdy pass incomplete deep left to 18-C.Conley.
Timeout #3 by SF at 00:26.
(:20) 3-M.Wishnowsky punts 45 yards to DAL 2, Center-46-T.Pepper, downed by SF-10-R.Bell.
(:10) 4-D.Prescott kneels to DAL 1 for -1 yards.
END QUARTER 2
17-B.Aubrey kicks 43 yards from DAL 35 to SF 22, short of landing zone. PENALTY on DAL-17-B.Aubrey, Kickoff Short of Landing Zone, placed at SF 40.
(15:00) 31-I.Guerendo left guard to SF 40 for no gain (97-O.Odighizuwa).
(14:41) (No Huddle) 13-B.Purdy scrambles left tackle to SF 49 for 9 yards (13-D.Overshown; 50-E.Kendricks). Penalty on DAL, Defensive Too Many Men on Field, declined.
(14:18) 13-B.Purdy up the middle to DAL 47 for 4 yards (55-C.Lawson).
(13:38) (Shotgun) 13-B.Purdy pass short middle to 85-G.Kittle pushed ob at DAL 4 for 43 yards (7-T.Diggs).
(13:00) 31-I.Guerendo up the middle for 4 yards, TOUCHDOWN.
41-A.Carlson extra point is GOOD, Center-46-T.Pepper, Holder-3-M.Wishnowsky.
41-A.Carlson kicks 63 yards from SF 35 to DAL 2. 9-K.Turpin to DAL 16 for 14 yards. Lateral to 29-C.Goodwin pushed ob at DAL 29 for 13 yards (53-D.Winters). PENALTY on DAL-9-K.Turpin, Illegal Forward Pass, 5 yards, enforced at DAL 16.
(12:48) 4-D.Prescott pass short left to 87-J.Ferguson to DAL 11 for no gain (27-J.Brown).
(12:15) (Shotgun) 4-D.Prescott pass short right to 88-C.Lamb to DAL 17 for 6 yards (7-C.Ward, 97-N.Bosa).
(11:36) (Shotgun) 4-D.Prescott pass short left intended for 88-C.Lamb INTERCEPTED by 2-D.Lenoir at DAL 32. 2-D.Lenoir to DAL 32 for no gain (88-C.Lamb).
(11:30) 13-B.Purdy pass short left to 31-I.Guerendo to DAL 20 for 12 yards (50-E.Kendricks).
(10:54) (Shotgun) 13-B.Purdy pass short right to 1-D.Samuel to DAL 17 for 3 yards (91-T.Wheat; 93-L.Joseph).
(10:08) 1-D.Samuel left end to DAL 13 for 4 yards (50-E.Kendricks).
(9:27) (Shotgun) 13-B.Purdy scrambles left end ran ob at DAL 7 for 6 yards (13-D.Overshown).
(8:44) 1-D.Samuel right end to DAL 3 for 4 yards (7-T.Diggs, 6-Do.Wilson).
(8:01) 44-K.Juszczyk up the middle to DAL 2 for 1 yard (55-C.Lawson; 6-Do.Wilson).
(7:16) (Shotgun) 13-B.Purdy pass short right to 85-G.Kittle for 2 yards, TOUCHDOWN.
41-A.Carlson extra point is GOOD, Center-46-T.Pepper, Holder-3-M.Wishnowsky.
41-A.Carlson kicks 65 yards from SF 35 to DAL 0. 9-K.Turpin to DAL 26 for 26 yards (28-D.Luter).
(7:08) (Shotgun) 15-E.Elliott left guard to DAL 32 for 6 yards (6-M.Mustapha; 27-J.Brown).
(6:32) (Shotgun) 4-D.Prescott pass incomplete short right to 87-J.Ferguson.
(6:28) (Shotgun) 4-D.Prescott pass incomplete short right to 9-K.Turpin [54-F.Warner].
(6:20) 5-B.Anger punts 59 yards to SF 9, Center-44-T.Sieg. 19-J.Cowing to SF 25 for 16 yards (44-T.Sieg; 40-H.Luepke).
(6:09) 31-I.Guerendo left end pushed ob at SF 29 for 4 yards (7-T.Diggs; 93-L.Joseph).
(5:27) (Shotgun) 13-B.Purdy scrambles right tackle to SF 45 for 16 yards (28-M.Hooker).
(4:42) 13-B.Purdy pass deep left to 85-G.Kittle pushed ob at DAL 28 for 27 yards (50-E.Kendricks).
(4:00) 31-I.Guerendo left tackle to DAL 25 for 3 yards (99-C.Golston).
(3:18) (Shotgun) 13-B.Purdy pass short right to 31-I.Guerendo to DAL 25 for no gain (27-A.Oruwariye).
Timeout #1 by SF at 03:18.
(2:32) (Shotgun) 13-B.Purdy pass short middle to 1-D.Samuel to DAL 9 for 16 yards (28-M.Hooker; 24-I.Mukuamu) [55-C.Lawson].
(1:44) (Shotgun) 31-I.Guerendo left guard to DAL 8 for 1 yard (7-T.Diggs, 50-E.Kendricks).
(1:01) (Shotgun) 1-D.Samuel right end pushed ob at DAL 2 for 6 yards (27-A.Oruwariye). DAL-27-A.Oruwariye was injured during the play.
(:40) 13-B.Purdy up the middle for 2 yards, TOUCHDOWN.
41-A.Carlson extra point is GOOD, Center-46-T.Pepper, Holder-3-M.Wishnowsky.
41-A.Carlson kicks 57 yards from SF 35 to DAL 8, out of bounds. PENALTY on SF-41-A.Carlson, Kickoff Out of Bounds, placed at DAL 40.
(:36) (Shotgun) 20-D.Cook up the middle to DAL 44 for 4 yards (59-D.Campbell).
END QUARTER 3
(15:00) 20-D.Cook right tackle to DAL 45 for 1 yard (2-D.Lenoir).
(14:24) (Shotgun) 4-D.Prescott sacked at DAL 43 for -2 yards (91-S.Okuayinonu).
(13:41) 5-B.Anger punts 40 yards to SF 17, Center-44-T.Sieg, fair catch by 19-J.Cowing.
(13:34) 31-I.Guerendo up the middle to SF 26 for 9 yards (2-J.Lewis).
(12:56) 31-I.Guerendo up the middle to SF 26 for no gain (50-E.Kendricks).
(12:12) 13-B.Purdy pass incomplete short right to 10-R.Bell (7-T.Diggs).
(12:05) 3-M.Wishnowsky punts 44 yards to DAL 30, Center-46-T.Pepper, fair catch by 9-K.Turpin.
(11:57) (Shotgun) PENALTY on DAL-78-T.Steele, False Start, 5 yards, enforced at DAL 30 - No Play.
(11:57) (Shotgun) 15-E.Elliott right tackle to DAL 26 for 1 yard (69-E.Anderson; 54-F.Warner).
(11:36) (No Huddle, Shotgun) 4-D.Prescott pass short right to 15-E.Elliott to DAL 30 for 4 yards (54-F.Warner).
(11:07) (No Huddle, Shotgun) 4-D.Prescott pass incomplete deep right to 1-J.Tolbert. PENALTY on SF-7-C.Ward, Defensive Pass Interference, 19 yards, enforced at DAL 30 - No Play.
(11:00) (Shotgun) 4-D.Prescott pass incomplete short left to 89-B.Spann-Ford [97-N.Bosa].
(10:54) (Shotgun) 4-D.Prescott pass incomplete deep left to 88-C.Lamb.
(10:50) (Shotgun) 4-D.Prescott pass short left to 87-J.Ferguson to SF 45 for 6 yards (2-D.Lenoir) [91-S.Okuayinonu].
(10:14) (Shotgun) 4-D.Prescott pass short right to 9-K.Turpin to SF 29 for 16 yards (2-D.Lenoir).
(9:47) (No Huddle, Shotgun) 4-D.Prescott pass short right to 1-J.Tolbert pushed ob at SF 20 for 9 yards (22-I.Yiadom).
(9:15) (Shotgun) 4-D.Prescott pass short right to 88-C.Lamb to SF 5 for 15 yards (7-C.Ward).
(8:40) (No Huddle, Shotgun) 15-E.Elliott up the middle to SF 7 for -2 yards (54-F.Warner).
(8:04) (Shotgun) 4-D.Prescott pass short left to 88-C.Lamb for 7 yards, TOUCHDOWN.
17-B.Aubrey extra point is GOOD, Center-44-T.Sieg, Holder-5-B.Anger.
17-B.Aubrey kicks 63 yards from DAL 35 to SF 2. 32-P.Taylor to SF 31 for 29 yards (30-J.Thomas).
(7:52) 31-I.Guerendo right end pushed ob at SF 35 for 4 yards (13-D.Overshown).
(7:10) 14-R.Pearsall left end pushed ob at DAL 26 for 39 yards (6-Do.Wilson).
(6:23) 32-P.Taylor left guard to DAL 23 for 3 yards (92-C.Watkins; 91-T.Wheat). PENALTY on SF, Illegal Formation, 5 yards, enforced at DAL 26 - No Play.
(6:08) 32-P.Taylor left guard to DAL 27 for 4 yards (50-E.Kendricks; 91-T.Wheat).
(5:24) 32-P.Taylor right end to DAL 22 for 5 yards (97-O.Odighizuwa; 58-M.Smith).
(4:38) (Shotgun) 13-B.Purdy pass incomplete short right.
(4:30) 41-A.Carlson 41 yard field goal is GOOD, Center-46-T.Pepper, Holder-3-M.Wishnowsky.
41-A.Carlson kicks 65 yards from SF 35 to end zone, Touchback to the DAL 30.
(4:25) (Shotgun) 15-E.Elliott left end to DAL 30 for no gain (0-R.Green).
(4:03) (No Huddle, Shotgun) 4-D.Prescott pass short left to 88-C.Lamb pushed ob at SF 49 for 21 yards (54-F.Warner).
(3:56) (No Huddle, Shotgun) 4-D.Prescott pass short right to 88-C.Lamb to SF 20 for 29 yards (6-M.Mustapha; 54-F.Warner). SF-51-R.Beal was injured during the play.
(3:36) (Shotgun) 4-D.Prescott pass deep left to 88-C.Lamb for 20 yards, TOUCHDOWN [99-M.Collins].
17-B.Aubrey extra point is GOOD, Center-44-T.Sieg, Holder-5-B.Anger. ** Injury Update: SF-51-R.Beal has returned to the game.
17-B.Aubrey kicks 65 yards from DAL 35 to end zone, Touchback to the SF 30.
(3:32) 13-B.Purdy scrambles left end to SF 37 for 7 yards (35-M.Liufau).
(3:25) 13-B.Purdy sacked at SF 30 for -7 yards (13-D.Overshown).
Timeout #1 by DAL at 03:25.
(3:22) (Shotgun) 13-B.Purdy pass short middle to 44-K.Juszczyk to SF 36 for 6 yards (28-M.Hooker, 50-E.Kendricks).
Timeout #2 by DAL at 03:22.
(3:15) 3-M.Wishnowsky punts 39 yards to DAL 25, Center-46-T.Pepper, downed by SF-18-C.Conley.
Timeout #3 by DAL at 03:15.
(3:05) (Shotgun) 4-D.Prescott pass incomplete short middle to 88-C.Lamb (54-F.Warner).
(3:00) (Shotgun) 4-D.Prescott pass incomplete short right.
(2:55) (Shotgun) 4-D.Prescott pass incomplete deep left to 9-K.Turpin.
(2:49) (Shotgun) 4-D.Prescott pass incomplete deep right to 83-J.Brooks.
(2:43) 31-I.Guerendo right guard to DAL 21 for 4 yards (50-E.Kendricks; 2-J.Lewis).
(2:00) 31-I.Guerendo right guard to DAL 17 for 4 yards (7-T.Diggs).
(1:16) 31-I.Guerendo left end to DAL 3 for 14 yards (14-M.Bell).
(:30) 13-B.Purdy kneels to DAL 4 for -1 yards.
END GAME"

dal_sf_summary <- "Headline: Brock Purdy leads the 49ers to a 30-24 victory over the Cowboys.
Summary: Brock Purdy bounced back from a shaky first half to lead three touchdown drives in the third quarter and get his team the win. San Francisco took control in the third quarter, driving 60 yards after the opening kick of the half to score on Isaac Guerendo's 4-yard run. Purdy then had a TD run and threw a TD pass, set up by Lenoir's interception, during the 21-0 third-quarter blitz that turned a 10-6 halftime deficit into a 27-10 lead. But San Francisco had to hold on late after Dak Prescott threw two TD passes to CeeDee Lamb to cut the deficit to six. Prescott had a chance to complete the comeback, but threw four straight incomplete passes after getting the ball back with 3:05 left in the fourth quarter.
Notable Performances: Purdy went 18 for 26 for 260 yards. George Kittle finished with six catches for 128 yards. Prescott finished 25 for 38 for 243 yards, and 2 interceptions. Lamb caught 13 passes for 146 yards.
Injuries 49ers: RB Jordan Mason left the game in the first half and WR Deebo Samuel left in the fourth quarter.
"

# Append game log and summary to training dataframe 
dal_sf <- as.data.frame(cbind(dal_sf_log, dal_sf_summary)) %>% rename(game_log = dal_sf_log, game_summary = dal_sf_summary)
training <- rbind(training, dal_sf)

det_gb_log <- "GAME
39-J.Bates kicks 54 yards from DET 35 to GB 11. 25-K.Nixon pushed ob at GB 40 for 29 yards (46-J.Campbell). PENALTY on GB-25-K.Nixon, Unnecessary Roughness, 15 yards, enforced at GB 40.
(14:56) (Shotgun) 8-J.Jacobs right tackle to GB 34 for 9 yards (32-B.Branch; 23-C.Davis).
(14:17) (Shotgun) 8-J.Jacobs right end pushed ob at GB 47 for 13 yards (31-K.Joseph).
(13:41) (Shotgun) 10-J.Love pass short left to 87-R.Doubs pushed ob at DET 47 for 6 yards (0-T.Arnold).
(13:03) (Shotgun) 8-J.Jacobs right end to DET 46 for 1 yard (46-J.Campbell; 54-A.McNeill).
(12:16) (Shotgun) 10-J.Love pass short right to 8-J.Jacobs to DET 44 for 2 yards (46-J.Campbell; 23-C.Davis).
(11:46) (Shotgun) Direct snap to 85-T.Kraft. 85-T.Kraft up the middle to DET 42 for 2 yards (91-L.Onwuzurike).
(11:04) PENALTY on GB-8-J.Jacobs, False Start, 5 yards, enforced at DET 42 - No Play.
(10:47) (Shotgun) 10-J.Love pass incomplete short right to 87-R.Doubs.
(10:44) 10-J.Love pass deep right to 9-C.Watson pushed ob at DET 28 for 19 yards (23-C.Davis).
(10:08) (Shotgun) 8-J.Jacobs right end to DET 28 for no gain (91-L.Onwuzurike).
(9:26) (Shotgun) 8-J.Jacobs right tackle to DET 17 for 11 yards (34-A.Anzalone).
(8:40) 8-J.Jacobs left tackle to DET 16 for 1 yard (32-B.Branch, 46-J.Campbell).
(7:58) (Shotgun) 30-C.Brooks left guard to DET 12 for 4 yards (54-A.McNeill).
(7:14) (Shotgun) 10-J.Love pass incomplete short middle to 30-C.Brooks.
(7:09) 17-B.McManus 30 yard field goal is GOOD, Center-42-M.Orzech, Holder-19-D.Whelan.
17-B.McManus kicks 65 yards from GB 35 to end zone, Touchback to the DET 30.
(7:06) 5-D.Montgomery left guard to DET 38 for 8 yards (7-Q.Walker, 29-X.McKinney).
(6:32) 5-D.Montgomery right tackle to DET 42 for 4 yards (7-Q.Walker).
(5:56) 16-J.Goff pass short middle to 14-A.St. Brown to DET 43 for 1 yard (21-E.Stokes).
(5:18) 5-D.Montgomery left guard to GB 46 for 11 yards (25-K.Nixon; 29-X.McKinney).
(4:51) (No Huddle, Shotgun) 16-J.Goff pass short right to 14-A.St. Brown to GB 41 for 5 yards (7-Q.Walker).
(4:14) 70-D.Skipper reported in as eligible. 16-J.Goff pass deep middle to 87-S.LaPorta to GB 22 for 19 yards (21-E.Stokes).
(3:39) 5-D.Montgomery right end pushed ob at GB 18 for 4 yards (25-K.Nixon).
(3:04) 16-J.Goff pass short right to 89-B.Wright to GB 17 for 1 yard (25-K.Nixon).
(2:22) (Shotgun) 5-D.Montgomery right guard to GB 8 for 9 yards (56-E.Cooper, 29-X.McKinney).
(1:43) 5-D.Montgomery right guard to GB 7 for 1 yard (7-Q.Walker; 20-J.Bullard).
(1:01) (Shotgun) 5-D.Montgomery up the middle to GB 7 for no gain (90-L.Van Ness; 45-Er.Wilson).
(:19) (Shotgun) 5-D.Montgomery right end to GB 5 for 2 yards (56-E.Cooper; 55-K.Enagbare).
END QUARTER 1
(15:00) (Shotgun) PENALTY on GB-93-T.Slaton, Encroachment, 2 yards, enforced at GB 5 - No Play.
(15:00) (Shotgun) 16-J.Goff pass short left to 14-A.St. Brown for 3 yards, TOUCHDOWN.
39-J.Bates extra point is GOOD, Center-49-H.Hatten, Holder-3-J.Fox.
39-J.Bates kicks 65 yards from DET 35 to GB 0. 25-K.Nixon to GB 24 for 24 yards (41-J.Houston, 46-J.Campbell).
(14:49) (Shotgun) 8-J.Jacobs up the middle to DET 39 for 37 yards (31-K.Joseph).
(14:06) 8-J.Jacobs right tackle to DET 35 for 4 yards (46-J.Campbell, 91-L.Onwuzurike).
(13:25) (Shotgun) 31-Em.Wilson up the middle to DET 32 for 3 yards (23-C.Davis).
(12:44) (Shotgun) PENALTY on GB-75-S.Rhyan, False Start, 5 yards, enforced at DET 32 - No Play.
(12:23) (Shotgun) 10-J.Love pass incomplete deep right to 9-C.Watson.
(12:17) (Shotgun) PENALTY on GB, Delay of Game, 5 yards, enforced at DET 37 - No Play.
(12:17) 19-D.Whelan punts 33 yards to DET 9, Center-42-M.Orzech, downed by GB-80-B.Melton.
(12:09) 16-J.Goff pass short left to 26-J.Gibbs pushed ob at DET 20 for 11 yards (7-Q.Walker).
(11:35) 26-J.Gibbs up the middle to DET 24 for 4 yards (7-Q.Walker; 95-D.Wyatt).
(10:57) (Shotgun) 26-J.Gibbs left guard to DET 26 for 2 yards (58-I.McDuffie; 52-R.Gary).
(10:19) (Shotgun) 16-J.Goff sacked at DET 18 for -8 yards (sack split by 53-A.Mosby and 52-R.Gary).
(9:31) 3-J.Fox punts 54 yards to GB 28, Center-49-H.Hatten. 11-J.Reed to GB 32 for 4 yards (46-J.Campbell; 49-H.Hatten). PENALTY on GB-36-K.Hadden, Offensive Holding, 10 yards, enforced at GB 28.
(9:19) (Shotgun) 10-J.Love pass short middle to 85-T.Kraft to GB 24 for 6 yards (42-J.Reeves-Maybin; 34-A.Anzalone).
(8:36) (Shotgun) 10-J.Love pass short right to 8-J.Jacobs pushed ob at GB 35 for 11 yards (34-A.Anzalone).
(7:58) (Shotgun) 8-J.Jacobs left guard to GB 43 for 8 yards (31-K.Joseph, 0-T.Arnold).
(7:20) (Shotgun) 8-J.Jacobs left end to GB 48 for 5 yards (34-A.Anzalone; 46-J.Campbell).
(6:42) (Shotgun) 10-J.Love pass incomplete short right to 11-J.Reed (23-C.Davis).
(6:39) 10-J.Love pass short middle to 30-C.Brooks to DET 46 for 6 yards (34-A.Anzalone; 46-J.Campbell). PENALTY on GB-77-J.Morgan, Offensive Holding, 10 yards, enforced at GB 48 - No Play.
(6:18) (Shotgun) 10-J.Love pass incomplete deep left to 80-B.Melton [41-J.Houston]. PENALTY on DET-32-B.Branch, Disqualification, 15 yards, enforced at GB 38 - No Play. PENALTY on DET-32-B.Branch, Unsportsmanlike Conduct, 15 yards, enforced between downs.
(6:10) (Shotgun) PENALTY on GB-87-R.Doubs, False Start, 5 yards, enforced at DET 32 - No Play.
(6:10) (Shotgun) 10-J.Love pass short right to 11-J.Reed pushed ob at DET 28 for 9 yards (23-C.Davis).
(5:36) (Shotgun) 10-J.Love pass incomplete short middle.
(5:31) (Shotgun) 10-J.Love pass incomplete short left to 85-T.Kraft.
(5:28) 17-B.McManus 46 yard field goal is No Good, Wide Left, Center-42-M.Orzech, Holder-19-D.Whelan.
(5:23) 16-J.Goff pass deep middle to 14-A.St. Brown to GB 38 for 26 yards (20-J.Bullard).
(4:45) 16-J.Goff pass short right to 5-D.Montgomery to GB 35 for 3 yards (45-Er.Wilson).
(4:09) 16-J.Goff pass short left to 5-D.Montgomery to GB 29 for 6 yards (56-E.Cooper; 25-K.Nixon).
(3:26) 16-J.Goff pass short right to 8-A.Robinson to GB 27 for 2 yards (25-K.Nixon) [96-C.Wooden].
(2:45) (Shotgun) 16-J.Goff pass short middle to 17-T.Patrick to GB 18 for 9 yards (56-E.Cooper).
(2:00) 70-D.Skipper reported in as eligible. 5-D.Montgomery right tackle to GB 10 for 8 yards (7-Q.Walker, 55-K.Enagbare).
(1:12) 70-D.Skipper reported in as eligible. 5-D.Montgomery left end to GB 7 for 3 yards (93-T.Slaton, 29-X.McKinney).
Timeout #1 by DET at 01:12.
(1:07) 5-D.Montgomery up the middle to GB 9 for -2 yards (52-R.Gary, 58-I.McDuffie).
Timeout #1 by GB at 01:07.
(1:03) (Shotgun) 16-J.Goff pass incomplete short right.
Timeout #2 by GB at 01:03.
(1:01) 39-J.Bates 27 yard field goal is GOOD, Center-49-H.Hatten, Holder-3-J.Fox.
39-J.Bates kicks 65 yards from DET 35 to end zone, Touchback to the GB 30.
(:58) (Shotgun) 10-J.Love pass short middle to 87-R.Doubs to GB 38 for 8 yards (46-J.Campbell).
(:42) (No Huddle, Shotgun) 10-J.Love pass short right intended for 8-J.Jacobs INTERCEPTED by 31-K.Joseph [34-A.Anzalone] at GB 27. 31-K.Joseph for 27 yards, TOUCHDOWN.
39-J.Bates extra point is GOOD, Center-49-H.Hatten, Holder-3-J.Fox.
39-J.Bates kicks 65 yards from DET 35 to end zone, Touchback to the GB 30.
(:32) (Shotgun) 10-J.Love pass short left to 30-C.Brooks pushed ob at GB 35 for 5 yards (12-B.Joseph).
(:23) (Shotgun) 10-J.Love pass short right to 30-C.Brooks to GB 48 for 13 yards (21-A.Robertson).
(:14) (Shotgun) 10-J.Love pass deep left to 11-J.Reed to DET 11 for 41 yards (12-B.Joseph).
Timeout #3 by GB at 00:14.
END QUARTER 2
17-B.McManus kicks 66 yards from GB 35 to DET -1. 30-K.Dorsey to DET 29 for 30 yards (59-T.Hopper, 20-J.Bullard).
(14:53) 16-J.Goff pass short right to 14-A.St. Brown to DET 40 for 11 yards (20-J.Bullard).
(14:15) 26-J.Gibbs left guard to DET 41 for 1 yard (93-T.Slaton; 91-P.Smith).
(13:38) (Shotgun) 26-J.Gibbs right end to DET 49 for 8 yards (7-Q.Walker).
(12:57) (Shotgun) 26-J.Gibbs up the middle to 50 for 1 yard (58-I.McDuffie). PENALTY on DET, Illegal Shift, 5 yards, enforced at DET 49 - No Play.
(12:36) (Shotgun) 16-J.Goff pass incomplete short middle to 11-K.Raymond. PENALTY on GB-25-K.Nixon, Defensive Holding, 5 yards, enforced at DET 44 - No Play.
(12:33) 70-D.Skipper reported in as eligible. 16-J.Goff pass short middle to 87-S.LaPorta to GB 42 for 9 yards (7-Q.Walker; 58-I.McDuffie).
(11:49) 26-J.Gibbs right tackle to GB 24 for 18 yards (24-C.Valentine).
(11:05) (Shotgun) 26-J.Gibbs right guard to GB 20 for 4 yards (93-T.Slaton).
(10:26) 26-J.Gibbs right tackle to GB 15 for 5 yards (25-K.Nixon).
(9:41) (Shotgun) 16-J.Goff pass incomplete short right to 26-J.Gibbs.
(9:36) (Shotgun) 26-J.Gibbs up the middle for 15 yards, TOUCHDOWN.
39-J.Bates extra point is GOOD, Center-49-H.Hatten, Holder-3-J.Fox.
39-J.Bates kicks 65 yards from DET 35 to end zone, Touchback to the GB 30.
(9:32) (Shotgun) 8-J.Jacobs up the middle to GB 33 for 3 yards (46-J.Campbell).
(8:57) (Shotgun) 31-Em.Wilson up the middle to GB 37 for 4 yards (46-J.Campbell).
(8:15) (Shotgun) 10-J.Love pass incomplete short middle to 13-D.Wicks.
(8:11) 19-D.Whelan punts 51 yards to DET 12, Center-42-M.Orzech, fair catch by 11-K.Raymond. PENALTY on DET-0-T.Arnold, Offensive Holding, 6 yards, enforced at DET 12.
(8:04) 16-J.Goff pass short right to 17-T.Patrick to DET 9 for 3 yards (7-Q.Walker).
(7:29) 5-D.Montgomery right tackle to DET 10 for 1 yard (56-E.Cooper; 96-C.Wooden).
(6:43) (Shotgun) 16-J.Goff pass short middle to 14-A.St. Brown to DET 15 for 5 yards (7-Q.Walker; 91-P.Smith).
(6:04) 3-J.Fox punts 60 yards to GB 25, Center-49-H.Hatten, fair catch by 11-J.Reed.
(5:57) (Shotgun) 10-J.Love pass short right to 9-C.Watson to GB 29 for 4 yards (0-T.Arnold).
(5:14) (Shotgun) 10-J.Love pass deep right to 11-J.Reed pushed ob at DET 39 for 32 yards (12-B.Joseph).
(4:41) (Shotgun) 10-J.Love pass short left to 87-R.Doubs ran ob at DET 33 for 6 yards.
(4:07) (Shotgun) 8-J.Jacobs up the middle to DET 30 for 3 yards (91-L.Onwuzurike, 53-T.Nowaske).
(3:22) (Shotgun) 10-J.Love pass short right to 11-J.Reed to DET 27 for 3 yards. Detroit challenged the pass completion ruling, and the play was Upheld. The ruling on the field stands. (Timeout #1.)
(3:05) (Shotgun) 10-J.Love pass short right to 85-T.Kraft pushed ob at DET 14 for 13 yards (46-J.Campbell).
(2:21) (Shotgun) 10-J.Love pass incomplete short right to 9-C.Watson.
(2:17) (Shotgun) 10-J.Love FUMBLES (Aborted) at DET 18, recovered by GB-31-Em.Wilson at DET 23. 31-Em.Wilson to DET 14 for 9 yards (0-T.Arnold; 90-C.Smith).
(1:31) (Shotgun) 10-J.Love FUMBLES (Aborted) at DET 19, and recovers at DET 20.
(:52) 17-B.McManus 38 yard field goal is GOOD, Center-42-M.Orzech, Holder-19-D.Whelan.
17-B.McManus kicks 62 yards from GB 35 to DET 3. 83-I.Williams to DET 39 for 36 yards (29-X.McKinney; 27-K.Oladapo).
(:42) 5-D.Montgomery left tackle to DET 38 for -1 yards (58-I.McDuffie, 90-L.Van Ness).
END QUARTER 3
(15:00) (Shotgun) 26-J.Gibbs left tackle to DET 39 for 1 yard (24-C.Valentine; 93-T.Slaton).
(14:19) (Shotgun) 16-J.Goff pass incomplete short left to 87-S.LaPorta.
(14:14) 3-J.Fox punts 44 yards to GB 17, Center-49-H.Hatten, fair catch by 11-J.Reed.
(14:07) (Shotgun) 10-J.Love pass short middle to 9-C.Watson to GB 31 for 14 yards (12-B.Joseph).
(13:25) PENALTY on GB-50-Z.Tom, False Start, 5 yards, enforced at GB 31 - No Play.
(13:25) (Shotgun) 10-J.Love pass incomplete deep right to 13-D.Wicks (23-C.Davis).
(13:19) (Shotgun) 10-J.Love pass incomplete deep left to 9-C.Watson [54-A.McNeill].
(13:13) (Shotgun) 10-J.Love pass short middle to 30-C.Brooks to GB 36 for 10 yards (42-J.Reeves-Maybin).
(12:30) (No Huddle, Shotgun) 10-J.Love pass deep right to 11-J.Reed to DET 36 for 28 yards (15-E.Rakestraw).
(12:00) (No Huddle, Shotgun) 10-J.Love FUMBLES (Aborted) at DET 40, and recovers at DET 38. 10-J.Love to DET 37 for 1 yard (34-A.Anzalone).
(11:21) (No Huddle, Shotgun) 10-J.Love pass deep right to 80-B.Melton to DET 18 for 19 yards (31-K.Joseph).
(10:51) (No Huddle, Shotgun) 30-C.Brooks right guard to DET 9 for 9 yards (12-B.Joseph). DET-23-C.Davis was injured during the play.
(10:23) (Shotgun) 10-J.Love pass incomplete short right.
(10:12) 10-J.Love pass incomplete short right to 13-D.Wicks.
(10:07) (Shotgun) 8-J.Jacobs up the middle to DET 9 for no gain (53-T.Nowaske; 46-J.Campbell). TURNOVER ON DOWNS.
Timeout #1 by GB at 10:07.
(10:03) 26-J.Gibbs left tackle to DET 12 for 3 yards (7-Q.Walker; 91-P.Smith).
(9:25) 26-J.Gibbs left guard to DET 16 for 4 yards (95-D.Wyatt).
(8:48) (Shotgun) 16-J.Goff pass short middle to 14-A.St. Brown to DET 21 for 5 yards (21-E.Stokes).
(8:10) 11-K.Raymond right end to DET 9 for -12 yards (55-K.Enagbare).
(7:27) (Shotgun) 16-J.Goff pass incomplete short right [25-K.Nixon].
(7:20) (Shotgun) 16-J.Goff pass short left to 11-K.Raymond to DET 21 for 12 yards (20-J.Bullard).
(6:32) 3-J.Fox punts 41 yards to GB 38, Center-49-H.Hatten. 11-J.Reed to GB 45 for 7 yards (53-T.Nowaske). ** Injury Update: DET-42-J.Reeves-Maybin has returned to the game.
(6:22) (Shotgun) 10-J.Love pass short left to 31-Em.Wilson to GB 46 for 1 yard (0-T.Arnold). ** Injury Update: DET-23-C.Davis has returned to the game.
(5:57) (No Huddle, Shotgun) 10-J.Love pass short right to 87-R.Doubs pushed ob at DET 46 for 8 yards (23-C.Davis).
(5:35) (No Huddle, Shotgun) 31-Em.Wilson right end to DET 27 for 19 yards (41-J.Houston).
(5:02) (No Huddle, Shotgun) 10-J.Love pass incomplete deep right to 9-C.Watson.
(4:57) (Shotgun) 10-J.Love pass short right to 85-T.Kraft to DET 21 for 6 yards (23-C.Davis, 34-A.Anzalone).
(4:31) (No Huddle, Shotgun) 10-J.Love pass incomplete deep left to 80-B.Melton. PENALTY on DET-21-A.Robertson, Unsportsmanlike Conduct, 10 yards, enforced at DET 21.
(4:26) (Shotgun) 10-J.Love pass incomplete short right to 85-T.Kraft.
(4:18) (Shotgun) 10-J.Love pass short middle to 85-T.Kraft to DET 2 for 9 yards (12-B.Joseph).
(3:52) (No Huddle, Shotgun) 31-Em.Wilson right guard for 2 yards, TOUCHDOWN.
TWO-POINT CONVERSION ATTEMPT. 10-J.Love pass to 9-C.Watson is complete. ATTEMPT SUCCEEDS.
17-B.McManus kicks onside 18 yards from GB 35 to DET 47, out of bounds. Penalty on GB-17-B.McManus, Kickoff Out of Bounds, declined.
(3:49) 5-D.Montgomery right end to GB 46 for 7 yards (58-I.McDuffie; 45-Er.Wilson).
(3:42) 5-D.Montgomery left guard to GB 44 for 2 yards (29-X.McKinney; 24-C.Valentine).
Timeout #2 by GB at 03:42.
(2:54) 5-D.Montgomery left end to GB 40 for 4 yards (52-R.Gary).
(2:09) 5-D.Montgomery up the middle to GB 28 for 12 yards (55-K.Enagbare).
(2:03) 16-J.Goff pass short middle to 5-D.Montgomery to GB 14 for 14 yards (56-E.Cooper).
Timeout #3 by GB at 02:03.
(1:54) 16-J.Goff kneels to GB 15 for -1 yards.
(1:13) 16-J.Goff kneels to GB 15 for no gain.
(:36) 16-J.Goff kneels to GB 16 for -1 yards.
END GAME"

det_gb_summary <- "Headline: Kerby Joseph's pick-6 helps Lions beat Packers 24-14.
Summary: Green Bay opened the game with a 14-play drive that lasted nearly eight minutes but settled for McManus' 30-yard field goal. Then the Lions scored the next 24 points to take control. Detroit took the lead for good on the first play of the second quarter when Goff hit Amon-Ra St. Brown for a 3-yard touchdown on fourth-and-goal. Green Bay trailed 7-3 when Branch was ejected during a pass incompletion. Before that, Branch also drew an unsportsmanlike conduct penalty, giving the Packers a first down at the Detroit 32 rather than facing third-and-20 from their own 38. But the Packers failed to capitalize on the situation. Their drive ended with Brandon McManus sending a 46-yard field-goal attempt wide left. Detroit marched down the field on its next series and extended its lead to 10-3 on Jake Bates’ 27-yard field goal. Green Bay got the ball back with less than a minute left in the half. Facing second-and-2 from Green Bay’s 38, Love's pass went directly to defender Kerby Joseph, who caught it with arms outstretched and raced down the Lions sideline to the end zone. The Packers wasted several opportunities. Green Bay drove inside Detroit’s 35-yard line on three possessions without scoring. The Packers' four trips to the red zone resulted in one touchdown and two field goals.
Notable Performances: Goff completed his first 11 passes and finished 18 of 22 for 145 yards and a touchdown. Jordan Love went 23 of 39 for 273 yards with an interception. Jayden Reed had five catches for 113 yards and Josh Jacobs rushed for 95 yards. Kerby Joseph scored on a 27-yard interception return.
Injuries: None
"

# Append game log and summary to training dataframe 
det_gb <- as.data.frame(cbind(det_gb_log, det_gb_summary)) %>% rename(game_log = det_gb_log, game_summary = det_gb_summary)
training <- rbind(training, det_gb)

was_nyg_log <- "GAME
3-A.Seibert kicks 60 yards from WAS 35 to NYG 5. 20-E.Gray to NYG 30 for 25 yards (40-T.Owens, 39-J.Reaves).
(14:56) (Shotgun) 29-T.Tracy left guard to NYG 33 for 3 yards (92-D.Armstrong).
(14:21) (Shotgun) 29-T.Tracy left tackle to NYG 37 for 4 yards (54-B.Wagner).
(13:45) (Shotgun) 8-D.Jones pass short right to 84-T.Johnson to NYG 38 for 1 yard (11-J.Chinn).
(13:01) 38-M.Haack punts 32 yards to WAS 30, Center-59-C.Kreiter, out of bounds.
(12:54) (Shotgun) 30-A.Ekeler left end to WAS 31 for 1 yard (0-B.Burns; 58-B.Okereke).
(12:17) (No Huddle, Shotgun) 30-A.Ekeler right tackle to WAS 35 for 4 yards (93-R.Nunez-Roches; 27-J.Pinnock).
(11:52) (No Huddle, Shotgun) 5-J.Daniels pass incomplete short left to 85-N.Brown (21-A.Jackson).
(11:47) 10-T.Way punts 56 yards to NYG 9, Center-69-T.Ott. 87-I.Smith-Marsette to NYG 18 for 9 yards (57-N.Bellore). PENALTY on NYG-45-T.Fox, Illegal Blindside Block, 7 yards, enforced at NYG 15.
(11:35) (Shotgun) 29-T.Tracy up the middle to NYG 12 for 4 yards (54-B.Wagner).
(10:59) 29-T.Tracy left guard to NYG 22 for 10 yards (4-F.Luvu; 99-C.Ferrell).
(10:22) (Shotgun) 8-D.Jones right end pushed ob at NYG 46 for 24 yards (20-Q.Martin).
(9:41) (Shotgun) 26-D.Singletary right guard to WAS 39 for 15 yards (6-D.Fowler; 11-J.Chinn).
(9:02) (Shotgun) 29-T.Tracy left guard to WAS 29 for 10 yards (4-F.Luvu; 35-P.Butler).
(8:23) 8-D.Jones pass incomplete short middle to 26-D.Singletary (6-D.Fowler) [6-D.Fowler]. Washington challenged the incomplete pass ruling, and the play was REVERSED. 8-D.Jones sacked at WAS 39 for -10 yards (6-D.Fowler). FUMBLES (6-D.Fowler) [6-D.Fowler], touched at WAS 37, RECOVERED by WAS-54-B.Wagner at NYG 31.
(8:15) (Shotgun) 30-A.Ekeler up the middle to NYG 26 for 5 yards (41-M.McFadden; 0-B.Burns).
(7:43) (No Huddle, Shotgun) 5-J.Daniels pass incomplete deep right to 85-N.Brown. PENALTY on NYG-28-C.Flott, Defensive Pass Interference, 22 yards, enforced at NYG 26 - No Play.
(7:38) (Shotgun) 30-A.Ekeler left guard to NYG 1 for 3 yards (31-T.Nubin; 97-D.Lawrence).
(7:07) (No Huddle, Shotgun) 5-J.Daniels pass short left to 17-T.McLaurin for 1 yard, TOUCHDOWN.
3-A.Seibert extra point is GOOD, Center-69-T.Ott, Holder-10-T.Way.
3-A.Seibert kicks 62 yards from WAS 35 to NYG 3. 20-E.Gray to NYG 27 for 24 yards (0-M.Sainristil).
(6:57) 26-D.Singletary up the middle to NYG 31 for 4 yards (64-S.Day).
(6:25) (Shotgun) 26-D.Singletary left guard to NYG 36 for 5 yards (11-J.Chinn, 64-S.Day).
(5:53) (No Huddle, Shotgun) 26-D.Singletary right guard to NYG 37 for 1 yard (92-D.Armstrong; 94-D.Payne).
(5:16) (Shotgun) 29-T.Tracy right guard to NYG 41 for 4 yards (35-P.Butler).
(4:35) (Shotgun) 29-T.Tracy left guard to NYG 46 for 5 yards (54-B.Wagner; 11-J.Chinn).
(4:00) 8-D.Jones up the middle to NYG 47 for 1 yard (94-D.Payne).
(3:16) (Shotgun) 29-T.Tracy left tackle to WAS 49 for 4 yards (99-C.Ferrell).
(2:43) (Shotgun) 29-T.Tracy up the middle to WAS 45 for 4 yards (54-B.Wagner; 95-J.Newton).
(2:08) (Shotgun) 26-D.Singletary left tackle to WAS 39 for 6 yards (95-J.Newton; 11-J.Chinn).
(1:30) 8-D.Jones pass short left to 17-W.Robinson to WAS 45 for -6 yards (11-J.Chinn, 98-P.Mathis).
(:45) (Shotgun) 8-D.Jones scrambles right guard to WAS 34 for 11 yards (1-N.Igbinoghene).
(:02) (Shotgun) PENALTY on WAS-4-F.Luvu, Neutral Zone Infraction, 4 yards, enforced at WAS 34 - No Play.
END QUARTER 1
(15:00) 8-D.Jones up the middle to WAS 28 for 2 yards (6-D.Fowler; 11-J.Chinn).
(14:25) (Shotgun) 8-D.Jones right end pushed ob at WAS 16 for 12 yards (35-P.Butler).
(13:49) 8-D.Jones pass short left to 29-T.Tracy to WAS 13 for 3 yards (1-N.Igbinoghene).
(13:10) 86-D.Slayton left tackle to WAS 2 for 11 yards (11-J.Chinn).
(12:25) 8-D.Jones pass short right to 85-C.Manhertz for 2 yards, TOUCHDOWN.
99-J.McAtamney extra point is GOOD, Center-59-C.Kreiter, Holder-38-M.Haack.
99-J.McAtamney kicks 65 yards from NYG 35 to end zone, Touchback to the WAS 30.
(12:21) (Shotgun) 5-J.Daniels left end ran ob at WAS 39 for 9 yards (3-D.Banks).
(11:55) (No Huddle, Shotgun) 30-A.Ekeler left tackle to WAS 40 for 1 yard (97-D.Lawrence).
(11:20) (No Huddle, Shotgun) 5-J.Daniels pass deep right to 85-N.Brown ran ob at NYG 44 for 16 yards.
(10:45) (No Huddle) 5-J.Daniels pass short left to 85-N.Brown to NYG 41 for 3 yards (22-A.Phillips).
(10:08) (No Huddle, Shotgun) 30-A.Ekeler right guard to NYG 21 for 20 yards (27-J.Pinnock).
(9:30) (No Huddle, Shotgun) 5-J.Daniels pass short right to 30-A.Ekeler to NYG 12 for 9 yards (93-R.Nunez-Roches; 27-J.Pinnock).
(8:56) (No Huddle, Shotgun) 5-J.Daniels right end to NYG 13 for -1 yards (51-A.Ojulari).
(8:13) (No Huddle, Shotgun) Direct snap to 26-J.McNichols. 26-J.McNichols left tackle to NYG 12 for 1 yard (97-D.Lawrence; 3-D.Banks).
(7:32) (No Huddle) 73-T.Scott reported in as eligible. 5-J.Daniels scrambles right end pushed ob at NYG 6 for 6 yards (41-M.McFadden).
(6:53) (No Huddle, Shotgun) 30-A.Ekeler right guard to NYG 1 for 5 yards (58-B.Okereke).
(6:25) (No Huddle, Shotgun) 30-A.Ekeler up the middle for 1 yard, TOUCHDOWN.
3-A.Seibert extra point is GOOD, Center-69-T.Ott, Holder-10-T.Way.
3-A.Seibert kicks 61 yards from WAS 35 to NYG 4. 20-E.Gray to NYG 33 for 29 yards (39-J.Reaves; 11-J.Chinn).
(6:15) (Shotgun) 8-D.Jones pass incomplete short middle to 1-M.Nabers (4-F.Luvu).
(6:11) (Shotgun) 29-T.Tracy right guard to NYG 35 for 2 yards (54-B.Wagner; 96-J.Holmes).
(5:34) (Shotgun) 8-D.Jones pass incomplete short left to 84-T.Johnson (11-J.Chinn) [92-D.Armstrong].
(5:30) 38-M.Haack punts 60 yards to WAS 5, Center-59-C.Kreiter. 14-O.Zaccheaus ran ob at WAS 13 for 8 yards (49-M.Adams).
(5:19) (Shotgun) 26-J.McNichols right tackle to WAS 19 for 6 yards (93-R.Nunez-Roches; 22-A.Phillips).
(4:53) (No Huddle, Shotgun) 5-J.Daniels scrambles left guard to WAS 26 for 7 yards (31-T.Nubin; 58-B.Okereke).
(4:24) (No Huddle, Shotgun) 30-A.Ekeler right tackle to WAS 25 for -1 yards (28-C.Flott, 41-M.McFadden).
(3:50) (No Huddle, Shotgun) 5-J.Daniels pass deep left to 85-N.Brown to NYG 44 for 31 yards (41-M.McFadden).
(3:12) (No Huddle, Shotgun) 26-J.McNichols right end to NYG 46 for -2 yards (58-B.Okereke).
(2:29) (No Huddle, Shotgun) 5-J.Daniels pass short right to 14-O.Zaccheaus ran ob at NYG 40 for 6 yards (28-C.Flott).
(2:00) (Shotgun) 5-J.Daniels pass short left to 86-Z.Ertz to NYG 35 for 5 yards (22-A.Phillips).
(1:20) (No Huddle, Shotgun) 30-A.Ekeler up the middle to NYG 34 for 1 yard (41-M.McFadden, 96-A.Watts). The Replay Official reviewed the first down ruling, and the play was Upheld. The ruling on the field stands.
(:51) (Shotgun) 5-J.Daniels scrambles up the middle pushed ob at NYG 18 for 16 yards (41-M.McFadden). PENALTY on WAS-67-N.Allegretti, Offensive Holding, 10 yards, enforced at NYG 34 - No Play.
(:43) (No Huddle, Shotgun) 5-J.Daniels pass incomplete short left to 26-J.McNichols (0-B.Burns).
(:40) (Shotgun) 26-J.McNichols left guard to NYG 42 for 2 yards (0-B.Burns; 93-R.Nunez-Roches).
Timeout #1 by WAS at 00:40.
(:20) (Shotgun) 5-J.Daniels pass short right to 2-D.Brown to NYG 18 for 24 yards (19-I.Simmons; 21-A.Jackson).
Timeout #2 by WAS at 00:20.
(:11) (Shotgun) 5-J.Daniels pass deep left to 17-T.McLaurin for 18 yards, TOUCHDOWN.
Timeout #3 by WAS at 00:11.
3-A.Seibert extra point is GOOD, Center-69-T.Ott, Holder-10-T.Way.
3-A.Seibert kicks 59 yards from WAS 35 to NYG 6. 87-I.Smith-Marsette to NYG 27 for 21 yards (39-J.Reaves; 32-M.Walker).
END QUARTER 2
99-J.McAtamney kicks 65 yards from NYG 35 to end zone, Touchback to the WAS 30.
(15:00) (Shotgun) 30-A.Ekeler right guard to WAS 32 for 2 yards (58-B.Okereke).
(14:24) (No Huddle, Shotgun) 5-J.Daniels pass incomplete short middle.
(14:20) (No Huddle, Shotgun) 5-J.Daniels pass incomplete deep left to 17-T.McLaurin.
(14:16) 10-T.Way punts 53 yards to NYG 15, Center-69-T.Ott. 87-I.Smith-Marsette to NYG 21 for 6 yards (35-P.Butler; 57-N.Bellore).
(14:04) (Shotgun) 8-D.Jones sacked at NYG 14 for -7 yards (92-D.Armstrong). PENALTY on WAS-92-D.Armstrong, Roughing the Passer, 15 yards, enforced at NYG 21 - No Play.
(13:46) (Shotgun) 29-T.Tracy up the middle to NYG 36 for no gain (94-D.Payne; 95-J.Newton).
(13:20) (No Huddle, Shotgun) 8-D.Jones pass short left to 1-M.Nabers to NYG 42 for 6 yards (25-B.St-Juste).
(12:45) (Shotgun) 8-D.Jones pass short right to 1-M.Nabers to NYG 45 for 3 yards (0-M.Sainristil).
(12:09) 8-D.Jones left guard to NYG 47 for 2 yards (6-D.Fowler).
(11:30) 8-D.Jones pass short middle to 1-M.Nabers to WAS 37 for 16 yards (25-B.St-Juste).
(10:44) 29-T.Tracy right guard to WAS 36 for 1 yard (54-B.Wagner, 6-D.Fowler).
(10:08) (Shotgun) 8-D.Jones sacked at WAS 40 for -4 yards (6-D.Fowler).
(9:22) (Shotgun) 8-D.Jones pass short left to 86-D.Slayton to WAS 29 for 11 yards (0-M.Sainristil).
(8:41) (Shotgun) 8-D.Jones pass short left to 1-M.Nabers to WAS 27 for 2 yards (25-B.St-Juste).
(8:16) (No Huddle, Shotgun) 8-D.Jones pass incomplete short left to 1-M.Nabers.
(8:13) 8-D.Jones pass short left to 86-D.Slayton to WAS 12 for 15 yards (25-B.St-Juste).
(7:35) (Shotgun) 29-T.Tracy left end to WAS 9 for 3 yards (95-J.Newton).
(6:58) 29-T.Tracy left tackle to WAS 8 for 1 yard (92-D.Armstrong; 4-F.Luvu).
(6:17) (Shotgun) 29-T.Tracy right guard to WAS 3 for 5 yards (98-P.Mathis; 95-J.Newton).
(5:33) (Shotgun) 8-D.Jones pass short right to 17-W.Robinson for 3 yards, TOUCHDOWN NULLIFIED by Penalty. PENALTY on NYG-86-D.Slayton, Offensive Pass Interference, 10 yards, enforced at WAS 3 - No Play.
(5:31) 99-J.McAtamney 31 yard field goal is GOOD, Center-59-C.Kreiter, Holder-38-M.Haack.
99-J.McAtamney kicks 65 yards from NYG 35 to end zone, Touchback to the WAS 30.
(5:27) (Shotgun) 5-J.Daniels scrambles right end to WAS 46 for 16 yards (28-C.Flott).
(4:51) (No Huddle, Shotgun) 23-C.Rodriguez left tackle to WAS 47 for 1 yard (58-B.Okereke; 45-T.Fox).
(4:13) (No Huddle, Shotgun) 5-J.Daniels pass short right to 85-N.Brown to NYG 45 for 8 yards (31-T.Nubin; 58-B.Okereke).
(3:40) (No Huddle) 5-J.Daniels pass short left to 82-B.Sinnott pushed ob at NYG 33 for 12 yards (41-M.McFadden).
(3:03) (No Huddle, Shotgun) 23-C.Rodriguez left tackle to NYG 27 for 6 yards (97-D.Lawrence; 45-T.Fox).
(2:27) (No Huddle, Shotgun) 23-C.Rodriguez right tackle to NYG 19 for 8 yards (58-B.Okereke).
(1:56) (No Huddle, Shotgun) 5-J.Daniels pass short right to 30-A.Ekeler to NYG 15 for 4 yards (41-M.McFadden).
(1:24) (No Huddle, Shotgun) 5-J.Daniels pass short right to 85-N.Brown to NYG 13 for 2 yards (27-J.Pinnock).
(:43) (No Huddle, Shotgun) 5-J.Daniels pass incomplete short right [51-A.Ojulari].
(:36) 3-A.Seibert 31 yard field goal is GOOD, Center-69-T.Ott, Holder-10-T.Way.
3-A.Seibert kicks 65 yards from WAS 35 to landing zone to end zone, Touchback to the NYG 20.
(:33) (Shotgun) 8-D.Jones pass incomplete deep left to 84-T.Johnson (1-N.Igbinoghene).
(:27) (Shotgun) 26-D.Singletary up the middle to NYG 21 for 1 yard (54-B.Wagner; 97-E.Obada).
END QUARTER 3
(15:00) (Shotgun) 8-D.Jones pass short right to 17-W.Robinson to NYG 31 for 10 yards (1-N.Igbinoghene).
(14:27) (Shotgun) 26-D.Singletary left tackle to NYG 32 for 1 yard (4-F.Luvu; 95-J.Newton).
(13:49) 8-D.Jones pass short right to 1-M.Nabers to NYG 45 for 13 yards (25-B.St-Juste).
(13:07) 8-D.Jones pass incomplete short middle to 84-T.Johnson. WAS-98-P.Mathis was injured during the play.
(13:03) (Shotgun) 8-D.Jones pass short middle to 1-M.Nabers to 50 for 5 yards (20-Q.Martin; 4-F.Luvu).
(12:36) (No Huddle, Shotgun) 8-D.Jones pass incomplete short left to 1-M.Nabers. PENALTY on WAS-25-B.St-Juste, Defensive Pass Interference, 8 yards, enforced at 50 - No Play.
(12:30) (Shotgun) 8-D.Jones pass short right to 1-M.Nabers to WAS 47 for -5 yards (11-J.Chinn). NYG-17-W.Robinson was injured during the play.
(11:49) (Shotgun) 29-T.Tracy right guard to WAS 41 for 6 yards (92-D.Armstrong).
(11:05) (Shotgun) 8-D.Jones pass short middle to 1-M.Nabers to WAS 33 for 8 yards (0-M.Sainristil). New York Giants challenged the short of the line to gain ruling, and the play was REVERSED. (Shotgun) 8-D.Jones pass short middle to 1-M.Nabers to WAS 31 for 10 yards (0-M.Sainristil). ** Injury Update: NYG-17-W.Robinson has returned to the game.
(10:48) (Shotgun) 8-D.Jones pass short left to 17-W.Robinson to WAS 25 for 6 yards (11-J.Chinn).
(10:10) 8-D.Jones pass short middle to 86-D.Slayton to WAS 2 for 23 yards (20-Q.Martin; 11-J.Chinn).
(9:31) (Shotgun) 8-D.Jones left end for 2 yards, TOUCHDOWN.
TWO-POINT CONVERSION ATTEMPT. 8-D.Jones is sacked. ATTEMPT FAILS.
99-J.McAtamney kicks 65 yards from NYG 35 to WAS 0. 30-A.Ekeler to WAS 35 for 35 yards (31-T.Nubin; 53-D.Muasau).
(9:19) (Shotgun) 26-J.McNichols up the middle to WAS 36 for 1 yard (0-B.Burns, 97-D.Lawrence).
(8:42) (No Huddle, Shotgun) 5-J.Daniels pass incomplete short middle to 30-A.Ekeler.
(8:37) (No Huddle, Shotgun) 5-J.Daniels pass short left to 30-A.Ekeler to NYG 36 for 28 yards (21-A.Jackson). NYG-22-A.Phillips was injured during the play.
(7:57) (Shotgun) 26-J.McNichols left tackle to NYG 35 for 1 yard (41-M.McFadden; 28-C.Flott).
(7:23) (No Huddle, Shotgun) 26-J.McNichols right tackle to NYG 27 for 8 yards (41-M.McFadden; 93-R.Nunez-Roches).
(6:40) (No Huddle, Shotgun) 26-J.McNichols up the middle to NYG 24 for 3 yards (0-B.Burns, 41-M.McFadden).
(5:58) (Shotgun) 23-C.Rodriguez right guard to NYG 7 for 17 yards (27-J.Pinnock).
(5:15) (Shotgun) 23-C.Rodriguez right tackle to NYG 6 for 1 yard (58-B.Okereke).
(4:33) (No Huddle, Shotgun) 23-C.Rodriguez up the middle to NYG 2 for 4 yards (45-T.Fox).
(3:56) (No Huddle, Shotgun) 5-J.Daniels pass incomplete short right [51-A.Ojulari].
(3:49) 3-A.Seibert 20 yard field goal is GOOD, Center-69-T.Ott, Holder-10-T.Way.
3-A.Seibert kicks 65 yards from WAS 35 to NYG 0. 20-E.Gray to NYG 26 for 26 yards (58-J.Magee).
(3:41) (Shotgun) 8-D.Jones pass short right to 1-M.Nabers to NYG 35 for 9 yards (25-B.St-Juste).
(3:22) (No Huddle, Shotgun) 8-D.Jones pass short middle to 84-T.Johnson to 50 for 15 yards (11-J.Chinn).
(3:02) (No Huddle, Shotgun) 8-D.Jones pass deep left intended for 86-D.Slayton INTERCEPTED by 20-Q.Martin at WAS 33. 20-Q.Martin to WAS 35 for 2 yards (86-D.Slayton). FUMBLES (86-D.Slayton), RECOVERED by NYG-86-D.Slayton at WAS 32. 86-D.Slayton to WAS 27 for 5 yards (20-Q.Martin). Penalty on WAS-0-M.Sainristil, Defensive Pass Interference, declined. The Replay Official reviewed the fumble ruling, and the play was REVERSED. (No Huddle, Shotgun) 8-D.Jones pass deep left intended for 86-D.Slayton INTERCEPTED by 20-Q.Martin at WAS 33. 20-Q.Martin to WAS 35 for 2 yards (86-D.Slayton). PENALTY on WAS-0-M.Sainristil, Defensive Pass Interference, 15 yards, enforced at 50 - No Play.
(2:57) (Shotgun) 8-D.Jones pass incomplete short left to 17-W.Robinson.
(2:54) (Shotgun) 8-D.Jones pass deep middle to 84-T.Johnson for 35 yards, TOUCHDOWN [99-C.Ferrell].
TWO-POINT CONVERSION ATTEMPT. 8-D.Jones is sacked. ATTEMPT FAILS.
99-J.McAtamney kicks 65 yards from NYG 35 to end zone, Touchback to the WAS 30.
(2:48) (Shotgun) 23-C.Rodriguez left tackle to WAS 31 for 1 yard (41-M.McFadden; 51-A.Ojulari). ** Injury Update: NYG-22-A.Phillips has returned to the game.
(2:05) (No Huddle, Shotgun) 5-J.Daniels pass deep left to 14-O.Zaccheaus to NYG 27 for 42 yards (31-T.Nubin).
(1:56) (Shotgun) 23-C.Rodriguez right tackle to NYG 23 for 4 yards (98-D.Davidson). PENALTY on NYG-98-D.Davidson, Face Mask, 12 yards, enforced at NYG 23.
(1:50) (Shotgun) 23-C.Rodriguez right tackle to NYG 6 for 5 yards (28-C.Flott).
(1:46) (Shotgun) 23-C.Rodriguez right guard to NYG 2 for 4 yards (98-D.Davidson).
Timeout #1 by NYG at 01:46.
(1:41) (Shotgun) 23-C.Rodriguez up the middle to NYG 1 for 1 yard (98-D.Davidson, 97-D.Lawrence).
Timeout #2 by NYG at 01:41.
(1:37) 5-J.Daniels kneels to NYG 1 for no gain.
Timeout #3 by NYG at 01:37.
(:57) 5-J.Daniels kneels to NYG 2 for -1 yards.
(:25) 5-J.Daniels kneels to NYG 3 for -1 yards.
END GAME"

was_nyg_summary <- "Headline: Jayden Daniels leads Commanders to 27-22 win over Giants.
Summary: The Commanders got off to a fast start and held onto the lead throughout. Daniels hit Terry McLaurin on scoring passes of 1 and 18 yards in the first half, and Austin Ekeler scored on a 1-yard run. He iced the game with a 42-yard pass to Olamide Zaccheaus after New York got within five. Daniel Jones threw a 2-yard touchdown pass to tight end Chris Manhertz and powered his way to a 2-yard fourth-quarter TD run for New York, in an attempt to cut into the Commanders lead. He added a late 35-yard TD pass to Theo Johnson, but the Giants missed both 2-point conversion attempts. In addition, the Giants had several other blunders, including a fumble recovered by the defense after Fowler’s sack of Jones, and TD called back by an offensive pass interference on fourth-and-1 from the Washington 3 while trailing 21-7.
Notable Performances: Daniels was in control throughout, finishing 15 of 22 for 209 yards. Jones finished 20 of 26 for 174 yards. Malik Nabers had nine catches for 59 yards. Austin Seibert kicked 2 field goals. Linebacker Dante Fowler had a big strip-sack early to set up the opening touchdown.
Injuries: Washington: DT Philarian Mathis left in the fourth quarter. Giants: WRs Darius Slayton and Ihmir Smith-Marsette both exited late. "

# Append game log and summary to training dataframe 
was_nyg <- as.data.frame(cbind(was_nyg_log, was_nyg_summary)) %>% rename(game_log = was_nyg_log, game_summary = was_nyg_summary)
training <- rbind(training, was_nyg)

atl_no_log <- "GAME
19-B.Grupe kicks 63 yards from NO 35 to ATL 2. 34-R.McCloud to ATL 26 for 24 yards (48-J.Gray).
(14:54) 7-B.Robinson left end to ATL 32 for 6 yards (20-P.Werner).
(14:21) 7-B.Robinson right tackle to ATL 32 for no gain (20-P.Werner; 93-N.Shepherd).
(13:45) (Shotgun) 18-K.Cousins pass short middle to 34-R.McCloud to ATL 43 for 11 yards (27-S.Jean-Charles).
(13:25) (No Huddle) 18-K.Cousins pass incomplete short right [98-P.Turner].
(13:18) (Shotgun) 18-K.Cousins pass incomplete short left to 1-D.Mooney.
(13:13) (Shotgun) 18-K.Cousins pass incomplete deep left to 5-D.London (32-T.Mathieu).
(13:09) 13-B.Pinion punts 45 yards to NO 12, Center-49-L.McCullough, fair catch by 80-J.Jackson.
(13:02) 4-D.Carr pass short left to 7-T.Hill for 88 yards, TOUCHDOWN NULLIFIED by Penalty. PENALTY on NO-87-F.Moreau, Offensive Holding, 10 yards, enforced at NO 46.
(12:46) 41-A.Kamara left tackle pushed ob at NO 47 for 11 yards (55-K.Elliss).
(12:08) (Shotgun) 41-A.Kamara right end to ATL 46 for 7 yards (90-D.Onyemata).
(11:39) (No Huddle) 41-A.Kamara right tackle to ATL 44 for 2 yards (53-N.Landman).
(11:06) 7-T.Hill right guard to ATL 41 for 3 yards (99-E.Goldman; 97-G.Jarrett).
(10:23) (Shotgun) 4-D.Carr pass incomplete short right to 33-J.Mims.
(10:17) 7-T.Hill left guard to ATL 35 for 6 yards (92-K.Kareem).
(9:37) (Shotgun) 41-A.Kamara left guard to ATL 30 for 5 yards (92-K.Kareem; 51-D.Malone).
(9:01) (Shotgun) 4-D.Carr pass short middle to 83-J.Johnson to ATL 14 for 16 yards (21-M.Hughes; 55-K.Elliss).
(8:33) (No Huddle) 4-D.Carr pass incomplete short middle to 87-F.Moreau.
(8:28) 4-D.Carr FUMBLES (Aborted) at ATL 15, and recovers at ATL 19.
(7:52) (Shotgun) 4-D.Carr pass short right to 41-A.Kamara to ATL 6 for 13 yards (31-J.Simmons; 97-G.Jarrett).
(7:04) (Shotgun) 7-T.Hill left tackle to ATL 5 for 1 yard (53-N.Landman; 55-K.Elliss). TURNOVER ON DOWNS. 
(6:55) (Shotgun) 25-T.Allgeier right guard to ATL 9 for 4 yards (5-W.Harris; 56-D.Davis).
(6:17) (Shotgun) 25-T.Allgeier right end to ATL 14 for 5 yards (5-W.Harris).
(5:47) (No Huddle, Shotgun) 18-K.Cousins pass incomplete short left to 1-D.Mooney (0-U.Amadi).
(5:41) 13-B.Pinion punts 42 yards to NO 44, Center-49-L.McCullough, fair catch by 80-J.Jackson.
(5:33) (Shotgun) 4-D.Carr pass short left to 7-T.Hill to NO 46 for 2 yards (22-C.Phillips).
(5:03) 33-J.Mims right guard to ATL 45 for 9 yards (22-C.Phillips; 97-G.Jarrett).
(4:33) 33-J.Mims left end to ATL 44 for 1 yard (22-C.Phillips).
(3:57) PENALTY on NO-81-K.Austin, False Start, 5 yards, enforced at ATL 44 - No Play.
(3:41) 4-D.Carr pass incomplete deep right.
(3:32) (Shotgun) 4-D.Carr pass short left to 81-K.Austin pushed ob at ATL 35 for 14 yards (22-C.Phillips).
(3:10) (No Huddle) 41-A.Kamara right guard to ATL 29 for 6 yards (3-J.Bates).
(2:34) 41-A.Kamara right tackle to ATL 23 for 6 yards (55-K.Elliss).
(1:53) 41-A.Kamara left end pushed ob at ATL 25 for -2 yards (22-C.Phillips). PENALTY on NO-74-O.Udoh, Offensive Holding, 10 yards, enforced at ATL 23 - No Play.
(1:22) (Shotgun) 4-D.Carr pass short left to 17-D.Pettis to ATL 25 for 8 yards (31-J.Simmons; 22-C.Phillips).
(:42) (Shotgun) PENALTY on ATL-17-A.Ebiketie, Neutral Zone Infraction, 5 yards, enforced at ATL 25 - No Play.
(:22) (Shotgun) 4-D.Carr pass short middle to 41-A.Kamara to ATL 20 for no gain (53-N.Landman).
END QUARTER 1
(15:00) (Shotgun) 4-D.Carr pass incomplete short right.
(14:55) 19-B.Grupe 38 yard field goal is GOOD, Center-49-Z.Wood, Holder-43-M.Hayball.
19-B.Grupe kicks 63 yards from NO 35 to ATL 2. 26-A.Williams to ATL 30 for 28 yards (52-D.Jackson). NO-31-J.Howden was injured during the play.
(14:43) (Shotgun) 18-K.Cousins pass incomplete deep left to 1-D.Mooney. PENALTY on NO-1-A.Taylor, Defensive Pass Interference, 13 yards, enforced at ATL 30 - No Play.
(14:37) (Shotgun) 7-B.Robinson right end to 50 for 7 yards (0-U.Amadi).
(13:58) (Shotgun) 7-B.Robinson right guard to NO 41 for 9 yards (56-D.Davis; 27-S.Jean-Charles).
(13:32) (No Huddle, Shotgun) 7-B.Robinson left end to NO 42 for -1 yards (0-U.Amadi).
(12:54) (Shotgun) 18-K.Cousins pass short left to 8-K.Pitts to NO 35 for 7 yards (1-A.Taylor).
(12:16) (Shotgun) 18-K.Cousins pass incomplete short right to 1-D.Mooney.
(12:11) 6-Y.Koo 53 yard field goal is No Good, Wide Left, Center-49-L.McCullough, Holder-13-B.Pinion.
(12:06) 41-A.Kamara left guard to 50 for 7 yards (53-N.Landman). ** Injury Update: NO-75-T.Fuaga has returned to the game. PENALTY on ATL-95-T.Graham, Defensive Holding, 5 yards, enforced at 50.
(11:48) 41-A.Kamara right tackle to ATL 43 for 2 yards (95-T.Graham). ATL-95-T.Graham was injured during the play.
(11:25) (Shotgun) 41-A.Kamara right guard to ATL 40 for 3 yards (55-K.Elliss; 53-N.Landman).
(10:57) (Shotgun) 4-D.Carr pass deep right to 10-M.Valdes-Scantling for 40 yards, TOUCHDOWN.
19-B.Grupe extra point is GOOD, Center-49-Z.Wood, Holder-43-M.Hayball.
19-B.Grupe kicks 61 yards from NO 35 to ATL 4. 26-A.Williams to ATL 27 for 23 yards (48-J.Gray; 58-A.Orji).
(10:41) (Shotgun) 18-K.Cousins pass deep right to 1-D.Mooney pushed ob at ATL 46 for 19 yards (0-U.Amadi).
(10:00) (No Huddle, Shotgun) 7-B.Robinson right end to 50 for 4 yards (50-K.Saunders; 56-D.Davis).
(9:19) (Shotgun) 25-T.Allgeier left guard to NO 41 for 9 yards (32-T.Mathieu).
(8:39) 25-T.Allgeier right guard to NO 34 for 7 yards (32-T.Mathieu).
(8:05) 18-K.Cousins pass deep right to 1-D.Mooney to NO 1 for 33 yards (1-A.Taylor) [90-B.Bresee].
(7:31) (No Huddle) 25-T.Allgeier right guard to NO 1 for no gain (20-P.Werner).
(7:11) (No Huddle) 25-T.Allgeier right guard to NO 1 for no gain (56-D.Davis).
(6:35) 25-T.Allgeier left guard to NO 1 for no gain (90-B.Bresee; 95-J.Ridgeway). Atlanta challenged the short of the goal line ruling, and the play was Upheld. The ruling on the field stands. (Timeout #1.)
(5:48) 7-B.Robinson left tackle for 1 yard, TOUCHDOWN.
6-Y.Koo extra point is GOOD, Center-49-L.McCullough, Holder-13-B.Pinion.
13-B.Pinion kicks 65 yards from ATL 35 to end zone, Touchback to the NO 30.
(5:45) 4-D.Carr pass deep left to 10-M.Valdes-Scantling pushed ob at ATL 3 for 67 yards (22-C.Phillips) [90-D.Onyemata].
(4:51) (No Huddle) 41-A.Kamara right guard to ATL 1 for 2 yards (55-K.Elliss).
(4:30) (No Huddle) 41-A.Kamara left guard to ATL 2 for -1 yards (90-D.Onyemata, 55-K.Elliss).
(3:51) (Shotgun) 4-D.Carr pass short middle to 10-M.Valdes-Scantling for 2 yards, TOUCHDOWN.
19-B.Grupe extra point is GOOD, Center-49-Z.Wood, Holder-43-M.Hayball.
19-B.Grupe kicks 67 yards from NO 35 to ATL -2. 34-R.McCloud to ATL 31 for 33 yards (33-J.Mims; 52-D.Jackson).
(3:41) (Shotgun) 7-B.Robinson left tackle to ATL 38 for 7 yards (56-D.Davis).
(3:07) (Shotgun) 7-B.Robinson right end to ATL 36 for -2 yards (0-U.Amadi).
(2:29) (Shotgun) 18-K.Cousins pass short left to 5-D.London pushed ob at ATL 46 for 10 yards (0-U.Amadi).
(2:00) (Shotgun) 18-K.Cousins pass deep middle to 5-D.London to NO 34 for 20 yards (32-T.Mathieu) [93-N.Shepherd].
(1:22) (Shotgun) 7-B.Robinson right tackle to NO 31 for 3 yards (50-K.Saunders).
(:45) (Shotgun) 18-K.Cousins pass incomplete deep middle to 8-K.Pitts (32-T.Mathieu).
(:40) (Shotgun) 18-K.Cousins pass short middle to 34-R.McCloud to NO 11 for 20 yards (27-S.Jean-Charles; 48-J.Gray).
(:34) (Shotgun) 18-K.Cousins pass incomplete short right to 8-K.Pitts (98-P.Turner, 56-D.Davis).
Timeout #2 by ATL at 00:34.
(:31) (Shotgun) 18-K.Cousins sacked at NO 16 for -5 yards (98-P.Turner). FUMBLES (98-P.Turner) [98-P.Turner], recovered by ATL-5-D.London at NO 16.
(:25) (Shotgun) 18-K.Cousins pass incomplete deep right to 5-D.London.
(:19) 6-Y.Koo 35 yard field goal is BLOCKED (95-J.Ridgeway), Center-49-L.McCullough, Holder-13-B.Pinion.
Timeout #1 by NO at 00:19.
(:15) 4-D.Carr kneels to NO 24 for -1 yards.
END QUARTER 2
13-B.Pinion kicks 63 yards from ATL 35 to NO 2. 17-D.Pettis to NO 28 for 26 yards (51-D.Malone).
(14:55) 4-D.Carr scrambles right end ran ob at NO 33 for 5 yards (53-N.Landman). ATL-50-J.Smith-Williams was injured during the play.
(14:33) 41-A.Kamara left tackle to NO 34 for 1 yard (3-J.Bates; 97-G.Jarrett).
(13:55) (Shotgun) 4-D.Carr pass incomplete short middle to 87-F.Moreau (31-J.Simmons).
(13:50) 43-M.Hayball punts 42 yards to ATL 24, Center-49-Z.Wood, downed by NO-36-R.Payton.
(13:40) (Shotgun) 7-B.Robinson left tackle to ATL 33 for 9 yards (94-C.Jordan; 56-D.Davis).
(12:59) (Shotgun) 7-B.Robinson left tackle to ATL 38 for 5 yards (94-C.Jordan).
(12:33) (No Huddle, Shotgun) 18-K.Cousins pass deep middle to 5-D.London to NO 45 for 17 yards (27-S.Jean-Charles) [50-K.Saunders].
(11:34) (Shotgun) 7-B.Robinson right end to NO 41 for 4 yards (98-P.Turner). ATL-63-C.Lindstrom was injured during the play.
(11:12) (Shotgun) 25-T.Allgeier right guard to NO 34 for 7 yards (5-W.Harris; 56-D.Davis).
(10:36) (Shotgun) 18-K.Cousins pass short right to 5-D.London pushed ob at NO 24 for 10 yards (27-S.Jean-Charles). ** Injury Update: ATL-63-C.Lindstrom has returned to the game.
(10:00) (Shotgun) 25-T.Allgeier right end pushed ob at NO 18 for 6 yards (5-W.Harris). PENALTY on ATL-76-K.McGary, Offensive Holding, 10 yards, enforced at NO 24 - No Play.
(9:37) (Shotgun) 18-K.Cousins pass short left to 1-D.Mooney to NO 21 for 13 yards (56-D.Davis; 1-A.Taylor).
(8:53) 34-R.McCloud right end pushed ob at NO 15 for 6 yards (27-S.Jean-Charles).
(8:27) (No Huddle) 7-B.Robinson right end to NO 15 for no gain (56-D.Davis). PENALTY on NO-50-K.Saunders, Defensive Holding, 6 yards, enforced at NO 15 - No Play.
(8:05) (Shotgun) 7-B.Robinson right end to NO 1 for 8 yards (20-P.Werner). PENALTY on ATL-63-C.Lindstrom, Low Block, 15 yards, enforced at NO 5.
(7:31) (Shotgun) PENALTY on ATL-1-D.Mooney, False Start, 5 yards, enforced at NO 20 - No Play.
(7:07) (Shotgun) 18-K.Cousins pass short left to 1-D.Mooney pushed ob at NO 15 for 10 yards (1-A.Taylor).
(6:29) (Shotgun) 18-K.Cousins pass short right to 5-D.London to NO 8 for 7 yards (0-U.Amadi).
(5:50) (Shotgun) 18-K.Cousins pass incomplete short middle to 5-D.London [99-C.Young].
(5:46) 6-Y.Koo 27 yard field goal is GOOD, Center-49-L.McCullough, Holder-13-B.Pinion. ** Injury Update: NO-31-J.Howden has returned to the game.
13-B.Pinion kicks 59 yards from ATL 35 to NO 6. 80-J.Jackson to NO 31 for 25 yards (33-A.Hamilton).
(5:37) 4-D.Carr pass short middle to 81-K.Austin to ATL 47 for 22 yards (55-K.Elliss).
(4:56) 4-D.Carr pass short middle to 41-A.Kamara to ATL 16 for 31 yards (55-K.Elliss; 31-J.Simmons).
(4:10) (Shotgun) 41-A.Kamara left tackle to ATL 12 for 4 yards (96-Z.Harrison; 15-M.Judon).
(3:33) 4-D.Carr pass incomplete short right.
(3:29) (Shotgun) 4-D.Carr pass short right to 33-J.Mims pushed ob at ATL 8 for 4 yards (3-J.Bates; 97-G.Jarrett).
(2:48) 19-B.Grupe 26 yard field goal is GOOD, Center-49-Z.Wood, Holder-43-M.Hayball.
19-B.Grupe kicks 63 yards from NO 35 to ATL 2. 26-A.Williams to ATL 37 for 35 yards (6-W.Gay; 36-R.Payton).
(2:38) (Shotgun) 18-K.Cousins pass incomplete deep left to 5-D.London.
(2:33) (Shotgun) 18-K.Cousins pass short left to 5-D.London to ATL 40 for 3 yards (20-P.Werner).
(1:48) (Shotgun) 18-K.Cousins pass deep left to 8-K.Pitts to NO 37 for 23 yards (1-A.Taylor).
(1:10) 7-B.Robinson right end for 37 yards, TOUCHDOWN.
6-Y.Koo extra point is GOOD, Center-49-L.McCullough, Holder-13-B.Pinion.
13-B.Pinion kicks 65 yards from ATL 35 to end zone, Touchback to the NO 30.
(1:01) 4-D.Carr pass short left to 41-A.Kamara pushed ob at NO 35 for 5 yards (53-N.Landman). ** Injury Update: ATL-50-J.Smith-Williams has returned to the game.
(:28) (No Huddle) 41-A.Kamara left tackle to NO 35 for no gain (92-K.Kareem).
END QUARTER 3
(15:00) (Shotgun) 4-D.Carr pass incomplete short left to 83-J.Johnson.
(14:57) 43-M.Hayball punts 46 yards to ATL 19, Center-49-Z.Wood, fair catch by 26-A.Williams.
(14:49) (Shotgun) 18-K.Cousins pass short right to 7-B.Robinson to ATL 23 for 4 yards (0-U.Amadi, 27-S.Jean-Charles).
(14:10) (Shotgun) 18-K.Cousins pass short middle to 7-B.Robinson to ATL 28 for 5 yards (20-P.Werner; 0-U.Amadi). New Orleans challenged the pass completion ruling, and the play was REVERSED. (Shotgun) 18-K.Cousins pass incomplete short middle to 7-B.Robinson.
(14:07) (Shotgun) 18-K.Cousins pass incomplete deep middle to 34-R.McCloud (20-P.Werner).
(14:03) 13-B.Pinion punts 57 yards to NO 20, Center-49-L.McCullough. 80-J.Jackson to NO 38 for 18 yards (51-D.Malone; 25-T.Allgeier).
(13:51) 41-A.Kamara right tackle to NO 36 for -2 yards (90-D.Onyemata).
(13:15) (Shotgun) 4-D.Carr pass short left to 41-A.Kamara ran ob at NO 41 for 5 yards (22-C.Phillips).
(12:36) (Shotgun) 4-D.Carr pass short right to 83-J.Johnson to NO 47 for 6 yards (20-D.Alford).
(11:50) 43-M.Hayball punts 43 yards to ATL 10, Center-49-Z.Wood, fair catch by 26-A.Williams.
(11:42) (Shotgun) 7-B.Robinson left end to ATL 16 for 6 yards (98-P.Turner; 1-A.Taylor).
(11:04) (Shotgun) 7-B.Robinson right guard to ATL 22 for 6 yards (50-K.Saunders; 98-P.Turner). NO-98-P.Turner was injured during the play.
(10:26) (Shotgun) 18-K.Cousins pass incomplete deep right to 1-D.Mooney (96-C.Granderson).
(10:20) (Shotgun) 18-K.Cousins pass short middle to 7-B.Robinson to ATL 30 for 8 yards (6-W.Gay; 56-D.Davis).
(9:39) (Shotgun) 18-K.Cousins pass incomplete deep left to 1-D.Mooney. PENALTY on NO-1-A.Taylor, Defensive Pass Interference, 16 yards, enforced at ATL 30 - No Play.
(9:33) (Shotgun) 18-K.Cousins pass incomplete short left to 89-C.Woerner (96-C.Granderson).
(9:27) (Shotgun) 18-K.Cousins pass short middle to 5-D.London to NO 35 for 19 yards (1-A.Taylor).
(8:47) (Shotgun) 25-T.Allgeier left tackle to NO 34 for 1 yard (93-N.Shepherd).
(8:04) (Shotgun) 18-K.Cousins sacked at NO 39 for -5 yards (94-C.Jordan).
(7:27) (No Huddle, Shotgun) ** Injury Update: NO-98-P.Turner has returned to the game. PENALTY on ATL-65-M.Bergeron, False Start, 5 yards, enforced at NO 39 - No Play.
(7:27) (Shotgun) 18-K.Cousins pass short left to 7-B.Robinson to NO 28 for 16 yards (5-W.Harris).
(6:43) 6-Y.Koo 46 yard field goal is No Good, Hit Right Upright, Center-49-L.McCullough, Holder-13-B.Pinion.
(6:39) 41-A.Kamara left guard to NO 36 for no gain (99-E.Goldman).
(6:06) (Shotgun) 4-D.Carr pass incomplete short right. PENALTY on NO-4-D.Carr, Intentional Grounding, 11 yards, enforced at NO 36.
(6:01) (Shotgun) 4-D.Carr scrambles right end ran ob at NO 38 for 13 yards (3-J.Bates).
(5:21) 43-M.Hayball punts 51 yards to ATL 11, Center-49-Z.Wood. 26-A.Williams to ATL 19 for 8 yards (38-M.Bradford).
(5:10) (Shotgun) 7-B.Robinson right guard to ATL 23 for 4 yards (6-W.Gay).
(4:44) (No Huddle, Shotgun) 7-B.Robinson left end to ATL 28 for 5 yards (1-A.Taylor).
(4:03) (Shotgun) 7-B.Robinson left guard to ATL 30 for 2 yards (5-W.Harris; 50-K.Saunders).
(3:27) (Shotgun) 25-T.Allgeier right end to NO 46 for 24 yards (5-W.Harris).
(2:47) (Shotgun) 25-T.Allgeier right tackle to NO 44 for 2 yards (6-W.Gay).
(2:07) (Shotgun) 18-K.Cousins pass short middle intended for 5-D.London INTERCEPTED by 32-T.Mathieu [93-N.Shepherd] at NO 32. 32-T.Mathieu to NO 38 for 6 yards (5-D.London).
(1:59) 41-A.Kamara left guard to NO 40 for 2 yards (90-D.Onyemata; 55-K.Elliss).
(1:53) (Shotgun) 74-O.Udoh reported in as eligible. 7-T.Hill left guard to NO 44 for 4 yards (53-N.Landman).
Timeout #1 by ATL at 01:53.
(1:48) (Shotgun) 4-D.Carr pass incomplete deep left to 41-A.Kamara.
Timeout #2 by ATL at 01:48.
(1:42) 43-M.Hayball punts 42 yards to ATL 14, Center-49-Z.Wood, fair catch by 26-A.Williams.
(1:35) (Shotgun) 18-K.Cousins pass short left to 5-D.London to ATL 25 for 11 yards (5-W.Harris; 56-D.Davis).
(1:10) (No Huddle, Shotgun) 18-K.Cousins pass deep middle to 1-D.Mooney to ATL 46 for 21 yards (31-J.Howden).
(:46) (No Huddle, Shotgun) 18-K.Cousins pass incomplete short middle to 5-D.London. PENALTY on NO-1-A.Taylor, Defensive Holding, 5 yards, enforced at ATL 46 - No Play.
(:41) (Shotgun) 18-K.Cousins sacked at ATL 42 for -9 yards (99-C.Young). FUMBLES (99-C.Young) [99-C.Young], touched at ATL 42, recovered by ATL-70-Ja.Matthews at ATL 32.
(:34) (Shotgun) 18-K.Cousins pass short left to 8-K.Pitts ran ob at ATL 39 for 7 yards (1-A.Taylor).
Timeout #3 by ATL at 00:34.
(:28) (Shotgun) 18-K.Cousins pass short middle to 8-K.Pitts to NO 43 for 18 yards (0-U.Amadi, 5-W.Harris).
(:07) (No Huddle, Shotgun) 18-K.Cousins pass short left to 34-R.McCloud pushed ob at NO 44 for -1 yards (0-U.Amadi).
END GAME"

atl_no_summary <- "Headline: Saints top Falcons 20-17.
Summary: The game was a back and forth affair, culminating with an eventful fourth quarter. Atlanta got the ball back after Kamara dropped Derek Carr's third-down pass for what could have been a game-clinching first down. But just as Atlanta crossed midfield, Chase Young's sack and strip of Cousins caused a 19-yard loss back to the Atlanta 32-yard line with 34 seconds remaining. Although the Falcons recovered, the play proved pivotal. The Falcons were forced to use their final timeout and had to make a rushed decision two plays later on whether to try a 60-yard field goal or keep the offense on the field after a completion gave them fourth-and-4 on the New Orleans 43 with 18 seconds left and the clock running. Atlanta tried a quick pass to Ray-Ray McCloud III, who was tackled short of first-down yardage by Ugo Amadi as time expired.
Notable Performances: Marquez Valdes-Scantling caught three passes for 109 yards and two touchdowns. Saints running back Alvin Kamara had 109 yards from scrimmage. Kicker Younghoe Koo had three failed field-goal attempts. Bijan Robinson rushed for 116 yards and two touchdowns, including a 37-yard run. Cousins, completed 23 of 38 passes for 306 yards and was intercepted once. Carr finished with 269 yards and two TDs passing without a turnover.
Injuries: Falcons: DT Ta’Quon Graham left the game in the first half. Saints: LB Pete Werner exited in the fourth quarter and did not return."

# Append game log and summary to training dataframe 
atl_no <- as.data.frame(cbind(atl_no_log, atl_no_summary)) %>% rename(game_log = atl_no_log, game_summary = atl_no_summary)
training <- rbind(training, atl_no)

sf_tb_log <- "GAME
16-T.Gill kicks 65 yards from TB 35 to end zone, Touchback to the SF 30.
(15:00) (Shotgun) 23-C.McCaffrey left end to SF 36 for 6 yards (29-C.Izien; 32-J.Hayes).
(14:24) (Shotgun) 13-B.Purdy scrambles up the middle to SF 46 for 10 yards (52-K.Britt).
(13:45) (Shotgun) 1-D.Samuel left end to TB 42 for 12 yards (3-J.Whitehead, 50-V.Vea).
(13:05) (Shotgun) 13-B.Purdy scrambles left end pushed ob at TB 39 for 3 yards (94-C.Kancey).
(12:21) 13-B.Purdy pass incomplete short middle to 15-J.Jennings.
(12:15) (Shotgun) 13-B.Purdy pass incomplete short left to 14-R.Pearsall.
(12:11) 3-M.Wishnowsky punts 35 yards to TB 4, Center-46-T.Pepper, downed by SF-10-R.Bell.
(12:03) (Shotgun) 1-R.White up the middle to TB 8 for 4 yards (27-J.Brown; 2-D.Lenoir).
(11:24) (Shotgun) 7-B.Irving right guard to TB 10 for 2 yards (54-F.Warner).
(10:41) (Shotgun) 6-B.Mayfield pass short middle to 88-C.Otton to TB 25 for 15 yards (22-I.Yiadom).
(10:04) (Shotgun) 6-B.Mayfield pass short right to 18-R.Jarrett to TB 29 for 4 yards (0-R.Green).
(9:33) 1-R.White right guard to TB 30 for 1 yard (59-D.Campbell).
(8:51) (Shotgun) 6-B.Mayfield pass short left to 1-R.White to TB 31 for 1 yard (54-F.Warner).
(8:15) 16-T.Gill punts 46 yards to SF 23, Center-86-E.Deckers. 19-J.Cowing to SF 29 for 6 yards (81-R.Miller).
(8:06) 13-B.Purdy sacked at SF 24 for -5 yards (96-G.Gaines).
(7:21) (Shotgun) 13-B.Purdy pass short middle to 23-C.McCaffrey to SF 32 for 8 yards (31-A.Winfield, 51-J.Russell).
(6:36) (Shotgun) 13-B.Purdy pass incomplete short middle to 14-R.Pearsall (27-Z.McCollum). PENALTY on TB-32-J.Hayes, Defensive Holding, 5 yards, enforced at SF 32 - No Play.
(6:31) 23-C.McCaffrey left tackle to SF 42 for 5 yards (3-J.Whitehead).
(5:52) (Shotgun) 13-B.Purdy pass short right to 23-C.McCaffrey to SF 49 for 7 yards (3-J.Whitehead; 54-L.David).
(5:04) 24-J.Mason left end to TB 46 for 5 yards (51-J.Russell).
(4:25) (Shotgun) 13-B.Purdy pass deep middle to 14-R.Pearsall for 46 yards, TOUCHDOWN. The Replay Official reviewed the runner was inbounds ruling, and the play was Upheld. The ruling on the field stands.
4-J.Moody extra point is GOOD, Center-46-T.Pepper, Holder-3-M.Wishnowsky.
4-J.Moody kicks 65 yards from SF 35 to end zone, Touchback to the TB 30.
(4:15) 6-B.Mayfield pass short left to 7-B.Irving to TB 42 for 12 yards (54-F.Warner, 6-M.Mustapha).
(3:36) (Shotgun) 6-B.Mayfield pass incomplete short middle to 81-R.Miller (59-D.Campbell).
(3:30) 7-B.Irving left end to TB 47 for 5 yards (59-D.Campbell).
(2:51) (Shotgun) 6-B.Mayfield sacked at TB 46 for -1 yards (99-M.Collins).
(2:13) 16-T.Gill punts 41 yards to SF 13, Center-86-E.Deckers, fair catch by 19-J.Cowing.
(2:07) PENALTY on SF-82-E.Saubert, False Start, 5 yards, enforced at SF 13 - No Play.
(2:07) 23-C.McCaffrey up the middle to SF 15 for 7 yards (31-A.Winfield; 52-K.Britt).
(1:32) (Shotgun) 23-C.McCaffrey left end to SF 17 for 2 yards (32-J.Hayes).
(:45) (Shotgun) 13-B.Purdy pass short middle to 85-G.Kittle to SF 30 for 13 yards (9-J.Tryon) [0-Y.Diaby].
END QUARTER 1
(15:00) (Shotgun) 13-B.Purdy pass short middle to 23-C.McCaffrey to SF 38 for 8 yards (54-L.David).
(14:19) 13-B.Purdy pass incomplete deep right to 15-J.Jennings. PENALTY on TB-27-Z.McCollum, Defensive Pass Interference, 15 yards, enforced at SF 38 - No Play.
(14:14) 1-D.Samuel left end to TB 45 for 2 yards (54-L.David).
(13:30) 23-C.McCaffrey left end to TB 46 for -1 yards (94-C.Kancey, 54-L.David).
(12:43) (Shotgun) 13-B.Purdy pass short right to 15-J.Jennings pushed ob at TB 35 for 11 yards (27-Z.McCollum).
(11:57) 23-C.McCaffrey right guard to TB 34 for 1 yard (54-L.David, 52-K.Britt).
(11:15) (Shotgun) 13-B.Purdy pass short middle to 1-D.Samuel to TB 29 for 5 yards (31-A.Winfield).
(10:29) (Shotgun) 13-B.Purdy pass deep right to 15-J.Jennings to TB 11 for 18 yards (3-J.Whitehead).
(9:45) 23-C.McCaffrey right tackle to TB 10 for 1 yard (3-J.Whitehead).
(9:03) (Shotgun) 13-B.Purdy pass incomplete short left to 14-R.Pearsall.
(9:00) (Shotgun) 13-B.Purdy pass incomplete short left to 85-G.Kittle [50-V.Vea].
(8:55) 4-J.Moody 28 yard field goal is GOOD, Center-46-T.Pepper, Holder-3-M.Wishnowsky.
4-J.Moody kicks 65 yards from SF 35 to end zone, Touchback to the TB 30.
(8:53) (Shotgun) 6-B.Mayfield pass short left to 81-R.Miller to TB 41 for 11 yards (54-F.Warner; 22-I.Yiadom).
(8:18) 7-B.Irving left guard to TB 43 for 2 yards (6-M.Mustapha).
(7:37) (Shotgun) 6-B.Mayfield pass short left to 7-B.Irving to TB 48 for 5 yards (2-D.Lenoir; 59-D.Campbell).
(7:02) (Shotgun) 6-B.Mayfield pass short middle to 88-C.Otton to SF 43 for 9 yards (54-F.Warner; 2-D.Lenoir).
(6:23) 6-B.Mayfield pass short left to 88-C.Otton to SF 41 for 2 yards (91-S.Okuayinonu).
(5:46) (Shotgun) 7-B.Irving left tackle to SF 40 for 1 yard (99-M.Collins).
(5:06) (Shotgun) 6-B.Mayfield pass short right to 88-C.Otton to SF 33 for 7 yards (2-D.Lenoir, 54-F.Warner). TB-78-T.Wirfs was injured during the play.
(4:41) 7-B.Irving right tackle to SF 24 for 9 yards (69-E.Anderson; 97-N.Bosa).
(4:05) 7-B.Irving right tackle to SF 14 for 10 yards (0-R.Green).
(3:28) 17-S.Shepard right end to SF 11 for 3 yards (59-D.Campbell).
(2:45) (Shotgun) 6-B.Mayfield pass short middle to 88-C.Otton to SF 9 for 2 yards (6-M.Mustapha; 59-D.Campbell).
(2:00) (Shotgun) 6-B.Mayfield pass short right to 7-B.Irving to SF 12 for -3 yards (59-D.Campbell).
(1:17) 4-C.McLaughlin 30 yard field goal is GOOD, Center-86-E.Deckers, Holder-16-T.Gill.
16-T.Gill kicks 56 yards from TB 35 to SF 9. 10-R.Bell to SF 32 for 23 yards (37-T.Thomas; 51-J.Russell).
(1:08) (Shotgun) 13-B.Purdy pass short right to 15-J.Jennings to TB 38 for 30 yards (3-J.Whitehead).
(:43) (No Huddle, Shotgun) 13-B.Purdy pass incomplete short middle [98-A.Nelson].
(:38) (Shotgun) 13-B.Purdy pass incomplete short left to 15-J.Jennings (32-J.Hayes).
(:34) (Shotgun) 13-B.Purdy pass short left to 14-R.Pearsall pushed ob at TB 31 for 7 yards (27-Z.McCollum).
(:29) 4-J.Moody 49 yard field goal is No Good, Wide Left, Center-46-T.Pepper, Holder-3-M.Wishnowsky.
(:25) (Shotgun) 6-B.Mayfield pass incomplete short right to 88-C.Otton.
(:22) (Shotgun) 6-B.Mayfield pass short right to 18-R.Jarrett to SF 48 for 13 yards (0-R.Green). The Replay Official reviewed the pass completion ruling, and the play was REVERSED. (Shotgun) 6-B.Mayfield pass incomplete short right to 18-R.Jarrett (0-R.Green).
(:19) (Shotgun) PENALTY on SF-91-S.Okuayinonu, Neutral Zone Infraction, 5 yards, enforced at TB 39 - No Play.
Timeout #1 by SF at 00:19.
(:19) (Shotgun) 6-B.Mayfield pass incomplete short right to 88-C.Otton.
(:16) 16-T.Gill punts 48 yards to SF 8, Center-86-E.Deckers, out of bounds.
(:08) 13-B.Purdy kneels to SF 7 for -1 yards.
END QUARTER 2
4-J.Moody kicks 65 yards from SF 35 to end zone, Touchback to the TB 30.
(15:00) (Shotgun) 1-R.White right guard to TB 36 for 6 yards (54-F.Warner, 6-M.Mustapha).
(14:18) 6-B.Mayfield pass incomplete deep left to 10-T.Palmer (56-L.Floyd).
(14:12) (Shotgun) 6-B.Mayfield pass incomplete short right to 88-C.Otton.
(14:05) 16-T.Gill punts 44 yards to SF 20, Center-86-E.Deckers. 19-J.Cowing MUFFS catch, RECOVERED by TB-98-A.Nelson at SF 21.
(13:55) 7-B.Irving left guard to SF 13 for 8 yards (22-I.Yiadom).
(13:19) 7-B.Irving right guard to SF 13 for no gain (2-D.Lenoir).
(12:44) (Shotgun) 7-B.Irving left tackle to SF 9 for 4 yards (59-D.Campbell; 6-M.Mustapha).
(12:03) (Shotgun) 6-B.Mayfield pass short middle to 1-R.White for 9 yards, TOUCHDOWN.
4-C.McLaughlin extra point is GOOD, Center-86-E.Deckers, Holder-16-T.Gill.
16-T.Gill kicks 65 yards from TB 35 to end zone, Touchback to the SF 30.
(11:58) 23-C.McCaffrey right guard to SF 43 for 13 yards (31-A.Winfield).
(11:16) 13-B.Purdy pass short left to 1-D.Samuel to TB 47 for 10 yards (32-J.Hayes; 31-A.Winfield).
(10:31) (Shotgun) 13-B.Purdy scrambles right end ran ob at TB 42 for 5 yards (0-Y.Diaby). PENALTY on TB-27-Z.McCollum, Illegal Contact, 5 yards, enforced at TB 42.
(10:00) 23-C.McCaffrey left tackle to TB 40 for -3 yards (94-C.Kancey).
(9:17) 13-B.Purdy pass short middle to 23-C.McCaffrey to TB 32 for 8 yards (54-L.David; 29-C.Izien).
(8:33) (Shotgun) 13-B.Purdy pass short middle to 1-D.Samuel to TB 21 for 11 yards (32-J.Hayes).
(7:50) 23-C.McCaffrey left end to TB 16 for 5 yards (32-J.Hayes; 31-A.Winfield).
(7:07) (Shotgun) 13-B.Purdy pass incomplete short left to 15-J.Jennings.
(7:03) (Shotgun) 13-B.Purdy pass short left to 23-C.McCaffrey pushed ob at TB 9 for 7 yards (98-A.Nelson).
(6:25) 31-I.Guerendo up the middle to TB 9 for no gain (54-L.David; 3-J.Whitehead).
(5:46) (Shotgun) 13-B.Purdy sacked at TB 19 for -10 yards (9-J.Tryon).
(5:06) (Shotgun) 13-B.Purdy pass short right to 1-D.Samuel to TB 15 for 4 yards (94-C.Kancey, 3-J.Whitehead).
(4:25) 4-J.Moody 33 yard field goal is GOOD, Center-46-T.Pepper, Holder-3-M.Wishnowsky.
4-J.Moody kicks 65 yards from SF 35 to end zone, Touchback to the TB 30.
(4:21) (Shotgun) 6-B.Mayfield pass short right to 17-S.Shepard pushed ob at TB 37 for 7 yards (0-R.Green).
(3:47) 1-R.White right guard to TB 42 for 5 yards (51-R.Beal).
(3:07) (Shotgun) 1-R.White up the middle to TB 43 for 1 yard (54-F.Warner).
(2:25) (Shotgun) 6-B.Mayfield pass short right to 1-R.White ran ob at SF 47 for 10 yards (0-R.Green).
(1:47) 1-R.White right guard to SF 39 for 8 yards (97-N.Bosa).
(1:05) 1-R.White right guard to SF 34 for 5 yards (2-D.Lenoir).
(:24) 6-B.Mayfield pass incomplete deep right to 81-R.Miller (0-R.Green).
(:17) (Shotgun) 7-B.Irving left end to SF 26 for 8 yards (6-M.Mustapha).
END QUARTER 3
(15:00) (Shotgun) 7-B.Irving up the middle to SF 12 for 14 yards (27-J.Brown; 6-M.Mustapha).
(14:24) 7-B.Irving right end for 12 yards, TOUCHDOWN.
4-C.McLaughlin extra point is GOOD, Center-86-E.Deckers, Holder-16-T.Gill.
16-T.Gill kicks 65 yards from TB 35 to end zone, Touchback to the SF 30.
(14:18) 13-B.Purdy pass short left to 85-G.Kittle to TB 37 for 33 yards (3-J.Whitehead; 92-W.Gholston).
(13:26) 13-B.Purdy pass incomplete short middle to 1-D.Samuel.
(13:21) (Shotgun) 23-C.McCaffrey left end to TB 36 for 1 yard (54-L.David).
(12:36) (Shotgun) 13-B.Purdy pass short right to 15-J.Jennings to TB 32 for 4 yards (29-C.Izien).
(11:54) 4-J.Moody 50 yard field goal is No Good, Wide Left, Center-46-T.Pepper, Holder-3-M.Wishnowsky.
(11:50) 7-B.Irving left guard to TB 38 for -2 yards (92-J.Elliott).
(11:15) (Shotgun) 6-B.Mayfield pass short right to 18-R.Jarrett to TB 44 for 6 yards (0-R.Green; 2-D.Lenoir).
(10:34) (Shotgun) 6-B.Mayfield pass incomplete deep left to 17-S.Shepard.
(10:30) 16-T.Gill punts 50 yards to SF 6, Center-86-E.Deckers. 19-J.Cowing to SF 36 for 30 yards (44-S.Tucker, 16-T.Gill).
(10:17) 23-C.McCaffrey right tackle to SF 36 for no gain (3-J.Whitehead; 0-Y.Diaby).
(9:35) 13-B.Purdy pass short right to 15-J.Jennings to SF 47 for 11 yards (27-Z.McCollum).
(8:55) (Shotgun) 13-B.Purdy pass deep right to 23-C.McCaffrey to TB 23 for 30 yards (31-A.Winfield) [92-W.Gholston].
(8:11) (Shotgun) 1-D.Samuel left end to TB 23 for no gain (32-J.Hayes).
(7:25) (Shotgun) 13-B.Purdy pass incomplete short right [98-A.Nelson]. PENALTY on TB-94-C.Kancey, Unnecessary Roughness, 12 yards, enforced at TB 23 - No Play.
(7:17) (Shotgun) 13-B.Purdy pass incomplete short middle to 15-J.Jennings (32-J.Hayes).
(7:14) (Shotgun) 13-B.Purdy pass short left to 85-G.Kittle for 11 yards, TOUCHDOWN.
4-J.Moody extra point is GOOD, Center-46-T.Pepper, Holder-3-M.Wishnowsky.
4-J.Moody kicks 65 yards from SF 35 to end zone, Touchback to the TB 30.
(7:02) (Shotgun) 1-R.White right tackle to TB 31 for 1 yard (93-Ka.Davis).
(6:25) (Shotgun) 6-B.Mayfield FUMBLES (Aborted) at TB 27, and recovers at TB 27.
(5:47) (Shotgun) 6-B.Mayfield sacked at TB 17 for -10 yards (97-N.Bosa).
(5:08) 16-T.Gill punts 44 yards to SF 39, Center-86-E.Deckers, downed by TB-21-K.Isaac.
(4:57) 13-B.Purdy pass short middle to 1-D.Samuel pushed ob at TB 29 for 32 yards (31-A.Winfield).
(4:48) 23-C.McCaffrey right end to TB 27 for 2 yards (3-J.Whitehead, 90-L.Hall).
(4:03) 13-B.Purdy sacked at TB 30 for -3 yards (94-C.Kancey). FUMBLES (94-C.Kancey) [94-C.Kancey], recovered by SF-15-J.Jennings at TB 26.
(3:16) (Shotgun) 13-B.Purdy pass incomplete short left to 23-C.McCaffrey (31-A.Winfield).
(3:13) 4-J.Moody 44 yard field goal is No Good, Wide Right, Center-46-T.Pepper, Holder-3-M.Wishnowsky.
(3:09) (Shotgun) 6-B.Mayfield pass short right to 1-R.White to TB 40 for 6 yards (56-L.Floyd).
(2:30) (Shotgun) 6-B.Mayfield FUMBLES (Aborted) at TB 36, and recovers at TB 36. 6-B.Mayfield to TB 37 for 1 yard. FUMBLES, touched at TB 38, recovered by TB-7-B.Irving at TB 37.
(2:00) (Shotgun) 6-B.Mayfield pass incomplete short left to 17-S.Shepard.
(1:57) (Shotgun) 6-B.Mayfield pass short right to 1-R.White to TB 45 for 8 yards (54-F.Warner).
(1:32) (No Huddle, Shotgun) 6-B.Mayfield pass incomplete short right to 17-S.Shepard (33-R.Ya-Sin). PENALTY on SF-33-R.Ya-Sin, Defensive Holding, 5 yards, enforced at TB 45 - No Play.
(1:27) (Shotgun) 6-B.Mayfield scrambles right end ran ob at SF 47 for 3 yards (91-S.Okuayinonu).
(1:20) (Shotgun) 6-B.Mayfield pass incomplete short right to 1-R.White.
(1:18) (Shotgun) 6-B.Mayfield pass incomplete short left to 88-C.Otton (59-D.Campbell). PENALTY on SF-54-F.Warner, Face Mask, 15 yards, enforced at SF 47 - No Play.
(1:14) (Shotgun) 6-B.Mayfield pass short right to 1-R.White pushed ob at SF 27 for 5 yards (27-J.Brown). PENALTY on SF-99-M.Collins, Roughing the Passer, 14 yards, enforced at SF 27.
(1:04) (Shotgun) 1-R.White left end to SF 17 for -4 yards (97-N.Bosa). PENALTY on SF-69-E.Anderson, Illegal Use of Hands, 5 yards, enforced at SF 13 - No Play.
(:59) (Shotgun) 1-R.White left guard to SF 5 for 3 yards (97-N.Bosa).
(:53) 1-R.White up the middle to SF 8 for -3 yards (69-E.Anderson).
Timeout #1 by SF at 00:53.
(:48) (Shotgun) 6-B.Mayfield pass incomplete short right to 18-R.Jarrett (33-R.Ya-Sin).
Timeout #2 by SF at 00:48.
(:44) 4-C.McLaughlin 26 yard field goal is GOOD, Center-86-E.Deckers, Holder-16-T.Gill.
16-T.Gill kicks 65 yards from TB 35 to end zone, Touchback to the SF 30. ** Injury Update: TB-43-C.Braswell has returned to the game. PENALTY on TB-32-J.Hayes, Illegal Formation, 5 yards, enforced at SF 30.
(:41) (Shotgun) 13-B.Purdy pass short left to 15-J.Jennings ran ob at SF 41 for 6 yards.
(:36) (Shotgun) 13-B.Purdy pass short right to 14-R.Pearsall pushed ob at SF 47 for 6 yards (24-T.Funderburk).
(:31) (Shotgun) 13-B.Purdy pass short left to 14-R.Pearsall to TB 39 for 14 yards (29-C.Izien).
(:23) (Shotgun) 13-B.Purdy pass short right to 15-J.Jennings to TB 26 for 13 yards (3-J.Whitehead; 24-T.Funderburk).
Timeout #3 by SF at 00:23.
(:04) (No Huddle) 13-B.Purdy spiked the ball to stop the clock.
(:03) 4-J.Moody 44 yard field goal is GOOD, Center-46-T.Pepper, Holder-3-M.Wishnowsky.
END GAME"

sf_tb_summary <- "Headline: Moody shrugs off 3 missed FGs to kick 49ers past Buccaneers 23-20.
Summary: The Bucs wiped out a 10-0 deficit with help from 49ers punt returner Jacob Cowing, whose third-quarter muff was recovered at San Francisco's 21 to set up Tampa Bay's first TD. Four plays later, Mayfield threw a 9-yard scoring pass to Rachaad White that made it 10-10. Bucky Irving scored on 12-yard run that put Tampa Bay ahead 17-13 early in the fourth quarter. Purdy answered with his TD throw to Kittle to put the 49ers back in front with just over seven minutes left. Baker Mayfield led a drive to set up a tying field goal for Tampa Bay with help from three straight personal foul penalties — setting the stage for Moody to win it for the 49ers. The San Francisco kicker made up for missing three earlier field goals by booting a 44-yarder as time expired to give the 49ers a 23-20 victory over the Tampa Bay Buccaneers.
Notable Performances: McCaffrey carried for 39 yards rushing on 13 attempts and also had six receptions for 68 yards. Mayfield finished 18 of 29 passing for 116 yards and one TD for the Bucs. Brock Purdy threw for 353 yards without an interception, and had touchdowns of 46 yards to Ricky Pearsall and 11 yards to George Kittle.
Injuries: Buccaneers: LT Tristan Wirfs left the game in the second quarter and did not return. CB Zyon McCollum LB Chris Braswell both departed in the second half.
"

# Append game log and summary to training dataframe 
sf_tb <- as.data.frame(cbind(sf_tb_log, sf_tb_summary)) %>% rename(game_log = sf_tb_log, game_summary = sf_tb_summary)
training <- rbind(training, sf_tb)

bal_pit_log <- "GAME
9-C.Boswell kicks 62 yards from PIT 35 to BAL 3. 34-K.Mitchell to BAL 29 for 26 yards (93-M.Robinson).
(14:55) (Shotgun) 22-D.Henry up the middle to BAL 32 for 3 yards (95-K.Benton).
(14:18) (Shotgun) 22-D.Henry right tackle to BAL 36 for 4 yards (51-Ni.Herbig). FUMBLES (51-Ni.Herbig), RECOVERED by PIT-25-D.Elliott at BAL 42.
(14:11) 74-S.Anderson reported in as eligible. 3-R.Wilson pass short left to 22-N.Harris to BAL 35 for 7 yards (21-B.Stephens; 0-R.Smith).
(13:31) 22-N.Harris right tackle to BAL 31 for 4 yards (99-O.Oweh).
(12:51) (Shotgun) 3-R.Wilson pass short left to 14-G.Pickens to BAL 27 for 4 yards (0-R.Smith).
(12:15) 22-N.Harris left guard to BAL 16 for 11 yards (14-K.Hamilton).
(11:32) (Shotgun) 3-R.Wilson pass short left to 14-G.Pickens pushed ob at BAL 14 for 2 yards (14-K.Hamilton).
(10:56) 3-R.Wilson pass incomplete short right.
(10:50) (Shotgun) 3-R.Wilson pass incomplete short left [99-O.Oweh].
(10:43) 9-C.Boswell 32 yard field goal is GOOD, Center-46-C.Kuntz, Holder-8-C.Waitman.
9-C.Boswell kicks 65 yards from PIT 35 to BAL 0. 43-J.Hill to BAL 30 for 30 yards (44-T.Matakevich).
(10:34) (Shotgun) 8-L.Jackson pass short right to 43-J.Hill pushed ob at BAL 31 for 1 yard (90-T.Watt).
(10:00) (Shotgun) 22-D.Henry left guard to BAL 37 for 6 yards (39-M.Fitzpatrick). PENALTY on BAL-79-R.Stanley, Offensive Holding, 10 yards, enforced at BAL 31 - No Play.
(9:38) (Shotgun) 43-J.Hill left end to BAL 30 for 9 yards (6-P.Queen; 25-D.Elliott).
(8:56) (Shotgun) 8-L.Jackson pass incomplete deep right to 18-D.Johnson.
(8:48) 11-J.Stout punts 70 yards to end zone, Center-46-N.Moore, Touchback.
(8:39) 22-N.Harris left tackle to PIT 24 for 4 yards (40-M.Harrison; 29-A.Washington).
(8:02) (Shotgun) 3-R.Wilson pass short left to 84-C.Patterson to PIT 24 for no gain (99-O.Oweh; 97-B.Urban).
(7:20) (No Huddle, Shotgun) PENALTY on BAL-53-K.Van Noy, Neutral Zone Infraction, 5 yards, enforced at PIT 24 - No Play.
(7:05) (Shotgun) 3-R.Wilson pass incomplete deep left to 19-C.Austin (21-B.Stephens).
(7:00) (Punt formation) PENALTY on PIT-15-B.Skowronek, False Start, 5 yards, enforced at PIT 29 - No Play.
(7:00) 8-C.Waitman punts 51 yards to BAL 25, Center-46-C.Kuntz, downed by PIT-42-J.Pierre.
(6:48) 8-L.Jackson pass deep right to 80-I.Likely to PIT 33 for 42 yards (23-D.Kazee; 6-P.Queen).
(6:04) (Shotgun) 22-D.Henry left tackle to PIT 29 for 4 yards (91-P.Smith).
(5:25) (Shotgun) 8-L.Jackson pass incomplete deep left to 18-D.Johnson.
(5:18) (Shotgun) 8-L.Jackson pass incomplete deep right to 4-Z.Flowers.
(5:14) 9-J.Tucker 47 yard field goal is No Good, Wide Left, Center-46-N.Moore, Holder-11-J.Stout.
(5:10) (Shotgun) 3-R.Wilson pass short right to 30-J.Warren to PIT 40 for 3 yards (0-R.Smith).
(4:34) 30-J.Warren left guard to PIT 46 for 6 yards (44-M.Humphrey).
(3:59) 3-R.Wilson up the middle to PIT 46 for no gain (96-B.Washington; 0-R.Smith).
(3:12) 74-S.Anderson reported in as eligible. 22-N.Harris left tackle to PIT 46 for no gain (14-K.Hamilton). TURNOVER ON DOWNS.
(3:07) (Shotgun) 8-L.Jackson pass incomplete short right.
(3:02) (Shotgun) 8-L.Jackson left end to PIT 31 for 15 yards (23-D.Kazee; 50-E.Roberts).
(2:36) (No Huddle, Shotgun) 8-L.Jackson pass incomplete deep right to 80-I.Likely.
(2:31) (Shotgun) 8-L.Jackson pass short right to 43-J.Hill to PIT 32 for -1 yards (6-P.Queen).
(1:50) (Shotgun) 8-L.Jackson pass incomplete short left to 43-J.Hill (94-D.Lowry).
(1:42) 9-J.Tucker 50 yard field goal is No Good, Wide Left, Center-46-N.Moore, Holder-11-J.Stout.
(1:38) 84-C.Patterson up the middle to PIT 40 for no gain (95-T.Robinson).
(1:12) (No Huddle, Shotgun) 3-R.Wilson sacked at PIT 30 for -10 yards (99-O.Oweh).
(:31) (No Huddle, Shotgun) 3-R.Wilson sacked at PIT 30 for 0 yards (sack split by 99-O.Oweh and 21-B.Stephens).
END QUARTER 1
(15:00) 8-C.Waitman punts 52 yards to BAL 18, Center-46-C.Kuntz. 16-T.Wallace to BAL 31 for 13 yards (42-J.Pierre). PENALTY on BAL-28-S.Kane, Illegal Block Above the Waist, 10 yards, enforced at BAL 27.
(14:48) 22-D.Henry left tackle to BAL 20 for 3 yards (97-Ca.Heyward; 6-P.Queen).
(14:06) (Shotgun) 8-L.Jackson pass short middle to 4-Z.Flowers to BAL 43 for 23 yards (41-P.Wilson).
(13:26) (Shotgun) 43-J.Hill left guard to BAL 47 for 4 yards (97-Ca.Heyward).
(12:44) (Shotgun) 8-L.Jackson pass incomplete short middle to 4-Z.Flowers (24-J.Porter).
(12:41) (Shotgun) 8-L.Jackson pass incomplete short middle to 7-R.Bateman (97-Ca.Heyward). Penalty on BAL-7-R.Bateman, Illegal Shift, declined.
(12:38) 11-J.Stout punts 37 yards to PIT 16, Center-46-N.Moore, fair catch by 19-C.Austin.
(12:31) 22-N.Harris left guard to PIT 16 for no gain (29-A.Washington; 95-T.Robinson).
(11:57) (No Huddle) 3-R.Wilson pass short left to 22-N.Harris to PIT 36 for 20 yards (14-K.Hamilton).
(11:11) 3-R.Wilson pass incomplete short right to 14-G.Pickens.
(11:05) (Shotgun) 3-R.Wilson pass short left to 88-P.Freiermuth to PIT 45 for 9 yards (21-B.Stephens).
(10:18) (Shotgun) 74-S.Anderson reported in as eligible. 3-R.Wilson pass short left to 14-G.Pickens to BAL 47 for 8 yards (23-T.Simpson).
(9:51) 22-N.Harris left tackle to BAL 36 for 11 yards (14-K.Hamilton). Penalty on PIT-77-B.Jones, Unsportsmanlike Conduct, offsetting. Penalty on BAL-44-M.Humphrey, Unsportsmanlike Conduct, offsetting.
(9:30) 22-N.Harris right guard to BAL 34 for 2 yards (0-R.Smith; 14-K.Hamilton).
(9:03) (No Huddle, Shotgun) 3-R.Wilson pass short left to 15-B.Skowronek pushed ob at BAL 30 for 4 yards (44-M.Humphrey) [95-T.Robinson].
(8:21) (No Huddle, Shotgun) 3-R.Wilson sacked at BAL 34 for -4 yards (99-O.Oweh).
(7:44) 9-C.Boswell 52 yard field goal is GOOD, Center-46-C.Kuntz, Holder-8-C.Waitman.
9-C.Boswell kicks 65 yards from PIT 35 to end zone, Touchback to the BAL 30.
(7:39) 22-D.Henry left tackle to BAL 36 for 6 yards (26-D.Jackson). PENALTY on BAL-65-P.Mekari, Offensive Holding, 10 yards, enforced at BAL 30 - No Play.
(7:28) (Shotgun) 8-L.Jackson pass short right to 89-M.Andrews to BAL 34 for 14 yards (39-M.Fitzpatrick).
(6:46) PENALTY on BAL-15-N.Agholor, False Start, 5 yards, enforced at BAL 34 - No Play.
(6:32) (Shotgun) 8-L.Jackson pass incomplete deep left to 89-M.Andrews.
(6:27) (Shotgun) 8-L.Jackson pass incomplete deep left to 4-Z.Flowers.
(6:19) 11-J.Stout punts 49 yards to PIT 22, Center-46-N.Moore. 19-C.Austin pushed ob at PIT 31 for 9 yards (23-T.Simpson; 54-K.Welch).
(6:09) (Shotgun) 3-R.Wilson sacked at PIT 21 for -10 yards (96-B.Washington).
(5:36) (No Huddle, Shotgun) 3-R.Wilson pass incomplete short middle to 22-N.Harris.
(5:32) (No Huddle, Shotgun) 3-R.Wilson pass short left to 14-G.Pickens to PIT 29 for 8 yards (29-A.Washington). BAL-98-T.Jones was injured during the play.
(5:17) 8-C.Waitman punts 71 yards to end zone, Center-46-C.Kuntz, Touchback.
(5:07) (Shotgun) 8-L.Jackson sacked at BAL 11 for -9 yards (92-I.Loudermilk). PENALTY on PIT-6-P.Queen, Defensive Holding, 5 yards, enforced at BAL 20 - No Play.
(4:47) (Shotgun) 22-D.Henry up the middle to BAL 28 for 3 yards (99-L.Ogunjobi; 92-I.Loudermilk).
(4:12) 8-L.Jackson pass deep middle to 7-R.Bateman to BAL 47 for 19 yards (6-P.Queen).
(3:31) 22-D.Henry left tackle to PIT 22 for 31 yards (39-M.Fitzpatrick).
(2:45) (Shotgun) 8-L.Jackson pass short left to 80-I.Likely to PIT 4 for 18 yards (6-P.Queen; 39-M.Fitzpatrick).
(2:00) (Shotgun) 22-D.Henry left guard to PIT 1 for 3 yards (51-Ni.Herbig; 95-K.Benton).
(1:19) 66-B.Cleveland reported in as eligible. 22-D.Henry right guard for 1 yard, TOUCHDOWN.
9-J.Tucker extra point is GOOD, Center-46-N.Moore, Holder-11-J.Stout.
9-J.Tucker kicks 65 yards from BAL 35 to end zone, Touchback to the PIT 30.
(1:16) (Shotgun) 3-R.Wilson pass short left to 14-G.Pickens to PIT 36 for 6 yards (21-B.Stephens).
(:59) (No Huddle, Shotgun) 3-R.Wilson pass short left to 14-G.Pickens pushed ob at PIT 41 for 5 yards (21-B.Stephens). The Replay Official reviewed the pass completion ruling, and the play was REVERSED. (No Huddle, Shotgun) 3-R.Wilson pass incomplete short left to 14-G.Pickens (21-B.Stephens).
(:56) (Shotgun) 3-R.Wilson scrambles up the middle to PIT 39 for 3 yards (14-K.Hamilton). BAL-14-K.Hamilton was injured during the play.
(:46) 8-C.Waitman punts 52 yards to BAL 9, Center-46-C.Kuntz, out of bounds.
Timeout #1 by BAL at 00:46.
(:38) (Shotgun) 8-L.Jackson pass short left to 80-I.Likely to BAL 13 for 4 yards (6-P.Queen; 95-K.Benton). FUMBLES (6-P.Queen), touched at BAL 17, RECOVERED by PIT-6-P.Queen at BAL 19. 6-P.Queen to BAL 19 for no gain (65-P.Mekari). Penalty on PIT-39-M.Fitzpatrick, Unsportsmanlike Conduct, offsetting. Penalty on BAL-65-P.Mekari, Unsportsmanlike Conduct, offsetting.
(:29) (Shotgun) 3-R.Wilson sacked at BAL 19 for 0 yards (92-N.Madubuike). PENALTY on BAL-2-N.Wiggins, Defensive Holding, 5 yards, enforced at BAL 19 - No Play.
(:23) (Shotgun) 3-R.Wilson pass short right to 88-P.Freiermuth to BAL 9 for 5 yards (2-N.Wiggins). ** Injury Update: BAL-14-K.Hamilton has returned to the game.
(:19) (Shotgun) 3-R.Wilson pass incomplete short right.
Timeout #1 by PIT at 00:19.
(:14) (Shotgun) PENALTY on PIT-73-I.Seumalo, False Start, 5 yards, enforced at BAL 9 - No Play.
Timeout #2 by BAL at 00:14.
(:14) (Shotgun) 3-R.Wilson pass incomplete short left to 14-G.Pickens (25-T.White).
(:10) 9-C.Boswell 32 yard field goal is GOOD, Center-46-C.Kuntz, Holder-8-C.Waitman.
9-C.Boswell kicks 65 yards from PIT 35 to end zone, Touchback to the BAL 30.
(:07) 8-L.Jackson kneels to BAL 29 for -1 yards.
END QUARTER 2
9-J.Tucker kicks 65 yards from BAL 35 to end zone, Touchback to the PIT 30.
(15:00) 22-N.Harris left guard to PIT 32 for 2 yards (96-B.Washington; 95-T.Robinson). ** Injury Update: BAL-98-T.Jones has returned to the game.
(14:24) (Shotgun) 22-N.Harris up the middle to PIT 34 for 2 yards (0-R.Smith, 92-N.Madubuike). PENALTY on BAL-98-T.Jones, Illegal Use of Hands, 5 yards, enforced at PIT 34.
(13:59) 30-J.Warren up the middle to PIT 42 for 3 yards (23-T.Simpson; 92-N.Madubuike).
(13:27) (No Huddle) 3-R.Wilson pass short middle to 30-J.Warren to BAL 48 for 10 yards (0-R.Smith).
(12:54) (No Huddle) 30-J.Warren left tackle to BAL 49 for -1 yards (0-R.Smith).
(12:17) (Shotgun) 2-J.Fields left guard to BAL 41 for 8 yards (29-A.Washington; 0-R.Smith).
(11:31) (Shotgun) 3-R.Wilson pass short right to 30-J.Warren to BAL 39 for 2 yards (0-R.Smith).
(10:51) 9-C.Boswell 57 yard field goal is GOOD, Center-46-C.Kuntz, Holder-8-C.Waitman.
9-C.Boswell kicks 65 yards from PIT 35 to end zone, Touchback to the BAL 30.
(10:46) (Shotgun) 22-D.Henry left tackle to BAL 37 for 7 yards (99-L.Ogunjobi; 50-E.Roberts).
(10:09) 22-D.Henry left guard to BAL 34 for -3 yards (90-T.Watt).
(9:30) (Shotgun) 8-L.Jackson pass short left to 89-M.Andrews to BAL 42 for 8 yards (39-M.Fitzpatrick).
(8:51) (Shotgun) 8-L.Jackson pass incomplete deep left to 7-R.Bateman.
(8:45) (Shotgun) 8-L.Jackson left end to BAL 49 for 7 yards (39-M.Fitzpatrick).
(8:16) (No Huddle, Shotgun) 22-D.Henry up the middle to PIT 46 for 5 yards (99-L.Ogunjobi; 6-P.Queen).
(7:33) (Shotgun) 8-L.Jackson pass short middle to 42-P.Ricard to PIT 41 for 5 yards (97-Ca.Heyward).
(6:52) 22-D.Henry left end to PIT 46 for -5 yards (6-P.Queen, 97-Ca.Heyward). PENALTY on PIT-51-Ni.Herbig, Defensive Offside, 5 yards, enforced at PIT 41 - No Play.
(6:31) 8-L.Jackson pass incomplete short middle to 15-N.Agholor (24-J.Porter) [90-T.Watt]. PIT-24-J.Porter was injured during the play.
(6:25) (Shotgun) 8-L.Jackson pass incomplete short middle [25-D.Elliott].
(6:20) (Shotgun) 8-L.Jackson pass incomplete short left to 43-J.Hill. ** Injury Update: PIT-24-J.Porter has returned to the game.
(6:17) 9-J.Tucker 54 yard field goal is GOOD, Center-46-N.Moore, Holder-11-J.Stout.
9-J.Tucker kicks 65 yards from BAL 35 to end zone, Touchback to the PIT 30.
(6:12) 74-S.Anderson reported in as eligible. 3-R.Wilson pass short left to 22-N.Harris to PIT 34 for 4 yards (0-R.Smith).
(5:34) 22-N.Harris left guard to PIT 43 for 9 yards (29-A.Washington). PENALTY on PIT-77-B.Jones, Offensive Holding, 10 yards, enforced at PIT 34 - No Play.
(5:10) (Shotgun) 3-R.Wilson pass short left to 14-G.Pickens pushed ob at PIT 41 for 17 yards (29-A.Washington).
(4:38) (Shotgun) 30-J.Warren left tackle to PIT 44 for 3 yards (0-R.Smith; 53-K.Van Noy).
(4:06) (No Huddle) 3-R.Wilson pass short right to 30-J.Warren to BAL 44 for 12 yards (23-T.Simpson; 29-A.Washington).
(3:31) (No Huddle) 30-J.Warren right tackle to BAL 39 for 5 yards (29-A.Washington).
(2:58) (No Huddle) 30-J.Warren left tackle to BAL 37 for 2 yards (98-T.Jones). PENALTY on PIT-77-B.Jones, Offensive Holding, 10 yards, enforced at BAL 39 - No Play.
(2:44) (Shotgun) 3-R.Wilson pass deep left to 14-G.Pickens pushed ob at BAL 12 for 37 yards (21-B.Stephens).
(2:07) 22-N.Harris left guard to BAL 8 for 4 yards (96-B.Washington, 92-N.Madubuike).
(1:34) (No Huddle) 22-N.Harris left tackle to BAL 9 for -1 yards (0-R.Smith).
(1:03) (No Huddle, Shotgun) 3-R.Wilson pass incomplete short right to 11-V.Jefferson.
(:59) 9-C.Boswell 27 yard field goal is GOOD, Center-46-C.Kuntz, Holder-8-C.Waitman.
9-C.Boswell kicks 65 yards from PIT 35 to BAL 0. 34-K.Mitchell to BAL 28 for 28 yards (31-B.Bishop). PENALTY on BAL-40-M.Harrison, Offensive Holding, 10 yards, enforced at BAL 24.
(:51) 22-D.Henry left tackle to BAL 18 for 4 yards (97-Ca.Heyward; 99-L.Ogunjobi).
(:12) (Shotgun) 22-D.Henry left tackle to BAL 18 for no gain (99-L.Ogunjobi; 50-E.Roberts).
END QUARTER 3
(15:00) (Shotgun) PENALTY on BAL-4-Z.Flowers, False Start, 5 yards, enforced at BAL 18 - No Play.
(15:00) (Shotgun) 8-L.Jackson sacked at BAL 11 for -2 yards (90-T.Watt).
(14:33) 11-J.Stout punts 61 yards to PIT 28, Center-46-N.Moore. 19-C.Austin to PIT 32 for 4 yards (16-T.Wallace; 88-C.Kolar).
(14:21) 3-R.Wilson pass incomplete short right to 80-D.Washington (50-A.Isaac). BAL-0-R.Smith was injured during the play.
(14:17) (Shotgun) 22-N.Harris left tackle to PIT 37 for 5 yards (92-N.Madubuike).
(13:42) (Shotgun) 3-R.Wilson pass short left to 14-G.Pickens to PIT 44 for 7 yards (14-K.Hamilton).
(12:58) 30-J.Warren up the middle to BAL 47 for 9 yards (92-N.Madubuike).
(12:32) 30-J.Warren left tackle to BAL 43 for 4 yards (23-T.Simpson).
(11:48) (Shotgun) 3-R.Wilson pass short middle to 80-D.Washington to BAL 18 for 25 yards (40-M.Harrison; 29-A.Washington).
(11:06) 22-N.Harris up the middle to BAL 5 for 13 yards (29-A.Washington).
(10:23) 22-N.Harris up the middle to BAL 5 for no gain (40-M.Harrison, 97-B.Urban).
(9:39) (Shotgun) 3-R.Wilson pass incomplete short left [53-K.Van Noy].
(9:33) (Shotgun) 3-R.Wilson pass short right intended for 80-D.Washington INTERCEPTED by 44-M.Humphrey at BAL -8. Touchback.
(9:23) (Shotgun) 8-L.Jackson left end to BAL 45 for 25 yards (24-J.Porter; 39-M.Fitzpatrick).
(8:46) 8-L.Jackson pass short right to 22-D.Henry to PIT 40 for 15 yards (50-E.Roberts) [6-P.Queen]. PIT-95-K.Benton was injured during the play. PENALTY on BAL-65-P.Mekari, Ineligible Downfield Pass, 5 yards, enforced at BAL 45 - No Play.
(8:24) (Shotgun) 8-L.Jackson pass deep left intended for 43-J.Hill INTERCEPTED by 41-P.Wilson at PIT 36. 41-P.Wilson to PIT 36 for no gain (43-J.Hill).
(8:14) PENALTY on BAL, Defensive Too Many Men on Field, 5 yards, enforced at PIT 36 - No Play.
(8:14) PENALTY on PIT-83-Co.Heyward, False Start, 5 yards, enforced at PIT 41 - No Play.
(8:14) 22-N.Harris left guard to PIT 40 for 4 yards (40-M.Harrison).
(7:35) (Shotgun) 3-R.Wilson pass short right to 22-N.Harris to PIT 39 for -1 yards (44-M.Humphrey).
(7:03) (No Huddle, Shotgun) 3-R.Wilson pass short right to 80-D.Washington to BAL 44 for 17 yards (29-A.Washington).
(6:23) (Shotgun) 30-J.Warren right end to BAL 38 for 6 yards (23-T.Simpson; 2-N.Wiggins).
(5:36) 30-J.Warren right end to BAL 32 for 6 yards (14-K.Hamilton).
(4:52) 22-N.Harris left tackle to BAL 31 for 1 yard (98-T.Jones).
(4:09) (Shotgun) 3-R.Wilson pass short right to 19-C.Austin to BAL 32 for -1 yards (29-A.Washington).
(3:47) (No Huddle, Shotgun) 3-R.Wilson pass incomplete deep left to 14-G.Pickens (25-T.White).
(3:40) 9-C.Boswell 50 yard field goal is GOOD, Center-46-C.Kuntz, Holder-8-C.Waitman.
9-C.Boswell kicks 63 yards from PIT 35 to BAL 2. 34-K.Mitchell to BAL 31 for 29 yards (31-B.Bishop). BAL-28-S.Kane was injured during the play.
(3:29) (Shotgun) 8-L.Jackson pass incomplete short middle to 7-R.Bateman (97-Ca.Heyward).
(3:25) (Shotgun) 8-L.Jackson pass incomplete deep right to 4-Z.Flowers [97-Ca.Heyward].
(3:13) (Shotgun) 8-L.Jackson pass short middle to 7-R.Bateman to BAL 42 for 11 yards (39-M.Fitzpatrick; 31-B.Bishop).
(2:44) (No Huddle, Shotgun) 8-L.Jackson pass short left to 80-I.Likely to PIT 47 for 11 yards (41-P.Wilson).
(2:19) (No Huddle, Shotgun) 8-L.Jackson sacked at PIT 47 for 0 yards (94-D.Lowry).
(2:00) (Shotgun) 8-L.Jackson pass short middle to 43-J.Hill to PIT 41 for 6 yards (25-D.Elliott, 6-P.Queen).
(1:34) (No Huddle, Shotgun) 8-L.Jackson pass deep right to 15-N.Agholor to PIT 7 for 34 yards (26-D.Jackson). PENALTY on BAL-65-P.Mekari, Ineligible Downfield Pass, 5 yards, enforced at PIT 41 - No Play.
(1:26) (Shotgun) 8-L.Jackson pass short left to 43-J.Hill to PIT 24 for 22 yards (6-P.Queen) [51-Ni.Herbig].
(1:15) (Shotgun) 8-L.Jackson pass short left to 16-T.Wallace to PIT 16 for 8 yards (31-B.Bishop).
(1:11) (Shotgun) 8-L.Jackson pass deep right to 4-Z.Flowers for 16 yards, TOUCHDOWN.
TWO-POINT CONVERSION ATTEMPT. 8-L.Jackson pass is incomplete. ATTEMPT FAILS.
Timeout #1 by PIT at 01:06.
9-J.Tucker kicks 65 yards from BAL 35 to end zone, Touchback to the PIT 30.
(1:06) 74-S.Anderson reported in as eligible. 22-N.Harris up the middle to PIT 30 for no gain (40-M.Harrison).
(1:02) (Shotgun) 2-J.Fields left end to PIT 39 for 9 yards (14-K.Hamilton).
Timeout #1 by BAL at 01:02.
(:57) (Shotgun) 22-N.Harris up the middle to PIT 40 for 1 yard (40-M.Harrison).
Timeout #2 by BAL at 00:57.
Timeout #2 by PIT at 00:57.
(:54) 3-R.Wilson kneels to PIT 39 for -1 yards.
Timeout #3 by BAL at 00:54.
(:17) 3-R.Wilson kneels to PIT 38 for -1 yards.
END GAME"

bal_pit_summary <- "Headline: Ravens and Jackson fail to stop Steelers.
Summary: Lamar Jackson, Derrick Henry and the rest of the offense never found their rhythm against Pittsburgh's defense, and was slowed by 12 penalties and three turnovers. Those miscues all led to Boswell field goals. With Pittsburgh leading 15-10, the Ravens forced a turnover when Marlon Humphrey picked off Russell Wilson in the end zone. Jackson ran for 25 yards on first down, but a 15-yard completion to Henry on second down was wiped out by a penalty for an ineligible man downfield. Payton Wilson picked off Jackson on the next play and Boswell eventually kicked his last field goal, a 50-yarder to give Pittsburgh an 18-10 lead. Lamar Jackson hit Zay Flowers for a 16-yard score with 1:06 left to move the Ravens within two, but the 2-point conversion attempt failed.
Notable Performances: Jackson completed 16 of 33 passes for 207 yards with a touchdown and an interception. Justin Tucker sent a pair of field goals wide left on consecutive series. Chris Boswell made six field goals.
Injuries: None"

# Append game log and summary to training dataframe 
bal_pit <- as.data.frame(cbind(bal_pit_log, bal_pit_summary)) %>% rename(game_log = bal_pit_log, game_summary = bal_pit_summary)
training <- rbind(training, bal_pit)

gb_phi2_log <- "GAME
7-M.Gay kicks 65 yards from IND 35 to end zone, Touchback to the NYJ 30.
(15:00) (Shotgun) 20-B.Hall right guard to NYJ 37 for 7 yards (45-E.Speed).
(14:32) (Shotgun) 8-A.Rodgers pass incomplete deep left to 5-G.Wilson.
(14:27) (Shotgun) 20-B.Hall right tackle to NYJ 37 for no gain (51-K.Paye).
(13:48) 6-T.Morstead punts 63 yards to end zone, Center-42-T.Hennessy, Touchback.
(13:41) (Shotgun) 5-A.Richardson left end to IND 20 for no gain (56-Qi.Williams).
(13:07) (Shotgun) 28-J.Taylor left guard to IND 22 for 2 yards (72-M.Clemons).
(12:28) (Shotgun) 5-A.Richardson pass deep right to 1-J.Downs to NYJ 47 for 31 yards (4-D.Reed).
(11:46) (Shotgun) 28-J.Taylor right guard to NYJ 39 for 8 yards (35-J.Mills; 36-C.Clark).
(11:11) (Shotgun) 28-J.Taylor left guard to NYJ 29 for 10 yards (1-A.Gardner).
(10:32) 28-J.Taylor left tackle to NYJ 28 for 1 yard (36-C.Clark; 7-H.Reddick).
(9:55) (Shotgun) 28-J.Taylor right end to NYJ 23 for 5 yards (44-J.Sherwood).
(9:15) (Shotgun) 5-A.Richardson pass incomplete short left to 83-K.Granson.
(9:11) 7-M.Gay 41 yard field goal is GOOD, Center-46-L.Rhodes, Holder-8-R.Sanchez.
7-M.Gay kicks 65 yards from IND 35 to end zone, Touchback to the NYJ 30.
(9:07) 8-A.Rodgers pass short right to 89-J.Ruckert to NYJ 28 for -2 yards. FUMBLES, RECOVERED by IND-20-N.Cross at NYJ 33. 20-N.Cross for 33 yards, TOUCHDOWN. The Replay Official reviewed the pass completion ruling, and the play was REVERSED. 8-A.Rodgers pass incomplete short right to 89-J.Ruckert.
(9:00) (Shotgun) 20-B.Hall left guard to NYJ 31 for 1 yard (20-N.Cross; 40-J.Jones).
(8:19) (Shotgun) 8-A.Rodgers pass incomplete short middle to 5-G.Wilson.
(8:15) 6-T.Morstead punts 54 yards to IND 15, Center-42-T.Hennessy. 1-J.Downs ran ob at IND 23 for 8 yards (32-I.Davis).
(8:06) (Shotgun) 5-A.Richardson left end to IND 27 for 4 yards (35-J.Mills).
(7:25) (Shotgun) 5-A.Richardson pass short left to 28-J.Taylor to IND 30 for 3 yards (72-M.Clemons) [95-Q.Williams].
(6:39) (Shotgun) 28-J.Taylor up the middle to IND 32 for 2 yards (72-M.Clemons; 54-J.Kinlaw).
(5:57) 8-R.Sanchez punts 53 yards to NYJ 15, Center-46-L.Rhodes. 82-X.Gipson to NYJ 22 for 7 yards (31-T.Goodson; 16-A.Dulin).
(5:48) (Shotgun) 8-A.Rodgers pass short right to 20-B.Hall to NYJ 24 for 2 yards (20-N.Cross).
(5:12) 20-B.Hall left tackle to NYJ 30 for 6 yards (45-E.Speed; 44-Z.Franklin).
(4:34) (Shotgun) 8-A.Rodgers sacked at NYJ 23 for -7 yards (97-L.Latu).
(3:48) 6-T.Morstead punts 59 yards to IND 18, Center-42-T.Hennessy. 1-J.Downs pushed ob at IND 34 for 16 yards (55-C.Surratt).
(3:38) 5-A.Richardson pass short left to 81-M.Alie-Cox to IND 39 for 5 yards (36-C.Clark).
(3:02) (Shotgun) 5-A.Richardson up the middle to IND 44 for 5 yards (44-J.Sherwood, 35-J.Mills).
(2:18) (Shotgun) 5-A.Richardson pass short middle to 11-M.Pittman to NYJ 40 for 16 yards (35-J.Mills).
(1:53) (No Huddle, Shotgun) 28-J.Taylor left tackle to NYJ 37 for 3 yards (95-Q.Williams, 72-M.Clemons).
(1:10) (Shotgun) 5-A.Richardson right end to NYJ 34 for 3 yards (44-J.Sherwood; 56-Qi.Williams).
(:27) (Shotgun) 5-A.Richardson pass short left to 10-A.Mitchell to NYJ 1 for 33 yards (36-C.Clark).
END QUARTER 1
(15:00) 99-D.Buckner and 90-G.Stewart reported in as eligible. 28-J.Taylor right end to NYJ 2 for -1 yards (96-L.Taylor, 52-S.Eguavoen).
(14:16) 5-A.Richardson left end for 2 yards, TOUCHDOWN.
7-M.Gay extra point is GOOD, Center-46-L.Rhodes, Holder-8-R.Sanchez.
7-M.Gay kicks 65 yards from IND 35 to end zone, Touchback to the NYJ 30.
(14:11) 8-A.Rodgers pass short right to 17-D.Adams pushed ob at NYJ 31 for 1 yard (41-G.Stuard).
(13:40) (Shotgun) 8-A.Rodgers pass short left to 5-G.Wilson to NYJ 32 for 1 yard (40-J.Jones, 23-K.Moore).
(12:59) (Shotgun) 8-A.Rodgers scrambles left tackle to NYJ 39 for 7 yards (45-E.Speed).
(12:12) (Shotgun) Direct snap to 83-T.Conklin. 83-T.Conklin up the middle to NYJ 39 for no gain (99-D.Buckner; 51-K.Paye).
(12:06) (Shotgun) 28-J.Taylor right guard to NYJ 36 for 3 yards (54-J.Kinlaw; 95-Q.Williams).
(11:30) (Shotgun) 5-A.Richardson up the middle to NYJ 31 for 5 yards (54-J.Kinlaw).
(10:52) (Shotgun) 28-J.Taylor left tackle to NYJ 30 for 1 yard (44-J.Sherwood, 56-Qi.Williams).
(10:07) (Shotgun) 28-J.Taylor up the middle to NYJ 29 for 1 yard (56-Qi.Williams, 44-J.Sherwood).
(9:27) (Shotgun) 28-J.Taylor up the middle to NYJ 25 for 4 yards (58-E.Watts).
(8:47) (Shotgun) 5-A.Richardson pass short left to 85-A.Ogletree to NYJ 17 for 8 yards (4-D.Reed).
(8:18) (No Huddle, Shotgun) 28-J.Taylor up the middle to NYJ 15 for 2 yards (58-E.Watts; 56-Qi.Williams).
(7:37) 10-A.Mitchell left end to NYJ 13 for 2 yards (1-A.Gardner).
(6:53) (Shotgun) 5-A.Richardson sacked at NYJ 29 for -16 yards (95-Q.Williams).
(6:12) 7-M.Gay 47 yard field goal is GOOD, Center-46-L.Rhodes, Holder-8-R.Sanchez.
7-M.Gay kicks 67 yards from IND 35 to NYJ -2. 32-I.Davis to NYJ 22 for 24 yards (41-G.Stuard).
(6:02) 20-B.Hall right tackle to NYJ 25 for 3 yards (54-D.Odeyingbo; 45-E.Speed).
(5:26) (Shotgun) 8-A.Rodgers pass short left to 17-D.Adams to NYJ 24 for -1 yards (23-K.Moore, 40-J.Jones).
(4:39) (Shotgun) 8-A.Rodgers pass short right to 5-G.Wilson to NYJ 31 for 7 yards (33-S.Womack).
(3:58) 6-T.Morstead punts 52 yards to IND 17, Center-42-T.Hennessy. 1-J.Downs to IND 30 for 13 yards (55-C.Surratt).
(3:46) 28-J.Taylor up the middle to IND 29 for -1 yards (96-L.Taylor).
(3:09) (Shotgun) 5-A.Richardson pass incomplete deep right to 11-M.Pittman.
(3:03) (Shotgun) 5-A.Richardson pass short left to 27-T.Sermon to IND 32 for 3 yards (30-M.Carter) [95-Q.Williams].
Timeout #1 by IND at 03:03.
(2:26) 8-R.Sanchez punts 46 yards to NYJ 22, Center-46-L.Rhodes. 82-X.Gipson to NYJ 24 for 2 yards (16-A.Dulin).
(2:17) (Shotgun) 8-A.Rodgers pass short left to 5-G.Wilson to NYJ 30 for 6 yards (40-J.Jones, 96-T.Bryan).
(2:00) (Shotgun) 20-B.Hall right tackle to NYJ 36 for 6 yards (51-K.Paye).
(1:30) (No Huddle, Shotgun) 8-A.Rodgers pass short middle to 83-T.Conklin to NYJ 43 for 7 yards (44-Z.Franklin, 45-E.Speed).
(1:05) (No Huddle, Shotgun) 8-A.Rodgers pass short left to 17-D.Adams pushed ob at IND 33 for 24 yards (20-N.Cross).
(:58) (Shotgun) 20-B.Hall right tackle to IND 29 for 4 yards (23-K.Moore).
(:54) (Shotgun) 8-A.Rodgers pass incomplete short middle to 5-G.Wilson (40-J.Jones) [97-L.Latu].
Timeout #1 by NYJ at 00:54.
(:48) (Shotgun) 8-A.Rodgers pass short middle to 20-B.Hall for 29 yards, TOUCHDOWN.
18-A.Carlson extra point is GOOD, Center-42-T.Hennessy, Holder-6-T.Morstead.
18-A.Carlson kicks 66 yards from NYJ 35 to IND -1. 31-T.Goodson to IND 32 for 33 yards (55-C.Surratt).
(:34) (Shotgun) 28-J.Taylor right guard to IND 35 for 3 yards (99-W.McDonald, 36-C.Clark).
(:13) (No Huddle, Shotgun) 5-A.Richardson pass short right to 83-K.Granson pushed ob at IND 39 for 4 yards (1-A.Gardner).
(:08) (Shotgun) 5-A.Richardson pass incomplete deep middle to 11-M.Pittman.
Timeout #2 by NYJ at 00:08.
(:03) (Shotgun) 5-A.Richardson pass incomplete deep right.
END QUARTER 2
18-A.Carlson kicks 68 yards from NYJ 35 to IND -3. 16-A.Dulin to IND 40 for 43 yards (55-C.Surratt).
(14:55) 28-J.Taylor up the middle to IND 44 for 4 yards (94-S.Thomas).
(14:19) (Shotgun) 5-A.Richardson sacked at IND 36 for -8 yards (54-J.Kinlaw). FUMBLES (54-J.Kinlaw) [44-J.Sherwood], RECOVERED by NYJ-54-J.Kinlaw at IND 29. 54-J.Kinlaw to IND 25 for 4 yards (5-A.Richardson).
(14:09) (Shotgun) 20-B.Hall left end to IND 18 for 7 yards (44-Z.Franklin).
(13:30) 20-B.Hall right end for 18 yards, TOUCHDOWN.
18-A.Carlson extra point is GOOD, Center-42-T.Hennessy, Holder-6-T.Morstead.
18-A.Carlson kicks 62 yards from NYJ 35 to IND 3. 31-T.Goodson to IND 21 for 18 yards (41-M.McCrary-Ball).
(13:17) (Shotgun) 28-J.Taylor left end to IND 18 for -3 yards (23-I.Oliver).
(12:38) (Shotgun) 5-A.Richardson pass incomplete short left to 10-A.Mitchell (96-L.Taylor).
(12:35) (Shotgun) 5-A.Richardson pass short middle to 1-J.Downs to IND 33 for 15 yards (44-J.Sherwood).
(12:00) 28-J.Taylor left tackle to IND 30 for -3 yards (95-Q.Williams).
(11:24) (Shotgun) PENALTY on IND-72-B.Smith, False Start, 5 yards, enforced at IND 30 - No Play.
(11:05) (Shotgun) 28-J.Taylor up the middle to IND 34 for 9 yards (58-E.Watts).
(10:24) (Shotgun) 5-A.Richardson pass short right to 1-J.Downs to IND 45 for 11 yards (30-M.Carter) [72-M.Clemons].
(9:53) (No Huddle, Shotgun) 5-A.Richardson pass deep right to 14-A.Pierce to NYJ 39 for 16 yards (4-D.Reed).
(9:11) (Shotgun) 5-A.Richardson pass incomplete deep middle to 11-M.Pittman.
(9:05) (Shotgun) 28-J.Taylor right guard to NYJ 38 for 1 yard (56-Qi.Williams).
(8:24) (Shotgun) 28-J.Taylor up the middle to NYJ 38 for no gain (72-M.Clemons).
(7:45) 7-M.Gay 56 yard field goal is GOOD, Center-46-L.Rhodes, Holder-8-R.Sanchez.
7-M.Gay kicks 65 yards from IND 35 to end zone, Touchback to the NYJ 30.
(7:41) (Shotgun) 20-B.Hall left guard to NYJ 35 for 5 yards (99-D.Buckner; 97-L.Latu).
(6:59) 8-A.Rodgers pass short middle to 20-B.Hall to NYJ 35 for no gain (44-Z.Franklin) [97-L.Latu].
(6:17) (Shotgun) 8-A.Rodgers pass incomplete short left to 5-G.Wilson (40-J.Jones).
(6:15) 6-T.Morstead punts 49 yards to IND 16, Center-42-T.Hennessy, out of bounds.
(6:06) (Shotgun) 5-A.Richardson FUMBLES (Aborted) at IND 11, and recovers at IND 7.
(5:23) (Shotgun) 5-A.Richardson pass incomplete short left to 14-A.Pierce.
(5:18) (Shotgun) 28-J.Taylor right tackle to IND 10 for 3 yards (95-Q.Williams). ** Injury Update: NYJ-7-H.Reddick has returned to the game.
(4:43) 8-R.Sanchez punts 43 yards to NYJ 47, Center-46-L.Rhodes, fair catch by 82-X.Gipson. PENALTY on IND-16-A.Dulin, Fair Catch Interference, 15 yards, enforced at NYJ 47.
(4:32) (Shotgun) 20-B.Hall right end to IND 38 for no gain (45-E.Speed).
(3:52) (Shotgun) 8-A.Rodgers pass short middle to 20-B.Hall to IND 40 for -2 yards (51-K.Paye, 98-R.Davis).
(3:03) (Shotgun) 8-A.Rodgers pass incomplete short right to 83-T.Conklin.
(3:00) 18-A.Carlson 58 yard field goal is GOOD, Center-42-T.Hennessy, Holder-6-T.Morstead.
18-A.Carlson kicks 62 yards from NYJ 35 to IND 3. 31-T.Goodson to IND 23 for 20 yards (19-I.Charles). PENALTY on IND, Illegal Formation, 5 yards, enforced at IND 23.
(2:50) (Shotgun) 5-A.Richardson right guard to IND 23 for 5 yards (72-M.Clemons; 54-J.Kinlaw).
(2:12) (Shotgun) 28-J.Taylor left end pushed ob at IND 25 for 2 yards (23-I.Oliver). PENALTY on IND-16-A.Dulin, Offensive Holding, 10 yards, enforced at IND 23 - No Play.
(1:52) (Shotgun) 5-A.Richardson pass short left to 11-M.Pittman to IND 11 for -2 yards (30-M.Carter).
(1:12) (Shotgun) 5-A.Richardson pass incomplete short right to 28-J.Taylor.
(1:08) 8-R.Sanchez punts 58 yards to NYJ 31, Center-46-L.Rhodes. 82-X.Gipson to NYJ 41 for 10 yards (50-S.Olubi; 16-A.Dulin).
(:57) 8-A.Rodgers pass short right to 17-D.Adams to IND 35 for 24 yards (23-K.Moore).
(:16) (Shotgun) 20-B.Hall left guard to IND 32 for 3 yards (41-G.Stuard; 99-D.Buckner).
END QUARTER 3
(15:00) (Shotgun) 8-A.Rodgers pass short left to 17-D.Adams pushed ob at IND 27 for 5 yards (45-E.Speed).
(14:22) 20-B.Hall right end to IND 11 for 16 yards (20-N.Cross).
(13:36) (Shotgun) PENALTY on NYJ-75-A.Vera-Tucker, False Start, 4 yards, enforced at IND 11 - No Play.
(13:36) (Shotgun) 0-B.Allen up the middle to IND 11 for 4 yards (90-G.Stewart; 45-E.Speed). NYJ-76-J.Simpson was injured during the play.
(13:08) 8-A.Rodgers pass short right to 88-K.Yeboah for 11 yards, TOUCHDOWN.
18-A.Carlson extra point is GOOD, Center-42-T.Hennessy, Holder-6-T.Morstead. ** Injury Update: NYJ-76-J.Simpson has returned to the game.
18-A.Carlson kicks 65 yards from NYJ 35 to end zone, Touchback to the IND 30.
(13:03) (Shotgun) 5-A.Richardson pass incomplete short right.
(12:56) (Shotgun) 5-A.Richardson pass short middle to 11-M.Pittman to 50 for 20 yards (35-J.Mills).
(12:32) (No Huddle, Shotgun) 5-A.Richardson pass incomplete short middle to 81-M.Alie-Cox.
(12:29) (Shotgun) 5-A.Richardson pass short left to 11-M.Pittman ran ob at NYJ 42 for 8 yards (4-D.Reed).
(11:58) 5-A.Richardson pass short right to 81-M.Alie-Cox to NYJ 30 for 12 yards (36-C.Clark).
(11:27) (No Huddle, Shotgun) 5-A.Richardson pass deep left to 14-A.Pierce to NYJ 11 for 19 yards (1-A.Gardner).
(11:00) (No Huddle, Shotgun) 28-J.Taylor up the middle to NYJ 10 for 1 yard (95-Q.Williams).
(10:16) (Shotgun) 5-A.Richardson pass short middle to 1-J.Downs for 10 yards, TOUCHDOWN.
TWO-POINT CONVERSION ATTEMPT. 5-A.Richardson pass to 81-M.Alie-Cox is incomplete. ATTEMPT FAILS.
7-M.Gay kicks 65 yards from IND 35 to end zone, Touchback to the NYJ 30.
(10:11) 20-B.Hall right tackle to NYJ 31 for 1 yard (51-K.Paye).
(9:32) (Shotgun) 8-A.Rodgers pass short left to 20-B.Hall to NYJ 26 for -5 yards (97-L.Latu).
(8:49) (Shotgun) 8-A.Rodgers pass deep right to 82-X.Gipson ran ob at NYJ 43 for 17 yards.
(8:09) 8-A.Rodgers pass short left to 5-G.Wilson to NYJ 47 for 4 yards (99-D.Buckner).
(7:33) 0-B.Allen left end to IND 40 for 13 yards (40-J.Jones). PENALTY on NYJ-74-O.Fashanu, Offensive Holding, 10 yards, enforced at NYJ 49.
(7:08) (Shotgun) 8-A.Rodgers pass short right to 14-M.Corley to NYJ 49 for 10 yards (23-K.Moore).
(6:21) (Shotgun) 8-A.Rodgers pass short left to 89-J.Ruckert to IND 45 for 6 yards (23-K.Moore).
(5:40) 20-B.Hall right guard to IND 44 for 1 yard (23-K.Moore; 41-G.Stuard).
(4:55) (Shotgun) 8-A.Rodgers pass short left to 17-D.Adams to IND 25 for 19 yards (32-J.Blackmon).
Timeout #1 by NYJ at 04:55.
(4:13) (Shotgun) 20-B.Hall up the middle to IND 25 for no gain (98-R.Davis, 54-D.Odeyingbo).
(3:33) 8-A.Rodgers pass incomplete short right to 17-D.Adams.
(3:30) (Shotgun) 8-A.Rodgers pass short left to 20-B.Hall to IND 17 for 8 yards (54-D.Odeyingbo).
(2:44) 18-A.Carlson 35 yard field goal is GOOD, Center-42-T.Hennessy, Holder-6-T.Morstead.
Timeout #2 by NYJ at 02:44.
18-A.Carlson kicks 65 yards from NYJ 35 to end zone, Touchback to the IND 30.
(2:41) (Shotgun) 5-A.Richardson left guard to IND 34 for 4 yards (72-M.Clemons; 95-Q.Williams).
(2:14) (No Huddle, Shotgun) 5-A.Richardson pass deep right to 14-A.Pierce to NYJ 27 for 39 yards (35-J.Mills).
(2:00) (Shotgun) 5-A.Richardson pass deep left to 1-J.Downs to NYJ 10 for 17 yards (23-I.Oliver).
(1:39) (No Huddle, Shotgun) 5-A.Richardson pass short right to 11-M.Pittman to NYJ 6 for 4 yards (23-I.Oliver).
(1:32) (Shotgun) 28-J.Taylor right guard to NYJ 4 for 2 yards (99-W.McDonald, 72-M.Clemons).
Timeout #3 by NYJ at 01:32.
(:51) (Shotgun) 5-A.Richardson left end for 4 yards, TOUCHDOWN.
TWO-POINT CONVERSION ATTEMPT. 28-J.Taylor rushes up the middle. ATTEMPT FAILS.
7-M.Gay kicks 65 yards from IND 35 to end zone, Touchback to the NYJ 30.
(:46) (Shotgun) 8-A.Rodgers sacked at NYJ 25 for -5 yards (51-K.Paye). FUMBLES (51-K.Paye) [51-K.Paye], recovered by NYJ-83-T.Conklin at NYJ 20. 83-T.Conklin to NYJ 17 for -3 yards (99-D.Buckner).
(:23) 8-A.Rodgers pass short middle to 20-B.Hall to NYJ 28 for 11 yards (23-K.Moore, 45-E.Speed). PENALTY on IND-45-E.Speed, Defensive Delay of Game, 5 yards, enforced at NYJ 28.
(:13) (Shotgun) 8-A.Rodgers sacked at NYJ 28 for -5 yards (51-K.Paye).
END GAME"

gb_phi2_summary <- "Headline: Richardson’s late TD run leads Colts to a 28-27 victory over Rodgers and the Jets.
Summary: The Jets got off to a slow start, failing to pick up a first down until their 6th offensive possession. The Jets then took their first lead at 14-13 early in the third quarter on an 18-yard touchdown run by Hall — set up by Javon Kinlaw's strip-sack of Richardson and fumble recovery at the Colts 25 on Indianapolis' second offensive snap of the second half. With the Jets leading 27-22 after Anders Carlson's 35-yard field goal with 2:41 remaining, Richardson marched the Colts down the field. He connected with Alec Pierce for 39 yards and then Josh Downs for 17 yards to put the ball at the 10. Three plays later, Richardson took off to the right and ran into the end zone, his second TD of the game, for the go-ahead score. Taylor was stuffed on the 2-point try — giving Rodgers and the Jets one last chance, but with no timeouts left. Rodgers was sacked by Kwity Paye and fumbled on the first play, but the Jets recovered. After Breece Hall had an 11-yard catch and a delay-of-game penalty was called on the Colts' E.J. Speed, Rodgers was sacked again by Paye — sealing the win for the Colts.
Notable Performances: Richardson finished 20 of 30 for 272 yards and a touchdown, and ran for 32 yards and the two scores on 10 carries. Rodgers was 22 of 29 for 184 yards and two TDs.
Injuries Jets: Haason Reddick left in the second quarter but returned in the second half.
"

# Append game log and summary to training dataframe 
gb_phi2 <- as.data.frame(cbind(gb_phi_log, gb_phi_summary)) %>% rename(game_log = gb_phi_log, game_summary = gb_phi_summary)
training <- rbind(training, gb_phi2)

min_ten_log <- "GAME
96-J.Romo kicks 63 yards from MIN 35 to TEN 2. 36-J.Chestnut to TEN 25 for 23 yards (98-B.Richter). TEN-41-O.Reese was injured during the play.
(14:54) (Shotgun) 8-W.Levis pass incomplete short left to 20-T.Pollard.
(14:50) 20-T.Pollard up the middle to TEN 23 for -2 yards (7-B.Murphy, 43-A.Van Ginkel).
(14:16) (Shotgun) 8-W.Levis pass short right to 85-C.Okonkwo pushed ob at TEN 35 for 12 yards (2-S.Gilmore) [91-P.Jones].
(13:37) 8-W.Levis scrambles right end to TEN 37 for 2 yards (58-J.Greenard).
(12:56) (Shotgun) PENALTY on TEN-78-N.Petit-Frere, False Start, 5 yards, enforced at TEN 37 - No Play.
(12:48) (Shotgun) 8-W.Levis pass short left to 85-C.Okonkwo to TEN 39 for 7 yards (43-A.Van Ginkel).
(12:05) (Shotgun) 8-W.Levis sacked at TEN 29 for -10 yards (51-B.Cashman).
(11:25) 4-R.Stonehouse punts 32 yards to MIN 39, Center-46-M.Cox, out of bounds.
(11:18) 14-S.Darnold pass short left to 18-J.Jefferson pushed ob at MIN 44 for 5 yards (39-D.Baker).
(10:48) (No Huddle, Shotgun) 14-S.Darnold scrambles left end pushed ob at MIN 49 for 5 yards (56-K.Murray). PENALTY on TEN-56-K.Murray, Unnecessary Roughness, 15 yards, enforced at MIN 49.
(10:31) 14-S.Darnold FUMBLES (Aborted) at TEN 42, touched at TEN 43, RECOVERED by TEN-98-J.Simmons at TEN 45.
(10:22) (Shotgun) 2-T.Spears left guard to TEN 49 for 4 yards (58-J.Greenard).
(9:47) 20-T.Pollard right end to MIN 47 for 4 yards (43-A.Van Ginkel).
(9:10) (Shotgun) 8-W.Levis right end to MIN 44 for 3 yards (22-H.Smith).
(8:30) (Shotgun) 8-W.Levis scrambles right end pushed ob at MIN 34 for 10 yards (2-S.Gilmore).
(7:50) (Shotgun) 8-W.Levis left end to MIN 33 for 1 yard (43-A.Van Ginkel, 91-P.Jones).
(7:12) (Shotgun) 8-W.Levis pass incomplete deep middle to 15-N.Westbrook-Ikhine.
(7:07) (No Huddle, Shotgun) 8-W.Levis pass deep right to 0-C.Ridley to MIN 12 for 21 yards (7-B.Murphy). Penalty on MIN-7-B.Murphy, Defensive Pass Interference, declined.
(6:41) (Shotgun) 20-T.Pollard right guard to MIN 9 for 3 yards (91-P.Jones).
(6:00) (Shotgun) 8-W.Levis left tackle to MIN 6 for 3 yards (43-A.Van Ginkel).
(5:19) (Shotgun) 8-W.Levis sacked at MIN 11 for -5 yards (91-P.Jones).
(4:42) 6-N.Folk 30 yard field goal is GOOD, Center-46-M.Cox, Holder-4-R.Stonehouse.
6-N.Folk kicks 65 yards from TEN 35 to end zone, Touchback to the MIN 30.
(4:39) 33-A.Jones right tackle to MIN 33 for 3 yards (69-S.Joseph).
(4:08) (Shotgun) 14-S.Darnold pass short left to 18-J.Jefferson to MIN 37 for 4 yards (49-A.Key).
(3:29) (Shotgun) 14-S.Darnold pass incomplete deep left to 18-J.Jefferson (29-J.Brownlee). PENALTY on TEN-29-J.Brownlee, Defensive Pass Interference, 16 yards, enforced at MIN 37 - No Play.
(3:25) 14-S.Darnold pass deep middle to 3-J.Addison for 47 yards, TOUCHDOWN.
96-J.Romo extra point is GOOD, Center-47-J.McQuaide, Holder-17-R.Wright.
96-J.Romo kicks 65 yards from MIN 35 to end zone, Touchback to the TEN 30.
(3:16) 20-T.Pollard left tackle to TEN 31 for 1 yard (0-I.Pace). PENALTY on TEN-84-N.Vannett, Offensive Holding, 10 yards, enforced at TEN 30 - No Play.
(2:56) (Shotgun) 8-W.Levis pass deep left to 15-N.Westbrook-Ikhine pushed ob at TEN 39 for 19 yards (24-C.Bynum).
(2:19) 20-T.Pollard up the middle to TEN 41 for 2 yards (0-I.Pace; 51-B.Cashman).
(1:39) 2-T.Spears right guard to TEN 39 for -2 yards (91-P.Jones, 51-B.Cashman).
(1:03) (Shotgun) 8-W.Levis pass incomplete deep left to 0-C.Ridley.
(:57) (Shotgun) 8-W.Levis pass incomplete short right to 85-C.Okonkwo [91-P.Jones].
(:54) 4-R.Stonehouse punts 50 yards to MIN 11, Center-46-M.Cox, fair catch by 4-B.Powell.
(:47) 33-A.Jones up the middle to MIN 15 for 4 yards (58-H.Landry).
(:17) (No Huddle, Shotgun) 14-S.Darnold pass incomplete deep left to 3-J.Addison.
(:13) (Shotgun) 14-S.Darnold pass short right to 11-T.Sherfield to MIN 31 for 16 yards (21-R.McCreary).
END QUARTER 1
(15:00) (Shotgun) 33-A.Jones right tackle to MIN 32 for 1 yard (56-K.Murray).
(14:36) (No Huddle, Shotgun) 14-S.Darnold scrambles up the middle to MIN 35 for 3 yards (44-M.Brown).
(13:51) (Shotgun) 14-S.Darnold pass deep left to 18-J.Jefferson to TEN 34 for 31 yards (21-R.McCreary).
(13:02) 14-S.Darnold pass short left to 84-J.Oliver to TEN 29 for 5 yards (29-J.Brownlee, 56-K.Murray).
(12:19) 33-A.Jones up the middle to TEN 25 for 4 yards (91-K.Coburn).
(11:34) (Shotgun) 14-S.Darnold pass short right to 87-T.Hockenson pushed ob at TEN 21 for 4 yards (58-H.Landry).
(10:57) (Shotgun) 14-S.Darnold pass incomplete short left to 18-J.Jefferson (39-D.Baker).
Timeout #1 by MIN at 10:57.
(10:54) 33-A.Jones right end to TEN 18 for 3 yards (29-J.Brownlee; 56-K.Murray).
(10:13) (Shotgun) 14-S.Darnold scrambles left end to TEN 12 for 6 yards (58-H.Landry; 17-J.Baker).
(9:40) (No Huddle) 14-S.Darnold up the middle to TEN 12 for no gain (58-H.Landry). PENALTY on TEN-93-T.Sweat, Defensive Offside, 5 yards, enforced at TEN 12 - No Play.
(9:16) (Shotgun) 14-S.Darnold pass short left to 18-J.Jefferson to TEN 1 for 6 yards (92-J.Harrell; 17-J.Baker).
(8:35) (Shotgun) 14-S.Darnold pass incomplete short right to 18-J.Jefferson (39-D.Baker).
(8:31) 33-A.Jones up the middle to TEN 1 for no gain (97-J.Lynch; 37-A.Hooker).
(7:48) 14-S.Darnold pass incomplete short left to 3-J.Addison (44-M.Brown). PENALTY on TEN-44-M.Brown, Unnecessary Roughness, 0 yards, enforced at TEN 1 - No Play. PENALTY on TEN, Unsportsmanlike Conduct, 0 yards, enforced between downs.
(7:43) 14-S.Darnold up the middle for 1 yard, TOUCHDOWN.
96-J.Romo extra point is No Good, Hit Right Upright, Center-47-J.McQuaide, Holder-17-R.Wright.
96-J.Romo kicks 65 yards from MIN 35 to end zone, Touchback to the TEN 30. ** Injury Update: TEN-41-O.Reese has returned to the game.
(7:40) (Shotgun) 20-T.Pollard up the middle to TEN 30 for no gain (99-J.Tillery).
(7:06) (Shotgun) 8-W.Levis pass short middle to 81-J.Whyle to TEN 36 for 6 yards (44-J.Metellus).
(6:21) (Shotgun) 8-W.Levis pass incomplete short left to 15-N.Westbrook-Ikhine.
(6:17) 4-R.Stonehouse punts 51 yards to MIN 13, Center-46-M.Cox. 4-B.Powell pushed ob at MIN 23 for 10 yards (52-J.Williams). PENALTY on TEN-52-J.Williams, Horse Collar Tackle, 15 yards, enforced at MIN 23.
(6:08) 14-S.Darnold pass short right to 27-C.Akers pushed ob at MIN 46 for 8 yards (37-A.Hooker).
(5:32) 27-C.Akers left end to MIN 47 for 1 yard (58-H.Landry; 17-J.Baker).
(4:52) 14-S.Darnold up the middle to MIN 49 for 2 yards (93-T.Sweat).
(4:04) 14-S.Darnold pass short middle to 84-J.Oliver to TEN 43 for 8 yards (56-K.Murray; 93-T.Sweat).
Timeout #2 by MIN at 04:04.
(3:22) 27-C.Akers up the middle to TEN 41 for 2 yards (93-T.Sweat; 69-S.Joseph). PENALTY on MIN-11-T.Sherfield, Offensive Holding, 10 yards, enforced at TEN 43 - No Play.
(3:00) (Shotgun) 14-S.Darnold pass short right to 3-J.Addison to TEN 37 for 16 yards (56-K.Murray; 37-A.Hooker).
(2:17) 14-S.Darnold pass incomplete short left. PENALTY on TEN-39-D.Baker, Illegal Contact, 5 yards, enforced at TEN 37 - No Play.
(2:11) (Shotgun) 14-S.Darnold pass incomplete short middle to 87-T.Hockenson.
(2:07) 27-C.Akers left guard to TEN 20 for 12 yards (39-D.Baker).
(2:00) (Shotgun) 14-S.Darnold pass short right to 3-J.Addison to TEN 22 for -2 yards (21-R.McCreary, 58-H.Landry).
(1:55) (Shotgun) 27-C.Akers up the middle to TEN 22 for no gain (98-J.Simmons).
Timeout #1 by TEN at 01:55.
(1:51) (Shotgun) 14-S.Darnold pass incomplete deep left to 3-J.Addison.
Timeout #2 by TEN at 01:51.
(1:45) 96-J.Romo 40 yard field goal is GOOD, Center-47-J.McQuaide, Holder-17-R.Wright.
96-J.Romo kicks 65 yards from MIN 35 to end zone, Touchback to the TEN 30.
(1:41) (Shotgun) 8-W.Levis pass incomplete short right to 85-C.Okonkwo.
(1:36) (Shotgun) 8-W.Levis pass short middle to 2-T.Spears to TEN 35 for 5 yards (58-J.Greenard).
(1:16) (No Huddle, Shotgun) 8-W.Levis pass deep right to 0-C.Ridley to MIN 49 for 16 yards (26-Th.Jackson).
(:49) (No Huddle, Shotgun) 8-W.Levis pass incomplete short left to 15-N.Westbrook-Ikhine (22-H.Smith).
(:47) (Shotgun) 8-W.Levis sacked at TEN 46 for -5 yards (43-A.Van Ginkel).
(:37) (Shotgun) 8-W.Levis sacked at TEN 38 for -8 yards (43-A.Van Ginkel).
Timeout #3 by TEN at 00:37.
(:30) 4-R.Stonehouse punts 62 yards to end zone, Center-46-M.Cox, Touchback.
Timeout #3 by MIN at 00:30.
(:22) 14-S.Darnold kneels to MIN 19 for -1 yards.
END QUARTER 2
6-N.Folk kicks 65 yards from TEN 35 to end zone, Touchback to the MIN 30.
(15:00) 33-A.Jones left tackle to MIN 35 for 5 yards (93-T.Sweat).
(14:15) 14-S.Darnold pass incomplete short left to 3-J.Addison.
(14:10) (Shotgun) 14-S.Darnold sacked at MIN 34 for -1 yards (56-K.Murray).
(13:22) 17-R.Wright punts 66 yards to end zone, Center-47-J.McQuaide, Touchback.
(13:14) (Shotgun) 8-W.Levis pass short middle to 84-N.Vannett to TEN 26 for 6 yards (22-H.Smith, 0-I.Pace).
(12:41) 20-T.Pollard left end to TEN 29 for 3 yards (0-I.Pace; 44-J.Metellus).
(12:01) (Shotgun) 8-W.Levis left tackle to TEN 27 for -2 yards (58-J.Greenard).
(11:17) 4-R.Stonehouse punts 46 yards to MIN 27, Center-46-M.Cox. 4-B.Powell to MIN 34 for 7 yards (80-B.Oliver).
(11:06) 33-A.Jones left tackle to MIN 33 for -1 yards (98-J.Simmons). FUMBLES (98-J.Simmons), and recovers at MIN 37. TEN-50-J.Gibbens was injured during the play.
(10:41) (Shotgun) 14-S.Darnold pass short right to 87-T.Hockenson to MIN 46 for 9 yards (21-R.McCreary).
(10:07) (No Huddle, Shotgun) 14-S.Darnold pass short left to 33-A.Jones to 50 for 4 yards (56-K.Murray).
(9:26) 33-A.Jones left tackle to TEN 49 for 1 yard (39-D.Baker).
(8:41) (Shotgun) 14-S.Darnold pass incomplete short right to 3-J.Addison.
(8:38) 17-R.Wright punts 47 yards to TEN 2, Center-47-J.McQuaide, downed by MIN-11-T.Sherfield.
(8:30) 20-T.Pollard up the middle to TEN 1 for -1 yards (61-J.Redmond).
(7:55) 8-W.Levis up the middle to TEN 2 for 1 yard (99-J.Tillery; 97-H.Phillips).
(7:12) (Shotgun) 8-W.Levis pass deep right to 15-N.Westbrook-Ikhine for 98 yards, TOUCHDOWN.
6-N.Folk extra point is GOOD, Center-46-M.Cox, Holder-4-R.Stonehouse.
6-N.Folk kicks 65 yards from TEN 35 to MIN 0. 32-T.Chandler to MIN 35 for 35 yards (44-M.Brown). TEN-44-M.Brown was injured during the play.
(6:55) 14-S.Darnold pass deep left to 18-J.Jefferson to TEN 40 for 25 yards (35-D.Worley) [93-T.Sweat].
(6:08) 27-C.Akers up the middle to TEN 41 for -1 yards (93-T.Sweat).
(5:37) (No Huddle, Shotgun) 14-S.Darnold pass incomplete deep right to 3-J.Addison.
(5:31) (Shotgun) 14-S.Darnold sacked at TEN 49 for -8 yards (98-J.Simmons). FUMBLES (98-J.Simmons) [98-J.Simmons], and recovers at TEN 49. PENALTY on TEN-29-J.Brownlee, Illegal Contact, 5 yards, enforced at TEN 41 - No Play.
(5:11) 14-S.Darnold pass short right to 84-J.Oliver pushed ob at TEN 15 for 21 yards (39-D.Baker; 44-M.Brown). ** Injury Update: TEN-44-M.Brown has returned to the game.
(4:46) (No Huddle) 27-C.Akers right guard to TEN 13 for 2 yards (17-J.Baker; 56-K.Murray).
(4:02) (Shotgun) 14-S.Darnold pass short left to 18-J.Jefferson to TEN 3 for 10 yards (17-J.Baker).
(3:19) 14-S.Darnold pass short right to 27-C.Akers for 3 yards, TOUCHDOWN.
96-J.Romo extra point is GOOD, Center-47-J.McQuaide, Holder-17-R.Wright.
96-J.Romo kicks 65 yards from MIN 35 to end zone, Touchback to the TEN 30.
(3:15) (Shotgun) 8-W.Levis pass deep left to 0-C.Ridley to TEN 45 for 15 yards (7-B.Murphy).
(2:38) (Shotgun) 8-W.Levis pass short right to 2-T.Spears to MIN 49 for 6 yards (0-I.Pace). PENALTY on TEN-68-I.Prince, Illegal Formation, 5 yards, enforced at TEN 45 - No Play.
(2:11) (Shotgun) 8-W.Levis pass short right to 0-C.Ridley ran ob at TEN 46 for 6 yards.
(1:36) (Shotgun) 8-W.Levis pass short left to 2-T.Spears to TEN 49 for 3 yards (24-C.Bynum; 7-B.Murphy).
(:54) (Shotgun) 8-W.Levis pass deep middle to 0-C.Ridley for 51 yards, TOUCHDOWN NULLIFIED by Penalty [91-P.Jones]. PENALTY on TEN-68-I.Prince, Illegal Formation, 5 yards, enforced at TEN 49 - No Play.
(:48) (Shotgun) 8-W.Levis pass deep right to 80-B.Oliver to MIN 23 for 33 yards (1-S.Griffin).
END QUARTER 3
(15:00) (Shotgun) 8-W.Levis pass incomplete short left to 2-T.Spears.
(14:56) 2-T.Spears left tackle to MIN 25 for -2 yards (43-A.Van Ginkel).
(14:18) (Shotgun) 8-W.Levis pass incomplete deep middle.
(14:12) 6-N.Folk 43 yard field goal is GOOD, Center-46-M.Cox, Holder-4-R.Stonehouse.
6-N.Folk kicks 65 yards from TEN 35 to end zone, Touchback to the MIN 30.
(14:08) 33-A.Jones right guard to MIN 30 for no gain (98-J.Simmons).
(13:25) (Shotgun) 14-S.Darnold pass incomplete short middle to 4-B.Powell. Minnesota challenged the incomplete pass ruling, and the play was REVERSED. (Shotgun) 14-S.Darnold pass short middle to 4-B.Powell to MIN 43 for 13 yards (17-J.Baker).
(13:09) 33-A.Jones left guard to MIN 47 for 4 yards (49-A.Key).
(12:31) 33-A.Jones right tackle to TEN 48 for 5 yards (37-A.Hooker).
(11:46) 14-S.Darnold up the middle to TEN 46 for 2 yards (93-T.Sweat).
(11:04) (Shotgun) 14-S.Darnold pass incomplete deep left to 83-J.Nailor.
(10:57) (Shotgun) 14-S.Darnold pass incomplete short right to 83-J.Nailor.
(10:54) (Shotgun) 14-S.Darnold pass incomplete short right [17-J.Baker].
(10:48) 17-R.Wright punts 40 yards to TEN 6, Center-47-J.McQuaide. 19-J.Jackson ran ob at TEN 26 for 20 yards (32-T.Chandler). PENALTY on MIN-32-T.Chandler, Unnecessary Roughness, 15 yards, enforced at TEN 26.
(10:38) 8-W.Levis pass short left to 20-T.Pollard to MIN 49 for 10 yards (44-J.Metellus).
(10:01) 20-T.Pollard left end pushed ob at MIN 45 for 4 yards (22-H.Smith).
(9:19) (Shotgun) 8-W.Levis pass incomplete deep middle to 15-N.Westbrook-Ikhine.
(9:14) (Shotgun) 20-T.Pollard up the middle to MIN 43 for 2 yards (52-Ji.Ward; 58-J.Greenard).
(8:36) (Shotgun) 8-W.Levis sacked at MIN 49 for -6 yards (91-P.Jones). TURNOVER ON DOWNS.
(8:32) 27-C.Akers up the middle to TEN 47 for 4 yards (98-J.Simmons).
(7:50) 14-S.Darnold pass short left to 86-J.Mundt to TEN 34 for 13 yards (17-J.Baker).
(7:05) 27-C.Akers up the middle to TEN 30 for 4 yards (56-K.Murray).
(6:21) 27-C.Akers left tackle to TEN 33 for -3 yards (49-A.Key).
(5:37) (Shotgun) 14-S.Darnold sacked at TEN 41 for -8 yards (49-A.Key). FUMBLES (49-A.Key) [49-A.Key], touched at TEN 40, RECOVERED by TEN-56-K.Murray at TEN 40. The Replay Official reviewed the passer was not down by contact ruling, and the play was REVERSED. (Shotgun) 14-S.Darnold sacked at TEN 42 for -9 yards (49-A.Key).
(5:17) 17-R.Wright punts 29 yards to TEN 13, Center-47-J.McQuaide. 19-J.Jackson pushed ob at TEN 19 for 6 yards (98-B.Richter).
(5:09) (Shotgun) 8-W.Levis pass incomplete short right [58-J.Greenard].
(5:05) (Shotgun) 8-W.Levis pass short right to 83-T.Boyd to TEN 49 for 30 yards (7-B.Murphy; 0-I.Pace).
(4:14) (Shotgun) 8-W.Levis pass incomplete short right to 20-T.Pollard.
(4:09) (Shotgun) 8-W.Levis pass short right to 15-N.Westbrook-Ikhine to MIN 28 for 23 yards (24-C.Bynum). PENALTY on TEN-68-I.Prince, Illegal Formation, 5 yards, enforced at TEN 49 - No Play.
(3:59) (Shotgun) 8-W.Levis pass short right to 20-T.Pollard to TEN 48 for 4 yards (2-S.Gilmore).
(3:13) (Shotgun) 8-W.Levis pass short middle to 83-T.Boyd to MIN 48 for 4 yards (51-B.Cashman).
(2:29) (Shotgun) 8-W.Levis pass incomplete deep left to 83-T.Boyd [91-P.Jones]. TURNOVER ON DOWNS.
(2:23) (Shotgun) 27-C.Akers left tackle to TEN 49 for 3 yards (17-J.Baker, 58-H.Landry).
(2:17) 27-C.Akers left guard to TEN 46 for 3 yards (49-A.Key).
Timeout #1 by TEN at 02:17.
(2:11) (Shotgun) 14-S.Darnold pass incomplete short left. PENALTY on MIN-14-S.Darnold, Intentional Grounding, 10 yards, enforced at TEN 46.
Timeout #2 by TEN at 02:11.
(2:05) 17-R.Wright punts 40 yards to TEN 16, Center-47-J.McQuaide, out of bounds.
(1:57) (Shotgun) 8-W.Levis pass deep right intended for 0-C.Ridley INTERCEPTED by 22-H.Smith at MIN 34. 22-H.Smith to MIN 34 for no gain (0-C.Ridley).
(1:50) 33-A.Jones up the middle to MIN 37 for 3 yards (37-A.Hooker).
(1:06) 33-A.Jones left guard to MIN 41 for 4 yards (99-A.Gaye).
(:20) 33-A.Jones up the middle to MIN 40 for -1 yards (99-A.Gaye).
Timeout #1 by MIN at 00:20.
END GAME"

min_ten_summary <- "Headline: Sam Darnold leads Vikings to win, beating Titans 23-13.
Sam Darnold lost a fumble on the Minnesota Vikings' third offensive play. Darnold then made up for it when found Jordan Addison for a 47-yard catch-and-run touchdown and the Vikings didn't trail again as they scored 16 straight for a 16-3 halftime lead. Will Levis answered with a 98-yard passing TD. He found Nick Westbrook-Ikhine catch-and-run, pulling the Titans within 16-10 midway through the third. After Levis' big play, Darnold padded Minnesota's lead to 23-10 with a 3-yard toss to Cam Akers late in the third. Levis then had a 51-yard TD pass to Calvin Ridley inside the final minute of the third wiped out by an illegal formation penalty on right tackle Isaiah Prince. They settled for Nick Folk's second field goal, this a 43-yarder. Down 23-13, they went for it twice on fourth down near midfield. Levis was sacked by Jones on fourth-and-4, and he was forced to throw it away on fourth-and-7 with 2:23 left. Harrison Smith clinched the win with an interception with 1:50 left, giving the Vikings' fans reason to celebrate. The Titans just kept hurting themselves, and finished with 13 penalties for 91 yards compared to three for 35 yards by the Vikings, which was a major reason for the loss at home.
Notable Performances: Darnold threw for 246 yards and two touchdowns and ran for a score. Andrew Van Ginkel had two sacks on back-to-back plays. 
Injuries: LB Jack Gibbens left the game early in the third quarter. RB Tyjae Spears left in the second half and didn't return."

# Append game log and summary to training dataframe 
min_ten <- as.data.frame(cbind(min_ten_log, min_ten_summary)) %>% rename(game_log = min_ten_log, game_summary = min_ten_summary)
training <- rbind(training, min_ten)

car_den_log <- "GAME
4-E.Pineiro kicks 65 yards from CAR 35 to end zone, Touchback to the DEN 30.
(15:00) 33-J.Williams right tackle to DEN 33 for 3 yards (47-J.Jewell, 36-D.Richardson).
(14:25) (Shotgun) 38-J.McLaughlin right end pushed ob at DEN 40 for 7 yards (25-X.Woods).
(13:50) (Shotgun) 10-B.Nix pass short left to 84-L.Humphrey to DEN 48 for 8 yards (99-S.Tuttle). FUMBLES (99-S.Tuttle), RECOVERED by CAR-99-S.Tuttle at DEN 49.
(13:39) (Shotgun) 9-B.Young pass short right to 6-M.Sanders to DEN 42 for 7 yards (0-J.Cooper).
(12:59) 30-C.Hubbard right end pushed ob at DEN 34 for 8 yards (40-J.Strnad).
(12:24) 17-X.Legette left end to DEN 34 for no gain (99-Z.Allen).
(11:43) (Shotgun) 30-C.Hubbard up the middle to DEN 27 for 7 yards (40-J.Strnad, 26-D.Key).
(10:58) (Shotgun) 6-M.Sanders right guard to DEN 20 for 7 yards (99-Z.Allen, 26-D.Key).
(10:19) (Shotgun) 9-B.Young pass short left to 6-M.Sanders pushed ob at DEN 15 for 5 yards (26-D.Key).
(9:40) 9-B.Young pass short right to 18-J.Coker to DEN 7 for 8 yards (22-B.Jones; 21-R.Moss).
(8:54) (Shotgun) 9-B.Young pass incomplete short left to 18-J.Coker. PENALTY on CAR-70-B.Christensen, Offensive Holding, 10 yards, enforced at DEN 7 - No Play.
(8:47) 30-C.Hubbard left tackle to DEN 19 for -2 yards (99-Z.Allen).
(8:02) (Shotgun) 9-B.Young pass short left to 30-C.Hubbard to DEN 6 for 13 yards (26-D.Key).
(7:15) (Shotgun) 9-B.Young pass short middle to 17-X.Legette for 6 yards, TOUCHDOWN [98-J.Franklin-Myers].
4-E.Pineiro extra point is GOOD, Center-44-J.Jansen, Holder-10-J.Hekker.
4-E.Pineiro kicks 65 yards from CAR 35 to end zone, Touchback to the DEN 30.
(7:12) 10-B.Nix pass short middle to 33-J.Williams to DEN 32 for 2 yards (2-M.Jackson).
(6:36) 33-J.Williams left end to DEN 37 for 5 yards (99-S.Tuttle).
(6:02) (Shotgun) 10-B.Nix pass short right to 14-C.Sutton to DEN 41 for 4 yards (47-J.Jewell).
(5:28) (Shotgun) 33-J.Williams up the middle to DEN 45 for 4 yards (93-L.Ray; 7-J.Clowney).
(4:48) (Shotgun) 10-B.Nix pass short left to 33-J.Williams to DEN 44 for -1 yards (47-J.Jewell). Penalty on DEN-72-G.Bolles, Ineligible Downfield Pass, declined.
(4:21) (Shotgun) 10-B.Nix pass deep middle to 14-C.Sutton to CAR 33 for 23 yards (2-M.Jackson; 25-X.Woods).
(3:41) 38-J.McLaughlin left tackle to CAR 28 for 5 yards (94-A.Robinson, 99-S.Tuttle).
(3:01) (Shotgun) 10-B.Nix pass incomplete short right to 14-C.Sutton (8-J.Horn).
(2:56) (Shotgun) 10-B.Nix sacked at CAR 41 for -13 yards (94-A.Robinson).
(2:04) 9-R.Dixon punts 40 yards to CAR 1, impetus ends at CAR 1, Center-48-M.Fraboni, downed by DEN-34-J.Skinner.
(1:54) 30-C.Hubbard up the middle to CAR 3 for 2 yards (97-M.Roach; 94-J.Jackson).
(1:17) 30-C.Hubbard left guard to CAR 5 for 2 yards (12-K.Alexander, 22-B.Jones).
(:34) (Shotgun) 9-B.Young pass incomplete short left to 83-D.Moore.
Timeout #1 by CAR at 00:34.
(:31) 10-J.Hekker punts 50 yards to DEN 45, Center-44-J.Jansen, fair catch by 19-M.Mims.
(:24) 10-B.Nix pass short right to 82-A.Trautman ran ob at CAR 18 for 37 yards (36-D.Richardson).
END QUARTER 1
(15:00) (Shotgun) 10-B.Nix pass short left to 14-C.Sutton to CAR 11 for 7 yards (26-C.Smith-Wade; 47-J.Jewell).
(14:17) (Shotgun) 79-M.Peart reported in as eligible. 10-B.Nix pass incomplete short right.
(14:08) (Shotgun) 10-B.Nix pass short left to 17-D.Vele to CAR 8 for 3 yards (26-C.Smith-Wade).
(13:33) (No Huddle, Shotgun) 10-B.Nix pass short right to 84-L.Humphrey to CAR 2 for 6 yards (2-M.Jackson).
(13:10) (No Huddle) 33-J.Williams right guard to CAR 3 for -1 yards (93-L.Ray, 7-J.Clowney).
(12:34) (Shotgun) 10-B.Nix pass short left to 45-N.Adkins for 3 yards, TOUCHDOWN.
Timeout #1 by DEN at 12:34.
3-W.Lutz extra point is GOOD, Center-48-M.Fraboni, Holder-9-R.Dixon.
3-W.Lutz kicks 65 yards from DEN 35 to end zone, Touchback to the CAR 30.
(12:29) 30-C.Hubbard left tackle to CAR 32 for 2 yards (98-J.Franklin-Myers).
(11:48) (Shotgun) 9-B.Young pass short right to 83-D.Moore to CAR 39 for 7 yards (22-B.Jones). PENALTY on CAR-18-J.Coker, Offensive Holding, 10 yards, enforced at CAR 35.
(11:19) (Shotgun) 9-B.Young pass short right to 6-M.Sanders pushed ob at CAR 26 for 1 yard (22-B.Jones).
(10:44) (Shotgun) 9-B.Young pass short middle to 17-X.Legette to CAR 31 for 5 yards (39-L.Wallace).
(10:06) 10-J.Hekker punts 53 yards to DEN 16, Center-44-J.Jansen. 19-M.Mims to DEN 24 for 8 yards (49-J.Rhattigan; 53-C.Cherelus). CAR-84-F.Franks was injured during the play. PENALTY on DEN-43-K.Smith, Offensive Holding, 8 yards, enforced at DEN 16.
(9:57) (Shotgun) 33-J.Williams left end to DEN 10 for 2 yards (47-J.Jewell).
(9:22) (Shotgun) 10-B.Nix pass short right to 14-C.Sutton to DEN 16 for 6 yards (2-M.Jackson).
(8:42) (Shotgun) 10-B.Nix pass short middle to 84-L.Humphrey to DEN 22 for 6 yards (36-D.Richardson).
(8:17) (No Huddle, Shotgun) 10-B.Nix pass deep right to 14-C.Sutton pushed ob at CAR 41 for 37 yards (36-D.Richardson).
(7:47) (No Huddle, Shotgun) 10-B.Nix pass deep right to 82-A.Trautman ran ob at CAR 24 for 17 yards.
(7:20) (No Huddle, Shotgun) 33-J.Williams right end to CAR 19 for 5 yards (56-T.Wallace).
(6:56) (Shotgun) 10-B.Nix pass deep right to 82-A.Trautman for 19 yards, TOUCHDOWN.
3-W.Lutz extra point is GOOD, Center-48-M.Fraboni, Holder-9-R.Dixon.
3-W.Lutz kicks 65 yards from DEN 35 to end zone, Touchback to the CAR 30.
(6:51) (Shotgun) 9-B.Young pass short middle to 83-D.Moore to CAR 41 for 11 yards (21-R.Moss).
(6:11) 30-C.Hubbard left guard to CAR 43 for 2 yards (12-K.Alexander; 0-J.Cooper).
(5:33) (Shotgun) 30-C.Hubbard up the middle to CAR 49 for 6 yards (40-J.Strnad; 15-N.Bonitto).
(4:52) (Shotgun) 9-B.Young pass incomplete deep right to 15-J.Mingo. Penalty on CAR-79-I.Ekwonu, Offensive Holding, declined.
(4:46) (Shotgun) 9-B.Young pass short left to 6-M.Sanders to CAR 48 for -1 yards (2-P.Surtain). TURNOVER ON DOWNS.
Timeout #2 by CAR at 04:46.
(4:41) 10-B.Nix pass incomplete deep right to 84-L.Humphrey.
(4:35) (No Huddle) 10-B.Nix pass deep middle to 14-C.Sutton to CAR 32 for 16 yards (36-D.Richardson).
(4:08) (No Huddle, Shotgun) 10-B.Nix pass short left to 84-L.Humphrey to CAR 30 for 2 yards (2-M.Jackson).
(3:30) (Shotgun) 10-B.Nix pass incomplete short left to 14-C.Sutton (8-J.Horn).
(3:26) (Shotgun) 38-J.McLaughlin right end to CAR 20 for 10 yards (2-M.Jackson). CAR-52-Dj.Johnson was injured during the play.
Timeout #2 by DEN at 03:26.
(2:59) 10-B.Nix pass short right to 82-A.Trautman pushed ob at CAR 8 for 12 yards (56-T.Wallace).
(2:26) (No Huddle) 10-B.Nix pass incomplete short right to 84-L.Humphrey.
(2:22) 33-J.Williams left end to CAR 8 for no gain (93-L.Ray). PENALTY on CAR-99-S.Tuttle, Defensive Holding, 4 yards, enforced at CAR 8 - No Play.
(2:00) 10-B.Nix scrambles right end to CAR 1 for 3 yards (36-D.Richardson).
(1:47) 79-M.Peart reported in as eligible. 33-J.Williams right tackle to CAR 1 for no gain (94-A.Robinson).
(1:16) 10-B.Nix up the middle for 1 yard, TOUCHDOWN.
3-W.Lutz extra point is GOOD, Center-48-M.Fraboni, Holder-9-R.Dixon.
3-W.Lutz kicks 65 yards from DEN 35 to end zone, Touchback to the CAR 30.
(1:12) (Shotgun) 9-B.Young pass incomplete deep right to 17-X.Legette.
(1:08) (Shotgun) 9-B.Young pass short left to 30-C.Hubbard pushed ob at CAR 32 for 2 yards (40-J.Strnad).
(1:03) (Shotgun) PENALTY on CAR-70-B.Christensen, False Start, 5 yards, enforced at CAR 32 - No Play.
(1:03) (Shotgun) 9-B.Young scrambles right end pushed ob at CAR 31 for 4 yards (29-J.McMillian).
Timeout #3 by CAR at 01:47.
(:57) 10-J.Hekker punts 44 yards to DEN 25, Center-44-J.Jansen, fair catch by 19-M.Mims.
(:50) (Shotgun) 10-B.Nix pass short left to 14-C.Sutton to DEN 25 for no gain (2-M.Jackson).
(:31) (No Huddle, Shotgun) 10-B.Nix pass short middle to 17-D.Vele to DEN 34 for 9 yards (31-C.Farley, 47-J.Jewell).
(:14) (No Huddle, Shotgun) 10-B.Nix pass short right to 33-J.Williams to DEN 38 for 4 yards (47-J.Jewell).
Timeout #3 by DEN at 00:08.
(:08) (Shotgun) 10-B.Nix pass incomplete deep middle to 19-M.Mims.
(:04) 10-B.Nix kneels to DEN 37 for -1 yards.
END QUARTER 2
3-W.Lutz kicks 65 yards from DEN 35 to end zone, Touchback to the CAR 30.
(15:00) 30-C.Hubbard right guard to CAR 32 for 2 yards (22-B.Jones; 98-J.Franklin-Myers).
(14:19) (Shotgun) 9-B.Young sacked at CAR 29 for -3 yards (0-J.Cooper).
(13:34) (Shotgun) 9-B.Young pass incomplete deep left to 18-J.Coker [98-J.Franklin-Myers].
Timeout #1 by CAR at 13:34.
(13:30) 10-J.Hekker punts 50 yards to DEN 21, Center-44-J.Jansen, fair catch by 19-M.Mims.
(13:22) 33-J.Williams right guard to DEN 30 for 9 yards (25-X.Woods, 26-C.Smith-Wade).
(12:44) 33-J.Williams left tackle to DEN 30 for no gain (75-D.Williams, 36-D.Richardson).
(12:01) (Shotgun) 10-B.Nix left end to DEN 32 for 2 yards (8-J.Horn).
(11:22) 10-B.Nix pass incomplete deep middle to 14-C.Sutton.
(11:15) (Shotgun) 10-B.Nix pass short right to 19-M.Mims to DEN 40 for 8 yards (26-C.Smith-Wade).
(10:39) (Shotgun) 10-B.Nix pass incomplete deep left to 16-T.Franklin.
(10:34) 9-R.Dixon punts 60 yards to end zone, Center-48-M.Fraboni, Touchback.
(10:25) (Shotgun) 9-B.Young pass incomplete deep left to 17-X.Legette.
(10:19) (Shotgun) 30-C.Hubbard left guard to CAR 23 for 3 yards (0-J.Cooper).
(9:41) (Shotgun) 9-B.Young pass short right to 18-J.Coker to CAR 38 for 15 yards (22-B.Jones). PENALTY on CAR-79-I.Ekwonu, Offensive Holding, 10 yards, enforced at CAR 23 - No Play.
(9:08) (Shotgun) 9-B.Young pass short middle to 6-M.Sanders to CAR 24 for 11 yards (39-L.Wallace, 26-D.Key).
(8:28) (Punt formation) 10-J.Hekker pass incomplete short left to 42-S.Franklin.
(8:24) 33-J.Williams right tackle to CAR 18 for 5 yards (99-S.Tuttle).
(7:46) 38-J.McLaughlin right guard to CAR 14 for 4 yards (94-A.Robinson; 7-J.Clowney).
(7:15) (No Huddle) 38-J.McLaughlin up the middle to CAR 9 for 5 yards (99-S.Tuttle).
(6:55) (No Huddle) 10-B.Nix pass short right to 38-J.McLaughlin for 9 yards, TOUCHDOWN.
3-W.Lutz extra point is GOOD, Center-48-M.Fraboni, Holder-9-R.Dixon.
3-W.Lutz kicks 65 yards from DEN 35 to end zone, Touchback to the CAR 30.
(6:49) 30-C.Hubbard right tackle to CAR 36 for 6 yards (52-J.Elliss, 22-B.Jones).
(6:02) (Shotgun) PENALTY on CAR, Delay of Game, 5 yards, enforced at CAR 36 - No Play.
(5:39) (Shotgun) 9-B.Young pass incomplete short right.
(5:32) (Shotgun) PENALTY on CAR, Delay of Game, 5 yards, enforced at CAR 31 - No Play.
(5:32) (Shotgun) 9-B.Young pass deep left to 18-J.Coker pushed ob at DEN 45 for 29 yards (21-R.Moss). PENALTY on DEN-99-Z.Allen, Roughing the Passer, 15 yards, enforced at DEN 45.
(5:08) (Shotgun) 9-B.Young scrambles left end pushed ob at DEN 26 for 4 yards (93-D.Jones).
(4:29) 30-C.Hubbard right tackle to DEN 23 for 3 yards (22-B.Jones, 21-R.Moss).
(3:47) 30-C.Hubbard right guard to DEN 25 for -2 yards (40-J.Strnad, 5-B.Browning).
(3:02) (Shotgun) 9-B.Young pass short right intended for 82-T.Tremble INTERCEPTED by 2-P.Surtain at DEN 11. 2-P.Surtain pushed ob at DEN 39 for 28 yards (17-X.Legette).
(2:54) 38-J.McLaughlin left end to DEN 43 for 4 yards (2-M.Jackson).
(2:12) (Shotgun) 10-B.Nix sacked at DEN 39 for -4 yards (94-A.Robinson).
(1:27) (Shotgun) 33-J.Williams right guard to DEN 37 for -2 yards (7-J.Clowney).
Timeout #1 by DEN at 01:27.
(:49) 9-R.Dixon punts 53 yards to CAR 10, Center-48-M.Fraboni, fair catch by 3-R.Blackshear.
(:42) 30-C.Hubbard left tackle to CAR 25 for 15 yards (22-B.Jones).
(:01) (Shotgun) 9-B.Young right end to CAR 23 for -2 yards (0-J.Cooper).
END QUARTER 3
(15:00) (Shotgun) 9-B.Young pass incomplete short left to 17-X.Legette.
(14:57) (Shotgun) 9-B.Young sacked at CAR 17 for -6 yards (15-N.Bonitto).
(14:18) 10-J.Hekker punts 50 yards to DEN 33, Center-44-J.Jansen, fair catch by 19-M.Mims.
(14:11) (Shotgun) 10-B.Nix pass short left to 33-J.Williams to DEN 36 for 3 yards (2-M.Jackson).
(13:37) 33-J.Williams right guard to DEN 40 for 4 yards (91-N.Thurman).
(12:58) (Shotgun) 10-B.Nix pass deep right to 17-D.Vele pushed ob at CAR 44 for 16 yards (36-D.Richardson).
(12:24) (No Huddle) 33-J.Williams up the middle to CAR 40 for 4 yards (75-D.Williams; 91-N.Thurman).
(11:39) 16-T.Franklin left end to CAR 37 for 3 yards (8-J.Horn; 36-D.Richardson).
(10:58) (Shotgun) 33-J.Williams right guard to CAR 37 for no gain (7-J.Clowney, 36-D.Richardson).
(10:10) (Field Goal formation) PENALTY on DEN-72-G.Bolles, False Start, 5 yards, enforced at CAR 37 - No Play.
(10:10) (Field Goal formation) 9-R.Dixon pass short middle to 85-L.Krull to CAR 39 for 3 yards (48-T.Incoom).
(10:03) (Shotgun) 9-B.Young pass short right to 17-X.Legette pushed ob at CAR 39 for no gain (55-C.Barton).
(9:38) (No Huddle, Shotgun) 9-B.Young pass incomplete short left to 15-J.Mingo.
(9:35) (Shotgun) 9-B.Young pass short right to 6-M.Sanders pushed ob at CAR 43 for 4 yards (22-B.Jones).
(8:55) (Shotgun) 9-B.Young pass short right to 82-T.Tremble to DEN 49 for 8 yards (22-B.Jones).
(8:22) (No Huddle, Shotgun) 9-B.Young pass deep middle to 18-J.Coker to DEN 23 for 26 yards (22-B.Jones). Denver challenged the runner was down by contact ruling, and the play was Upheld. The ruling on the field stands. (Timeout #2.)
(7:53) 9-B.Young pass short right to 82-T.Tremble to DEN 18 for 5 yards (55-C.Barton; 52-J.Elliss).
(7:20) (No Huddle, Shotgun) 9-B.Young pass deep left intended for 18-J.Coker INTERCEPTED by 29-J.McMillian at DEN -1. Touchback. Penalty on CAR-50-R.Hunt, Ineligible Downfield Pass, declined.
(7:14) 38-J.McLaughlin right guard to DEN 29 for 9 yards (36-D.Richardson).
(6:48) (No Huddle, Shotgun) 38-J.McLaughlin left guard to DEN 32 for 3 yards (99-S.Tuttle; 93-L.Ray).
(6:07) 33-J.Williams left guard to DEN 34 for 2 yards (7-J.Clowney; 47-J.Jewell).
(5:31) 10-B.Nix pass short left to 85-L.Krull pushed ob at DEN 49 for 15 yards (25-X.Woods). ** Injury Update: DEN-85-L.Krull has returned to the game.
(4:50) 33-J.Williams left tackle to CAR 49 for 2 yards (47-J.Jewell). Penalty on DEN, Illegal Formation, declined.
(4:45) 10-B.Nix pass incomplete deep right to 33-J.Williams.
(4:36) (Shotgun) 10-B.Nix pass short right to 16-T.Franklin to CAR 43 for 6 yards (7-J.Clowney).
(4:29) 14-C.Sutton pass deep right to 20-M.Burton to CAR 15 for 28 yards (56-T.Wallace; 25-X.Woods).
Timeout #2 by CAR at 04:29.
(3:42) 33-J.Williams left guard to CAR 13 for 2 yards (75-D.Williams).
(3:05) 23-A.Estime right tackle to CAR 9 for 4 yards (47-J.Jewell; 99-S.Tuttle).
(2:21) (Shotgun) 10-B.Nix pass short right to 14-C.Sutton to CAR 1 for 8 yards (2-M.Jackson, 56-T.Wallace). FUMBLES (56-T.Wallace), RECOVERED by CAR-99-S.Tuttle at CAR 2.
Timeout #3 by DEN at 02:21.
(2:13) 30-C.Hubbard right tackle to CAR 4 for 2 yards (15-N.Bonitto; 22-B.Jones).
(2:00) (Shotgun) 9-B.Young pass incomplete short left.
(1:55) (Shotgun) 9-B.Young pass short right to 6-M.Sanders to CAR 15 for 11 yards (40-J.Strnad; 52-J.Elliss).
(1:31) (No Huddle, Shotgun) 9-B.Young pass short right to 83-D.Moore ran ob at CAR 27 for 12 yards.
(1:24) (No Huddle, Shotgun) 9-B.Young pass short right to 83-D.Moore to CAR 40 for 13 yards (21-R.Moss).
(1:01) (No Huddle, Shotgun) 9-B.Young pass incomplete short right [99-Z.Allen].
(:55) (Shotgun) 9-B.Young pass deep left to 17-X.Legette to DEN 37 for 23 yards (29-J.McMillian). PENALTY on DEN-97-M.Roach, Roughing the Passer, 15 yards, enforced at DEN 37.
(:47) (Shotgun) 9-B.Young pass incomplete deep left to 15-J.Mingo.
(:43) (Shotgun) 9-B.Young pass short middle to 0-J.Sanders to DEN 15 for 7 yards (40-J.Strnad, 29-J.McMillian).
(:23) (No Huddle, Shotgun) 9-B.Young pass short right to 18-J.Coker for 15 yards, TOUCHDOWN.
4-E.Pineiro extra point is GOOD, Center-44-J.Jansen, Holder-10-J.Hekker.
10-J.Hekker kicks onside 12 yards from CAR 35 to CAR 47, out of bounds. PENALTY on CAR-10-J.Hekker, Kickoff Out of Bounds, placed at CAR 47.
(:18) 10-B.Nix kneels to CAR 48 for -1 yards.
END GAME"

car_den_summary <- "Headline: Bo Nix has 3 TD passes in leading the Broncos to a 28-14 win over the Panthers.
Summary: After Tuttle recovered Lil’Jordan Humphrey’s fumble at midfield on the game’s opening drive, Young drove the Panthers to a 7-0 lead on Xavier Legette’s 6-yard touchdown catch. The Panthers only managed one first down the rest of the half, however, and the Broncos began to dominate in all phases. The Broncos blowout win was a true team effort. Bo Nix threw three touchdown passes and ran for another and Denver's defense throttled Bryce Young for much of the afternoon, intercepting him twice and sacking him twice. Nix found Nate Adkins from 3 yards and Adam Trautman from 19 yards in the second quarter as the Broncos built a 21-7 halftime lead. The Broncos made it 28-7 after a failed fake punt by the Panthers from their 24 in the third quarter. Patrick Surtain II intercepted Young at the Denver 11 on the Panthers' next drive, but following that, Denver had a turnover of their own when Sutton fumbled the ball at the 1 just before the 2-minute warning. Young was terrific in the two-minute drill, driving Carolina 98 yards in 10 plays with the payoff a 15-yard touchdown throw to Jalen Coker with 18 seconds left, but it was not enough to steal a win.
Notable Performances: Nix threw for 284 yards. Young was 24 for 37 for 224 yards with two TDs and two interceptions. Courtland Sutton caught eight of Nix's passes for 100 yards. 
Injuries: Panthers: TE Feleipe Franks and OLB D.J. Johnson both exited the game. 
"

# Append game log and summary to training dataframe 
car_den <- as.data.frame(cbind(car_den_log, car_den_summary)) %>% rename(game_log = car_den_log, game_summary = car_den_summary)
training <- rbind(training, car_den)

lv_mia_log <- "GAME
2-D.Carlson kicks 65 yards from LV 35 to end zone, Touchback to the MIA 30.
(15:00) (Shotgun) 28-D.Achane right tackle to MIA 35 for 5 yards (98-M.Crosby).
(14:29) (Shotgun) 1-T.Tagovailoa pass short left to 83-M.Washington to MIA 33 for -2 yards (49-C.Snowden). LV-0-J.Bennett was injured during the play.
(13:45) (Shotgun) 1-T.Tagovailoa pass short right to 28-D.Achane pushed ob at 50 for 17 yards (5-D.Deablo). PENALTY on LV-98-M.Crosby, Unnecessary Roughness, 15 yards, enforced at 50.
(13:23) (Shotgun) 1-T.Tagovailoa pass short right to 28-D.Achane pushed ob at LV 28 for 7 yards (5-D.Deablo).
(12:46) (Shotgun) 1-T.Tagovailoa pass deep left to 10-T.Hill to LV 12 for 16 yards (20-I.Pola-Mao).
(12:09) (Shotgun) 28-D.Achane left guard to LV 13 for -1 yards (95-J.Jenkins, 9-T.Wilson).
(11:31) (Shotgun) 1-T.Tagovailoa sacked at LV 21 for -8 yards (9-T.Wilson). FUMBLES (9-T.Wilson) [9-T.Wilson], touched at LV 22, recovered by MIA-70-K.Lamm at LV 22.
(10:43) (Shotgun) 1-T.Tagovailoa pass short middle to 31-R.Mostert to LV 10 for 12 yards (18-J.Jones). PENALTY on LV-44-K.Chaisson, Defensive Holding, 5 yards, enforced at LV 22 - No Play.
(10:15) 28-D.Achane left tackle to LV 13 for 4 yards (25-D.Richardson; 41-R.Spillane).
(9:33) 28-D.Achane up the middle to LV 10 for 3 yards (96-J.Laulu; 41-R.Spillane).
(8:54) (Shotgun) 1-T.Tagovailoa pass short right to 10-T.Hill pushed ob at LV 4 for 6 yards (20-I.Pola-Mao).
(8:19) 31-R.Mostert up the middle to LV 3 for 1 yard (69-A.Butler; 95-J.Jenkins).
(7:38) (Shotgun) 1-T.Tagovailoa pass short middle to 28-D.Achane to LV 1 for 2 yards (5-D.Deablo).
(6:54) (Shotgun) 1-T.Tagovailoa pass incomplete short left to 9-J.Smith.
(6:50) (Shotgun) 1-T.Tagovailoa pass short left to 9-J.Smith for 1 yard, TOUCHDOWN.
7-J.Sanders extra point is GOOD, Center-46-T.Addington, Holder-16-J.Bailey.
7-J.Sanders kicks 65 yards from MIA 35 to end zone, Touchback to the LV 30.
(6:47) (Shotgun) 15-G.Minshew pass incomplete short middle to 87-M.Mayer.
(6:42) (Shotgun) 3-Z.White up the middle to LV 32 for 2 yards (51-T.Bowser).
(6:05) (Shotgun) 15-G.Minshew pass short right to 11-T.Tucker to LV 36 for 4 yards (92-Z.Sieler).
(5:27) 6-A.Cole punts 64 yards to end zone, Center-50-J.Bobenmoyer, Touchback. PENALTY on MIA-93-C.Campbell, Running Into the Kicker, 5 yards, enforced at LV 36 - No Play.
(5:18) 11-T.Tucker left end to LV 48 for 7 yards (6-A.Walker).
(4:42) 3-Z.White left tackle to 50 for 2 yards (20-J.Brooks).
(3:55) 77-T.Munford reported in as eligible. 16-J.Meyers left end to MIA 30 for 20 yards (20-J.Brooks).
(3:14) 15-G.Minshew pass short left to 87-M.Mayer to MIA 21 for 9 yards (6-A.Walker). PENALTY on MIA-5-J.Ramsey, Defensive Holding, 5 yards, enforced at MIA 30 - No Play.
(3:01) 3-Z.White left guard to MIA 24 for 1 yard (6-A.Walker; 21-J.Poyer).
(2:20) (Shotgun) 15-G.Minshew pass short middle to 89-B.Bowers to MIA 10 for 14 yards (6-A.Walker).
(1:38) 15-G.Minshew pass incomplete short right.
(1:32) (Shotgun) 15-G.Minshew sacked at MIA 17 for -7 yards (92-Z.Sieler).
(:51) (Shotgun) 22-A.Mattison left guard to MIA 9 for 8 yards (6-A.Walker).
(:11) 2-D.Carlson 27 yard field goal is GOOD, Center-50-J.Bobenmoyer, Holder-6-A.Cole.
2-D.Carlson kicks 59 yards from LV 35 to MIA 6. 25-J.Wright to MIA 35 for 29 yards (45-T.Eichenberg; 19-D.Turner).
END QUARTER 1
(15:00) (Shotgun) 28-D.Achane up the middle to MIA 35 for no gain (98-M.Crosby).
(14:25) (Shotgun) 28-D.Achane left guard to MIA 44 for 9 yards (41-R.Spillane).
(13:43) (Shotgun) 28-D.Achane up the middle to MIA 47 for 3 yards (98-M.Crosby).
(13:04) (Shotgun) 1-T.Tagovailoa pass short middle to 3-O.Beckham to LV 45 for 8 yards (56-A.Burney).
(12:25) (Shotgun) 1-T.Tagovailoa pass incomplete short left to 17-J.Waddle.
(12:22) (Shotgun) 1-T.Tagovailoa pass incomplete short left to 3-O.Beckham.
(12:19) (Shotgun) 1-T.Tagovailoa pass short middle to 10-T.Hill to LV 40 for 5 yards (18-J.Jones).
Timeout #1 by LV at 12:19.
(11:44) (Shotgun) 25-J.Wright up the middle to LV 40 for no gain (49-C.Snowden; 96-J.Laulu).
(11:01) (Shotgun) 1-T.Tagovailoa pass deep left to 17-J.Waddle pushed ob at LV 16 for 24 yards (20-I.Pola-Mao).
(10:17) (Shotgun) 25-J.Wright up the middle to LV 11 for 5 yards (30-D.Holmes).
(9:39) (Shotgun) 28-D.Achane right tackle to LV 11 for no gain (18-J.Jones).
(8:57) (Shotgun) 1-T.Tagovailoa pass short right to 3-O.Beckham pushed ob at LV 6 for 5 yards (30-D.Holmes). ** Injury Update: MIA-31-R.Mostert has returned to the game.
(8:17) (Shotgun) 31-R.Mostert up the middle to LV 5 for 1 yard (98-M.Crosby; 69-A.Butler).
(7:38) (Shotgun) 1-T.Tagovailoa pass incomplete short right to 3-O.Beckham.
(7:33) (Shotgun) 1-T.Tagovailoa sacked at LV 13 for -8 yards (69-A.Butler).
(6:50) 7-J.Sanders 31 yard field goal is GOOD, Center-46-T.Addington, Holder-16-J.Bailey.
7-J.Sanders kicks 65 yards from MIA 35 to end zone, Touchback to the LV 30.
(6:46) 15-G.Minshew scrambles left guard to LV 31 for 1 yard (4-K.Kohou).
(6:03) (Shotgun) 15-G.Minshew pass short middle to 89-B.Bowers to LV 43 for 12 yards (5-J.Ramsey).
(5:32) (Shotgun) 15-G.Minshew pass short middle to 89-B.Bowers to MIA 43 for 14 yards (6-A.Walker, 21-J.Poyer).
(4:56) 89-B.Bowers right end to MIA 46 for -3 yards (20-J.Brooks).
(4:15) (Shotgun) 15-G.Minshew pass short middle to 16-J.Meyers to MIA 40 for 6 yards (6-A.Walker).
(3:29) (Shotgun) 15-G.Minshew pass short left to 16-J.Meyers to MIA 29 for 11 yards (5-J.Ramsey).
(2:51) 3-Z.White right tackle to MIA 28 for 1 yard (44-C.Robinson; 36-S.Duck).
(2:12) (Shotgun) 15-G.Minshew pass incomplete short right.
(2:05) (Shotgun) 15-G.Minshew pass short left to 89-B.Bowers pushed ob at MIA 18 for 10 yards (8-J.Holland).
(1:59) (Shotgun) 22-A.Mattison right guard to MIA 14 for 4 yards (6-A.Walker; 95-B.Jones).
(1:54) (Shotgun) 15-G.Minshew pass incomplete short left to 87-M.Mayer.
Timeout #1 by MIA at 01:54.
(1:49) (Shotgun) 15-G.Minshew scrambles right end ran ob at MIA 9 for 5 yards (8-J.Holland). The Replay Official reviewed the short of the line to gain ruling, and the play was REVERSED. (Shotgun) 15-G.Minshew scrambles right end ran ob at MIA 8 for 6 yards (8-J.Holland).
(1:43) (Shotgun) 22-A.Mattison right tackle to MIA 8 for no gain (92-Z.Sieler; 93-C.Campbell).
(1:39) 15-G.Minshew sacked at MIA 9 for -1 yards (91-E.Ogbah).
Timeout #2 by MIA at 01:39.
(1:32) (Shotgun) 15-G.Minshew pass short middle to 87-M.Mayer to MIA 4 for 5 yards (92-Z.Sieler).
Timeout #3 by MIA at 01:32.
(:48) 2-D.Carlson 22 yard field goal is GOOD, Center-50-J.Bobenmoyer, Holder-6-A.Cole.
2-D.Carlson kicks 63 yards from LV 35 to MIA 2. 31-R.Mostert to MIA 25 for 23 yards (53-A.Gainer).
(:41) (Shotgun) 1-T.Tagovailoa pass short right to 10-T.Hill to MIA 27 for 2 yards (18-J.Jones).
(:18) (No Huddle, Shotgun) 1-T.Tagovailoa pass short right to 9-J.Smith to MIA 35 for 8 yards (7-T.Moehrig).
(:03) (No Huddle) 1-T.Tagovailoa spiked the ball to stop the clock.
(:02) (Shotgun) 1-T.Tagovailoa pass short middle to 9-J.Smith to 50 for 15 yards (34-T.Harper; 30-D.Holmes).
Timeout #2 by LV at 00:02.
END QUARTER 2
7-J.Sanders kicks 66 yards from MIA 35 to LV -1. 19-D.Turner to LV 30 for 31 yards (33-S.Neal).
(14:54) 3-Z.White right guard to LV 33 for 3 yards (20-J.Brooks; 21-J.Poyer).
(14:14) (Shotgun) 15-G.Minshew pass short middle to 19-D.Turner to LV 41 for 8 yards (4-K.Kohou).
(13:35) (Shotgun) 15-G.Minshew pass short left to 89-B.Bowers to LV 46 for 5 yards (20-J.Brooks).
(12:59) 15-G.Minshew sacked at LV 40 for -6 yards (93-C.Campbell).
(12:15) (Shotgun) 15-G.Minshew pass incomplete short left to 89-B.Bowers.
(12:11) 6-A.Cole punts 54 yards to MIA 6, Center-50-J.Bobenmoyer. 83-M.Washington to MIA 9 for 3 yards (19-D.Turner). PENALTY on MIA-56-Q.Bell, Offensive Holding, 3 yards, enforced at MIA 6.
(12:00) (Shotgun) 28-D.Achane up the middle to MIA 11 for 8 yards (25-D.Richardson; 41-R.Spillane).
(11:22) (Shotgun) 28-D.Achane left end to MIA 9 for -2 yards (44-K.Chaisson).
(10:40) (Shotgun) 1-T.Tagovailoa pass short right to 10-T.Hill to MIA 15 for 6 yards (18-J.Jones; 49-C.Snowden).
(9:56) (Shotgun) 1-T.Tagovailoa pass short left to 28-D.Achane to MIA 21 for 6 yards (25-D.Richardson; 30-D.Holmes).
(9:13) (Shotgun) 28-D.Achane right end to MIA 28 for 7 yards (7-T.Moehrig).
(8:34) (Shotgun) 83-M.Washington right end pushed ob at MIA 35 for 7 yards (41-R.Spillane).
(7:54) (Shotgun) 1-T.Tagovailoa pass short right to 9-J.Smith to MIA 42 for 7 yards (41-R.Spillane).
(7:12) (Shotgun) 1-T.Tagovailoa pass short right to 17-J.Waddle pushed ob at LV 45 for 13 yards (18-J.Jones).
(6:37) 1-T.Tagovailoa pass incomplete deep right to 89-J.Hill.
(6:29) (Shotgun) 1-T.Tagovailoa pass short middle to 89-J.Hill to LV 34 for 11 yards (91-M.Butler; 30-D.Holmes).
(5:59) (No Huddle, Shotgun) 28-D.Achane right tackle pushed ob at LV 4 for 30 yards (25-D.Richardson).
(5:22) (No Huddle, Shotgun) 25-J.Wright right tackle to LV 5 for -1 yards (5-D.Deablo). Penalty on MIA-55-A.Brewer, Offensive Holding, offsetting, enforced at LV 4 - No Play. Penalty on LV-5-D.Deablo, Face Mask, offsetting.
(5:01) (Shotgun) 31-R.Mostert right end to LV 8 for -4 yards (18-J.Jones).
(4:25) (Shotgun) 1-T.Tagovailoa pass incomplete short right to 10-T.Hill (7-T.Moehrig).
(4:21) (Shotgun) 1-T.Tagovailoa pass short left to 10-T.Hill for 8 yards, TOUCHDOWN.
7-J.Sanders extra point is GOOD, Center-46-T.Addington, Holder-16-J.Bailey.
7-J.Sanders kicks 65 yards from MIA 35 to end zone, Touchback to the LV 30.
(4:13) (Shotgun) PENALTY on LV-61-J.Meredith, False Start, 5 yards, enforced at LV 30 - No Play.
(4:13) (Shotgun) 15-G.Minshew pass short middle to 89-B.Bowers to LV 32 for 7 yards (4-K.Kohou).
(3:42) (Shotgun) 15-G.Minshew pass incomplete short right to 16-J.Meyers (5-J.Ramsey).
(3:39) (Shotgun) 15-G.Minshew pass short right to 22-A.Mattison to LV 39 for 7 yards (6-A.Walker; 21-J.Poyer).
(3:21) (Shotgun) 22-A.Mattison up the middle to LV 45 for 6 yards (4-K.Kohou).
(2:45) 15-G.Minshew pass short right to 22-A.Mattison to MIA 24 for 31 yards (56-Q.Bell).
(2:15) (No Huddle, Shotgun) 22-A.Mattison right tackle to MIA 23 for 1 yard (56-Q.Bell).
(1:35) 15-G.Minshew pass incomplete short right.
(1:27) (Shotgun) 15-G.Minshew pass short right to 89-B.Bowers for 23 yards, TOUCHDOWN.
TWO-POINT CONVERSION ATTEMPT. 22-A.Mattison rushes up the middle. ATTEMPT FAILS.
2-D.Carlson kicks 36 yards from LV 35 to MIA 29, short of landing zone. PENALTY on LV-2-D.Carlson, Kickoff Short of Landing Zone, placed at MIA 40.
(1:21) (Shotgun) 1-T.Tagovailoa pass incomplete short right to 9-J.Smith (49-C.Snowden).
(1:18) (Shotgun) 25-J.Wright left guard to MIA 42 for 2 yards (41-R.Spillane).
(:37) (Shotgun) 1-T.Tagovailoa pass deep middle to 10-T.Hill to LV 40 for 18 yards (30-D.Holmes).
(:01) (No Huddle) PENALTY on LV-98-M.Crosby, Neutral Zone Infraction, 5 yards, enforced at LV 40 - No Play.
END QUARTER 3
(15:00) (Shotgun) 1-T.Tagovailoa pass short right to 28-D.Achane to LV 25 for 10 yards (41-R.Spillane, 96-J.Laulu). PENALTY on MIA-55-A.Brewer, Offensive Holding, 10 yards, enforced at LV 35 - No Play.
(14:30) (Shotgun) 1-T.Tagovailoa pass short right to 25-J.Wright to LV 43 for 2 yards (18-J.Jones).
(13:47) (Shotgun) 1-T.Tagovailoa pass short left to 83-M.Washington to LV 34 for 9 yards (41-R.Spillane; 7-T.Moehrig).
(13:15) (Shotgun) 1-T.Tagovailoa pass short left to 9-J.Smith to LV 21 for 13 yards (25-D.Richardson).
(12:29) 25-J.Wright right end to LV 23 for -2 yards (30-D.Holmes, 69-A.Butler).
(11:49) (Shotgun) 1-T.Tagovailoa pass short right to 89-J.Hill to LV 6 for 17 yards (56-A.Burney). LV-18-J.Jones was injured during the play.
(11:23) (Shotgun) 1-T.Tagovailoa pass short left to 83-M.Washington to LV 2 for 4 yards (7-T.Moehrig; 41-R.Spillane).
(10:41) (Shotgun) 28-D.Achane left end for 2 yards, TOUCHDOWN.
7-J.Sanders extra point is GOOD, Center-46-T.Addington, Holder-16-J.Bailey.
7-J.Sanders kicks 65 yards from MIA 35 to end zone, Touchback to the LV 30.
(10:37) (Shotgun) 15-G.Minshew pass short left to 16-J.Meyers to LV 34 for 4 yards (20-J.Brooks).
(10:01) (Shotgun) 15-G.Minshew pass short right to 16-J.Meyers to MIA 49 for 17 yards (90-D.Hand). PENALTY on LV-11-T.Tucker, Offensive Pass Interference, 10 yards, enforced at LV 34 - No Play.
(9:29) 15-G.Minshew pass short middle to 22-A.Mattison to LV 36 for 12 yards (6-A.Walker; 20-J.Brooks).
(8:44) (Shotgun) 15-G.Minshew pass short right to 89-B.Bowers to LV 42 for 6 yards (5-J.Ramsey). Penalty on MIA-91-E.Ogbah, Defensive Offside, declined.
(8:25) (Shotgun) 15-G.Minshew pass incomplete short right to 89-B.Bowers (56-Q.Bell).
(8:21) (Shotgun) 15-G.Minshew pass short left to 16-J.Meyers to LV 49 for 7 yards (4-K.Kohou).
(7:36) (Shotgun) 15-G.Minshew pass incomplete short right [92-Z.Sieler].
(7:29) (Shotgun) 15-G.Minshew pass short left to 89-B.Bowers to MIA 44 for 7 yards (21-J.Poyer; 20-J.Brooks).
(7:06) (No Huddle, Shotgun) 8-A.Abdullah left tackle to MIA 43 for 1 yard (56-Q.Bell).
(6:26) 15-G.Minshew pass deep left to 11-T.Tucker to MIA 21 for 22 yards (21-J.Poyer).
(5:49) (Shotgun) 15-G.Minshew pass short left to 8-A.Abdullah to MIA 16 for 5 yards (20-J.Brooks).
(5:16) (Shotgun) 15-G.Minshew pass short left to 89-B.Bowers to MIA 10 for 6 yards (20-J.Brooks).
(4:39) (Shotgun) 15-G.Minshew pass incomplete short right to 82-R.Keyton.
(4:33) (Shotgun) 15-G.Minshew pass incomplete short right to 89-B.Bowers.
(4:30) (Shotgun) 15-G.Minshew pass short right to 8-A.Abdullah for 10 yards, TOUCHDOWN.
2-D.Carlson extra point is GOOD, Center-50-J.Bobenmoyer, Holder-6-A.Cole.
2-D.Carlson kicks 65 yards from LV 35 to end zone, Touchback to the MIA 30.
(4:23) (Shotgun) 28-D.Achane up the middle to MIA 37 for 7 yards (5-D.Deablo; 95-J.Jenkins).
(3:38) (Shotgun) 28-D.Achane left tackle to MIA 35 for -2 yards (69-A.Butler).
(3:35) (Shotgun) 1-T.Tagovailoa pass incomplete short left to 17-J.Waddle. PENALTY on LV-30-D.Holmes, Defensive Pass Interference, 9 yards, enforced at MIA 35 - No Play.
Timeout #1 by LV at 03:35.
(3:32) (Shotgun) 28-D.Achane right end to MIA 43 for -1 yards (96-J.Laulu).
(3:28) (Shotgun) 1-T.Tagovailoa pass deep middle to 9-J.Smith for 57 yards, TOUCHDOWN.
Timeout #2 by LV at 03:28.
7-J.Sanders extra point is GOOD, Center-46-T.Addington, Holder-16-J.Bailey.
7-J.Sanders kicks 65 yards from MIA 35 to end zone, Touchback to the LV 30.
(3:19) (Shotgun) 15-G.Minshew pass short right intended for 16-J.Meyers INTERCEPTED by 5-J.Ramsey at LV 38. 5-J.Ramsey to LV 31 for 7 yards (16-J.Meyers).
(3:12) (Shotgun) 25-J.Wright up the middle to LV 32 for -1 yards (95-J.Jenkins).
(3:08) (Shotgun) 28-D.Achane up the middle to LV 31 for 1 yard (41-R.Spillane, 98-M.Crosby).
Timeout #3 by LV at 03:08.
(2:23) (Shotgun) 1-T.Tagovailoa pass short right to 81-D.Smythe to LV 28 for 3 yards (7-T.Moehrig; 41-R.Spillane).
(2:00) 7-J.Sanders 46 yard field goal is GOOD, Center-46-T.Addington, Holder-16-J.Bailey.
7-J.Sanders kicks 65 yards from MIA 35 to end zone, Touchback to the LV 30.
(1:55) (Shotgun) 15-G.Minshew pass short left to 19-D.Turner to LV 42 for 12 yards (36-S.Duck).
(1:34) (No Huddle, Shotgun) 15-G.Minshew pass short right to 11-T.Tucker to LV 44 for 2 yards (36-S.Duck).
(1:12) (No Huddle, Shotgun) 15-G.Minshew pass short right to 89-B.Bowers pushed ob at MIA 44 for 12 yards (20-J.Brooks; 36-S.Duck).
(1:06) (Shotgun) 15-G.Minshew pass short left to 19-D.Turner to MIA 35 for 9 yards (6-A.Walker).
(:45) (No Huddle, Shotgun) 15-G.Minshew pass incomplete short left to 11-T.Tucker.
(:42) (Shotgun) 15-G.Minshew pass short right to 8-A.Abdullah to MIA 34 for 1 yard (5-J.Ramsey). The Replay Official reviewed the first down ruling, and the play was Upheld. The ruling on the field stands.
(:14) (Shotgun) 15-G.Minshew pass short right to 89-B.Bowers ran ob at MIA 28 for 6 yards (20-J.Brooks).
(:09) (Shotgun) 15-G.Minshew pass short right to 89-B.Bowers to MIA 24 for 4 yards (5-J.Ramsey).
END GAME"

lv_mia_summary <- "Headline: Tagovailoa throws 3 TDs to lead Dolphins past Raiders 34-19 for a Miami win.
Summary: It was a strong victory for the Dolphins. Tagovailoa led the Dolphins down the field with long, methodical drives — three of them more than seven minutes — that all ended in scores. The Raiders punted on their opening drive, but Dolphins defensive tackle Calais Campbell was penalized on the punt play and gave the Raiders a first down. Minshew led them down the field, and Daniel Carlson made a 27-yard field goal at the end of the first quarter. Tagovailoa led several lengthy drives — one notable one for 14 plays and 97 yards — that ended in Hill's 8-yard TD catch, to put Miami ahead for good. Bowers caught a 23-yard TD late in the third quarter from Minshew, who hit running back Alexander Mattison for a 31-yard pickup earlier in the drive, to keep the Raiders in the game. The score made it 17-12 entering the fourth after a failed 2-point attempt. The Raiders still trailed 24-14 in the fourth quarter. Quarterback Gardner Minshew then moved the Raiders 80 yards down the field and found Ameer Abdullah for a 10-yard TD catch. The Dolphins responded on the next drive, Tagovailoa found Jonnu Smith who ran it in for a 57-yard catch-and-run that had his teammates celebrating.
Notable Performances: Tagovailoa completed 28 of 36 passes for 288 yards. Hill caught seven passes for 61 yards and scored a TD. Smith had a 101 yards receiving and 2 TDs. De'Von Achane had 17 carries for 73 yards and a TD. Tight end Brock Bowers caught 13 passes for 126 yards.
Injuries Raiders: CB Jakorian Bennett left in the second quarter and did not return. Mattison left in the fourth. Dolphins: RB Raheem Mostert left in the second quarter but returned in the second half.
"

# Append game log and summary to training dataframe 
lv_mia <- as.data.frame(cbind(lv_mia_log, lv_mia_summary)) %>% rename(game_log = lv_mia_log, game_summary = lv_mia_summary)
training <- rbind(training, lv_mia)

pit_den_log <- "GAME
9-C.Boswell kicks 65 yards from PIT 35 to end zone, Touchback to the DEN 30.
(15:00) 33-J.Williams left guard to DEN 33 for 3 yards (95-K.Benton, 99-L.Ogunjobi).
(14:28) 38-J.McLaughlin right end to DEN 30 for -3 yards (56-A.Highsmith, 6-P.Queen).
(13:46) (Shotgun) 10-B.Nix pass short left to 80-G.Dulcich to DEN 37 for 7 yards (39-M.Fitzpatrick).
(13:09) 9-R.Dixon punts 53 yards to PIT 10, Center-48-M.Fraboni. 19-C.Austin to PIT 24 for 14 yards (43-K.Smith).
(12:59) 22-N.Harris right guard to PIT 25 for 1 yard (98-J.Franklin-Myers).
(12:23) 2-J.Fields pass incomplete short left to 22-N.Harris [99-Z.Allen].
(12:19) (No Huddle, Shotgun) 2-J.Fields scrambles right tackle to PIT 32 for 7 yards (22-B.Jones).
(11:38) 8-C.Waitman punts 53 yards to DEN 15, Center-46-C.Kuntz, out of bounds.
(11:31) (Shotgun) 10-B.Nix pass short middle to 33-J.Williams to DEN 21 for 6 yards (56-A.Highsmith).
(10:55) (Shotgun) 38-J.McLaughlin left tackle to DEN 23 for 2 yards (99-L.Ogunjobi).
(10:13) (Shotgun) 10-B.Nix sacked at DEN 16 for -7 yards (56-A.Highsmith).
(9:41) 9-R.Dixon punts 52 yards to PIT 32, Center-48-M.Fraboni. 19-C.Austin to PIT 43 for 11 yards (34-J.Skinner). PENALTY on PIT-51-Ni.Herbig, Offensive Holding, 10 yards, enforced at PIT 32.
(9:30) 2-J.Fields scrambles right tackle to PIT 23 for 1 yard (98-J.Franklin-Myers).
(8:50) 22-N.Harris left tackle to PIT 27 for 4 yards (49-A.Singleton).
(8:12) (No Huddle, Shotgun) 2-J.Fields pass short right to 14-G.Pickens to PIT 40 for 13 yards (22-B.Jones; 29-J.McMillian).
(7:28) (Shotgun) 2-J.Fields scrambles left end pushed ob at DEN 44 for 16 yards (55-C.Barton).
(6:51) 30-J.Warren right tackle to DEN 40 for 4 yards (49-A.Singleton).
(6:14) 22-N.Harris right tackle to DEN 37 for 3 yards (15-N.Bonitto).
(5:37) (No Huddle, Shotgun) PENALTY on DEN-0-J.Cooper, Neutral Zone Infraction, 5 yards, enforced at DEN 37 - No Play.
(5:19) 30-J.Warren left tackle to DEN 29 for 3 yards (98-J.Franklin-Myers).
(4:41) 30-J.Warren up the middle to DEN 18 for 11 yards (21-R.Moss).
(4:05) (No Huddle) 2-J.Fields pass short left to 88-P.Freiermuth ran ob at DEN 4 for 14 yards.
(3:23) 2-J.Fields sacked at DEN 10 for -6 yards (52-J.Elliss).
(2:40) 22-N.Harris left tackle to DEN 5 for 5 yards (49-A.Singleton; 29-J.McMillian). DEN-93-D.Jones was injured during the play.
(2:01) (Shotgun) 2-J.Fields pass short left to 80-D.Washington for 5 yards, TOUCHDOWN.
9-C.Boswell extra point is GOOD, Center-46-C.Kuntz, Holder-8-C.Waitman.
9-C.Boswell kicks 65 yards from PIT 35 to end zone, Touchback to the DEN 30.
(1:56) (Shotgun) 10-B.Nix pass short right to 20-M.Burton to DEN 31 for 1 yard (25-D.Elliott).
(1:21) (Shotgun) 10-B.Nix pass short left to 84-L.Humphrey to DEN 37 for 6 yards (6-P.Queen).
(:36) (Shotgun) 10-B.Nix pass short middle to 33-J.Williams to DEN 44 for 7 yards (6-P.Queen).
END QUARTER 1
(15:00) 79-M.Peart reported in as eligible. 33-J.Williams right guard to DEN 48 for 4 yards (92-I.Loudermilk).
(14:19) (Shotgun) 10-B.Nix pass incomplete deep right to 80-G.Dulcich.
(14:14) (Shotgun) 10-B.Nix pass incomplete short left to 11-J.Reynolds (24-J.Porter) [95-K.Benton].
(14:10) 9-R.Dixon punts 51 yards to PIT 1, impetus ends at PIT 1, Center-48-M.Fraboni, downed by DEN-20-M.Burton.
(13:58) 2-J.Fields up the middle to PIT 3 for 2 yards (93-D.Jones). ** Injury Update: DEN-93-D.Jones has returned to the game.
(13:21) 22-N.Harris left tackle to PIT 11 for 8 yards (22-B.Jones).
(12:42) 22-N.Harris right end to PIT 13 for 2 yards (57-K.Welch, 15-N.Bonitto).
(12:02) 2-J.Fields pass short right to 30-J.Warren pushed ob at PIT 25 for 12 yards (57-K.Welch).
(11:29) (No Huddle) 2-J.Fields pass incomplete short left.
(11:25) (Shotgun) 30-J.Warren right tackle to PIT 29 for 4 yards (49-A.Singleton, 2-P.Surtain).
(10:46) (No Huddle, Shotgun) PENALTY on PIT-77-B.Jones, False Start, 5 yards, enforced at PIT 29 - No Play.
(10:34) (Shotgun) 2-J.Fields pass deep left to 14-G.Pickens ran ob at PIT 40 for 16 yards [99-Z.Allen].
(10:09) 22-N.Harris right guard to DEN 49 for 11 yards (22-B.Jones; 49-A.Singleton).
(9:32) 22-N.Harris right guard to DEN 45 for 4 yards (15-N.Bonitto, 22-B.Jones). PENALTY on PIT-77-B.Jones, Offensive Holding, 10 yards, enforced at DEN 49 - No Play.
(9:13) 30-J.Warren left tackle to PIT 43 for 2 yards (52-J.Elliss).
(8:43) (No Huddle, Shotgun) 2-J.Fields pass deep right to 14-G.Pickens to DEN 6 for 51 yards (2-P.Surtain). PENALTY on PIT-77-B.Jones, Offensive Holding, 10 yards, enforced at PIT 43 - No Play.
(8:22) (Shotgun) 2-J.Fields pass short middle to 22-N.Harris to PIT 38 for 5 yards (55-C.Barton, 94-J.Jackson).
(7:49) (No Huddle, Shotgun) 2-J.Fields pass short middle to 88-P.Freiermuth to PIT 49 for 11 yards (55-C.Barton; 6-P.Locke).
(7:13) 8-C.Waitman punts 51 yards to end zone, Center-46-C.Kuntz, Touchback.
(7:04) (Shotgun) 10-B.Nix pass short left to 84-L.Humphrey to DEN 24 for 4 yards (56-A.Highsmith).
(6:27) (Shotgun) 28-T.Badie left tackle to DEN 40 for 16 yards (57-M.Adams, 39-M.Fitzpatrick).
(5:41) (No Huddle, Shotgun) PENALTY on PIT-56-A.Highsmith, Neutral Zone Infraction, 5 yards, enforced at DEN 40 - No Play.
(5:21) (Shotgun) 10-B.Nix pass incomplete short right.
(5:15) (Shotgun) 10-B.Nix left guard to PIT 42 for 13 yards (23-D.Kazee).
Timeout #1 by DEN at 05:15.
(4:32) 79-M.Peart reported in as eligible. 33-J.Williams left tackle to PIT 39 for 3 yards (95-K.Benton; 25-D.Elliott).
(3:56) (No Huddle, Shotgun) 10-B.Nix sacked at PIT 47 for -8 yards (90-T.Watt).
(3:17) (Shotgun) 10-B.Nix pass short middle to 19-M.Mims to PIT 39 for 8 yards (39-M.Fitzpatrick).
(2:32) (Shotgun) 10-B.Nix pass incomplete short middle to 16-T.Franklin (6-P.Queen).
Timeout #1 by PIT at 02:32.
(2:28) 2-J.Fields pass short right to 11-V.Jefferson to PIT 46 for 7 yards (49-A.Singleton) [0-J.Cooper]. PENALTY on DEN-2-P.Surtain, Defensive Holding, 5 yards, enforced at PIT 39 - No Play.
(2:00) (Shotgun) 2-J.Fields sacked at PIT 43 for -1 yards (99-Z.Allen).
(1:21) 22-N.Harris right tackle to 50 for 7 yards (15-N.Bonitto).
(:53) (No Huddle, Shotgun) 2-J.Fields pass short right to 19-C.Austin ran ob at DEN 44 for 6 yards.
(:49) (No Huddle, Shotgun) 30-J.Warren right guard to DEN 40 for 4 yards (49-A.Singleton).
(:26) (No Huddle, Shotgun) 2-J.Fields pass incomplete deep right to 11-V.Jefferson. DEN-21-R.Moss was injured during the play. PENALTY on DEN-21-R.Moss, Defensive Pass Interference, 27 yards, enforced at DEN 40 - No Play.
(:21) (Shotgun) 2-J.Fields pass short right to 30-J.Warren to DEN 6 for 7 yards (39-L.Wallace; 49-A.Singleton).
Timeout #2 by DEN at 00:21.
(:14) (Shotgun) 2-J.Fields pass short left to 14-G.Pickens for 6 yards, TOUCHDOWN NULLIFIED by Penalty. PENALTY on PIT-11-V.Jefferson, Offensive Pass Interference, 10 yards, enforced at DEN 6 - No Play.
Timeout #2 by PIT at 00:14.
(:10) (Shotgun) 2-J.Fields pass short left to 11-V.Jefferson to DEN 4 for 12 yards (0-J.Cooper).
Timeout #3 by DEN at 00:10.
(:02) 9-C.Boswell 22 yard field goal is GOOD, Center-46-C.Kuntz, Holder-8-C.Waitman.
Timeout #3 by PIT at 00:02.
END QUARTER 2
3-W.Lutz kicks 65 yards from DEN 35 to end zone, Touchback to the PIT 30.
(15:00) 22-N.Harris right end to PIT 33 for 3 yards (22-B.Jones). ** Injury Update: DEN-21-R.Moss has returned to the game.
(14:22) (Shotgun) 2-J.Fields pass short middle to 88-P.Freiermuth to PIT 42 for 9 yards (21-R.Moss).
(13:43) 84-C.Patterson right tackle to PIT 42 for no gain (94-J.Jackson; 0-J.Cooper).
(13:04) (Shotgun) 2-J.Fields pass incomplete short right [99-Z.Allen].
(12:59) (No Huddle, Shotgun) 2-J.Fields pass incomplete deep left to 14-G.Pickens [49-A.Singleton].
(12:53) 8-C.Waitman punts 58 yards to end zone, Center-46-C.Kuntz, Touchback.
(12:44) (Shotgun) 79-M.Peart reported in as eligible. 33-J.Williams left guard to DEN 25 for 5 yards (25-D.Elliott; 97-Ca.Heyward).
(12:07) (Shotgun) 10-B.Nix pass short middle to 14-C.Sutton to DEN 29 for 4 yards (41-P.Wilson, 56-A.Highsmith). PENALTY on DEN-72-G.Bolles, Illegal Formation, 5 yards, enforced at DEN 25 - No Play.
(11:38) (Shotgun) 10-B.Nix pass short left to 11-J.Reynolds to DEN 29 for 9 yards (25-D.Elliott).
(10:51) 33-J.Williams up the middle to DEN 25 for -4 yards (25-D.Elliott).
(10:19) 9-R.Dixon punts 47 yards to PIT 28, Center-48-M.Fraboni. 19-C.Austin to PIT 24 for -4 yards (40-J.Strnad).
(10:08) (Shotgun) 22-N.Harris up the middle to PIT 24 for no gain (97-M.Roach; 99-Z.Allen).
(9:35) (No Huddle, Shotgun) 2-J.Fields pass short left to 11-V.Jefferson to PIT 26 for 2 yards (21-R.Moss).
(9:07) (No Huddle, Shotgun) 2-J.Fields pass incomplete deep left to 11-V.Jefferson.
(9:02) 8-C.Waitman punts 49 yards to DEN 25, Center-46-C.Kuntz, fair catch by 19-M.Mims. PENALTY on DEN-2-P.Surtain, Offensive Holding, 10 yards, enforced at DEN 25.
(8:54) 33-J.Williams right guard to DEN 18 for 3 yards (97-Ca.Heyward; 26-D.Jackson).
(8:09) (Shotgun) 10-B.Nix pass incomplete short left to 80-G.Dulcich.
Timeout #1 by DEN at 08:09.
(8:02) (No Huddle, Shotgun) 10-B.Nix pass deep left to 14-C.Sutton to DEN 44 for 26 yards (24-J.Porter) [97-Ca.Heyward]. Penalty on PIT-24-J.Porter, Defensive Holding, declined.
(7:43) 79-M.Peart reported in as eligible. Direct snap to 33-J.Williams. 10-B.Nix pass deep middle to 11-J.Reynolds to PIT 7 for 49 yards (39-M.Fitzpatrick). PIT-26-D.Jackson was injured during the play.
(6:56) (Shotgun) 33-J.Williams up the middle to PIT 6 for 1 yard (50-E.Roberts).
(6:17) (Shotgun) 10-B.Nix pass short middle intended for 14-C.Sutton INTERCEPTED by 27-C.Trice at PIT -8. Touchback.
(6:10) 2-J.Fields pass incomplete deep right to 14-G.Pickens. PENALTY on DEN-2-P.Surtain, Defensive Pass Interference, 37 yards, enforced at PIT 20 - No Play.
(6:03) 30-J.Warren right tackle to DEN 41 for 2 yards (55-C.Barton; 22-B.Jones).
(5:26) (Shotgun) 2-J.Fields pass short right to 88-P.Freiermuth to DEN 36 for 5 yards (49-A.Singleton).
(4:55) (No Huddle, Shotgun) 30-J.Warren left guard to DEN 35 for 1 yard (97-M.Roach).
(4:20) 9-C.Boswell 53 yard field goal is GOOD, Center-46-C.Kuntz, Holder-8-C.Waitman.
9-C.Boswell kicks 65 yards from PIT 35 to end zone, Touchback to the DEN 30.
(4:16) 79-M.Peart reported in as eligible. 33-J.Williams right end to DEN 29 for -1 yards (26-D.Jackson). ** Injury Update: PIT-26-D.Jackson has returned to the game. Penalty on DEN-79-M.Peart, Offensive Holding, declined.
(3:55) (Shotgun) 10-B.Nix pass incomplete deep left to 19-M.Mims.
(3:48) (Shotgun) 10-B.Nix scrambles left end to DEN 34 for 5 yards (31-B.Bishop).
(3:13) 9-R.Dixon punts 58 yards to PIT 8, Center-48-M.Fraboni. 19-C.Austin to PIT 19 for 11 yards (20-M.Burton, 45-N.Adkins).
(2:59) 22-N.Harris right tackle to PIT 28 for 9 yards (99-Z.Allen, 22-B.Jones).
(2:21) 22-N.Harris left tackle to PIT 31 for 3 yards (49-A.Singleton). PENALTY on PIT-83-Co.Heyward, Offensive Holding, 10 yards, enforced at PIT 29.
(2:01) (Shotgun) 2-J.Fields right end pushed ob at PIT 17 for -2 yards (15-N.Bonitto, 49-A.Singleton).
(1:31) (No Huddle, Shotgun) 2-J.Fields pass incomplete deep middle to 19-C.Austin (6-P.Locke).
(1:26) 8-C.Waitman punts 52 yards to DEN 31, Center-46-C.Kuntz. 19-M.Mims pushed ob at DEN 45 for 14 yards (81-M.Pruitt). PENALTY on DEN-29-J.McMillian, Offensive Holding, 10 yards, enforced at DEN 40.
(1:15) 10-B.Nix pass short right to 33-J.Williams to DEN 38 for 8 yards (25-D.Elliott).
(:39) 33-J.Williams up the middle to DEN 42 for 4 yards (92-I.Loudermilk).
(:04) (Shotgun) 10-B.Nix pass incomplete deep right to 45-N.Adkins.
END QUARTER 3
(15:00) 10-B.Nix pass incomplete short middle to 14-C.Sutton. PENALTY on PIT-25-D.Elliott, Defensive Offside, 5 yards, enforced at DEN 42 - No Play.
(14:55) (Shotgun) 38-J.McLaughlin left guard to PIT 46 for 7 yards (6-P.Queen).
(14:11) 10-B.Nix pass incomplete short left. PENALTY on DEN-72-G.Bolles, Offensive Holding, 10 yards, enforced at PIT 46 - No Play.
(14:05) (Shotgun) 10-B.Nix pass short left to 80-G.Dulcich to DEN 44 for no gain (95-K.Benton; 24-J.Porter).
(13:29) (Shotgun) 10-B.Nix pass incomplete short right to 80-G.Dulcich.
(13:25) (Shotgun) 10-B.Nix pass short middle to 33-J.Williams to PIT 42 for 14 yards (39-M.Fitzpatrick; 23-D.Kazee).
(12:38) (Shotgun) 10-B.Nix pass short middle to 11-J.Reynolds to PIT 20 for 22 yards (27-C.Trice).
(12:12) (No Huddle) 33-J.Williams right tackle to PIT 18 for 2 yards (57-M.Adams; 25-D.Elliott).
(11:35) (Shotgun) 10-B.Nix pass short right to 28-T.Badie to PIT 16 for 2 yards (50-E.Roberts, 90-T.Watt).
(10:49) (Shotgun) 10-B.Nix pass incomplete short middle to 14-C.Sutton (92-I.Loudermilk).
(10:45) 3-W.Lutz 35 yard field goal is GOOD, Center-48-M.Fraboni, Holder-9-R.Dixon.
3-W.Lutz kicks 64 yards from DEN 35 to PIT 1. 30-J.Warren to PIT 14 for 13 yards (26-D.Key; 55-C.Barton).
(10:36) (Shotgun) 2-J.Fields pass incomplete short left to 14-G.Pickens.
(10:31) 84-C.Patterson right tackle to PIT 17 for 3 yards (97-M.Roach).
(9:51) (No Huddle, Shotgun) 2-J.Fields pass short left to 19-C.Austin to PIT 25 for 8 yards (21-R.Moss) [49-A.Singleton]. PENALTY on PIT-65-D.Moore, Offensive Holding, 8 yards, enforced at PIT 17 - No Play.
(9:37) (Shotgun) 30-J.Warren right guard to PIT 20 for 11 yards (49-A.Singleton, 55-C.Barton).
(8:56) 8-C.Waitman punts 51 yards to DEN 29, Center-46-C.Kuntz. 19-M.Mims to DEN 31 for 2 yards (44-T.Matakevich).
(8:43) (Shotgun) 10-B.Nix pass incomplete short left [6-P.Queen]. Penalty on DEN-72-G.Bolles, Illegal Block Above the Waist, offsetting, enforced at DEN 31 - No Play. Penalty on PIT-24-J.Porter, Defensive Holding, offsetting.
(8:35) (Shotgun) 10-B.Nix pass incomplete short middle to 80-G.Dulcich.
(8:32) (Shotgun) 10-B.Nix pass incomplete short right. Penalty on DEN-69-M.McGlinchey, Offensive Holding, offsetting, enforced at DEN 31 - No Play. Penalty on PIT-24-J.Porter, Illegal Use of Hands, offsetting.
(8:24) (Shotgun) PENALTY on PIT-56-A.Highsmith, Neutral Zone Infraction, 5 yards, enforced at DEN 31 - No Play.
(8:24) (Shotgun) 33-J.Williams right guard to DEN 33 for -3 yards (90-T.Watt, 25-D.Elliott).
(8:01) (No Huddle, Shotgun) 10-B.Nix pass incomplete short middle to 84-L.Humphrey (90-T.Watt) [90-T.Watt].
(7:57) 9-R.Dixon punts 54 yards to PIT 13, Center-48-M.Fraboni. 19-C.Austin to PIT 19 for 6 yards (43-K.Smith).
(7:48) 22-N.Harris right guard to PIT 21 for 2 yards (0-J.Cooper).
(7:09) 22-N.Harris right tackle to PIT 26 for 5 yards (93-D.Jones).
(6:27) (No Huddle, Shotgun) 2-J.Fields pass incomplete deep right to 19-C.Austin (21-R.Moss) [15-N.Bonitto]. PENALTY on DEN-6-P.Locke, Unnecessary Roughness, 15 yards, enforced at PIT 26 - No Play.
(6:22) 22-N.Harris left guard to PIT 43 for 2 yards (0-J.Cooper; 49-A.Singleton).
(5:42) 2-J.Fields scrambles left end ran ob at PIT 46 for 3 yards (55-C.Barton).
(5:04) (Shotgun) 2-J.Fields FUMBLES (Aborted) at PIT 42, recovered by PIT-30-J.Warren at PIT 42. 30-J.Warren to PIT 44 for 2 yards (52-J.Elliss, 97-M.Roach).
(4:53) 8-C.Waitman punts 56 yards to end zone, Center-46-C.Kuntz, Touchback. ** Injury Update: PIT-44-T.Matakevich has returned to the game.
Timeout #2 by DEN at 04:53.
(4:45) (Shotgun) 10-B.Nix pass short right to 80-G.Dulcich to DEN 29 for 9 yards (27-C.Trice, 26-D.Jackson).
(4:25) (No Huddle, Shotgun) 10-B.Nix scrambles up the middle to DEN 31 for 2 yards (97-Ca.Heyward).
(4:02) (No Huddle, Shotgun) 10-B.Nix pass short middle to 84-L.Humphrey to PIT 42 for 27 yards (39-M.Fitzpatrick). PIT-26-D.Jackson was injured during the play.
(3:28) (Shotgun) 10-B.Nix pass short middle to 84-L.Humphrey to PIT 29 for 13 yards (23-D.Kazee).
(3:04) (No Huddle, Shotgun) 10-B.Nix pass short left to 33-J.Williams to PIT 16 for 13 yards (25-D.Elliott; 98-D.Leal).
(2:30) (No Huddle, Shotgun) 10-B.Nix right guard to PIT 11 for 5 yards (39-M.Fitzpatrick).
(2:03) (No Huddle, Shotgun) 10-B.Nix pass incomplete short right to 80-G.Dulcich.
(2:01) (Shotgun) 10-B.Nix pass incomplete short right to 14-C.Sutton [97-Ca.Heyward]. DEN-72-G.Bolles was injured during the play. DEN-69-M.McGlinchey was injured during the play.
(1:56) 3-W.Lutz 29 yard field goal is GOOD, Center-48-M.Fraboni, Holder-9-R.Dixon. ** Injury Update: DEN-72-G.Bolles has returned to the game.
3-W.Lutz kicks 65 yards from DEN 35 to end zone, Touchback to the PIT 30.
(1:54) 22-N.Harris right guard to PIT 32 for 2 yards (93-D.Jones; 52-J.Elliss).
(1:51) 22-N.Harris right tackle to PIT 36 for 4 yards (99-Z.Allen; 0-J.Cooper).
Timeout #3 by DEN at 01:51.
(1:06) (Shotgun) 2-J.Fields right end to PIT 36 for no gain (6-P.Locke).
Timeout #1 by PIT at 01:06.
(:18) 8-C.Waitman punts 54 yards to DEN 10, Center-46-C.Kuntz. 19-M.Mims to DEN 19 for 9 yards (15-B.Skowronek).
Timeout #2 by PIT at 00:18.
(:09) (Shotgun) 10-B.Nix pass deep right to 11-J.Reynolds to DEN 32 for 13 yards [97-Ca.Heyward]. Lateral to 19-M.Mims ran ob at DEN 34 for 2 yards (23-D.Kazee). ** Injury Update: PIT-26-D.Jackson has returned to the game.
(:01) (Shotgun) 10-B.Nix pass deep middle INTERCEPTED by 23-D.Kazee at PIT 40. 23-D.Kazee to PIT 45 for 5 yards (38-J.McLaughlin).
END GAME"

pit_den_summary <- "Headline: Justin Fields leads Steelers past Broncos 13-6 in defensive battle.
Summary: Nix was intercepted by Cory Trice Jr. in the back of the end zone in the third quarter, squelching Denver's best drive, which featured completions of 26 yards to Courtland Sutton and 50 yards to Josh Reynolds that put the Broncos on the Steelers 6. On Pittsburgh's ensuing drive, Broncos star cornerback Patrick Surtain II's penalty set up Chris Bowell for his second field goal, this one from 53 yards, to make it 13-0 late in the third quarter. The Broncos faced fourth-and-6 from the Pittsburgh 16 when Lutz made a 35-yard field goal with 10:42 remaining, making it 13-3 and keeping a two-score deficit alive. Another drive stalled at the Steelers 11 and Lutz was good from 29 yards with 1:54 left. With one timeout remaining, the Broncos decided to kick it away. The Broncos held but had 9 seconds left when they got the ball back at their 19 but Damontae Kazee intercepted Nix's final heave as time expired.
Notable Performances: Fields threw a touchdown pass and finished 13 for 20 for 117 yards with no interceptions. Nix threw for 246 yards on 20-of-35 passing, but threw 2 interceptions and no touchdowns.
Injuries: Broncos: DE John Franklin-Myers, OLB Baron Browning, and ST ace J.L. Skinner all left the game. Steelers: LB Tyler Matakevich left the game in the fourth quarter."

# Append game log and summary to training dataframe 
pit_den <- as.data.frame(cbind(pit_den_log, pit_den_summary)) %>% rename(game_log = pit_den_log, game_summary = pit_den_summary)
training <- rbind(training, pit_den)

ne_jax_log <- "GAME
39-C.Little kicks 62 yards from JAX 35 to NE 3. 4-A.Gibson pushed ob at NE 32 for 29 yards (56-Y.Abdullah).
(14:55) 10-D.Maye scrambles right guard to NE 34 for 2 yards (44-T.Walker).
(14:21) (Shotgun) 10-D.Maye pass short left to 3-D.Douglas pushed ob at NE 39 for 5 yards (22-J.Jones).
(13:45) (Shotgun) 10-D.Maye pass short left to 3-D.Douglas to NE 48 for 9 yards (25-R.Darby).
(13:04) 10-D.Maye pass incomplete deep right to 1-J.Polk (25-R.Darby).
(12:58) (Shotgun) 10-D.Maye pass short right to 85-H.Henry to JAX 34 for 18 yards (5-A.Cisco; 33-D.Lloyd).
(12:11) 72-Z.Thomas reported in as eligible. 38-R.Stevenson right guard to JAX 31 for 3 yards (33-D.Lloyd).
(11:30) (Shotgun) 10-D.Maye left end to JAX 28 for 3 yards (33-D.Lloyd). PENALTY on NE-3-D.Douglas, Illegal Shift, 5 yards, enforced at JAX 31 - No Play.
(11:09) 10-D.Maye pass short middle to 4-A.Gibson to JAX 27 for 9 yards (51-V.Miller; 93-T.Lacy). NE-4-A.Gibson was injured during the play.
(10:38) (Shotgun) 38-R.Stevenson right guard to JAX 16 for 11 yards (51-V.Miller).
(10:04) (Shotgun) 10-D.Maye sacked at JAX 21 for -5 yards (33-D.Lloyd).
(9:22) (Shotgun) 10-D.Maye pass short right to 85-H.Henry to JAX 16 for 5 yards (5-A.Cisco).
(8:40) (Shotgun) 10-D.Maye pass short right to 39-J.Hasty for 16 yards, TOUCHDOWN.
13-J.Slye extra point is GOOD, Center-49-J.Cardona, Holder-17-B.Baringer.
13-J.Slye kicks 65 yards from NE 35 to end zone, Touchback to the JAX 30.
(8:32) (Shotgun) 16-T.Lawrence pass short left to 17-E.Engram pushed ob at JAX 38 for 8 yards (15-M.Mapu).
(8:03) 16-T.Lawrence pass short right to 17-E.Engram to NE 49 for 13 yards (23-K.Dugger).
(7:19) 4-T.Bigsby right tackle to NE 49 for no gain (33-A.Jennings, 53-C.Elliss).
(6:36) 4-T.Bigsby right guard to NE 45 for 4 yards (33-A.Jennings, 92-D.Godchaux).
(5:53) (Shotgun) 16-T.Lawrence pass short left to 2-D.Johnson to NE 45 for no gain (31-J.Jones).
(5:11) 9-L.Cooke punts 38 yards to NE 7, Center-46-R.Matiscik. 25-M.Jones to NE 15 for 8 yards (51-V.Miller).
(5:02) 38-R.Stevenson right tackle to NE 16 for 1 yard (33-D.Lloyd).
(4:23) (Shotgun) 10-D.Maye pass incomplete short middle to 84-K.Bourne [41-J.Hines-Allen]. PENALTY on JAX-41-J.Hines-Allen, Defensive Offside, 5 yards, enforced at NE 16 - No Play.
(4:20) (Shotgun) 10-D.Maye pass incomplete short right to 38-R.Stevenson.
(4:17) (Shotgun) 10-D.Maye scrambles up the middle to NE 36 for 15 yards (6-D.Savage).
(3:36) (Shotgun) 4-A.Gibson right tackle to NE 36 for no gain (51-V.Miller; 91-A.Armstead). ** Injury Update: NE-4-A.Gibson has returned to the game.
(2:57) (Shotgun) 10-D.Maye pass short left to 85-H.Henry to NE 49 for 13 yards (33-D.Lloyd; 3-T.Campbell).
(2:18) (Shotgun) 4-A.Gibson right guard to 50 for 1 yard (51-V.Miller; 33-D.Lloyd). NE-64-L.Robinson was injured during the play.
(1:47) (Shotgun) 10-D.Maye pass short right to 85-H.Henry to JAX 38 for 12 yards (51-V.Miller).
(1:10) 4-A.Gibson right tackle to JAX 35 for 3 yards (41-J.Hines-Allen, 52-D.Hamilton).
(:29) 38-R.Stevenson left tackle to JAX 31 for 4 yards (44-T.Walker, 51-V.Miller). PENALTY on JAX-41-J.Hines-Allen, Defensive Offside, 5 yards, enforced at JAX 35 - No Play.
(:08) PENALTY on JAX-98-J.Jefferson, Neutral Zone Infraction, 5 yards, enforced at JAX 30 - No Play.
END QUARTER 1
(15:00) (Shotgun) 10-D.Maye pass short right to 38-R.Stevenson to JAX 22 for 3 yards (99-J.Ledbetter).
(14:21) 38-R.Stevenson right tackle to JAX 22 for no gain (51-V.Miller).
(13:39) (Shotgun) 10-D.Maye pass incomplete short left to 84-K.Bourne.
(13:35) 13-J.Slye 41 yard field goal is GOOD, Center-49-J.Cardona, Holder-17-B.Baringer.
13-J.Slye kicks 60 yards from NE 35 to JAX 5. 11-P.Washington to JAX 32 for 27 yards (15-M.Mapu).
(13:26) 16-T.Lawrence pass short left to 0-G.Davis pushed ob at JAX 45 for 13 yards (48-J.Tavai).
(12:49) 7-B.Thomas right end to JAX 46 for 1 yard (33-A.Jennings).
(12:01) (Shotgun) 16-T.Lawrence pass deep middle to 13-C.Kirk to NE 30 for 24 yards (23-K.Dugger).
Timeout #1 by JAX at 12:01.
(11:30) (No Huddle, Shotgun) 2-D.Johnson up the middle to NE 20 for 10 yards (23-K.Dugger).
(10:54) (Shotgun) 4-T.Bigsby left guard to NE 7 for 13 yards (15-M.Mapu; 53-C.Elliss).
(10:09) (Shotgun) 16-T.Lawrence pass incomplete short middle to 2-D.Johnson (23-K.Dugger).
(10:05) (Shotgun) 4-T.Bigsby up the middle to NE 6 for 1 yard (50-R.McMillan).
(9:25) (Shotgun) 16-T.Lawrence pass short middle to 7-B.Thomas for 6 yards, TOUCHDOWN.
39-C.Little extra point is GOOD, Center-46-R.Matiscik, Holder-9-L.Cooke.
39-C.Little kicks 65 yards from JAX 35 to end zone, Touchback to the NE 30.
(9:21) 10-D.Maye pass incomplete short middle to 9-K.Boutte. PENALTY on JAX-30-M.Brown, Defensive Pass Interference, 9 yards, enforced at NE 30 - No Play.
(9:17) 38-R.Stevenson right tackle to NE 38 for -1 yards (91-A.Armstead).
(8:36) (Shotgun) 10-D.Maye pass short middle to 85-H.Henry to NE 34 for -4 yards (99-J.Ledbetter, 33-D.Lloyd).
(7:52) (Shotgun) 10-D.Maye pass short left to 39-J.Hasty pushed ob at NE 42 for 8 yards (56-Y.Abdullah).
(7:15) 17-B.Baringer punts 40 yards to JAX 18, Center-49-J.Cardona, fair catch by 11-P.Washington.
(7:09) 4-T.Bigsby right guard to JAX 21 for 3 yards (94-J.Roy, 53-C.Elliss).
(6:31) 16-T.Lawrence pass deep middle to 7-B.Thomas to NE 21 for 58 yards (0-C.Gonzalez).
(5:36) (No Huddle, Shotgun) 16-T.Lawrence pass short left to 17-E.Engram to NE 18 for 3 yards (99-K.White).
(4:58) (Shotgun) 4-T.Bigsby left guard to NE 8 for 10 yards (0-C.Gonzalez).
(4:19) (Shotgun) 4-T.Bigsby right guard to NE 1 for 7 yards (23-K.Dugger; 31-J.Jones).
(3:35) (Shotgun) 4-T.Bigsby right guard for 1 yard, TOUCHDOWN.
39-C.Little extra point is GOOD, Center-46-R.Matiscik, Holder-9-L.Cooke.
39-C.Little kicks 65 yards from JAX 35 to end zone, Touchback to the NE 30.
(3:32) 38-R.Stevenson up the middle to NE 31 for 1 yard (5-A.Cisco; 52-D.Hamilton).
(2:50) (Shotgun) 10-D.Maye pass short right to 2-K.Osborn pushed ob at NE 35 for 4 yards (51-V.Miller).
(2:11) (Shotgun) PENALTY on NE-85-H.Henry, False Start, 5 yards, enforced at NE 35 - No Play.
(2:00) (Shotgun) 10-D.Maye pass incomplete deep right to 1-J.Polk (5-A.Cisco).
(1:55) 17-B.Baringer punts 66 yards to JAX 4, Center-49-J.Cardona. 11-P.Washington for 96 yards, TOUCHDOWN.
(Kick formation) PENALTY on NE-48-J.Tavai, Neutral Zone Infraction, 1 yard, enforced at NE 15 - No Play.
TWO-POINT CONVERSION ATTEMPT. 16-T.Lawrence pass to 7-B.Thomas is complete. ATTEMPT SUCCEEDS.
39-C.Little kicks 65 yards from JAX 35 to end zone, Touchback to the NE 30.
(1:34) (Shotgun) 39-J.Hasty right tackle to NE 26 for -4 yards (52-D.Hamilton).
(1:00) (Shotgun) 10-D.Maye pass incomplete short left to 3-D.Douglas.
(:55) (Shotgun) 10-D.Maye pass short middle to 85-H.Henry to NE 37 for 11 yards (22-J.Jones, 5-A.Cisco) [91-A.Armstead].
(:50) 17-B.Baringer punts 57 yards to JAX 6, Center-49-J.Cardona, downed by NE-41-B.Schooler.
Timeout #2 by JAX at 00:50.
Timeout #1 by NE at 00:50.
(:39) (Shotgun) 16-T.Lawrence pass short middle to 2-D.Johnson to JAX 12 for 6 yards (23-K.Dugger).
END QUARTER 2
13-J.Slye kicks 65 yards from NE 35 to end zone, Touchback to the JAX 30.
(15:00) (Shotgun) 16-T.Lawrence pass short middle to 17-E.Engram to JAX 40 for 10 yards (53-C.Elliss).
(14:23) 16-T.Lawrence pass incomplete short right to 4-T.Bigsby.
(14:18) (Shotgun) 16-T.Lawrence pass short middle to 2-D.Johnson to NE 34 for 26 yards (23-K.Dugger).
(13:48) (No Huddle, Shotgun) 2-D.Johnson left end to NE 35 for -1 yards (91-D.Wise).
(13:08) (Shotgun) 16-T.Lawrence pass incomplete short middle to 85-B.Strange. PENALTY on NE-23-K.Dugger, Defensive Pass Interference, 4 yards, enforced at NE 35 - No Play.
(13:05) 4-T.Bigsby left guard to NE 23 for 8 yards (23-K.Dugger).
(12:41) (No Huddle, Shotgun) 4-T.Bigsby left end to NE 19 for 4 yards (33-A.Jennings).
(11:55) 4-T.Bigsby left tackle to NE 16 for 3 yards (32-O.Mathis).
(11:16) (Shotgun) 2-D.Johnson right guard to NE 7 for 9 yards (53-C.Elliss; 48-J.Tavai).
(10:35) 16-T.Lawrence pass incomplete short middle to 0-G.Davis.
(10:30) 2-D.Johnson left end to NE 3 for 4 yards (0-C.Gonzalez; 48-J.Tavai).
(9:49) (Shotgun) 16-T.Lawrence pass incomplete short right to 13-C.Kirk (25-M.Jones).
(9:45) 39-C.Little 21 yard field goal is GOOD, Center-46-R.Matiscik, Holder-9-L.Cooke.
39-C.Little kicks 65 yards from JAX 35 to end zone, Touchback to the NE 30.
(9:42) 38-R.Stevenson right guard to NE 33 for 3 yards (44-T.Walker; 52-D.Hamilton).
(9:09) (Shotgun) 10-D.Maye pass short middle to 81-A.Hooper to NE 40 for 7 yards (51-V.Miller).
(8:32) 10-D.Maye pass incomplete short right to 1-J.Polk (22-J.Jones).
(8:26) (Shotgun) 10-D.Maye pass short right to 38-R.Stevenson pushed ob at NE 44 for 4 yards (48-C.Muma).
(7:47) (Shotgun) 10-D.Maye pass incomplete short right to 2-K.Osborn (3-T.Campbell).
(7:41) 17-B.Baringer punts 46 yards to JAX 10, Center-49-J.Cardona, fair catch by 11-P.Washington.
(7:34) 4-T.Bigsby right tackle to JAX 11 for 1 yard (23-K.Dugger).
(6:53) (Shotgun) 16-T.Lawrence pass short middle to 7-B.Thomas to JAX 24 for 13 yards (0-C.Gonzalez).
(6:13) 2-D.Johnson right tackle to JAX 23 for -1 yards (33-A.Jennings).
(5:34) (Shotgun) 16-T.Lawrence pass short left to 7-B.Thomas to JAX 30 for 7 yards (23-K.Dugger).
(4:48) (Shotgun) 16-T.Lawrence pass short right to 7-B.Thomas to JAX 35 for 5 yards (22-M.Wilson; 23-K.Dugger).
(4:08) 7-B.Thomas left end to JAX 36 for 1 yard (99-K.White).
(3:28) (Shotgun) 16-T.Lawrence pass short right to 17-E.Engram to JAX 37 for 1 yard (23-K.Dugger).
(2:43) (Shotgun) 16-T.Lawrence scrambles left end to JAX 48 for 11 yards (15-M.Mapu).
(1:57) 4-T.Bigsby up the middle to NE 40 for 12 yards (21-J.Hawkins).
(1:14) 4-T.Bigsby left guard to NE 28 for 12 yards (0-C.Gonzalez; 48-J.Tavai).
(:39) (No Huddle, Shotgun) 4-T.Bigsby up the middle to NE 23 for 5 yards (94-J.Roy).
END QUARTER 3
(15:00) (Shotgun) 2-D.Johnson left guard to NE 20 for 3 yards (95-D.Ekuale, 48-J.Tavai).
(14:16) 4-T.Bigsby up the middle to NE 15 for 5 yards (92-D.Godchaux; 99-K.White).
(13:32) 4-T.Bigsby left guard to NE 9 for 6 yards (53-C.Elliss).
(12:46) (Shotgun) 4-T.Bigsby up the middle to NE 7 for 2 yards (50-R.McMillan; 48-J.Tavai).
(12:00) (Shotgun) 4-T.Bigsby left tackle to NE 6 for 1 yard (15-M.Mapu; 99-K.White).
(11:16) 4-T.Bigsby up the middle to NE 6 for no gain (50-R.McMillan; 94-J.Roy). TURNOVER ON DOWNS.
(11:10) 10-D.Maye pass short right to 85-H.Henry to NE 11 for 5 yards (51-V.Miller; 25-R.Darby).
(10:46) (No Huddle, Shotgun) 10-D.Maye pass short right to 81-A.Hooper to NE 16 for 5 yards (6-D.Savage).
(10:17) (Shotgun) 10-D.Maye pass incomplete deep right to 9-K.Boutte. ** Injury Update: NE-3-D.Douglas has returned to the game.
(10:10) (Shotgun) 39-J.Hasty right guard to NE 18 for 2 yards (52-D.Hamilton; 41-J.Hines-Allen).
(9:33) (Shotgun) 10-D.Maye pass deep middle to 85-H.Henry to 50 for 32 yards (5-A.Cisco; 6-D.Savage).
(9:03) (No Huddle, Shotgun) 10-D.Maye pass deep left to 9-K.Boutte to JAX 17 for 33 yards (30-M.Brown).
(8:38) (No Huddle, Shotgun) 10-D.Maye pass incomplete short left.
(8:31) (Shotgun) 10-D.Maye pass incomplete deep left to 81-A.Hooper.
(8:27) (Shotgun) PENALTY on NE-71-M.Onwenu, False Start, 5 yards, enforced at JAX 17 - No Play.
(8:27) (Shotgun) 10-D.Maye pass deep middle to 2-K.Osborn for 22 yards, TOUCHDOWN.
TWO-POINT CONVERSION ATTEMPT. 10-D.Maye pass to 1-J.Polk is incomplete. ATTEMPT FAILS.
13-J.Slye kicks 65 yards from NE 35 to end zone, Touchback to the JAX 30.
(8:22) 4-T.Bigsby left guard to JAX 34 for 4 yards (94-J.Roy).
(7:44) (Shotgun) 4-T.Bigsby up the middle to JAX 39 for 5 yards (95-D.Ekuale).
(7:05) 16-T.Lawrence up the middle to JAX 41 for 2 yards (94-J.Roy).
(6:25) 2-D.Johnson right guard to 50 for 9 yards (33-A.Jennings).
(5:42) (Shotgun) 2-D.Johnson right tackle to NE 47 for 3 yards (48-J.Tavai; 96-E.Johnson).
(4:57) 2-D.Johnson right guard to NE 45 for 2 yards (53-C.Elliss).
(4:51) (Shotgun) 4-T.Bigsby right tackle to NE 44 for 1 yard (33-A.Jennings; 96-E.Johnson).
Timeout #1 by NE at 04:51.
(4:09) (Shotgun) 16-T.Lawrence pass incomplete short left to 13-C.Kirk.
(4:05) 9-L.Cooke punts 32 yards to NE 12, Center-46-R.Matiscik, out of bounds.
(3:58) (Shotgun) 10-D.Maye pass short left to 84-K.Bourne to NE 26 for 14 yards (3-T.Campbell).
(3:37) (No Huddle, Shotgun) 10-D.Maye pass short middle to 39-J.Hasty to NE 33 for 7 yards (33-D.Lloyd; 26-A.Johnson).
(3:15) (No Huddle, Shotgun) 10-D.Maye scrambles up the middle to NE 34 for 1 yard (56-Y.Abdullah).
(2:49) (No Huddle, Shotgun) 10-D.Maye pass incomplete short left to 85-H.Henry (33-D.Lloyd). PENALTY on NE-75-D.Jacobs, Offensive Holding, 10 yards, enforced at NE 34 - No Play.
(2:42) (Shotgun) 10-D.Maye sacked at NE 10 for -14 yards (44-T.Walker).
(2:00) (Shotgun) 10-D.Maye pass incomplete deep middle to 85-H.Henry.
Timeout #1 by JAX at 02:00.
(1:54) 4-T.Bigsby left tackle to NE 6 for 4 yards (53-C.Elliss).
(1:49) 4-T.Bigsby up the middle to NE 4 for 2 yards (95-D.Ekuale; 53-C.Elliss).
Timeout #2 by NE at 01:49.
(1:45) 4-T.Bigsby left guard for 4 yards, TOUCHDOWN.
Timeout #3 by NE at 01:45.
39-C.Little extra point is GOOD, Center-46-R.Matiscik, Holder-9-L.Cooke.
39-C.Little kicks 65 yards from JAX 35 to end zone, Touchback to the NE 30.
(1:41) (Shotgun) 10-D.Maye pass short left to 81-A.Hooper to NE 39 for 9 yards (22-J.Jones).
(1:19) (No Huddle, Shotgun) 10-D.Maye pass short middle to 39-J.Hasty to 50 for 11 yards (33-D.Lloyd).
(:57) (No Huddle, Shotgun) 10-D.Maye pass short left to 81-A.Hooper to JAX 39 for 11 yards (33-D.Lloyd; 3-T.Campbell).
(:35) (No Huddle, Shotgun) 10-D.Maye pass short right to 39-J.Hasty to JAX 32 for 7 yards (33-D.Lloyd).
(:17) (No Huddle, Shotgun) PENALTY on NE, False Start, 5 yards, enforced at JAX 32 - No Play.
END GAME"

ne_jax_summary <- "Headline: Tank Bigsby’s 2 TDs power Jaguars to 32-16 victory over Patriots.
Summary: The Jacksonville Jaguars didn't show any quit this week after falling behind early on against the New England Patriots. The Jaguars trailed 10-0 before rallying and overpowering the Patriots 32-16. The Patriots scored on their opening drive. JaMycal Hasty caught a pass to get into the end zone for a 16-yard touchdown reception. The Jaguars then scored four straight times. Thomas caught a 6-yard touchdown pass on third-and-goal to get the Jags on the board and he set up Jacksonville’s go-ahead score when he streaked down the middle of the field and caught a 58-yard pass to the New England 21. Four plays later, Bigsby’s 1-yard plunge gave the Jags a 14-10 lead. Washington’s 96-yard punt return for a touchdown made it 22-10. Lawrence threw to Thomas for the 2-point conversion after the Patriots were offside on the extra point attempt. The Jags opened the second half by driving to the New England 3 but settled for a field goal and on its next drive, Jacksonville drove down the field on a 17-play drive but Bigsby was stuffed for no gain on a fourth-and-1 from the 6. Maye got the Patriots back into the end zone less than three minutes later when he found K.J. Osborn for a 22-yard touchdown pass to make it 25-16 after. The 2-point conversion attempt failed.
Notable Performances: Lawrence completed 15 of 20 passes for 193 yards and a touchdown. Thomas had five receptions for 89 yards and a touchdown. Maye finished 26 of 37 for 276 yards with two touchdowns and no interceptions.
Injuries: Patriots: WR DeMario Douglas left in the third quarter but returned. RB Antonio Gibson stayed left in the first quarter but later returned. OL Layden Robinson also left the game in the first quarter. Jaguars: OL Cam Robinson was ruled out in the second quarter."

# Append game log and summary to training dataframe 
ne_jax <- as.data.frame(cbind(ne_jax_log, ne_jax_summary)) %>% rename(game_log = ne_jax_log, game_summary = ne_jax_summary)
training <- rbind(training, ne_jax)

bal_cle_log <- "GAME
7-D.Hopkins kicks 66 yards from CLE 35 to BAL -1. 38-C.Collier to BAL 23 for 24 yards (54-O.Okoronkwo; 37-Da.Bell).
(14:54) 8-L.Jackson pass short right to 88-C.Kolar pushed ob at BAL 32 for 9 yards (6-J.Owusu-Koramoah).
(14:16) 43-J.Hill left end to BAL 37 for 5 yards (1-J.Thornhill).
(13:52) (Shotgun) 8-L.Jackson pass short middle to 4-Z.Flowers to BAL 36 for -1 yards (6-J.Owusu-Koramoah).
(13:13) (Shotgun) 8-L.Jackson pass short right to 7-R.Bateman to CLE 36 for 28 yards (23-M.Emerson).
(12:34) (Shotgun) 22-D.Henry right tackle to CLE 27 for 9 yards (21-D.Ward; 9-G.Delpit).
(12:00) (Shotgun) 8-L.Jackson pass short middle to 89-M.Andrews to CLE 16 for 11 yards (1-J.Thornhill).
(11:18) 22-D.Henry up the middle to CLE 15 for 1 yard (40-N.Watson, 43-M.Diabate).
(10:47) 8-L.Jackson scrambles right end ran ob at CLE 5 for 10 yards (1-J.Thornhill). Penalty on CLE-21-D.Ward, Defensive Holding, offsetting, enforced at CLE 15 - No Play. Penalty on BAL, Illegal Formation, offsetting.
(10:20) (Shotgun) 8-L.Jackson pass incomplete short right to 80-I.Likely (9-G.Delpit). PENALTY on BAL-79-R.Stanley, Offensive Holding, 10 yards, enforced at CLE 15 - No Play.
(10:15) (Shotgun) 8-L.Jackson pass short left to 80-I.Likely to CLE 11 for 14 yards (9-G.Delpit).
(9:30) (Shotgun) 8-L.Jackson pass short right to 89-M.Andrews to CLE 7 for 4 yards (23-M.Emerson).
(8:48) (Shotgun) Direct snap to 22-D.Henry. 22-D.Henry right guard to CLE 9 for -2 yards (6-J.Owusu-Koramoah, 90-M.Hurst). TURNOVER ON DOWNS.
(8:45) 24-N.Chubb left tackle to CLE 13 for 3 yards (23-T.Simpson).
(8:16) 5-J.Winston pass deep left to 85-D.Njoku to CLE 33 for 20 yards (14-K.Hamilton).
(7:33) 5-J.Winston pass incomplete short left to 24-N.Chubb [14-K.Hamilton].
(7:31) (Shotgun) 24-N.Chubb left end to CLE 39 for 6 yards (53-K.Van Noy, 14-K.Hamilton).
(6:42) (Shotgun) 5-J.Winston pass short right to 8-E.Moore to CLE 45 for 6 yards (14-K.Hamilton).
(6:07) 24-N.Chubb left tackle to BAL 49 for 6 yards (97-B.Urban). BAL-97-B.Urban was injured during the play.
(5:25) 5-J.Winston pass deep right to 3-J.Jeudy to BAL 30 for 19 yards (14-K.Hamilton).
(4:47) 27-D.Foreman right tackle to BAL 24 for 6 yards (0-R.Smith, 39-E.Jackson). PENALTY on CLE-77-W.Teller, Offensive Holding, 10 yards, enforced at BAL 30 - No Play.
(4:21) (Shotgun) 5-J.Winston pass deep middle to 8-E.Moore to BAL 24 for 16 yards (39-E.Jackson).
(3:36) 24-N.Chubb left guard to BAL 25 for -1 yards (95-T.Robinson, 40-M.Harrison).
(2:52) (Shotgun) 5-J.Winston pass short middle to 19-C.Tillman to BAL 13 for 12 yards (5-J.Armour-Davis; 39-E.Jackson).
(2:09) 5-J.Winston pass incomplete short left to 8-E.Moore.
(2:02) (Shotgun) 24-N.Chubb left guard to BAL 9 for 4 yards (14-K.Hamilton).
(1:23) (No Huddle, Shotgun) 5-J.Winston pass short right to 19-C.Tillman to BAL 9 for no gain (14-K.Hamilton, 5-J.Armour-Davis).
(:40) 7-D.Hopkins 28 yard field goal is GOOD, Center-50-R.Sunahara, Holder-13-C.Bojorquez.
7-D.Hopkins kicks 60 yards from CLE 35 to BAL 5. 38-C.Collier to BAL 29 for 24 yards (54-O.Okoronkwo, 39-K.Hudson).
(:33) 22-D.Henry right end to BAL 29 for no gain (95-M.Garrett; 9-G.Delpit).
END QUARTER 1
(15:00) (Shotgun) 8-L.Jackson scrambles right end to BAL 41 for 12 yards (57-I.McGuire).
(14:16) (Shotgun) 22-D.Henry left guard to CLE 20 for 39 yards (1-J.Thornhill).
(13:27) 43-J.Hill left guard to CLE 20 for no gain (54-O.Okoronkwo, 99-Z.Smith).
(12:46) (Shotgun) 8-L.Jackson sacked at CLE 31 for -11 yards (54-O.Okoronkwo).
(12:04) (Shotgun) 8-L.Jackson pass incomplete deep right to 4-Z.Flowers.
(11:56) 9-J.Tucker 49 yard field goal is GOOD, Center-46-N.Moore, Holder-11-J.Stout.
9-J.Tucker kicks 65 yards from BAL 35 to end zone, Touchback to the CLE 30.
(11:51) 24-N.Chubb left guard to CLE 45 for 15 yards (14-K.Hamilton, 39-E.Jackson).
(11:17) (Shotgun) 5-J.Winston pass short right to 19-C.Tillman to BAL 49 for 6 yards (39-E.Jackson).
(10:41) (Shotgun) 5-J.Winston pass incomplete short left to 85-D.Njoku (14-K.Hamilton).
(10:38) (Shotgun) 5-J.Winston pass incomplete short middle to 8-E.Moore (96-B.Washington) [99-O.Oweh].
(10:32) 13-C.Bojorquez punts 36 yards to BAL 13, Center-50-R.Sunahara, fair catch by 16-T.Wallace.
(10:26) (Shotgun) 8-L.Jackson pass incomplete short middle to 88-C.Kolar (43-M.Diabate).
(10:22) (Shotgun) 8-L.Jackson up the middle to BAL 14 for 1 yard (57-I.McGuire).
(9:38) (Shotgun) 8-L.Jackson pass incomplete deep middle to 15-N.Agholor (21-D.Ward) [51-M.Hall]. ** Injury Update: CLE-54-O.Okoronkwo has returned to the game.
(9:32) 11-J.Stout punts 60 yards to CLE 26, Center-46-N.Moore. 16-J.Darden to CLE 33 for 7 yards (49-C.Board).
(9:20) 5-J.Winston pass deep left to 8-E.Moore ran ob at BAL 48 for 19 yards.
(8:52) (Shotgun) 5-J.Winston pass incomplete deep left to 8-E.Moore [96-B.Washington]. BAL-58-M.Pierce was injured during the play. PENALTY on BAL-23-T.Simpson, Illegal Use of Hands, 5 yards, enforced at BAL 48 - No Play.
(8:48) 24-N.Chubb left tackle to BAL 35 for 8 yards (29-A.Washington).
(8:11) (Shotgun) 27-D.Foreman left guard to BAL 27 for 8 yards (0-R.Smith).
(7:34) 27-D.Foreman right tackle to BAL 20 for 7 yards (39-E.Jackson).
(6:55) (Shotgun) 24-N.Chubb up the middle to BAL 21 for -1 yards (29-A.Washington).
(6:13) (Shotgun) PENALTY on CLE-79-D.Jones, False Start, 5 yards, enforced at BAL 21 - No Play.
(5:52) (Shotgun) 5-J.Winston pass short left to 19-C.Tillman to BAL 17 for 9 yards (21-B.Stephens).
(5:09) (Shotgun) 5-J.Winston pass short right to 20-P.Strong to BAL 14 for 3 yards (53-K.Van Noy; 10-A.Maulet).
(4:32) 24-N.Chubb left end to BAL 15 for -1 yards (21-B.Stephens, 99-O.Oweh).
(3:50) (Shotgun) 5-J.Winston pass incomplete short left to 88-J.Akins (14-K.Hamilton).
(3:45) 7-D.Hopkins 33 yard field goal is GOOD, Center-50-R.Sunahara, Holder-13-C.Bojorquez.
7-D.Hopkins kicks 55 yards from CLE 35 to BAL 10. 38-C.Collier pushed ob at BAL 44 for 34 yards (9-G.Delpit). PENALTY on BAL-23-T.Simpson, Offensive Holding, 10 yards, enforced at BAL 29. Penalty on BAL-40-M.Harrison, Offensive Holding, declined.
(3:36) (Shotgun) 8-L.Jackson pass incomplete short left to 4-Z.Flowers (1-J.Thornhill) [95-M.Garrett].
(3:30) (Shotgun) 8-L.Jackson scrambles up the middle pushed ob at BAL 41 for 22 yards (1-J.Thornhill). PENALTY on BAL-64-T.Linderbaum, Offensive Holding, 9 yards, enforced at BAL 19 - No Play.
(2:59) (Shotgun) 8-L.Jackson pass short middle to 89-M.Andrews to BAL 15 for 5 yards (54-O.Okoronkwo).
(2:16) (Shotgun) 8-L.Jackson pass incomplete deep middle to 4-Z.Flowers (12-R.McLeod).
(2:08) 11-J.Stout punts 55 yards to CLE 30, Center-46-N.Moore. 16-J.Darden to CLE 42 for 12 yards (16-T.Wallace).
(1:58) (Shotgun) 24-N.Chubb left guard to CLE 42 for no gain (99-O.Oweh).
(1:20) (Shotgun) PENALTY on CLE-77-W.Teller, False Start, 5 yards, enforced at CLE 42 - No Play.
(1:20) (Shotgun) 5-J.Winston pass incomplete short middle to 3-J.Jeudy [95-T.Robinson].
(1:14) (Shotgun) 5-J.Winston sacked at CLE 26 for -11 yards (14-K.Hamilton). FUMBLES (14-K.Hamilton) [14-K.Hamilton], RECOVERED by BAL-23-T.Simpson at CLE 25.
(1:08) (Shotgun) 8-L.Jackson pass short middle to 15-N.Agholor to CLE 11 for 14 yards (12-R.McLeod).
(:31) (No Huddle, Shotgun) 8-L.Jackson pass short middle to 15-N.Agholor for 11 yards, TOUCHDOWN.
9-J.Tucker extra point is GOOD, Center-46-N.Moore, Holder-11-J.Stout.
9-J.Tucker kicks 57 yards from BAL 35 to CLE 8. 20-P.Strong to CLE 26 for 18 yards (28-S.Kane).
(:23) (Shotgun) 5-J.Winston sacked at CLE 25 for -1 yards (sack split by 91-Y.Ngakoue and 95-T.Robinson).
END QUARTER 2
9-J.Tucker kicks 65 yards from BAL 35 to end zone, Touchback to the CLE 30.
(15:00) 5-J.Winston pass short right to 3-J.Jeudy to CLE 44 for 14 yards (5-J.Armour-Davis).
(14:23) (Shotgun) 24-N.Chubb left guard to CLE 43 for -1 yards (92-N.Madubuike, 53-K.Van Noy). ** Injury Update: CLE-16-J.Darden has returned to the game.
(13:55) (Shotgun) 5-J.Winston pass short middle to 85-D.Njoku to 50 for 7 yards (0-R.Smith; 39-E.Jackson).
(13:12) (Shotgun) 5-J.Winston pass short right to 8-E.Moore ran ob at BAL 33 for 17 yards.
(12:38) (Shotgun) 5-J.Winston pass short right to 3-J.Jeudy to BAL 28 for 5 yards (5-J.Armour-Davis).
(12:04) 27-D.Foreman right end to BAL 24 for 4 yards (0-R.Smith).
(11:29) 5-J.Winston right guard to BAL 23 for 1 yard (0-R.Smith).
(10:52) 5-J.Winston pass deep right to 85-D.Njoku for 23 yards, TOUCHDOWN.
7-D.Hopkins extra point is GOOD, Center-50-R.Sunahara, Holder-13-C.Bojorquez.
7-D.Hopkins kicks 63 yards from CLE 35 to BAL 2. 38-C.Collier to BAL 26 for 24 yards (43-M.Diabate, 38-T.Brown).
(10:41) (Shotgun) 8-L.Jackson sacked at BAL 22 for -4 yards (6-J.Owusu-Koramoah).
(9:57) (Shotgun) 8-L.Jackson pass incomplete deep middle to 89-M.Andrews. PENALTY on CLE-0-G.Newsome, Defensive Pass Interference, 29 yards, enforced at BAL 22 - No Play.
(9:48) (Shotgun) 8-L.Jackson right end to CLE 42 for 7 yards (0-G.Newsome).
(9:06) 22-D.Henry up the middle to CLE 44 for -2 yards (43-M.Diabate, 94-D.Tomlinson).
(8:24) (Shotgun) 8-L.Jackson pass incomplete short middle to 15-N.Agholor.
(8:19) 11-J.Stout punts 30 yards to CLE 14, Center-46-N.Moore, downed by BAL-28-S.Kane.
(8:08) (Shotgun) 5-J.Winston pass incomplete short right to 24-N.Chubb (53-K.Van Noy).
(8:05) (Shotgun) 5-J.Winston pass incomplete short right to 85-D.Njoku.
(7:58) (Shotgun) 5-J.Winston pass incomplete deep left to 19-C.Tillman.
(7:52) 13-C.Bojorquez punts 58 yards to BAL 28, Center-50-R.Sunahara. 16-T.Wallace to BAL 38 for 10 yards (59-W.Reid; 37-Da.Bell).
(7:41) (Shotgun) 8-L.Jackson pass deep left to 4-Z.Flowers to CLE 37 for 25 yards (23-M.Emerson).
(6:59) (Shotgun) 22-D.Henry up the middle to CLE 32 for 5 yards (43-M.Diabate, 6-J.Owusu-Koramoah).
(6:23) (Shotgun) 8-L.Jackson pass short right to 22-D.Henry to CLE 28 for 4 yards (43-M.Diabate).
(5:56) PENALTY on BAL-88-C.Kolar, False Start, 5 yards, enforced at CLE 28 - No Play.
(5:45) (Shotgun) 8-L.Jackson pass short left to 80-I.Likely to CLE 8 for 25 yards (6-J.Owusu-Koramoah). CLE-23-M.Emerson was injured during the play.
(5:22) (Shotgun) 8-L.Jackson pass short middle to 80-I.Likely to CLE 7 for 1 yard (93-S.Harris, 9-G.Delpit).
(4:47) 8-L.Jackson pass short right to 89-M.Andrews for 7 yards, TOUCHDOWN [6-J.Owusu-Koramoah].
9-J.Tucker extra point is GOOD, Center-46-N.Moore, Holder-11-J.Stout.
9-J.Tucker kicks 60 yards from BAL 35 to CLE 5. 20-P.Strong to CLE 28 for 23 yards (28-S.Kane; 88-C.Kolar).
(4:37) 24-N.Chubb right tackle to CLE 36 for 8 yards (14-K.Hamilton).
(4:04) (No Huddle) 24-N.Chubb up the middle to CLE 43 for 7 yards (23-T.Simpson).
(3:30) 5-J.Winston pass short middle to 3-J.Jeudy pushed ob at BAL 27 for 30 yards (21-B.Stephens).
(2:48) 5-J.Winston pass incomplete deep left to 3-J.Jeudy.
(2:43) (Shotgun) 27-D.Foreman left guard to BAL 22 for 5 yards (21-B.Stephens).
(2:06) (Shotgun) 5-J.Winston pass short middle to 19-C.Tillman for 22 yards, TOUCHDOWN.
7-D.Hopkins extra point is GOOD, Center-50-R.Sunahara, Holder-13-C.Bojorquez.
7-D.Hopkins kicks 60 yards from CLE 35 to BAL 5. 38-C.Collier to BAL 29 for 24 yards (51-M.Hall; 40-N.Watson).
(1:56) (Shotgun) 8-L.Jackson pass incomplete short right to 7-R.Bateman. ** Injury Update: CLE-23-M.Emerson has returned to the game.
(1:51) (Shotgun) 4-Z.Flowers left end pushed ob at BAL 29 for no gain (43-M.Diabate). PENALTY on CLE-43-M.Diabate, Face Mask, 15 yards, enforced at BAL 29 - No Play.
(1:31) (Shotgun) 8-L.Jackson sacked at BAL 33 for -11 yards (99-Z.Smith).
(:49) (Shotgun) 22-D.Henry right tackle to BAL 43 for 10 yards (30-D.Bush; 6-J.Owusu-Koramoah). CLE-6-J.Owusu-Koramoah was injured during the play.
(:23) (Shotgun) 8-L.Jackson pass short left to 4-Z.Flowers to CLE 45 for 12 yards (23-M.Emerson). Penalty on CLE-23-M.Emerson, Defensive Holding, declined.
END QUARTER 3
(15:00) 22-D.Henry right guard to CLE 41 for 4 yards (99-Z.Smith; 43-M.Diabate).
(14:25) (Shotgun) 8-L.Jackson pass short right to 80-I.Likely to CLE 34 for 7 yards (9-G.Delpit).
(13:49) (Shotgun) 22-D.Henry right end to CLE 27 for 7 yards (30-D.Bush, 9-G.Delpit).
(13:11) (Shotgun) PENALTY on BAL-79-R.Stanley, False Start, 5 yards, enforced at CLE 27 - No Play.
(13:11) (Shotgun) 8-L.Jackson pass incomplete short right to 7-R.Bateman (93-S.Harris).
(13:08) (Shotgun) 8-L.Jackson pass incomplete short left to 7-R.Bateman [1-J.Thornhill].
(13:03) 9-J.Tucker 50 yard field goal is No Good, Wide Left, Center-46-N.Moore, Holder-11-J.Stout.
(12:58) (Shotgun) 24-N.Chubb left tackle to CLE 40 for no gain (23-T.Simpson, 95-T.Robinson).
(12:21) (Shotgun) 5-J.Winston pass incomplete deep middle to 19-C.Tillman (39-E.Jackson) [91-Y.Ngakoue].
(12:14) (Shotgun) 5-J.Winston pass short right to 8-E.Moore to CLE 42 for 2 yards (39-E.Jackson).
(11:39) 13-C.Bojorquez punts 52 yards to BAL 6, Center-50-R.Sunahara, fair catch by 16-T.Wallace. CLE-38-T.Brown was injured during the play.
(11:31) (Shotgun) 8-L.Jackson pass short left to 4-Z.Flowers pushed ob at BAL 12 for 6 yards (12-R.McLeod).
(11:08) (No Huddle, Shotgun) 8-L.Jackson up the middle to BAL 14 for 2 yards (43-M.Diabate; 90-M.Hurst).
(10:43) (No Huddle, Shotgun) 8-L.Jackson pass incomplete deep middle to 80-I.Likely. PENALTY on CLE, Defensive Too Many Men on Field, 5 yards, enforced at BAL 14 - No Play.
(10:39) (Shotgun) 8-L.Jackson left end to BAL 24 for 5 yards (9-G.Delpit).
(10:13) (No Huddle, Shotgun) 8-L.Jackson up the middle to BAL 15 for -9 yards (99-Z.Smith).
(9:30) (Shotgun) 8-L.Jackson pass incomplete deep middle to 7-R.Bateman.
(9:18) 11-J.Stout punts 64 yards to CLE 21, Center-46-N.Moore. 16-J.Darden to CLE 38 for 17 yards (49-C.Board). ** Injury Update: CLE-38-T.Brown has returned to the game.
(9:06) 5-J.Winston pass short right to 84-G.Swaim pushed ob at CLE 45 for 7 yards (39-E.Jackson).
(8:34) 27-D.Foreman up the middle to CLE 47 for 2 yards (40-M.Harrison; 0-R.Smith).
(8:01) 5-J.Winston up the middle to CLE 48 for 1 yard (40-M.Harrison; 0-R.Smith).
(7:18) 5-J.Winston pass short left to 8-E.Moore to BAL 37 for 15 yards (21-B.Stephens).
(6:39) (Shotgun) 24-N.Chubb left end to BAL 37 for no gain (92-N.Madubuike).
(6:06) (Shotgun) 5-J.Winston pass short right to 85-D.Njoku to BAL 29 for 8 yards (0-R.Smith).
(5:43) (No Huddle) 24-N.Chubb up the middle to BAL 30 for -1 yards (23-T.Simpson, 39-E.Jackson).
(4:59) 7-D.Hopkins 48 yard field goal is GOOD, Center-50-R.Sunahara, Holder-13-C.Bojorquez.
7-D.Hopkins kicks 66 yards from CLE 35 to BAL -1. 38-C.Collier to BAL 26 for 27 yards (40-N.Watson). PENALTY on BAL-88-C.Kolar, Illegal Block Above the Waist, 9 yards, enforced at BAL 18.
(4:49) (Shotgun) 8-L.Jackson scrambles up the middle to BAL 31 for 22 yards (30-D.Bush).
(4:05) (Shotgun) 8-L.Jackson right end pushed ob at BAL 37 for 6 yards (1-J.Thornhill; 30-D.Bush).
(3:59) (Shotgun) 8-L.Jackson pass deep left to 4-Z.Flowers to CLE 34 for 29 yards (29-C.Mitchell).
(3:30) (No Huddle, Shotgun) 8-L.Jackson pass short right to 89-M.Andrews to CLE 25 for 9 yards (43-M.Diabate).
(2:49) (Shotgun) 8-L.Jackson pass short middle to 4-Z.Flowers to CLE 2 for 23 yards (0-G.Newsome).
(2:41) (Shotgun) 66-B.Cleveland reported in as eligible. 22-D.Henry left end for 2 yards, TOUCHDOWN.
9-J.Tucker extra point is GOOD, Center-46-N.Moore, Holder-11-J.Stout.
9-J.Tucker kicks 52 yards from BAL 35 to CLE 13. 20-P.Strong to CLE 31 for 18 yards (28-S.Kane).
(2:31) (Shotgun) 5-J.Winston pass short right to 8-E.Moore to CLE 34 for 3 yards (39-E.Jackson).
(2:07) (No Huddle, Shotgun) 5-J.Winston pass short right to 19-C.Tillman to CLE 46 for 12 yards (0-R.Smith).
(2:00) (Shotgun) 5-J.Winston pass incomplete short right to 3-J.Jeudy.
(1:57) (No Huddle, Shotgun) 5-J.Winston pass short right to 3-J.Jeudy to BAL 43 for 11 yards (5-J.Armour-Davis).
(1:25) (No Huddle, Shotgun) 5-J.Winston pass short left to 85-D.Njoku to BAL 40 for 3 yards (14-K.Hamilton).
(1:21) (Shotgun) 5-J.Winston pass incomplete short right to 8-E.Moore.
Timeout #1 by BAL at 01:21.
(1:18) (Shotgun) 5-J.Winston pass short right to 8-E.Moore to BAL 33 for 7 yards (29-A.Washington) [95-T.Robinson].
(1:08) PENALTY on CLE-77-W.Teller, False Start, 5 yards, enforced at BAL 33 - No Play.
Timeout #2 by BAL at 01:08.
(1:08) (Shotgun) 5-J.Winston pass incomplete short right to 8-E.Moore.
(1:04) (Shotgun) 5-J.Winston pass deep middle to 19-C.Tillman for 38 yards, TOUCHDOWN.
TWO-POINT CONVERSION ATTEMPT. 5-J.Winston pass to 19-C.Tillman is incomplete. ATTEMPT FAILS.
7-D.Hopkins kicks 65 yards from CLE 35 to end zone, Touchback to the BAL 30.
(:59) (Shotgun) 8-L.Jackson pass short middle to 15-N.Agholor to BAL 41 for 11 yards (43-M.Diabate; 29-C.Mitchell).
(:45) (No Huddle) 8-L.Jackson spiked the ball to stop the clock.
(:44) (Shotgun) 8-L.Jackson pass deep left to 4-Z.Flowers to CLE 38 for 21 yards (9-G.Delpit).
(:35) (Shotgun) 8-L.Jackson pass short middle to 43-J.Hill to CLE 24 for 14 yards (30-D.Bush).
Timeout #3 by BAL at 00:35.
(:22) (No Huddle) 8-L.Jackson spiked the ball to stop the clock.
(:21) (Shotgun) 8-L.Jackson pass incomplete short left.
Timeout #1 by CLE at 00:21.
(:14) (Shotgun) 8-L.Jackson pass incomplete deep left to 4-Z.Flowers (23-M.Emerson).
Timeout #2 by CLE at 00:14.
(:03) (Shotgun) 8-L.Jackson pass incomplete deep left to 4-Z.Flowers.
Timeout #3 by CLE at 00:03.
END GAME"

bal_cle_summary <- "Headline: Winston’s 3 TD passes lead Browns to stunning 29-24 win over Ravens.
Summary: Jameis Winston threw three touchdown passes, including a 38-yard game-winner to Cedric Tillman with 59 seconds left to seal the win, as the Cleveland Browns beat the Baltimore Ravens 29-24. The Browns’ defense held firm on Baltimore’s final drive, forcing two incompletions in the end zone as time expired. Derrick Henry’s 2-yard touchdown run had briefly given the Ravens a late 24-23 lead before Winston orchestrated the game-winning drive.
Notable Performances: Jameis Winston went 27/41 passing for 334 yards and 3 touchdowns. Cedric Tillman had 5 receptions, 112 yards, 2 touchdowns. David Njoku had 6 receptions for 77 yards and a touchdown. Lamar Jackson went 23/38 passing for 289 yards, 2 touchdowns, and added 46 rushing yards. Derrick Henry had 22 carries for 84 yards and 1 touchdown. Dustin Hopkins went 3/3 on field goals (28, 33, 48 yards).
Injuries: Ravens: DE Brent Urbanleft in the first quarter. NT Michael Pierce left in the second quarter and did not return. Browns: CB Denzel Ward left in the third quarter. LB Jeremiah Owusu-Koramoah also left the game."

# Append game log and summary to training dataframe 
bal_cle <- as.data.frame(cbind(bal_cle_log, bal_cle_summary)) %>% rename(game_log = bal_cle_log, game_summary = bal_cle_summary)
training <- rbind(training, bal_cle)

lv_cin_log <- "GAME
2-E.McPherson kicks 65 yards from CIN 35 to end zone, Touchback to the LV 30.
(15:00) 77-T.Munford reported in as eligible. 15-G.Minshew pass incomplete deep left to 11-T.Tucker (29-C.Taylor-Britt) [94-S.Hubbard].
(14:55) 15-G.Minshew pass incomplete deep right to 11-T.Tucker.
(14:50) (Shotgun) 15-G.Minshew pass incomplete deep right to 89-B.Bowers. PENALTY on CIN-38-D.Ivey, Defensive Pass Interference, 16 yards, enforced at LV 30 - No Play.
(14:43) (Shotgun) 15-G.Minshew pass short left to 89-B.Bowers pushed ob at CIN 45 for 9 yards (20-D.Turner).
(14:00) (Shotgun) 15-G.Minshew pass deep right to 16-J.Meyers to CIN 23 for 22 yards (55-L.Wilson).
(13:23) (Shotgun) 22-A.Mattison up the middle to CIN 16 for 7 yards (98-S.Rankins).
(12:47) (Shotgun) 22-A.Mattison right guard to CIN 12 for 4 yards (59-A.Davis-Gaither; 55-L.Wilson).
(12:12) (Shotgun) 22-A.Mattison left guard to CIN 6 for 6 yards (94-S.Hubbard; 24-V.Bell).
(11:34) (Shotgun) 3-Z.White left guard to CIN 5 for 1 yard (90-K.Jenkins, 21-M.Hilton).
(10:50) (Shotgun) 22-A.Mattison right tackle to CIN 2 for 3 yards (90-K.Jenkins; 22-G.Stone).
(10:01) (Shotgun) 3-Z.White left guard for 2 yards, TOUCHDOWN. The Replay Official reviewed the runner broke the plane ruling, and the play was REVERSED. (Shotgun) 3-Z.White left guard to CIN 1 for 1 yard (90-K.Jenkins; 22-G.Stone).
(9:50) PENALTY on CIN-92-B.Hill, Encroachment, 0 yards, enforced at CIN 1 - No Play.
(9:38) 3-Z.White right guard for 1 yard, TOUCHDOWN.
2-D.Carlson extra point is GOOD, Center-50-J.Bobenmoyer, Holder-6-A.Cole.
2-D.Carlson kicks 65 yards from LV 35 to end zone, Touchback to the CIN 30.
(9:36) (Shotgun) 30-C.Brown right guard to CIN 35 for 5 yards (95-J.Jenkins; 41-R.Spillane).
(9:04) (Shotgun) 30-C.Brown left end to CIN 40 for 5 yards (0-J.Bennett).
(8:24) (Shotgun) 9-J.Burrow pass short middle to 89-D.Sample to CIN 45 for 5 yards (5-D.Deablo).
(7:46) (Shotgun) 9-J.Burrow pass short middle to 30-C.Brown to LV 42 for 13 yards (5-D.Deablo, 41-R.Spillane).
(7:07) (Shotgun) 30-C.Brown right tackle to LV 34 for 8 yards (18-J.Jones).
(6:27) (Shotgun) 9-J.Burrow pass short right to 30-C.Brown to LV 27 for 7 yards (18-J.Jones).
(5:42) (Shotgun) 9-J.Burrow pass short left to 1-J.Chase pushed ob at LV 23 for 4 yards (0-J.Bennett).
(5:07) (Shotgun) 30-C.Brown up the middle to LV 22 for 1 yard (7-T.Moehrig; 98-M.Crosby).
(4:24) (Shotgun) 9-J.Burrow pass short left to 89-D.Sample to LV 20 for 2 yards (7-T.Moehrig, 0-J.Bennett).
(3:38) (Shotgun) 9-J.Burrow pass short middle to 87-T.Hudson to LV 9 for 11 yards (39-N.Hobbs).
(2:54) (Shotgun) 30-C.Brown right tackle to LV 7 for 2 yards (96-J.Laulu). LV-69-A.Butler was injured during the play.
(2:27) (Shotgun) 9-J.Burrow pass short left to 1-J.Chase to LV 1 for 6 yards (0-J.Bennett, 39-N.Hobbs).
(1:46) (Shotgun) 9-J.Burrow pass short right to 30-C.Brown for 1 yard, TOUCHDOWN.
2-E.McPherson extra point is GOOD, Center-48-C.Adomitis, Holder-8-R.Rehkow. ** Injury Update: LV-69-A.Butler has returned to the game.
2-E.McPherson kicks 65 yards from CIN 35 to end zone, Touchback to the LV 30.
(1:39) (Shotgun) 3-Z.White right guard to LV 31 for 1 yard (55-L.Wilson). LV-74-K.Miller was injured during the play.
(1:21) 3-Z.White left tackle to LV 35 for 4 yards (58-J.Ossai).
(:41) (Shotgun) 15-G.Minshew pass short left to 89-B.Bowers to LV 42 for 7 yards (27-J.Battle).
END QUARTER 1
(15:00) (Shotgun) 77-T.Munford reported in as eligible. 15-G.Minshew pass short right to 84-H.Bryant to LV 46 for 4 yards (59-A.Davis-Gaither; 29-C.Taylor-Britt).
(14:22) (Shotgun) 3-Z.White left guard to LV 48 for 2 yards (21-M.Hilton).
(13:40) (Shotgun) 15-G.Minshew pass incomplete deep left to 89-B.Bowers (27-J.Battle) [91-T.Hendrickson].
(13:35) 6-A.Cole punts 42 yards to CIN 10, Center-50-J.Bobenmoyer, fair catch by 16-T.Irwin.
(13:29) 30-C.Brown right tackle to CIN 17 for 7 yards (20-I.Pola-Mao).
(13:03) (Shotgun) 9-J.Burrow pass short right to 83-E.All to CIN 35 for 18 yards (20-I.Pola-Mao).
(12:21) (Shotgun) 9-J.Burrow pass short middle to 1-J.Chase pushed ob at CIN 43 for 8 yards (39-N.Hobbs).
(11:47) (Shotgun) 30-C.Brown left end to CIN 44 for 1 yard (9-T.Wilson, 20-I.Pola-Mao).
(11:01) (Shotgun) 9-J.Burrow pass short left to 1-J.Chase pushed ob at CIN 46 for 2 yards (7-T.Moehrig).
(10:29) (Shotgun) 9-J.Burrow pass short right to 83-E.All to LV 48 for 6 yards (39-N.Hobbs). CIN-83-E.All was injured during the play.
(9:56) (Shotgun) 9-J.Burrow pass short left to 30-C.Brown to LV 36 for 12 yards (91-M.Butler).
(9:14) 30-C.Brown right tackle to LV 35 for 1 yard (44-K.Chaisson, 39-N.Hobbs). LV-39-N.Hobbs was injured during the play.
(8:43) (Shotgun) 9-J.Burrow pass short left to 1-J.Chase to LV 29 for 6 yards (7-T.Moehrig).
(8:00) (Shotgun) 9-J.Burrow pass short right to 88-M.Gesicki to LV 26 for 3 yards (49-C.Snowden).
(7:20) (No Huddle, Shotgun) 9-J.Burrow pass incomplete short right to 80-A.Iosivas (98-M.Crosby) [98-M.Crosby].
(7:16) (Shotgun) 9-J.Burrow pass incomplete short right to 16-T.Irwin (20-I.Pola-Mao).
(7:11) (Shotgun) 9-J.Burrow pass incomplete deep left to 88-M.Gesicki (25-D.Richardson) [98-M.Crosby].
Timeout #1 by LV at 07:11.
(7:04) 2-E.McPherson 44 yard field goal is GOOD, Center-48-C.Adomitis, Holder-8-R.Rehkow.
2-E.McPherson kicks 65 yards from CIN 35 to end zone, Touchback to the LV 30.
(7:00) (Shotgun) 22-A.Mattison left tackle to LV 31 for 1 yard (93-M.Jackson).
(6:19) (Shotgun) 15-G.Minshew pass deep left to 16-J.Meyers to CIN 49 for 20 yards (20-D.Turner).
(5:34) (Shotgun) 15-G.Minshew pass short middle to 16-J.Meyers to CIN 26 for 23 yards (22-G.Stone).
(4:55) 15-G.Minshew pass short left to 16-J.Meyers to CIN 28 for -2 yards (24-V.Bell).
(4:14) (Shotgun) 15-G.Minshew sacked at CIN 35 for -7 yards (91-T.Hendrickson).
(3:29) (Shotgun) 22-A.Mattison up the middle to CIN 28 for 7 yards (24-V.Bell; 55-L.Wilson). LV-75-A.Peat was injured during the play.
(3:03) 2-D.Carlson 46 yard field goal is GOOD, Center-50-J.Bobenmoyer, Holder-6-A.Cole.
2-D.Carlson kicks 65 yards from LV 35 to end zone, Touchback to the CIN 30.
(2:58) (Shotgun) 9-J.Burrow pass incomplete short right to 1-J.Chase. PENALTY on CIN-71-A.Mims, Ineligible Downfield Pass, 5 yards, enforced at CIN 30 - No Play.
(2:54) (Shotgun) 9-J.Burrow pass short middle to 88-M.Gesicki to CIN 49 for 24 yards (7-T.Moehrig; 20-I.Pola-Mao).
(2:19) (Shotgun) 30-C.Brown up the middle to LV 47 for 4 yards (41-R.Spillane; 9-T.Wilson).
(2:00) (Shotgun) PENALTY on LV-98-M.Crosby, Unnecessary Roughness, 14 yards, enforced at LV 47 - No Play. Penalty on LV-98-M.Crosby, Defensive Offside, declined.
(2:00) (Shotgun) 30-C.Brown right tackle to LV 21 for 12 yards (7-T.Moehrig).
(1:20) (Shotgun) 9-J.Burrow pass short left to 1-J.Chase to LV 10 for 11 yards (7-T.Moehrig).
(:38) (Shotgun) 9-J.Burrow pass short middle to 80-A.Iosivas for 10 yards, TOUCHDOWN.
2-E.McPherson extra point is GOOD, Center-48-C.Adomitis, Holder-8-R.Rehkow.
2-E.McPherson kicks 65 yards from CIN 35 to end zone, Touchback to the LV 30.
(:32) (Shotgun) 15-G.Minshew pass short middle to 16-J.Meyers to LV 47 for 17 yards (22-G.Stone).
(:27) (Shotgun) 15-G.Minshew pass short right to 16-J.Meyers to CIN 47 for 6 yards (21-M.Hilton, 27-J.Battle).
Timeout #2 by LV at 00:27.
(:23) (Shotgun) 15-G.Minshew pass incomplete deep right to 16-J.Meyers [99-M.Murphy].
Timeout #3 by LV at 00:23.
(:20) (Shotgun) 15-G.Minshew pass incomplete short right.
(:17) (Punt formation) PENALTY on LV, Delay of Game, 5 yards, enforced at CIN 47 - No Play.
(:17) 6-A.Cole punts 48 yards to CIN 4, Center-50-J.Bobenmoyer, downed by LV-43-K.Mauga. PENALTY on CIN-28-J.Newton, Offensive Holding, 2 yards, enforced at CIN 4.
Timeout #1 by CIN at 00:17.
(:05) 9-J.Burrow kneels to CIN 1 for -1 yards.
END QUARTER 2
2-D.Carlson kicks 65 yards from LV 35 to end zone, Touchback to the CIN 30.
(15:00) (Shotgun) 9-J.Burrow scrambles right end ran ob at CIN 40 for 10 yards (30-D.Holmes; 7-T.Moehrig).
(14:26) 30-C.Brown left guard to LV 39 for 21 yards (20-I.Pola-Mao; 7-T.Moehrig).
(13:41) (Shotgun) 9-J.Burrow pass short left to 19-K.Pryor to LV 30 for 9 yards (0-J.Bennett).
(13:05) (Shotgun) 9-J.Burrow pass short right to 1-J.Chase to LV 24 for 6 yards (30-D.Holmes; 0-J.Bennett).
(12:27) (Shotgun) 9-J.Burrow pass incomplete deep right to 80-A.Iosivas. PENALTY on LV-18-J.Jones, Defensive Pass Interference, 17 yards, enforced at LV 24 - No Play.
(12:23) 30-C.Brown right guard to LV 2 for 5 yards (41-R.Spillane; 30-D.Holmes).
(11:37) 71-A.Mims and 94-S.Hubbard reported in as eligible. 9-J.Burrow pass incomplete short right.
(11:33) (Shotgun) 9-J.Burrow pass short right to 89-D.Sample for 2 yards, TOUCHDOWN.
2-E.McPherson extra point is GOOD, Center-48-C.Adomitis, Holder-8-R.Rehkow.
2-E.McPherson kicks 65 yards from CIN 35 to end zone, Touchback to the LV 30.
(11:27) (Shotgun) 15-G.Minshew pass short middle to 84-H.Bryant to LV 48 for 18 yards (55-L.Wilson) [94-S.Hubbard]. LV-65-C.Whitehair was injured during the play. LV-84-H.Bryant was injured during the play.
(11:07) (Shotgun) 22-A.Mattison right guard to CIN 48 for 4 yards (93-M.Jackson; 27-J.Battle).
(10:32) 22-A.Mattison left guard to CIN 45 for 3 yards (98-S.Rankins; 90-K.Jenkins). ** Injury Update: LV-84-H.Bryant has returned to the game.
(9:51) (Shotgun) 15-G.Minshew FUMBLES (Aborted) at LV 49, touched at LV 45, RECOVERED by CIN-55-L.Wilson at LV 31. 55-L.Wilson to LV 21 for 10 yards (16-J.Meyers; 19-D.Turner).
(9:42) (Shotgun) 9-J.Burrow pass incomplete deep right to 80-A.Iosivas [69-A.Butler].
(9:37) (Shotgun) 30-C.Brown right guard to LV 12 for 9 yards (20-I.Pola-Mao).
(9:00) 9-J.Burrow right guard to LV 10 for 2 yards (69-A.Butler).
(8:20) 30-C.Brown left tackle to LV 11 for -1 yards (98-M.Crosby).
(7:40) (Shotgun) 9-J.Burrow pass short left to 88-M.Gesicki for 11 yards, TOUCHDOWN.
Timeout #1 by CIN at 07:40.
2-E.McPherson extra point is GOOD, Center-48-C.Adomitis, Holder-8-R.Rehkow.
2-E.McPherson kicks 65 yards from CIN 35 to end zone, Touchback to the LV 30.
(7:34) (Shotgun) 15-G.Minshew pass incomplete short right to 89-B.Bowers (57-G.Pratt) [91-T.Hendrickson].
(7:31) (Shotgun) 8-A.Abdullah left tackle to LV 32 for 2 yards (21-M.Hilton).
(6:51) (No Huddle, Shotgun) 15-G.Minshew pass incomplete short left to 16-J.Meyers.
(6:47) 6-A.Cole punts 58 yards to CIN 10, Center-50-J.Bobenmoyer. 16-T.Irwin to CIN 18 for 8 yards (50-J.Bobenmoyer, 25-D.Richardson). PENALTY on LV-45-T.Eichenberg, Ineligible Downfield Kick, 5 yards, enforced at CIN 18.
(6:36) 30-C.Brown right guard to CIN 29 for 6 yards (5-D.Deablo; 41-R.Spillane).
(6:01) (Shotgun) 30-C.Brown right tackle to CIN 28 for -1 yards (41-R.Spillane, 96-J.Laulu).
(5:16) (Shotgun) 9-J.Burrow pass incomplete short right to 1-J.Chase [41-R.Spillane].
Timeout #2 by CIN at 05:16.
(5:12) 8-R.Rehkow punts 52 yards to LV 20, Center-48-C.Adomitis. 19-D.Turner to LV 26 for 6 yards (87-T.Hudson).
(5:02) (Shotgun) 10-D.Ridder pass short right to 89-B.Bowers to LV 27 for 1 yard (55-L.Wilson).
(4:31) (Shotgun) 10-D.Ridder pass incomplete short right to 89-B.Bowers (91-T.Hendrickson) [91-T.Hendrickson].
(4:29) (Shotgun) 10-D.Ridder pass incomplete short right to 11-T.Tucker.
(4:26) (Punt formation) PENALTY on LV-53-A.Gainer, False Start, 5 yards, enforced at LV 27 - No Play.
(4:26) 6-A.Cole punts 62 yards to CIN 16, Center-50-J.Bobenmoyer. 16-T.Irwin to CIN 29 for 13 yards (45-T.Eichenberg, 50-J.Bobenmoyer).
(4:15) (Shotgun) 30-C.Brown right tackle to CIN 35 for 6 yards (41-R.Spillane; 96-J.Laulu).
(3:30) 9-J.Burrow pass incomplete short left to 87-T.Hudson.
(3:26) (Shotgun) 9-J.Burrow pass short middle to 89-D.Sample to CIN 40 for 5 yards (30-D.Holmes).
(2:42) 62-M.Lee reported in as eligible. 30-C.Brown right guard to CIN 43 for 3 yards (95-J.Jenkins; 98-M.Crosby).
(1:57) (Shotgun) 9-J.Burrow sacked at CIN 35 for -8 yards (sack split by 7-T.Moehrig and 95-J.Jenkins).
(1:16) (Shotgun) 9-J.Burrow pass incomplete short middle [98-M.Crosby].
(1:13) 8-R.Rehkow punts 65 yards to end zone, Center-48-C.Adomitis, Touchback. Cincinnati challenged the touchback ruling, and the play was Upheld. The ruling on the field stands. (Timeout #3.)
(1:03) (Shotgun) 10-D.Ridder pass short left to 11-T.Tucker to LV 19 for -1 yards (21-M.Hilton).
(:29) (Shotgun) 22-A.Mattison right guard to LV 20 for 1 yard (21-M.Hilton; 93-M.Jackson).
END QUARTER 3
(15:00) (Shotgun) 10-D.Ridder sacked at LV 15 for -5 yards (91-T.Hendrickson).
(14:20) 6-A.Cole punts 70 yards to CIN 15, Center-50-J.Bobenmoyer. 16-T.Irwin to CIN 20 for 5 yards (53-A.Gainer; 45-T.Eichenberg).
(14:06) (Shotgun) 9-J.Burrow pass short middle to 88-M.Gesicki to CIN 35 for 15 yards (30-D.Holmes).
(13:23) (Shotgun) 9-J.Burrow pass short right intended for 1-J.Chase INTERCEPTED by 18-J.Jones at CIN 29. 18-J.Jones for 29 yards, TOUCHDOWN.
2-D.Carlson extra point is GOOD, Center-50-J.Bobenmoyer, Holder-6-A.Cole. ** Injury Update: LV-75-A.Peat has returned to the game.
2-D.Carlson kicks 63 yards from LV 35 to CIN 2. 19-K.Pryor pushed ob at CIN 26 for 24 yards (34-T.Harper).
(13:12) (Shotgun) 30-C.Brown left guard to CIN 29 for 3 yards (7-T.Moehrig).
(12:35) (Shotgun) 9-J.Burrow pass short left to 30-C.Brown to CIN 33 for 4 yards (20-I.Pola-Mao).
(11:50) (Shotgun) 9-J.Burrow pass incomplete deep right to 80-A.Iosivas (18-J.Jones).
(11:45) 8-R.Rehkow punts 58 yards to LV 9, Center-48-C.Adomitis. 19-D.Turner to LV 33 for 24 yards (45-M.Njongmeta; 27-J.Battle).
(11:32) (Shotgun) 10-D.Ridder pass short right to 8-A.Abdullah to LV 36 for 3 yards (27-J.Battle).
(11:03) (Shotgun) 10-D.Ridder pass short left to 82-R.Keyton to LV 43 for 7 yards (20-D.Turner).
(10:38) (No Huddle, Shotgun) 10-D.Ridder pass short right to 11-T.Tucker to LV 49 for 6 yards (21-M.Hilton).
(10:16) (No Huddle, Shotgun) 8-A.Abdullah left guard to CIN 48 for 3 yards (21-M.Hilton).
(9:52) (No Huddle, Shotgun) 8-A.Abdullah up the middle to CIN 47 for 1 yard (27-J.Battle, 94-S.Hubbard).
(9:23) (Shotgun) 10-D.Ridder pass short middle to 89-B.Bowers to CIN 41 for 6 yards (55-L.Wilson; 94-S.Hubbard) [27-J.Battle].
(8:53) (Shotgun) 10-D.Ridder pass incomplete short left to 11-T.Tucker.
(8:50) (Shotgun) 10-D.Ridder pass short right to 16-J.Meyers to CIN 34 for 7 yards (55-L.Wilson).
(8:20) (No Huddle, Shotgun) 10-D.Ridder sacked at CIN 38 for -4 yards (90-K.Jenkins).
(7:57) (No Huddle, Shotgun) 10-D.Ridder pass short middle to 8-A.Abdullah to CIN 28 for 10 yards (57-G.Pratt, 55-L.Wilson).
(7:19) (Shotgun) 10-D.Ridder sacked at CIN 36 for -8 yards (91-T.Hendrickson).
(6:40) (Shotgun) 10-D.Ridder pass incomplete deep left to 16-J.Meyers [58-J.Ossai]. TURNOVER ON DOWNS.
(6:36) (Shotgun) 30-C.Brown right guard to CIN 41 for 5 yards (45-T.Eichenberg).
(6:33) 62-M.Lee reported in as eligible. 30-C.Brown right tackle to CIN 44 for 3 yards (91-M.Butler; 96-J.Laulu).
Timeout #1 by LV at 06:33.
(6:28) (Shotgun) 9-J.Burrow pass incomplete deep right to 1-J.Chase (30-D.Holmes).
Timeout #2 by LV at 06:28.
(6:24) (Punt formation) PENALTY on LV-43-K.Mauga, Neutral Zone Infraction, 5 yards, enforced at CIN 44 - No Play.
(6:24) (Shotgun) 30-C.Brown right end pushed ob at LV 49 for 2 yards (18-J.Jones).
(5:49) 30-C.Brown right tackle to LV 47 for 2 yards (5-D.Deablo).
(5:45) (Shotgun) 9-J.Burrow pass deep left to 88-M.Gesicki for 47 yards, TOUCHDOWN.
Timeout #3 by LV at 05:45.
2-E.McPherson extra point is GOOD, Center-48-C.Adomitis, Holder-8-R.Rehkow.
2-E.McPherson kicks 65 yards from CIN 35 to end zone, Touchback to the LV 30.
(5:37) (Shotgun) 10-D.Ridder sacked at LV 21 for -9 yards (91-T.Hendrickson). FUMBLES (91-T.Hendrickson) [91-T.Hendrickson], touched at LV 13, RECOVERED by CIN-55-L.Wilson at LV 13.
(5:29) 62-M.Lee reported in as eligible. 30-C.Brown left end to LV 7 for 6 yards (7-T.Moehrig).
(4:50) 30-C.Brown right guard to LV 4 for 3 yards (18-J.Jones).
(4:05) (Shotgun) 9-J.Burrow pass short left to 87-T.Hudson to LV 1 for 3 yards (7-T.Moehrig).
(3:12) 62-M.Lee, 94-S.Hubbard and 73-A.Stueber reported in as eligible. 30-C.Brown up the middle to LV 1 for no gain (91-M.Butler, 56-A.Burney).
(2:25) PENALTY on CIN, Delay of Game, 5 yards, enforced at LV 1 - No Play.
(2:25) 30-C.Brown right guard to LV 4 for 2 yards (69-A.Butler; 49-C.Snowden).
(2:00) 9-J.Burrow pass incomplete short left to 1-J.Chase (0-J.Bennett).
(1:57) (Field Goal formation) PENALTY on CIN, Delay of Game, 5 yards, enforced at LV 4 - No Play.
(1:57) 2-E.McPherson 27 yard field goal is GOOD, Center-48-C.Adomitis, Holder-8-R.Rehkow.
2-E.McPherson kicks 65 yards from CIN 35 to end zone, Touchback to the LV 30.
(1:53) (Shotgun) 10-D.Ridder pass incomplete short right to 82-R.Keyton.
(1:49) (Shotgun) 8-A.Abdullah left guard to LV 36 for 6 yards (45-M.Njongmeta).
(1:29) (No Huddle, Shotgun) 10-D.Ridder pass short left to 16-J.Meyers ran ob at LV 48 for 12 yards (38-D.Ivey).
(1:25) (Shotgun) 10-D.Ridder pass short left to 8-A.Abdullah to LV 49 for 1 yard (45-M.Njongmeta).
(1:00) (No Huddle, Shotgun) 10-D.Ridder pass incomplete deep right to 11-T.Tucker. PENALTY on CIN-28-J.Newton, Defensive Pass Interference, 27 yards, enforced at LV 49 - No Play.
(:55) (Shotgun) 10-D.Ridder scrambles left end ran ob at CIN 22 for 2 yards (49-J.Bachie).
(:48) (Shotgun) 10-D.Ridder pass deep right to 89-B.Bowers for 22 yards, TOUCHDOWN.
2-D.Carlson extra point is GOOD, Center-50-J.Bobenmoyer, Holder-6-A.Cole.
2-D.Carlson kicks 62 yards from LV 35 to CIN 3. 19-K.Pryor to CIN 22 for 19 yards (56-A.Burney).
(:36) 6-J.Browning kneels to CIN 21 for -1 yards.
END GAME"

lv_cin_summary <- "Headline: Burrow throws 5 TD passes as Bengals get the win, 41-24 over Raiders
Summary: The Raiders scored on the first drive of the day, finished with a 1-yard plunge by Zamir White. The Bengals answered with a drive of nearly eight minutes. Brown carried the ball five times for 21 yards and caught three passes for 21 more yards, including a 1-yard touchdown. After the teams traded field goals, Cincinnati’s drive was aided by an unnecessary roughness call on Maxx Crosby, who jumped offside and flattened Burrow. Three plays later, Burrow hit Iosivas for a 10-yard touchdown pass and a 17-10 Bengals lead at the half. The Raiders continues aided Cincinnati drives with penalties, and also made costly mistakes on offense, including when quarterback Gardner Minshew fumbled the ball away in the third, leading to a 10-yard TD catch by Gesicki that put the Bengals up 31-10. After benching QB Gardner Minshew, Desmond Ridder entered the game but could not lead the Raiders to a come back as fumbled the ball away on a strip-sack by Hendrickson in the fourth. He did throw a touchdown to Bowers with 41 seconds remaining, but it was not enough to catch the Bengals.
Notable Performances: Burrow was 27 for 39 for 251 yards, and threw 5 touchdown passes, including 2 to Mike Gesicki, but also had an interception that was returned for a TD. Trey Hendrickson had 4 sacks for the Bengals defense. Gesicki finished with five catches for 100 yards and 2 touchdowns. Minshew finished 10 for 17 for 124 yards and was benched late in the third quarter for Desmond Ridder. Jakobi Meyers had eight catches for 105 yards for Las Vegas.
Injuries: Raiders: OT Kolton Miller and CB Nate Hobbs each left  in the first half. OT Andrus Peat, OG Cody Whitehair, and TE Harrison Bryant all departed in the second half. Bengals: TE Erick All Jr. left in the second quarter."

# Append game log and summary to training dataframe 
lv_cin <- as.data.frame(cbind(lv_cin_log, lv_cin_summary)) %>% rename(game_log = lv_cin_log, game_summary = lv_cin_summary)
training <- rbind(training, lv_cin)

hou_dal_log <- "GAME
17-B.Aubrey kicks 63 yards from DAL 35 to HOU 2. 2-R.Woods to HOU 23 for 21 yards (43-K.Hall).
(14:55) 7-C.Stroud pass short left to 12-N.Collins for 77 yards, TOUCHDOWN NULLIFIED by Penalty. PENALTY on HOU-78-L.Tunsil, Ineligible Downfield Pass, 5 yards, enforced at HOU 23 - No Play.
(14:44) 28-J.Mixon right tackle to HOU 19 for 1 yard (50-E.Kendricks). PENALTY on DAL-58-M.Smith, Defensive Holding, 5 yards, enforced at HOU 19.
(14:26) 7-C.Stroud pass short left to 2-R.Woods ran ob at HOU 31 for 7 yards (7-T.Diggs).
(13:51) (Shotgun) 7-C.Stroud pass incomplete short middle to 3-T.Dell.
(13:47) (Shotgun) 7-C.Stroud pass short right to 86-D.Schultz to HOU 39 for 8 yards (13-D.Overshown).
(13:21) (No Huddle, Shotgun) 7-C.Stroud pass short middle to 8-J.Metchie to DAL 45 for 16 yards (28-M.Hooker).
(12:50) 28-J.Mixon right tackle for 45 yards, TOUCHDOWN.
(Kick formation) PENALTY on HOU, Delay of Game, 5 yards, enforced at DAL 15 - No Play.
15-K.Fairbairn extra point is GOOD, Center-46-J.Weeks, Holder-6-T.Townsend.
15-K.Fairbairn kicks 63 yards from HOU 35 to DAL 2. 9-K.Turpin to DAL 37 for 35 yards (43-N.Hewitt). PENALTY on DAL-24-I.Mukuamu, Offensive Holding, 10 yards, enforced at DAL 28.
(12:36) (Shotgun) 23-R.Dowdle left guard to DAL 21 for 3 yards (39-H.To'oTo'o).
(12:07) (Shotgun) 10-C.Rush pass short right to 88-C.Lamb to DAL 32 for 11 yards (96-D.Autry).
(11:30) (Shotgun) 10-C.Rush pass incomplete short left to 23-R.Dowdle.
(11:25) (Shotgun) 23-R.Dowdle left tackle to DAL 33 for 1 yard (39-H.To'oTo'o).
(10:47) (Shotgun) 10-C.Rush pass incomplete short right to 1-J.Tolbert.
(10:41) (Punt formation) 5-B.Anger pass short middle to 30-J.Thomas to DAL 37 for 4 yards (8-J.Metchie).
(10:36) 7-C.Stroud scrambles left tackle to DAL 34 for 3 yards (50-E.Kendricks).
(9:54) (Shotgun) 7-C.Stroud sacked at DAL 41 for -7 yards (97-O.Odighizuwa).
(9:09) (Shotgun) 7-C.Stroud pass short left to 33-D.Ogunbowale to DAL 30 for 11 yards (24-I.Mukuamu).
(8:32) (No Huddle, Shotgun) 7-C.Stroud pass deep right intended for 12-N.Collins INTERCEPTED by 28-M.Hooker at DAL 12. 28-M.Hooker to DAL 33 for 21 yards (70-J.Scruggs).
(8:22) (Shotgun) 10-C.Rush pass short middle to 87-J.Ferguson to DAL 44 for 11 yards (0-A.Al-Shaair; 39-H.To'oTo'o).
(7:51) 88-C.Lamb right end to HOU 43 for 13 yards (39-H.To'oTo'o).
(7:09) (Shotgun) 23-R.Dowdle up the middle to HOU 45 for -2 yards (39-H.To'oTo'o).
(6:34) (Shotgun) 23-R.Dowdle up the middle to HOU 41 for 4 yards (0-A.Al-Shaair).
(5:58) (No Huddle, Shotgun) 10-C.Rush pass short left intended for 88-C.Lamb INTERCEPTED by 24-D.Stingley at HOU 30. 24-D.Stingley pushed ob at HOU 37 for 7 yards (87-J.Ferguson).
(5:49) 31-D.Pierce right tackle to HOU 39 for 2 yards (97-O.Odighizuwa).
(5:08) (Shotgun) 7-C.Stroud pass incomplete short left to 86-D.Schultz.
(5:04) (Shotgun) 7-C.Stroud pass incomplete short right. PENALTY on DAL-11-M.Parsons, Defensive Offside, 5 yards, enforced at HOU 39 - No Play.
(4:59) (Shotgun) 7-C.Stroud pass short middle to 12-N.Collins to DAL 45 for 11 yards (7-T.Diggs).
(4:20) (Shotgun) 7-C.Stroud pass deep left to 3-T.Dell to DAL 19 for 26 yards (31-J.Butler). Penalty on DAL-7-T.Diggs, Illegal Contact, declined.
(3:57) 7-C.Stroud pass short left to 12-N.Collins to DAL 16 for 3 yards (99-C.Golston).
(3:18) 28-J.Mixon right tackle to DAL 11 for 5 yards (50-E.Kendricks; 28-M.Hooker).
(2:37) 28-J.Mixon left tackle to DAL 10 for 1 yard (6-Do.Wilson).
(1:54) 28-J.Mixon right end pushed ob at DAL 1 for 9 yards (7-T.Diggs).
(1:13) 74-Z.Thomas reported in as eligible. 28-J.Mixon left tackle for 1 yard, TOUCHDOWN. The Replay Official reviewed the runner broke the plane ruling, and the play was REVERSED. 74-Z.Thomas reported in as eligible. 28-J.Mixon left tackle to DAL 1 for no gain (28-M.Hooker; 11-M.Parsons).
(:54) 28-J.Mixon right end for 1 yard, TOUCHDOWN.
15-K.Fairbairn extra point is GOOD, Center-46-J.Weeks, Holder-6-T.Townsend.
15-K.Fairbairn kicks 59 yards from HOU 35 to DAL 6. 9-K.Turpin pushed ob at DAL 36 for 30 yards (21-C.Bullock).
(:46) (Shotgun) 10-C.Rush pass short right to 88-C.Lamb ran ob at DAL 39 for 3 yards.
(:15) 23-R.Dowdle left guard to DAL 41 for 2 yards (39-H.To'oTo'o).
END QUARTER 1
(15:00) (Shotgun) PENALTY on DAL-88-C.Lamb, False Start, 5 yards, enforced at DAL 41 - No Play.
(15:00) (Shotgun) 10-C.Rush pass short right to 9-K.Turpin for 64 yards, TOUCHDOWN. Penalty on HOU-23-E.Murray, Illegal Use of Hands, declined.
17-B.Aubrey extra point is GOOD, Center-44-T.Sieg, Holder-5-B.Anger.
17-B.Aubrey kicks 63 yards from DAL 35 to HOU 2. 31-D.Pierce MUFFS catch, touched at HOU 2, and recovers at HOU 3. 31-D.Pierce to HOU 8 for 5 yards (41-N.Vigil; 57-B.Johnson). DAL-14-M.Bell was injured during the play.
(14:43) (Shotgun) 28-J.Mixon up the middle to HOU 17 for 9 yards (7-T.Diggs).
(14:15) (No Huddle) PENALTY on HOU-28-J.Mixon, False Start, 4 yards, enforced at HOU 17 - No Play.
(13:55) (Shotgun) 7-C.Stroud pass short right to 2-R.Woods to HOU 19 for 6 yards (35-M.Liufau).
(13:12) (Shotgun) 7-C.Stroud pass short right to 86-D.Schultz to HOU 31 for 12 yards (31-J.Butler).
(12:34) 28-J.Mixon left guard to HOU 32 for 1 yard (92-C.Watkins; 6-Do.Wilson).
(11:50) 7-C.Stroud pass short left to 28-J.Mixon to DAL 31 for 37 yards (50-E.Kendricks). PENALTY on DAL-13-D.Overshown, Low Block, 15 yards, enforced at DAL 31.
(11:21) 7-C.Stroud pass short left to 87-C.Stover to DAL 13 for 3 yards (13-D.Overshown).
(10:39) 3-T.Dell left end to DAL 9 for 4 yards (50-E.Kendricks).
(9:52) (Shotgun) 28-J.Mixon right end to DAL 10 for -1 yards (28-M.Hooker, 24-I.Mukuamu).
(9:13) (Field Goal formation) PENALTY on HOU, Delay of Game, 5 yards, enforced at DAL 10 - No Play.
Timeout #1 by DAL at 09:13.
(9:13) 15-K.Fairbairn 33 yard field goal is GOOD, Center-46-J.Weeks, Holder-6-T.Townsend.
15-K.Fairbairn kicks 65 yards from HOU 35 to end zone, Touchback to the DAL 30. ** Injury Update: DAL-57-B.Johnson has returned to the game.
(9:10) 10-C.Rush pass short left to 88-C.Lamb to DAL 43 for 13 yards (96-D.Autry; 0-A.Al-Shaair). HOU-96-D.Autry was injured during the play.
(8:42) (Shotgun) 10-C.Rush pass short middle to 86-L.Schoonmaker to DAL 49 for 6 yards (0-A.Al-Shaair).
(8:08) 23-R.Dowdle right guard to DAL 47 for -2 yards (55-D.Hunter).
(7:31) (Shotgun) 10-C.Rush pass short left to 89-B.Spann-Ford to HOU 36 for 17 yards (0-A.Al-Shaair).
(6:56) (Shotgun) 10-C.Rush pass incomplete short right to 89-B.Spann-Ford (21-C.Bullock).
(6:51) (Shotgun) 10-C.Rush pass short right to 23-R.Dowdle to HOU 35 for 1 yard (5-J.Pitre).
(6:04) (Shotgun) 10-C.Rush pass incomplete short middle to 1-J.Tolbert (96-D.Autry). ** Injury Update: HOU-96-D.Autry has returned to the game.
(6:00) 17-B.Aubrey 53 yard field goal is GOOD, Center-44-T.Sieg, Holder-5-B.Anger.
17-B.Aubrey kicks 65 yards from DAL 35 to end zone, Touchback to the HOU 30.
(5:55) 7-C.Stroud pass short left to 87-C.Stover to HOU 42 for 12 yards (35-M.Liufau; 99-C.Golston). Penalty on DAL-11-M.Parsons, Defensive Offside, declined.
(5:29) (Shotgun) 7-C.Stroud pass incomplete short left to 28-J.Mixon (6-Do.Wilson).
(5:25) 28-J.Mixon right guard to HOU 42 for no gain (50-E.Kendricks).
(4:41) (Shotgun) 7-C.Stroud pass short left to 12-N.Collins to HOU 49 for 7 yards (13-D.Overshown; 28-M.Hooker).
(4:03) 6-T.Townsend punts 51 yards to end zone, Center-46-J.Weeks, Touchback.
(3:55) (Shotgun) 23-R.Dowdle right tackle to DAL 29 for 9 yards (92-D.Horton; 97-M.Edwards).
(3:21) (Shotgun) 23-R.Dowdle left guard to DAL 32 for 3 yards (92-D.Horton; 5-J.Pitre).
(2:50) (Shotgun) 10-C.Rush pass short left to 86-L.Schoonmaker to DAL 40 for 8 yards (39-H.To'oTo'o).
(2:16) (Shotgun) 10-C.Rush pass short left to 23-R.Dowdle pushed ob at DAL 45 for 5 yards (0-A.Al-Shaair).
(2:00) (Shotgun) 10-C.Rush pass incomplete deep left to 80-R.Flournoy. PENALTY on HOU-32-K.Hollman, Illegal Contact, 5 yards, enforced at DAL 45 - No Play.
(1:55) (Shotgun) 10-C.Rush pass incomplete short left.
(1:51) (Shotgun) 10-C.Rush pass incomplete short middle to 89-B.Spann-Ford. PENALTY on HOU-0-A.Al-Shaair, Illegal Contact, 5 yards, enforced at 50 - No Play.
(1:47) (Shotgun) 10-C.Rush pass incomplete short middle to 23-R.Dowdle (72-T.Togiai).
(1:42) (Shotgun) 10-C.Rush pass short right to 88-C.Lamb pushed ob at HOU 40 for 5 yards (5-J.Pitre).
(1:34) (Shotgun) 10-C.Rush pass short middle to 80-R.Flournoy to HOU 25 for 15 yards (32-K.Hollman).
Timeout #1 by HOU at 01:34.
(1:14) (No Huddle, Shotgun) 10-C.Rush pass short right to 86-L.Schoonmaker ran ob at HOU 24 for 1 yard.
(1:10) (Shotgun) 10-C.Rush pass incomplete short right to 23-R.Dowdle.
(1:06) (Shotgun) 10-C.Rush scrambles up the middle to HOU 22 for 2 yards (98-T.Settle).
(1:00) 17-B.Aubrey 40 yard field goal is No Good, Hit Right Upright, Center-44-T.Sieg, Holder-5-B.Anger.
Timeout #2 by HOU at 01:00.
(:56) (Shotgun) 7-C.Stroud pass incomplete short left to 12-N.Collins (7-T.Diggs).
(:52) (Shotgun) 7-C.Stroud pass incomplete short right to 3-T.Dell.
(:48) (Shotgun) 7-C.Stroud pass incomplete short middle.
(:45) 6-T.Townsend punts 52 yards to DAL 18, Center-46-J.Weeks, fair catch by 9-K.Turpin.
(:37) (Shotgun) 10-C.Rush pass short left to 15-E.Elliott to DAL 23 for 5 yards (45-D.White).
(:30) (Shotgun) 10-C.Rush pass short right to 89-B.Spann-Ford pushed ob at DAL 30 for 7 yards (24-D.Stingley).
Timeout #2 by DAL at 00:30.
(:21) (Shotgun) 10-C.Rush pass incomplete deep right to 80-R.Flournoy (32-K.Hollman).
(:15) (Shotgun) 10-C.Rush pass incomplete deep middle to 1-J.Tolbert (24-D.Stingley).
(:09) (Shotgun) 10-C.Rush pass incomplete short right to 81-J.Mingo.
(:05) (Shotgun) 10-C.Rush pass incomplete deep right.
Timeout #3 by DAL at 00:05.
END QUARTER 2
15-K.Fairbairn kicks 65 yards from HOU 35 to end zone, Touchback to the DAL 30.
(15:00) 23-R.Dowdle left tackle to DAL 31 for 1 yard (96-D.Autry, 32-K.Hollman).
(14:26) (Shotgun) 10-C.Rush sacked at DAL 27 for -4 yards (55-D.Hunter).
(13:42) (Shotgun) 10-C.Rush pass short right to 88-C.Lamb to DAL 35 for 8 yards (24-D.Stingley).
(13:00) 5-B.Anger punts 40 yards to HOU 25, Center-44-T.Sieg, fair catch by 2-R.Woods.
(12:52) (Shotgun) 7-C.Stroud pass short left to 3-T.Dell to HOU 29 for 4 yards (24-I.Mukuamu; 28-M.Hooker).
(12:16) (Shotgun) 7-C.Stroud pass short left to 3-T.Dell to HOU 41 for 12 yards (6-Do.Wilson).
(11:39) 7-C.Stroud scrambles right end ran ob at HOU 44 for 3 yards (13-D.Overshown).
(11:00) (Shotgun) 7-C.Stroud pass short right to 8-J.Metchie pushed ob at DAL 49 for 7 yards (31-J.Butler).
(10:21) (Shotgun) 28-J.Mixon left end to DAL 45 for 4 yards (58-M.Smith).
(9:40) (Shotgun) 7-C.Stroud pass deep middle to 12-N.Collins to DAL 12 for 33 yards (31-J.Butler).
(8:54) (Shotgun) 7-C.Stroud pass short middle to 86-D.Schultz to DAL 10 for 2 yards (99-C.Golston; 92-C.Watkins).
(8:14) (Shotgun) 28-J.Mixon left end to DAL 5 for 5 yards (7-T.Diggs). PENALTY on HOU-70-J.Scruggs, Offensive Holding, 10 yards, enforced at DAL 10 - No Play.
(7:51) (Shotgun) 7-C.Stroud pass short right to 8-J.Metchie pushed ob at DAL 10 for 10 yards (7-T.Diggs).
(7:11) (Shotgun) 7-C.Stroud pass incomplete short right to 28-J.Mixon.
(7:07) 15-K.Fairbairn 29 yard field goal is GOOD, Center-46-J.Weeks, Holder-6-T.Townsend.
15-K.Fairbairn kicks 65 yards from HOU 35 to end zone, Touchback to the DAL 30.
(7:05) (Shotgun) 10-C.Rush pass short middle to 88-C.Lamb pushed ob at DAL 41 for 11 yards (32-K.Hollman).
(6:32) (Shotgun) 10-C.Rush pass incomplete short right to 42-D.Vaughn.
(6:28) (Shotgun) 10-C.Rush pass short middle to 86-L.Schoonmaker to HOU 46 for 13 yards (21-C.Bullock).
(5:53) (Shotgun) 42-D.Vaughn right tackle to HOU 43 for 3 yards (5-J.Pitre, 45-D.White).
(5:20) (Shotgun) 10-C.Rush pass short right to 89-B.Spann-Ford to HOU 36 for 7 yards (32-K.Hollman).
(4:42) 10-C.Rush pass incomplete short right to 88-C.Lamb.
(4:37) 10-C.Rush pass incomplete deep left to 88-C.Lamb (24-D.Stingley). PENALTY on DAL-88-C.Lamb, Offensive Pass Interference, 10 yards, enforced at HOU 36 - No Play.
(4:31) (Shotgun) 10-C.Rush pass incomplete short right to 86-L.Schoonmaker.
(4:26) (Shotgun) 10-C.Rush pass incomplete deep left to 88-C.Lamb.
(4:21) 17-B.Aubrey 64 yard field goal is GOOD, NULLIFIED by Penalty, Center-44-T.Sieg, Holder-5-B.Anger. PENALTY on HOU-95-D.Barnett, Unnecessary Roughness, 15 yards, enforced at HOU 46 - No Play.
(4:16) (Shotgun) 10-C.Rush pass short right to 1-J.Tolbert pushed ob at HOU 16 for 15 yards (20-J.Ward).
(3:35) (Shotgun) 10-C.Rush FUMBLES (Aborted) at HOU 21, and recovers at HOU 21.
(2:54) (Shotgun) 10-C.Rush pass incomplete short middle to 86-L.Schoonmaker (21-C.Bullock).
(2:49) (Shotgun) 10-C.Rush pass short left to 88-C.Lamb ran ob at HOU 8 for 13 yards.
(2:18) (Shotgun) 10-C.Rush pass incomplete short right to 81-J.Mingo. Penalty on DAL-86-L.Schoonmaker, Offensive Holding, declined. TURNOVER ON DOWNS.
(2:13) 28-J.Mixon left tackle to HOU 13 for 5 yards (6-Do.Wilson; 50-E.Kendricks).
(1:28) 28-J.Mixon left guard to HOU 13 for no gain (50-E.Kendricks; 58-M.Smith).
(:46) (Shotgun) 7-C.Stroud pass short right to 3-T.Dell to HOU 25 for 12 yards (7-T.Diggs).
(:22) (No Huddle, Shotgun) 7-C.Stroud pass short right to 86-D.Schultz pushed ob at HOU 32 for 7 yards (30-J.Thomas).
END QUARTER 3
(15:00) 28-J.Mixon up the middle to HOU 34 for 2 yards (24-I.Mukuamu).
(14:41) (No Huddle) 7-C.Stroud pass incomplete short right to 3-T.Dell (31-J.Butler).
(14:37) 6-T.Townsend punts 59 yards to DAL 7, Center-46-J.Weeks, downed by HOU-39-H.To'oTo'o.
(14:26) (Shotgun) 10-C.Rush pass deep left to 88-C.Lamb to DAL 36 for 29 yards (32-K.Hollman).
(13:44) 10-C.Rush pass short left to 85-P.Fant to DAL 38 for 2 yards (45-D.White). PENALTY on DAL-88-C.Lamb, Illegal Shift, 5 yards, enforced at DAL 36 - No Play.
(13:19) (Shotgun) 23-R.Dowdle left tackle to DAL 40 for 9 yards (45-D.White, 93-K.Hinish).
(12:44) (Shotgun) 10-C.Rush sacked at DAL 32 for -8 yards (95-D.Barnett). FUMBLES (95-D.Barnett), recovered by DAL-60-T.Guyton at DAL 33. 60-T.Guyton to DAL 32 for -1 yards (5-J.Pitre; 92-D.Horton). FUMBLES (5-J.Pitre), RECOVERED by HOU-95-D.Barnett at DAL 28. 95-D.Barnett for 28 yards, TOUCHDOWN.
15-K.Fairbairn extra point is GOOD, Center-46-J.Weeks, Holder-6-T.Townsend.
15-K.Fairbairn kicks 65 yards from HOU 35 to end zone, Touchback to the DAL 30.
(12:31) (Shotgun) 10-C.Rush pass short right to 86-L.Schoonmaker to DAL 34 for 4 yards (0-A.Al-Shaair; 5-J.Pitre). PENALTY on HOU-5-J.Pitre, Unnecessary Roughness, 15 yards, enforced at DAL 34.
(12:10) (Shotgun) 10-C.Rush pass incomplete short middle to 86-L.Schoonmaker (55-D.Hunter).
(12:05) (Shotgun) 10-C.Rush pass incomplete deep left to 86-L.Schoonmaker (23-E.Murray) [55-D.Hunter].
(12:00) (Shotgun) 10-C.Rush pass incomplete short middle to 88-C.Lamb.
(11:56) (Shotgun) 10-C.Rush pass deep middle to 80-R.Flournoy to HOU 31 for 20 yards (23-E.Murray). PENALTY on DAL-76-A.Richards, Offensive Holding, 10 yards, enforced at DAL 49 - No Play.
(11:33) 5-B.Anger punts 42 yards to HOU 19, Center-44-T.Sieg, fair catch by 2-R.Woods.
(11:26) 7-C.Stroud scrambles left end ran ob at HOU 39 for 20 yards (28-M.Hooker).
(10:45) 7-C.Stroud pass deep middle to 12-N.Collins to DAL 41 for 20 yards (7-T.Diggs). Dallas challenged the pass completion ruling, and the play was REVERSED. 7-C.Stroud pass incomplete deep middle to 12-N.Collins.
(10:39) 7-C.Stroud pass short left to 86-D.Schultz to HOU 43 for 4 yards (13-D.Overshown).
(9:56) (Shotgun) 7-C.Stroud pass incomplete short middle to 86-D.Schultz (30-J.Thomas).
(9:52) 6-T.Townsend punts 48 yards to DAL 9, Center-46-J.Weeks, fair catch by 9-K.Turpin.
(9:45) (Shotgun) 10-C.Rush pass short right to 1-J.Tolbert to DAL 15 for 6 yards (32-K.Hollman).
(9:26) (No Huddle, Shotgun) 10-C.Rush sacked at DAL 6 for -9 yards (98-T.Settle).
(8:48) (Shotgun) 10-C.Rush pass deep middle to 86-L.Schoonmaker to DAL 30 for 24 yards (5-J.Pitre; 20-J.Ward). DAL-70-Z.Martin was injured during the play.
(8:14) (Shotgun) 10-C.Rush pass short middle to 15-E.Elliott pushed ob at DAL 39 for 9 yards (5-J.Pitre) [97-M.Edwards].
(7:49) (No Huddle, Shotgun) 15-E.Elliott left tackle to DAL 47 for 8 yards (32-K.Hollman). DAL-73-T.Smith was injured during the play.
(7:27) (Shotgun) 10-C.Rush pass incomplete short left to 81-J.Mingo.
(7:24) (Shotgun) 10-C.Rush pass short left to 15-E.Elliott to DAL 49 for 2 yards (45-D.White).
(6:50) (No Huddle, Shotgun) 10-C.Rush sacked at DAL 41 for -8 yards (55-D.Hunter).
(6:12) (Shotgun) 10-C.Rush sacked at DAL 35 for -6 yards (96-D.Autry).
(6:06) 28-J.Mixon right tackle to DAL 32 for 3 yards (58-M.Smith).
(5:27) 28-J.Mixon left end to DAL 15 for 17 yards (30-J.Thomas; 6-Do.Wilson).
(4:41) 28-J.Mixon left tackle to DAL 14 for 1 yard (35-M.Liufau; 58-M.Smith).
(3:57) 28-J.Mixon left guard to DAL 9 for 5 yards (50-E.Kendricks; 28-M.Hooker). Penalty on HOU-78-L.Tunsil, Unnecessary Roughness, offsetting. Penalty on DAL-13-D.Overshown, Unnecessary Roughness, offsetting. Penalty on DAL-35-M.Liufau, Unnecessary Roughness, offsetting. Penalty on DAL-58-M.Smith, Unnecessary Roughness, offsetting. Penalty on DAL-7-T.Diggs, Unnecessary Roughness, offsetting.
(3:25) 7-C.Stroud pass short right to 28-J.Mixon pushed ob at DAL 2 for 7 yards (31-J.Butler).
(3:19) PENALTY on DAL, Defensive Too Many Men on Field, 1 yard, enforced at DAL 2 - No Play.
(3:19) 74-Z.Thomas reported in as eligible. 28-J.Mixon right guard for 1 yard, TOUCHDOWN.
15-K.Fairbairn extra point is GOOD, Center-46-J.Weeks, Holder-6-T.Townsend.
15-K.Fairbairn kicks 65 yards from HOU 35 to end zone, Touchback to the DAL 30.
(3:16) (Shotgun) 42-D.Vaughn up the middle to DAL 31 for 1 yard (5-J.Pitre; 52-J.Hughes).
(2:44) (Shotgun) 10-C.Rush pass short middle to 42-D.Vaughn to DAL 35 for 4 yards (97-M.Edwards).
(2:10) (Shotgun) 10-C.Rush pass short left to 9-K.Turpin to DAL 41 for 6 yards (11-J.Okudah).
(2:00) (Shotgun) 10-C.Rush pass short left to 80-R.Flournoy to DAL 45 for 4 yards (11-J.Okudah).
(1:35) (No Huddle, Shotgun) 10-C.Rush pass short right to 89-B.Spann-Ford to HOU 44 for 11 yards (13-D.Phillips; 35-J.Hansen).
(1:05) (No Huddle, Shotgun) 42-D.Vaughn left guard to HOU 42 for 2 yards (43-N.Hewitt).
(:37) (No Huddle, Shotgun) 10-C.Rush pass short right to 9-K.Turpin to HOU 26 for 16 yards (35-J.Hansen).
(:15) (No Huddle, Shotgun) 10-C.Rush pass incomplete deep right to 81-J.Mingo (32-K.Hollman).
(:09) (Shotgun) 42-D.Vaughn left guard to HOU 19 for 7 yards (35-J.Hansen).
END GAME"

hou_dal_summary <- "Headline: Texans never trail while handing Cowboys a 34-10 loss.
Summary: Houston’s first possession ended with a touchdown on Mixon's 45-yard sprint up the middle, and soon after, he ran wide for a 1-yard score to create 14-0 lead. The Cowboys were down 10 early in the fourth quarter when Barnett got the ball out of Rush's hand, with the help of Jalen Pitre, and Barnett got the score to extend Houston’s lead. Earlier, the Cowboys appeared to have pulled within a touchdown on a 64-yard field goal from Brandon Aubrey, but this play was then called back, and while the Cowboys chose to continue the drive, an incomplete pass on fourth down resulted in Dallas scoring no points on that possession. 
Notable Performances: Mixon had 109 yards rushing and 3 touchdowns. Stroud threw for 257 yards and 1 interception. Rush was 32 of 55 for 354 yards with a touchdown and an interception. Turpin had three catches for 86 yards and one touchdown.
Injuries: Cowboys DB Markquese Bell left in the second quarter."

# Append game log and summary to training dataframe 
hou_dal <- as.data.frame(cbind(hou_dal_log, hou_dal_summary)) %>% rename(game_log = hou_dal_log, game_summary = hou_dal_summary)
training <- rbind(training, hou_dal)

den_bal_log <- "GAME
9-J.Tucker kicks 65 yards from BAL 35 to end zone, Touchback to the DEN 30.
(15:00) 38-J.McLaughlin right end to DEN 31 for 1 yard (32-M.Williams).
(14:35) (No Huddle) 10-B.Nix pass short right intended for 84-L.Humphrey INTERCEPTED by 29-A.Washington at DEN 37. 29-A.Washington to DEN 36 for 1 yard (84-L.Humphrey).
(14:30) 8-L.Jackson pass short right to 7-R.Bateman to DEN 35 for 1 yard (21-R.Moss; 55-C.Barton).
(13:51) 22-D.Henry left end to DEN 31 for 4 yards (0-J.Cooper, 98-J.Franklin-Myers).
(13:06) (Shotgun) 8-L.Jackson sacked at DEN 42 for -11 yards (98-J.Franklin-Myers).
(12:20) 11-J.Stout punts 40 yards to DEN 2, Center-46-N.Moore, downed by BAL-16-T.Wallace.
(12:12) 79-M.Peart reported in as eligible. 33-J.Williams right guard to DEN 4 for 2 yards (14-K.Hamilton; 96-B.Washington).
(11:36) (Shotgun) 10-B.Nix pass short right to 82-A.Trautman pushed ob at DEN 8 for 4 yards (44-M.Humphrey).
(10:56) (Shotgun) 10-B.Nix pass short left to 17-D.Vele to DEN 13 for 5 yards (10-A.Maulet).
(10:15) (Shotgun) 10-B.Nix pass short left to 38-J.McLaughlin pushed ob at DEN 19 for 6 yards (99-O.Oweh).
(9:43) 33-J.Williams up the middle to DEN 25 for 6 yards (23-T.Simpson; 93-C.Wormley).
(9:06) (Shotgun) 10-B.Nix pass incomplete short right. PENALTY on DEN-16-T.Franklin, Offensive Pass Interference, 10 yards, enforced at DEN 25 - No Play.
(8:57) 33-J.Williams right guard to DEN 21 for 6 yards (14-K.Hamilton).
(8:34) (No Huddle, Shotgun) 10-B.Nix pass deep left to 14-C.Sutton to DEN 47 for 26 yards (29-A.Washington).
(7:49) 38-J.McLaughlin right guard to 50 for 3 yards (99-O.Oweh).
(7:23) (No Huddle, Shotgun) 10-B.Nix pass short middle to 84-L.Humphrey to BAL 44 for 6 yards (23-T.Simpson).
(6:59) (No Huddle) 10-B.Nix up the middle to BAL 44 for no gain (53-K.Van Noy; 99-O.Oweh).
(6:21) 79-M.Peart reported in as eligible. 33-J.Williams right end to BAL 43 for 1 yard (21-B.Stephens; 0-R.Smith). Baltimore challenged the first down ruling, and the play was REVERSED. 79-M.Peart reported in as eligible. 33-J.Williams right end to BAL 44 for no gain (21-B.Stephens; 0-R.Smith).
(6:17) 22-D.Henry left guard to BAL 44 for 1 yard (15-N.Bonitto).
(5:38) (Shotgun) 8-L.Jackson pass short left to 43-J.Hill ran ob at DEN 41 for 15 yards (26-D.Key). PENALTY on BAL-65-P.Mekari, Offensive Holding, 10 yards, enforced at DEN 49.
(5:12) (Shotgun) 8-L.Jackson pass deep left to 15-N.Agholor to DEN 30 for 29 yards (29-J.McMillian).
(4:26) 22-D.Henry right guard to DEN 29 for 1 yard (5-B.Browning; 55-C.Barton).
(3:44) (Shotgun) 8-L.Jackson pass short left to 7-R.Bateman to DEN 14 for 15 yards (26-D.Key).
(3:07) 22-D.Henry right end to DEN 7 for 7 yards (2-P.Surtain; 55-C.Barton).
(2:23) 22-D.Henry right guard for 7 yards, TOUCHDOWN.
9-J.Tucker extra point is GOOD, Center-46-N.Moore, Holder-11-J.Stout.
9-J.Tucker kicks 65 yards from BAL 35 to DEN 0. 1-T.Smith to DEN 23 for 23 yards (28-S.Kane).
(2:13) (Shotgun) 33-J.Williams right guard to DEN 27 for 4 yards (23-T.Simpson).
(1:46) (No Huddle, Shotgun) 10-B.Nix pass incomplete short left to 16-T.Franklin (14-K.Hamilton).
(1:43) (No Huddle, Shotgun) 10-B.Nix pass short middle to 33-J.Williams to BAL 39 for 34 yards (10-A.Maulet).
(1:11) (No Huddle, Shotgun) 10-B.Nix sacked at BAL 39 for 0 yards (95-T.Robinson).
(:44) (No Huddle, Shotgun) 33-J.Williams left guard to BAL 38 for 1 yard (53-K.Van Noy; 23-T.Simpson).
(:02) (Shotgun) 10-B.Nix pass short right to 38-J.McLaughlin pushed ob at BAL 33 for 5 yards (14-K.Hamilton).
END QUARTER 1
(15:00) (Shotgun) 10-B.Nix pass incomplete deep left to 16-T.Franklin.
(14:55) 8-L.Jackson pass deep middle to 4-Z.Flowers to DEN 39 for 28 yards (26-D.Key). PENALTY on DEN-26-D.Key, Face Mask, 15 yards, enforced at DEN 39.
(14:25) 8-L.Jackson pass incomplete short right. PENALTY on DEN-2-P.Surtain, Defensive Holding, 5 yards, enforced at DEN 24 - No Play.
(14:15) 22-D.Henry right end to DEN 16 for 3 yards (93-D.Jones; 0-J.Cooper).
(13:33) (Shotgun) 8-L.Jackson up the middle to DEN 24 for -8 yards (15-N.Bonitto).
(12:50) (Shotgun) 8-L.Jackson pass short middle to 7-R.Bateman to DEN 15 for 9 yards (21-R.Moss).
(12:07) 9-J.Tucker 33 yard field goal is GOOD, Center-46-N.Moore, Holder-11-J.Stout.
9-J.Tucker kicks 65 yards from BAL 35 to end zone, Touchback to the DEN 30.
(12:04) (Shotgun) 38-J.McLaughlin right guard to DEN 32 for 2 yards (92-N.Madubuike).
(11:22) (Shotgun) 10-B.Nix pass short left to 33-J.Williams to DEN 40 for 8 yards (0-R.Smith, 21-B.Stephens).
(10:38) 79-M.Peart reported in as eligible. 10-B.Nix pass short left to 16-T.Franklin to BAL 41 for 19 yards (21-B.Stephens).
(9:59) 33-J.Williams left tackle to BAL 37 for 4 yards (14-K.Hamilton).
(9:19) (Shotgun) 38-J.McLaughlin left end to BAL 36 for 1 yard (23-T.Simpson).
(8:54) (No Huddle, Shotgun) 10-B.Nix scrambles up the middle to BAL 21 for 15 yards (32-M.Williams).
(8:27) (No Huddle, Shotgun) 10-B.Nix pass short left to 14-C.Sutton to BAL 11 for 10 yards (21-B.Stephens).
(8:02) (No Huddle, Shotgun) 10-B.Nix pass incomplete short left to 14-C.Sutton. PENALTY on BAL-21-B.Stephens, Defensive Pass Interference, 10 yards, enforced at BAL 11 - No Play.
(7:58) 79-M.Peart reported in as eligible. 20-M.Burton right tackle to BAL 2 for -1 yards (23-T.Simpson, 95-T.Robinson).
(7:32) (No Huddle) 10-B.Nix pass incomplete short right [95-T.Robinson].
(7:26) 10-B.Nix pass incomplete short left to 84-L.Humphrey.
(7:21) (Shotgun) 14-C.Sutton pass short right to 10-B.Nix for 2 yards, TOUCHDOWN.
3-W.Lutz extra point is GOOD, Center-48-M.Fraboni, Holder-9-R.Dixon.
3-W.Lutz kicks 58 yards from DEN 35 to BAL 7. 38-C.Collier to BAL 37 for 30 yards (40-J.Strnad; 45-N.Adkins).
(7:09) 8-L.Jackson pass deep left to 4-Z.Flowers to DEN 40 for 23 yards (21-R.Moss).
(6:31) 22-D.Henry right end to DEN 35 for 5 yards (12-K.Alexander, 97-M.Roach).
(5:47) (Shotgun) 22-D.Henry left end to DEN 34 for 1 yard (29-J.McMillian).
(5:15) (Shotgun) 8-L.Jackson pass deep left to 43-J.Hill to DEN 10 for 24 yards (52-J.Elliss).
(4:38) 22-D.Henry left end to DEN 7 for 3 yards (93-D.Jones).
(3:59) (Shotgun) 8-L.Jackson pass incomplete short left to 4-Z.Flowers.
(3:54) (Shotgun) 8-L.Jackson pass short right to 4-Z.Flowers for 7 yards, TOUCHDOWN.
9-J.Tucker extra point is GOOD, Center-46-N.Moore, Holder-11-J.Stout.
9-J.Tucker kicks 65 yards from BAL 35 to end zone, Touchback to the DEN 30.
(3:47) (Shotgun) 10-B.Nix pass incomplete short left to 17-D.Vele (23-T.Simpson).
(3:41) (No Huddle, Shotgun) 10-B.Nix pass incomplete short left to 33-J.Williams (96-B.Washington).
(3:37) (Shotgun) 10-B.Nix pass deep left to 14-C.Sutton to BAL 37 for 33 yards (21-B.Stephens).
(3:03) (No Huddle, Shotgun) 33-J.Williams right guard to BAL 35 for 2 yards (0-R.Smith).
(2:21) 10-B.Nix scrambles right end to BAL 23 for 12 yards (23-T.Simpson).
(2:00) (Shotgun) 10-B.Nix pass short right to 19-M.Mims to BAL 19 for 4 yards (14-K.Hamilton; 96-B.Washington).
(1:23) 33-J.Williams up the middle to BAL 12 for 7 yards (10-A.Maulet).
(1:20) (Shotgun) 38-J.McLaughlin left end pushed ob at BAL 9 for 3 yards (14-K.Hamilton).
Timeout #1 by BAL at 01:20.
(1:14) 79-M.Peart reported in as eligible. 20-M.Burton right guard to BAL 9 for no gain (14-K.Hamilton).
(1:10) (Shotgun) 10-B.Nix scrambles left end for 9 yards, TOUCHDOWN NULLIFIED by Penalty. PENALTY on DEN-72-G.Bolles, Offensive Holding, 10 yards, enforced at BAL 9 - No Play.
Timeout #2 by BAL at 01:10.
(1:03) (Shotgun) 10-B.Nix pass incomplete deep left to 16-T.Franklin. Penalty on DEN, Illegal Formation, declined.
(:58) 3-W.Lutz 37 yard field goal is GOOD, Center-48-M.Fraboni, Holder-9-R.Dixon.
3-W.Lutz kicks 65 yards from DEN 35 to end zone, Touchback to the BAL 30.
(:54) (Shotgun) 8-L.Jackson pass short left to 43-J.Hill to BAL 42 for 12 yards (26-D.Key).
(:35) (No Huddle, Shotgun) 8-L.Jackson pass incomplete short right [99-Z.Allen]. PENALTY on DEN-21-R.Moss, Defensive Holding, 5 yards, enforced at BAL 42 - No Play.
(:27) (Shotgun) 8-L.Jackson pass deep middle to 4-Z.Flowers for 53 yards, TOUCHDOWN.
9-J.Tucker extra point is GOOD, Center-46-N.Moore, Holder-11-J.Stout.
9-J.Tucker kicks 64 yards from BAL 35 to DEN 1. 1-T.Smith to DEN 32 for 31 yards (49-C.Board; 28-S.Kane).
(:11) 10-B.Nix kneels to DEN 31 for -1 yards.
END QUARTER 2
3-W.Lutz kicks 65 yards from DEN 35 to end zone, Touchback to the BAL 30.
(15:00) 22-D.Henry left end to BAL 31 for 1 yard (98-J.Franklin-Myers).
(14:21) (Shotgun) 8-L.Jackson pass short right to 89-M.Andrews to BAL 41 for 10 yards (29-J.McMillian, 55-C.Barton).
(13:41) 22-D.Henry left guard to DEN 47 for 12 yards (26-D.Key; 21-R.Moss).
(13:01) (Shotgun) 8-L.Jackson to BAL 46 for -7 yards. FUMBLES, and recovers at BAL 46. 8-L.Jackson pass incomplete short middle to 80-I.Likely (40-J.Strnad).
(12:57) (Shotgun) 8-L.Jackson pass incomplete short right to 7-R.Bateman.
(12:49) (Shotgun) 8-L.Jackson scrambles right end ran ob at DEN 36 for 11 yards (2-P.Surtain).
(12:06) (Shotgun) 22-D.Henry left end to DEN 37 for -1 yards (97-M.Roach, 26-D.Key).
(11:21) 22-D.Henry right tackle to DEN 17 for 20 yards (22-B.Jones).
(10:42) 22-D.Henry right guard to DEN 13 for 4 yards (96-E.Uwazurike; 12-K.Alexander).
(10:01) (Shotgun) 22-D.Henry left end to DEN 12 for 1 yard (55-C.Barton; 96-E.Uwazurike). PENALTY on DEN-5-B.Browning, Tripping, 6 yards, enforced at DEN 12.
(9:41) 22-D.Henry left end for 6 yards, TOUCHDOWN.
9-J.Tucker extra point is GOOD, Center-46-N.Moore, Holder-11-J.Stout.
9-J.Tucker kicks 65 yards from BAL 35 to end zone, Touchback to the DEN 30.
(9:36) (Shotgun) 33-J.Williams right guard to DEN 35 for 5 yards (96-B.Washington).
(8:59) (Shotgun) 10-B.Nix scrambles up the middle to DEN 38 for 3 yards (96-B.Washington).
(8:15) (Shotgun) 10-B.Nix sacked at DEN 29 for -9 yards (95-T.Robinson).
(7:39) 9-R.Dixon punts 50 yards to BAL 21, Center-48-M.Fraboni, fair catch by 16-T.Wallace.
(7:32) 8-L.Jackson pass short left to 22-D.Henry to BAL 48 for 27 yards (55-C.Barton).
(6:48) 43-J.Hill right guard to DEN 44 for 8 yards (15-N.Bonitto, 55-C.Barton).
(6:10) 43-J.Hill right end to DEN 41 for 3 yards (93-D.Jones, 98-J.Franklin-Myers).
(5:28) (Shotgun) 8-L.Jackson pass short left to 89-M.Andrews pushed ob at DEN 25 for 16 yards (26-D.Key).
(4:48) 22-D.Henry left guard to DEN 22 for 3 yards (99-Z.Allen). PENALTY on BAL-65-P.Mekari, Offensive Holding, 10 yards, enforced at DEN 25 - No Play.
(4:26) (Shotgun) 8-L.Jackson pass short right to 4-Z.Flowers to DEN 19 for 16 yards (0-J.Cooper).
(3:47) 22-D.Henry left end pushed ob at DEN 14 for 5 yards (21-R.Moss).
(3:10) 22-D.Henry right end to DEN 9 for 5 yards (22-B.Jones; 12-K.Alexander).
(2:30) 43-J.Hill up the middle to DEN 4 for 5 yards (15-N.Bonitto; 26-D.Key).
(2:00) 43-J.Hill up the middle to DEN 3 for 1 yard (97-M.Roach).
(1:25) 8-L.Jackson pass short right to 42-P.Ricard for 3 yards, TOUCHDOWN.
9-J.Tucker extra point is GOOD, Center-46-N.Moore, Holder-11-J.Stout.
9-J.Tucker kicks 64 yards from BAL 35 to DEN 1. 1-T.Smith to DEN 27 for 26 yards (29-A.Washington). PENALTY on DEN-43-K.Smith, Offensive Holding, 10 yards, enforced at DEN 25.
(1:15) (Shotgun) 10-B.Nix pass short right to 38-J.McLaughlin to DEN 14 for -1 yards (14-K.Hamilton).
(:28) (Shotgun) 10-B.Nix pass incomplete deep left to 14-C.Sutton.
(:23) (Shotgun) 10-B.Nix pass incomplete deep middle to 19-M.Mims.
(:18) 9-R.Dixon punts 46 yards to BAL 40, Center-48-M.Fraboni. 16-T.Wallace to DEN 39 for 21 yards (45-N.Adkins, 9-R.Dixon).
(:04) 22-D.Henry right guard to DEN 32 for 7 yards (26-D.Key; 94-J.Jackson).
END QUARTER 3
(15:00) PENALTY on DEN-99-Z.Allen, Neutral Zone Infraction, 5 yards, enforced at DEN 32 - No Play.
(15:00) 22-D.Henry right end to DEN 26 for 1 yard (0-J.Cooper; 12-K.Alexander).
(14:18) 22-D.Henry left end to DEN 20 for 6 yards (22-B.Jones).
(13:41) (Shotgun) 8-L.Jackson scrambles right end to DEN 19 for 1 yard (40-J.Strnad).
(12:53) 9-J.Tucker 37 yard field goal is GOOD, Center-46-N.Moore, Holder-11-J.Stout.
9-J.Tucker kicks 68 yards from BAL 35 to DEN -3. 19-M.Mims to DEN 35 for 38 yards (29-A.Washington).
(12:44) (Shotgun) 10-B.Nix pass short right to 17-D.Vele to DEN 41 for 6 yards (14-K.Hamilton). PENALTY on BAL-14-K.Hamilton, Face Mask, 15 yards, enforced at DEN 41.
(12:18) (Shotgun) 10-B.Nix pass incomplete short left to 85-L.Krull (95-T.Robinson).
(12:14) (Shotgun) 10-B.Nix pass incomplete deep left to 16-T.Franklin. PENALTY on BAL-44-M.Humphrey, Illegal Contact, 5 yards, enforced at BAL 44 - No Play.
(12:09) (Shotgun) 10-B.Nix pass short right to 14-C.Sutton to BAL 39 for no gain (23-T.Simpson).
(11:31) (No Huddle, Shotgun) 10-B.Nix pass short middle to 84-L.Humphrey to BAL 34 for 5 yards (40-M.Harrison).
(10:59) (No Huddle, Shotgun) 10-B.Nix pass short right to 14-C.Sutton to BAL 16 for 18 yards (32-M.Williams) [95-T.Robinson].
(10:26) (No Huddle, Shotgun) 33-J.Williams right tackle to BAL 12 for 4 yards (93-C.Wormley; 91-Y.Ngakoue).
(9:50) (Shotgun) 10-B.Nix scrambles left end ran ob at BAL 5 for 7 yards (21-B.Stephens). PENALTY on BAL-44-M.Humphrey, Defensive Holding, 3 yards, enforced at BAL 5.
(9:35) 79-M.Peart reported in as eligible. 33-J.Williams up the middle to BAL 1 for 1 yard (96-B.Washington).
(9:11) (No Huddle) 10-B.Nix pass incomplete short left to 84-L.Humphrey (44-M.Humphrey).
(9:03) (Shotgun) 10-B.Nix sacked at BAL 14 for -13 yards (23-T.Simpson).
(8:15) (Shotgun) 10-B.Nix pass incomplete short left to 14-C.Sutton.
(8:09) 22-D.Henry right tackle to BAL 16 for 1 yard (12-K.Alexander). FUMBLES (12-K.Alexander), recovered by BAL-65-P.Mekari at BAL 16.
(7:25) 22-D.Henry left end to BAL 22 for 6 yards (97-M.Roach).
(6:39) 43-J.Hill right end to BAL 20 for -2 yards (22-B.Jones).
(5:48) 11-J.Stout punts 65 yards to DEN 15, Center-46-N.Moore. 19-M.Mims MUFFS catch, and recovers at DEN 7. 19-M.Mims to DEN 42 for 35 yards (46-N.Moore). Penalty on BAL-81-D.Walker, Player Out of Bounds on Kick, offsetting, enforced at BAL 20 - No Play. Penalty on DEN-43-K.Smith, Unnecessary Roughness, offsetting.
(5:30) 11-J.Stout punts 58 yards to DEN 22, Center-46-N.Moore. 19-M.Mims to DEN 40 for 18 yards (80-I.Likely).
(5:17) 79-M.Peart reported in as eligible. 23-A.Estime right tackle to DEN 44 for 4 yards (93-C.Wormley).
(4:43) 23-A.Estime up the middle to DEN 46 for 2 yards (96-B.Washington; 14-K.Hamilton).
(3:56) (Shotgun) 10-B.Nix pass deep left to 14-C.Sutton to BAL 28 for 26 yards (53-K.Van Noy).
(3:29) (No Huddle, Shotgun) 10-B.Nix pass incomplete short left to 14-C.Sutton (29-A.Washington).
(3:25) (Shotgun) 23-A.Estime right guard to BAL 7 for 21 yards (21-B.Stephens).
(2:52) (No Huddle, Shotgun) 23-A.Estime left guard to BAL 3 for 4 yards (93-C.Wormley; 40-M.Harrison).
(2:17) 79-M.Peart reported in as eligible. 10-B.Nix sacked ob at BAL 9 for -6 yards (40-M.Harrison).
Timeout #1 by BAL at 02:17.
(2:10) 23-A.Estime right tackle to BAL 5 for 4 yards (40-M.Harrison, 28-S.Kane).
(2:00) (Shotgun) PENALTY on DEN-69-M.McGlinchey, False Start, 5 yards, enforced at BAL 5 - No Play.
(2:00) (Shotgun) 10-B.Nix pass short right to 14-C.Sutton to BAL 1 for 9 yards (2-N.Wiggins; 29-A.Washington).
Timeout #2 by BAL at 02:00.
(1:55) 17-J.Johnson up the middle to BAL 2 for 1 yard (96-E.Uwazurike).
(1:11) 17-J.Johnson up the middle to BAL 4 for 2 yards (97-M.Roach).
(:28) 17-J.Johnson kneels to BAL 3 for -1 yards.
END GAME"

den_bal_summary <- "Headline: Jackson excels, Henry scores 2 more TDs as Ravens rout Broncos 41-10.
Summary: The Broncos' defense held after Nix threw an early interception, but after Denver was stopped on fourth-and-1, the Ravens drove 57 yards and opened the scoring on Henry's 7-yard run. Another fourth-down failure — Nix overthrew an open Troy Franklin deep — was followed by a Baltimore field goal that made it 10-0. The Broncos finally converted on fourth down from the Baltimore 2 with a reverse pass from receiver Courtland Sutton to Nix, and Nix was able to make the catch at the goal line for a touchdown. Jackson answered with a 7-yard scoring pass to Flowers to put Baltimore up 17-7. Baltimore led 17-10 after a Denver field goal with 54 seconds left in the first half. Then the Ravens struck on both sides of halftime. Flowers caught a pass over the middle and raced to the end zone for a 53-yard TD with 16 seconds left in the second quarter. Baltimore got the ball to start the third and made it 31-10 on a 6-yard run by Henry. Fullback Patrick Ricard caught Jackson's final TD toss of the day, a 3-yarder in the third.
Notable Performances: Jackson completed 16 of 19 passes for 280 yards and three touchdowns. Zay Flowers had five catches for 127 yards and two touchdowns. Henry rushed for 106 yards and two TDs. Nix threw for 223 yards and caught a TD pass on a trick play.
Injuries: None"
  
# Append game log and summary to training dataframe 
den_bal <- as.data.frame(cbind(den_bal_log, den_bal_summary)) %>% rename(game_log = den_bal_log, game_summary = den_bal_summary)
training <- rbind(training, den_bal)

den_lv_log <- "GAME
3-W.Lutz kicks 65 yards from DEN 35 to end zone, Touchback to the LV 30.
(15:00) 15-G.Minshew FUMBLES (Aborted) at LV 29, touched at LV 27, and recovers at LV 27.
(14:20) (Shotgun) 15-G.Minshew pass short right to 89-B.Bowers pushed ob at LV 34 for 7 yards (22-B.Jones).
(13:43) (Shotgun) 15-G.Minshew pass short left to 16-J.Meyers to DEN 49 for 17 yards (6-P.Locke).
(12:59) (Shotgun) 15-G.Minshew pass incomplete short middle.
(12:55) (Shotgun) 15-G.Minshew pass short left to 8-A.Abdullah to DEN 42 for 7 yards (55-C.Barton).
(12:19) (Shotgun) 15-G.Minshew pass incomplete short right to 89-B.Bowers.
(12:16) 6-A.Cole punts 31 yards to DEN 11, Center-50-J.Bobenmoyer, fair catch by 19-M.Mims.
(12:09) (Shotgun) 10-B.Nix pass incomplete deep left to 16-T.Franklin.
(12:04) (Shotgun) 10-B.Nix pass deep left to 17-D.Vele to DEN 34 for 23 yards (20-I.Pola-Mao).
(11:28) (No Huddle, Shotgun) 10-B.Nix pass incomplete short right to 33-J.Williams (96-J.Laulu).
(11:24) 79-M.Peart reported in as eligible. 33-J.Williams up the middle to DEN 43 for 9 yards (9-T.Wilson; 41-R.Spillane). PENALTY on DEN-69-M.McGlinchey, Offensive Holding, 10 yards, enforced at DEN 34 - No Play.
(10:58) (Shotgun) 33-J.Williams up the middle to DEN 31 for 7 yards (98-M.Crosby; 20-I.Pola-Mao).
(10:30) (No Huddle, Shotgun) 10-B.Nix pass deep left to 14-C.Sutton to DEN 48 for 17 yards (25-D.Richardson).
(10:06) (No Huddle, Shotgun) 10-B.Nix pass incomplete deep right to 16-T.Franklin.
(9:59) 33-J.Williams left tackle to DEN 49 for 1 yard (30-D.Holmes).
(9:24) (No Huddle, Shotgun) 10-B.Nix pass incomplete deep right to 84-L.Humphrey (18-J.Jones).
(9:16) 9-R.Dixon punts 43 yards to LV 8, Center-48-M.Fraboni, fair catch by 19-D.Turner.
(9:09) 8-A.Abdullah left guard to LV 13 for 5 yards (98-J.Franklin-Myers; 97-M.Roach).
(8:34) 15-G.Minshew pass short middle to 19-D.Turner to LV 14 for 1 yard (55-C.Barton). PENALTY on LV-58-J.Powers-Johnson, Unnecessary Roughness, 7 yards, enforced at LV 14.
(8:07) (Shotgun) 15-G.Minshew pass incomplete short left.
(8:04) 6-A.Cole punts 60 yards to DEN 33, Center-50-J.Bobenmoyer, out of bounds.
(7:54) 38-J.McLaughlin right guard to DEN 44 for 11 yards (20-I.Pola-Mao; 34-T.Harper).
(7:14) 38-J.McLaughlin left tackle to LV 49 for 7 yards (93-Z.Carter). PENALTY on DEN-69-M.McGlinchey, Offensive Holding, 10 yards, enforced at DEN 44 - No Play.
(6:42) (Shotgun) 10-B.Nix pass deep middle to 16-T.Franklin to LV 40 for 26 yards (5-D.Deablo; 20-I.Pola-Mao).
Timeout #1 by DEN at 06:42.
(5:59) 10-B.Nix pass short right to 20-M.Burton pushed ob at LV 32 for 8 yards (41-R.Spillane).
(5:18) 38-J.McLaughlin left guard to LV 14 for 18 yards (18-J.Jones). DEN-38-J.McLaughlin was injured during the play.
(4:47) 10-B.Nix pass short left to 82-A.Trautman to LV 11 for 3 yards (49-C.Snowden).
(4:07) 33-J.Williams right end to LV 15 for -4 yards (18-J.Jones).
(3:22) (Shotgun) PENALTY on DEN-69-M.McGlinchey, False Start, 5 yards, enforced at LV 15 - No Play.
(2:58) (Shotgun) 10-B.Nix pass incomplete short right. Penalty on DEN-60-L.Wattenberg, Ineligible Downfield Pass, declined.
(2:51) 3-W.Lutz 38 yard field goal is GOOD, Center-48-M.Fraboni, Holder-9-R.Dixon.
3-W.Lutz kicks 64 yards from DEN 35 to LV 1. 23-D.Laube pushed ob at DEN 40 for 59 yards (26-D.Key).
(2:38) 28-S.McCormick up the middle to DEN 29 for 11 yards (21-R.Moss).
(2:00) 15-G.Minshew pass short left to 87-M.Mayer to DEN 27 for 2 yards (40-J.Strnad).
(1:20) (Shotgun) 8-A.Abdullah right guard to DEN 22 for 5 yards (21-R.Moss).
(:38) (Shotgun) 8-A.Abdullah up the middle to DEN 19 for 3 yards (29-J.McMillian; 97-M.Roach).
END QUARTER 1
(15:00) (Shotgun) 15-G.Minshew pass short right to 87-M.Mayer to DEN 10 for 9 yards (52-J.Elliss).
(14:18) 8-A.Abdullah up the middle to DEN 6 for 4 yards (92-D.Tillman; 40-J.Strnad).
(13:40) (Shotgun) 15-G.Minshew pass short right to 8-A.Abdullah for 6 yards, TOUCHDOWN.
2-D.Carlson extra point is GOOD, Center-50-J.Bobenmoyer, Holder-6-A.Cole.
2-D.Carlson kicks 65 yards from LV 35 to end zone, Touchback to the DEN 30.
(13:36) (Shotgun) 10-B.Nix pass short right to 17-D.Vele to DEN 39 for 9 yards (18-J.Jones, 30-D.Holmes). ** Injury Update: DEN-38-J.McLaughlin has returned to the game.
(13:02) 20-M.Burton right guard to DEN 42 for 3 yards (5-D.Deablo).
(12:24) 10-B.Nix pass short right to 17-D.Vele to LV 46 for 12 yards (18-J.Jones). Las Vegas challenged the runner was not down by contact ruling, and the play was REVERSED. 10-B.Nix pass short right to 17-D.Vele to 50 for 8 yards (18-J.Jones).
(12:08) (Shotgun) 79-M.Peart reported in as eligible. 10-B.Nix pass deep middle to 17-D.Vele to LV 26 for 24 yards (25-D.Richardson).
(11:28) 33-J.Williams up the middle to LV 29 for -3 yards (98-M.Crosby).
(10:49) (Shotgun) 10-B.Nix scrambles left end ran ob at LV 24 for 5 yards (5-D.Deablo).
(10:03) (No Huddle, Shotgun) 10-B.Nix sacked at LV 35 for -11 yards (9-T.Wilson).
(9:26) 3-W.Lutz 53 yard field goal is GOOD, Center-48-M.Fraboni, Holder-9-R.Dixon.
3-W.Lutz kicks 65 yards from DEN 35 to end zone, Touchback to the LV 30.
(9:21) 15-G.Minshew pass incomplete deep right to 11-T.Tucker (21-R.Moss).
(9:15) (Shotgun) 15-G.Minshew pass incomplete short right to 89-B.Bowers.
(9:09) (Shotgun) 15-G.Minshew pass short right to 8-A.Abdullah to LV 36 for 6 yards (21-R.Moss).
(8:33) (Punt formation) 6-A.Cole pass short right to 5-D.Deablo to DEN 30 for 34 yards (19-M.Mims).
(7:45) (Shotgun) 15-G.Minshew pass short middle to 11-T.Tucker pushed ob at DEN 29 for 1 yard (15-N.Bonitto).
(7:03) 28-S.McCormick up the middle to DEN 24 for 5 yards (55-C.Barton).
(6:24) (Shotgun) 15-G.Minshew pass short right to 8-A.Abdullah pushed ob at DEN 11 for 13 yards (0-J.Cooper).
(5:45) 8-A.Abdullah left guard to DEN 11 for no gain (40-J.Strnad).
(5:02) (Shotgun) 15-G.Minshew pass incomplete short right.
(4:53) (Shotgun) 15-G.Minshew pass short middle to 11-T.Tucker to DEN 5 for 6 yards (29-J.McMillian). PENALTY on LV-71-D.Glaze, Offensive Holding, 10 yards, enforced at DEN 11 - No Play.
(4:29) (Shotgun) 8-A.Abdullah up the middle to DEN 16 for 5 yards (21-R.Moss).
(3:52) 2-D.Carlson 34 yard field goal is GOOD, Center-50-J.Bobenmoyer, Holder-6-A.Cole.
2-D.Carlson kicks 65 yards from LV 35 to end zone, Touchback to the DEN 30.
(3:48) (Shotgun) 10-B.Nix pass short right to 19-M.Mims to DEN 40 for 10 yards (41-R.Spillane).
(3:07) 23-A.Estime up the middle to DEN 49 for 9 yards (5-D.Deablo; 25-D.Richardson).
(2:27) 79-M.Peart reported in as eligible. 23-A.Estime left guard to LV 49 for 2 yards (34-T.Harper; 41-R.Spillane).
(2:00) 79-M.Peart reported in as eligible. 10-B.Nix pass incomplete short left to 33-J.Williams.
(1:54) (Shotgun) 10-B.Nix pass incomplete deep left to 14-C.Sutton. PENALTY on LV-25-D.Richardson, Defensive Pass Interference, 17 yards, enforced at LV 49 - No Play.
(1:50) 19-M.Mims left end to LV 37 for -5 yards (9-T.Wilson).
(1:07) (No Huddle, Shotgun) 10-B.Nix pass incomplete short middle to 82-A.Trautman.
(1:03) (Shotgun) 10-B.Nix pass short left to 33-J.Williams to LV 36 for 1 yard (41-R.Spillane).
Timeout #2 by DEN at 01:03.
(:58) 3-W.Lutz 54 yard field goal is GOOD, Center-48-M.Fraboni, Holder-9-R.Dixon.
Timeout #1 by LV at 00:58.
3-W.Lutz kicks 65 yards from DEN 35 to end zone, Touchback to the LV 30.
(:53) (Shotgun) 15-G.Minshew pass short middle to 89-B.Bowers to LV 39 for 9 yards (22-B.Jones). DEN-21-R.Moss was injured during the play.
(:43) (Shotgun) 15-G.Minshew pass incomplete deep right to 16-J.Meyers (2-P.Surtain). PENALTY on DEN-15-N.Bonitto, Defensive Offside, 6 yards, enforced at LV 39 - No Play.
Timeout #3 by DEN at 00:43.
(:40) (Shotgun) 15-G.Minshew pass incomplete short right to 16-J.Meyers.
(:34) (Shotgun) 15-G.Minshew pass deep right to 16-J.Meyers to DEN 37 for 18 yards (6-P.Locke).
(:27) (Shotgun) 15-G.Minshew pass deep left to 11-T.Tucker to DEN 21 for 16 yards (29-J.McMillian).
Timeout #2 by LV at 00:27.
(:20) (Shotgun) 15-G.Minshew pass short right to 16-J.Meyers to DEN 16 for 5 yards (39-L.Wallace).
Timeout #3 by LV at 00:20.
(:03) (No Huddle) 15-G.Minshew spiked the ball to stop the clock.
(:02) 2-D.Carlson 34 yard field goal is GOOD, Center-50-J.Bobenmoyer, Holder-6-A.Cole.
END QUARTER 2
2-D.Carlson kicks 65 yards from LV 35 to end zone, Touchback to the DEN 30.
(15:00) 38-J.McLaughlin right tackle to DEN 26 for -4 yards (95-J.Jenkins).
(14:19) (Shotgun) 79-M.Peart reported in as eligible. 10-B.Nix pass short right to 14-C.Sutton to DEN 32 for 6 yards (18-J.Jones).
(13:37) (Shotgun) 10-B.Nix pass incomplete short left to 19-M.Mims (49-C.Snowden).
(13:33) 9-R.Dixon punts 52 yards to LV 16, Center-48-M.Fraboni. 19-D.Turner pushed ob at LV 22 for 6 yards (45-N.Adkins).
(13:22) 8-A.Abdullah left end to LV 25 for 3 yards (6-P.Locke).
(12:55) (No Huddle, Shotgun) 15-G.Minshew pass short middle to 16-J.Meyers to LV 38 for 13 yards (6-P.Locke).
(12:29) (No Huddle, Shotgun) 15-G.Minshew sacked at LV 34 for -4 yards (97-M.Roach).
(11:44) (Shotgun) 15-G.Minshew pass deep right intended for 16-J.Meyers INTERCEPTED by 22-B.Jones [15-N.Bonitto] at DEN 45. 22-B.Jones to LV 18 for 37 yards (11-T.Tucker).
(11:33) (Shotgun) 33-J.Williams left guard to LV 18 for no gain (9-T.Wilson).
(10:53) (Shotgun) 10-B.Nix pass deep right to 14-C.Sutton for 18 yards, TOUCHDOWN.
3-W.Lutz extra point is GOOD, Center-48-M.Fraboni, Holder-9-R.Dixon.
3-W.Lutz kicks 65 yards from DEN 35 to end zone, Touchback to the LV 30.
(10:49) 15-G.Minshew pass short right to 16-J.Meyers to LV 36 for 6 yards (39-L.Wallace, 0-J.Cooper) [94-J.Jackson].
(10:13) 28-S.McCormick up the middle to DEN 45 for 19 yards (6-P.Locke; 2-P.Surtain).
(9:30) 28-S.McCormick up the middle to DEN 48 for -3 yards (15-N.Bonitto).
(8:47) (Shotgun) 15-G.Minshew pass short right to 8-A.Abdullah to DEN 43 for 5 yards (39-L.Wallace; 94-J.Jackson).
(8:04) (Shotgun) 15-G.Minshew pass incomplete short middle to 89-B.Bowers (22-B.Jones).
(8:00) 6-A.Cole punts 42 yards to DEN 1, Center-50-J.Bobenmoyer, downed by LV-19-D.Turner.
(7:52) (Shotgun) 10-B.Nix pass short right to 14-C.Sutton to DEN 9 for 8 yards (18-J.Jones).
(7:14) 38-J.McLaughlin up the middle to DEN 10 for 1 yard (7-T.Moehrig).
(6:54) (No Huddle) 10-B.Nix pass short right to 14-C.Sutton to DEN 29 for 19 yards (20-I.Pola-Mao) [98-M.Crosby].
(6:27) (No Huddle, Shotgun) 10-B.Nix pass short left to 84-L.Humphrey pushed ob at DEN 31 for 2 yards (25-D.Richardson).
(6:09) (Shotgun) 38-J.McLaughlin up the middle to DEN 34 for 3 yards (97-J.Robinson; 30-D.Holmes).
(5:26) (Shotgun) 10-B.Nix pass short left to 14-C.Sutton to DEN 43 for 9 yards (25-D.Richardson).
(4:43) (Shotgun) 33-J.Williams left guard to DEN 44 for 1 yard (5-D.Deablo).
(4:03) (Shotgun) 10-B.Nix pass short right to 84-L.Humphrey to DEN 46 for 2 yards (98-M.Crosby).
(3:17) (No Huddle, Shotgun) 10-B.Nix pass incomplete deep right.
(3:10) 9-R.Dixon punts 43 yards to LV 11, Center-48-M.Fraboni, out of bounds.
(3:02) 15-G.Minshew scrambles right end ran ob at LV 16 for 5 yards (93-D.Jones).
(2:26) 28-S.McCormick up the middle to LV 17 for 1 yard (93-D.Jones; 92-D.Tillman).
(1:43) (Shotgun) 15-G.Minshew pass incomplete short right to 19-D.Turner.
(1:38) 6-A.Cole punts 57 yards to DEN 26, Center-50-J.Bobenmoyer. 19-M.Mims ran ob at DEN 48 for 22 yards (45-T.Eichenberg).
(1:27) (Shotgun) 10-B.Nix pass incomplete short left to 19-M.Mims.
(1:23) (Shotgun) 10-B.Nix pass incomplete short middle to 17-D.Vele (30-D.Holmes). Penalty on DEN-60-L.Wattenberg, Ineligible Downfield Pass, declined.
(1:18) (Shotgun) 10-B.Nix pass deep left to 14-C.Sutton to LV 34 for 18 yards (25-D.Richardson).
(:31) 19-M.Mims left end pushed ob at LV 31 for 3 yards (7-T.Moehrig).
END QUARTER 3
(15:00) (Shotgun) 10-B.Nix pass short left to 33-J.Williams to LV 26 for 5 yards (7-T.Moehrig).
(14:12) (Shotgun) 10-B.Nix pass short right to 17-D.Vele ran ob at LV 21 for 5 yards.
Timeout #1 by DEN at 14:12.
(13:38) (Shotgun) 79-M.Peart reported in as eligible. 33-J.Williams left tackle to LV 23 for -2 yards (98-M.Crosby).
(12:58) (Shotgun) 10-B.Nix pass short right to 19-M.Mims to LV 26 for -3 yards (98-M.Crosby).
(12:13) (Shotgun) 10-B.Nix pass incomplete short left to 38-J.McLaughlin (7-T.Moehrig).
(12:10) 3-W.Lutz 45 yard field goal is GOOD, Center-48-M.Fraboni, Holder-9-R.Dixon.
3-W.Lutz kicks 65 yards from DEN 35 to end zone, Touchback to the LV 30.
(12:05) 15-G.Minshew pass short left to 11-T.Tucker to LV 40 for 10 yards (29-J.McMillian).
(11:26) (Shotgun) 8-A.Abdullah up the middle to LV 43 for 3 yards (55-C.Barton).
(10:46) (Shotgun) 15-G.Minshew pass incomplete short right [97-M.Roach].
(10:41) (Shotgun) 15-G.Minshew pass incomplete deep right to 16-J.Meyers. PENALTY on DEN-29-J.McMillian, Defensive Pass Interference, 22 yards, enforced at LV 43 - No Play.
(10:34) (Shotgun) 15-G.Minshew sacked at DEN 38 for -3 yards (sack split by 96-E.Uwazurike and 93-D.Jones).
(9:54) (Shotgun) 15-G.Minshew pass incomplete short right to 8-A.Abdullah. PENALTY on LV-16-J.Meyers, Offensive Pass Interference, 10 yards, enforced at DEN 38 - No Play.
(9:51) (Shotgun) 15-G.Minshew pass incomplete short left to 89-B.Bowers.
(9:46) (Shotgun) 15-G.Minshew pass short middle to 89-B.Bowers to DEN 35 for 13 yards (22-B.Jones).
(9:04) 2-D.Carlson 53 yard field goal is GOOD, Center-50-J.Bobenmoyer, Holder-6-A.Cole.
2-D.Carlson kicks 65 yards from LV 35 to end zone, Touchback to the DEN 30.
(8:59) (Shotgun) 38-J.McLaughlin left end to DEN 38 for 8 yards (25-D.Richardson; 34-T.Harper).
(8:30) (No Huddle, Shotgun) 38-J.McLaughlin left guard to DEN 45 for 7 yards (95-J.Jenkins; 41-R.Spillane).
(7:44) (Shotgun) 79-M.Peart reported in as eligible. 10-B.Nix pass short right to 17-D.Vele pushed ob at LV 44 for 11 yards (18-J.Jones).
Timeout #2 by DEN at 07:44.
(7:04) (Shotgun) 10-B.Nix pass short left to 16-T.Franklin to LV 39 for 5 yards (30-D.Holmes; 25-D.Richardson).
(6:23) (Shotgun) 10-B.Nix pass incomplete short left to 17-D.Vele.
(6:19) (Shotgun) 10-B.Nix pass short left to 19-M.Mims pushed ob at LV 2 for 37 yards (20-I.Pola-Mao).
(5:34) (Shotgun) 10-B.Nix pass short middle to 14-C.Sutton for 2 yards, TOUCHDOWN.
Timeout #3 by DEN at 05:34.
3-W.Lutz extra point is GOOD, Center-48-M.Fraboni, Holder-9-R.Dixon.
3-W.Lutz kicks 65 yards from DEN 35 to end zone, Touchback to the LV 30.
(5:30) (Shotgun) 15-G.Minshew pass short right to 16-J.Meyers to LV 36 for 6 yards (29-J.McMillian).
(5:09) (No Huddle, Shotgun) 15-G.Minshew pass short right to 16-J.Meyers to LV 43 for 7 yards (2-P.Surtain).
(4:50) (No Huddle, Shotgun) 15-G.Minshew pass short right to 89-B.Bowers ran ob at DEN 48 for 9 yards.
(4:45) (Shotgun) 15-G.Minshew pass short left to 19-D.Turner to DEN 44 for 4 yards (2-P.Surtain).
(4:28) (Shotgun) 15-G.Minshew pass incomplete short right to 16-J.Meyers (93-D.Jones).
(4:25) (Shotgun) 15-G.Minshew pass deep middle to 16-J.Meyers to DEN 19 for 25 yards (39-L.Wallace). Penalty on DEN-40-J.Strnad, Illegal Use of Hands, declined.
(4:17) (Shotgun) 15-G.Minshew pass short middle to 16-J.Meyers to DEN 4 for 15 yards (29-J.McMillian).
(3:53) (No Huddle, Shotgun) 15-G.Minshew pass incomplete short right.
(3:48) (Shotgun) 15-G.Minshew pass incomplete short right to 89-B.Bowers (2-P.Surtain).
(3:45) (Shotgun) 15-G.Minshew pass incomplete short middle to 89-B.Bowers (40-J.Strnad).
(3:41) 2-D.Carlson 22 yard field goal is GOOD, Center-50-J.Bobenmoyer, Holder-6-A.Cole.
2-D.Carlson kicks 65 yards from LV 35 to end zone, Touchback to the DEN 30.
(3:38) (Shotgun) 79-M.Peart reported in as eligible. 10-B.Nix pass incomplete deep left to 17-D.Vele (25-D.Richardson).
(3:33) (Shotgun) 10-B.Nix pass incomplete short right to 14-C.Sutton.
(3:28) (Shotgun) 10-B.Nix pass incomplete short right to 14-C.Sutton (20-I.Pola-Mao).
(3:23) 9-R.Dixon punts 54 yards to LV 16, Center-48-M.Fraboni. 19-D.Turner to LV 24 for 8 yards (1-T.Smith; 52-J.Elliss).
(3:12) (Shotgun) 15-G.Minshew sacked at LV 19 for -5 yards (sack split by 55-C.Barton and 0-J.Cooper). LV-15-G.Minshew was injured during the play.
(2:50) (Shotgun) 10-D.Ridder scrambles left tackle to LV 22 for 3 yards (29-J.McMillian).
(2:28) (No Huddle, Shotgun) 10-D.Ridder sacked at LV 14 for -8 yards (15-N.Bonitto). FUMBLES (15-N.Bonitto) [98-J.Franklin-Myers], touched at LV 14, RECOVERED by DEN-97-M.Roach at LV 17.
(2:21) (Shotgun) 33-J.Williams up the middle to LV 19 for -2 yards (69-A.Butler, 9-T.Wilson).
(2:16) 10-B.Nix pass incomplete short right.
Timeout #1 by LV at 02:16.
(2:10) 79-M.Peart reported in as eligible. 23-A.Estime right guard to LV 15 for 4 yards (69-A.Butler).
(2:00) 3-W.Lutz 33 yard field goal is GOOD, Center-48-M.Fraboni, Holder-9-R.Dixon.
3-W.Lutz kicks 65 yards from DEN 35 to end zone, Touchback to the LV 30.
(1:56) (Shotgun) PENALTY on DEN-15-N.Bonitto, Neutral Zone Infraction, 5 yards, enforced at LV 30 - No Play.
(1:56) (Shotgun) 10-D.Ridder pass incomplete short right to 8-A.Abdullah.
(1:52) (Shotgun) 10-D.Ridder pass incomplete short left to 16-J.Meyers.
(1:45) (Shotgun) 10-D.Ridder pass short left to 11-T.Tucker to LV 46 for 11 yards (22-B.Jones).
(1:28) (No Huddle, Shotgun) 10-D.Ridder pass short left to 11-T.Tucker to DEN 48 for 6 yards (2-P.Surtain).
(1:09) (No Huddle, Shotgun) 10-D.Ridder pass short right to 11-T.Tucker to DEN 20 for 28 yards (55-C.Barton).
(1:00) (Shotgun) 10-D.Ridder pass incomplete short middle to 19-D.Turner (55-C.Barton).
Timeout #2 by LV at 01:00.
(:56) (Shotgun) 10-D.Ridder pass incomplete short right.
(:49) (Shotgun) 10-D.Ridder pass short right to 16-J.Meyers to DEN 11 for 9 yards (22-B.Jones).
(:27) (No Huddle, Shotgun) 10-D.Ridder pass short left to 11-T.Tucker for 11 yards, TOUCHDOWN. The Replay Official reviewed the runner broke the plane ruling, and the play was REVERSED. (No Huddle, Shotgun) 10-D.Ridder pass short left to 11-T.Tucker to DEN 1 for 10 yards (6-P.Locke).
(:20) (Shotgun) 10-D.Ridder pass incomplete short right to 16-J.Meyers.
Timeout #3 by LV at 00:20.
(:16) (Shotgun) 10-D.Ridder sacked at DEN 9 for -8 yards (52-J.Elliss).
END GAME"

den_lv_summary <- "Headline: Bo Nix shines as Denver beats reeling Raiders 29-19.
Summary: The Broncos took the win after a big second half in a game that featured a total of nine made field goals. Nix finished threw an 18-yard touchdown pass to Courtland Sutton in the third quarter and later hooked up with Sutton again for a 2-yard TD with 5:30 left to give the Broncos a two-possession lead. Those plays helped erase a 13-9 halftime deficit. The Broncos outscored Las Vegas 20-6 in the second half after adjusting to the Raiders' defensive prowess. The Raiders best passing play, came on a fake punt when AJ Cole completed a 34-yard pass to linebacker Divine Deablo to set up a second-quarter field goal, one of four Daniel Carlson would kick in the game.
Notable Performances: Bo Nix passed for 273 yards and had two touchdown passes on 25 of 42 passing. Sutton caught eight passes for 97 yards and two touchdowns. Minshew completed 25 of 42 passes for 230 yards, with a touchdown and interception. Jakobi Meyers caught 10 passes for 121 yards.
Injuries:  Broncos: CB Riley Moss left the game late in the first half. Raiders: QB Gardner Minshew left the game late."

# Append game log and summary to training dataframe 
den_lv <- as.data.frame(cbind(den_lv_log, den_lv_summary)) %>% rename(game_log = den_lv_log, game_summary = den_lv_summary)
training <- rbind(training, den_lv)

la_ari_log <- "GAME
11-C.Dicker kicks 66 yards from LAC 35 to ARI -1. 4-G.Dortch to ARI 30 for 31 yards (43-T.Dye; 28-H.Haskins).
(14:53) (Shotgun) 1-K.Murray pass incomplete short left to 85-T.McBride (52-K.Mack).
(14:50) 1-K.Murray scrambles right end pushed ob at ARI 35 for 5 yards (45-T.Tuipulotu).
(14:11) (Shotgun) 1-K.Murray pass short right to 18-M.Harrison to ARI 42 for 7 yards (20-C.Hart).
(13:31) 6-J.Conner right tackle to ARI 43 for 1 yard (52-K.Mack, 90-T.Tart).
(12:50) (Shotgun) 1-K.Murray scrambles left end to LAC 41 for 16 yards (32-A.Gilman).
(12:04) (Shotgun) 1-K.Murray pass short middle intended for 6-J.Conner INTERCEPTED by 90-T.Tart (52-K.Mack) at LAC 46. 90-T.Tart to 50 for 4 yards (6-J.Conner). FUMBLES (6-J.Conner), touched at ARI 48, RECOVERED by ARI-14-Mi.Wilson at ARI 28.
(11:55) (Shotgun) 6-J.Conner right tackle pushed ob at ARI 34 for 6 yards (3-D.James).
(11:13) (Shotgun) 1-K.Murray pass incomplete short middle to 85-T.McBride (0-D.Henley).
(11:10) (Shotgun) 1-K.Murray pass incomplete short right.
(11:03) 12-B.Gillikin punts 54 yards to LAC 12, Center-46-A.Brewer, fair catch by 89-J.Reagor.
(10:56) (Shotgun) 10-J.Herbert pass short right to 87-S.Fehoko pushed ob at LAC 23 for 11 yards (21-G.Williams).
(10:23) 27-J.Dobbins left tackle to LAC 30 for 7 yards (7-K.White, 3-B.Baker).
(9:45) (Shotgun) 27-J.Dobbins up the middle to LAC 34 for 4 yards (25-Z.Collins, 45-D.Gardeck).
(9:01) (Shotgun) 10-J.Herbert pass short right to 81-W.Dissly to LAC 49 for 15 yards (23-S.Murphy-Bunting; 2-Ma.Wilson).
(8:18) (Shotgun) 10-J.Herbert pass short right to 81-W.Dissly pushed ob at ARI 44 for 7 yards (58-J.Okwara).
(7:38) 10-J.Herbert pass deep left to 89-J.Reagor to ARI 3 for 41 yards (24-S.Thomas). FUMBLES (24-S.Thomas), RECOVERED by ARI-34-J.Thompson at ARI 0. Touchback. The Replay Official reviewed the runner was inbounds ruling, and the play was Upheld. The ruling on the field stands.
(7:27) (Shotgun) 1-K.Murray pass short left to 85-T.McBride pushed ob at ARI 31 for 11 yards (25-J.Colson).
(7:00) (No Huddle, Shotgun) 1-K.Murray left end to ARI 33 for 2 yards (25-J.Colson).
(6:25) 6-J.Conner right tackle to ARI 43 for 10 yards (3-D.James; 6-D.Perryman).
(5:46) 6-J.Conner left tackle to LAC 46 for 11 yards (20-C.Hart).
(5:00) 6-J.Conner left tackle to LAC 46 for no gain (45-T.Tuipulotu; 3-D.James).
(4:13) (Shotgun) 1-K.Murray pass incomplete short right to 6-J.Conner.
(4:10) (Shotgun) 1-K.Murray pass incomplete short middle to 4-G.Dortch.
Timeout #1 by LAC at 04:10.
(4:07) 12-B.Gillikin punts 36 yards to LAC 10, Center-46-A.Brewer, fair catch by 15-L.McConkey.
(4:00) 10-J.Herbert scrambles left end ran ob at LAC 14 for 4 yards (24-S.Thomas).
(3:20) (Shotgun) 30-K.Vidal left end to LAC 15 for 1 yard (24-S.Thomas; 7-K.White).
(2:34) (Shotgun) 10-J.Herbert pass short right to 87-S.Fehoko ran ob at LAC 24 for 9 yards.
(2:00) 27-J.Dobbins left tackle to LAC 26 for 2 yards (91-L.Collier; 21-G.Williams).
(1:17) (Shotgun) 10-J.Herbert pass short right to 5-J.Palmer to LAC 32 for 6 yards (21-G.Williams). PENALTY on ARI-24-S.Thomas, Illegal Contact, 5 yards, enforced at LAC 26 - No Play.
(:56) (Shotgun) 27-J.Dobbins up the middle to LAC 29 for -2 yards (24-S.Thomas).
(:10) 10-J.Herbert pass short left to 81-W.Dissly pushed ob at LAC 47 for 18 yards (51-K.Barnes).
END QUARTER 1
(15:00) 89-J.Reagor right end to LAC 46 for -1 yards (23-S.Murphy-Bunting).
(14:20) (Shotgun) 10-J.Herbert pass short middle to 81-W.Dissly to ARI 44 for 10 yards (16-M.Melton).
(13:38) (Shotgun) 27-J.Dobbins right tackle to ARI 43 for 1 yard (91-L.Collier, 7-K.White).
(12:53) 10-J.Herbert pass short left to 27-J.Dobbins to ARI 41 for 2 yards (45-D.Gardeck).
(12:12) (Shotgun) 10-J.Herbert pass incomplete short left to 87-S.Fehoko.
(12:08) (Shotgun) 10-J.Herbert pass incomplete short right to 87-S.Fehoko (16-M.Melton).
(12:04) 11-C.Dicker 59 yard field goal is GOOD, Center-47-J.Harris, Holder-16-J.Scott.
11-C.Dicker kicks 67 yards from LAC 35 to ARI -2. 20-D.Dallas to ARI 21 for 23 yards (45-T.Tuipulotu, 28-H.Haskins).
(11:54) 6-J.Conner left tackle to ARI 26 for 5 yards (93-O.Ogbonnia).
(11:16) (Shotgun) 1-K.Murray pass short right to 18-M.Harrison to ARI 30 for 4 yards (29-T.Still) [6-D.Perryman].
(10:47) 15-C.Tune up the middle to ARI 32 for 2 yards (45-T.Tuipulotu).
(10:06) 1-K.Murray pass short right to 6-J.Conner to 50 for 18 yards (20-C.Hart). FUMBLES (20-C.Hart), recovered by ARI-85-T.McBride at LAC 43.
(9:14) 1-K.Murray pass short right to 85-T.McBride to LAC 32 for 11 yards (20-C.Hart).
(8:50) (No Huddle, Shotgun) Direct snap to 6-J.Conner. 6-J.Conner up the middle to LAC 18 for 14 yards (3-D.James; 29-T.Still).
(8:02) (Shotgun) PENALTY on LAC-90-T.Tart, Neutral Zone Infraction, 5 yards, enforced at LAC 18 - No Play.
(7:43) (Shotgun) 1-K.Murray pass short right to 85-T.McBride to LAC 10 for 3 yards (20-C.Hart).
(7:03) (Shotgun) 6-J.Conner up the middle to LAC 7 for 3 yards (48-B.Dupree).
(6:26) 6-J.Conner left end pushed ob at LAC 5 for 2 yards (0-D.Henley).
(5:44) (Shotgun) 1-K.Murray pass short right to 4-G.Dortch for 5 yards, TOUCHDOWN.
38-C.Ryland extra point is GOOD, Center-46-A.Brewer, Holder-12-B.Gillikin.
38-C.Ryland kicks 65 yards from ARI 35 to end zone, Touchback to the LAC 30.
(5:40) 27-J.Dobbins left tackle to LAC 32 for 2 yards (2-Ma.Wilson).
(5:00) (Shotgun) 10-J.Herbert pass incomplete short right to 15-L.McConkey.
(4:56) (Shotgun) 10-J.Herbert pass short middle to 81-W.Dissly to LAC 37 for 5 yards (34-J.Thompson, 3-B.Baker) [45-D.Gardeck].
(4:08) 16-J.Scott punts 36 yards to ARI 27, Center-47-J.Harris, out of bounds.
(4:01) (Shotgun) 1-K.Murray pass short left to 87-T.Reiman to ARI 28 for 1 yard (3-D.James).
(3:22) (Shotgun) 1-K.Murray pass short middle to 85-T.McBride to ARI 42 for 14 yards (25-J.Colson; 32-A.Gilman).
(2:43) (Shotgun) 1-K.Murray pass incomplete short right to 18-M.Harrison (36-J.Taylor).
(2:38) (Shotgun) Direct snap to 6-J.Conner. 6-J.Conner left end to ARI 36 for -6 yards (36-J.Taylor, 32-A.Gilman).
(2:00) (Shotgun) 31-E.Demercado right end to 50 for 14 yards (29-T.Still).
(1:52) (Shotgun) PENALTY on ARI, Delay of Game, 5 yards, enforced at 50 - No Play.
Timeout #2 by LAC at 01:52.
(1:52) 12-B.Gillikin punts 44 yards to LAC 11, Center-46-A.Brewer, fair catch by 15-L.McConkey.
(1:47) (Shotgun) 10-J.Herbert pass incomplete short right to 5-J.Palmer.
(1:42) (Shotgun) 10-J.Herbert pass deep middle to 5-J.Palmer to LAC 28 for 17 yards (3-B.Baker).
(1:23) (No Huddle, Shotgun) 10-J.Herbert pass deep right to 5-J.Palmer pushed ob at ARI 48 for 24 yards (16-M.Melton).
(1:15) (Shotgun) 10-J.Herbert pass short middle to 30-K.Vidal to ARI 39 for 9 yards (7-K.White; 51-K.Barnes).
Timeout #1 by ARI at 01:15.
(:55) (No Huddle, Shotgun) 30-K.Vidal left tackle to ARI 32 for 7 yards (25-Z.Collins; 7-K.White).
(:35) (No Huddle, Shotgun) 10-J.Herbert pass short right to 81-W.Dissly to ARI 28 for 4 yards (34-J.Thompson).
(:30) (Shotgun) 10-J.Herbert sacked at ARI 32 for -4 yards (90-B.Stille).
Timeout #3 by LAC at 00:30.
(:04) (No Huddle) 10-J.Herbert spiked the ball to stop the clock.
(:03) 11-C.Dicker 50 yard field goal is GOOD, Center-47-J.Harris, Holder-16-J.Scott.
END QUARTER 2
38-C.Ryland kicks 65 yards from ARI 35 to end zone, Touchback to the LAC 30.
(15:00) (Shotgun) 27-J.Dobbins up the middle to LAC 36 for 6 yards (45-D.Gardeck, 91-L.Collier).
(14:25) 27-J.Dobbins up the middle to LAC 38 for 2 yards (91-L.Collier; 7-K.White).
(13:47) 27-J.Dobbins left end to LAC 49 for 11 yards (21-G.Williams, 3-B.Baker).
(13:06) 10-J.Herbert pass short middle to 5-J.Palmer to ARI 38 for 13 yards (16-M.Melton).
(12:25) (Shotgun) 10-J.Herbert pass short left to 89-J.Reagor to ARI 38 for no gain (25-Z.Collins). PENALTY on LAC-70-R.Slater, Offensive Holding, 10 yards, enforced at ARI 38 - No Play.
(12:03) (Shotgun) 10-J.Herbert pass incomplete short right to 15-L.McConkey.
(11:59) (Shotgun) 10-J.Herbert sacked at LAC 44 for -8 yards (96-N.Jones).
(11:15) (Shotgun) 10-J.Herbert pass short right to 27-J.Dobbins to ARI 46 for 10 yards (3-B.Baker).
(10:34) 16-J.Scott punts 39 yards to ARI 7, Center-47-J.Harris, downed by LAC-43-T.Dye. ARI-45-D.Gardeck was injured during the play.
(10:25) 6-J.Conner up the middle to ARI 11 for 4 yards (93-O.Ogbonnia, 95-P.Ford).
(9:45) (Shotgun) 1-K.Murray pass incomplete short right to 18-M.Harrison.
(9:40) (Shotgun) 1-K.Murray pass incomplete deep right to 14-Mi.Wilson. PENALTY on LAC-20-C.Hart, Defensive Pass Interference, 22 yards, enforced at ARI 11 - No Play.
(9:35) (Shotgun) 6-J.Conner right end to ARI 33 for no gain (22-E.Molden).
(8:52) (Shotgun) 6-J.Conner left tackle pushed ob at ARI 46 for 13 yards (3-D.James).
(8:10) 1-K.Murray pass short right to 84-E.Higgins to ARI 47 for 1 yard (0-D.Henley).
(7:21) (Shotgun) PENALTY on ARI, Delay of Game, 5 yards, enforced at ARI 47 - No Play.
(7:04) (Shotgun) 6-J.Conner left end pushed ob at LAC 45 for 13 yards (32-A.Gilman).
(6:50) 15-C.Tune up the middle to LAC 45 for no gain (0-D.Henley).
(6:08) 15-C.Tune up the middle to LAC 45 for no gain (93-O.Ogbonnia; 52-K.Mack).
(6:06) (Shotgun) 27-J.Dobbins left tackle to LAC 47 for 2 yards (96-N.Jones).
(5:24) (Shotgun) 10-J.Herbert pass incomplete short right [7-K.White].
(5:15) (Shotgun) 10-J.Herbert pass deep right to 87-S.Fehoko to ARI 28 for 25 yards (21-G.Williams).
(4:27) PENALTY on LAC-76-J.Alt, False Start, 5 yards, enforced at ARI 28 - No Play.
(4:07) (Shotgun) 27-J.Dobbins left tackle to ARI 31 for 2 yards (43-J.Luketa; 95-K.Tonga).
(3:27) (Shotgun) 10-J.Herbert pass short right to 15-L.McConkey to ARI 25 for 6 yards (16-M.Melton).
(2:56) (No Huddle, Shotgun) 10-J.Herbert pass short right to 27-J.Dobbins pushed ob at ARI 11 for 14 yards (16-M.Melton).
(2:12) (Shotgun) 30-K.Vidal up the middle to ARI 9 for 2 yards (25-Z.Collins).
Timeout #1 by LAC at 02:12.
(1:31) (Shotgun) 10-J.Herbert sacked at ARI 10 for -1 yards (55-D.Stills).
(:47) (Shotgun) 10-J.Herbert pass incomplete short middle to 81-W.Dissly (21-G.Williams).
(:43) 11-C.Dicker 28 yard field goal is GOOD, Center-47-J.Harris, Holder-16-J.Scott.
11-C.Dicker kicks 65 yards from LAC 35 to end zone, Touchback to the ARI 30.
(:40) 1-K.Murray pass short middle to 14-Mi.Wilson to ARI 45 for 15 yards (6-D.Perryman).
(:01) (Shotgun) 6-J.Conner right tackle to ARI 46 for 1 yard (48-B.Dupree; 52-K.Mack).
END QUARTER 3
(15:00) (Shotgun) 1-K.Murray pass short left to 18-M.Harrison to LAC 44 for 10 yards (32-A.Gilman).
(14:26) 1-K.Murray scrambles left end for 44 yards, TOUCHDOWN.
38-C.Ryland extra point is GOOD, Center-46-A.Brewer, Holder-12-B.Gillikin.
38-C.Ryland kicks 65 yards from ARI 35 to end zone, Touchback to the LAC 30.
(14:14) 10-J.Herbert pass short right to 15-L.McConkey to LAC 33 for 3 yards (16-M.Melton; 7-K.White). FUMBLES (16-M.Melton), ball out of bounds at LAC 33.
(13:38) 10-J.Herbert pass deep right to 84-S.Smartt pushed ob at ARI 36 for 31 yards (34-J.Thompson).
(12:59) (Shotgun) 10-J.Herbert pass incomplete deep right to 84-S.Smartt.
(12:54) (Shotgun) 10-J.Herbert pass incomplete deep right to 81-W.Dissly.
(12:48) (Shotgun) 10-J.Herbert pass short right to 83-E.Tomlinson to ARI 29 for 7 yards (51-K.Barnes; 3-B.Baker) [55-D.Stills]. ARI-91-L.Collier was injured during the play.
(12:13) 11-C.Dicker 47 yard field goal is GOOD, Center-47-J.Harris, Holder-16-J.Scott.
11-C.Dicker kicks 65 yards from LAC 35 to end zone, Touchback to the ARI 30.
(12:09) (Shotgun) 1-K.Murray pass short left to 85-T.McBride to ARI 42 for 12 yards (20-C.Hart).
(11:41) (No Huddle) 6-J.Conner left end pushed ob at ARI 48 for 6 yards (0-D.Henley).
(11:03) 6-J.Conner right tackle to LAC 45 for 7 yards (93-O.Ogbonnia, 6-D.Perryman). LAC-93-O.Ogbonnia was injured during the play.
(10:27) 1-K.Murray pass incomplete short right to 18-M.Harrison (20-C.Hart).
(10:22) (Shotgun) 1-K.Murray pass incomplete short middle to 17-Z.Jones.
(10:18) (Shotgun) 1-K.Murray pass incomplete short left to 14-Mi.Wilson.
(10:13) 12-B.Gillikin punts 44 yards to LAC 1, Center-46-A.Brewer, downed by ARI-32-J.Blount.
(10:06) (Shotgun) 10-J.Herbert pass short right to 15-L.McConkey pushed ob at LAC 13 for 12 yards (16-M.Melton).
(9:35) 27-J.Dobbins left tackle to LAC 14 for 1 yard (7-K.White).
(8:58) (Shotgun) 10-J.Herbert pass incomplete short right to 81-W.Dissly.
(8:53) (Shotgun) 10-J.Herbert pass short right to 81-W.Dissly pushed ob at LAC 24 for 10 yards (16-M.Melton).
(8:16) (Shotgun) 10-J.Herbert pass short middle to 81-W.Dissly to LAC 36 for 12 yards (3-B.Baker). ** Injury Update: ARI-91-L.Collier has returned to the game.
(7:49) (No Huddle, Shotgun) 10-J.Herbert pass short left to 15-L.McConkey to LAC 40 for 4 yards (21-G.Williams) [96-N.Jones].
(7:10) 10-J.Herbert pass short middle to 15-L.McConkey to ARI 39 for 21 yards (24-S.Thomas; 34-J.Thompson).
(6:26) (Shotgun) 10-J.Herbert pass short right to 5-J.Palmer to ARI 30 for 9 yards (16-M.Melton).
(5:45) (Shotgun) 27-J.Dobbins up the middle to ARI 30 for no gain (43-J.Luketa).
(5:06) 28-H.Haskins left tackle to ARI 30 for no gain (7-K.White; 2-Ma.Wilson).
(4:10) 68-J.Salyer reported in as eligible. 28-H.Haskins up the middle to ARI 28 for 2 yards (43-J.Luketa).
(3:32) 27-J.Dobbins right end to ARI 26 for 2 yards (3-B.Baker).
(2:49) (Shotgun) 10-J.Herbert scrambles right end to ARI 22 for 4 yards (7-K.White).
(2:02) (Shotgun) 10-J.Herbert pass incomplete deep right to 87-S.Fehoko.
(1:58) 11-C.Dicker 40 yard field goal is GOOD, Center-47-J.Harris, Holder-16-J.Scott.
11-C.Dicker kicks 65 yards from LAC 35 to end zone, Touchback to the ARI 30.
(1:54) (Shotgun) 1-K.Murray pass incomplete short left to 14-Mi.Wilson.
(1:51) (Shotgun) 1-K.Murray pass incomplete short right to 18-M.Harrison. PENALTY on LAC-20-C.Hart, Unnecessary Roughness, 15 yards, enforced at ARI 30 - No Play.
(1:45) (Shotgun) 1-K.Murray pass short middle to 6-J.Conner pushed ob at LAC 22 for 33 yards (3-D.James).
(1:34) 6-J.Conner right tackle to LAC 17 for 5 yards (3-D.James). ** Injury Update: LAC-93-O.Ogbonnia has returned to the game.
(1:29) 6-J.Conner left tackle to LAC 11 for 6 yards (25-J.Colson; 20-C.Hart).
Timeout #2 by LAC at 01:29.
(1:19) 1-K.Murray kneels to LAC 12 for -1 yards.
Timeout #3 by LAC at 01:19.
(:37) 1-K.Murray kneels to LAC 14 for -2 yards.
Timeout #1 by ARI at 00:37.
(:02) 38-C.Ryland 32 yard field goal is GOOD, Center-46-A.Brewer, Holder-12-B.Gillikin.
Timeout #2 by ARI at 00:02.
END GAME"

la_ari_summary <- "Headline: Murray runs for a TD, leads Cardinals to game-winning FG and 17-15 win over Chargers.
Summary: The game was a back and forth battle with many near misses and close calls. It was a frustrating night for the Chargers' offense, which gained 395 yards but couldn't find the end zone. Arizona’s Kyler Murray rolled out to his left before turning on the jets, beating Chargers defenders and coasting for a spectacular 44-yard touchdown early in fourth quarter to build a lead. Cameron Dicker kicked his fifth field goal of the night to give the Chargers a 15-14 lead with 1:54 left, but it was not enough to seal the win. Murray led the Cardinals on a drive that set up Chad Ryland's 32-yard field goal as time expired, and Arizona rallied for a 17-15 win over Los Angeles.
Notable Performances: James Conner, finished with 101 yards rushing and 51 yards receiving. Justin Herbert completed 27 of 39 passes for 349 yards. Murray completed 14 of 26 passes for 145 yards, one touchdown and one interception.
Injuries: Cardinals: CB Sean Murphy-Bunting left in the first half. LB Dennis Gardeck left in the third quarter."

chi_was_log <- "GAME
3-A.Seibert kicks 65 yards from WAS 35 to end zone, Touchback to the CHI 30.
(15:00) (Shotgun) 4-D.Swift right guard to CHI 31 for 1 yard (11-J.Chinn).
(14:28) (Shotgun) 18-C.Williams sacked at CHI 25 for -6 yards (95-J.Newton).
(13:40) (Shotgun) PENALTY on CHI, Delay of Game, 5 yards, enforced at CHI 25 - No Play.
(13:23) (Shotgun) 18-C.Williams pass incomplete short middle to 2-D.Moore.
(13:17) 19-T.Taylor punts 68 yards to WAS 12, Center-46-S.Daly. 14-O.Zaccheaus to WAS 33 for 21 yards (44-N.Sewell; 45-A.Ogbongbemiga). FUMBLES (44-N.Sewell), recovered by WAS-26-J.McNichols at WAS 36.
(13:03) (Shotgun) 8-B.Robinson up the middle to WAS 38 for 2 yards (53-T.Edwards).
(12:29) (No Huddle, Shotgun) 5-J.Daniels pass short middle to 86-Z.Ertz to 50 for 12 yards (22-E.Hicks).
(11:57) (No Huddle, Shotgun) 5-J.Daniels right end ran ob at CHI 41 for 9 yards (98-M.Sweat).
(11:21) (No Huddle) 8-B.Robinson right guard to CHI 35 for 6 yards (49-T.Edmunds, 29-T.Stevenson).
(10:46) (No Huddle, Shotgun) 8-B.Robinson right end to CHI 16 for 19 yards (22-E.Hicks).
(10:16) (No Huddle, Shotgun) 8-B.Robinson up the middle to CHI 7 for 9 yards (99-G.Dexter, 22-E.Hicks). CHI-99-G.Dexter was injured during the play.
(9:43) 73-T.Scott reported in as eligible. 8-B.Robinson left tackle to CHI 8 for -1 yards (93-B.Cowart).
(9:00) (Shotgun) 5-J.Daniels pass incomplete short right to 12-L.McCaffrey (39-J.Blackwell) [98-M.Sweat].
(8:54) 3-A.Seibert 27 yard field goal is GOOD, Center-69-T.Ott, Holder-10-T.Way.
3-A.Seibert kicks 64 yards from WAS 35 to CHI 1. 11-D.Carter to CHI 29 for 28 yards (0-M.Sainristil; 26-J.McNichols).
(8:41) (Shotgun) 18-C.Williams pass incomplete deep middle to 15-R.Odunze.
(8:37) (No Huddle, Shotgun) 18-C.Williams up the middle to CHI 42 for 13 yards (20-Q.Martin).
(7:56) (No Huddle, Shotgun) 18-C.Williams pass short middle to 13-K.Allen to WAS 41 for 17 yards (11-J.Chinn; 1-N.Igbinoghene).
(7:13) (No Huddle) PENALTY on CHI-70-B.Jones, False Start, 5 yards, enforced at WAS 41 - No Play.
(6:54) (Shotgun) 4-D.Swift right guard to WAS 41 for 5 yards (54-B.Wagner; 25-B.St-Juste).
(6:18) (No Huddle, Shotgun) 18-C.Williams pass incomplete short left to 13-K.Allen.
(6:14) (Shotgun) 18-C.Williams pass incomplete short right to 14-G.Everett.
(6:10) 19-T.Taylor punts 32 yards to WAS 9, Center-46-S.Daly, fair catch by 14-O.Zaccheaus.
(6:03) 8-B.Robinson up the middle to WAS 11 for 2 yards (91-Ch.Williams, 22-E.Hicks).
(5:29) (No Huddle, Shotgun) 5-J.Daniels pass incomplete short right to 85-N.Brown.
(5:25) (No Huddle, Shotgun) 5-J.Daniels scrambles right end pushed ob at WAS 20 for 9 yards (29-T.Stevenson). ** Injury Update: CHI-99-G.Dexter has returned to the game.
(4:54) (No Huddle, Shotgun) 5-J.Daniels pass short middle to 30-A.Ekeler to WAS 21 for 1 yard (95-D.Walker; 94-A.Booker).
(4:17) (No Huddle, Shotgun) 5-J.Daniels pass incomplete short left to 17-T.McLaurin.
(4:12) (Shotgun) 5-J.Daniels pass deep left to 17-T.McLaurin to CHI 18 for 61 yards (29-T.Stevenson) [98-M.Sweat].
(3:26) (No Huddle, Shotgun) 8-B.Robinson left end to CHI 11 for 7 yards (29-T.Stevenson).
(2:48) (No Huddle, Shotgun) 8-B.Robinson left tackle to CHI 7 for 4 yards (99-G.Dexter).
(2:07) (No Huddle) 73-T.Scott reported in as eligible. PENALTY on WAS-73-T.Scott, False Start, 5 yards, enforced at CHI 7 - No Play.
(1:58) 8-B.Robinson up the middle to CHI 12 for no gain (93-B.Cowart, 98-M.Sweat).
(1:20) (No Huddle, Shotgun) 5-J.Daniels pass incomplete short right.
(1:13) (Shotgun) 5-J.Daniels pass incomplete short middle to 30-A.Ekeler.
(1:08) 3-A.Seibert 30 yard field goal is GOOD, Center-69-T.Ott, Holder-10-T.Way.
3-A.Seibert kicks 65 yards from WAS 35 to end zone, Touchback to the CHI 30.
(1:04) (Shotgun) 4-D.Swift right end to CHI 35 for 5 yards (0-M.Sainristil, 35-P.Butler).
(:29) (No Huddle, Shotgun) 4-D.Swift left tackle to CHI 38 for 3 yards (20-Q.Martin).
END QUARTER 1
(15:00) (Shotgun) 18-C.Williams scrambles up the middle to CHI 39 for 1 yard (92-D.Armstrong).
(14:12) 19-T.Taylor punts 52 yards to WAS 9, Center-46-S.Daly. 14-O.Zaccheaus to WAS 17 for 8 yards (21-J.Jones).
(14:01) (Shotgun) 5-J.Daniels pass short right to 87-J.Bates pushed ob at WAS 37 for 20 yards (22-E.Hicks).
(13:23) (No Huddle, Shotgun) 5-J.Daniels pass short middle to 86-Z.Ertz to WAS 42 for 5 yards (53-T.Edwards).
(12:52) (No Huddle, Shotgun) 26-J.McNichols left tackle to WAS 41 for -1 yards (94-A.Booker, 95-D.Walker).
(12:09) (No Huddle, Shotgun) 5-J.Daniels pass incomplete deep left to 17-T.McLaurin.
(12:05) 10-T.Way punts 39 yards to CHI 20, Center-69-T.Ott, out of bounds.
(11:56) 4-D.Swift left end to CHI 26 for 6 yards (20-Q.Martin; 4-F.Luvu).
(11:17) (Shotgun) 4-D.Swift right end to CHI 31 for 5 yards (20-Q.Martin).
(10:45) (No Huddle, Shotgun) 18-C.Williams sacked at CHI 26 for -5 yards (96-J.Holmes).
(10:01) (Shotgun) 18-C.Williams scrambles up the middle to CHI 39 for 13 yards (4-F.Luvu).
(9:14) (No Huddle) 4-D.Swift right end to CHI 40 for 1 yard (54-B.Wagner).
(8:30) 18-C.Williams pass short right to 2-D.Moore to CHI 40 for no gain (25-B.St-Juste, 4-F.Luvu).
(8:25) 5-J.Daniels pass short left to 86-Z.Ertz to CHI 28 for 12 yards (53-T.Edwards, 31-K.Byard).
(7:51) (No Huddle, Shotgun) 5-J.Daniels pass short right to 2-D.Brown pushed ob at CHI 4 for 24 yards (1-J.Johnson). PENALTY on WAS-67-N.Allegretti, Ineligible Downfield Pass, 5 yards, enforced at CHI 28 - No Play.
(7:26) (No Huddle, Shotgun) 5-J.Daniels pass incomplete deep middle to 85-N.Brown. WAS-71-A.Wylie was injured during the play.
(7:21) (Shotgun) 5-J.Daniels scrambles right tackle to CHI 20 for 13 yards (39-J.Blackwell). PENALTY on CHI-22-E.Hicks, Defensive Holding, 5 yards, enforced at CHI 20.
(6:50) 8-B.Robinson left end to CHI 13 for 2 yards (49-T.Edmunds). ** Injury Update: WAS-71-A.Wylie has returned to the game.
(6:12) (No Huddle, Shotgun) 30-A.Ekeler right tackle to CHI 9 for 4 yards (91-Ch.Williams).
(5:32) (No Huddle, Shotgun) 5-J.Daniels pass incomplete short right to 86-Z.Ertz (29-T.Stevenson). Washington challenged the incomplete pass ruling, and the play was Upheld. The ruling on the field stands. (Timeout #1.)
(5:27) 3-A.Seibert 28 yard field goal is GOOD, Center-69-T.Ott, Holder-10-T.Way.
3-A.Seibert kicks 67 yards from WAS 35 to CHI -2. 11-D.Carter to CHI 29 for 31 yards (35-P.Butler).
(5:19) (Shotgun) 4-D.Swift right guard to CHI 31 for 2 yards (95-J.Newton).
(4:51) (No Huddle, Shotgun) 18-C.Williams scrambles right end to CHI 34 for 3 yards (4-F.Luvu).
(4:07) (Shotgun) 18-C.Williams pass short right to 15-R.Odunze pushed ob at 50 for 16 yards (25-B.St-Juste).
Timeout #1 by CHI at 04:07.
(3:31) 2-D.Moore left guard to WAS 41 for 9 yards (20-Q.Martin).
(2:58) (No Huddle, Shotgun) 4-D.Swift right guard to WAS 36 for 5 yards (94-D.Payne).
(2:34) (No Huddle) 15-R.Odunze left end to WAS 28 for 8 yards (95-J.Newton).
(2:06) (No Huddle, Shotgun) 18-C.Williams scrambles right end to WAS 23 for 5 yards (20-Q.Martin).
(1:56) (Shotgun) 4-D.Swift up the middle to WAS 25 for -2 yards (98-P.Mathis, 6-D.Fowler).
(1:18) (Shotgun) 18-C.Williams pass incomplete deep left to 13-K.Allen.
(1:11) (Shotgun) 18-C.Williams sacked at WAS 40 for -15 yards (94-D.Payne).
(1:02) 19-T.Taylor punts 32 yards to WAS 8, Center-46-S.Daly, fair catch by 14-O.Zaccheaus.
Timeout #2 by WAS at 01:02.
(:55) (Shotgun) 5-J.Daniels pass short right to 85-N.Brown to WAS 16 for 8 yards (29-T.Stevenson).
(:36) (No Huddle, Shotgun) 5-J.Daniels pass short left to 8-B.Robinson to WAS 27 for 11 yards (95-D.Walker; 31-K.Byard).
(:18) (No Huddle, Shotgun) 5-J.Daniels pass short right to 85-N.Brown to WAS 40 for 13 yards (29-T.Stevenson).
(:13) (Shotgun) 5-J.Daniels pass short right to 86-Z.Ertz pushed ob at CHI 49 for 11 yards (53-T.Edwards).
Timeout #3 by WAS at 00:13.
(:08) (No Huddle, Shotgun) 5-J.Daniels pass incomplete short right.
(:03) (No Huddle, Shotgun) 30-A.Ekeler right guard to CHI 20 for 29 yards (49-T.Edmunds; 29-T.Stevenson).
END QUARTER 2
8-C.Santos kicks 65 yards from CHI 35 to end zone, Touchback to the WAS 30.
(15:00) (Shotgun) 5-J.Daniels pass short right to 2-D.Brown to WAS 36 for 6 yards (31-K.Byard; 95-D.Walker).
(14:26) (No Huddle, Shotgun) 5-J.Daniels pass deep left to 86-Z.Ertz to CHI 44 for 20 yards (1-J.Johnson).
(13:52) (No Huddle, Shotgun) 5-J.Daniels pass incomplete short middle.
(13:48) (No Huddle, Shotgun) 8-B.Robinson right guard to CHI 37 for 7 yards (53-T.Edwards; 49-T.Edmunds).
(13:13) (No Huddle, Shotgun) 5-J.Daniels scrambles right end ran ob at CHI 33 for 4 yards (39-J.Blackwell).
(12:32) 5-J.Daniels sacked at CHI 39 for -6 yards (53-T.Edwards).
Timeout #1 by WAS at 12:32.
(11:48) (No Huddle, Shotgun) 30-A.Ekeler right tackle to CHI 34 for 5 yards (52-D.Taylor).
(11:11) (No Huddle, Shotgun) 5-J.Daniels right guard to CHI 39 for -5 yards (98-M.Sweat, 99-G.Dexter). Penalty on WAS-5-J.Daniels, Illegal Motion, declined.
(10:41) (Punt formation) Penalty on WAS, Delay of Game, declined.
(10:28) 10-T.Way punts 35 yards to CHI 4, Center-69-T.Ott, downed by WAS-69-T.Ott.
(10:18) 4-D.Swift right tackle to CHI 7 for 3 yards (0-M.Sainristil).
(9:55) (No Huddle, Shotgun) 18-C.Williams pass incomplete short right [99-C.Ferrell].
(9:50) (Shotgun) 18-C.Williams pass incomplete short left to 13-K.Allen.
(9:46) 19-T.Taylor punts 49 yards to WAS 44, Center-46-S.Daly, fair catch by 14-O.Zaccheaus. PENALTY on CHI-92-D.Hardy, Unnecessary Roughness, 15 yards, enforced at WAS 44.
(9:38) (Shotgun) 8-B.Robinson up the middle to CHI 45 for -4 yards (55-J.Martin).
(9:04) (No Huddle, Shotgun) 5-J.Daniels scrambles right end pushed ob at CHI 32 for 13 yards (31-K.Byard).
(8:42) (No Huddle, Shotgun) 5-J.Daniels pass short left to 14-O.Zaccheaus for 32 yards, TOUCHDOWN NULLIFIED by Penalty. PENALTY on WAS-76-S.Cosmi, Ineligible Downfield Pass, 4 yards, enforced at CHI 32 - No Play.
(8:35) (No Huddle, Shotgun) 5-J.Daniels pass short left to 86-Z.Ertz to CHI 30 for 6 yards (22-E.Hicks).
(7:58) (No Huddle, Shotgun) 30-A.Ekeler up the middle to CHI 27 for 3 yards (95-D.Walker; 99-G.Dexter).
(7:25) (No Huddle, Shotgun) 5-J.Daniels pass short left to 30-A.Ekeler to CHI 22 for 5 yards (49-T.Edmunds; 95-D.Walker).
(6:39) 60-M.Deiter reported in as eligible. 5-J.Daniels sacked at CHI 29 for -7 yards (98-M.Sweat).
Timeout #2 by WAS at 06:39.
(5:52) 3-A.Seibert 47 yard field goal is GOOD, Center-69-T.Ott, Holder-10-T.Way.
3-A.Seibert kicks 61 yards from WAS 35 to CHI 4. 11-D.Carter to CHI 30 for 26 yards (20-Q.Martin; 40-T.Owens).
(5:40) (Shotgun) 18-C.Williams scrambles left end to CHI 37 for 7 yards (98-P.Mathis).
(5:00) (Shotgun) 15-R.Odunze left end pushed ob at CHI 42 for 5 yards (4-F.Luvu, 25-B.St-Juste).
(4:22) (No Huddle) 4-D.Swift left end to 50 for 8 yards (54-B.Wagner).
(3:53) (No Huddle, Shotgun) 18-C.Williams pass incomplete deep left to 15-R.Odunze.
(3:46) (Shotgun) 18-C.Williams pass short left to 2-D.Moore to WAS 43 for 7 yards (25-B.St-Juste). PENALTY on CHI-58-D.Wright, Illegal Formation, 5 yards, enforced at 50 - No Play.
(3:15) (Shotgun) PENALTY on CHI-76-T.Jenkins, False Start, 5 yards, enforced at CHI 45 - No Play.
(2:56) (Shotgun) 18-C.Williams pass incomplete deep right to 13-K.Allen.
(2:51) 19-T.Taylor punts 53 yards to WAS 7, Center-46-S.Daly, fair catch by 14-O.Zaccheaus.
(2:44) (Shotgun) 8-B.Robinson left guard to WAS 12 for 5 yards (95-D.Walker).
(2:20) (No Huddle, Shotgun) 8-B.Robinson left end to WAS 14 for 2 yards (29-T.Stevenson, 95-D.Walker).
(1:44) (No Huddle, Shotgun) 5-J.Daniels pass incomplete short middle to 86-Z.Ertz.
(1:39) 10-T.Way punts 49 yards to CHI 37, Center-69-T.Ott. 11-D.Carter to CHI 41 for 4 yards (35-P.Butler).
(1:29) 18-C.Williams pass short right to 14-G.Everett ran ob at CHI 44 for 3 yards (4-F.Luvu).
(:54) (Shotgun) 4-D.Swift left end for 56 yards, TOUCHDOWN.
8-C.Santos extra point is GOOD, Center-46-S.Daly, Holder-19-T.Taylor.
8-C.Santos kicks 64 yards from CHI 35 to WAS 1. 26-J.McNichols to WAS 24 for 23 yards (55-J.Martin; 45-A.Ogbongbemiga).
(:37) (Shotgun) 5-J.Daniels pass incomplete short right to 87-J.Bates.
(:28) (No Huddle, Shotgun) 5-J.Daniels pass deep middle to 17-T.McLaurin to WAS 49 for 25 yards (22-E.Hicks, 57-J.Sanborn). PENALTY on CHI-29-T.Stevenson, Unnecessary Roughness, 15 yards, enforced at WAS 49.
END QUARTER 3
(15:00) (Shotgun) 5-J.Daniels pass incomplete deep left to 17-T.McLaurin.
(14:54) (No Huddle, Shotgun) PENALTY on WAS-73-T.Scott, False Start, 5 yards, enforced at CHI 36 - No Play.
(14:54) (Shotgun) 5-J.Daniels pass short right to 12-L.McCaffrey to CHI 33 for 8 yards (49-T.Edmunds; 1-J.Johnson).
(14:13) (No Huddle, Shotgun) 5-J.Daniels pass incomplete short middle to 86-Z.Ertz [99-G.Dexter].
(14:09) 3-A.Seibert 51 yard field goal is No Good, Short, Center-69-T.Ott, Holder-10-T.Way.
(14:04) 18-C.Williams pass incomplete short left to 13-K.Allen [95-J.Newton].
(13:59) (Shotgun) 18-C.Williams pass incomplete short left. Penalty on CHI-72-K.Amegadjie, Ineligible Downfield Pass, declined.
(13:55) (Shotgun) 18-C.Williams pass incomplete deep right to 15-R.Odunze [95-J.Newton]. CHI-76-T.Jenkins was injured during the play.
(13:50) (Punt formation) PENALTY on CHI-30-T.Moore, False Start, 5 yards, enforced at CHI 41 - No Play.
(13:50) 19-T.Taylor punts 55 yards to WAS 9, Center-46-S.Daly, out of bounds.
(13:44) 30-A.Ekeler right end to WAS 13 for 4 yards (49-T.Edmunds).
(13:13) (No Huddle, Shotgun) 5-J.Daniels pass incomplete deep left to 85-N.Brown.
(13:05) (No Huddle, Shotgun) 5-J.Daniels pass deep middle to 17-T.McLaurin to WAS 31 for 18 yards (49-T.Edmunds).
(12:45) (No Huddle, Shotgun) 30-A.Ekeler left guard to WAS 36 for 5 yards (99-G.Dexter).
(12:23) (No Huddle, Shotgun) 5-J.Daniels pass short left to 17-T.McLaurin to WAS 44 for 8 yards (29-T.Stevenson).
(11:43) (No Huddle, Shotgun) 30-A.Ekeler right tackle to WAS 46 for 2 yards (99-G.Dexter).
(11:23) (No Huddle, Shotgun) 5-J.Daniels scrambles right end pushed ob at CHI 49 for 5 yards (94-A.Booker).
(10:40) (No Huddle, Shotgun) 5-J.Daniels pass incomplete deep right [55-J.Martin].
(10:35) 10-T.Way punts 34 yards to CHI 15, Center-69-T.Ott, fair catch by 11-D.Carter.
(10:28) 4-D.Swift up the middle to CHI 22 for 7 yards (54-B.Wagner).
(10:05) (No Huddle, Shotgun) 4-D.Swift right guard to CHI 44 for 22 yards (0-M.Sainristil; 11-J.Chinn). CHI-60-B.Murray was injured during the play.
(9:23) (Shotgun) 18-C.Williams pass short left to 15-R.Odunze pushed ob at WAS 47 for 9 yards (25-B.St-Juste).
(8:59) (No Huddle, Shotgun) 18-C.Williams pass short middle to 85-C.Kmet to WAS 33 for 14 yards (20-Q.Martin).
(8:33) (No Huddle) 2-D.Moore right end to WAS 35 for -2 yards (20-Q.Martin, 92-D.Armstrong).
(7:59) (No Huddle, Shotgun) 18-C.Williams pass deep left to 2-D.Moore pushed ob at WAS 8 for 27 yards (20-Q.Martin) [54-B.Wagner]. CHI-2-D.Moore was injured during the play. ** Injury Update: CHI-76-T.Jenkins has returned to the game.
(7:38) (Shotgun) 4-D.Swift left end to WAS 8 for no gain (11-J.Chinn).
(6:57) (Shotgun) 18-C.Williams pass short left to 11-D.Carter to WAS 1 for 7 yards (25-B.St-Juste).
(6:21) 68-D.Kramer reported in as eligible. 18-C.Williams FUMBLES (Aborted) at WAS 4, RECOVERED by WAS-95-J.Newton at WAS 1. 95-J.Newton to WAS 3 for 2 yards (76-T.Jenkins).
(6:18) 60-M.Deiter reported in as eligible. 8-B.Robinson right end to WAS 4 for 1 yard (31-K.Byard).
(5:45) (No Huddle, Shotgun) 8-B.Robinson left guard to WAS 8 for 4 yards (55-J.Martin; 49-T.Edmunds).
(5:02) (No Huddle, Shotgun) 5-J.Daniels scrambles left end to WAS 12 for 4 yards (91-Ch.Williams, 49-T.Edmunds).
(4:33) 10-T.Way punts 57 yards to CHI 31, Center-69-T.Ott. 11-D.Carter to CHI 38 for 7 yards (39-J.Reaves; 57-N.Bellore).
(4:21) (Shotgun) 4-D.Swift up the middle to CHI 38 for no gain (54-B.Wagner). ** Injury Update: CHI-2-D.Moore has returned to the game.
(3:55) (No Huddle, Shotgun) 18-C.Williams pass incomplete deep right [95-J.Newton].
(3:49) (Shotgun) 18-C.Williams pass short left to 15-R.Odunze to WAS 46 for 16 yards (0-M.Sainristil).
(3:21) (No Huddle, Shotgun) 23-R.Johnson left guard to WAS 41 for 5 yards (1-N.Igbinoghene).
(2:59) (No Huddle) 18-C.Williams pass short right to 13-K.Allen to WAS 19 for 22 yards (20-Q.Martin).
(2:11) (Shotgun) 4-D.Swift up the middle to WAS 17 for 2 yards (54-B.Wagner).
(2:00) (Shotgun) 18-C.Williams right end to WAS 14 for 3 yards (94-D.Payne).
(1:19) (Shotgun) 18-C.Williams up the middle to WAS 12 for 2 yards (54-B.Wagner; 94-D.Payne).
(:35) (Shotgun) 18-C.Williams pass incomplete short right to 13-K.Allen [95-J.Newton]. PENALTY on WAS-25-B.St-Juste, Defensive Pass Interference, 11 yards, enforced at WAS 12 - No Play.
(:31) 18-C.Williams pass incomplete short left to 2-D.Moore (0-M.Sainristil).
(:27) 23-R.Johnson right guard for 1 yard, TOUCHDOWN.
TWO-POINT CONVERSION ATTEMPT. 18-C.Williams pass to 85-C.Kmet is complete. ATTEMPT SUCCEEDS.
8-C.Santos kicks 65 yards from CHI 35 to WAS 0. 30-A.Ekeler to WAS 24 for 24 yards (92-D.Hardy).
(:19) (Shotgun) 5-J.Daniels pass incomplete deep middle to 86-Z.Ertz.
(:12) (No Huddle, Shotgun) 5-J.Daniels pass short left to 86-Z.Ertz to WAS 35 for 11 yards (39-J.Blackwell) [94-A.Booker].
(:06) (Shotgun) 5-J.Daniels pass short left to 17-T.McLaurin ran ob at WAS 48 for 13 yards.
Timeout #3 by WAS at 00:06.
(:02) (No Huddle, Shotgun) 5-J.Daniels pass deep middle to 85-N.Brown for 52 yards, TOUCHDOWN.
END GAME"

chi_was_summary <- "Headline: Jayden Daniels' Hail Mary TD to Noah Brown gives Commanders 18-15 win over Bears.
Chicago’s offense struggling had just 172 yards of offense before the fourth quarter started and did not get on the board until D'Andre Swift's 56-yard TD run late in the third, but then rallied to build a lead at with only seconds remaining. On the last play of the game, Jayden Daniels heaves a Hail Mary pass that falls into the hands of Noah Brown for the 52-yard game-winning touchdown. Daniels' heroics came after the Commanders fell behind with 25 seconds left on a TD run by Roschon Johnson after a penalty that put the ball on the 1-yard line. There were just 19 seconds left after a kickoff return. Three completions later, Daniels threw the Hail Mary to Brown for the win. 
Notable Performances: Daniels threw for 326 yards and ran for 52. Caleb Williams finished 10 of 24 for 131 yards. Austin Seibert kicked four field goals for the Commanders for their only points until the Hail Mary.
Injuries: Bears: Braxton Jones left in the first half, guards Teven Jenkins and Bill Murray were knocked out in the fourth.
Commanders: LT Cornelius Lucas left in the third quarter with an ankle injury." 

# Append game log and summary to training dataframe 
chi_was <- as.data.frame(cbind(chi_was_log, chi_was_summary)) %>% rename(game_log = chi_was_log, game_summary = chi_was_summary)
training <- rbind(training, chi_was)

jax_det_log <- "GAME
39-J.Bates kicks 63 yards from DET 35 to JAX 2. 12-D.Duvernay to JAX 31 for 29 yards (47-E.Turner; 95-P.O'Connor).
(14:55) (Shotgun) 7-B.Thomas right end to JAX 35 for 4 yards (34-A.Anzalone, 46-J.Campbell).
(14:16) 10-M.Jones pass short left to 17-E.Engram to JAX 39 for 4 yards (34-A.Anzalone).
(13:34) (Shotgun) 10-M.Jones pass short right to 17-E.Engram to JAX 42 for 3 yards (32-B.Branch).
(12:59) 1-T.Etienne right end to JAX 47 for 5 yards (98-D.Reader, 46-J.Campbell).
(12:20) (Shotgun) 10-M.Jones pass short right to 85-B.Strange to DET 47 for 6 yards (34-A.Anzalone; 32-B.Branch).
(11:43) 10-M.Jones pass short left to 7-B.Thomas pushed ob at DET 45 for 2 yards (0-T.Arnold; 46-J.Campbell).
(11:06) 2-D.Johnson right tackle to DET 45 for no gain (44-M.Rodriguez).
(10:22) (Shotgun) 10-M.Jones scrambles up the middle to DET 40 for 5 yards (21-A.Robertson).
(9:39) 39-C.Little 59 yard field goal is GOOD, Center-46-R.Matiscik, Holder-9-L.Cooke.
39-C.Little kicks 65 yards from JAX 35 to end zone, Touchback to the DET 30.
(9:36) 16-J.Goff pass short right to 84-S.Zylstra pushed ob at JAX 48 for 22 yards (5-A.Cisco).
(8:52) (Shotgun) 16-J.Goff pass short right to 14-A.St. Brown pushed ob at JAX 42 for 6 yards (25-R.Darby).
(8:21) (No Huddle) 5-D.Montgomery left end to JAX 37 for 5 yards (3-T.Campbell).
(7:41) 5-D.Montgomery left tackle to JAX 28 for 9 yards (5-A.Cisco, 51-V.Miller).
(7:14) (No Huddle, Shotgun) 16-J.Goff pass short middle to 5-D.Montgomery to JAX 23 for 5 yards (51-V.Miller).
(6:40) 26-J.Gibbs right tackle to JAX 22 for 1 yard (33-D.Lloyd). PENALTY on JAX-91-A.Armstead, Defensive Offside, 5 yards, enforced at JAX 23 - No Play.
(6:16) 16-J.Goff pass incomplete short middle. Ball thrown away
(6:10) (Shotgun) 16-J.Goff pass short left to 14-A.St. Brown to JAX 7 for 11 yards (23-F.Oluokun).
(5:29) 5-D.Montgomery up the middle to JAX 2 for 5 yards (99-J.Ledbetter, 6-D.Savage).
(5:02) (No Huddle, Shotgun) 5-D.Montgomery up the middle for 2 yards, TOUCHDOWN.
39-J.Bates extra point is GOOD, Center-49-H.Hatten, Holder-3-J.Fox.
39-J.Bates kicks 65 yards from DET 35 to end zone, Touchback to the JAX 30.
(4:59) (Shotgun) 10-M.Jones pass short left to 17-E.Engram to JAX 39 for 9 yards (32-B.Branch).
(4:20) 1-T.Etienne right end to JAX 39 for no gain (31-K.Joseph).
(3:41) (Shotgun) 1-T.Etienne right tackle to JAX 38 for -1 yards (34-A.Anzalone, 93-J.Paschal).
(3:00) 9-L.Cooke punts 55 yards to DET 7, Center-46-R.Matiscik. 11-K.Raymond to DET 7 for no gain (20-D.Thomas).
(2:53) 16-J.Goff pass short right to 17-T.Patrick to DET 11 for 4 yards (23-F.Oluokun).
(2:29) (No Huddle, Shotgun) 26-J.Gibbs right end to DET 14 for 3 yards (44-T.Walker).
(1:51) (Shotgun) 16-J.Goff pass short right to 14-A.St. Brown pushed ob at DET 19 for 5 yards (25-R.Darby).
(1:22) (Shotgun) 16-J.Goff pass incomplete short right. Ball thrown away
(1:18) 16-J.Goff pass short right to 14-A.St. Brown pushed ob at DET 37 for 18 yards (25-R.Darby).
(:44) 26-J.Gibbs right end to DET 38 for 1 yard (23-F.Oluokun).
(:15) (No Huddle) 26-J.Gibbs up the middle to DET 46 for 8 yards (33-D.Lloyd, 3-T.Campbell).
END QUARTER 1
(15:00) 16-J.Goff pass incomplete short left to 9-J.Williams (25-R.Darby) [41-J.Hines-Allen]. JAX-25-R.Darby was injured during the play.
(14:56) 16-J.Goff up the middle to DET 49 for 3 yards (23-F.Oluokun).
(14:26) (No Huddle) 16-J.Goff pass short left to 9-J.Williams pushed ob at JAX 27 for 24 yards (5-A.Cisco).
(13:52) 26-J.Gibbs left tackle pushed ob at JAX 4 for 23 yards (6-D.Savage).
(13:11) 26-J.Gibbs up the middle to JAX 1 for 3 yards (93-T.Lacy; 30-M.Brown).
(12:32) 26-J.Gibbs up the middle for 1 yard, TOUCHDOWN.
39-J.Bates extra point is GOOD, Center-49-H.Hatten, Holder-3-J.Fox. ** Injury Update: JAX-25-R.Darby has returned to the game.
39-J.Bates kicks 65 yards from DET 35 to end zone, Touchback to the JAX 30.
(12:26) 1-T.Etienne up the middle to JAX 31 for 1 yard (44-M.Rodriguez, 41-J.Houston).
(11:48) (Shotgun) PENALTY on JAX-77-A.Harrison, False Start, 5 yards, enforced at JAX 31 - No Play.
Timeout #1 by JAX at 11:48.
(11:48) (Shotgun) 10-M.Jones pass incomplete deep left to 17-E.Engram.
(11:44) (Shotgun) 10-M.Jones pass short right to 1-T.Etienne to JAX 23 for -3 yards (21-A.Robertson).
(11:04) 9-L.Cooke punts 56 yards to DET 21, Center-46-R.Matiscik. 11-K.Raymond to DET 36 for 15 yards (53-A.Pittman).
(10:51) (Shotgun) 16-J.Goff pass short left to 14-A.St. Brown to DET 38 for 2 yards. Lateral to 9-J.Williams pushed ob at DET 47 for 9 yards (26-A.Johnson).
(10:19) 5-D.Montgomery up the middle to JAX 42 for 11 yards (52-D.Hamilton, 59-M.Cole).
(9:48) (No Huddle) 5-D.Montgomery left tackle to JAX 34 for 8 yards (51-V.Miller).
(9:21) (No Huddle) 5-D.Montgomery up the middle to JAX 29 for 5 yards (44-T.Walker; 99-J.Ledbetter).
(8:40) 16-J.Goff pass short middle to 14-A.St. Brown to JAX 17 for 12 yards (6-D.Savage).
(8:01) (Shotgun) 16-J.Goff pass short right to 5-D.Montgomery to JAX 11 for 6 yards (23-F.Oluokun, 51-V.Miller).
(7:26) 16-J.Goff scrambles right end to JAX 6 for 5 yards (26-A.Johnson).
(6:44) (Shotgun) 5-D.Montgomery up the middle for 6 yards, TOUCHDOWN.
39-J.Bates extra point is GOOD, Center-49-H.Hatten, Holder-3-J.Fox.
39-J.Bates kicks 65 yards from DET 35 to end zone, Touchback to the JAX 30.
(6:39) 10-M.Jones pass short right to 1-T.Etienne to JAX 38 for 8 yards (23-C.Davis; 34-A.Anzalone).
(6:01) (Shotgun) 1-T.Etienne right tackle to JAX 41 for 3 yards (46-J.Campbell).
(5:21) 10-M.Jones pass incomplete deep right to 12-D.Duvernay.
(5:15) (Shotgun) 10-M.Jones pass incomplete deep left to 0-G.Davis.
(5:10) (Shotgun) 10-M.Jones pass incomplete deep right to 7-B.Thomas.
Timeout #2 by JAX at 05:10.
(5:05) 9-L.Cooke punts 43 yards to DET 16, Center-46-R.Matiscik, fair catch by 11-K.Raymond.
(4:58) 16-J.Goff pass short right to 26-J.Gibbs to JAX 30 for 54 yards (51-V.Miller). ** Injury Update: JAX-3-T.Campbell has returned to the game.
(4:18) (No Huddle, Shotgun) 26-J.Gibbs right end to JAX 27 for 3 yards (91-A.Armstead).
(3:37) 26-J.Gibbs right end to JAX 27 for no gain (30-M.Brown).
(2:53) (Shotgun) 16-J.Goff pass short right to 14-A.St. Brown for 27 yards, TOUCHDOWN.
39-J.Bates extra point is GOOD, Center-49-H.Hatten, Holder-3-J.Fox.
39-J.Bates kicks 65 yards from DET 35 to end zone, Touchback to the JAX 30.
(2:46) (Shotgun) 1-T.Etienne right end pushed ob at JAX 33 for 3 yards (32-B.Branch). DET-34-A.Anzalone was injured during the play.
(2:19) (Shotgun) 10-M.Jones pass short right to 89-L.Farrell to JAX 36 for 3 yards (51-B.Niemann).
(2:00) (Shotgun) 10-M.Jones pass short left to 0-G.Davis to JAX 39 for 3 yards (21-A.Robertson; 46-J.Campbell).
(1:24) 10-M.Jones up the middle to JAX 41 for 2 yards (54-A.McNeill).
(1:00) (No Huddle, Shotgun) 10-M.Jones pass short middle to 7-B.Thomas to DET 35 for 24 yards (23-C.Davis). DET-99-Z.Smith was injured during the play.
(:46) (Shotgun) PENALTY on JAX-7-B.Thomas, False Start, 5 yards, enforced at DET 35 - No Play.
Timeout #1 by DET at 00:46.
(:46) (Shotgun) 10-M.Jones pass incomplete short right. ** Injury Update: DET-99-Z.Smith has returned to the game. Ball thrown away
(:39) (Shotgun) 10-M.Jones pass short right to 11-P.Washington to DET 30 for 10 yards (41-J.Houston).
(:17) (No Huddle, Shotgun) 10-M.Jones pass short right to 17-E.Engram ran ob at DET 23 for 7 yards.
(:13) (Shotgun) Direct snap to 1-T.Etienne. 1-T.Etienne right end pushed ob at DET 22 for 1 yard (31-K.Joseph).
(:08) (Shotgun) 10-M.Jones pass short middle to 17-E.Engram to DET 17 for 5 yards (23-C.Davis).
(:03) 39-C.Little 35 yard field goal is GOOD, Center-46-R.Matiscik, Holder-9-L.Cooke. PENALTY on DET-54-A.McNeill, Unnecessary Roughness, 15 yards, enforced between downs.
Timeout #3 by JAX at 00:03.
END QUARTER 2
39-C.Little kicks 50 yards from 50 to landing zone to end zone, Touchback to the DET 20.
(15:00) (Shotgun) 16-J.Goff scrambles up the middle to DET 25 for 5 yards (33-D.Lloyd).
(14:26) 16-J.Goff pass short left to 9-J.Williams to DET 30 for 5 yards (23-F.Oluokun).
(13:40) (Shotgun) 5-D.Montgomery right tackle to DET 36 for 6 yards (5-A.Cisco).
(13:05) 16-J.Goff pass deep middle to 9-J.Williams for 64 yards, TOUCHDOWN.
39-J.Bates extra point is GOOD, Center-49-H.Hatten, Holder-3-J.Fox.
39-J.Bates kicks 65 yards from DET 35 to end zone, Touchback to the JAX 30.
(12:55) (Shotgun) 10-M.Jones pass short right to 1-T.Etienne pushed ob at JAX 31 for 1 yard (29-K.Vildor).
(12:23) (Shotgun) 10-M.Jones pass incomplete deep right to 0-G.Davis.
(12:17) (Shotgun) 10-M.Jones pass incomplete short right to 11-P.Washington.
(12:12) 9-L.Cooke punts 52 yards to DET 17, Center-46-R.Matiscik, out of bounds.
(12:05) 16-J.Goff pass short left to 14-A.St. Brown pushed ob at DET 43 for 26 yards (25-R.Darby).
(11:34) (No Huddle) 5-D.Montgomery up the middle to DET 44 for 1 yard (33-D.Lloyd; 23-F.Oluokun).
(11:07) (No Huddle, Shotgun) 16-J.Goff pass incomplete short middle to 9-J.Williams.
(11:03) (Shotgun) 16-J.Goff pass deep middle to 9-J.Williams to JAX 34 for 22 yards (5-A.Cisco, 23-F.Oluokun) [91-A.Armstead].
(10:15) (Shotgun) 16-J.Goff pass short middle to 5-D.Montgomery to JAX 25 for 9 yards (3-T.Campbell, 59-M.Cole).
(9:32) 5-D.Montgomery right tackle to JAX 20 for 5 yards (41-J.Hines-Allen, 52-D.Hamilton). PENALTY on DET-8-A.Robinson, Unnecessary Roughness, 15 yards, enforced between downs.
(9:04) 16-J.Goff scrambles right end to JAX 27 for 8 yards (22-J.Jones).
(8:19) 5-D.Montgomery left tackle to JAX 23 for 4 yards (52-D.Hamilton).
(7:38) 14-A.St. Brown left end to JAX 27 for -4 yards (41-J.Hines-Allen).
(7:03) (Shotgun) 16-J.Goff pass incomplete short left. PENALTY on JAX-22-J.Jones, Illegal Contact, 5 yards, enforced at JAX 27 - No Play.
(6:56) 5-D.Montgomery left tackle to JAX 17 for 5 yards (98-J.Jefferson, 3-T.Campbell).
(6:26) (No Huddle) 5-D.Montgomery up the middle to JAX 15 for 2 yards (51-V.Miller).
(5:42) (Shotgun) 5-D.Montgomery up the middle to JAX 14 for 1 yard (41-J.Hines-Allen).
(5:05) (Shotgun) 16-J.Goff pass short middle to 17-T.Patrick to JAX 5 for 9 yards (3-T.Campbell).
(4:21) (Shotgun) 16-J.Goff pass short left to 89-B.Wright for 5 yards, TOUCHDOWN.
39-J.Bates extra point is GOOD, Center-49-H.Hatten, Holder-3-J.Fox.
39-J.Bates kicks 64 yards from DET 35 to JAX 1. 12-D.Duvernay to JAX 30 for 29 yards (95-P.O'Connor; 44-M.Rodriguez).
(4:10) 1-T.Etienne left end to JAX 32 for 2 yards (54-A.McNeill; 51-B.Niemann).
(3:33) (Shotgun) 10-M.Jones pass short left to 7-B.Thomas to DET 47 for 21 yards (32-B.Branch).
(3:04) (No Huddle, Shotgun) 10-M.Jones pass incomplete short middle to 85-B.Strange. JAX-0-G.Davis was injured during the play. PENALTY on DET-46-J.Campbell, Defensive Pass Interference, 6 yards, enforced at DET 47 - No Play.
(2:56) 1-T.Etienne up the middle to DET 32 for 9 yards (44-M.Rodriguez; 32-B.Branch).
(2:26) (No Huddle, Shotgun) 10-M.Jones pass deep right intended for 89-L.Farrell INTERCEPTED by 31-K.Joseph at DET 4. 31-K.Joseph pushed ob at DET 4 for no gain (89-L.Farrell).
(2:18) 26-J.Gibbs up the middle to DET 20 for 16 yards (30-M.Brown; 6-D.Savage).
(1:42) 16-J.Goff pass incomplete deep left to 17-T.Patrick.
(1:37) 26-J.Gibbs left tackle to DET 27 for 7 yards (33-D.Lloyd).
(:56) (Shotgun) 16-J.Goff pass short middle to 14-A.St. Brown to 50 for 23 yards (3-T.Campbell).
(:14) 9-J.Williams right end to JAX 48 for 2 yards (6-D.Savage).
END QUARTER 3
(15:00) 26-J.Gibbs right tackle to JAX 44 for 4 yards (22-J.Jones).
(14:27) (Shotgun) 16-J.Goff pass deep right to 14-A.St. Brown to JAX 22 for 22 yards (30-M.Brown). JAX-30-M.Brown was injured during the play.
(14:03) 16-J.Goff pass short middle to 17-T.Patrick to JAX 9 for 13 yards (22-J.Jones; 23-F.Oluokun).
(13:27) 16-J.Goff pass short right to 14-A.St. Brown for 9 yards, TOUCHDOWN.
39-J.Bates extra point is GOOD, Center-49-H.Hatten, Holder-3-J.Fox.
39-J.Bates kicks 65 yards from DET 35 to end zone, Touchback to the JAX 30.
(13:23) 1-T.Etienne up the middle to JAX 29 for -1 yards (46-J.Campbell). ** Injury Update: JAX-65-M.Morse has returned to the game.
(12:43) (Shotgun) 10-M.Jones pass short right to 7-B.Thomas to JAX 41 for 12 yards (29-K.Vildor).
(12:04) 1-T.Etienne left tackle to JAX 43 for 2 yards (32-B.Branch).
(11:22) (Shotgun) 10-M.Jones pass short left to 7-B.Thomas to DET 34 for 23 yards (0-T.Arnold; 31-K.Joseph).
(10:44) (Shotgun) 2-D.Johnson up the middle to DET 31 for 3 yards (46-J.Campbell; 98-D.Reader).
(10:07) (Shotgun) 10-M.Jones pass incomplete deep left to 12-D.Duvernay.
(10:02) (Shotgun) 10-M.Jones pass incomplete deep right to 11-P.Washington.
(9:57) (Shotgun) 10-M.Jones sacked at DET 40 for -9 yards (sack split by 99-Z.Smith and 46-J.Campbell).
(9:53) 2-H.Hooker in at QB. 13-C.Reynolds left tackle to JAX 40 for 19 yards (26-A.Johnson; 3-T.Campbell). ** Injury Update: JAX-30-M.Brown has returned to the game.
(9:13) 2-H.Hooker scrambles right end pushed ob at JAX 38 for 2 yards (91-A.Armstead).
(8:36) 13-C.Reynolds up the middle to JAX 36 for 2 yards (99-J.Ledbetter; 59-M.Cole).
(7:57) (Shotgun) 2-H.Hooker pass incomplete short right to 8-A.Robinson.
(7:53) 39-J.Bates 54 yard field goal is GOOD, Center-49-H.Hatten, Holder-3-J.Fox.
39-J.Bates kicks 65 yards from DET 35 to end zone, Touchback to the JAX 30.
(7:49) 1-T.Etienne left tackle to JAX 33 for 3 yards (46-J.Campbell).
(7:08) (Shotgun) 10-M.Jones pass incomplete deep left to 17-E.Engram.
(7:03) (Shotgun) 10-M.Jones pass deep left to 7-B.Thomas pushed ob at DET 34 for 33 yards (12-B.Joseph) [91-L.Onwuzurike]. JAX-7-B.Thomas was injured during the play. Detroit challenged the pass completion ruling, and the play was REVERSED. (Shotgun) 10-M.Jones pass incomplete deep left to 7-B.Thomas (12-B.Joseph) [91-L.Onwuzurike]. JAX-7-B.Thomas was injured during the play.
(6:58) (Punt formation) PENALTY on JAX-81-J.Deguara, False Start, 5 yards, enforced at JAX 33 - No Play.
(6:58) 9-L.Cooke punts 61 yards to DET 11, Center-46-R.Matiscik. 11-K.Raymond pushed ob at DET 26 for 15 yards (48-C.Muma).
(6:45) 33-S.Vaki up the middle to DET 33 for 7 yards (98-J.Jefferson).
(6:04) 33-S.Vaki left tackle to DET 32 for -1 yards (93-T.Lacy).
(5:24) (Shotgun) 2-H.Hooker pass short left to 8-A.Robinson to DET 39 for 7 yards (3-T.Campbell). DET-8-A.Robinson was injured during the play. PENALTY on JAX-51-V.Miller, Unnecessary Roughness, 15 yards, enforced at DET 39.
(4:59) 33-S.Vaki left end to JAX 42 for 4 yards (91-A.Armstead, 33-D.Lloyd).
(4:20) 33-S.Vaki left end to JAX 34 for 8 yards (30-M.Brown). PENALTY on DET-62-M.Niese, Offensive Holding, 10 yards, enforced at JAX 42 - No Play.
(4:15) 2-H.Hooker pass deep middle to 11-K.Raymond to JAX 31 for 21 yards (30-M.Brown; 26-A.Johnson).
(3:34) 33-S.Vaki right end to JAX 33 for -2 yards (99-J.Ledbetter, 48-C.Muma).
(2:53) 2-H.Hooker pass short right to 11-K.Raymond to JAX 24 for 9 yards (51-V.Miller; 48-C.Muma).
(2:07) 33-S.Vaki right tackle to JAX 23 for 1 yard (44-T.Walker; 98-J.Jefferson).
(2:00) 2-H.Hooker up the middle to JAX 20 for 3 yards (93-T.Lacy).
(1:16) 2-H.Hooker kneels to JAX 21 for -1 yards.
(:36) 2-H.Hooker kneels to JAX 22 for -1 yards.
END GAME"

jax_det_summary <- "Headline: Jared Goff and Lions score at will in 52-6 win over Jaguars.
Summary: The Lions recorded 645 total yards of offense while allowing only 170 by the Jaguars, a 475-yard margin that highlights the mismatch in the game and the Lions’ ability to score at will. Jacksonville kicker Cam Little made 59-yard field goal on the game-opening drive and closed the first half with another field goal. In between those kicks, the Lions scored four touchdowns to take a 28-3 lead, and they didn't take it easy on the Jags after halftime. Montgomery started the scoring barrage with a 2-yard run and Gibbs followed with a 1-yard run in the second quarter. Montgomery had a 6-yard run for his second score and Goff threw a 27-yard pass to St. Brown in the second quarter. The Lions went ahead 49-6 early in the fourth quarter after Goff threw a 64-yard touchdown pass to Jameson Williams, a 5-yarder to Brock Wright and a 9-yard strike to St. Brown on the right side of the end zone. Hooker gave Goff a break in the fourth and set up Jake Bates' 54-yard field goal. Detroit ran out the clock in the final minutes, mercifully choosing not to score again.
Notable Performances: Goff finished 24 of 29 for 412 yards and four touchdowns.  St. Brown had 161 receiving yards and Williams finished with 124 receiving yards. Montgomery and Gibbs combined for 218 yards of offense. Mac Jones struggled, going 17 of 29 for 138 yards yards and an interception. 
Injuries: Jaguars: CB Tyson Campbell, C Mitch Morse, and WR Gabe Davis were hurt during the game. Lions: WR Allen Robinson II and TE Shane Zylstra were hurt during the game."

# Append game log and summary to training dataframe 
jax_det <- as.data.frame(cbind(jax_det_log, jax_det_summary)) %>% rename(game_log = jax_det_log, game_summary = jax_det_summary)
training <- rbind(training, jax_det)

ind_ten_log <- "GAME
6-N.Folk kicks 65 yards from TEN 35 to end zone, Touchback to the IND 30.
(15:00) (Shotgun) 15-J.Flacco pass incomplete deep left to 83-K.Granson.
(14:54) (Shotgun) 15-J.Flacco pass short right to 11-M.Pittman to IND 39 for 9 yards (38-L.Sneed, 53-E.Jones).
(14:16) (Shotgun) 27-T.Sermon right guard to IND 43 for 4 yards (53-E.Jones).
(13:53) (No Huddle, Shotgun) 15-J.Flacco pass short left to 1-J.Downs pushed ob at IND 48 for 5 yards (28-Q.Diggs).
(13:20) (Shotgun) 27-T.Sermon left tackle to TEN 49 for 3 yards (53-E.Jones, 49-A.Key).
(12:40) (Shotgun) 27-T.Sermon right tackle to TEN 44 for 5 yards (28-Q.Diggs).
(12:01) 15-J.Flacco pass incomplete deep right to 14-A.Pierce.
(11:56) (Shotgun) 15-J.Flacco pass incomplete deep right to 16-A.Dulin.
(11:50) (Shotgun) 15-J.Flacco pass deep middle to 81-M.Alie-Cox to TEN 22 for 22 yards (28-Q.Diggs, 37-A.Hooker). TEN-28-Q.Diggs was injured during the play.
(11:23) (Shotgun) 15-J.Flacco pass deep left to 1-J.Downs for 22 yards, TOUCHDOWN.
7-M.Gay extra point is GOOD, Center-46-L.Rhodes, Holder-8-R.Sanchez.
7-M.Gay kicks 65 yards from IND 35 to end zone, Touchback to the TEN 30. PENALTY on TEN, Illegal Formation, 5 yards, enforced at TEN 30.
(11:17) 20-T.Pollard left tackle to TEN 33 for 8 yards (57-J.Carlies).
(10:44) (Shotgun) 8-W.Levis pass short right to 20-T.Pollard to TEN 31 for -2 yards (44-Z.Franklin, 45-E.Speed).
(9:58) (Shotgun) 8-W.Levis pass short left to 85-C.Okonkwo to TEN 32 for 1 yard (40-J.Jones).
(9:19) 4-R.Stonehouse punts 47 yards to IND 21, Center-46-M.Cox. 1-J.Downs to IND 36 for 15 yards (44-M.Brown).
(9:10) 27-T.Sermon right tackle to IND 36 for no gain (56-K.Murray; 58-H.Landry). ** Injury Update: TEN-28-Q.Diggs has returned to the game.
(8:31) (Shotgun) 15-J.Flacco pass deep middle intended for 11-M.Pittman INTERCEPTED by 37-A.Hooker [58-H.Landry] at TEN 43. 37-A.Hooker pushed ob at IND 27 for 30 yards (27-T.Sermon).
(8:22) (Shotgun) 8-W.Levis pass short left to 83-T.Boyd to IND 19 for 8 yards (40-J.Jones).
(7:38) 20-T.Pollard left tackle to IND 9 for 10 yards (20-N.Cross).
(6:55) (Shotgun) 8-W.Levis pass short right to 15-N.Westbrook-Ikhine for 9 yards, TOUCHDOWN.
Timeout #1 by TEN at 06:55.
6-N.Folk extra point is GOOD, Center-46-M.Cox, Holder-4-R.Stonehouse.
6-N.Folk kicks 65 yards from TEN 35 to end zone, Touchback to the IND 30.
(6:51) 15-J.Flacco pass short left to 31-T.Goodson to IND 24 for -6 yards (56-K.Murray).
(6:08) (Shotgun) 15-J.Flacco pass incomplete deep left [58-H.Landry].
(6:00) (Shotgun) 15-J.Flacco pass short right to 31-T.Goodson to IND 31 for 7 yards (53-E.Jones; 93-T.Sweat).
(5:21) 8-R.Sanchez punts 49 yards to TEN 20, Center-46-L.Rhodes. 19-J.Jackson to TEN 18 for -2 yards (16-A.Dulin).
(5:11) (Shotgun) 8-W.Levis scrambles right guard to TEN 21 for 3 yards (23-K.Moore).
(4:26) (Shotgun) 2-T.Spears right end to TEN 31 for 10 yards (20-N.Cross, 23-K.Moore).
(3:44) (Shotgun) 2-T.Spears left guard to TEN 34 for 3 yards (40-J.Jones, 57-J.Carlies).
(2:56) (Shotgun) 8-W.Levis pass short middle to 10-D.Hopkins to TEN 42 for 8 yards (40-J.Jones).
(2:14) 2-T.Spears left guard to TEN 45 for 3 yards (96-T.Bryan).
(1:33) (Shotgun) 8-W.Levis scrambles left end pushed ob at IND 48 for 7 yards (40-J.Jones).
(:43) (Shotgun) 20-T.Pollard left guard to IND 47 for 1 yard (93-A.Gotsis; 40-J.Jones).
END QUARTER 1
(15:00) (Shotgun) PENALTY on TEN-72-L.Watson, False Start, 5 yards, enforced at IND 47 - No Play.
(15:00) (Shotgun) 8-W.Levis pass incomplete short left to 0-C.Ridley (90-G.Stewart) [54-D.Odeyingbo].
(14:56) (Shotgun) 8-W.Levis pass incomplete deep left to 10-D.Hopkins. PENALTY on IND-40-J.Jones, Illegal Contact, 5 yards, enforced at TEN 48 - No Play.
(14:50) 2-T.Spears right tackle to IND 41 for 6 yards (57-J.Carlies; 90-G.Stewart).
(14:09) 2-T.Spears right end to IND 40 for 1 yard (90-G.Stewart).
(13:28) (Shotgun) 20-T.Pollard up the middle to IND 33 for 7 yards (45-E.Speed).
(12:44) 20-T.Pollard right tackle to IND 30 for 3 yards (44-Z.Franklin).
(12:02) 20-T.Pollard up the middle to IND 26 for 4 yards (20-N.Cross, 44-Z.Franklin).
(11:19) (Shotgun) 8-W.Levis pass incomplete deep right to 0-C.Ridley (98-R.Davis).
(11:13) 6-N.Folk 44 yard field goal is GOOD, Center-46-M.Cox, Holder-4-R.Stonehouse.
6-N.Folk kicks 67 yards from TEN 35 to IND -2. 31-T.Goodson pushed ob at IND 43 for 45 yards (39-D.Baker). PENALTY on IND-41-G.Stuard, Offensive Holding, 10 yards, enforced at IND 25.
(11:02) (Shotgun) 27-T.Sermon right guard to IND 19 for 4 yards (56-K.Murray).
(10:25) (Shotgun) 27-T.Sermon left tackle to IND 18 for -1 yards (98-J.Simmons).
(9:40) (Shotgun) 15-J.Flacco pass short left to 85-A.Ogletree to IND 40 for 22 yards (37-A.Hooker).
(9:09) (No Huddle, Shotgun) 27-T.Sermon left guard to IND 40 for no gain (98-J.Simmons).
(8:30) (Shotgun) 15-J.Flacco pass incomplete short right to 14-A.Pierce (29-J.Brownlee).
(8:25) (Shotgun) 15-J.Flacco pass short right to 10-A.Mitchell to IND 40 for no gain (29-J.Brownlee).
(7:44) 8-R.Sanchez punts 60 yards to end zone, Center-46-L.Rhodes, Touchback.
(7:35) 8-W.Levis pass short left to 20-T.Pollard to TEN 16 for -4 yards (20-N.Cross).
(6:51) (Shotgun) 8-W.Levis pass deep left to 10-D.Hopkins ran ob at TEN 39 for 23 yards (32-J.Blackmon).
(6:09) (Shotgun) 20-T.Pollard left end to TEN 42 for 3 yards (51-K.Paye, 45-E.Speed). PENALTY on TEN-77-P.Skoronski, Offensive Holding, 10 yards, enforced at TEN 39 - No Play.
(5:37) (Shotgun) 8-W.Levis pass incomplete short right to 15-N.Westbrook-Ikhine.
(5:33) (Shotgun) 8-W.Levis scrambles right tackle to TEN 34 for 5 yards (51-K.Paye).
Timeout #2 by TEN at 05:33.
(4:45) (Shotgun) PENALTY on TEN, Delay of Game, 5 yards, enforced at TEN 34 - No Play.
(4:28) (Shotgun) 8-W.Levis pass short middle to 10-D.Hopkins to TEN 36 for 7 yards (44-Z.Franklin) [97-L.Latu].
(3:50) 4-R.Stonehouse punts 58 yards to IND 6, Center-46-M.Cox. 1-J.Downs to IND 29 for 23 yards (81-J.Whyle, 57-L.Gifford).
(3:39) (Shotgun) 27-T.Sermon up the middle to IND 40 for 11 yards (28-Q.Diggs, 53-E.Jones).
(3:06) (Shotgun) 27-T.Sermon left guard to IND 37 for -3 yards (58-H.Landry).
(2:30) (Shotgun) 15-J.Flacco pass short middle intended for 86-W.Mallory INTERCEPTED by 56-K.Murray at IND 48. 56-K.Murray to IND 39 for 9 yards (68-D.Tucker). PENALTY on TEN-37-A.Hooker, Defensive Pass Interference, 14 yards, enforced at IND 37 - No Play.
(2:19) (Shotgun) 31-T.Goodson left tackle to TEN 16 for 33 yards (38-L.Sneed).
(2:00) (Shotgun) 15-J.Flacco pass short left to 81-M.Alie-Cox to TEN 5 for 11 yards (37-A.Hooker). PENALTY on IND-78-R.Kelly, Face Mask, 15 yards, enforced at TEN 10.
(1:52) (Shotgun) 31-T.Goodson left tackle to TEN 20 for 5 yards (38-L.Sneed).
(1:14) (Shotgun) 15-J.Flacco pass incomplete short left to 10-A.Mitchell.
(1:11) (Shotgun) 15-J.Flacco pass incomplete deep right to 10-A.Mitchell. PENALTY on TEN-29-J.Brownlee, Illegal Contact, 5 yards, enforced at TEN 20 - No Play.
(1:06) (Shotgun) 15-J.Flacco pass short right to 1-J.Downs to TEN 8 for 7 yards (21-R.McCreary).
(:28) (Shotgun) 15-J.Flacco pass incomplete short right.
(:25) (Shotgun) 15-J.Flacco pass incomplete short right to 1-J.Downs (29-J.Brownlee).
(:22) 7-M.Gay 26 yard field goal is GOOD, Center-46-L.Rhodes, Holder-8-R.Sanchez.
7-M.Gay kicks 65 yards from IND 35 to end zone, Touchback to the TEN 30.
(:19) (Shotgun) 2-T.Spears up the middle to TEN 34 for 4 yards (97-L.Latu).
END QUARTER 2
7-M.Gay kicks 65 yards from IND 35 to end zone, Touchback to the TEN 30.
(15:00) (Shotgun) 20-T.Pollard left tackle to TEN 36 for 6 yards (96-T.Bryan, 20-N.Cross).
(14:14) 20-T.Pollard right guard to TEN 41 for 5 yards (23-K.Moore). PENALTY on IND-96-T.Bryan, Defensive Holding, 5 yards, enforced at TEN 41.
(13:49) 8-W.Levis pass incomplete deep right to 0-C.Ridley (57-J.Carlies) [97-L.Latu].
(13:45) (Shotgun) 8-W.Levis pass short middle to 20-T.Pollard to TEN 47 for 1 yard (45-E.Speed, 90-G.Stewart).
(13:11) (No Huddle, Shotgun) ** Injury Update: IND-54-D.Odeyingbo has returned to the game. PENALTY on IND-97-L.Latu, Neutral Zone Infraction, 5 yards, enforced at TEN 47 - No Play.
(13:11) (Shotgun) 8-W.Levis pass short middle to 85-C.Okonkwo to IND 43 for 5 yards (44-Z.Franklin, 20-N.Cross).
(12:49) (No Huddle, Shotgun) 20-T.Pollard left guard to IND 38 for 5 yards (44-Z.Franklin, 23-K.Moore).
(12:11) (Shotgun) 36-J.Chestnut left tackle to IND 36 for 2 yards (95-A.Adebawore; 20-N.Cross).
(11:25) (Shotgun) 20-T.Pollard left tackle to IND 34 for 2 yards (45-E.Speed; 20-N.Cross).
(10:42) 8-W.Levis pass short left to 16-T.Burks to IND 24 for 10 yards (32-J.Blackmon).
(9:59) 0-C.Ridley left end pushed ob at IND 15 for 9 yards (32-J.Blackmon).
(9:18) 20-T.Pollard right guard to IND 14 for 1 yard (57-J.Carlies).
(8:34) (Shotgun) PENALTY on TEN-72-L.Watson, False Start, 5 yards, enforced at IND 14 - No Play.
(8:16) (Shotgun) 8-W.Levis pass short right to 20-T.Pollard pushed ob at IND 15 for 4 yards (45-E.Speed) [51-K.Paye]. PENALTY on TEN-72-L.Watson, Offensive Holding, 10 yards, enforced at IND 19 - No Play.
(7:50) (Shotgun) 8-W.Levis pass short left to 85-C.Okonkwo to IND 25 for 4 yards (44-Z.Franklin).
(7:08) (Shotgun) 8-W.Levis pass short right to 81-J.Whyle to IND 23 for 2 yards (33-S.Womack).
(6:26) (Shotgun) 20-T.Pollard up the middle for 23 yards, TOUCHDOWN.
6-N.Folk extra point is GOOD, Center-46-M.Cox, Holder-4-R.Stonehouse.
6-N.Folk kicks 65 yards from TEN 35 to end zone, Touchback to the IND 30.
(6:19) (Shotgun) 31-T.Goodson up the middle to IND 32 for 2 yards (56-K.Murray).
(5:45) (Shotgun) 15-J.Flacco pass short right to 10-A.Mitchell pushed ob at IND 41 for 9 yards (38-L.Sneed).
(5:23) (No Huddle, Shotgun) 15-J.Flacco pass short right to 31-T.Goodson to IND 41 for no gain (56-K.Murray).
(4:55) (No Huddle, Shotgun) 15-J.Flacco pass incomplete deep right to 86-W.Mallory.
(4:50) (Shotgun) 15-J.Flacco pass incomplete short middle to 1-J.Downs. PENALTY on TEN-56-K.Murray, Defensive Pass Interference, 6 yards, enforced at IND 41 - No Play.
(4:46) (Shotgun) 15-J.Flacco pass short left to 81-M.Alie-Cox to TEN 46 for 7 yards (21-R.McCreary). PENALTY on TEN-69-S.Joseph, Roughing the Passer, 15 yards, enforced at TEN 46.
(4:25) (Shotgun) 15-J.Flacco pass short middle to 81-M.Alie-Cox to TEN 25 for 6 yards (56-K.Murray).
(4:04) (No Huddle, Shotgun) 27-T.Sermon up the middle to TEN 24 for 1 yard (69-S.Joseph; 58-H.Landry).
(3:24) (Shotgun) 15-J.Flacco pass incomplete short left to 1-J.Downs.
(3:20) (Shotgun) 15-J.Flacco pass short left to 1-J.Downs pushed ob at TEN 19 for 5 yards (28-Q.Diggs).
(2:47) (Shotgun) 31-T.Goodson up the middle to TEN 17 for 2 yards (99-A.Gaye, 93-T.Sweat).
(2:09) (Shotgun) 15-J.Flacco pass short middle to 31-T.Goodson to TEN 4 for 13 yards (53-E.Jones).
(1:41) (No Huddle, Shotgun) 31-T.Goodson up the middle to TEN 2 for 2 yards (28-Q.Diggs).
(1:06) 27-T.Sermon right guard to TEN 2 for no gain (98-J.Simmons).
(:25) (Shotgun) 27-T.Sermon up the middle to TEN 4 for -2 yards (58-H.Landry, 37-A.Hooker).
END QUARTER 3
(15:00) 7-M.Gay 22 yard field goal is GOOD, Center-46-L.Rhodes, Holder-8-R.Sanchez.
7-M.Gay kicks 65 yards from IND 35 to end zone, Touchback to the TEN 30.
(14:57) 20-T.Pollard right tackle to TEN 35 for 5 yards (44-Z.Franklin).
(14:20) (Shotgun) 20-T.Pollard right tackle to TEN 39 for 4 yards (44-Z.Franklin).
(13:41) (Shotgun) 20-T.Pollard up the middle to TEN 39 for no gain (97-L.Latu).
(12:59) 4-R.Stonehouse punts 51 yards to IND 10, Center-46-M.Cox. 1-J.Downs to IND 25 for 15 yards (44-M.Brown).
(12:50) (Shotgun) 31-T.Goodson up the middle to IND 28 for 3 yards (93-T.Sweat).
(12:10) (Shotgun) 15-J.Flacco pass incomplete short left to 31-T.Goodson.
(12:05) (Shotgun) 15-J.Flacco pass short left to 1-J.Downs to IND 35 for 7 yards (38-L.Sneed; 21-R.McCreary). Tennessee challenged the first down ruling, and the play was Upheld. The ruling on the field stands. (Timeout #1.)
(11:32) (Shotgun) 15-J.Flacco pass short right to 1-J.Downs to IND 46 for 11 yards (56-K.Murray).
(11:07) (No Huddle, Shotgun) 1-J.Downs left end to IND 45 for -1 yards (38-L.Sneed).
(10:20) (Shotgun) 15-J.Flacco pass incomplete deep left to 14-A.Pierce [56-K.Murray]. PENALTY on TEN-38-L.Sneed, Defensive Pass Interference, 33 yards, enforced at IND 45 - No Play.
(10:14) (Shotgun) 15-J.Flacco pass incomplete deep right to 10-A.Mitchell.
(10:09) (Shotgun) 15-J.Flacco pass short middle to 1-J.Downs to TEN 13 for 9 yards (56-K.Murray; 53-E.Jones).
(9:31) (Shotgun) 15-J.Flacco pass short right to 85-A.Ogletree to TEN 11 for 2 yards (37-A.Hooker).
(8:53) 27-T.Sermon right tackle to TEN 11 for no gain (53-E.Jones; 21-R.McCreary).
(8:17) (Shotgun) 15-J.Flacco scrambles up the middle to TEN 10 for 1 yard (58-H.Landry).
(7:32) (Shotgun) 15-J.Flacco pass short right to 11-M.Pittman for 10 yards, TOUCHDOWN.
7-M.Gay extra point is GOOD, Center-46-L.Rhodes, Holder-8-R.Sanchez.
7-M.Gay kicks 65 yards from IND 35 to end zone, Touchback to the TEN 30.
(7:27) (Shotgun) 8-W.Levis pass incomplete short right to 0-C.Ridley.
(7:22) (Shotgun) 8-W.Levis pass incomplete short right to 0-C.Ridley (33-S.Womack).
(7:16) (Shotgun) 8-W.Levis pass incomplete deep left to 10-D.Hopkins.
(7:13) 4-R.Stonehouse punts 58 yards to IND 12, Center-46-M.Cox. 1-J.Downs to IND 26 for 14 yards (23-T.Avery, 41-O.Reese).
(7:03) 31-T.Goodson left guard to IND 30 for 4 yards (53-E.Jones).
(6:24) (Shotgun) 27-T.Sermon left tackle to IND 30 for no gain (58-H.Landry).
(5:47) (Shotgun) 15-J.Flacco pass incomplete short left to 11-M.Pittman.
(5:45) 8-R.Sanchez punts 51 yards to TEN 19, Center-46-L.Rhodes. 19-J.Jackson pushed ob at TEN 30 for 11 yards (16-A.Dulin).
(5:34) 20-T.Pollard right tackle to TEN 31 for 1 yard (90-G.Stewart).
(4:59) (Shotgun) 8-W.Levis pass deep right intended for 0-C.Ridley INTERCEPTED by 32-J.Blackmon [54-D.Odeyingbo] at IND 37. 32-J.Blackmon ran ob at IND 37 for no gain.
(4:52) (Shotgun) 27-T.Sermon left tackle to IND 40 for 3 yards (53-E.Jones; 69-S.Joseph).
(4:08) (Shotgun) 15-J.Flacco pass incomplete deep right to 14-A.Pierce.
(4:03) (Shotgun) 15-J.Flacco pass incomplete deep left to 14-A.Pierce.
(3:58) 8-R.Sanchez punts 54 yards to TEN 6, Center-46-L.Rhodes, downed by IND-16-A.Dulin.
(3:49) (Shotgun) 8-W.Levis pass incomplete deep middle to 0-C.Ridley.
(3:45) (Shotgun) 20-T.Pollard up the middle to TEN 14 for 8 yards (45-E.Speed).
(3:05) (Shotgun) 8-W.Levis pass short right to 83-T.Boyd to TEN 22 for 8 yards (23-K.Moore).
(2:39) (No Huddle, Shotgun) 8-W.Levis pass short left to 83-T.Boyd pushed ob at TEN 25 for 3 yards (40-J.Jones).
(2:35) (Shotgun) 8-W.Levis pass incomplete short right to 0-C.Ridley (33-S.Womack).
(2:30) (Shotgun) 8-W.Levis pass incomplete deep left to 10-D.Hopkins (40-J.Jones).
(2:26) 4-R.Stonehouse punts 75 yards to end zone, Center-46-M.Cox, Touchback.
(2:18) (Shotgun) 31-T.Goodson up the middle to IND 20 for no gain (58-H.Landry).
(2:12) (Shotgun) 15-J.Flacco pass short right to 11-M.Pittman to IND 36 for 16 yards (38-L.Sneed).
Timeout #2 by TEN at 02:12.
(2:00) (Shotgun) 27-T.Sermon up the middle to IND 40 for 4 yards (29-J.Brownlee).
(1:56) 27-T.Sermon left end to IND 36 for -4 yards (37-A.Hooker).
Timeout #3 by TEN at 01:56.
(1:07) (Shotgun) 27-T.Sermon up the middle to IND 40 for 4 yards (38-L.Sneed).
Timeout #1 by IND at 01:07.
(:22) 8-R.Sanchez punts 57 yards to TEN 3, Center-46-L.Rhodes, out of bounds.
Timeout #2 by IND at 00:22.
(:12) (Shotgun) 8-W.Levis pass deep left to 10-D.Hopkins to TEN 19 for 16 yards. Lateral to 85-C.Okonkwo to TEN 22 for 3 yards (54-D.Odeyingbo). FUMBLES (54-D.Odeyingbo), touched at TEN 15, recovered by TEN-8-W.Levis at TEN 13. 8-W.Levis to TEN 13 for no gain (45-E.Speed).
END GAME"

ind_ten_summary <- "Headline: Joe Flacco throws two TD passes as the Colts beat the Titans 20-17.
Summary: The Colts took the win on the road in a back and forth battle with the Titans. Flacco opened with a 10-play drive he capped with a 22-yard TD pass to Josh Downs for the 7-0 lead. Titans defender Hooker intercepted Flacco, returned it 30 yards, and Levis capped a three-play drive with a 9-yard TD pass to Nick Westbrook-Ikhine, tying it up at 7. The Titans took a 10-7 lead on Nick Folk's 44-yard field goal, capping a 15-play drive that used nine minutes off the clock. Gay tied it up at 10 just before halftime. Tony Pollard put Tennessee up 17-10 with a 23-yard TD run on a drive that used up more than half of the third quarter. Flacco answered by driving the Colts to 10 straight points and the lead they never lost. He set up Matt Gay’s second field goal, a 22-yarder, in the opening seconds of the fourth quarter. Shortly after, Flacco hit Pittman in the end zone for the 10-yard touchdown pass with 7:27 left that lifted the Indianapolis Colts to a 20-17 win over Tennessee. The Titans had their chances. They went three-and-out after the Colts went up 20-17, then Blackmon picked off Levis' pass to Calvin Ridley with 4:52 left. Tennessee had one final chance with 12 seconds left from its 3. Levis threw to DeAndre Hopkins, who started a series of laterals pitching to Chig Okonkwo before the ball was downed and time expired.
Notable Performances: Levis only threw for 95 yards and one interception. Flacco threw for 189 yards, 2 TD, and one interception. Tony Pollard rushed for 93 yards on 17 carries.
Injuries: Colts: Ryan Kelly got hurt late in the third quarter and didn't return. Titans: RB Tyjae Spears was injured and didn't return."

# Append game log and summary to training dataframe 
ind_ten <- as.data.frame(cbind(ind_ten_log, ind_ten_summary)) %>% rename(game_log = ind_ten_log, game_summary = ind_ten_summary)
training <- rbind(training, ind_ten)

ne_chi_log <- "GAME
8-C.Santos kicks 65 yards from CHI 35 to end zone, Touchback to the NE 30.
(15:00) 38-R.Stevenson left guard to NE 36 for 6 yards (99-G.Dexter; 49-T.Edmunds).
(14:28) (Shotgun) 77-B.Brown to NE 31 for -5 yards. FUMBLES, recovered by NE-10-D.Maye at NE 30. 10-D.Maye pass incomplete short middle to 85-H.Henry.
(14:23) (Shotgun) 10-D.Maye sacked at NE 36 for 0 yards (55-J.Martin).
(13:43) 17-B.Baringer punts 49 yards to CHI 15, Center-49-J.Cardona. 11-D.Carter to NE 47 for 38 yards (52-C.Jacobs).
(13:28) 4-D.Swift left guard to NE 44 for 3 yards (33-A.Jennings).
(12:44) 18-C.Williams sacked at NE 47 for -3 yards (33-A.Jennings).
(11:58) (Shotgun) 18-C.Williams pass incomplete short right to 15-R.Odunze.
(11:54) 19-T.Taylor punts 13 yards to NE 34, Center-46-S.Daly, downed by CHI-23-R.Johnson.
(11:45) 10-D.Maye pass deep right to 81-A.Hooper to CHI 38 for 28 yards (6-K.Gordon).
(11:10) 38-R.Stevenson right end to CHI 33 for 5 yards (49-T.Edmunds).
(10:34) (Shotgun) 39-J.Hasty right tackle to CHI 27 for 6 yards (31-K.Byard; 49-T.Edmunds).
(9:58) 39-J.Hasty up the middle to CHI 22 for 5 yards (22-E.Hicks, 31-K.Byard).
(9:16) (Shotgun) 39-J.Hasty right tackle to CHI 22 for no gain (6-K.Gordon).
(8:38) (Shotgun) 10-D.Maye scrambles up the middle to CHI 18 for 4 yards (31-K.Byard, 94-A.Booker).
(7:59) (Shotgun) 38-R.Stevenson right guard to CHI 16 for 2 yards (55-J.Martin, 53-T.Edwards).
Timeout #1 by NE at 07:59.
(7:19) (Shotgun) 10-D.Maye pass incomplete short left [49-T.Edmunds].
(7:10) (Shotgun) 38-R.Stevenson left guard to CHI 12 for 4 yards (6-K.Gordon; 96-Z.Pickens).
(6:31) (Shotgun) 10-D.Maye pass incomplete short right to 2-K.Osborn. PENALTY on NE-2-K.Osborn, Illegal Touch Pass, 0 yards, enforced at CHI 12.
(6:23) 13-J.Slye 30 yard field goal is GOOD, Center-49-J.Cardona, Holder-17-B.Baringer.
13-J.Slye kicks 39 yards from NE 35 to CHI 26, short of landing zone. PENALTY on NE-13-J.Slye, Kickoff Short of Landing Zone, placed at CHI 40.
(6:19) 4-D.Swift left tackle to CHI 42 for 2 yards (92-D.Godchaux; 48-J.Tavai).
(5:40) (Shotgun) 18-C.Williams pass short right to 13-K.Allen to NE 49 for 9 yards (52-C.Jacobs; 31-J.Jones).
(5:04) 4-D.Swift left end to NE 40 for 9 yards (21-J.Hawkins).
(4:40) (No Huddle, Shotgun) 4-D.Swift left guard to NE 34 for 6 yards (16-S.Takitaki; 92-D.Godchaux).
(4:04) (No Huddle) 4-D.Swift right end to NE 29 for 5 yards (31-J.Jones).
(3:24) (No Huddle) 4-D.Swift left tackle to NE 31 for -2 yards (94-J.Roy).
(2:42) (Shotgun) 18-C.Williams sacked at NE 39 for -8 yards (91-D.Wise).
(1:51) 19-T.Taylor punts 39 yards to end zone, Center-46-S.Daly, Touchback.
(1:44) (Shotgun) 38-R.Stevenson left guard to NE 28 for 8 yards (22-E.Hicks; 31-K.Byard).
(1:15) 10-D.Maye pass short right to 3-D.Douglas to NE 45 for 17 yards (31-K.Byard).
(:39) 10-D.Maye pass short right intended for 81-A.Hooper INTERCEPTED by 53-T.Edwards at CHI 48. 53-T.Edwards ran ob at CHI 48 for no gain.
(:33) (Shotgun) 18-C.Williams pass short left to 13-K.Allen to 50 for 2 yards (31-J.Jones).
END QUARTER 1
(15:00) 4-D.Swift right guard to NE 45 for 5 yards (48-J.Tavai).
(14:23) (Shotgun) 18-C.Williams pass short right to 2-D.Moore to NE 47 for -2 yards (21-J.Hawkins).
(13:37) 19-T.Taylor punts 35 yards to NE 12, Center-46-S.Daly, fair catch by 25-M.Jones.
(13:30) 38-R.Stevenson right end to NE 13 for 1 yard (53-T.Edwards).
(12:51) (Shotgun) 10-D.Maye scrambles left guard to NE 15 for 2 yards (53-T.Edwards).
(12:08) (Shotgun) 10-D.Maye pass incomplete short middle to 3-D.Douglas.
(12:04) 17-B.Baringer punts 50 yards to CHI 35, Center-49-J.Cardona, fair catch by 11-D.Carter.
(11:58) 18-C.Williams pass short right to 15-R.Odunze pushed ob at CHI 46 for 11 yards (22-M.Wilson; 31-J.Jones).
(11:32) (No Huddle, Shotgun) 18-C.Williams pass short left to 13-K.Allen pushed ob at NE 42 for 12 yards (22-M.Wilson).
(10:59) PENALTY on CHI-79-M.Pryor, False Start, 5 yards, enforced at NE 42 - No Play.
(10:42) (Shotgun) 18-C.Williams pass incomplete deep left to 15-R.Odunze.
(10:36) (Shotgun) 18-C.Williams pass short middle to 13-K.Allen to NE 36 for 11 yards (25-M.Jones).
Timeout #1 by CHI at 10:36.
(10:15) (No Huddle, Shotgun) 18-C.Williams pass incomplete short right to 2-D.Moore.
(10:11) (Shotgun) 18-C.Williams scrambles left guard to NE 31 for 5 yards (98-J.Pharms). CHI-76-T.Jenkins was injured during the play.
(9:47) 4-D.Swift right tackle to NE 23 for 8 yards (48-J.Tavai).
(9:19) (No Huddle) 4-D.Swift right end to NE 14 for 9 yards (48-J.Tavai).
(8:55) (No Huddle) 4-D.Swift left guard to NE 15 for -1 yards (98-J.Pharms).
(8:14) (Shotgun) 4-D.Swift left guard to NE 15 for no gain (98-J.Pharms; 99-K.White).
(7:29) (Shotgun) 18-C.Williams pass incomplete short right [41-B.Schooler].
Timeout #2 by CHI at 07:29.
(7:21) 8-C.Santos 33 yard field goal is GOOD, Center-46-S.Daly, Holder-19-T.Taylor.
8-C.Santos kicks 65 yards from CHI 35 to end zone, Touchback to the NE 30.
(7:17) 38-R.Stevenson right guard to NE 33 for 3 yards (96-Z.Pickens).
(6:39) (Shotgun) 10-D.Maye pass short left to 9-K.Boutte pushed ob at NE 37 for 4 yards (29-T.Stevenson; 53-T.Edwards).
(6:02) (Shotgun) 10-D.Maye pass short right to 3-D.Douglas to CHI 46 for 17 yards (31-K.Byard).
(5:23) (Shotgun) 10-D.Maye pass short right to 3-D.Douglas pushed ob at CHI 39 for 7 yards (53-T.Edwards).
(4:41) 39-J.Hasty right tackle to CHI 37 for 2 yards (91-Ch.Williams).
(4:00) 10-D.Maye pass short left to 81-A.Hooper to CHI 13 for 24 yards (22-E.Hicks).
(3:14) (Shotgun) 38-R.Stevenson right tackle to CHI 4 for 9 yards (31-K.Byard; 98-M.Sweat).
(2:31) (Shotgun) 38-R.Stevenson right guard to CHI 4 for no gain (99-G.Dexter, 57-J.Sanborn).
(2:00) 64-L.Robinson and 62-S.Sow reported in as eligible. 38-R.Stevenson left end to CHI 2 for 2 yards (53-T.Edwards).
(1:51) 10-D.Maye pass short left to 1-J.Polk for 2 yards, TOUCHDOWN.
Timeout #3 by CHI at 01:51.
13-J.Slye extra point is GOOD, Center-49-J.Cardona, Holder-17-B.Baringer.
13-J.Slye kicks 65 yards from NE 35 to end zone, Touchback to the CHI 30.
(1:46) (Shotgun) 18-C.Williams pass incomplete short right.
(1:41) (Shotgun) 18-C.Williams scrambles right guard to CHI 40 for 10 yards (0-C.Gonzalez).
(1:19) (No Huddle, Shotgun) 23-R.Johnson up the middle to CHI 36 for -4 yards (98-J.Pharms).
(:56) (No Huddle, Shotgun) 18-C.Williams pass incomplete short right to 15-R.Odunze.
(:51) (No Huddle, Shotgun) 18-C.Williams pass incomplete short middle to 23-R.Johnson (99-K.White).
(:47) 19-T.Taylor punts 48 yards to NE 16, Center-46-S.Daly. 25-M.Jones to NE 40 for 24 yards (30-T.Moore, 46-S.Daly).
(:35) (Shotgun) 10-D.Maye pass incomplete deep middle to 9-K.Boutte (22-E.Hicks).
(:26) (Shotgun) 10-D.Maye pass short middle to 3-D.Douglas to NE 49 for 9 yards (31-K.Byard).
(:21) (Shotgun) 39-J.Hasty left guard to CHI 47 for 4 yards (22-E.Hicks).
Timeout #2 by NE at 00:21.
(:16) (Shotgun) 10-D.Maye pass deep middle to 9-K.Boutte to CHI 24 for 23 yards (1-J.Johnson).
(:02) (No Huddle) 10-D.Maye spiked the ball to stop the clock. PENALTY on CHI-98-M.Sweat, Defensive Offside, 5 yards, enforced at CHI 24 - No Play.
(:01) 13-J.Slye 37 yard field goal is GOOD, Center-49-J.Cardona, Holder-17-B.Baringer.
END QUARTER 2
Timeout #3 by NE at 00:16.
13-J.Slye kicks 65 yards from NE 35 to end zone, Touchback to the CHI 30.
(15:00) (Shotgun) 18-C.Williams pass short left to 2-D.Moore to CHI 48 for 18 yards (0-C.Gonzalez).
(14:17) (No Huddle) 4-D.Swift up the middle to NE 47 for 5 yards (95-D.Ekuale).
(13:42) (No Huddle) 18-C.Williams sacked at 50 for -3 yards (98-J.Pharms).
(12:57) (Shotgun) 18-C.Williams sacked at 50 for 0 yards (91-D.Wise).
(12:20) 19-T.Taylor punts 36 yards to NE 14, Center-46-S.Daly, downed by CHI-22-E.Hicks.
(12:07) 38-R.Stevenson left end to NE 25 for 11 yards (31-K.Byard).
(11:34) 38-R.Stevenson left tackle to NE 29 for 4 yards (94-A.Booker).
(10:58) 10-D.Maye pass short right to 9-K.Boutte to NE 44 for 15 yards (31-K.Byard). PENALTY on NE-71-M.Onwenu, Ineligible Downfield Pass, 5 yards, enforced at NE 29 - No Play.
(10:27) (Shotgun) 10-D.Maye pass short left to 9-K.Boutte to NE 37 for 13 yards (29-T.Stevenson).
(9:50) 39-J.Hasty right end to NE 40 for 3 yards (29-T.Stevenson, 93-B.Cowart).
(9:09) (Shotgun) PENALTY on NE-75-D.Jacobs, False Start, 5 yards, enforced at NE 40 - No Play.
(8:47) (Shotgun) 10-D.Maye pass short right to 39-J.Hasty to NE 39 for 4 yards (53-T.Edwards; 49-T.Edmunds) [91-Ch.Williams].
(8:03) (Shotgun) 10-D.Maye pass incomplete short middle to 85-H.Henry (49-T.Edmunds) [55-J.Martin].
(7:59) 17-B.Baringer punts 61 yards to end zone, Center-49-J.Cardona, Touchback.
(7:50) 18-C.Williams pass incomplete short right to 85-C.Kmet.
(7:46) (Shotgun) 18-C.Williams pass short right to 85-C.Kmet to CHI 27 for 7 yards (48-J.Tavai).
(7:08) (Shotgun) 18-C.Williams pass short middle to 85-C.Kmet to CHI 33 for 6 yards (15-M.Mapu).
(6:25) 2-D.Moore left end to CHI 36 for 3 yards (25-M.Jones).
Timeout #1 by NE at 06:25.
(5:42) (Shotgun) 18-C.Williams pass incomplete short middle to 2-D.Moore (48-J.Tavai).
(5:37) (Shotgun) 18-C.Williams sacked at CHI 27 for -9 yards (41-B.Schooler).
(4:57) 19-T.Taylor punts 52 yards to NE 21, Center-46-S.Daly, fair catch by 25-M.Jones.
(4:49) (Shotgun) 38-R.Stevenson right end to NE 22 for 1 yard (53-T.Edwards).
(4:18) (Shotgun) 10-D.Maye pass short right to 9-K.Boutte to NE 29 for 7 yards (32-T.Smith).
(3:40) (Shotgun) 38-R.Stevenson right tackle to NE 30 for 1 yard (99-G.Dexter).
(3:00) 17-B.Baringer punts 54 yards to CHI 16, Center-49-J.Cardona, downed by NE-41-B.Schooler. PENALTY on NE-44-J.Giles-Harris, Illegal Formation, 5 yards, enforced at NE 30 - No Play.
(2:50) 17-B.Baringer punts 75 yards to end zone, Center-49-J.Cardona, Touchback.
(2:42) (Shotgun) 4-D.Swift right end to CHI 27 for 7 yards (33-A.Jennings).
(2:06) (No Huddle) 4-D.Swift right end to CHI 24 for -3 yards (99-K.White).
(1:24) (Shotgun) 18-C.Williams pass incomplete short left to 85-C.Kmet (24-D.Pettus).
(1:20) 19-T.Taylor punts 50 yards to NE 26, Center-46-S.Daly. 25-M.Jones MUFFS catch, and recovers at NE 28. 25-M.Jones to NE 38 for 10 yards (20-T.Homer).
(1:07) 10-D.Maye pass incomplete deep middle to 9-K.Boutte (31-K.Byard) [90-D.Robinson].
(:58) (Shotgun) 10-D.Maye pass incomplete short left.
(:52) (Shotgun) 10-D.Maye pass short right to 38-R.Stevenson to NE 41 for 3 yards (95-D.Walker) [98-M.Sweat].
(:16) 17-B.Baringer punts 50 yards to CHI 9, Center-49-J.Cardona, downed by NE-29-I.Bolden.
(:05) 4-D.Swift right guard to CHI 13 for 4 yards (24-D.Pettus).
END QUARTER 3
(15:00) 4-D.Swift left end pushed ob at CHI 15 for 2 yards (25-M.Jones).
(14:19) (Shotgun) PENALTY on CHI-75-L.Borom, False Start, 5 yards, enforced at CHI 15 - No Play.
(14:19) (Shotgun) 18-C.Williams sacked at CHI 3 for -7 yards (24-D.Pettus).
(13:46) 19-T.Taylor punts 62 yards to NE 35, Center-46-S.Daly. 25-M.Jones to NE 46 for 11 yards (45-A.Ogbongbemiga).
(13:33) 38-R.Stevenson left end to NE 46 for no gain (53-T.Edwards; 31-K.Byard).
(12:56) (Shotgun) 10-D.Maye scrambles left end to CHI 35 for 19 yards (53-T.Edwards).
(12:15) 4-A.Gibson right tackle to CHI 31 for 4 yards (6-K.Gordon).
(11:35) 4-A.Gibson right tackle to CHI 24 for 7 yards (99-G.Dexter).
(10:49) (Shotgun) 10-D.Maye pass short left to 3-D.Douglas to CHI 18 for 6 yards (22-E.Hicks; 49-T.Edmunds). PENALTY on NE-9-K.Boutte, Offensive Holding, 10 yards, enforced at CHI 24 - No Play.
(10:25) 4-A.Gibson left guard to CHI 24 for 10 yards (1-J.Johnson, 22-E.Hicks).
(9:40) (Shotgun) 10-D.Maye pass short middle to 81-A.Hooper to CHI 12 for 12 yards (32-T.Smith).
(9:01) 4-A.Gibson right end to CHI 8 for 4 yards (32-T.Smith).
(8:19) 4-A.Gibson right tackle to CHI 7 for 1 yard (90-D.Robinson; 1-J.Johnson).
(7:39) (Shotgun) 10-D.Maye pass incomplete short middle to 85-H.Henry.
(7:34) 13-J.Slye 25 yard field goal is GOOD, Center-49-J.Cardona, Holder-17-B.Baringer.
13-J.Slye kicks 66 yards from NE 35 to CHI -1. 11-D.Carter to CHI 34 for 35 yards (48-J.Tavai).
(7:25) (Shotgun) 18-C.Williams sacked at CHI 28 for -6 yards (33-A.Jennings).
(6:51) (No Huddle, Shotgun) 18-C.Williams pass short right to 2-D.Moore to CHI 36 for 8 yards (31-J.Jones).
(6:26) (No Huddle, Shotgun) 18-C.Williams pass short middle to 4-D.Swift to CHI 42 for 6 yards (48-J.Tavai; 99-K.White).
(6:03) (No Huddle, Shotgun) 18-C.Williams pass short middle to 15-R.Odunze to CHI 46 for 4 yards (48-J.Tavai) [44-J.Giles-Harris].
(5:36) (No Huddle, Shotgun) PENALTY on CHI-79-M.Pryor, False Start, 5 yards, enforced at CHI 46 - No Play.
(5:36) (Shotgun) 18-C.Williams pass incomplete short middle [33-A.Jennings].
(5:33) (No Huddle, Shotgun) 18-C.Williams pass short left to 13-K.Allen pushed ob at NE 49 for 10 yards (25-M.Jones).
(5:06) (Shotgun) 18-C.Williams pass incomplete short right.
(5:00) (No Huddle, Shotgun) PENALTY on CHI-13-K.Allen, False Start, 5 yards, enforced at NE 49 - No Play.
(5:00) (Shotgun) 18-C.Williams pass incomplete short right to 13-K.Allen (25-M.Jones) [99-K.White].
(4:54) 62-S.Sow reported in as eligible. 38-R.Stevenson right guard to CHI 40 for 6 yards (53-T.Edwards).
(4:49) 38-R.Stevenson left end to CHI 37 for 3 yards (29-T.Stevenson).
Timeout #1 by CHI at 04:49.
(4:43) (Shotgun) 10-D.Maye pass short left to 85-H.Henry to CHI 23 for 14 yards (22-E.Hicks) [99-G.Dexter].
Timeout #2 by CHI at 04:43.
(4:34) 62-S.Sow reported in as eligible. 38-R.Stevenson right tackle to CHI 18 for 5 yards (53-T.Edwards; 31-K.Byard).
Timeout #3 by CHI at 04:34.
(3:51) 62-S.Sow reported in as eligible. 38-R.Stevenson right tackle to CHI 15 for 3 yards (99-G.Dexter; 57-J.Sanborn).
(3:08) 62-S.Sow reported in as eligible. 38-R.Stevenson left end to CHI 15 for no gain (55-J.Martin).
(2:21) 13-J.Slye 33 yard field goal is GOOD, Center-49-J.Cardona, Holder-17-B.Baringer.
Timeout #2 by NE at 02:21.
13-J.Slye kicks 65 yards from NE 35 to end zone, Touchback to the CHI 30.
(2:17) (Shotgun) 18-C.Williams pass incomplete short left to 2-D.Moore (91-D.Wise).
(2:12) (No Huddle, Shotgun) 18-C.Williams pass short left to 11-D.Carter ran ob at CHI 35 for 5 yards.
(2:07) (No Huddle, Shotgun) 18-C.Williams pass incomplete short left to 2-D.Moore (0-C.Gonzalez). PENALTY on NE-48-J.Tavai, Roughing the Passer, 15 yards, enforced at CHI 35 - No Play.
(1:59) (Shotgun) 18-C.Williams sacked at CHI 43 for -7 yards (48-J.Tavai).
(1:27) (No Huddle, Shotgun) 18-C.Williams sacked at CHI 35 for -8 yards (99-K.White).
(:58) (No Huddle, Shotgun) 18-C.Williams pass short middle to 23-R.Johnson to CHI 40 for 5 yards (29-I.Bolden). NE-91-D.Wise was injured during the play.
(:40) (Shotgun) 18-C.Williams pass short right to 15-R.Odunze to CHI 48 for 8 yards (22-M.Wilson).
Timeout #3 by NE at 00:40.
(:35) 10-D.Maye kneels to CHI 49 for -1 yards.
END GAME"

ne_chi_summary <- "Headline: Drake Maye gets the better of Caleb Williams as sack-happy Patriots beat Bears 19-3.
Summary: Maye led five scoring drives and the Patriots sacked Williams nine times, helping New England come away with the win. The Bears managed just 142 yards of offense. Maye didn’t exactly light it up either, but did enough to get his team the win. The Bears went three-and-out on their first drive after DeAndre Carter returned a punt 38 yards. After Slye kicked a 30-yard field goal to give the Patriots a 3-0 lead, Chicago drove down the field but got knocked out of field goal range on third down when Williams was sacked for a loss. Chicago's T.J. Edwards then intercepted Maye near midfield, but the Bears went three and out again. They tied it midway through the second quarter, settling for a field goal by Cairo Santos after stalling at the 14. The Patriots led 13-3 at halftime after scoring 10 points in the final 1:46. Maye threw a 2-yard touchdown pass to rookie Ja’Lynn Polk, and Slye kicked a 37-yard field goal as time expired to send New England to the locker room with a 10-point lead.
Notable Performances: Drake Maye was 15 of 25 for 184 yards with a touchdown and an interception. Williams was 16 of 30 for 120 yards. Joey Slye kicked four field goals.
Injuries: Patriots: Wise, Roy, and Dial Jr. all were injured. Bears: Teven Jenkins left early in the second quarter."

# Append game log and summary to training dataframe 
ne_chi <- as.data.frame(cbind(ne_chi_log, ne_chi_summary)) %>% rename(game_log = ne_chi_log, game_summary = ne_chi_summary)
training <- rbind(training, ne_chi)

gb_jax_log <- "GAME
39-C.Little kicks 65 yards from JAX 35 to end zone, Touchback to the GB 30.
(15:00) 10-J.Love pass short right to 9-C.Watson pushed ob at GB 37 for 7 yards (23-F.Oluokun).
(14:19) 10-J.Love pass short left to 85-T.Kraft pushed ob at GB 45 for 8 yards (23-F.Oluokun).
(13:45) 8-J.Jacobs up the middle to JAX 48 for 7 yards (23-F.Oluokun; 33-D.Lloyd).
(12:59) 11-J.Reed right end to JAX 48 for no gain (44-T.Walker).
Timeout #1 by GB at 12:59.
(12:20) (Shotgun) 8-J.Jacobs right tackle to JAX 32 for 16 yards (6-D.Savage). PENALTY on GB-75-S.Rhyan, Offensive Holding, 10 yards, enforced at JAX 44.
(11:50) (Shotgun) 10-J.Love pass incomplete short middle to 8-J.Jacobs. Penalty on GB-50-Z.Tom, Offensive Holding, declined.
(11:41) 19-D.Whelan punts 45 yards to JAX 9, Center-42-M.Orzech. 11-P.Washington pushed ob at JAX 17 for 8 yards (39-Z.Anderson).
(11:31) 16-T.Lawrence pass short right to 4-T.Bigsby to JAX 23 for 6 yards (58-I.McDuffie).
(10:49) (Shotgun) 16-T.Lawrence pass incomplete short left to 13-C.Kirk [91-P.Smith].
(10:45) (Shotgun) 16-T.Lawrence scrambles right end to JAX 25 for 2 yards (45-Er.Wilson).
(10:04) 9-L.Cooke punts 73 yards to GB 2, Center-46-R.Matiscik, out of bounds.
(9:54) 8-J.Jacobs up the middle to GB 5 for 3 yards (44-T.Walker; 52-D.Hamilton).
(9:13) (Shotgun) 8-J.Jacobs right guard to GB 7 for 2 yards (52-D.Hamilton; 99-J.Ledbetter).
(8:34) (No Huddle, Shotgun) 10-J.Love pass incomplete short middle to 11-J.Reed.
(8:29) 19-D.Whelan punts 43 yards to 50, Center-42-M.Orzech, downed by GB-53-A.Mosby.
(8:15) 4-T.Bigsby left tackle to 50 for no gain (91-P.Smith; 58-I.McDuffie).
(7:31) (Shotgun) 16-T.Lawrence pass short right to 85-B.Strange to GB 43 for 7 yards (33-E.Williams).
(6:43) (Shotgun) PENALTY on JAX-0-G.Davis, False Start, 5 yards, enforced at GB 43 - No Play.
(6:23) (Shotgun) 16-T.Lawrence pass incomplete deep right to 7-B.Thomas.
(6:18) 9-L.Cooke punts 40 yards to GB 8, Center-46-R.Matiscik, fair catch by 11-J.Reed.
(6:11) 10-J.Love pass deep right to 87-R.Doubs to GB 37 for 29 yards (5-A.Cisco).
(5:30) (Shotgun) 8-J.Jacobs left end to GB 44 for 7 yards (3-T.Campbell).
(4:54) (Shotgun) 30-C.Brooks left tackle to GB 49 for 5 yards (98-J.Jefferson; 97-J.Gaziano).
(4:15) (Shotgun) 10-J.Love pass short middle to 87-R.Doubs to JAX 33 for 18 yards (6-D.Savage).
(3:34) (Shotgun) 31-Em.Wilson up the middle to JAX 29 for 4 yards (41-J.Hines-Allen; 3-T.Campbell).
(2:47) (Shotgun) PENALTY on GB-63-R.Walker, False Start, 5 yards, enforced at JAX 29 - No Play.
(2:22) (Shotgun) 10-J.Love pass short right to 13-D.Wicks pushed ob at JAX 28 for 6 yards (30-M.Brown).
(1:53) (No Huddle, Shotgun) 10-J.Love pass short right to 9-C.Watson to JAX 22 for 6 yards (51-V.Miller).
(1:12) 8-J.Jacobs right end to JAX 24 for -2 yards (30-M.Brown).
(:31) (Shotgun) 10-J.Love pass short left to 11-J.Reed to JAX 20 for 4 yards (99-J.Ledbetter).
END QUARTER 1
(15:00) (Shotgun) 10-J.Love pass short middle to 30-C.Brooks to JAX 13 for 7 yards (23-F.Oluokun). PENALTY on JAX-44-T.Walker, Illegal Use of Hands, 5 yards, enforced at JAX 20 - No Play.
(14:46) 8-J.Jacobs right end pushed ob at JAX 16 for -1 yards (23-F.Oluokun).
(14:03) (No Huddle, Shotgun) 10-J.Love pass short left intended for 87-R.Doubs INTERCEPTED by 22-J.Jones at JAX 6. 22-J.Jones ran ob at JAX 6 for no gain.
(13:58) 4-T.Bigsby up the middle to JAX 7 for 1 yard (97-K.Clark; 45-Er.Wilson).
(13:18) (Shotgun) PENALTY on JAX-89-L.Farrell, False Start, 3 yards, enforced at JAX 7 - No Play.
(13:03) (Shotgun) 16-T.Lawrence pass deep right intended for 13-C.Kirk INTERCEPTED by 29-X.McKinney at JAX 28. 29-X.McKinney to JAX 28 for no gain (13-C.Kirk).
(12:56) (Shotgun) 8-J.Jacobs up the middle to JAX 23 for 5 yards (51-V.Miller).
(12:21) (Shotgun) 30-C.Brooks left tackle to JAX 24 for -1 yards (51-V.Miller, 41-J.Hines-Allen).
(11:41) (Shotgun) 10-J.Love pass incomplete deep right to 87-R.Doubs. PENALTY on JAX-30-M.Brown, Defensive Pass Interference, 21 yards, enforced at JAX 24 - No Play.
(11:35) (Shotgun) 8-J.Jacobs up the middle for 3 yards, TOUCHDOWN.
17-B.McManus extra point is GOOD, Center-42-M.Orzech, Holder-19-D.Whelan.
17-B.McManus kicks 65 yards from GB 35 to end zone, Touchback to the JAX 30.
(11:31) 4-T.Bigsby right end pushed ob at JAX 31 for 1 yard (25-K.Nixon, 58-I.McDuffie).
(10:54) 4-T.Bigsby right tackle to JAX 38 for 7 yards (25-K.Nixon).
(10:14) (Shotgun) 4-T.Bigsby left end to JAX 37 for -1 yards (45-Er.Wilson, 56-E.Cooper).
(9:33) 9-L.Cooke punts 63 yards to end zone, Center-46-R.Matiscik, Touchback.
(9:24) (Shotgun) 8-J.Jacobs right guard to GB 24 for 4 yards (98-J.Jefferson; 93-T.Lacy).
(8:46) (Shotgun) 10-J.Love pass deep middle to 85-T.Kraft to JAX 9 for 67 yards (5-A.Cisco).
(8:04) (Shotgun) 8-J.Jacobs right end pushed ob at JAX 2 for 7 yards (44-T.Walker). PENALTY on GB-9-C.Watson, Illegal Shift, 5 yards, enforced at JAX 9 - No Play.
(7:33) (Shotgun) 10-J.Love pass incomplete short right to 89-B.Sims [99-J.Ledbetter].
(7:26) (Shotgun) 31-Em.Wilson left end to JAX 14 for no gain (99-J.Ledbetter; 23-F.Oluokun).
(6:45) (Shotgun) 10-J.Love pass short left to 31-Em.Wilson to JAX 13 for 1 yard (23-F.Oluokun).
(6:07) 17-B.McManus 31 yard field goal is GOOD, Center-42-M.Orzech, Holder-19-D.Whelan.
17-B.McManus kicks 65 yards from GB 35 to end zone, Touchback to the JAX 30.
(6:03) (Shotgun) 16-T.Lawrence pass deep right to 13-C.Kirk to GB 37 for 33 yards (29-X.McKinney; 33-E.Williams).
(5:26) (No Huddle, Shotgun) 2-D.Johnson left guard to GB 34 for 3 yards (58-I.McDuffie, 94-K.Brooks).
(4:44) 16-T.Lawrence pass short right to 7-B.Thomas to GB 16 for 18 yards (56-E.Cooper; 20-J.Bullard).
(4:03) 4-T.Bigsby up the middle to GB 2 for 14 yards (29-X.McKinney, 56-E.Cooper).
(3:17) 75-C.Hodges reported in as eligible. 4-T.Bigsby up the middle to GB 1 for 1 yard (45-Er.Wilson). JAX-68-B.Scherff was injured during the play.
(2:50) (Shotgun) 16-T.Lawrence pass incomplete short right to 17-E.Engram. PENALTY on JAX-15-T.Jones, Illegal Motion, 5 yards, enforced at GB 1 - No Play.
(2:46) (Shotgun) 16-T.Lawrence left end for 6 yards, TOUCHDOWN.
39-C.Little extra point is GOOD, Center-46-R.Matiscik, Holder-9-L.Cooke.
39-C.Little kicks 65 yards from JAX 35 to end zone, Touchback to the GB 30.
(2:37) (Shotgun) 10-J.Love pass short middle to 9-C.Watson to GB 42 for 12 yards (51-V.Miller; 22-J.Jones).
(2:00) (Shotgun) 10-J.Love pass incomplete deep left to 9-C.Watson.
(1:55) (Shotgun) 10-J.Love pass deep right to 87-R.Doubs to JAX 33 for 25 yards (24-D.Prince).
(1:48) (No Huddle, Shotgun) 30-C.Brooks up the middle to JAX 29 for 4 yards (52-D.Hamilton).
(1:24) (No Huddle, Shotgun) 10-J.Love pass short left to 30-C.Brooks to JAX 28 for 1 yard (51-V.Miller).
(1:18) (Shotgun) 10-J.Love pass incomplete deep right to 80-B.Melton [93-T.Lacy].
Timeout #1 by JAX at 01:18.
Timeout #2 by GB at 01:18.
(1:12) (Field Goal formation) PENALTY on JAX-52-D.Hamilton, Defensive Delay of Game, 5 yards, enforced at JAX 28 - No Play.
Timeout #3 by GB at 01:12.
(1:12) (Shotgun) 10-J.Love pass incomplete deep left to 87-R.Doubs.
(1:07) (Shotgun) 8-J.Jacobs up the middle to JAX 19 for 4 yards (51-V.Miller).
(1:03) (Shotgun) 10-J.Love pass incomplete deep left to 9-C.Watson.
Timeout #2 by JAX at 01:03.
(:58) 17-B.McManus 38 yard field goal is GOOD, Center-42-M.Orzech, Holder-19-D.Whelan.
17-B.McManus kicks 69 yards from GB 35 to JAX -4. 11-P.Washington to JAX 26 for 30 yards (56-E.Cooper, 30-C.Brooks).
(:48) (Shotgun) 16-T.Lawrence pass short left to 17-E.Engram to JAX 28 for 2 yards (25-K.Nixon) [52-R.Gary].
(:29) (No Huddle, Shotgun) 16-T.Lawrence pass deep left to 11-P.Washington ran ob at GB 49 for 23 yards (29-X.McKinney).
(:23) (Shotgun) 16-T.Lawrence pass deep right to 7-B.Thomas to GB 21 for 28 yards (29-X.McKinney).
Timeout #3 by JAX at 00:16.
(:16) (Shotgun) 16-T.Lawrence pass incomplete short right.
(:10) (Shotgun) 16-T.Lawrence pass incomplete short right.
(:07) 39-C.Little 39 yard field goal is GOOD, Center-46-R.Matiscik, Holder-9-L.Cooke.
39-C.Little kicks 65 yards from JAX 35 to end zone, Touchback to the GB 30.
(:03) 10-J.Love kneels to GB 29 for -1 yards.
END QUARTER 2
17-B.McManus kicks 65 yards from GB 35 to end zone, Touchback to the JAX 30.
(15:00) (Shotgun) 4-T.Bigsby left end to JAX 34 for 4 yards (58-I.McDuffie). ** Injury Update: JAX-68-B.Scherff has returned to the game.
(14:21) (Shotgun) 4-T.Bigsby up the middle to JAX 38 for 4 yards (52-R.Gary).
(13:43) (Shotgun) 16-T.Lawrence pass incomplete short left to 2-D.Johnson.
(13:38) 9-L.Cooke punts 62 yards to end zone, Center-46-R.Matiscik, Touchback.
(13:31) (Shotgun) 10-J.Love pass short middle to 9-C.Watson to GB 34 for 14 yards (30-M.Brown).
(12:50) (Shotgun) 8-J.Jacobs up the middle to GB 37 for 3 yards (93-T.Lacy; 52-D.Hamilton).
(12:08) (Shotgun) 10-J.Love pass short left to 8-J.Jacobs to GB 35 for -2 yards (33-D.Lloyd). GB-10-J.Love was injured during the play.
(11:29) (Shotgun) 2-M.Willis scrambles up the middle to GB 40 for 5 yards (91-A.Armstead).
(10:52) 19-D.Whelan punts 53 yards to JAX 7, Center-42-M.Orzech, fair catch by 11-P.Washington.
(10:43) 16-T.Lawrence pass short left to 15-T.Jones ran ob at JAX 27 for 20 yards (23-J.Alexander).
(10:06) 4-T.Bigsby right tackle to JAX 43 for 16 yards (90-L.Van Ness).
(9:41) (No Huddle, Shotgun) 4-T.Bigsby up the middle to JAX 49 for 6 yards (90-L.Van Ness). Green Bay challenged the runner was down by contact ruling, and the play was Upheld. The ruling on the field stands. (Timeout #1.)
(9:15) PENALTY on JAX-15-T.Jones, False Start, 5 yards, enforced at JAX 49 - No Play.
(9:15) (Shotgun) 16-T.Lawrence pass short left to 17-E.Engram to GB 48 for 8 yards (29-X.McKinney; 45-Er.Wilson).
(8:33) (Shotgun) 4-T.Bigsby up the middle to GB 48 for no gain (56-E.Cooper; 20-J.Bullard).
(7:55) 16-T.Lawrence up the middle to GB 46 for 2 yards (97-K.Clark).
(7:14) (Shotgun) 4-T.Bigsby up the middle to GB 45 for 1 yard (94-K.Brooks; 55-K.Enagbare).
(6:37) (Shotgun) 16-T.Lawrence pass deep left to 13-C.Kirk to GB 19 for 26 yards (20-J.Bullard) [90-L.Van Ness].
(6:01) (No Huddle, Shotgun) 4-T.Bigsby up the middle to GB 14 for 5 yards (96-C.Wooden; 55-K.Enagbare).
(5:17) (Shotgun) 16-T.Lawrence pass short middle to 7-B.Thomas for 14 yards, TOUCHDOWN.
39-C.Little extra point is GOOD, Center-46-R.Matiscik, Holder-9-L.Cooke.
39-C.Little kicks 65 yards from JAX 35 to landing zone to end zone, Touchback to the GB 20.
(5:10) (Shotgun) 8-J.Jacobs up the middle to GB 25 for 5 yards (33-D.Lloyd, 6-D.Savage).
(4:35) (Shotgun) 8-J.Jacobs up the middle to GB 29 for 4 yards (99-J.Ledbetter).
(3:59) (Shotgun) 8-J.Jacobs up the middle to GB 31 for 2 yards (98-J.Jefferson).
(3:17) (Shotgun) 8-J.Jacobs up the middle to GB 36 for 5 yards (99-J.Ledbetter).
(2:40) (Shotgun) 31-Em.Wilson up the middle to GB 37 for 1 yard (52-D.Hamilton).
(2:00) (Shotgun) 2-M.Willis pass short left to 13-D.Wicks to GB 42 for 5 yards (3-T.Campbell).
(1:13) 2-M.Willis scrambles right end to JAX 38 for 20 yards (6-D.Savage).
(:31) (Shotgun) 8-J.Jacobs up the middle for 38 yards, TOUCHDOWN.
17-B.McManus extra point is GOOD, Center-42-M.Orzech, Holder-19-D.Whelan.
17-B.McManus kicks 65 yards from GB 35 to JAX 0. 11-P.Washington to JAX 21 for 21 yards (20-J.Bullard). PENALTY on JAX-20-D.Thomas, Illegal Block Above the Waist, 10 yards, enforced at JAX 21.
(:12) (Shotgun) 4-T.Bigsby right end to JAX 14 for 3 yards (20-J.Bullard, 58-I.McDuffie).
END QUARTER 3
(15:00) (Shotgun) 16-T.Lawrence pass incomplete short left to 4-T.Bigsby (96-C.Wooden).
(14:55) (Shotgun) 16-T.Lawrence sacked at JAX 4 for -10 yards (56-E.Cooper). FUMBLES (56-E.Cooper) [56-E.Cooper], RECOVERED by GB-95-D.Wyatt at JAX 5. Penalty on JAX-11-P.Washington, Illegal Motion, declined.
(14:46) (Shotgun) 8-J.Jacobs up the middle to JAX 3 for 2 yards (93-T.Lacy; 44-T.Walker).
(14:12) (Shotgun) 2-M.Willis pass short right to 85-T.Kraft for 3 yards, TOUCHDOWN.
17-B.McManus extra point is GOOD, Center-42-M.Orzech, Holder-19-D.Whelan.
17-B.McManus kicks 65 yards from GB 35 to end zone, Touchback to the JAX 30.
(14:06) (Shotgun) 4-T.Bigsby right end to JAX 29 for -1 yards (90-L.Van Ness, 97-K.Clark).
(13:28) (Shotgun) 16-T.Lawrence pass incomplete short middle to 17-E.Engram.
(13:24) (Shotgun) 16-T.Lawrence pass incomplete deep middle to 13-C.Kirk (56-E.Cooper). JAX-13-C.Kirk was injured during the play.
(13:17) 9-L.Cooke punts 60 yards to GB 11, Center-46-R.Matiscik. 11-J.Reed to GB 24 for 13 yards (46-R.Matiscik; 51-V.Miller).
(13:05) 8-J.Jacobs up the middle to GB 35 for 11 yards (5-A.Cisco).
(12:27) 8-J.Jacobs right tackle to GB 43 for 8 yards (41-J.Hines-Allen).
(11:50) 8-J.Jacobs up the middle to GB 46 for 3 yards (93-T.Lacy).
(11:12) 31-Em.Wilson right tackle to GB 46 for no gain (97-J.Gaziano, 23-F.Oluokun).
(10:25) (Shotgun) 2-M.Willis pass incomplete short middle to 87-R.Doubs.
(10:21) (Shotgun) 2-M.Willis pass short right to 31-Em.Wilson to GB 43 for -3 yards (30-M.Brown).
(9:48) 19-D.Whelan punts 37 yards to JAX 20, Center-42-M.Orzech, fair catch by 11-P.Washington.
(9:40) (Shotgun) 4-T.Bigsby up the middle to JAX 23 for 3 yards (96-C.Wooden).
(9:04) (Shotgun) 16-T.Lawrence pass short middle to 11-P.Washington to JAX 31 for 8 yards (45-Er.Wilson, 56-E.Cooper).
(8:38) (No Huddle, Shotgun) 16-T.Lawrence pass short left to 85-B.Strange to GB 48 for 21 yards (58-I.McDuffie; 45-Er.Wilson).
(8:08) (No Huddle, Shotgun) 4-T.Bigsby left tackle to GB 34 for 14 yards (29-X.McKinney).
(7:36) (No Huddle, Shotgun) 16-T.Lawrence pass short left to 85-B.Strange pushed ob at GB 29 for 5 yards (58-I.McDuffie).
(7:08) (No Huddle, Shotgun) 16-T.Lawrence pass short left to 4-T.Bigsby to GB 27 for 2 yards (56-E.Cooper).
(6:19) (Shotgun) 16-T.Lawrence Aborted. 65-M.Morse FUMBLES at GB 32, recovered by JAX-16-T.Lawrence at GB 29.
(5:39) 39-C.Little 47 yard field goal is GOOD, Center-46-R.Matiscik, Holder-9-L.Cooke.
39-C.Little kicks 65 yards from JAX 35 to end zone, Touchback to the GB 30.
(5:36) 8-J.Jacobs up the middle to GB 31 for 1 yard (99-J.Ledbetter).
(4:52) 8-J.Jacobs right end to GB 33 for 2 yards (52-D.Hamilton; 23-F.Oluokun).
(4:08) (Shotgun) 2-M.Willis sacked at GB 33 for 0 yards (sack split by 44-T.Walker and 41-J.Hines-Allen).
Timeout #1 by JAX at 04:03.
(4:03) 19-D.Whelan punts 63 yards to JAX 4, Center-42-M.Orzech. 11-P.Washington to JAX 13 for 9 yards (80-B.Melton).
(3:50) (Shotgun) 16-T.Lawrence pass short right to 17-E.Engram to JAX 25 for 12 yards (25-K.Nixon; 45-Er.Wilson).
(3:24) (No Huddle, Shotgun) 16-T.Lawrence pass short right to 11-P.Washington ran ob at JAX 40 for 15 yards (21-E.Stokes).
(3:19) (Shotgun) 16-T.Lawrence pass short middle to 2-D.Johnson to GB 40 for 20 yards (45-Er.Wilson).
(2:49) (No Huddle, Shotgun) 16-T.Lawrence pass short right to 85-B.Strange to GB 35 for 5 yards (20-J.Bullard).
(2:17) (No Huddle, Shotgun) 16-T.Lawrence pass incomplete short left to 15-T.Jones (23-J.Alexander).
(2:12) (Shotgun) 16-T.Lawrence pass deep middle to 85-B.Strange to GB 14 for 21 yards (56-E.Cooper).
(2:00) (Shotgun) 16-T.Lawrence pass incomplete short right to 11-P.Washington (23-J.Alexander).
(1:54) (Shotgun) 16-T.Lawrence pass short right to 17-E.Engram for 14 yards, TOUCHDOWN.
39-C.Little extra point is GOOD, Center-46-R.Matiscik, Holder-9-L.Cooke.
39-C.Little kicks 65 yards from JAX 35 to end zone, Touchback to the GB 30.
(1:48) 8-J.Jacobs up the middle to GB 34 for 4 yards (23-F.Oluokun; 6-D.Savage).
(1:13) 2-M.Willis pass deep left to 11-J.Reed pushed ob at JAX 15 for 51 yards (6-D.Savage).
(1:04) 8-J.Jacobs right guard to JAX 12 for 3 yards (52-D.Hamilton).
(:59) 30-C.Brooks up the middle to JAX 4 for 8 yards (26-A.Johnson).
Timeout #2 by JAX at 00:59.
(:54) 2-M.Willis kneels to JAX 5 for -1 yards.
Timeout #3 by JAX at 00:54.
(:24) 2-M.Willis kneels to JAX 6 for -1 yards.
(:02) 17-B.McManus 24 yard field goal is GOOD, Center-42-M.Orzech, Holder-19-D.Whelan.
Timeout #2 by GB at 00:02.
END GAME"

gb_jax_summary <- "Headline: Packers beat the Jaguars 30-27 While Jordan Love Watched from the Sideline.
Summary: With Love watching from the sideline Sunday, QB Willis completed a 51-yard pass to Jayden Reed that set up Brandon McManus' winning kick. Lawrence rallied Jacksonville from a 10-point deficit in the fourth and tied the game at 27 with his pass to Engram. But the Jags might not have needed a comeback had Lawrence and his teammates not made so many mistakes. Lawrence fumbled at the 5-yard line and threw an interception. The Jaguars also kept two Green Bay drives alive with penalties.
Notable Performances: Josh Jacobs ran for 127 yards and two touchdowns for Green Bay. Lawrence completed 21 of 32 passes for 308 yards.
Injuries: Packers: Love was on the opening possession against and left the game for good in the third quarter. Jaguars: 3 receivers all left the game injuries: Brian Thomas Jr., Christian Kirk, and Gabe Davis. "


# Append game log and summary to training dataframe 
gb_jax <- as.data.frame(cbind(gb_jax_log, gb_jax_summary)) %>% rename(game_log = gb_jax_log, game_summary = gb_jax_summary)
training <- rbind(training, gb_jax)

tb_atl_log <- "GAME
16-T.Gill kicks 65 yards from TB 35 to end zone, Touchback to the ATL 30.
(15:00) (Shotgun) 7-B.Robinson right tackle to ATL 32 for 2 yards (23-T.Smith, 54-L.David).
(14:32) (No Huddle, Shotgun) 18-K.Cousins pass deep right to 8-K.Pitts to TB 36 for 32 yards (27-Z.McCollum).
(14:03) (No Huddle, Shotgun) 7-B.Robinson left end pushed ob at TB 33 for 3 yards (29-C.Izien).
(13:21) (Shotgun) 18-K.Cousins pass incomplete short left to 1-D.Mooney.
(13:16) (Shotgun) 18-K.Cousins pass short middle to 5-D.London to TB 18 for 15 yards (54-L.David).
(12:39) (Shotgun) 7-B.Robinson right end to TB 18 for no gain (23-T.Smith).
(12:01) (Shotgun) 18-K.Cousins pass short left to 5-D.London for 18 yards, TOUCHDOWN.
6-Y.Koo extra point is GOOD, Center-49-L.McCullough, Holder-13-B.Pinion.
6-Y.Koo kicks 61 yards from ATL 35 to TB 4. 44-S.Tucker pushed ob at TB 37 for 33 yards (27-R.Grant).
(11:48) 6-B.Mayfield pass short right to 13-M.Evans to ATL 48 for 15 yards (24-A.Terrell).
(11:12) 1-R.White right tackle to ATL 43 for 5 yards (55-K.Elliss).
(10:36) (Shotgun) 6-B.Mayfield pass incomplete short left to 13-M.Evans.
(10:32) (Shotgun) 6-B.Mayfield pass short middle to 13-M.Evans to ATL 34 for 9 yards (20-D.Alford, 3-J.Bates).
(9:50) 1-R.White right tackle to ATL 33 for 1 yard (98-R.Orhorhoro, 50-J.Smith-Williams). TB-19-K.Johnson was injured during the play.
(9:29) (Shotgun) 1-R.White right tackle to ATL 33 for no gain (50-J.Smith-Williams, 20-D.Alford).
(8:51) (Shotgun) 6-B.Mayfield pass short right to 88-C.Otton to ATL 18 for 15 yards (40-J.Bertrand).
(8:14) (Shotgun) 6-B.Mayfield pass short middle to 14-C.Godwin to ATL 2 for 16 yards (20-D.Alford). ATL-20-D.Alford was injured during the play.
(7:40) 6-B.Mayfield pass short middle to 13-M.Evans for 2 yards, TOUCHDOWN.
4-C.McLaughlin extra point is GOOD, Center-45-Z.Triner, Holder-16-T.Gill.
16-T.Gill kicks 65 yards from TB 35 to end zone, Touchback to the ATL 30.
(7:36) 18-K.Cousins pass deep left to 1-D.Mooney pushed ob at 50 for 20 yards (35-J.Dean).
(7:06) (No Huddle, Shotgun) 18-K.Cousins pass short right to 25-T.Allgeier to TB 47 for 3 yards (0-Y.Diaby).
(6:30) (Shotgun) 25-T.Allgeier right tackle to TB 39 for 8 yards (52-K.Britt; 3-J.Whitehead).
(5:49) (Shotgun) 18-K.Cousins pass short left to 34-R.McCloud pushed ob at TB 24 for 15 yards (23-T.Smith).
(5:14) (Shotgun) 1-D.Mooney pass incomplete deep right [3-J.Whitehead].
(5:07) (Shotgun) 18-K.Cousins pass short right to 5-D.London to TB 19 for 5 yards (23-T.Smith).
(4:27) (Shotgun) 18-K.Cousins sacked at TB 28 for -9 yards (50-V.Vea).
(3:39) 6-Y.Koo 46 yard field goal is No Good, Wide Left, Center-49-L.McCullough, Holder-13-B.Pinion. PENALTY on TB-32-J.Hayes, Defensive Offside, 5 yards, enforced at TB 28 - No Play.
(3:34) 6-Y.Koo 41 yard field goal is No Good, Wide Left, Center-49-L.McCullough, Holder-13-B.Pinion.
(3:30) (Shotgun) 6-B.Mayfield pass short left to 14-C.Godwin to TB 42 for 11 yards (24-A.Terrell; 0-L.Carter).
(2:55) 7-B.Irving left end to ATL 42 for 16 yards (31-J.Simmons).
(2:15) 6-B.Mayfield pass incomplete deep middle to 17-S.Shepard.
(2:09) (Shotgun) 6-B.Mayfield pass short left to 14-C.Godwin pushed ob at ATL 35 for 7 yards (31-J.Simmons).
(1:30) (Shotgun) 6-B.Mayfield pass incomplete short left to 14-C.Godwin.
(1:27) 4-C.McLaughlin 53 yard field goal is GOOD, Center-45-Z.Triner, Holder-16-T.Gill.
16-T.Gill kicks 65 yards from TB 35 to end zone, Touchback to the ATL 30.
(1:22) (Shotgun) 7-B.Robinson left end to ATL 36 for 6 yards (23-T.Smith).
(:46) (Shotgun) 7-B.Robinson right tackle to ATL 37 for 1 yard (9-J.Tryon; 0-Y.Diaby).
(:24) (No Huddle, Shotgun) 18-K.Cousins pass short left to 1-D.Mooney to ATL 44 for 7 yards (52-K.Britt).
END QUARTER 1
(15:00) 18-K.Cousins pass incomplete short left [90-L.Hall].
(14:54) (Shotgun) 18-K.Cousins pass incomplete short middle to 5-D.London (35-J.Dean). PENALTY on TB-52-K.Britt, Unnecessary Roughness, 15 yards, enforced at ATL 44 - No Play.
(14:50) 25-T.Allgeier right end to TB 34 for 7 yards (27-Z.McCollum). PENALTY on ATL-64-R.Neuzil, Offensive Holding, 10 yards, enforced at TB 41 - No Play.
(14:25) (Shotgun) 18-K.Cousins pass short right to 34-R.McCloud to TB 43 for 8 yards (52-K.Britt).
(13:44) (Shotgun) 18-K.Cousins pass deep middle to 12-K.Hodge to TB 21 for 22 yards (29-C.Izien).
(13:02) (Shotgun) 18-K.Cousins pass short right to 7-B.Robinson to TB 23 for -2 yards (98-A.Nelson). PENALTY on ATL-8-K.Pitts, Offensive Holding, 10 yards, enforced at TB 21 - No Play.
(12:35) (Shotgun) 18-K.Cousins pass short right to 1-D.Mooney to TB 24 for 7 yards (27-Z.McCollum).
(12:11) (No Huddle, Shotgun) 18-K.Cousins pass incomplete short right to 8-K.Pitts (54-L.David).
(12:04) (Shotgun) 18-K.Cousins pass deep middle to 1-D.Mooney for 24 yards, TOUCHDOWN.
6-Y.Koo extra point is GOOD, Center-49-L.McCullough, Holder-13-B.Pinion.
6-Y.Koo kicks 62 yards from ATL 35 to TB 3. 44-S.Tucker to ATL 44 for 53 yards (29-M.Abernathy; 32-K.King).
(11:46) (Shotgun) 6-B.Mayfield pass short right to 88-C.Otton pushed ob at ATL 22 for 22 yards (55-K.Elliss).
(11:05) 1-R.White right end to ATL 23 for -1 yards (55-K.Elliss, 96-Z.Harrison).
(10:22) 6-B.Mayfield pass deep left to 13-M.Evans for 23 yards, TOUCHDOWN.
4-C.McLaughlin extra point is GOOD, Center-45-Z.Triner, Holder-16-T.Gill.
16-T.Gill kicks 65 yards from TB 35 to end zone, Touchback to the ATL 30.
(10:17) (Shotgun) 7-B.Robinson left end to ATL 30 for no gain (54-L.David).
(9:31) (Shotgun) 18-K.Cousins pass short left to 8-K.Pitts to ATL 48 for 18 yards (3-J.Whitehead).
(8:52) (Shotgun) 7-B.Robinson right tackle to TB 46 for 6 yards (27-Z.McCollum, 23-T.Smith).
(8:24) (No Huddle, Shotgun) 18-K.Cousins pass short right to 8-K.Pitts to TB 38 for 8 yards (54-L.David).
(7:39) (Shotgun) 18-K.Cousins pass incomplete short middle [90-L.Hall]. PENALTY on ATL-18-K.Cousins, Intentional Grounding, 10 yards, enforced at TB 38. Tampa Bay challenged the forward pass ruling, and the play was Upheld. The ruling on the field stands. (Timeout #1.)
(7:35) (Shotgun) 18-K.Cousins pass short left to 7-B.Robinson to TB 42 for 6 yards (9-J.Tryon). TB-23-T.Smith was injured during the play.
(7:06) (Shotgun) 18-K.Cousins pass short left to 25-T.Allgeier pushed ob at TB 36 for 6 yards (54-L.David).
(6:22) 6-Y.Koo 54 yard field goal is GOOD, Center-49-L.McCullough, Holder-13-B.Pinion.
6-Y.Koo kicks 68 yards from ATL 35 to TB -3. 83-C.Thompson to TB 18 for 21 yards (27-R.Grant).
(6:10) 7-B.Irving left tackle to TB 29 for 11 yards (55-K.Elliss; 98-R.Orhorhoro).
(5:28) (Shotgun) 1-R.White right guard pushed ob at ATL 15 for 56 yards (24-A.Terrell).
(4:47) (Shotgun) 6-B.Mayfield pass short right to 7-B.Irving to ATL 6 for 9 yards (50-J.Smith-Williams; 3-J.Bates).
(4:03) 7-B.Irving right tackle to ATL 2 for 4 yards (40-J.Bertrand, 3-J.Bates).
(3:19) (Shotgun) 7-B.Irving right guard to ATL 2 for no gain (98-R.Orhorhoro; 97-G.Jarrett).
(2:35) (Shotgun) 6-B.Mayfield pass short left to 1-R.White to ATL 4 for -2 yards (22-C.Phillips).
(2:00) (Shotgun) 6-B.Mayfield pass short right to 17-S.Shepard for 4 yards, TOUCHDOWN.
4-C.McLaughlin extra point is GOOD, Center-45-Z.Triner, Holder-16-T.Gill.
16-T.Gill kicks 65 yards from TB 35 to end zone, Touchback to the ATL 30.
(1:56) (Shotgun) 18-K.Cousins pass incomplete short middle to 34-R.McCloud (9-J.Tryon). ** Injury Update: TB-23-T.Smith has returned to the game.
(1:51) (Shotgun) 18-K.Cousins pass short right to 5-D.London to ATL 41 for 11 yards (27-Z.McCollum; 52-K.Britt). The Replay Official reviewed the runner was not down by contact ruling, and the play was Upheld. The ruling on the field stands.
(1:27) (Shotgun) 18-K.Cousins pass short left to 5-D.London to ATL 48 for 7 yards (23-T.Smith).
(1:08) (No Huddle, Shotgun) 18-K.Cousins pass short left to 7-B.Robinson pushed ob at TB 47 for 5 yards (35-J.Dean).
(1:00) (Shotgun) 18-K.Cousins pass short right to 34-R.McCloud to TB 39 for 8 yards (52-K.Britt, 54-L.David).
(:40) (No Huddle, Shotgun) 18-K.Cousins pass short right to 5-D.London pushed ob at TB 31 for 8 yards (27-Z.McCollum).
(:34) (Shotgun) 18-K.Cousins pass incomplete short middle to 5-D.London (3-J.Whitehead).
(:30) (Shotgun) 18-K.Cousins sacked at TB 39 for -8 yards (90-L.Hall). TB-0-Y.Diaby was injured during the play.
(:24) (Shotgun) 18-K.Cousins pass incomplete short right to 1-D.Mooney.
Timeout #1 by ATL at 00:24.
(:19) 13-B.Pinion punts 35 yards to TB 4, Center-49-L.McCullough, fair catch by 19-K.Johnson. ** Injury Update: TB-19-K.Johnson has returned to the game. ** Injury Update: TB-0-Y.Diaby has returned to the game.
(:12) 6-B.Mayfield kneels to TB 3 for -1 yards.
END QUARTER 2
6-Y.Koo kicks 67 yards from ATL 35 to TB -2. 7-B.Irving to TB 37 for 39 yards (6-Y.Koo; 12-K.Hodge).
(14:53) (Shotgun) 1-R.White left tackle to TB 39 for 2 yards (97-G.Jarrett).
(13:52) (Shotgun) 6-B.Mayfield pass short middle to 14-C.Godwin to TB 46 for 7 yards (33-A.Hamilton). PENALTY on TB-77-J.Skule, Offensive Holding, 10 yards, enforced at TB 39 - No Play.
(13:34) (Shotgun) 6-B.Mayfield pass short left to 1-R.White to TB 27 for -2 yards (90-D.Onyemata).
(12:54) (Shotgun) 6-B.Mayfield scrambles right end pushed ob at TB 35 for 8 yards (33-A.Hamilton).
(12:16) 16-T.Gill punts 45 yards to ATL 20, Center-45-Z.Triner, fair catch by 26-A.Williams.
(12:10) 18-K.Cousins pass incomplete deep left to 1-D.Mooney (35-J.Dean).
(12:04) (Shotgun) 18-K.Cousins pass deep right to 5-D.London to TB 49 for 31 yards (3-J.Whitehead).
(11:28) (Shotgun) 25-T.Allgeier left end to TB 44 for 5 yards (50-V.Vea; 52-K.Britt). TB-54-L.David was injured during the play.
(10:59) (Shotgun) PENALTY on ATL-65-M.Bergeron, False Start, 5 yards, enforced at TB 44 - No Play.
(10:36) (Shotgun) 18-K.Cousins pass incomplete short right to 1-D.Mooney (27-Z.McCollum).
(10:30) (No Huddle, Shotgun) 18-K.Cousins pass short middle to 8-K.Pitts to TB 42 for 7 yards (23-T.Smith). ** Injury Update: TB-54-L.David has returned to the game.
(10:07) (No Huddle, Shotgun) 18-K.Cousins pass short left to 1-D.Mooney pushed ob at TB 28 for 14 yards (35-J.Dean).
(9:25) (Shotgun) 18-K.Cousins pass short right to 1-D.Mooney to TB 26 for 2 yards (3-J.Whitehead).
(8:45) (Shotgun) 18-K.Cousins pass short right to 8-K.Pitts pushed ob at TB 18 for 8 yards (43-C.Braswell).
(8:13) (Shotgun) 18-K.Cousins pass short left to 34-R.McCloud to TB 16 for 2 yards (29-C.Izien). PENALTY on ATL-12-K.Hodge, Offensive Pass Interference, 10 yards, enforced at TB 18 - No Play. Penalty on ATL-70-Ja.Matthews, Ineligible Downfield Pass, declined.
(7:52) (Shotgun) 7-B.Robinson right guard to TB 22 for 6 yards (3-J.Whitehead).
(7:14) (Shotgun) 18-K.Cousins sacked at TB 30 for -8 yards (98-A.Nelson).
(6:32) (Shotgun) 18-K.Cousins pass incomplete deep right to 1-D.Mooney.
(6:26) 6-Y.Koo 48 yard field goal is GOOD, Center-49-L.McCullough, Holder-13-B.Pinion.
6-Y.Koo kicks 65 yards from ATL 35 to end zone, Touchback to the TB 30.
(6:21) (Shotgun) 6-B.Mayfield pass short left to 14-C.Godwin to 50 for 20 yards (3-J.Bates). FUMBLES (3-J.Bates), recovered by TB-13-M.Evans at ATL 49.
(5:35) 6-B.Mayfield pass short right to 14-C.Godwin pushed ob at ATL 39 for 10 yards (21-M.Hughes).
(5:04) 7-B.Irving left guard to ATL 39 for no gain (33-A.Hamilton).
(4:28) (Shotgun) 6-B.Mayfield scrambles left end to ATL 30 for 9 yards (55-K.Elliss).
(3:57) 14-C.Godwin left end pushed ob at ATL 28 for 2 yards (24-A.Terrell). PENALTY on ATL-40-J.Bertrand, Unnecessary Roughness, 14 yards, enforced at ATL 28.
(3:29) (Shotgun) 7-B.Irving left tackle to ATL 14 for no gain (97-G.Jarrett).
(2:49) (Shotgun) 6-B.Mayfield pass short middle to 88-C.Otton to ATL 7 for 7 yards (40-J.Bertrand).
(2:05) (Shotgun) 6-B.Mayfield sacked at ATL 14 for -7 yards (90-D.Onyemata).
(1:20) 4-C.McLaughlin 32 yard field goal is GOOD, Center-45-Z.Triner, Holder-16-T.Gill.
16-T.Gill kicks 65 yards from TB 35 to end zone, Touchback to the ATL 30.
(1:17) (Shotgun) 18-K.Cousins pass short left to 1-D.Mooney to ATL 32 for 2 yards (35-J.Dean).
(:45) (Shotgun) 18-K.Cousins pass incomplete short middle to 34-R.McCloud (23-T.Smith).
(:40) (Shotgun) 18-K.Cousins pass short middle to 34-R.McCloud to TB 46 for 22 yards (29-C.Izien) [0-Y.Diaby].
(:02) (Shotgun) 7-B.Robinson left end to TB 18 for 28 yards (35-J.Dean).
END QUARTER 3
(15:00) (Shotgun) 7-B.Robinson left end to TB 12 for 6 yards (54-L.David, 23-T.Smith).
(14:22) (Shotgun) 7-B.Robinson left end to TB 10 for 2 yards (52-K.Britt). TB-3-J.Whitehead was injured during the play.
(13:49) (Shotgun) 25-T.Allgeier right tackle to TB 12 for -2 yards (29-C.Izien, 27-Z.McCollum).
(13:25) (No Huddle, Shotgun) 18-K.Cousins pass short left to 1-D.Mooney for 12 yards, TOUCHDOWN.
6-Y.Koo extra point is GOOD, Center-49-L.McCullough, Holder-13-B.Pinion.
6-Y.Koo kicks 65 yards from ATL 35 to end zone, Touchback to the TB 30.
(13:18) (Shotgun) 6-B.Mayfield pass short middle to 13-M.Evans to TB 43 for 13 yards (3-J.Bates).
(12:37) 6-B.Mayfield scrambles right end ran ob at ATL 39 for 18 yards (21-M.Hughes).
(11:56) 1-R.White right tackle to ATL 38 for 1 yard (40-J.Bertrand; 55-K.Elliss).
(11:16) (Shotgun) 6-B.Mayfield pass incomplete short right to 88-C.Otton.
(11:13) (Shotgun) 6-B.Mayfield scrambles left tackle to ATL 35 for 3 yards (0-L.Carter).
Timeout #1 by TB at 11:13.
(10:28) 4-C.McLaughlin 53 yard field goal is GOOD, Center-45-Z.Triner, Holder-16-T.Gill.
16-T.Gill kicks 65 yards from TB 35 to end zone, Touchback to the ATL 30.
(10:23) 18-K.Cousins pass short left to 7-B.Robinson to ATL 35 for 5 yards (29-C.Izien; 52-K.Britt).
(9:46) (Shotgun) 7-B.Robinson left end to ATL 36 for 1 yard (0-Y.Diaby, 29-C.Izien). TB-0-Y.Diaby was injured during the play.
(9:23) (Shotgun) 18-K.Cousins pass incomplete short middle to 1-D.Mooney. PENALTY on TB-54-L.David, Defensive Pass Interference, 7 yards, enforced at ATL 36 - No Play.
(9:19) (Shotgun) 25-T.Allgeier right tackle to ATL 45 for 2 yards (54-L.David).
(8:40) (Shotgun) 18-K.Cousins pass short middle to 5-D.London to TB 40 for 15 yards (52-K.Britt).
(8:15) (No Huddle, Shotgun) 25-T.Allgeier left end to TB 40 for no gain (98-A.Nelson, 29-C.Izien). PENALTY on ATL-63-C.Lindstrom, Offensive Holding, 10 yards, enforced at TB 40 - No Play.
(7:51) (Shotgun) 18-K.Cousins pass short left to 34-R.McCloud to TB 46 for 4 yards (35-J.Dean).
(7:16) (No Huddle, Shotgun) 18-K.Cousins pass short right to 8-K.Pitts to TB 36 for 10 yards (35-J.Dean). ** Injury Update: TB-0-Y.Diaby has returned to the game.
(6:42) (No Huddle, Shotgun) 18-K.Cousins pass incomplete deep left to 1-D.Mooney [0-Y.Diaby].
(6:37) 6-Y.Koo 54 yard field goal is BLOCKED (37-T.Thomas), Center-49-L.McCullough, Holder-13-B.Pinion.
(6:29) (Shotgun) 6-B.Mayfield pass incomplete short right to 13-M.Evans (15-M.Judon).
(6:26) 1-R.White left guard to ATL 48 for 8 yards (15-M.Judon).
(5:46) (Shotgun) 6-B.Mayfield scrambles right tackle to ATL 43 for 5 yards (40-J.Bertrand).
(5:04) 7-B.Irving left guard to ATL 38 for 5 yards (50-J.Smith-Williams; 3-J.Bates).
(4:25) 6-B.Mayfield pass short left to 7-B.Irving to ATL 35 for 3 yards (97-G.Jarrett; 3-J.Bates).
(3:39) 1-R.White left guard to ATL 32 for 3 yards (97-G.Jarrett).
(2:55) 7-B.Irving left tackle to ATL 25 for 7 yards (3-J.Bates). FUMBLES (3-J.Bates), RECOVERED by ATL-55-K.Elliss at ATL 25.
(2:50) (Shotgun) 25-T.Allgeier left guard to ATL 23 for -2 yards (0-Y.Diaby).
(2:27) (No Huddle, Shotgun) 18-K.Cousins sacked at ATL 16 for -7 yards (90-L.Hall).
(2:01) (No Huddle, Shotgun) 18-K.Cousins pass short right to 25-T.Allgeier to ATL 20 for 4 yards (27-Z.McCollum) [9-J.Tryon].
(1:52) (Shotgun) 18-K.Cousins pass short right intended for 1-D.Mooney INTERCEPTED by 54-L.David at ATL 35. 54-L.David to ATL 28 for 7 yards (25-T.Allgeier).
(1:44) 1-R.White left end to ATL 31 for -3 yards (50-J.Smith-Williams).
(1:39) 7-B.Irving left tackle to ATL 24 for 7 yards (55-K.Elliss). PENALTY on TB-62-G.Barton, Offensive Holding, 10 yards, enforced at ATL 31 - No Play.
Timeout #1 by ATL at 01:39.
(1:33) 6-B.Mayfield pass short left to 1-R.White to ATL 43 for -2 yards (31-J.Simmons, 55-K.Elliss).
(1:26) 7-B.Irving left tackle to ATL 42 for 1 yard (15-M.Judon).
Timeout #2 by ATL at 01:26.
(1:20) 16-T.Gill punts 42 yards to end zone, Center-45-Z.Triner, Touchback.
Timeout #3 by ATL at 01:21.
(1:14) (Shotgun) 18-K.Cousins pass short right to 8-K.Pitts pushed ob at ATL 25 for 5 yards (27-Z.McCollum).
(1:08) (No Huddle, Shotgun) 18-K.Cousins pass deep middle to 1-D.Mooney to ATL 42 for 17 yards (23-T.Smith).
(:46) (No Huddle, Shotgun) 18-K.Cousins pass short left to 34-R.McCloud to TB 45 for 13 yards (23-T.Smith) [90-L.Hall]. FUMBLES (23-T.Smith), ball out of bounds at TB 49.
(:22) (No Huddle) 18-K.Cousins spiked the ball to stop the clock.
(:21) (Shotgun) 18-K.Cousins pass short left to 5-D.London pushed ob at TB 43 for 6 yards (35-J.Dean).
(:17) (Shotgun) 18-K.Cousins pass incomplete short middle to 34-R.McCloud (27-Z.McCollum). TB-58-M.Watts was injured during the play.
(:12) (Shotgun) 18-K.Cousins pass short middle to 5-D.London to TB 29 for 14 yards (35-J.Dean).
Timeout #2 by TB at 00:12.
(:02) (No Huddle) 18-K.Cousins spiked the ball to stop the clock.
(:01) (Field Goal formation) PENALTY on ATL, Delay of Game, 5 yards, enforced at TB 29 - No Play.
(:01) 6-Y.Koo 52 yard field goal is GOOD, Center-49-L.McCullough, Holder-13-B.Pinion.
Timeout #3 by TB at 00:01.
END QUARTER 4
16-T.Gill kicks 65 yards from TB 35 to end zone, Touchback to the ATL 30.
(10:00) (Shotgun) 25-T.Allgeier right tackle to ATL 31 for 1 yard (0-Y.Diaby).
(9:37) (No Huddle, Shotgun) 18-K.Cousins pass short right to 5-D.London to ATL 37 for 6 yards (27-Z.McCollum).
(9:14) (No Huddle, Shotgun) 18-K.Cousins pass short right to 5-D.London to TB 45 for 18 yards (29-C.Izien, 27-Z.McCollum). ATL-5-D.London was injured during the play.
(8:54) (Shotgun) 18-K.Cousins pass short right to 12-K.Hodge for 45 yards, TOUCHDOWN.
END GAME"

tb_atl_summary <- "Headline: Cousins throws for 509 yards, hits Hodge in OT to give Falcons 36-30 win over Bucs. 
Summary: Both offenses ran up and down the field, combining for 488 yards and just one punt over the first two quarters. Mayfield threw three touchdown passes, including a pair to Mike Evans, and Chase McLaughlin booted three field goals. The last of them put the Buccaneers ahead 30-27 with 10:23 remaining. The Falcons tied it with a gutty fourth-down call early in the chose to go for it. Atlanta lined right back up and Cousins threw a pass to Darnell Mooney, who made the grab at the marker but wasn’t content with just a first down. He shook off a tackler and scooted to the end zone. After a wild fourth quarter that featured a blocked field goal, a fumble and an interception, Cousins and the Falcons got the ball back at their own 20 with 1:14 remaining in regulation and no timeouts, trailing 30-27. Cousins completed five passes to push Atlanta to the Buccaneers 29, then hustled to the line to spike the ball with a single second left. In all the confusion, the Falcons were called for delay of game as they lined up for a tying field goal, but it didn't cost them. Even with the five-yard penalty, Younghoe Koo knocked it through from 52 yards to force overtime. The Falcons won the coin toss in overtime and made sure Baker Mayfield and the Buccaneers didn't get their hands on the ball again. Cousins connected with Drake London on a couple of passes before throwing a short one to Hodge who raced untouched to the end zone to end the game.
Notable Performances: Kirk Cousins passed for 508 yards and 4 touchdowns. London finished with 12 catches for 154 yards. Mooney had nine receptions for 105. Mayfield threw for 180 yards and 3 touchdowns.
Injuries: Buccaneers: S Tykee Smith left briefly but returned. S Jordan Whitehead walked off slowly early in the fourth quarter. Falcons: CB Dee Alford left the game in the first half.
"

# Append game log and summary to training dataframe 
tb_atl <- as.data.frame(cbind(tb_atl_log, tb_atl_summary)) %>% rename(game_log = tb_atl_log, game_summary = tb_atl_summary)
training <- rbind(training, tb_atl)

cle_was_log <- "GAME
3-A.Seibert kicks 64 yards from WAS 35 to CLE 1. 27-D.Foreman to CLE 30 for 29 yards (26-J.McNichols, 57-N.Bellore).
(14:55) (Shotgun) 4-D.Watson pass short left to 85-D.Njoku pushed ob at CLE 44 for 14 yards (11-J.Chinn).
(14:21) (Shotgun) 4-D.Watson pass short right to 34-J.Ford to WAS 49 for 7 yards (20-Q.Martin).
(13:41) 4-D.Watson pass incomplete deep middle to 2-A.Cooper.
(13:35) (Shotgun) 20-P.Strong right guard to WAS 47 for 2 yards (92-D.Armstrong; 4-F.Luvu).
(12:56) 27-D.Foreman left end to WAS 47 for no gain (4-F.Luvu).
(12:51) (Shotgun) 8-B.Robinson right tackle to WAS 46 for -1 yards (6-J.Owusu-Koramoah).
(12:22) (No Huddle, Shotgun) 5-J.Daniels right end to WAS 47 for 1 yard (33-R.Hickman; 93-S.Harris).
(11:51) (Shotgun) 5-J.Daniels sacked at WAS 38 for -9 yards (99-Z.Smith).
(11:13) 10-T.Way punts 42 yards to CLE 20, Center-69-T.Ott. 11-J.Proche to CLE 27 for 7 yards (38-K.Seymour, 57-N.Bellore).
(11:03) (Shotgun) 4-D.Watson pass short left to 34-J.Ford to CLE 20 for -7 yards (93-J.Allen).
(10:17) (Shotgun) 4-D.Watson pass incomplete short right to 20-P.Strong (0-M.Sainristil) [93-J.Allen].
(10:09) (Shotgun) 4-D.Watson pass incomplete deep right to 85-D.Njoku.
(10:02) 13-C.Bojorquez punts 61 yards to WAS 19, Center-47-C.Hughlett, fair catch by 14-O.Zaccheaus. PENALTY on CLE-31-M.Ford, Fair Catch Interference, 15 yards, enforced at WAS 19.
(9:54) (Shotgun) 5-J.Daniels pass short right to 30-A.Ekeler to WAS 31 for -3 yards (23-M.Emerson).
(9:19) (No Huddle, Shotgun) 5-J.Daniels pass incomplete short left to 17-T.McLaurin (30-D.Bush, 21-D.Ward).
(9:14) (No Huddle, Shotgun) 5-J.Daniels pass deep right to 17-T.McLaurin to CLE 3 for 66 yards (21-D.Ward).
(8:22) (Shotgun) 5-J.Daniels right end pushed ob at CLE 5 for -2 yards (9-G.Delpit).
Timeout #1 by WAS at 08:22.
(7:43) (No Huddle, Shotgun) 5-J.Daniels pass incomplete short middle to 86-Z.Ertz.
(7:38) (No Huddle, Shotgun) 5-J.Daniels pass short right intended for 86-Z.Ertz INTERCEPTED by 6-J.Owusu-Koramoah at CLE 1. 6-J.Owusu-Koramoah to CLE 1 for no gain (86-Z.Ertz).
(7:36) 27-D.Foreman right guard to CLE 3 for 2 yards (94-D.Payne).
(6:56) 27-D.Foreman left tackle to CLE 5 for 2 yards (93-J.Allen, 11-J.Chinn).
(6:21) (Shotgun) 4-D.Watson pass incomplete deep left to 2-A.Cooper [95-J.Newton].
(6:15) 13-C.Bojorquez punts 44 yards to CLE 49, Center-47-C.Hughlett. 14-O.Zaccheaus to CLE 34 for 15 yards (31-M.Ford).
(6:05) (Shotgun) 5-J.Daniels pass short right to 17-T.McLaurin to CLE 22 for 12 yards (23-M.Emerson).
(5:23) (No Huddle, Shotgun) 5-J.Daniels right end to CLE 24 for -2 yards (33-R.Hickman).
(4:43) (No Huddle, Shotgun) 5-J.Daniels pass short left to 12-L.McCaffrey to CLE 21 for 3 yards (33-R.Hickman).
(4:05) (No Huddle, Shotgun) 5-J.Daniels pass short middle to 86-Z.Ertz to CLE 14 for 7 yards (29-C.Mitchell).
(3:29) (No Huddle) 30-A.Ekeler right end to CLE 4 for 10 yards (37-Da.Bell).
(2:46) (No Huddle) 8-B.Robinson left tackle for 4 yards, TOUCHDOWN.
3-A.Seibert extra point is GOOD, Center-69-T.Ott, Holder-10-T.Way.
3-A.Seibert kicks 62 yards from WAS 35 to CLE 3. 20-P.Strong to CLE 28 for 25 yards (26-J.McNichols; 41-C.Yankoff).
(2:34) (Shotgun) 27-D.Foreman right guard to CLE 28 for no gain (11-J.Chinn, 98-P.Mathis).
(1:54) (Shotgun) 4-D.Watson pass incomplete deep right to 2-A.Cooper.
(1:49) (Shotgun) 4-D.Watson scrambles left end pushed ob at CLE 33 for 5 yards (0-M.Sainristil).
Timeout #1 by CLE at 01:49.
(1:12) 13-C.Bojorquez punts 65 yards to WAS 2, Center-47-C.Hughlett, downed by CLE-38-T.Brown.
(1:01) 8-B.Robinson right guard to WAS 2 for no gain (6-J.Owusu-Koramoah).
(:18) (No Huddle, Shotgun) 5-J.Daniels pass incomplete deep left to 17-T.McLaurin.
(:12) (No Huddle, Shotgun) 5-J.Daniels pass incomplete deep middle to 86-Z.Ertz.
(:07) 10-T.Way punts 50 yards to CLE 48, Center-69-T.Ott. 11-J.Proche to WAS 43 for 9 yards (57-N.Bellore).
END QUARTER 1
(15:00) (Shotgun) 4-D.Watson pass incomplete short middle to 85-D.Njoku (98-P.Mathis).
(14:57) (Shotgun) 4-D.Watson pass deep left to 2-A.Cooper to WAS 24 for 19 yards (20-Q.Martin, 4-F.Luvu).
(14:13) (Shotgun) 4-D.Watson pass incomplete short right to 85-D.Njoku. PENALTY on CLE-55-E.Pocic, Ineligible Downfield Pass, 5 yards, enforced at WAS 24 - No Play.
(14:09) 4-D.Watson pass incomplete short left to 2-A.Cooper (25-B.St-Juste).
(14:04) (Shotgun) 4-D.Watson pass incomplete short middle to 3-J.Jeudy (20-Q.Martin).
(14:00) (Shotgun) 4-D.Watson sacked at WAS 33 for -4 yards (4-F.Luvu).
(13:13) 7-D.Hopkins 51 yard field goal is GOOD, Center-47-C.Hughlett, Holder-13-C.Bojorquez.
7-D.Hopkins kicks 65 yards from CLE 35 to WAS 0. 30-A.Ekeler pushed ob at WAS 20 for 20 yards (38-T.Brown; 59-W.Reid). ** Injury Update: CLE-12-R.McLeod has returned to the game.
(13:02) (Shotgun) 30-A.Ekeler right tackle to CLE 30 for 50 yards (23-M.Emerson). FUMBLES (23-M.Emerson), recovered by WAS-14-O.Zaccheaus at CLE 23.
(12:10) (No Huddle, Shotgun) 5-J.Daniels right end ran ob at CLE 24 for -1 yards (12-R.McLeod).
(11:32) (No Huddle, Shotgun) 8-B.Robinson right tackle to CLE 14 for 10 yards (30-D.Bush).
(10:46) 73-T.Scott reported in as eligible. 5-J.Daniels scrambles right end pushed ob at CLE 12 for 2 yards (59-W.Reid).
(10:08) (No Huddle, Shotgun) 26-J.McNichols left guard to CLE 12 for no gain (9-G.Delpit).
(9:28) (No Huddle, Shotgun) 5-J.Daniels pass incomplete short right to 86-Z.Ertz (12-R.McLeod).
(9:26) (No Huddle, Shotgun) 5-J.Daniels pass short middle to 86-Z.Ertz to CLE 9 for 3 yards (12-R.McLeod, 9-G.Delpit).
(8:44) 3-A.Seibert 27 yard field goal is GOOD, Center-69-T.Ott, Holder-10-T.Way.
3-A.Seibert kicks 59 yards from WAS 35 to CLE 6. 20-P.Strong to CLE 31 for 25 yards (26-J.McNichols).
(8:35) (Shotgun) 34-J.Ford up the middle to CLE 31 for no gain (98-P.Mathis; 54-B.Wagner).
(8:07) (No Huddle, Shotgun) 4-D.Watson pass short right to 34-J.Ford pushed ob at CLE 33 for 2 yards (11-J.Chinn).
(7:29) (Shotgun) 4-D.Watson sacked at CLE 33 for 0 yards (93-J.Allen).
(6:54) 13-C.Bojorquez punts 41 yards to WAS 26, Center-47-C.Hughlett, out of bounds.
(6:48) (Shotgun) 5-J.Daniels pass incomplete short left to 14-O.Zaccheaus (59-W.Reid).
(6:45) (No Huddle, Shotgun) 5-J.Daniels pass incomplete short right to 86-Z.Ertz.
(6:39) (No Huddle, Shotgun) PENALTY on CLE, Defensive Too Many Men on Field, 5 yards, enforced at WAS 26 - No Play.
(6:39) (No Huddle, Shotgun) 5-J.Daniels pass short left to 12-L.McCaffrey to WAS 40 for 9 yards (0-G.Newsome).
(6:16) (No Huddle, Shotgun) 5-J.Daniels right end ran ob at CLE 47 for 13 yards (0-G.Newsome). Penalty on CLE, Defensive Too Many Men on Field, declined.
(5:16) (No Huddle, Shotgun) 5-J.Daniels pass short right to 86-Z.Ertz to CLE 39 for 6 yards (37-Da.Bell). PENALTY on WAS, Illegal Shift, 5 yards, enforced at CLE 45 - No Play.
(4:54) (Shotgun) 5-J.Daniels pass incomplete deep middle to 17-T.McLaurin (21-D.Ward).
(4:48) (Shotgun) 5-J.Daniels pass short middle to 14-O.Zaccheaus to CLE 40 for 10 yards (0-G.Newsome).
Timeout #2 by WAS at 04:48.
(4:09) (No Huddle, Shotgun) 5-J.Daniels scrambles right end pushed ob at CLE 6 for 34 yards (12-R.McLeod). PENALTY on CLE-21-D.Ward, Defensive Holding, 3 yards, enforced at CLE 6.
(5:55) (No Huddle, Shotgun) 8-B.Robinson up the middle to CLE 45 for 2 yards (30-D.Bush).
(3:39) (No Huddle, Shotgun) 8-B.Robinson right guard to CLE 1 for 2 yards (99-Z.Smith; 30-D.Bush).
(3:14) (Shotgun) 8-B.Robinson right guard for 1 yard, TOUCHDOWN.
3-A.Seibert extra point is GOOD, Center-69-T.Ott, Holder-10-T.Way.
3-A.Seibert kicks 65 yards from WAS 35 to CLE 0. 20-P.Strong to CLE 27 for 27 yards (57-N.Bellore).
(3:05) 34-J.Ford left tackle to CLE 30 for 3 yards (93-J.Allen).
(2:29) (Shotgun) 4-D.Watson pass short right to 8-E.Moore to CLE 32 for 2 yards (0-M.Sainristil) [92-D.Armstrong].
(2:00) (Shotgun) 4-D.Watson sacked at CLE 23 for -9 yards (sack split by 54-B.Wagner and 4-F.Luvu).
(1:51) 13-C.Bojorquez punts 57 yards to WAS 20, Center-47-C.Hughlett. 14-O.Zaccheaus to WAS 38 for 18 yards (12-R.McLeod, 57-I.McGuire).
Timeout #2 by WAS at 01:51.
(1:35) (Shotgun) 5-J.Daniels pass short right to 12-L.McCaffrey to WAS 45 for 7 yards (30-D.Bush, 9-G.Delpit).
(1:14) (No Huddle, Shotgun) 5-J.Daniels pass incomplete short middle to 86-Z.Ertz.
(1:10) (No Huddle, Shotgun) 5-J.Daniels pass short middle to 17-T.McLaurin to CLE 44 for 11 yards (9-G.Delpit).
(:50) 5-J.Daniels scrambles right end pushed ob at CLE 41 for 3 yards (30-D.Bush).
(:42) (No Huddle, Shotgun) 5-J.Daniels pass deep right to 2-D.Brown for 41 yards, TOUCHDOWN.
3-A.Seibert extra point is GOOD, Center-69-T.Ott, Holder-10-T.Way.
3-A.Seibert kicks 64 yards from WAS 35 to CLE 1. 20-P.Strong to CLE 28 for 27 yards (89-B.Tremayne; 26-J.McNichols).
(:30) (Shotgun) PENALTY on CLE-79-D.Jones, False Start, 5 yards, enforced at CLE 28 - No Play.
(:30) (Shotgun) 4-D.Watson pass deep middle to 3-J.Jeudy to CLE 39 for 16 yards (0-M.Sainristil).
(:24) (Shotgun) PENALTY on CLE-3-J.Jeudy, False Start, 4 yards, enforced at CLE 39 - No Play.
Timeout #2 by CLE at 00:24.
(:24) (Shotgun) 4-D.Watson pass short right to 2-A.Cooper to CLE 48 for 13 yards (25-B.St-Juste).
(:19) (Shotgun) 4-D.Watson pass incomplete short middle to 8-E.Moore (1-N.Igbinoghene).
Timeout #3 by CLE at 00:19.
(:17) (Shotgun) 4-D.Watson pass incomplete deep right to 2-A.Cooper.
(:09) 13-C.Bojorquez punts 50 yards to WAS 2, Center-47-C.Hughlett, downed by CLE-31-M.Ford.
END QUARTER 2
7-D.Hopkins kicks 65 yards from CLE 35 to end zone, Touchback to the WAS 30.
(15:00) 17-T.McLaurin right end to WAS 32 for 2 yards (6-J.Owusu-Koramoah). FUMBLES (6-J.Owusu-Koramoah), RECOVERED by CLE-23-M.Emerson at WAS 32. 23-M.Emerson to WAS 30 for 2 yards (17-T.McLaurin).
(14:52) (Shotgun) 4-D.Watson pass short left to 2-A.Cooper pushed ob at WAS 21 for 9 yards (25-B.St-Juste).
(14:32) (No Huddle, Shotgun) 4-D.Watson pass short middle to 2-A.Cooper to WAS 2 for 19 yards (4-F.Luvu, 35-P.Butler).
(13:41) (Shotgun) PENALTY on CLE-70-Z.Zinter, False Start, 5 yards, enforced at WAS 2 - No Play.
(13:15) (Shotgun) 4-D.Watson sacked at WAS 8 for -1 yards (92-D.Armstrong).
Timeout #1 by CLE at 13:15.
(12:30) (Shotgun) 4-D.Watson pass incomplete short right to 3-J.Jeudy.
(12:23) (Shotgun) 4-D.Watson pass incomplete short left.
(12:15) (Run formation) PENALTY on CLE, Delay of Game, 5 yards, enforced at WAS 8 - No Play.
(12:15) 7-D.Hopkins 31 yard field goal is GOOD, Center-86-B.Whiteheart, Holder-13-C.Bojorquez.
7-D.Hopkins kicks 61 yards from CLE 35 to WAS 4. 30-A.Ekeler to WAS 33 for 29 yards (37-Da.Bell, 59-W.Reid). PENALTY on WAS-39-J.Reaves, Offensive Holding, 10 yards, enforced at WAS 30.
(12:04) 30-A.Ekeler left guard to WAS 24 for 4 yards (6-J.Owusu-Koramoah, 9-G.Delpit).
(11:34) (No Huddle, Shotgun) 5-J.Daniels pass short left to 17-T.McLaurin to WAS 47 for 23 yards (0-G.Newsome).
(10:50) (No Huddle, Shotgun) 5-J.Daniels scrambles left guard pushed ob at CLE 30 for 23 yards (30-D.Bush).
(10:15) (No Huddle, Shotgun) 26-J.McNichols left tackle to CLE 25 for 5 yards (30-D.Bush, 59-W.Reid).
(9:52) (No Huddle, Shotgun) 5-J.Daniels sacked at CLE 27 for -2 yards (6-J.Owusu-Koramoah).
(9:14) (No Huddle, Shotgun) 5-J.Daniels pass short right to 2-D.Brown to CLE 11 for 16 yards (9-G.Delpit).
(8:45) (No Huddle, Shotgun) 30-A.Ekeler up the middle to CLE 9 for 2 yards (30-D.Bush, 12-R.McLeod).
(8:09) (No Huddle, Shotgun) 5-J.Daniels right end pushed ob at CLE 3 for 6 yards (31-M.Ford).
(7:28) (No Huddle, Shotgun) 26-J.McNichols left guard for 3 yards, TOUCHDOWN.
3-A.Seibert extra point is GOOD, Center-69-T.Ott, Holder-10-T.Way.
3-A.Seibert kicks 59 yards from WAS 35 to CLE 6. 20-P.Strong to CLE 26 for 20 yards (32-M.Walker).
(7:17) (Shotgun) 27-D.Foreman left tackle pushed ob at WAS 49 for 25 yards (20-Q.Martin).
(6:41) (Shotgun) 27-D.Foreman left end to WAS 41 for 8 yards (25-B.St-Juste, 54-B.Wagner).
(5:58) (Shotgun) 4-D.Watson sacked at WAS 45 for -4 yards (54-B.Wagner). FUMBLES (54-B.Wagner) [54-B.Wagner], RECOVERED by WAS-4-F.Luvu at WAS 45. 4-F.Luvu to 50 for 5 yards (75-J.Bitonio).
(5:48) 5-J.Daniels scrambles right end pushed ob at CLE 45 for 5 yards (57-I.McGuire).
(5:06) (No Huddle, Shotgun) 5-J.Daniels sacked at WAS 49 for -6 yards (sack split by 94-D.Tomlinson and 59-W.Reid). CLE-9-G.Delpit was injured during the play.
(4:39) (Shotgun) 5-J.Daniels pass short right to 30-A.Ekeler to CLE 18 for 33 yards (12-R.McLeod).
(3:54) (Shotgun) 26-J.McNichols right tackle to CLE 13 for 5 yards (30-D.Bush). CLE-6-J.Owusu-Koramoah was injured during the play.
(3:26) 30-A.Ekeler up the middle to CLE 12 for 1 yard (57-I.McGuire; 30-D.Bush).
(2:42) (No Huddle, Shotgun) 5-J.Daniels pass incomplete short left to 17-T.McLaurin.
(2:38) 3-A.Seibert 30 yard field goal is GOOD, Center-69-T.Ott, Holder-10-T.Way.
3-A.Seibert kicks 65 yards from WAS 35 to end zone, Touchback to the CLE 30.
(2:35) (Shotgun) 4-D.Watson pass short middle to 8-E.Moore to CLE 36 for 6 yards (1-N.Igbinoghene).
(2:02) (Shotgun) 34-J.Ford left tackle to 50 for 14 yards (1-N.Igbinoghene).
(1:32) (No Huddle, Shotgun) 34-J.Ford right guard to 50 for no gain (90-J.Jean-Baptiste).
(1:04) (No Huddle, Shotgun) 4-D.Watson pass incomplete short left to 2-A.Cooper.
(1:01) (Shotgun) 4-D.Watson pass incomplete short right to 3-J.Jeudy [92-D.Armstrong]. PENALTY on WAS-92-D.Armstrong, Defensive Offside, 5 yards, enforced at 50 - No Play.
(:58) (Shotgun) 4-D.Watson scrambles left end ran ob at WAS 41 for 4 yards (94-D.Payne).
(:20) (No Huddle) 34-J.Ford up the middle to WAS 39 for 2 yards (95-J.Newton).
END QUARTER 3
(15:00) (Shotgun) 4-D.Watson sacked at WAS 46 for -7 yards (4-F.Luvu).
(14:25) (No Huddle, Shotgun) 4-D.Watson pass short right to 88-J.Akins to WAS 43 for 3 yards (54-B.Wagner).
(13:40) (Shotgun) 4-D.Watson sacked at CLE 49 for -8 yards (6-D.Fowler).
(13:02) 13-C.Bojorquez punts 43 yards to WAS 8, Center-86-B.Whiteheart, downed by CLE-86-B.Whiteheart.
(12:50) (Shotgun) 26-J.McNichols left guard to WAS 11 for 3 yards (59-W.Reid).
(12:14) (No Huddle) 18-M.Mariota pass incomplete short right.
(12:08) (No Huddle, Shotgun) 18-M.Mariota pass incomplete short right to 14-O.Zaccheaus (59-W.Reid).
(12:03) 10-T.Way punts 53 yards to CLE 36, Center-69-T.Ott. 11-J.Proche to CLE 46 for 10 yards (39-J.Reaves).
(11:51) (Shotgun) 34-J.Ford right tackle to WAS 38 for 16 yards (20-Q.Martin). WAS-20-Q.Martin was injured during the play.
(11:21) (Shotgun) 34-J.Ford up the middle to WAS 37 for 1 yard (94-D.Payne).
(10:45) (Shotgun) 4-D.Watson pass short middle to 88-J.Akins to WAS 28 for 9 yards (1-N.Igbinoghene; 92-D.Armstrong).
(10:05) (Shotgun) 34-J.Ford left tackle to WAS 20 for 8 yards (54-B.Wagner). CLE-55-E.Pocic was injured during the play.
(9:45) (Shotgun) 27-D.Foreman left tackle to WAS 19 for 1 yard (94-D.Payne; 95-J.Newton).
(9:21) (No Huddle) 27-D.Foreman up the middle to WAS 15 for 4 yards (52-J.Davis). PENALTY on WAS-95-J.Newton, Defensive Offside, 6 yards, enforced at WAS 19 - No Play.
(9:09) (Shotgun) 4-D.Watson scrambles right end pushed ob at WAS 8 for 5 yards (52-J.Davis).
(8:29) (No Huddle, Shotgun) 27-D.Foreman right tackle to WAS 8 for no gain (52-J.Davis).
(7:45) (Shotgun) PENALTY on CLE-71-J.Wills, False Start, 5 yards, enforced at WAS 8 - No Play.
(7:45) (Shotgun) 4-D.Watson pass short left to 8-E.Moore ran ob at WAS 10 for 3 yards (0-M.Sainristil).
Timeout #2 by CLE at 07:45.
(7:06) (Shotgun) 4-D.Watson pass short middle to 88-J.Akins for 10 yards, TOUCHDOWN.
7-D.Hopkins extra point is GOOD, Center-86-B.Whiteheart, Holder-13-C.Bojorquez.
7-D.Hopkins kicks 65 yards from CLE 35 to end zone, Touchback to the WAS 30.
(7:02) (Shotgun) 26-J.McNichols right tackle to WAS 30 for no gain (59-W.Reid, 40-N.Watson).
(6:19) (Shotgun) 18-M.Mariota right end to WAS 29 for -1 yards (37-Da.Bell).
(5:36) (Shotgun) 26-J.McNichols left guard to CLE 43 for 28 yards (59-W.Reid).
(4:48) (Shotgun) 30-A.Ekeler right tackle to CLE 43 for no gain (99-Z.Smith).
(4:05) (Shotgun) 18-M.Mariota right end to CLE 40 for 3 yards (40-N.Watson).
(3:22) (No Huddle, Shotgun) 18-M.Mariota pass short left to 89-B.Tremayne to CLE 42 for -2 yards (12-R.McLeod).
(2:36) (Punt formation) PENALTY on WAS, Delay of Game, 5 yards, enforced at CLE 42 - No Play.
(2:36) 10-T.Way punts 47 yards to end zone, Center-69-T.Ott, Touchback.
(2:28) (Shotgun) 27-D.Foreman left end to CLE 26 for 6 yards (24-M.Davis; 22-D.Forrest).
(2:00) (Shotgun) 5-J.Winston left guard to CLE 23 for -3 yards (95-J.Newton, 52-J.Davis).
(1:22) (Shotgun) 5-J.Winston pass short left to 27-D.Foreman to CLE 39 for 16 yards (22-D.Forrest).
(:43) (Shotgun) 34-J.Ford left guard to CLE 42 for 3 yards (98-P.Mathis).
END GAME"

cle_was_summary <- "Headline: Jayden Daniels and the Commanders rout the Browns 34-13 to win at home.
Summary: The Commanders put on an offensive clinic while Cleveland was unable to score or stay in it. Daniels, Brian Robinson Jr., Austin Ekeler and Jeremy McNichols ran all over the Browns, combining for 211 yards on 31 carries. Robinson ran for two TDs, and McNichols had one in a game that was lopsided to say the least. The Commanders defense also had a ton to do with that, forcing QB Deshaun Watson to fumble, sacking him seven times, and allowing a total of 212 yards, and not allowing a touchdown until garbage time.
Notable Performances: Daniels was 14 of 25 for 328 yards passing, and added 82 yards rushing. Watson was 15 of 28 for 125 yards and one late TD toss to tight end Jordan Akins. McLaurin made four catches for 125 yards. Ekerler has 107 total yards from scrimmage.
Injuries: Browns cornerback Denzel Ward and long snapper Charley Hughlett were both ruled out early in the second half."

# Append game log and summary to training dataframe 
cle_was <- as.data.frame(cbind(cle_was_log, cle_was_summary)) %>% rename(game_log = cle_was_log, game_summary = cle_was_summary)
training <- rbind(training, cle_was)

kc_sf_log <- "GAME
7-H.Butker kicks 65 yards from KC 35 to end zone, Touchback to the SF 30.
(15:00) (Shotgun) 24-J.Mason left tackle to SF 29 for -1 yards (97-F.Anudike-Uzomah, 35-Ja.Watson).
(14:23) 24-J.Mason right guard to SF 37 for 8 yards (32-N.Bolton). PENALTY on SF-64-J.Brendel, Offensive Holding, 10 yards, enforced at SF 29 - No Play.
(13:56) (Shotgun) 13-B.Purdy scrambles right tackle to SF 21 for 2 yards (56-G.Karlaftis).
(13:16) (Shotgun) 44-K.Juszczyk up the middle to SF 35 for 14 yards (13-N.Johnson; 6-B.Cook).
(12:37) 3-M.Wishnowsky punts 50 yards to KC 15, Center-46-T.Pepper, downed by SF-30-G.Odum.
(12:25) (Shotgun) 15-P.Mahomes pass short left to 29-K.Hunt pushed ob at KC 17 for 2 yards (53-D.Winters).
(11:48) (Shotgun) 29-K.Hunt up the middle to KC 19 for 2 yards (99-M.Collins).
(11:07) (Shotgun) 15-P.Mahomes pass short right to 17-M.Hardman pushed ob at KC 36 for 17 yards (2-D.Lenoir).
(10:38) 29-K.Hunt right guard to KC 38 for 2 yards (6-M.Mustapha, 7-C.Ward).
(10:04) (Shotgun) 29-K.Hunt up the middle to KC 44 for 6 yards (91-S.Okuayinonu).
(9:19) (Shotgun) 15-P.Mahomes pass incomplete deep left to 1-X.Worthy [97-N.Bosa].
(9:14) (Punt formation) Direct snap to 21-J.Hicks. 21-J.Hicks up the middle to KC 45 for 1 yard (92-J.Elliott; 27-J.Brown).
(9:10) 13-B.Purdy pass short right intended for 85-G.Kittle INTERCEPTED by 20-J.Reid at KC 34. 20-J.Reid to KC 42 for 8 yards (1-D.Samuel).
(8:59) 15-P.Mahomes pass deep left to 83-N.Gray to SF 32 for 26 yards (0-R.Green).
(8:19) 15-P.Mahomes pass short right to 1-X.Worthy to SF 26 for 6 yards (59-D.Campbell).
(7:39) (Shotgun) 15-P.Mahomes pass incomplete deep left to 1-X.Worthy.
(7:35) (Shotgun) 15-P.Mahomes scrambles right tackle to SF 19 for 7 yards (54-F.Warner).
(6:56) (Shotgun) 15-P.Mahomes sacked at SF 24 for -5 yards (sack split by 97-N.Bosa and 56-L.Floyd).
(6:15) (Shotgun) 15-P.Mahomes pass short right intended for 89-J.Fortson INTERCEPTED by 93-K.Davis at SF 30. 93-K.Davis to SF 32 for 2 yards (74-J.Taylor).
(6:11) (Shotgun) 13-B.Purdy pass short right to 11-B.Aiyuk to SF 40 for 8 yards (23-D.Tranquill).
(5:35) 24-J.Mason left guard to SF 41 for 1 yard (91-D.Nnadi, 32-N.Bolton).
(5:00) 24-J.Mason left guard to SF 41 for no gain (54-L.Chenal, 56-G.Karlaftis).
(4:18) 3-M.Wishnowsky punts 51 yards to KC 8, Center-46-T.Pepper, fair catch by 17-M.Hardman.
(4:10) 29-K.Hunt right guard to KC 13 for 5 yards (2-D.Lenoir).
(3:37) 29-K.Hunt left end to KC 15 for 2 yards (6-M.Mustapha).
(2:52) (Shotgun) 15-P.Mahomes sacked at KC 11 for -4 yards (sack split by 99-M.Collins and 56-L.Floyd).
(2:13) 14-M.Araiza punts 48 yards to SF 41, Center-41-J.Winchester, fair catch by 19-J.Cowing.
(2:05) (Shotgun) 13-B.Purdy pass incomplete short right to 85-G.Kittle. PENALTY on KC-20-J.Reid, Defensive Pass Interference, 18 yards, enforced at SF 41 - No Play.
(2:00) 13-B.Purdy pass incomplete short left to 11-B.Aiyuk (32-N.Bolton).
(1:55) (Shotgun) 24-J.Mason up the middle to KC 37 for 4 yards (94-M.Herring, 20-J.Reid).
(1:15) (Shotgun) 13-B.Purdy pass incomplete short right to 11-B.Aiyuk.
(1:11) 41-A.Carlson 55 yard field goal is GOOD, Center-46-T.Pepper, Holder-3-M.Wishnowsky.
41-A.Carlson kicks 65 yards from SF 35 to end zone, Touchback to the KC 30.
(1:06) 15-P.Mahomes pass short right to 83-N.Gray to KC 41 for 11 yards (53-D.Winters).
(:35) (Shotgun) 15-P.Mahomes pass deep middle to 83-N.Gray to SF 39 for 20 yards (27-J.Brown).
END QUARTER 1
(15:00) 17-M.Hardman right end to SF 19 for 20 yards (6-M.Mustapha, 27-J.Brown).
(14:21) 29-K.Hunt right guard to SF 19 for no gain (91-S.Okuayinonu).
(13:45) (Shotgun) 15-P.Mahomes pass short right to 29-K.Hunt to SF 22 for -3 yards (53-D.Winters). PENALTY on SF-91-S.Okuayinonu, Defensive Offside, 6 yards, enforced at SF 19 - No Play.
(13:22) (Shotgun) 15-P.Mahomes pass short middle to 1-X.Worthy pushed ob at SF 8 for 5 yards (6-M.Mustapha).
(12:46) 29-K.Hunt left tackle to SF 5 for 3 yards (97-N.Bosa; 54-F.Warner). PENALTY on SF-90-K.Givens, Defensive Offside, 4 yards, enforced at SF 8 - No Play.
(12:29) (Shotgun) 29-K.Hunt right tackle to SF 1 for 3 yards (54-F.Warner, 6-M.Mustapha).
(11:52) PENALTY on SF, Defensive Too Many Men on Field, 0 yards, enforced at SF 1 - No Play.
(11:28) (Shotgun) 29-K.Hunt right guard for 1 yard, TOUCHDOWN.
7-H.Butker extra point is GOOD, Center-41-J.Winchester, Holder-14-M.Araiza.
7-H.Butker kicks 65 yards from KC 35 to end zone, Touchback to the SF 30.
(11:24) 13-B.Purdy pass short left to 85-G.Kittle pushed ob at SF 38 for 8 yards (35-Ja.Watson).
(10:46) (Shotgun) 13-B.Purdy pass incomplete short right to 44-K.Juszczyk.
(10:42) (Shotgun) 13-B.Purdy pass incomplete deep right to 11-B.Aiyuk.
(10:36) 3-M.Wishnowsky punts 47 yards to KC 15, Center-46-T.Pepper. 17-M.Hardman to SF 30 for 55 yards (30-G.Odum).
(10:21) (Shotgun) 15-P.Mahomes pass short left to 87-T.Kelce to SF 25 for 5 yards (59-D.Campbell).
(9:46) (Shotgun) 15-P.Mahomes pass incomplete short left.
(9:42) (Shotgun) 15-P.Mahomes pass short middle to 1-X.Worthy to SF 17 for 8 yards (2-D.Lenoir).
(9:00) (Shotgun) 1-X.Worthy left end to SF 12 for 5 yards (6-M.Mustapha).
(8:22) 29-K.Hunt up the middle to SF 9 for 3 yards (59-D.Campbell, 56-L.Floyd).
(7:35) (Shotgun) 15-P.Mahomes pass short right to 29-K.Hunt to SF 6 for 3 yards (97-N.Bosa).
Timeout #1 by KC at 07:35.
(6:53) (Shotgun) 29-K.Hunt right guard for 6 yards, TOUCHDOWN.
7-H.Butker extra point is GOOD, Center-41-J.Winchester, Holder-14-M.Araiza.
7-H.Butker kicks 65 yards from KC 35 to end zone, Touchback to the SF 30.
(6:45) 24-J.Mason left tackle to SF 38 for 8 yards (20-J.Reid). PENALTY on SF-71-T.Williams, Offensive Holding, 10 yards, enforced at SF 30 - No Play.
(6:18) (Shotgun) 13-B.Purdy pass deep middle to 85-G.Kittle to SF 42 for 22 yards (27-C.Conner).
(5:37) 31-I.Guerendo left end to SF 44 for 2 yards (32-N.Bolton).
(4:57) (Shotgun) 13-B.Purdy sacked at SF 41 for -3 yards (56-G.Karlaftis).
(4:11) (Shotgun) 13-B.Purdy pass incomplete deep middle to 11-B.Aiyuk [22-T.McDuffie].
(4:08) 3-M.Wishnowsky punts 45 yards to KC 14, Center-46-T.Pepper, fair catch by 17-M.Hardman.
(4:00) (Shotgun) 29-K.Hunt up the middle to KC 20 for 6 yards (54-F.Warner; 6-M.Mustapha).
(3:26) (Shotgun) 15-P.Mahomes pass short middle to 87-T.Kelce to KC 25 for 5 yards (99-M.Collins).
(2:41) (Shotgun) 15-P.Mahomes pass incomplete short right to 1-X.Worthy.
(2:38) (Shotgun) 42-C.Steele up the middle to KC 27 for 2 yards (7-C.Ward, 54-F.Warner).
(2:00) (Shotgun) 15-P.Mahomes pass incomplete short right [97-N.Bosa].
(1:55) 14-M.Araiza punts 64 yards to SF 9, Center-41-J.Winchester. 19-J.Cowing to SF 22 for 13 yards (21-J.Hicks). PENALTY on SF-30-G.Odum, Offensive Holding, 10 yards, enforced at SF 20.
(1:39) (Shotgun) 13-B.Purdy pass incomplete short left to 11-B.Aiyuk. PENALTY on KC-22-T.McDuffie, Defensive Pass Interference, 10 yards, enforced at SF 10 - No Play.
(1:36) (Shotgun) 13-B.Purdy pass incomplete deep middle to 14-R.Pearsall [97-F.Anudike-Uzomah].
(1:32) (Shotgun) 13-B.Purdy pass short middle to 14-R.Pearsall to SF 26 for 6 yards (6-B.Cook).
(1:24) (Shotgun) 13-B.Purdy pass deep left to 85-G.Kittle to KC 33 for 41 yards (20-J.Reid).
Timeout #2 by KC at 01:24.
(:55) (No Huddle, Shotgun) 13-B.Purdy pass short left to 24-J.Mason to KC 29 for 4 yards (20-J.Reid).
(:48) (Shotgun) 13-B.Purdy pass short middle to 11-B.Aiyuk to KC 14 for 15 yards (27-C.Conner; 22-T.McDuffie). SF-11-B.Aiyuk was injured during the play.
Timeout #1 by SF at 00:48.
(:37) 13-B.Purdy pass short right to 19-J.Cowing to KC 5 for 9 yards (32-N.Bolton).
Timeout #2 by SF at 00:37.
(:30) (Shotgun) 13-B.Purdy pass incomplete short middle to 19-J.Cowing.
Timeout #3 by SF at 00:30.
(:27) (Shotgun) 24-J.Mason up the middle to KC 6 for -1 yards (22-T.McDuffie).
(:04) 41-A.Carlson 24 yard field goal is GOOD, Center-46-T.Pepper, Holder-3-M.Wishnowsky.
END QUARTER 2
41-A.Carlson kicks 64 yards from SF 35 to KC 1. 24-S.Moore to KC 29 for 28 yards (45-D.Flannigan-Fowles; 38-J.Mahoney).
(14:54) (Shotgun) 15-P.Mahomes pass incomplete deep middle to 1-X.Worthy.
(14:47) (Shotgun) 29-K.Hunt left guard to KC 31 for 2 yards (2-D.Lenoir, 6-M.Mustapha).
(14:07) (Shotgun) 15-P.Mahomes pass deep right intended for 1-X.Worthy INTERCEPTED by 2-D.Lenoir at SF 44. 2-D.Lenoir pushed ob at KC 23 for 33 yards (64-W.Morris).
(13:55) 24-J.Mason left guard to KC 23 for no gain (54-L.Chenal).
(13:12) (Shotgun) 13-B.Purdy pass incomplete short left to 44-K.Juszczyk [94-M.Herring].
(13:08) (Shotgun) 13-B.Purdy scrambles left guard to KC 14 for 9 yards (20-J.Reid).
(12:24) 13-B.Purdy up the middle to KC 13 for 1 yard (69-M.Pennel).
(11:47) 13-B.Purdy pass short right to 85-G.Kittle pushed ob at KC 4 for 9 yards (20-J.Reid).
(11:12) 24-J.Mason left guard to KC 1 for 3 yards (69-M.Pennel; 23-D.Tranquill).
(10:32) 13-B.Purdy up the middle for 1 yard, TOUCHDOWN.
41-A.Carlson extra point is No Good, Hit Left Upright, Center-46-T.Pepper, Holder-3-M.Wishnowsky.
41-A.Carlson kicks 63 yards from SF 35 to KC 2. 42-C.Steele to KC 33 for 31 yards (51-R.Beal).
(10:23) 15-P.Mahomes pass short right to 87-T.Kelce to KC 33 for no gain (2-D.Lenoir).
(9:46) (Shotgun) 15-P.Mahomes pass incomplete short middle to 24-S.Moore.
(9:43) (Shotgun) 15-P.Mahomes pass incomplete deep right to 87-T.Kelce (7-C.Ward) [99-M.Collins].
(9:37) 14-M.Araiza punts 67 yards to end zone, Center-41-J.Winchester, Touchback.
(9:28) 13-B.Purdy scrambles right end to SF 23 for 3 yards (23-D.Tranquill). KC-35-Ja.Watson was injured during the play.
(8:55) 24-J.Mason up the middle to SF 49 for 26 yards (32-N.Bolton).
(8:09) 13-B.Purdy scrambles left end ran ob at KC 46 for 5 yards (20-J.Reid).
(7:27) 24-J.Mason up the middle to KC 38 for 8 yards (27-C.Conner).
(6:45) 24-J.Mason right guard to KC 34 for 4 yards (95-C.Jones).
(6:07) 13-B.Purdy pass incomplete deep right to 18-C.Conley (22-T.McDuffie).
(6:02) (Shotgun) 13-B.Purdy pass short left intended for 10-R.Bell INTERCEPTED by 30-C.Roland-Wallace at KC 21. 30-C.Roland-Wallace ran ob at KC 21 for no gain.
(5:56) 29-K.Hunt up the middle to KC 25 for 4 yards (54-F.Warner).
(5:26) (Shotgun) 29-K.Hunt left guard to KC 38 for 13 yards (6-M.Mustapha; 0-R.Green).
(4:51) (Shotgun) 15-P.Mahomes pass short right to 84-Ju.Watson to KC 46 for 8 yards (7-C.Ward).
(4:16) (Shotgun) 29-K.Hunt right guard to KC 49 for 3 yards (92-J.Elliott).
(3:46) 42-C.Steele left tackle to KC 49 for no gain (92-J.Elliott).
(3:07) (Shotgun) 42-C.Steele left guard to SF 47 for 4 yards (90-K.Givens; 53-D.Winters).
(2:26) (Shotgun) 15-P.Mahomes pass short right to 87-T.Kelce to SF 40 for 7 yards (2-D.Lenoir).
(1:44) 29-K.Hunt right guard to SF 37 for 3 yards (53-D.Winters; 91-S.Okuayinonu).
(1:06) (Shotgun) 15-P.Mahomes scrambles left end ran ob at SF 4 for 33 yards (6-M.Mustapha).
(:25) (Shotgun) 29-K.Hunt up the middle to SF 1 for 3 yards (27-J.Brown; 56-L.Floyd).
END QUARTER 3
(15:00) 29-K.Hunt up the middle to SF 1 for no gain (2-D.Lenoir; 7-C.Ward).
(14:20) 15-P.Mahomes pass incomplete short right to 17-M.Hardman.
(14:17) (Shotgun) 15-P.Mahomes scrambles up the middle for 1 yard, TOUCHDOWN. Penalty on SF-27-J.Brown, Defensive Holding, declined.
7-H.Butker extra point is GOOD, Center-41-J.Winchester, Holder-14-M.Araiza.
7-H.Butker kicks 65 yards from KC 35 to end zone, Touchback to the SF 30. ** Injury Update: KC-35-Ja.Watson has returned to the game.
(14:13) (Shotgun) 24-J.Mason left end to SF 37 for 7 yards (35-Ja.Watson). KC-35-Ja.Watson was injured during the play.
(13:41) 13-B.Purdy pass short left to 31-I.Guerendo to SF 42 for 5 yards (54-L.Chenal). FUMBLES (54-L.Chenal), ball out of bounds at SF 49.
(13:01) 13-B.Purdy pass incomplete deep left to 44-K.Juszczyk (54-L.Chenal).
(12:55) (Shotgun) 13-B.Purdy pass incomplete short right to 14-R.Pearsall.
(12:49) (Shotgun) 13-B.Purdy pass short middle to 85-G.Kittle to KC 49 for 9 yards (30-C.Roland-Wallace) [23-D.Tranquill]. PENALTY on KC-13-N.Johnson, Defensive Holding, 5 yards, enforced at SF 42 - No Play.
(12:32) (Shotgun) 24-J.Mason left end to SF 49 for 2 yards (94-M.Herring; 20-J.Reid).
(11:52) (Shotgun) 13-B.Purdy pass deep right to 19-J.Cowing to KC 10 for 41 yards (13-N.Johnson).
(11:03) 24-J.Mason left tackle to KC 3 for 7 yards (13-N.Johnson; 20-J.Reid).
(10:18) 24-J.Mason right guard to KC 5 for -2 yards (32-N.Bolton).
(9:34) (Shotgun) 13-B.Purdy pass short middle intended for 18-C.Conley INTERCEPTED by 21-J.Hicks [56-G.Karlaftis] at KC -2. Touchback.
(9:29) 29-K.Hunt right end to KC 26 for 6 yards (93-K.Davis).
(8:50) (Shotgun) 29-K.Hunt right tackle to KC 32 for 6 yards (7-C.Ward, 6-M.Mustapha).
(8:11) 42-C.Steele up the middle to KC 39 for 7 yards (7-C.Ward).
(7:32) (Shotgun) 42-C.Steele right guard to KC 41 for 2 yards (97-N.Bosa).
(6:54) 42-C.Steele up the middle to KC 43 for 2 yards (54-F.Warner).
(6:17) 29-K.Hunt right tackle to KC 46 for 3 yards (59-D.Campbell, 99-M.Collins).
(5:33) (Shotgun) 29-K.Hunt up the middle to KC 45 for -1 yards (56-L.Floyd).
(4:52) (Shotgun) 15-P.Mahomes pass short right to 83-N.Gray to SF 46 for 9 yards (54-F.Warner) [90-K.Givens].
(4:09) (Shotgun) 34-S.Perine right guard to SF 43 for 3 yards (54-F.Warner).
(4:04) 34-S.Perine left guard to SF 40 for 3 yards (92-J.Elliott).
Timeout #1 by SF at 04:04.
(3:59) 15-P.Mahomes pass short right to 34-S.Perine to SF 18 for 22 yards (2-D.Lenoir; 6-M.Mustapha).
Timeout #2 by SF at 03:59.
(3:16) 17-M.Hardman left end for 18 yards, TOUCHDOWN. Penalty on KC-24-S.Moore, Unnecessary Roughness, offsetting. Penalty on SF-2-D.Lenoir, Unnecessary Roughness, offsetting.
7-H.Butker extra point is GOOD, Center-41-J.Winchester, Holder-14-M.Araiza.
7-H.Butker kicks 65 yards from KC 35 to SF 0. 31-I.Guerendo to SF 35 for 35 yards (54-L.Chenal).
(3:03) (Shotgun) 13-B.Purdy pass short left to 14-R.Pearsall to SF 41 for 6 yards (97-F.Anudike-Uzomah). Penalty on KC-30-C.Roland-Wallace, Face Mask, offsetting, enforced at SF 35 - No Play. Penalty on SF-71-T.Williams, Disqualification, offsetting.
(2:59) (Shotgun) 13-B.Purdy pass short middle to 85-G.Kittle to 50 for 15 yards (6-B.Cook).
(2:42) (No Huddle, Shotgun) 13-B.Purdy pass short right to 14-R.Pearsall to KC 41 for 9 yards (30-C.Roland-Wallace).
(2:21) (No Huddle, Shotgun) 13-B.Purdy pass short right to 85-G.Kittle to KC 44 for -3 yards (54-L.Chenal) [30-C.Roland-Wallace].
(2:00) (Shotgun) 13-B.Purdy scrambles right end ran ob at KC 39 for 5 yards (20-J.Reid). PENALTY on KC-2-J.Williams, Face Mask, 15 yards, enforced at KC 39.
(1:53) (Shotgun) 13-B.Purdy pass short right to 24-J.Mason to KC 17 for 7 yards (32-N.Bolton).
(1:32) (No Huddle, Shotgun) 13-B.Purdy pass short left to 14-R.Pearsall pushed ob at KC 11 for 6 yards (30-C.Roland-Wallace).
(1:28) (Shotgun) 13-B.Purdy pass short middle to 10-R.Bell for 11 yards, TOUCHDOWN. The Replay Official reviewed the runner broke the plane ruling, and the play was REVERSED. (Shotgun) 13-B.Purdy pass short middle to 10-R.Bell to KC 1 for 10 yards (6-B.Cook).
(1:14) 13-B.Purdy up the middle for 1 yard, TOUCHDOWN.
TWO-POINT CONVERSION ATTEMPT. 13-B.Purdy pass to 14-R.Pearsall is incomplete. ATTEMPT FAILS.
3-M.Wishnowsky kicks onside 4 yards from SF 35 to SF 39, ball declared dead.
(1:08) 15-P.Mahomes kneels to SF 40 for -1 yards.
(:33) 15-P.Mahomes kneels to SF 41 for -1 yards.
END GAME"

kc_sf_summary <- "Headline: Patrick Mahomes and Chiefs stay beat 49ers 28-18 in Super Bowl rematch.
Summary: The defenses shined in the game but the Chiefs were able to best the 49ers once again. Patrick Mahomes overcame two interceptions to deliver a few big plays with his feet and beat the 49ers 28-18 Sunday in a Super Bowl rematch. The Chiefs ran for 184 yards and got four TDs on the ground. The defense did the rest with three interceptions against Brock Purdy and the 49ers. In the third quarter, with a change to erase a 14-12 deficit, Purdy threw an off-target pass to receiver Ronnie Bell, leading to an interception. The Chiefs then turned that into a touchdown thanks to Mahomes' legs.
Notable Performances: Mahomes finished 16 for 27 for 154 yards, Purdy went 17 for 31 for 212 yards with two TD runs and three interceptions. 
Injuries: Chiefs: CB Jaylen Watson left in the second half with an injury. WR JuJu Smith-Schuster left in the first half. 49ers: Brandon Aiyuk left the game with an injury in the first half. "

# Append game log and summary to training dataframe 
kc_sf <- as.data.frame(cbind(kc_sf_log, kc_sf_summary)) %>% rename(game_log = kc_sf_log, game_summary = kc_sf_summary)
training <- rbind(training, kc_sf)

atl_tb_log <- "GAME
13-B.Pinion kicks 65 yards from ATL 35 to end zone, Touchback to the TB 30.
(15:00) 1-R.White right guard to TB 38 for 8 yards (90-D.Onyemata).
(14:23) 1-R.White up the middle to TB 43 for 5 yards (50-J.Smith-Williams, 3-J.Bates). FUMBLES (3-J.Bates), RECOVERED by ATL-3-J.Bates at TB 43. The Replay Official reviewed the fumble ruling, and the play was Upheld. The ruling on the field stands.
(14:11) (Shotgun) 7-B.Robinson left tackle to TB 42 for 1 yard (94-C.Kancey).
(13:38) (No Huddle, Shotgun) 18-K.Cousins pass short left to 5-D.London to TB 36 for 6 yards (24-T.Funderburk; 54-L.David).
(13:02) (Shotgun) 18-K.Cousins pass incomplete short right to 5-D.London.
(12:59) (Shotgun) 18-K.Cousins pass deep right to 8-K.Pitts for 36 yards, TOUCHDOWN. Penalty on TB-26-K.Merriweather, Defensive Holding, declined.
6-Y.Koo extra point is GOOD, Center-49-L.McCullough, Holder-13-B.Pinion.
13-B.Pinion kicks 65 yards from ATL 35 to end zone, Touchback to the TB 30.
(12:52) (Shotgun) 6-B.Mayfield pass short right to 7-B.Irving to TB 38 for 8 yards (53-N.Landman, 3-J.Bates).
(12:15) 7-B.Irving right end to TB 40 for 2 yards (15-M.Judon; 55-K.Elliss).
(11:32) (Shotgun) 1-R.White right guard to TB 45 for 5 yards (97-G.Jarrett; 55-K.Elliss).
(10:50) 6-B.Mayfield pass short right to 7-B.Irving to TB 42 for -3 yards (91-D.Harris).
(10:08) (Shotgun) 6-B.Mayfield pass short right to 88-C.Otton to TB 49 for 7 yards (3-J.Bates).
(9:47) (No Huddle) 6-B.Mayfield up the middle to 50 for 1 yard (53-N.Landman). FUMBLES (53-N.Landman), and recovers at ATL 49.
(9:08) (Shotgun) 7-B.Irving right tackle to ATL 34 for 15 yards (53-N.Landman).
(8:26) 7-B.Irving right tackle to ATL 32 for 2 yards (95-T.Graham, 96-Z.Harrison).
(7:45) (Shotgun) 6-B.Mayfield pass short middle to 17-S.Shepard to ATL 28 for 4 yards (17-A.Ebiketie).
(7:07) (Shotgun) 1-R.White left guard to ATL 23 for 5 yards (24-A.Terrell; 27-R.Grant).
(6:33) (Shotgun) 7-B.Irving left end to ATL 15 for 8 yards (15-M.Judon).
(5:53) 7-B.Irving right guard to ATL 7 for 8 yards (21-M.Hughes).
(5:10) (Shotgun) 1-R.White right guard to ATL 5 for 2 yards (97-G.Jarrett; 99-E.Goldman).
(4:30) 6-B.Mayfield pass incomplete short right to 88-C.Otton.
(4:25) (Shotgun) 6-B.Mayfield pass short middle to 88-C.Otton for 5 yards, TOUCHDOWN.
4-C.McLaughlin extra point is GOOD, Center-45-Z.Triner, Holder-16-T.Gill.
16-T.Gill kicks 65 yards from TB 35 to end zone, Touchback to the ATL 30.
(4:22) (Shotgun) 18-K.Cousins pass deep middle to 1-D.Mooney to TB 42 for 28 yards (54-L.David; 24-T.Funderburk).
(3:35) (Shotgun) 25-T.Allgeier right end to TB 40 for 2 yards (54-L.David, 27-Z.McCollum).
(2:56) (Shotgun) 18-K.Cousins pass incomplete short middle to 1-D.Mooney [94-C.Kancey].
(2:51) (Shotgun) 18-K.Cousins pass incomplete short right.
(2:48) 13-B.Pinion punts 37 yards to TB 3, Center-49-L.McCullough, downed by ATL-35-N.Brooks.
(2:37) 44-S.Tucker right guard to TB 3 for no gain (3-J.Bates).
(2:02) (Shotgun) 6-B.Mayfield pass short right to 88-C.Otton to TB 14 for 11 yards (55-K.Elliss, 50-J.Smith-Williams).
(1:25) 6-B.Mayfield pass short left to 44-S.Tucker to TB 26 for 12 yards (24-A.Terrell).
(:46) 44-S.Tucker right guard to TB 29 for 3 yards (24-A.Terrell).
(:08) (Shotgun) PENALTY on TB-78-T.Wirfs, False Start, 5 yards, enforced at TB 29 - No Play.
END QUARTER 1
(15:00) (Shotgun) 6-B.Mayfield pass short right to 10-T.Palmer to TB 28 for 4 yards (22-C.Phillips).
(14:24) (Shotgun) 6-B.Mayfield pass short left to 88-C.Otton to ATL 43 for 29 yards (55-K.Elliss).
(13:40) (Shotgun) 6-B.Mayfield pass short right to 7-B.Irving pushed ob at ATL 36 for 7 yards (22-C.Phillips).
(13:07) 7-B.Irving left guard to ATL 31 for 5 yards (40-J.Bertrand; 20-D.Alford).
(12:31) 7-B.Irving left guard to ATL 30 for 1 yard (20-D.Alford).
(11:51) (Shotgun) 6-B.Mayfield pass short middle to 88-C.Otton to ATL 27 for 3 yards (50-J.Smith-Williams).
(11:13) (Shotgun) 6-B.Mayfield pass short right to 88-C.Otton pushed ob at ATL 18 for 9 yards (22-C.Phillips).
(10:35) (Shotgun) 6-B.Mayfield pass short left to 1-R.White for 18 yards, TOUCHDOWN. PENALTY on ATL-3-J.Bates, Taunting, 8 yards, enforced between downs.
4-C.McLaughlin extra point is GOOD, Center-45-Z.Triner, Holder-16-T.Gill.
16-T.Gill kicks 65 yards from TB 35 to end zone, Touchback to the ATL 30.
(10:28) (Shotgun) 7-B.Robinson right end to ATL 37 for 7 yards (27-Z.McCollum; 52-K.Britt).
(9:53) (Shotgun) 7-B.Robinson right end to ATL 39 for 2 yards (29-C.Izien; 52-K.Britt).
(9:24) (No Huddle, Shotgun) 7-B.Robinson right guard to ATL 41 for 2 yards (3-J.Whitehead; 98-A.Nelson).
(8:43) (Shotgun) 18-K.Cousins pass short left to 34-R.McCloud pushed ob at ATL 47 for 6 yards (29-C.Izien).
(8:02) (Shotgun) 25-T.Allgeier up the middle to TB 49 for 4 yards (3-J.Whitehead; 90-L.Hall).
(7:34) (No Huddle) 18-K.Cousins pass incomplete deep middle to 1-D.Mooney (24-T.Funderburk).
(7:27) (Shotgun) 18-K.Cousins pass short middle to 8-K.Pitts for 49 yards, TOUCHDOWN. The Replay Official reviewed the runner broke the plane ruling, and the play was Upheld. The ruling on the field stands.
6-Y.Koo extra point is GOOD, Center-49-L.McCullough, Holder-13-B.Pinion.
13-B.Pinion kicks 65 yards from ATL 35 to end zone, Touchback to the TB 30.
(7:19) 6-B.Mayfield pass short right to 15-J.McMillan pushed ob at TB 37 for 7 yards (22-C.Phillips). PENALTY on TB-87-P.Durham, Unnecessary Roughness, 15 yards, enforced at TB 30 - No Play.
(7:00) (Shotgun) 6-B.Mayfield pass short left to 88-C.Otton to TB 24 for 9 yards (55-K.Elliss).
(6:21) (Shotgun) 6-B.Mayfield pass short middle to 17-S.Shepard to TB 33 for 9 yards (53-N.Landman).
(5:40) (Shotgun) 6-B.Mayfield pass incomplete deep middle to 15-J.McMillan.
(5:36) 16-T.Gill punts 42 yards to ATL 25, Center-45-Z.Triner. 26-A.Williams to ATL 39 for 14 yards (98-A.Nelson).
(5:28) (Shotgun) 18-K.Cousins pass short right to 5-D.London to TB 48 for 13 yards (52-K.Britt; 31-A.Winfield).
(4:55) (No Huddle, Shotgun) 18-K.Cousins pass short left to 7-B.Robinson to TB 42 for 6 yards (31-A.Winfield; 54-L.David).
(4:11) (Shotgun) 7-B.Robinson right tackle to TB 34 for 8 yards (3-J.Whitehead; 31-A.Winfield).
(3:35) (Shotgun) 18-K.Cousins sacked at TB 36 for -2 yards (95-C.Brewer).
(2:53) (Shotgun) 18-K.Cousins pass short middle to 7-B.Robinson to TB 30 for 6 yards (52-K.Britt).
(2:14) (Shotgun) 18-K.Cousins pass deep middle to 1-D.Mooney for 30 yards, TOUCHDOWN.
6-Y.Koo extra point is GOOD, Center-49-L.McCullough, Holder-13-B.Pinion.
13-B.Pinion kicks 65 yards from ATL 35 to end zone, Touchback to the TB 30.
(2:09) (Shotgun) 6-B.Mayfield pass incomplete short left to 17-S.Shepard (90-D.Onyemata).
(2:05) 1-R.White right end to TB 34 for 4 yards (40-J.Bertrand, 97-G.Jarrett).
(2:00) (Shotgun) 6-B.Mayfield pass deep right to 10-T.Palmer to ATL 41 for 25 yards (27-R.Grant). ATL-55-K.Elliss was injured during the play.
(1:47) (Shotgun) 6-B.Mayfield pass incomplete deep right to 15-J.McMillan.
Timeout #1 by ATL at 01:47.
(1:41) (Shotgun) 6-B.Mayfield pass short right to 1-R.White to ATL 39 for 2 yards (3-J.Bates).
(1:17) (No Huddle, Shotgun) 6-B.Mayfield pass short left to 1-R.White to ATL 34 for 5 yards (20-D.Alford, 53-N.Landman).
(1:09) 4-C.McLaughlin 52 yard field goal is GOOD, Center-45-Z.Triner, Holder-16-T.Gill.
Timeout #2 by ATL at 01:09.
Timeout #1 by TB at 01:09.
16-T.Gill kicks 67 yards from TB 35 to ATL -2. 34-R.McCloud to ATL 30 for 32 yards (37-T.Thomas, 26-K.Merriweather).
(:58) (Shotgun) 18-K.Cousins pass short left to 5-D.London pushed ob at ATL 37 for 7 yards (29-C.Izien).
(:53) (No Huddle, Shotgun) 18-K.Cousins pass incomplete short right to 8-K.Pitts.
(:49) (Shotgun) 18-K.Cousins pass short left to 8-K.Pitts to ATL 41 for 4 yards (52-K.Britt) [0-Y.Diaby].
(:31) (No Huddle, Shotgun) 18-K.Cousins pass short left to 7-B.Robinson ran ob at TB 49 for 10 yards (31-A.Winfield).
(:24) (Shotgun) 18-K.Cousins pass deep left to 1-D.Mooney pushed ob at TB 28 for 21 yards (31-A.Winfield).
Timeout #2 by TB at 00:24.
(:19) (No Huddle, Shotgun) 18-K.Cousins pass short right to 8-K.Pitts to TB 26 for 2 yards (29-C.Izien).
(:13) (Shotgun) 18-K.Cousins pass incomplete deep right to 5-D.London.
Timeout #3 by ATL at 00:13.
(:09) (Shotgun) 18-K.Cousins pass incomplete deep right to 1-D.Mooney [43-C.Braswell]. PENALTY on TB-29-C.Izien, Illegal Contact, 5 yards, enforced at TB 26 - No Play.
(:05) 6-Y.Koo 39 yard field goal is GOOD, Center-49-L.McCullough, Holder-13-B.Pinion.
13-B.Pinion kicks 65 yards from ATL 35 to end zone, Touchback to the TB 30.
(:01) 6-B.Mayfield kneels to TB 29 for -1 yards. ** Injury Update: ATL-55-K.Elliss has returned to the game.
END QUARTER 2
16-T.Gill kicks 66 yards from TB 35 to ATL -1. 34-R.McCloud to ATL 28 for 29 yards (26-K.Merriweather; 37-T.Thomas).
(14:55) (Shotgun) 7-B.Robinson left end pushed ob at ATL 43 for 15 yards (54-L.David). PENALTY on ATL-1-D.Mooney, Offensive Holding, 10 yards, enforced at ATL 31.
(14:34) (Shotgun) 18-K.Cousins pass short left to 7-B.Robinson to ATL 19 for -2 yards (54-L.David).
(13:52) (Shotgun) 18-K.Cousins pass short right to 34-R.McCloud to ATL 17 for -2 yards (29-C.Izien).
(13:15) (Shotgun) 7-B.Robinson up the middle to ATL 30 for 13 yards (31-A.Winfield).
(12:34) 13-B.Pinion punts 45 yards to TB 25, Center-49-L.McCullough. 10-T.Palmer to TB 39 for 14 yards (25-T.Allgeier).
(12:22) 7-B.Irving right tackle to TB 40 for 1 yard (50-J.Smith-Williams; 21-M.Hughes).
(11:38) (Shotgun) 6-B.Mayfield scrambles up the middle to TB 41 for 1 yard (55-K.Elliss). PENALTY on TB-62-G.Barton, Offensive Holding, 10 yards, enforced at TB 40 - No Play.
(11:13) (Shotgun) 6-B.Mayfield pass short right to 1-R.White to TB 37 for 7 yards (55-K.Elliss; 15-M.Judon).
(10:29) (Shotgun) 6-B.Mayfield pass short left to 15-J.McMillan to 50 for 13 yards (98-R.Orhorhoro, 20-D.Alford). ATL-98-R.Orhorhoro was injured during the play. ** Injury Update: TB-17-S.Shepard has returned to the game.
(10:04) 6-B.Mayfield pass short right to 7-B.Irving pushed ob at ATL 37 for 13 yards (53-N.Landman).
(9:18) 6-B.Mayfield pass deep right intended for 81-R.Miller INTERCEPTED by 3-J.Bates at ATL 8. 3-J.Bates to ATL 8 for no gain (81-R.Miller).
(9:11) 25-T.Allgeier left end to ATL 13 for 5 yards (98-A.Nelson, 29-C.Izien).
(8:31) 25-T.Allgeier right tackle to ATL 19 for 6 yards (52-K.Britt).
(7:54) 25-T.Allgeier right end pushed ob at ATL 22 for 3 yards (54-L.David).
(7:16) (Shotgun) 25-T.Allgeier right tackle to ATL 28 for 6 yards (94-C.Kancey).
(6:52) (No Huddle) 25-T.Allgeier up the middle to ATL 37 for 9 yards (31-A.Winfield; 27-Z.McCollum).
(6:22) (No Huddle) 18-K.Cousins sacked at ATL 28 for -9 yards (95-C.Brewer).
(5:38) (Shotgun) 18-K.Cousins pass short left to 7-B.Robinson to ATL 35 for 7 yards (32-J.Hayes; 0-Y.Diaby). TB-54-L.David was injured during the play. ATL-63-C.Lindstrom was injured during the play.
(5:12) (Shotgun) 18-K.Cousins pass short right to 34-R.McCloud to ATL 40 for 5 yards (94-C.Kancey).
(4:41) 13-B.Pinion punts 46 yards to TB 14, Center-49-L.McCullough. 10-T.Palmer pushed ob at TB 31 for 17 yards (25-T.Allgeier).
(4:30) (Shotgun) 6-B.Mayfield pass short right to 17-S.Shepard pushed ob at TB 36 for 5 yards (21-M.Hughes).
(3:55) (Shotgun) 7-B.Irving right tackle to TB 38 for 2 yards (55-K.Elliss; 96-Z.Harrison).
(3:13) (Shotgun) 6-B.Mayfield pass incomplete deep right to 1-R.White (15-M.Judon).
(3:08) (Punt formation) 37-T.Thomas left end to TB 36 for -2 yards (12-K.Hodge).
(3:05) (Shotgun) 7-B.Robinson left guard for 36 yards, TOUCHDOWN NULLIFIED by Penalty. PENALTY on ATL-34-R.McCloud, Offensive Holding, 10 yards, enforced at TB 36 - No Play.
(2:57) (Shotgun) 7-B.Robinson right guard to TB 41 for 5 yards (0-Y.Diaby; 52-K.Britt).
(2:34) (No Huddle, Shotgun) 18-K.Cousins pass short left to 7-B.Robinson to TB 31 for 10 yards (32-J.Hayes; 51-J.Russell).
(2:05) (No Huddle, Shotgun) 18-K.Cousins pass short left to 1-D.Mooney ran ob at TB 24 for 7 yards (29-C.Izien).
(1:30) (Shotgun) 34-R.McCloud right end to TB 7 for 17 yards (3-J.Whitehead).
(:59) (No Huddle, Shotgun) 25-T.Allgeier right tackle to TB 6 for 1 yard (50-V.Vea).
(:20) (Shotgun) 18-K.Cousins pass short left to 7-B.Robinson for 6 yards, TOUCHDOWN.
6-Y.Koo extra point is GOOD, Center-49-L.McCullough, Holder-13-B.Pinion.
13-B.Pinion kicks 65 yards from ATL 35 to end zone, Touchback to the TB 30.
(:14) 6-B.Mayfield pass short left to 7-B.Irving pushed ob at TB 36 for 6 yards (55-K.Elliss).
END QUARTER 3
(15:00) 15-J.McMillan left end pushed ob at ATL 47 for 17 yards (24-A.Terrell).
(14:23) 6-B.Mayfield pass short left to 18-R.Jarrett to ATL 27 for 20 yards (27-R.Grant).
(13:40) (Shotgun) 6-B.Mayfield pass short left to 7-B.Irving to ATL 24 for 3 yards (24-A.Terrell).
(13:00) (Shotgun) 6-B.Mayfield pass deep left intended for 15-J.McMillan INTERCEPTED by 24-A.Terrell at ATL 6. 24-A.Terrell ran ob at ATL 6 for no gain.
(12:54) 25-T.Allgeier right end to ATL 5 for -1 yards (29-C.Izien, 52-K.Britt). ** Injury Update: TB-54-L.David has returned to the game.
(12:11) 18-K.Cousins FUMBLES (Aborted) at ATL 1, touched at ATL 5, ball out of bounds in End Zone, SAFETY.
13-B.Pinion kicks 73 yards from ATL 20 to TB 7. 44-S.Tucker to TB 27 for 20 yards (33-A.Hamilton; 12-K.Hodge).
(11:59) PENALTY on TB-15-J.McMillan, False Start, 5 yards, enforced at TB 27 - No Play.
(11:59) 6-B.Mayfield pass short right to 7-B.Irving pushed ob at TB 28 for 6 yards (21-M.Hughes).
(11:17) (Shotgun) 6-B.Mayfield pass short right to 15-J.McMillan ran ob at TB 39 for 11 yards.
(10:59) (No Huddle, Shotgun) 6-B.Mayfield pass short right to 88-C.Otton to TB 43 for 4 yards (21-M.Hughes).
(10:17) (Shotgun) 6-B.Mayfield pass short middle to 81-R.Miller to 50 for 7 yards (53-N.Landman).
(9:50) (No Huddle, Shotgun) 6-B.Mayfield pass incomplete short left to 81-R.Miller.
(9:44) (Shotgun) 6-B.Mayfield pass short left to 81-R.Miller pushed ob at ATL 44 for 6 yards (24-A.Terrell).
(9:10) (Shotgun) 6-B.Mayfield scrambles left guard to ATL 34 for 10 yards (55-K.Elliss).
(8:45) (No Huddle, Shotgun) 6-B.Mayfield pass incomplete short left.
(8:40) (Shotgun) 6-B.Mayfield pass short left to 1-R.White to ATL 28 for 6 yards (55-K.Elliss, 91-D.Harris).
(7:59) (Shotgun) 6-B.Mayfield pass deep left to 18-R.Jarrett to ATL 9 for 19 yards (27-R.Grant).
(7:31) (No Huddle, Shotgun) 6-B.Mayfield pass short right to 15-J.McMillan pushed ob at ATL 4 for 5 yards (21-M.Hughes).
(6:55) (Shotgun) 6-B.Mayfield pass short left to 88-C.Otton for 4 yards, TOUCHDOWN.
4-C.McLaughlin extra point is GOOD, Center-45-Z.Triner, Holder-16-T.Gill.
16-T.Gill kicks 65 yards from TB 35 to end zone, Touchback to the ATL 30.
(6:52) (Shotgun) 18-K.Cousins pass short left to 89-C.Woerner pushed ob at ATL 43 for 13 yards (52-K.Britt; 32-J.Hayes).
(6:14) (Shotgun) 7-B.Robinson left guard to 50 for 7 yards (29-C.Izien). TB-0-Y.Diaby was injured during the play.
(5:32) (Shotgun) 7-B.Robinson right end to TB 48 for 2 yards (27-Z.McCollum; 50-V.Vea).
(5:09) (No Huddle) 7-B.Robinson right guard to TB 42 for 6 yards (27-Z.McCollum).
(4:24) 7-B.Robinson left guard to TB 39 for 3 yards (27-Z.McCollum). PENALTY on ATL-64-R.Neuzil, Face Mask, 15 yards, enforced at TB 39.
(4:19) (Shotgun) 18-K.Cousins pass short left to 5-D.London to TB 46 for 8 yards (32-J.Hayes; 52-K.Britt).
(3:32) (Shotgun) 18-K.Cousins scrambles up the middle to TB 33 for 13 yards (32-J.Hayes). ** Injury Update: TB-0-Y.Diaby has returned to the game.
(3:07) 25-T.Allgeier right guard to TB 33 for no gain (95-C.Brewer).
Timeout #1 by TB at 03:07.
(2:24) 18-K.Cousins up the middle to TB 30 for 3 yards (90-L.Hall).
Timeout #1 by ATL at 02:24.
(2:00) 25-T.Allgeier left tackle to TB 30 for no gain (50-V.Vea).
(1:56) 25-T.Allgeier left end to TB 32 for -2 yards (50-V.Vea, 54-L.David).
Timeout #2 by TB at 01:56.
(1:51) 7-B.Robinson right end to TB 28 for 4 yards (50-V.Vea).
Timeout #3 by TB at 01:51.
(1:06) 6-Y.Koo 46 yard field goal is No Good, Wide Right, Center-49-L.McCullough, Holder-13-B.Pinion.
Timeout #2 by ATL at 01:06.
(1:01) (Shotgun) 6-B.Mayfield pass short left to 15-J.McMillan to TB 42 for 6 yards (55-K.Elliss).
(:45) (No Huddle, Shotgun) 6-B.Mayfield pass incomplete deep left to 17-S.Shepard.
(:40) (Shotgun) 6-B.Mayfield pass short right to 81-R.Miller to TB 48 for 6 yards (20-D.Alford).
(:24) (No Huddle, Shotgun) 6-B.Mayfield pass deep middle to 18-R.Jarrett to ATL 33 for 19 yards (24-A.Terrell).
(:10) (No Huddle) 6-B.Mayfield spiked the ball to stop the clock.
(:09) (Shotgun) PENALTY on TB-78-T.Wirfs, False Start, 5 yards, enforced at ATL 33 - No Play.
Timeout #3 by ATL at 00:09.
(:09) (Shotgun) 6-B.Mayfield pass incomplete short right.
(:06) (Shotgun) 6-B.Mayfield pass incomplete deep middle.
END GAME"

atl_tb_summary <- "Headline: Cousins throws for 276 yards and 4 TDs as Falcons beat Bucs 31-26.
Summary: The Bucs kept it close, even while making several costly mistakes. White lost an early fumble to set up Cousins' first TD pass to Pitts. The Bucs also hurt themselves with a failed fake punt play in the third quarter that positioned the Falcons to go up 31-17 on Robinson's TD reception. Mayfield tossed a pair of TD passes to tight end Cade Otton, including a 4-yarder that trimmed the 31-17 deficit to five points with just under seven minutes remaining. The Falcons took the ball and, with help from some rushing yards from Cousins and a fourth-down conversion, kept it from Tampa Bay's offense until Younghoe Koo missed a 46-yield field goal with 1:01 left. The Bucs had a chance to possibly win it after driving to the Atlanta 33 in the final minute, however Mayfield's Hail Mary throw from the 38 was caught by Jarrett behind the end zone as time expired.
Notable Performances: Baker Mayfield threw for 330 yards and three TDs, but also tossed a pair of costly interceptions. Cousins threw for 276 yards and 4 touchdowns.
Injuries: Falcons: DL Ruke Orhorhoro left in the third quarter and did not return. Buccaneers: WR Sterling Shepard departed in the second quarter, but returned in the second half."

# Append game log and summary to training dataframe 
atl_tb <- as.data.frame(cbind(atl_tb_log, atl_tb_summary)) %>% rename(game_log = atl_tb_log, game_summary = atl_tb_summary)
training <- rbind(training, atl_tb)

ne_nyj_log <- "GAME
13-J.Slye kicks 65 yards from NE 35 to end zone, Touchback to the NYJ 30.
(15:00) 8-A.Rodgers pass short right to 5-G.Wilson to NYJ 36 for 6 yards (0-C.Gonzalez).
(14:29) (No Huddle, Shotgun) 8-A.Rodgers scrambles left end to NYJ 41 for 5 yards (33-A.Jennings).
(13:55) (No Huddle) 8-A.Rodgers pass short right to 18-M.Williams to NYJ 46 for 5 yards (31-J.Jones).
(13:18) (No Huddle) 8-A.Rodgers pass short left to 10-A.Lazard to NE 43 for 11 yards (25-M.Jones).
(12:34) (Shotgun) 8-A.Rodgers pass incomplete deep right to 18-M.Williams (31-J.Jones). PENALTY on NYJ-78-M.Moses, Offensive Holding, 10 yards, enforced at NE 43 - No Play.
(12:25) (Shotgun) 8-A.Rodgers sacked at NYJ 41 for -6 yards (91-D.Wise).
(11:41) (Shotgun) 20-B.Hall left guard to NYJ 48 for 7 yards (50-R.McMillan).
(10:57) (Shotgun) 8-A.Rodgers pass short right to 20-B.Hall to NE 43 for 9 yards (5-J.Peppers).
(10:14) 6-T.Morstead punts 43 yards to end zone, Center-42-T.Hennessy, Touchback.
(10:06) 7-J.Brissett pass short right to 85-H.Henry to NE 20 for no gain (56-Qi.Williams) [99-W.McDonald].
(9:31) 38-R.Stevenson right tackle to NE 21 for 1 yard (95-Q.Williams).
(8:49) (Shotgun) 7-J.Brissett pass incomplete deep right.
(8:45) 17-B.Baringer punts 57 yards to NYJ 22, Center-49-J.Cardona. 82-X.Gipson ran ob at NYJ 27 for 5 yards (27-M.Dial; 5-J.Peppers).
(8:34) 0-B.Allen left tackle to NYJ 38 for 11 yards (48-J.Tavai).
(7:50) 0-B.Allen right tackle to NYJ 43 for 5 yards (33-A.Jennings).
(7:09) 8-A.Rodgers pass short right to 89-J.Ruckert to NE 46 for 11 yards (31-J.Jones; 48-J.Tavai).
(6:22) (Shotgun) 8-A.Rodgers pass short left to 20-B.Hall to NE 46 for no gain (48-J.Tavai). PENALTY on NE-48-J.Tavai, Unnecessary Roughness, 15 yards, enforced at NE 46.
(5:56) 20-B.Hall up the middle to NE 21 for 10 yards (50-R.McMillan).
(5:13) 8-A.Rodgers pass incomplete deep left to 5-G.Wilson.
(5:08) (Shotgun) 8-A.Rodgers pass short middle to 82-X.Gipson to NE 10 for 11 yards (5-J.Peppers).
(4:26) 8-A.Rodgers pass short left to 10-A.Lazard for 10 yards, TOUCHDOWN.
9-G.Zuerlein extra point is GOOD, Center-42-T.Hennessy, Holder-6-T.Morstead.
9-G.Zuerlein kicks 65 yards from NYJ 35 to end zone, Touchback to the NE 30.
(4:21) (Shotgun) 7-J.Brissett pass short left to 3-D.Douglas pushed ob at NE 31 for 1 yard (44-J.Sherwood).
(3:54) (No Huddle, Shotgun) 7-J.Brissett pass short right to 1-J.Polk to NE 37 for 6 yards (1-A.Gardner).
(3:09) (Shotgun) 7-J.Brissett pass short middle to 85-H.Henry to NE 46 for 9 yards (22-T.Adams; 36-C.Clark).
(2:34) 38-R.Stevenson left tackle to NE 49 for 3 yards (55-C.Surratt; 56-Qi.Williams).
(1:52) 72-Z.Thomas reported in as eligible. 7-J.Brissett pass incomplete deep left to 81-A.Hooper.
(1:47) (Shotgun) 7-J.Brissett sacked at NE 41 for -8 yards (sack split by 72-M.Clemons and 99-W.McDonald). Penalty on NE-70-C.Wallace, Illegal Formation, declined.
(1:26) 17-B.Baringer punts 50 yards to NYJ 9, Center-49-J.Cardona, fair catch by 82-X.Gipson.
(1:19) (Shotgun) 20-B.Hall up the middle to NYJ 14 for 5 yards (50-R.McMillan; 33-A.Jennings).
(:40) (Shotgun) 8-A.Rodgers pass short right to 20-B.Hall to NYJ 18 for 4 yards (25-M.Jones). PENALTY on NYJ-83-T.Conklin, Offensive Holding, 7 yards, enforced at NYJ 14 - No Play.
(:10) (Shotgun) 20-B.Hall right tackle to NYJ 13 for 6 yards (50-R.McMillan; 55-J.Uche).
END QUARTER 1
(15:00) (Shotgun) 8-A.Rodgers pass short left to 10-A.Lazard to NYJ 40 for 27 yards (99-K.White). NE-5-J.Peppers was injured during the play.
(14:26) 8-A.Rodgers pass short right to 20-B.Hall to NE 46 for 14 yards (31-J.Jones, 91-D.Wise).
(13:44) 0-B.Allen right tackle to NE 35 for 11 yards (50-R.McMillan).
(13:00) 0-B.Allen right tackle to NE 28 for 7 yards (50-R.McMillan).
(12:18) (Shotgun) 20-B.Hall up the middle to NE 30 for -2 yards (48-J.Tavai).
(11:37) (Shotgun) 8-A.Rodgers pass short left to 5-G.Wilson to NE 21 for 9 yards (0-C.Gonzalez) [99-K.White].
(10:54) 20-B.Hall right end to NE 28 for -7 yards (33-A.Jennings).
(10:12) (Shotgun) 8-A.Rodgers pass short middle to 83-T.Conklin to NE 6 for 22 yards (21-J.Hawkins).
(9:24) 20-B.Hall left guard to NE 1 for 5 yards (21-J.Hawkins, 31-J.Jones).
(8:39) 94-S.Thomas reported in as eligible. 8-A.Rodgers pass incomplete short left to 83-T.Conklin.
(8:33) 74-O.Fashanu reported in as eligible. 20-B.Hall up the middle to NE 1 for no gain (33-A.Jennings). New York Jets challenged the short of the goal line ruling, and the play was REVERSED. 74-O.Fashanu reported in as eligible. 20-B.Hall up the middle for 1 yard, TOUCHDOWN.
9-G.Zuerlein extra point is GOOD, Center-42-T.Hennessy, Holder-6-T.Morstead. PENALTY on NE-23-K.Dugger, Leverage, 15 yards, enforced between downs.
9-G.Zuerlein kicks 44 yards from 50 to NE 6. 39-J.Hasty to NE 24 for 18 yards (52-S.Eguavoen).
(8:29) (Shotgun) 38-R.Stevenson left guard to NE 27 for 3 yards (4-D.Reed).
(7:57) 72-Z.Thomas reported in as eligible. 38-R.Stevenson right guard to NE 46 for 19 yards (55-C.Surratt). PENALTY on NE-38-R.Stevenson, Face Mask, 15 yards, enforced at NE 40.
(7:42) (Shotgun) 7-J.Brissett pass incomplete short right to 11-T.Thornton (1-A.Gardner). PENALTY on NYJ-44-J.Sherwood, Unnecessary Roughness, 15 yards, enforced at NE 25 - No Play.
(7:38) (Shotgun) 3-D.Douglas left end to NE 49 for 9 yards (36-C.Clark).
(6:59) 7-J.Brissett sacked at NE 41 for -8 yards (36-C.Clark).
(6:09) (Shotgun) 7-J.Brissett pass incomplete deep left to 11-T.Thornton. PENALTY on NYJ-4-D.Reed, Defensive Pass Interference, 34 yards, enforced at NE 41 - No Play.
(6:03) 7-J.Brissett sacked at NYJ 34 for -9 yards (99-W.McDonald).
(5:24) (Shotgun) 7-J.Brissett pass short right to 4-A.Gibson to NYJ 33 for 1 yard (44-J.Sherwood).
(4:41) (Shotgun) 7-J.Brissett pass short left to 4-A.Gibson to NYJ 26 for 7 yards (36-C.Clark).
(4:00) 13-J.Slye 44 yard field goal is GOOD, Center-49-J.Cardona, Holder-17-B.Baringer.
13-J.Slye kicks 68 yards from NE 35 to NYJ -3. 32-I.Davis pushed ob at NYJ 24 for 27 yards (23-K.Dugger).
(3:52) 0-B.Allen left tackle to NYJ 25 for 1 yard (5-J.Peppers; 98-J.Pharms). ** Injury Update: NE-5-J.Peppers has returned to the game.
(3:10) (Shotgun) 0-B.Allen up the middle to NYJ 30 for 5 yards (92-D.Godchaux, 95-D.Ekuale).
(2:27) (Shotgun) PENALTY on NYJ-78-M.Moses, False Start, 5 yards, enforced at NYJ 30 - No Play.
(2:05) (Shotgun) 8-A.Rodgers pass deep middle to 83-T.Conklin to NYJ 47 for 22 yards (25-M.Jones).
(1:59) (Shotgun) 20-B.Hall left tackle pushed ob at NE 44 for 9 yards (31-J.Jones). The Replay Official reviewed the runner was out of bounds ruling, and the play was REVERSED. (Shotgun) 20-B.Hall left tackle to NE 45 for 8 yards (31-J.Jones). FUMBLES (31-J.Jones), ball out of bounds at NE 44.
(1:35) 20-B.Hall up the middle to NE 43 for 2 yards (48-J.Tavai; 95-D.Ekuale).
(:56) 20-B.Hall up the middle to NE 35 for 8 yards (55-J.Uche).
(:46) (Shotgun) 8-A.Rodgers pass incomplete deep right to 5-G.Wilson. PENALTY on NYJ-5-G.Wilson, Illegal Motion, 5 yards, enforced at NE 35 - No Play.
Timeout #1 by NYJ at 00:46.
(:41) (Shotgun) 8-A.Rodgers pass short right to 0-B.Allen to NE 38 for 2 yards (55-J.Uche).
(:29) (Shotgun) 8-A.Rodgers pass short middle to 18-M.Williams to NE 27 for 11 yards (31-J.Jones).
Timeout #2 by NYJ at 00:29.
(:24) (Shotgun) 8-A.Rodgers pass incomplete short right to 20-B.Hall.
Timeout #3 by NYJ at 00:24.
(:21) (Shotgun) 8-A.Rodgers pass incomplete deep middle.
(:14) (Shotgun) 8-A.Rodgers pass incomplete short left to 5-G.Wilson.
Timeout #1 by NE at 00:14.
(:11) 9-G.Zuerlein 45 yard field goal is No Good, Wide Left, Center-42-T.Hennessy, Holder-6-T.Morstead.
(:07) (Shotgun) 7-J.Brissett pass short left to 3-D.Douglas to NE 47 for 12 yards (30-M.Carter).
(:03) (Shotgun) 7-J.Brissett pass incomplete deep left (22-T.Adams) [95-Q.Williams].
Timeout #2 by NE at 00:03.
END QUARTER 2
9-G.Zuerlein kicks 65 yards from NYJ 35 to end zone, Touchback to the NE 30.
(15:00) 38-R.Stevenson right guard to NE 29 for -1 yards (56-Qi.Williams).
(14:23) (Shotgun) 7-J.Brissett pass short middle to 1-J.Polk to NE 36 for 7 yards (1-A.Gardner).
(13:46) (Shotgun) 7-J.Brissett pass incomplete short right to 3-D.Douglas [95-Q.Williams].
(13:41) 17-B.Baringer punts 51 yards to NYJ 13, Center-49-J.Cardona. 82-X.Gipson to NYJ 34 for 21 yards (48-J.Tavai).
(13:28) 20-B.Hall left end to NYJ 35 for 1 yard (50-R.McMillan).
(12:42) (Shotgun) 8-A.Rodgers scrambles left end pushed ob at NYJ 46 for 11 yards (99-K.White).
(12:11) 20-B.Hall up the middle to 50 for 4 yards (95-D.Ekuale).
(11:25) 0-B.Allen left tackle to NE 45 for 5 yards (99-K.White; 21-J.Hawkins).
(10:42) 8-A.Rodgers pass short right to 89-J.Ruckert to NE 41 for 4 yards (23-K.Dugger).
(9:56) 0-B.Allen left tackle to NE 38 for 3 yards (55-J.Uche, 91-D.Wise).
Timeout #1 by NYJ at 09:56.
(9:14) 8-A.Rodgers pass short middle to 0-B.Allen to NE 34 for 4 yards (48-J.Tavai) [99-K.White].
(8:29) (Shotgun) 8-A.Rodgers pass deep right to 83-T.Conklin to NE 16 for 18 yards (50-R.McMillan).
(7:40) (Shotgun) 8-A.Rodgers pass short right to 20-B.Hall to NE 10 for 6 yards (48-J.Tavai; 50-R.McMillan).
Timeout #2 by NYJ at 07:40.
(7:05) (Shotgun) 8-A.Rodgers pass short left to 5-G.Wilson to NE 2 for 8 yards (25-M.Jones).
(6:24) (Shotgun) 8-A.Rodgers pass short right to 5-G.Wilson for 2 yards, TOUCHDOWN.
9-G.Zuerlein extra point is GOOD, Center-42-T.Hennessy, Holder-6-T.Morstead.
9-G.Zuerlein kicks 65 yards from NYJ 35 to end zone, Touchback to the NE 30.
(6:18) 7-J.Brissett pass deep right to 3-D.Douglas ran ob at NYJ 48 for 22 yards [97-J.Holmes].
(5:43) 7-J.Brissett pass short right to 81-A.Hooper to NYJ 29 for 19 yards (22-T.Adams; 36-C.Clark).
(5:02) (Shotgun) 7-J.Brissett pass short right to 3-D.Douglas to NYJ 23 for 6 yards (44-J.Sherwood).
(4:35) (No Huddle, Shotgun) 7-J.Brissett pass incomplete deep right to 11-T.Thornton.
(4:30) (Shotgun) 7-J.Brissett pass incomplete deep middle to 3-D.Douglas. Penalty on NE-60-D.Andrews, Offensive Holding, offsetting, enforced at NYJ 23 - No Play. Penalty on NYJ-30-M.Carter, Defensive Pass Interference, offsetting.
(4:26) (Shotgun) 7-J.Brissett pass deep left to 81-A.Hooper ran ob at NYJ 2 for 21 yards (4-D.Reed). PENALTY on NE-70-C.Wallace, Offensive Holding, 10 yards, enforced at NYJ 23 - No Play.
(4:03) (Shotgun) 7-J.Brissett sacked at NYJ 45 for -12 yards (95-Q.Williams). Penalty on NE-70-C.Wallace, Offensive Holding, declined.
(3:52) 17-B.Baringer punts 36 yards to NYJ 9, Center-49-J.Cardona. 82-X.Gipson to NYJ 12 for 3 yards (49-J.Cardona).
(3:43) 0-B.Allen left guard to NYJ 13 for 1 yard (92-D.Godchaux; 44-J.Giles-Harris).
(3:01) (Shotgun) 8-A.Rodgers pass short left to 0-B.Allen to NYJ 20 for 7 yards (44-J.Giles-Harris).
(2:13) (Shotgun) 8-A.Rodgers pass deep left to 83-T.Conklin to NYJ 42 for 22 yards (23-K.Dugger). PENALTY on NE-55-J.Uche, Roughing the Passer, 15 yards, enforced at NYJ 42.
(1:43) 8-A.Rodgers pass short middle to 83-T.Conklin to NE 34 for 9 yards (48-J.Tavai).
(1:03) (Shotgun) 32-I.Davis left tackle to NE 31 for 3 yards (92-D.Godchaux).
(:20) (Shotgun) 8-A.Rodgers pass incomplete short left to 5-G.Wilson. PENALTY on NYJ-76-J.Simpson, Unnecessary Roughness, 15 yards, enforced at NE 31.
(:17) (Shotgun) 8-A.Rodgers sacked at NYJ 46 for -8 yards (55-J.Uche). NYJ-78-M.Moses was injured during the play.
END QUARTER 3
(15:00) (Shotgun) 8-A.Rodgers pass short right to 82-X.Gipson to NE 49 for 5 yards (99-K.White).
(14:22) 6-T.Morstead punts 37 yards to NE 12, Center-42-T.Hennessy. 25-M.Jones to NE 16 for 4 yards (42-T.Hennessy). PENALTY on NYJ-19-I.Charles, Unnecessary Roughness, 15 yards, enforced at NE 16.
(14:11) 38-R.Stevenson up the middle to NE 35 for 4 yards (36-C.Clark). FUMBLES (36-C.Clark), RECOVERED by NYJ-36-C.Clark at NE 37.
(14:02) 32-I.Davis up the middle to NE 33 for 4 yards (92-D.Godchaux, 96-E.Johnson).
(13:22) 32-I.Davis left end to NE 34 for -1 yards (33-A.Jennings).
(12:36) (Shotgun) 8-A.Rodgers pass short left to 18-M.Williams to NE 16 for 18 yards (31-J.Jones).
(11:51) (Shotgun) 8-A.Rodgers scrambles right end to NE 14 for 2 yards (99-K.White).
(11:03) 0-B.Allen right tackle to NE 9 for 5 yards (98-J.Pharms). NE-99-K.White was injured during the play.
(10:24) (Shotgun) 8-A.Rodgers pass incomplete short right to 18-M.Williams (31-J.Jones).
(10:19) 9-G.Zuerlein 28 yard field goal is GOOD, Center-42-T.Hennessy, Holder-6-T.Morstead.
9-G.Zuerlein kicks 65 yards from NYJ 35 to end zone, Touchback to the NE 30.
(10:16) (Shotgun) 7-J.Brissett pass short right to 3-D.Douglas to NE 38 for 8 yards (44-J.Sherwood).
(9:56) (No Huddle, Shotgun) 4-A.Gibson left tackle to NE 45 for 7 yards (93-T.McKinley).
(9:35) (No Huddle, Shotgun) 4-A.Gibson left tackle to NE 47 for 2 yards (56-Qi.Williams).
(9:08) (No Huddle, Shotgun) 7-J.Brissett pass incomplete short right to 85-H.Henry.
(9:04) (Shotgun) 7-J.Brissett sacked at NE 38 for -9 yards (54-J.Kinlaw).
(8:30) 17-B.Baringer punts 51 yards to NYJ 11, Center-49-J.Cardona. 82-X.Gipson to NYJ 9 for -2 yards (41-B.Schooler).
(8:17) 8-A.Rodgers pass short left to 5-G.Wilson to NYJ 17 for 8 yards (0-C.Gonzalez). ** Injury Update: NE-99-K.White has returned to the game.
(7:30) 20-B.Hall left tackle to NYJ 18 for 1 yard (95-D.Ekuale).
(6:46) (Shotgun) 20-B.Hall right guard to NYJ 20 for 2 yards (92-D.Godchaux; 50-R.McMillan).
(6:02) 20-B.Hall left tackle to NYJ 23 for 3 yards (33-A.Jennings; 48-J.Tavai).
(5:22) 0-B.Allen right guard to NYJ 24 for 1 yard (99-K.White).
(4:36) (Shotgun) 8-A.Rodgers pass incomplete deep right to 5-G.Wilson.
(4:32) 6-T.Morstead punts 42 yards to NE 34, Center-42-T.Hennessy. 25-M.Jones to NE 42 for 8 yards (19-I.Charles; 26-B.Echols).
(4:24) 10-D.Maye in at QB. (Shotgun) 10-D.Maye pass incomplete short left to 81-A.Hooper (30-M.Carter).
(4:21) (Shotgun) 4-A.Gibson left guard to NE 49 for 7 yards (36-C.Clark; 56-Qi.Williams).
(3:54) (No Huddle, Shotgun) 10-D.Maye scrambles left tackle to 50 for 1 yard (91-B.McGregor; 44-J.Sherwood).
(3:27) (No Huddle, Shotgun) 4-A.Gibson up the middle to NYJ 45 for 5 yards (94-S.Thomas).
(3:05) (No Huddle, Shotgun) 10-D.Maye pass short right to 4-A.Gibson to NYJ 45 for no gain (56-Qi.Williams).
(2:37) (No Huddle, Shotgun) 4-A.Gibson right guard to NYJ 37 for 8 yards (56-Qi.Williams).
(2:09) (No Huddle, Shotgun) 10-D.Maye pass short right to 9-K.Boutte to NYJ 35 for 2 yards (1-A.Gardner).
(2:00) (Shotgun) 10-D.Maye sacked at NYJ 43 for -8 yards (sack split by 99-W.McDonald and 96-L.Taylor).
(1:31) (No Huddle, Shotgun) 39-J.Hasty up the middle to NYJ 38 for 5 yards (56-Qi.Williams; 96-L.Taylor).
(1:06) (No Huddle, Shotgun) 10-D.Maye pass short right to 3-D.Douglas pushed ob at NYJ 33 for 5 yards (1-A.Gardner).
(1:00) (Shotgun) 10-D.Maye scrambles left end ran ob at NYJ 22 for 11 yards (4-D.Reed).
(:53) (Shotgun) 10-D.Maye pass incomplete short left to 81-A.Hooper.
(:50) (Shotgun) 10-D.Maye pass incomplete short right to 9-K.Boutte [23-I.Oliver].
(:46) (Shotgun) 10-D.Maye pass incomplete short right to 3-D.Douglas.
(:43) (Shotgun) 10-D.Maye pass short middle to 3-D.Douglas to NYJ 7 for 15 yards (22-T.Adams).
(:20) (No Huddle, Shotgun) 10-D.Maye sacked at NYJ 12 for -5 yards (sack split by 93-T.McKinley and 94-S.Thomas).
END GAME"

ne_nyj_summary <- "Headline: Rodgers sparkles in home game to lead Jets to 24-3 win over Patriots.
Summary: New York’s defense was dominant and the Jets rolled to a 24-3 victory over the New England Patriots. After the Jets' first drive stalled, Rodgers marched them down the field — with a little help from a Patriots penalty. A few plays later, Rodgers threw a pass to Lazard on who broke away and zipped into the end zone for a 13-yard touchdown. Rodgers and the Jets kept things going on their next possession, capping a 13-play, 91-yard drive with a TD run by Hall. Joey Slye's field goal cut the Patriots' deficit to 14-3 with 3:56 left in the first half. New York made it 21-3 with time remaining in the third quarter when Rodgers zipped a pass and found Wilson, who got into the end zone for a 2-yard touchdown. After a fumble by New England, the Jets increased their lead on a field goal by Greg Zuerlein. With 4:24 left in the game, the Patriots brought in Drake Male to replace QB Jacoby Brissett after a poor performance, but Maye could not help the offense get anything going either.
Notable Performances: Aaron Rodgers passed for 281 yards and 2 touchdowns.
Injuries: Patriots: LG Michael Jordan and LT Caedan Wallace left in the fourth quarter. Jets: RT Morgan Moses left on the final play of the third quarter and didn't return."

# Append game log and summary to training dataframe 
ne_nyj <- as.data.frame(cbind(ne_nyj_log, ne_nyj_summary)) %>% rename(game_log = ne_nyj_log, game_summary = ne_nyj_summary)
training <- rbind(training, ne_nyj)

ind_ne_log <- "GAME
7-M.Gay kicks 67 yards from IND 35 to NE -2. 4-A.Gibson pushed ob at NE 24 for 26 yards (35-C.Lammons).
(14:56) (Shotgun) 10-D.Maye pass short left to 84-K.Bourne pushed ob at NE 29 for 5 yards (40-J.Jones).
(14:31) 38-R.Stevenson up the middle to IND 39 for 32 yards (32-J.Blackmon).
(13:49) (Shotgun) 10-D.Maye pass incomplete deep middle to 9-K.Boutte.
(13:45) 38-R.Stevenson right end to IND 36 for 3 yards (51-K.Paye; 20-N.Cross).
(13:05) (Shotgun) 10-D.Maye pass short right to 85-H.Henry to IND 27 for 9 yards (20-N.Cross).
(12:30) (Shotgun) 4-A.Gibson right tackle to IND 21 for 6 yards (44-Z.Franklin).
(11:54) (Shotgun) 10-D.Maye pass short middle to 85-H.Henry to IND 7 for 14 yards (32-J.Blackmon).
(11:19) (Shotgun) 10-D.Maye sacked ob at IND 7 for 0 yards (sack split by 44-Z.Franklin and 51-K.Paye).
(10:38) (Shotgun) 4-A.Gibson up the middle to IND 5 for 2 yards (99-D.Buckner; 94-T.Lewis).
(10:01) (Shotgun) 10-D.Maye sacked at IND 16 for -11 yards (99-D.Buckner).
(9:15) 13-J.Slye 35 yard field goal is GOOD, Center-49-J.Cardona, Holder-17-B.Baringer.
13-J.Slye kicks 60 yards from NE 35 to IND 5. 31-T.Goodson to IND 29 for 24 yards (24-D.Pettus).
(9:07) (Shotgun) 5-A.Richardson pass short left to 11-M.Pittman to IND 36 for 7 yards (5-J.Peppers).
(8:28) (Shotgun) 28-J.Taylor right guard to IND 45 for 9 yards (31-J.Jones; 5-J.Peppers).
(7:51) (Shotgun) 5-A.Richardson right end ran ob at NE 44 for 11 yards (0-C.Gonzalez).
(7:13) (Shotgun) 5-A.Richardson pass deep right to 85-A.Ogletree pushed ob at NE 22 for 22 yards (0-C.Gonzalez).
(6:43) (No Huddle, Shotgun) 28-J.Taylor up the middle to NE 18 for 4 yards (95-D.Ekuale, 92-D.Godchaux).
(6:06) (Shotgun) 28-J.Taylor up the middle to NE 13 for 5 yards (53-C.Elliss).
(5:40) (No Huddle, Shotgun) 28-J.Taylor up the middle to NE 7 for 6 yards (48-J.Tavai; 33-A.Jennings).
(5:07) (Shotgun) 5-A.Richardson pass short right to 28-J.Taylor for 7 yards, TOUCHDOWN [53-C.Elliss].
7-M.Gay extra point is GOOD, Center-46-L.Rhodes, Holder-8-R.Sanchez.
7-M.Gay kicks 65 yards from IND 35 to end zone, Touchback to the NE 30.
(5:02) (Shotgun) 38-R.Stevenson up the middle to NE 35 for 5 yards (45-E.Speed).
(4:32) (Shotgun) 10-D.Maye scrambles left guard to IND 24 for 41 yards (20-N.Cross).
(3:40) (Shotgun) 10-D.Maye pass short left to 81-A.Hooper to IND 13 for 11 yards (40-J.Jones).
(3:07) 10-D.Maye pass short middle to 85-H.Henry to IND 2 for 11 yards (44-Z.Franklin; 45-E.Speed). NE-85-H.Henry was injured during the play.
(2:36) (Shotgun) 62-S.Sow and 74-M.Jordan reported in as eligible. Direct snap to 38-R.Stevenson. 38-R.Stevenson right end for 2 yards, TOUCHDOWN NULLIFIED by Penalty. PENALTY on NE-71-M.Onwenu, Offensive Holding, 10 yards, enforced at IND 2 - No Play.
(2:32) (Shotgun) 10-D.Maye pass short right to 81-A.Hooper to IND 12 for no gain (20-N.Cross). PENALTY on NE-64-L.Robinson, Offensive Holding, 10 yards, enforced at IND 12 - No Play.
(2:11) 38-R.Stevenson left guard to IND 17 for 5 yards (45-E.Speed).
(1:36) (Shotgun) 10-D.Maye pass short right to 3-D.Douglas to IND 13 for 4 yards (44-Z.Franklin).
(:52) (Shotgun) 10-D.Maye pass incomplete short right to 9-K.Boutte.
(:46) 13-J.Slye 31 yard field goal is GOOD, Center-49-J.Cardona, Holder-17-B.Baringer.
13-J.Slye kicks 65 yards from NE 35 to end zone, Touchback to the IND 30.
(:43) (Shotgun) 5-A.Richardson left tackle to IND 29 for -1 yards (5-J.Peppers).
(:03) (Shotgun) 5-A.Richardson pass deep left intended for 11-M.Pittman INTERCEPTED by 53-C.Elliss (48-J.Tavai) at IND 48. 53-C.Elliss to IND 42 for 6 yards (14-A.Pierce).
END QUARTER 1
(15:00) 62-S.Sow reported in as eligible. 38-R.Stevenson up the middle to IND 41 for 1 yard (99-D.Buckner; 90-G.Stewart).
(14:25) (Shotgun) 10-D.Maye pass short left to 81-A.Hooper to IND 33 for 8 yards (44-Z.Franklin). FUMBLES (44-Z.Franklin), and recovers at IND 33.
(13:37) 38-R.Stevenson right end to IND 36 for -3 yards (45-E.Speed).
(12:54) 13-J.Slye 54 yard field goal is GOOD, Center-49-J.Cardona, Holder-17-B.Baringer.
13-J.Slye kicks 65 yards from NE 35 to end zone, Touchback to the IND 30.
(12:49) (Shotgun) 28-J.Taylor right end to IND 39 for 9 yards (5-J.Peppers; 23-K.Dugger).
(12:09) (Shotgun) 5-A.Richardson pass incomplete deep right to 83-K.Granson (23-K.Dugger).
(12:02) (Shotgun) 5-A.Richardson left end pushed ob at NE 48 for 13 yards (23-K.Dugger). Bobbled snap.
(11:23) (Shotgun) 28-J.Taylor right guard to NE 44 for 4 yards (33-A.Jennings).
(10:43) (Shotgun) 5-A.Richardson pass incomplete deep right to 11-M.Pittman. PENALTY on NE-48-J.Tavai, Defensive Pass Interference, 29 yards, enforced at NE 44 - No Play.
(10:36) (Shotgun) 28-J.Taylor left end pushed ob at NE 17 for -2 yards (23-K.Dugger).
(9:58) (Shotgun) 5-A.Richardson pass short left to 11-M.Pittman to NE 7 for 10 yards (98-J.Pharms).
(9:23) (No Huddle, Shotgun) 28-J.Taylor up the middle to NE 3 for 4 yards (23-K.Dugger; 5-J.Peppers).
(8:39) (Shotgun) 5-A.Richardson right guard for 3 yards, TOUCHDOWN.
7-M.Gay extra point is GOOD, Center-46-L.Rhodes, Holder-8-R.Sanchez.
7-M.Gay kicks 65 yards from IND 35 to NE 0. 4-A.Gibson to NE 30 for 30 yards (50-S.Olubi).
(8:31) (Shotgun) 38-R.Stevenson up the middle to NE 31 for 1 yard (20-N.Cross). ** Injury Update: NE-85-H.Henry has returned to the game.
(7:56) (Shotgun) 10-D.Maye pass short left to 3-D.Douglas to NE 39 for 8 yards (23-K.Moore).
(7:23) (Shotgun) 10-D.Maye pass short right to 3-D.Douglas to NE 44 for 5 yards (45-E.Speed).
(6:43) (Shotgun) 10-D.Maye pass short right to 38-R.Stevenson pushed ob at IND 43 for 13 yards (33-S.Womack).
(6:06) 4-A.Gibson left guard to IND 30 for 13 yards (45-E.Speed).
(5:24) 4-A.Gibson right tackle to IND 19 for 11 yards (32-J.Blackmon).
(4:42) (Shotgun) 10-D.Maye pass short left to 3-D.Douglas to IND 16 for 3 yards (40-J.Jones).
(4:07) (Shotgun) 10-D.Maye pass short left to 81-A.Hooper for 16 yards, TOUCHDOWN.
13-J.Slye extra point is GOOD, Center-49-J.Cardona, Holder-17-B.Baringer.
13-J.Slye kicks 65 yards from NE 35 to end zone, Touchback to the IND 30.
(4:02) (Shotgun) 28-J.Taylor up the middle to IND 28 for -2 yards (95-D.Ekuale).
(3:24) (Shotgun) 5-A.Richardson pass incomplete deep right to 85-A.Ogletree. Penalty on IND-64-M.Glowinski, Ineligible Downfield Pass, declined.
(3:16) (Shotgun) 5-A.Richardson pass incomplete deep left to 11-M.Pittman (28-A.Austin).
(3:10) 8-R.Sanchez punts 49 yards to NE 23, Center-46-L.Rhodes. 25-M.Jones to NE 42 for 19 yards (46-L.Rhodes).
(2:57) 38-R.Stevenson up the middle to NE 44 for 2 yards (94-T.Lewis). PENALTY on IND-90-G.Stewart, Defensive Offside, 5 yards, enforced at NE 42 - No Play.
(2:31) (Shotgun) 10-D.Maye pass incomplete short left to 1-J.Polk.
(2:28) (Shotgun) 38-R.Stevenson left end to NE 46 for -1 yards (45-E.Speed). PENALTY on NE-64-L.Robinson, Offensive Holding, 10 yards, enforced at NE 47 - No Play.
(2:00) (Shotgun) 10-D.Maye pass short middle to 84-K.Bourne to IND 47 for 16 yards (32-J.Blackmon).
(1:41) (No Huddle, Shotgun) 10-D.Maye pass short right to 85-H.Henry to IND 38 for 9 yards (45-E.Speed).
(1:21) (No Huddle, Shotgun) 10-D.Maye pass short right to 38-R.Stevenson pushed ob at IND 31 for 7 yards (45-E.Speed).
(1:16) (Shotgun) 10-D.Maye pass short middle to 38-R.Stevenson to IND 30 for 1 yard (20-N.Cross).
(:54) (No Huddle, Shotgun) 10-D.Maye pass incomplete short right to 3-D.Douglas [51-K.Paye]. PENALTY on NE-75-D.Jacobs, Offensive Holding, 10 yards, enforced at IND 30 - No Play.
(:50) (Shotgun) 10-D.Maye pass short right to 9-K.Boutte to IND 11 for 29 yards (44-Z.Franklin).
(:41) (Shotgun) 38-R.Stevenson right tackle to IND 10 for 1 yard (54-D.Odeyingbo).
Timeout #1 by NE at 00:41.
(:30) (Shotgun) 38-R.Stevenson up the middle to IND 4 for 6 yards (44-Z.Franklin).
Timeout #2 by NE at 00:30.
(:27) (Shotgun) 10-D.Maye sacked at IND 7 for -3 yards (44-Z.Franklin). Penalty on NE-59-V.Lowe, Offensive Holding, declined.
Timeout #3 by NE at 00:27.
Timeout #1 by IND at 00:27.
(:20) 13-J.Slye 25 yard field goal is No Good, Wide Left, Center-49-J.Cardona, Holder-17-B.Baringer.
(:18) 5-A.Richardson kneels to IND 19 for -1 yards.
END QUARTER 2
13-J.Slye kicks 65 yards from NE 35 to IND 0. 31-T.Goodson to IND 25 for 25 yards (48-J.Tavai).
(14:55) (Shotgun) 28-J.Taylor left end to IND 33 for 8 yards (92-D.Godchaux).
(14:17) (Shotgun) 28-J.Taylor right tackle to IND 42 for 9 yards (31-J.Jones).
(13:35) (Shotgun) 28-J.Taylor up the middle to IND 47 for 5 yards (5-J.Peppers, 23-K.Dugger).
(13:00) (Shotgun) 28-J.Taylor right tackle to NE 49 for 4 yards (23-K.Dugger, 92-D.Godchaux).
(12:32) (No Huddle, Shotgun) 28-J.Taylor up the middle to NE 46 for 3 yards (33-A.Jennings, 92-D.Godchaux).
(11:51) (Shotgun) 5-A.Richardson scrambles left tackle to NE 35 for 11 yards (53-C.Elliss).
(11:09) (Shotgun) 5-A.Richardson pass short right to 14-A.Pierce to NE 22 for 13 yards (21-J.Hawkins).
(10:20) (Shotgun) 28-J.Taylor left end to NE 19 for 3 yards (25-M.Jones).
(9:38) (Shotgun) 28-J.Taylor up the middle to NE 11 for 8 yards (5-J.Peppers, 53-C.Elliss).
(8:59) (No Huddle, Shotgun) 28-J.Taylor up the middle to NE 7 for 4 yards (55-Y.Ngakoue, 5-J.Peppers). FUMBLES (5-J.Peppers), and recovers at NE 7.
(8:18) (Shotgun) 28-J.Taylor right end to NE 7 for no gain (23-K.Dugger).
(7:34) (Shotgun) 5-A.Richardson pass incomplete short left to 10-A.Mitchell (25-M.Jones).
(7:29) 7-M.Gay 25 yard field goal is GOOD, Center-46-L.Rhodes, Holder-8-R.Sanchez.
7-M.Gay kicks 63 yards from IND 35 to NE 2. 4-A.Gibson to NE 26 for 24 yards (48-R.Harrison).
(7:20) 38-R.Stevenson right tackle to NE 27 for 1 yard (99-D.Buckner; 54-D.Odeyingbo).
(6:44) (Shotgun) 10-D.Maye pass short left to 9-K.Boutte pushed ob at NE 35 for 8 yards (40-J.Jones).
(6:12) 84-K.Bourne left end to NE 41 for 6 yards (44-Z.Franklin).
(5:38) (Shotgun) 4-A.Gibson right guard to NE 45 for 4 yards (23-K.Moore, 99-D.Buckner).
(5:06) 4-A.Gibson right end to IND 40 for 15 yards (33-S.Womack; 99-D.Buckner).
(4:22) 10-D.Maye scrambles left end ran ob at IND 36 for 4 yards (41-G.Stuard).
(3:38) (Shotgun) 10-D.Maye pass incomplete short right to 9-K.Boutte.
(3:34) (Shotgun) 10-D.Maye pass short right to 85-H.Henry to IND 24 for 12 yards (20-N.Cross).
(2:58) (Shotgun) 10-D.Maye scrambles right guard to IND 17 for 7 yards (45-E.Speed).
(2:22) 38-R.Stevenson left guard to IND 15 for 2 yards (94-T.Lewis).
(1:47) 62-S.Sow reported in as eligible. 10-D.Maye sacked at IND 15 for 0 yards (41-G.Stuard). New England challenged the short of the line to gain ruling, and the play was REVERSED. 62-S.Sow reported in as eligible. 10-D.Maye scrambles right end to IND 14 for 1 yard (41-G.Stuard).
(1:38) 38-R.Stevenson right tackle to IND 7 for 7 yards (20-N.Cross).
(1:01) (Shotgun) 10-D.Maye pass short middle intended for 85-H.Henry INTERCEPTED by 32-J.Blackmon (44-Z.Franklin) at IND 0. 32-J.Blackmon to IND 17 for 17 yards (75-D.Jacobs).
(:53) 28-J.Taylor left guard to IND 21 for 4 yards (24-D.Pettus, 33-A.Jennings).
(:10) (Shotgun) 5-A.Richardson pass short left to 81-M.Alie-Cox to IND 25 for 4 yards (0-C.Gonzalez).
END QUARTER 3
(15:00) (Shotgun) 5-A.Richardson pass short right to 85-A.Ogletree to IND 38 for 13 yards (24-D.Pettus). PENALTY on IND-11-M.Pittman, Offensive Pass Interference, 10 yards, enforced at IND 25 - No Play.
(14:32) (Shotgun) 5-A.Richardson pass incomplete deep left to 83-K.Granson.
(14:25) 8-R.Sanchez punts 51 yards to NE 34, Center-46-L.Rhodes. 25-M.Jones to NE 46 for 12 yards (41-G.Stuard).
(14:14) 10-D.Maye pass short left to 9-K.Boutte to 50 for 4 yards (40-J.Jones).
(13:42) (Shotgun) 38-R.Stevenson left guard to IND 43 for 7 yards (44-Z.Franklin).
(13:07) 38-R.Stevenson right guard to IND 44 for -1 yards (94-T.Lewis). FUMBLES (94-T.Lewis), and recovers at IND 43.
(12:26) (Shotgun) 10-D.Maye pass short middle to 84-K.Bourne to IND 25 for 18 yards (20-N.Cross).
(11:44) 10-D.Maye scrambles right end ran ob at IND 19 for 6 yards (98-R.Davis).
(11:03) 38-R.Stevenson right tackle to IND 18 for 1 yard (90-G.Stewart; 54-D.Odeyingbo).
(10:18) (Shotgun) 10-D.Maye pass short right to 81-A.Hooper pushed ob at IND 11 for 7 yards (33-S.Womack).
(9:39) 38-R.Stevenson up the middle to IND 6 for 5 yards (99-D.Buckner; 51-K.Paye).
(8:56) (Shotgun) 10-D.Maye pass short right to 84-K.Bourne for 6 yards, TOUCHDOWN NULLIFIED by Penalty. PENALTY on NE-3-D.Douglas, Illegal Shift, 5 yards, enforced at IND 6 - No Play.
(8:48) (Shotgun) 4-A.Gibson left guard for 11 yards, TOUCHDOWN.
TWO-POINT CONVERSION ATTEMPT. 10-D.Maye pass to 9-K.Boutte is complete. ATTEMPT SUCCEEDS.
13-J.Slye kicks 56 yards from NE 35 to IND 9. 27-T.Sermon to IND 32 for 23 yards (27-M.Dial; 21-J.Hawkins).
(8:36) (Shotgun) 28-J.Taylor right guard to IND 35 for 3 yards (55-Y.Ngakoue; 48-J.Tavai). NE-33-A.Jennings was injured during the play.
(8:06) (Shotgun) 5-A.Richardson pass deep left intended for 14-A.Pierce INTERCEPTED by 0-C.Gonzalez at NE 48. 0-C.Gonzalez to NE 48 for no gain (14-A.Pierce).
(7:59) 38-R.Stevenson up the middle to 50 for 2 yards (44-Z.Franklin).
(7:21) 38-R.Stevenson left tackle to NE 47 for -3 yards (96-T.Bryan, 41-G.Stuard).
(6:43) (Shotgun) 10-D.Maye sacked at NE 45 for -2 yards (20-N.Cross).
(5:43) 17-B.Baringer punts 38 yards to IND 17, Center-49-J.Cardona. 6-A.Gould to IND 20 for 3 yards (16-S.Takitaki).
(5:34) (Shotgun) 5-A.Richardson pass short left to 11-M.Pittman to IND 29 for 9 yards (0-C.Gonzalez; 99-K.White). ** Injury Update: NE-33-A.Jennings has returned to the game.
(4:55) (Shotgun) 28-J.Taylor up the middle to IND 33 for 4 yards (33-A.Jennings; 48-J.Tavai).
(4:14) (Shotgun) 5-A.Richardson pass incomplete deep right to 14-A.Pierce [55-Y.Ngakoue].
(4:07) (Shotgun) 5-A.Richardson pass incomplete deep middle to 14-A.Pierce.
(4:02) (Shotgun) 5-A.Richardson pass short left to 86-W.Mallory to IND 40 for 7 yards (23-K.Dugger).
(3:33) (Shotgun) 5-A.Richardson pass short right to 81-M.Alie-Cox to NE 49 for 11 yards (21-J.Hawkins).
(2:46) (Shotgun) 5-A.Richardson pass incomplete deep middle to 14-A.Pierce (28-A.Austin).
(2:40) (Shotgun) 5-A.Richardson pass short middle to 11-M.Pittman to NE 41 for 8 yards (28-A.Austin).
(2:02) (Shotgun) 5-A.Richardson pass incomplete deep left to 10-A.Mitchell (25-M.Jones).
(1:57) (Shotgun) 5-A.Richardson left end ran ob at NE 35 for 6 yards (21-J.Hawkins).
(1:52) (Shotgun) 5-A.Richardson pass incomplete deep left to 83-K.Granson.
(1:47) (Shotgun) 28-J.Taylor right guard to NE 34 for 1 yard (90-C.Barmore).
(1:23) (No Huddle, Shotgun) 5-A.Richardson pass incomplete short right to 11-M.Pittman. PENALTY on NE-28-A.Austin, Defensive Pass Interference, 14 yards, enforced at NE 34 - No Play.
(1:18) (Shotgun) 5-A.Richardson pass short right to 11-M.Pittman to NE 12 for 8 yards (5-J.Peppers, 48-J.Tavai).
(:55) (No Huddle, Shotgun) 28-J.Taylor up the middle to NE 11 for 1 yard (99-K.White; 95-D.Ekuale).
(:32) (No Huddle, Shotgun) 28-J.Taylor up the middle to NE 8 for 3 yards (53-C.Elliss).
(:28) (Shotgun) 5-A.Richardson right end pushed ob at NE 2 for 6 yards (0-C.Gonzalez).
Timeout #1 by IND at 00:28.
(:24) (Shotgun) 5-A.Richardson left guard to NE 2 for no gain (5-J.Peppers; 92-D.Godchaux).
(:21) (Shotgun) 28-J.Taylor left end pushed ob at NE 3 for -1 yards (0-C.Gonzalez).
Timeout #2 by IND at 00:21.
(:17) (Shotgun) 5-A.Richardson pass short left to 14-A.Pierce for 3 yards, TOUCHDOWN.
Timeout #1 by NE at 00:17.
Timeout #3 by IND at 00:17.
TWO-POINT CONVERSION ATTEMPT. 5-A.Richardson rushes up the middle. ATTEMPT SUCCEEDS.
7-M.Gay kicks 65 yards from IND 35 to end zone, Touchback to the NE 30.
(:12) (Shotgun) 10-D.Maye pass incomplete deep middle to 85-H.Henry (45-E.Speed).
(:08) (Shotgun) 10-D.Maye pass short middle to 85-H.Henry to NE 41 for 11 yards (32-J.Blackmon).
(:04) (Shotgun) 10-D.Maye pass short middle to 85-H.Henry to 50 for 9 yards (44-Z.Franklin).
Timeout #2 by NE at 00:04.
(:01) 13-J.Slye 68 yard field goal is No Good, Short, Center-49-J.Cardona, Holder-17-B.Baringer.
Timeout #3 by NE at 00:01.
END GAME"

ind_ne_summary <- "Headline: Richardson throws for TD and runs for 2 with seconds left as Colts beat Patriots 25-24.
Summary: Matt Gay put the Colts in front 17-16 with a 25-yard field goal early in the third quarter. New England then drove the the Colts 7. Maye threw a pass intended for Henry but was ultimately intercepted. Indy punted, and the Patriots marched back into the red zone. Antonio Gibson ran it in, followed by a 2-point conversion pass from Maye to Kayshon Boutte that gave the Patriots a 24-17 lead with just over eight minutes remaining. At the end of the game, Indianapolis capitalized on a penalty to get into the red zone with just over a minute left. Then, facing fourth-and-goal on the 3, Richardson rolled out and hit Pierce to get Indy within a point. The Colts then went for 2 and got it. After the successful conversion, Maye connected with tight end Hunter Henry on two passes for 20 yards to advance the ball to midfield. The Patriots lined up from there for what would have been a long field goal. Slye's kick was on line but fell short of the crossbar.
Notable Performances: Richardson finished 12 of 24 for 109 yards, two touchdowns and two interceptions. Drake Maye finished 24 of 30 for 238 yards with a touchdown and an interception. Jonathan Taylor carried 25 times for 96 yards.
Injuries: None"

# Append game log and summary to training dataframe 
ind_ne <- as.data.frame(cbind(ind_ne_log, ind_ne_summary)) %>% rename(game_log = ind_ne_log, game_summary = ind_ne_summary)
training <- rbind(training, ind_ne)

car_lv_log <- "GAME
2-D.Carlson kicks 65 yards from LV 35 to CAR 0. 17-X.Legette to CAR 30 for 30 yards (43-K.Mauga; 27-S.Webb).
(14:53) (Shotgun) 14-A.Dalton pass short left to 19-A.Thielen pushed ob at CAR 34 for 4 yards (7-T.Moehrig).
(14:21) (Shotgun) 62-C.Zavala reported in as eligible. 30-C.Hubbard left guard to CAR 38 for 4 yards (41-R.Spillane; 59-L.Masterson).
(13:39) (Shotgun) 14-A.Dalton pass short left to 19-A.Thielen to CAR 43 for 5 yards (7-T.Moehrig).
(12:56) (Shotgun) 14-A.Dalton pass deep left to 5-Dio.Johnson ran ob at LV 40 for 17 yards.
(12:20) 30-C.Hubbard right tackle to LV 32 for 8 yards (18-J.Jones).
(11:40) (Shotgun) 30-C.Hubbard up the middle to LV 26 for 6 yards (95-J.Jenkins; 59-L.Masterson).
(10:57) (Shotgun) 14-A.Dalton pass deep middle to 82-T.Tremble to LV 6 for 20 yards (7-T.Moehrig).
(10:23) (No Huddle) 14-A.Dalton pass incomplete short left to 5-Dio.Johnson.
(10:20) (Shotgun) 14-A.Dalton pass short right to 30-C.Hubbard for 6 yards, TOUCHDOWN.
4-E.Pineiro extra point is GOOD, Center-44-J.Jansen, Holder-10-J.Hekker.
4-E.Pineiro kicks 65 yards from CAR 35 to end zone, Touchback to the LV 30.
(10:13) 3-Z.White left guard to LV 32 for 2 yards (93-L.Ray).
(9:32) 3-Z.White up the middle to LV 36 for 4 yards (13-T.Hill, 94-A.Robinson). LV-77-T.Munford was injured during the play.
(9:07) (Shotgun) 15-G.Minshew pass incomplete deep right to 16-J.Meyers.
(9:03) 6-A.Cole punts 55 yards to CAR 9, Center-50-J.Bobenmoyer. 3-R.Blackshear to CAR 16 for 7 yards (45-T.Eichenberg). PENALTY on LV-19-D.Turner, Player Out of Bounds on Kick, 5 yards, enforced at CAR 16.
(8:51) (Shotgun) 14-A.Dalton pass incomplete deep middle to 15-J.Mingo.
(8:46) (Shotgun) 14-A.Dalton pass short middle to 82-T.Tremble to CAR 25 for 4 yards (1-M.Epps).
(8:05) (Shotgun) PENALTY on LV-97-J.Robinson, Neutral Zone Infraction, 5 yards, enforced at CAR 25 - No Play.
(7:57) 30-C.Hubbard up the middle to CAR 43 for 13 yards (1-M.Epps).
(7:20) (Shotgun) 30-C.Hubbard up the middle to CAR 48 for 5 yards (69-A.Butler).
(6:43) (Shotgun) 30-C.Hubbard right guard to LV 49 for 3 yards (59-L.Masterson, 69-A.Butler).
(6:00) (No Huddle, Shotgun) 14-A.Dalton pass incomplete short left to 5-Dio.Johnson (0-J.Bennett).
(5:58) 10-J.Hekker punts 46 yards to LV 3, Center-44-J.Jansen, downed by CAR-32-L.Johnson.
(5:48) 3-Z.White up the middle to LV 6 for 3 yards (93-L.Ray, 94-A.Robinson).
(5:12) (Shotgun) 3-Z.White up the middle to LV 9 for 3 yards (25-X.Woods).
(4:31) (Shotgun) 15-G.Minshew pass short left to 22-A.Mattison to LV 20 for 11 yards (40-C.Harris).
(3:49) (Shotgun) 15-G.Minshew pass short right to 16-J.Meyers to LV 20 for no gain (2-M.Jackson).
(3:08) (Shotgun) 15-G.Minshew pass deep middle to 11-T.Tucker to CAR 26 for 54 yards (2-M.Jackson, 20-J.Fuller).
(2:32) (No Huddle) 22-A.Mattison right guard to CAR 24 for 2 yards (94-A.Robinson). PENALTY on CAR, Defensive Too Many Men on Field, 5 yards, enforced at CAR 26 - No Play.
(2:13) 3-Z.White left guard to CAR 12 for 9 yards (2-M.Jackson, 25-X.Woods).
(1:29) 3-Z.White left tackle to CAR 6 for 6 yards (93-L.Ray; 54-S.Thompson).
(1:03) (No Huddle) 15-G.Minshew pass incomplete short left to 87-M.Mayer.
(:59) (Shotgun) 15-G.Minshew scrambles right end ran ob at CAR 2 for 4 yards (75-D.Williams).
(:33) (No Huddle) 22-A.Mattison up the middle for 2 yards, TOUCHDOWN.
2-D.Carlson extra point is GOOD, Center-50-J.Bobenmoyer, Holder-6-A.Cole.
2-D.Carlson kicks 65 yards from LV 35 to CAR 0. 3-R.Blackshear to CAR 25 for 25 yards (34-T.Harper).
(:17) 30-C.Hubbard up the middle to CAR 28 for 3 yards (69-A.Butler; 41-R.Spillane).
END QUARTER 1
(15:00) (Shotgun) 30-C.Hubbard up the middle to CAR 36 for 8 yards (41-R.Spillane).
(14:22) 15-J.Mingo right end to CAR 38 for 2 yards (7-T.Moehrig).
(13:38) 14-A.Dalton sacked at CAR 32 for -6 yards (41-R.Spillane).
(12:54) (Shotgun) 14-A.Dalton pass deep middle to 5-Dio.Johnson to LV 45 for 23 yards (41-R.Spillane).
(12:07) 30-C.Hubbard left tackle to LV 45 for no gain (98-M.Crosby, 99-N.Silvera).
(11:24) (Shotgun) 14-A.Dalton pass short middle to 17-X.Legette pushed ob at LV 10 for 35 yards (1-M.Epps). Penalty on LV-9-T.Wilson, Defensive Offside, declined.
(10:58) 30-C.Hubbard right end to LV 10 for no gain (41-R.Spillane, 98-M.Crosby).
(10:14) (Shotgun) 14-A.Dalton pass short right to 30-C.Hubbard pushed ob at LV 5 for 5 yards (1-M.Epps).
(9:33) (Shotgun) 14-A.Dalton pass short right to 5-Dio.Johnson for 5 yards, TOUCHDOWN [9-T.Wilson].
4-E.Pineiro extra point is GOOD, Center-44-J.Jansen, Holder-10-J.Hekker.
4-E.Pineiro kicks 44 yards from CAR 35 to LV 21, short of landing zone. PENALTY on CAR-4-E.Pineiro, Kickoff Short of Landing Zone, placed at LV 40.
(9:28) 15-G.Minshew pass short right to 17-D.Adams to CAR 45 for 15 yards (8-J.Horn; 47-J.Jewell).
(8:53) (Shotgun) 3-Z.White right tackle to CAR 43 for 2 yards (47-J.Jewell).
(8:14) (Shotgun) 3-Z.White up the middle to CAR 42 for 1 yard (47-J.Jewell).
(7:33) (Shotgun) 22-A.Mattison up the middle to CAR 39 for 3 yards (92-J.Peevy).
(6:56) (Shotgun) 15-G.Minshew pass incomplete short left to 89-B.Bowers (2-M.Jackson).
(6:53) (Shotgun) 6-M.Sanders up the middle to CAR 45 for 6 yards (41-R.Spillane; 59-L.Masterson).
(6:12) 14-A.Dalton sacked at CAR 38 for -7 yards (sack split by 94-C.Wilkins and 49-C.Snowden).
(5:24) (Shotgun) 14-A.Dalton pass incomplete short middle to 19-A.Thielen.
(5:18) 10-J.Hekker punts 37 yards to LV 25, Center-44-J.Jansen, downed by CAR-53-C.Cherelus.
(5:08) (Shotgun) 15-G.Minshew pass incomplete short right to 17-D.Adams. PENALTY on CAR-8-J.Horn, Defensive Pass Interference, 15 yards, enforced at LV 25 - No Play.
(5:03) (Shotgun) 22-A.Mattison right guard to LV 42 for 2 yards (54-S.Thompson).
(4:24) (Shotgun) 15-G.Minshew pass short left to 17-D.Adams to LV 48 for 6 yards (56-T.Wallace).
(3:44) (Shotgun) 15-G.Minshew pass incomplete short right to 17-D.Adams (13-T.Hill).
(3:39) 6-A.Cole punts 47 yards to CAR 5, Center-50-J.Bobenmoyer, out of bounds.
(3:31) 6-M.Sanders up the middle to CAR 4 for -1 yards (1-M.Epps, 98-M.Crosby).
(3:04) (Shotgun) 14-A.Dalton pass short left to 15-J.Mingo to CAR 19 for 15 yards (39-N.Hobbs).
Timeout #1 by LV at 03:04.
(2:21) 14-A.Dalton pass incomplete deep right to 5-Dio.Johnson (18-J.Jones).
(2:14) (Shotgun) 14-A.Dalton pass incomplete short right to 19-A.Thielen (98-M.Crosby).
(2:11) (Shotgun) 14-A.Dalton pass short middle to 82-T.Tremble to CAR 24 for 5 yards (20-I.Pola-Mao).
(2:00) 10-J.Hekker punts 43 yards to LV 33, Center-44-J.Jansen, fair catch by 11-T.Tucker.
(1:54) (Shotgun) 15-G.Minshew pass incomplete short right. PENALTY on LV-8-A.Abdullah, Offensive Pass Interference, 10 yards, enforced at LV 33 - No Play.
(1:46) (Shotgun) 15-G.Minshew sacked at LV 20 for -3 yards (92-J.Peevy).
(1:38) (Shotgun) 15-G.Minshew pass incomplete short right [7-J.Clowney].
Timeout #1 by CAR at 01:38.
(1:31) (Shotgun) 15-G.Minshew pass short left to 11-T.Tucker to LV 26 for 6 yards (13-T.Hill, 92-J.Peevy).
(1:23) 6-A.Cole punts 58 yards to CAR 16, Center-50-J.Bobenmoyer. 3-R.Blackshear pushed ob at CAR 32 for 16 yards (45-T.Eichenberg).
Timeout #2 by CAR at 01:23.
(1:12) (Shotgun) 14-A.Dalton pass short right to 6-M.Sanders to CAR 34 for 2 yards (18-J.Jones).
(:47) (No Huddle, Shotgun) 14-A.Dalton pass incomplete short left to 5-Dio.Johnson (97-J.Robinson).
(:44) (Shotgun) 14-A.Dalton pass short middle to 5-Dio.Johnson ran ob at LV 31 for 35 yards (18-J.Jones; 0-J.Bennett).
(:33) (Shotgun) 14-A.Dalton pass deep right to 19-A.Thielen for 31 yards, TOUCHDOWN. CAR-19-A.Thielen was injured during the play.
4-E.Pineiro extra point is GOOD, Center-44-J.Jansen, Holder-10-J.Hekker.
4-E.Pineiro kicks 65 yards from CAR 35 to end zone, Touchback to the LV 30.
(:28) (Shotgun) 15-G.Minshew pass short left to 89-B.Bowers to CAR 49 for 21 yards (21-N.Scott).
(:19) (Shotgun) 15-G.Minshew pass incomplete short middle to 89-B.Bowers. LV-89-B.Bowers was injured during the play. PENALTY on CAR-25-X.Woods, Defensive Pass Interference, 6 yards, enforced at CAR 49 - No Play.
Timeout #2 by LV at 00:19.
Timeout #3 by CAR at 00:19.
(:15) (Shotgun) 15-G.Minshew pass short right to 8-A.Abdullah pushed ob at CAR 39 for 4 yards (20-J.Fuller; 25-X.Woods).
(:09) (Shotgun) 15-G.Minshew pass incomplete short left to 17-D.Adams (47-J.Jewell).
(:04) 2-D.Carlson 57 yard field goal is No Good, Wide Left, Center-50-J.Bobenmoyer, Holder-6-A.Cole.
END QUARTER 2
4-E.Pineiro kicks 64 yards from CAR 35 to LV 1. 19-D.Turner to LV 27 for 26 yards (56-T.Wallace). CAR-32-L.Johnson was injured during the play.
(14:54) 3-Z.White right tackle to LV 29 for 2 yards (54-S.Thompson). ** Injury Update: LV-89-B.Bowers has returned to the game.
(14:18) (Shotgun) 3-Z.White up the middle to LV 31 for 2 yards (94-A.Robinson; 7-J.Clowney).
(13:39) (Shotgun) 15-G.Minshew pass incomplete deep right to 11-T.Tucker.
(13:33) 6-A.Cole punts 55 yards to CAR 14, Center-50-J.Bobenmoyer. 3-R.Blackshear to CAR 24 for 10 yards (50-J.Bobenmoyer). PENALTY on LV-49-C.Snowden, Offensive Holding, 10 yards, enforced at CAR 24.
(13:21) (Shotgun) 14-A.Dalton pass short middle to 5-Di.Johnson to 50 for 16 yards (18-J.Jones).
(12:35) (Shotgun) 30-C.Hubbard right guard to LV 45 for 5 yards (18-J.Jones).
(11:57) (Shotgun) 14-A.Dalton pass short left to 30-C.Hubbard pushed ob at LV 33 for 12 yards (1-M.Epps).
(10:44) (Shotgun) 14-A.Dalton pass incomplete short right to 0-J.Sanders (39-N.Hobbs).
(10:40) (Shotgun) 14-A.Dalton pass short right to 15-J.Mingo pushed ob at LV 25 for 6 yards (39-N.Hobbs).
(11:20) (Shotgun) 6-M.Sanders up the middle to LV 31 for 2 yards (39-N.Hobbs; 59-L.Masterson).
(10:03) 4-E.Pineiro 43 yard field goal is GOOD, Center-44-J.Jansen, Holder-10-J.Hekker.
4-E.Pineiro kicks 64 yards from CAR 35 to LV 1. 8-A.Abdullah to LV 28 for 27 yards (40-C.Harris).
(9:53) (Shotgun) 15-G.Minshew pass short middle to 11-T.Tucker to LV 32 for 4 yards (47-J.Jewell).
(9:27) (No Huddle, Shotgun) 15-G.Minshew sacked at LV 27 for -5 yards (93-L.Ray).
(8:46) (Shotgun) 15-G.Minshew scrambles left tackle to LV 37 for 10 yards (8-J.Horn).
(8:17) (No Huddle) 15-G.Minshew up the middle to LV 37 for no gain (40-C.Harris).
(8:14) (Shotgun) 14-A.Dalton pass short right to 17-X.Legette to LV 30 for 7 yards (18-J.Jones).
(7:34) (Shotgun) 14-A.Dalton pass short left to 30-C.Hubbard pushed ob at LV 18 for 12 yards (59-L.Masterson).
(6:54) 14-A.Dalton pass incomplete short right to 17-X.Legette.
(6:49) (Shotgun) 14-A.Dalton pass incomplete short left to 82-T.Tremble. PENALTY on CAR-79-I.Ekwonu, Illegal Use of Hands, 10 yards, enforced at LV 18 - No Play.
(6:45) (Shotgun) 14-A.Dalton scrambles up the middle to LV 15 for 13 yards (41-R.Spillane). PENALTY on CAR-63-A.Corbett, Offensive Holding, 10 yards, enforced at LV 28 - No Play.
(6:22) (Shotgun) 14-A.Dalton pass short middle to 5-Di.Johnson to LV 28 for 10 yards (59-L.Masterson).
(5:41) (Shotgun) 14-A.Dalton pass short left to 6-M.Sanders to LV 17 for 11 yards (1-M.Epps).
(4:50) 4-E.Pineiro 35 yard field goal is GOOD, Center-44-J.Jansen, Holder-10-J.Hekker.
4-E.Pineiro kicks 65 yards from CAR 35 to end zone, Touchback to the LV 30.
(4:46) (Shotgun) 15-G.Minshew pass incomplete short right to 11-T.Tucker (2-M.Jackson).
(4:41) (Shotgun) 15-G.Minshew pass short right to 17-D.Adams to LV 34 for 4 yards (54-S.Thompson; 13-T.Hill).
(4:03) (Shotgun) 15-G.Minshew pass short right to 22-A.Mattison to LV 38 for 4 yards (54-S.Thompson).
(3:32) 6-A.Cole punts 46 yards to CAR 16, Center-50-J.Bobenmoyer, fair catch by 3-R.Blackshear.
(3:25) (Shotgun) 14-A.Dalton pass short middle to 5-Di.Johnson to CAR 27 for 11 yards (1-M.Epps).
(2:45) 62-C.Zavala reported in as eligible. 30-C.Hubbard up the middle to CAR 29 for 2 yards (1-M.Epps).
(2:01) (Shotgun) 14-A.Dalton pass short right to 30-C.Hubbard pushed ob at CAR 49 for 20 yards (18-J.Jones).
(1:23) (Shotgun) 14-A.Dalton pass short left to 5-Di.Johnson to LV 46 for 5 yards (1-M.Epps). LV-1-M.Epps was injured during the play.
(:59) (Shotgun) 30-C.Hubbard left guard to LV 40 for 6 yards (41-R.Spillane, 0-J.Bennett).
(:21) (Shotgun) 30-C.Hubbard right guard to LV 35 for 5 yards (39-N.Hobbs).
END QUARTER 3
(15:00) (Shotgun) 30-C.Hubbard right end ran ob at LV 21 for 14 yards (41-R.Spillane).
(14:31) 30-C.Hubbard left tackle to LV 16 for 5 yards (7-T.Moehrig, 20-I.Pola-Mao).
(13:49) 14-A.Dalton pass incomplete deep left to 5-Di.Johnson.
(13:46) (Shotgun) 14-A.Dalton pass incomplete deep left to 17-X.Legette. PENALTY on LV-0-J.Bennett, Defensive Pass Interference, 15 yards, enforced at LV 16 - No Play.
(13:40) (Shotgun) 14-A.Dalton pass incomplete short middle to 5-Di.Johnson [94-C.Wilkins].
(13:37) (Shotgun) 6-M.Sanders right guard for 1 yard, TOUCHDOWN.
TWO-POINT CONVERSION ATTEMPT. 14-A.Dalton pass to 17-X.Legette is incomplete. ATTEMPT FAILS.
4-E.Pineiro kicks 65 yards from CAR 35 to end zone, Touchback to the LV 30.
(13:33) (Shotgun) 15-G.Minshew pass short left to 11-T.Tucker to LV 41 for 11 yards (21-N.Scott).
(13:06) (No Huddle, Shotgun) 15-G.Minshew pass short left to 16-J.Meyers to LV 46 for 5 yards (54-S.Thompson).
(12:41) (No Huddle, Shotgun) 15-G.Minshew pass short left to 87-M.Mayer pushed ob at CAR 47 for 7 yards (21-N.Scott).
(12:09) (Shotgun) 15-G.Minshew pass incomplete short left to 17-D.Adams (92-J.Peevy).
(12:04) (Shotgun) 15-G.Minshew pass short left to 22-A.Mattison to CAR 25 for 22 yards (47-J.Jewell; 25-X.Woods) [75-D.Williams].
(11:26) (No Huddle, Shotgun) 15-G.Minshew pass short middle to 89-B.Bowers to CAR 13 for 12 yards (21-N.Scott).
(11:03) (No Huddle, Shotgun) 15-G.Minshew pass short left to 16-J.Meyers for 13 yards, TOUCHDOWN.
TWO-POINT CONVERSION ATTEMPT. 15-G.Minshew pass to 16-J.Meyers is complete. ATTEMPT SUCCEEDS.
2-D.Carlson kicks 65 yards from LV 35 to end zone, Touchback to the CAR 30.
(10:56) 70-B.Christensen reported in as eligible. 6-M.Sanders up the middle to CAR 32 for 2 yards (99-N.Silvera, 94-C.Wilkins).
(10:11) 70-B.Christensen reported in as eligible. 6-M.Sanders right guard to CAR 38 for 6 yards (99-N.Silvera; 49-C.Snowden).
(9:28) (Shotgun) PENALTY on CAR-62-C.Zavala, False Start, 5 yards, enforced at CAR 38 - No Play.
(9:28) (Shotgun) 14-A.Dalton pass short left to 15-J.Mingo to CAR 30 for -3 yards (39-N.Hobbs).
(9:22) 10-J.Hekker punts 51 yards to LV 19, Center-44-J.Jansen. 11-T.Tucker to LV 20 for 1 yard (21-N.Scott; 49-J.Rhattigan). PENALTY on LV-20-I.Pola-Mao, Offensive Holding, 9 yards, enforced at LV 19.
Timeout #1 by LV at 09:22.
(9:11) (Shotgun) 15-G.Minshew pass short right to 17-D.Adams to LV 25 for 15 yards (2-M.Jackson).
(8:45) (No Huddle, Shotgun) 15-G.Minshew pass short right intended for 17-D.Adams INTERCEPTED by 2-M.Jackson at LV 37. 2-M.Jackson to LV 36 for 1 yard (17-D.Adams).
(8:34) 30-C.Hubbard left end to LV 30 for 6 yards (41-R.Spillane, 95-J.Jenkins).
(7:51) 70-B.Christensen reported in as eligible. 30-C.Hubbard up the middle to LV 25 for 5 yards (95-J.Jenkins, 99-N.Silvera).
(7:07) 70-B.Christensen reported in as eligible. 30-C.Hubbard up the middle to LV 15 for 10 yards (7-T.Moehrig).
(6:23) 70-B.Christensen reported in as eligible. 30-C.Hubbard right guard to LV 11 for 4 yards (95-J.Jenkins; 41-R.Spillane).
(5:38) 70-B.Christensen reported in as eligible. 30-C.Hubbard left guard to LV 9 for 2 yards (9-T.Wilson).
(4:55) 70-B.Christensen reported in as eligible. 6-M.Sanders left guard to LV 8 for 1 yard (9-T.Wilson, 96-J.Laulu).
(4:50) 4-E.Pineiro 26 yard field goal is GOOD, Center-44-J.Jansen, Holder-10-J.Hekker.
Timeout #2 by LV at 04:50.
4-E.Pineiro kicks 65 yards from CAR 35 to end zone, Touchback to the LV 30.
(4:47) (Shotgun) 12-A.O'Connell pass short right to 8-A.Abdullah pushed ob at LV 39 for 9 yards (22-J.Robinson).
(4:40) (No Huddle, Shotgun) 12-A.O'Connell sacked at LV 27 for -12 yards (7-J.Clowney).
(3:58) (Shotgun) 12-A.O'Connell pass short left to 89-B.Bowers to LV 35 for 8 yards (2-M.Jackson).
(3:26) (No Huddle, Shotgun) 12-A.O'Connell pass short middle to 16-J.Meyers to CAR 49 for 16 yards (2-M.Jackson).
(2:59) (No Huddle, Shotgun) 12-A.O'Connell pass incomplete deep left to 16-J.Meyers.
(2:55) (Shotgun) 12-A.O'Connell pass short left to 11-T.Tucker to CAR 43 for 6 yards (52-Dj.Johnson).
(2:24) (No Huddle, Shotgun) 12-A.O'Connell pass short left to 11-T.Tucker to CAR 36 for 7 yards (2-M.Jackson, 21-N.Scott).
(2:01) (No Huddle, Shotgun) 12-A.O'Connell pass incomplete short middle to 87-M.Mayer.
(1:55) (Shotgun) 12-A.O'Connell pass short left to 16-J.Meyers to CAR 23 for 13 yards (2-M.Jackson).
(1:32) (No Huddle, Shotgun) 12-A.O'Connell pass short left to 16-J.Meyers to CAR 17 for 6 yards (2-M.Jackson).
(1:12) (No Huddle, Shotgun) 12-A.O'Connell pass short left to 16-J.Meyers ran ob at CAR 8 for 9 yards.
(1:08) (Shotgun) 12-A.O'Connell pass incomplete short right to 17-D.Adams (47-J.Jewell).
Timeout #1 by CAR at 01:08.
(1:03) (Shotgun) 12-A.O'Connell pass short right to 11-T.Tucker for 8 yards, TOUCHDOWN [54-S.Thompson].
2-D.Carlson extra point is GOOD, Center-50-J.Bobenmoyer, Holder-6-A.Cole.
2-D.Carlson kicks onside 12 yards from LV 35 to LV 47. 0-J.Sanders (didn't try to advance) to LV 47 for no gain.
Timeout #2 by CAR at 00:56.
(:55) 14-A.Dalton kneels to LV 48 for -1 yards.
(:13) 14-A.Dalton kneels to LV 49 for -1 yards.
END GAME"

car_lv_summary <- "Headline: Andy Dalton passes for 319 yards and 3 TDs to lead Panthers past Raiders 36-22.
Summary: The Raiders' defense had no answers for Dalton, Hubbard or Johnson. Carolina took advantage right away, scoring touchdowns on two of its first three drives to take a 14-7 lead and continued rolling. They were up 27-7 against the Raiders when the fourth quarter began.
Notable Performances: Andy Dalton passed for 319 yards and 3 TDs. Chuba Hubbard rushed for 114 yards and caught five passes for 55 yards and a touchdown. Diontae Johnson had eight receptions for 122 yards and a TD. Gardner Minshew completed 18 of 28 passes for 214 yards with a touchdown and interception.
Injuries Panthers: WR Adam Thielen before halftime. Raiders: RT Thayer Munford left the game in the first quarter and S Marcus Epps went down in the third.
"

# Append game log and summary to training dataframe 
car_lv <- as.data.frame(cbind(car_lv_log, car_lv_summary)) %>% rename(game_log = car_lv_log, game_summary = car_lv_summary)
training <- rbind(training, car_lv)

pit_lv_log <- "GAME
2-D.Carlson kicks 62 yards from LV 35 to PIT 3. 30-J.Warren to PIT 29 for 26 yards (34-T.Harper, 23-D.Laube).
(14:54) (Shotgun) 2-J.Fields pass short middle to 22-N.Harris to PIT 40 for 11 yards (7-T.Moehrig).
(14:22) (No Huddle) 22-N.Harris up the middle to LV 47 for 13 yards (5-D.Deablo, 20-I.Pola-Mao).
(13:48) (No Huddle) 22-N.Harris right tackle to LV 46 for 1 yard (49-C.Snowden, 69-A.Butler).
(13:22) (No Huddle, Shotgun) 2-J.Fields pass short left to 88-P.Freiermuth to LV 38 for 8 yards (41-R.Spillane, 39-N.Hobbs).
(12:42) 74-S.Anderson reported in as eligible. 30-J.Warren left end pushed ob at LV 37 for 1 yard (49-C.Snowden; 39-N.Hobbs).
(12:07) 30-J.Warren right end to LV 39 for -2 yards (7-T.Moehrig).
(11:32) (Shotgun) 2-J.Fields pass short right to 30-J.Warren to LV 42 for -3 yards (5-D.Deablo, 91-M.Butler).
(11:00) (No Huddle, Shotgun) 2-J.Fields pass short right to 30-J.Warren to LV 34 for 8 yards (20-I.Pola-Mao).
(10:24) 9-C.Boswell 52 yard field goal is GOOD, Center-46-C.Kuntz, Holder-8-C.Waitman.
9-C.Boswell kicks 65 yards from PIT 35 to end zone, Touchback to the LV 30.
(10:19) (Shotgun) 12-A.O'Connell pass short left to 84-H.Bryant to LV 38 for 8 yards (6-P.Queen; 49-J.Moon).
(9:45) 22-A.Mattison left guard to LV 42 for 4 yards (99-L.Ogunjobi; 6-P.Queen).
(9:03) (Shotgun) 22-A.Mattison up the middle to LV 49 for 7 yards (90-T.Watt, 50-E.Roberts).
(8:25) (Shotgun) 22-A.Mattison up the middle to PIT 48 for 3 yards (6-P.Queen; 97-Ca.Heyward).
(7:46) 12-A.O'Connell pass short middle to 89-B.Bowers to PIT 38 for 10 yards (24-J.Porter) [50-E.Roberts].
(7:05) (Shotgun) 12-A.O'Connell pass short left to 89-B.Bowers to PIT 30 for 8 yards (25-D.Elliott).
(6:28) 22-A.Mattison left end pushed ob at PIT 21 for 9 yards (50-E.Roberts).
(5:51) 75-A.Peat reported in as eligible. 12-A.O'Connell pass short right to 22-A.Mattison pushed ob at PIT 2 for 19 yards (39-M.Fitzpatrick).
(5:07) 22-A.Mattison right guard to PIT 3 for -1 yards (50-E.Roberts).
(4:28) (Shotgun) 22-A.Mattison up the middle for 3 yards, TOUCHDOWN.
2-D.Carlson extra point is GOOD, Center-50-J.Bobenmoyer, Holder-6-A.Cole.
2-D.Carlson kicks 65 yards from LV 35 to end zone, Touchback to the PIT 30.
(4:24) PENALTY on PIT-83-Co.Heyward, False Start, 5 yards, enforced at PIT 30 - No Play.
(4:24) 22-N.Harris up the middle to PIT 20 for -5 yards (7-T.Moehrig, 96-J.Laulu).
(3:47) (Shotgun) 2-J.Fields pass short middle to 88-P.Freiermuth to PIT 28 for 8 yards (41-R.Spillane, 5-D.Deablo).
(3:02) (Shotgun) 2-J.Fields pass incomplete short right to 14-G.Pickens (18-J.Jones).
(2:57) 8-C.Waitman punts 47 yards to LV 25, Center-46-C.Kuntz. 8-A.Abdullah pushed ob at LV 25 for no gain (38-T.Edmunds).
(2:48) (Shotgun) 12-A.O'Connell pass short right to 8-A.Abdullah to LV 24 for -1 yards (6-P.Queen).
(2:05) 12-A.O'Connell pass incomplete short middle to 84-H.Bryant (95-K.Benton).
(2:01) (Shotgun) 8-A.Abdullah up the middle to LV 31 for 7 yards (38-T.Edmunds).
(1:18) 6-A.Cole punts 43 yards to PIT 26, Center-50-J.Bobenmoyer, out of bounds.
(1:12) (Shotgun) 2-J.Fields pass incomplete deep left to 14-G.Pickens (0-J.Bennett).
(1:07) (Shotgun) 2-J.Fields scrambles up the middle to PIT 40 for 14 yards (41-R.Spillane).
(:32) 30-J.Warren up the middle to PIT 42 for 2 yards (41-R.Spillane, 39-N.Hobbs).
END QUARTER 1
(15:00) (Shotgun) 2-J.Fields scrambles left end ran ob at LV 49 for 9 yards (44-K.Chaisson). PENALTY on PIT-77-B.Jones, Offensive Holding, 10 yards, enforced at PIT 42 - No Play.
(14:42) (No Huddle, Shotgun) 2-J.Fields pass short left to 14-G.Pickens pushed ob at PIT 47 for 15 yards (0-J.Bennett).
(14:02) (Shotgun) 2-J.Fields pass short right to 14-G.Pickens pushed ob at LV 46 for 7 yards (18-J.Jones).
(13:19) 22-N.Harris left guard to LV 31 for 15 yards (7-T.Moehrig, 18-J.Jones).
(12:34) (Shotgun) 2-J.Fields pass incomplete deep left to 14-G.Pickens.
(12:29) (Shotgun) 2-J.Fields pass incomplete short left to 88-P.Freiermuth.
(12:22) (Shotgun) 2-J.Fields pass incomplete deep right to 14-G.Pickens.
(12:17) 9-C.Boswell 49 yard field goal is GOOD, Center-46-C.Kuntz, Holder-8-C.Waitman.
9-C.Boswell kicks 66 yards from PIT 35 to LV -1. 8-A.Abdullah to LV 30 for 31 yards (49-J.Moon).
(12:05) (Shotgun) 12-A.O'Connell pass incomplete short right.
(11:57) (Shotgun) 12-A.O'Connell pass short right to 89-B.Bowers to LV 37 for 7 yards (50-E.Roberts).
(11:13) (Shotgun) 12-A.O'Connell pass short middle to 84-H.Bryant to LV 39 for 2 yards (25-D.Elliott).
(10:33) 6-A.Cole punts 61 yards to end zone, Center-50-J.Bobenmoyer, Touchback.
(10:23) 2-J.Fields pass short left to 83-Co.Heyward to PIT 24 for 4 yards (49-C.Snowden; 39-N.Hobbs).
(9:43) (Shotgun) 22-N.Harris right tackle to PIT 29 for 5 yards (20-I.Pola-Mao). PENALTY on PIT-80-D.Washington, Offensive Holding, 10 yards, enforced at PIT 24 - No Play.
(9:23) (Shotgun) 2-J.Fields pass short middle to 22-N.Harris to PIT 19 for 5 yards (69-A.Butler).
(8:38) (Shotgun) 2-J.Fields pass deep left to 19-C.Austin to PIT 39 for 20 yards (39-N.Hobbs).
(7:55) (Shotgun) 30-J.Warren up the middle to PIT 43 for 4 yards (69-A.Butler). PENALTY on PIT-73-I.Seumalo, Offensive Holding, 10 yards, enforced at PIT 39 - No Play.
(7:28) (Shotgun) 30-J.Warren left tackle to PIT 36 for 7 yards (7-T.Moehrig).
(6:54) (No Huddle, Shotgun) 2-J.Fields up the middle to LV 46 for 18 yards (20-I.Pola-Mao).
(6:09) (Shotgun) 2-J.Fields pass incomplete deep right to 19-C.Austin [98-M.Crosby].
(6:04) 2-J.Fields sacked at PIT 41 for -13 yards (5-D.Deablo).
(5:18) (Shotgun) PENALTY on PIT, Delay of Game, 5 yards, enforced at PIT 41 - No Play.
(4:53) (Shotgun) 2-J.Fields pass incomplete short left to 19-C.Austin (41-R.Spillane).
(4:49) 8-C.Waitman punts 47 yards to LV 17, Center-46-C.Kuntz. 8-A.Abdullah to LV 16 for -1 yards (28-M.Killebrew).
(4:37) 22-A.Mattison left end to LV 13 for -3 yards (90-T.Watt, 6-P.Queen).
(3:53) (Shotgun) 12-A.O'Connell pass short left to 84-H.Bryant pushed ob at LV 27 for 14 yards (39-M.Fitzpatrick). PIT-39-M.Fitzpatrick was injured during the play.
(3:16) (Shotgun) 22-A.Mattison up the middle to LV 30 for 3 yards (25-D.Elliott).
(2:40) 23-D.Laube right end to LV 28 for -2 yards (90-T.Watt). FUMBLES (90-T.Watt), RECOVERED by PIT-95-K.Benton at LV 30.
(2:32) (Shotgun) 22-N.Harris right guard to LV 27 for 3 yards (95-J.Jenkins; 91-M.Butler).
(2:00) (Shotgun) 22-N.Harris up the middle to LV 24 for 3 yards (69-A.Butler, 41-R.Spillane).
(1:19) (Shotgun) 2-J.Fields pass short middle intended for 14-G.Pickens INTERCEPTED by 5-D.Deablo at LV 16. 5-D.Deablo to LV 17 for 1 yard (80-D.Washington; 14-G.Pickens). PENALTY on LV-91-M.Butler, Roughing the Passer, 12 yards, enforced at LV 24 - No Play.
(1:11) (Shotgun) 2-J.Fields scrambles left end pushed ob at LV 5 for 7 yards (41-R.Spillane).
(1:02) (Shotgun) 2-J.Fields left end to LV 4 for 1 yard (39-N.Hobbs).
(:55) (Shotgun) 22-N.Harris up the middle to LV 3 for 1 yard (95-J.Jenkins; 69-A.Butler).
Timeout #1 by LV at 00:55.
(:40) 74-S.Anderson reported in as eligible. 2-J.Fields scrambles left end for 3 yards, TOUCHDOWN.
Timeout #2 by LV at 00:40.
TWO-POINT CONVERSION ATTEMPT. 2-J.Fields pass to 83-Co.Heyward is incomplete. ATTEMPT FAILS.
9-C.Boswell kicks 65 yards from PIT 35 to end zone, Touchback to the LV 30.
(:34) (Shotgun) 12-A.O'Connell pass short left to 81-A.Bachman to LV 41 for 11 yards (24-J.Porter). ** Injury Update: PIT-39-M.Fitzpatrick has returned to the game.
(:18) (No Huddle, Shotgun) 12-A.O'Connell pass short middle to 19-D.Turner to LV 48 for 7 yards (6-P.Queen).
(:12) (Shotgun) 12-A.O'Connell pass incomplete deep left to 11-T.Tucker.
Timeout #3 by LV at 00:12.
(:07) (Shotgun) 12-A.O'Connell pass incomplete short left to 8-A.Abdullah.
(:04) (Shotgun) 12-A.O'Connell pass incomplete deep left.
END QUARTER 2
9-C.Boswell kicks 65 yards from PIT 35 to end zone, Touchback to the LV 30.
(15:00) 22-A.Mattison left guard to LV 29 for -1 yards (90-T.Watt).
(14:20) (Shotgun) 12-A.O'Connell pass short left to 89-B.Bowers to LV 38 for 9 yards (25-D.Elliott).
(13:37) (Shotgun) 12-A.O'Connell pass short left to 8-A.Abdullah to LV 41 for 3 yards (24-J.Porter).
(12:57) (Shotgun) 12-A.O'Connell pass deep middle to 89-B.Bowers to PIT 41 for 18 yards (39-M.Fitzpatrick) [90-T.Watt]. PENALTY on LV-68-A.James, Offensive Holding, 10 yards, enforced at LV 41 - No Play.
(12:31) (Shotgun) 22-A.Mattison up the middle to LV 33 for 2 yards (41-P.Wilson, 6-P.Queen).
(11:50) 22-A.Mattison up the middle to LV 34 for 1 yard (97-Ca.Heyward, 95-K.Benton).
(11:11) (Shotgun) 12-A.O'Connell pass incomplete short left to 8-A.Abdullah.
(11:07) 6-A.Cole punt is BLOCKED by 49-J.Moon, Center-50-J.Bobenmoyer, recovered by LV-29-C.Smith at LV 13. 29-C.Smith to LV 9 for -4 yards (31-B.Bishop).
(10:58) (Shotgun) 22-N.Harris left tackle to LV 6 for 3 yards (39-N.Hobbs, 91-M.Butler).
(10:20) (Shotgun) 2-J.Fields FUMBLES (Aborted) at LV 13, touched at LV 14, recovered by PIT-30-J.Warren at LV 15.
(9:31) (Shotgun) 2-J.Fields scrambles right end to LV 14 for 1 yard. 2-J.Fields pass short middle to 88-P.Freiermuth for 14 yards, TOUCHDOWN NULLIFIED by Penalty. PENALTY on PIT-2-J.Fields, Illegal Forward Pass, 5 yards, enforced at LV 14.
(9:24) 9-C.Boswell 37 yard field goal is GOOD, Center-46-C.Kuntz, Holder-8-C.Waitman.
9-C.Boswell kicks 65 yards from PIT 35 to end zone, Touchback to the LV 30.
(9:20) (Shotgun) 12-A.O'Connell pass short right to 89-B.Bowers to LV 26 for -4 yards (31-B.Bishop). ** Injury Update: PIT-39-M.Fitzpatrick has returned to the game.
(8:41) (Shotgun) 12-A.O'Connell pass short left to 22-A.Mattison to LV 34 for 8 yards (6-P.Queen).
(7:54) (Shotgun) 12-A.O'Connell pass incomplete short middle to 84-H.Bryant.
(7:48) 6-A.Cole punts 66 yards to end zone, Center-50-J.Bobenmoyer, Touchback.
(7:40) 2-J.Fields pass incomplete short left [98-M.Crosby].
(7:32) (No Huddle) 22-N.Harris right guard to PIT 46 for 26 yards (20-I.Pola-Mao).
(6:51) (No Huddle) 22-N.Harris left tackle to PIT 47 for 1 yard (41-R.Spillane; 5-D.Deablo).
(6:14) (No Huddle) 2-J.Fields sacked at PIT 38 for -9 yards (44-K.Chaisson).
(5:29) (Shotgun) 2-J.Fields pass short left to 30-J.Warren to PIT 44 for 6 yards (20-I.Pola-Mao). PENALTY on LV-44-K.Chaisson, Roughing the Passer, 15 yards, enforced at PIT 44.
(5:09) (Shotgun) 22-N.Harris left guard to LV 36 for 5 yards (69-A.Butler, 5-D.Deablo). PIT-54-Z.Frazier was injured during the play.
(4:33) 22-N.Harris left end for 36 yards, TOUCHDOWN.
9-C.Boswell extra point is GOOD, Center-46-C.Kuntz, Holder-8-C.Waitman.
9-C.Boswell kicks 65 yards from PIT 35 to end zone, Touchback to the LV 30.
(4:21) (Shotgun) 22-A.Mattison left guard to LV 32 for 2 yards (97-Ca.Heyward, 99-L.Ogunjobi).
(3:44) (Shotgun) 12-A.O'Connell pass deep left to 19-D.Turner to PIT 38 for 30 yards (39-M.Fitzpatrick; 24-J.Porter). LV-19-D.Turner was injured during the play.
(3:01) (Shotgun) 12-A.O'Connell pass short right to 81-A.Bachman to PIT 36 for 2 yards (26-D.Jackson).
(2:21) (Shotgun) 12-A.O'Connell pass short right to 8-A.Abdullah to PIT 24 for 12 yards (41-P.Wilson).
(1:39) (Shotgun) 8-A.Abdullah up the middle to PIT 17 for 7 yards (41-P.Wilson).
(:55) (Shotgun) 12-A.O'Connell pass short right to 83-K.Wilkerson pushed ob at PIT 8 for 9 yards (31-B.Bishop).
(:32) (No Huddle, Shotgun) 22-A.Mattison right guard to PIT 6 for 2 yards (53-E.Leota, 50-E.Roberts).
(:01) (Shotgun) 12-A.O'Connell pass short right to 22-A.Mattison for 6 yards, TOUCHDOWN NULLIFIED by Penalty. PENALTY on LV-58-J.Powers-Johnson, Ineligible Downfield Pass, 5 yards, enforced at PIT 6 - No Play.
END QUARTER 3
(15:00) (Shotgun) 8-A.Abdullah up the middle to PIT 1 for 10 yards (25-D.Elliott). ** Injury Update: LV-19-D.Turner has returned to the game.
(14:30) (No Huddle, Shotgun) 8-A.Abdullah right tackle to PIT 2 for -1 yards (90-T.Watt). FUMBLES (90-T.Watt), RECOVERED by PIT-25-D.Elliott at PIT 1. 25-D.Elliott to PIT 11 for 10 yards (12-A.O'Connell; 58-J.Powers-Johnson).
(14:21) 30-J.Warren left guard to PIT 12 for 1 yard (95-J.Jenkins, 49-C.Snowden).
(13:41) (Shotgun) 2-J.Fields pass short right to 80-D.Washington to PIT 21 for 9 yards (39-N.Hobbs, 96-J.Laulu).
(12:54) (No Huddle, Shotgun) 30-J.Warren right guard to PIT 19 for -2 yards (7-T.Moehrig).
(12:16) 2-J.Fields scrambles left tackle to PIT 29 for 10 yards (39-N.Hobbs; 41-R.Spillane).
(11:32) (Shotgun) 2-J.Fields pass deep middle to 19-C.Austin to PIT 45 for 16 yards (7-T.Moehrig).
(10:48) 22-N.Harris right tackle to LV 48 for 7 yards (95-J.Jenkins; 7-T.Moehrig).
(10:15) (No Huddle) 22-N.Harris right tackle to PIT 49 for -3 yards (98-M.Crosby).
(9:29) (Shotgun) PENALTY on PIT, Delay of Game, 5 yards, enforced at PIT 49 - No Play.
(9:29) (Shotgun) 2-J.Fields pass incomplete short left to 19-C.Austin.
(9:25) 8-C.Waitman punts 43 yards to LV 13, Center-46-C.Kuntz. 8-A.Abdullah MUFFS catch, and recovers at LV 13.
(9:16) (Shotgun) 12-A.O'Connell sacked at LV 4 for -9 yards (97-Ca.Heyward).
(8:37) (Shotgun) 12-A.O'Connell pass incomplete short right to 11-T.Tucker [97-Ca.Heyward].
(8:32) (Shotgun) 12-A.O'Connell pass deep right intended for 89-B.Bowers INTERCEPTED by 26-D.Jackson at LV 31. 26-D.Jackson to LV 7 for 24 yards (22-A.Mattison; 11-T.Tucker).
(8:21) 2-J.Fields left end for 7 yards, TOUCHDOWN.
9-C.Boswell extra point is GOOD, Center-46-C.Kuntz, Holder-8-C.Waitman.
9-C.Boswell kicks 65 yards from PIT 35 to end zone, Touchback to the LV 30.
(8:16) (Shotgun) 12-A.O'Connell pass short middle to 89-B.Bowers to LV 48 for 18 yards (6-P.Queen, 41-P.Wilson).
(7:46) (No Huddle, Shotgun) 12-A.O'Connell pass short right to 22-A.Mattison to LV 47 for -1 yards (41-P.Wilson, 6-P.Queen).
(7:19) (No Huddle, Shotgun) 12-A.O'Connell pass short right to 89-B.Bowers to PIT 43 for 10 yards (41-P.Wilson).
(6:54) (No Huddle, Shotgun) 22-A.Mattison left guard to PIT 41 for 2 yards (95-K.Benton).
(6:30) (No Huddle, Shotgun) 12-A.O'Connell pass short right to 22-A.Mattison to PIT 35 for 6 yards (6-P.Queen).
(6:03) (No Huddle, Shotgun) 12-A.O'Connell pass short right to 81-A.Bachman to PIT 17 for 18 yards (25-D.Elliott; 6-P.Queen).
(5:33) (No Huddle, Shotgun) 12-A.O'Connell pass short middle to 89-B.Bowers to PIT 9 for 8 yards (39-M.Fitzpatrick).
(5:11) (No Huddle, Shotgun) 12-A.O'Connell pass incomplete short right.
(5:04) (Shotgun) 12-A.O'Connell pass incomplete short left to 83-K.Wilkerson (31-B.Bishop).
(4:59) (Shotgun) 12-A.O'Connell pass short right to 83-K.Wilkerson for 9 yards, TOUCHDOWN.
TWO-POINT CONVERSION ATTEMPT. 12-A.O'Connell pass to 81-A.Bachman is incomplete. ATTEMPT FAILS.
2-D.Carlson kicks onside 8 yards from LV 35 to LV 43. 39-M.Fitzpatrick to LV 36 for 7 yards (29-C.Smith).
(4:50) 35-J.Ward left end pushed ob at LV 34 for 2 yards (20-I.Pola-Mao; 49-C.Snowden).
(4:43) 2-J.Fields pass deep right to 14-G.Pickens to LV 3 for 31 yards (20-I.Pola-Mao; 39-N.Hobbs). Las Vegas challenged the pass completion ruling, and the play was Upheld. The ruling on the field stands. (Timeout #1.)
(4:16) (Shotgun) 2-J.Fields pass incomplete short left to 14-G.Pickens (39-N.Hobbs).
(4:11) 65-D.Moore reported in as eligible. 33-A.Shampklin left guard to LV 5 for -2 yards (98-M.Crosby).
(4:07) (Shotgun) 2-J.Fields sacked at LV 18 for -13 yards (sack split by 95-J.Jenkins and 98-M.Crosby).
Timeout #2 by LV at 04:07.
(3:59) 9-C.Boswell 36 yard field goal is GOOD, Center-46-C.Kuntz, Holder-8-C.Waitman.
Timeout #3 by LV at 03:59.
9-C.Boswell kicks 65 yards from PIT 35 to end zone, Touchback to the LV 30.
(3:55) (Shotgun) 12-A.O'Connell pass short middle to 89-B.Bowers to LV 35 for 5 yards (6-P.Queen).
(3:24) (No Huddle, Shotgun) 12-A.O'Connell pass incomplete short right to 19-D.Turner (26-D.Jackson).
(3:21) (Shotgun) 12-A.O'Connell pass short left to 22-A.Mattison to LV 35 for no gain (57-M.Adams).
(2:49) (No Huddle, Shotgun) 12-A.O'Connell pass incomplete deep middle to 19-D.Turner (48-A.Ogundeji).
(2:44) 35-J.Ward left end to LV 30 for 5 yards (7-T.Moehrig; 20-I.Pola-Mao).
(2:00) 35-J.Ward right tackle to LV 24 for 6 yards (91-M.Butler, 49-C.Snowden).
(1:14) 2-J.Fields kneels to LV 25 for -1 yards.
(:37) 2-J.Fields kneels to LV 26 for -1 yards.
END GAME"

pit_lv_summary <- "Headline: Najee Harris' 100-yard rushing game lifts Steelers to 32-13 win over Raiders.
Summary: The strong performance of the Steelers Defense in combination with the Raiders own mistakes was too much for them to overcome. Raiders quarterback Aidan OConnell, opened the game 4 for 4 for 55 yards to lead a touchdown drive. But OConnell failed to build on that and the Steelers offense built up a healthy lead that they maintained through the game. In the third quarter, a blocked punt set up a Steelers field goal and a roughing call led to Harris' touchdown and 22-7 lead. Oconnell’s interception midway through the fourth quarter set up a Pittsburgh TD, 29-7 lead, and essentially sealed the win.
Notable Performances: Harris rushed for 106 yards and a 36-yard touchdown. Fields added 59 yards on the ground and two TDs, though he passed for just 145 yards. OConnell finished 27 of 40 for 227 yards and an interception.
Injuries: Steelers: C Zach Frazier left in the third quarter. Raiders: G Dylan Parham was injured in the first half.
"

# Append game log and summary to training dataframe 
pit_lv <- as.data.frame(cbind(pit_lv_log, pit_lv_summary)) %>% rename(game_log = pit_lv_log, game_summary = pit_lv_summary)
training <- rbind(training, pit_lv)

write.csv(training, "/Users/laurenmanis/Desktop/Fall 2024/DS 5690 | Gen AI Models/training.csv")

