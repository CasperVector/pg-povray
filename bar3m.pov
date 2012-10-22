#version 3.7;
#include "common.inc"

union {
	object { Floor }
	object { Refaxis }

	object { Symcentre }
	object { ThreefoldAxis2 }
	RotateSet2(XMirror, z, 3)
	RotateSet2(XYTwofoldAxis, z, 3)

	RotinvSet(MirrorSet(HexCoil, x), z, 3)

	// KFF_DIV = 3
	ClockRotate(3)
}

