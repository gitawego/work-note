## waitForHost

```shell
waitForHost(){
	while true; do
    ping -c 1 $1 > /dev/null 2>&1

    if [[ $? -eq 0 ]]; then
        break
    fi
	done

}

waitForHost "192.168.3.1"
```

## waitForMongo

```shell
waitForMongo(){
	while true; do
		echo "wait for host $1"
    if mongo --quiet "$1/test" --eval 'quit(db.runCommand({ ping: 1 }).ok ? 0 : 2)'; then
			break
		fi
		sleep 3
	done
}

waitForMongo "mongo1:27017"
echo "mongo1 now available"
```

## remove an item from array

```shell
arr=(one two three)
arr=( "${arr[@]/two/}" )
# arr now contains: one three

```

## loop in an array

```shell
# define an array
array=( one two three )
# loop in side an array
for i in "${array[@]}"
do
  echo $i
done

```

## check if element in array

```shell
containsElement () {
  local e match="$1"
  shift
  for e; do [[ "$e" == "$match" ]] && return 0; done
  return 1
}

array=("something to search for" "a string" "test2000")
containsElement "a string" "${array[@]}"
echo $?
# 0
containsElement "blaha" "${array[@]}"
echo $?
# 1

```
