# IDS6145(SimTech 2019) - Research Plan 

* Group Name: (R)omeo (O)scar (B)eta (O)scar (T)ango (S)ierra (ROBOTS)
* Group participants names: Justin Loveless, Blake Nguyen, and Ugur Uysal
* Project Title: Trust and Reliance in Military Automation

**Abstract**

In an effort to mitigate the risks of human pilot lives, we are interested in further investigating human-out-of-loop (fully autonomous) in comparison to previous results of human-on-the-loop (supervised autonomous) and human-in-the-loop (semi-autonomous) to determine if there are significant differences in trust and reliability based on the level of automation provided.   

![TEASER IMAGE](https://github.com/UgurUysal86/finalProjectTemplate/blob/master/images/cat_drone.jpg)


## 1. General Introduction

**Justin’s Motivation:** I am motivated to observe the cost effectiveness and efficiency of drones when deployed in air combat scenarios. When the cost of some of the latest Department of Defense (DoD) combat aircraft is soaring upwards of 100 Million dollars, finding alternate means of air defense is an area of focus to be considered moving forward. I am interested in analyzing performance of one F-35 stealth fighter in a combat situation, vs 10 combat drones in the same scenario. I would like to answer the questions, “Which approach is more economical?”, and  “Which approach will be more effective in reaching the objective?”. 

**Blake’s Motivation:** My research interests and experience are in human-robot interaction (HRI), specifically, situation awareness (SA), trust and reliability, and usability related to automation technology. Most of my work contributes to the Robotics Collaborative Technology Alliance (RCTA) program, which the Army Research LAB (ARL) at UCF/IST are also involved with. As a result, my research experience are focused on automation technology, specifically, what is the relationship between humans and robots and how can we improve the communication interactions seen in human-robot teams. Previous research regarding trust and reliance in human-robot teams suggest that when reliability falls below 70% reliability, automation is considered not useful, and will harm overall task performance. However, if the human teammate cannot perform a task unaided, or if the environment/situation is too risky for a human to begin with, there may still be an advantage or willingness to trust or rely on automation even if automation falls below the threshold (Maltz & Shinar, 2003). In the military domain, there is an increasing number of humans who are or will be performing tasks with the help of automation (Parasuraman & Wickens, 2008). In real world applications, information acquisition and analysis are rarely perfect, whether performed by humans or automation (St. John & Manes, 2002). Even when automation is imperfect, in most scenarios automation improves system performance (Yeh, Merlo, Wickens, & Brandenburg, 2003). Previous research states that when automation reliability levels fall below 70% (e.g., Madhavan, Wiegamann, & Lacson, 2006), performance tends to decrease levels lower than those of manual task performance alone (i.e., without assistance from automation). Wickens and Dixon (2007) identified the 70% reliability threshold, which is based on a review of studies in which the automation performed tasks which human could also perform unaided. In these types of scenarios, if reliability falls too low, automation may be perceived as useless, or even as being detrimental to overall task performance. As a result, making the human operators less likely to rely on automated systems, and instead, tasks will be executed manually without assistance from automation. 

**Ugur’s Motivation:** Armed forces use technology to gain superiority on the battlefield. Recent breakthroughs in the field of Artificial Intelligence and Unmanned Systems provide new uses for military operations. In my the research project HUMAN-ASSISTED WEAPON SYSTEMS I compared the semi-autonomous operation with the supervised-autonomous operation of drones. I think that on the battlefield of the future, those who use fully autonomous systems will be successful. In this project, I would like to improve the effectiveness of drones by implementing AI techniques such as Reinforcement Learning to operate those fully autonomous.


**Group Motivation:** With each of our team member's individual motivations, we were able to identify overarching interests in work related to military operations. Specifically, our team shares interests in research regarding fully autonomous operations. Building off of Ugur Uysal's previous research project in Simulation Techniques Practiccum, we want to compare the results of our current work on Human-out-of-the-loop (fully autonmous) to his original findings on Human-on-the-loop (supervised autonomous) and Human-in-the-loop (semi autonomous) to investigate trust and reliability. Trust and Reliability is important to take into consideration when studying human-out-of-the-loop as well as investigating and understanding the advantages and disadvantages of automation technology. Previous research looked into human-robot teaming, which is the influence of our interests because more recently within the military domain, the use of unmanned systems has become an increasily popular topic to study. We also believe that fully automated/unmanned systems may change the human-robot teaming dynamics. For example, within the Robotics Collaborative Technology Alliance project, the perception of automation has evolved from tools to teammates. We believe our work contributes to the idea that automated systems are teammates that can take the place of human teammates in situations where it puts human lives at risks. Our study intends on investigating the differences in advantages and disadvantages of fully autonomus systems in comparison to semi-autonomous and supervised autonomous systems. By determing the differences in advantages and disadvantages of fully autonomous, semi-autonomous, and supervised autonomous systems, we may also be able to assess the level of trust and reliability to determine which level of automation is the best option for human-robot teams. 


**Problem Statement:**

**Close air support missions of a manned aircraft against enemy armored air defense can be risky for human pilots:**

##### Click on the image to watch the video **ArmA 3: Risky CAS mission with F181** on YouTube.
[![F181](https://github.com/UgurUysal86/finalProjectTemplate/blob/master/images/risky_cas.jpg)](https://www.youtube.com/watch?v=OK3LowJ_aPo)

**Proposed Solution:** 

The use of drones could help to reduce the risk without compromising reliability. The control of drones can be done at different levels of autonomy: 
- Semi-autonomous (Human-IN-the-loop) 
- Supervised-autonomous (Human-ON-the-loop) 
- Fully-autonomous (Human-OUT-of-the-loop) 

In the project [HUMAN-ASSISTED WEAPON SYSTEMS](https://github.com/UgurUysal86/project_template) we compared the **semi-autonomous operation** with the **supervised-autonomous operation** of drones.

* An example of a Semi-autonomous UCAV operation in a "Multi-Drone Control" scenario can be seen here: https://www.youtube.com/watch?v=4Squmz5BZv0
* An example of a Supervised-autonomous UCAV operation in a "Multi-Drone Control" scenario can be seen here: https://www.youtube.com/watch?v=YDD9rnlW4kY

**In this project we now want to analyze a Fully-autonomous UCAV operation in a "Multi-Drone Control" scenario.**

**This project makes the following contributions:**

- We believe our project will contribute to advancing the study of human-robot interaction (HRI).
- We believe our project will contribute to the area of research on trust and reliability in automation technology.
- We believe the implementation of stimulated autonomous air fighters in ArmA 3 will provide insight on the real world application of autonomous drones. 


## 2. The Model

The model consists of a Drone, Tank, and Human, which all inherit certain shared traits from the class Entity. 
![Class Diagram](images/ClassDiagram.png)

The Drone gets its mission data from the human, who holds the information such as area of opeation or rules of engagement. The human sends the data to the Drone, which then locates the target, analyzes the activity, and either attacks or reports based on its observation fully-autonomously.
![Activity Diagram](images/ActivityDiagram.png)

**Requirements**

* The drones will only attack enemy military vehicles
* The drones will provide updated information on a targets once observed

## Fundamental Questions

1. Which condition (i.e., human-in-the-loop, human-on-the-loop, human-out-of-the-loop generates higher reliability? 
2. Based on the reliability results, do the results have an impact on trust?
3. Is there a trade-off between workload and levels of automation and if yes, what are the considered trade-offs? 


## 3. Expected Results

* We expect that higher levels of automation results in lower levels of percieved workload of the human operator. 

![percieved](https://github.com/UgurUysal86/finalProjectTemplate/blob/master/images/percieved.jpg)

* We expect that higher levels of automation results in lower levels of reliabilty of the unmanned aircrafts. 

![reliability](https://github.com/UgurUysal86/finalProjectTemplate/blob/master/images/reliability.jpg)


## 4. Research Methods

In the research project [HUMAN-ASSISTED WEAPON SYSTEMS](https://github.com/UgurUysal86/project_template) we compared the **semi-autonomous operation** with the **supervised-autonomous operation** of drones.
Now, we want to compare the results obtained during that project with results of the **fully-autonomous operation** of drones.
Therefore we are using the same experimental setup: 
* Quantitative Method Approach as defined by Creswell & Creswell (2017)
* collecting, analyzing, and interpreting quantitative data through simulation experiments using the virtual simulation software ArmA 3.

### 4.1 Hypothesis
Unmanned Systems can be operated fully-autonomously (human-out-of-the-loop) with the same reliability as operated supervised-autonomously (human-on-the-loop) in a virtual military scenario.

### 4.2 Setup of the experimental Study Method Plan
#### 4.2.1 Participants
Our group will use the scenario "Multi-Drone control" from [HUMAN-ASSISTED WEAPON SYSTEMS](https://github.com/UgurUysal86/project_template) to compare the **semi-autonomous operation** with the **supervised-autonomous operation** of drones to determine the reliability of the autonomous agents.

#### 4.2.2 Independent variables:
* Level of autonomy  {supervised autonomous, fully autonomous},
* Amount of targets {6} 
* Amount of UCAV (Unmanned Combat Aerial Vehicle ) {4}
* Available Munitions {12 AGM} 
* Amount of unbound vehicles {8}
* Complexity of Scenario {middle}

#### 4.2.3 Dependent variables (Responses):
* Amount of destroyed targets {0..6} 
* Amount of UCAV at the end of the mission {0..4} 
* Elapsed Time since command received (sec) {0..inf} 
* Amount of used Ammunition {0..12} 
* Only hostile targets engaged {True = 1, False = 0}
* Operator was able to  supervise all used autonomous systems {True = 1, False = 0}
* Operator perception of  cognitive workload  {1..10}

### 4.3 Instrumentation and Materials
Since the full potential of autonomous systems can only be estimated today due to technologies that are not yet fully developed, we want to use a simulation environment in which these technologies are already available. Therefore we use virtual simulation instead of robotics for our experiments. The military tactical shooter video game [ArmA 3](https://arma3.com/) Version 1.9 including ["Apex"](https://arma3.com/apex), ["Jets"](https://arma3.com/dlc/jets), and ["Tanks"](https://arma3.com/dlc/tanks), are used as our framework to create a military scenario for generating data to answer the quantitative research questions.

### 4.4 Experimental Procedures:
#### 4.4.1 Scenario "Multi-Drone control" with 4 [UCAVs](http://armedassault.wikia.com/wiki/UCAV_Sentinel) and 6 Targets (3 [AA-Tanks](http://armedassault.wikia.com/wiki/ZSU-39_Tigris), 1 [APC](http://armedassault.wikia.com/wiki/BTR-K_Kamysh), 2 [Main Battle Tanks (MBTs)](http://armedassault.wikia.com/wiki/T-140K_Angara)) from [HUMAN-ASSISTED WEAPON SYSTEMS](https://github.com/UgurUysal86/project_template).

[The ArmA 3 mission file can be downloaded here](https://github.com/UgurUysal86/finalProjectTemplate/tree/master/code/Fully%2520autonomous%253a4xUCAV%2C6xTargets(3AA%2C1APC%2C2Tanks).Altis). Copy and paste the scenario folder to the ArmA 3 user mission folder C:\Users\YOURNAME\Documents\Arma 3\missions to be able to load the scenario.

#### 4.4.2. Conducting the simulation experiment (30 runs) 
Running the simulation in ArmA 3: The human user assigns multiple-drones a specific area to **SEEK AND DESTROY** enemy vehicles which are then engaged fully-autonomously. The use of the drone-swarm is terminated when the predefined mission time expires. Once the drones are deployed, there is no way to cancel the mission in a Fully-autonomous operation because the human is "out-of-the-loop".
At the end of each Simulation run, the values of the response variables are saved in a excel file. 


##### Click on the image to watch the video **Fully-autonomous UCAV operation in a "Multi-Drone Control" scenario** on YouTube.
[![fully_autonomous](https://github.com/UgurUysal86/finalProjectTemplate/blob/master/images/fully-autonomous.jpg)](https://www.youtube.com/watch?v=pyYe_pu8vdk&feature=youtu.be)

[The results of the experiment can be downloaded here.](https://github.com/UgurUysal86/finalProjectTemplate/blob/master/data/Experimentation%20Results_4%20UCAV%2C6%20Targets(3AA%2C1APC%2C2Tanks).xlsx)

#### 4.4.3 Analyzing the Results.

After generating the data during the simulation experiment, a statistical hypothesis test using the software "R" was conducted. The data of the supervised-autonomous operation was obtained from [HUMAN-ASSISTED WEAPON SYSTEMS](https://github.com/UgurUysal86/project_template).

* Comparing Amount of destroyed targets: 				 				**no significant difference**
* Comparing Amount of autonomous Systems at the end of the mission:		**no significant difference**
* Comparing elapsed Time since command received: 						**significant difference**
* Comparing Amount of Used Ammunition: 					 				**significant difference**
* Comparing Only hostile targets engaged: 				 				**no significant difference**
* Comparing Operator was able to supervise all used autonomous systems: **no significant difference**
* Comparing Operator perception of cognitive workload: 			 		**significant difference**

[The R-Script to analyse the Results of the Experiment can be downloaded here](https://github.com/UgurUysal86/finalProjectTemplate/blob/master/data/Analysis%20Results_4%20UCAV%2C6%20Targets(3AA%2C1APC%2C2Tanks).R)

## 5. Discussion

Fundamental Questions Answered:

1. Which condition (i.e., human-in-the-loop, human-on-the-loop, human-out-of-the-loop generates higher reliability? 
* There was no significant difference between the different types of operations (semi-autonomous, supervised-autonomous, and fully autonomous). The expectation that with higher automation we will receive lower **reliability** was proven untrue in our specific scenario that we simulated. Human users do not operate unmanned system 100% reliably, and there might be a time in future where fully-autonomous systems are more reliable than human operators.

2. Based on the reliability results, do the results have an impact on trust?
We defined the reliability rate as the total number of destroyed tanks (6 total):

* For Supervised-autonomous, the calculated reliability rate was 70%; 4.2 (destroyed tanks) /6 (total of tank targets) = 70% reliability.
* For Semi-autonomous, the calculated reliability rate was 74.4%; 4.46 (destroyed tanks)/6 (total of tank targets)= 74.4% reliability. 
* For Fully autonomous, the calculated reliability rate was 59.4%; 3.56 (destroyed tanks)/6 (total of tank targets) = 59.4% reliability. 
* Based on the reliability threshold concept, supervised-autonomous and semi-autonomous are considered more reliability than fully autonomous as they are above the 70% threshold. Based on our simulation results for fully autonomous and the reliability threshold, it is deemed as unreliabile as it fell below the threshold at 59.4%. 

3. Is there a trade-off between workload and levels of automation and if yes, what are the considered trade-offs? 
* Based on our results, we found a trade-off between workload and level of automation. The expectation that with higher automation we will receive lower **perceived workload** of the human operator was proven true in our specific scenario that we simulated. With lower perceived workload missions could be conducted with less personnel. This could help to lower operating costs of unmanned systems operation. However, for these autonomous systems to work reliably, development must first be carried out. The costs of this development may exceed the benefits, but in the long run, it might be worth it.

What would you have done differently: 
* After completing this project, our team believes that we could determine more useful information on the level of automation if we utlized Unreal engine/unity to simulate the various scenarios used in ArmA3. We would also like to have done things differently in regards to level of expertise. In corporating the level of expertise may provide more insight on the perception of reliability based on the background expertise of the human operators. 

What are the contributions:
* Based on our results, we believe our project contributes to advancing the study of human-robot interaction (HRI), the area of research regarding trust and reliability in automation technology and insight on real world applications of autonomous aircraft drones.

What did we learn:
* We learned that the reliabilty rate may require more consideration than what we calculated and defined as reliability rate in our project. Specifically, we would like to further research the appropriate measures needed to adequately measure reliability rate. 
* We also learned that simulation was proven useful to answer our research questions. 
* We learned that there is an interaction between percieved workload and levels of automation. For example, the higher the level of automation, the less percieved workload for human operators. 


## 6. Future Work

If given six more months to work on our final project, we would like to focus our future efforts toward implementing our work into Unreal engine/Unity. If we were to implement our work into Unreal engine we would be able to further investigate and validate the results we found in ArmA 3. Implementing our work into Unreal engine/Unity would provide us with the means to compare our results to determine if our results are generalizable, significant, or even worth further exploring in future works.

Furthermore, we would like to try and improve our study design by incorporating human-subjects into our study to potentially investigate whether or not humans would or would not trust and rely on unmanned aerial drones. It would also be interesting to look at the preferences between the specific level of automation that is preferred for unmanned aerial drones. For example, depending on the level of expertise, that can also affect the level of trust and reliability in automation. A person will background experience with automation may view higher levels of automation to be trustworthy and reliable versus a novice user that may not have experience with automation. Thus, from a novice perspective, they may view lower levels of automation, therefore, believe automation is not trustworthy or unreliable. 


## References
(Add the bibliographic references you intend to use)  (Code / Projects / blogs / websites / papers...)

* [Creswell, J. W., & Creswell, J. D. (2017). Research design: Qualitative, quantitative, and mixed methods approaches. Sage publications.](https://us.sagepub.com/en-us/nam/research-design/book255675)
* https://www.wetalkuav.com/wp-content/uploads/2017/07/top-10-stupid-things-people-do-with-their-drones.jpg
* Madhavan, P., Wiegmann, D. A., & Lacson, F. C. (2006). Automation failures on tasks easily performed by operators undermine trust in automated aids. Human Factors, 48(2), 241-256.
* Maltz, M., & Shinar, D. (2003). New alternative methods of analyzing human behavior in cued target acquisition. Human Factors, 45(2), 281-295.
* Parasuraman, R., & Wickens, C.D. (2008). Humans: Still vital after all these years of automation. Human Factors, 50(3), 511-520.
* St. John, M., & Manes, D. I. (2002). Making unreliable automation useful. Proceedings of the Human Factors and Ergonomics Society Annual Meeting, 46, 332-336.
* Wickens, C. D., & Dixon, S. R. (2007). The benefits of imperfect diagnostic automation: A synthesis of the literature. Theoretical Issues in Ergonomics Science, 8(3), 201-212.
* Yeh, M., Merlo, J. L., Wickens, C. D., & Brandenburg, D. L. (2003). Head up versus head down: The costs of imprecision, unreliability, and visual clutter on cue effectiveness for display signaling. Human Factors, 45(3), 390-407.
* [Youtube (2019, Apr 22). ArmA 3: Risky CAS mission with F181](https://www.youtube.com/watch?v=OK3LowJ_aPo)
* [Youtube (2019, Apr 22). ArmA 3: Semi-autonomous UCAV operation in a "Multi-Drone Control" scenario.](https://www.youtube.com/watch?v=Rc2k6G8LuqY)
* [Youtube (2019, Apr 22). ArmA 3: Supervised-autonomous UCAV operation in a "Multi-Drone Control" scenario](https://www.youtube.com/watch?v=YDD9rnlW4kY)
* [Youtube (2019, Apr 22). ArmA 3: Fully-autonomous UCAV operation in a "Multi-Drone Control" scenario](https://www.youtube.com/watch?v=pyYe_pu8vdk&feature=youtu.be)
