
# BCB_ROOT=$(realpath instroot)
# export BCB_ROOT_WINE=$(printf 'Z:%s' ${BCB_ROOT} | tr '/' '\\')
export BCB_ROOT_WINE=H:\\t\\instroot
export BCB_ROOT_WINE_CBUILDER5=${BCB_ROOT_WINE}"\\"Borland"\\"CBuilder
export BCB_ROOT_WINE_ESCAPED=$(printf '%s' ${BCB_ROOT_WINE} | sed -e 's/\\/\\\\/g')
export BCB_ROOT_WINE_CBUILDER5_ESCAPED=$(printf '%s' ${BCB_ROOT_WINE_CBUILDER5} | sed -e 's/\\/\\\\/g')
export BCB_ROOT_WINE_CBUILDER5_UTF16_BIN=$(printf '%s' ${BCB_ROOT_WINE_CBUILDER5} | iconv -f UTF-8 -t UTF-16LE | od -An -t x1 -v -w65535 | tr ' ' ',' | tail -c+2)

printf '\xFF\xFE' > all_.reg
cat all.reg | perl -p -e 's/\$\{(\w+)\}/(exists $ENV{$1}?$ENV{$1}:"missing variable $1")/eg' | iconv -f UTF8 -t UTF-16LE >> all_.reg
wine reg import all_.reg

