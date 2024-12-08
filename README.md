# GamePlan-AI: Leveraging Generative AI for Automated Sports Journalism and Fantasy Football Insights

## Introduction
This project explores the application of artificial intelligence in sports analytics, focusing on two key objectives:
1. **Automated Sports Journalism**: To generate detailed, accurate, and engaging summaries of NFL games based on play-by-play data.
2. **Fantasy Football Recommendations**: To provide actionable insights and player recommendations for fantasy football enthusiasts by analyzing recent performances and trends.
   
The project leverages OpenAI's fine-tuning capabilities and in-context learning to process raw game data, create summaries, and answer complex fantasy football queries. By combining game logs, numeric statistics, and drive summaries, a model has been developped that not only captures the essence of each game but also delivers expert-level advice tailored to fantasy football enthusiasts.

## Key Achievements
**Automated Game Summaries**: The model successfully generates professional-grade game summaries, highlighting key plays, scoring sequences, and standout performances with high accuracy.
**Fantasy Football Insights**: The assistant provides accurate, data-driven player recommendations, helping users make informed decisions based on recent trends, injuries, and game performances.

This project demonstrates the potential of AI in sports analytics, bridging the gap between raw data and actionable insights. Whether you're a sports journalist, a fantasy football enthusiast, or an AI researcher, this repository offers valuable tools and methodologies to explore the intersection of AI and sports.

## Process & Methodology
### Phase 0: Data Collection & Preparation
Initial data collection and preparation efforts included:
- Collecting NFL game logs using the nflfastr package.
- Adapting published game summaries from ESPN to provide narrative context.
- Combining game logs and summaries to create a training dataset of 50 games.
- Collecting additional data to support fine-tuning, including:
  - Player information from nflfastr.
  - Player accolades (e.g., All-Pro selections) and team accomplishments sourced from Pro-Football-Reference.
  - Compiled these into a secondary training set to enhance the model’s contextual understanding.

### Phase 1: Fine-Tuning GPT-4 on Recent NFL Knowledge
Although GPT-4 has significant prior knowledge of NFL rules, concepts, and historical players, it lacks information on:
  - Recent team accomplishments (e.g., 2023 standings).
  - Younger or newer players in the league.

To address this, I fine-tuned the model with data on active players, 2023 team achievements, and other contemporary details, bringing it up to date for more accurate contextual responses.

**Sample Results from Phase I Fine-Tuning**

  ```
    Prompt: Tell me about Justin Jefferson.
    Response: Justin Jefferson is a veteran WR for the Minnesota Vikings (MIN). He entered the league in 2020.
    
    Prompt: Tell me about rookie Jayden Daniels.
    Response: Jayden Daniels is a rookie QB for the Washington Commanders (WAS). He entered the league in 2024.
    
    Prompt: Based on their 2023 performance and results, are the Detroit Lions a good team?
    Response: Yes, the Detroit Lions are a good team. They finished the 2023 season with a record of 12-5 and made the playoffs. Additionally, they won their division. Going into the 2024 season, PFF had them ranked 6th overall.
    
    Prompt: Explain the fantasy football waiver wire.
    Response: The fantasy football waiver wire is a system that allows managers to add players who are not currently on a roster in their league. Each week, there is a designated waiver period, typically running from Tuesday to Wednesday, during which managers can submit claims for players. If multiple managers put in claims for the same player, the player will go to the manager with the highest waiver priority. After the waiver period ends, any unclaimed players become free agents and can be added on a first-come, first-served basis.
    
    Waiver wire strategies are crucial for improving your roster throughout the season, as it allows you to capitalize on emerging players, injuries, or favorable matchups.
    
    Prompt: Who is a better player based on their accolades: Josh Allen or Will Levis?
    Response: Josh Allen is a better player based on his accolades. He has 6 Pro Bowl selections and 1 All-Pro selection. Will Levis does not have any accolades.
    
    Prompt: Who are the reigning Super Bowl Champions?
    Response: The reigning Super Bowl Champions are the Kansas City Chiefs. They won Super Bowl LVIII.
  ```

**Phase 2: Fine-Tuning GPT-4 on Numeric Reasoning and Statistical Aggregation**
Trained the model on 400 examples of stat aggregation, focusing on summing drive-level stats into game-level totals.
While the model performed well on a test set, a hybrid approach was ultimately used and explicit numeric values were included in the inputs to ensure high accuracy, given the critical importance of numerical precision for this task.

**Sample Training Data for Phase II Fine-Tuning**
```
    [{'messages': [{'role': 'system',
        'content': 'You are a sports statistician specializing in NFL football.'},
       {'role': 'user',
        'content': "On a drive, SEA had 7 plays, 5 rushing yards, 0 passing yards, scored 0 points, with 0 touchdowns, 0 field goals, and committed 0 turnovers.\nOn a drive, SEA had 5 plays, 22 rushing yards, 33 passing yards, scored 7 points, with 1 touchdowns, 0 field goals, and committed 0 turnovers.\nOn a drive, SEA had 11 plays, 25 rushing yards, 17 passing yards, scored 7 points, with 1 touchdowns, 0 field goals, and committed 0 turnovers.\nWhat was SEA's final statline?"},
       {'role': 'assistant',
        'content': "SEA's final statline: 23 plays, 52 rushing yards, 50 passing yards, 14 points, 2 touchdowns, 0 field goals, and 0 turnovers."}]},
    {'messages': [{'role': 'system',
        'content': 'You are a sports statistician specializing in NFL Football.'},
       {'role': 'user',
        'content': "On a drive, 85-N.Brown had the following stats: 0 carries, 0 rushing yards, 2 receptions, 19 receiving yards.\nOn a drive, 85-N.Brown had the following stats: 0 carries, 0 rushing yards, 1 receptions, 31 receiving yards.\nOn a drive, 85-N.Brown had the following stats: 0 carries, 0 rushing yards, 2 receptions, 10 receiving yards.\nWhat was 85-N.Brown's final statline?"},
       {'role': 'assistant',
        'content': "85-N.Brown's final statline: 0 carries for 0 rushing yards, 5 receptions for 60 receiving yards."}]}]
```

**Phase 3: Fine-Tuning GPT-4 to Generate Game Summaries**
Preprocessed game log data into a format the model could understand:
  - Extracted relevant details and stats from raw logs.
  - Organized data by grouping plays into drives and aggregating team/player stats.
  - Created structured inputs to encapsulate game information.

Using the pre-processed game information blocks, Fine-tuned GPT-4 to generate concise and coherent game summaries based on the processed data.

**Prompt Used for Phase III Fine-Tuning**
```
  prompt = (
        "You are a professional sports journalist, specializing in NFL game coverage. "
        "Your task is to write a detailed, factual, and engaging game summary based on the provided play-by-play logs, drive summaries, and team/player statistics. "
        "The summary should highlight key events, scoring plays, pivotal moments, standout player performances, and the flow of the game.\n\n"

        "The game details include:\n"
        "- A play-by-play log of offense teams and events within each drive.\n"
        "- A summary of the key statistics and outcomes for each drive.\n"
        "- Team and player statistics summing up the full game performance.\n\n"

        "Guidelines:\n"
        "- Use only the information explicitly provided in the play logs, drive summaries, and numeric summaries.\n"
        "- Do not add any details or speculate about events not mentioned.\n"
        "- Refer to players by their first initial and last name, as they appear in the logs.\n"
        "- Highlight critical plays, player contributions, and turning points in the game.\n"
        "- Focus on the progression of the game, including scoring sequences, shifts in momentum, and notable performances.\n"
        "- Write in a professional journalistic tone, following conventions used by major outlets like AP or ESPN.\n"
        "- Ensure the summary is readable, concise, and suitable for a general audience.\n"
        "- Only use numbers or statistics explicitly included in the game information provided, do not perform any other calculations.\n\n"

        "Output Requirements:\n"
        "- Include the final score in the headline or opening sentence.\n"
        "- Use paragraphs to organize the summary clearly.\n"
        "- Mention standout individual performances and their contribution to the game's outcome.\n"
        "- Discuss scoring sequences and the game's critical moments in chronological order.\n\n"

        f"Game Details:\n\n"
        f"{row['drive_summaries']}\n\n"
        f"Numeric Summary:\n{row['numeric_summary']}"
    )
```

**Phase 4: Generating Game Summaries on Unseen Data**
Used the fine-tuned model to generate game summaries for unseen data.
Summaries were numerically accurate, highlighted key turning points, and were written in a readable and engaging manner.

**Sample Model-Generated Game Summary**
```
    Headline: Jared Goff throws for 263 yards and 3 TDs, Lions beat Packers 34-31 in wild finish.
    
    Summary: The Lions led 31-17 in the fourth quarter, but the Packers rallied to tie it with 2 TDs in a span of 3:09. Green Bay took a 31-31 tie on Jacobs’ 4-yard TD run with 11:56 left. The Lions then drove to the Green Bay 14, but Goff was sacked on third down and settled for a field goal. The Packers got the ball back with 4:10 left and drove to the Detroit 6, but Love’s TD pass to Jacobs was nullified by an offensive pass interference call on Christian Watson. Green Bay settled for a 32-yard field goal by Brandon McManus with 2:02 left. The Lions got the ball back and drove to the Green Bay 14, where they faced a fourth-and-1 with 28 seconds left. Detroit opted to kick the field goal, and Jake Bates made a 35-yarder to win it.
    
    Notable Performances: Goff completed 30 of 38 passes for 263 yards and three touchdowns. Montgomery ran for 50 yards and a score and caught five passes for 33 yards. Jahmyr Gibbs ran for 41 yards and a touchdown and caught six passes for 30 yards. Christian Watson had four catches for 114 yards for the Packers. Love finished 12 of 20 for 199 yards with a touchdown and an interception.
    
    Injuries: Lions: CB Brian Branch left in the third quarter. Packers: CB Darnell Savage left in the second quarter.
```

**Phase 5: In-Context Learning & Fantasy Recommendations**
Built a knowledge base by generating summaries for every game played so far this season and stored these summaries for efficient querying.
Developed a system for fantasy football recommendations leveraging the knowledge base to ask the model specific questions about fantasy football scenarios.
The model delivered actionable insights tailored to user queries.

**Prompt for Fantasy Football Recommendations**
```
prompt = f"""
      You are a fantasy football assistant. Using the information from recent NFL games, answer the following question:

      Guidelines:
      1. Offensive Focus: Focus on offensive players, particularly quarterbacks (QBs), running backs (RBs), wide receivers (WRs), and tight ends (TEs).
      2. Scoring Criteria: Prioritize players who score the most fantasy points. Fantasy scoring typically rewards:
        - Touchdowns (rushing, passing, receiving).
        - Yardage gains (rushing yards, passing yards, receiving yards).
      3. Consistency Over Time: Consistency in recent performances is critical. Players with reliable production over the last few games are more valuable than those with erratic performances or those who had their best games weeks ago.
      4. Injury Risk: Devalue players with recent injuries, frequent game exits, or ongoing performance limitations due to health concerns.
      5. Upside Potential: Highlight players with increasing opportunities (e.g., higher snap counts, targets, or touches) or those stepping into larger roles due to team changes (e.g., injuries to teammates or lineup changes).
      6. Position-Specific Insights:
        - Quarterbacks: Look at total passing yards, touchdowns, and rushing contributions.
        - Running Backs: Focus on total yardage (rushing + receiving), goal-line opportunities, and snap count.
        - Wide Receivers/Tight Ends: Evaluate targets, receptions, total receiving yards, and red-zone usage.
      7. Additional Considerations:
        - Matchup Dependency: Players who consistently perform well regardless of opposing defenses are more valuable than those dependent on favorable matchups.
        - Trends: Highlight players showing upward trends (e.g., rookie breakouts, post-injury improvements, or new starting roles).
        - Team Context: Consider offensive scheme and team dynamics. High-scoring offenses typically produce better fantasy players.
      8. Question Responses: 
        - If options are provided, only choose from the available options. Do not consider options outside the explicitly mentioned ones.
        - In one sentence, explain your reasoning for the response. If possible, use statistics and numeric data to back up your choice.

      Game Summaries:
      {game_knowledge_base}
```

**Sample Model Recommendations**

```
Question: The following wide receivers are available for waiver wire pickup: J.Chase, T.Boyd, M.Williams
Response: "You should pick up Ja'Marr Chase. He had a huge performance in Week 14, catching 11 passes for 264 yards and two touchdowns."

Question: Assume every QB is available. Who should I draft to my fantasy team to give me the best chance of winning?
Response: "To give you the best chance of winning, you should draft Joe Burrow. He has been on fire lately, throwing for 421 yards and 4 touchdowns in a win over the Ravens. He also threw for 242 yards and 5 touchdowns in a win over the Raiders. He has a great matchup against the Commanders in Week 14."
```





