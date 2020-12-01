SELF_DIR="$(dirname $(readlink -f $0))"
debs=`find $SELF_DIR/debs -name "*.deb"`
# echo $deb
# export PATH=/data/data/com.nightmare/files/usr/bin:$PATH

mkdir $SELF_DIR/debs/tmp >/dev/null
for deb in $debs
do
    rm -rf $SELF_DIR/debs/tmp/*
    # echo "dpkg-deb -R $deb $SELF_DIR/debs/tmp"
    dpkg-deb -R $deb $SELF_DIR/debs/tmp
    if [ -f "$SELF_DIR/debs/tmp/data/data/com.nightmare/files/usr/share/info/dir" ]; then
        echo 删除dir
        rm -rf $SELF_DIR/debs/tmp/data/data/com.nightmare/files/usr/share/info/dir
        dpkg-deb -b $SELF_DIR/debs/tmp $deb
    fi
done

# rm -rf ./tmp/data/data/com.nightmare/files/usr/share/info/dir
# dpkg-deb -b ./tmp $deb
# mv $deb ..
#rm -rf tmp