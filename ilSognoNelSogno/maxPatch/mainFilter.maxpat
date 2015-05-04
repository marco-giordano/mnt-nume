{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 5,
			"minor" : 1,
			"revision" : 9
		}
,
		"rect" : [ 25.0, 69.0, 340.0, 347.0 ],
		"bglocked" : 0,
		"defrect" : [ 25.0, 69.0, 340.0, 347.0 ],
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
					"text" : "Balandino Di Donato - 2013",
					"numoutlets" : 0,
					"patching_rect" : [ 90.0, 315.0, 159.0, 20.0 ],
					"id" : "obj-10",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Signal",
					"numoutlets" : 0,
					"patching_rect" : [ 15.0, 285.0, 54.0, 20.0 ],
					"id" : "obj-9",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Signal",
					"numoutlets" : 0,
					"patching_rect" : [ 15.0, 105.0, 54.0, 20.0 ],
					"id" : "obj-8",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Low-Pass FIlter: Cut-Off Frequecy 18 kHz",
					"numoutlets" : 0,
					"patching_rect" : [ 90.0, 225.0, 235.0, 20.0 ],
					"id" : "obj-7",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "High-Pass FIlter: Cut-Off Frequecy 40 Hz",
					"numoutlets" : 0,
					"patching_rect" : [ 75.0, 180.0, 255.0, 20.0 ],
					"id" : "obj-6",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "mainFilter is a series of two filter: High-Pass filter and a Low-Pass filter",
					"linecount" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 15.0, 45.0, 255.0, 34.0 ],
					"id" : "obj-4",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "mainFilter",
					"numoutlets" : 0,
					"patching_rect" : [ 15.0, 15.0, 257.0, 29.0 ],
					"id" : "obj-2",
					"fontname" : "Arial",
					"fontface" : 1,
					"fontsize" : 20.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numoutlets" : 0,
					"patching_rect" : [ 15.0, 255.0, 25.0, 25.0 ],
					"id" : "obj-3",
					"numinlets" : 1,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numoutlets" : 1,
					"patching_rect" : [ 15.0, 135.0, 25.0, 25.0 ],
					"id" : "obj-1",
					"outlettype" : [ "" ],
					"numinlets" : 0,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "svf~ 18000 0.",
					"numoutlets" : 4,
					"patching_rect" : [ 15.0, 225.0, 83.0, 20.0 ],
					"id" : "obj-12",
					"fontname" : "Arial",
					"outlettype" : [ "signal", "signal", "signal", "signal" ],
					"fontsize" : 12.0,
					"numinlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "svf~ 40 0.",
					"numoutlets" : 4,
					"patching_rect" : [ 15.0, 180.0, 63.0, 20.0 ],
					"id" : "obj-11",
					"fontname" : "Arial",
					"outlettype" : [ "signal", "signal", "signal", "signal" ],
					"fontsize" : 12.0,
					"numinlets" : 3
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-11", 1 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [ 39.166668, 210.0, 24.5, 210.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0,
					"midpoints" : [ 24.5, 162.0, 24.5, 162.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [ 24.5, 246.0, 24.5, 246.0 ]
				}

			}
 ]
	}

}
