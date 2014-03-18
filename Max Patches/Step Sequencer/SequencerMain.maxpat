{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 0.0, 44.0, 1280.0, 726.0 ],
		"bglocked" : 0,
		"defrect" : [ 0.0, 44.0, 1280.0, 726.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 1,
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
					"text" : "Get Preset",
					"id" : "obj-76",
					"fontname" : "Arial",
					"patching_rect" : [ 742.159973, 1130.0, 88.0, 20.0 ],
					"presentation" : 1,
					"fontsize" : 12.0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"presentation_rect" : [ 219.0, 667.0, 88.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Store Preset",
					"id" : "obj-75",
					"fontname" : "Arial",
					"patching_rect" : [ 878.659973, 1130.0, 88.0, 20.0 ],
					"presentation" : 1,
					"fontsize" : 12.0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"presentation_rect" : [ 42.0, 667.0, 79.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"outlettype" : [ "bang" ],
					"id" : "obj-106",
					"patching_rect" : [ 834.326721, 1169.0, 20.0, 20.0 ],
					"presentation" : 1,
					"numinlets" : 1,
					"numoutlets" : 1,
					"presentation_rect" : [ 127.0, 667.0, 20.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"outlettype" : [ "int", "", "" ],
					"id" : "obj-95",
					"fontname" : "Arial",
					"types" : [  ],
					"patching_rect" : [ 761.159973, 1169.0, 50.0, 20.0 ],
					"presentation" : 1,
					"fontsize" : 12.0,
					"numinlets" : 1,
					"items" : [ 0, ",", 1, ",", 2, ",", 3, ",", 4, ",", 5, ",", 6, ",", 7, ",", 8, ",", 9 ],
					"numoutlets" : 3,
					"presentation_rect" : [ 292.159973, 667.0, 50.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"outlettype" : [ "int", "", "" ],
					"id" : "obj-94",
					"fontname" : "Arial",
					"types" : [  ],
					"patching_rect" : [ 868.659973, 1169.0, 50.0, 20.0 ],
					"presentation" : 1,
					"fontsize" : 12.0,
					"numinlets" : 1,
					"items" : [ 0, ",", 1, ",", 2, ",", 3, ",", 4, ",", 5, ",", 6, ",", 7, ",", 8, ",", 9 ],
					"numoutlets" : 3,
					"presentation_rect" : [ 152.659973, 667.0, 50.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "mxj messageProcessing.Preset",
					"outlettype" : [ "" ],
					"id" : "obj-45",
					"fontname" : "Arial",
					"patching_rect" : [ 817.833252, 1263.0, 179.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 3,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "join 2",
					"outlettype" : [ "" ],
					"id" : "obj-49",
					"fontname" : "Arial",
					"patching_rect" : [ 892.159973, 1224.0, 39.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 2,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"outlettype" : [ "int", "bang" ],
					"id" : "obj-58",
					"fontname" : "Arial",
					"patching_rect" : [ 293.0, 252.0, 50.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"outlettype" : [ "" ],
					"id" : "obj-48",
					"fontname" : "Arial",
					"patching_rect" : [ 467.0, 571.0, 50.0, 18.0 ],
					"fontsize" : 12.0,
					"numinlets" : 2,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "1",
					"outlettype" : [ "" ],
					"id" : "obj-44",
					"fontname" : "Arial",
					"patching_rect" : [ 304.0, 581.0, 50.0, 18.0 ],
					"fontsize" : 12.0,
					"numinlets" : 2,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"outlettype" : [ "bang" ],
					"id" : "obj-32",
					"patching_rect" : [ 334.0, 372.0, 20.0, 20.0 ],
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"outlettype" : [ "signal" ],
					"name" : "delayObject.maxpat",
					"id" : "obj-27",
					"patching_rect" : [ 162.5, 1613.0, 312.0, 170.0 ],
					"presentation" : 1,
					"args" : [ "dy1" ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"presentation_rect" : [ 877.728577, 213.5, 312.0, 170.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"outlettype" : [ "signal" ],
					"name" : "lowpassObject.maxpat",
					"id" : "obj-9",
					"patching_rect" : [ 177.5, 1459.0, 297.0, 154.0 ],
					"presentation" : 1,
					"args" : [ "ft1" ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"presentation_rect" : [ 580.728577, 228.0, 297.0, 154.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"outlettype" : [ "signal" ],
					"name" : "flangingObject.maxpat",
					"id" : "obj-38",
					"patching_rect" : [ 183.0, 1103.0, 298.0, 152.0 ],
					"presentation" : 1,
					"args" : [ "fg1" ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"presentation_rect" : [ 580.728577, 389.304504, 298.0, 152.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"outlettype" : [ "signal" ],
					"name" : "reverbObject.maxpat",
					"id" : "obj-16",
					"patching_rect" : [ 177.5, 1272.0, 309.0, 159.0 ],
					"presentation" : 1,
					"args" : [ "rv1" ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"presentation_rect" : [ 575.228577, 545.5, 309.0, 159.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "- 0.1",
					"outlettype" : [ "float" ],
					"id" : "obj-29",
					"fontname" : "Arial",
					"patching_rect" : [ 1801.0, 732.0, 35.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 2,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "GA Param settings\n1. Crossover rate 1-100 \n(This sets how fast you reach the solution by directed search)\n2. Mutation rate - 1-1000\n(This decides how much random genes mutate, its effects on speed can be positive or negative)\n3. Sparsity\nA control that sets only one value in a time step, so multiple notes don't play at the same step",
					"linecount" : 10,
					"id" : "obj-28",
					"fontname" : "Arial",
					"patching_rect" : [ 1575.0, 923.0, 290.0, 144.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Toggle \nSparsity",
					"linecount" : 2,
					"presentation_linecount" : 2,
					"id" : "obj-24",
					"fontname" : "Arial",
					"patching_rect" : [ 1892.0, 628.0, 56.0, 34.0 ],
					"presentation" : 1,
					"fontsize" : 12.0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"presentation_rect" : [ 1149.112549, 490.5, 56.0, 34.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"outlettype" : [ "int" ],
					"id" : "obj-14",
					"patching_rect" : [ 1892.0, 671.787048, 20.0, 20.0 ],
					"presentation" : 1,
					"numinlets" : 1,
					"numoutlets" : 1,
					"presentation_rect" : [ 1218.25, 495.0, 20.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Clear Sequencer",
					"id" : "obj-17",
					"fontname" : "Arial",
					"patching_rect" : [ 540.159973, 507.839996, 150.0, 20.0 ],
					"presentation" : 1,
					"fontsize" : 12.0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"presentation_rect" : [ 449.063049, 615.0, 105.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "clear",
					"outlettype" : [ "" ],
					"id" : "obj-15",
					"fontname" : "Arial",
					"patching_rect" : [ 605.159973, 571.839966, 37.0, 18.0 ],
					"fontsize" : 12.0,
					"numinlets" : 2,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"outlettype" : [ "bang" ],
					"id" : "obj-12",
					"patching_rect" : [ 600.419861, 544.0, 20.0, 20.0 ],
					"presentation" : 1,
					"numinlets" : 1,
					"numoutlets" : 1,
					"presentation_rect" : [ 423.419861, 615.0, 20.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "1",
					"outlettype" : [ "" ],
					"id" : "obj-90",
					"fontname" : "Arial",
					"patching_rect" : [ 654.0, 991.0, 50.0, 18.0 ],
					"fontsize" : 12.0,
					"numinlets" : 2,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route",
					"outlettype" : [ "", "" ],
					"id" : "obj-88",
					"fontname" : "Arial",
					"patching_rect" : [ 591.419861, 990.0, 38.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route",
					"outlettype" : [ "", "" ],
					"id" : "obj-87",
					"fontname" : "Arial",
					"patching_rect" : [ 197.917496, 919.170044, 38.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Mutation Rate",
					"linecount" : 2,
					"presentation_linecount" : 2,
					"id" : "obj-86",
					"fontname" : "Arial",
					"patching_rect" : [ 1805.25, 635.0, 67.0, 34.0 ],
					"presentation" : 1,
					"fontsize" : 12.0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"presentation_rect" : [ 1188.25, 424.0, 67.0, 34.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Crossover Rate",
					"linecount" : 2,
					"presentation_linecount" : 2,
					"id" : "obj-84",
					"fontname" : "Arial",
					"patching_rect" : [ 1710.0, 635.0, 67.0, 34.0 ],
					"presentation" : 1,
					"fontsize" : 12.0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"presentation_rect" : [ 1092.862549, 424.0, 67.0, 34.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "/ 1000",
					"outlettype" : [ "int" ],
					"id" : "obj-81",
					"fontname" : "Arial",
					"patching_rect" : [ 1805.25, 698.787048, 44.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 2,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"outlettype" : [ "int", "bang" ],
					"id" : "obj-82",
					"fontname" : "Arial",
					"patching_rect" : [ 1805.25, 671.787048, 50.0, 20.0 ],
					"presentation" : 1,
					"minimum" : 0,
					"maximum" : 1000,
					"fontsize" : 12.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"presentation_rect" : [ 1188.25, 460.787048, 50.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "/ 1000",
					"outlettype" : [ "int" ],
					"id" : "obj-78",
					"fontname" : "Arial",
					"patching_rect" : [ 1716.25, 698.787048, 44.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 2,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"outlettype" : [ "int", "bang" ],
					"id" : "obj-57",
					"fontname" : "Arial",
					"patching_rect" : [ 1716.25, 671.787048, 50.0, 20.0 ],
					"presentation" : 1,
					"minimum" : 0,
					"maximum" : 100,
					"fontsize" : 12.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"presentation_rect" : [ 1099.112549, 460.787048, 50.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Current GA Target ID",
					"id" : "obj-80",
					"fontname" : "Arial",
					"patching_rect" : [ 1567.0, 848.0, 131.0, 20.0 ],
					"presentation" : 1,
					"fontsize" : 12.0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"presentation_rect" : [ 909.112488, 446.5, 149.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "GA Rhythm Generator",
					"id" : "obj-13",
					"fontname" : "Arial",
					"patching_rect" : [ 1579.0, 507.839996, 195.0, 25.0 ],
					"presentation" : 1,
					"fontsize" : 16.0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"presentation_rect" : [ 1041.112549, 389.304504, 174.0, 25.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"outlettype" : [ "bang" ],
					"id" : "obj-30",
					"patching_rect" : [ 1520.0, 534.5, 46.0, 46.0 ],
					"presentation" : 1,
					"numinlets" : 1,
					"numoutlets" : 1,
					"presentation_rect" : [ 931.084473, 389.304504, 46.0, 46.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"outlettype" : [ "int", "bang" ],
					"id" : "obj-79",
					"fontname" : "Arial",
					"patching_rect" : [ 1665.25, 828.0, 50.0, 20.0 ],
					"presentation" : 1,
					"fontsize" : 12.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"presentation_rect" : [ 919.084473, 467.0, 50.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Current GA Pattern Preview",
					"id" : "obj-31",
					"fontname" : "Arial",
					"patching_rect" : [ 1191.75, 851.0, 213.0, 25.0 ],
					"presentation" : 1,
					"fontsize" : 16.0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"presentation_rect" : [ 909.112488, 495.0, 208.0, 25.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"outlettype" : [ "" ],
					"name" : "GAPreviewerObject.maxpat",
					"id" : "obj-19",
					"patching_rect" : [ 1196.0, 888.170044, 306.0, 106.0 ],
					"presentation" : 1,
					"args" : [ "gav1" ],
					"numinlets" : 2,
					"numoutlets" : 1,
					"presentation_rect" : [ 909.112488, 534.5, 306.0, 106.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"id" : "obj-37",
					"patching_rect" : [ 1046.02002, 919.170044, 128.0, 128.0 ],
					"presentation" : 1,
					"numinlets" : 1,
					"bgcolor" : [ 0.399093, 0.386033, 0.666667, 1.0 ],
					"mode" : 1,
					"numoutlets" : 0,
					"presentation_rect" : [ 900.224976, 382.5, 365.775024, 258.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "mxj messageProcessing.Format",
					"outlettype" : [ "" ],
					"id" : "obj-53",
					"fontname" : "Arial",
					"patching_rect" : [ 1119.97998, 85.720001, 182.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend seq",
					"outlettype" : [ "" ],
					"id" : "obj-39",
					"fontname" : "Arial",
					"patching_rect" : [ 868.659973, 888.170044, 77.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "mxj messageProcessing.Format",
					"outlettype" : [ "" ],
					"id" : "obj-3",
					"fontname" : "Arial",
					"patching_rect" : [ 477.159973, 376.627014, 182.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route sc",
					"outlettype" : [ "", "" ],
					"id" : "obj-22",
					"fontname" : "Arial",
					"patching_rect" : [ 591.419861, 956.18927, 53.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "mxj net.maxhole",
					"outlettype" : [ "" ],
					"id" : "obj-25",
					"fontname" : "Arial",
					"patching_rect" : [ 591.419861, 898.18927, 98.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "How GA works?\n1) set target as solution from the other users\n2) set source\n3) hit the bang to evolve and generate one pattern\n",
					"linecount" : 4,
					"id" : "obj-10",
					"fontname" : "Arial",
					"patching_rect" : [ 1274.0, 1023.0, 299.0, 62.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "7",
					"outlettype" : [ "" ],
					"id" : "obj-77",
					"fontname" : "Arial",
					"patching_rect" : [ 1785.5, 774.0, 32.5, 18.0 ],
					"fontsize" : 12.0,
					"numinlets" : 2,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "6",
					"outlettype" : [ "" ],
					"id" : "obj-74",
					"fontname" : "Arial",
					"patching_rect" : [ 1737.75, 774.0, 32.5, 18.0 ],
					"fontsize" : 12.0,
					"numinlets" : 2,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "5",
					"outlettype" : [ "" ],
					"id" : "obj-73",
					"fontname" : "Arial",
					"patching_rect" : [ 1705.25, 774.0, 32.5, 18.0 ],
					"fontsize" : 12.0,
					"numinlets" : 2,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "4",
					"outlettype" : [ "" ],
					"id" : "obj-63",
					"fontname" : "Arial",
					"patching_rect" : [ 1665.25, 774.0, 32.5, 18.0 ],
					"fontsize" : 12.0,
					"numinlets" : 2,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "3",
					"outlettype" : [ "" ],
					"id" : "obj-62",
					"fontname" : "Arial",
					"patching_rect" : [ 1629.75, 774.0, 32.5, 18.0 ],
					"fontsize" : 12.0,
					"numinlets" : 2,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "2",
					"outlettype" : [ "" ],
					"id" : "obj-61",
					"fontname" : "Arial",
					"patching_rect" : [ 1597.25, 774.0, 32.5, 18.0 ],
					"fontsize" : 12.0,
					"numinlets" : 2,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "1",
					"outlettype" : [ "" ],
					"id" : "obj-60",
					"fontname" : "Arial",
					"patching_rect" : [ 1557.75, 774.0, 32.5, 18.0 ],
					"fontsize" : 12.0,
					"numinlets" : 2,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "0",
					"outlettype" : [ "" ],
					"id" : "obj-59",
					"fontname" : "Arial",
					"patching_rect" : [ 1525.75, 774.0, 32.5, 18.0 ],
					"fontsize" : 12.0,
					"numinlets" : 2,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadmess 7",
					"outlettype" : [ "" ],
					"id" : "obj-40",
					"fontname" : "Arial",
					"patching_rect" : [ 199.519989, 65.720009, 72.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "mxj Genetic.GeneticMorphing",
					"outlettype" : [ "", "" ],
					"id" : "obj-26",
					"fontname" : "Arial",
					"patching_rect" : [ 1597.25, 732.0, 169.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 6,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route ctrl seq cue",
					"outlettype" : [ "", "", "", "" ],
					"id" : "obj-41",
					"fontname" : "Arial",
					"patching_rect" : [ 359.659973, 334.127014, 103.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1,
					"numoutlets" : 4
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "mxj messageProcessing.Filter",
					"outlettype" : [ "" ],
					"id" : "obj-55",
					"fontname" : "Arial",
					"patching_rect" : [ 477.159973, 440.0, 171.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 2,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route all seq cue vol",
					"outlettype" : [ "", "", "", "", "" ],
					"id" : "obj-42",
					"fontname" : "Arial",
					"patching_rect" : [ 1119.97998, 43.720009, 117.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1,
					"numoutlets" : 5
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"outlettype" : [ "bang", "bang", "bang", "" ],
					"name" : "sequencerObjectCopy.maxpat",
					"id" : "obj-11",
					"patching_rect" : [ 359.659973, 621.258972, 528.0, 258.0 ],
					"presentation" : 1,
					"args" : [ "seqN" ],
					"numinlets" : 5,
					"numoutlets" : 4,
					"presentation_rect" : [ 33.394043, 382.5, 528.0, 258.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"outlettype" : [ "", "", "" ],
					"name" : "sequencerViewerObjectCopy.maxpat",
					"id" : "obj-72",
					"patching_rect" : [ 1613.0, 327.723022, 292.0, 96.299988 ],
					"presentation" : 1,
					"args" : [ "sqv7" ],
					"numinlets" : 2,
					"numoutlets" : 3,
					"presentation_rect" : [ 965.0, 120.0, 301.0, 101.299988 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"outlettype" : [ "", "", "" ],
					"name" : "sequencerViewerObjectCopy.maxpat",
					"id" : "obj-71",
					"patching_rect" : [ 1313.0, 327.723022, 287.5, 96.299988 ],
					"presentation" : 1,
					"args" : [ "sqv6" ],
					"numinlets" : 2,
					"numoutlets" : 3,
					"presentation_rect" : [ 651.0, 120.0, 301.0, 101.299988 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"outlettype" : [ "", "", "" ],
					"name" : "sequencerViewerObjectCopy.maxpat",
					"id" : "obj-70",
					"patching_rect" : [ 1013.97998, 327.723022, 288.0, 96.299988 ],
					"presentation" : 1,
					"args" : [ "sqv5" ],
					"numinlets" : 2,
					"numoutlets" : 3,
					"presentation_rect" : [ 332.0, 120.0, 301.0, 101.299988 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"outlettype" : [ "", "", "" ],
					"name" : "sequencerViewerObjectCopy.maxpat",
					"id" : "obj-69",
					"patching_rect" : [ 710.0, 327.723022, 290.97998, 96.299988 ],
					"presentation" : 1,
					"args" : [ "sqv4" ],
					"numinlets" : 2,
					"numoutlets" : 3,
					"presentation_rect" : [ 15.0, 120.0, 301.0, 101.299988 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"outlettype" : [ "", "", "" ],
					"name" : "sequencerViewerObjectCopy.maxpat",
					"id" : "obj-68",
					"patching_rect" : [ 1613.0, 208.850006, 292.0, 96.299988 ],
					"presentation" : 1,
					"args" : [ "sqv3" ],
					"numinlets" : 2,
					"numoutlets" : 3,
					"presentation_rect" : [ 965.0, 9.126984, 301.0, 101.299988 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"outlettype" : [ "", "", "" ],
					"name" : "sequencerViewerObjectCopy.maxpat",
					"id" : "obj-67",
					"patching_rect" : [ 1309.5, 208.850006, 291.0, 96.299988 ],
					"presentation" : 1,
					"args" : [ "sqv2" ],
					"numinlets" : 2,
					"numoutlets" : 3,
					"presentation_rect" : [ 651.0, 9.126984, 301.0, 101.299988 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"outlettype" : [ "", "", "" ],
					"name" : "sequencerViewerObjectCopy.maxpat",
					"id" : "obj-66",
					"patching_rect" : [ 1013.97998, 208.850006, 288.0, 96.299988 ],
					"presentation" : 1,
					"args" : [ "sqv1" ],
					"numinlets" : 2,
					"numoutlets" : 3,
					"presentation_rect" : [ 332.0, 9.126984, 301.0, 101.299988 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"outlettype" : [ "", "", "" ],
					"name" : "sequencerViewerObjectCopy.maxpat",
					"id" : "obj-65",
					"patching_rect" : [ 710.0, 208.850006, 290.97998, 96.299988 ],
					"presentation" : 1,
					"args" : [ "sqv0" ],
					"numinlets" : 2,
					"numoutlets" : 3,
					"presentation_rect" : [ 15.0, 9.126984, 301.0, 101.299988 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "mxj messageProcessing.Route",
					"outlettype" : [ "", "", "", "", "", "", "", "" ],
					"id" : "obj-64",
					"fontname" : "Arial",
					"patching_rect" : [ 1119.97998, 121.720009, 176.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1,
					"numoutlets" : 8
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"varname" : "umenu",
					"outlettype" : [ "int", "", "" ],
					"id" : "obj-54",
					"fontname" : "Arial",
					"types" : [  ],
					"patching_rect" : [ 243.019989, 146.72699, 128.0, 34.0 ],
					"presentation" : 1,
					"fontsize" : 24.0,
					"numinlets" : 1,
					"items" : [ "Aneesh", ",", "Chih-Wei", ",", "Xinyuan", ",", "Cian", ",", "Juan", ",", "Shuo", ",", "Iman", ",", "DefaultUser" ],
					"numoutlets" : 3,
					"presentation_rect" : [ 34.394043, 297.5, 130.605957, 34.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Username",
					"linecount" : 2,
					"id" : "obj-47",
					"fontname" : "Arial",
					"patching_rect" : [ 243.019989, 94.0, 103.0, 62.0 ],
					"presentation" : 1,
					"fontsize" : 24.0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"presentation_rect" : [ 34.394043, 259.0, 121.0, 34.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "Cue 3",
					"outlettype" : [ "" ],
					"id" : "obj-23",
					"fontname" : "Arial",
					"patching_rect" : [ 286.159973, 462.459961, 150.0, 25.0 ],
					"presentation" : 1,
					"fontsize" : 18.0,
					"numinlets" : 2,
					"numoutlets" : 1,
					"presentation_rect" : [ 165.0, 333.0, 180.0, 25.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Inlets:\n1. Send Serial Data (Bang)\n2. Serial Data Input\nOutlets:\n1. Serial Data Output",
					"linecount" : 5,
					"id" : "obj-18",
					"fontname" : "Arial",
					"patching_rect" : [ 33.538021, 30.719997, 158.0, 75.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Inlets:\n1. Trigger Bang\n2. Note Number\n3. Duration (ms)\n4. MIDI Program Num\n5. Volume (0-127)\nOutlets:\n1. Synthesized  Audio",
					"linecount" : 8,
					"id" : "obj-7",
					"fontname" : "Arial",
					"patching_rect" : [ 33.538021, 285.627014, 158.0, 117.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Inlets:\n1. Start/Stop (1/0)\n2. Tempo (Int)\n3. Send Serial Data (Bang)\n4. Serial Data Input\n5. User ID\nOutlets:\n1. Row 1 Bang\n2. Row 2 Bang\n3. Row 3 Bang\n4. Serial Data Output",
					"linecount" : 11,
					"id" : "obj-6",
					"fontname" : "Arial",
					"patching_rect" : [ 33.538021, 123.126984, 158.0, 158.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route vol",
					"outlettype" : [ "", "" ],
					"id" : "obj-4",
					"fontname" : "Arial",
					"patching_rect" : [ 197.917496, 875.5, 57.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "mxj net.maxhole",
					"outlettype" : [ "" ],
					"id" : "obj-5",
					"fontname" : "Arial",
					"patching_rect" : [ 197.917496, 811.5, 98.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "mxj net.maxhole",
					"outlettype" : [ "" ],
					"id" : "obj-50",
					"fontname" : "Arial",
					"patching_rect" : [ 1119.97998, 18.220001, 98.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "mxj net.maxhole",
					"outlettype" : [ "" ],
					"id" : "obj-46",
					"fontname" : "Arial",
					"patching_rect" : [ 868.659973, 919.170044, 98.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"outlettype" : [ "int" ],
					"id" : "obj-33",
					"patching_rect" : [ 359.659973, 571.839966, 20.0, 20.0 ],
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route start tempo",
					"outlettype" : [ "", "", "" ],
					"id" : "obj-34",
					"fontname" : "Arial",
					"patching_rect" : [ 359.659973, 534.5, 101.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1,
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"outlettype" : [ "int", "bang" ],
					"id" : "obj-35",
					"fontname" : "Arial",
					"patching_rect" : [ 400.659973, 571.839966, 50.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "mxj net.maxhole",
					"outlettype" : [ "" ],
					"id" : "obj-36",
					"fontname" : "Arial",
					"patching_rect" : [ 359.659973, 279.02301, 98.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadmess 1",
					"outlettype" : [ "" ],
					"id" : "obj-21",
					"fontname" : "Arial",
					"patching_rect" : [ 591.419861, 1039.163086, 72.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ezdac~",
					"id" : "obj-2",
					"patching_rect" : [ 488.0, 1819.163086, 45.0, 45.0 ],
					"numinlets" : 2,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"outlettype" : [ "signal" ],
					"name" : "oneShotSampler.maxpat",
					"id" : "obj-1",
					"patching_rect" : [ 337.284576, 959.627319, 186.0, 89.287109 ],
					"presentation" : 1,
					"args" : [  ],
					"numinlets" : 5,
					"numoutlets" : 1,
					"presentation_rect" : [ 374.063049, 293.5, 187.331009, 75.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"id" : "obj-20",
					"patching_rect" : [ 403.019989, 51.72699, 128.0, 128.0 ],
					"presentation" : 1,
					"numinlets" : 1,
					"bgcolor" : [ 0.607843, 0.666667, 0.666667, 1.0 ],
					"numoutlets" : 0,
					"presentation_rect" : [ -2.690552, -3.945496, 1288.669067, 707.890991 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-40", 0 ],
					"destination" : [ "obj-54", 0 ],
					"hidden" : 0,
					"midpoints" : [ 209.019989, 141.0, 252.519989, 141.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-38", 0 ],
					"hidden" : 0,
					"midpoints" : [ 346.784576, 1089.0, 192.5, 1089.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-106", 0 ],
					"destination" : [ "obj-45", 1 ],
					"hidden" : 0,
					"midpoints" : [ 843.826721, 1248.0, 903.0, 1248.0, 903.0, 1260.0, 907.333252, 1260.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 2 ],
					"destination" : [ "obj-1", 2 ],
					"hidden" : 0,
					"midpoints" : [ 708.493286, 942.0, 430.284576, 942.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 1 ],
					"destination" : [ "obj-1", 1 ],
					"hidden" : 0,
					"midpoints" : [ 538.82666, 945.0, 388.534576, 945.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [ 369.159973, 945.0, 346.784576, 945.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 3 ],
					"destination" : [ "obj-39", 0 ],
					"hidden" : 0,
					"midpoints" : [ 878.159973, 879.0, 878.159973, 879.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 3 ],
					"destination" : [ "obj-49", 1 ],
					"hidden" : 0,
					"midpoints" : [ 878.159973, 885.0, 855.0, 885.0, 855.0, 1155.0, 930.0, 1155.0, 930.0, 1209.0, 921.659973, 1209.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"midpoints" : [ 609.919861, 567.0, 614.659973, 567.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-26", 5 ],
					"hidden" : 0,
					"midpoints" : [ 1901.5, 729.0, 1756.75, 729.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-11", 3 ],
					"hidden" : 0,
					"midpoints" : [ 614.659973, 606.0, 750.909973, 606.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [ 187.0, 1431.0, 187.0, 1431.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-55", 0 ],
					"hidden" : 0,
					"midpoints" : [ 1205.5, 1003.170044, 846.079956, 1003.170044, 846.079956, 430.0, 486.659973, 430.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [ 600.919861, 1806.0, 497.5, 1806.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-88", 0 ],
					"hidden" : 0,
					"midpoints" : [ 600.919861, 978.0, 600.919861, 978.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 0,
					"midpoints" : [ 600.919861, 918.0, 600.919861, 918.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [ 1606.75, 753.0, 1176.0, 753.0, 1176.0, 885.0, 1205.5, 885.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 0 ],
					"destination" : [ "obj-2", 1 ],
					"hidden" : 0,
					"midpoints" : [ 172.0, 1806.0, 523.5, 1806.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [ 172.0, 1806.0, 497.5, 1806.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 0 ],
					"destination" : [ "obj-26", 4 ],
					"hidden" : 0,
					"midpoints" : [ 1810.5, 753.0, 1776.0, 753.0, 1776.0, 729.0, 1726.75, 729.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-55", 0 ],
					"hidden" : 0,
					"midpoints" : [ 486.659973, 396.0, 486.659973, 396.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 0 ],
					"destination" : [ "obj-26", 0 ],
					"hidden" : 0,
					"midpoints" : [ 1529.5, 717.0, 1606.75, 717.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-33", 0 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0,
					"midpoints" : [ 369.159973, 591.0, 369.159973, 591.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 0 ],
					"destination" : [ "obj-33", 0 ],
					"hidden" : 0,
					"midpoints" : [ 369.159973, 555.0, 369.159973, 555.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 1 ],
					"destination" : [ "obj-35", 0 ],
					"hidden" : 0,
					"midpoints" : [ 410.159973, 555.0, 410.159973, 555.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 0 ],
					"destination" : [ "obj-44", 1 ],
					"hidden" : 0,
					"midpoints" : [ 369.159973, 555.0, 344.5, 555.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 2 ],
					"destination" : [ "obj-48", 1 ],
					"hidden" : 0,
					"midpoints" : [ 451.159973, 555.0, 507.5, 555.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-35", 0 ],
					"destination" : [ "obj-11", 1 ],
					"hidden" : 0,
					"midpoints" : [ 410.159973, 606.0, 496.409973, 606.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-36", 0 ],
					"destination" : [ "obj-41", 0 ],
					"hidden" : 0,
					"midpoints" : [ 369.159973, 300.0, 369.159973, 300.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-38", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [ 192.5, 1257.0, 187.0, 1257.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-39", 0 ],
					"destination" : [ "obj-46", 0 ],
					"hidden" : 0,
					"midpoints" : [ 878.159973, 909.0, 878.159973, 909.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-87", 0 ],
					"hidden" : 0,
					"midpoints" : [ 207.417496, 897.0, 207.417496, 897.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-41", 2 ],
					"destination" : [ "obj-23", 1 ],
					"hidden" : 0,
					"midpoints" : [ 425.159973, 459.0, 426.659973, 459.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-41", 1 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [ 397.159973, 372.0, 486.659973, 372.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-41", 0 ],
					"destination" : [ "obj-32", 0 ],
					"hidden" : 0,
					"midpoints" : [ 369.159973, 354.0, 343.5, 354.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-41", 0 ],
					"destination" : [ "obj-34", 0 ],
					"hidden" : 0,
					"midpoints" : [ 369.159973, 447.0, 447.0, 447.0, 447.0, 519.0, 369.159973, 519.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-42", 1 ],
					"destination" : [ "obj-53", 0 ],
					"hidden" : 0,
					"midpoints" : [ 1153.97998, 63.0, 1131.0, 63.0, 1131.0, 81.0, 1129.47998, 81.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-45", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [ 827.333252, 1293.0, 1032.0, 1293.0, 1032.0, 885.0, 1205.5, 885.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-49", 0 ],
					"destination" : [ "obj-45", 1 ],
					"hidden" : 0,
					"midpoints" : [ 901.659973, 1257.0, 907.333252, 1257.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [ 207.417496, 831.0, 207.417496, 831.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-50", 0 ],
					"destination" : [ "obj-42", 0 ],
					"hidden" : 0,
					"midpoints" : [ 1129.47998, 39.0, 1129.47998, 39.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-53", 0 ],
					"destination" : [ "obj-64", 0 ],
					"hidden" : 0,
					"midpoints" : [ 1129.47998, 105.0, 1129.47998, 105.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-54", 0 ],
					"destination" : [ "obj-11", 4 ],
					"hidden" : 0,
					"midpoints" : [ 252.519989, 426.0, 696.0, 426.0, 696.0, 492.0, 878.159973, 492.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-54", 0 ],
					"destination" : [ "obj-19", 1 ],
					"hidden" : 0,
					"midpoints" : [ 252.519989, 533.948486, 1492.5, 533.948486 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-54", 0 ],
					"destination" : [ "obj-45", 2 ],
					"hidden" : 0,
					"midpoints" : [ 252.519989, 721.363525, 987.333252, 721.363525 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-54", 0 ],
					"destination" : [ "obj-55", 1 ],
					"hidden" : 0,
					"midpoints" : [ 252.519989, 426.0, 638.659973, 426.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-54", 0 ],
					"destination" : [ "obj-58", 0 ],
					"hidden" : 0,
					"midpoints" : [ 252.519989, 237.0, 302.5, 237.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-54", 0 ],
					"destination" : [ "obj-65", 1 ],
					"hidden" : 0,
					"midpoints" : [ 252.519989, 195.0, 991.47998, 195.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-54", 0 ],
					"destination" : [ "obj-66", 1 ],
					"hidden" : 0,
					"midpoints" : [ 252.519989, 195.0, 1292.47998, 195.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-54", 0 ],
					"destination" : [ "obj-67", 1 ],
					"hidden" : 0,
					"midpoints" : [ 252.519989, 195.0, 1591.0, 195.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-54", 0 ],
					"destination" : [ "obj-68", 1 ],
					"hidden" : 0,
					"midpoints" : [ 252.519989, 195.0, 1895.5, 195.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-54", 0 ],
					"destination" : [ "obj-69", 1 ],
					"hidden" : 0,
					"midpoints" : [ 252.519989, 195.0, 1002.0, 195.0, 1002.0, 321.0, 991.47998, 321.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-54", 0 ],
					"destination" : [ "obj-70", 1 ],
					"hidden" : 0,
					"midpoints" : [ 252.519989, 195.0, 1302.0, 195.0, 1302.0, 321.0, 1292.47998, 321.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-54", 0 ],
					"destination" : [ "obj-71", 1 ],
					"hidden" : 0,
					"midpoints" : [ 252.519989, 195.0, 1602.0, 195.0, 1602.0, 321.0, 1591.0, 321.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-54", 0 ],
					"destination" : [ "obj-72", 1 ],
					"hidden" : 0,
					"midpoints" : [ 252.519989, 195.0, 1917.0, 195.0, 1917.0, 324.0, 1895.5, 324.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-55", 0 ],
					"destination" : [ "obj-11", 3 ],
					"hidden" : 0,
					"midpoints" : [ 486.659973, 492.0, 750.909973, 492.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-57", 0 ],
					"destination" : [ "obj-78", 0 ],
					"hidden" : 0,
					"midpoints" : [ 1725.75, 693.0, 1725.75, 693.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-59", 0 ],
					"destination" : [ "obj-79", 0 ],
					"hidden" : 0,
					"midpoints" : [ 1535.25, 813.0, 1674.75, 813.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-60", 0 ],
					"destination" : [ "obj-79", 0 ],
					"hidden" : 0,
					"midpoints" : [ 1567.25, 813.0, 1674.75, 813.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-61", 0 ],
					"destination" : [ "obj-79", 0 ],
					"hidden" : 0,
					"midpoints" : [ 1606.75, 813.0, 1674.75, 813.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-62", 0 ],
					"destination" : [ "obj-79", 0 ],
					"hidden" : 0,
					"midpoints" : [ 1639.25, 813.0, 1674.75, 813.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-63", 0 ],
					"destination" : [ "obj-79", 0 ],
					"hidden" : 0,
					"midpoints" : [ 1674.75, 792.0, 1674.75, 792.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-64", 0 ],
					"destination" : [ "obj-65", 0 ],
					"hidden" : 0,
					"midpoints" : [ 1129.47998, 195.0, 719.5, 195.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-64", 1 ],
					"destination" : [ "obj-66", 0 ],
					"hidden" : 0,
					"midpoints" : [ 1151.908569, 195.0, 1023.47998, 195.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-64", 2 ],
					"destination" : [ "obj-67", 0 ],
					"hidden" : 0,
					"midpoints" : [ 1174.337158, 195.0, 1319.0, 195.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-64", 3 ],
					"destination" : [ "obj-68", 0 ],
					"hidden" : 0,
					"midpoints" : [ 1196.765747, 195.0, 1622.5, 195.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-64", 4 ],
					"destination" : [ "obj-69", 0 ],
					"hidden" : 0,
					"midpoints" : [ 1219.194214, 195.0, 696.0, 195.0, 696.0, 324.0, 719.5, 324.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-64", 5 ],
					"destination" : [ "obj-70", 0 ],
					"hidden" : 0,
					"midpoints" : [ 1241.622803, 195.0, 1008.0, 195.0, 1008.0, 324.0, 1023.47998, 324.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-64", 6 ],
					"destination" : [ "obj-71", 0 ],
					"hidden" : 0,
					"midpoints" : [ 1264.051392, 195.0, 1305.0, 195.0, 1305.0, 324.0, 1322.5, 324.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-64", 7 ],
					"destination" : [ "obj-72", 0 ],
					"hidden" : 0,
					"midpoints" : [ 1286.47998, 195.0, 1608.0, 195.0, 1608.0, 321.0, 1622.5, 321.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-65", 2 ],
					"destination" : [ "obj-26", 1 ],
					"hidden" : 0,
					"midpoints" : [ 991.47998, 324.0, 1002.0, 324.0, 1002.0, 717.0, 1636.75, 717.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-65", 1 ],
					"destination" : [ "obj-26", 2 ],
					"hidden" : 0,
					"midpoints" : [ 855.48999, 324.0, 1002.0, 324.0, 1002.0, 717.0, 1666.75, 717.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-65", 0 ],
					"destination" : [ "obj-55", 0 ],
					"hidden" : 0,
					"midpoints" : [ 719.5, 306.0, 669.0, 306.0, 669.0, 426.0, 486.659973, 426.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-65", 1 ],
					"destination" : [ "obj-59", 0 ],
					"hidden" : 0,
					"midpoints" : [ 855.48999, 324.0, 1002.0, 324.0, 1002.0, 759.0, 1535.25, 759.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-66", 2 ],
					"destination" : [ "obj-26", 1 ],
					"hidden" : 0,
					"midpoints" : [ 1292.47998, 324.0, 1302.0, 324.0, 1302.0, 717.0, 1636.75, 717.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-66", 1 ],
					"destination" : [ "obj-26", 2 ],
					"hidden" : 0,
					"midpoints" : [ 1157.97998, 324.0, 1302.0, 324.0, 1302.0, 717.0, 1666.75, 717.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-66", 0 ],
					"destination" : [ "obj-55", 0 ],
					"hidden" : 0,
					"midpoints" : [ 1023.47998, 306.0, 1008.0, 306.0, 1008.0, 435.0, 660.0, 435.0, 660.0, 426.0, 486.659973, 426.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-66", 1 ],
					"destination" : [ "obj-60", 0 ],
					"hidden" : 0,
					"midpoints" : [ 1157.97998, 324.0, 1302.0, 324.0, 1302.0, 759.0, 1567.25, 759.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-66", 2 ],
					"destination" : [ "obj-70", 1 ],
					"hidden" : 0,
					"midpoints" : [ 1292.47998, 306.0, 1292.47998, 306.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-67", 2 ],
					"destination" : [ "obj-26", 1 ],
					"hidden" : 0,
					"midpoints" : [ 1591.0, 324.0, 1602.0, 324.0, 1602.0, 492.0, 1575.0, 492.0, 1575.0, 543.0, 1636.75, 543.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-67", 1 ],
					"destination" : [ "obj-26", 2 ],
					"hidden" : 0,
					"midpoints" : [ 1455.0, 324.0, 1602.0, 324.0, 1602.0, 492.0, 1575.0, 492.0, 1575.0, 543.0, 1666.75, 543.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-67", 0 ],
					"destination" : [ "obj-55", 0 ],
					"hidden" : 0,
					"midpoints" : [ 1319.0, 306.0, 1308.0, 306.0, 1308.0, 435.0, 660.0, 435.0, 660.0, 426.0, 486.659973, 426.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-67", 1 ],
					"destination" : [ "obj-61", 0 ],
					"hidden" : 0,
					"midpoints" : [ 1455.0, 324.0, 1602.0, 324.0, 1602.0, 492.0, 1575.0, 492.0, 1575.0, 543.0, 1584.0, 543.0, 1584.0, 771.0, 1606.75, 771.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-68", 2 ],
					"destination" : [ "obj-26", 1 ],
					"hidden" : 0,
					"midpoints" : [ 1895.5, 306.0, 1917.0, 306.0, 1917.0, 615.0, 1636.75, 615.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-68", 1 ],
					"destination" : [ "obj-26", 2 ],
					"hidden" : 0,
					"midpoints" : [ 1759.0, 306.0, 1917.0, 306.0, 1917.0, 615.0, 1666.75, 615.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-68", 0 ],
					"destination" : [ "obj-55", 0 ],
					"hidden" : 0,
					"midpoints" : [ 1622.5, 306.0, 1608.0, 306.0, 1608.0, 435.0, 660.0, 435.0, 660.0, 426.0, 486.659973, 426.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-68", 1 ],
					"destination" : [ "obj-62", 0 ],
					"hidden" : 0,
					"midpoints" : [ 1759.0, 306.0, 1608.0, 306.0, 1608.0, 492.0, 1575.0, 492.0, 1575.0, 543.0, 1584.0, 543.0, 1584.0, 768.0, 1639.25, 768.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-69", 2 ],
					"destination" : [ "obj-26", 1 ],
					"hidden" : 0,
					"midpoints" : [ 991.47998, 717.0, 1636.75, 717.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-69", 1 ],
					"destination" : [ "obj-26", 2 ],
					"hidden" : 0,
					"midpoints" : [ 855.48999, 606.0, 1666.75, 606.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-69", 0 ],
					"destination" : [ "obj-55", 0 ],
					"hidden" : 0,
					"midpoints" : [ 719.5, 426.0, 486.659973, 426.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-69", 1 ],
					"destination" : [ "obj-63", 0 ],
					"hidden" : 0,
					"midpoints" : [ 855.48999, 606.0, 1584.0, 606.0, 1584.0, 768.0, 1674.75, 768.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-70", 2 ],
					"destination" : [ "obj-26", 1 ],
					"hidden" : 0,
					"midpoints" : [ 1292.47998, 717.0, 1636.75, 717.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-70", 1 ],
					"destination" : [ "obj-26", 2 ],
					"hidden" : 0,
					"midpoints" : [ 1157.97998, 717.0, 1666.75, 717.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-70", 0 ],
					"destination" : [ "obj-55", 0 ],
					"hidden" : 0,
					"midpoints" : [ 1023.47998, 435.0, 660.0, 435.0, 660.0, 426.0, 486.659973, 426.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-70", 1 ],
					"destination" : [ "obj-73", 0 ],
					"hidden" : 0,
					"midpoints" : [ 1157.97998, 804.0, 1701.0, 804.0, 1701.0, 771.0, 1714.75, 771.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-71", 2 ],
					"destination" : [ "obj-26", 1 ],
					"hidden" : 0,
					"midpoints" : [ 1591.0, 492.0, 1575.0, 492.0, 1575.0, 543.0, 1636.75, 543.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-71", 1 ],
					"destination" : [ "obj-26", 2 ],
					"hidden" : 0,
					"midpoints" : [ 1456.75, 717.0, 1666.75, 717.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-71", 0 ],
					"destination" : [ "obj-55", 0 ],
					"hidden" : 0,
					"midpoints" : [ 1322.5, 435.0, 660.0, 435.0, 660.0, 426.0, 486.659973, 426.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-71", 1 ],
					"destination" : [ "obj-74", 0 ],
					"hidden" : 0,
					"midpoints" : [ 1456.75, 621.0, 1788.0, 621.0, 1788.0, 759.0, 1749.0, 759.0, 1749.0, 771.0, 1747.25, 771.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-72", 2 ],
					"destination" : [ "obj-26", 1 ],
					"hidden" : 0,
					"midpoints" : [ 1895.5, 615.0, 1636.75, 615.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-72", 1 ],
					"destination" : [ "obj-26", 2 ],
					"hidden" : 0,
					"midpoints" : [ 1759.0, 492.0, 1785.0, 492.0, 1785.0, 621.0, 1666.75, 621.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-72", 0 ],
					"destination" : [ "obj-55", 0 ],
					"hidden" : 0,
					"midpoints" : [ 1622.5, 435.0, 660.0, 435.0, 660.0, 426.0, 486.659973, 426.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-72", 1 ],
					"destination" : [ "obj-77", 0 ],
					"hidden" : 0,
					"midpoints" : [ 1759.0, 492.0, 1788.0, 492.0, 1788.0, 768.0, 1795.0, 768.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-73", 0 ],
					"destination" : [ "obj-79", 0 ],
					"hidden" : 0,
					"midpoints" : [ 1714.75, 813.0, 1674.75, 813.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-74", 0 ],
					"destination" : [ "obj-79", 0 ],
					"hidden" : 0,
					"midpoints" : [ 1747.25, 813.0, 1674.75, 813.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-77", 0 ],
					"destination" : [ "obj-79", 0 ],
					"hidden" : 0,
					"midpoints" : [ 1795.0, 813.0, 1674.75, 813.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-78", 0 ],
					"destination" : [ "obj-26", 3 ],
					"hidden" : 0,
					"midpoints" : [ 1725.75, 720.0, 1696.75, 720.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-81", 0 ],
					"destination" : [ "obj-29", 0 ],
					"hidden" : 0,
					"midpoints" : [ 1814.75, 729.0, 1810.5, 729.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-82", 0 ],
					"destination" : [ "obj-81", 0 ],
					"hidden" : 0,
					"midpoints" : [ 1814.75, 693.0, 1814.75, 693.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-87", 0 ],
					"destination" : [ "obj-1", 4 ],
					"hidden" : 0,
					"midpoints" : [ 207.417496, 951.0, 324.0, 951.0, 324.0, 945.0, 513.784546, 945.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-88", 0 ],
					"destination" : [ "obj-1", 3 ],
					"hidden" : 0,
					"midpoints" : [ 600.919861, 1011.0, 534.0, 1011.0, 534.0, 945.0, 472.034576, 945.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-88", 0 ],
					"destination" : [ "obj-90", 1 ],
					"hidden" : 0,
					"midpoints" : [ 600.919861, 1020.0, 639.0, 1020.0, 639.0, 978.0, 694.5, 978.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-27", 0 ],
					"hidden" : 0,
					"midpoints" : [ 187.0, 1614.0, 174.0, 1614.0, 174.0, 1608.0, 172.0, 1608.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-94", 0 ],
					"destination" : [ "obj-49", 0 ],
					"hidden" : 0,
					"midpoints" : [ 878.159973, 1209.0, 901.659973, 1209.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-95", 0 ],
					"destination" : [ "obj-45", 0 ],
					"hidden" : 0,
					"midpoints" : [ 770.659973, 1248.0, 827.333252, 1248.0 ]
				}

			}
 ],
		"parameters" : 		{
			"obj-16::obj-71" : [ "live.gain~[2]", "live.gain~", 0 ]
		}

	}

}
