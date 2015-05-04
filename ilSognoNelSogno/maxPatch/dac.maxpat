{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 5,
			"minor" : 1,
			"revision" : 9
		}
,
		"rect" : [ 689.0, 122.0, 572.0, 507.0 ],
		"bglocked" : 0,
		"defrect" : [ 689.0, 122.0, 572.0, 507.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 0,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 0,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 0,
		"toolbarvisible" : 1,
		"boxanimatetime" : 200,
		"imprint" : 0,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "gain~",
					"stripecolor" : [ 0.678431, 0.866667, 0.898039, 0.698039 ],
					"numoutlets" : 2,
					"patching_rect" : [ 30.0, 270.0, 30.0, 140.0 ],
					"id" : "obj-12",
					"outlettype" : [ "signal", "int" ],
					"bgcolor" : [ 1.0, 0.0, 0.0, 1.0 ],
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "mainfilter",
					"numoutlets" : 1,
					"patching_rect" : [ 360.0, 150.0, 59.0, 20.0 ],
					"id" : "obj-19",
					"fontname" : "Arial",
					"outlettype" : [ "signal" ],
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "mainfilter",
					"numoutlets" : 1,
					"patching_rect" : [ 270.0, 150.0, 59.0, 20.0 ],
					"id" : "obj-18",
					"fontname" : "Arial",
					"outlettype" : [ "signal" ],
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "mainfilter",
					"numoutlets" : 1,
					"patching_rect" : [ 180.0, 150.0, 59.0, 20.0 ],
					"id" : "obj-17",
					"fontname" : "Arial",
					"outlettype" : [ "signal" ],
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "mainfilter",
					"numoutlets" : 1,
					"patching_rect" : [ 90.0, 150.0, 59.0, 20.0 ],
					"id" : "obj-11",
					"fontname" : "Arial",
					"outlettype" : [ "signal" ],
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "mainComp",
					"numoutlets" : 1,
					"patching_rect" : [ 360.0, 210.0, 69.0, 20.0 ],
					"id" : "obj-15",
					"fontname" : "Arial",
					"outlettype" : [ "signal" ],
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "mainComp",
					"numoutlets" : 1,
					"patching_rect" : [ 270.0, 210.0, 69.0, 20.0 ],
					"id" : "obj-14",
					"fontname" : "Arial",
					"outlettype" : [ "signal" ],
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "mainComp",
					"numoutlets" : 1,
					"patching_rect" : [ 90.0, 210.0, 69.0, 20.0 ],
					"id" : "obj-13",
					"fontname" : "Arial",
					"outlettype" : [ "signal" ],
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Balandino Di Donato - 2013",
					"numoutlets" : 0,
					"patching_rect" : [ 210.0, 480.0, 157.0, 20.0 ],
					"id" : "obj-38",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "dac is a patch that protect the loudspeakers thanks to a low-pass and high-pass filter, a compressor and a second intensity control.",
					"linecount" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 15.0, 45.0, 540.0, 34.0 ],
					"id" : "obj-37",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "dac",
					"numoutlets" : 0,
					"patching_rect" : [ 15.0, 15.0, 53.0, 29.0 ],
					"id" : "obj-36",
					"fontname" : "Arial",
					"fontface" : 1,
					"fontsize" : 20.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Intensity  controll\n(The first fader is linked to the other)",
					"linecount" : 3,
					"numoutlets" : 0,
					"patching_rect" : [ 450.0, 315.0, 110.0, 48.0 ],
					"id" : "obj-35",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Compressor",
					"numoutlets" : 0,
					"patching_rect" : [ 450.0, 210.0, 106.0, 20.0 ],
					"id" : "obj-32",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Filter",
					"numoutlets" : 0,
					"patching_rect" : [ 450.0, 150.0, 106.0, 20.0 ],
					"id" : "obj-29",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "* 127",
					"numoutlets" : 1,
					"patching_rect" : [ 30.0, 165.0, 39.0, 20.0 ],
					"id" : "obj-28",
					"fontname" : "Arial",
					"outlettype" : [ "int" ],
					"fontsize" : 12.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "mainComp",
					"numoutlets" : 1,
					"patching_rect" : [ 180.0, 210.0, 69.0, 20.0 ],
					"id" : "obj-16",
					"fontname" : "Arial",
					"outlettype" : [ "signal" ],
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "dac~ 1 2 3 4",
					"numoutlets" : 0,
					"patching_rect" : [ 90.0, 450.0, 290.0, 20.0 ],
					"id" : "obj-89",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 4
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numoutlets" : 1,
					"patching_rect" : [ 360.0, 90.0, 25.0, 25.0 ],
					"id" : "obj-9",
					"outlettype" : [ "" ],
					"numinlets" : 0,
					"comment" : "Channel 4"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numoutlets" : 1,
					"patching_rect" : [ 270.0, 90.0, 25.0, 25.0 ],
					"id" : "obj-10",
					"outlettype" : [ "" ],
					"numinlets" : 0,
					"comment" : "Channel 3"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"numoutlets" : 1,
					"patching_rect" : [ 300.0, 270.0, 28.0, 139.0 ],
					"id" : "obj-4",
					"outlettype" : [ "float" ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"numoutlets" : 1,
					"patching_rect" : [ 390.0, 270.0, 28.0, 139.0 ],
					"id" : "obj-5",
					"outlettype" : [ "float" ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "gain~",
					"numoutlets" : 2,
					"patching_rect" : [ 360.0, 270.0, 30.0, 140.0 ],
					"id" : "obj-7",
					"outlettype" : [ "signal", "int" ],
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "gain~",
					"numoutlets" : 2,
					"patching_rect" : [ 270.0, 270.0, 30.0, 140.0 ],
					"id" : "obj-8",
					"outlettype" : [ "signal", "int" ],
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numoutlets" : 1,
					"patching_rect" : [ 30.0, 90.0, 25.0, 25.0 ],
					"id" : "obj-3",
					"outlettype" : [ "" ],
					"numinlets" : 0,
					"comment" : "ON/OFF"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"numoutlets" : 1,
					"patching_rect" : [ 120.0, 270.0, 28.0, 139.0 ],
					"id" : "obj-85",
					"outlettype" : [ "float" ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"numoutlets" : 1,
					"patching_rect" : [ 210.0, 270.0, 28.0, 139.0 ],
					"id" : "obj-6",
					"outlettype" : [ "float" ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "gain~",
					"numoutlets" : 2,
					"patching_rect" : [ 180.0, 270.0, 30.0, 140.0 ],
					"id" : "obj-86",
					"outlettype" : [ "signal", "int" ],
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "gain~",
					"numoutlets" : 2,
					"patching_rect" : [ 90.0, 270.0, 30.0, 140.0 ],
					"id" : "obj-87",
					"outlettype" : [ "signal", "int" ],
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numoutlets" : 1,
					"patching_rect" : [ 180.0, 90.0, 25.0, 25.0 ],
					"id" : "obj-2",
					"outlettype" : [ "" ],
					"numinlets" : 0,
					"comment" : "Channel 2"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numoutlets" : 1,
					"patching_rect" : [ 90.0, 90.0, 25.0, 25.0 ],
					"id" : "obj-1",
					"outlettype" : [ "" ],
					"numinlets" : 0,
					"comment" : "Channel 1"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numoutlets" : 0,
					"patching_rect" : [ 75.0, 135.0, 481.0, 49.0 ],
					"id" : "obj-27",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numoutlets" : 0,
					"patching_rect" : [ 75.0, 195.0, 483.0, 47.0 ],
					"id" : "obj-33",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numoutlets" : 0,
					"patching_rect" : [ 15.0, 255.0, 544.0, 168.0 ],
					"id" : "obj-34",
					"numinlets" : 1
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-28", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 1 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [ 50.5, 420.0, 345.0, 420.0, 345.0, 267.0, 369.5, 267.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 1 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [ 50.5, 420.0, 255.0, 420.0, 255.0, 267.0, 279.5, 267.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 1 ],
					"destination" : [ "obj-86", 0 ],
					"hidden" : 0,
					"midpoints" : [ 50.5, 420.0, 165.0, 420.0, 165.0, 267.0, 189.5, 267.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 1 ],
					"destination" : [ "obj-87", 0 ],
					"hidden" : 0,
					"midpoints" : [ 50.5, 411.0, 75.0, 411.0, 75.0, 267.0, 99.5, 267.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"midpoints" : [ 369.5, 171.0, 369.5, 171.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [ 369.5, 231.0, 369.5, 231.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 0,
					"midpoints" : [ 279.5, 171.0, 279.5, 171.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [ 279.5, 231.0, 279.5, 231.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [ 189.5, 171.0, 189.5, 171.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-86", 0 ],
					"hidden" : 0,
					"midpoints" : [ 189.5, 231.0, 189.5, 231.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [ 99.5, 171.0, 99.5, 171.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-87", 0 ],
					"hidden" : 0,
					"midpoints" : [ 99.5, 231.0, 99.5, 231.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-28", 0 ],
					"hidden" : 0,
					"midpoints" : [ 39.5, 117.0, 39.5, 117.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-89", 0 ],
					"hidden" : 0,
					"midpoints" : [ 39.5, 150.0, 15.0, 150.0, 15.0, 435.0, 99.5, 435.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-87", 0 ],
					"destination" : [ "obj-85", 0 ],
					"hidden" : 0,
					"midpoints" : [ 99.5, 411.0, 75.0, 411.0, 75.0, 255.0, 129.5, 255.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"midpoints" : [ 369.5, 411.0, 345.0, 411.0, 345.0, 255.0, 399.5, 255.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [ 279.5, 411.0, 255.0, 411.0, 255.0, 255.0, 309.5, 255.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-87", 0 ],
					"destination" : [ "obj-89", 0 ],
					"hidden" : 0,
					"midpoints" : [ 99.5, 411.0, 99.5, 411.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-86", 0 ],
					"destination" : [ "obj-89", 1 ],
					"hidden" : 0,
					"midpoints" : [ 189.5, 411.0, 189.833328, 411.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-89", 2 ],
					"hidden" : 0,
					"midpoints" : [ 279.5, 411.0, 280.166656, 411.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-89", 3 ],
					"hidden" : 0,
					"midpoints" : [ 369.5, 411.0, 370.5, 411.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-86", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"midpoints" : [ 189.5, 411.0, 165.0, 411.0, 165.0, 255.0, 219.5, 255.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0,
					"midpoints" : [ 99.5, 117.0, 99.5, 117.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"midpoints" : [ 189.5, 117.0, 189.5, 117.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"midpoints" : [ 279.5, 117.0, 279.5, 117.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [ 369.5, 117.0, 369.5, 117.0 ]
				}

			}
 ]
	}

}
