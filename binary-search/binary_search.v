module main
import time

// Given a sorted array of n integers and a target value,
// determine if the target exists in the array in logarithmic time using the binary search algorithm.
// If target exists in the array, print the index of it.

fn main () {

	mut sorted_array := [4, 5, 7, 9, 12, 51, 87, 274]
	target := 274

	mut stopwatch := time.new_stopwatch()
	stopwatch.start()

	println(binary_search_slow(mut sorted_array, target))

	stopwatch.stop()
	println(stopwatch.elapsed())

	stopwatch.start()

	println(binary_search(mut sorted_array, target))

	stopwatch.stop()
	println(stopwatch.elapsed())

}

fn binary_search_slow(mut a[]int, t int) int {
	for i := 0; i < a.len; i++ {
		if a[i] == t {
			return i
		}
	} 
	return 0
}

fn binary_search(mut a[] int, t int) int {

	mut low := 0
	mut high := a.len - 1

	for low <= high {
		mut mid := (low + high) / 2

		if t == a[mid] {
			return mid
		}
		
		else if t < a[mid] {
			high = mid - 1
		}

		else {
			low = mid + 1
		}
	}

	return -1
}