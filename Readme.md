=== MBLPANEL ===
mblpanel is a [m]odular [b]ash [l]emonbar panel.

configuration is mainly done in each module, with colors being done in "mblpanel" although I may add some configuration for other things

== Adding Modules ==
Adding Modules is easy, write your snippet of code in bash, add it to <mbl_path>/lib, modify "mblpanel" to run your code.
Easiest way is the lazy way

    touch <mbl_path>/lib/my_module.sh
    vim <mbl_path>/lib/my_module.sh
	"#/bin/bash
	 #pull in the hilight function
	 #hilight takes 2 args
	 # an html style color code and the data to color
	 source ./lib/common 
	 function my_function(){
		hilight <html_hex_color_no_tag> <data>
	 }"
    vim <mbl_path>/mblpanel
	" source ./lib/my_module.sh
	  #inside main while loop
	  my_function
	  #rest of code"

