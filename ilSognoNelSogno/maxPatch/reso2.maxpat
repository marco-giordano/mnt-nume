{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 5,
			"minor" : 1,
			"revision" : 9
		}
,
		"rect" : [ 289.0, 77.0, 1023.0, 421.0 ],
		"bglocked" : 0,
		"defrect" : [ 289.0, 77.0, 1023.0, 421.0 ],
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
					"text" : "*~ 0.1",
					"fontname" : "Arial",
					"outlettype" : [ "signal" ],
					"fontsize" : 12.0,
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 225.0, 345.0, 42.0, 20.0 ],
					"id" : "obj-3"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "gain 0 25 50 75 100 125 150 175 200 225 250 275 300 325 350 375 400 425 450 475 500 525 550 575 600 625 650 675 700 725 750 775 800 825 850 875 900 925 950 975 1000 1025 1050 1075 1100 1125 1150 1175 1200 1225 1250",
					"linecount" : 7,
					"fontname" : "Arial",
					"outlettype" : [ "" ],
					"fontsize" : 12.0,
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 360.0, 120.0, 209.0, 101.0 ],
					"id" : "obj-17"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Balandino Di Donato - 2013",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 360.0, 390.0, 187.0, 20.0 ],
					"id" : "obj-16"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Signal",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 255.0, 375.0, 43.0, 20.0 ],
					"id" : "obj-15"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Signal",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 15.0, 75.0, 43.0, 20.0 ],
					"id" : "obj-14"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Q Value",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 615.0, 75.0, 101.0, 20.0 ],
					"id" : "obj-13"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Gain value",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 375.0, 75.0, 101.0, 20.0 ],
					"id" : "obj-12"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Frequency value",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 135.0, 75.0, 101.0, 20.0 ],
					"id" : "obj-11"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "reso is a bank of a bandpass filter set with a specific frequency, gain, and Q value that you can see below.",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 15.0, 45.0, 572.0, 20.0 ],
					"id" : "obj-9"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "reso2",
					"fontname" : "Arial",
					"fontface" : 1,
					"fontsize" : 20.0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 15.0, 15.0, 70.0, 29.0 ],
					"id" : "obj-6"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "freq 0 40 45 51 58 65 74 84 95 108 122 138 156 177 201 277 258 292 330 374 424 480 554 616 697 489 894 1012 1146 1298 1470 1665 1885 2135 2417 2737 3099 3510 3974 4500 5096 5770 6534 7399 8378 9487 10743 12165 13775 15598 17662",
					"linecount" : 5,
					"fontname" : "Arial",
					"outlettype" : [ "" ],
					"fontsize" : 11.595187,
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 60.0, 120.0, 278.0, 71.0 ],
					"id" : "obj-10"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "Q 0 30000 28650 27360 26129 24953 23830 22757 21733 20755 19821 18929 18077 17263 16486 15744 15035 14359 13712 13095 12506 11943 11405 10892 10402 9934 9486 9059 8652 8262 7890 7535 7196 6872 6563 6267 5985 5716 5459 5213 4978 4754 4540 4336 4141 3954 3776 3606 3444 3289 3141",
					"linecount" : 9,
					"fontname" : "Arial",
					"outlettype" : [ "" ],
					"fontsize" : 11.595187,
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 585.0, 120.0, 214.0, 124.0 ],
					"id" : "obj-7"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadbang",
					"fontname" : "Arial",
					"outlettype" : [ "bang" ],
					"fontsize" : 12.0,
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 945.0, 75.0, 60.0, 20.0 ],
					"id" : "obj-8"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 225.0, 375.0, 25.0, 25.0 ],
					"id" : "obj-2",
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"outlettype" : [ "" ],
					"numinlets" : 0,
					"numoutlets" : 1,
					"patching_rect" : [ 15.0, 120.0, 25.0, 25.0 ],
					"id" : "obj-1",
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "+~",
					"fontname" : "Arial",
					"outlettype" : [ "signal" ],
					"fontsize" : 12.0,
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 225.0, 315.0, 32.5, 20.0 ],
					"id" : "obj-62"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "fffb~ 50",
					"fontname" : "Arial",
					"outlettype" : [ "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal" ],
					"fontsize" : 12.0,
					"numinlets" : 1,
					"numoutlets" : 50,
					"patching_rect" : [ 15.0, 270.0, 705.5, 20.0 ],
					"id" : "obj-32"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-62", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-32", 0 ],
					"hidden" : 0,
					"midpoints" : [ 369.5, 255.0, 24.5, 255.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"midpoints" : [ 954.5, 105.0, 369.5, 105.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 0 ],
					"destination" : [ "obj-62", 0 ],
					"hidden" : 0,
					"midpoints" : [ 24.5, 300.0, 234.5, 300.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 2 ],
					"destination" : [ "obj-62", 1 ],
					"hidden" : 0,
					"midpoints" : [ 52.520409, 300.0, 248.0, 300.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 4 ],
					"destination" : [ "obj-62", 0 ],
					"hidden" : 0,
					"midpoints" : [ 80.540817, 300.0, 234.5, 300.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 6 ],
					"destination" : [ "obj-62", 1 ],
					"hidden" : 0,
					"midpoints" : [ 108.561226, 300.0, 248.0, 300.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 8 ],
					"destination" : [ "obj-62", 0 ],
					"hidden" : 0,
					"midpoints" : [ 136.581635, 300.0, 234.5, 300.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 10 ],
					"destination" : [ "obj-62", 1 ],
					"hidden" : 0,
					"midpoints" : [ 164.602036, 300.0, 248.0, 300.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 12 ],
					"destination" : [ "obj-62", 0 ],
					"hidden" : 0,
					"midpoints" : [ 192.622452, 300.0, 234.5, 300.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 14 ],
					"destination" : [ "obj-62", 1 ],
					"hidden" : 0,
					"midpoints" : [ 220.642853, 300.0, 248.0, 300.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 16 ],
					"destination" : [ "obj-62", 0 ],
					"hidden" : 0,
					"midpoints" : [ 248.663269, 300.0, 234.5, 300.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 18 ],
					"destination" : [ "obj-62", 1 ],
					"hidden" : 0,
					"midpoints" : [ 276.683685, 300.0, 248.0, 300.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 20 ],
					"destination" : [ "obj-62", 0 ],
					"hidden" : 0,
					"midpoints" : [ 304.704071, 300.0, 234.5, 300.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 22 ],
					"destination" : [ "obj-62", 1 ],
					"hidden" : 0,
					"midpoints" : [ 332.724487, 300.0, 248.0, 300.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 24 ],
					"destination" : [ "obj-62", 0 ],
					"hidden" : 0,
					"midpoints" : [ 360.744904, 300.0, 234.5, 300.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 26 ],
					"destination" : [ "obj-62", 1 ],
					"hidden" : 0,
					"midpoints" : [ 388.76532, 300.0, 248.0, 300.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 28 ],
					"destination" : [ "obj-62", 1 ],
					"hidden" : 0,
					"midpoints" : [ 416.785706, 300.0, 248.0, 300.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 30 ],
					"destination" : [ "obj-62", 0 ],
					"hidden" : 0,
					"midpoints" : [ 444.806122, 300.0, 234.5, 300.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 32 ],
					"destination" : [ "obj-62", 1 ],
					"hidden" : 0,
					"midpoints" : [ 472.826538, 300.0, 248.0, 300.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 34 ],
					"destination" : [ "obj-62", 0 ],
					"hidden" : 0,
					"midpoints" : [ 500.846924, 300.0, 234.5, 300.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 36 ],
					"destination" : [ "obj-62", 1 ],
					"hidden" : 0,
					"midpoints" : [ 528.867371, 300.0, 248.0, 300.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 38 ],
					"destination" : [ "obj-62", 0 ],
					"hidden" : 0,
					"midpoints" : [ 556.887756, 300.0, 234.5, 300.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 40 ],
					"destination" : [ "obj-62", 1 ],
					"hidden" : 0,
					"midpoints" : [ 584.908142, 300.0, 248.0, 300.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 42 ],
					"destination" : [ "obj-62", 0 ],
					"hidden" : 0,
					"midpoints" : [ 612.928589, 300.0, 234.5, 300.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 44 ],
					"destination" : [ "obj-62", 1 ],
					"hidden" : 0,
					"midpoints" : [ 640.948975, 300.0, 248.0, 300.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 46 ],
					"destination" : [ "obj-62", 0 ],
					"hidden" : 0,
					"midpoints" : [ 668.96936, 300.0, 234.5, 300.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 48 ],
					"destination" : [ "obj-62", 1 ],
					"hidden" : 0,
					"midpoints" : [ 696.989807, 300.0, 248.0, 300.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-32", 0 ],
					"hidden" : 0,
					"midpoints" : [ 24.5, 147.0, 24.5, 147.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-32", 0 ],
					"hidden" : 0,
					"midpoints" : [ 69.5, 255.0, 24.5, 255.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [ 954.5, 105.0, 69.5, 105.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-32", 0 ],
					"hidden" : 0,
					"midpoints" : [ 594.5, 255.0, 24.5, 255.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [ 954.5, 105.0, 594.5, 105.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 1 ],
					"destination" : [ "obj-62", 0 ],
					"hidden" : 0,
					"midpoints" : [ 38.510204, 300.0, 234.5, 300.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 3 ],
					"destination" : [ "obj-62", 0 ],
					"hidden" : 0,
					"midpoints" : [ 66.530609, 300.0, 234.5, 300.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 5 ],
					"destination" : [ "obj-62", 0 ],
					"hidden" : 0,
					"midpoints" : [ 94.551018, 300.0, 234.5, 300.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 7 ],
					"destination" : [ "obj-62", 0 ],
					"hidden" : 0,
					"midpoints" : [ 122.571426, 300.0, 234.5, 300.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 9 ],
					"destination" : [ "obj-62", 0 ],
					"hidden" : 0,
					"midpoints" : [ 150.591843, 300.0, 234.5, 300.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 11 ],
					"destination" : [ "obj-62", 0 ],
					"hidden" : 0,
					"midpoints" : [ 178.612244, 300.0, 234.5, 300.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 13 ],
					"destination" : [ "obj-62", 0 ],
					"hidden" : 0,
					"midpoints" : [ 206.63266, 300.0, 234.5, 300.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 15 ],
					"destination" : [ "obj-62", 0 ],
					"hidden" : 0,
					"midpoints" : [ 234.653061, 291.0, 234.5, 291.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 17 ],
					"destination" : [ "obj-62", 1 ],
					"hidden" : 0,
					"midpoints" : [ 262.673462, 300.0, 248.0, 300.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 19 ],
					"destination" : [ "obj-62", 1 ],
					"hidden" : 0,
					"midpoints" : [ 290.693878, 300.0, 248.0, 300.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 21 ],
					"destination" : [ "obj-62", 1 ],
					"hidden" : 0,
					"midpoints" : [ 318.714294, 300.0, 248.0, 300.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 23 ],
					"destination" : [ "obj-62", 1 ],
					"hidden" : 0,
					"midpoints" : [ 346.73468, 300.0, 248.0, 300.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 25 ],
					"destination" : [ "obj-62", 1 ],
					"hidden" : 0,
					"midpoints" : [ 374.755096, 300.0, 248.0, 300.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 27 ],
					"destination" : [ "obj-62", 1 ],
					"hidden" : 0,
					"midpoints" : [ 402.775513, 300.0, 248.0, 300.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 29 ],
					"destination" : [ "obj-62", 1 ],
					"hidden" : 0,
					"midpoints" : [ 430.795929, 300.0, 248.0, 300.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 31 ],
					"destination" : [ "obj-62", 1 ],
					"hidden" : 0,
					"midpoints" : [ 458.816315, 300.0, 248.0, 300.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 33 ],
					"destination" : [ "obj-62", 1 ],
					"hidden" : 0,
					"midpoints" : [ 486.836731, 300.0, 248.0, 300.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 35 ],
					"destination" : [ "obj-62", 1 ],
					"hidden" : 0,
					"midpoints" : [ 514.857117, 300.0, 248.0, 300.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 37 ],
					"destination" : [ "obj-62", 0 ],
					"hidden" : 0,
					"midpoints" : [ 542.877563, 300.0, 234.5, 300.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 39 ],
					"destination" : [ "obj-62", 1 ],
					"hidden" : 0,
					"midpoints" : [ 570.897949, 300.0, 248.0, 300.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 41 ],
					"destination" : [ "obj-62", 1 ],
					"hidden" : 0,
					"midpoints" : [ 598.918396, 300.0, 248.0, 300.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 43 ],
					"destination" : [ "obj-62", 1 ],
					"hidden" : 0,
					"midpoints" : [ 626.938782, 300.0, 248.0, 300.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 45 ],
					"destination" : [ "obj-62", 0 ],
					"hidden" : 0,
					"midpoints" : [ 654.959167, 300.0, 234.5, 300.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 47 ],
					"destination" : [ "obj-62", 1 ],
					"hidden" : 0,
					"midpoints" : [ 682.979614, 300.0, 248.0, 300.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 49 ],
					"destination" : [ "obj-62", 0 ],
					"hidden" : 0,
					"midpoints" : [ 711.0, 300.0, 234.5, 300.0 ]
				}

			}
 ]
	}

}
