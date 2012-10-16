#include "common.inc"

union {
	object { Floor }

	object { Refaxis }
	object { XRefaxis }
	object { YRefaxis }

	RotateSet(FourfoldAxis, x + y + z, 3)
	AltRotateSet(TThreefoldAxis1, TThreefoldAxis2, z, 4)
	RotateSet(TwofoldAxis, x + y + z, 3)
	RotateSet(object {
		RotateSet2(XMirror, z, 2)
		rotate 45 * z
	}, x + y + z, 3)

	RotateSet(RotateSet(
		RotateSet(MirrorSet(CubicCoil, x - y), x + y + z, 3),
	z, 2), x, 2)
	ClockRotate(2)
}

