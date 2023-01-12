$date = "2022-12-16"
Get-ChildItem ".\$date" | Foreach-Object {
  $i = $_.Name.substring(0,1)
  $ts = "$date 18:0$i"
  exiftool "-ModifyDate=$ts" "-DateTimeOriginal=$ts" "-CreateDate=$ts" $_.FullName
}
