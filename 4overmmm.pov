#version 3.7;
#include "common.inc"

union {
	object { Floor }
	object { Refaxis }

	object { Symcentre }
	object { Mirror }
	object { FourfoldAxis }
	RotateSet2(XMirror, z, 4)
	AltRotateSet2(XYTwofoldAxis, XTwofoldAxis, z, 4)

	RotateSet(MirrorSet(MirrorSet(TetraCoil, x), z), z, 4)
	ClockRotate(4)
}

