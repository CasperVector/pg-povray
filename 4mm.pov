#include "common.inc"

union {
	object { Floor }
	object { Refaxis }

	object { FourfoldAxis }
	RotateSet2(XMirror, z, 4)

	RotateSet(MirrorSet(FourfoldCoil, x), z, 4)
	ClockRotate(4)
}

