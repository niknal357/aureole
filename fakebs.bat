@echo off
(
echo ^<html style="padding: 0;"^>^<head^>^<title^>Microsoft Windows^</title^> 
echo. 
echo ^<hta:application id="oBVC" 
echo applicationname="BSOD"  
echo version="1.0" 
echo maximizebutton="no" 
echo minimizebutton="no" 
echo sysmenu="no" 
echo Caption="no" 
echo windowstate="maximize"/^> 
echo. 
echo ^</head^>^<body bgcolor="#008AD8" scroll="no" style="padding: 80pt;"^>
echo ^<span style="font-size: 120pt; font-family: Arial, Helvetica, sans-serif; color: white;"^>
echo :^(
echo ^</span^>
echo ^<br^>
echo ^<br^>
echo ^<br^>
echo ^<br^>
echo ^<span style="font-size: 30pt; font-family: Arial, Helvetica, sans-serif; color: white;"^>
echo Your PC ran into a problem and needs to reload its boot sector.^<br^>This may take a few minutes.
echo ^</span^>
echo ^<br^>
echo ^<br^>
echo ^<span style="font-size: 70pt; font-family: Arial, Helvetica, sans-serif; color: white;"^>
echo ^<span id="percentage"^>0^</span^>%%
echo ^</span^>
echo ^</body^>
echo.
echo ^<script language="javascript"^>
echo function noClick^(^) {
echo if ^(^(event.button==1^)^|^|^(event.button==2^)^) {
echo alert^('Error: 00101100x00100100 missing keymgr.dll'^)
echo }
echo }
echo document.onmousedown=noClick
echo.
echo ^</script^>
echo ^<script^>
echo var i = 0;
echo setInterval^(function^(^){
echo i += 1;
echo }, 250^)
echo setInterval^(function^(^){
echo if ^(i ^> 100^){
echo i = 100
echo setTimeout^(function^(^){close^(^)}, 1775^)
echo };
echo document.getElementById^("percentage"^).innerHTML = i;
echo }, 1775^)
echo ^</script^>
echo.  
echo ^</html^> 
) > bsod.hta
start "" "bsod.hta"
