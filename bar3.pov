#version 3.7;
#include "common.inc"

union {
	object { Floor }
	object { Refaxis }

	object { Symcentre }
	object { ThreefoldAxis2 }

	RotinvSet(HexCoil, z, 3)
	ClockRotate(3)
}

