params ["_unit"];

if ((isNull _unit)||(!(_unit isKindOf "Man"))) exitWith {
  private _error = "No unit for adding EH!";
  diag_log "<--------TRY-TO-ADD-EH--------->";
  diag_log _error;
  diag_log "<--------EH-ADDING-ERROR------->";
  hint _error;
};

private _countEH = _unit addEventHandler ["HitPart", {}];
_unit removeEventHandler ["HitPart", _countEH];
if (_countEH > 0) exitWith {
  private _error = format ["Unit %1 already have EH!", name (_unit)];
  diag_log "<--------TRY-TO-ADD-EH--------->";
  diag_log _error;
  diag_log "<--------EH-ADDING-ERROR------->";
  hint _error;
};

_unit addEventHandler ["HitPart", {
	if (!alive _unit) then {
	    _unit removeEventHandler ["HitPart", _thisEventHandler];
	};
  {
      _x params ["_target", "_shooter", "_projectile", "_position", "_velocity", "_selection", "_ammo", "_vector", "_radius", "_surfaceType", "_isDirect"];
      private _params = [_target, _selection, _ammo];
      [_params] spawn SVT_fnc_startLogging;
  } forEach _this;
}];

private _done = format ["EH added to unit %1", name (_unit)];
diag_log "<--------TRY-TO-ADD-EH--------->";
diag_log _done;
diag_log "<-----EH-ADDED-SUCCESSFULLY---->";
hint _done;
