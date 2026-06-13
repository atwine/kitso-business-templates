@echo off
title Kitso Nexus – Templates Viewer

:: ─────────────────────────────────────────────────────────
:: Starts a local web server and opens both the business
:: card and flyer in the browser automatically.
:: Tries Node.js first, falls back to Python.
:: ─────────────────────────────────────────────────────────

set PORT=5500
set DIR=%~dp0

:: Check for Node.js
where node >nul 2>&1
if %errorlevel% == 0 (
    echo Starting server with Node.js on port %PORT%...
    timeout /t 1 /nobreak >nul
    start "" http://localhost:%PORT%/business-card.html
    start "" http://localhost:%PORT%/flyer.html
    node -e "const http=require('http'),fs=require('fs'),path=require('path');http.createServer((req,res)=>{let f=path.join('%DIR%'.replace(/\\/g,'/'),decodeURIComponent(req.url==='/'?'/business-card.html':req.url));fs.readFile(f,(e,d)=>{if(e){res.writeHead(404);res.end('Not found');}else{const ext=path.extname(f);const mime={'html':'text/html','css':'text/css','js':'application/javascript','jpg':'image/jpeg','jpeg':'image/jpeg','png':'image/png','svg':'image/svg+xml'};res.writeHead(200,{'Content-Type':mime[ext.slice(1)]||'application/octet-stream'});res.end(d);}});}).listen(%PORT%,()=>console.log('Server running at http://localhost:%PORT%\n\nPages:\n  Business Card : http://localhost:%PORT%/business-card.html\n  Flyer         : http://localhost:%PORT%/flyer.html\n\nPress Ctrl+C to stop.'));"
    goto end
)

:: Fallback: Check for Python
where python >nul 2>&1
if %errorlevel% == 0 (
    echo Starting server with Python on port %PORT%...
    timeout /t 1 /nobreak >nul
    start "" http://localhost:%PORT%/business-card.html
    start "" http://localhost:%PORT%/flyer.html
    python -m http.server %PORT% --directory "%DIR%"
    goto end
)

:: Neither found
echo -------------------------------------------------------
echo  ERROR: Neither Node.js nor Python was found.
echo  Please install one of the following:
echo    Node.js : https://nodejs.org
echo    Python  : https://www.python.org
echo -------------------------------------------------------
pause

:end
