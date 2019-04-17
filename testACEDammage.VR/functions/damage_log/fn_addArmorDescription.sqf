params ["_armorArray"];

private _return = [];
_logArray pushBack format ["Classname: %1", _armorArray select 0];
if (count _armorArray == 1) exitWith {_return};
{
  if (_forEachIndex > 0 ) then {
    _return pushBack format ["HP:%1 Armor:%2 // PT:%3", _x select 0, _x select 1, _x select 2];
  };
} forEach _armorArray;
_return
