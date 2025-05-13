/// @description Boot up
on = true;
objBigKid_Head.frozen = false;
instance_create(448, 640, objGeezer_Text);
instance_create(__view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ) + 64,
              objBigGeezer_Head.y, objBigGeezer_Eyes);

