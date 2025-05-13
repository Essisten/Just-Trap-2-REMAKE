/// @description Write the text
if (chars < string_length(text[line]))
{
   chars++;
   alarm[0] = 2;
}
else
{
    alarm[1] = 50;
}

