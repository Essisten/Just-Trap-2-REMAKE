/// @description Phase changed
if (!instance_exists(objPlayer) or frozen)
   exit;
HP = maxHP;
objBigKid_BG.phase++;
image_index = objBigKid_BG.phase;
scrCreateFade(c_white, 0.05, false);
if (global.difficulty < 3)
   scrDamagePlayer(-1, false);
if (objBigKid_BG.phase != 5)
{
    with (instance_create(__view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ), __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ) - 192, objCard))
    {
        image_index = objBigKid_BG.phase + 4;
        if (objBigKid_BG.phase == 1)
           image_index = 3;
        else if (objBigKid_BG.phase == 2)
             y = __view_get( e__VW.YView, 0 );
    }
}
event_user(2);
with (objBigKid_Bullet)
     event_user(0);
with (objBigKid_Body)
   event_user(0);
switch (objBigKid_BG.phase)
{
    case 1:     //Crimson
         with (objBlock)
         {
              if (global.spriteStyle == 0)
              {
                  sprite_index = sprBoss3_Block;
                  image_speed = 0;
              }
              else
                  image_blend = make_colour_hsv(0, 200, 255);
         }
         with (objSpikeParent)
              image_blend = make_colour_hsv(0, 200, 255);
         with (objBigBow)
         {
              image_index = 1;
              depth = -83;
         }
         break;
    case 2:    //Don't Gay
         with (objBigBow)
         {
              image_index = 2;
              depth = -87;
              x += 96;
              y -= 144;
         }
         with (objSpikeParent)
         {
            image_blend = c_white;
            sprite_index = sprBigKid_GaySpike;
         }
         with (objBlock)
         {
             sprite_index = sprBigKid_Brick1;
             image_blend = c_white;
         }
         with (objBigKid_BG)
         {
            bottom_wall.image_index = 1;
            top_wall.image_index = 1;
            left_top_edge.image_index = 1;
            right_top_edge.image_index = 1;
         }
         instance_create(objPlayer.x, __view_get( e__VW.YView, 0 ), objDeadShiratama);
         break;
    case 3:    //Solgryn
         with (objBigBow)
         {
              image_index = 3;
              image_angle = 0;
              x -= 96;
              y += 144;
         }
         with (objSpikeParent)
            sprite_index = sprBigKid_SolgrynSpike;
         with (objBlock)
              sprite_index = sprBigKid_Brick3;
         instance_destroy(objBigKid_GayShooter);
         break;
    case 4:    //Geezer
         with (objBigBow)
              image_index = 0;
         with (objSpikeParent)
            sprite_index = sprBigKid_GaySpike;
         with (objBlock)
              visible = false;
         instance_create(x, y, objBigGeezer_Head);
         frozen = true;
         break;
    case 5:    //Kamilia 2
        instance_create(x, y, objK2_Face);
         break;
}

