﻿all: build
BEPINEX_VERSION = 5

clean:
	@dotnet clean

restore:
	@dotnet restore

build-ui:
	@npm install
	@npx esbuild ui_src/ui.jsx --bundle --outfile=dist/ui.js
#	@npx esbuild ui_src/demographics.jsx --bundle --outfile=dist/demographics.js
#	@npx esbuild ui_src/workforce.jsx --bundle --outfile=dist/workforce.js
#	@npx esbuild ui_src/demandfactors.jsx --bundle --outfile=dist/demandfactors.js
#	@npx esbuild ui_src/workplaces.jsx --bundle --outfile=dist/workplaces.js
#	@npx esbuild ui_src/commercial.jsx --bundle --outfile=dist/commercial.js
#	@npx esbuild ui_src/residential.jsx --bundle --outfile=dist/residential.js
#	@npx esbuild ui_src/industrial.jsx --bundle --outfile=dist/industrial.js

copy-ui:
	copy dist\demographics.js "C:\Steam\steamapps\common\Cities Skylines II\Cities2_Data\StreamingAssets\~UI~\HookUI\Extensions\panel.infoloom.demographics.js"
	copy dist\workforce.js "C:\Steam\steamapps\common\Cities Skylines II\Cities2_Data\StreamingAssets\~UI~\HookUI\Extensions\panel.infoloom.workforce.js"
	copy dist\demandfactors.js "C:\Steam\steamapps\common\Cities Skylines II\Cities2_Data\StreamingAssets\~UI~\HookUI\Extensions\panel.infoloom.demandfactors.js"
	copy dist\workplaces.js "C:\Steam\steamapps\common\Cities Skylines II\Cities2_Data\StreamingAssets\~UI~\HookUI\Extensions\panel.infoloom.workplaces.js"
	copy dist\commercial.js "C:\Steam\steamapps\common\Cities Skylines II\Cities2_Data\StreamingAssets\~UI~\HookUI\Extensions\panel.infoloom.commercial.js"
	copy dist\residential.js "C:\Steam\steamapps\common\Cities Skylines II\Cities2_Data\StreamingAssets\~UI~\HookUI\Extensions\panel.infoloom.residential.js"
	copy dist\industrial.js "C:\Steam\steamapps\common\Cities Skylines II\Cities2_Data\StreamingAssets\~UI~\HookUI\Extensions\panel.infoloom.industrial.js"

build: clean restore build-ui
	@dotnet build /p:BepInExVersion=$(BEPINEX_VERSION)
	
dev-ui:
	@npx esbuild ui_src/ui.jsx --bundle --outfile=dist/ui.js
	copy dist\ui.js "C:\Users\Grzegorz\AppData\LocalLow\Colossal Order\Cities Skylines II\Mods\Gooee\Plugins\InfoLoom.js"

dev-demand:
	@npx esbuild ui_src/demandfactors.jsx --bundle --outfile=dist/demandfactors.js
	copy dist\demandfactors.js "C:\Steam\steamapps\common\Cities Skylines II\Cities2_Data\StreamingAssets\~UI~\HookUI\Extensions\panel.infoloom.demandfactors.js"
	
dev-workforce:
	@npx esbuild ui_src/workforce.jsx --bundle --outfile=dist/workforce.js
	copy dist\workforce.js "C:\Steam\steamapps\common\Cities Skylines II\Cities2_Data\StreamingAssets\~UI~\HookUI\Extensions\panel.infoloom.workforce.js"
	
dev-workplaces:
	@npx esbuild ui_src/workplaces.jsx --bundle --outfile=dist/workplaces.js
	copy dist\workplaces.js "C:\Steam\steamapps\common\Cities Skylines II\Cities2_Data\StreamingAssets\~UI~\HookUI\Extensions\panel.infoloom.workplaces.js"

dev-demo:
	@npx esbuild ui_src/demographics.jsx --bundle --outfile=dist/demographics.js
	copy dist\demographics.js "C:\Steam\steamapps\common\Cities Skylines II\Cities2_Data\StreamingAssets\~UI~\HookUI\Extensions\panel.infoloom.demographics.js"

dev-comm:
	@npx esbuild ui_src/commercial.jsx --bundle --outfile=dist/commercial.js
	copy dist\commercial.js "C:\Steam\steamapps\common\Cities Skylines II\Cities2_Data\StreamingAssets\~UI~\HookUI\Extensions\panel.infoloom.commercial.js"
	
dev-res:
	@npx esbuild ui_src/residential.jsx --bundle --outfile=dist/residential.js
	copy dist\residential.js "C:\Steam\steamapps\common\Cities Skylines II\Cities2_Data\StreamingAssets\~UI~\HookUI\Extensions\panel.infoloom.residential.js"
	
dev-ind:
	@npx esbuild ui_src/industrial.jsx --bundle --outfile=dist/industrial.js
	copy dist\industrial.js "C:\Steam\steamapps\common\Cities Skylines II\Cities2_Data\StreamingAssets\~UI~\HookUI\Extensions\panel.infoloom.industrial.js"

package-win:
	@-mkdir dist
	@cmd /c copy /y "bin\Debug\netstandard2.1\0Harmony.dll" "dist\"
	@cmd /c copy /y "bin\Debug\netstandard2.1\PopStruct.dll" "dist\"
	@echo Packaged to dist/

package-unix: build
	@-mkdir dist
	@cp bin/Debug/netstandard2.1/0Harmony.dll dist
	@cp bin/Debug/netstandard2.1/PopStruct.dll dist
	@echo Packaged to dist/