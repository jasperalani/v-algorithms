module main

fn test_binary_search() {
	mut sorted_array := [4, 5, 7, 9, 12, 51, 87, 274]
	target := 87
	result := binary_search(mut sorted_array, target)
	assert result == 6
}

fn test_binary_search_slow() {
	mut sorted_array := [4, 5, 7, 9, 12, 51, 87, 274]
	target := 51
	result := binary_search_slow(mut sorted_array, target)
	assert result == 6
}