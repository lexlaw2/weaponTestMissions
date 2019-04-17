params ["_ammo"];

private _class = configfile >> "CfgAmmo" >> _ammo;
private _return = [];
[
  _ammo,
  getNumber (_class >> "hit"),
  getNumber (_class >> "caliber")
]
