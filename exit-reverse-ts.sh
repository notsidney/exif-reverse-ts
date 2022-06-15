for f in *.JPG; do
h=${f%.JPG};
printf -v i "%02d" $((55 - $h));
ts="2005:01:01 00:00:$i"
exiftool "-ModifyDate=$ts" "-DateTimeOriginal=$ts" "-CreateDate=$ts" $f;
echo $f\t$ts;
done
