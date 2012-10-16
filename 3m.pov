#include "common.inc"

union {
	object { Floor }
	object { Refaxis }

	object { ThreefoldAxis }
	RotateSet2(XMirror, z, 3)

	RotateSet(MirrorSet(ThreefoldCoil, x), z, 3)
	ClockRotate(3)
}

