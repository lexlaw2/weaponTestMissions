params ["_class"];
if (_class == "") exitWith {[]};
private _hitPointClasses = configProperties [configfile >> "CfgWeapons" >> _class >> "ItemInfo" >> "HitpointsProtectionInfo"];
if (count _hitPointClasses == 0) exitWith {[]};
private _return = [];
{
    _return pushBack [
      getText (_x >> "hitpointName"),
      getNumber (_x >> "armor"),
      getNumber (_x >> "passThrough")
    ];
} forEach _hitPointClasses;
_return
