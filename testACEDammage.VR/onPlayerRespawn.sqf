player addAction ["Добавить цели EH",
    {
        params ["_target", "_caller", "_actionId", "_arguments"];
        [cursorObject] call SVT_fnc_addEHToUnit;
    }
];
