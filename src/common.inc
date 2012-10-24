// vim:ft=pov

// Makes rendering *EXTREMELY SLOW*, and is thus disabled for now.
#declare MIRROR_REFLECTION = false;
// Set to `false' for even faster rendering.
#declare MULTIPLE_LIGHT_SOURCES = true;

#include "transforms.inc"
#include "colors.inc"

global_settings {
	assumed_gamma 1.0
}

#macro Vector3to2(Vec)
	<Vec.x, Vec.y>
#end

#macro RegularPolygon(Num, Rad)
	#local Tmp = 0;
	#while (Tmp <= Num)
		Vector3to2(vrotate(Rad * x, Tmp / Num * 360 * z))
		#local Tmp = Tmp + 1;
	#end
#end

#macro Spiral(Obj, Num, Rad, Theta, Offset)
	union {
		#local Tmp = 0;
		#while (Tmp < Num)
			object {
				Obj
				translate Rad * x
				rotate Tmp * Theta * z
				translate Tmp * Offset * z
			}
			#local Tmp = Tmp + 1;
		#end
		translate (1 - Num) / 2 * Offset * z
	}
#end

#macro AxisAttach(Axis, Disc, Length)
	union {
		object { Axis }
		object {
			Disc
			translate Length * z
		}
		object {
			Disc
			translate -Length * z
		}
	}
#end

#macro AxisAttach2(Axis, Disc, Length, Theta)
	union {
		object { Axis }
		object {
			Disc
			translate Length * z
		}
		object {
			Disc
			rotate Theta * z
			translate -Length * z
		}
	}
#end

#macro RotateSet(Obj, Axis, Num)
	union {
		#local Tmp = 0;
		#while (Tmp < Num)
			object {
				Obj
				Axis_Rotate_Trans(Axis, Tmp / Num * 360)
			}
			#local Tmp = Tmp + 1;
		#end
	}
#end

#macro RotateSet2(Obj, Axis, Num)
	union {
		#local Tmp = 0;
		#while (Tmp < Num)
			object {
				Obj
				Axis_Rotate_Trans(Axis, Tmp / Num * 180)
			}
			#local Tmp = Tmp + 1;
		#end
	}
#end

#macro AltRotateSet(EvenObj, OddObj, Axis, Num)
	union {
		#local Tmp = 0;
		#while (Tmp < Num)
			object {
				#if (even(Tmp))
					EvenObj
				#else
					OddObj
				#end
				Axis_Rotate_Trans(Axis, Tmp / Num * 360)
			}
			#local Tmp = Tmp + 1;
		#end
	}
#end

#macro AltRotateSet2(EvenObj, OddObj, Axis, Num)
	union {
		#local Tmp = 0;
		#while (Tmp < Num)
			object {
				#if (even(Tmp))
					EvenObj
				#else
					OddObj
				#end
				Axis_Rotate_Trans(Axis, Tmp / Num * 180)
			}
			#local Tmp = Tmp + 1;
		#end
	}
#end

#macro RotinvSet(Obj, Axis, Num)
	union {
		#local Tmp = 0;
		#while (Tmp < (even(Num) ? Num : 2 * Num))
			object {
				Obj
				Axis_Rotate_Trans(Axis, Tmp / Num * 360)
				scale pow(-1, Tmp)
			}
			#local Tmp = Tmp + 1;
		#end
	}
#end

#macro InverseSet(Obj)
	RotinvSet(Obj, z, 1)
#end

#macro MirrorSet(Obj, Axis)
	RotinvSet(Obj, Axis, 2)
#end

#macro ClockRotate(Num)
	rotate clock / Num * 360 * z
#end

#declare MirrorTexture = texture {
	pigment {
		color rgbf<1, 1, 1, 0.9>
	}
	finish {
		ambient 0.1
		diffuse 0.1
#if (MIRROR_REFLECTION)
		reflection 0.25
#end
	}
}

#declare MirrorsideTexture = texture {
	pigment { Black }
}

#declare Symcentre = sphere {
	<0, 0, 0>, 0.075
	pigment { Yellow }
	finish {
		ambient 0.2
		diffuse 0.1
		specular 1
		roughness 0.01
		reflection { 1 metallic }
	}
}

#declare Mirror = intersection {
	prism {
		-0.005, 0.005, 5
		RegularPolygon(4, sqrt(2.001))
		texture { MirrorTexture }
	}
	prism {
		-0.006, 0.006, 5
		RegularPolygon(4, sqrt(2))
		texture { MirrorsideTexture }
	}
	rotate <90, 0, 45>
}

#declare HexMirror = intersection {
	prism {
		-0.005, 0.005, 7
		RegularPolygon(6, 1.081)
		texture { MirrorTexture }
	}
	prism {
		-0.006, 0.006, 7
		RegularPolygon(6, 1.08)
		texture { MirrorsideTexture }
	}
	rotate <90, 0, 90>
}

#declare XMirror = object {
	Mirror
	rotate 90 * y
}

#declare TwofoldDisc = cylinder {
	<0, 0, -0.009>, <0, 0, 0.009>, 0.14
	scale <1, 0.5, 1>
	pigment { Yellow }
	finish { metallic }
}

#declare ThreefoldDisc = prism {
	-0.009, 0.009, 4
	RegularPolygon(3, 0.145)
	rotate 90 * x
	pigment { Red }
	finish { metallic }
}

#declare FourfoldDisc = prism {
	-0.005, 0.005, 5
	RegularPolygon(4, 0.16)
	rotate 90 * x
	pigment { Green }
	finish { metallic }
}

#declare SixfoldDisc = prism {
	-0.005, 0.005, 7
	RegularPolygon(6, 0.15)
	rotate 90 * x
	pigment { MediumSlateBlue }
	finish { metallic }
}

#declare AxisBase = cylinder {
	<0, 0, -1.2>, <0, 0, 1.2>, 0.02
	pigment {
		color 0.62 * White
	}
	finish {
		ambient 0
		diffuse 0
		specular 1
		roughness 0.005
		reflection { 1 metallic }
	}
}

#declare TwofoldAxis = AxisAttach(AxisBase, TwofoldDisc, 1.2)
#declare TwofoldAxis2 = AxisAttach2(AxisBase, TwofoldDisc, 1.2, 90)
#declare ThreefoldAxis = AxisAttach(AxisBase, ThreefoldDisc, 1.2)
#declare ThreefoldAxis2 = AxisAttach2(AxisBase, ThreefoldDisc, 1.2, 180)
#declare FourfoldAxis = AxisAttach(AxisBase, FourfoldDisc, 1.2)
#declare SixfoldAxis = AxisAttach(AxisBase, SixfoldDisc, 1.2)

#declare XTwofoldAxis = object {
	TwofoldAxis
	rotate 90 * y
}

#declare YTwofoldAxis = object {
	TwofoldAxis
	rotate 90 * x
}

#declare XYTwofoldAxis = object {
	TwofoldAxis
	rotate <90, 0, -90>
}

#declare XYTwofoldAxis2 = object {
	TwofoldAxis2
	rotate <90, 0, -90>
}

#declare OTwofoldAxis = object {
	TwofoldAxis
	rotate 45 * y
}

#declare TThreefoldAxis1 = object {
	ThreefoldAxis2
	rotate 180 * z
	rotate acos(sqrt(1 / 3)) / pi * 180 * y + 45 * z
}

#declare TThreefoldAxis2 = object {
	ThreefoldAxis2
	rotate acos(sqrt(1 / 3)) / pi * 180 * y + 45 * z
}

#declare Refaxis = cylinder {
	<0, 0, -1.4>, <0, 0, 1.4>, 0.01
	pigment {
		color 0.2 * White
	}
}

#declare XRefaxis = object {
	Refaxis
	rotate 90 * y
}

#declare YRefaxis = object {
	Refaxis
	rotate 90 * x
}

#declare Floor = plane {
	<0 0 1>, -10
	pigment {
		color 0.75 * White
	}
}

#declare Beed = sphere {
	<0, 0, 0>, 0.03
}

#declare Coil = object {
	Spiral(Beed, 20, 0.03, 360 / 9.5, 0.0125)
	texture {
		pigment { Blue }
		finish {
			ambient 0
			diffuse 0
			specular 1
			roughness 0.005
			reflection { 1 metallic }
		}
	}
}

#declare SimpleCoil = object {
	Coil
	rotate <15, 15, 0>
	translate <0.4, -0.3, 0.7>
}

#declare TetraCoil = object {
	Coil
	translate <0.7, 0.3, 0.6>
}

#declare HexCoil = object {
	Coil
	translate <0.6, -0.1, 0.5>
}

#declare CubicCoil = object {
	Coil
	translate <0.66, 0.54, 0.32>
}

camera {
	location <2.3, 1.5, 1.7>
	sky z
	up y
	right -image_width / image_height * x
	look_at <0, 0, 0>
}

background {
	colour 0.3 * White
}

light_source {
	<-6, 3, 6>
	White
}

#if (MULTIPLE_LIGHT_SOURCES)
light_source {
	<0, 0, 20>
	colour 0.5 * White
	shadowless
}

light_source {
	<6, -4, 1>
	0.5 * White
	shadowless
}
#end

