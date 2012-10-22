#version 3.7;
#include "common.inc"

union {
	object { Floor }
	object { Refaxis }

	object { Symcentre }
	object { HexMirror }
	object { SixfoldAxis }

	MirrorSet(RotateSet(HexCoil, z, 6), z)

	// KFF_DIV = 6
	ClockRotate(6)
}

