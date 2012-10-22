#version 3.7;
#include "common.inc"

union {
	object { Floor }

	object { Refaxis }
	object { XRefaxis }
	object { YRefaxis }

	object { TwofoldAxis }
	object { XTwofoldAxis }
	object { YTwofoldAxis }
	AltRotateSet(TThreefoldAxis1, TThreefoldAxis2, z, 4)

	RotateSet(RotateSet(RotateSet(CubicCoil, x + y + z, 3), z, 2), x, 2)

	// KFF_DIV = 2
	ClockRotate(2)
}

