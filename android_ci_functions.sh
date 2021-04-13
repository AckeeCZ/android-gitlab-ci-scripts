
# Prefix all space separated words with given prefix.
# Parameters: $1 - prefix word
#             $2 - words separated by space
prefix_all() {
  prefix=$1
  variants=$2
  local IFS=" "
  read -ra arr <<< "$variants"
  printf '%s\n' "${arr[*]/#/$prefix}"
}
