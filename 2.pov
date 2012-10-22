#version 3.7;
#include "common.inc"

union {
	object { Floor }
	object { Refaxis }
	object { TwofoldAxis }

	RotateSet(SimpleCoil, z, 2)
	ClockRotate(2)
}

