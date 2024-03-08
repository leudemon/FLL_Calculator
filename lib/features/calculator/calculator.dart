import 'package:fll_calculator/features/widgets/custom_expansion_panel_list.dart';
import 'package:flutter/material.dart';
import 'package:fll_calculator/features/models/missions.dart';

class Calculator extends StatefulWidget {
  Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();

  final Map<String, Mission> missions = {
    "mission": Mission(
      missionName: "INSPECTION",
      missionDetails:
          "If your robot and all your equipment fit completely in one launch area and are under a height of 12 in. (305 mm) during the pre-match inspection",
      missionOptions: {"Completed": 20},
      maxPoints: 20,
      currentPoints: 0,
    ),
    "mission1": Mission(
      missionName: "M01: 3D CINEMA",
      missionDetails:
          "The 3D cinema’s red beam is completely to the right of the black frame:",
      missionOptions: {"Completed": 20},
      maxPoints: 20,
      currentPoints: 0,
    ),
    "mission2": Mission(
      missionName: "M02: THEATER SCENE CHANGE",
      missionDetails:
          "If your theater’s red flag is down and the active scene color is",
      missionOptions: {
        "The theatre's red flag is not down": 0,
        "Blue (10 points)": 10,
        "Pink (20 points)": 20,
        "Orange (30 points)": 30,
      },
      maxPoints: 30,
      currentPoints: 0,
    ),
    "02mission2": Mission(
      missionName: "M02: THEATER SCENE CHANGE",
      missionDetails: "Both teams have matching scenes",
      missionOptions: {
        "Yes, Blue (30 points)": 20,
        "Yes, Pink (20 points)": 30,
        "Yes, Orange (10 points)": 10,
      },
      maxPoints: 30,
      currentPoints: 0,
    ),
    "mission3": Mission(
      missionName: "M03: IMMERSIVE EXPERIENCE",
      missionDetails: "The three immersive experience screens are raised",
      missionOptions: {"Raised": 20},
      maxPoints: 20,
      currentPoints: 0,
    ),
    "mission4": Mission(
      missionName: "M04: MASTERPIECE",
      missionDetails:
          "The team’s LEGO® art piece is at least partly in the museum target area",
      missionOptions: {
        "In Target Area (10points)": 10,
        "ArtPiece Completed Suported by the pedestel (20 points Bonus)": 30
      },
      maxPoints: 30,
      currentPoints: 0,
    ),
    "mission5": Mission(
      missionName: "M05: AUGMENTED REALITY STATUE",
      missionDetails:
          "If the augmented reality statue’s orange lever is rotated completely to the right",
      missionOptions: {"Completed": 30},
      maxPoints: 30,
      currentPoints: 0,
    ),
    "mission6": Mission(
      missionName: "M06: MUSIC CONCERT LIGHTS AND SOUNDS",
      missionDetails:
          "If the lights’ orange lever is rotated completely downwards",
      missionOptions: {"Lights Down": 10, "Speakers on": 20},
      maxPoints: 20,
      currentPoints: 0,
    ),
    "mission7": Mission(
      missionName: "M07: HOLOGRAM PERFORMER",
      missionDetails:
          "If the hologram performer’s orange push activator is completely past the black stage set line",
      missionOptions: {"Completed": 20},
      maxPoints: 20,
      currentPoints: 0,
    ),
    "mission8": Mission(
      missionName: "M08: ROLLING CAMERA",
      missionDetails:
          "If the rolling camera’s white pointer is (The camera includes the loop, but not the string.When scoring, the scene line extends vertically from the top to the bottom of the field)",
      missionOptions: {
        "Left of Dark Blue": 10,
        "Left of Dark and Medium Blue": 20,
        "Left of Dark, Medium, and Light Blue": 30,
      },
      maxPoints: 30,
      currentPoints: 0,
    ),
    "mission9": Mission(
      missionName: "M09: MOVIE SET",
      missionDetails:
          "If the boat is touching the mat and is completely past the black scene line",
      missionOptions: {"Boat Touching Mat": 10, "Camera in Target Area": 20},
      maxPoints: 20,
      currentPoints: 0,
    ),
    "mission10": Mission(
      missionName: "M10: SOUND MIXER",
      missionDetails: "If a sound mixer slider is raised",
      missionOptions: {
        "0 Slider(s) Raised": 0,
        "1 Slider(s) Raised": 10,
        "2 Slider(s) Raised": 20,
        "3 Slider(s) Raised": 30,
      },
      maxPoints: 30,
      currentPoints: 0,
    ),
    "mission11": Mission(
      missionName: "M11: LIGHT SHOW",
      missionDetails:
          "If the light show’s white pointer is within zone. \n\n(If the white pointer rests between zones, you earn points for the higher scoring zone of the two.)",
      missionOptions: {
        "Yellow Zone": 10,
        "Green Zone": 20,
        "Blue Zone": 30,
      },
      maxPoints: 30,
      currentPoints: 0,
    ),
    "mission12": Mission(
      missionName: "M12: VIRTUAL REALITY ARTIST",
      missionDetails:
          "The chicken is intact and has moved from its starting position",
      missionOptions: {
        "Chicken Moved": 10,
        "BONUS: The chicken is at least partially above or behind the purple dot":
            30
      },
      maxPoints: 30,
      currentPoints: 0,
    ),
    "mission13": Mission(
      missionName: "M13: CRAFT CREATOR",
      missionDetails:
          "The craft machine’s orange and white lid is completely open",
      missionOptions: {"Lid Open": 10, "Latch pointing straight down": 30},
      maxPoints: 30,
      currentPoints: 0,
    ),
    "mission14": Mission(
      missionName: "M14: AUDIENCE DELIVERY",
      missionDetails:
          "Number of Audience members at least partly in their target destinations",
      missionOptions: {
        "0 member(s)": 0,
        "1 member(s)": 5,
        "2 members(s)": 10,
        "3 members(s)": 15,
        "4 members(s)": 20,
        "5 members(s)": 25,
        "6 members(s)": 30,
        "7 members(s)": 35,
      },
      maxPoints: 35,
      currentPoints: 0,
    ),
    "02mission14": Mission(
      missionName: "M14: AUDIENCE DELIVERY",
      missionDetails:
          "Number of target destinations with at least one audience member completely in it:",
      missionOptions: {
        "0 destination(s)": 0,
        "1 destination(s)": 5,
        "2 destination(s)": 10,
        "3 destination(s)": 15,
        "4 destination(s)": 20,
        "5 destination(s)": 25,
        "6 destination(s)": 30,
        "7 destination(s)": 35,
      },
      maxPoints: 35,
      currentPoints: 0,
    ),
    "mission15": Mission(
      missionName: "M15: EXPERT DELIVERY",
      missionDetails: '''• Sam the Stage Manager in Movie Set
• Anna the Curator in Museum
• Noah the Sound Engineer in Music Concert
• Izzy the Skateboarder in Skate Park
• Emily the Visual Effects Director in Cinema''',
      missionOptions: {
        "1 expert": 10,
        "2 expert": 20,
        "3 expert": 30,
        "4 expert": 40,
        "5 expert": 50,
      },
      maxPoints: 50,
      currentPoints: 0,
    ),
    "mission16": Mission(
      missionName: "Precision Tokens",
      missionDetails: "Number of precision token remaining",
      missionOptions: {
        "0 token(s)": 0,
        "1 token(s)": 10,
        "3 token(s)": 15,
        "4 token(s)": 25,
        "5 token(s)": 35,
        "6 token(s)": 50,
      },
      maxPoints: 50,
      currentPoints: 0,
    ),
  };
}

class _CalculatorState extends State<Calculator> {
  late Map<String, bool?> isExpandedMap;
  late Map<String, bool> isEnabledMap;

  void toggleExpansion(String key) {
    setState(() {
      isExpandedMap[key] = !(isExpandedMap[key] ?? false);
    });
  }

  void toggleAllExpansion() {
    setState(() {
      isExpandedMap.forEach((key, value) {
        isExpandedMap[key] = false;
      });
    });
  }

  void _showInitialPopup(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Hey! Weclome Back.'),
          content: const Text('Click on any mission to set a score.'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('I know.🥲'),
            ),
          ],
        );
      },
    );
  }

  @override
  void initState() {
    super.initState();
    isExpandedMap = {};
    isEnabledMap = {};
    for (var key in widget.missions.keys) {
      isExpandedMap[key] = false;
      isEnabledMap[key] = true;
    }
        WidgetsBinding.instance.addPostFrameCallback((_) {
      _showInitialPopup(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    int totalCurrentPoints = widget.missions.values
        .map((mission) => mission.currentPoints)
        .fold(0, (sum, currentPoints) => sum + currentPoints);
    List<String> enabledMissions = [];
    List<String> disabledMissions = [];
    widget.missions.forEach((key, mission) {
      if (isEnabledMap[key] == true) {
        enabledMissions.add(key);
      } else {
        disabledMissions.add(key);
      }
    });

    List<String> sortedMissions = [...enabledMissions, ...disabledMissions];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 217, 54, 60),
        centerTitle: true,
        titleSpacing: 0,
        toolbarHeight: 70,
        flexibleSpace: PreferredSize(
          preferredSize: const Size.fromHeight(80),
          child: Container(
            color: const Color.fromARGB(255, 217, 54, 60),
          ),
        ),
        leading: Padding(
          padding: const EdgeInsets.only(left: 0.0),
          child: Center(
              child: Image.asset(
            "assets/Fll.png",
            width: MediaQuery.sizeOf(context).width,
            height: MediaQuery.sizeOf(context).height,
          )),
        ),
        title: Padding(
          padding: const EdgeInsets.all(20),
          child: Image.asset(
            "assets/logo-long.png",
            width: 220,
            height: 80,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 30),
            child: Text(
              '$totalCurrentPoints',
              style: TextStyle(
                fontSize: 27,
                color: Colors.amber,
                fontWeight: FontWeight.bold,
                shadows: [
                  Shadow(
                    blurRadius: 10,
                    color: Colors.amber.withOpacity(0.5),
                    offset: const Offset(0, 0),
                  ),
                  Shadow(
                    blurRadius: 10,
                    color: Colors.amber.withOpacity(0.5),
                    offset: const Offset(0, 0),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      body: RefreshIndicator(
        onRefresh: _handleRefresh,
        child: Padding(
          padding: const EdgeInsets.all(0.0),
          child: Center(
            child: ListView.builder(
              itemCount: sortedMissions.length,
              itemBuilder: (context, index) {
                String key = sortedMissions[index];
                Mission mission = widget.missions[key]!;

                String? errorMessage;
                bool noneChecked = mission.missionOptions.entries
                    .every((entry) => mission.currentPoints != entry.value);

                if (noneChecked && (isEnabledMap[key] ?? true)) {
                  errorMessage = 'Please select an option';
                }

                return Card(
                  margin: const EdgeInsets.all(8),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  elevation: 0,
                  child: Container(
                    padding: const EdgeInsets.all(12),
                    child: CustomExpansionPanelList(
                      dividerColor: Colors.transparent,
                      elevation: 0,
                      expansionCallback: (int index, bool isExpanded) {
                        toggleExpansion(key);
                      },
                      children: [
                        CustomExpansionPanel(
                          canTapOnHeader: false,
                          backgroundColor: Colors.transparent,
                          headerBuilder:
                              (BuildContext context, bool isExpanded) {
                            return Container(
                              decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                                color: Colors.transparent,
                              ),
                              child: ListTile(
                                splashColor: Colors.transparent,
                                tileColor: Colors.transparent,
                                trailing: Switch(
                                  value: isEnabledMap[key] ?? true,
                                  thumbIcon: MaterialStateProperty.resolveWith(
                                      (states) {
                                    if (states
                                        .contains(MaterialState.selected)) {
                                      return const Icon(Icons.check,
                                          color: Colors.green);
                                    }
                                    return const Icon(Icons.close, color: Colors.red);
                                  }),
                                  onChanged: (value) {
                                    setState(() {
                                      isEnabledMap[key] = value;

                                      if (value) {
                                        mission.currentPoints =
                                            mission.maxPoints;
                                      } else {
                                        mission.currentPoints = 0;
                                      }
                                    });
                                  },
                                ),
                                isThreeLine: true,
                                subtitle: Text(mission.missionDetails ?? ""),
                                leading: Container(
                                  padding: const EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                    color: Colors.grey[200],
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Text(
                                    '${mission.currentPoints}/${mission.maxPoints}',
                                    style: const TextStyle(fontSize: 16),
                                  ),
                                ),
                                title: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                      child: Text(
                                        mission.missionName,
                                        style: const TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ],
                                ),
                                contentPadding: const EdgeInsets.symmetric(
                                    horizontal: 2, vertical: 8),
                              ),
                            );
                          },
                          body: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 16, vertical: 8),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                for (var option
                                    in mission.missionOptions.entries)
                                  Row(
                                    children: [
                                      Checkbox(
                                        value: mission.currentPoints ==
                                            option.value,
                                        onChanged: isEnabledMap[key]!
                                            ? (value) {
                                                setState(() {
                                                  if (value!) {
                                                    mission.currentPoints =
                                                        option.value;
                                                  } else {
                                                    mission.currentPoints = 0;
                                                  }
                                                });
                                              }
                                            : null,
                                      ),
                                      const SizedBox(width: 8),
                                      Expanded(
                                        child: Text(option.key),
                                      ),
                                    ],
                                  ),
                                const SizedBox(height: 8),
                                Visibility(
                                  visible: errorMessage != null &&
                                      (isEnabledMap[key] ?? true),
                                  child: ListTile(
                                    title: Text(
                                      errorMessage ?? "",
                                      style: const TextStyle(color: Colors.red),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          isExpanded: isExpandedMap[key]!,
                        ), 
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: toggleAllExpansion,
        label: const Text('Collapse All'),
        icon: const Icon(Icons.expand_less),
      ),
    );
  }

  Future<void> _handleRefresh() async {
    await Future.delayed(const Duration(seconds: 1));
    setState(() {
      isExpandedMap = {};
      isEnabledMap = {};
      for (var key in widget.missions.keys) {
        isExpandedMap[key] = false; 
        isEnabledMap[key] = true;
        widget.missions[key]!.currentPoints = 0; 
      }
    });
    setState(() {});
  }
}
