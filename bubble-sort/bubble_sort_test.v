module main

fn test_bubble_sort() {
	mut a := [5, 1, 4, 2, 8]
	result := bubble_sort(mut a)
	assert result == [1, 2, 4, 5, 8]
}