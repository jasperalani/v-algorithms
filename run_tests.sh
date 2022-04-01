files=$(./v/v ./bubble-sort/bubble_sort_test.v)
if [[ $? == 0 ]]; then
    echo "All tests completed successfully."
fi