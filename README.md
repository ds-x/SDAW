# SDAW - Songs and Dances about weather
## FILES and Open Source Repository created during the SDAW Project Research

## Modules
All modules are made with node based programming environment MAX/MSP. Because we wanted to build a flexible, customizable software toolkit, to quickly change, adapt and change things, we ended up muidling these modules.
The parameters in modules are stroed in a global project file, which can also consist a set of scenes.
Additionally every modules can be adressed from outside via OpenSoundControl (OSC). 

This makes it possible to changes and adapt scenes dynamically with the OSC Sequencer Software VIZR or Chataigne.

### dsx.text
- a custom build module to display Headlines and other one line text 

### dsx.textlines
- a custom build module to display lines of text (read from a simple text file) like subititles, descriptions of data or dialogs. the content displayed is prepared in a .txt file, where every line can be adressed inside the module.

### dsx.cvs
- a custom module to read amd convert CVS / TSV data into a OPENGL compatible format. To display data sources like temperature, changes of glacier volume or size etc, we developed this modules. it read the contents and converts the numbers to MAX Styled data, that we could be used later to display the data as diagrams or line charts. additionally we can morph or mix this data with sound or other sources.

### dsx.model
- a custom module to read and display 3D Model Files. To visualize 3D modules in complex scenes, together with text or data sources, we developed this module. It uses different render techniques, like points, lines or triangles to draw the modules. additionally it possible to change size, rotation or positiion. 
- a integrated material editor can be used to change and overwrite the default material of the 3D file.
- animated 3D Files, like sequences captured with ROKOKO MoCap suite, can be played and manipulated.

### dsx.models
- a custom module that is based on dsx.module, except it can produces multiple copies of the 3D file with different behaviours. It has the same features like dsx.model and extends this functionality to every copy. so we can display a group of dancers, flowers or stones. This "cloud" of models can be animated based on a noise, sound or other data sources. 

### dsx.movie
- a custom module that display a movie in 3D space.

### dsx.partmodel
- a custom module that takes the output of dsx.model and creates a cloud of particles from it.

### dsx.playlist
- a custom module that can be used to create scenes for projects. because all parameters in modules we created are adressable, we can store, change and modulate them in scenes. each scene can have custom transition time and, for automatic playback, specific timepoints. 

### dsx.texture
- a custom module that is used to store and change textures, together with a normal and  height map. thes can be used as material input to dsx.model or dsx.models.   

### dsx.out
- a custom module that is used to display and render the content. Additional post processing shaders are used to adapt the result. 
- a virtual camera can be used to change the view point or move around in our scene.