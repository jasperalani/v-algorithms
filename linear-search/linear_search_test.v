module main

fn test_basic_linear_search() {
	mut a := [23, 63, 1, 12, 754]
	mut s := 12
	mut result := basic_linear_search(mut a, s)
	assert result == 3

	s = 13
	result = basic_linear_search(mut a, s)
	assert result == 0
}

fn test_sentinel_linear_search() {
	mut a := [23, 63, 1, 12, 754]
	mut s := 12
	mut result := sentinel_linear_search(mut a, s)
	assert result == 3

	s = 13
	result = sentinel_linear_search(mut a, s)
	assert result == 0
}