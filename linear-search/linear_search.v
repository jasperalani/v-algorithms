module main
import time

fn main () {
	mut a := [23, 63, 1, 12, 754]
	mut s := 754

	mut stopwatch := time.new_stopwatch()
	stopwatch.start()

	test_for1(mut a, s)

	stopwatch.stop()
	println(stopwatch.elapsed())

	stopwatch.start()

	test_for(mut a, s)

	stopwatch.stop()
	println(stopwatch.elapsed())

	// test_for()
}

fn test_for1(mut l []int, t int) int {

	mut i := 0
	n := l.len

	mut found := 0

	for {
		if l[i] == t {
			found = i
			break
		}

		i++
		
		if i >= n {
			break
		}
	}

	return found
}

fn test_for(mut l []int, t int) int {

	mut i := 0
	n := l.len

	mut found := 0

	l << t

	for {
		if l[i] == t {
			if i < n {
				found = i
				break
			} else {
				break
			}
		}
		i++
	}

	return found
}

fn basic_linear_search(mut l []int, t int) int {

	for i := 0; i < l.len; i++ { 
		if l[i] == t {
			return i
		}
	}
	return 0
}

fn sentinel_linear_search(mut l []int, t int) int {
	l << t
	for i := 0; i < l.len; i++ {
		if l[i] == t {
			if i < (l.len - 1) {
				return i
			} else {
				return 0
			}
		}
	}
}