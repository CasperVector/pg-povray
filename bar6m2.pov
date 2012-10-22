#version 3.7;
#include "common.inc"

union {
	object { Floor }
	object { Refaxis }

	object { HexMirror }
	object { SixfoldAxis }
	object { ThreefoldAxis }
	RotateSet2(XYTwofoldAxis, z, 3)
	object {
		RotateSet2(XMirror, z, 3)
		rotate 90 * z
	}

	RotinvSet(MirrorSet(HexCoil, y), z, 6)
	ClockRotate(3)
}

