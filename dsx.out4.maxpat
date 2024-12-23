{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 9,
			"minor" : 0,
			"revision" : 2,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 1117.0, 615.0, 1554.0, 1019.0 ],
		"openinpresentation" : 1,
		"gridsize" : [ 12.0, 12.0 ],
		"boxes" : [ 			{
				"box" : 				{
					"id" : "obj-2",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 62.0, 846.600098000000116, 220.0, 22.0 ],
					"text" : "jit.gl.syphonserver @servername player"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-18",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2005.0, 172.899901999999997, 50.0, 22.0 ],
					"text" : "compile"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-29",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 9,
							"minor" : 0,
							"revision" : 2,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 647.0, 328.0, 520.0, 662.0 ],
						"gridsize" : [ 15.0, 15.0 ],
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-11",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 198.0, 452.0, 119.0, 22.0 ],
									"text" : "prepend draw_mode"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-10",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 198.0, 492.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-9",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 194.0, 62.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-8",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 194.0, 213.0, 105.0, 22.0 ],
									"text" : "substitute 2 points"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-7",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 141.0, 256.0, 121.0, 22.0 ],
									"text" : "substitute 1 line_loop"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-2",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 99.0, 293.0, 110.0, 22.0 ],
									"text" : "substitute 0 tri_grid"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 0 ],
									"source" : [ "obj-11", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-11", 0 ],
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-11", 0 ],
									"source" : [ "obj-7", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-11", 0 ],
									"source" : [ "obj-8", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"order" : 2,
									"source" : [ "obj-9", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 0 ],
									"order" : 1,
									"source" : [ "obj-9", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"order" : 0,
									"source" : [ "obj-9", 0 ]
								}

							}
 ],
						"originid" : "pat-252"
					}
,
					"patching_rect" : [ 1138.5, 530.0, 59.0, 22.0 ],
					"saved_object_attributes" : 					{
						"globalpatchername" : ""
					}
,
					"text" : "p"
				}

			}
, 			{
				"box" : 				{
					"code" : "inlets = 1;\noutlets = 2;\n\nvar t = this.patcher;\r\nvar module = 'OUTPUT';\r\n\nfunction oscin(target,value) \r\n{\r\n\t\r\n\tvar oscprefix = '/' + module;\r\n\t\r\n\t// OSC Receiver\n    var positionx = t.getnamed('positionx');\n    var positiony = t.getnamed('positiony');\n    var positionz = t.getnamed('positionz');\r\n\tvar mod_camposx = t.getnamed('mod_camposx');\n    var mod_camposy = t.getnamed('mod_camposy');\n    var mod_camposz = t.getnamed('mod_camposz');\n\n\n    if (target == oscprefix + '/positionx') {\n        positionx.setvalueof(value);\n    }\t\n\n    if (target == oscprefix + '/positiony') {\n        positiony.setvalueof(value);\n    }\n\n    if (target == oscprefix + '/positionz') {\n        positionz.setvalueof(value);\n    }\n\n    if (target == oscprefix + '/mod_camposx') {\n        mod_camposx.setvalueof(value);\n    }\t\n\n    if (target == oscprefix + '/mod_camposy') {\n        \n        mod_camposy.setvalueof(value);\n    }\n\n    if (target == oscprefix + '/mod_camposz') {\n        \n        mod_camposz.setvalueof(value);\n    }\n}",
					"filename" : "none",
					"fontface" : 0,
					"fontname" : "<Monospaced>",
					"fontsize" : 10.0,
					"id" : "obj-13",
					"maxclass" : "v8.codebox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 1905.5, 206.174927000000025, 361.0, 498.0 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0
					}

				}

			}
, 			{
				"box" : 				{
					"id" : "obj-132",
					"linecount" : 2,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1272.5, 423.0, 88.0, 35.0 ],
					"text" : "prepend diffuse_texture"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-85",
					"maxclass" : "newobj",
					"numinlets" : 8,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 1272.5, 477.0, 112.0, 22.0 ],
					"text" : "jit.gl.material player"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-73",
					"maxclass" : "newobj",
					"numinlets" : 9,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 930.5, 575.0, 317.0, 22.0 ],
					"text" : "jit.gl.mesh player @rotatexyz -90 0 0 @smooth_shading 1"
				}

			}
, 			{
				"box" : 				{
					"comment" : "diffuse",
					"id" : "obj-65",
					"index" : 0,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1272.5, 366.0, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.862745098039216, 0.870588235294118, 0.87843137254902, 0.0 ],
					"contrastactivetab" : 0,
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"id" : "obj-204",
					"margin" : 0,
					"maxclass" : "tab",
					"mode" : 1,
					"multiline" : 0,
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 767.5, 75.899901999999997, 129.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 143.0, 43.0, 142.0, 20.0 ],
					"rounded" : 0.0,
					"spacing_x" : 1.0,
					"spacing_y" : 0.0,
					"style" : "dsx.tab3",
					"tabcolor" : [ 0.423529411764706, 0.423529411764706, 0.423529411764706, 1.0 ],
					"tabs" : [ "perspective", "ortho1", "ortho2" ],
					"textcolor" : [ 0.901960784313726, 0.901960784313726, 0.901960784313726, 1.0 ],
					"varname" : "tab[5]"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontsize" : 11.0,
					"id" : "obj-202",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 14.0, 156.0, 143.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 288.5, 337.5, 37.0, 19.0 ],
					"text" : "Mode",
					"textcolor" : [ 0.901960784313726, 0.901960784313726, 0.901960784313726, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"bgcolor" : [ 0.501960784313725, 0.501960784313725, 0.501960784313725, 1.0 ],
					"bordercolor" : [ 0.807843137254902, 0.898039215686275, 0.909803921568627, 0.0 ],
					"id" : "obj-203",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 71.0, 21.899901999999997, 128.0, 128.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 286.0, 337.0, 62.0, 20.0 ],
					"proportion" : 0.5,
					"rounded" : 2
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 0.0 ],
					"fontsize" : 11.0,
					"format" : 6,
					"htricolor" : [ 0.784314, 0.145098, 0.023529, 1.0 ],
					"id" : "obj-195",
					"maxclass" : "flonum",
					"numdecimalplaces" : 4,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 990.5, 286.0, 47.0, 21.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 515.0, 315.5, 47.0, 21.0 ],
					"prototypename" : "dsx_float",
					"tricolor" : [ 0.784314, 0.145098, 0.023529, 1.0 ],
					"triscale" : 0.5,
					"varname" : "shape_posz"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 0.0 ],
					"fontsize" : 11.0,
					"format" : 6,
					"htricolor" : [ 0.784314, 0.145098, 0.023529, 1.0 ],
					"id" : "obj-196",
					"maxclass" : "flonum",
					"numdecimalplaces" : 4,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 970.5, 263.0, 48.0, 21.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 442.0, 315.5, 48.0, 21.0 ],
					"prototypename" : "dsx_float",
					"tricolor" : [ 0.784314, 0.145098, 0.023529, 1.0 ],
					"triscale" : 0.5,
					"varname" : "shape_posy"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 0.0 ],
					"fontsize" : 11.0,
					"format" : 6,
					"htricolor" : [ 0.784314, 0.145098, 0.023529, 1.0 ],
					"id" : "obj-198",
					"maxclass" : "flonum",
					"numdecimalplaces" : 4,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 950.5, 286.0, 47.0, 21.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 374.0, 315.5, 47.0, 21.0 ],
					"prototypename" : "dsx_float",
					"tricolor" : [ 0.784314, 0.145098, 0.023529, 1.0 ],
					"triscale" : 0.5,
					"varname" : "shape_posx"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontsize" : 11.0,
					"id" : "obj-200",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 110.0, 117.899901999999997, 154.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 288.0, 317.0, 52.0, 19.0 ],
					"text" : "Position",
					"textcolor" : [ 0.901960784313726, 0.901960784313726, 0.901960784313726, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"bgcolor" : [ 0.501960784313725, 0.501960784313725, 0.501960784313725, 1.0 ],
					"bordercolor" : [ 0.807843137254902, 0.898039215686275, 0.909803921568627, 0.0 ],
					"id" : "obj-201",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 56.0, 85.0, 128.0, 128.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 286.0, 316.0, 285.0, 20.0 ],
					"proportion" : 0.5,
					"rounded" : 2
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-199",
					"maxclass" : "newobj",
					"numinlets" : 4,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 930.5, 312.0, 93.0, 22.0 ],
					"text" : "pak position f f f"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Consolas",
					"fontsize" : 10.0,
					"id" : "obj-190",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 1214.5, 240.0, 140.0, 18.0 ],
					"restore" : [ 1 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0,
						"parameter_mappable" : 0
					}
,
					"text" : "pattr shape @default_interp 0",
					"varname" : "shape"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.862745098039216, 0.870588235294118, 0.87843137254902, 0.0 ],
					"contrastactivetab" : 0,
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"id" : "obj-191",
					"margin" : 0,
					"maxclass" : "tab",
					"multiline" : 0,
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1274.5, 266.0, 129.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 348.0, 295.0, 223.645833333333258, 20.0 ],
					"rounded" : 0.0,
					"spacing_x" : 1.0,
					"spacing_y" : 0.0,
					"style" : "dsx.tab3",
					"tabcolor" : [ 0.423529411764706, 0.423529411764706, 0.423529411764706, 1.0 ],
					"tabs" : [ "cube", "plane", "sphere" ],
					"textcolor" : [ 0.901960784313726, 0.901960784313726, 0.901960784313726, 1.0 ],
					"varname" : "tab[10]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-192",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1329.5, 292.0, 58.0, 22.0 ],
					"text" : "shape $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-189",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 9,
							"minor" : 0,
							"revision" : 2,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 59.0, 106.0, 640.0, 480.0 ],
						"gridsize" : [ 15.0, 15.0 ],
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-18",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "list" ],
									"patching_rect" : [ 50.0, 100.0, 51.0, 22.0 ],
									"text" : "hsv2rgb"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-37",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 129.0, 59.0, 22.0 ],
									"text" : "append 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-42",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 157.0, 118.0, 22.0 ],
									"text" : "prepend mat_diffuse"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-186",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 40.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-188",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 50.0, 259.0, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-37", 0 ],
									"source" : [ "obj-18", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-18", 0 ],
									"source" : [ "obj-186", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-42", 0 ],
									"source" : [ "obj-37", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-188", 0 ],
									"source" : [ "obj-42", 0 ]
								}

							}
 ],
						"originid" : "pat-254"
					}
,
					"patching_rect" : [ 1356.5, 446.0, 62.0, 22.0 ],
					"saved_object_attributes" : 					{
						"globalpatchername" : ""
					}
,
					"text" : "p"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-185",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 9,
							"minor" : 0,
							"revision" : 2,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 0.0, 0.0, 640.0, 480.0 ],
						"gridsize" : [ 15.0, 15.0 ],
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-118",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "list" ],
									"patching_rect" : [ 50.0, 100.0, 47.0, 18.0 ],
									"text" : "hsv2rgb"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-228",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 129.0, 50.0, 18.0 ],
									"text" : "append 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-229",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 157.0, 76.0, 28.0 ],
									"text" : "prepend diffuse"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-183",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 40.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-184",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 50.0, 245.0, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-228", 0 ],
									"source" : [ "obj-118", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-118", 0 ],
									"source" : [ "obj-183", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-229", 0 ],
									"source" : [ "obj-228", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-184", 0 ],
									"source" : [ "obj-229", 0 ]
								}

							}
 ],
						"originid" : "pat-256"
					}
,
					"patching_rect" : [ 896.0, 997.600098000000116, 76.0, 22.0 ],
					"saved_object_attributes" : 					{
						"globalpatchername" : ""
					}
,
					"text" : "p"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-181",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 9,
							"minor" : 0,
							"revision" : 2,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 0.0, 0.0, 640.0, 480.0 ],
						"gridsize" : [ 15.0, 15.0 ],
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-287",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "list" ],
									"patching_rect" : [ 50.0, 100.0, 47.0, 18.0 ],
									"text" : "hsv2rgb"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-289",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 129.0, 50.0, 18.0 ],
									"text" : "append 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-290",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 157.0, 76.0, 28.0 ],
									"text" : "prepend diffuse"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-176",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 40.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-180",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 50.0, 245.0, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-287", 0 ],
									"source" : [ "obj-176", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-289", 0 ],
									"source" : [ "obj-287", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-290", 0 ],
									"source" : [ "obj-289", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-180", 0 ],
									"source" : [ "obj-290", 0 ]
								}

							}
 ],
						"originid" : "pat-258"
					}
,
					"patching_rect" : [ 1782.0, 894.600097999999889, 76.0, 22.0 ],
					"saved_object_attributes" : 					{
						"globalpatchername" : ""
					}
,
					"text" : "p"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Consolas",
					"fontsize" : 10.0,
					"id" : "obj-164",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 1346.0, 867.600098000000116, 183.0, 18.0 ],
					"restore" : [ 0 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0,
						"parameter_mappable" : 0
					}
,
					"text" : "pattr shadow_enable @default_interp 0",
					"varname" : "shadow_enable"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Consolas",
					"fontsize" : 10.0,
					"id" : "obj-161",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 1350.0, 945.600098000000116, 158.0, 18.0 ],
					"restore" : [ 0 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0,
						"parameter_mappable" : 0
					}
,
					"text" : "pattr showaxes @default_interp 0",
					"varname" : "showaxes"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 0.0 ],
					"fontsize" : 11.0,
					"format" : 6,
					"htricolor" : [ 0.784314, 0.145098, 0.023529, 1.0 ],
					"id" : "obj-153",
					"maxclass" : "flonum",
					"maximum" : 180.0,
					"minimum" : 1.0,
					"numdecimalplaces" : 4,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1657.0, 981.600097999999889, 47.0, 21.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 519.0, 252.5, 47.0, 21.0 ],
					"prototypename" : "dsx_float",
					"tricolor" : [ 0.784314, 0.145098, 0.023529, 1.0 ],
					"triscale" : 0.5,
					"varname" : "light2_spotsize"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 0.0 ],
					"fontsize" : 11.0,
					"format" : 6,
					"htricolor" : [ 0.784314, 0.145098, 0.023529, 1.0 ],
					"id" : "obj-154",
					"maxclass" : "flonum",
					"maximum" : 100.0,
					"minimum" : 0.0,
					"numdecimalplaces" : 4,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1549.0, 984.600097999999889, 47.0, 21.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 519.0, 273.5, 47.0, 21.0 ],
					"prototypename" : "dsx_float",
					"tricolor" : [ 0.784314, 0.145098, 0.023529, 1.0 ],
					"triscale" : 0.5,
					"varname" : "light2_spotsoft"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-155",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1549.0, 1013.600097999999889, 114.0, 22.0 ],
					"text" : "prepend spot_falloff"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-160",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1657.0, 1013.600097999999889, 115.0, 22.0 ],
					"text" : "prepend spot_angle"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontsize" : 11.0,
					"id" : "obj-134",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 95.0, 82.899901999999997, 143.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 430.0, 254.0, 72.0, 19.0 ],
					"text" : "Spot SIze",
					"textcolor" : [ 0.901960784313726, 0.901960784313726, 0.901960784313726, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"bgcolor" : [ 0.501960784313725, 0.501960784313725, 0.501960784313725, 1.0 ],
					"bordercolor" : [ 0.807843137254902, 0.898039215686275, 0.909803921568627, 0.0 ],
					"id" : "obj-138",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 80.0, 85.0, 128.0, 128.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 429.0, 253.0, 142.333333333333258, 20.0 ],
					"proportion" : 0.5,
					"rounded" : 2
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontsize" : 11.0,
					"id" : "obj-143",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 84.0, 92.899901999999997, 150.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 430.0, 275.0, 82.0, 19.0 ],
					"text" : "Spot Softness",
					"textcolor" : [ 0.901960784313726, 0.901960784313726, 0.901960784313726, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"bgcolor" : [ 0.501960784313725, 0.501960784313725, 0.501960784313725, 1.0 ],
					"bordercolor" : [ 0.807843137254902, 0.898039215686275, 0.909803921568627, 0.0 ],
					"id" : "obj-152",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 84.0, 91.899901999999997, 128.0, 128.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 429.0, 274.0, 142.333333333333258, 20.0 ],
					"proportion" : 0.5,
					"rounded" : 2
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-117",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1666.0, 945.600097999999889, 79.0, 22.0 ],
					"text" : "prepend type"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Consolas",
					"fontsize" : 10.0,
					"id" : "obj-121",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 1539.0, 894.600097999999889, 162.0, 18.0 ],
					"restore" : [ 1 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0,
						"parameter_mappable" : 0
					}
,
					"text" : "pattr light2_type @default_interp 0",
					"varname" : "light2_type"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.862745098039216, 0.870588235294118, 0.87843137254902, 0.0 ],
					"contrastactivetab" : 0,
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"id" : "obj-123",
					"margin" : 0,
					"maxclass" : "tab",
					"mode" : 1,
					"multiline" : 0,
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1611.0, 918.600097999999889, 129.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 351.0, 169.0, 220.0, 20.0 ],
					"rounded" : 0.0,
					"spacing_x" : 1.0,
					"spacing_y" : 0.0,
					"style" : "dsx.tab3",
					"tabcolor" : [ 0.423529411764706, 0.423529411764706, 0.423529411764706, 1.0 ],
					"tabs" : [ "spot", "point", "directional" ],
					"textcolor" : [ 0.901960784313726, 0.901960784313726, 0.901960784313726, 1.0 ],
					"varname" : "tab[9]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-115",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1142.0, 818.600098000000116, 79.0, 22.0 ],
					"text" : "prepend type"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Consolas",
					"fontsize" : 10.0,
					"id" : "obj-110",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 1014.0, 759.600098000000116, 162.0, 18.0 ],
					"restore" : [ 2 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0,
						"parameter_mappable" : 0
					}
,
					"text" : "pattr light1_type @default_interp 0",
					"varname" : "light1_type"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.862745098039216, 0.870588235294118, 0.87843137254902, 0.0 ],
					"contrastactivetab" : 0,
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"id" : "obj-111",
					"margin" : 0,
					"maxclass" : "tab",
					"mode" : 1,
					"multiline" : 0,
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1087.0, 784.600098000000116, 129.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 351.0, 43.0, 220.0, 20.0 ],
					"rounded" : 0.0,
					"spacing_x" : 1.0,
					"spacing_y" : 0.0,
					"style" : "dsx.tab3",
					"tabcolor" : [ 0.423529411764706, 0.423529411764706, 0.423529411764706, 1.0 ],
					"tabs" : [ "spot", "point", "directional" ],
					"textcolor" : [ 0.901960784313726, 0.901960784313726, 0.901960784313726, 1.0 ],
					"varname" : "tab[6]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 0.0 ],
					"fontsize" : 11.0,
					"format" : 6,
					"htricolor" : [ 0.784314, 0.145098, 0.023529, 1.0 ],
					"id" : "obj-107",
					"maxclass" : "flonum",
					"maximum" : 100.0,
					"minimum" : 0.0,
					"numdecimalplaces" : 4,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1549.0, 835.600097999999889, 47.0, 21.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 519.0, 231.5, 47.0, 21.0 ],
					"prototypename" : "dsx_float",
					"tricolor" : [ 0.784314, 0.145098, 0.023529, 1.0 ],
					"triscale" : 0.5,
					"varname" : "light2_dimming"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-108",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1549.0, 864.600097999999889, 119.0, 22.0 ],
					"text" : "prepend atten_linear"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 0.0 ],
					"fontsize" : 11.0,
					"format" : 6,
					"htricolor" : [ 0.784314, 0.145098, 0.023529, 1.0 ],
					"id" : "obj-106",
					"maxclass" : "flonum",
					"maximum" : 100.0,
					"minimum" : 0.0,
					"numdecimalplaces" : 4,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 996.0, 866.600098000000116, 47.0, 21.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 519.0, 105.5, 47.0, 21.0 ],
					"prototypename" : "dsx_float",
					"tricolor" : [ 0.784314, 0.145098, 0.023529, 1.0 ],
					"triscale" : 0.5,
					"varname" : "light1_dimming"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-101",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 996.0, 895.600098000000116, 119.0, 22.0 ],
					"text" : "prepend atten_linear"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-96",
					"maxclass" : "newobj",
					"numinlets" : 4,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1764.0, 1013.600097999999889, 100.0, 22.0 ],
					"text" : "pak rotatexyz f f f"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 0.0 ],
					"fontsize" : 11.0,
					"format" : 6,
					"htricolor" : [ 0.784314, 0.145098, 0.023529, 1.0 ],
					"id" : "obj-91",
					"maxclass" : "flonum",
					"numdecimalplaces" : 4,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1830.0, 978.600097999999889, 47.0, 21.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 519.0, 210.5, 47.0, 21.0 ],
					"prototypename" : "dsx_float",
					"tricolor" : [ 0.784314, 0.145098, 0.023529, 1.0 ],
					"triscale" : 0.5,
					"varname" : "light2_rotz"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 0.0 ],
					"fontsize" : 11.0,
					"format" : 6,
					"htricolor" : [ 0.784314, 0.145098, 0.023529, 1.0 ],
					"id" : "obj-92",
					"maxclass" : "flonum",
					"numdecimalplaces" : 4,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1808.0, 956.600097999999889, 47.0, 21.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 447.0, 210.5, 47.0, 21.0 ],
					"prototypename" : "dsx_float",
					"tricolor" : [ 0.784314, 0.145098, 0.023529, 1.0 ],
					"triscale" : 0.5,
					"varname" : "light2_roty"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 0.0 ],
					"fontsize" : 11.0,
					"format" : 6,
					"htricolor" : [ 0.784314, 0.145098, 0.023529, 1.0 ],
					"id" : "obj-93",
					"maxclass" : "flonum",
					"numdecimalplaces" : 4,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1786.0, 931.600097999999889, 47.0, 21.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 374.0, 210.5, 47.0, 21.0 ],
					"prototypename" : "dsx_float",
					"tricolor" : [ 0.784314, 0.145098, 0.023529, 1.0 ],
					"triscale" : 0.5,
					"varname" : "light2_rotx"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontsize" : 11.0,
					"id" : "obj-94",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 31.0, 77.899901999999997, 151.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 288.5, 211.5, 76.0, 19.0 ],
					"text" : "Direction",
					"textcolor" : [ 0.901960784313726, 0.901960784313726, 0.901960784313726, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"bgcolor" : [ 0.501960784313725, 0.501960784313725, 0.501960784313725, 1.0 ],
					"bordercolor" : [ 0.807843137254902, 0.898039215686275, 0.909803921568627, 0.0 ],
					"id" : "obj-95",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 31.0, 77.899901999999997, 128.0, 128.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 286.0, 211.0, 285.5, 20.0 ],
					"proportion" : 0.5,
					"rounded" : 2
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 0.0 ],
					"fontname" : "Consolas",
					"fontsize" : 11.0,
					"format" : 6,
					"htricolor" : [ 0.784314, 0.145098, 0.023529, 1.0 ],
					"id" : "obj-220",
					"maxclass" : "flonum",
					"maximum" : 120.0,
					"minimum" : 1.0,
					"numdecimalplaces" : 4,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 942.5, 388.0, 79.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 331.0, 359.0, 57.0, 19.0 ],
					"prototypename" : "dsx_float",
					"textcolor" : [ 0.901960784313726, 0.901960784313726, 0.901960784313726, 1.0 ],
					"tricolor" : [ 0.784314, 0.145098, 0.023529, 1.0 ],
					"triscale" : 0.5,
					"varname" : "cam_lensangle[1]"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontsize" : 11.0,
					"id" : "obj-68",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 35.0, 180.0, 146.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 288.5, 358.5, 34.0, 19.0 ],
					"text" : "Size",
					"textcolor" : [ 0.901960784313726, 0.901960784313726, 0.901960784313726, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"bgcolor" : [ 0.501960784313725, 0.501960784313725, 0.501960784313725, 1.0 ],
					"bordercolor" : [ 0.807843137254902, 0.898039215686275, 0.909803921568627, 0.0 ],
					"id" : "obj-70",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 56.0, 6.899901999999997, 128.0, 128.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 286.0, 358.0, 96.0, 20.0 ],
					"proportion" : 0.5,
					"rounded" : 2
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 0.0 ],
					"fontsize" : 11.0,
					"format" : 6,
					"htricolor" : [ 0.784314, 0.145098, 0.023529, 1.0 ],
					"id" : "obj-3",
					"maxclass" : "flonum",
					"maximum" : 1.0,
					"minimum" : 0.0,
					"numdecimalplaces" : 4,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1395.5, 389.0, 47.0, 21.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 519.0, 378.5, 47.0, 21.0 ],
					"prototypename" : "dsx_float",
					"tricolor" : [ 0.784314, 0.145098, 0.023529, 1.0 ],
					"triscale" : 0.5,
					"varname" : "luminance[2]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 0.0 ],
					"fontsize" : 11.0,
					"format" : 6,
					"htricolor" : [ 0.784314, 0.145098, 0.023529, 1.0 ],
					"id" : "obj-8",
					"maxclass" : "flonum",
					"maximum" : 1.0,
					"minimum" : 0.0,
					"numdecimalplaces" : 4,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1376.5, 365.0, 47.0, 21.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 374.0, 401.0, 47.0, 21.0 ],
					"prototypename" : "dsx_float",
					"tricolor" : [ 0.784314, 0.145098, 0.023529, 1.0 ],
					"triscale" : 0.5,
					"varname" : "saturation[2]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 0.0 ],
					"fontsize" : 11.0,
					"format" : 6,
					"htricolor" : [ 0.784314, 0.145098, 0.023529, 1.0 ],
					"id" : "obj-15",
					"maxclass" : "flonum",
					"maximum" : 1.0,
					"minimum" : 0.0,
					"numdecimalplaces" : 4,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1356.5, 341.0, 47.0, 21.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 374.0, 380.0, 47.0, 21.0 ],
					"prototypename" : "dsx_float",
					"tricolor" : [ 0.784314, 0.145098, 0.023529, 1.0 ],
					"triscale" : 0.5,
					"varname" : "hue[2]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-28",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1356.5, 423.0, 58.0, 22.0 ],
					"text" : "pak f f f"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 0.0 ],
					"fontname" : "Consolas",
					"fontsize" : 11.0,
					"format" : 6,
					"htricolor" : [ 0.784314, 0.145098, 0.023529, 1.0 ],
					"id" : "obj-351",
					"maxclass" : "flonum",
					"maximum" : 120.0,
					"minimum" : 1.0,
					"numdecimalplaces" : 4,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1083.5, 386.0, 86.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 518.0, 358.5, 49.0, 19.0 ],
					"prototypename" : "dsx_float",
					"textcolor" : [ 0.901960784313726, 0.901960784313726, 0.901960784313726, 1.0 ],
					"tricolor" : [ 0.784314, 0.145098, 0.023529, 1.0 ],
					"triscale" : 0.5,
					"varname" : "floor_pointsize"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontsize" : 11.0,
					"id" : "obj-355",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 402.0, 234.0, 148.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 459.0, 358.0, 60.0, 19.0 ],
					"text" : " Pointsize",
					"textcolor" : [ 0.901960784313726, 0.901960784313726, 0.901960784313726, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"bgcolor" : [ 0.501960784313725, 0.501960784313725, 0.501960784313725, 1.0 ],
					"bordercolor" : [ 0.807843137254902, 0.898039215686275, 0.909803921568627, 0.0 ],
					"id" : "obj-356",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 31.0, 76.899901999999997, 128.0, 128.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 459.0, 358.0, 112.0, 20.0 ],
					"proportion" : 0.5,
					"rounded" : 2
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Consolas",
					"fontsize" : 11.0,
					"htricolor" : [ 0.780392156862745, 0.141176470588235, 0.019607843137255, 1.0 ],
					"id" : "obj-349",
					"maxclass" : "number",
					"minimum" : 2,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1025.5, 388.0, 50.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 421.0, 358.5, 37.0, 19.0 ],
					"style" : "dsx.integer",
					"textcolor" : [ 0.901960784313726, 0.901960784313726, 0.901960784313726, 1.0 ],
					"tricolor" : [ 0.780392156862745, 0.141176470588235, 0.019607843137255, 1.0 ],
					"triscale" : 0.5,
					"varname" : "number[5]"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontsize" : 11.0,
					"id" : "obj-353",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 31.0, 181.0, 145.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 381.0, 358.5, 33.0, 19.0 ],
					"text" : "DIM",
					"textcolor" : [ 0.901960784313726, 0.901960784313726, 0.901960784313726, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"bgcolor" : [ 0.501960784313725, 0.501960784313725, 0.501960784313725, 1.0 ],
					"bordercolor" : [ 0.807843137254902, 0.898039215686275, 0.909803921568627, 0.0 ],
					"id" : "obj-354",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 57.0, 8.899901999999997, 128.0, 128.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 383.0, 358.0, 75.0, 20.0 ],
					"proportion" : 0.5,
					"rounded" : 2
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-352",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1082.5, 413.0, 79.0, 22.0 ],
					"text" : "point_size $1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Consolas",
					"fontsize" : 10.0,
					"id" : "obj-350",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 958.5, 340.0, 154.0, 18.0 ],
					"restore" : [ 73 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0,
						"parameter_mappable" : 0
					}
,
					"text" : "pattr floor_dim @default_interp 0",
					"varname" : "floor_dim"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-347",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1025.5, 413.0, 61.0, 22.0 ],
					"text" : "dim $1 $1"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 0.0 ],
					"fontsize" : 11.0,
					"format" : 6,
					"htricolor" : [ 0.784314, 0.145098, 0.023529, 1.0 ],
					"id" : "obj-343",
					"maxclass" : "flonum",
					"numdecimalplaces" : 4,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1726.0, 835.600097999999889, 47.0, 21.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 519.0, 190.0, 47.0, 21.0 ],
					"prototypename" : "dsx_float",
					"tricolor" : [ 0.784314, 0.145098, 0.023529, 1.0 ],
					"triscale" : 0.5,
					"varname" : "light2_posz"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 0.0 ],
					"fontsize" : 11.0,
					"format" : 6,
					"htricolor" : [ 0.784314, 0.145098, 0.023529, 1.0 ],
					"id" : "obj-344",
					"maxclass" : "flonum",
					"numdecimalplaces" : 4,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1706.0, 805.600097999999889, 47.0, 21.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 447.0, 190.0, 47.0, 21.0 ],
					"prototypename" : "dsx_float",
					"tricolor" : [ 0.784314, 0.145098, 0.023529, 1.0 ],
					"triscale" : 0.5,
					"varname" : "light2_posy"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 0.0 ],
					"fontsize" : 11.0,
					"format" : 6,
					"htricolor" : [ 0.784314, 0.145098, 0.023529, 1.0 ],
					"id" : "obj-345",
					"maxclass" : "flonum",
					"numdecimalplaces" : 4,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1686.0, 779.600097999999889, 47.0, 21.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 374.0, 190.0, 47.0, 21.0 ],
					"prototypename" : "dsx_float",
					"tricolor" : [ 0.784314, 0.145098, 0.023529, 1.0 ],
					"triscale" : 0.5,
					"varname" : "light2_posx"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-346",
					"maxclass" : "newobj",
					"numinlets" : 4,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1666.0, 864.600097999999889, 93.0, 22.0 ],
					"text" : "pak position f f f"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 0.0 ],
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"format" : 6,
					"htricolor" : [ 0.784314, 0.145098, 0.023529, 1.0 ],
					"id" : "obj-145",
					"maxclass" : "flonum",
					"maximum" : 25.0,
					"minimum" : 0.0,
					"numdecimalplaces" : 4,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 414.0, 917.0, 56.0, 21.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 655.0, 189.5, 56.0, 21.0 ],
					"prototypename" : "dsx_float",
					"tricolor" : [ 0.784314, 0.145098, 0.023529, 1.0 ],
					"triscale" : 0.5,
					"varname" : "dof_white_point"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontsize" : 11.0,
					"id" : "obj-341",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 25.0, 92.899901999999997, 149.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 573.0, 191.0, 75.0, 19.0 ],
					"text" : "White Point",
					"textcolor" : [ 0.901960784313726, 0.901960784313726, 0.901960784313726, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"bgcolor" : [ 0.501960784313725, 0.501960784313725, 0.501960784313725, 1.0 ],
					"bordercolor" : [ 0.807843137254902, 0.898039215686275, 0.909803921568627, 0.0 ],
					"id" : "obj-342",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 25.0, 91.899901999999997, 128.0, 128.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 572.0, 190.0, 141.0, 20.0 ],
					"proportion" : 0.5,
					"rounded" : 2
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 0.0 ],
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"format" : 6,
					"htricolor" : [ 0.784314, 0.145098, 0.023529, 1.0 ],
					"id" : "obj-147",
					"maxclass" : "flonum",
					"maximum" : 25.0,
					"minimum" : 0.0,
					"numdecimalplaces" : 4,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 299.0, 917.0, 56.0, 21.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 655.0, 168.5, 56.0, 21.0 ],
					"prototypename" : "dsx_float",
					"tricolor" : [ 0.784314, 0.145098, 0.023529, 1.0 ],
					"triscale" : 0.5,
					"varname" : "dof_inv_gamma"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontsize" : 11.0,
					"id" : "obj-339",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 10.0, 77.899901999999997, 145.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 573.0, 170.0, 73.0, 19.0 ],
					"text" : "Gamma",
					"textcolor" : [ 0.901960784313726, 0.901960784313726, 0.901960784313726, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"bgcolor" : [ 0.501960784313725, 0.501960784313725, 0.501960784313725, 1.0 ],
					"bordercolor" : [ 0.807843137254902, 0.898039215686275, 0.909803921568627, 0.0 ],
					"id" : "obj-340",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 10.0, 76.899901999999997, 128.0, 128.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 572.0, 169.0, 141.0, 20.0 ],
					"proportion" : 0.5,
					"rounded" : 2
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 0.0 ],
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"format" : 6,
					"htricolor" : [ 0.784314, 0.145098, 0.023529, 1.0 ],
					"id" : "obj-149",
					"maxclass" : "flonum",
					"maximum" : 25.0,
					"minimum" : 0.0,
					"numdecimalplaces" : 4,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 179.0, 917.0, 56.0, 21.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 655.0, 147.5, 56.0, 21.0 ],
					"prototypename" : "dsx_float",
					"tricolor" : [ 0.784314, 0.145098, 0.023529, 1.0 ],
					"triscale" : 0.5,
					"varname" : "dof_exposure_bias"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontsize" : 11.0,
					"id" : "obj-337",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ -5.0, 62.899901999999997, 151.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 573.0, 149.0, 76.0, 19.0 ],
					"text" : "Exposure",
					"textcolor" : [ 0.901960784313726, 0.901960784313726, 0.901960784313726, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"bgcolor" : [ 0.501960784313725, 0.501960784313725, 0.501960784313725, 1.0 ],
					"bordercolor" : [ 0.807843137254902, 0.898039215686275, 0.909803921568627, 0.0 ],
					"id" : "obj-338",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ -5.0, 61.899901999999997, 128.0, 128.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 572.0, 148.0, 141.0, 20.0 ],
					"proportion" : 0.5,
					"rounded" : 2
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.32156862745098, 0.341176470588235, 0.368627450980392, 1.0 ],
					"bgoncolor" : [ 0.780392156862745, 0.141176470588235, 0.019607843137255, 1.0 ],
					"fontsize" : 11.0,
					"id" : "obj-139",
					"legacytextcolor" : 1,
					"maxclass" : "textbutton",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 67.0, 940.0, 96.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 649.0, 127.0, 64.0, 20.0 ],
					"text" : "ENABLE",
					"textcolor" : [ 0.90017, 0.90017, 0.90017, 1.0 ],
					"texton" : "ENABLE",
					"textoncolor" : [ 0.901960784313726, 0.901960784313726, 0.901960784313726, 1.0 ],
					"textovercolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"usebgoncolor" : 1,
					"varname" : "dof_enable[1]"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontsize" : 11.0,
					"id" : "obj-335",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ -35.0, 32.899901999999997, 139.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 573.0, 128.0, 63.0, 19.0 ],
					"text" : "TONEMAP",
					"textcolor" : [ 0.901960784313726, 0.901960784313726, 0.901960784313726, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"bgcolor" : [ 0.501960784313725, 0.501960784313725, 0.501960784313725, 1.0 ],
					"bordercolor" : [ 0.807843137254902, 0.898039215686275, 0.909803921568627, 0.0 ],
					"id" : "obj-336",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ -35.0, 31.899901999999997, 128.0, 128.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 572.0, 127.0, 141.0, 20.0 ],
					"proportion" : 0.5,
					"rounded" : 2
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 0.0 ],
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"format" : 6,
					"htricolor" : [ 0.784314, 0.145098, 0.023529, 1.0 ],
					"id" : "obj-88",
					"maxclass" : "flonum",
					"maximum" : 25.0,
					"minimum" : -24.0,
					"numdecimalplaces" : 4,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 411.0, 1039.0, 56.0, 21.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 655.0, 105.5, 56.0, 21.0 ],
					"prototypename" : "dsx_float",
					"tricolor" : [ 0.784314, 0.145098, 0.023529, 1.0 ],
					"triscale" : 0.5,
					"varname" : "dof_blur_distance"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontsize" : 11.0,
					"id" : "obj-333",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ -5.0, 62.899901999999997, 154.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 573.0, 107.0, 77.0, 19.0 ],
					"text" : "Position",
					"textcolor" : [ 0.901960784313726, 0.901960784313726, 0.901960784313726, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"bgcolor" : [ 0.501960784313725, 0.501960784313725, 0.501960784313725, 1.0 ],
					"bordercolor" : [ 0.807843137254902, 0.898039215686275, 0.909803921568627, 0.0 ],
					"id" : "obj-334",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ -5.0, 61.899901999999997, 128.0, 128.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 572.0, 106.0, 141.0, 20.0 ],
					"proportion" : 0.5,
					"rounded" : 2
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 0.0 ],
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"format" : 6,
					"htricolor" : [ 0.784314, 0.145098, 0.023529, 1.0 ],
					"id" : "obj-89",
					"maxclass" : "flonum",
					"maximum" : 25.0,
					"minimum" : 0.0,
					"numdecimalplaces" : 4,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 282.0, 1039.0, 56.0, 21.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 655.0, 84.5, 56.0, 21.0 ],
					"prototypename" : "dsx_float",
					"tricolor" : [ 0.784314, 0.145098, 0.023529, 1.0 ],
					"triscale" : 0.5,
					"varname" : "dof_blur_range"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontsize" : 11.0,
					"id" : "obj-331",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ -20.0, 47.899901999999997, 144.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 573.0, 86.0, 72.0, 19.0 ],
					"text" : "Range",
					"textcolor" : [ 0.901960784313726, 0.901960784313726, 0.901960784313726, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"bgcolor" : [ 0.501960784313725, 0.501960784313725, 0.501960784313725, 1.0 ],
					"bordercolor" : [ 0.807843137254902, 0.898039215686275, 0.909803921568627, 0.0 ],
					"id" : "obj-332",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ -20.0, 46.899901999999997, 128.0, 128.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 572.0, 85.0, 141.0, 20.0 ],
					"proportion" : 0.5,
					"rounded" : 2
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 0.0 ],
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"format" : 6,
					"htricolor" : [ 0.784314, 0.145098, 0.023529, 1.0 ],
					"id" : "obj-90",
					"maxclass" : "flonum",
					"maximum" : 10.0,
					"minimum" : 0.0,
					"numdecimalplaces" : 4,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 174.0, 1039.0, 56.0, 21.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 655.0, 63.5, 56.0, 21.0 ],
					"prototypename" : "dsx_float",
					"tricolor" : [ 0.784314, 0.145098, 0.023529, 1.0 ],
					"triscale" : 0.5,
					"varname" : "dof_blur_width"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontsize" : 11.0,
					"id" : "obj-329",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ -35.0, 32.899901999999997, 151.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 573.0, 64.5, 73.0, 19.0 ],
					"text" : "Blur Amnt",
					"textcolor" : [ 0.901960784313726, 0.901960784313726, 0.901960784313726, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"bgcolor" : [ 0.501960784313725, 0.501960784313725, 0.501960784313725, 1.0 ],
					"bordercolor" : [ 0.807843137254902, 0.898039215686275, 0.909803921568627, 0.0 ],
					"id" : "obj-330",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ -35.0, 31.899901999999997, 128.0, 128.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 572.0, 64.0, 141.0, 20.0 ],
					"proportion" : 0.5,
					"rounded" : 2
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.32156862745098, 0.341176470588235, 0.368627450980392, 1.0 ],
					"bgoncolor" : [ 0.780392156862745, 0.141176470588235, 0.019607843137255, 1.0 ],
					"fontsize" : 11.0,
					"id" : "obj-84",
					"legacytextcolor" : 1,
					"maxclass" : "textbutton",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 45.0, 1038.0, 96.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 649.0, 44.0, 64.0, 19.0 ],
					"text" : "ENABLE",
					"textcolor" : [ 0.90017, 0.90017, 0.90017, 1.0 ],
					"texton" : "ENABLE",
					"textoncolor" : [ 0.901960784313726, 0.901960784313726, 0.901960784313726, 1.0 ],
					"textovercolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"usebgoncolor" : 1,
					"varname" : "dof_enable"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontsize" : 11.0,
					"id" : "obj-327",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ -50.0, 17.899901999999997, 142.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 573.0, 43.5, 54.0, 19.0 ],
					"text" : "BLOOM",
					"textcolor" : [ 0.901960784313726, 0.901960784313726, 0.901960784313726, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"bgcolor" : [ 0.501960784313725, 0.501960784313725, 0.501960784313725, 1.0 ],
					"bordercolor" : [ 0.807843137254902, 0.898039215686275, 0.909803921568627, 0.0 ],
					"id" : "obj-328",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ -50.0, 16.899901999999997, 128.0, 128.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 572.0, 43.0, 141.0, 20.0 ],
					"proportion" : 0.5,
					"rounded" : 2
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontsize" : 11.0,
					"id" : "obj-325",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 20.0, 77.899901999999997, 140.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 572.0, 22.5, 92.0, 19.0 ],
					"text" : "POST EFFECTS",
					"textcolor" : [ 0.901960784313726, 0.901960784313726, 0.901960784313726, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"bgcolor" : [ 0.278099328279495, 0.278099328279495, 0.278099328279495, 1.0 ],
					"bordercolor" : [ 0.807843137254902, 0.898039215686275, 0.909803921568627, 0.0 ],
					"id" : "obj-326",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ -5.0, 16.899901999999997, 128.0, 128.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 572.0, 22.0, 141.0, 20.0 ],
					"proportion" : 0.5,
					"rounded" : 2
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontsize" : 11.0,
					"id" : "obj-324",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 73.0, 173.899901999999997, 141.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 583.5, 1.5, 33.0, 19.0 ],
					"text" : "FPS",
					"textcolor" : [ 0.901960784313726, 0.901960784313726, 0.901960784313726, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"cantchange" : 1,
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"format" : 6,
					"id" : "obj-1",
					"ignoreclick" : 1,
					"maxclass" : "flonum",
					"numdecimalplaces" : 3,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"parameter_mappable" : 0,
					"patching_rect" : [ 342.0, 833.0, 52.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 667.0, 2.0, 41.0, 20.0 ],
					"prototypename" : "dsx_float_nochange",
					"style" : "dsx.flonum",
					"textcolor" : [ 0.901960784313726, 0.901960784313726, 0.901960784313726, 1.0 ],
					"triangle" : 0,
					"triscale" : 0.5
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"htricolor" : [ 0.72156862745098, 0.062745098039216, 0.035294117647059, 1.0 ],
					"id" : "obj-99",
					"maxclass" : "number",
					"maximum" : 9000,
					"minimum" : 8000,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"parameter_mappable" : 0,
					"patching_rect" : [ 1853.5, 65.174927000000025, 64.0, 21.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 93.5, 105.5, 46.0, 21.0 ],
					"prototypename" : "DSX-INT",
					"style" : "dsx.integer",
					"textcolor" : [ 0.901960784313726, 0.901960784313726, 0.901960784313726, 1.0 ],
					"tricolor" : [ 0.72156862745098, 0.062745098039216, 0.035294117647059, 1.0 ],
					"triscale" : 0.5,
					"varname" : "number[4]"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 11.0,
					"id" : "obj-322",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 31.0, 85.0, 140.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 0.0, 106.5, 70.0, 19.0 ],
					"text" : "OSC PORT",
					"textcolor" : [ 0.901960784313726, 0.901960784313726, 0.901960784313726, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"bgcolor" : [ 0.423529411764706, 0.423529411764706, 0.423529411764706, 1.0 ],
					"bordercolor" : [ 0.807843137254902, 0.898039215686275, 0.909803921568627, 0.0 ],
					"id" : "obj-323",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 31.0, 85.0, 128.0, 128.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1.0, 106.0, 141.5, 20.0 ],
					"proportion" : 0.5,
					"rounded" : 2
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"htricolor" : [ 0.780392156862745, 0.141176470588235, 0.019607843137255, 1.0 ],
					"id" : "obj-38",
					"maxclass" : "number",
					"minimum" : 0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 262.001953999999841, 589.0, 50.0, 21.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 621.0, 0.5, 50.0, 21.0 ],
					"style" : "dsx.integer",
					"textcolor" : [ 0.901960784313726, 0.901960784313726, 0.901960784313726, 1.0 ],
					"tricolor" : [ 0.780392156862745, 0.141176470588235, 0.019607843137255, 1.0 ],
					"triscale" : 0.5,
					"varname" : "number[6]"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontsize" : 11.0,
					"id" : "obj-316",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 60.0, 133.899901999999997, 141.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1.0, 127.0, 71.0, 19.0 ],
					"text" : "WINDOW",
					"textcolor" : [ 0.901960784313726, 0.901960784313726, 0.901960784313726, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"bgcolor" : [ 0.278099328279495, 0.278099328279495, 0.278099328279495, 1.0 ],
					"bordercolor" : [ 0.807843137254902, 0.898039215686275, 0.909803921568627, 0.0 ],
					"id" : "obj-317",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 53.0, 72.0, 128.0, 128.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1.0, 127.0, 141.0, 20.0 ],
					"proportion" : 0.5,
					"rounded" : 2
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontsize" : 11.0,
					"id" : "obj-314",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 21.5, 53.899901999999997, 143.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 142.5, 23.0, 72.0, 19.0 ],
					"text" : "CAMERA",
					"textcolor" : [ 0.901960784313726, 0.901960784313726, 0.901960784313726, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"bgcolor" : [ 0.278099328279495, 0.278099328279495, 0.278099328279495, 1.0 ],
					"bordercolor" : [ 0.807843137254902, 0.898039215686275, 0.909803921568627, 0.0 ],
					"id" : "obj-315",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 17.5, 6.899901999999997, 128.0, 128.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 143.0, 22.0, 142.0, 20.0 ],
					"proportion" : 0.5,
					"rounded" : 2
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontsize" : 11.0,
					"id" : "obj-303",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 31.0, 73.0, 143.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1.0, 1.0, 115.0, 19.0 ],
					"text" : "OUTPUT :: 3D World",
					"textcolor" : [ 0.901960784313726, 0.901960784313726, 0.901960784313726, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"bgcolor" : [ 0.278099328279495, 0.278099328279495, 0.278099328279495, 1.0 ],
					"bordercolor" : [ 0.807843137254902, 0.898039215686275, 0.909803921568627, 0.0 ],
					"id" : "obj-304",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 31.0, 72.0, 128.0, 128.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1.0, 1.0, 712.0, 20.0 ],
					"proportion" : 0.5,
					"rounded" : 2
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontsize" : 11.0,
					"id" : "obj-301",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 71.0, 42.899901999999997, 142.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 286.0, 22.5, 135.0, 19.0 ],
					"text" : "OBJECTS and LIGHTS",
					"textcolor" : [ 0.901960784313726, 0.901960784313726, 0.901960784313726, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"bgcolor" : [ 0.278099328279495, 0.278099328279495, 0.278099328279495, 1.0 ],
					"bordercolor" : [ 0.807843137254902, 0.898039215686275, 0.909803921568627, 0.0 ],
					"id" : "obj-302",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 71.0, 41.899901999999997, 128.0, 128.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 286.0, 22.0, 219.0, 20.0 ],
					"proportion" : 0.5,
					"rounded" : 2
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontsize" : 11.0,
					"id" : "obj-299",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 95.0, 100.0, 154.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 287.0, 190.5, 52.0, 19.0 ],
					"text" : "Position",
					"textcolor" : [ 0.901960784313726, 0.901960784313726, 0.901960784313726, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"bgcolor" : [ 0.501960784313725, 0.501960784313725, 0.501960784313725, 1.0 ],
					"bordercolor" : [ 0.807843137254902, 0.898039215686275, 0.909803921568627, 0.0 ],
					"id" : "obj-300",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 95.0, 100.0, 128.0, 128.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 286.0, 190.0, 285.0, 20.0 ],
					"proportion" : 0.5,
					"rounded" : 2
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 0.0 ],
					"fontsize" : 11.0,
					"format" : 6,
					"htricolor" : [ 0.784314, 0.145098, 0.023529, 1.0 ],
					"id" : "obj-283",
					"maxclass" : "flonum",
					"maximum" : 1.0,
					"minimum" : 0.0,
					"numdecimalplaces" : 4,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1821.0, 832.600097999999889, 47.0, 21.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 374.0, 273.5, 47.0, 21.0 ],
					"prototypename" : "dsx_float",
					"tricolor" : [ 0.784314, 0.145098, 0.023529, 1.0 ],
					"triscale" : 0.5,
					"varname" : "light2_brightness"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 0.0 ],
					"fontsize" : 11.0,
					"format" : 6,
					"htricolor" : [ 0.784314, 0.145098, 0.023529, 1.0 ],
					"id" : "obj-284",
					"maxclass" : "flonum",
					"maximum" : 1.0,
					"minimum" : 0.0,
					"numdecimalplaces" : 4,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1802.0, 806.600097999999889, 47.0, 21.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 374.0, 252.5, 47.0, 21.0 ],
					"prototypename" : "dsx_float",
					"tricolor" : [ 0.784314, 0.145098, 0.023529, 1.0 ],
					"triscale" : 0.5,
					"varname" : "light2_saturation"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 0.0 ],
					"fontsize" : 11.0,
					"format" : 6,
					"htricolor" : [ 0.784314, 0.145098, 0.023529, 1.0 ],
					"id" : "obj-285",
					"maxclass" : "flonum",
					"maximum" : 1.0,
					"minimum" : 0.0,
					"numdecimalplaces" : 4,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1782.0, 782.600097999999889, 47.0, 21.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 374.0, 231.5, 47.0, 21.0 ],
					"prototypename" : "dsx_float",
					"tricolor" : [ 0.784314, 0.145098, 0.023529, 1.0 ],
					"triscale" : 0.5,
					"varname" : "light2_color"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontsize" : 11.0,
					"id" : "obj-291",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 53.0, 36.899901999999997, 151.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 288.5, 253.5, 76.0, 19.0 ],
					"text" : "Saturation",
					"textcolor" : [ 0.901960784313726, 0.901960784313726, 0.901960784313726, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"bgcolor" : [ 0.501960784313725, 0.501960784313725, 0.501960784313725, 1.0 ],
					"bordercolor" : [ 0.807843137254902, 0.898039215686275, 0.909803921568627, 0.0 ],
					"id" : "obj-292",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 53.0, 36.899901999999997, 128.0, 128.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 286.0, 253.0, 142.0, 20.0 ],
					"proportion" : 0.5,
					"rounded" : 2
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontsize" : 11.0,
					"id" : "obj-293",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 56.0, 56.899901999999997, 141.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 288.5, 232.5, 71.0, 19.0 ],
					"text" : "Hue",
					"textcolor" : [ 0.901960784313726, 0.901960784313726, 0.901960784313726, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"bgcolor" : [ 0.501960784313725, 0.501960784313725, 0.501960784313725, 1.0 ],
					"bordercolor" : [ 0.807843137254902, 0.898039215686275, 0.909803921568627, 0.0 ],
					"id" : "obj-294",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 56.0, 55.899901999999997, 128.0, 128.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 286.0, 232.0, 142.333333333333258, 20.0 ],
					"proportion" : 0.5,
					"rounded" : 2
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontsize" : 11.0,
					"id" : "obj-295",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 25.0, 29.0, 151.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 430.0, 233.0, 76.0, 19.0 ],
					"text" : "Dimming",
					"textcolor" : [ 0.901960784313726, 0.901960784313726, 0.901960784313726, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"bgcolor" : [ 0.501960784313725, 0.501960784313725, 0.501960784313725, 1.0 ],
					"bordercolor" : [ 0.807843137254902, 0.898039215686275, 0.909803921568627, 0.0 ],
					"id" : "obj-296",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 25.0, 29.0, 128.0, 128.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 429.0, 232.0, 142.0, 20.0 ],
					"proportion" : 0.5,
					"rounded" : 2
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontsize" : 11.0,
					"id" : "obj-297",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 25.0, 9.0, 153.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 288.0, 274.5, 77.0, 19.0 ],
					"text" : "Brightness",
					"textcolor" : [ 0.901960784313726, 0.901960784313726, 0.901960784313726, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"bgcolor" : [ 0.501960784313725, 0.501960784313725, 0.501960784313725, 1.0 ],
					"bordercolor" : [ 0.807843137254902, 0.898039215686275, 0.909803921568627, 0.0 ],
					"id" : "obj-298",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 42.0, 36.899901999999997, 128.0, 128.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 286.0, 274.0, 142.333333333333258, 20.0 ],
					"proportion" : 0.5,
					"rounded" : 2
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-288",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1782.0, 864.600097999999889, 58.0, 22.0 ],
					"text" : "pak f f f"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-280",
					"linecount" : 2,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1549.0, 794.600097999999889, 75.0, 35.0 ],
					"text" : "prepend enable"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.32156862745098, 0.341176470588235, 0.368627450980392, 1.0 ],
					"bgoncolor" : [ 0.780392156862745, 0.141176470588235, 0.019607843137255, 1.0 ],
					"fontsize" : 11.0,
					"id" : "obj-281",
					"legacytextcolor" : 1,
					"maxclass" : "textbutton",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1549.0, 763.600097999999889, 62.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 286.0, 169.0, 65.0, 20.0 ],
					"text" : "LIGHT2",
					"textcolor" : [ 0.90017, 0.90017, 0.90017, 1.0 ],
					"texton" : "LIGHT2",
					"textoncolor" : [ 0.901960784313726, 0.901960784313726, 0.901960784313726, 1.0 ],
					"textovercolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"usebgoncolor" : 1
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Consolas",
					"fontsize" : 10.0,
					"id" : "obj-282",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 1549.0, 729.600097999999889, 173.0, 18.0 ],
					"restore" : [ 0 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0,
						"parameter_mappable" : 0
					}
,
					"text" : "pattr light2_enable @default_interp 0",
					"varname" : "light2_enable"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 0.0 ],
					"fontsize" : 11.0,
					"format" : 6,
					"htricolor" : [ 0.784314, 0.145098, 0.023529, 1.0 ],
					"id" : "obj-269",
					"maxclass" : "flonum",
					"maximum" : 70.0,
					"minimum" : 0.0,
					"numdecimalplaces" : 4,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1346.0, 810.600098000000116, 47.0, 21.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 519.0, 420.0, 47.0, 21.0 ],
					"prototypename" : "dsx_float",
					"tricolor" : [ 0.784314, 0.145098, 0.023529, 1.0 ],
					"triscale" : 0.5,
					"varname" : "shadow_blur"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.32156862745098, 0.341176470588235, 0.368627450980392, 1.0 ],
					"bgoncolor" : [ 0.780392156862745, 0.141176470588235, 0.019607843137255, 1.0 ],
					"fontsize" : 11.0,
					"id" : "obj-267",
					"legacytextcolor" : 1,
					"maxclass" : "textbutton",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1346.0, 894.600098000000116, 62.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 286.0, 421.0, 142.0, 20.0 ],
					"text" : "SHADOWS",
					"textcolor" : [ 0.90017, 0.90017, 0.90017, 1.0 ],
					"texton" : "SHADOWS",
					"textoncolor" : [ 0.901960784313726, 0.901960784313726, 0.901960784313726, 1.0 ],
					"textovercolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"usebgoncolor" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-268",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1346.0, 915.600098000000116, 103.0, 22.0 ],
					"text" : "prepend shadows"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-266",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1346.0, 833.600098000000116, 117.0, 22.0 ],
					"text" : "prepend shadowblur"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 0.0 ],
					"fontsize" : 11.0,
					"format" : 6,
					"htricolor" : [ 0.784314, 0.145098, 0.023529, 1.0 ],
					"id" : "obj-261",
					"maxclass" : "flonum",
					"numdecimalplaces" : 4,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1178.0, 960.600098000000116, 47.0, 21.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 519.0, 84.5, 47.0, 21.0 ],
					"prototypename" : "dsx_float",
					"tricolor" : [ 0.784314, 0.145098, 0.023529, 1.0 ],
					"triscale" : 0.5,
					"varname" : "light1_rotz"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 0.0 ],
					"fontsize" : 11.0,
					"format" : 6,
					"htricolor" : [ 0.784314, 0.145098, 0.023529, 1.0 ],
					"id" : "obj-262",
					"maxclass" : "flonum",
					"numdecimalplaces" : 4,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1156.0, 993.600098000000116, 47.0, 21.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 447.0, 84.5, 47.0, 21.0 ],
					"prototypename" : "dsx_float",
					"tricolor" : [ 0.784314, 0.145098, 0.023529, 1.0 ],
					"triscale" : 0.5,
					"varname" : "light1_roty"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 0.0 ],
					"fontsize" : 11.0,
					"format" : 6,
					"htricolor" : [ 0.784314, 0.145098, 0.023529, 1.0 ],
					"id" : "obj-263",
					"maxclass" : "flonum",
					"numdecimalplaces" : 4,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1134.0, 964.600098000000116, 47.0, 21.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 376.0, 84.5, 47.0, 21.0 ],
					"prototypename" : "dsx_float",
					"tricolor" : [ 0.784314, 0.145098, 0.023529, 1.0 ],
					"triscale" : 0.5,
					"varname" : "light1_rotx"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-264",
					"maxclass" : "newobj",
					"numinlets" : 4,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1112.0, 1022.600098000000116, 100.0, 22.0 ],
					"text" : "pak rotatexyz f f f"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontsize" : 11.0,
					"id" : "obj-259",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 56.0, 85.0, 151.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 288.5, 85.5, 76.0, 19.0 ],
					"text" : "Direction",
					"textcolor" : [ 0.901960784313726, 0.901960784313726, 0.901960784313726, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"bgcolor" : [ 0.501960784313725, 0.501960784313725, 0.501960784313725, 1.0 ],
					"bordercolor" : [ 0.807843137254902, 0.898039215686275, 0.909803921568627, 0.0 ],
					"id" : "obj-260",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 56.0, 85.0, 128.0, 128.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 286.0, 85.0, 285.5, 20.0 ],
					"proportion" : 0.5,
					"rounded" : 2
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Consolas",
					"fontsize" : 10.0,
					"id" : "obj-257",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 1066.5, 477.0, 163.0, 18.0 ],
					"restore" : [ 1 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0,
						"parameter_mappable" : 0
					}
,
					"text" : "pattr floor_mode @default_interp 0",
					"varname" : "floor_mode"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 0.0 ],
					"fontsize" : 11.0,
					"format" : 6,
					"htricolor" : [ 0.784314, 0.145098, 0.023529, 1.0 ],
					"id" : "obj-246",
					"maxclass" : "flonum",
					"maximum" : 180.0,
					"minimum" : 1.0,
					"numdecimalplaces" : 4,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 998.0, 818.600098000000116, 47.0, 21.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 519.0, 126.0, 47.0, 21.0 ],
					"prototypename" : "dsx_float",
					"tricolor" : [ 0.784314, 0.145098, 0.023529, 1.0 ],
					"triscale" : 0.5,
					"varname" : "light1_spotsize"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 0.0 ],
					"fontsize" : 11.0,
					"format" : 6,
					"htricolor" : [ 0.784314, 0.145098, 0.023529, 1.0 ],
					"id" : "obj-247",
					"maxclass" : "flonum",
					"maximum" : 100.0,
					"minimum" : 0.0,
					"numdecimalplaces" : 4,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 896.0, 818.600098000000116, 47.0, 21.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 519.0, 147.5, 47.0, 21.0 ],
					"prototypename" : "dsx_float",
					"tricolor" : [ 0.784314, 0.145098, 0.023529, 1.0 ],
					"triscale" : 0.5,
					"varname" : "light1_spotsoft"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontsize" : 11.0,
					"id" : "obj-251",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 80.0, 67.899901999999997, 143.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 430.5, 127.5, 72.0, 19.0 ],
					"text" : "Spot SIze",
					"textcolor" : [ 0.901960784313726, 0.901960784313726, 0.901960784313726, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"bgcolor" : [ 0.501960784313725, 0.501960784313725, 0.501960784313725, 1.0 ],
					"bordercolor" : [ 0.807843137254902, 0.898039215686275, 0.909803921568627, 0.0 ],
					"id" : "obj-252",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 67.0, 55.899901999999997, 128.0, 128.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 429.0, 127.0, 142.333333333333258, 20.0 ],
					"proportion" : 0.5,
					"rounded" : 2
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-245",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 896.0, 843.600098000000116, 114.0, 22.0 ],
					"text" : "prepend spot_falloff"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-244",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 998.0, 843.600098000000116, 115.0, 22.0 ],
					"text" : "prepend spot_angle"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 0.0 ],
					"fontsize" : 11.0,
					"format" : 6,
					"htricolor" : [ 0.784314, 0.145098, 0.023529, 1.0 ],
					"id" : "obj-239",
					"maxclass" : "flonum",
					"numdecimalplaces" : 4,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1084.0, 996.600098000000116, 47.0, 21.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 519.0, 63.5, 47.0, 21.0 ],
					"prototypename" : "dsx_float",
					"tricolor" : [ 0.784314, 0.145098, 0.023529, 1.0 ],
					"triscale" : 0.5,
					"varname" : "light1_posz"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 0.0 ],
					"fontsize" : 11.0,
					"format" : 6,
					"htricolor" : [ 0.784314, 0.145098, 0.023529, 1.0 ],
					"id" : "obj-240",
					"maxclass" : "flonum",
					"numdecimalplaces" : 4,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1064.0, 973.600098000000116, 47.0, 21.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 447.0, 63.5, 47.0, 21.0 ],
					"prototypename" : "dsx_float",
					"tricolor" : [ 0.784314, 0.145098, 0.023529, 1.0 ],
					"triscale" : 0.5,
					"varname" : "light1_posy"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 0.0 ],
					"fontsize" : 11.0,
					"format" : 6,
					"htricolor" : [ 0.784314, 0.145098, 0.023529, 1.0 ],
					"id" : "obj-241",
					"maxclass" : "flonum",
					"numdecimalplaces" : 4,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1044.0, 996.600098000000116, 47.0, 21.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 376.0, 63.5, 47.0, 21.0 ],
					"prototypename" : "dsx_float",
					"tricolor" : [ 0.784314, 0.145098, 0.023529, 1.0 ],
					"triscale" : 0.5,
					"varname" : "light1_posx"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-242",
					"maxclass" : "newobj",
					"numinlets" : 4,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1024.0, 1022.600098000000116, 93.0, 22.0 ],
					"text" : "pak position f f f"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 0.0 ],
					"fontsize" : 11.0,
					"format" : 6,
					"htricolor" : [ 0.784314, 0.145098, 0.023529, 1.0 ],
					"id" : "obj-225",
					"maxclass" : "flonum",
					"maximum" : 1.0,
					"minimum" : 0.0,
					"numdecimalplaces" : 4,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 935.0, 935.600098000000116, 47.0, 21.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 376.0, 147.5, 47.0, 21.0 ],
					"prototypename" : "dsx_float",
					"tricolor" : [ 0.784314, 0.145098, 0.023529, 1.0 ],
					"triscale" : 0.5,
					"varname" : "light1_brightness"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 0.0 ],
					"fontsize" : 11.0,
					"format" : 6,
					"htricolor" : [ 0.784314, 0.145098, 0.023529, 1.0 ],
					"id" : "obj-125",
					"maxclass" : "flonum",
					"maximum" : 1.0,
					"minimum" : 0.0,
					"numdecimalplaces" : 4,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 916.0, 909.600098000000116, 47.0, 21.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 376.0, 126.5, 47.0, 21.0 ],
					"prototypename" : "dsx_float",
					"tricolor" : [ 0.784314, 0.145098, 0.023529, 1.0 ],
					"triscale" : 0.5,
					"varname" : "light1_saturation"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 0.0 ],
					"fontsize" : 11.0,
					"format" : 6,
					"htricolor" : [ 0.784314, 0.145098, 0.023529, 1.0 ],
					"id" : "obj-226",
					"maxclass" : "flonum",
					"maximum" : 1.0,
					"minimum" : 0.0,
					"numdecimalplaces" : 4,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 896.0, 885.600098000000116, 47.0, 21.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 376.0, 105.5, 47.0, 21.0 ],
					"prototypename" : "dsx_float",
					"tricolor" : [ 0.784314, 0.145098, 0.023529, 1.0 ],
					"triscale" : 0.5,
					"varname" : "light1_color"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontsize" : 11.0,
					"id" : "obj-233",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 53.0, 209.0, 151.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 288.5, 127.5, 76.0, 19.0 ],
					"text" : "Saturation",
					"textcolor" : [ 0.901960784313726, 0.901960784313726, 0.901960784313726, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"bgcolor" : [ 0.501960784313725, 0.501960784313725, 0.501960784313725, 1.0 ],
					"bordercolor" : [ 0.807843137254902, 0.898039215686275, 0.909803921568627, 0.0 ],
					"id" : "obj-234",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 80.0, 63.724975000000029, 128.0, 128.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 286.0, 127.0, 142.0, 20.0 ],
					"proportion" : 0.5,
					"rounded" : 2
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontsize" : 11.0,
					"id" : "obj-36",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 53.0, 191.0, 141.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 288.5, 106.5, 71.0, 19.0 ],
					"text" : "Hue",
					"textcolor" : [ 0.901960784313726, 0.901960784313726, 0.901960784313726, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"bgcolor" : [ 0.501960784313725, 0.501960784313725, 0.501960784313725, 1.0 ],
					"bordercolor" : [ 0.807843137254902, 0.898039215686275, 0.909803921568627, 0.0 ],
					"id" : "obj-235",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 56.0, 87.174927000000025, 128.0, 128.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 286.0, 106.0, 142.333333333333258, 20.0 ],
					"proportion" : 0.5,
					"rounded" : 2
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontsize" : 11.0,
					"id" : "obj-236",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 45.0, 184.0, 151.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 430.0, 107.0, 76.0, 19.0 ],
					"text" : "Dimming",
					"textcolor" : [ 0.901960784313726, 0.901960784313726, 0.901960784313726, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"bgcolor" : [ 0.501960784313725, 0.501960784313725, 0.501960784313725, 1.0 ],
					"bordercolor" : [ 0.807843137254902, 0.898039215686275, 0.909803921568627, 0.0 ],
					"id" : "obj-133",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 71.0, 65.899901999999997, 128.0, 128.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 429.0, 106.0, 142.0, 20.0 ],
					"proportion" : 0.5,
					"rounded" : 2
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontsize" : 11.0,
					"id" : "obj-237",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 42.0, 648.0, 153.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 288.0, 148.5, 77.0, 19.0 ],
					"text" : "Brightness",
					"textcolor" : [ 0.901960784313726, 0.901960784313726, 0.901960784313726, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"bgcolor" : [ 0.501960784313725, 0.501960784313725, 0.501960784313725, 1.0 ],
					"bordercolor" : [ 0.807843137254902, 0.898039215686275, 0.909803921568627, 0.0 ],
					"id" : "obj-238",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 46.0, 49.899901999999997, 128.0, 128.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 286.0, 148.0, 142.333333333333258, 20.0 ],
					"proportion" : 0.5,
					"rounded" : 2
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-230",
					"linecount" : 2,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1037.5, 298.0, 75.0, 35.0 ],
					"text" : "prepend enable"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.32156862745098, 0.341176470588235, 0.368627450980392, 1.0 ],
					"bgoncolor" : [ 0.780392156862745, 0.141176470588235, 0.019607843137255, 1.0 ],
					"fontsize" : 11.0,
					"id" : "obj-231",
					"legacytextcolor" : 1,
					"maxclass" : "textbutton",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1037.5, 267.0, 62.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 286.0, 295.0, 62.0, 20.0 ],
					"text" : "SPACE",
					"textcolor" : [ 0.90017, 0.90017, 0.90017, 1.0 ],
					"texton" : "SPACE",
					"textoncolor" : [ 0.901960784313726, 0.901960784313726, 0.901960784313726, 1.0 ],
					"textovercolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"usebgoncolor" : 1
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Consolas",
					"fontsize" : 10.0,
					"id" : "obj-232",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 1037.5, 241.0, 168.0, 18.0 ],
					"restore" : [ 0 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0,
						"parameter_mappable" : 0
					}
,
					"text" : "pattr floor_enable @default_interp 0",
					"varname" : "floor_enable"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-119",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 896.0, 967.600098000000116, 58.0, 22.0 ],
					"text" : "pak f f f"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-224",
					"linecount" : 2,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1138.0, 904.600098000000116, 75.0, 35.0 ],
					"text" : "prepend enable"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.32156862745098, 0.341176470588235, 0.368627450980392, 1.0 ],
					"bgoncolor" : [ 0.780392156862745, 0.141176470588235, 0.019607843137255, 1.0 ],
					"fontsize" : 11.0,
					"id" : "obj-223",
					"legacytextcolor" : 1,
					"maxclass" : "textbutton",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1138.0, 873.600098000000116, 62.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 286.0, 43.0, 64.0, 20.0 ],
					"text" : "LIGHT1",
					"textcolor" : [ 0.90017, 0.90017, 0.90017, 1.0 ],
					"texton" : "LIGHT1",
					"textoncolor" : [ 0.901960784313726, 0.901960784313726, 0.901960784313726, 1.0 ],
					"textovercolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"usebgoncolor" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-222",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 942.5, 413.0, 87.0, 22.0 ],
					"text" : "scale $1 $1 $1"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.32156862745098, 0.341176470588235, 0.368627450980392, 1.0 ],
					"bgoncolor" : [ 0.780392156862745, 0.141176470588235, 0.019607843137255, 1.0 ],
					"fontsize" : 11.0,
					"id" : "obj-214",
					"legacytextcolor" : 1,
					"maxclass" : "textbutton",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1350.0, 967.600098000000116, 62.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 506.0, 22.0, 65.0, 20.0 ],
					"text" : "Light Axes",
					"textcolor" : [ 0.90017, 0.90017, 0.90017, 1.0 ],
					"texton" : "Light Axes",
					"textoncolor" : [ 0.901960784313726, 0.901960784313726, 0.901960784313726, 1.0 ],
					"textovercolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"usebgoncolor" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-197",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1549.0, 1051.600097999999889, 447.0, 22.0 ],
					"text" : "jit.gl.light player @type spot @shadows 0 @shadowquality med-hi @atten_const 0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-175",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 896.0, 1051.600098000000116, 447.0, 22.0 ],
					"text" : "jit.gl.light player @type spot @shadows 0 @shadowquality med-hi @atten_const 0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-168",
					"linecount" : 2,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 767.5, 105.899901999999997, 70.0, 35.0 ],
					"text" : "prepend ortho"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Consolas",
					"fontsize" : 10.0,
					"id" : "obj-182",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 1138.0, 848.600098000000116, 173.0, 18.0 ],
					"restore" : [ 0 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0,
						"parameter_mappable" : 0
					}
,
					"text" : "pattr light1_enable @default_interp 0",
					"varname" : "light1_enable"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-167",
					"linecount" : 2,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 590.0, 193.0, 93.0, 35.0 ],
					"text" : "prepend lens_angle"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-194",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 434.501953999999841, 618.0, 92.0, 22.0 ],
					"text" : "prepend enable"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-172",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 73.0, 97.899901999999997, 116.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-159",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 416.0, 44.174927000000025, 75.0, 22.0 ],
					"text" : "YPOS"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-39",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 362.0, 218.0, 29.5, 22.0 ],
					"text" : "* 1."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-33",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 468.0, 190.0, 51.0, 22.0 ],
					"text" : "cos"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-71",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1350.0, 993.600098000000116, 83.0, 22.0 ],
					"text" : "prepend axes"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-32",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 304.974975500000028, 190.0, 41.0, 22.0 ],
					"text" : "sin"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-14",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "list", "list" ],
					"patching_rect" : [ 304.974975500000028, 146.899901999999997, 54.050048999999944, 22.0 ],
					"text" : "pi"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Consolas",
					"fontsize" : 10.0,
					"id" : "obj-169",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 698.0, 44.174927000000025, 160.0, 18.0 ],
					"restore" : [ 0 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0,
						"parameter_mappable" : 0
					}
,
					"text" : "pattr cam_ortho @default_interp 0",
					"varname" : "cam_ortho"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 0.0 ],
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"format" : 6,
					"htricolor" : [ 0.784314, 0.145098, 0.023529, 1.0 ],
					"id" : "obj-166",
					"maxclass" : "flonum",
					"maximum" : 120.0,
					"minimum" : 1.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 590.0, 163.0, 85.0, 21.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 222.0, 126.5, 57.0, 21.0 ],
					"prototypename" : "dsx_float",
					"textcolor" : [ 0.901960784313726, 0.901960784313726, 0.901960784313726, 1.0 ],
					"tricolor" : [ 0.784314, 0.145098, 0.023529, 1.0 ],
					"triscale" : 0.5,
					"varname" : "cam_lensangle"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-163",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "jit_matrix", "" ],
					"patching_rect" : [ 1025.5, 435.0, 213.0, 22.0 ],
					"text" : "jit.gl.gridshape player @matrixoutput 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-162",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 305.974975500000028, 40.0, 57.0, 20.0 ],
					"text" : "ROTATE"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-135",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 535.751953999999841, 44.174927000000025, 78.0, 20.0 ],
					"text" : "DISTANCE"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-49",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 468.0, 212.0, 86.751953999999841, 22.0 ],
					"text" : "* 1."
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Consolas",
					"fontsize" : 10.0,
					"id" : "obj-178",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1905.5, 175.174927000000025, 80.0, 18.0 ],
					"text" : "prepend oscin"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-173",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 9,
							"minor" : 0,
							"revision" : 2,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 0.0, 0.0, 640.0, 480.0 ],
						"gridsize" : [ 15.0, 15.0 ],
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-242",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "float" ],
									"patching_rect" : [ 72.0, 100.0, 36.0, 20.0 ],
									"text" : "t b f"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-245",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 50.0, 138.100097999999889, 56.0, 20.0 ],
									"text" : "+ 0."
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-246",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 49.999979511489869, 40.000016685394144, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-247",
									"index" : 2,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 84.999979511489869, 40.000016685394144, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-248",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 49.999979511489869, 218.100114685394146, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-245", 1 ],
									"source" : [ "obj-242", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-245", 0 ],
									"source" : [ "obj-242", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-248", 0 ],
									"source" : [ "obj-245", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-245", 0 ],
									"source" : [ "obj-246", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-242", 0 ],
									"source" : [ "obj-247", 0 ]
								}

							}
 ],
						"originid" : "pat-260"
					}
,
					"patching_rect" : [ 535.751953999999841, 120.899901999999997, 42.0, 22.0 ],
					"saved_object_attributes" : 					{
						"globalpatchername" : ""
					}
,
					"text" : "p mod"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-174",
					"ignoreclick" : 1,
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 578.751953999999841, 120.899901999999997, 37.0, 22.0 ],
					"varname" : "mod_camposz"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-170",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 9,
							"minor" : 0,
							"revision" : 2,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 0.0, 0.0, 640.0, 480.0 ],
						"gridsize" : [ 15.0, 15.0 ],
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-242",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "float" ],
									"patching_rect" : [ 72.0, 100.0, 36.0, 20.0 ],
									"text" : "t b f"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-245",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 50.0, 138.100097999999889, 56.0, 20.0 ],
									"text" : "+ 0."
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-246",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 49.999979511489869, 40.000016685394144, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-247",
									"index" : 2,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 84.999979511489869, 40.000016685394144, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-248",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 49.999979511489869, 218.100114685394146, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-245", 1 ],
									"source" : [ "obj-242", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-245", 0 ],
									"source" : [ "obj-242", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-248", 0 ],
									"source" : [ "obj-245", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-245", 0 ],
									"source" : [ "obj-246", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-242", 0 ],
									"source" : [ "obj-247", 0 ]
								}

							}
 ],
						"originid" : "pat-262"
					}
,
					"patching_rect" : [ 415.0, 120.899901999999997, 42.0, 22.0 ],
					"saved_object_attributes" : 					{
						"globalpatchername" : ""
					}
,
					"text" : "p mod"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-171",
					"ignoreclick" : 1,
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 458.0, 120.899901999999997, 37.0, 22.0 ],
					"varname" : "mod_camposy"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-249",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 9,
							"minor" : 0,
							"revision" : 2,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 59.0, 107.0, 640.0, 480.0 ],
						"gridsize" : [ 15.0, 15.0 ],
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-242",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "float" ],
									"patching_rect" : [ 72.0, 100.0, 36.0, 22.0 ],
									"text" : "t b f"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-245",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 50.0, 138.100097999999889, 56.0, 22.0 ],
									"text" : "+ 0."
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-246",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 49.999979511489869, 40.000016685394144, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-247",
									"index" : 2,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 84.999979511489869, 40.000016685394144, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-248",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 49.999979511489869, 218.100114685394146, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-245", 1 ],
									"source" : [ "obj-242", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-245", 0 ],
									"source" : [ "obj-242", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-248", 0 ],
									"source" : [ "obj-245", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-245", 0 ],
									"source" : [ "obj-246", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-242", 0 ],
									"source" : [ "obj-247", 0 ]
								}

							}
 ],
						"originid" : "pat-264"
					}
,
					"patching_rect" : [ 304.974975500000028, 120.899901999999997, 42.0, 22.0 ],
					"saved_object_attributes" : 					{
						"globalpatchername" : ""
					}
,
					"text" : "p mod"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-243",
					"ignoreclick" : 1,
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 349.974975500000028, 120.899901999999997, 32.474975500000028, 22.0 ],
					"varname" : "mod_camposx"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-158",
					"maxclass" : "newobj",
					"numinlets" : 6,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 535.751953999999841, 96.899901999999997, 90.0, 22.0 ],
					"text" : "scale 0. 1. 1. 5."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-157",
					"maxclass" : "newobj",
					"numinlets" : 6,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 415.0, 96.899901999999997, 97.0, 22.0 ],
					"text" : "scale 0. 1. 0. 12."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-156",
					"maxclass" : "newobj",
					"numinlets" : 6,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 304.974975500000028, 96.899901999999997, 90.0, 22.0 ],
					"text" : "scale 0. 1. 0. 2."
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 0.0 ],
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"format" : 6,
					"htricolor" : [ 0.784314, 0.145098, 0.023529, 1.0 ],
					"id" : "obj-77",
					"maxclass" : "flonum",
					"maximum" : 1.0,
					"minimum" : 0.0,
					"numdecimalplaces" : 4,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 535.751953999999841, 65.0, 86.0, 21.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 222.0, 107.0, 57.0, 21.0 ],
					"prototypename" : "dsx_float",
					"textcolor" : [ 0.901960784313726, 0.901960784313726, 0.901960784313726, 1.0 ],
					"tricolor" : [ 0.784314, 0.145098, 0.023529, 1.0 ],
					"triscale" : 0.5,
					"varname" : "camposz"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 0.0 ],
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"format" : 6,
					"htricolor" : [ 0.784314, 0.145098, 0.023529, 1.0 ],
					"id" : "obj-105",
					"maxclass" : "flonum",
					"maximum" : 1.0,
					"minimum" : 0.0,
					"numdecimalplaces" : 4,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 415.0, 65.0, 57.0, 21.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 222.0, 86.0, 57.0, 21.0 ],
					"prototypename" : "dsx_float",
					"textcolor" : [ 0.901960784313726, 0.901960784313726, 0.901960784313726, 1.0 ],
					"tricolor" : [ 0.784314, 0.145098, 0.023529, 1.0 ],
					"triscale" : 0.5,
					"varname" : "camposy"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 0.0 ],
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"format" : 6,
					"htricolor" : [ 0.784314, 0.145098, 0.023529, 1.0 ],
					"id" : "obj-126",
					"maxclass" : "flonum",
					"maximum" : 1.0,
					"minimum" : 0.0,
					"numdecimalplaces" : 4,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 304.974975500000028, 65.0, 57.0, 21.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 222.0, 65.0, 57.0, 21.0 ],
					"prototypename" : "dsx_float",
					"textcolor" : [ 0.901960784313726, 0.901960784313726, 0.901960784313726, 1.0 ],
					"tricolor" : [ 0.784314, 0.145098, 0.023529, 1.0 ],
					"triscale" : 0.5,
					"varname" : "camposx"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-127",
					"maxclass" : "newobj",
					"numinlets" : 4,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 309.0, 249.0, 178.0, 22.0 ],
					"text" : "pak position f f f"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-151",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 179.0, 941.0, 29.5, 22.0 ],
					"text" : "* 2."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-146",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 414.0, 941.0, 33.0, 22.0 ],
					"text" : "* 10."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-144",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 414.0, 965.0, 117.0, 22.0 ],
					"text" : "prepend white_point"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-142",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 299.0, 965.0, 118.0, 22.0 ],
					"text" : "prepend inv_gamma"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-140",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 179.0, 965.0, 134.0, 22.0 ],
					"text" : "prepend exposure_bias"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-136",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 67.0, 965.0, 92.0, 22.0 ],
					"text" : "prepend enable"
				}

			}
, 			{
				"box" : 				{
					"filename" : "tonemap.jxp",
					"id" : "obj-6",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "jit_gl_texture", "", "" ],
					"patching_rect" : [ 67.0, 1006.0, 199.0, 22.0 ],
					"text" : "jit.gl.pass player @fxname tonemap",
					"textfile" : 					{
						"filename" : "tonemap.jxp",
						"flags" : 0,
						"embed" : 0,
						"autowatch" : 1
					}

				}

			}
, 			{
				"box" : 				{
					"id" : "obj-104",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "jit_gl_texture", "" ],
					"patching_rect" : [ 309.0, 280.0, 480.0, 22.0 ],
					"text" : "jit.gl.camera player @tripod 1 @locklook 1 @position 0 0 5 @far_clip 255 @color 1 1 1 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-86",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "", "", "" ],
					"patching_rect" : [ 447.333333333333314, 12.0, 56.0, 22.0 ],
					"restore" : 					{
						"cam_lensangle" : [ 45.0 ],
						"cam_lensangle[1]" : [ 10.0 ],
						"camposx" : [ 0.5 ],
						"camposy" : [ 0.0 ],
						"camposz" : [ 0.5 ],
						"dof_blur_distance" : [ 0.549 ],
						"dof_blur_range" : [ 0.926 ],
						"dof_blur_width" : [ 0.653 ],
						"dof_enable" : [ 0 ],
						"dof_enable[1]" : [ 0 ],
						"dof_exposure_bias" : [ 1.3 ],
						"dof_inv_gamma" : [ 1.14 ],
						"dof_white_point" : [ 0.52 ],
						"floor_pointsize" : [ 2.0 ],
						"hue[2]" : [ 0.627 ],
						"light1_brightness" : [ 1.0 ],
						"light1_color" : [ 0.0 ],
						"light1_dimming" : [ 0.37 ],
						"light1_posx" : [ 0.0 ],
						"light1_posy" : [ 4.5 ],
						"light1_posz" : [ 0.0 ],
						"light1_rotx" : [ 31.0 ],
						"light1_roty" : [ -180.0 ],
						"light1_rotz" : [ 0.0 ],
						"light1_saturation" : [ 0.0 ],
						"light1_spotsize" : [ 46.0 ],
						"light1_spotsoft" : [ 29.0 ],
						"light2_brightness" : [ 1.0 ],
						"light2_color" : [ 0.0 ],
						"light2_dimming" : [ 0.072 ],
						"light2_posx" : [ 0.0 ],
						"light2_posy" : [ 3.2 ],
						"light2_posz" : [ 0.0 ],
						"light2_rotx" : [ 0.0 ],
						"light2_roty" : [ -180.0 ],
						"light2_rotz" : [ 0.0 ],
						"light2_saturation" : [ 0.0 ],
						"light2_spotsize" : [ 37.0 ],
						"light2_spotsoft" : [ 0.0 ],
						"luminance[2]" : [ 0.89 ],
						"saturation[2]" : [ 0.55 ],
						"shadow_blur" : [ 0.03 ],
						"shape_posx" : [ 0.0 ],
						"shape_posy" : [ -1.58 ],
						"shape_posz" : [ 0.0 ]
					}
,
					"text" : "autopattr",
					"varname" : "u126011974"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-83",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 45.0, 1063.0, 92.0, 22.0 ],
					"text" : "prepend enable"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-79",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 411.0, 1063.0, 105.0, 22.0 ],
					"text" : "prepend threshold"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-74",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 282.0, 1063.0, 134.0, 22.0 ],
					"text" : "prepend exposure_bias"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-40",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 174.0, 1063.0, 115.0, 22.0 ],
					"text" : "prepend bloom_amt"
				}

			}
, 			{
				"box" : 				{
					"filename" : "bloom.jxp",
					"fontface" : 0,
					"fontname" : "Verdana",
					"fontsize" : 12.0,
					"id" : "obj-19",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "jit_gl_texture", "", "" ],
					"patching_rect" : [ 141.0, 1095.0, 232.0, 23.0 ],
					"text" : "jit.gl.pass player @fxname bloom-hq",
					"textfile" : 					{
						"filename" : "bloom.jxp",
						"flags" : 0,
						"embed" : 0,
						"autowatch" : 1
					}

				}

			}
, 			{
				"box" : 				{
					"id" : "obj-35",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "jit_matrix", "" ],
					"patching_rect" : [ 141.0, 1128.0, 136.0, 22.0 ],
					"text" : "jit.gl.layer wrld @layer 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-17",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "jit_gl_texture", "", "" ],
					"patching_rect" : [ 88.5, 769.0, 167.0, 22.0 ],
					"text" : "jit.gl.node wrld @name player"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Consolas",
					"fontsize" : 10.0,
					"id" : "obj-148",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 357.501953999999841, 556.825072999999975, 173.0, 18.0 ],
					"restore" : [ 1 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0,
						"parameter_mappable" : 0
					}
,
					"text" : "pattr enable @default_interp 0",
					"varname" : "enable"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Consolas",
					"fontsize" : 10.0,
					"id" : "obj-141",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 193.001953999999841, 556.825072999999975, 157.0, 18.0 ],
					"restore" : [ 60 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0,
						"parameter_mappable" : 0
					}
,
					"text" : "pattr fps @default_interp 0",
					"varname" : "fps"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-137",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 193.001953999999841, 521.825072999999975, 81.0, 22.0 ],
					"text" : "prepend sync"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Consolas",
					"fontsize" : 10.0,
					"id" : "obj-130",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 121.001953999999841, 453.825072999999975, 162.0, 18.0 ],
					"restore" : [ 1 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0,
						"parameter_mappable" : 0
					}
,
					"text" : "pattr sync @default_interp 0",
					"varname" : "sync"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.862745098039216, 0.870588235294118, 0.87843137254902, 0.0 ],
					"contrastactivetab" : 0,
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"id" : "obj-131",
					"margin" : 0,
					"maxclass" : "tab",
					"multiline" : 0,
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 193.001953999999841, 485.825072999999975, 116.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 0.0, 85.0, 143.0, 20.0 ],
					"rounded" : 0.0,
					"spacing_x" : 1.0,
					"spacing_y" : 0.0,
					"style" : "dsx.tab3",
					"tabcolor" : [ 0.423529411764706, 0.423529411764706, 0.423529411764706, 1.0 ],
					"tabs" : [ "Sync Off", "Sync On" ],
					"textcolor" : [ 0.901960784313726, 0.901960784313726, 0.901960784313726, 1.0 ],
					"varname" : "tab[4]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-78",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 262.001953999999841, 618.0, 72.0, 22.0 ],
					"text" : "prepend fps"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Consolas",
					"fontsize" : 10.0,
					"id" : "obj-69",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 309.0, 453.825072999999975, 201.0, 18.0 ],
					"restore" : [ 0 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0,
						"parameter_mappable" : 0
					}
,
					"text" : "pattr displaylink @default_interp 0",
					"varname" : "displaylink"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.862745098039216, 0.870588235294118, 0.87843137254902, 0.0 ],
					"contrastactivetab" : 0,
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"id" : "obj-76",
					"margin" : 0,
					"maxclass" : "tab",
					"multiline" : 0,
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 400.0, 479.600098000000116, 129.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 0.0, 64.0, 143.0, 20.0 ],
					"rounded" : 0.0,
					"spacing_x" : 1.0,
					"spacing_y" : 0.0,
					"style" : "dsx.tab3",
					"tabcolor" : [ 0.423529411764706, 0.423529411764706, 0.423529411764706, 1.0 ],
					"tabs" : [ "DLink Off", "DLink On" ],
					"textcolor" : [ 0.901960784313726, 0.901960784313726, 0.901960784313726, 1.0 ],
					"varname" : "tab[3]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-66",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 400.0, 506.600098000000116, 113.0, 22.0 ],
					"text" : "prepend displaylink"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-31",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 976.0, 60.174927000000025, 50.0, 22.0 ],
					"text" : "compile"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-25",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 976.0, 36.174927000000025, 47.0, 22.0 ],
					"text" : "getsize"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-11",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 976.0, 116.174927000000025, 77.0, 22.0 ],
					"text" : "s changedim"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-87",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 614.0, 439.600098000000116, 25.0, 22.0 ],
					"text" : "t 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-56",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 569.0, 430.600098000000116, 25.0, 22.0 ],
					"text" : "t 0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-23",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 569.0, 408.600098000000116, 36.0, 22.0 ],
					"text" : "r esc"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Consolas",
					"fontsize" : 10.0,
					"id" : "obj-120",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 650.0, 439.600098000000116, 195.0, 18.0 ],
					"restore" : [ 0 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0,
						"parameter_mappable" : 0
					}
,
					"text" : "pattr fullscreen @default_interp 0",
					"varname" : "fullscreen"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Consolas",
					"fontsize" : 10.0,
					"id" : "obj-113",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ -18.0, 488.825072999999975, 179.0, 18.0 ],
					"restore" : [ 1 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0,
						"parameter_mappable" : 0
					}
,
					"text" : "pattr visible @default_interp 0",
					"varname" : "visible"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.862745098039216, 0.870588235294118, 0.87843137254902, 0.0 ],
					"contrastactivetab" : 0,
					"fontname" : "Consolas",
					"fontsize" : 10.0,
					"id" : "obj-114",
					"margin" : 0,
					"maxclass" : "tab",
					"multiline" : 0,
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 62.0, 521.825072999999975, 116.0, 24.0 ],
					"rounded" : 0.0,
					"spacing_x" : 1.0,
					"spacing_y" : 0.0,
					"style" : "dsx.tab3",
					"tabcolor" : [ 0.423529411764706, 0.423529411764706, 0.423529411764706, 1.0 ],
					"tabs" : [ "Hide Window", "Show Window" ],
					"textcolor" : [ 0.901960784313726, 0.901960784313726, 0.901960784313726, 1.0 ],
					"varname" : "tab[7]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-112",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 62.0, 555.825072999999975, 91.0, 22.0 ],
					"text" : "prepend visible"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Consolas",
					"fontsize" : 10.0,
					"id" : "obj-109",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 1773.5, 36.174927000000025, 179.0, 18.0 ],
					"restore" : [ 8889 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0,
						"parameter_mappable" : 0
					}
,
					"text" : "pattr oscport @default_interp 0",
					"varname" : "oscport"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Consolas",
					"fontsize" : 10.0,
					"id" : "obj-57",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 575.0, 677.0, 168.0, 18.0 ],
					"restore" : [ 1920 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0,
						"parameter_mappable" : 0
					}
,
					"text" : "pattr width @default_interp 0",
					"varname" : "width"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Consolas",
					"fontsize" : 10.0,
					"id" : "obj-50",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 575.0, 741.0, 173.0, 18.0 ],
					"restore" : [ 1200 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0,
						"parameter_mappable" : 0
					}
,
					"text" : "pattr height @default_interp 0",
					"varname" : "height"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Consolas",
					"fontsize" : 10.0,
					"id" : "obj-48",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 614.0, 556.825072999999975, 195.0, 18.0 ],
					"restore" : [ 20 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0,
						"parameter_mappable" : 0
					}
,
					"text" : "pattr windowposy @default_interp 0",
					"varname" : "windowposy"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Consolas",
					"fontsize" : 10.0,
					"id" : "obj-47",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 614.0, 532.825072999999975, 195.0, 18.0 ],
					"restore" : [ 20 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0,
						"parameter_mappable" : 0
					}
,
					"text" : "pattr windowposx @default_interp 0",
					"varname" : "windowposx"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"htricolor" : [ 0.780392156862745, 0.141176470588235, 0.019607843137255, 1.0 ],
					"id" : "obj-61",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 702.0, 582.600098000000003, 46.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 96.0, 169.0, 46.0, 20.0 ],
					"style" : "dsx.integer",
					"textcolor" : [ 0.901960784313726, 0.901960784313726, 0.901960784313726, 1.0 ],
					"tricolor" : [ 0.780392156862745, 0.141176470588235, 0.019607843137255, 1.0 ],
					"triscale" : 0.5,
					"varname" : "number[1]"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"htricolor" : [ 0.780392156862745, 0.141176470588235, 0.019607843137255, 1.0 ],
					"id" : "obj-75",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 617.5, 589.0, 49.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 47.0, 169.0, 49.0, 20.0 ],
					"style" : "dsx.integer",
					"textcolor" : [ 0.901960784313726, 0.901960784313726, 0.901960784313726, 1.0 ],
					"tricolor" : [ 0.780392156862745, 0.141176470588235, 0.019607843137255, 1.0 ],
					"triscale" : 0.5,
					"varname" : "number"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-59",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 533.0, 618.0, 188.0, 22.0 ],
					"text" : "pak windowposition 0 0"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Consolas",
					"fontsize" : 10.0,
					"id" : "obj-21",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1934.5, 105.174927000000025, 66.0, 18.0 ],
					"text" : "s oscport"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Consolas",
					"fontsize" : 10.0,
					"id" : "obj-41",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1853.5, 175.174927000000025, 42.0, 18.0 ],
					"text" : "s osc"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Consolas",
					"fontsize" : 10.0,
					"id" : "obj-116",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1853.5, 105.174927000000025, 77.0, 18.0 ],
					"text" : "prepend port"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Consolas",
					"fontsize" : 10.0,
					"id" : "obj-122",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1853.5, 139.174927000000025, 91.0, 18.0 ],
					"text" : "udpreceive 8888"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"htricolor" : [ 0.780392156862745, 0.141176470588235, 0.019607843137255, 1.0 ],
					"id" : "obj-30",
					"maxclass" : "number",
					"minimum" : 10,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 652.0, 771.0, 50.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 98.5, 148.0, 41.0, 20.0 ],
					"style" : "dsx.integer",
					"textcolor" : [ 0.901960784313726, 0.901960784313726, 0.901960784313726, 1.0 ],
					"tricolor" : [ 0.780392156862745, 0.141176470588235, 0.019607843137255, 1.0 ],
					"triscale" : 0.5,
					"varname" : "number[3]"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"htricolor" : [ 0.780392156862745, 0.141176470588235, 0.019607843137255, 1.0 ],
					"id" : "obj-103",
					"maxclass" : "number",
					"minimum" : 10,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 650.0, 707.0, 50.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 47.0, 148.0, 50.0, 20.0 ],
					"style" : "dsx.integer",
					"textcolor" : [ 0.901960784313726, 0.901960784313726, 0.901960784313726, 1.0 ],
					"tricolor" : [ 0.780392156862745, 0.141176470588235, 0.019607843137255, 1.0 ],
					"triscale" : 0.5,
					"varname" : "number[2]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-51",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 976.0, 92.174927000000025, 98.0, 22.0 ],
					"saved_object_attributes" : 					{
						"filename" : "dsx_output4.js",
						"parameter_enable" : 0
					}
,
					"text" : "js dsx_output4.js"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.862745098039216, 0.870588235294118, 0.87843137254902, 0.0 ],
					"contrastactivetab" : 0,
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"id" : "obj-20",
					"margin" : 0,
					"maxclass" : "tab",
					"multiline" : 0,
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 614.0, 479.600098000000116, 200.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 0.0, 43.0, 143.0, 20.0 ],
					"rounded" : 0.0,
					"spacing_x" : 1.0,
					"spacing_y" : 1.0,
					"style" : "dsx.tab3",
					"tabcolor" : [ 0.423529411764706, 0.423529411764706, 0.423529411764706, 1.0 ],
					"tabs" : [ "Window", "Fullscreen" ],
					"textcolor" : [ 0.901960784313726, 0.901960784313726, 0.901960784313726, 1.0 ],
					"varname" : "tab[8]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-22",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 614.0, 408.600098000000116, 27.0, 22.0 ],
					"text" : "r f"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.352941176470588, 0.36078431372549, 0.36078431372549, 1.0 ],
					"fontname" : "Geneva",
					"fontsize" : 9.0,
					"id" : "obj-150",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 54.5, 118.724975000000029, 54.0, 18.0 ],
					"text" : "BitRate",
					"textcolor" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-9",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 342.0, 807.0, 61.0, 22.0 ],
					"text" : "route fps"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.862745098039216, 0.870588235294118, 0.87843137254902, 0.0 ],
					"contrastactivetab" : 0,
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"id" : "obj-34",
					"margin" : 0,
					"maxclass" : "tab",
					"multiline" : 0,
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 434.501953999999841, 582.600098000000003, 88.0, 30.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1.0, 22.0, 141.0, 20.0 ],
					"prototypename" : "dsx_tab",
					"rounded" : 0.0,
					"segmented" : 1,
					"spacing_x" : 1.0,
					"spacing_y" : 0.0,
					"style" : "dsx.tab3",
					"tabcolor" : [ 0.423529411764706, 0.423529411764706, 0.423529411764706, 1.0 ],
					"tabs" : [ "OFF", "ON" ],
					"textcolor" : [ 0.901960784313726, 0.901960784313726, 0.901960784313726, 1.0 ],
					"varname" : "tab[1]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-26",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 1306.299987999999757, 50.174927000000025, 58.0, 22.0 ],
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-27",
					"linecount" : 2,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1306.299987999999757, 87.174927000000025, 161.0, 35.0 ],
					"text" : ";\rmax sendapppath folderpath"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 9,
							"minor" : 0,
							"revision" : 2,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 1734.0, 337.0, 640.0, 480.0 ],
						"gridsize" : [ 15.0, 15.0 ],
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-6",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 265.650818000000015, 310.0, 32.0, 20.0 ],
									"text" : "s kc"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-5",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 248.650802999999996, 216.0, 32.0, 20.0 ],
									"text" : "s k2"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-4",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 110.678573999999998, 248.0, 27.0, 20.0 ],
									"text" : "s b"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 232.178573999999998, 248.0, 49.0, 20.0 ],
									"text" : "s space"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-3",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 209.095245000000006, 181.0, 39.0, 20.0 ],
									"text" : "s esc"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-2",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 171.0, 67.0, 50.0, 20.0 ],
									"text" : "-11"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-76",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 191.678573999999998, 248.0, 27.0, 20.0 ],
									"text" : "s s"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-64",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 171.428573999999998, 210.0, 27.0, 20.0 ],
									"text" : "s p"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-45",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 130.928573999999998, 177.0, 38.0, 20.0 ],
									"text" : "s no1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-42",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 151.178573999999998, 248.0, 29.0, 20.0 ],
									"text" : "s m"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-26",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 90.428573999999998, 210.0, 27.0, 20.0 ],
									"text" : "s f"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Consolas",
									"fontsize" : 10.0,
									"id" : "obj-258",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 481.074950999999999, 194.0, 28.0, 20.0 ],
									"text" : "t 8"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Consolas",
									"fontsize" : 10.0,
									"id" : "obj-257",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 457.949950999999999, 166.899901999999997, 28.0, 20.0 ],
									"text" : "t 7"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Consolas",
									"fontsize" : 10.0,
									"id" : "obj-253",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 434.824950999999999, 186.899901999999997, 28.0, 20.0 ],
									"text" : "t 6"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Consolas",
									"fontsize" : 10.0,
									"id" : "obj-255",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 411.699950999999999, 166.899901999999997, 28.0, 20.0 ],
									"text" : "t 5"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Consolas",
									"fontsize" : 10.0,
									"id" : "obj-256",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 388.574950999999999, 186.899901999999997, 28.0, 20.0 ],
									"text" : "t 4"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Consolas",
									"fontsize" : 10.0,
									"id" : "obj-265",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 315.199950999999999, 276.819336000000021, 67.0, 20.0 ],
									"text" : "s presetID"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Consolas",
									"fontsize" : 10.0,
									"id" : "obj-259",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 365.449950999999999, 164.0, 28.0, 20.0 ],
									"text" : "t 3"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Consolas",
									"fontsize" : 10.0,
									"id" : "obj-260",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 342.324950999999999, 186.899901999999997, 28.0, 20.0 ],
									"text" : "t 2"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Consolas",
									"fontsize" : 10.0,
									"id" : "obj-261",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 319.199950999999999, 164.0, 28.0, 20.0 ],
									"text" : "t 1"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Consolas",
									"fontsize" : 10.0,
									"id" : "obj-262",
									"maxclass" : "newobj",
									"numinlets" : 9,
									"numoutlets" : 9,
									"outlettype" : [ "bang", "bang", "bang", "bang", "bang", "bang", "bang", "bang", "" ],
									"patching_rect" : [ 319.199950999999999, 134.0, 204.0, 20.0 ],
									"text" : "sel -17 -18 -19 -20 -21 -22 -23 -24"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Consolas",
									"fontsize" : 10.0,
									"id" : "obj-103",
									"maxclass" : "newobj",
									"numinlets" : 11,
									"numoutlets" : 11,
									"outlettype" : [ "bang", "bang", "bang", "bang", "bang", "bang", "bang", "bang", "bang", "bang", "" ],
									"patching_rect" : [ 90.428573999999998, 134.0, 214.0, 20.0 ],
									"text" : "sel 102 98 49 109 112 115 -3 -2 50 99"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Consolas",
									"fontsize" : 10.0,
									"id" : "obj-102",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 4,
									"outlettype" : [ "int", "int", "int", "int" ],
									"patching_rect" : [ 50.0, 100.0, 56.0, 20.0 ],
									"text" : "key"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-103", 0 ],
									"order" : 2,
									"source" : [ "obj-102", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 1 ],
									"order" : 1,
									"source" : [ "obj-102", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-262", 0 ],
									"midpoints" : [ 96.5, 125.5, 328.699950999999999, 125.5 ],
									"order" : 0,
									"source" : [ "obj-102", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"source" : [ "obj-103", 7 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-26", 0 ],
									"source" : [ "obj-103", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"source" : [ "obj-103", 6 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"source" : [ "obj-103", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-42", 0 ],
									"source" : [ "obj-103", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-45", 0 ],
									"source" : [ "obj-103", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 0 ],
									"source" : [ "obj-103", 8 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 0 ],
									"source" : [ "obj-103", 9 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-64", 0 ],
									"source" : [ "obj-103", 4 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-76", 0 ],
									"source" : [ "obj-103", 5 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-265", 0 ],
									"midpoints" : [ 444.324950999999999, 240.359619000000009, 324.699950999999999, 240.359619000000009 ],
									"source" : [ "obj-253", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-265", 0 ],
									"source" : [ "obj-255", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-265", 0 ],
									"midpoints" : [ 398.074950999999999, 240.359619000000009, 324.699950999999999, 240.359619000000009 ],
									"source" : [ "obj-256", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-265", 0 ],
									"midpoints" : [ 467.449950999999999, 230.359619000000009, 324.699950999999999, 230.359619000000009 ],
									"source" : [ "obj-257", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-265", 0 ],
									"midpoints" : [ 490.574950999999999, 243.909668000000011, 324.699950999999999, 243.909668000000011 ],
									"source" : [ "obj-258", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-265", 0 ],
									"midpoints" : [ 374.949950999999999, 228.909668000000011, 324.699950999999999, 228.909668000000011 ],
									"source" : [ "obj-259", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-265", 0 ],
									"midpoints" : [ 351.824950999999999, 240.359619000000009, 324.699950999999999, 240.359619000000009 ],
									"source" : [ "obj-260", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-265", 0 ],
									"midpoints" : [ 328.699950999999999, 228.909668000000011, 324.699950999999999, 228.909668000000011 ],
									"source" : [ "obj-261", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-253", 0 ],
									"source" : [ "obj-262", 5 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-255", 0 ],
									"source" : [ "obj-262", 4 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-256", 0 ],
									"source" : [ "obj-262", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-257", 0 ],
									"source" : [ "obj-262", 6 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-258", 0 ],
									"source" : [ "obj-262", 7 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-259", 0 ],
									"source" : [ "obj-262", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-260", 0 ],
									"source" : [ "obj-262", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-261", 0 ],
									"source" : [ "obj-262", 0 ]
								}

							}
 ],
						"originid" : "pat-266"
					}
,
					"patching_rect" : [ 1386.0, 50.0, 71.0, 22.0 ],
					"saved_object_attributes" : 					{
						"fontname" : "Consolas",
						"fontsize" : 10.0,
						"globalpatchername" : ""
					}
,
					"text" : "p keyselect"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-16",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 434.501953999999841, 618.0, 92.0, 22.0 ],
					"text" : "prepend enable"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-4",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 281.0, 721.0, 63.0, 22.0 ],
					"text" : "t getfps l"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-5",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 348.0, 738.0, 69.0, 22.0 ],
					"text" : "interval 33"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-10",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 348.0, 714.0, 58.0, 22.0 ],
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
					"bgcolor2" : [ 0.5, 0.5, 0.5, 1.0 ],
					"fontface" : 0,
					"fontname" : "Consolas",
					"fontsize" : 10.0,
					"id" : "obj-7",
					"ignoreclick" : 1,
					"maxclass" : "jit.fpsgui",
					"mode" : 5,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 281.0, 769.0, 80.0, 30.0 ],
					"textcolor" : [ 0.90017, 0.90017, 0.90017, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-44",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 224.0, 721.0, 44.0, 22.0 ],
					"text" : "s draw"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-52",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "jit_gl_texture", "bang", "" ],
					"patching_rect" : [ 62.0, 692.0, 506.0, 22.0 ],
					"text" : "jit.world wrld @erase_color 0 0 0 1 @esc_fullscreen 0 @fsaa 1 @border 0 @output_texture 1",
					"varname" : "world"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontsize" : 11.0,
					"id" : "obj-248",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 25.0, 6.899901999999997, 154.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 289.0, 65.0, 52.0, 19.0 ],
					"text" : "Position",
					"textcolor" : [ 0.901960784313726, 0.901960784313726, 0.901960784313726, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"bgcolor" : [ 0.501960784313725, 0.501960784313725, 0.501960784313725, 1.0 ],
					"bordercolor" : [ 0.807843137254902, 0.898039215686275, 0.909803921568627, 0.0 ],
					"id" : "obj-250",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 25.0, 6.899901999999997, 128.0, 128.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 286.0, 64.0, 285.5, 20.0 ],
					"proportion" : 0.5,
					"rounded" : 2
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontsize" : 11.0,
					"id" : "obj-253",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 53.0, 56.899901999999997, 150.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 430.0, 149.0, 82.0, 19.0 ],
					"text" : "Spot Softness",
					"textcolor" : [ 0.901960784313726, 0.901960784313726, 0.901960784313726, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"bgcolor" : [ 0.501960784313725, 0.501960784313725, 0.501960784313725, 1.0 ],
					"bordercolor" : [ 0.807843137254902, 0.898039215686275, 0.909803921568627, 0.0 ],
					"id" : "obj-254",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 53.0, 55.899901999999997, 128.0, 128.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 429.0, 148.0, 142.333333333333258, 20.0 ],
					"proportion" : 0.5,
					"rounded" : 2
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontsize" : 11.0,
					"id" : "obj-270",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 46.0, 178.899901999999997, 150.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 429.0, 421.5, 35.0, 19.0 ],
					"text" : "Blur",
					"textcolor" : [ 0.901960784313726, 0.901960784313726, 0.901960784313726, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"bgcolor" : [ 0.501960784313725, 0.501960784313725, 0.501960784313725, 1.0 ],
					"bordercolor" : [ 0.807843137254902, 0.898039215686275, 0.909803921568627, 0.0 ],
					"id" : "obj-271",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 42.0, -6.100098000000003, 128.0, 128.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 429.0, 421.0, 142.333333333333258, 20.0 ],
					"proportion" : 0.5,
					"rounded" : 2
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontsize" : 11.0,
					"id" : "obj-312",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 62.0, 105.899901999999997, 144.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 141.0, 127.5, 79.0, 19.0 ],
					"text" : "LENS ANGLE",
					"textcolor" : [ 0.901960784313726, 0.901960784313726, 0.901960784313726, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"bgcolor" : [ 0.501960784313725, 0.501960784313725, 0.501960784313725, 1.0 ],
					"bordercolor" : [ 0.807843137254902, 0.898039215686275, 0.909803921568627, 0.0 ],
					"id" : "obj-313",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 31.0, 46.899901999999997, 128.0, 128.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 143.0, 127.0, 142.0, 20.0 ],
					"proportion" : 0.5,
					"rounded" : 2
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontsize" : 11.0,
					"id" : "obj-310",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 42.0, 111.899901999999997, 142.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 142.5, 106.5, 72.0, 19.0 ],
					"text" : "DISTANCE",
					"textcolor" : [ 0.901960784313726, 0.901960784313726, 0.901960784313726, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"bgcolor" : [ 0.501960784313725, 0.501960784313725, 0.501960784313725, 1.0 ],
					"bordercolor" : [ 0.807843137254902, 0.898039215686275, 0.909803921568627, 0.0 ],
					"id" : "obj-311",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 17.5, 46.899901999999997, 128.0, 128.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 143.0, 106.0, 142.0, 20.0 ],
					"proportion" : 0.5,
					"rounded" : 2
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontsize" : 11.0,
					"id" : "obj-307",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 60.0, 111.899901999999997, 139.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 143.0, 85.5, 71.0, 19.0 ],
					"text" : "Y POSITION",
					"textcolor" : [ 0.901960784313726, 0.901960784313726, 0.901960784313726, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"bgcolor" : [ 0.501960784313725, 0.501960784313725, 0.501960784313725, 1.0 ],
					"bordercolor" : [ 0.807843137254902, 0.898039215686275, 0.909803921568627, 0.0 ],
					"id" : "obj-308",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 31.0, 63.724975000000029, 128.0, 128.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 143.0, 85.0, 142.0, 20.0 ],
					"proportion" : 0.5,
					"rounded" : 2
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontsize" : 11.0,
					"id" : "obj-305",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 412.0, 277.0, 143.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 142.5, 64.5, 72.0, 19.0 ],
					"text" : "ROTATE",
					"textcolor" : [ 0.901960784313726, 0.901960784313726, 0.901960784313726, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"bgcolor" : [ 0.501960784313725, 0.501960784313725, 0.501960784313725, 1.0 ],
					"bordercolor" : [ 0.807843137254902, 0.898039215686275, 0.909803921568627, 0.0 ],
					"id" : "obj-306",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 46.0, 63.724975000000029, 128.0, 128.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 143.0, 64.0, 142.0, 20.0 ],
					"proportion" : 0.5,
					"rounded" : 2
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontsize" : 11.0,
					"id" : "obj-320",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 42.0, 100.0, 142.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1.0, 149.5, 33.0, 19.0 ],
					"text" : "SIZE",
					"textcolor" : [ 0.901960784313726, 0.901960784313726, 0.901960784313726, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"bgcolor" : [ 0.423529411764706, 0.423529411764706, 0.423529411764706, 1.0 ],
					"bordercolor" : [ 0.807843137254902, 0.898039215686275, 0.909803921568627, 0.0 ],
					"id" : "obj-321",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 42.0, 100.0, 128.0, 128.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1.0, 148.0, 141.0, 20.0 ],
					"proportion" : 0.5,
					"rounded" : 2
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontsize" : 11.0,
					"id" : "obj-318",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 67.0, 91.899901999999997, 142.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1.0, 169.5, 33.0, 19.0 ],
					"text" : "POS",
					"textcolor" : [ 0.901960784313726, 0.901960784313726, 0.901960784313726, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"bgcolor" : [ 0.423529411764706, 0.423529411764706, 0.423529411764706, 1.0 ],
					"bordercolor" : [ 0.807843137254902, 0.898039215686275, 0.909803921568627, 0.0 ],
					"id" : "obj-319",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 67.0, 91.899901999999997, 128.0, 128.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1.0, 169.0, 141.0, 20.0 ],
					"proportion" : 0.5,
					"rounded" : 2
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontsize" : 11.0,
					"id" : "obj-55",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 25.0, 85.0, 151.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 288.5, 400.5, 76.0, 19.0 ],
					"text" : "Saturation",
					"textcolor" : [ 0.901960784313726, 0.901960784313726, 0.901960784313726, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"bgcolor" : [ 0.501960784313725, 0.501960784313725, 0.501960784313725, 1.0 ],
					"bordercolor" : [ 0.807843137254902, 0.898039215686275, 0.909803921568627, 0.0 ],
					"id" : "obj-58",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 25.0, 85.0, 128.0, 128.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 286.0, 400.0, 142.0, 20.0 ],
					"proportion" : 0.5,
					"rounded" : 2
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontsize" : 11.0,
					"id" : "obj-60",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 46.0, 64.724975000000029, 141.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 288.5, 379.5, 71.0, 19.0 ],
					"text" : "Hue",
					"textcolor" : [ 0.901960784313726, 0.901960784313726, 0.901960784313726, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"bgcolor" : [ 0.501960784313725, 0.501960784313725, 0.501960784313725, 1.0 ],
					"bordercolor" : [ 0.807843137254902, 0.898039215686275, 0.909803921568627, 0.0 ],
					"id" : "obj-62",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 46.0, 63.724975000000029, 128.0, 128.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 286.0, 379.0, 142.333333333333258, 20.0 ],
					"proportion" : 0.5,
					"rounded" : 2
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontsize" : 11.0,
					"id" : "obj-63",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 102.0, 85.0, 153.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 427.5, 379.5, 77.0, 19.0 ],
					"text" : "Brightness",
					"textcolor" : [ 0.901960784313726, 0.901960784313726, 0.901960784313726, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"bgcolor" : [ 0.501960784313725, 0.501960784313725, 0.501960784313725, 1.0 ],
					"bordercolor" : [ 0.807843137254902, 0.898039215686275, 0.909803921568627, 0.0 ],
					"id" : "obj-64",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 102.0, 85.0, 128.0, 128.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 429.0, 379.0, 142.0, 20.0 ],
					"proportion" : 0.5,
					"rounded" : 2
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"bgcolor" : [ 0.501960784313725, 0.501960784313725, 0.501960784313725, 1.0 ],
					"bordercolor" : [ 0.807843137254902, 0.898039215686275, 0.909803921568627, 0.0 ],
					"id" : "obj-67",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 73.0, 61.899901999999997, 128.0, 128.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 429.0, 400.0, 142.333333333333258, 20.0 ],
					"proportion" : 0.5,
					"rounded" : 2
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.862745098039216, 0.870588235294118, 0.87843137254902, 0.0 ],
					"contrastactivetab" : 0,
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"id" : "obj-258",
					"margin" : 0,
					"maxclass" : "tab",
					"multiline" : 0,
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1138.5, 504.0, 129.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 348.0, 337.0, 223.645833333333258, 20.0 ],
					"rounded" : 0.0,
					"spacing_x" : 1.0,
					"spacing_y" : 0.0,
					"style" : "dsx.tab3",
					"tabcolor" : [ 0.423529411764706, 0.423529411764706, 0.423529411764706, 1.0 ],
					"tabs" : [ "Texture", "Grid", "Point" ],
					"textcolor" : [ 0.901960784313726, 0.901960784313726, 0.901960784313726, 1.0 ],
					"varname" : "tab[2]"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-175", 0 ],
					"source" : [ "obj-101", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-157", 0 ],
					"source" : [ "obj-105", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-101", 0 ],
					"source" : [ "obj-106", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-108", 0 ],
					"source" : [ "obj-107", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-197", 0 ],
					"source" : [ "obj-108", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-99", 0 ],
					"source" : [ "obj-109", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-111", 0 ],
					"source" : [ "obj-110", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-115", 0 ],
					"source" : [ "obj-111", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-52", 0 ],
					"source" : [ "obj-112", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-114", 0 ],
					"source" : [ "obj-113", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-112", 0 ],
					"source" : [ "obj-114", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-175", 0 ],
					"source" : [ "obj-115", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-122", 0 ],
					"source" : [ "obj-116", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-197", 0 ],
					"source" : [ "obj-117", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-185", 0 ],
					"source" : [ "obj-119", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 0 ],
					"midpoints" : [ 747.5, 467.600098000000116, 623.5, 467.600098000000116 ],
					"source" : [ "obj-120", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-123", 0 ],
					"source" : [ "obj-121", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-178", 0 ],
					"order" : 0,
					"source" : [ "obj-122", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-41", 0 ],
					"order" : 1,
					"source" : [ "obj-122", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-117", 0 ],
					"source" : [ "obj-123", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-119", 1 ],
					"source" : [ "obj-125", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-156", 0 ],
					"source" : [ "obj-126", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-104", 0 ],
					"source" : [ "obj-127", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-131", 0 ],
					"source" : [ "obj-130", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-137", 0 ],
					"source" : [ "obj-131", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-85", 0 ],
					"source" : [ "obj-132", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"source" : [ "obj-136", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-52", 0 ],
					"source" : [ "obj-137", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-136", 0 ],
					"source" : [ "obj-139", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-32", 0 ],
					"order" : 1,
					"source" : [ "obj-14", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-33", 0 ],
					"midpoints" : [ 314.474975500000028, 177.949950999999999, 477.5, 177.949950999999999 ],
					"order" : 0,
					"source" : [ "obj-14", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"midpoints" : [ 188.5, 996.0, 76.5, 996.0 ],
					"source" : [ "obj-140", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-38", 0 ],
					"source" : [ "obj-141", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"midpoints" : [ 308.5, 996.0, 76.5, 996.0 ],
					"source" : [ "obj-142", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"midpoints" : [ 423.5, 996.0, 76.5, 996.0 ],
					"source" : [ "obj-144", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-146", 0 ],
					"source" : [ "obj-145", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-144", 0 ],
					"source" : [ "obj-146", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-142", 0 ],
					"source" : [ "obj-147", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-34", 0 ],
					"source" : [ "obj-148", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-151", 0 ],
					"source" : [ "obj-149", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-28", 0 ],
					"source" : [ "obj-15", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-140", 0 ],
					"source" : [ "obj-151", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-160", 0 ],
					"source" : [ "obj-153", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-155", 0 ],
					"source" : [ "obj-154", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-197", 0 ],
					"source" : [ "obj-155", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-249", 0 ],
					"source" : [ "obj-156", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-170", 0 ],
					"source" : [ "obj-157", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-173", 0 ],
					"source" : [ "obj-158", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-52", 0 ],
					"midpoints" : [ 444.001953999999841, 661.199951000000056, 71.5, 661.199951000000056 ],
					"source" : [ "obj-16", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-197", 0 ],
					"source" : [ "obj-160", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-214", 0 ],
					"source" : [ "obj-161", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-73", 0 ],
					"source" : [ "obj-163", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-267", 0 ],
					"source" : [ "obj-164", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-167", 0 ],
					"source" : [ "obj-166", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-104", 0 ],
					"source" : [ "obj-167", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-104", 0 ],
					"source" : [ "obj-168", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-204", 0 ],
					"source" : [ "obj-169", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-127", 2 ],
					"source" : [ "obj-170", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-170", 1 ],
					"source" : [ "obj-171", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-39", 1 ],
					"order" : 1,
					"source" : [ "obj-173", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-49", 1 ],
					"order" : 0,
					"source" : [ "obj-173", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-173", 1 ],
					"source" : [ "obj-174", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 0 ],
					"source" : [ "obj-178", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 0 ],
					"source" : [ "obj-18", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-197", 0 ],
					"source" : [ "obj-181", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-223", 0 ],
					"source" : [ "obj-182", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-175", 0 ],
					"source" : [ "obj-185", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-85", 0 ],
					"midpoints" : [ 1366.0, 470.612487499999929, 1282.0, 470.612487499999929 ],
					"source" : [ "obj-189", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-35", 0 ],
					"source" : [ "obj-19", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-191", 0 ],
					"source" : [ "obj-190", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-192", 0 ],
					"source" : [ "obj-191", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-163", 0 ],
					"midpoints" : [ 1339.0, 363.051513499999942, 1035.0, 363.051513499999942 ],
					"source" : [ "obj-192", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-199", 3 ],
					"source" : [ "obj-195", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-199", 2 ],
					"source" : [ "obj-196", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-199", 1 ],
					"source" : [ "obj-198", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-73", 0 ],
					"source" : [ "obj-199", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-168", 0 ],
					"source" : [ "obj-204", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-71", 0 ],
					"source" : [ "obj-214", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-87", 0 ],
					"source" : [ "obj-22", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-222", 0 ],
					"source" : [ "obj-220", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-73", 0 ],
					"source" : [ "obj-222", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-224", 0 ],
					"source" : [ "obj-223", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-175", 0 ],
					"source" : [ "obj-224", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-119", 2 ],
					"source" : [ "obj-225", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-119", 0 ],
					"source" : [ "obj-226", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-56", 0 ],
					"source" : [ "obj-23", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-163", 0 ],
					"order" : 0,
					"source" : [ "obj-230", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-73", 0 ],
					"order" : 1,
					"source" : [ "obj-230", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-230", 0 ],
					"source" : [ "obj-231", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-231", 0 ],
					"source" : [ "obj-232", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-242", 3 ],
					"source" : [ "obj-239", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-242", 2 ],
					"source" : [ "obj-240", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-242", 1 ],
					"source" : [ "obj-241", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-175", 0 ],
					"source" : [ "obj-242", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-249", 1 ],
					"source" : [ "obj-243", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-175", 0 ],
					"source" : [ "obj-244", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-175", 0 ],
					"source" : [ "obj-245", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-244", 0 ],
					"source" : [ "obj-246", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-245", 0 ],
					"source" : [ "obj-247", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 0 ],
					"source" : [ "obj-249", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-51", 0 ],
					"source" : [ "obj-25", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-258", 0 ],
					"source" : [ "obj-257", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-29", 0 ],
					"source" : [ "obj-258", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-27", 0 ],
					"source" : [ "obj-26", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-264", 3 ],
					"source" : [ "obj-261", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-264", 2 ],
					"source" : [ "obj-262", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-264", 1 ],
					"source" : [ "obj-263", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-175", 0 ],
					"source" : [ "obj-264", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-175", 0 ],
					"order" : 1,
					"source" : [ "obj-266", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-197", 0 ],
					"order" : 0,
					"source" : [ "obj-266", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-268", 0 ],
					"source" : [ "obj-267", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-175", 0 ],
					"order" : 1,
					"source" : [ "obj-268", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-197", 0 ],
					"order" : 0,
					"source" : [ "obj-268", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-266", 0 ],
					"source" : [ "obj-269", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-189", 0 ],
					"source" : [ "obj-28", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-197", 0 ],
					"source" : [ "obj-280", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-280", 0 ],
					"source" : [ "obj-281", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-281", 0 ],
					"source" : [ "obj-282", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-288", 2 ],
					"source" : [ "obj-283", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-288", 1 ],
					"source" : [ "obj-284", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-288", 0 ],
					"source" : [ "obj-285", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-181", 0 ],
					"source" : [ "obj-288", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-73", 0 ],
					"midpoints" : [ 1148.0, 547.699950999999942, 940.0, 547.699950999999942 ],
					"source" : [ "obj-29", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-28", 2 ],
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-51", 0 ],
					"source" : [ "obj-31", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-39", 0 ],
					"midpoints" : [ 314.474975500000028, 213.5, 371.5, 213.5 ],
					"source" : [ "obj-32", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-49", 0 ],
					"source" : [ "obj-33", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-16", 0 ],
					"source" : [ "obj-34", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-346", 3 ],
					"source" : [ "obj-343", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-346", 2 ],
					"source" : [ "obj-344", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-346", 1 ],
					"source" : [ "obj-345", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-197", 0 ],
					"source" : [ "obj-346", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-163", 0 ],
					"source" : [ "obj-347", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-347", 0 ],
					"source" : [ "obj-349", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-349", 0 ],
					"source" : [ "obj-350", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-352", 0 ],
					"source" : [ "obj-351", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-73", 0 ],
					"source" : [ "obj-352", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-78", 0 ],
					"source" : [ "obj-38", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-127", 1 ],
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 0 ],
					"source" : [ "obj-4", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 0 ],
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 0 ],
					"midpoints" : [ 183.5, 1088.749999812499937, 150.5, 1088.749999812499937 ],
					"source" : [ "obj-40", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-75", 0 ],
					"midpoints" : [ 711.5, 554.100098000000116, 627.0, 554.100098000000116 ],
					"source" : [ "obj-47", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-61", 0 ],
					"source" : [ "obj-48", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-127", 3 ],
					"source" : [ "obj-49", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 0 ],
					"midpoints" : [ 357.5, 764.5, 290.5, 764.5 ],
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-30", 0 ],
					"source" : [ "obj-50", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 0 ],
					"source" : [ "obj-51", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"source" : [ "obj-52", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"midpoints" : [ 315.0, 712.25, 290.5, 712.25 ],
					"order" : 0,
					"source" : [ "obj-52", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-44", 0 ],
					"order" : 1,
					"source" : [ "obj-52", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 0 ],
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-103", 0 ],
					"source" : [ "obj-57", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-52", 0 ],
					"midpoints" : [ 542.5, 673.5, 71.5, 673.5 ],
					"source" : [ "obj-59", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 0 ],
					"source" : [ "obj-6", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-59", 2 ],
					"source" : [ "obj-61", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-132", 0 ],
					"source" : [ "obj-65", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-52", 0 ],
					"midpoints" : [ 409.5, 668.0, 71.5, 668.0 ],
					"source" : [ "obj-66", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-76", 0 ],
					"source" : [ "obj-69", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 0 ],
					"source" : [ "obj-7", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-175", 0 ],
					"order" : 1,
					"source" : [ "obj-71", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-197", 0 ],
					"order" : 0,
					"source" : [ "obj-71", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 0 ],
					"midpoints" : [ 291.5, 1087.749999812499937, 150.5, 1087.749999812499937 ],
					"source" : [ "obj-74", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-59", 1 ],
					"source" : [ "obj-75", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-66", 0 ],
					"source" : [ "obj-76", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-158", 0 ],
					"source" : [ "obj-77", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-52", 0 ],
					"midpoints" : [ 271.501953999999841, 657.0, 71.5, 657.0 ],
					"source" : [ "obj-78", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 0 ],
					"midpoints" : [ 420.5, 1087.749999812499937, 150.5, 1087.749999812499937 ],
					"source" : [ "obj-79", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-28", 1 ],
					"source" : [ "obj-8", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 0 ],
					"source" : [ "obj-83", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-83", 0 ],
					"source" : [ "obj-84", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-73", 0 ],
					"midpoints" : [ 1282.0, 550.859375, 940.0, 550.859375 ],
					"source" : [ "obj-85", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-171", 0 ],
					"order" : 1,
					"source" : [ "obj-86", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-174", 0 ],
					"order" : 0,
					"source" : [ "obj-86", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-243", 0 ],
					"order" : 2,
					"source" : [ "obj-86", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 0 ],
					"source" : [ "obj-87", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-79", 0 ],
					"source" : [ "obj-88", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-74", 0 ],
					"source" : [ "obj-89", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-9", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-40", 0 ],
					"source" : [ "obj-90", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-96", 3 ],
					"source" : [ "obj-91", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-96", 2 ],
					"source" : [ "obj-92", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-96", 1 ],
					"source" : [ "obj-93", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-197", 0 ],
					"source" : [ "obj-96", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-116", 0 ],
					"order" : 1,
					"source" : [ "obj-99", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-21", 0 ],
					"midpoints" : [ 1863.0, 95.84985400000005, 1944.0, 95.84985400000005 ],
					"order" : 0,
					"source" : [ "obj-99", 0 ]
				}

			}
 ],
		"originid" : "pat-250",
		"dependency_cache" : [ 			{
				"name" : "dsx_output4.js",
				"bootpath" : "~/Nextcloud/dsx.package/ouput",
				"patcherrelativepath" : ".",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "hsv2rgb.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "jit.gl.syphonserver.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "pi_constant.mxo",
				"type" : "iLaX"
			}
 ],
		"autosave" : 0,
		"styles" : [ 			{
				"name" : "AudioStatus_Menu",
				"default" : 				{
					"bgfillcolor" : 					{
						"angle" : 270.0,
						"autogradient" : 0,
						"color" : [ 0.294118, 0.313726, 0.337255, 1 ],
						"color1" : [ 0.454902, 0.462745, 0.482353, 0.0 ],
						"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"proportion" : 0.39,
						"type" : "color"
					}

				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "Jamoma_highlighted_orange",
				"default" : 				{
					"accentcolor" : [ 1.0, 0.5, 0.0, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "default_style",
				"newobj" : 				{
					"accentcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"button" : 				{
					"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
					"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ]
				}
,
				"toggle" : 				{
					"bgcolor" : [ 0.636487, 0.648652, 0.683149, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 1
			}
, 			{
				"name" : "dsx.button-1",
				"default" : 				{
					"accentcolor" : [ 0.223529411764706, 0.23921568627451, 0.258823529411765, 1.0 ],
					"bgcolor" : [ 0.729411764705882, 0.737254901960784, 0.741176470588235, 1.0 ],
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 0.780392156862745, 0.141176470588235, 0.019607843137255, 1.0 ],
					"selectioncolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "dsx.comment.left",
				"default" : 				{
					"clearcolor" : [ 0.862745098039216, 0.870588235294118, 0.87843137254902, 1.0 ],
					"fontname" : [ "Geneva" ],
					"fontsize" : [ 9.0 ],
					"textcolor" : [ 0.223529411764706, 0.23921568627451, 0.258823529411765, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "dsx.flonum",
				"default" : 				{
					"accentcolor" : [ 0.32156862745098, 0.341176470588235, 0.368627450980392, 1.0 ],
					"bgcolor" : [ 0.8, 0.8, 0.8, 0.0 ],
					"fontname" : [ "Geneva" ],
					"fontsize" : [ 9.0 ],
					"selectioncolor" : [ 0.32156862745098, 0.341176470588235, 0.368627450980392, 1.0 ],
					"textcolor_inverse" : [ 0.780392156862745, 0.141176470588235, 0.019607843137255, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "dsx.integer",
				"default" : 				{
					"accentcolor" : [ 0.75, 0.75, 0.75, 1.0 ],
					"bgcolor" : [ 0.8, 0.8, 0.8, 0.0 ],
					"fontname" : [ "Consolas" ],
					"fontsize" : [ 10.0 ],
					"selectioncolor" : [ 0.87, 0.82, 0.24, 1.0 ],
					"textcolor_inverse" : [ 0.780392156862745, 0.141176470588235, 0.019607843137255, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "dsx.tab3",
				"default" : 				{
					"clearcolor" : [ 0.862745098039216, 0.870588235294118, 0.87843137254902, 1.0 ],
					"color" : [ 0.780392156862745, 0.141176470588235, 0.019607843137255, 1.0 ],
					"elementcolor" : [ 0.729411764705882, 0.737254901960784, 0.741176470588235, 1.0 ],
					"textcolor_inverse" : [ 0.223529411764706, 0.23921568627451, 0.258823529411765, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "helpfile_label-1",
				"default" : 				{
					"fontname" : [ "Arial" ],
					"fontsize" : [ 13.0 ],
					"textcolor" : [ 0.501961, 0.501961, 0.501961, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "m4vatextbutton",
				"default" : 				{
					"accentcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bgcolor" : [ 0.264542, 0.246412, 0.247132, 1.0 ],
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 0.264542, 0.246412, 0.247132, 1.0 ],
					"fontsize" : [ 14.0 ],
					"selectioncolor" : [ 0.960784, 0.827451, 0.156863, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "newobjBlue-1",
				"default" : 				{
					"accentcolor" : [ 0.317647, 0.654902, 0.976471, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "newobjGreen-1",
				"default" : 				{
					"accentcolor" : [ 0.0, 0.533333, 0.168627, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "newobjYellow-1",
				"default" : 				{
					"accentcolor" : [ 0.82517, 0.78181, 0.059545, 1.0 ],
					"fontsize" : [ 12.059008 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "simple",
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "tap",
				"default" : 				{
					"fontname" : [ "Lato Light" ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
 ],
		"bgcolor" : [ 0.352941176470588, 0.352941176470588, 0.352941176470588, 1.0 ]
	}

}
