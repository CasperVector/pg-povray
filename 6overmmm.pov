#include "common.inc"

union {
	object { Floor }
	object { Refaxis }

	object { Symcentre }
	object { HexMirror }
	object { SixfoldAxis }
	object { ThreefoldAxis }
	RotateSet2(XMirror, z, 6)
	AltRotateSet2(XYTwofoldAxis, XTwofoldAxis, z, 6)

	RotateSet(MirrorSet(MirrorSet(HexCoil, x), z), z, 6)
	ClockRotate(6)
}

