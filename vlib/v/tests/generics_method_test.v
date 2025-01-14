struct Point {
mut:
	x int
	y int
}

fn (mut p Point) translate<T>(x T, y T) {
	p.x += x
	p.y += y
}

fn test_generic_method() {
	mut pot := Point{}
	pot.translate<int>(1, 3)
	pot.translate(1, 3)
	println(pot)
	assert pot == Point{
		x: 2
		y: 6
	}
}
