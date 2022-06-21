files=$(find $(ls | grep -v 'v') -name '*_test.v')
for f in $files
do
	echo "Processing $f"
    $(./v/v "./$f")
    if [[ $? == 0 ]]; then
        echo "Test successful."
    fi
done