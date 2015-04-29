{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 5,
			"minor" : 1,
			"revision" : 9
		}
,
		"rect" : [ 495.0, 44.0, 276.0, 221.0 ],
		"bglocked" : 0,
		"defrect" : [ 495.0, 44.0, 276.0, 221.0 ],
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
					"maxclass" : "newobj",
					"text" : "adc~ 1 2 3",
					"id" : "obj-3",
					"fontname" : "Arial",
					"numinlets" : 1,
					"patching_rect" : [ 195.0, 120.0, 67.0, 20.0 ],
					"numoutlets" : 3,
					"fontsize" : 12.0,
					"outlettype" : [ "signal", "signal", "signal" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "unpack a 0 0. 0. 0.",
					"id" : "obj-93",
					"fontname" : "Arial",
					"numinlets" : 1,
					"patching_rect" : [ 90.0, 75.0, 110.0, 20.0 ],
					"numoutlets" : 5,
					"fontsize" : 12.0,
					"outlettype" : [ "", "int", "float", "float", "float" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "OpenSoundControl",
					"id" : "obj-30",
					"fontname" : "Arial",
					"numinlets" : 1,
					"patching_rect" : [ 15.0, 45.0, 115.0, 20.0 ],
					"numoutlets" : 3,
					"fontsize" : 12.0,
					"outlettype" : [ "", "", "OSCTimeTag" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "udpreceive 7400 CNMAT",
					"id" : "obj-29",
					"fontname" : "Arial",
					"numinlets" : 1,
					"patching_rect" : [ 15.0, 15.0, 141.0, 20.0 ],
					"numoutlets" : 1,
					"fontsize" : 11.595187,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"bgcolor" : [ 0.74902, 0.0, 0.0, 1.0 ],
					"mode" : 1,
					"texton" : "ON",
					"fontlink" : 1,
					"id" : "obj-7",
					"fontname" : "Arial",
					"presentation_rect" : [ 90.0, 75.0, 87.982422, 49.396484 ],
					"text" : "OFF",
					"bgovercolor" : [ 1.0, 0.0, 0.0, 1.0 ],
					"numinlets" : 1,
					"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"borderoncolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"bgoveroncolor" : [ 0.0, 1.0, 0.0, 1.0 ],
					"textoveroncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 165.0, 15.0, 87.982422, 49.396484 ],
					"fontface" : 1,
					"numoutlets" : 3,
					"fontsize" : 36.0,
					"presentation" : 1,
					"bgoncolor" : [ 0.0, 0.74902, 0.0, 1.0 ],
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"outlettype" : [ "", "", "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "controlPannel",
					"id" : "obj-1",
					"fontname" : "Arial",
					"numinlets" : 5,
					"patching_rect" : [ 15.0, 150.0, 86.0, 20.0 ],
					"numoutlets" : 0,
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "dataTest",
					"id" : "obj-2",
					"fontname" : "Arial",
					"numinlets" : 8,
					"patching_rect" : [ 15.0, 120.0, 137.0, 20.0 ],
					"numoutlets" : 4,
					"fontsize" : 12.0,
					"outlettype" : [ "float", "float", "float", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "dac",
					"id" : "obj-27",
					"fontname" : "Arial",
					"numinlets" : 5,
					"patching_rect" : [ 60.0, 180.0, 199.0, 20.0 ],
					"numoutlets" : 0,
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t b b b b",
					"id" : "obj-20",
					"fontname" : "Arial",
					"numinlets" : 1,
					"patching_rect" : [ 15.0, 75.0, 69.5, 20.0 ],
					"numoutlets" : 4,
					"fontsize" : 12.0,
					"outlettype" : [ "bang", "bang", "bang", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "signalProcessing",
					"id" : "obj-81",
					"fontname" : "Arial",
					"numinlets" : 7,
					"patching_rect" : [ 105.0, 150.0, 156.0, 20.0 ],
					"numoutlets" : 4,
					"fontsize" : 12.0,
					"outlettype" : [ "signal", "signal", "signal", "signal" ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [ 24.5, 96.0, 24.5, 96.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 1 ],
					"destination" : [ "obj-2", 1 ],
					"hidden" : 0,
					"midpoints" : [ 41.333332, 117.0, 41.357143, 117.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 2 ],
					"destination" : [ "obj-2", 2 ],
					"hidden" : 0,
					"midpoints" : [ 58.166668, 105.0, 58.214287, 105.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 3 ],
					"destination" : [ "obj-2", 3 ],
					"hidden" : 0,
					"midpoints" : [ 75.0, 105.0, 75.071426, 105.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 3 ],
					"destination" : [ "obj-1", 3 ],
					"hidden" : 0,
					"midpoints" : [ 142.5, 141.0, 75.0, 141.0, 75.0, 147.0, 74.75, 147.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 2 ],
					"destination" : [ "obj-1", 2 ],
					"hidden" : 0,
					"midpoints" : [ 103.166664, 141.0, 60.0, 141.0, 60.0, 147.0, 58.0, 147.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 1 ],
					"destination" : [ "obj-1", 1 ],
					"hidden" : 0,
					"midpoints" : [ 63.833332, 141.0, 42.0, 141.0, 42.0, 147.0, 41.25, 147.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [ 24.5, 141.0, 24.5, 141.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 3 ],
					"destination" : [ "obj-81", 0 ],
					"hidden" : 0,
					"midpoints" : [ 142.5, 141.0, 117.0, 141.0, 117.0, 147.0, 114.5, 147.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 2 ],
					"destination" : [ "obj-81", 1 ],
					"hidden" : 0,
					"midpoints" : [ 103.166664, 147.0, 137.333328, 147.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 1 ],
					"destination" : [ "obj-81", 2 ],
					"hidden" : 0,
					"midpoints" : [ 63.833332, 147.0, 160.166672, 147.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-81", 3 ],
					"hidden" : 0,
					"midpoints" : [ 24.5, 147.0, 183.0, 147.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-93", 4 ],
					"destination" : [ "obj-2", 4 ],
					"hidden" : 0,
					"midpoints" : [ 190.5, 105.0, 91.928574, 105.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-93", 3 ],
					"destination" : [ "obj-2", 5 ],
					"hidden" : 0,
					"midpoints" : [ 167.75, 105.0, 108.785713, 105.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-93", 2 ],
					"destination" : [ "obj-2", 6 ],
					"hidden" : 0,
					"midpoints" : [ 145.0, 105.0, 125.64286, 105.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-93", 1 ],
					"destination" : [ "obj-2", 7 ],
					"hidden" : 0,
					"midpoints" : [ 122.25, 105.0, 142.5, 105.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [ 24.5, 66.0, 24.5, 66.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-93", 0 ],
					"destination" : [ "obj-1", 4 ],
					"hidden" : 0,
					"midpoints" : [ 99.5, 105.0, 162.0, 105.0, 162.0, 144.0, 91.5, 144.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 1 ],
					"destination" : [ "obj-93", 0 ],
					"hidden" : 0,
					"midpoints" : [ 72.5, 72.0, 99.5, 72.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 0 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 0,
					"midpoints" : [ 24.5, 36.0, 24.5, 36.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-27", 0 ],
					"hidden" : 0,
					"midpoints" : [ 174.5, 72.0, 210.0, 72.0, 210.0, 105.0, 162.0, 105.0, 162.0, 147.0, 102.0, 147.0, 102.0, 177.0, 69.5, 177.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 1 ],
					"destination" : [ "obj-81", 5 ],
					"hidden" : 0,
					"midpoints" : [ 228.5, 141.0, 228.666672, 141.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-81", 4 ],
					"hidden" : 0,
					"midpoints" : [ 204.5, 141.0, 205.833328, 141.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-81", 3 ],
					"destination" : [ "obj-27", 4 ],
					"hidden" : 0,
					"midpoints" : [ 251.5, 171.0, 249.5, 171.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-81", 2 ],
					"destination" : [ "obj-27", 3 ],
					"hidden" : 0,
					"midpoints" : [ 205.833328, 171.0, 204.5, 171.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-81", 1 ],
					"destination" : [ "obj-27", 2 ],
					"hidden" : 0,
					"midpoints" : [ 160.166672, 171.0, 159.5, 171.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-81", 0 ],
					"destination" : [ "obj-27", 1 ],
					"hidden" : 0,
					"midpoints" : [ 114.5, 171.0, 114.5, 171.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 2 ],
					"destination" : [ "obj-81", 6 ],
					"hidden" : 0,
					"midpoints" : [ 252.5, 147.0, 251.5, 147.0 ]
				}

			}
 ]
	}

}
