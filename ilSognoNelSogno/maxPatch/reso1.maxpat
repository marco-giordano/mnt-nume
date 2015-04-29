{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 5,
			"minor" : 1,
			"revision" : 9
		}
,
		"rect" : [ 0.0, 263.0, 899.0, 451.0 ],
		"bglocked" : 0,
		"defrect" : [ 0.0, 263.0, 899.0, 451.0 ],
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
					"maxclass" : "comment",
					"text" : "Low-pass Filter",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 780.0, 285.0, 101.0, 20.0 ],
					"id" : "obj-8"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "gain 0 15. 15. 15. 15. 15. 30. 30. 30. 30. 30. 45. 45. 45. 45. 45. 70. 70. 70. 70. 70. 85. 85. 85. 85. 85. 100. 100. 100. 100. 100. 115. 115. 115. 115. 115. 130. 130. 130. 130. 130. 145. 145. 145. 145. 145. 170. 170. 170. 170. 170.",
					"linecount" : 5,
					"fontname" : "Arial",
					"outlettype" : [ "" ],
					"fontsize" : 12.0,
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 300.0, 135.0, 275.0, 73.0 ],
					"id" : "obj-7"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "freq 0 220 233 247 262 277 294 311 330 349 370 392 415 440 466 494 523 554 587 622 659 698 740 784 831 880 932 987 1046 1109 1115 1187 1265 1348 1436 1530 1630 1736 1850 1970 2071 2177 2289 2406 2530 2659 2796 2939 3090 3248",
					"linecount" : 7,
					"fontname" : "Arial",
					"outlettype" : [ "" ],
					"fontsize" : 12.0,
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 75.0, 135.0, 217.0, 101.0 ],
					"id" : "obj-4"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "Q 0 20000 20000 20000 20000 20000 20000 20000 20000 20000 20000 20000 20000 20000 20000 20000 20000 20000 20000 20000 20000 20000 20000 20000 20000 20000 20000 20000 20000 20000 20000 20000 20000 20000 20000 20000 20000 20000 20000 20000 20000 20000 20000 20000 20000 20000 20000 20000 20000 20000 20000",
					"linecount" : 8,
					"fontname" : "Arial",
					"outlettype" : [ "" ],
					"fontsize" : 12.0,
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 585.0, 135.0, 272.0, 115.0 ],
					"id" : "obj-3"
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
					"patching_rect" : [ 285.0, 420.0, 187.0, 20.0 ],
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
					"patching_rect" : [ 375.0, 375.0, 43.0, 20.0 ],
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
					"patching_rect" : [ 660.0, 90.0, 101.0, 20.0 ],
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
					"patching_rect" : [ 375.0, 90.0, 101.0, 20.0 ],
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
					"patching_rect" : [ 165.0, 90.0, 101.0, 20.0 ],
					"id" : "obj-11"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "reso1 is a Low-pass and bank of a bandpass filter set with a specific frequency, gain, and Q value that you can see below.",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 15.0, 45.0, 663.0, 20.0 ],
					"id" : "obj-9"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "reso1",
					"fontname" : "Arial",
					"fontface" : 1,
					"fontsize" : 20.0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 15.0, 15.0, 70.0, 29.0 ],
					"id" : "obj-1"
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
					"patching_rect" : [ 75.0, 90.0, 60.0, 20.0 ],
					"id" : "obj-2"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "svf~ 90 0.",
					"fontname" : "Arial",
					"outlettype" : [ "signal", "signal", "signal", "signal" ],
					"fontsize" : 12.0,
					"numinlets" : 3,
					"numoutlets" : 4,
					"patching_rect" : [ 720.0, 285.0, 63.0, 20.0 ],
					"id" : "obj-25"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 345.0, 371.0, 25.0, 25.0 ],
					"id" : "obj-6",
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"outlettype" : [ "" ],
					"numinlets" : 0,
					"numoutlets" : 1,
					"patching_rect" : [ 30.0, 105.0, 25.0, 25.0 ],
					"id" : "obj-5",
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
					"patching_rect" : [ 345.0, 330.0, 32.5, 20.0 ],
					"id" : "obj-140"
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
					"patching_rect" : [ 30.0, 285.0, 676.5, 20.0 ],
					"id" : "obj-32"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 0,
					"midpoints" : [ 39.5, 267.0, 729.5, 267.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 2 ],
					"destination" : [ "obj-140", 1 ],
					"hidden" : 0,
					"midpoints" : [ 758.833313, 315.0, 368.0, 315.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-32", 0 ],
					"hidden" : 0,
					"midpoints" : [ 84.5, 270.0, 42.0, 270.0, 42.0, 282.0, 39.5, 282.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-32", 0 ],
					"hidden" : 0,
					"midpoints" : [ 594.5, 270.0, 42.0, 270.0, 42.0, 282.0, 39.5, 282.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-32", 0 ],
					"hidden" : 0,
					"midpoints" : [ 309.5, 270.0, 42.0, 270.0, 42.0, 282.0, 39.5, 282.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [ 84.5, 120.0, 309.5, 120.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [ 84.5, 120.0, 594.5, 120.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [ 84.5, 111.0, 84.5, 111.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-140", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"midpoints" : [ 354.5, 351.0, 354.5, 351.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 0 ],
					"destination" : [ "obj-140", 0 ],
					"hidden" : 0,
					"midpoints" : [ 39.5, 315.0, 354.5, 315.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 1 ],
					"destination" : [ "obj-140", 0 ],
					"hidden" : 0,
					"midpoints" : [ 52.918365, 315.0, 354.5, 315.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 2 ],
					"destination" : [ "obj-140", 0 ],
					"hidden" : 0,
					"midpoints" : [ 66.336731, 315.0, 354.5, 315.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 3 ],
					"destination" : [ "obj-140", 0 ],
					"hidden" : 0,
					"midpoints" : [ 79.755104, 315.0, 354.5, 315.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 4 ],
					"destination" : [ "obj-140", 0 ],
					"hidden" : 0,
					"midpoints" : [ 93.17347, 315.0, 354.5, 315.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 5 ],
					"destination" : [ "obj-140", 0 ],
					"hidden" : 0,
					"midpoints" : [ 106.591835, 315.0, 354.5, 315.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 6 ],
					"destination" : [ "obj-140", 1 ],
					"hidden" : 0,
					"midpoints" : [ 120.010201, 315.0, 368.0, 315.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 7 ],
					"destination" : [ "obj-140", 1 ],
					"hidden" : 0,
					"midpoints" : [ 133.428574, 315.0, 368.0, 315.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 8 ],
					"destination" : [ "obj-140", 0 ],
					"hidden" : 0,
					"midpoints" : [ 146.846939, 315.0, 354.5, 315.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 9 ],
					"destination" : [ "obj-140", 1 ],
					"hidden" : 0,
					"midpoints" : [ 160.265305, 315.0, 368.0, 315.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 10 ],
					"destination" : [ "obj-140", 0 ],
					"hidden" : 0,
					"midpoints" : [ 173.68367, 315.0, 354.5, 315.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 11 ],
					"destination" : [ "obj-140", 1 ],
					"hidden" : 0,
					"midpoints" : [ 187.102036, 315.0, 368.0, 315.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 12 ],
					"destination" : [ "obj-140", 0 ],
					"hidden" : 0,
					"midpoints" : [ 200.520401, 315.0, 354.5, 315.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 13 ],
					"destination" : [ "obj-140", 1 ],
					"hidden" : 0,
					"midpoints" : [ 213.938782, 315.0, 368.0, 315.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 14 ],
					"destination" : [ "obj-140", 0 ],
					"hidden" : 0,
					"midpoints" : [ 227.357147, 315.0, 354.5, 315.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 15 ],
					"destination" : [ "obj-140", 1 ],
					"hidden" : 0,
					"midpoints" : [ 240.775513, 315.0, 368.0, 315.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 16 ],
					"destination" : [ "obj-140", 1 ],
					"hidden" : 0,
					"midpoints" : [ 254.193878, 315.0, 368.0, 315.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 17 ],
					"destination" : [ "obj-140", 0 ],
					"hidden" : 0,
					"midpoints" : [ 267.612244, 315.0, 354.5, 315.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 18 ],
					"destination" : [ "obj-140", 1 ],
					"hidden" : 0,
					"midpoints" : [ 281.030609, 315.0, 368.0, 315.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 19 ],
					"destination" : [ "obj-140", 0 ],
					"hidden" : 0,
					"midpoints" : [ 294.448975, 315.0, 354.5, 315.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 20 ],
					"destination" : [ "obj-140", 1 ],
					"hidden" : 0,
					"midpoints" : [ 307.86734, 315.0, 368.0, 315.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 21 ],
					"destination" : [ "obj-140", 0 ],
					"hidden" : 0,
					"midpoints" : [ 321.285706, 315.0, 354.5, 315.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 22 ],
					"destination" : [ "obj-140", 1 ],
					"hidden" : 0,
					"midpoints" : [ 334.704071, 315.0, 368.0, 315.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 23 ],
					"destination" : [ "obj-140", 1 ],
					"hidden" : 0,
					"midpoints" : [ 348.122437, 315.0, 368.0, 315.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 24 ],
					"destination" : [ "obj-140", 1 ],
					"hidden" : 0,
					"midpoints" : [ 361.540802, 315.0, 368.0, 315.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 25 ],
					"destination" : [ "obj-140", 1 ],
					"hidden" : 0,
					"midpoints" : [ 374.959198, 315.0, 368.0, 315.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 26 ],
					"destination" : [ "obj-140", 0 ],
					"hidden" : 0,
					"midpoints" : [ 388.377563, 315.0, 354.5, 315.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 27 ],
					"destination" : [ "obj-140", 1 ],
					"hidden" : 0,
					"midpoints" : [ 401.795929, 315.0, 368.0, 315.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 28 ],
					"destination" : [ "obj-140", 0 ],
					"hidden" : 0,
					"midpoints" : [ 415.214294, 315.0, 354.5, 315.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 29 ],
					"destination" : [ "obj-140", 1 ],
					"hidden" : 0,
					"midpoints" : [ 428.63266, 315.0, 368.0, 315.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 30 ],
					"destination" : [ "obj-140", 1 ],
					"hidden" : 0,
					"midpoints" : [ 442.051025, 315.0, 368.0, 315.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 31 ],
					"destination" : [ "obj-140", 0 ],
					"hidden" : 0,
					"midpoints" : [ 455.469391, 315.0, 354.5, 315.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 32 ],
					"destination" : [ "obj-140", 1 ],
					"hidden" : 0,
					"midpoints" : [ 468.887756, 315.0, 368.0, 315.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 33 ],
					"destination" : [ "obj-140", 1 ],
					"hidden" : 0,
					"midpoints" : [ 482.306122, 315.0, 368.0, 315.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 34 ],
					"destination" : [ "obj-140", 1 ],
					"hidden" : 0,
					"midpoints" : [ 495.724487, 315.0, 368.0, 315.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 35 ],
					"destination" : [ "obj-140", 1 ],
					"hidden" : 0,
					"midpoints" : [ 509.142853, 315.0, 368.0, 315.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 36 ],
					"destination" : [ "obj-140", 0 ],
					"hidden" : 0,
					"midpoints" : [ 522.561218, 315.0, 354.5, 315.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 37 ],
					"destination" : [ "obj-140", 1 ],
					"hidden" : 0,
					"midpoints" : [ 535.979614, 315.0, 368.0, 315.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 38 ],
					"destination" : [ "obj-140", 1 ],
					"hidden" : 0,
					"midpoints" : [ 549.397949, 315.0, 368.0, 315.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 39 ],
					"destination" : [ "obj-140", 1 ],
					"hidden" : 0,
					"midpoints" : [ 562.816345, 315.0, 368.0, 315.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 40 ],
					"destination" : [ "obj-140", 0 ],
					"hidden" : 0,
					"midpoints" : [ 576.23468, 315.0, 354.5, 315.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 41 ],
					"destination" : [ "obj-140", 1 ],
					"hidden" : 0,
					"midpoints" : [ 589.653076, 315.0, 368.0, 315.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 42 ],
					"destination" : [ "obj-140", 1 ],
					"hidden" : 0,
					"midpoints" : [ 603.071411, 315.0, 368.0, 315.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 43 ],
					"destination" : [ "obj-140", 1 ],
					"hidden" : 0,
					"midpoints" : [ 616.489807, 315.0, 368.0, 315.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 44 ],
					"destination" : [ "obj-140", 0 ],
					"hidden" : 0,
					"midpoints" : [ 629.908142, 315.0, 354.5, 315.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 45 ],
					"destination" : [ "obj-140", 0 ],
					"hidden" : 0,
					"midpoints" : [ 643.326538, 315.0, 354.5, 315.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 46 ],
					"destination" : [ "obj-140", 1 ],
					"hidden" : 0,
					"midpoints" : [ 656.744873, 315.0, 368.0, 315.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 47 ],
					"destination" : [ "obj-140", 0 ],
					"hidden" : 0,
					"midpoints" : [ 670.163269, 315.0, 354.5, 315.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 48 ],
					"destination" : [ "obj-140", 1 ],
					"hidden" : 0,
					"midpoints" : [ 683.581604, 315.0, 368.0, 315.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 49 ],
					"destination" : [ "obj-140", 0 ],
					"hidden" : 0,
					"midpoints" : [ 697.0, 315.0, 354.5, 315.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-32", 0 ],
					"hidden" : 0,
					"midpoints" : [ 39.5, 267.0, 39.5, 267.0 ]
				}

			}
 ]
	}

}
