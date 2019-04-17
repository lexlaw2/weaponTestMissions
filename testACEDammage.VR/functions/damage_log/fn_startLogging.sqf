params ["_unit", "_EHLog", ["_other", false], ["_sleep", 0.1], ["_hint", 1], ["_log", 1]];

sleep _sleep;

private _logArray = [];

_logArray pushBack _unit;
private _selection = _EHLog select 1;
_logArray pushBack _selection;
private _damage = _EHLog select 2;
_logArray pushBack _damage;
private _projectile = _EHLog select 5;
_logArray pushBack _projectile;
private _shooter = name (_EHLog select 6);
_logArray pushBack _shooter;

if (!local _unit) then {
  [_unit, _other] remoteExec ["SVT_fnc_getACEMedicalParams", _unit];
} else {
  [_unit, _other] call SVT_fnc_getACEMedicalParams;
};
sleep _sleep;
private _ACEParams = _unit getVariable ["ACEMedicalParams", []];
_logArray append _ACEParams;
_logArray = [_logArray, _other] call SVT_fnc_createLogDescription;

if (_log == 1) then {
    [_logArray] call SVT_fnc_createLog;
};
if (_log == 2) then {
    [_logArray] remoteExec ["SVT_fnc_createLog", 0];
};
if (_hint == 1) then {
    [_logArray] call SVT_fnc_createHint;
};
if (_hint == 2) then {
    [_logArray] remoteExec ["SVT_fnc_createHint", 0];
};
