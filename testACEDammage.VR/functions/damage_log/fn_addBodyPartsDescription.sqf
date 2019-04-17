params ["_bodyPartDamage"];

private _hitPoints = ["HitHead", "HitBody", "HitLeftArm", "HitRightArm", "HitLeftLeg", "HitRightLeg"];
private _return = [];
{
    if (_x > 0) then {
      _return pushBack format ["    %1: %2", _hitPoints select _forEachIndex, _x];
    };
} forEach _bodyPartDamage;
_return
