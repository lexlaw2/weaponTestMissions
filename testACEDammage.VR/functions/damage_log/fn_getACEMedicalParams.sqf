params ["_unit", ["_other", false]];

private _logArray = [];

private _openWounds = _unit getVariable ["ace_medical_openWounds", []];
_logArray pushBack _openWounds;
private _bodyPartDamage = _unit getVariable ["ace_medical_bodyPartStatus", [0,0,0,0,0,0]];
_logArray pushBack _bodyPartDamage;

if (_other) then {
  private _bandagedWounds = _unit getVariable ["ace_medical_bandagedWounds", []];
  _logArray pushBack _bandagedWounds;
  private _internalWounds = _unit getVariable ["ace_medical_internalWounds", []];
  _logArray pushBack _internalWounds;
  private _pain = _unit getVariable ["ace_medical_pain", 0];
  _logArray pushBack _pain;
  private _morphine = _unit getVariable ["ace_medical_morphine", 0];
  _logArray pushBack _morphine;
  private _bloodVolume = _unit getVariable ["ace_medical_bloodVolume", 100];
  _logArray pushBack _bloodVolume;
  private _delayedMed = _unit getVariable ["ace_medical_occludedMedications", nil];
  if (isNil "_delayedMed") then {
    _logArray pushBack "";
  } else {
    _logArray pushBack _delayedMed;
  };
  private _lastWound = _unit getVariable ["ace_medical_lastUniqueWoundID", 1];
  _logArray pushBack _lastWound;
  private _heartRate = _unit getVariable ["ace_medical_heartRate", 80];
  _logArray pushBack _heartRate;
  private _heartRateAdjustments = _unit getVariable ["ace_medical_heartRateAdjustments", []];
  _logArray pushBack _heartRateAdjustments;
  private _bloodPressure = _unit getVariable ["ace_medical_bloodPressure", [80, 120]];
  _logArray pushBack _bloodPressure;
  private _peripheralResistance = _unit getVariable ["ace_medical_peripheralResistance", 100];
  _logArray pushBack _peripheralResistance;
  private _IV = _unit getVariable ["ace_medical_ivBags", nil];
  if (isNil "_IV") then {
    _logArray pushBack "";
  } else {
    _logArray pushBack _IV;
  };
  private _airwayStatus = _unit getVariable ["ace_medical_airwayStatus", 100];
  _logArray pushBack _airwayStatus;
  private _airwayOccluded = _unit getVariable ["ace_medical_airwayOccluded", false];
  _logArray pushBack _airwayOccluded;
  private _airwayCollapsed = _unit getVariable ["ace_medical_airwayCollapsed", false];
  _logArray pushBack _airwayCollapsed;
  private _addedToUnitLoop = _unit getVariable ["ace_medical_addedToUnitLoop", false];
  _logArray pushBack _addedToUnitLoop;
  private _inCardiacArrest = _unit getVariable ["ace_medical_inCardiacArrest", false];
  _logArray pushBack _inCardiacArrest;
  private _hasLostBlood = _unit getVariable ["ace_medical_hasLostBlood", 0];
  _logArray pushBack _hasLostBlood;
  private _isBleeding = _unit getVariable ["ace_medical_isBleeding", false];
  _logArray pushBack _isBleeding;
  private _hasPain = _unit getVariable ["ace_medical_hasPain", false];
  _logArray pushBack _hasPain;
  private _painSuppress = _unit getVariable ["ace_medical_painSuppress", 0];
  _logArray pushBack _painSuppress;
  private _allUsedMedication = _unit getVariable ["ace_medical_allUsedMedication", []];
  _logArray pushBack _allUsedMedication;
  private _logs = _unit getVariable ["ace_medical_allLogs", []];
  _logArray pushBack _logs;
};


_unit setVariable ["ACEMedicalParams", _logArray, true];
