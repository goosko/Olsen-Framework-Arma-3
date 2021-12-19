private _westCasualty = "USMC" call FUNC(CasualtyPercentage); //Gets the casualty percentage of team "USMC"
private _eastCasualty = "VDV" call FUNC(CasualtyPercentage); //Gets the casualty percentage of team "VDV"

if (_westCasualty >= 50) exitWith {
	"VDV VICTORY<br />USMC has retreated due to casualties." call FUNC(EndMission);
};

if (_eastCasualty >= 75) exitWith {
	"USMC VICTORY<br />VDV has retreated due to casualties." call FUNC(EndMission);
};


/*
//Alternative methods of counting casualties

    //this will count how many members of a team died in the mission
	"USMC" call FUNC(casualtyCount);

    //this will check how many players are remaining in a team. Be careful as using this method will end the mission instantly if not enough players are present in the team.
	"USMC" call FUNC(countTeam);
    
    //This will check the number of units, so not just players, within a given area marker.
    _blueCount = {_x inArea "objareamarker" && {side _x isEqualTo west}} count AllUnits;
    if (_blueCount < 1) exitWith {
	    "Blufor has lost control of the objective and therefore suffered a defeat." call FUNC(EndMission);
    };

//Adding extraction

    //this will check if at least 80% of remaining forces are present in extraction area
	_extractUSMC = ["USMC", "ExtractionAreaMarker", 0.8] call FUNC(hasExtracted);
    if (_extractUSMC) exitWith {
		"USMC has extracted." call FUNC(EndMission);
    };

*/
