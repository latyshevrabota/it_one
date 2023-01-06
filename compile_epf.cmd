@chcp 65001
call vrunner session lock --settings devN.json
call vrunner session kill --settings devN.json
call vrunner compileepf .\src\epf .\build\epf --settings devN.json
call vrunner session unlock --settings devN.json