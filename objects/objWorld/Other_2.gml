/// @description initialize everything

//initialize all variables
scrInitializeGlobals();

//load the current config file, sets default config if it doesn't exist
scrLoadConfig();
instance_create(x, y, objSoundTest);

