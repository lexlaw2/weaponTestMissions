params ["_ammoArray"];

private _return = [];
_return pushBack format ["%1 Hit:%2 // Caliber:%3", _ammoArray select 0, _ammoArray select 1, _ammoArray select 2];
_return
