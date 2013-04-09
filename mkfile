MKSHELL=rc

dirs=Parts/ PluginData/ Plugins/ Source/
files=instructionset.txt timing.txt


<| echo ''''src='''' ^ `{ls -1 Source/*.cs}


build:VQ: Build/ProgCom.dll

Build/ProgCom.dll:Q: Build/ $src
	mcs -out:$target -r:Assembly-CSharp.dll -r:UnityEngine.dll -L ../KSP_linux/KSP_Data/Managed/ -target:library $src

Build/:Q:
	mkdir Build/

install:VQ: build
	tar cv $dirs $files | tar xv -C ../KSP_linux/
