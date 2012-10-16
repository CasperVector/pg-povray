#include "common.inc"

union {
	object { Floor }
	object { Refaxis }

	object { Symcentre }
	object { HexMirror }
	object { SixfoldAxis }

	MirrorSet(RotateSet(ThreefoldCoil, z, 6), z)
	ClockRotate(6)
}

