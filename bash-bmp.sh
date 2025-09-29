width=2
height=2
u32le() {
   local n=$1
   local octet1=$(( (n  >> 24  ) & 0xFF ))
   local octet2=$(( (n  >> 16  ) & 0xFF ))
   local octet3=$(( (n  >> 8   ) & 0xFF ))
   local octet4=$(( (n  >> 0   ) & 0xFF ))

  printf -v out '\\x%02x\\x%02x\\x%02x\\x%02x' $octet4 $octet3 $octet2 $octet1
  printf '%b' "$out"


   echo "input: $n"
   echo "octets: $octet1 $octet2 $octet3 $octet4"
 } 
u16le() {
   local n=$1
   local octet1=$(( (n  >> 8  ) & 0xFF ))
   local octet2=$(( (n  >> 0  ) & 0xFF ))

  printf -v out '\\x%02x\\x%02x' $octet4 $octet3 $octet2 $octet1
  printf '%b' "$out"


   echo "input: $n"
   echo "octets: $octet1 $octet2"
 }
u32le  $((16#12345678))
exit 
bits_per_px=24
bytes_per_px=$(bc <<< "$bits_per_px/8")
row_size=$((width=4 * bytes_per_px))
padding=0
while ((row_size % 4 != 0)); do
              ((padding++))
              ((row_size++))
done
pixel_data_size=$((row_size * height))
offset=$((14 + 40))
# Size of  entire file
file_size=$((pixel_data_size + offset))
printf 'BMF'
## FileSize
u32le $file_size

u16le 1

u32le $offset

u32le 40

u32le $width
u16le $bits_per_px

u32le 0

u32le 0

u32le 0

u32le 0

u32le 0

u32le 0


# Data
rgb() {
   local b=$1
   local g=$2
   local r=$3
   local out
  printf -v out '\\x%02x\\x%02x\\x%02x' "b" "g" "r"

  printf '%b' "$out"


   echo "input: $n"
   echo "octets: $octet1 $octet2 $octet3 $octet4"
 } 
rgb 0 0 0
rgb 255 255 255
for i in $(seq 1 $padding); do
   printf '0'
done
rgb 255 0 0
rgb 0 255 0




