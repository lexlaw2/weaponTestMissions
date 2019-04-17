params ["_log"];

private _logArray = [];
_logArray pushBack format ["Unit: %1", _log select 0];
_logArray pushBack format ["Selection: %1", _log select 1];
_logArray pushBack format ["Ammo: %1", ""];
_logArray append ([_log select 2] call SVT_fnc_addAmmoDescription);
_logArray append ([_log select 3] call SVT_fnc_addArmorDescription);
_logArray append ([_log select 4] call SVT_fnc_addArmorDescription);
_logArray pushBack format ["Added damage: %1", ""];
_logArray append ([_log select 5] call SVT_fnc_addBodyPartsDescription);
_logArray pushBack format ["All damage: %1", ""];
_logArray append ([_log select 6] call SVT_fnc_addBodyPartsDescription);

_logArray
