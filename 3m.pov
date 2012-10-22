#version 3.7;
#include "common.inc"

union {
	object { Floor }
	object { Refaxis }

	object { ThreefoldAxis }
	RotateSet2(XMirror, z, 3)

	RotateSet(MirrorSet(HexCoil, x), z, 3)
	ClockRotate(3)
}

