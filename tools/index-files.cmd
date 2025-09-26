@echo off

type NUL && "%CODEQL_EXTRACTOR_LUA_ROOT%\tools\win64\extractor.exe" ^
        --file-list "%1" ^
        --source-archive-dir "%CODEQL_EXTRACTOR_LUA_SOURCE_ARCHIVE_DIR%" ^
        --output-dir "%CODEQL_EXTRACTOR_LUA_TRAP_DIR%"

exit /b %ERRORLEVEL%
