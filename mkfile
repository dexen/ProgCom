MKSHELL=rc

dirs=Parts/ PluginData/ Plugins/ Source/
files=instructionset.txt timing.txt

install:VQ:
	tar cv $dirs $files | tar xv -C ../KSP_linux/
