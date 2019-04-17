params ["_wounds"];

private _return = [];
{
    _return pushBack format ["    %1x %2", ceil (_x select 3), ((ace_medical_AllWoundInjuryTypes) select (_x select 1)) select 6];
} forEach _wounds;
_return
