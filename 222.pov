#version 3.7;
#include "common.inc"

union{
	object { Floor }

	object { Refaxis }
	object { XRefaxis }
	object { YRefaxis }

	object { TwofoldAxis }
	object { XTwofoldAxis }
	object { YTwofoldAxis }

	RotateSet(RotateSet(TetraCoil, z, 2), x, 2)
	ClockRotate(2)
}

