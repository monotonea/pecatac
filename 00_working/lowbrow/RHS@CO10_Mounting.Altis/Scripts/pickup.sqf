private["_obj","_caller","_id"];
_obj = _this select 0;
_caller = _this select 1;
_id = _this select 2;
_obj removeAction _id;
_caller addmagazine "7Rnd_408_Mag";
deleteVehicle _obj;

docpickup = true;
publicvariableserver "docpickup";