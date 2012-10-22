#version 3.7;
#include "common.inc"

union {
	object { Floor }

	object { Refaxis }
	object { XRefaxis }
	object { YRefaxis }

	RotateSet(FourfoldAxis, x + y + z, 3)
	RotateSet(TThreefoldAxis1, z, 4)
	RotateSet(OTwofoldAxis, z, 4)
	object {
		RotateSet2(XYTwofoldAxis, z, 2)
		rotate 45 * z
	}

	RotateSet(RotateSet(RotateSet(CubicCoil, x + y + z, 3), x, 2), z, 4)
	ClockRotate(4)
}

