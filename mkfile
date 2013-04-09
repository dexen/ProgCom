MKSHELL=rc

dirs=Parts/ PluginData/ Plugins/ Source/
files=instructionset.txt timing.txt


<| echo ''''src='''' ^ `{ls -1 Source/*.cs}


build:VQ: Build/ Build/Plugins/ProgCom.dll $files
	tar cv $dirs $files | tar xv -C Build/

Build/Plugins/ProgCom.dll:Q: Build/Plugins/ $src
	mcs -out:$target -r:Assembly-CSharp.dll -r:UnityEngine.dll -L ../KSP_linux/KSP_Data/Managed/ -target:library $src

Build/ Build/Plugins/:Q:
	mkdir $target

Build/Plugins/:Q: Build/

install:VQ: build
	tar cv -C Build/ . | tar xv -C ../KSP_linux/
