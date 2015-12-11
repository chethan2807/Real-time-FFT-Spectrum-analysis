platgen -p xc7z020clg484-1 -lang vhdl -intstyle default    -msg __xps/ise/xmsgprops.lst system.mhs
cd synthesis
del system_xst.scr
cd ..
copy system_xst.scr synthesis

cd synthesis

if exist xst rmdir /s /q xst

echo "xst -ifn "system_xst.scr" -intstyle silent"

echo "Running XST synthesis ..."

xst -ifn "system_xst.scr" -intstyle silent
if errorlevel 1 exit 1

echo "XST completed"

if exist xst rmdir /s /q xst
exit 0