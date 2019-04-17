params ["_unit"];

if (isNull _unit) exitWith {
  private _error = "No unit for adding EH!";
  diag_log "<--------TRY-TO-ADD-EH--------->";
  diag_log _error;
  diag_log "<--------EH-ADDING-ERROR------->";
  hint _error;
};

private _countEH = _unit addEventHandler ["Dammaged", {}];
_unit removeEventHandler ["Dammaged", _countEH];
if (_countEH > 0) exitWith {
  private _error = format ["Unit %1 already have EH!", name (_unit)];
  diag_log "<--------TRY-TO-ADD-EH--------->";
  diag_log _error;
  diag_log "<--------EH-ADDING-ERROR------->";
  hint _error;
};

_unit addEventHandler ["Dammaged", {
	params ["_unit", "_selection", "_damage", "_hitIndex", "_hitPoint", "_shooter", "_projectile"];
	if (!alive _unit) then {
	    _unit removeEventHandler ["Dammaged", _thisEventHandler];
	};
  private _params = _this;
  _params set [5, _projectile];
  _params set [6, _shooter];
  [_unit, _this, SVT_OPTIONAL, SVT_SLEEP_TIME, SVT_HINT, SVT_ADD_TO_LOG] spawn SVT_fnc_startLogging;
}];

private _done = format ["EH added to unit %1", name (_unit)];
diag_log "<--------TRY-TO-ADD-EH--------->";
diag_log _done;
diag_log "<-----EH-ADDED-SUCCESSFULLY---->";
hint _done;
