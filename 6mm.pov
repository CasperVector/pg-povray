#include "common.inc"

union {
	object { Floor }
	object { Refaxis }

	object { SixfoldAxis }
	RotateSet2(XMirror, z, 6)

	RotateSet(MirrorSet(ThreefoldCoil, x), z, 6)
	ClockRotate(6)
}

