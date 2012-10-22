#version 3.7;
#include "common.inc"

union {
	object { Floor }

	object { Refaxis }
	object { XRefaxis }
	object { YRefaxis }

	object { Symcentre }
	RotateSet(RotateSet2(XMirror, z, 4), x + y + z, 3)
	RotateSet(FourfoldAxis, x + y + z, 3)
	AltRotateSet(TThreefoldAxis1, TThreefoldAxis2, z, 4)
	RotateSet(OTwofoldAxis, z, 4)
	object {
		RotateSet2(XYTwofoldAxis, z, 2)
		rotate 45 * z
	}

	RotateSet(RotateSet(
		RotateSet(MirrorSet(CubicCoil, x - y), x + y + z, 3),
	x, 2), z, 4)

	// KFF_DIV = 4
	ClockRotate(4)
}

