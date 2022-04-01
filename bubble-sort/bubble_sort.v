module main

fn bubble_sort(mut a []int) []int {
	mut change := false
	for i := 0; i < (a.len - 2); i++ {
		current := a[i]
		next := a[i + 1]
		if a[i] > next {
			change = true 
			a[i] = next
			a[i + 1] = current
		}
	}
	if change {
		// println(a)
		bubble_sort(mut a)
	}

	return a
}