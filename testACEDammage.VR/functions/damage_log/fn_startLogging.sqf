params ["_EHLog"];

private _logArray = [];

private _unit = _EHLog select 0;
_logArray pushBack _unit;

private _selection = _EHLog select 1;
_logArray pushBack _selection;

private _ammo = [(_EHLog select 2 select 4)] call SVT_fnc_getAmmoParams;
_logArray pushBack _ammo;

private _head = [headgear _unit] + ([headgear _unit] call SVT_fnc_getArmorParams);
_logArray pushBack _head;

private _armor = [vest _unit] + ([vest _unit] call SVT_fnc_getArmorParams);
_logArray pushBack _armor;

private _damageData = [_unit] call SVT_fnc_getDamageData;
_logArray append _damageData;

_logArray = [_logArray] call SVT_fnc_createLogDescription;

if (SVT_ADD_TO_LOG == 1) then {
    [_logArray] call SVT_fnc_createLog;
};
if (SVT_ADD_TO_LOG == 2) then {
    [_logArray] remoteExec ["SVT_fnc_createLog", 0];
};
if (SVT_HINT == 1) then {
    [_logArray] call SVT_fnc_createHint;
};
if (SVT_HINT == 2) then {
    [_logArray] remoteExec ["SVT_fnc_createHint", 0];
};
