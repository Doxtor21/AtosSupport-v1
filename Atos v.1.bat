@echo off
title Hello Atos 24*7 Agent
color 0A

color
:inicio
cls
echo ********************
echo *****  24*7 ASISTENTE V1  *****
echo ********************
echo.
echo 1) Sitios WEB
echo 2) Genesys Workspace
echo 3) Contrasenas y accesos
echo 4) Opcion 4
echo 5) Opcion 5
echo.
echo 6) Salir



set /p var=Seleccione una opcion [1-6]:
if "%var%"=="1" goto op1
if "%var%"=="2" goto op2
if "%var%"=="3" goto op3
if "%var%"=="4" goto op4
if "%var%"=="5" goto op5
if "%var%"=="6" goto salir

::Mensaje de error, validaci�n cuando se selecciona una opci�n fuera de rango
echo. El numero "%var%" no es una opcion valida, por favor intente de nuevo.
echo.
pause
echo.
goto inicio

        :op1
        cls
        echo.
        echo *****  24*7 ASISTENTE V1  *****
        echo.
        echo +++++  OPCION 1 SITIOS WEB ++++
        echo.
        echo 1) Snow (Atos global services)
        echo 2) SDM 12.9
        echo 3) Nomad Citrix
        echo 4) Acciona Service-now (SNOW)
        echo 5) Hospital sant pau (VM)
        echo 6) Todas las pagina
        echo 7) Admingate (saacon)
        echo.
        echo 8) Volver
        echo.
        set /p var001= Por favor elige una opcion [1-7]:
        if "%var001%"=="1" goto op1.1
        timeout /nobreak 06
        if "%var001%"=="2" goto op1.2
        timeout /nobreak 06
        if "%var001%"=="3" goto op1.3
        timeout /nobreak 06
        if "%var001%"=="4" goto op1.4
        timeout /nobreak 06
        if "%var001%"=="5" goto op1.5
        timeout /nobreak 06
        if "%var001%"=="7" goto op1.8
        timeout /nobreak 06
        if "%var001%"=="8" goto Inicio

        :op1.1
        start https://atosglobal.service-now.com/sp/?id=sso&portal-id=null
        cls
        goto op1

        :op1.2
        start https://sdm.atos-services.net/CAisd/pdmweb2.exe
        cls
        goto op1

        :op1.3
        start https://shared.eap.ao-srv.com/vpn/index.html
        cls
        goto op1

        :op1.4
        start https://acciona.service-now.com
        cls
        goto op1

        :op1.5
        echo Recuerda que para esta pagina vas a necesitar desactivar el proxy en "Configuracion de Internet"
        echo Opciones de Internet > Conexiones > Configuracion de LAN > (Desactivar "usar scripts de configuracion automatica")
        pause >null
        start https://prades.santpau.cat/portal/webclient/index.html#/launchitems
        cls
        goto op1

        :op1.7
        start https://acciona.service-now.com
        start https://shared.eap.ao-srv.com/vpn/index.html
        start https://sdm.atos-services.net/CAisd/pdmweb2.exe
        start https://atosglobal.service-now.com/sp/?id=sso&portal-id=null
        start https://prades.santpau.cat/portal/webclient/index.html#/launchitems
        cls
        goto op1

        :op1.8
        start iexplore.exe https://emea-de-083.asn.saacon.net
        cls
        goto op1

:op2
echo.
echo. Has elegido la opcion No. 2
echo.
::Aqu� van las l�neas de comando de tu opci�n
color 09
CD "C:\Program Files (x86)\Atos\Workspace Desktop Edition\"
START InteractionWorkspace.exe
echo.
goto inicio

:op3
echo.
echo. Has elegido la opcion No. 3
echo.
::Aqu� van las l�neas de comando de tu opci�n
START https://atos365-my.sharepoint.com/:x:/r/personal/enzo_miranda_external_atos_net/_layouts/15/WopiFrame.aspx?sourcedoc={c3da5f78-acd0-47f7-8666-0a0243ae2b21}
color 02
echo.
goto inicio

:op4
echo.
echo. Has elegido la opcion No. 4
echo.
::Aqu� van las l�neas de comando de tu opci�n
color 0B
echo.
pause
goto inicio

:op5
echo.
echo. Has elegido la opcion No. 5
echo.
::Aqu� van las l�neas de comando de tu opci�n
color 0C
echo.
pause
goto inicio

:salir
@cls&exit
