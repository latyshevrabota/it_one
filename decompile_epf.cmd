@chcp 65001
call vrunner session lock --settings devN.json
call vrunner session kill --settings devN.json
call vrunner decompileepf .\build\epf .\src\epf --settings devN.json
call vrunner session unlock --settings devN.json