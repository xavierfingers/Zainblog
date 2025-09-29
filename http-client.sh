exec 3<>/dev/tcp/ysap.daveeddy.com/80

lines=(
   'GET /ping HTTP/1.1'
   'Host: ysap.daveeddy.com'
   'Connection: close'
   ''
   
   )
printf '%s\r\n' "${lines[@]}" >&3

while read -r data <&3; do
   [[ -z "$data" ]] && break
done

exec 3>&-

