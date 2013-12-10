
isError=false;
function test {
    "$@"
    status=$?
    if [ $status -ne 0 ]; then
        echo "error with $1"
        isError=True
    fi
    return $status
}

test git ls-remote &> /dev/null 
echo "The value is $isError"

