#include "common.inc"

union {
	object { Floor }
	object { Refaxis }

	object { TwofoldAxis }
	RotateSet2(XMirror, z, 2)

	RotateSet(MirrorSet(FourfoldCoil, x), z, 2)
	ClockRotate(2)
}

