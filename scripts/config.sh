
BCB_ROOT=$(realpath instroot)
BCB_ROOT_CBUILDER5=${BCB_ROOT}/Borland/CBuilder
mkdir -p ${BCB_ROOT_CBUILDER5}/Bin
# export BCB_ROOT_WINE=$(printf 'Z:%s' ${BCB_ROOT} | tr '/' '\\')
# export BCB_ROOT_CBUILDER5_WINE=$(printf 'Z:%s' ${BCB_ROOT_CBUILDER5} | tr '/' '\\')
export BCB_ROOT_WINE=H:\\t\\instroot
export BCB_ROOT_CBUILDER5_WINE=H:\\t\\instroot\\Borland\\CBuilder
printf '%s' "-I${BCB_ROOT_CBUILDER5_WINE}\\Include;${BCB_ROOT_CBUILDER5_WINE}\\Include\\vcl"$'\r\n'"-L${BCB_ROOT_CBUILDER5_WINE}\\Lib;${BCB_ROOT_CBUILDER5_WINE}\\Lib\\obj;${BCB_ROOT_CBUILDER5_WINE}\\Lib\\release"$'\r\n' > ${BCB_ROOT_CBUILDER5}/"Bin/bcc32.cfg"
printf '%s' "-aWinTypes=Windows;WinProcs=Windows;DbiProcs=BDE;DbiTypes=BDE;DbiErrs=BDE"$'\r\n'"-u${BCB_ROOT_CBUILDER5_WINE}\\Lib;${BCB_ROOT_CBUILDER5_WINE}\\Lib\\Obj"$'\r\n' > ${BCB_ROOT_CBUILDER5}/"Bin/dcc32.cfg"
printf '%s' "-L${BCB_ROOT_CBUILDER5_WINE}\\Lib;${BCB_ROOT_CBUILDER5_WINE}\\Lib\\obj;${BCB_ROOT_CBUILDER5_WINE}\\Lib\\release"$'\r\n' > ${BCB_ROOT_CBUILDER5}/"Bin/ilink32.cfg"
printf '%s' "[Program]"$'\r\n'"TREGSVR=${BCB_ROOT_CBUILDER5_WINE}\\bin\\tregsvr.exe"$'\r\n'"[Register]"$'\r\n'"File1= -t C:\windows\system32\STDOLE2.TLB"$'\r\n'"File3=C:\windows\system32\STDVCL40.DLL"$'\r\n'"File4=C:\windows\system32\OLEAUT32.DLL"$'\r\n''File5="'"${BCB_ROOT_WINE}\\"'Common Files\Borland Shared\Debugger\bordbk51.dll"'$'\r\n' > ${BCB_ROOT_CBUILDER5}/"Bin/instreg.dat"
# Skipped: Borland/CBuilder5/Uninst.isu
# Skipped: Common Files/Borland Shared/BDE/IDAPI.CFG
# Skipped: InterBase Corp/InterBase/ib_install.log
# Skipped: InterBase Corp/InterBase/ibuninst.000
