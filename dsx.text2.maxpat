{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 9,
			"minor" : 0,
			"revision" : 3,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 586.0, 226.0, 1414.0, 1075.0 ],
		"openinpresentation" : 1,
		"default_fontsize" : 10.0,
		"default_fontname" : "Consolas",
		"gridsize" : [ 15.0, 15.0 ],
		"boxes" : [ 			{
				"box" : 				{
					"id" : "obj-12",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 656.0, 717.0, 80.0, 18.0 ],
					"text" : "prepend oscin"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-84",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "FullPacket" ],
					"patching_rect" : [ 656.0, 687.0, 58.0, 18.0 ],
					"text" : "o.route /"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-14",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 723.0, 645.0, 36.0, 18.0 ],
					"text" : "r osc"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-42",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 631.0, 483.0, 52.0, 18.0 ],
					"text" : "pipe 100"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-46",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 670.0, 538.0, 96.0, 18.0 ],
					"text" : "prepend category"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-64",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "TEXT" ],
					"patching_rect" : [ 631.0, 512.0, 52.0, 18.0 ],
					"text" : "t s TEXT"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Consolas",
					"fontsize" : 10.0,
					"id" : "obj-65",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 631.0, 453.0, 85.0, 18.0 ],
					"text" : "loadmess getid"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Consolas",
					"fontsize" : 10.0,
					"id" : "obj-83",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 631.0, 577.0, 69.0, 18.0 ],
					"saved_object_attributes" : 					{
						"filename" : "getid.js",
						"parameter_enable" : 0
					}
,
					"text" : "js getid.js"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.862745098039216, 0.870588235294118, 0.87843137254902, 0.0 ],
					"fontname" : "Consolas",
					"fontsize" : 10.0,
					"id" : "obj-125",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 631.0, 642.0, 72.0, 16.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 0.5, 1.0, 103.0, 16.0 ],
					"style" : "dsx.comment.left",
					"text" : "TEXT2",
					"textcolor" : [ 0.901960784313726, 0.901960784313726, 0.901960784313726, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.32156862745098, 0.341176470588235, 0.368627450980392, 1.0 ],
					"bgoncolor" : [ 0.780392156862745, 0.141176470588235, 0.019607843137255, 1.0 ],
					"id" : "obj-92",
					"legacytextcolor" : 1,
					"maxclass" : "textbutton",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 232.0, 702.0, 96.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 200.5, 1.0, 64.0, 20.0 ],
					"text" : "ENABLE",
					"textcolor" : [ 0.90017, 0.90017, 0.90017, 1.0 ],
					"texton" : "ENABLE",
					"textoncolor" : [ 0.901960784313726, 0.901960784313726, 0.901960784313726, 1.0 ],
					"textovercolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"usebgoncolor" : 1,
					"varname" : "enable"
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"bgcolor" : [ 0.501960784313725, 0.501960784313725, 0.501960784313725, 1.0 ],
					"bordercolor" : [ 0.807843137254902, 0.898039215686275, 0.909803921568627, 0.0 ],
					"id" : "obj-8",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1235.0, 802.0, 128.0, 128.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 111.5, 22.0, 153.0, 20.0 ],
					"proportion" : 0.5,
					"rounded" : 2
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-5",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 232.0, 732.0, 85.0, 18.0 ],
					"text" : "prepend enable"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Consolas",
					"fontsize" : 10.0,
					"id" : "obj-56",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 149.5, 676.0, 184.0, 18.0 ],
					"restore" : [ 1 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0,
						"parameter_mappable" : 0
					}
,
					"text" : "pattr status @default_interp off",
					"varname" : "status"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Consolas",
					"fontsize" : 10.0,
					"id" : "obj-38",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1123.5, 279.0, 80.0, 18.0 ],
					"text" : "prepend align"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontname" : "Consolas",
					"fontsize" : 10.0,
					"id" : "obj-41",
					"items" : [ "left", ",", "center", ",", "right", ",", "justify" ],
					"maxclass" : "umenu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1123.5, 253.0, 87.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 138.166666666666686, 196.0, 126.0, 18.0 ],
					"varname" : "fontalign"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-7",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 30.0, 732.0, 135.0, 18.0 ],
					"text" : "prepend RenderToTexture"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-6",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 30.0, 761.0, 91.0, 18.0 ],
					"saved_object_attributes" : 					{
						"filename" : "dsx_text2.js",
						"parameter_enable" : 0
					}
,
					"text" : "js dsx_text2.js"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.32156862745098, 0.341176470588235, 0.368627450980392, 1.0 ],
					"bgoncolor" : [ 0.780392156862745, 0.141176470588235, 0.019607843137255, 1.0 ],
					"id" : "obj-57",
					"legacytextcolor" : 1,
					"maxclass" : "textbutton",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 30.0, 688.0, 96.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 0.5, 22.0, 110.0, 20.0 ],
					"text" : "Render to Texture",
					"textcolor" : [ 0.90017, 0.90017, 0.90017, 1.0 ],
					"texton" : "Render to Texture",
					"textoncolor" : [ 0.901960784313726, 0.901960784313726, 0.901960784313726, 1.0 ],
					"textovercolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"usebgoncolor" : 1,
					"varname" : "rendermode"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Consolas",
					"fontsize" : 10.0,
					"id" : "obj-40",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 916.0, 134.0, 52.0, 18.0 ],
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Consolas",
					"fontsize" : 10.0,
					"id" : "obj-39",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 918.0, 180.0, 55.0, 18.0 ],
					"text" : "fontlist"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Consolas",
					"fontsize" : 10.0,
					"id" : "obj-95",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1010.0, 279.0, 88.0, 18.0 ],
					"text" : "prepend face"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontname" : "Consolas",
					"fontsize" : 10.0,
					"id" : "obj-96",
					"items" : [ "normal", ",", "bold", ",", "italic" ],
					"maxclass" : "umenu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1010.0, 253.0, 87.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 138.166666666666686, 217.0, 126.0, 18.0 ],
					"varname" : "fontface"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Consolas",
					"fontsize" : 10.0,
					"id" : "obj-97",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 918.0, 253.0, 64.0, 18.0 ],
					"text" : "tosymbol"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Consolas",
					"fontsize" : 10.0,
					"id" : "obj-99",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 918.0, 279.0, 78.0, 18.0 ],
					"text" : "prepend font"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontname" : "Consolas",
					"fontsize" : 10.0,
					"id" : "obj-100",
					"items" : [ "Ableton Sans", ",", "Ableton Sans Regular Italic", ",", "Ableton Sans ExtraLight", ",", "Ableton Sans ExtraLight Italic", ",", "Ableton Sans Light", ",", "Ableton Sans Light Italic", ",", "Ableton Sans Medium", ",", "Ableton Sans Medium Italic", ",", "Ableton Sans Bold", ",", "Ableton Sans Bold Italic", ",", "Ableton Sans Bold", ",", "Ableton Sans Light", ",", "Ableton Sans Medium", ",", "Ableton Sans Small", ",", "Ableton Sans Small Regular Italic", ",", "Ableton Sans Small Bold", ",", "Ableton Sans Small Bold Italic", ",", "Academy Engraved LET Plain", ",", "Al Bayan Plain", ",", "Al Bayan Bold", ",", "Al Nile", ",", "Al Nile Bold", ",", "Al Tarikh", ",", "American Typewriter", ",", "American Typewriter Light", ",", "American Typewriter Semibold", ",", "American Typewriter Bold", ",", "American Typewriter Condensed", ",", "American Typewriter Condensed Light", ",", "American Typewriter Condensed Bold", ",", "Andale Mono", ",", "Apple Braille Outline 6 Dot", ",", "Apple Braille Outline 8 Dot", ",", "Apple Braille Pinpoint 6 Dot", ",", "Apple Braille Pinpoint 8 Dot", ",", "Apple Braille", ",", "Apple Chancery Chancery", ",", "Apple Color Emoji", ",", "Apple SD Gothic Neo", ",", "Apple SD Gothic Neo Thin", ",", "Apple SD Gothic Neo UltraLight", ",", "Apple SD Gothic Neo Light", ",", "Apple SD Gothic Neo Medium", ",", "Apple SD Gothic Neo SemiBold", ",", "Apple SD Gothic Neo Bold", ",", "Apple SD Gothic Neo ExtraBold", ",", "Apple SD Gothic Neo Heavy", ",", "Apple Symbols", ",", "AppleGothic", ",", "AppleMyungjo", ",", "Arial", ",", "Arial Italic", ",", "Arial Bold", ",", "Arial Bold Italic", ",", "Arial Black", ",", "Arial Hebrew", ",", "Arial Hebrew Light", ",", "Arial Hebrew Bold", ",", "Arial Hebrew Scholar", ",", "Arial Hebrew Scholar Light", ",", "Arial Hebrew Scholar Bold", ",", "Arial Narrow", ",", "Arial Narrow Italic", ",", "Arial Narrow Bold", ",", "Arial Narrow Bold Italic", ",", "Arial Rounded MT Bold", ",", "Arial Unicode MS", ",", "Avenir Book", ",", "Avenir Roman", ",", "Avenir Book Oblique", ",", "Avenir Oblique", ",", "Avenir Light", ",", "Avenir Light Oblique", ",", "Avenir Medium", ",", "Avenir Medium Oblique", ",", "Avenir Heavy", ",", "Avenir Heavy Oblique", ",", "Avenir Black", ",", "Avenir Black Oblique", ",", "Avenir Next", ",", "Avenir Next Italic", ",", "Avenir Next Ultra Light", ",", "Avenir Next Ultra Light Italic", ",", "Avenir Next Medium", ",", "Avenir Next Medium Italic", ",", "Avenir Next Demi Bold", ",", "Avenir Next Demi Bold Italic", ",", "Avenir Next Bold", ",", "Avenir Next Bold Italic", ",", "Avenir Next Heavy", ",", "Avenir Next Heavy Italic", ",", "Avenir Next Condensed", ",", "Avenir Next Condensed Italic", ",", "Avenir Next Condensed Ultra Light", ",", "Avenir Next Condensed Ultra Light Italic", ",", "Avenir Next Condensed Medium", ",", "Avenir Next Condensed Medium Italic", ",", "Avenir Next Condensed Demi Bold", ",", "Avenir Next Condensed Demi Bold Italic", ",", "Avenir Next Condensed Bold", ",", "Avenir Next Condensed Bold Italic", ",", "Avenir Next Condensed Heavy", ",", "Avenir Next Condensed Heavy Italic", ",", "Ayuthaya", ",", "Baghdad", ",", "Bangla MN", ",", "Bangla MN Bold", ",", "Bangla Sangam MN", ",", "Bangla Sangam MN Bold", ",", "Baskerville", ",", "Baskerville Italic", ",", "Baskerville SemiBold", ",", "Baskerville SemiBold Italic", ",", "Baskerville Bold", ",", "Baskerville Bold Italic", ",", "Beirut", ",", "Big Caslon Medium", ",", "Bodoni 72 Book", ",", "Bodoni 72 Book Italic", ",", "Bodoni 72 Bold", ",", "Bodoni 72 Oldstyle Book", ",", "Bodoni 72 Oldstyle Book Italic", ",", "Bodoni 72 Oldstyle Bold", ",", "Bodoni 72 Smallcaps Book", ",", "Bodoni Ornaments", ",", "Bradley Hand Bold", ",", "Brush Script MT Italic", ",", "Chalkboard", ",", "Chalkboard Bold", ",", "Chalkboard SE", ",", "Chalkboard SE Light", ",", "Chalkboard SE Bold", ",", "Chalkduster", ",", "Charter Roman", ",", "Charter Italic", ",", "Charter Bold", ",", "Charter Bold Italic", ",", "Charter Black", ",", "Charter Black Italic", ",", "Cochin", ",", "Cochin Italic", ",", "Cochin Bold", ",", "Cochin Bold Italic", ",", "Comic Sans MS", ",", "Comic Sans MS Bold", ",", "Copperplate", ",", "Copperplate Light", ",", "Copperplate Bold", ",", "Corsiva Hebrew", ",", "Corsiva Hebrew Bold", ",", "Courier New", ",", "Courier New Italic", ",", "Courier New Bold", ",", "Courier New Bold Italic", ",", "Damascus", ",", "Damascus Light", ",", "Damascus Medium", ",", "Damascus Semi Bold", ",", "Damascus Bold", ",", "DecoType Naskh", ",", "Devanagari MT", ",", "Devanagari MT Bold", ",", "Devanagari Sangam MN", ",", "Devanagari Sangam MN Bold", ",", "Didot", ",", "Didot Italic", ",", "Didot Bold", ",", "DIN Alternate Bold", ",", "DIN Condensed Bold", ",", "Diwan Kufi", ",", "Diwan Thuluth", ",", "Euphemia UCAS", ",", "Euphemia UCAS Italic", ",", "Euphemia UCAS Bold", ",", "Farah", ",", "Farisi", ",", "Futura Medium", ",", "Futura Medium Italic", ",", "Futura Bold", ",", "Futura Condensed Medium", ",", "Futura Condensed ExtraBold", ",", "Galvji", ",", "Galvji Oblique", ",", "Galvji Bold", ",", "Galvji Bold Oblique", ",", "GB18030 Bitmap", ",", "Geeza Pro", ",", "Geeza Pro Bold", ",", "Geneva", ",", "Georgia", ",", "Georgia Italic", ",", "Georgia Bold", ",", "Georgia Bold Italic", ",", "Gill Sans", ",", "Gill Sans Italic", ",", "Gill Sans Light", ",", "Gill Sans Light Italic", ",", "Gill Sans SemiBold", ",", "Gill Sans SemiBold Italic", ",", "Gill Sans Bold", ",", "Gill Sans Bold Italic", ",", "Gill Sans UltraBold", ",", "Grantha Sangam MN", ",", "Grantha Sangam MN Bold", ",", "Gujarati MT", ",", "Gujarati MT Bold", ",", "Gujarati Sangam MN", ",", "Gujarati Sangam MN Bold", ",", "Gurmukhi MN", ",", "Gurmukhi MN Bold", ",", "Gurmukhi MT", ",", "Gurmukhi Sangam MN", ",", "Gurmukhi Sangam MN Bold", ",", "Heiti SC Light", ",", "Heiti SC Medium", ",", "Heiti TC Light", ",", "Heiti TC Medium", ",", "Helvetica", ",", "Helvetica Oblique", ",", "Helvetica Light", ",", "Helvetica Light Oblique", ",", "Helvetica Bold", ",", "Helvetica Bold Oblique", ",", "Helvetica Neue", ",", "Helvetica Neue Italic", ",", "Helvetica Neue UltraLight", ",", "Helvetica Neue UltraLight Italic", ",", "Helvetica Neue Thin", ",", "Helvetica Neue Thin Italic", ",", "Helvetica Neue Light", ",", "Helvetica Neue Light Italic", ",", "Helvetica Neue Medium", ",", "Helvetica Neue Medium Italic", ",", "Helvetica Neue Bold", ",", "Helvetica Neue Bold Italic", ",", "Helvetica Neue Condensed Bold", ",", "Helvetica Neue Condensed Black", ",", "Herculanum", ",", "Hiragino Maru Gothic ProN W4", ",", "Hiragino Mincho ProN W3", ",", "Hiragino Mincho ProN W6", ",", "Hiragino Sans W0", ",", "Hiragino Sans W1", ",", "Hiragino Sans W2", ",", "Hiragino Sans W3", ",", "Hiragino Sans W4", ",", "Hiragino Sans W5", ",", "Hiragino Sans W6", ",", "Hiragino Sans W7", ",", "Hiragino Sans W8", ",", "Hiragino Sans W9", ",", "Hiragino Sans GB W3", ",", "Hiragino Sans GB W6", ",", "Hoefler Text", ",", "Hoefler Text Ornaments", ",", "Hoefler Text Italic", ",", "Hoefler Text Black", ",", "Hoefler Text Black Italic", ",", "Impact", ",", "InaiMathi", ",", "InaiMathi Bold", ",", "ITF Devanagari Book", ",", "ITF Devanagari Light", ",", "ITF Devanagari Medium", ",", "ITF Devanagari Demi", ",", "ITF Devanagari Bold", ",", "ITF Devanagari Marathi Book", ",", "ITF Devanagari Marathi Light", ",", "ITF Devanagari Marathi Medium", ",", "ITF Devanagari Marathi Demi", ",", "ITF Devanagari Marathi Bold", ",", "Kailasa", ",", "Kailasa Bold", ",", "Kannada MN", ",", "Kannada MN Bold", ",", "Kannada Sangam MN", ",", "Kannada Sangam MN Bold", ",", "Kefa", ",", "Kefa Bold", ",", "Khmer MN", ",", "Khmer MN Bold", ",", "Khmer Sangam MN", ",", "Kohinoor Bangla", ",", "Kohinoor Bangla Light", ",", "Kohinoor Bangla Medium", ",", "Kohinoor Bangla Semibold", ",", "Kohinoor Bangla Bold", ",", "Kohinoor Devanagari", ",", "Kohinoor Devanagari Light", ",", "Kohinoor Devanagari Medium", ",", "Kohinoor Devanagari Semibold", ",", "Kohinoor Devanagari Bold", ",", "Kohinoor Gujarati", ",", "Kohinoor Gujarati Light", ",", "Kohinoor Gujarati Medium", ",", "Kohinoor Gujarati Semibold", ",", "Kohinoor Gujarati Bold", ",", "Kohinoor Telugu", ",", "Kohinoor Telugu Light", ",", "Kohinoor Telugu Medium", ",", "Kohinoor Telugu Semibold", ",", "Kohinoor Telugu Bold", ",", "Kokonor", ",", "Krungthep", ",", "KufiStandardGK", ",", "Lao MN", ",", "Lao MN Bold", ",", "Lao Sangam MN", ",", "Lato", ",", "Lato Italic", ",", "Lato Hairline", ",", "Lato Hairline Italic", ",", "Lato Thin", ",", "Lato Thin Italic", ",", "Lato Light", ",", "Lato Light Italic", ",", "Lato Medium", ",", "Lato Medium Italic", ",", "Lato Semibold", ",", "Lato Semibold Italic", ",", "Lato Bold", ",", "Lato Bold Italic", ",", "Lato Heavy", ",", "Lato Heavy Italic", ",", "Lato Black", ",", "Lato Black Italic", ",", "Lucida Grande", ",", "Lucida Grande Bold", ",", "Luminari", ",", "Malayalam MN", ",", "Malayalam MN Bold", ",", "Malayalam Sangam MN", ",", "Malayalam Sangam MN Bold", ",", "Marker Felt Thin", ",", "Marker Felt Wide", ",", "Menlo", ",", "Menlo Italic", ",", "Menlo Bold", ",", "Menlo Bold Italic", ",", "Microsoft Sans Serif", ",", "Mishafi", ",", "Mishafi Gold", ",", "Monaco", ",", "Mshtakan", ",", "Mshtakan Oblique", ",", "Mshtakan Bold", ",", "Mshtakan BoldOblique", ",", "Mukta Mahee", ",", "Mukta Mahee ExtraLight", ",", "Mukta Mahee Light", ",", "Mukta Mahee Medium", ",", "Mukta Mahee SemiBold", ",", "Mukta Mahee Bold", ",", "Mukta Mahee ExtraBold", ",", "Muna", ",", "Muna Bold", ",", "Muna Black", ",", "Myanmar MN", ",", "Myanmar MN Bold", ",", "Myanmar Sangam MN", ",", "Myanmar Sangam MN Bold", ",", "Nadeem", ",", "New Peninim MT", ",", "New Peninim MT Inclined", ",", "New Peninim MT Bold", ",", "New Peninim MT Bold Inclined", ",", "Noteworthy Light", ",", "Noteworthy Bold", ",", "Noto Nastaliq Urdu", ",", "Noto Nastaliq Urdu Bold", ",", "Noto Sans Batak", ",", "Noto Sans Kannada", ",", "Noto Sans Kannada ExtraLight", ",", "Noto Sans Kannada Thin", ",", "Noto Sans Kannada Light", ",", "Noto Sans Kannada Medium", ",", "Noto Sans Kannada SemiBold", ",", "Noto Sans Kannada Bold", ",", "Noto Sans Kannada ExtraBold", ",", "Noto Sans Kannada Black", ",", "Noto Sans Myanmar", ",", "Noto Sans Myanmar ExtraLight", ",", "Noto Sans Myanmar Thin", ",", "Noto Sans Myanmar Light", ",", "Noto Sans Myanmar Medium", ",", "Noto Sans Myanmar SemiBold", ",", "Noto Sans Myanmar Bold", ",", "Noto Sans Myanmar ExtraBold", ",", "Noto Sans Myanmar Black", ",", "Noto Sans NKo", ",", "Noto Sans Oriya", ",", "Noto Sans Oriya Bold", ",", "Noto Sans Syriac", ",", "Noto Sans Syriac Thin", ",", "Noto Sans Syriac ExtraLight", ",", "Noto Sans Syriac Light", ",", "Noto Sans Syriac Medium", ",", "Noto Sans Syriac SemiBold", ",", "Noto Sans Syriac Bold", ",", "Noto Sans Syriac ExtraBold", ",", "Noto Sans Syriac Black", ",", "Noto Sans Tagalog", ",", "Noto Serif Myanmar", ",", "Noto Serif Myanmar ExtraLight", ",", "Noto Serif Myanmar Thin", ",", "Noto Serif Myanmar Light", ",", "Noto Serif Myanmar Medium", ",", "Noto Serif Myanmar SemiBold", ",", "Noto Serif Myanmar Bold", ",", "Noto Serif Myanmar ExtraBold", ",", "Noto Serif Myanmar Black", ",", "Optima", ",", "Optima Italic", ",", "Optima Bold", ",", "Optima Bold Italic", ",", "Optima ExtraBlack", ",", "Oriya MN", ",", "Oriya MN Bold", ",", "Oriya Sangam MN", ",", "Oriya Sangam MN Bold", ",", "Palatino", ",", "Palatino Italic", ",", "Palatino Bold", ",", "Palatino Bold Italic", ",", "Papyrus", ",", "Papyrus Condensed", ",", "Party LET Plain", ",", "Phosphate Inline", ",", "Phosphate Solid", ",", "PingFang HK", ",", "PingFang HK Ultralight", ",", "PingFang HK Thin", ",", "PingFang HK Light", ",", "PingFang HK Medium", ",", "PingFang HK Semibold", ",", "PingFang MO", ",", "PingFang MO Ultralight", ",", "PingFang MO Thin", ",", "PingFang MO Light", ",", "PingFang MO Medium", ",", "PingFang MO Semibold", ",", "PingFang SC", ",", "PingFang SC Ultralight", ",", "PingFang SC Thin", ",", "PingFang SC Light", ",", "PingFang SC Medium", ",", "PingFang SC Semibold", ",", "PingFang TC", ",", "PingFang TC Ultralight", ",", "PingFang TC Thin", ",", "PingFang TC Light", ",", "PingFang TC Medium", ",", "PingFang TC Semibold", ",", "Plantagenet Cherokee", ",", "PT Mono", ",", "PT Mono Bold", ",", "PT Sans", ",", "PT Sans Italic", ",", "PT Sans Bold", ",", "PT Sans Bold Italic", ",", "PT Sans Caption", ",", "PT Sans Caption Bold", ",", "PT Sans Narrow", ",", "PT Sans Narrow Bold", ",", "PT Serif", ",", "PT Serif Italic", ",", "PT Serif Bold", ",", "PT Serif Bold Italic", ",", "PT Serif Caption", ",", "PT Serif Caption Italic", ",", "Raanana", ",", "Raanana Bold", ",", "Rockwell", ",", "Rockwell Italic", ",", "Rockwell Bold", ",", "Rockwell Bold Italic", ",", "Sana", ",", "Sathu", ",", "sAUklAUe schlimm", ",", "Savoye LET Plain", ",", "Shree Devanagari 714", ",", "Shree Devanagari 714 Italic", ",", "Shree Devanagari 714 Bold", ",", "Shree Devanagari 714 Bold Italic", ",", "SignPainter HouseScript", ",", "SignPainter HouseScript Semibold", ",", "Silom", ",", "Sinhala MN", ",", "Sinhala MN Bold", ",", "Sinhala Sangam MN", ",", "Sinhala Sangam MN Bold", ",", "Skia", ",", "Skia Light", ",", "Skia Bold", ",", "Skia Black", ",", "Skia Extended", ",", "Skia Light Extended", ",", "Skia Black Extended", ",", "Skia Condensed", ",", "Skia Light Condensed", ",", "Skia Black Condensed", ",", "Snell Roundhand", ",", "Snell Roundhand Bold", ",", "Snell Roundhand Black", ",", "Songti SC", ",", "Songti SC Light", ",", "Songti SC Bold", ",", "Songti SC Black", ",", "Songti TC", ",", "Songti TC Light", ",", "Songti TC Bold", ",", "STIX Two Math", ",", "STIX Two Text", ",", "STIX Two Text Italic", ",", "STIX Two Text Medium", ",", "STIX Two Text Medium Italic", ",", "STIX Two Text SemiBold", ",", "STIX Two Text SemiBold Italic", ",", "STIX Two Text Bold", ",", "STIX Two Text Bold Italic", ",", "STSong", ",", "Sukhumvit Set Text", ",", "Sukhumvit Set Light", ",", "Sukhumvit Set Medium", ",", "Sukhumvit Set Semi Bold", ",", "Sukhumvit Set Bold", ",", "Sukhumvit Set Thin", ",", "Symbol", ",", "Tahoma", ",", "Tahoma Bold", ",", "Tamil MN", ",", "Tamil MN Bold", ",", "Tamil Sangam MN", ",", "Tamil Sangam MN Bold", ",", "Telugu MN", ",", "Telugu MN Bold", ",", "Telugu Sangam MN", ",", "Telugu Sangam MN Bold", ",", "Thonburi", ",", "Thonburi Light", ",", "Thonburi Bold", ",", "Times New Roman", ",", "Times New Roman Italic", ",", "Times New Roman Bold", ",", "Times New Roman Bold Italic", ",", "Trattatello", ",", "Trebuchet MS", ",", "Trebuchet MS Italic", ",", "Trebuchet MS Bold", ",", "Trebuchet MS Bold Italic", ",", "Verdana", ",", "Verdana Italic", ",", "Verdana Bold", ",", "Verdana Bold Italic", ",", "Waseem", ",", "Waseem Light", ",", "Webdings", ",", "Wingdings", ",", "Wingdings 2", ",", "Wingdings 3", ",", "Write Sans Bold", ",", "Write Sans", ",", "Zapf Dingbats", ",", "Zapfino" ],
					"maxclass" : "umenu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 918.0, 217.0, 139.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 138.166666666666686, 175.0, 126.333333333333314, 18.0 ],
					"varname" : "fontname"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-37",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "bang", "float", "float", "float" ],
					"patching_rect" : [ 755.596348142857551, 239.0, 91.000000000000227, 18.0 ],
					"text" : "t b f f f"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 0.0 ],
					"format" : 6,
					"htricolor" : [ 0.784314, 0.145098, 0.023529, 1.0 ],
					"id" : "obj-36",
					"maxclass" : "flonum",
					"maximum" : 1.0,
					"minimum" : 0.0,
					"numdecimalplaces" : 4,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 755.596348142857551, 196.0, 50.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 81.166666666666686, 175.0, 50.0, 18.0 ],
					"prototypename" : "dsx_float",
					"tricolor" : [ 0.784314, 0.145098, 0.023529, 1.0 ],
					"triscale" : 0.5,
					"varname" : "testscale"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-35",
					"maxclass" : "newobj",
					"numinlets" : 4,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 755.596348142857551, 279.0, 91.0, 18.0 ],
					"text" : "pak scale f f f"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-11",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 119.0, 547.0, 58.0, 18.0 ],
					"text" : "zl.change"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-34",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "bang" ],
					"patching_rect" : [ 14.0, 213.0, 75.0, 18.0 ],
					"text" : "t b b"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-31",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 14.0, 180.0, 80.0, 18.0 ],
					"text" : "r draw"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-196",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 14.0, 517.0, 124.0, 18.0 ],
					"saved_object_attributes" : 					{
						"filename" : "dsx_renderchain.js",
						"parameter_enable" : 0
					}
,
					"text" : "js dsx_renderchain.js"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Consolas",
					"fontsize" : 10.0,
					"id" : "obj-62",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "jit_gl_texture", "" ],
					"patching_rect" : [ 14.0, 465.0, 245.0, 18.0 ],
					"text" : "jit.gl.texture player @adapt 0 @automatic 0",
					"varname" : "texturecapture"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-15",
					"index" : 0,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 14.0, 568.0, 25.0, 25.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-3",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "", "", "" ],
					"patching_rect" : [ 1290.0, 25.0, 58.0, 18.0 ],
					"restore" : 					{
						"enable" : [ 1 ],
						"fontalign" : [ 1 ],
						"fontface" : [ 0 ],
						"fontname" : [ 0 ],
						"hue" : [ 0.44 ],
						"luminance" : [ 1.0 ],
						"positionx" : [ 0.0 ],
						"positiony" : [ 0.0 ],
						"positionz" : [ 0.55 ],
						"rendermode" : [ 1 ],
						"saturation" : [ 0.0 ],
						"testscale" : [ 0.29 ],
						"transparency" : [ 1.0 ]
					}
,
					"text" : "autopattr",
					"varname" : "u534008804"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-32",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "list" ],
					"patching_rect" : [ 562.0, 221.0, 47.0, 18.0 ],
					"text" : "hsv2rgb"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-30",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 562.0, 191.0, 58.0, 18.0 ],
					"text" : "pak f f f"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 0.0 ],
					"format" : 6,
					"htricolor" : [ 0.784314, 0.145098, 0.023529, 1.0 ],
					"id" : "obj-29",
					"maxclass" : "flonum",
					"maximum" : 1.0,
					"minimum" : 0.0,
					"numdecimalplaces" : 4,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 601.0, 159.0, 50.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 81.166666666666686, 238.0, 50.0, 18.0 ],
					"prototypename" : "dsx_float",
					"tricolor" : [ 0.784314, 0.145098, 0.023529, 1.0 ],
					"triscale" : 0.5,
					"varname" : "luminance"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 0.0 ],
					"format" : 6,
					"htricolor" : [ 0.784314, 0.145098, 0.023529, 1.0 ],
					"id" : "obj-28",
					"maxclass" : "flonum",
					"maximum" : 1.0,
					"minimum" : 0.0,
					"numdecimalplaces" : 4,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 581.5, 132.5, 50.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 81.166666666666686, 217.0, 50.0, 18.0 ],
					"prototypename" : "dsx_float",
					"tricolor" : [ 0.784314, 0.145098, 0.023529, 1.0 ],
					"triscale" : 0.5,
					"varname" : "saturation"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 0.0 ],
					"format" : 6,
					"htricolor" : [ 0.784314, 0.145098, 0.023529, 1.0 ],
					"id" : "obj-25",
					"maxclass" : "flonum",
					"maximum" : 1.0,
					"minimum" : 0.0,
					"numdecimalplaces" : 4,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 562.0, 109.0, 50.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 81.166666666666686, 196.0, 50.0, 18.0 ],
					"prototypename" : "dsx_float",
					"tricolor" : [ 0.784314, 0.145098, 0.023529, 1.0 ],
					"triscale" : 0.5,
					"varname" : "hue"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-23",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1107.0, 206.0, 150.0, 16.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 0.5, 239.0, 75.0, 16.0 ],
					"text" : "Luminance",
					"textcolor" : [ 0.901960784313726, 0.901960784313726, 0.901960784313726, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"bgcolor" : [ 0.501960784313725, 0.501960784313725, 0.501960784313725, 1.0 ],
					"bordercolor" : [ 0.807843137254902, 0.898039215686275, 0.909803921568627, 0.0 ],
					"id" : "obj-24",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1220.0, 772.0, 128.0, 128.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 0.5, 238.0, 136.666666666666686, 20.0 ],
					"proportion" : 0.5,
					"rounded" : 2
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-21",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1092.0, 191.0, 150.0, 16.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 0.5, 218.0, 75.0, 16.0 ],
					"text" : "Saturation",
					"textcolor" : [ 0.901960784313726, 0.901960784313726, 0.901960784313726, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"bgcolor" : [ 0.501960784313725, 0.501960784313725, 0.501960784313725, 1.0 ],
					"bordercolor" : [ 0.807843137254902, 0.898039215686275, 0.909803921568627, 0.0 ],
					"id" : "obj-22",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1220.0, 787.0, 128.0, 128.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 0.5, 217.0, 136.666666666666686, 20.0 ],
					"proportion" : 0.5,
					"rounded" : 2
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-19",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1091.0, 171.5, 150.0, 16.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 0.5, 197.0, 75.0, 16.0 ],
					"text" : "Hue",
					"textcolor" : [ 0.901960784313726, 0.901960784313726, 0.901960784313726, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"bgcolor" : [ 0.501960784313725, 0.501960784313725, 0.501960784313725, 1.0 ],
					"bordercolor" : [ 0.807843137254902, 0.898039215686275, 0.909803921568627, 0.0 ],
					"id" : "obj-20",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1235.0, 802.0, 128.0, 128.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 0.5, 196.0, 136.666666666666686, 20.0 ],
					"proportion" : 0.5,
					"rounded" : 2
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 0.0 ],
					"format" : 6,
					"htricolor" : [ 0.784314, 0.145098, 0.023529, 1.0 ],
					"id" : "obj-13",
					"maxclass" : "flonum",
					"maximum" : 1.0,
					"minimum" : 0.0,
					"numdecimalplaces" : 4,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 656.0, 221.0, 50.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 81.166666666666686, 259.0, 50.0, 18.0 ],
					"prototypename" : "dsx_float",
					"tricolor" : [ 0.784314, 0.145098, 0.023529, 1.0 ],
					"triscale" : 0.5,
					"varname" : "transparency"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-17",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1076.0, 156.5, 150.0, 16.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 0.5, 260.0, 75.0, 16.0 ],
					"text" : "Transparency",
					"textcolor" : [ 0.901960784313726, 0.901960784313726, 0.901960784313726, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"bgcolor" : [ 0.501960784313725, 0.501960784313725, 0.501960784313725, 1.0 ],
					"bordercolor" : [ 0.807843137254902, 0.898039215686275, 0.909803921568627, 0.0 ],
					"id" : "obj-18",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1220.0, 787.0, 128.0, 128.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 0.5, 259.0, 136.666666666666686, 20.0 ],
					"proportion" : 0.5,
					"rounded" : 2
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-10",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 562.0, 250.0, 113.0, 18.0 ],
					"text" : "join 2 @triggers -1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-4",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 562.0, 279.0, 80.0, 18.0 ],
					"text" : "prepend color"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-81",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1061.0, 141.5, 150.0, 16.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 0.5, 176.0, 75.0, 16.0 ],
					"text" : "Font Size",
					"textcolor" : [ 0.901960784313726, 0.901960784313726, 0.901960784313726, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"bgcolor" : [ 0.501960784313725, 0.501960784313725, 0.501960784313725, 1.0 ],
					"bordercolor" : [ 0.807843137254902, 0.898039215686275, 0.909803921568627, 0.0 ],
					"id" : "obj-82",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1205.0, 772.0, 128.0, 128.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 0.5, 175.0, 136.666666666666686, 20.0 ],
					"proportion" : 0.5,
					"rounded" : 2
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 0.0 ],
					"format" : 6,
					"htricolor" : [ 0.784314, 0.145098, 0.023529, 1.0 ],
					"id" : "obj-16",
					"maxclass" : "flonum",
					"maximum" : 4.0,
					"minimum" : -4.0,
					"numdecimalplaces" : 4,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 458.000000000000114, 196.0, 50.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 189.166666666666686, 154.0, 50.0, 18.0 ],
					"prototypename" : "dsx_float",
					"tricolor" : [ 0.784314, 0.145098, 0.023529, 1.0 ],
					"triscale" : 0.5,
					"varname" : "positionz"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 0.0 ],
					"format" : 6,
					"htricolor" : [ 0.784314, 0.145098, 0.023529, 1.0 ],
					"id" : "obj-27",
					"maxclass" : "flonum",
					"maximum" : 4.0,
					"minimum" : -4.0,
					"numdecimalplaces" : 4,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 428.666666666666742, 227.0, 50.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 138.166666666666686, 154.0, 50.0, 18.0 ],
					"prototypename" : "dsx_float",
					"tricolor" : [ 0.784314, 0.145098, 0.023529, 1.0 ],
					"triscale" : 0.5,
					"varname" : "positiony"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 0.0 ],
					"format" : 6,
					"htricolor" : [ 0.784314, 0.145098, 0.023529, 1.0 ],
					"id" : "obj-126",
					"maxclass" : "flonum",
					"maximum" : 4.0,
					"minimum" : -4.0,
					"numdecimalplaces" : 4,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 399.333333333333371, 252.0, 50.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 81.166666666666686, 154.0, 50.0, 18.0 ],
					"prototypename" : "dsx_float",
					"tricolor" : [ 0.784314, 0.145098, 0.023529, 1.0 ],
					"triscale" : 0.5,
					"varname" : "positionx"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-26",
					"maxclass" : "newobj",
					"numinlets" : 4,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 370.0, 279.0, 107.0, 18.0 ],
					"text" : "pak position f f f"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 14.5, 67.0, 205.0, 18.0 ],
					"restore" : [ "(re)" ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0,
						"parameter_mappable" : 0
					}
,
					"text" : "pattr textfield @default_interp off",
					"varname" : "textfield"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.423529411764706, 0.423529411764706, 0.423529411764706, 1.0 ],
					"border" : 4.0,
					"bordercolor" : [ 0.32156862745098, 0.341176470588235, 0.368627450980392, 1.0 ],
					"id" : "obj-1",
					"maxclass" : "textedit",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 107.5, 96.0, 235.0, 109.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 0.5, 43.0, 264.0, 110.0 ],
					"rounded" : 2.0,
					"text" : "(re)",
					"varname" : "textedit"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-71",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "jit_matrix", "" ],
					"patching_rect" : [ 100.5, 318.0, 828.0, 18.0 ],
					"text" : "jit.gl.text3d player @color 1 1 1 1 @fontname Consolas @transform_reset 0 @blend_enable 1 @depth_enable 0 @blend_mode 4 1 @smooth_shading 1 @layer 10",
					"varname" : "gen_text"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-63",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1070.0, 117.0, 150.0, 16.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 0.5, 154.0, 75.0, 16.0 ],
					"text" : "Position",
					"textcolor" : [ 0.901960784313726, 0.901960784313726, 0.901960784313726, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"bgcolor" : [ 0.501960784313725, 0.501960784313725, 0.501960784313725, 1.0 ],
					"id" : "obj-33",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1199.0, 747.5, 128.0, 128.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 0.5, 154.0, 264.0, 20.0 ],
					"proportion" : 0.5,
					"rounded" : 2
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"bgcolor" : [ 0.32156862745098, 0.341176470588235, 0.368627450980392, 1.0 ],
					"bordercolor" : [ 0.807843137254902, 0.898039215686275, 0.909803921568627, 0.0 ],
					"id" : "obj-9",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1235.0, 802.0, 128.0, 128.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 0.5, 1.0, 198.666666666666686, 20.0 ],
					"proportion" : 0.5,
					"rounded" : 2
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-71", 0 ],
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-97", 0 ],
					"midpoints" : [ 987.5, 245.0, 927.5, 245.0 ],
					"source" : [ "obj-100", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-62", 0 ],
					"source" : [ "obj-11", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-26", 1 ],
					"source" : [ "obj-126", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 1 ],
					"source" : [ "obj-13", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-84", 0 ],
					"source" : [ "obj-14", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-26", 3 ],
					"source" : [ "obj-16", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 0 ],
					"source" : [ "obj-196", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 0 ],
					"source" : [ "obj-196", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-2", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-30", 0 ],
					"source" : [ "obj-25", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-71", 0 ],
					"midpoints" : [ 379.5, 311.0, 110.0, 311.0 ],
					"source" : [ "obj-26", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-26", 2 ],
					"source" : [ "obj-27", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-30", 1 ],
					"source" : [ "obj-28", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-30", 2 ],
					"source" : [ "obj-29", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-32", 0 ],
					"source" : [ "obj-30", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-34", 0 ],
					"source" : [ "obj-31", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 0 ],
					"source" : [ "obj-32", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-62", 0 ],
					"source" : [ "obj-34", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-71", 0 ],
					"source" : [ "obj-34", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-71", 0 ],
					"midpoints" : [ 765.096348142857551, 311.0, 110.0, 311.0 ],
					"source" : [ "obj-35", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 0 ],
					"source" : [ "obj-36", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-35", 3 ],
					"source" : [ "obj-37", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-35", 2 ],
					"source" : [ "obj-37", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-35", 1 ],
					"source" : [ "obj-37", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-35", 0 ],
					"source" : [ "obj-37", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-71", 0 ],
					"midpoints" : [ 1133.0, 308.0, 110.0, 308.0 ],
					"source" : [ "obj-38", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-100", 0 ],
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-71", 0 ],
					"midpoints" : [ 571.5, 311.0, 110.0, 311.0 ],
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-39", 0 ],
					"source" : [ "obj-40", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-38", 0 ],
					"midpoints" : [ 1133.0, 274.0, 1133.0, 274.0 ],
					"source" : [ "obj-41", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-64", 0 ],
					"source" : [ "obj-42", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-83", 0 ],
					"midpoints" : [ 679.5, 568.84997599999997, 640.5, 568.84997599999997 ],
					"source" : [ "obj-46", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"midpoints" : [ 241.5, 756.0, 39.5, 756.0 ],
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 0 ],
					"source" : [ "obj-57", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-196", 0 ],
					"source" : [ "obj-62", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-46", 0 ],
					"source" : [ "obj-64", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-83", 0 ],
					"source" : [ "obj-64", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-42", 0 ],
					"source" : [ "obj-65", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-125", 0 ],
					"source" : [ "obj-83", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-84", 0 ],
					"source" : [ "obj-83", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"source" : [ "obj-84", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"source" : [ "obj-92", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-71", 0 ],
					"midpoints" : [ 1019.5, 312.0, 110.0, 312.0 ],
					"source" : [ "obj-95", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-95", 0 ],
					"midpoints" : [ 1053.5, 274.0, 1019.5, 274.0 ],
					"source" : [ "obj-96", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-99", 0 ],
					"source" : [ "obj-97", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-71", 0 ],
					"midpoints" : [ 927.5, 311.0, 110.0, 311.0 ],
					"source" : [ "obj-99", 0 ]
				}

			}
 ],
		"originid" : "pat-1114",
		"dependency_cache" : [ 			{
				"name" : "dsx_renderchain.js",
				"bootpath" : "~/Nextcloud/dsx.package/_js",
				"patcherrelativepath" : "../_js",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "dsx_text2.js",
				"bootpath" : "~/Nextcloud/dsx.package/generators",
				"patcherrelativepath" : ".",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "getid.js",
				"bootpath" : "~/Nextcloud/dsx.package/_js",
				"patcherrelativepath" : "../_js",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "hsv2rgb.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.route.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "scalingfunctions.js",
				"bootpath" : "~/Nextcloud/dsx.package/_js",
				"patcherrelativepath" : "../_js",
				"type" : "TEXT",
				"implicit" : 1
			}
 ],
		"autosave" : 0,
		"styles" : [ 			{
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
				"name" : "dsx.tab",
				"default" : 				{
					"clearcolor" : [ 0.862745098039216, 0.870588235294118, 0.87843137254902, 1.0 ],
					"color" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 0.0 ],
					"elementcolor" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 0.0 ],
					"fontname" : [ "Geneva" ],
					"fontsize" : [ 9.0 ],
					"textcolor_inverse" : [ 0.780392156862745, 0.141176470588235, 0.019607843137255, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "dsx.tab.vertical",
				"default" : 				{
					"clearcolor" : [ 0.862745098039216, 0.870588235294118, 0.87843137254902, 1.0 ],
					"color" : [ 0.780392156862745, 0.141176470588235, 0.019607843137255, 1.0 ],
					"elementcolor" : [ 0.729411764705882, 0.737254901960784, 0.741176470588235, 1.0 ],
					"textcolor_inverse" : [ 0.223529411764706, 0.23921568627451, 0.258823529411765, 1.0 ]
				}
,
				"parentstyle" : "dsx.tab",
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
 ]
	}

}
