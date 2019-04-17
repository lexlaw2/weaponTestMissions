params ["_unit"];

private _bodyPartDamageOld = _unit getVariable ["damageBuffer", [0,0,0,0,0,0]];
sleep 0.15;
private _bodyPartDamage = _unit getVariable ["ace_medical_bodyPartStatus", [0,0,0,0,0,0]];

private _return = [];
{
  _return pushBack ((_bodyPartDamage select _forEachIndex)-(_bodyPartDamageOld select _forEachIndex));
} forEach _bodyPartDamageOld;
diag_log [_bodyPartDamageOld, _bodyPartDamage];
diag_log [_return, _bodyPartDamage];
_unit setVariable ["damageBuffer", +_bodyPartDamage, true];
[_return, _bodyPartDamage]
