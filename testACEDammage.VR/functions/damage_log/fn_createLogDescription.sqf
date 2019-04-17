params ["_log", ["_other", false]];

private _logArray = [];
_logArray pushBack format ["Unit: %1", _log select 0];
_logArray pushBack format ["Selection: %1", _log select 1];
_logArray pushBack format ["Damage: %1", _log select 2];
_logArray pushBack format ["Bullet: %1", _log select 3];
_logArray pushBack format ["Shooter: %1", _log select 4];
_logArray pushBack format ["Open wounds: %1", ""];
_logArray append ([_log select 5] call SVT_fnc_addWoundsDescription);
_logArray pushBack format ["Damage of body parts: %1", ""];
_logArray append ([_log select 6] call SVT_fnc_addBodyPartsDescription);
if (_other) then {
  _logArray pushBack format ["Bandaged wounds: %1", _log select 7];
  _logArray pushBack format ["Internal wounds: %1", _log select 8];
  _logArray pushBack format ["Pain level: %1", _log select 9];
  _logArray pushBack format ["Morphine: %1", _log select 10];
  _logArray pushBack format ["Blood volume: %1", _log select 11];
  _logArray pushBack format ["Occluded medications: %1", _log select 12];
  _logArray pushBack format ["Last unique Wound ID: %1", _log select 13];
  _logArray pushBack format ["Heart rate: %1", _log select 14];
  _logArray pushBack format ["Heart rate adjustments: %1", _log select 15];
  _logArray pushBack format ["Blood pressure: %1", _log select 16];
  _logArray pushBack format ["Peripheral resistance: %1", _log select 17];
  _logArray pushBack format ["IV Bags: %1", _log select 18];
  _logArray pushBack format ["Airway status: %1", _log select 19];
  _logArray pushBack format ["Airway occluded: %1", _log select 20];
  _logArray pushBack format ["Airway collapsed: %1", _log select 21];
  _logArray pushBack format ["Added to unit loop: %1", _log select 22];
  _logArray pushBack format [" In cardiac arrest: %1", _log select 23];
  _logArray pushBack format ["Has lost blood: %1", _log select 24];
  _logArray pushBack format ["Is bleeding: %1", _log select 25];
  _logArray pushBack format ["Has pain: %1", _log select 26];
  _logArray pushBack format ["Pain suppress: %1", _log select 27];
  _logArray pushBack format ["All used medication: %1", _log select 28];
  _logArray pushBack format ["ACE Medical other logs: %1", _log select 29];
};

_logArray
