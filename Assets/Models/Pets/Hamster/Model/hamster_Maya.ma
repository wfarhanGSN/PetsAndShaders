//Maya ASCII 2016 scene
//Name: hamster_Maya.ma
//Last modified: Fri, May 24, 2019 11:02:56 AM
//Codeset: 1252
requires maya "2016";
requires -nodeType "mentalrayFramebuffer" -nodeType "mentalrayOptions" -nodeType "mentalrayGlobals"
		 -nodeType "mentalrayItemsList" -dataType "byteArray" "Mayatomr" "2016.0 - 3.13.1.10 ";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2016";
fileInfo "version" "2016";
fileInfo "cutIdentifier" "201603180400-990260";
fileInfo "osv" "Microsoft Windows 8 Business Edition, 64-bit  (Build 9200)\n";
createNode transform -s -n "persp";
	rename -uid "A7D0A7AD-407A-1F0A-77E2-D0BF3FA8AC29";
	setAttr ".t" -type "double3" -0.009526161300314584 9.9621799623522929 24.884876630216066 ;
	setAttr ".r" -type "double3" -20.138352729673912 -4.2000000000000268 -7.9727978338263246e-016 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "65EF868A-4D32-C7ED-2E09-A78DBEB60696";
	setAttr -k off ".v";
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 21.893986749678191;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "C5AD4BFE-4F18-30C7-C16F-98948EA120A7";
	setAttr ".t" -type "double3" 0 100.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "F028DB69-427B-5C2B-A820-F48717C7A8CA";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	rename -uid "E334B853-45AC-E1E5-06B6-29A8E01C9DC5";
	setAttr ".t" -type "double3" 1.4403346835779247 7.03682183411913 100.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "23BDD058-434F-E677-2631-D68E4031DD5F";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 8.0011767823237268;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "28C8EA79-4E9D-9F13-7808-45833589D437";
	setAttr ".t" -type "double3" 100.1 6.4178481976179986 0.77022738667859159 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "0E17C878-429E-2D70-3AA4-D3A3BD472DBB";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 6.663528174331427;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "Hamster";
	rename -uid "E5DF53CD-4051-A09C-89FF-5D9832C0F240";
createNode joint -n "hamsterRotCenter" -p "Hamster";
	rename -uid "5849875D-4F29-351D-CCA2-3892D9613EBA";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".t" -type "double3" -0.0067329159937798977 6.1693062782287598 -0.15235787630081177 ;
	setAttr ".jo" -type "double3" 0 92.530337321221467 0 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.044148363414217462 0 -0.99902498567745857 0 0 1 0 0
		 0.99902498567745857 0 -0.044148363414217462 0 -0.0067329159937798977 6.1693062782287598 -0.15235787630081177 1;
	setAttr ".radi" 0.5;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "hamsterRoot" -p "hamsterRotCenter";
	rename -uid "892220D3-43E6-DE66-47CA-CC80E671EE1D";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".t" -type "double3" -0.15250657498836517 -2.912883996963501 1.7362641494985239e-016 ;
	setAttr ".r" -type "double3" 0 -92.530337321221452 -1.2272583964979943e-006 ;
	setAttr ".s" -type "double3" 1.1500000000000001 1.15 1.1500000000000001 ;
	setAttr ".jo" -type "double3" 0 0 1.2272583996785493e-006 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 1.1500000000000001 -2.8183361971427663e-018 -7.5633943552588789e-016 0
		 2.8183361971428029e-018 1.1499999999999999 6.3775584429095611e-017 0 7.5633943552588789e-016 -6.3775584429095623e-017 1.1500000000000001 0
		 -2.9813577127890678e-010 3.2564222812652588 2.5926580049517867e-009 1;
	setAttr ".radi" 0.5;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "hips" -p "hamsterRoot";
	rename -uid "BD1A6F53-4E8E-1A79-87CF-7F967E9476D5";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".t" -type "double3" 2.1148005266485105e-016 -1.2564220428466797 -1.75295691895764e-016 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 1.1500000000000001 -2.8183361971427663e-018 -7.5633943552588789e-016 0
		 2.8183361971428029e-018 1.1499999999999999 6.3775584429095611e-017 0 7.5633943552588789e-016 -6.3775584429095623e-017 1.1500000000000001 0
		 -2.9813553161786592e-010 1.8115369319915773 2.5926577232326911e-009 1;
	setAttr ".radi" 0.5;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "Tail" -p "hips";
	rename -uid "01B2651B-4AC4-B0A1-CB98-5C81245BA2E3";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".t" -type "double3" 8.8361243565839172e-016 0.1596589982509613 -2.0348351001739502 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 1.1499999999999999 0 0 0 0 1.1499999999999999 0 0 0 0 1.1499999999999999 0
		 0 1.9951449999999999 -2.3400609999999999 1;
	setAttr ".radi" 0.5;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID" 5;
createNode transform -n "transform1" -p "hips";
	rename -uid "DD97C9D3-467C-3C3E-F9C0-AB98F1F676EF";
	setAttr ".t" -type "double3" -3.7734788404587046e-016 -1.5752493143081665 -1.6532669644173212e-016 ;
	setAttr ".s" -type "double3" 0.86956521739130421 0.86956521739130443 0.86956521739130421 ;
createNode joint -n "l_leg" -p "transform1";
	rename -uid "D71F0722-4905-C7D5-15ED-67B364E6C67F";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".t" -type "double3" 1.5727174282073975 1.9718871116638184 0 ;
	setAttr ".jo" -type "double3" 0 0 -48.160361626045685 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.66704799999999997 -0.74501499999999998 0 0 0.74501499999999998 0.66704799999999997 0 0
		 0 0 1 0 1.5727169999999999 1.971886 0 1;
	setAttr ".radi" 0.56896528735300378;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "l_foot" -p "l_leg";
	rename -uid "2C0A5208-430B-0BE9-338D-4A8EA6FB8890";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".t" -type "double3" 2.3329999446868896 8.8817841970012523e-016 0 ;
	setAttr ".r" -type "double3" -6.3611093629270335e-015 5.5659706925611543e-015 6.3611093629270335e-015 ;
	setAttr ".jo" -type "double3" 90.000000000000057 -68.492169818939828 -41.839638373954379 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0 -0.36662800000000001 0.93036799999999997 0 0 0.93036799999999997 0.36662800000000001 0
		 -1 0 0 0 3.1291600000000002 0.23352300000000001 -6.1572800000000007e-008 1;
	setAttr ".radi" 0.5;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "l_toeTip" -p "l_foot";
	rename -uid "182D8F19-4A86-4718-6FEA-AE8C040CF20D";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".t" -type "double3" 0.97233176231384277 5.5511151231257827e-017 -3.23851533028555e-016 ;
	setAttr ".jo" -type "double3" -21.507830181060172 89.999999999999986 0 ;
	setAttr ".ssc" no;
	setAttr ".radi" 0.73165299072847634;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "r_leg" -p "transform1";
	rename -uid "BE351C61-4373-1026-8ED5-9A8EC2042165";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".t" -type "double3" -1.5727200508117676 1.9718899726867676 3.2881566556274335e-039 ;
	setAttr ".r" -type "double3" -2.544443745167734e-014 3.9587541225760457e-020 5.899003291906387e-028 ;
	setAttr ".jo" -type "double3" 179.99999914622634 1.42181873983004e-022 48.160361626045692 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.66704799999999997 0.74501499999999998 0 0 0.74501499999999998 -0.66704799999999997 1.49012e-008 0
		 1.1101600000000001e-008 -9.9397900000000009e-009 -1 0 -1.5727199999999999 1.971889 0 1;
	setAttr ".radi" 0.56896528735300378;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "r_foot" -p "r_leg";
	rename -uid "C1C4F556-4130-C79F-5BCF-AFBF8B85BDD9";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".t" -type "double3" -2.3329999446868896 3.6297808492236072e-006 5.4087949532622207e-014 ;
	setAttr ".r" -type "double3" 179.99999999999997 180 180 ;
	setAttr ".jo" -type "double3" 90.000001734928205 -68.492169249431754 -41.839639988075135 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0 0.36662800000000001 -0.93036799999999997 0 0 -0.93036799999999997 -0.36662800000000001 0
		 -1 0 0 0 -3.1291600000000002 0.23352300000000001 -1.5461000000000001e-007 1;
	setAttr ".radi" 0.5;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "r_toeTip" -p "r_foot";
	rename -uid "9FF5E964-497A-4054-358E-10B35D64DD31";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".t" -type "double3" -0.97233211994171143 4.8671500962882419e-007 -8.8817841970012523e-016 ;
	setAttr ".jo" -type "double3" -21.5078301810602 89.999999999999929 0 ;
	setAttr ".ssc" no;
	setAttr ".radi" 0.73165299072847634;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "Belly" -p "hamsterRoot";
	rename -uid "6027DD93-414E-C55D-FF9F-B9B7A2A16B0C";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".t" -type "double3" -5.5518642178885107e-016 -0.19503900408744812 1.7587560415267944 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 1.1499999999999999 0 0 0 0 1.1499999999999999 0 0 0 0 1.1499999999999999 0
		 0 3.0321280000000002 2.02257 1;
	setAttr ".radi" 0.5;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "torsoMid" -p "hamsterRoot";
	rename -uid "4E22B429-498B-8C56-73E4-4BB2789A63B6";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".t" -type "double3" 2.0840090261312446e-016 -4.4408920985006262e-016 -2.2083783443810015e-016 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 1.1500000000000001 -2.8183361971427663e-018 -7.5633943552588789e-016 0
		 2.8183361971428029e-018 1.1499999999999999 6.3775584429095611e-017 0 7.5633943552588789e-016 -6.3775584429095623e-017 1.1500000000000001 0
		 -2.9813553161786876e-010 3.2564222812652583 2.5926577509882771e-009 1;
	setAttr ".radi" 0.5;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "torso" -p "torsoMid";
	rename -uid "92D55C83-4D37-483F-B3AF-4DB9F340FFD3";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".t" -type "double3" -2.8897380991611386e-018 1.1791349649429321 -8.952661134700634e-017 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 1.1500000000000001 -2.8183361971427663e-018 -7.5633943552588789e-016 0
		 2.8183361971428029e-018 1.1499999999999999 6.3775584429095611e-017 0 7.5633943552588789e-016 -6.3775584429095623e-017 1.1500000000000001 0
		 -2.9813553161786882e-010 4.6124274909496297 2.5926577232326957e-009 1;
	setAttr ".radi" 0.5;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "head" -p "torso";
	rename -uid "066078CC-460C-C39C-3F31-8797406AC691";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".t" -type "double3" -2.2581527796885223e-016 1.2649170160293579 0.51265501976013184 ;
	setAttr ".jo" -type "double3" -89.999999999999972 -22.83365417791752 89.999999999999986 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 6.7912723420983526e-016 1.0598806814087751 0.44626555006685242 0
		 -1.1428402717144213e-015 0.44626555006685237 -1.0598806814087753 0 -1.1500000000000001 1.3049398402903573e-016 1.2670420268534601e-015 0
		 -2.9813539999926882e-010 6.0670820593833916 0.58955327531680957 1;
	setAttr ".radi" 0.50805080584563012;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "l_ear" -p "head";
	rename -uid "86B2DC8C-451D-870C-74E9-2C9701C9CCE9";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".t" -type "double3" 1.0426100492477417 0.99523800611495972 -1.4074410200119019 ;
	setAttr ".jo" -type "double3" 67.166345822082477 89.999999999999972 0 ;
	setAttr ".ssc" no;
	setAttr ".radi" 0.5;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "l_eye" -p "head";
	rename -uid "C3352B45-47FF-5A69-E241-C98A08A3B609";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".t" -type "double3" 1.1712729930877686 -0.46241301298141479 -0.51023697853088379 ;
	setAttr ".r" -type "double3" -3.1805546814635168e-015 -3.1805546814635164e-015 1.2722218725854067e-014 ;
	setAttr ".jo" -type "double3" 67.166345822082477 89.999999999999972 0 ;
	setAttr ".ssc" no;
	setAttr ".radi" 0.5;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "l_t_eyeLid" -p "head";
	rename -uid "44EFD942-4FF1-5265-4B48-258FFBCD536D";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".t" -type "double3" 1.1712729930877686 -0.46241301298141479 -0.51023697853088379 ;
	setAttr ".r" -type "double3" -3.1805546814635168e-015 -3.1805546814635164e-015 1.2722218725854067e-014 ;
	setAttr ".jo" -type "double3" 67.166345822082477 89.999999999999972 0 ;
	setAttr ".ssc" no;
	setAttr ".radi" 0.5;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "l_b_eyeLid" -p "head";
	rename -uid "1E9DB622-4874-7406-9906-52A4434220E9";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".t" -type "double3" 1.1712729930877686 -0.46241301298141479 -0.51023697853088379 ;
	setAttr ".r" -type "double3" -3.1805546814635168e-015 -3.1805546814635164e-015 1.2722218725854067e-014 ;
	setAttr ".jo" -type "double3" 67.166345822082477 89.999999999999972 0 ;
	setAttr ".ssc" no;
	setAttr ".radi" 0.5;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "l_eyebrow" -p "head";
	rename -uid "4DEE1621-4BF8-AB86-C716-10895E105AE9";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".t" -type "double3" 1.6928050518035889 -0.17478500306606293 -0.49606999754905701 ;
	setAttr ".r" -type "double3" -3.1805546814635168e-015 -3.1805546814635164e-015 1.2722218725854067e-014 ;
	setAttr ".jo" -type "double3" 67.166345822082477 89.999999999999972 0 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 1.1499999999999999 0 0 0 0 1.1499999999999999 0 0 0 0 1.1499999999999999 0
		 0.57048100000000002 7.7832549999999996 1.530246 1;
	setAttr ".radi" 0.5;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "jaw" -p "head";
	rename -uid "560435B0-4C76-B45E-5356-82A9E4C1E846";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".t" -type "double3" 0.45437100529670715 -0.40596398711204529 2.3978483650254577e-016 ;
	setAttr ".r" -type "double3" 9.4600599258906501e-015 -8.5065924733132517e-015 -1.2722218725854067e-014 ;
	setAttr ".jo" -type "double3" 2.1332537315343442e-014 -1.3968854722704823e-014 -96.075529473230333 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0 -0.55593700000000001 1.0066949999999999 0 0 1.0066949999999999 0.55593700000000001 0
		 -1.1499999999999999 0 0 0 0 6.3674920000000004 1.2225999999999999 1;
	setAttr ".radi" 0.50595871727454689;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "jawTip" -p "jaw";
	rename -uid "02DDA195-4A0C-0919-0C65-5CACDF7FE4DA";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".t" -type "double3" 1.1152019500732422 0 0 ;
	setAttr ".jo" -type "double3" -28.909183651147856 90 0 ;
	setAttr ".ssc" no;
	setAttr ".radi" 0.50595871727454689;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "hair1" -p "head";
	rename -uid "88410F83-41DE-93BF-8F95-C68439FD6F55";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".t" -type "double3" 1.4727280139923096 0.62427800893783569 2.245684520879388e-018 ;
	setAttr ".r" -type "double3" 1.0938931357300015e-014 -2.0158572395207257e-014 -3.1805546814635187e-015 ;
	setAttr ".jo" -type "double3" -6.261682951377833e-015 3.8889511533389414e-015 10.407711312489981 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0 1.1230610000000001 0.24745400000000001 0 0 0.24745400000000001 -1.1230610000000001 0
		 -1.1499999999999999 0 0 0 0 7.906587 0.585121 1;
	setAttr ".radi" 0.5;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "hair2" -p "hair1";
	rename -uid "20655577-4E78-79C6-E671-C6ADE771181E";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".t" -type "double3" 0.53796261548995972 0.2128652036190033 -1.1612112316763132e-016 ;
	setAttr ".r" -type "double3" -2.052540260045673e-015 4.0562277536566413e-015 1.9083328088781101e-014 ;
	setAttr ".jo" -type "double3" -180 1.6495811281282431e-014 92.754621867547542 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0 0.19319500000000001 -1.133656 0 0 1.133656 0.19319500000000001 0
		 1.1499999999999999 0 0 0 0 8.5634289999999993 0.47917599999999999 1;
	setAttr ".radi" 0.5;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "hair3" -p "hair2";
	rename -uid "0385E9F3-4510-BE4D-167A-029EE88178D5";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".t" -type "double3" 1.0047538280487061 -0.037985559552907944 6.3668733640361881e-017 ;
	setAttr ".jo" -type "double3" -9.6713209978800077 -89.999999999999986 0 ;
	setAttr ".ssc" no;
	setAttr ".radi" 0.5;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "r_ear" -p "head";
	rename -uid "2FE1712A-4511-B33F-AE37-CD9320E4FE87";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".t" -type "double3" 1.0426110029220581 0.9952390193939209 1.4074399471282959 ;
	setAttr ".r" -type "double3" 1.2722218725854067e-014 0 0 ;
	setAttr ".jo" -type "double3" -112.83365417791751 89.999999999999957 0 ;
	setAttr ".ssc" no;
	setAttr ".radi" 0.5;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "r_eye" -p "head";
	rename -uid "065FAB8E-4FA7-65D8-0ECC-489C7BC9BF9C";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".t" -type "double3" 1.1712750196456909 -0.46241098642349243 0.51023697853088379 ;
	setAttr ".r" -type "double3" 1.2722218725854067e-014 0 0 ;
	setAttr ".jo" -type "double3" -112.83365417791751 89.999999999999957 0 ;
	setAttr ".ssc" no;
	setAttr ".radi" 0.5;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "nose" -p "head";
	rename -uid "95187030-402F-FC56-A4DC-1DABFCDAF381";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".t" -type "double3" 1.2188169956207275 -1.434054970741272 7.8104643368523017e-016 ;
	setAttr ".r" -type "double3" -3.1805546814635168e-015 -3.1805546814635164e-015 1.2722218725854067e-014 ;
	setAttr ".jo" -type "double3" 67.166345822082477 89.999999999999972 0 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 1.1499999999999999 0 0 0 0 1.1499999999999999 0 0 0 0 1.1499999999999999 0
		 0 6.718915 2.653397 1;
	setAttr ".radi" 0.53858210420965302;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "r_t_eyeLid" -p "head";
	rename -uid "64445E95-4D05-0BBD-038E-20A31F8B397A";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".t" -type "double3" 1.1712750196456909 -0.46241098642349243 0.51023697853088379 ;
	setAttr ".r" -type "double3" 1.2722218725854067e-014 0 0 ;
	setAttr ".jo" -type "double3" -112.83365417791751 89.999999999999957 0 ;
	setAttr ".ssc" no;
	setAttr ".radi" 0.5;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "r_b_eyeLid" -p "head";
	rename -uid "994A6D8A-421F-A336-34DA-B39F81B04208";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".t" -type "double3" 1.1712750196456909 -0.46241098642349243 0.51023697853088379 ;
	setAttr ".r" -type "double3" 1.2722218725854067e-014 0 0 ;
	setAttr ".jo" -type "double3" -112.83365417791751 89.999999999999957 0 ;
	setAttr ".ssc" no;
	setAttr ".radi" 0.5;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "r_eyebrow" -p "head";
	rename -uid "B296DB35-4F2E-639C-3545-8897B6A17BFF";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".t" -type "double3" 1.69281005859375 -0.17478600144386292 0.49606999754905701 ;
	setAttr ".r" -type "double3" 1.2722218725854067e-014 0 0 ;
	setAttr ".jo" -type "double3" -112.83365417791751 89.999999999999957 0 ;
	setAttr ".ssc" no;
	setAttr ".radi" 0.5;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "l_eyeAlt" -p "head";
	rename -uid "5376804C-4BFE-EAF8-1F78-48A763FA0E40";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".uoc" 1;
	setAttr ".t" -type "double3" 1.097337330165927 -0.65830070762888027 -0.76010495153509627 ;
	setAttr ".r" -type "double3" -3.1805546814635168e-015 -3.1805546814635164e-015 1.2722218725854067e-014 ;
	setAttr ".jo" -type "double3" 67.166345822082477 89.999999999999972 0 ;
	setAttr ".ssc" no;
	setAttr ".radi" 0.5;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "r_eyeAlt" -p "head";
	rename -uid "D54B9F78-4043-B21C-76E9-0E8319FC29F1";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".uoc" 1;
	setAttr ".t" -type "double3" 1.0973368148826914 -0.6583034483217074 0.76010521713205736 ;
	setAttr ".r" -type "double3" -3.1805546814635168e-015 -3.1805546814635164e-015 1.2722218725854067e-014 ;
	setAttr ".jo" -type "double3" -112.83365417791754 89.999999999999901 0 ;
	setAttr ".ssc" no;
	setAttr ".radi" 0.5;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "l_eyeAltLid" -p "head";
	rename -uid "53194234-4395-D0A2-E7B0-2D84BA7F5AFA";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".uoc" 1;
	setAttr ".t" -type "double3" 1.097337330165927 -0.65830070762888027 -0.76010495153509627 ;
	setAttr ".r" -type "double3" -3.1805546814635168e-015 -3.1805546814635164e-015 1.2722218725854067e-014 ;
	setAttr ".jo" -type "double3" 67.166345822082477 89.999999999999972 0 ;
	setAttr ".ssc" no;
	setAttr ".radi" 0.5;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "r_eyeAltLid" -p "head";
	rename -uid "455D80F2-496C-D22E-C0F3-26AB829B9E9F";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".uoc" 1;
	setAttr ".t" -type "double3" 1.0973368148826914 -0.6583034483217074 0.76010521713205736 ;
	setAttr ".r" -type "double3" -3.1805546814635168e-015 -3.1805546814635164e-015 1.2722218725854067e-014 ;
	setAttr ".jo" -type "double3" -112.83365417791754 89.999999999999886 0 ;
	setAttr ".ssc" no;
	setAttr ".radi" 0.5;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID" 5;
createNode transform -n "transform4" -p "torso";
	rename -uid "A0B6DEF5-4FFB-D37A-6784-F6B8338E4469";
	setAttr ".t" -type "double3" -3.7734788404587046e-016 -4.0108060836791992 -1.6532669644173212e-016 ;
	setAttr ".s" -type "double3" 0.86956521739130421 0.86956521739130443 0.86956521739130421 ;
createNode joint -n "l_arm" -p "transform4";
	rename -uid "D74D0974-431B-7553-1D02-C58246F85FE7";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".t" -type "double3" 2.3913657665252686 5.3576545715332031 9.9756510154149283e-016 ;
	setAttr ".r" -type "double3" -5.0785958751542547e-015 0.42653337837692035 -1.5143554624854498e-012 ;
	setAttr ".jo" -type "double3" 0 0 29.109855556891073 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.87368800000000002 0.486485 0 0 -0.486485 0.87368800000000002 0 0
		 0 0 1 0 2.3913639999999998 5.3576509999999997 0 1;
	setAttr ".radi" 0.55358392784955979;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "l_elbow" -p "l_arm";
	rename -uid "6692D1FF-4AC4-08B3-05F6-39BC0A19FD87";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".t" -type "double3" 0.89899998903274536 1.7763568394002505e-015 0 ;
	setAttr ".r" -type "double3" 8.0230387194077985e-014 -0.76377901543568194 9.5761118460925082e-013 ;
	setAttr ".jo" -type "double3" 0 0 3.1805546814635176e-015 ;
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" 0 -34.999374107716783 0 ;
	setAttr ".bps" -type "matrix" 0.87368800000000002 0.486485 0 0 -0.486485 0.87368800000000002 0 0
		 0 0 1 0 3.1764009999999998 5.7947740000000003 0 1;
	setAttr ".radi" 0.55358392784955979;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "l_hand" -p "l_elbow";
	rename -uid "41B173B3-46BC-09BC-C051-22BCBC83A258";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".t" -type "double3" 1.1369999647140503 -2.6645352591003757e-015 0 ;
	setAttr ".r" -type "double3" -0.027829575332378554 0.33609884633820497 -8.1625645957424776e-005 ;
	setAttr ".jo" -type "double3" 0 0 -4.7333869402162225 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.91085400000000005 0.41272999999999999 0 0 -0.41272999999999999 0.91085400000000005 0 0
		 0 0 1 0 4.1701600000000001 6.3481199999999998 0 1;
	setAttr ".radi" 0.5;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "joint6" -p "l_hand";
	rename -uid "A48F3C6F-4EEB-8AD3-3247-BC91371A01BA";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".t" -type "double3" 0.7101399302482605 -1.1657341758564144e-015 0 ;
	setAttr ".jo" -type "double3" 0 0 -24.376468616674881 ;
	setAttr ".ssc" no;
	setAttr ".radi" 0.5;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "r_arm" -p "transform4";
	rename -uid "A3844CAE-4FF8-3F4E-5EBB-8CB7DCA34508";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".t" -type "double3" -2.3913700580596924 5.3576498031616211 -1.0802229175784221e-015 ;
	setAttr ".r" -type "double3" 3.2992542781661696 0.41713855517061987 0.023781777019058495 ;
	setAttr ".jo" -type "double3" 179.99999914622634 -4.7393957994334661e-023 -29.109855556891095 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.87368800000000002 -0.486485 0 0 -0.486485 -0.87368800000000002 1.49012e-008 0
		 -7.2492000000000002e-009 -1.3019000000000001e-008 -1 0 -2.3913690000000001 5.357647 0 1;
	setAttr ".radi" 0.55358392784955979;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "r_elbow" -p "r_arm";
	rename -uid "B721B970-4C94-76AD-C1B2-C49CB7DE2AA6";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".t" -type "double3" -0.89899998903274536 -9.6304302132921293e-006 -1.4350460652689384e-013 ;
	setAttr ".r" -type "double3" 5.6385637192560322e-005 -0.74815347548212396 0.00047257008700245045 ;
	setAttr ".jo" -type "double3" 1.2074182697257333e-006 -2.0107553451038647e-022 -6.1136869589018724e-030 ;
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" 0 -20.927402719163894 0 ;
	setAttr ".bps" -type "matrix" 0.87368800000000002 -0.486485 0 0 -0.486485 -0.87368800000000002 -6.1722599999999999e-009 0
		 3.0027200000000002e-009 5.3926400000000001e-009 -1 0 -3.1763979999999998 5.7947769999999998 0 1;
	setAttr ".radi" 0.55358392784955979;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "r_hand" -p "r_elbow";
	rename -uid "5716E0E8-4D81-D7FC-42A3-949800D080D9";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".t" -type "double3" -1.1369999647140503 3.1770493933436228e-006 -1.9609583528919054e-014 ;
	setAttr ".r" -type "double3" -3.3146616304119392 0.054994286752854935 0.0079913437328781103 ;
	setAttr ".jo" -type "double3" 1.2061151989182416e-009 -2.9182487556354341e-008 -4.7333869402162243 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.91085400000000005 -0.41272999999999999 5.0933299999999996e-010 0
		 -0.41272999999999999 -0.91085400000000005 -6.1512200000000006e-009 0 3.0027200000000002e-009 5.3926400000000001e-009 -1 0
		 -4.1701629999999996 6.348122 0 1;
	setAttr ".radi" 0.5;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "joint6" -p "r_hand";
	rename -uid "144ED616-41F9-7767-C2EE-88ABE6189D8E";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	setAttr ".t" -type "double3" -0.71013432741165161 4.4119456106272992e-006 -3.6172020934088778e-010 ;
	setAttr ".jo" -type "double3" 3.7160042789070096e-008 -1.7204303905032107e-007 -24.376468616674899 ;
	setAttr ".ssc" no;
	setAttr ".radi" 0.5;
	setAttr -k on ".filmboxTypeID" 5;
createNode transform -n "Geo" -p "Hamster";
	rename -uid "5C17DA08-4096-E719-4C8A-A68D6A24440B";
	setAttr ".t" -type "double3" 0 3.8914182186126709 0 ;
createNode transform -n "nose" -p "Geo";
	rename -uid "D0FC73EE-4388-F307-8456-10B0D4ADC97B";
	addAttr -is true -ci true -k true -sn "currentUVSet" -ln "currentUVSet" -dt "string";
	setAttr -l on ".t";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".r";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".s";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" -0.0008699143989358536 2.3413608776915069 2.3873459810366402 ;
	setAttr ".sp" -type "double3" -0.0008699143989358536 2.3413608776915069 2.3873459810366402 ;
	setAttr -k on ".currentUVSet" -type "string" "map1";
createNode mesh -n "noseShape" -p "|Hamster|Geo|nose";
	rename -uid "41168553-4D70-4F44-53C4-01ACBCCEEAC7";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".vcs" 2;
createNode mesh -n "noseShapeOrig" -p "|Hamster|Geo|nose";
	rename -uid "D3FD3A15-43D9-F6D2-BC2F-2DBEBA04A50C";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 100 ".uvst[0].uvsp[0:99]" -type "float2" 0.32921147 0.12390526
		 0.32970864 0.11823995 0.33231309 0.11931809 0.33168837 0.12541965 0.33351108 0.10934372
		 0.33038142 0.10871886 0.32672337 0.11715826 0.3265391 0.12265449 0.32751426 0.10897201
		 0.32376212 0.12138681 0.32371986 0.11623041 0.32457924 0.10921885 0.32043433 0.12054404
		 0.32045582 0.11613896 0.32101938 0.1114223 0.31714058 0.12161922 0.31701201 0.11764207
		 0.31737921 0.11344345 0.31108743 0.12712258 0.30943242 0.1233975 0.30870494 0.1185514
		 0.33017579 0.097189508 0.33373019 0.096664093 0.32736388 0.098383114 0.32386449 0.1002527
		 0.31908247 0.1035732 0.31417364 0.10847102 0.32012871 0.13522784 0.31667519 0.13285351
		 0.32058176 0.12458506 0.3233636 0.12610093 0.31331873 0.13029453 0.31807789 0.12463196
		 0.32393575 0.13711889 0.32609212 0.12762591 0.32790634 0.13854036 0.32860646 0.12920424
		 0.33199367 0.13933368 0.33129957 0.13039269 0.33447912 0.1244486 0.33507034 0.11867151
		 0.33678114 0.10904427 0.33816561 0.11799868 0.33728907 0.12358489 0.33967894 0.10953467
		 0.3411617 0.11747615 0.34014368 0.12279694 0.34255555 0.11016709 0.3443765 0.11769884
		 0.34321848 0.12218698 0.34485808 0.11313052 0.34723699 0.11905897 0.34607992 0.12294823
		 0.34827489 0.11468919 0.35330039 0.1242184 0.35193384 0.12782431 0.35407162 0.11961237
		 0.33715692 0.097611599 0.34000331 0.098653704 0.34355527 0.10041272 0.34834245 0.10405386
		 0.35300264 0.10917141 0.34743145 0.13396123 0.34387791 0.13619594 0.33980036 0.12752427
		 0.34278864 0.12657253 0.35036752 0.13116078 0.34529072 0.12620069 0.34000114 0.13786291
		 0.33692735 0.12859362 0.33605626 0.13906677 0.33416364 0.12967223 0.30012923 0.13945974
		 0.2976841 0.13359362 0.29594123 0.12578237 0.32219556 0.087702163 0.33280289 0.086502455
		 0.31766823 0.089101754 0.31196791 0.091786936 0.304263 0.097811207 0.29806128 0.10664659
		 0.31248388 0.15315552 0.30724376 0.14901344 0.30311897 0.1443157 0.31837577 0.15625601
		 0.32462224 0.15823704 0.33479533 0.15923728 0.37015736 0.13155872 0.36810508 0.13736023
		 0.37140474 0.12393297 0.34321216 0.087917738 0.34760475 0.08933115 0.35315233 0.091980502
		 0.36079893 0.09774062 0.36709684 0.10608749 0.36166671 0.14723396 0.35670194 0.15174304
		 0.3654736 0.14226946 0.35100475 0.15526409 0.34489679 0.15767029;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 100 ".vt[0:99]"  -0.27465615 2.67383981 2.219594 -0.26472181 2.7078495 2.20800376
		 -0.12315689 2.75664926 2.1866262 -0.081495024 2.75984311 2.18402004 -0.16543759 2.75467968 2.18885207
		 -0.20642789 2.74639249 2.19311452 -0.24141659 2.73134613 2.19938302 -0.26800111 2.63058567 2.23361754
		 -0.20459382 2.54577279 2.25923419 -0.16259153 2.50206637 2.27208686 -0.12134003 2.46459723 2.28290868
		 -0.092582472 2.4430325 2.28895307 -0.068906859 2.42968488 2.29247212 -0.0078669535 2.41958857 2.29352546
		 -0.016382167 2.76272535 2.1806407 0.23448731 2.71565032 2.18681717 0.24610119 2.68197966 2.19749212
		 0.048823237 2.76188087 2.17848754 0.09061116 2.75999022 2.17755437 0.13296577 2.7589817 2.17630744
		 0.1743264 2.75234365 2.17695451 0.2100345 2.73840189 2.18022275 0.24159744 2.63854909 2.21198845
		 0.18244705 2.55182147 2.2428062 0.1426456 2.50683928 2.25913072 0.1032852 2.46810818 2.2733767
		 0.075619623 2.44566131 2.281811 0.052624665 2.43158245 2.28731465 -0.044960879 2.79221535 2.88497972
		 -0.041254785 2.71097493 2.90214753 0.0044898293 2.71799302 2.90296245 0.0025656698 2.80560422 2.88309002
		 0.0066509792 2.56715584 2.89593887 -0.04476602 2.56599998 2.88313675 -0.091256306 2.7001071 2.89326167
		 -0.094107665 2.77773428 2.88108063 -0.088292398 2.57703543 2.86875939 -0.14391255 2.76229215 2.86840916
		 -0.13950361 2.689991 2.87770033 -0.13353699 2.58457232 2.86042929 -0.19621995 2.74575043 2.8452816
		 -0.19003513 2.68455863 2.85163593 -0.17936511 2.61822796 2.84328628 -0.24487557 2.74696279 2.81083775
		 -0.24315442 2.69249964 2.81393933 -0.22943798 2.637321 2.81009269 -0.31356195 2.80923319 2.68234873
		 -0.32798299 2.75592637 2.68518376 -0.32159084 2.68946695 2.69243145 -0.037601195 2.42001414 2.78156638
		 0.0062519284 2.40942526 2.79338694 -0.072564863 2.43397832 2.76640606 -0.11354483 2.46119261 2.75500178
		 -0.16879979 2.51346874 2.75238609 -0.23123254 2.57480574 2.73457217 -0.22812496 2.87707806 2.70246983
		 -0.17155658 2.89267111 2.71600008 -0.20116423 2.80133653 2.82382584 -0.15146631 2.81951213 2.84026551
		 -0.27865037 2.84995461 2.68833375 -0.23759577 2.79103041 2.80459332 -0.1139053 2.90035892 2.72294807
		 -0.09990833 2.83712411 2.84884477 -0.058278859 2.90818667 2.72160769 -0.049669437 2.85322905 2.84802198
		 -0.0037549995 2.91284347 2.71677923 0.0005541686 2.8634274 2.84342146 0.05047965 2.79370713 2.88092661
		 0.050277501 2.71240497 2.89826298 0.057243235 2.56759429 2.87880659 0.099979736 2.70309544 2.88514662
		 0.099720828 2.78076363 2.87285519 0.099498995 2.57996917 2.86078787 0.14753646 2.69447613 2.86551666
		 0.14915901 2.76687145 2.85597014 0.14391413 2.588907 2.84865093 0.19663575 2.69055271 2.83523011
		 0.20054466 2.75194812 2.8284409 0.18760124 2.62395644 2.8277123 0.2472731 2.6997354 2.79312921
		 0.24710397 2.75463867 2.78995633 0.2350816 2.64456511 2.79037833 0.32269281 2.76607156 2.65755916
		 0.30648452 2.81890917 2.6560328 0.31879377 2.6994648 2.66524363 0.04899016 2.42136693 2.77789307
		 0.082572572 2.43640184 2.75982165 0.12195025 2.46487308 2.7450099 0.1752698 2.5188477 2.73778296
		 0.23461631 2.58208585 2.71480107 0.16417252 2.89753127 2.70170569 0.22022361 2.8841424 2.68342519
		 0.15334688 2.82430887 2.82729626 0.20250566 2.80768323 2.8066957 0.27073178 2.85853958 2.66501546
		 0.23811795 2.79846454 2.78440404 0.10689475 2.9038198 2.7135303 0.10189322 2.84028554 2.84026074
		 0.051027998 2.9098959 2.71696973 0.051209129 2.85480642 2.84373856;
	setAttr -s 185 ".ed";
	setAttr ".ed[0:165]"  28 29 1 29 30 1 30 31 1 31 28 1 32 30 1 29 33 1 33 32 1
		 34 29 1 28 35 1 35 34 1 34 36 1 36 33 1 35 37 1 37 38 1 38 34 1 39 36 1 38 39 1 37 40 1
		 40 41 1 41 38 1 41 42 1 42 39 1 40 43 1 43 44 1 44 41 1 44 45 1 45 42 1 43 46 1 46 47 1
		 47 44 1 47 48 1 48 45 1 33 49 1 49 50 1 50 32 1 36 51 1 51 49 1 39 52 1 52 51 1 42 53 1
		 53 52 1 45 54 1 54 53 1 48 54 1 56 55 1 55 57 1 57 58 1 58 56 1 55 59 1 59 60 1 60 57 1
		 40 57 1 60 43 1 37 58 1 59 46 1 61 56 1 58 62 1 62 61 1 35 62 1 63 61 1 62 64 1 64 63 1
		 65 63 1 64 66 1 66 65 1 28 64 1 31 66 1 67 31 1 30 68 1 68 67 1 32 69 1 69 68 1 70 71 1
		 71 67 1 68 70 1 69 72 1 72 70 1 70 73 1 73 74 1 74 71 1 75 73 1 72 75 1 73 76 1 76 77 1
		 77 74 1 75 78 1 78 76 1 76 79 1 79 80 1 80 77 1 78 81 1 81 79 1 79 82 1 82 83 1 83 80 1
		 81 84 1 84 82 1 50 85 1 85 69 1 85 86 1 86 72 1 86 87 1 87 75 1 87 88 1 88 78 1 88 89 1
		 89 81 1 89 84 1 91 90 1 90 92 1 92 93 1 93 91 1 94 91 1 93 95 1 95 94 1 80 95 1 93 77 1
		 92 74 1 83 94 1 90 96 1 96 97 1 97 92 1 97 71 1 96 98 1 98 99 1 99 97 1 98 65 1 66 99 1
		 99 67 1 1 0 0 0 47 1 46 1 1 0 7 0 7 48 1 12 13 0 13 50 1 49 12 1 11 12 0 51 11 1
		 10 11 0 52 10 1 9 10 0 53 9 1 8 9 0 54 8 1 7 8 0 4 5 0 5 55 1 56 4 1 5 6 0 6 59 1
		 6 1 0 2 4 0 61 2 1 3 2 0 63 3 1 14 3 0 65 14 1 16 15 0 15 83 1 82 16 1 22 16 0 84 22 1
		 13 27 0 27 85 1 27 26 0;
	setAttr ".ed[166:184]" 26 86 1 26 25 0 25 87 1 25 24 0 24 88 1 24 23 0 23 89 1
		 23 22 0 20 19 0 19 90 1 91 20 1 21 20 0 94 21 1 15 21 0 19 18 0 18 96 1 18 17 0 17 98 1
		 17 14 0;
	setAttr -s 100 ".n[0:99]" -type "float3"  1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020;
	setAttr -s 86 -ch 342 ".fc[0:85]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 2 3
		f 4 4 -2 5 6
		mu 0 4 4 2 1 5
		f 4 7 -1 8 9
		mu 0 4 6 1 0 7
		f 4 10 11 -6 -8
		mu 0 4 6 8 5 1
		f 4 12 13 14 -10
		mu 0 4 7 9 10 6
		f 4 15 -11 -15 16
		mu 0 4 11 8 6 10
		f 4 17 18 19 -14
		mu 0 4 9 12 13 10
		f 4 -20 20 21 -17
		mu 0 4 10 13 14 11
		f 4 22 23 24 -19
		mu 0 4 12 15 16 13
		f 4 -25 25 26 -21
		mu 0 4 13 16 17 14
		f 4 -24 27 28 29
		mu 0 4 16 15 18 19
		f 4 -26 -30 30 31
		mu 0 4 17 16 19 20
		f 4 -7 32 33 34
		mu 0 4 4 5 21 22
		f 4 -12 35 36 -33
		mu 0 4 5 8 23 21
		f 4 -16 37 38 -36
		mu 0 4 8 11 24 23
		f 4 -22 39 40 -38
		mu 0 4 11 14 25 24
		f 4 -27 41 42 -40
		mu 0 4 14 17 26 25
		f 3 -32 43 -42
		mu 0 3 17 20 26
		f 4 44 45 46 47
		mu 0 4 27 28 29 30
		f 4 48 49 50 -46
		mu 0 4 28 31 32 29
		f 4 -23 51 -51 52
		mu 0 4 15 12 29 32
		f 4 -18 53 -47 -52
		mu 0 4 12 9 30 29
		f 4 -53 -50 54 -28
		mu 0 4 15 32 31 18
		f 4 55 -48 56 57
		mu 0 4 33 27 30 34
		f 4 -13 58 -57 -54
		mu 0 4 9 7 34 30
		f 4 59 -58 60 61
		mu 0 4 35 33 34 36
		f 4 62 -62 63 64
		mu 0 4 37 35 36 38
		f 4 -61 -59 -9 65
		mu 0 4 36 34 7 0
		f 4 66 -64 -66 -4
		mu 0 4 3 38 36 0
		f 4 67 -3 68 69
		mu 0 4 39 3 2 40
		f 4 -69 -5 70 71
		mu 0 4 40 2 4 41
		f 4 72 73 -70 74
		mu 0 4 42 43 39 40
		f 4 -75 -72 75 76
		mu 0 4 42 40 41 44
		f 4 -73 77 78 79
		mu 0 4 43 42 45 46
		f 4 80 -78 -77 81
		mu 0 4 47 45 42 44
		f 4 -79 82 83 84
		mu 0 4 46 45 48 49
		f 4 -81 85 86 -83
		mu 0 4 45 47 50 48
		f 4 -84 87 88 89
		mu 0 4 49 48 51 52
		f 4 -87 90 91 -88
		mu 0 4 48 50 53 51
		f 4 -89 92 93 94
		mu 0 4 52 51 54 55
		f 4 -92 95 96 -93
		mu 0 4 51 53 56 54
		f 4 97 98 -71 -35
		mu 0 4 22 57 41 4
		f 4 -76 -99 99 100
		mu 0 4 44 41 57 58
		f 4 -82 -101 101 102
		mu 0 4 47 44 58 59
		f 4 -86 -103 103 104
		mu 0 4 50 47 59 60
		f 4 -91 -105 105 106
		mu 0 4 53 50 60 61
		f 3 107 -96 -107
		mu 0 3 61 56 53
		f 4 108 109 110 111
		mu 0 4 62 63 64 65
		f 4 112 -112 113 114
		mu 0 4 66 62 65 67
		f 4 115 -114 116 -90
		mu 0 4 52 67 65 49
		f 4 -117 -111 117 -85
		mu 0 4 49 65 64 46
		f 4 -115 -116 -95 118
		mu 0 4 66 67 52 55
		f 4 119 120 121 -110
		mu 0 4 63 68 69 64
		f 4 -118 -122 122 -80
		mu 0 4 46 64 69 43
		f 4 123 124 125 -121
		mu 0 4 68 70 71 69
		f 4 126 -65 127 -125
		mu 0 4 70 37 38 71
		f 4 128 -74 -123 -126
		mu 0 4 71 39 43 69
		f 4 -68 -129 -128 -67
		mu 0 4 3 39 71 38
		f 4 129 130 -29 131
		mu 0 4 72 73 19 18
		f 4 132 133 -31 -131
		mu 0 4 73 74 20 19
		f 4 134 135 -34 136
		mu 0 4 75 76 22 21
		f 4 137 -137 -37 138
		mu 0 4 77 75 21 23
		f 4 139 -139 -39 140
		mu 0 4 78 77 23 24
		f 4 141 -141 -41 142
		mu 0 4 79 78 24 25
		f 4 143 -143 -43 144
		mu 0 4 80 79 25 26
		f 4 145 -145 -44 -134
		mu 0 4 74 80 26 20
		f 4 146 147 -45 148
		mu 0 4 81 82 28 27
		f 4 149 150 -49 -148
		mu 0 4 82 83 31 28
		f 4 151 -132 -55 -151
		mu 0 4 83 72 18 31
		f 4 152 -149 -56 153
		mu 0 4 84 81 27 33
		f 4 154 -154 -60 155
		mu 0 4 85 84 33 35
		f 4 156 -156 -63 157
		mu 0 4 86 85 35 37
		f 4 158 159 -94 160
		mu 0 4 87 88 55 54
		f 4 161 -161 -97 162
		mu 0 4 89 87 54 56
		f 4 163 164 -98 -136
		mu 0 4 76 90 57 22
		f 4 165 166 -100 -165
		mu 0 4 90 91 58 57
		f 4 167 168 -102 -167
		mu 0 4 91 92 59 58
		f 4 169 170 -104 -169
		mu 0 4 92 93 60 59
		f 4 171 172 -106 -171
		mu 0 4 93 94 61 60
		f 4 173 -163 -108 -173
		mu 0 4 94 89 56 61
		f 4 174 175 -109 176
		mu 0 4 95 96 63 62
		f 4 177 -177 -113 178
		mu 0 4 97 95 62 66
		f 4 179 -179 -119 -160
		mu 0 4 88 97 66 55
		f 4 180 181 -120 -176
		mu 0 4 96 98 68 63
		f 4 182 183 -124 -182
		mu 0 4 98 99 70 68
		f 4 184 -158 -127 -184
		mu 0 4 99 86 37 70;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "r_eye" -p "Geo";
	rename -uid "CE943C46-4EC2-075D-537D-F4ABB1038FBA";
	addAttr -is true -ci true -k true -sn "currentUVSet" -ln "currentUVSet" -dt "string";
	setAttr -l on ".t";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".r" -type "double3" 7.3798945255746 -9.8691654155119046 -2.7477374071871434 ;
	setAttr -l on ".r";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".s";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" -0.51023732061957927 2.7090989760132436 1.3933513123467485 ;
	setAttr ".sp" -type "double3" -0.51023732061957927 2.7090989760132436 1.3933513123467485 ;
	setAttr -k on ".currentUVSet" -type "string" "map1";
createNode mesh -n "r_eyeShape" -p "|Hamster|Geo|r_eye";
	rename -uid "16293923-49B8-B9B3-548D-C1811A4DB206";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".vcs" 2;
createNode mesh -n "r_eyeShapeOrig" -p "|Hamster|Geo|r_eye";
	rename -uid "84288F65-4F16-1DAB-4390-A288F777CF33";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 152 ".uvst[0].uvsp[0:151]" -type "float2" 0.1072522 0.72138464
		 0.10564662 0.7234422 0.1097933 0.72826922 0.11297952 0.72409034 0.10336577 0.72471434
		 0.10517634 0.73077404 0.10075751 0.7249431 0.099945515 0.73118609 0.098297596 0.72404057
		 0.094993353 0.72945315 0.096373707 0.72226024 0.091192737 0.72583747 0.095387675
		 0.71983159 0.089171499 0.7209968 0.09547691 0.71721661 0.089294687 0.71574873 0.096571296
		 0.71484059 0.091560021 0.71101356 0.098578855 0.71316195 0.095537692 0.70759028 0.10108063
		 0.71238798 0.10056985 0.70610493 0.10367481 0.7127564 0.10577402 0.70676982 0.10592855
		 0.71409726 0.11024344 0.70951372 0.10740296 0.71626747 0.11322697 0.71382529 0.10787208
		 0.71884471 0.11419428 0.71898204 0.11388458 0.73322427 0.11873597 0.72695917 0.10690223
		 0.7369712 0.098998606 0.73755372 0.091542043 0.73487455 0.08582411 0.72939092 0.0828273
		 0.72205669 0.083071925 0.71413976 0.086518951 0.70700765 0.092565238 0.70189035 0.10017083
		 0.69967878 0.1080189 0.70074642 0.11475271 0.70491773 0.11921159 0.71146595 0.12062066
		 0.71926272 0.11806454 0.73837078 0.12464892 0.72996074 0.10862711 0.74337453 0.097969294
		 0.7441051 0.087937079 0.74043852 0.080265336 0.73300785 0.076278664 0.72310072 0.076665208
		 0.71243012 0.08135885 0.70283979 0.089546219 0.69598645 0.099813081 0.69305575 0.11038461
		 0.69455236 0.11943415 0.70021993 0.12539825 0.70907927 0.12724318 0.71959931 0.031296507
		 0.87898093 0.013276994 0.85571408 0.057226419 0.89289922 0.086575925 0.89506227 0.11426029
		 0.88509834 0.13548917 0.86473715 0.14659873 0.83750772 0.1456767 0.80811971 0.13288629
		 0.78165168 0.11044338 0.7626704 0.08222346 0.75445276 0.053099036 0.75841588 0.028096184
		 0.77388042 0.011534572 0.79818255 0.0062881857 0.82712954 0.041224167 0.86753398
		 0.027007192 0.84930152 0.061632469 0.87840128 0.084698796 0.8800261 0.10642599 0.87212735
		 0.12305428 0.85607588 0.13171551 0.83465105 0.13091791 0.8115598 0.12079875 0.79079413
		 0.10311414 0.77593577 0.08091642 0.76955229 0.058039248 0.77274287 0.03843227 0.78496265
		 0.025483415 0.80410397 0.021439001 0.82686293 0.050618067 0.85669082 0.040002555
		 0.8432188 0.065799534 0.86467212 0.082918033 0.86578643 0.099007294 0.85984874 0.11127833
		 0.84787613 0.11762014 0.83194858 0.11694336 0.81482184 0.10935372 0.79945749 0.096179381
		 0.78850001 0.079685956 0.78385365 0.06272538 0.78630549 0.048230588 0.79544938 0.038697168
		 0.80969799 0.035785794 0.82659554 0.059638634 0.84611261 0.052558362 0.83721238 0.069744334
		 0.85132712 0.081086129 0.85197675 0.091726571 0.84800076 0.099797964 0.84000689 0.10391571
		 0.82942927 0.10342108 0.81809002 0.098308414 0.80795449 0.089551136 0.8007322 0.078598678
		 0.79774654 0.067371011 0.79941732 0.057823256 0.80555373 0.051562965 0.81501675 0.049700558
		 0.82621557 0.06838879 0.83548099 0.064825326 0.83110166 0.073376387 0.83813214 0.079024985
		 0.83850944 0.084295824 0.83644158 0.088359416 0.83249688 0.090466976 0.82723099 0.090138733
		 0.8215701 0.087653145 0.81647462 0.083231047 0.81292832 0.077781782 0.81136459 0.072183222
		 0.81227601 0.067366436 0.81527674 0.064272359 0.82003766 0.063371748 0.82563406 0.12247673
		 0.74380845 0.076987267 0.8249858 0.13089269 0.73313195 0.11044373 0.75013715 0.096876726
		 0.75102186 0.084125124 0.74631208 0.074393488 0.73682386 0.06936235 0.72419906 0.06989985
		 0.71062118 0.075913399 0.69843584 0.086362019 0.68974894 0.099439837 0.68606251 0.1128866
		 0.68801153 0.12437934 0.69526136 0.13193192 0.70656031 0.13423678 0.71995586 0.10157661
		 0.71867698;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 137 ".vt[0:136]"  -0.78427428 3.19914985 1.18801093 -0.75414276 3.2407918 1.17090678
		 -0.70905131 3.26559806 1.15398848 -0.65679646 3.26927209 1.14018345 -0.60641402 3.25118113 1.13187742
		 -0.56661505 3.21445656 1.13050652 -0.54428136 3.16544104 1.13630915 -0.54327482 3.11262178 1.14827883
		 -0.56376928 3.065117121 1.16435015 -0.60222119 3.031152964 1.18174064 -0.65198147 3.016595125 1.19744527
		 -0.70444673 3.02396369 1.2087481 -0.75054473 3.051981926 1.21369505 -0.78230524 3.095812798 1.21142912
		 -0.79423577 3.1478672 1.20234442 -0.87544549 3.2625618 1.25917757 -0.81813216 3.34177232 1.22664332
		 -0.73236352 3.38895106 1.19446445 -0.63296902 3.3959415 1.16820455 -0.53713572 3.36153245 1.15240574
		 -0.4614338 3.29167175 1.14979911 -0.41895267 3.19844842 1.16083407 -0.41703793 3.097971916 1.18360412
		 -0.45602044 3.0076174736 1.21417201 -0.52916032 2.94301271 1.24725127 -0.62381017 2.91532373 1.27712321
		 -0.7236051 2.92934155 1.29862189 -0.81128836 2.98263931 1.30803061 -0.87169969 3.065998077 1.30372322
		 -0.8943938 3.16501713 1.28644204 -0.93706012 3.32290554 1.35897613 -0.85817456 3.43193007 1.31419563
		 -0.74012363 3.49686742 1.26990521 -0.60331917 3.50648713 1.23376238 -0.47141606 3.45912862 1.21201658
		 -0.36722118 3.36297607 1.20842862 -0.30875105 3.23465967 1.22361767 -0.30611572 3.096367121 1.2549578
		 -0.35977072 2.9720068 1.29703057 -0.46043882 2.88308668 1.34256017 -0.59071332 2.84497738 1.38367474
		 -0.72806865 2.86426902 1.41326535 -0.84875476 2.93762422 1.42621601 -0.93190461 3.052365065 1.42028618
		 -0.96314007 3.18864894 1.39650166 -0.96308464 3.37428403 1.47763944 -0.87034941 3.50244951 1.42499757
		 -0.73157209 3.5787859 1.37293112 -0.57074893 3.5900929 1.33044326 -0.41568732 3.53441811 1.3048799
		 -0.29319867 3.42138624 1.30066109 -0.22446311 3.27054358 1.31851673 -0.22136489 3.10796905 1.35535979
		 -0.28444019 2.96177673 1.40481877 -0.40278247 2.85724163 1.45834255 -0.55592936 2.81244016 1.50667608
		 -0.71740043 2.8351171 1.54146254 -0.85927594 2.92135501 1.55668604 -0.95702392 3.056240797 1.54971528
		 -0.99374294 3.21645069 1.52175474 -0.95097238 3.41165471 1.60355461 -0.85346431 3.54641438 1.54820383
		 -0.70754558 3.62668204 1.49345744 -0.53844601 3.63857317 1.44878244 -0.37540427 3.58003259 1.42190361
		 -0.24661237 3.4611814 1.41746867 -0.17433931 3.30257511 1.43624306 -0.17108181 3.13163447 1.47498214
		 -0.23740312 2.97791767 1.5269866 -0.3618356 2.86800504 1.58326411 -0.52286381 2.82089734 1.63408518
		 -0.6926446 2.84474373 1.67066157 -0.8418209 2.93541694 1.68666899 -0.94459981 3.077247381 1.67933846
		 -0.98320878 3.24570107 1.64993966 -0.90190834 3.4313693 1.72439301 -0.80917317 3.55953479 1.67175114
		 -0.67039579 3.63587141 1.61968446 -0.50957263 3.64717841 1.5771966 -0.35451096 3.59150338 1.55163312
		 -0.23202237 3.47847199 1.54741466 -0.16328679 3.32762909 1.5652703 -0.16018854 3.1650548 1.60211301
		 -0.22326389 3.018862009 1.65157211 -0.3416062 2.91432714 1.70509601 -0.49475306 2.86952543 1.75342965
		 -0.65622413 2.89220262 1.78821611 -0.79809964 2.97844028 1.80343974 -0.89584762 3.11332583 1.79646862
		 -0.93256664 3.27353621 1.76850808 -0.82069588 3.43148875 1.82832849 -0.7418102 3.5405128 1.78354847
		 -0.62375939 3.60545063 1.73925769 -0.48695505 3.6150701 1.70311522 -0.35505179 3.56771159 1.68136919
		 -0.25085694 3.47155881 1.67778111 -0.19238681 3.34324288 1.69297051 -0.18975148 3.20495033 1.72431064
		 -0.24340647 3.08059001 1.76638341 -0.34407458 2.99166965 1.81191278 -0.47434896 2.95356011 1.85302758
		 -0.61170453 2.97285199 1.88261819 -0.73239064 3.046206713 1.89556897 -0.81554031 3.16094828 1.88963902
		 -0.84677589 3.29723191 1.8658545 -0.71528399 3.41201305 1.90518546 -0.65797067 3.49122381 1.87265098
		 -0.57220215 3.53840232 1.84047234 -0.47280756 3.54539323 1.81421268 -0.37697428 3.51098418 1.79841375
		 -0.30127236 3.44112301 1.79580724 -0.25879124 3.34789991 1.80684209 -0.25687653 3.24742317 1.82961202
		 -0.29585898 3.15706873 1.86018002 -0.36899889 3.09246397 1.89325929 -0.4636488 3.06477499 1.92313111
		 -0.5634436 3.078793049 1.94462967 -0.65112698 3.13209081 1.95403826 -0.7115382 3.21544957 1.94973099
		 -0.73423243 3.31446838 1.93245006 -0.59599292 3.37484097 1.94744039 -0.56586128 3.41648293 1.93033636
		 -0.52076989 3.44128895 1.91341841 -0.46851495 3.44496322 1.89961302 -0.41813245 3.42687249 1.89130735
		 -0.37833354 3.39014792 1.88993621 -0.35599983 3.34113216 1.89573872 -0.35499328 3.28831267 1.90770876
		 -0.37548769 3.24080801 1.92377961 -0.4139396 3.20684433 1.94117033 -0.46369994 3.19228649 1.95687509
		 -0.5161652 3.19965482 1.96817803 -0.56226319 3.22767329 1.97312486 -0.59402359 3.27150416 1.97085905
		 -0.60595423 3.32355833 1.96177423 -0.67246765 3.13888025 1.15244794 -0.47449741 3.32361197 1.95095682;
	setAttr -s 285 ".ed";
	setAttr ".ed[0:165]"  0 15 1 15 16 1 16 1 1 1 0 1 16 17 1 17 2 1 2 1 1 17 18 1
		 18 3 1 3 2 1 18 19 1 19 4 1 4 3 1 19 20 1 20 5 1 5 4 1 20 21 1 21 6 1 6 5 1 21 22 1
		 22 7 1 7 6 1 22 23 1 23 8 1 8 7 1 23 24 1 24 9 1 9 8 1 24 25 1 25 10 1 10 9 1 25 26 1
		 26 11 1 11 10 1 26 27 1 27 12 1 12 11 1 27 28 1 28 13 1 13 12 1 28 29 1 29 14 1 14 13 1
		 29 15 1 0 14 1 15 30 1 30 31 1 31 16 1 31 32 1 32 17 1 32 33 1 33 18 1 33 34 1 34 19 1
		 34 35 1 35 20 1 35 36 1 36 21 1 36 37 1 37 22 1 37 38 1 38 23 1 38 39 1 39 24 1 39 40 1
		 40 25 1 40 41 1 41 26 1 41 42 1 42 27 1 42 43 1 43 28 1 43 44 1 44 29 1 44 30 1 30 45 1
		 45 46 1 46 31 1 46 47 1 47 32 1 47 48 1 48 33 1 48 49 1 49 34 1 49 50 1 50 35 1 50 51 1
		 51 36 1 51 52 1 52 37 1 52 53 1 53 38 1 53 54 1 54 39 1 54 55 1 55 40 1 55 56 1 56 41 1
		 56 57 1 57 42 1 57 58 1 58 43 1 58 59 1 59 44 1 59 45 1 45 60 1 60 61 1 61 46 1 61 62 1
		 62 47 1 62 63 1 63 48 1 63 64 1 64 49 1 64 65 1 65 50 1 65 66 1 66 51 1 66 67 1 67 52 1
		 67 68 1 68 53 1 68 69 1 69 54 1 69 70 1 70 55 1 70 71 1 71 56 1 71 72 1 72 57 1 72 73 1
		 73 58 1 73 74 1 74 59 1 74 60 1 60 75 1 75 76 1 76 61 1 76 77 1 77 62 1 77 78 1 78 63 1
		 78 79 1 79 64 1 79 80 1 80 65 1 80 81 1 81 66 1 81 82 1 82 67 1 82 83 1 83 68 1 83 84 1
		 84 69 1 84 85 1 85 70 1 85 86 1 86 71 1 86 87 1 87 72 1 87 88 1 88 73 1 88 89 1 89 74 1
		 89 75 1 75 90 1;
	setAttr ".ed[166:284]" 90 91 1 91 76 1 91 92 1 92 77 1 92 93 1 93 78 1 93 94 1
		 94 79 1 94 95 1 95 80 1 95 96 1 96 81 1 96 97 1 97 82 1 97 98 1 98 83 1 98 99 1 99 84 1
		 99 100 1 100 85 1 100 101 1 101 86 1 101 102 1 102 87 1 102 103 1 103 88 1 103 104 1
		 104 89 1 104 90 1 90 105 1 105 106 1 106 91 1 106 107 1 107 92 1 107 108 1 108 93 1
		 108 109 1 109 94 1 109 110 1 110 95 1 110 111 1 111 96 1 111 112 1 112 97 1 112 113 1
		 113 98 1 113 114 1 114 99 1 114 115 1 115 100 1 115 116 1 116 101 1 116 117 1 117 102 1
		 117 118 1 118 103 1 118 119 1 119 104 1 119 105 1 105 120 1 120 121 1 121 106 1 121 122 1
		 122 107 1 122 123 1 123 108 1 123 124 1 124 109 1 124 125 1 125 110 1 125 126 1 126 111 1
		 126 127 1 127 112 1 127 128 1 128 113 1 128 129 1 129 114 1 129 130 1 130 115 1 130 131 1
		 131 116 1 131 132 1 132 117 1 132 133 1 133 118 1 133 134 1 134 119 1 134 120 1 1 135 1
		 135 0 1 2 135 1 3 135 1 4 135 1 5 135 1 6 135 1 7 135 1 8 135 1 9 135 1 10 135 1
		 11 135 1 12 135 1 13 135 1 14 135 1 120 136 1 136 121 1 136 122 1 136 123 1 136 124 1
		 136 125 1 136 126 1 136 127 1 136 128 1 136 129 1 136 130 1 136 131 1 136 132 1 136 133 1
		 136 134 1;
	setAttr -s 137 ".n[0:136]" -type "float3"  1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020;
	setAttr -s 150 -ch 570 ".fc[0:149]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 3 2 1
		f 4 -3 4 5 6
		mu 0 4 1 2 5 4
		f 4 -6 7 8 9
		mu 0 4 4 5 7 6
		f 4 -9 10 11 12
		mu 0 4 6 7 9 8
		f 4 -12 13 14 15
		mu 0 4 8 9 11 10
		f 4 -15 16 17 18
		mu 0 4 10 11 13 12
		f 4 -18 19 20 21
		mu 0 4 12 13 15 14
		f 4 -21 22 23 24
		mu 0 4 14 15 17 16
		f 4 -24 25 26 27
		mu 0 4 16 17 19 18
		f 4 -27 28 29 30
		mu 0 4 18 19 21 20
		f 4 -30 31 32 33
		mu 0 4 20 21 23 22
		f 4 -33 34 35 36
		mu 0 4 22 23 25 24
		f 4 -36 37 38 39
		mu 0 4 24 25 27 26
		f 4 -39 40 41 42
		mu 0 4 26 27 29 28
		f 4 -42 43 -1 44
		mu 0 4 28 29 3 0
		f 4 45 46 47 -2
		mu 0 4 3 31 30 2
		f 4 -48 48 49 -5
		mu 0 4 2 30 32 5
		f 4 -50 50 51 -8
		mu 0 4 5 32 33 7
		f 4 -52 52 53 -11
		mu 0 4 7 33 34 9
		f 4 -54 54 55 -14
		mu 0 4 9 34 35 11
		f 4 -56 56 57 -17
		mu 0 4 11 35 36 13
		f 4 -58 58 59 -20
		mu 0 4 13 36 37 15
		f 4 -60 60 61 -23
		mu 0 4 15 37 38 17
		f 4 -62 62 63 -26
		mu 0 4 17 38 39 19
		f 4 -64 64 65 -29
		mu 0 4 19 39 40 21
		f 4 -66 66 67 -32
		mu 0 4 21 40 41 23
		f 4 -68 68 69 -35
		mu 0 4 23 41 42 25
		f 4 -70 70 71 -38
		mu 0 4 25 42 43 27
		f 4 -72 72 73 -41
		mu 0 4 27 43 44 29
		f 4 -74 74 -46 -44
		mu 0 4 29 44 31 3
		f 4 75 76 77 -47
		mu 0 4 31 46 45 30
		f 4 -78 78 79 -49
		mu 0 4 30 45 47 32
		f 4 -80 80 81 -51
		mu 0 4 32 47 48 33
		f 4 -82 82 83 -53
		mu 0 4 33 48 49 34
		f 4 -84 84 85 -55
		mu 0 4 34 49 50 35
		f 4 -86 86 87 -57
		mu 0 4 35 50 51 36
		f 4 -88 88 89 -59
		mu 0 4 36 51 52 37
		f 4 -90 90 91 -61
		mu 0 4 37 52 53 38
		f 4 -92 92 93 -63
		mu 0 4 38 53 54 39
		f 4 -94 94 95 -65
		mu 0 4 39 54 55 40
		f 4 -96 96 97 -67
		mu 0 4 40 55 56 41
		f 4 -98 98 99 -69
		mu 0 4 41 56 57 42
		f 4 -100 100 101 -71
		mu 0 4 42 57 58 43
		f 4 -102 102 103 -73
		mu 0 4 43 58 59 44
		f 4 -104 104 -76 -75
		mu 0 4 44 59 46 31
		f 4 105 106 107 -77
		mu 0 4 46 137 135 45
		f 4 -108 108 109 -79
		mu 0 4 45 135 138 47
		f 4 -110 110 111 -81
		mu 0 4 47 138 139 48
		f 4 -112 112 113 -83
		mu 0 4 48 139 140 49
		f 4 -114 114 115 -85
		mu 0 4 49 140 141 50
		f 4 -116 116 117 -87
		mu 0 4 50 141 142 51
		f 4 -118 118 119 -89
		mu 0 4 51 142 143 52
		f 4 -120 120 121 -91
		mu 0 4 52 143 144 53
		f 4 -122 122 123 -93
		mu 0 4 53 144 145 54
		f 4 -124 124 125 -95
		mu 0 4 54 145 146 55
		f 4 -126 126 127 -97
		mu 0 4 55 146 147 56
		f 4 -128 128 129 -99
		mu 0 4 56 147 148 57
		f 4 -130 130 131 -101
		mu 0 4 57 148 149 58
		f 4 -132 132 133 -103
		mu 0 4 58 149 150 59
		f 4 -134 134 -106 -105
		mu 0 4 59 150 137 46
		f 4 135 136 137 -107
		mu 0 4 61 76 75 60
		f 4 -138 138 139 -109
		mu 0 4 60 75 77 62
		f 4 -140 140 141 -111
		mu 0 4 62 77 78 63
		f 4 -142 142 143 -113
		mu 0 4 63 78 79 64
		f 4 -144 144 145 -115
		mu 0 4 64 79 80 65
		f 4 -146 146 147 -117
		mu 0 4 65 80 81 66
		f 4 -148 148 149 -119
		mu 0 4 66 81 82 67
		f 4 -150 150 151 -121
		mu 0 4 67 82 83 68
		f 4 -152 152 153 -123
		mu 0 4 68 83 84 69
		f 4 -154 154 155 -125
		mu 0 4 69 84 85 70
		f 4 -156 156 157 -127
		mu 0 4 70 85 86 71
		f 4 -158 158 159 -129
		mu 0 4 71 86 87 72
		f 4 -160 160 161 -131
		mu 0 4 72 87 88 73
		f 4 -162 162 163 -133
		mu 0 4 73 88 89 74
		f 4 -164 164 -136 -135
		mu 0 4 74 89 76 61
		f 4 165 166 167 -137
		mu 0 4 76 91 90 75
		f 4 -168 168 169 -139
		mu 0 4 75 90 92 77
		f 4 -170 170 171 -141
		mu 0 4 77 92 93 78
		f 4 -172 172 173 -143
		mu 0 4 78 93 94 79
		f 4 -174 174 175 -145
		mu 0 4 79 94 95 80
		f 4 -176 176 177 -147
		mu 0 4 80 95 96 81
		f 4 -178 178 179 -149
		mu 0 4 81 96 97 82
		f 4 -180 180 181 -151
		mu 0 4 82 97 98 83
		f 4 -182 182 183 -153
		mu 0 4 83 98 99 84
		f 4 -184 184 185 -155
		mu 0 4 84 99 100 85
		f 4 -186 186 187 -157
		mu 0 4 85 100 101 86
		f 4 -188 188 189 -159
		mu 0 4 86 101 102 87
		f 4 -190 190 191 -161
		mu 0 4 87 102 103 88
		f 4 -192 192 193 -163
		mu 0 4 88 103 104 89
		f 4 -194 194 -166 -165
		mu 0 4 89 104 91 76
		f 4 195 196 197 -167
		mu 0 4 91 106 105 90
		f 4 -198 198 199 -169
		mu 0 4 90 105 107 92
		f 4 -200 200 201 -171
		mu 0 4 92 107 108 93
		f 4 -202 202 203 -173
		mu 0 4 93 108 109 94
		f 4 -204 204 205 -175
		mu 0 4 94 109 110 95
		f 4 -206 206 207 -177
		mu 0 4 95 110 111 96
		f 4 -208 208 209 -179
		mu 0 4 96 111 112 97
		f 4 -210 210 211 -181
		mu 0 4 97 112 113 98
		f 4 -212 212 213 -183
		mu 0 4 98 113 114 99
		f 4 -214 214 215 -185
		mu 0 4 99 114 115 100
		f 4 -216 216 217 -187
		mu 0 4 100 115 116 101
		f 4 -218 218 219 -189
		mu 0 4 101 116 117 102
		f 4 -220 220 221 -191
		mu 0 4 102 117 118 103
		f 4 -222 222 223 -193
		mu 0 4 103 118 119 104
		f 4 -224 224 -196 -195
		mu 0 4 104 119 106 91
		f 4 225 226 227 -197
		mu 0 4 106 121 120 105
		f 4 -228 228 229 -199
		mu 0 4 105 120 122 107
		f 4 -230 230 231 -201
		mu 0 4 107 122 123 108
		f 4 -232 232 233 -203
		mu 0 4 108 123 124 109
		f 4 -234 234 235 -205
		mu 0 4 109 124 125 110
		f 4 -236 236 237 -207
		mu 0 4 110 125 126 111
		f 4 -238 238 239 -209
		mu 0 4 111 126 127 112
		f 4 -240 240 241 -211
		mu 0 4 112 127 128 113
		f 4 -242 242 243 -213
		mu 0 4 113 128 129 114
		f 4 -244 244 245 -215
		mu 0 4 114 129 130 115
		f 4 -246 246 247 -217
		mu 0 4 115 130 131 116
		f 4 -248 248 249 -219
		mu 0 4 116 131 132 117
		f 4 -250 250 251 -221
		mu 0 4 117 132 133 118
		f 4 -252 252 253 -223
		mu 0 4 118 133 134 119
		f 4 -254 254 -226 -225
		mu 0 4 119 134 121 106
		f 3 255 256 -4
		mu 0 3 1 151 0
		f 3 257 -256 -7
		mu 0 3 4 151 1
		f 3 258 -258 -10
		mu 0 3 6 151 4
		f 3 259 -259 -13
		mu 0 3 8 151 6
		f 3 260 -260 -16
		mu 0 3 10 151 8
		f 3 261 -261 -19
		mu 0 3 12 151 10
		f 3 262 -262 -22
		mu 0 3 14 151 12
		f 3 263 -263 -25
		mu 0 3 16 151 14
		f 3 264 -264 -28
		mu 0 3 18 151 16
		f 3 265 -265 -31
		mu 0 3 20 151 18
		f 3 266 -266 -34
		mu 0 3 22 151 20
		f 3 267 -267 -37
		mu 0 3 24 151 22
		f 3 268 -268 -40
		mu 0 3 26 151 24
		f 3 269 -269 -43
		mu 0 3 28 151 26
		f 3 -257 -270 -45
		mu 0 3 0 151 28
		f 3 270 271 -227
		mu 0 3 121 136 120
		f 3 -272 272 -229
		mu 0 3 120 136 122
		f 3 -273 273 -231
		mu 0 3 122 136 123
		f 3 -274 274 -233
		mu 0 3 123 136 124
		f 3 -275 275 -235
		mu 0 3 124 136 125
		f 3 -276 276 -237
		mu 0 3 125 136 126
		f 3 -277 277 -239
		mu 0 3 126 136 127
		f 3 -278 278 -241
		mu 0 3 127 136 128
		f 3 -279 279 -243
		mu 0 3 128 136 129
		f 3 -280 280 -245
		mu 0 3 129 136 130
		f 3 -281 281 -247
		mu 0 3 130 136 131
		f 3 -282 282 -249
		mu 0 3 131 136 132
		f 3 -283 283 -251
		mu 0 3 132 136 133
		f 3 -284 284 -253
		mu 0 3 133 136 134
		f 3 -285 -271 -255
		mu 0 3 134 136 121;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "l_ear" -p "Geo";
	rename -uid "C1FFDE0D-4E7B-FED7-908E-EE923258E14B";
	addAttr -is true -ci true -k true -sn "currentUVSet" -ln "currentUVSet" -dt "string";
	setAttr -l on ".t";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".r";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".s";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" 1.3357591047849631 3.1768964814203846 0.1824485423498039 ;
	setAttr ".sp" -type "double3" 1.3357591047849631 3.1768964814203846 0.1824485423498039 ;
	setAttr -k on ".currentUVSet" -type "string" "map1";
createNode mesh -n "l_earShape" -p "|Hamster|Geo|l_ear";
	rename -uid "FE224A15-4368-CAD4-D7E8-EF9FC6CAA259";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".vcs" 2;
createNode mesh -n "l_earShapeOrig" -p "|Hamster|Geo|l_ear";
	rename -uid "74FD4299-4C8C-87D8-35A8-409769CBB64C";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 51 ".uvst[0].uvsp[0:50]" -type "float2" 0.87060356 0.047402017
		 0.86841607 0.062225834 0.86007857 0.062420487 0.87807095 0.052834809 0.88733459 0.058502078
		 0.88688135 0.0650592 0.87775898 0.062657312 0.88220394 0.07273078 0.88943589 0.070718437
		 0.89046097 0.07826668 0.88239068 0.082098335 0.86471939 0.076884449 0.8718403 0.074646801
		 0.87599981 0.086294115 0.86937082 0.084456652 0.87338603 0.101906 0.86311865 0.096188515
		 0.90311164 0.079972088 0.91540313 0.09980306 0.9198336 0.073337406 0.84824342 0.11386126
		 0.84788799 0.10524452 0.83218729 0.10894096 0.83872831 0.099463522 0.91921222 0.065094322
		 0.92703235 0.051435426 0.9187243 0.058145747 0.91291273 0.052183151 0.82565314 0.08824414
		 0.81941241 0.099848777 0.82421613 0.071137309 0.83891463 0.055783227 0.89893758 0.053089544
		 0.89443421 0.043626897 0.90193421 0.063280702 0.9031083 0.069833159 0.84431261 0.070981294
		 0.85480237 0.088866919 0.93379045 0.040887855 0.91251892 0.026010456 0.93062174 0.026366454
		 0.91403079 0.033132903 0.88522184 0.02698411 0.88943887 0.034834486 0.86214149 0.047327913
		 0.93251204 0.078703254 0.94460952 0.080951303 0.94678396 0.10297245 0.92801338 0.065808401
		 0.94322997 0.061904639 0.9171741 0.042444222;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 44 ".vt[0:43]"  1.5203681 3.94847202 0.24244042 1.9963702 3.61783671 0.012467775
		 1.75211763 4.41130066 -0.38032556 2.15701318 3.88672805 -0.37669528 1.61601841 4.30535603 -0.50970846
		 2.020914078 3.78078365 -0.506078 1.38426876 3.84252691 0.11305799 1.86126816 3.511971 -0.11802847
		 2.12793684 3.659621 -0.097266532 2.074824095 4.14834309 -0.44158489 1.64615166 4.45071173 -0.48078004
		 2.14055371 3.7824738 -0.45366266 1.89109004 4.005317688 -0.61625171 1.36481309 4.05069685 -0.099812888
		 1.94460654 3.52046037 -0.27552187 1.65002501 3.54468012 0.014519474 1.41043854 3.87455821 0.23895049
		 1.91490352 3.54123783 -0.018763231 1.83279443 3.68762898 0.19026349 1.54854679 4.19372225 0.074853666
		 1.97835112 3.83278275 -0.00086573331 2.014715433 4.104949 -0.58535028 1.73337269 3.64208245 -0.23375453
		 1.73289752 3.59437966 0.12917587 2.079886198 3.53897166 -0.19045484 1.40938449 4.14941359 0.014995042
		 2.11833334 3.92524981 -0.26168317 2.17506552 3.73310566 -0.23645429 2.13379622 3.61268926 -0.30752686
		 2.013849735 3.60949779 -0.39182675 1.90203094 3.75687218 -0.46731108 1.49346209 4.23987579 -0.36060879
		 1.53703523 4.38158751 -0.30939692 1.65489197 4.36553955 -0.20714544 1.8414377 4.18739557 -0.2182976
		 1.90265405 4.35698223 -0.46016577 1.81276941 4.3677187 -0.58808869 1.74077225 4.23096752 -0.61405861
		 1.6503073 4.038612843 -0.39999571 1.53149891 3.86850643 -0.16972211 1.47072875 3.67061353 0.12884776
		 1.54981542 3.70335913 0.2325245 1.63208854 3.79658675 0.28332394 1.74838161 4.037336349 0.036457755;
	setAttr -s 84 ".ed[0:83]"  0 42 1 42 43 1 43 19 1 19 0 1 18 1 1 1 8 1
		 8 20 1 20 18 1 26 27 1 27 3 1 3 9 1 9 26 1 33 34 1 34 35 1 35 2 1 2 33 1 35 36 1
		 36 10 1 10 2 1 3 11 1 11 21 1 21 9 1 11 5 1 5 12 1 12 21 1 36 37 1 37 4 1 4 10 1
		 37 38 1 38 31 1 31 4 1 5 29 1 29 30 1 30 12 1 22 14 1 14 7 1 7 15 1 15 22 1 13 39 1
		 39 40 1 40 6 1 6 13 1 40 41 1 41 16 1 16 6 1 7 17 1 17 23 1 23 15 1 17 1 1 18 23 1
		 41 42 1 0 16 1 17 24 1 24 8 1 14 24 1 28 29 1 11 28 1 27 28 1 16 25 1 25 13 1 19 25 1
		 32 33 1 10 32 1 31 32 1 8 27 1 26 20 1 24 28 1 14 29 1 22 30 1 38 39 1 13 31 1 25 32 1
		 19 33 1 43 34 1 34 26 1 9 35 1 21 36 1 12 37 1 30 38 1 22 39 1 15 40 1 23 41 1 18 42 1
		 20 43 1;
	setAttr -s 44 ".n[0:43]" -type "float3"  1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020;
	setAttr -s 42 -ch 168 ".fc[0:41]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 44 0 1 2
		f 4 4 5 6 7
		mu 0 4 3 4 5 6
		f 4 8 9 10 11
		mu 0 4 7 8 9 10
		f 4 12 13 14 15
		mu 0 4 11 12 13 14
		f 4 -15 16 17 18
		mu 0 4 14 13 15 16
		f 4 -11 19 20 21
		mu 0 4 10 9 17 18
		f 4 -21 22 23 24
		mu 0 4 18 17 19 45
		f 4 -18 25 26 27
		mu 0 4 16 15 20 21
		f 4 -27 28 29 30
		mu 0 4 21 20 22 23
		f 4 -24 31 32 33
		mu 0 4 45 19 24 48
		f 4 34 35 36 37
		mu 0 4 25 26 27 50
		f 4 38 39 40 41
		mu 0 4 40 38 41 39
		f 4 -41 42 43 44
		mu 0 4 39 41 43 42
		f 4 -37 45 46 47
		mu 0 4 50 27 32 33
		f 4 -47 48 -5 49
		mu 0 4 33 32 4 3
		f 4 -44 50 -1 51
		mu 0 4 42 43 0 44
		f 4 -49 52 53 -6
		mu 0 4 4 32 34 5
		f 4 -46 -36 54 -53
		mu 0 4 32 27 26 34
		f 4 55 -32 -23 56
		mu 0 4 35 24 19 17
		f 4 57 -57 -20 -10
		mu 0 4 8 35 17 9
		f 4 -45 58 59 -42
		mu 0 4 30 31 36 28
		f 4 -52 -4 60 -59
		mu 0 4 31 44 2 36
		f 4 61 -16 -19 62
		mu 0 4 37 11 14 16
		f 4 63 -63 -28 -31
		mu 0 4 23 37 16 21
		f 4 -7 64 -9 65
		mu 0 4 6 5 8 7
		f 4 -54 66 -58 -65
		mu 0 4 5 34 35 8
		f 4 -55 67 -56 -67
		mu 0 4 34 26 24 35
		f 4 -33 -68 -35 68
		mu 0 4 48 24 26 25
		f 4 -30 69 -39 70
		mu 0 4 23 22 29 28
		f 4 -60 71 -64 -71
		mu 0 4 28 36 37 23
		f 4 -61 72 -62 -72
		mu 0 4 36 2 11 37
		f 4 -3 73 -13 -73
		mu 0 4 2 1 12 11
		f 4 74 -12 75 -14
		mu 0 4 12 7 10 13
		f 4 -17 -76 -22 76
		mu 0 4 15 13 10 18
		f 4 -26 -77 -25 77
		mu 0 4 46 47 18 45
		f 4 -29 -78 -34 78
		mu 0 4 49 46 45 48
		f 4 -70 -79 -69 79
		mu 0 4 38 49 48 25
		f 4 -40 -80 -38 80
		mu 0 4 41 38 25 50
		f 4 -43 -81 -48 81
		mu 0 4 43 41 50 33
		f 4 -51 -82 -50 82
		mu 0 4 0 43 33 3
		f 4 -2 -83 -8 83
		mu 0 4 1 0 3 6
		f 4 -74 -84 -66 -75
		mu 0 4 12 1 6 7;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "l_eyebrow" -p "Geo";
	rename -uid "1969C71D-43B3-8DFA-D827-4B990D46C6C3";
	addAttr -is true -ci true -k true -sn "currentUVSet" -ln "currentUVSet" -dt "string";
	setAttr -l on ".t";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".r";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".s";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" 0.42504440027482915 3.2954895249617984 1.2435253146611001 ;
	setAttr ".sp" -type "double3" 0.42504440027482915 3.2954895249617984 1.2435253146611001 ;
	setAttr -k on ".currentUVSet" -type "string" "map1";
createNode mesh -n "l_eyebrowShape" -p "|Hamster|Geo|l_eyebrow";
	rename -uid "2B36D36E-4B10-7DB6-5363-9EB8AE696B87";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".vcs" 2;
createNode mesh -n "l_eyebrowShapeOrig" -p "|Hamster|Geo|l_eyebrow";
	rename -uid "0A9BF8CE-4C76-365F-5650-E4B491B0A278";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 31 ".uvst[0].uvsp[0:30]" -type "float2" 0.96568578 0.18228623
		 0.97501081 0.17718366 0.97649693 0.18151295 0.98182255 0.17255135 0.98443687 0.17308478
		 0.9860388 0.17546935 0.97886431 0.18577218 0.9684881 0.19203931 0.98218048 0.18897665
		 0.96740949 0.19722015 0.98957777 0.17106055 0.99177915 0.17547598 0.98661679 0.19078755
		 0.97377443 0.19819921 0.9696101 0.16473109 0.98309332 0.16526924 0.98055303 0.16790427
		 0.97187638 0.16893226 0.97348261 0.17303818 0.98159134 0.17032158 0.98544645 0.16911584
		 0.96280587 0.19322163 0.96619201 0.16066892 0.98407465 0.16292369 0.96245807 0.17976737
		 0.96262878 0.17566295 0.9658438 0.18745565 0.9592886 0.17354895 0.95773768 0.1805802
		 0.95223343 0.177977 0.9552995 0.17282376;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 26 ".vt[0:25]"  0.39424378 3.84148645 1.51614618 0.76332122 3.7971704 1.54463303
		 0.37542245 3.94635916 1.44873226 0.72707063 3.90498877 1.47532558 0.37542245 3.89352322 1.36653709
		 0.72707057 3.85215282 1.39313066 0.39424378 3.78865004 1.43395114 0.76332122 3.74433446 1.46243811
		 0.7718423 3.85670114 1.52669358 0.54820418 3.94605589 1.46925497 0.32214236 3.93993545 1.39478195
		 0.76880002 3.89285564 1.42504561 0.54820418 3.87472725 1.35829139 0.38824967 3.83186293 1.38584518
		 0.7718423 3.78537202 1.41573036 0.59275675 3.74250793 1.44328392 0.35870224 3.807127 1.48015308
		 0.81041348 3.74441433 1.52046585 0.59275675 3.81383657 1.55424738 0.38824967 3.9031918 1.49680865
		 0.57048053 3.89183426 1.53024507 0.5407787 3.93242788 1.39960778 0.57048053 3.79672956 1.38229382
		 0.60018224 3.7561357 1.51293123 0.82894188 3.81328797 1.47619283 0.33115003 3.87527609 1.43634605;
	setAttr -s 48 ".ed[0:47]"  0 18 1 18 20 1 20 19 1 19 0 1 18 1 1 1 8 1
		 8 20 1 8 3 1 3 9 1 9 20 1 9 2 1 2 19 1 9 21 1 21 10 1 10 2 1 3 11 1 11 21 1 11 5 1
		 5 12 1 12 21 1 12 4 1 4 10 1 12 22 1 22 13 1 13 4 1 5 14 1 14 22 1 14 7 1 7 15 1
		 15 22 1 15 6 1 6 13 1 15 23 1 23 16 1 16 6 1 7 17 1 17 23 1 17 1 1 18 23 1 0 16 1
		 17 24 1 24 8 1 14 24 1 11 24 1 16 25 1 25 13 1 19 25 1 10 25 1;
	setAttr -s 26 ".n[0:25]" -type "float3"  1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020;
	setAttr -s 24 -ch 96 ".fc[0:23]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 2 26
		f 4 4 5 6 -2
		mu 0 4 1 3 4 2
		f 4 -7 7 8 9
		mu 0 4 2 4 5 6
		f 4 -3 -10 10 11
		mu 0 4 26 2 6 7
		f 4 -11 12 13 14
		mu 0 4 7 6 8 9
		f 4 -9 15 16 -13
		mu 0 4 6 5 10 8
		f 4 -17 17 18 19
		mu 0 4 8 10 11 12
		f 4 -14 -20 20 21
		mu 0 4 9 8 12 13
		f 4 -21 22 23 24
		mu 0 4 30 22 14 27
		f 4 -19 25 26 -23
		mu 0 4 22 23 15 14
		f 4 -27 27 28 29
		mu 0 4 14 15 16 17
		f 4 -24 -30 30 31
		mu 0 4 27 14 17 25
		f 4 -31 32 33 34
		mu 0 4 25 17 18 24
		f 4 -29 35 36 -33
		mu 0 4 17 16 19 18
		f 4 -37 37 -5 38
		mu 0 4 18 19 3 1
		f 4 -34 -39 -1 39
		mu 0 4 24 18 1 0
		f 4 -38 40 41 -6
		mu 0 4 3 19 20 4
		f 4 -36 -28 42 -41
		mu 0 4 19 16 15 20
		f 4 -43 -26 -18 43
		mu 0 4 20 15 23 10
		f 4 -42 -44 -16 -8
		mu 0 4 4 20 10 5
		f 4 -35 44 45 -32
		mu 0 4 25 24 28 27
		f 4 -40 -4 46 -45
		mu 0 4 24 0 26 28
		f 4 -47 -12 -15 47
		mu 0 4 21 26 7 9
		f 4 -46 -48 -22 -25
		mu 0 4 27 28 29 30;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "r_ear" -p "Geo";
	rename -uid "64DC2140-4DF2-788F-9A60-8CAD66922499";
	addAttr -is true -ci true -k true -sn "currentUVSet" -ln "currentUVSet" -dt "string";
	setAttr -l on ".t";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".r";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".s";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" -1.3357591047849631 3.1768964814203846 0.18244854234980379 ;
	setAttr ".sp" -type "double3" -1.3357591047849631 3.1768964814203846 0.18244854234980379 ;
	setAttr -k on ".currentUVSet" -type "string" "map1";
createNode mesh -n "r_earShape" -p "|Hamster|Geo|r_ear";
	rename -uid "EBAEA04E-48D5-F0E5-0201-899C6DFBFA7D";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".vcs" 2;
createNode mesh -n "r_earShapeOrig" -p "|Hamster|Geo|r_ear";
	rename -uid "C6088EFA-4B73-A405-5A67-84A9C2A1E310";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 51 ".uvst[0].uvsp[0:50]" -type "float2" 0.9284445 0.15273815
		 0.91060948 0.16919282 0.91794729 0.18132369 0.91718864 0.1474275 0.90591931 0.1449322
		 0.89776349 0.14620577 0.90404588 0.15553539 0.88566607 0.15298341 0.88983852 0.14565842
		 0.88145983 0.14713918 0.87284696 0.15761979 0.89552617 0.18608214 0.89084083 0.1724253
		 0.87147045 0.17629592 0.88198811 0.18424618 0.86592871 0.18675025 0.88056564 0.19202088
		 0.88155466 0.13995406 0.8630197 0.14724866 0.88121164 0.13364685 0.87049681 0.20443326
		 0.88179404 0.20006385 0.89609462 0.21889926 0.89778215 0.20326775 0.89025587 0.13191716
		 0.9058339 0.12129302 0.89875495 0.13145435 0.90691942 0.13380414 0.92599165 0.19843605
		 0.92223823 0.21698497 0.94246817 0.17647895 0.94033188 0.16661061 0.90824711 0.13947017
		 0.919608 0.13941763 0.89752311 0.13886137 0.89068288 0.13874137 0.92291206 0.18882766
		 0.89424866 0.19488026 0.91876107 0.1089232 0.93949151 0.13393581 0.9398815 0.11020759
		 0.93149918 0.13442568 0.9397409 0.15018485 0.93102217 0.14383185 0.9316138 0.16338478
		 0.86829406 0.13273242 0.8568483 0.12089934 0.84675789 0.12707724 0.88500196 0.12616771
		 0.88270229 0.10587362 0.91873902 0.13054428;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 44 ".vt[0:43]"  -1.52036822 3.94847226 0.24243978 -1.99637043 3.61783671 0.012467162
		 -1.75211787 4.41130114 -0.38032618 -2.15701342 3.88672829 -0.3766959 -1.61601865 4.3053565 -0.50970912
		 -2.020914316 3.78078413 -0.5060786 -1.384269 3.84252691 0.11305732 -1.8612684 3.51197124 -0.11802908
		 -2.12793708 3.65962148 -0.097267143 -2.074824333 4.14834356 -0.44158551 -1.64615178 4.45071173 -0.48078069
		 -2.14055371 3.7824738 -0.45366326 -1.89109027 4.0053181648 -0.61625242 -1.36481333 4.05069685 -0.099813573
		 -1.94460678 3.52046037 -0.2755225 -1.65002525 3.54468036 0.014518826 -1.4104389 3.87455845 0.23894991
		 -1.91490376 3.54123783 -0.018763859 -1.83279467 3.68762898 0.1902629 -1.54854691 4.19372225 0.074853018
		 -1.97835124 3.83278298 -0.00086638116 -2.014715672 4.10494947 -0.58535087 -1.73337293 3.64208245 -0.23375517
		 -1.73289776 3.59437966 0.12917523 -2.079886436 3.5389719 -0.19045548 -1.40938473 4.14941359 0.014994388
		 -2.11833334 3.92524981 -0.26168379 -2.17506576 3.73310614 -0.23645493 -2.13379645 3.6126895 -0.30752748
		 -2.013849735 3.60949779 -0.39182737 -1.90203106 3.75687218 -0.46731174 -1.49346232 4.23987627 -0.36060944
		 -1.53703535 4.38158751 -0.30939758 -1.65489209 4.36553955 -0.20714605 -1.84143794 4.18739605 -0.21829824
		 -1.90265417 4.35698271 -0.46016636 -1.81276953 4.3677187 -0.58808935 -1.74077237 4.230968 -0.61405927
		 -1.65030754 4.038612843 -0.39999637 -1.53149915 3.86850667 -0.16972275 -1.47072887 3.67061353 0.12884718
		 -1.54981565 3.70335913 0.23252389 -1.63208866 3.79658699 0.28332332 -1.74838185 4.037336349 0.03645714;
	setAttr -s 84 ".ed[0:83]"  0 19 1 19 43 1 43 42 1 42 0 1 18 20 1 20 8 1
		 8 1 1 1 18 1 26 9 1 9 3 1 3 27 1 27 26 1 33 2 1 2 35 1 35 34 1 34 33 1 2 10 1 10 36 1
		 36 35 1 9 21 1 21 11 1 11 3 1 21 12 1 12 5 1 5 11 1 10 4 1 4 37 1 37 36 1 4 31 1
		 31 38 1 38 37 1 12 30 1 30 29 1 29 5 1 22 15 1 15 7 1 7 14 1 14 22 1 13 6 1 6 40 1
		 40 39 1 39 13 1 6 16 1 16 41 1 41 40 1 15 23 1 23 17 1 17 7 1 23 18 1 1 17 1 16 0 1
		 42 41 1 8 24 1 24 17 1 24 14 1 28 11 1 29 28 1 28 27 1 13 25 1 25 16 1 25 19 1 32 10 1
		 33 32 1 32 31 1 20 26 1 27 8 1 28 24 1 29 14 1 30 22 1 31 13 1 39 38 1 32 25 1 33 19 1
		 34 43 1 35 9 1 26 34 1 36 21 1 37 12 1 38 30 1 39 22 1 40 15 1 41 23 1 42 18 1 43 20 1;
	setAttr -s 44 ".n[0:43]" -type "float3"  1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020;
	setAttr -s 42 -ch 168 ".fc[0:41]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 44 2 1 0
		f 4 4 5 6 7
		mu 0 4 3 6 5 4
		f 4 8 9 10 11
		mu 0 4 7 10 9 8
		f 4 12 13 14 15
		mu 0 4 11 14 13 12
		f 4 16 17 18 -14
		mu 0 4 14 16 15 13
		f 4 19 20 21 -10
		mu 0 4 10 18 17 9
		f 4 22 23 24 -21
		mu 0 4 18 45 19 17
		f 4 25 26 27 -18
		mu 0 4 16 21 20 15
		f 4 28 29 30 -27
		mu 0 4 21 23 22 20
		f 4 31 32 33 -24
		mu 0 4 45 48 24 19
		f 4 34 35 36 37
		mu 0 4 25 50 27 26
		f 4 38 39 40 41
		mu 0 4 40 39 41 38
		f 4 42 43 44 -40
		mu 0 4 39 42 43 41
		f 4 45 46 47 -36
		mu 0 4 50 33 32 27
		f 4 48 -8 49 -47
		mu 0 4 33 3 4 32
		f 4 50 -4 51 -44
		mu 0 4 42 44 0 43
		f 4 -7 52 53 -50
		mu 0 4 4 5 34 32
		f 4 -54 54 -37 -48
		mu 0 4 32 34 26 27
		f 4 55 -25 -34 56
		mu 0 4 35 17 19 24
		f 4 -11 -22 -56 57
		mu 0 4 8 9 17 35
		f 4 -39 58 59 -43
		mu 0 4 30 28 36 31
		f 4 -60 60 -1 -51
		mu 0 4 31 36 2 44
		f 4 61 -17 -13 62
		mu 0 4 37 16 14 11
		f 4 -29 -26 -62 63
		mu 0 4 23 21 16 37
		f 4 64 -12 65 -6
		mu 0 4 6 7 8 5
		f 4 -66 -58 66 -53
		mu 0 4 5 8 35 34
		f 4 -67 -57 67 -55
		mu 0 4 34 35 24 26
		f 4 68 -38 -68 -33
		mu 0 4 48 25 26 24
		f 4 69 -42 70 -30
		mu 0 4 23 28 29 22
		f 4 -70 -64 71 -59
		mu 0 4 28 23 37 36
		f 4 -72 -63 72 -61
		mu 0 4 36 37 11 2
		f 4 -73 -16 73 -2
		mu 0 4 2 11 12 1
		f 4 -15 74 -9 75
		mu 0 4 12 13 10 7
		f 4 76 -20 -75 -19
		mu 0 4 15 18 10 13
		f 4 77 -23 -77 -28
		mu 0 4 46 45 18 47
		f 4 78 -32 -78 -31
		mu 0 4 49 48 45 46
		f 4 79 -69 -79 -71
		mu 0 4 38 25 48 49
		f 4 80 -35 -80 -41
		mu 0 4 41 50 25 38
		f 4 81 -46 -81 -45
		mu 0 4 43 33 50 41
		f 4 82 -49 -82 -52
		mu 0 4 0 3 33 43
		f 4 83 -5 -83 -3
		mu 0 4 1 6 3 0
		f 4 -76 -65 -84 -74
		mu 0 4 12 7 6 1;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "r_eyebrow" -p "Geo";
	rename -uid "86134758-4CD4-6272-BFFA-6694F74D9C10";
	addAttr -is true -ci true -k true -sn "currentUVSet" -ln "currentUVSet" -dt "string";
	setAttr -l on ".t";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".r";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".s";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" -0.42504440027482915 3.2954895249617984 1.2435253146611001 ;
	setAttr ".sp" -type "double3" -0.42504440027482915 3.2954895249617984 1.2435253146611001 ;
	setAttr -k on ".currentUVSet" -type "string" "map1";
createNode mesh -n "r_eyebrowShape" -p "|Hamster|Geo|r_eyebrow";
	rename -uid "091635D6-4356-8643-2AB8-49B247F4F511";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".vcs" 2;
createNode mesh -n "r_eyebrowShapeOrig" -p "|Hamster|Geo|r_eyebrow";
	rename -uid "E62ED7C2-4D24-22FE-CB8C-1E9C32247AD4";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 31 ".uvst[0].uvsp[0:30]" -type "float2" 0.98397225 0.14044574
		 0.97486293 0.13512787 0.97313195 0.13931669 0.96820986 0.13021153 0.96555024 0.13044189
		 0.96383435 0.13282494 0.97056842 0.14342859 0.98076957 0.15010162 0.96712106 0.14648466
		 0.98164719 0.15531455 0.96047997 0.12822133 0.95809317 0.13255544 0.96261597 0.14812022
		 0.97522354 0.1560452 0.98058259 0.12276499 0.96722978 0.12301588 0.96969151 0.12578107
		 0.97825426 0.12694007 0.9765839 0.13103269 0.96859646 0.12820219 0.96474689 0.12658878
		 0.98641497 0.15147929 0.9840169 0.11875149 0.9663589 0.12055365 0.98733193 0.1380032
		 0.98726225 0.13386069 0.98360866 0.14560716 0.99064648 0.13179882 0.99202996 0.13889256
		 0.99760032 0.13635395 0.99463242 0.13112436;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 26 ".vt[0:25]"  -0.39424396 3.84148622 1.51614642 -0.76332146 3.79717088 1.54463327
		 -0.37542263 3.94635916 1.44873273 -0.72707087 3.90498877 1.47532582 -0.37542263 3.89352322 1.36653745
		 -0.72707069 3.85215282 1.3931309 -0.39424396 3.78865004 1.43395138 -0.76332146 3.74433446 1.46243834
		 -0.77184248 3.85670114 1.52669382 -0.54820436 3.94605589 1.46925521 -0.32214254 3.93993545 1.3947823
		 -0.76880014 3.89285541 1.42504585 -0.54820436 3.87472725 1.35829163 -0.38824981 3.83186293 1.38584554
		 -0.77184248 3.78537202 1.41573071 -0.59275693 3.74250793 1.44328427 -0.35870242 3.807127 1.48015332
		 -0.8104136 3.74441433 1.52046609 -0.59275693 3.81383657 1.55424786 -0.38824981 3.9031918 1.49680889
		 -0.5704807 3.89183426 1.53024542 -0.54077893 3.93242788 1.39960814 -0.5704807 3.79672956 1.38229406
		 -0.60018247 3.7561357 1.51293147 -0.828942 3.81328797 1.47619307 -0.33115023 3.87527609 1.43634629;
	setAttr -s 48 ".ed[0:47]"  0 19 1 19 20 1 20 18 1 18 0 1 20 8 1 8 1 1
		 1 18 1 20 9 1 9 3 1 3 8 1 19 2 1 2 9 1 2 10 1 10 21 1 21 9 1 21 11 1 11 3 1 21 12 1
		 12 5 1 5 11 1 10 4 1 4 12 1 4 13 1 13 22 1 22 12 1 22 14 1 14 5 1 22 15 1 15 7 1
		 7 14 1 13 6 1 6 15 1 6 16 1 16 23 1 23 15 1 23 17 1 17 7 1 23 18 1 1 17 1 16 0 1
		 8 24 1 24 17 1 24 14 1 24 11 1 13 25 1 25 16 1 25 19 1 25 10 1;
	setAttr -s 26 ".n[0:25]" -type "float3"  1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020;
	setAttr -s 24 -ch 96 ".fc[0:23]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 26 2 1
		f 4 -3 4 5 6
		mu 0 4 1 2 4 3
		f 4 7 8 9 -5
		mu 0 4 2 6 5 4
		f 4 10 11 -8 -2
		mu 0 4 26 7 6 2
		f 4 12 13 14 -12
		mu 0 4 7 9 8 6
		f 4 -15 15 16 -9
		mu 0 4 6 8 10 5
		f 4 17 18 19 -16
		mu 0 4 8 12 11 10
		f 4 20 21 -18 -14
		mu 0 4 9 13 12 8
		f 4 22 23 24 -22
		mu 0 4 30 27 14 22
		f 4 -25 25 26 -19
		mu 0 4 22 14 15 23
		f 4 27 28 29 -26
		mu 0 4 14 17 16 15
		f 4 30 31 -28 -24
		mu 0 4 27 25 17 14
		f 4 32 33 34 -32
		mu 0 4 25 24 18 17
		f 4 -35 35 36 -29
		mu 0 4 17 18 19 16
		f 4 37 -7 38 -36
		mu 0 4 18 1 3 19
		f 4 39 -4 -38 -34
		mu 0 4 24 0 1 18
		f 4 -6 40 41 -39
		mu 0 4 3 4 20 19
		f 4 -42 42 -30 -37
		mu 0 4 19 20 15 16
		f 4 43 -20 -27 -43
		mu 0 4 20 10 23 15
		f 4 -10 -17 -44 -41
		mu 0 4 4 5 10 20
		f 4 -31 44 45 -33
		mu 0 4 25 27 28 24
		f 4 -46 46 -1 -40
		mu 0 4 24 28 26 0
		f 4 47 -13 -11 -47
		mu 0 4 21 9 7 26
		f 4 -23 -21 -48 -45
		mu 0 4 27 30 29 28;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "tail" -p "Geo";
	rename -uid "89A10C10-4BEE-8F40-B816-A98C4790C4E4";
	addAttr -is true -ci true -k true -sn "currentUVSet" -ln "currentUVSet" -dt "string";
	setAttr -l on ".t";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".r";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".s";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" 0 -1.7263978887376226 -2.0325892124005227 ;
	setAttr ".sp" -type "double3" 0 -1.7263978887376226 -2.0325892124005227 ;
	setAttr -k on ".currentUVSet" -type "string" "map1";
createNode mesh -n "tailShape" -p "tail";
	rename -uid "C61B699B-4897-CF49-F110-7D8593C87C9D";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".vcs" 2;
createNode mesh -n "tailShapeOrig" -p "tail";
	rename -uid "7DB8F7AA-4480-6523-C612-4AA5D0674C42";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 41 ".uvst[0].uvsp[0:40]" -type "float2" 0.26986855 0.070112348
		 0.27442825 0.072895408 0.2736592 0.079941392 0.2643066 0.07456249 0.27963737 0.071609735
		 0.28407556 0.077137053 0.28241178 0.067014992 0.28945836 0.067786008 0.28112423 0.061805129
		 0.28665122 0.057367384 0.27652997 0.059033364 0.27729839 0.051986784 0.2713232 0.060321331
		 0.26688021 0.054798603 0.26855367 0.064912021 0.26150626 0.064157635 0.27313998 0.087174594
		 0.25882566 0.079310656 0.28882179 0.082618296 0.29668969 0.068306744 0.29213288 0.052622795
		 0.27781966 0.044755936 0.2621364 0.049316347 0.25427404 0.063629866 0.27269354 0.094534934
		 0.25330597 0.084197938 0.29371044 0.088137984 0.30404919 0.06875357 0.2976532 0.047735974
		 0.2782684 0.037397057 0.25725064 0.043794364 0.24691322 0.063178569 0.27197459 0.10215157
		 0.2474111 0.089073241 0.29858851 0.094031751 0.31166577 0.069472581 0.30354804 0.042859584
		 0.27898988 0.029780896 0.25237638 0.037897818 0.2392966 0.062455505 0.27549183 0.065957695;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 41 ".vt[0:40]"  0.1644792 -1.98245192 -2.88223815 -8.2839042e-009 -1.92091048 -2.91146636
		 -0.16447923 -1.98245192 -2.88223815 -0.23260871 -2.13102555 -2.81167531 -0.16447923 -2.27959967 -2.74111176
		 -8.2839042e-009 -2.34114146 -2.71188378 0.1644792 -2.27959967 -2.74111176 0.23260872 -2.13102555 -2.81167531
		 0.30391794 -1.79996967 -2.8230381 -8.2839042e-009 -1.68625581 -2.87704492 -0.30391794 -1.79996967 -2.8230381
		 -0.42980486 -2.074498653 -2.69265413 -0.30391794 -2.34902787 -2.56227064 -8.2839042e-009 -2.46274114 -2.50826406
		 0.30391794 -2.34902787 -2.56227064 0.42980486 -2.074498653 -2.69265413 0.39708787 -1.63121033 -2.68488193
		 -8.2839042e-009 -1.48263597 -2.75544405 -0.39708787 -1.63121033 -2.68488193 -0.56156707 -1.98989952 -2.51452732
		 -0.39708787 -2.34858894 -2.34417152 -8.2839042e-009 -2.49716282 -2.2736094 0.3970879 -2.34858894 -2.34417152
		 0.56156713 -1.98989952 -2.51452732 0.4298048 -1.50186539 -2.48880172 -8.2839042e-009 -1.34105039 -2.56517911
		 -0.42980486 -1.50186539 -2.48880172 -0.60783589 -1.89010823 -2.30441165 -0.42980486 -2.27835059 -2.12002134
		 -8.2839042e-009 -2.43916631 -2.04364419 0.42980486 -2.27835059 -2.12002134 0.60783589 -1.89010823 -2.30441165
		 0.39708787 -1.43162727 -2.2646513 -8.2839042e-009 -1.28305292 -2.33521414 -0.39708787 -1.43162727 -2.2646513
		 -0.56156707 -1.7903167 -2.094295979 -0.39708787 -2.14900613 -1.92394149 -8.2839042e-009 -2.29758024 -1.85337818
		 0.3970879 -2.14900613 -1.92394149 0.56156713 -1.7903167 -2.094295979 -8.2839042e-009 -2.15087557 -2.85346961;
	setAttr -s 80 ".ed[0:79]"  0 1 1 1 9 1 9 8 1 8 0 1 1 2 1 2 10 1 10 9 1
		 2 3 1 3 11 1 11 10 1 3 4 1 4 12 1 12 11 1 4 5 1 5 13 1 13 12 1 5 6 1 6 14 1 14 13 1
		 6 7 1 7 15 1 15 14 1 7 0 1 8 15 1 9 17 1 17 16 1 16 8 1 10 18 1 18 17 1 11 19 1 19 18 1
		 12 20 1 20 19 1 13 21 1 21 20 1 14 22 1 22 21 1 15 23 1 23 22 1 16 23 1 17 25 1 25 24 1
		 24 16 1 18 26 1 26 25 1 19 27 1 27 26 1 20 28 1 28 27 1 21 29 1 29 28 1 22 30 1 30 29 1
		 23 31 1 31 30 1 24 31 1 25 33 1 33 32 0 32 24 1 26 34 1 34 33 0 27 35 1 35 34 0 28 36 1
		 36 35 0 29 37 1 37 36 0 30 38 1 38 37 0 31 39 1 39 38 0 32 39 0 0 40 1 40 1 1 40 2 1
		 40 3 1 40 4 1 40 5 1 40 6 1 40 7 1;
	setAttr -s 41 ".n[0:40]" -type "float3"  1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020;
	setAttr -s 40 -ch 152 ".fc[0:39]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 2 3
		f 4 4 5 6 -2
		mu 0 4 1 4 5 2
		f 4 7 8 9 -6
		mu 0 4 4 6 7 5
		f 4 10 11 12 -9
		mu 0 4 6 8 9 7
		f 4 13 14 15 -12
		mu 0 4 8 10 11 9
		f 4 16 17 18 -15
		mu 0 4 10 12 13 11
		f 4 19 20 21 -18
		mu 0 4 12 14 15 13
		f 4 22 -4 23 -21
		mu 0 4 14 0 3 15
		f 4 -3 24 25 26
		mu 0 4 3 2 16 17
		f 4 -7 27 28 -25
		mu 0 4 2 5 18 16
		f 4 -10 29 30 -28
		mu 0 4 5 7 19 18
		f 4 -13 31 32 -30
		mu 0 4 7 9 20 19
		f 4 -16 33 34 -32
		mu 0 4 9 11 21 20
		f 4 -19 35 36 -34
		mu 0 4 11 13 22 21
		f 4 -22 37 38 -36
		mu 0 4 13 15 23 22
		f 4 -24 -27 39 -38
		mu 0 4 15 3 17 23
		f 4 -26 40 41 42
		mu 0 4 17 16 24 25
		f 4 -29 43 44 -41
		mu 0 4 16 18 26 24
		f 4 -31 45 46 -44
		mu 0 4 18 19 27 26
		f 4 -33 47 48 -46
		mu 0 4 19 20 28 27
		f 4 -35 49 50 -48
		mu 0 4 20 21 29 28
		f 4 -37 51 52 -50
		mu 0 4 21 22 30 29
		f 4 -39 53 54 -52
		mu 0 4 22 23 31 30
		f 4 -40 -43 55 -54
		mu 0 4 23 17 25 31
		f 4 -42 56 57 58
		mu 0 4 25 24 32 33
		f 4 -45 59 60 -57
		mu 0 4 24 26 34 32
		f 4 -47 61 62 -60
		mu 0 4 26 27 35 34
		f 4 -49 63 64 -62
		mu 0 4 27 28 36 35
		f 4 -51 65 66 -64
		mu 0 4 28 29 37 36
		f 4 -53 67 68 -66
		mu 0 4 29 30 38 37
		f 4 -55 69 70 -68
		mu 0 4 30 31 39 38
		f 4 -56 -59 71 -70
		mu 0 4 31 25 33 39
		f 3 -1 72 73
		mu 0 3 1 0 40
		f 3 -5 -74 74
		mu 0 3 4 1 40
		f 3 -8 -75 75
		mu 0 3 6 4 40
		f 3 -11 -76 76
		mu 0 3 8 6 40
		f 3 -14 -77 77
		mu 0 3 10 8 40
		f 3 -17 -78 78
		mu 0 3 12 10 40
		f 3 -20 -79 79
		mu 0 3 14 12 40
		f 3 -23 -80 -73
		mu 0 3 0 14 40;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "tooth2" -p "Geo";
	rename -uid "275EB5A1-4693-1A99-513D-F1A44CE26FC4";
	addAttr -is true -ci true -k true -sn "currentUVSet" -ln "currentUVSet" -dt "string";
	setAttr -l on ".t" -type "double3" 0.11055911332368851 1.7827506065368652 2.2115199565887451 ;
	setAttr -l on ".t";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".r" -type "double3" 90.000000000000838 -71.307112452332575 -89.999999999999943 ;
	setAttr -l on ".r";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".s" -type "double3" 0.29630688221828599 0.29630688221828599 0.29630688221828599 ;
	setAttr -l on ".s";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr -k on ".currentUVSet" -type "string" "map1";
createNode mesh -n "tooth2Shape" -p "tooth2";
	rename -uid "C95050BA-4FA7-A0D1-5A38-6EB83AF52EF5";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".vcs" 2;
createNode mesh -n "tooth2ShapeOrig" -p "tooth2";
	rename -uid "EC6BF0AA-410E-AB0B-ACD3-46B460525E5C";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 29 ".uvst[0].uvsp[0:28]" -type "float2" 0.96752346 0.22345328
		 0.97086722 0.22234812 0.9716953 0.2237404 0.96777344 0.22487256 0.9737848 0.22011036
		 0.97472072 0.22102639 0.98398542 0.23158163 0.97992975 0.23478925 0.97542548 0.23737007
		 0.99731004 0.20958871 0.9958657 0.21447374 0.9834919 0.20948961 0.99370044 0.21924374
		 0.98132837 0.21282953 0.96793067 0.21553417 0.96313858 0.22022104 0.97413504 0.21361482
		 0.97743821 0.21639509 0.98917055 0.22584581 0.96199965 0.22491673 0.96832043 0.2402541
		 0.98181337 0.20892128 0.9748019 0.20649004 0.97946608 0.21161279 0.98224229 0.20544049
		 0.97847641 0.20102391 0.98429185 0.20533253 0.98304939 0.19904234 0.99856377 0.20270339;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 25 ".vt[0:24]"  0.46171746 1.10106552 0.26347589 0.87472123 1.10106552 0.26347589
		 0.46979538 1.95971489 0.30047178 0.86664331 1.95971489 0.30047178 0.46979538 1.95971489 -0.41240883
		 0.86664331 1.95971489 -0.41240883 0.46171689 1.053835034 -0.37541306 0.87472069 1.053835034 -0.37541306
		 0.89571476 1.17369723 0.28974795 0.66821933 1.95971596 0.42522585 0.3786054 1.95971596 -0.055968553
		 0.95783216 1.95971596 -0.055968553 0.66821933 1.95971596 -0.53716296 0.44072282 1.17369783 -0.41277882
		 0.89571476 1.17369723 -0.41277882 0.66821933 1.08693862 -0.48721859 0.40273666 0.98925978 -0.055968553
		 0.93370205 0.98925978 -0.055968553 0.66821933 1.08693862 0.37528145 0.44072282 1.17369783 0.28974795
		 0.66821986 1.17369723 0.43349797 0.66821986 1.17369723 -0.55652881 0.66821933 0.94318855 -0.055968553
		 0.97154784 1.17369831 -0.055968553 0.36489141 1.17369831 -0.055968553;
	setAttr -s 44 ".ed[0:43]"  0 18 1 18 20 1 20 19 1 19 0 1 18 1 1 1 8 1
		 8 20 1 8 3 1 3 9 0 9 20 1 9 2 0 2 19 1 4 12 0 12 21 1 21 13 1 13 4 1 12 5 0 5 14 1
		 14 21 1 14 7 1 7 15 1 15 21 1 15 6 1 6 13 1 15 22 1 22 16 1 16 6 1 7 17 1 17 22 1
		 17 1 1 18 22 1 0 16 1 17 23 1 23 8 1 14 23 1 5 11 0 11 23 1 11 3 0 16 24 1 24 13 1
		 19 24 1 2 10 0 10 24 1 10 4 0;
	setAttr -s 25 ".n[0:24]" -type "float3"  1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020;
	setAttr -s 20 -ch 80 ".fc[0:19]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 2 3
		f 4 4 5 6 -2
		mu 0 4 1 4 5 2
		f 4 -7 7 8 9
		mu 0 4 2 5 6 7
		f 4 -3 -10 10 11
		mu 0 4 3 2 7 8
		f 4 12 13 14 15
		mu 0 4 9 10 11 26
		f 4 16 17 18 -14
		mu 0 4 10 12 13 11
		f 4 -19 19 20 21
		mu 0 4 11 13 23 21
		f 4 -15 -22 22 23
		mu 0 4 26 11 21 24
		f 4 -23 24 25 26
		mu 0 4 24 21 22 25
		f 4 -21 27 28 -25
		mu 0 4 21 23 16 22
		f 4 -29 29 -5 30
		mu 0 4 14 16 4 1
		f 4 -26 -31 -1 31
		mu 0 4 15 14 1 0
		f 4 -30 32 33 -6
		mu 0 4 4 16 17 5
		f 4 -28 -20 34 -33
		mu 0 4 16 23 13 17
		f 4 -35 -18 35 36
		mu 0 4 17 13 12 18
		f 4 -34 -37 37 -8
		mu 0 4 5 17 18 6
		f 4 -27 38 39 -24
		mu 0 4 24 25 27 26
		f 4 -32 -4 40 -39
		mu 0 4 15 0 3 19
		f 4 -41 -12 41 42
		mu 0 4 19 3 8 20
		f 4 -40 -43 43 -16
		mu 0 4 26 27 28 9;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "tooth1" -p "Geo";
	rename -uid "6C85F568-4288-C676-56AA-B7915913F1A1";
	addAttr -is true -ci true -k true -sn "currentUVSet" -ln "currentUVSet" -dt "string";
	setAttr -l on ".t" -type "double3" -0.10135474801063538 1.7827506065368652 2.2115199565887451 ;
	setAttr -l on ".t";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".r" -type "double3" 90.000000000000838 -71.307112452332575 -89.999999999999943 ;
	setAttr -l on ".r";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".s" -type "double3" 0.29630688221828599 0.29630688221828599 0.29630688221828599 ;
	setAttr -l on ".s";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr -k on ".currentUVSet" -type "string" "map1";
createNode mesh -n "tooth1Shape" -p "tooth1";
	rename -uid "FB2FBA40-4D39-8D1B-8AAC-4FB47A27C979";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".vcs" 2;
createNode mesh -n "tooth1ShapeOrig" -p "tooth1";
	rename -uid "1DA82DD5-4D0D-F2CC-5525-78A8C5C0B920";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 30 ".uvst[0].uvsp[0:29]" -type "float2" 0.95806068 0.0954988
		 0.96099055 0.095237553 0.96154153 0.096567571 0.95798606 0.096897691 0.96354198 0.093597263
		 0.96455717 0.094490796 0.97216523 0.10926616 0.96779585 0.11134255 0.96313977 0.11302918
		 0.99179846 0.095191032 0.98830819 0.098630995 0.97764158 0.086979374 0.98445433 0.10178375
		 0.95881963 0.088616043 0.95431703 0.091673538 0.96405637 0.087778196 0.96846026 0.089582831
		 0.97808659 0.10575342 0.95223349 0.095976859 0.95583856 0.11472332 0.9765842 0.085836224
		 0.97239763 0.080225281 0.97377115 0.086495653 0.96911263 0.084724925 0.97439277 0.088525057
		 0.97810423 0.083287559 0.97706091 0.077762201 0.97995424 0.084084108 0.9818942 0.077941664
		 0.99617583 0.089840189;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 25 ".vt[0:24]"  0.51158667 0.95367271 0.37075344 0.82485145 0.95367217 0.37075344
		 0.46979538 1.95971489 0.40774935 0.86664331 1.95971489 0.40774935 0.46979538 1.95971489 -0.30513132
		 0.86664331 1.95971489 -0.30513132 0.51158613 0.90644169 -0.26813546 0.82485205 0.90644169 -0.26813546
		 0.84584612 1.02630496 0.3970255 0.66821933 1.95971596 0.53250337 0.3786054 1.95971596 0.051309008
		 0.95783216 1.95971596 0.051309008 0.66821933 1.95971596 -0.42988539 0.49059203 1.02630496 -0.30550125
		 0.84584612 1.02630496 -0.30550125 0.66821933 0.93954581 -0.37994099 0.45260584 0.84186649 0.051309008
		 0.88383174 0.84186649 0.051309008 0.66821933 0.93954581 0.48255897 0.49059203 1.02630496 0.3970255
		 0.66821879 1.02630496 0.54077548 0.66821879 1.02630496 -0.44925126 0.66821933 0.79579526 0.051309008
		 0.92167753 1.026304483 0.051309008 0.41476116 1.02630496 0.051309008;
	setAttr -s 44 ".ed[0:43]"  0 18 1 18 20 1 20 19 1 19 0 1 18 1 1 1 8 1
		 8 20 1 8 3 1 3 9 0 9 20 1 9 2 0 2 19 1 4 12 0 12 21 1 21 13 1 13 4 1 12 5 0 5 14 1
		 14 21 1 14 7 1 7 15 1 15 21 1 15 6 1 6 13 1 15 22 1 22 16 1 16 6 1 7 17 1 17 22 1
		 17 1 1 18 22 1 0 16 1 17 23 1 23 8 1 14 23 1 5 11 0 11 23 1 11 3 0 16 24 1 24 13 1
		 19 24 1 2 10 0 10 24 1 10 4 0;
	setAttr -s 25 ".n[0:24]" -type "float3"  1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020;
	setAttr -s 20 -ch 80 ".fc[0:19]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 2 3
		f 4 4 5 6 -2
		mu 0 4 1 4 5 2
		f 4 -7 7 8 9
		mu 0 4 2 5 6 7
		f 4 -3 -10 10 11
		mu 0 4 3 2 7 8
		f 4 12 13 14 15
		mu 0 4 9 10 11 27
		f 4 16 17 18 -14
		mu 0 4 10 12 24 11
		f 4 -19 19 20 21
		mu 0 4 11 24 22 20
		f 4 -15 -22 22 23
		mu 0 4 27 11 20 25
		f 4 -23 24 25 26
		mu 0 4 25 20 21 26
		f 4 -21 27 28 -25
		mu 0 4 20 22 23 21
		f 4 -29 29 -5 30
		mu 0 4 13 15 4 1
		f 4 -26 -31 -1 31
		mu 0 4 14 13 1 0
		f 4 -30 32 33 -6
		mu 0 4 4 15 16 5
		f 4 -28 -20 34 -33
		mu 0 4 23 22 24 16
		f 4 -35 -18 35 36
		mu 0 4 16 24 12 17
		f 4 -34 -37 37 -8
		mu 0 4 5 16 17 6
		f 4 -27 38 39 -24
		mu 0 4 25 26 28 27
		f 4 -32 -4 40 -39
		mu 0 4 14 0 3 18
		f 4 -41 -12 41 42
		mu 0 4 18 3 8 19
		f 4 -40 -43 43 -16
		mu 0 4 27 28 29 9;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "l_t_whisker" -p "Geo";
	rename -uid "D8F5DD4A-4358-6ED6-D83A-319B7DC80C0D";
	addAttr -is true -ci true -k true -sn "currentUVSet" -ln "currentUVSet" -dt "string";
	setAttr -l on ".t";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".r";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".s";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" 0.3237277830336156 2.1733529283676005 2.551367839949279 ;
	setAttr ".sp" -type "double3" 0.3237277830336156 2.1733529283676005 2.551367839949279 ;
	setAttr -k on ".currentUVSet" -type "string" "map1";
createNode mesh -n "l_t_whiskerShape" -p "l_t_whisker";
	rename -uid "709485AC-4EBF-3B78-60B5-739567ADB70B";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".vcs" 2;
createNode mesh -n "l_t_whiskerShapeOrig" -p "l_t_whisker";
	rename -uid "E99B4CAD-4E39-EF5D-B577-10A9F3E76BBB";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.88610333 0.95505118
		 0.91097987 0.94979131 0.91113806 0.95275652 0.88612121 0.95919323 0.78287554 0.94681191
		 0.81181288 0.95314097 0.81054473 0.95997667 0.78115207 0.95466185 0.83548617 0.95664752
		 0.85817796 0.9582181 0.85768861 0.96354163 0.8345778 0.96268046 0.9505986 0.94091296
		 0.95060563 0.94206762;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 14 ".vt[0:13]"  0.34001532 2.57290936 2.72831893 1.31711328 2.55420375 2.51563954
		 0.32860088 2.62208486 2.72948146 1.31763721 2.56135631 2.51672316 0.66101617 2.6748178 2.77353835
		 0.66711426 2.63697648 2.77295494 0.98238307 2.65655041 2.74945498 0.98242116 2.63054562 2.74840045
		 1.11397064 2.60186625 2.66240573 1.11536372 2.62042713 2.66369867 0.8094511 2.64819813 2.77925849
		 0.80602521 2.68160439 2.7799778 0.51987833 2.61392283 2.75294304 0.51143515 2.65677452 2.75375962;
	setAttr -s 19 ".ed[0:18]"  7 8 0 8 9 1 9 6 0 6 7 1 0 12 0 12 13 1 13 2 0
		 2 0 0 5 10 0 10 11 1 11 4 0 4 5 1 8 1 0 1 3 0 3 9 0 10 7 0 6 11 0 12 5 0 4 13 0;
	setAttr -s 14 ".n[0:13]" -type "float3"  1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 2 3
		f 4 4 5 6 7
		mu 0 4 4 5 6 7
		f 4 8 9 10 11
		mu 0 4 8 9 10 11
		f 4 12 13 14 -2
		mu 0 4 1 12 13 2
		f 4 15 -4 16 -10
		mu 0 4 9 0 3 10
		f 4 17 -12 18 -6
		mu 0 4 5 8 11 6;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "l_b_whisker" -p "Geo";
	rename -uid "17150D14-4886-9EC0-96E3-42AD729D4297";
	addAttr -is true -ci true -k true -sn "currentUVSet" -ln "currentUVSet" -dt "string";
	setAttr -l on ".t";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".r";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".s";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" 0.32372778303361516 2.2877004460875336 2.5238051159938157 ;
	setAttr ".sp" -type "double3" 0.32372778303361516 2.2877004460875336 2.5238051159938157 ;
	setAttr -k on ".currentUVSet" -type "string" "map1";
createNode mesh -n "l_b_whiskerShape" -p "l_b_whisker";
	rename -uid "85C6EBA9-4DAB-2FF5-0F53-2CAF678E0F11";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".vcs" 2;
createNode mesh -n "l_b_whiskerShapeOrig" -p "l_b_whisker";
	rename -uid "166744DF-4BF7-6AC0-FC46-A2B33DB4A99F";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.86292875 0.98629087
		 0.88843572 0.98467976 0.88730162 0.98812562 0.86125779 0.99111658 0.76319623 0.97832555
		 0.79086202 0.98246187 0.78751826 0.9906078 0.75934112 0.98771733 0.81346416 0.98525268
		 0.83511126 0.9873901 0.83267105 0.99362737 0.81053692 0.99238318 0.92909706 0.98293465
		 0.92858529 0.98425978;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 14 ".vt[0:13]"  0.3573392 2.69295263 2.7150979 1.17759085 2.87665939 2.53946567
		 0.32715294 2.73926926 2.72144032 1.17397964 2.88329434 2.5413518 0.59633434 2.80881715 2.76733136
		 0.61925834 2.77365994 2.7624805 0.86835074 2.85446167 2.74938798 0.88208038 2.83041835 2.74526262
		 0.99851424 2.84701276 2.66915083 0.989438 2.86435342 2.67265749 0.73370218 2.80595851 2.77116632
		 0.71428937 2.83678031 2.77573872 0.50117886 2.7391181 2.74134707 0.47499675 2.77928996 2.74684882;
	setAttr -s 19 ".ed[0:18]"  7 8 0 8 9 1 9 6 0 6 7 1 0 12 0 12 13 1 13 2 0
		 2 0 0 5 10 0 10 11 1 11 4 0 4 5 1 8 1 0 1 3 0 3 9 0 10 7 0 6 11 0 12 5 0 4 13 0;
	setAttr -s 14 ".n[0:13]" -type "float3"  1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 2 3
		f 4 4 5 6 7
		mu 0 4 4 5 6 7
		f 4 8 9 10 11
		mu 0 4 8 9 10 11
		f 4 12 13 14 -2
		mu 0 4 1 12 13 2
		f 4 15 -4 16 -10
		mu 0 4 9 0 3 10
		f 4 17 -12 18 -6
		mu 0 4 5 8 11 6;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "r_t_whisker" -p "Geo";
	rename -uid "543E4471-4EA9-896A-0805-87B1438613F5";
	addAttr -is true -ci true -k true -sn "currentUVSet" -ln "currentUVSet" -dt "string";
	setAttr -l on ".t";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".r";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".s";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" -0.32372778303361593 2.1733529283676005 2.551367839949279 ;
	setAttr ".sp" -type "double3" -0.32372778303361593 2.1733529283676005 2.551367839949279 ;
	setAttr -k on ".currentUVSet" -type "string" "map1";
createNode mesh -n "r_t_whiskerShape" -p "r_t_whisker";
	rename -uid "449908B1-46D7-B487-53BC-828E6F578ED2";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".vcs" 2;
createNode mesh -n "r_t_whiskerShapeOrig" -p "r_t_whisker";
	rename -uid "53C1AD9C-42B4-113F-0448-6EB9F83BB804";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.880238 0.93764496
		 0.90518612 0.93273592 0.90530258 0.93570304 0.88019758 0.94178689 0.77713645 0.92795372
		 0.80598187 0.93468916 0.80461758 0.94150639 0.77530271 0.93577838 0.82960349 0.93852866
		 0.85227084 0.9404186 0.85170668 0.94573462 0.82861024 0.94454825 0.94492579 0.92441607
		 0.94491661 0.92557049;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 14 ".vt[0:13]"  -0.34001532 2.57290936 2.72831893 -1.31711328 2.55420375 2.51563954
		 -0.32860088 2.62208486 2.72948146 -1.31763721 2.56135631 2.51672316 -0.66101617 2.6748178 2.77353835
		 -0.66711426 2.63697648 2.77295494 -0.98238307 2.65655041 2.74945498 -0.98242116 2.63054562 2.74840045
		 -1.11397064 2.60186625 2.66240573 -1.11536372 2.62042713 2.66369867 -0.8094511 2.64819813 2.77925849
		 -0.80602521 2.68160439 2.7799778 -0.51987833 2.61392283 2.75294304 -0.51143515 2.65677452 2.75375962;
	setAttr -s 19 ".ed[0:18]"  7 6 1 6 9 0 9 8 1 8 7 0 0 2 0 2 13 0 13 12 1
		 12 0 0 5 4 1 4 11 0 11 10 1 10 5 0 9 3 0 3 1 0 1 8 0 11 6 0 7 10 0 13 4 0 5 12 0;
	setAttr -s 14 ".n[0:13]" -type "float3"  1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 3 2 1
		f 4 4 5 6 7
		mu 0 4 4 7 6 5
		f 4 8 9 10 11
		mu 0 4 8 11 10 9
		f 4 -3 12 13 14
		mu 0 4 1 2 13 12
		f 4 -11 15 -1 16
		mu 0 4 9 10 3 0
		f 4 -7 17 -9 18
		mu 0 4 5 6 11 8;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "l_b_eyeLid" -p "Geo";
	rename -uid "2AC57B9A-4163-9E79-AFE0-4582AA5C0517";
	addAttr -is true -ci true -k true -sn "currentUVSet" -ln "currentUVSet" -dt "string";
	setAttr -l on ".t";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".r";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".s";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" 0.51023732061957694 2.7090989760132418 1.3933513123467482 ;
	setAttr ".sp" -type "double3" 0.51023732061957694 2.7090989760132418 1.3933513123467482 ;
	setAttr -k on ".currentUVSet" -type "string" "map1";
createNode mesh -n "l_b_eyeLidShape" -p "|Hamster|Geo|l_b_eyeLid";
	rename -uid "935AD459-428C-7CE4-E3A1-8AA78F857CA4";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".vcs" 2;
createNode mesh -n "l_b_eyeLidShapeOrig" -p "|Hamster|Geo|l_b_eyeLid";
	rename -uid "223D060E-4BDF-BCF2-53AD-188C70AF8A86";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 76 ".uvst[0].uvsp[0:75]" -type "float2" 0.75824213 0.031840961
		 0.75300187 0.044718444 0.76827127 0.022208294 0.78135359 0.017489012 0.79522216 0.018502472
		 0.80747604 0.025071612 0.81599641 0.0360565 0.81931138 0.049554002 0.8168503 0.063229308
		 0.80904347 0.07472042 0.79724044 0.082043163 0.78348088 0.083935961 0.77013916 0.080071792
		 0.75951773 0.071115509 0.75345474 0.058611132 0.76421863 0.035784699 0.76006675 0.045888033
		 0.77212471 0.02824343 0.78241587 0.024570148 0.79330951 0.025402924 0.80292004 0.030596092
		 0.80958664 0.039249383 0.81215715 0.049863908 0.81018764 0.060603566 0.80402303 0.069612928
		 0.79472858 0.075336076 0.78391069 0.076787457 0.77343661 0.073714271 0.76511419 0.066647559
		 0.76038432 0.056805156 0.76987469 0.039522927 0.76675576 0.047001533 0.77577055 0.033961479
		 0.78341913 0.031275827 0.79149699 0.031935364 0.79860514 0.035826501 0.80351603 0.04227272
		 0.80538303 0.050156306 0.80387783 0.058114838 0.79927057 0.064775296 0.79235196 0.068982713
		 0.78432095 0.070018649 0.776564 0.06769564 0.77041769 0.062420819 0.76694787 0.055101026
		 0.77532625 0.043190036 0.77323461 0.048137035 0.77926463 0.039540038 0.78433877 0.037789077
		 0.78969043 0.038251691 0.7943821 0.040868372 0.79760003 0.045162141 0.79881394 0.050387647
		 0.79777181 0.055650461 0.79470068 0.060048964 0.79009354 0.06279695 0.78477085 0.06345991
		 0.77964711 0.061877422 0.77559781 0.05836416 0.77332985 0.053503711 0.7806589 0.046901897
		 0.77959412 0.049352922 0.78259069 0.045053449 0.785128 0.044206716 0.78778607 0.044470664
		 0.79013443 0.045745324 0.79176044 0.047872752 0.7923274 0.050490439 0.79184121 0.053124763
		 0.79027724 0.055299021 0.78799456 0.056701157 0.78533083 0.056995437 0.78275746 0.056239549
		 0.78074598 0.054463696 0.77962619 0.052028775 0.78590417 0.050601881;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 76 ".vt[0:75]"  1.087650061 3.16630292 1.51216269 1.068986535 3.071294308 1.7011919
		 0.96703994 3.00044178963 1.87351406 0.79943341 2.96600056 1.99932837 0.59514785 2.97392392 2.056880951
		 0.3895067 3.022843838 2.036220312 0.21806929 3.10429764 1.94092238 0.11047633 3.20420456 1.78746176
		 0.085332982 3.3052876 1.60237479 0.14698716 3.39006925 1.41766584 0.28477529 3.44389176 1.26526809
		 0.47487611 3.45744658 1.17153668 0.68441558 3.42839193 1.15267527 0.87716907 3.36174798 1.21195197
		 1.019800186 3.26904225 1.33910882 1.037534237 3.030369759 1.44473457 1.019785762 2.94000959 1.62451279
		 0.92282683 2.87262678 1.78839898 0.76342219 2.83987212 1.90805328 0.56913584 2.84740758 1.96278954
		 0.37356064 2.89393163 1.94314229 0.21051471 2.97139835 1.85250938 0.10818768 3.066415548 1.70656013
		 0.08427535 3.16255116 1.53053248 0.14291044 3.24318433 1.3548615 0.27395526 3.29437256 1.20992339
		 0.4547503 3.30726504 1.12077773 0.65403599 3.27963138 1.10284114 0.83735299 3.21625018 1.15921426
		 0.97300386 3.12808156 1.2801491 0.94334435 2.91212201 1.39294481 0.92824632 2.83525705 1.54587424
		 0.84576935 2.77793694 1.68528545 0.71017247 2.75007391 1.78707063 0.54490358 2.75648284 1.83363307
		 0.37853611 2.79605961 1.81691825 0.23983979 2.86195803 1.73981977 0.1527963 2.94278336 1.61566889
		 0.13245416 3.02456212 1.46592963 0.18233411 3.093151331 1.31649745 0.2938081 3.13669348 1.19320667
		 0.44760221 3.14766002 1.11737633 0.61712253 3.12415481 1.10211563 0.77306175 3.070240021 1.15006959
		 0.88845432 2.9952383 1.25294363 0.81430644 2.82312703 1.36187387 0.80333734 2.76728249 1.47298324
		 0.74341428 2.72563744 1.57427013 0.64489788 2.70539236 1.6482228 0.52482247 2.71004987 1.68205202
		 0.40394837 2.73880482 1.66990578 0.30318162 2.7866807 1.61389399 0.2399402 2.84540439 1.52369237
		 0.22515988 2.90482068 1.41489911 0.26139969 2.95465398 1.30632973 0.34238973 2.98628998 1.21675313
		 0.45412895 2.99425673 1.16166019 0.57729375 2.97717786 1.15057528 0.69058657 2.93800902 1.18541145
		 0.77442604 2.8835156 1.2601558 0.66304898 2.77210426 1.35455644 0.65728128 2.74274516 1.41296911
		 0.62577927 2.72084904 1.46622157 0.5739854 2.71020699 1.50509953 0.51085746 2.71265554 1.52288365
		 0.44731241 2.72777128 1.51650155 0.39433289 2.75294447 1.4870497 0.36108762 2.78381419 1.43963158
		 0.35331562 2.81505299 1.38243341 0.37236851 2.84125137 1.32535577 0.41494694 2.85788393 1.2782619
		 0.47369084 2.86207294 1.24929655 0.53844148 2.85309505 1.24346697 0.5980072 2.83249927 1.26178694
		 0.64208233 2.80385208 1.30107999 0.50437689 2.764045 1.37171137;
	setAttr -s 150 ".ed[0:149]"  0 1 0 1 16 1 16 15 1 15 0 1 1 2 0 2 17 1
		 17 16 1 2 3 0 3 18 1 18 17 1 3 4 0 4 19 1 19 18 1 4 5 0 5 20 1 20 19 1 5 6 0 6 21 1
		 21 20 1 6 7 0 7 22 1 22 21 1 7 8 0 8 23 1 23 22 1 8 9 0 9 24 1 24 23 1 9 10 0 10 25 1
		 25 24 1 10 11 0 11 26 1 26 25 1 11 12 0 12 27 1 27 26 1 12 13 0 13 28 1 28 27 1 13 14 0
		 14 29 1 29 28 1 14 0 0 15 29 1 16 31 1 31 30 1 30 15 1 17 32 1 32 31 1 18 33 1 33 32 1
		 19 34 1 34 33 1 20 35 1 35 34 1 21 36 1 36 35 1 22 37 1 37 36 1 23 38 1 38 37 1 24 39 1
		 39 38 1 25 40 1 40 39 1 26 41 1 41 40 1 27 42 1 42 41 1 28 43 1 43 42 1 29 44 1 44 43 1
		 30 44 1 31 46 1 46 45 1 45 30 1 32 47 1 47 46 1 33 48 1 48 47 1 34 49 1 49 48 1 35 50 1
		 50 49 1 36 51 1 51 50 1 37 52 1 52 51 1 38 53 1 53 52 1 39 54 1 54 53 1 40 55 1 55 54 1
		 41 56 1 56 55 1 42 57 1 57 56 1 43 58 1 58 57 1 44 59 1 59 58 1 45 59 1 46 61 1 61 60 1
		 60 45 1 47 62 1 62 61 1 48 63 1 63 62 1 49 64 1 64 63 1 50 65 1 65 64 1 51 66 1 66 65 1
		 52 67 1 67 66 1 53 68 1 68 67 1 54 69 1 69 68 1 55 70 1 70 69 1 56 71 1 71 70 1 57 72 1
		 72 71 1 58 73 1 73 72 1 59 74 1 74 73 1 60 74 1 61 75 1 75 60 1 62 75 1 63 75 1 64 75 1
		 65 75 1 66 75 1 67 75 1 68 75 1 69 75 1 70 75 1 71 75 1 72 75 1 73 75 1 74 75 1;
	setAttr -s 76 ".n[0:75]" -type "float3"  1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020;
	setAttr -s 75 -ch 285 ".fc[0:74]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 1 0 15 16
		f 4 4 5 6 -2
		mu 0 4 0 2 17 15
		f 4 7 8 9 -6
		mu 0 4 2 3 18 17
		f 4 10 11 12 -9
		mu 0 4 3 4 19 18
		f 4 13 14 15 -12
		mu 0 4 4 5 20 19
		f 4 16 17 18 -15
		mu 0 4 5 6 21 20
		f 4 19 20 21 -18
		mu 0 4 6 7 22 21
		f 4 22 23 24 -21
		mu 0 4 7 8 23 22
		f 4 25 26 27 -24
		mu 0 4 8 9 24 23
		f 4 28 29 30 -27
		mu 0 4 9 10 25 24
		f 4 31 32 33 -30
		mu 0 4 10 11 26 25
		f 4 34 35 36 -33
		mu 0 4 11 12 27 26
		f 4 37 38 39 -36
		mu 0 4 12 13 28 27
		f 4 40 41 42 -39
		mu 0 4 13 14 29 28
		f 4 43 -4 44 -42
		mu 0 4 14 1 16 29
		f 4 -3 45 46 47
		mu 0 4 16 15 30 31
		f 4 -7 48 49 -46
		mu 0 4 15 17 32 30
		f 4 -10 50 51 -49
		mu 0 4 17 18 33 32
		f 4 -13 52 53 -51
		mu 0 4 18 19 34 33
		f 4 -16 54 55 -53
		mu 0 4 19 20 35 34
		f 4 -19 56 57 -55
		mu 0 4 20 21 36 35
		f 4 -22 58 59 -57
		mu 0 4 21 22 37 36
		f 4 -25 60 61 -59
		mu 0 4 22 23 38 37
		f 4 -28 62 63 -61
		mu 0 4 23 24 39 38
		f 4 -31 64 65 -63
		mu 0 4 24 25 40 39
		f 4 -34 66 67 -65
		mu 0 4 25 26 41 40
		f 4 -37 68 69 -67
		mu 0 4 26 27 42 41
		f 4 -40 70 71 -69
		mu 0 4 27 28 43 42
		f 4 -43 72 73 -71
		mu 0 4 28 29 44 43
		f 4 -45 -48 74 -73
		mu 0 4 29 16 31 44
		f 4 -47 75 76 77
		mu 0 4 31 30 45 46
		f 4 -50 78 79 -76
		mu 0 4 30 32 47 45
		f 4 -52 80 81 -79
		mu 0 4 32 33 48 47
		f 4 -54 82 83 -81
		mu 0 4 33 34 49 48
		f 4 -56 84 85 -83
		mu 0 4 34 35 50 49
		f 4 -58 86 87 -85
		mu 0 4 35 36 51 50
		f 4 -60 88 89 -87
		mu 0 4 36 37 52 51
		f 4 -62 90 91 -89
		mu 0 4 37 38 53 52
		f 4 -64 92 93 -91
		mu 0 4 38 39 54 53
		f 4 -66 94 95 -93
		mu 0 4 39 40 55 54
		f 4 -68 96 97 -95
		mu 0 4 40 41 56 55
		f 4 -70 98 99 -97
		mu 0 4 41 42 57 56
		f 4 -72 100 101 -99
		mu 0 4 42 43 58 57
		f 4 -74 102 103 -101
		mu 0 4 43 44 59 58
		f 4 -75 -78 104 -103
		mu 0 4 44 31 46 59
		f 4 -77 105 106 107
		mu 0 4 46 45 60 61
		f 4 -80 108 109 -106
		mu 0 4 45 47 62 60
		f 4 -82 110 111 -109
		mu 0 4 47 48 63 62
		f 4 -84 112 113 -111
		mu 0 4 48 49 64 63
		f 4 -86 114 115 -113
		mu 0 4 49 50 65 64
		f 4 -88 116 117 -115
		mu 0 4 50 51 66 65
		f 4 -90 118 119 -117
		mu 0 4 51 52 67 66
		f 4 -92 120 121 -119
		mu 0 4 52 53 68 67
		f 4 -94 122 123 -121
		mu 0 4 53 54 69 68
		f 4 -96 124 125 -123
		mu 0 4 54 55 70 69
		f 4 -98 126 127 -125
		mu 0 4 55 56 71 70
		f 4 -100 128 129 -127
		mu 0 4 56 57 72 71
		f 4 -102 130 131 -129
		mu 0 4 57 58 73 72
		f 4 -104 132 133 -131
		mu 0 4 58 59 74 73
		f 4 -105 -108 134 -133
		mu 0 4 59 46 61 74
		f 3 -107 135 136
		mu 0 3 61 60 75
		f 3 -110 137 -136
		mu 0 3 60 62 75
		f 3 -112 138 -138
		mu 0 3 62 63 75
		f 3 -114 139 -139
		mu 0 3 63 64 75
		f 3 -116 140 -140
		mu 0 3 64 65 75
		f 3 -118 141 -141
		mu 0 3 65 66 75
		f 3 -120 142 -142
		mu 0 3 66 67 75
		f 3 -122 143 -143
		mu 0 3 67 68 75
		f 3 -124 144 -144
		mu 0 3 68 69 75
		f 3 -126 145 -145
		mu 0 3 69 70 75
		f 3 -128 146 -146
		mu 0 3 70 71 75
		f 3 -130 147 -147
		mu 0 3 71 72 75
		f 3 -132 148 -148
		mu 0 3 72 73 75
		f 3 -134 149 -149
		mu 0 3 73 74 75
		f 3 -135 -137 -150
		mu 0 3 74 61 75;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "l_t_eyeLid" -p "Geo";
	rename -uid "F992ADC7-4065-D449-D026-CEB0D7F070E8";
	addAttr -is true -ci true -k true -sn "currentUVSet" -ln "currentUVSet" -dt "string";
	setAttr -l on ".t";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".r";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".s";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" 0.51023732061957694 2.7090989760132413 1.3933513123467485 ;
	setAttr ".sp" -type "double3" 0.51023732061957694 2.7090989760132413 1.3933513123467485 ;
	setAttr -k on ".currentUVSet" -type "string" "map1";
createNode mesh -n "l_t_eyeLidShape" -p "|Hamster|Geo|l_t_eyeLid";
	rename -uid "B2B0CFC8-463B-8C3C-1D20-DAA2990EB4A6";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".vcs" 2;
createNode mesh -n "l_t_eyeLidShapeOrig" -p "|Hamster|Geo|l_t_eyeLid";
	rename -uid "5AC425D9-48FA-49F9-783E-9A9ED3A8139A";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 76 ".uvst[0].uvsp[0:75]" -type "float2" 0.59843701 0.0097462581
		 0.58681929 0.017376831 0.61215842 0.0075016841 0.6256091 0.011034402 0.63645726 0.019735197
		 0.64282465 0.032098267 0.64361072 0.045981497 0.63868093 0.058981627 0.62889034 0.068849057
		 0.61593693 0.07388033 0.60206169 0.073208779 0.58965951 0.066955522 0.58087003 0.056201439
		 0.57720935 0.042802431 0.57931215 0.029070435 0.60112327 0.016383901 0.59197438 0.022347918
		 0.6119104 0.014658101 0.62246948 0.017470092 0.63096935 0.024334984 0.63593948 0.03406487
		 0.63652074 0.044975482 0.63261414 0.055177648 0.62489569 0.06290517 0.61470455 0.066825427
		 0.60380334 0.066261701 0.59407336 0.061315373 0.58719414 0.052840482 0.58435333 0.042300433
		 0.5860436 0.031515285 0.60366154 0.022671245 0.59685183 0.027060155 0.61167085 0.021435702
		 0.61949301 0.023562191 0.62577206 0.028687393 0.62941968 0.035925329 0.629807 0.044021536
		 0.62687063 0.051574614 0.62111312 0.057275217 0.61353803 0.06014511 0.60545325 0.059683099
		 0.59825456 0.055975132 0.59318578 0.049660549 0.59111911 0.041831039 0.59241575 0.033837218
		 0.60607105 0.028784612 0.60154301 0.031672221 0.61138421 0.028012224 0.61655676 0.029447908
		 0.62070227 0.032864954 0.62308228 0.03768139 0.62329704 0.043043837 0.62133151 0.048036933
		 0.61748558 0.051780257 0.61245763 0.053660646 0.60710055 0.053313766 0.60234946 0.050824367
		 0.59902775 0.046619564 0.59768772 0.041432232 0.5985778 0.036144592 0.60835654 0.034867588
		 0.60608935 0.036283143 0.61099601 0.034440264 0.61356652 0.035181254 0.61560661 0.03690578
		 0.61681807 0.03928709 0.61695147 0.041961271 0.61593449 0.044437788 0.61404246 0.046329848
		 0.61152357 0.047228243 0.60885257 0.047080234 0.60647082 0.045850661 0.60478717 0.043757588
		 0.60413885 0.041149832 0.60459799 0.038506985 0.61057717 0.040887762;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 76 ".vt[0:75]"  0.99088216 2.94809961 1.43460631 0.83233565 2.86385608 1.32114685
		 0.63142174 2.83963561 1.25668693 0.42288119 2.87963128 1.25237799 0.24277203 2.97692657 1.30896389
		 0.12223738 3.11469865 1.41666067 0.082117401 3.26912165 1.55684316 0.12935036 3.41349792 1.70527589
		 0.25576875 3.5228622 1.83629155 0.43951309 3.5783031 1.92723608 0.6488139 3.57023859 1.9623878
		 0.84748018 3.50005889 1.93566489 1.0011612177 3.37990308 1.85169184 1.083282709 3.23053932 1.72498119
		 1.079646945 3.077802896 1.57745075 0.99420494 3.069156647 1.33034575 0.84341854 2.98903489 1.22243774
		 0.65233833 2.96600199 1.16113567 0.45400518 3.0040421486 1.15703917 0.28271127 3.096574545 1.21085465
		 0.16807508 3.22760153 1.31327844 0.12991858 3.3744657 1.44659901 0.17483953 3.51177573 1.587767
		 0.29507041 3.61578655 1.71236968 0.46982244 3.6685164 1.79886496 0.66887915 3.66084552 1.83229589
		 0.8578223 3.5941031 1.80688274 1.0039813519 3.47982597 1.727018 1.082083941 3.33777547 1.60651112
		 1.078625441 3.19251299 1.46620059 0.95770013 3.20410395 1.25293124 0.82943285 3.13594818 1.16113913
		 0.66689003 3.11635351 1.10899067 0.49817744 3.1487112 1.10550499 0.35246584 3.22742319 1.15128207
		 0.2549513 3.33888292 1.23841095 0.22249384 3.4638145 1.35182166 0.26070571 3.58061671 1.47190511
		 0.36298046 3.66909456 1.57789993 0.51163274 3.71394634 1.65147436 0.68096012 3.70742083 1.67991138
		 0.84168416 3.65064502 1.65829277 0.96601516 3.55343771 1.59035814 1.032453656 3.43260193 1.48784912
		 1.029511809 3.30903387 1.3684926 0.88493699 3.33972335 1.2099297 0.7917459 3.290205 1.14323902
		 0.67365241 3.27596951 1.10535181 0.55107474 3.29947782 1.10281789 0.44520923 3.35666585 1.13607788
		 0.37436146 3.43764782 1.19938219 0.35077858 3.5284133 1.28177691 0.37854132 3.61327553 1.36902344
		 0.45284855 3.67755985 1.44603407 0.5608511 3.7101469 1.49948978 0.68387473 3.70540619 1.52015138
		 0.80064762 3.66415453 1.50444317 0.89097828 3.59352756 1.45508385 0.93924952 3.50574017 1.38061082
		 0.93711179 3.41596007 1.29389107 0.78304142 3.46274304 1.20555902 0.73404801 3.43671131 1.17049837
		 0.67196167 3.42922497 1.15057743 0.60751903 3.44158506 1.14924657 0.5518626 3.47165132 1.16673291
		 0.51461452 3.51422286 1.20001101 0.50221771 3.5619452 1.24333322 0.51681232 3.60655665 1.28919744
		 0.55587876 3.64035487 1.32968688 0.6126588 3.6574862 1.35778916 0.67733634 3.65499449 1.36865222
		 0.73872799 3.63330913 1.36039519 0.78621835 3.59617949 1.33444715 0.81159449 3.55002117 1.29528892
		 0.810471 3.50282359 1.24969983 0.66198504 3.5611217 1.24024498;
	setAttr -s 150 ".ed[0:149]"  0 1 0 1 16 1 16 15 1 15 0 1 1 2 0 2 17 1
		 17 16 1 2 3 0 3 18 1 18 17 1 3 4 0 4 19 1 19 18 1 4 5 0 5 20 1 20 19 1 5 6 0 6 21 1
		 21 20 1 6 7 0 7 22 1 22 21 1 7 8 0 8 23 1 23 22 1 8 9 0 9 24 1 24 23 1 9 10 0 10 25 1
		 25 24 1 10 11 0 11 26 1 26 25 1 11 12 0 12 27 1 27 26 1 12 13 0 13 28 1 28 27 1 13 14 0
		 14 29 1 29 28 1 14 0 0 15 29 1 16 31 1 31 30 1 30 15 1 17 32 1 32 31 1 18 33 1 33 32 1
		 19 34 1 34 33 1 20 35 1 35 34 1 21 36 1 36 35 1 22 37 1 37 36 1 23 38 1 38 37 1 24 39 1
		 39 38 1 25 40 1 40 39 1 26 41 1 41 40 1 27 42 1 42 41 1 28 43 1 43 42 1 29 44 1 44 43 1
		 30 44 1 31 46 1 46 45 1 45 30 1 32 47 1 47 46 1 33 48 1 48 47 1 34 49 1 49 48 1 35 50 1
		 50 49 1 36 51 1 51 50 1 37 52 1 52 51 1 38 53 1 53 52 1 39 54 1 54 53 1 40 55 1 55 54 1
		 41 56 1 56 55 1 42 57 1 57 56 1 43 58 1 58 57 1 44 59 1 59 58 1 45 59 1 46 61 1 61 60 1
		 60 45 1 47 62 1 62 61 1 48 63 1 63 62 1 49 64 1 64 63 1 50 65 1 65 64 1 51 66 1 66 65 1
		 52 67 1 67 66 1 53 68 1 68 67 1 54 69 1 69 68 1 55 70 1 70 69 1 56 71 1 71 70 1 57 72 1
		 72 71 1 58 73 1 73 72 1 59 74 1 74 73 1 60 74 1 61 75 1 75 60 1 62 75 1 63 75 1 64 75 1
		 65 75 1 66 75 1 67 75 1 68 75 1 69 75 1 70 75 1 71 75 1 72 75 1 73 75 1 74 75 1;
	setAttr -s 76 ".n[0:75]" -type "float3"  1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020;
	setAttr -s 75 -ch 285 ".fc[0:74]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 1 0 15 16
		f 4 4 5 6 -2
		mu 0 4 0 2 17 15
		f 4 7 8 9 -6
		mu 0 4 2 3 18 17
		f 4 10 11 12 -9
		mu 0 4 3 4 19 18
		f 4 13 14 15 -12
		mu 0 4 4 5 20 19
		f 4 16 17 18 -15
		mu 0 4 5 6 21 20
		f 4 19 20 21 -18
		mu 0 4 6 7 22 21
		f 4 22 23 24 -21
		mu 0 4 7 8 23 22
		f 4 25 26 27 -24
		mu 0 4 8 9 24 23
		f 4 28 29 30 -27
		mu 0 4 9 10 25 24
		f 4 31 32 33 -30
		mu 0 4 10 11 26 25
		f 4 34 35 36 -33
		mu 0 4 11 12 27 26
		f 4 37 38 39 -36
		mu 0 4 12 13 28 27
		f 4 40 41 42 -39
		mu 0 4 13 14 29 28
		f 4 43 -4 44 -42
		mu 0 4 14 1 16 29
		f 4 -3 45 46 47
		mu 0 4 16 15 30 31
		f 4 -7 48 49 -46
		mu 0 4 15 17 32 30
		f 4 -10 50 51 -49
		mu 0 4 17 18 33 32
		f 4 -13 52 53 -51
		mu 0 4 18 19 34 33
		f 4 -16 54 55 -53
		mu 0 4 19 20 35 34
		f 4 -19 56 57 -55
		mu 0 4 20 21 36 35
		f 4 -22 58 59 -57
		mu 0 4 21 22 37 36
		f 4 -25 60 61 -59
		mu 0 4 22 23 38 37
		f 4 -28 62 63 -61
		mu 0 4 23 24 39 38
		f 4 -31 64 65 -63
		mu 0 4 24 25 40 39
		f 4 -34 66 67 -65
		mu 0 4 25 26 41 40
		f 4 -37 68 69 -67
		mu 0 4 26 27 42 41
		f 4 -40 70 71 -69
		mu 0 4 27 28 43 42
		f 4 -43 72 73 -71
		mu 0 4 28 29 44 43
		f 4 -45 -48 74 -73
		mu 0 4 29 16 31 44
		f 4 -47 75 76 77
		mu 0 4 31 30 45 46
		f 4 -50 78 79 -76
		mu 0 4 30 32 47 45
		f 4 -52 80 81 -79
		mu 0 4 32 33 48 47
		f 4 -54 82 83 -81
		mu 0 4 33 34 49 48
		f 4 -56 84 85 -83
		mu 0 4 34 35 50 49
		f 4 -58 86 87 -85
		mu 0 4 35 36 51 50
		f 4 -60 88 89 -87
		mu 0 4 36 37 52 51
		f 4 -62 90 91 -89
		mu 0 4 37 38 53 52
		f 4 -64 92 93 -91
		mu 0 4 38 39 54 53
		f 4 -66 94 95 -93
		mu 0 4 39 40 55 54
		f 4 -68 96 97 -95
		mu 0 4 40 41 56 55
		f 4 -70 98 99 -97
		mu 0 4 41 42 57 56
		f 4 -72 100 101 -99
		mu 0 4 42 43 58 57
		f 4 -74 102 103 -101
		mu 0 4 43 44 59 58
		f 4 -75 -78 104 -103
		mu 0 4 44 31 46 59
		f 4 -77 105 106 107
		mu 0 4 46 45 60 61
		f 4 -80 108 109 -106
		mu 0 4 45 47 62 60
		f 4 -82 110 111 -109
		mu 0 4 47 48 63 62
		f 4 -84 112 113 -111
		mu 0 4 48 49 64 63
		f 4 -86 114 115 -113
		mu 0 4 49 50 65 64
		f 4 -88 116 117 -115
		mu 0 4 50 51 66 65
		f 4 -90 118 119 -117
		mu 0 4 51 52 67 66
		f 4 -92 120 121 -119
		mu 0 4 52 53 68 67
		f 4 -94 122 123 -121
		mu 0 4 53 54 69 68
		f 4 -96 124 125 -123
		mu 0 4 54 55 70 69
		f 4 -98 126 127 -125
		mu 0 4 55 56 71 70
		f 4 -100 128 129 -127
		mu 0 4 56 57 72 71
		f 4 -102 130 131 -129
		mu 0 4 57 58 73 72
		f 4 -104 132 133 -131
		mu 0 4 58 59 74 73
		f 4 -105 -108 134 -133
		mu 0 4 59 46 61 74
		f 3 -107 135 136
		mu 0 3 61 60 75
		f 3 -110 137 -136
		mu 0 3 60 62 75
		f 3 -112 138 -138
		mu 0 3 62 63 75
		f 3 -114 139 -139
		mu 0 3 63 64 75
		f 3 -116 140 -140
		mu 0 3 64 65 75
		f 3 -118 141 -141
		mu 0 3 65 66 75
		f 3 -120 142 -142
		mu 0 3 66 67 75
		f 3 -122 143 -143
		mu 0 3 67 68 75
		f 3 -124 144 -144
		mu 0 3 68 69 75
		f 3 -126 145 -145
		mu 0 3 69 70 75
		f 3 -128 146 -146
		mu 0 3 70 71 75
		f 3 -130 147 -147
		mu 0 3 71 72 75
		f 3 -132 148 -148
		mu 0 3 72 73 75
		f 3 -134 149 -149
		mu 0 3 73 74 75
		f 3 -135 -137 -150
		mu 0 3 74 61 75;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "r_t_eyeLid" -p "Geo";
	rename -uid "326586DE-4BE2-16A8-2FEF-7F83C35B3D14";
	addAttr -is true -ci true -k true -sn "currentUVSet" -ln "currentUVSet" -dt "string";
	setAttr -l on ".t";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".r";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".s";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" -0.51023732061957827 2.7090989760132409 1.393351312346748 ;
	setAttr ".sp" -type "double3" -0.51023732061957827 2.7090989760132409 1.3933513123467485 ;
	setAttr -k on ".currentUVSet" -type "string" "map1";
createNode mesh -n "r_t_eyeLidShape" -p "|Hamster|Geo|r_t_eyeLid";
	rename -uid "6A006F4C-45BD-7135-9A08-FC970DE74318";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".vcs" 2;
createNode mesh -n "r_t_eyeLidShapeOrig" -p "|Hamster|Geo|r_t_eyeLid";
	rename -uid "F0354D60-416B-F32C-B933-8BA028BE2594";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 76 ".uvst[0].uvsp[0:75]" -type "float2" 0.52471584 0.0078996876
		 0.53633434 0.015528583 0.51099461 0.0056567909 0.49754465 0.0091910521 0.48669758
		 0.017892852 0.48033175 0.030255791 0.47954673 0.044138953 0.4844777 0.057138681 0.49426866
		 0.067005038 0.50722247 0.072035171 0.52109778 0.071362212 0.53349912 0.065107748
		 0.54228789 0.054353461 0.54594761 0.040953849 0.54384333 0.027221248 0.5220325 0.014538807
		 0.53118169 0.02050175 0.51124537 0.012813275 0.50068688 0.015625132 0.49218711 0.022490425
		 0.48721731 0.032219976 0.48663625 0.043130659 0.4905431 0.053332485 0.49826136 0.061059944
		 0.50845242 0.064979866 0.51935387 0.064415999 0.52908367 0.059469607 0.5359627 0.050994515
		 0.53880346 0.040454533 0.53711313 0.029668782 0.51949698 0.020826755 0.52630669 0.025216132
		 0.51148784 0.019590408 0.50366545 0.021716291 0.49738577 0.026840555 0.49373779 0.034077886
		 0.49334937 0.042173959 0.4962849 0.049727373 0.5020417 0.055428579 0.50961655 0.058299281
		 0.51770145 0.057838138 0.52490062 0.054130841 0.52997023 0.047816861 0.53203773 0.03998749
		 0.53074211 0.031993669 0.51708877 0.026940726 0.52161616 0.029828802 0.51177537 0.026166927
		 0.5066027 0.027601404 0.50245672 0.031016976 0.50007516 0.035833076 0.49985921 0.041195523
		 0.50182354 0.046188951 0.50566852 0.049933419 0.51069599 0.051815014 0.51605338 0.051469278
		 0.520805 0.048980813 0.52412802 0.044776816 0.52546912 0.039589822 0.5245806 0.034302048
		 0.51480174 0.033022627 0.51706868 0.034438923 0.51216263 0.032594834 0.50959176 0.033335153
		 0.50755119 0.03505921 0.50633889 0.037440453 0.5062052 0.040114366 0.50722128 0.042591151
		 0.50911337 0.044483751 0.51163208 0.045382813 0.51430267 0.045235541 0.51668489 0.044006106
		 0.51836902 0.041913498 0.51901811 0.039305676 0.51855963 0.036662899 0.51257974 0.039042465;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 76 ".vt[0:75]"  -0.93785524 2.98226285 1.45555508 -0.80001634 2.90902257 1.35691452
		 -0.62534392 2.88796568 1.30087364 -0.44404066 2.92273712 1.29712749 -0.28745544 3.007324934 1.34632266
		 -0.18266375 3.12710261 1.43995333 -0.14778385 3.26135635 1.56182671 -0.18884777 3.38687563 1.69087267
		 -0.29875472 3.48195601 1.80477631 -0.45850024 3.5301559 1.88384259 -0.64046437 3.52314448 1.9144032
		 -0.81318289 3.46213102 1.89117062 -0.94679153 3.35766864 1.8181653 -1.018187404 3.22781348 1.70800424
		 -1.01502645 3.095025778 1.57974279 -0.94074392 3.087508678 1.36491191 -0.80965173 3.017851591 1.27109766
		 -0.64352858 2.99782729 1.21780229 -0.47109956 3.030898809 1.21424079 -0.32217821 3.11134553 1.26102746
		 -0.22251467 3.22525907 1.35007393 -0.18934178 3.35294175 1.46598148 -0.22839561 3.47231746 1.58871138
		 -0.33292317 3.56274366 1.69704008 -0.48485094 3.60858631 1.77223802 -0.65790886 3.60191774 1.80130255
		 -0.82217437 3.54389215 1.77920866 -0.94924343 3.44454074 1.70977509 -1.017145276 3.32104325 1.60500753
		 -1.01413846 3.19475389 1.48302281 -0.90900707 3.20483065 1.29760849 -0.79749274 3.14557672 1.21780527
		 -0.65617949 3.12854123 1.17246783 -0.50950247 3.15667295 1.16943753 -0.38282225 3.22510409 1.20923567
		 -0.29804403 3.32200623 1.28498471 -0.26982582 3.43062091 1.38358295 -0.30304685 3.5321672 1.48798227
		 -0.39196351 3.6090889 1.5801332 -0.52120036 3.64808273 1.64409816 -0.66841191 3.64240956 1.6688211
		 -0.80814385 3.59304905 1.65002596 -0.91623616 3.50853825 1.59096408 -0.97399706 3.40348458 1.50184381
		 -0.97143942 3.29605556 1.39807653 -0.84574747 3.32273698 1.26022339 -0.76472789 3.27968621 1.20224309
		 -0.66205853 3.26730967 1.16930425 -0.55549085 3.28774786 1.1671015 -0.4634524 3.33746648 1.19601738
		 -0.40185809 3.40787148 1.25105345 -0.38135526 3.48678207 1.32268679 -0.40549195 3.56056046 1.39853799
		 -0.47009397 3.61644864 1.46549034 -0.56399035 3.64477944 1.5119642 -0.670946 3.64065814 1.52992713
		 -0.77246708 3.60479426 1.51627052 -0.85099977 3.54339194 1.47335804 -0.89296639 3.4670701 1.40861201
		 -0.8911078 3.38901639 1.33321857 -0.75716043 3.42968941 1.25642347 -0.71456617 3.40705729 1.22594237
		 -0.66058874 3.4005487 1.20862305 -0.60456306 3.41129446 1.20746601 -0.55617589 3.43743372 1.22266865
		 -0.52379268 3.47444487 1.25160027 -0.51301503 3.51593447 1.28926408 -0.52570349 3.55471897 1.32913804
		 -0.55966753 3.58410287 1.36433911 -0.60903138 3.59899712 1.38877106 -0.66526157 3.59683084 1.39821529
		 -0.71863472 3.57797742 1.39103663 -0.7599225 3.54569721 1.36847758 -0.78198415 3.50556779 1.33443379
		 -0.78100753 3.46453452 1.29479921 -0.65191537 3.51521873 1.28657913;
	setAttr -s 150 ".ed[0:149]"  0 15 1 15 16 1 16 1 1 1 0 0 16 17 1 17 2 1
		 2 1 0 17 18 1 18 3 1 3 2 0 18 19 1 19 4 1 4 3 0 19 20 1 20 5 1 5 4 0 20 21 1 21 6 1
		 6 5 0 21 22 1 22 7 1 7 6 0 22 23 1 23 8 1 8 7 0 23 24 1 24 9 1 9 8 0 24 25 1 25 10 1
		 10 9 0 25 26 1 26 11 1 11 10 0 26 27 1 27 12 1 12 11 0 27 28 1 28 13 1 13 12 0 28 29 1
		 29 14 1 14 13 0 29 15 1 0 14 0 15 30 1 30 31 1 31 16 1 31 32 1 32 17 1 32 33 1 33 18 1
		 33 34 1 34 19 1 34 35 1 35 20 1 35 36 1 36 21 1 36 37 1 37 22 1 37 38 1 38 23 1 38 39 1
		 39 24 1 39 40 1 40 25 1 40 41 1 41 26 1 41 42 1 42 27 1 42 43 1 43 28 1 43 44 1 44 29 1
		 44 30 1 30 45 1 45 46 1 46 31 1 46 47 1 47 32 1 47 48 1 48 33 1 48 49 1 49 34 1 49 50 1
		 50 35 1 50 51 1 51 36 1 51 52 1 52 37 1 52 53 1 53 38 1 53 54 1 54 39 1 54 55 1 55 40 1
		 55 56 1 56 41 1 56 57 1 57 42 1 57 58 1 58 43 1 58 59 1 59 44 1 59 45 1 45 60 1 60 61 1
		 61 46 1 61 62 1 62 47 1 62 63 1 63 48 1 63 64 1 64 49 1 64 65 1 65 50 1 65 66 1 66 51 1
		 66 67 1 67 52 1 67 68 1 68 53 1 68 69 1 69 54 1 69 70 1 70 55 1 70 71 1 71 56 1 71 72 1
		 72 57 1 72 73 1 73 58 1 73 74 1 74 59 1 74 60 1 60 75 1 75 61 1 75 62 1 75 63 1 75 64 1
		 75 65 1 75 66 1 75 67 1 75 68 1 75 69 1 75 70 1 75 71 1 75 72 1 75 73 1 75 74 1;
	setAttr -s 76 ".n[0:75]" -type "float3"  1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020;
	setAttr -s 75 -ch 285 ".fc[0:74]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 1 16 15 0
		f 4 -3 4 5 6
		mu 0 4 0 15 17 2
		f 4 -6 7 8 9
		mu 0 4 2 17 18 3
		f 4 -9 10 11 12
		mu 0 4 3 18 19 4
		f 4 -12 13 14 15
		mu 0 4 4 19 20 5
		f 4 -15 16 17 18
		mu 0 4 5 20 21 6
		f 4 -18 19 20 21
		mu 0 4 6 21 22 7
		f 4 -21 22 23 24
		mu 0 4 7 22 23 8
		f 4 -24 25 26 27
		mu 0 4 8 23 24 9
		f 4 -27 28 29 30
		mu 0 4 9 24 25 10
		f 4 -30 31 32 33
		mu 0 4 10 25 26 11
		f 4 -33 34 35 36
		mu 0 4 11 26 27 12
		f 4 -36 37 38 39
		mu 0 4 12 27 28 13
		f 4 -39 40 41 42
		mu 0 4 13 28 29 14
		f 4 -42 43 -1 44
		mu 0 4 14 29 16 1
		f 4 45 46 47 -2
		mu 0 4 16 31 30 15
		f 4 -48 48 49 -5
		mu 0 4 15 30 32 17
		f 4 -50 50 51 -8
		mu 0 4 17 32 33 18
		f 4 -52 52 53 -11
		mu 0 4 18 33 34 19
		f 4 -54 54 55 -14
		mu 0 4 19 34 35 20
		f 4 -56 56 57 -17
		mu 0 4 20 35 36 21
		f 4 -58 58 59 -20
		mu 0 4 21 36 37 22
		f 4 -60 60 61 -23
		mu 0 4 22 37 38 23
		f 4 -62 62 63 -26
		mu 0 4 23 38 39 24
		f 4 -64 64 65 -29
		mu 0 4 24 39 40 25
		f 4 -66 66 67 -32
		mu 0 4 25 40 41 26
		f 4 -68 68 69 -35
		mu 0 4 26 41 42 27
		f 4 -70 70 71 -38
		mu 0 4 27 42 43 28
		f 4 -72 72 73 -41
		mu 0 4 28 43 44 29
		f 4 -74 74 -46 -44
		mu 0 4 29 44 31 16
		f 4 75 76 77 -47
		mu 0 4 31 46 45 30
		f 4 -78 78 79 -49
		mu 0 4 30 45 47 32
		f 4 -80 80 81 -51
		mu 0 4 32 47 48 33
		f 4 -82 82 83 -53
		mu 0 4 33 48 49 34
		f 4 -84 84 85 -55
		mu 0 4 34 49 50 35
		f 4 -86 86 87 -57
		mu 0 4 35 50 51 36
		f 4 -88 88 89 -59
		mu 0 4 36 51 52 37
		f 4 -90 90 91 -61
		mu 0 4 37 52 53 38
		f 4 -92 92 93 -63
		mu 0 4 38 53 54 39
		f 4 -94 94 95 -65
		mu 0 4 39 54 55 40
		f 4 -96 96 97 -67
		mu 0 4 40 55 56 41
		f 4 -98 98 99 -69
		mu 0 4 41 56 57 42
		f 4 -100 100 101 -71
		mu 0 4 42 57 58 43
		f 4 -102 102 103 -73
		mu 0 4 43 58 59 44
		f 4 -104 104 -76 -75
		mu 0 4 44 59 46 31
		f 4 105 106 107 -77
		mu 0 4 46 61 60 45
		f 4 -108 108 109 -79
		mu 0 4 45 60 62 47
		f 4 -110 110 111 -81
		mu 0 4 47 62 63 48
		f 4 -112 112 113 -83
		mu 0 4 48 63 64 49
		f 4 -114 114 115 -85
		mu 0 4 49 64 65 50
		f 4 -116 116 117 -87
		mu 0 4 50 65 66 51
		f 4 -118 118 119 -89
		mu 0 4 51 66 67 52
		f 4 -120 120 121 -91
		mu 0 4 52 67 68 53
		f 4 -122 122 123 -93
		mu 0 4 53 68 69 54
		f 4 -124 124 125 -95
		mu 0 4 54 69 70 55
		f 4 -126 126 127 -97
		mu 0 4 55 70 71 56
		f 4 -128 128 129 -99
		mu 0 4 56 71 72 57
		f 4 -130 130 131 -101
		mu 0 4 57 72 73 58
		f 4 -132 132 133 -103
		mu 0 4 58 73 74 59
		f 4 -134 134 -106 -105
		mu 0 4 59 74 61 46
		f 3 135 136 -107
		mu 0 3 61 75 60
		f 3 -137 137 -109
		mu 0 3 60 75 62
		f 3 -138 138 -111
		mu 0 3 62 75 63
		f 3 -139 139 -113
		mu 0 3 63 75 64
		f 3 -140 140 -115
		mu 0 3 64 75 65
		f 3 -141 141 -117
		mu 0 3 65 75 66
		f 3 -142 142 -119
		mu 0 3 66 75 67
		f 3 -143 143 -121
		mu 0 3 67 75 68
		f 3 -144 144 -123
		mu 0 3 68 75 69
		f 3 -145 145 -125
		mu 0 3 69 75 70
		f 3 -146 146 -127
		mu 0 3 70 75 71
		f 3 -147 147 -129
		mu 0 3 71 75 72
		f 3 -148 148 -131
		mu 0 3 72 75 73
		f 3 -149 149 -133
		mu 0 3 73 75 74
		f 3 -150 -136 -135
		mu 0 3 74 75 61;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "r_b_eyeLid" -p "Geo";
	rename -uid "111686F7-4458-B457-5124-18AFB1890DFA";
	addAttr -is true -ci true -k true -sn "currentUVSet" -ln "currentUVSet" -dt "string";
	setAttr -l on ".t";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".r";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".s";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" -0.51023732061957794 2.7090989760132409 1.39335131234675 ;
	setAttr ".sp" -type "double3" -0.51023732061957794 2.7090989760132409 1.39335131234675 ;
	setAttr -k on ".currentUVSet" -type "string" "map1";
createNode mesh -n "r_b_eyeLidShape" -p "|Hamster|Geo|r_b_eyeLid";
	rename -uid "01BF52DD-4961-4F0C-2505-A4B967BBF0B0";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".vcs" 2;
createNode mesh -n "r_b_eyeLidShapeOrig" -p "|Hamster|Geo|r_b_eyeLid";
	rename -uid "58E71355-4C54-03C3-C112-218022E42A77";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 76 ".uvst[0].uvsp[0:75]" -type "float2" 0.37849474 0.033193853
		 0.38373694 0.046070598 0.36846444 0.023562258 0.35538173 0.018844586 0.34151328 0.019859657
		 0.3292602 0.026429668 0.32074094 0.037415292 0.31742698 0.050912865 0.31988928 0.064588301
		 0.32769722 0.076078475 0.33950096 0.08340048 0.35326099 0.085292473 0.3666026 0.081426829
		 0.37722355 0.072469339 0.38328582 0.059964292 0.37251976 0.037140004 0.37667266 0.047243338
		 0.36461338 0.029599205 0.35432196 0.025926394 0.34342858 0.026759235 0.33381817 0.031952605
		 0.32715166 0.040605966 0.32458159 0.051220492 0.3265512 0.061960079 0.3327159 0.070969574
		 0.34201056 0.076692723 0.35282874 0.07814391 0.3633031 0.075070582 0.37162566 0.068003334
		 0.37635556 0.058160663 0.36686555 0.04088065 0.36998397 0.048359655 0.36097017 0.03531846
		 0.35332161 0.032632541 0.34524372 0.03329087 0.33813521 0.037181202 0.33322349 0.043626953
		 0.33135569 0.051510405 0.33286005 0.059469271 0.33746654 0.0661304 0.34438491 0.070338555
		 0.35241595 0.071375228 0.36017346 0.069053225 0.36632064 0.063778609 0.36979103 0.056459218
		 0.36141464 0.044548765 0.3635053 0.049496233 0.35747689 0.040897757 0.35240307 0.039145187
		 0.34705129 0.039607197 0.34235898 0.042222336 0.33914015 0.046515431 0.33792475 0.051740874
		 0.33896568 0.057003956 0.34203577 0.061403397 0.34664255 0.064152658 0.35196525 0.064816758
		 0.35708949 0.063235275 0.36113963 0.05972302 0.36340895 0.054862842 0.35608122 0.048259549
		 0.3571457 0.050710976 0.35414985 0.046410698 0.35161266 0.045563228 0.34895435 0.045826443
		 0.34660557 0.04710063 0.34497917 0.049228124 0.34441158 0.051845342 0.34489709 0.054479666
		 0.34646052 0.056654193 0.34874293 0.058057204 0.35140675 0.058352217 0.35398 0.057596803
		 0.35599229 0.055821352 0.35711282 0.053386766 0.35083491 0.051958326;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 76 ".vt[0:75]"  -1.021984458 3.17196703 1.52298188 -1.0057584047 3.089367151 1.68732214
		 -0.91712707 3.02776885 1.83713734 -0.77141142 2.99782586 1.94651902 -0.59380758 3.004714489 1.99655449
		 -0.41502517 3.047244787 1.97859251 -0.26597911 3.11806011 1.89574134 -0.17243883 3.20491815 1.76232409
		 -0.15057945 3.29279876 1.60141146 -0.20418102 3.36650705 1.44082713 -0.3239727 3.4132998 1.30833399
		 -0.48924446 3.42508459 1.22684491 -0.6714161 3.39982462 1.21044707 -0.83899415 3.34188485 1.26198161
		 -0.96299624 3.26128745 1.37253058 -0.97841424 3.053787708 1.46436048 -0.96298373 2.97522974 1.62065804
		 -0.87868857 2.91664767 1.76313901 -0.74010384 2.88817096 1.86716533 -0.57119298 2.89472222 1.91475248
		 -0.40116179 2.93516994 1.89767134 -0.25941122 3.0025186539 1.81887615 -0.17044911 3.085125685 1.69198906
		 -0.1496599 3.16870499 1.53895235 -0.20063679 3.23880672 1.3862257 -0.31456584 3.28330946 1.26021791
		 -0.47174734 3.29451799 1.18271554 -0.64500439 3.27049351 1.16712165 -0.80437839 3.21539044 1.21613181
		 -0.92231202 3.13873744 1.32127154 -0.89652634 2.95098448 1.41933501 -0.88340014 2.88415885 1.55229044
		 -0.81169552 2.83432531 1.67349303 -0.69380885 2.81010127 1.76198411 -0.55012572 2.81567311 1.8024652
		 -0.40548742 2.85008097 1.78793335 -0.28490624 2.90737247 1.72090459 -0.20923144 2.97764111 1.61296916
		 -0.19154614 3.048738956 1.48278725 -0.23491135 3.10836935 1.35287237 -0.33182579 3.14622498 1.2456845
		 -0.46553284 3.15575886 1.17975831 -0.61291224 3.135324 1.16649103 -0.74848413 3.08845067 1.2081815
		 -0.84880555 3.023244858 1.29761922 -0.78434193 2.87361312 1.39232206 -0.77480572 2.82506227 1.4889195
		 -0.72270906 2.78885627 1.57697761 -0.63705993 2.77125549 1.64127111 -0.5326674 2.77530456 1.67068195
		 -0.42758068 2.80030394 1.66012228 -0.33997497 2.84192681 1.61142612 -0.28499344 2.89298058 1.5330056
		 -0.27214369 2.94463682 1.43842185 -0.30365014 2.98796153 1.34403253 -0.37406209 3.015465498 1.2661556
		 -0.47120708 3.022391558 1.21825838 -0.57828546 3.0075433254 1.20862126 -0.67678106 2.97349048 1.23890734
		 -0.74967033 2.92611432 1.30388951 -0.6528402 2.82925439 1.38596046 -0.64782584 2.80372977 1.43674386
		 -0.62043834 2.78469348 1.48304105 -0.57540923 2.77544117 1.51684129 -0.52052635 2.77757001 1.53230262
		 -0.46528089 2.79071164 1.52675402 -0.41922101 2.8125968 1.50114894 -0.39031792 2.83943486 1.45992386
		 -0.38356104 2.8665936 1.41019642 -0.40012541 2.88936996 1.36057377 -0.43714267 2.90383029 1.31963086
		 -0.48821408 2.90747237 1.29444861 -0.54450756 2.89966726 1.28938031 -0.59629351 2.88176131 1.30530751
		 -0.63461196 2.85685539 1.33946872 -0.51489228 2.82224774 1.40087473;
	setAttr -s 150 ".ed[0:149]"  0 15 1 15 16 1 16 1 1 1 0 0 16 17 1 17 2 1
		 2 1 0 17 18 1 18 3 1 3 2 0 18 19 1 19 4 1 4 3 0 19 20 1 20 5 1 5 4 0 20 21 1 21 6 1
		 6 5 0 21 22 1 22 7 1 7 6 0 22 23 1 23 8 1 8 7 0 23 24 1 24 9 1 9 8 0 24 25 1 25 10 1
		 10 9 0 25 26 1 26 11 1 11 10 0 26 27 1 27 12 1 12 11 0 27 28 1 28 13 1 13 12 0 28 29 1
		 29 14 1 14 13 0 29 15 1 0 14 0 15 30 1 30 31 1 31 16 1 31 32 1 32 17 1 32 33 1 33 18 1
		 33 34 1 34 19 1 34 35 1 35 20 1 35 36 1 36 21 1 36 37 1 37 22 1 37 38 1 38 23 1 38 39 1
		 39 24 1 39 40 1 40 25 1 40 41 1 41 26 1 41 42 1 42 27 1 42 43 1 43 28 1 43 44 1 44 29 1
		 44 30 1 30 45 1 45 46 1 46 31 1 46 47 1 47 32 1 47 48 1 48 33 1 48 49 1 49 34 1 49 50 1
		 50 35 1 50 51 1 51 36 1 51 52 1 52 37 1 52 53 1 53 38 1 53 54 1 54 39 1 54 55 1 55 40 1
		 55 56 1 56 41 1 56 57 1 57 42 1 57 58 1 58 43 1 58 59 1 59 44 1 59 45 1 45 60 1 60 61 1
		 61 46 1 61 62 1 62 47 1 62 63 1 63 48 1 63 64 1 64 49 1 64 65 1 65 50 1 65 66 1 66 51 1
		 66 67 1 67 52 1 67 68 1 68 53 1 68 69 1 69 54 1 69 70 1 70 55 1 70 71 1 71 56 1 71 72 1
		 72 57 1 72 73 1 73 58 1 73 74 1 74 59 1 74 60 1 60 75 1 75 61 1 75 62 1 75 63 1 75 64 1
		 75 65 1 75 66 1 75 67 1 75 68 1 75 69 1 75 70 1 75 71 1 75 72 1 75 73 1 75 74 1;
	setAttr -s 76 ".n[0:75]" -type "float3"  1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020;
	setAttr -s 75 -ch 285 ".fc[0:74]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 1 16 15 0
		f 4 -3 4 5 6
		mu 0 4 0 15 17 2
		f 4 -6 7 8 9
		mu 0 4 2 17 18 3
		f 4 -9 10 11 12
		mu 0 4 3 18 19 4
		f 4 -12 13 14 15
		mu 0 4 4 19 20 5
		f 4 -15 16 17 18
		mu 0 4 5 20 21 6
		f 4 -18 19 20 21
		mu 0 4 6 21 22 7
		f 4 -21 22 23 24
		mu 0 4 7 22 23 8
		f 4 -24 25 26 27
		mu 0 4 8 23 24 9
		f 4 -27 28 29 30
		mu 0 4 9 24 25 10
		f 4 -30 31 32 33
		mu 0 4 10 25 26 11
		f 4 -33 34 35 36
		mu 0 4 11 26 27 12
		f 4 -36 37 38 39
		mu 0 4 12 27 28 13
		f 4 -39 40 41 42
		mu 0 4 13 28 29 14
		f 4 -42 43 -1 44
		mu 0 4 14 29 16 1
		f 4 45 46 47 -2
		mu 0 4 16 31 30 15
		f 4 -48 48 49 -5
		mu 0 4 15 30 32 17
		f 4 -50 50 51 -8
		mu 0 4 17 32 33 18
		f 4 -52 52 53 -11
		mu 0 4 18 33 34 19
		f 4 -54 54 55 -14
		mu 0 4 19 34 35 20
		f 4 -56 56 57 -17
		mu 0 4 20 35 36 21
		f 4 -58 58 59 -20
		mu 0 4 21 36 37 22
		f 4 -60 60 61 -23
		mu 0 4 22 37 38 23
		f 4 -62 62 63 -26
		mu 0 4 23 38 39 24
		f 4 -64 64 65 -29
		mu 0 4 24 39 40 25
		f 4 -66 66 67 -32
		mu 0 4 25 40 41 26
		f 4 -68 68 69 -35
		mu 0 4 26 41 42 27
		f 4 -70 70 71 -38
		mu 0 4 27 42 43 28
		f 4 -72 72 73 -41
		mu 0 4 28 43 44 29
		f 4 -74 74 -46 -44
		mu 0 4 29 44 31 16
		f 4 75 76 77 -47
		mu 0 4 31 46 45 30
		f 4 -78 78 79 -49
		mu 0 4 30 45 47 32
		f 4 -80 80 81 -51
		mu 0 4 32 47 48 33
		f 4 -82 82 83 -53
		mu 0 4 33 48 49 34
		f 4 -84 84 85 -55
		mu 0 4 34 49 50 35
		f 4 -86 86 87 -57
		mu 0 4 35 50 51 36
		f 4 -88 88 89 -59
		mu 0 4 36 51 52 37
		f 4 -90 90 91 -61
		mu 0 4 37 52 53 38
		f 4 -92 92 93 -63
		mu 0 4 38 53 54 39
		f 4 -94 94 95 -65
		mu 0 4 39 54 55 40
		f 4 -96 96 97 -67
		mu 0 4 40 55 56 41
		f 4 -98 98 99 -69
		mu 0 4 41 56 57 42
		f 4 -100 100 101 -71
		mu 0 4 42 57 58 43
		f 4 -102 102 103 -73
		mu 0 4 43 58 59 44
		f 4 -104 104 -76 -75
		mu 0 4 44 59 46 31
		f 4 105 106 107 -77
		mu 0 4 46 61 60 45
		f 4 -108 108 109 -79
		mu 0 4 45 60 62 47
		f 4 -110 110 111 -81
		mu 0 4 47 62 63 48
		f 4 -112 112 113 -83
		mu 0 4 48 63 64 49
		f 4 -114 114 115 -85
		mu 0 4 49 64 65 50
		f 4 -116 116 117 -87
		mu 0 4 50 65 66 51
		f 4 -118 118 119 -89
		mu 0 4 51 66 67 52
		f 4 -120 120 121 -91
		mu 0 4 52 67 68 53
		f 4 -122 122 123 -93
		mu 0 4 53 68 69 54
		f 4 -124 124 125 -95
		mu 0 4 54 69 70 55
		f 4 -126 126 127 -97
		mu 0 4 55 70 71 56
		f 4 -128 128 129 -99
		mu 0 4 56 71 72 57
		f 4 -130 130 131 -101
		mu 0 4 57 72 73 58
		f 4 -132 132 133 -103
		mu 0 4 58 73 74 59
		f 4 -134 134 -106 -105
		mu 0 4 59 74 61 46
		f 3 135 136 -107
		mu 0 3 61 75 60
		f 3 -137 137 -109
		mu 0 3 60 75 62
		f 3 -138 138 -111
		mu 0 3 62 75 63
		f 3 -139 139 -113
		mu 0 3 63 75 64
		f 3 -140 140 -115
		mu 0 3 64 75 65
		f 3 -141 141 -117
		mu 0 3 65 75 66
		f 3 -142 142 -119
		mu 0 3 66 75 67
		f 3 -143 143 -121
		mu 0 3 67 75 68
		f 3 -144 144 -123
		mu 0 3 68 75 69
		f 3 -145 145 -125
		mu 0 3 69 75 70
		f 3 -146 146 -127
		mu 0 3 70 75 71
		f 3 -147 147 -129
		mu 0 3 71 75 72
		f 3 -148 148 -131
		mu 0 3 72 75 73
		f 3 -149 149 -133
		mu 0 3 73 75 74
		f 3 -150 -136 -135
		mu 0 3 74 75 61;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "l_eye" -p "Geo";
	rename -uid "26E862CA-49FB-4343-55BA-418154E2FA8E";
	addAttr -is true -ci true -k true -sn "currentUVSet" -ln "currentUVSet" -dt "string";
	setAttr -l on ".t" -type "double3" -0.19364918768405914 0.090045779943466187 -0.085192367434501648 ;
	setAttr -l on ".t";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".r" -type "double3" 3.6655804233965257 7.9149293891015153 0.36819310454274407 ;
	setAttr -l on ".r";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".s" -type "double3" 0.99999999999999989 1 1 ;
	setAttr -l on ".s";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" 0.51023732061957694 2.7090989760132418 1.393351312346748 ;
	setAttr ".rpt" -type "double3" 0.19364918611029516 -0.090045781778097134 0.085192368515520672 ;
	setAttr ".sp" -type "double3" 0.51023732061957705 2.7090989760132418 1.393351312346748 ;
	setAttr ".spt" -type "double3" -1.1102230246251564e-016 0 0 ;
	setAttr -k on ".currentUVSet" -type "string" "map1";
createNode mesh -n "l_eyeShape" -p "|Hamster|Geo|l_eye";
	rename -uid "34FDBA34-42CD-E2D2-9C2A-DD8D867E882E";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".vcs" 2;
createNode mesh -n "l_eyeShapeOrig" -p "|Hamster|Geo|l_eye";
	rename -uid "54B258AA-45F2-261F-938B-F2ABBC92B364";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 152 ".uvst[0].uvsp[0:151]" -type "float2" 0.2285243 0.76083237
		 0.22975242 0.76313466 0.22484374 0.76718223 0.22241975 0.76251853 0.23177882 0.76477891
		 0.22896598 0.77044123 0.2343055 0.76545131 0.23405258 0.77174181 0.23687649 0.76497996
		 0.23923336 0.77087921 0.23906401 0.76355052 0.24360295 0.76796395 0.24047658 0.76134723
		 0.2464118 0.76352996 0.2408713 0.75875628 0.24717401 0.75834072 0.24018268 0.75622392
		 0.24575704 0.75329363 0.23848706 0.75422251 0.24242453 0.74924576 0.23615167 0.75303036
		 0.23772241 0.7469238 0.23353082 0.75294703 0.23248351 0.74668878 0.23107985 0.75388098
		 0.22761154 0.74862635 0.22925445 0.75576574 0.22393407 0.75236255 0.22834955 0.75822401
		 0.22209771 0.75727713 0.21996908 0.77136624 0.2162589 0.76436192 0.22621156 0.77625299
		 0.23390424 0.77817601 0.24171212 0.77680635 0.24828295 0.772376 0.25248313 0.76565754
		 0.25358701 0.75781423 0.25140575 0.75020128 0.24632227 0.74413222 0.23920915 0.74065733
		 0.23129773 0.7403692 0.22395273 0.74332666 0.21844047 0.74901474 0.21571836 0.7564553
		 0.21497352 0.77572417 0.20992078 0.76630926 0.22342281 0.78226817 0.23380575 0.78480625
		 0.24432093 0.78290057 0.25314733 0.77688217 0.25876039 0.76779598 0.26019198 0.75721484
		 0.2571981 0.74696839 0.25030014 0.73882544 0.24068874 0.73419046 0.23002248 0.73386121
		 0.22014154 0.73789763 0.21275243 0.74560541 0.2091359 0.75565511 0.25143871 0.95702052
		 0.26519847 0.93103999 0.22829187 0.9751606 0.1997606 0.98231637 0.17078789 0.97724074
		 0.14639011 0.96081322 0.13078834 0.93587971 0.12668121 0.90676004 0.13477512 0.87849581
		 0.15365948 0.85597301 0.18006302 0.8430807 0.20942205 0.84203625 0.23667045 0.85301447
		 0.25710702 0.87412107 0.2671997 0.90171713 0.23969665 0.94745356 0.25057834 0.92707819
		 0.22146001 0.96164256 0.1990234 0.9671883 0.17627363 0.96312428 0.15714833 0.95015222
		 0.14495456 0.93052107 0.14180224 0.90763003 0.14823562 0.88544291 0.16313151 0.8677938
		 0.18391225 0.8577317 0.20698692 0.85698736 0.22837244 0.86568785 0.24437635 0.88232994
		 0.25223181 0.9040432 0.22858599 0.93838578 0.23673722 0.92331284 0.2149992 0.94883627
		 0.19833316 0.95286363 0.18147242 0.94976127 0.16733834 0.94006163 0.1583714 0.92544913
		 0.15611896 0.90845758 0.1609825 0.89202523 0.1720999 0.87898773 0.18755674 0.87160677
		 0.20467766 0.87114602 0.2205063 0.8776862 0.23231371 0.89009333 0.23805474 0.90623146
		 0.21789142 0.92950898 0.22334257 0.91954374 0.20882936 0.93635398 0.19777927 0.93896246
		 0.18661451 0.93685251 0.1772953 0.93035001 0.17143427 0.92062837 0.16998981 0.90937132
		 0.17330511 0.89851421 0.18070863 0.88990664 0.19099231 0.8850913 0.2023351 0.88486534
		 0.21277605 0.88927472 0.22054484 0.89752501 0.22428212 0.90823281 0.20745748 0.9205628
		 0.21021804 0.91562891 0.20300037 0.9240436 0.1974809 0.92528892 0.19194272 0.92417061
		 0.18727034 0.92099094 0.18429896 0.9161703 0.18366051 0.91054392 0.18524015 0.90510881
		 0.18899421 0.90087712 0.19409522 0.89843035 0.19976318 0.89828336 0.20501631 0.90044796
		 0.20887488 0.90462089 0.21071637 0.90998787 0.20969802 0.78032839 0.19720782 0.91166574
		 0.20322706 0.76836598 0.22048077 0.78862202 0.23370712 0.79180783 0.24708208 0.78933519
		 0.25828904 0.78163594 0.26539171 0.77004659 0.26716593 0.75657505 0.26331097 0.74354994
		 0.25449783 0.73321903 0.24224791 0.7273621 0.22867382 0.72698843 0.21611705 0.73216593
		 0.20674583 0.74200511 0.20218451 0.75480926 0.23458239 0.75913447;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 137 ".vt[0:136]"  0.78994149 3.19833922 1.15452635 0.76254821 3.2526803 1.14114201
		 0.71526611 3.29047966 1.12636137 0.65626931 3.30519295 1.11274052 0.59575963 3.29427958 1.10263491
		 0.5442 3.25962973 1.097790718 0.51050419 3.20722675 1.099047184 0.50050092 3.14614439 1.10618544
		 0.51591706 3.086928844 1.11797261 0.55408943 3.039832592 1.13236964 0.60841596 3.012989998 1.14688742
		 0.66950405 3.011046648 1.15901589 0.72679019 3.034334898 1.16665804 0.77037084 3.078837633 1.16849136
		 0.79270822 3.13684702 1.16420031 0.90545291 3.24558735 1.24079752 0.85334885 3.34895349 1.21533895
		 0.76341254 3.42084551 1.18722498 0.65119421 3.44883442 1.16131675 0.53609824 3.42807794 1.14209402
		 0.43802494 3.36216259 1.13288116 0.37393355 3.26249695 1.13527012 0.35490468 3.1463027 1.14884853
		 0.38422868 3.033673763 1.17126846 0.45683652 2.94408894 1.19865298 0.56017202 2.8930335 1.2262677
		 0.67636895 2.88933921 1.24933696 0.78533405 2.93364167 1.2638725 0.86822665 3.018276215 1.26736152
		 0.91071653 3.12862301 1.25919867 0.98721802 3.29067731 1.36037517 0.91550213 3.43294883 1.32533407
		 0.79171509 3.53190136 1.2866385 0.63726008 3.57042217 1.25097895 0.47884426 3.54185486 1.22452104
		 0.34385821 3.45113301 1.21184039 0.25564331 3.31394935 1.21512926 0.22945261 3.15402365 1.23381817
		 0.26981416 2.99900484 1.26467657 0.36975005 2.87570286 1.30236793 0.51197946 2.80543256 1.34037578
		 0.67190987 2.80034542 1.37212849 0.82188743 2.86131859 1.39213526 0.93598139 2.9778161 1.39693618
		 0.99446249 3.12969136 1.38570201 1.027231574 3.32920456 1.50155854 0.94292486 3.496454 1.46036577
		 0.79740393 3.61277795 1.4148761 0.61583096 3.65806031 1.37295616 0.42960155 3.624475 1.3418535
		 0.27091616 3.51782799 1.32694614 0.16721377 3.35656142 1.33081174 0.1364243 3.1685555 1.35278201
		 0.18387261 2.98632216 1.38905811 0.30135357 2.84136868 1.43336773 0.46855414 2.75875926 1.4780488
		 0.65656352 2.75277686 1.51537633 0.8328737 2.82445908 1.53889513 0.96699858 2.96140981 1.54453945
		 1.035746694 3.13994908 1.53133261 1.021575689 3.35738444 1.65052819 0.93292952 3.53323889 1.60721529
		 0.7799207 3.65555167 1.5593847 0.58900392 3.70316744 1.51530695 0.39319029 3.66785312 1.48260355
		 0.22633843 3.55571508 1.46692944 0.11729895 3.38614798 1.470994 0.084925093 3.18846655 1.49409509
		 0.1348151 2.99685431 1.53223825 0.25834236 2.8444438 1.57882762 0.43414715 2.75758243 1.62580836
		 0.6318326 2.75129509 1.66505659 0.81721526 2.82666349 1.68978608 0.95824379 2.97066569 1.69572008
		 1.030529618 3.158391 1.68183398 0.97080499 3.37246823 1.79269958 0.88649833 3.53971791 1.75150669
		 0.74097741 3.65604138 1.70601714 0.55940437 3.70132375 1.66409707 0.37317497 3.66773868 1.63299453
		 0.21448961 3.5610919 1.61808705 0.11078724 3.39982533 1.62195265 0.079997726 3.21181917 1.64392292
		 0.12744604 3.0295856 1.68019915 0.24492702 2.88463187 1.72450864 0.41212752 2.80202246 1.76918972
		 0.600137 2.79604053 1.80651712 0.77644718 2.86772275 1.83003604 0.91057205 3.0046737194 1.83568037
		 0.97932011 3.18321228 1.82247329 0.87988824 3.37296987 1.91415799 0.80817246 3.51524115 1.87911689
		 0.68438542 3.61419368 1.84042084 0.52993041 3.65271473 1.80476153 0.37151459 3.62414742 1.77830386
		 0.23652846 3.53342557 1.76562321 0.14831358 3.39624166 1.76891172 0.12212294 3.23631573 1.78760052
		 0.16248442 3.081297398 1.81845891 0.26242039 2.95799541 1.85615075 0.40464979 2.88772511 1.8941586
		 0.5645802 2.88263822 1.92591095 0.71455777 2.94361115 1.94591796 0.82865167 3.060108185 1.95071912
		 0.88713282 3.21198392 1.93948448 0.75772643 3.3588531 2.0030133724 0.70562226 3.46221924 1.9775542
		 0.61568606 3.53411126 1.94944036 0.50346774 3.56209993 1.92353213 0.38837177 3.54134369 1.90430951
		 0.29029843 3.47542834 1.89509702 0.226207 3.37576246 1.89748561 0.20717815 3.25956845 1.91106403
		 0.23650216 3.14693952 1.93348432 0.30911002 3.057354689 1.96086884 0.41244557 3.0062994957 1.98848319
		 0.52864242 3.0026049614 2.011552334 0.63760757 3.046907187 2.026087761 0.72050011 3.13154197 2.029576778
		 0.76298994 3.24188876 2.02141428 0.61627817 3.33149123 2.050566673 0.58888489 3.38583279 2.037182331
		 0.54160279 3.42363214 2.022401571 0.48260596 3.43834496 2.0087809563 0.42209634 3.42743158 1.99867511
		 0.37053666 3.39278197 1.99383104 0.33684087 3.34037852 1.99508762 0.32683757 3.27929688 2.0022256374
		 0.34225383 3.22008109 2.014012814 0.38042611 3.1729846 2.028409958 0.43475258 3.14614224 2.042927742
		 0.49584064 3.14419866 2.055056334 0.55312687 3.16748738 2.062698364 0.59670752 3.21198964 2.064531565
		 0.6190449 3.2699995 2.060240746 0.65198702 3.1535604 1.11001372 0.46938717 3.29356456 2.052163124;
	setAttr -s 285 ".ed";
	setAttr ".ed[0:165]"  0 1 1 1 16 1 16 15 1 15 0 1 1 2 1 2 17 1 17 16 1 2 3 1
		 3 18 1 18 17 1 3 4 1 4 19 1 19 18 1 4 5 1 5 20 1 20 19 1 5 6 1 6 21 1 21 20 1 6 7 1
		 7 22 1 22 21 1 7 8 1 8 23 1 23 22 1 8 9 1 9 24 1 24 23 1 9 10 1 10 25 1 25 24 1 10 11 1
		 11 26 1 26 25 1 11 12 1 12 27 1 27 26 1 12 13 1 13 28 1 28 27 1 13 14 1 14 29 1 29 28 1
		 14 0 1 15 29 1 16 31 1 31 30 1 30 15 1 17 32 1 32 31 1 18 33 1 33 32 1 19 34 1 34 33 1
		 20 35 1 35 34 1 21 36 1 36 35 1 22 37 1 37 36 1 23 38 1 38 37 1 24 39 1 39 38 1 25 40 1
		 40 39 1 26 41 1 41 40 1 27 42 1 42 41 1 28 43 1 43 42 1 29 44 1 44 43 1 30 44 1 31 46 1
		 46 45 1 45 30 1 32 47 1 47 46 1 33 48 1 48 47 1 34 49 1 49 48 1 35 50 1 50 49 1 36 51 1
		 51 50 1 37 52 1 52 51 1 38 53 1 53 52 1 39 54 1 54 53 1 40 55 1 55 54 1 41 56 1 56 55 1
		 42 57 1 57 56 1 43 58 1 58 57 1 44 59 1 59 58 1 45 59 1 46 61 1 61 60 1 60 45 1 47 62 1
		 62 61 1 48 63 1 63 62 1 49 64 1 64 63 1 50 65 1 65 64 1 51 66 1 66 65 1 52 67 1 67 66 1
		 53 68 1 68 67 1 54 69 1 69 68 1 55 70 1 70 69 1 56 71 1 71 70 1 57 72 1 72 71 1 58 73 1
		 73 72 1 59 74 1 74 73 1 60 74 1 61 76 1 76 75 1 75 60 1 62 77 1 77 76 1 63 78 1 78 77 1
		 64 79 1 79 78 1 65 80 1 80 79 1 66 81 1 81 80 1 67 82 1 82 81 1 68 83 1 83 82 1 69 84 1
		 84 83 1 70 85 1 85 84 1 71 86 1 86 85 1 72 87 1 87 86 1 73 88 1 88 87 1 74 89 1 89 88 1
		 75 89 1 76 91 1;
	setAttr ".ed[166:284]" 91 90 1 90 75 1 77 92 1 92 91 1 78 93 1 93 92 1 79 94 1
		 94 93 1 80 95 1 95 94 1 81 96 1 96 95 1 82 97 1 97 96 1 83 98 1 98 97 1 84 99 1 99 98 1
		 85 100 1 100 99 1 86 101 1 101 100 1 87 102 1 102 101 1 88 103 1 103 102 1 89 104 1
		 104 103 1 90 104 1 91 106 1 106 105 1 105 90 1 92 107 1 107 106 1 93 108 1 108 107 1
		 94 109 1 109 108 1 95 110 1 110 109 1 96 111 1 111 110 1 97 112 1 112 111 1 98 113 1
		 113 112 1 99 114 1 114 113 1 100 115 1 115 114 1 101 116 1 116 115 1 102 117 1 117 116 1
		 103 118 1 118 117 1 104 119 1 119 118 1 105 119 1 106 121 1 121 120 1 120 105 1 107 122 1
		 122 121 1 108 123 1 123 122 1 109 124 1 124 123 1 110 125 1 125 124 1 111 126 1 126 125 1
		 112 127 1 127 126 1 113 128 1 128 127 1 114 129 1 129 128 1 115 130 1 130 129 1 116 131 1
		 131 130 1 117 132 1 132 131 1 118 133 1 133 132 1 119 134 1 134 133 1 120 134 1 0 135 1
		 135 1 1 135 2 1 135 3 1 135 4 1 135 5 1 135 6 1 135 7 1 135 8 1 135 9 1 135 10 1
		 135 11 1 135 12 1 135 13 1 135 14 1 121 136 1 136 120 1 122 136 1 123 136 1 124 136 1
		 125 136 1 126 136 1 127 136 1 128 136 1 129 136 1 130 136 1 131 136 1 132 136 1 133 136 1
		 134 136 1;
	setAttr -s 137 ".n[0:136]" -type "float3"  1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020;
	setAttr -s 150 -ch 570 ".fc[0:149]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 2 3
		f 4 4 5 6 -2
		mu 0 4 1 4 5 2
		f 4 7 8 9 -6
		mu 0 4 4 6 7 5
		f 4 10 11 12 -9
		mu 0 4 6 8 9 7
		f 4 13 14 15 -12
		mu 0 4 8 10 11 9
		f 4 16 17 18 -15
		mu 0 4 10 12 13 11
		f 4 19 20 21 -18
		mu 0 4 12 14 15 13
		f 4 22 23 24 -21
		mu 0 4 14 16 17 15
		f 4 25 26 27 -24
		mu 0 4 16 18 19 17
		f 4 28 29 30 -27
		mu 0 4 18 20 21 19
		f 4 31 32 33 -30
		mu 0 4 20 22 23 21
		f 4 34 35 36 -33
		mu 0 4 22 24 25 23
		f 4 37 38 39 -36
		mu 0 4 24 26 27 25
		f 4 40 41 42 -39
		mu 0 4 26 28 29 27
		f 4 43 -4 44 -42
		mu 0 4 28 0 3 29
		f 4 -3 45 46 47
		mu 0 4 3 2 30 31
		f 4 -7 48 49 -46
		mu 0 4 2 5 32 30
		f 4 -10 50 51 -49
		mu 0 4 5 7 33 32
		f 4 -13 52 53 -51
		mu 0 4 7 9 34 33
		f 4 -16 54 55 -53
		mu 0 4 9 11 35 34
		f 4 -19 56 57 -55
		mu 0 4 11 13 36 35
		f 4 -22 58 59 -57
		mu 0 4 13 15 37 36
		f 4 -25 60 61 -59
		mu 0 4 15 17 38 37
		f 4 -28 62 63 -61
		mu 0 4 17 19 39 38
		f 4 -31 64 65 -63
		mu 0 4 19 21 40 39
		f 4 -34 66 67 -65
		mu 0 4 21 23 41 40
		f 4 -37 68 69 -67
		mu 0 4 23 25 42 41
		f 4 -40 70 71 -69
		mu 0 4 25 27 43 42
		f 4 -43 72 73 -71
		mu 0 4 27 29 44 43
		f 4 -45 -48 74 -73
		mu 0 4 29 3 31 44
		f 4 -47 75 76 77
		mu 0 4 31 30 45 46
		f 4 -50 78 79 -76
		mu 0 4 30 32 47 45
		f 4 -52 80 81 -79
		mu 0 4 32 33 48 47
		f 4 -54 82 83 -81
		mu 0 4 33 34 49 48
		f 4 -56 84 85 -83
		mu 0 4 34 35 50 49
		f 4 -58 86 87 -85
		mu 0 4 35 36 51 50
		f 4 -60 88 89 -87
		mu 0 4 36 37 52 51
		f 4 -62 90 91 -89
		mu 0 4 37 38 53 52
		f 4 -64 92 93 -91
		mu 0 4 38 39 54 53
		f 4 -66 94 95 -93
		mu 0 4 39 40 55 54
		f 4 -68 96 97 -95
		mu 0 4 40 41 56 55
		f 4 -70 98 99 -97
		mu 0 4 41 42 57 56
		f 4 -72 100 101 -99
		mu 0 4 42 43 58 57
		f 4 -74 102 103 -101
		mu 0 4 43 44 59 58
		f 4 -75 -78 104 -103
		mu 0 4 44 31 46 59
		f 4 -77 105 106 107
		mu 0 4 46 45 135 137
		f 4 -80 108 109 -106
		mu 0 4 45 47 138 135
		f 4 -82 110 111 -109
		mu 0 4 47 48 139 138
		f 4 -84 112 113 -111
		mu 0 4 48 49 140 139
		f 4 -86 114 115 -113
		mu 0 4 49 50 141 140
		f 4 -88 116 117 -115
		mu 0 4 50 51 142 141
		f 4 -90 118 119 -117
		mu 0 4 51 52 143 142
		f 4 -92 120 121 -119
		mu 0 4 52 53 144 143
		f 4 -94 122 123 -121
		mu 0 4 53 54 145 144
		f 4 -96 124 125 -123
		mu 0 4 54 55 146 145
		f 4 -98 126 127 -125
		mu 0 4 55 56 147 146
		f 4 -100 128 129 -127
		mu 0 4 56 57 148 147
		f 4 -102 130 131 -129
		mu 0 4 57 58 149 148
		f 4 -104 132 133 -131
		mu 0 4 58 59 150 149
		f 4 -105 -108 134 -133
		mu 0 4 59 46 137 150
		f 4 -107 135 136 137
		mu 0 4 61 60 75 76
		f 4 -110 138 139 -136
		mu 0 4 60 62 77 75
		f 4 -112 140 141 -139
		mu 0 4 62 63 78 77
		f 4 -114 142 143 -141
		mu 0 4 63 64 79 78
		f 4 -116 144 145 -143
		mu 0 4 64 65 80 79
		f 4 -118 146 147 -145
		mu 0 4 65 66 81 80
		f 4 -120 148 149 -147
		mu 0 4 66 67 82 81
		f 4 -122 150 151 -149
		mu 0 4 67 68 83 82
		f 4 -124 152 153 -151
		mu 0 4 68 69 84 83
		f 4 -126 154 155 -153
		mu 0 4 69 70 85 84
		f 4 -128 156 157 -155
		mu 0 4 70 71 86 85
		f 4 -130 158 159 -157
		mu 0 4 71 72 87 86
		f 4 -132 160 161 -159
		mu 0 4 72 73 88 87
		f 4 -134 162 163 -161
		mu 0 4 73 74 89 88
		f 4 -135 -138 164 -163
		mu 0 4 74 61 76 89
		f 4 -137 165 166 167
		mu 0 4 76 75 90 91
		f 4 -140 168 169 -166
		mu 0 4 75 77 92 90
		f 4 -142 170 171 -169
		mu 0 4 77 78 93 92
		f 4 -144 172 173 -171
		mu 0 4 78 79 94 93
		f 4 -146 174 175 -173
		mu 0 4 79 80 95 94
		f 4 -148 176 177 -175
		mu 0 4 80 81 96 95
		f 4 -150 178 179 -177
		mu 0 4 81 82 97 96
		f 4 -152 180 181 -179
		mu 0 4 82 83 98 97
		f 4 -154 182 183 -181
		mu 0 4 83 84 99 98
		f 4 -156 184 185 -183
		mu 0 4 84 85 100 99
		f 4 -158 186 187 -185
		mu 0 4 85 86 101 100
		f 4 -160 188 189 -187
		mu 0 4 86 87 102 101
		f 4 -162 190 191 -189
		mu 0 4 87 88 103 102
		f 4 -164 192 193 -191
		mu 0 4 88 89 104 103
		f 4 -165 -168 194 -193
		mu 0 4 89 76 91 104
		f 4 -167 195 196 197
		mu 0 4 91 90 105 106
		f 4 -170 198 199 -196
		mu 0 4 90 92 107 105
		f 4 -172 200 201 -199
		mu 0 4 92 93 108 107
		f 4 -174 202 203 -201
		mu 0 4 93 94 109 108
		f 4 -176 204 205 -203
		mu 0 4 94 95 110 109
		f 4 -178 206 207 -205
		mu 0 4 95 96 111 110
		f 4 -180 208 209 -207
		mu 0 4 96 97 112 111
		f 4 -182 210 211 -209
		mu 0 4 97 98 113 112
		f 4 -184 212 213 -211
		mu 0 4 98 99 114 113
		f 4 -186 214 215 -213
		mu 0 4 99 100 115 114
		f 4 -188 216 217 -215
		mu 0 4 100 101 116 115
		f 4 -190 218 219 -217
		mu 0 4 101 102 117 116
		f 4 -192 220 221 -219
		mu 0 4 102 103 118 117
		f 4 -194 222 223 -221
		mu 0 4 103 104 119 118
		f 4 -195 -198 224 -223
		mu 0 4 104 91 106 119
		f 4 -197 225 226 227
		mu 0 4 106 105 120 121
		f 4 -200 228 229 -226
		mu 0 4 105 107 122 120
		f 4 -202 230 231 -229
		mu 0 4 107 108 123 122
		f 4 -204 232 233 -231
		mu 0 4 108 109 124 123
		f 4 -206 234 235 -233
		mu 0 4 109 110 125 124
		f 4 -208 236 237 -235
		mu 0 4 110 111 126 125
		f 4 -210 238 239 -237
		mu 0 4 111 112 127 126
		f 4 -212 240 241 -239
		mu 0 4 112 113 128 127
		f 4 -214 242 243 -241
		mu 0 4 113 114 129 128
		f 4 -216 244 245 -243
		mu 0 4 114 115 130 129
		f 4 -218 246 247 -245
		mu 0 4 115 116 131 130
		f 4 -220 248 249 -247
		mu 0 4 116 117 132 131
		f 4 -222 250 251 -249
		mu 0 4 117 118 133 132
		f 4 -224 252 253 -251
		mu 0 4 118 119 134 133
		f 4 -225 -228 254 -253
		mu 0 4 119 106 121 134
		f 3 -1 255 256
		mu 0 3 1 0 151
		f 3 -5 -257 257
		mu 0 3 4 1 151
		f 3 -8 -258 258
		mu 0 3 6 4 151
		f 3 -11 -259 259
		mu 0 3 8 6 151
		f 3 -14 -260 260
		mu 0 3 10 8 151
		f 3 -17 -261 261
		mu 0 3 12 10 151
		f 3 -20 -262 262
		mu 0 3 14 12 151
		f 3 -23 -263 263
		mu 0 3 16 14 151
		f 3 -26 -264 264
		mu 0 3 18 16 151
		f 3 -29 -265 265
		mu 0 3 20 18 151
		f 3 -32 -266 266
		mu 0 3 22 20 151
		f 3 -35 -267 267
		mu 0 3 24 22 151
		f 3 -38 -268 268
		mu 0 3 26 24 151
		f 3 -41 -269 269
		mu 0 3 28 26 151
		f 3 -44 -270 -256
		mu 0 3 0 28 151
		f 3 -227 270 271
		mu 0 3 121 120 136
		f 3 -230 272 -271
		mu 0 3 120 122 136
		f 3 -232 273 -273
		mu 0 3 122 123 136
		f 3 -234 274 -274
		mu 0 3 123 124 136
		f 3 -236 275 -275
		mu 0 3 124 125 136
		f 3 -238 276 -276
		mu 0 3 125 126 136
		f 3 -240 277 -277
		mu 0 3 126 127 136
		f 3 -242 278 -278
		mu 0 3 127 128 136
		f 3 -244 279 -279
		mu 0 3 128 129 136
		f 3 -246 280 -280
		mu 0 3 129 130 136
		f 3 -248 281 -281
		mu 0 3 130 131 136
		f 3 -250 282 -282
		mu 0 3 131 132 136
		f 3 -252 283 -283
		mu 0 3 132 133 136
		f 3 -254 284 -284
		mu 0 3 133 134 136
		f 3 -255 -272 -285
		mu 0 3 134 121 136;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "r_b_whisker" -p "Geo";
	rename -uid "48C18973-42A2-B77A-65F7-EB976059C8E1";
	addAttr -is true -ci true -k true -sn "currentUVSet" -ln "currentUVSet" -dt "string";
	setAttr -l on ".t";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".r";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".s";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" -0.32372778303361549 2.2877004460875336 2.5238051159938157 ;
	setAttr ".sp" -type "double3" -0.32372778303361549 2.2877004460875336 2.5238051159938157 ;
	setAttr -k on ".currentUVSet" -type "string" "map1";
createNode mesh -n "r_b_whiskerShape" -p "r_b_whisker";
	rename -uid "4D1113C1-40EF-9E4C-3768-30B277D49E7D";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".vcs" 2;
createNode mesh -n "r_b_whiskerShapeOrig" -p "r_b_whisker";
	rename -uid "84A93B60-4E3D-875F-DC82-98BB963CE6B6";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.87421638 0.97409689
		 0.89975327 0.97306228 0.89854163 0.97648144 0.87243688 0.9788838 0.77468914 0.96388197
		 0.8022545 0.96864188 0.79872763 0.9767102 0.77062297 0.97318435 0.82478786 0.97194231
		 0.84638113 0.97456783 0.84380078 0.98074841 0.82170033 0.97900492 0.94044358 0.97223556
		 0.93990207 0.97354871;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 14 ".vt[0:13]"  -0.3573392 2.69295263 2.7150979 -1.17759085 2.87665939 2.53946567
		 -0.32715294 2.73926926 2.72144032 -1.17397964 2.88329434 2.5413518 -0.59633434 2.80881715 2.76733136
		 -0.61925834 2.77365994 2.7624805 -0.86835074 2.85446167 2.74938798 -0.88208038 2.83041835 2.74526262
		 -0.99851424 2.84701276 2.66915083 -0.989438 2.86435342 2.67265749 -0.73370218 2.80595851 2.77116632
		 -0.71428937 2.83678031 2.77573872 -0.50117886 2.7391181 2.74134707 -0.47499675 2.77928996 2.74684882;
	setAttr -s 19 ".ed[0:18]"  7 6 1 6 9 0 9 8 1 8 7 0 0 2 0 2 13 0 13 12 1
		 12 0 0 5 4 1 4 11 0 11 10 1 10 5 0 9 3 0 3 1 0 1 8 0 11 6 0 7 10 0 13 4 0 5 12 0;
	setAttr -s 14 ".n[0:13]" -type "float3"  1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 3 2 1
		f 4 4 5 6 7
		mu 0 4 4 7 6 5
		f 4 8 9 10 11
		mu 0 4 8 11 10 9
		f 4 -3 12 13 14
		mu 0 4 1 2 13 12
		f 4 -11 15 -1 16
		mu 0 4 9 10 3 0
		f 4 -7 17 -9 18
		mu 0 4 5 6 11 8;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "body" -p "Geo";
	rename -uid "11F48ACF-48E5-9E7B-91D1-8C80868421BD";
	addAttr -is true -ci true -k true -sn "currentUVSet" -ln "currentUVSet" -dt "string";
	setAttr -l on ".t" -type "double3" 0 -3.8914182186126709 0 ;
	setAttr -l on ".t";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".r";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".s";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr -k on ".currentUVSet" -type "string" "map1";
createNode mesh -n "bodyShape" -p "body";
	rename -uid "E40F185F-41E0-1DC8-C531-2782F77ABF72";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.42979703843593597 0.52550011873245239 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "SculptFreezeColorTemp";
	setAttr ".vcs" 2;
createNode mesh -n "bodyShapeOrig" -p "body";
	rename -uid "A6120D6D-4D3E-9383-3A6E-A484C33B0757";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 1183 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0.39632785 0.48933724 0.40326038
		 0.49453077 0.39508769 0.4990707 0.38234398 0.49088049 0.38905972 0.48224846 0.37340036
		 0.48151574 0.36692593 0.50470847 0.37244362 0.4983283 0.38689059 0.51067573 0.37190992
		 0.51076823 0.36328587 0.5097751 0.36172751 0.50540227 0.42657 0.50205708 0.4271524
		 0.49737597 0.43008697 0.49726671 0.42995673 0.50226808 0.42355618 0.5017134 0.42461586
		 0.4971334 0.4159686 0.50029188 0.41922617 0.49599138 0.4100177 0.49806842 0.41518468
		 0.49487105 0.40433401 0.50190628 0.39611429 0.48166996 0.40787995 0.48909295 0.40628064
		 0.48985198 0.40220189 0.48270276 0.41138819 0.48937443 0.4076255 0.48455533 0.41574708
		 0.49008873 0.41378 0.48660114 0.41999176 0.49065048 0.42128307 0.48807138 0.42413568
		 0.49076805 0.42503548 0.48840231 0.42667437 0.49074328 0.38602874 0.47135785 0.37660134
		 0.47030601 0.36602488 0.47276664 0.37530607 0.45797837 0.38491115 0.45797631 0.3648476
		 0.45727408 0.3805826 0.44475135 0.38811412 0.44476259 0.37144887 0.44321451 0.38828346
		 0.42808762 0.3943854 0.43317312 0.38182193 0.42593881 0.39636582 0.41826317 0.40187767
		 0.42362514 0.39208165 0.41374972 0.40730965 0.40675941 0.41058335 0.41376033 0.40538236
		 0.40154162 0.41893348 0.40219086 0.42051435 0.40890419 0.41820326 0.39775938 0.43048108
		 0.39563721 0.43054482 0.40041709 0.40349475 0.55001438 0.41277441 0.54842126 0.41299081
		 0.55821347 0.40628782 0.55850935 0.42353755 0.54715204 0.42308575 0.55609202 0.39954582
		 0.53767467 0.41921353 0.53682697 0.42308959 0.53576219 0.42279282 0.50603825 0.41302931
		 0.50438762 0.39394507 0.47412789 0.40055951 0.47700164 0.39484271 0.46928534 0.39037418
		 0.46589011 0.39630643 0.46786454 0.39317042 0.46243146 0.6017282 0.92847502 0.60814536
		 0.92065179 0.61059976 0.922364 0.60287803 0.92898309 0.39895478 0.46578053 0.40039527
		 0.4697845 0.61738288 0.91297984 0.61981905 0.91672575 0.40767083 0.46953988 0.40842038
		 0.4737924 0.62935328 0.90832549 0.62975335 0.91157389 0.41714269 0.47158274 0.41765153
		 0.4762041 0.63777691 0.9036147 0.63867235 0.90711963 0.42423347 0.47298449 0.42423242
		 0.47735092 0.64776266 0.9009558 0.64823294 0.90596837 0.43028015 0.47394896 0.43028325
		 0.47650436 0.66324472 0.89823586 0.66264677 0.90474057 0.43058869 0.40697104 0.43048814
		 0.39165664 0.41722769 0.39312688 0.36319581 0.48932466 0.35491294 0.47869271 0.35179406
		 0.45778847 0.36117643 0.43923396 0.37472126 0.42368829 0.38932505 0.40799829 0.40428597
		 0.39697671 0.42416483 0.48618984 0.41961348 0.48557815 0.42426664 0.48151568 0.41846877
		 0.48114949 0.41071269 0.48259506 0.40933698 0.47819936 0.40040818 0.47297737 0.33655414
		 0.47253466 0.34680203 0.48564434 0.4302752 0.48024762 0.36823657 0.4130362 0.38790169
		 0.39865288 0.40312964 0.39055693 0.40118867 0.37044075 0.3669177 0.37945995 0.36000127
		 0.35692945 0.39432293 0.35058957 0.35386676 0.32999381 0.39082253 0.32622024 0.41611427
		 0.38775983 0.43051067 0.38588449 0.43080357 0.36789671 0.43041793 0.34867516 0.41591001
		 0.52658355 0.42271155 0.5234983 0.3497971 0.42967483 0.33797872 0.44394183 0.33100531
		 0.39869988 0.32385552 0.36782905 0.42611796 0.51631594 0.42980498 0.51663953 0.42976415
		 0.52211356 0.42692843 0.52271593 0.42196831 0.51859874 0.39687952 0.52544355 0.41502148
		 0.6001628 0.42200452 0.58143663 0.42576018 0.58200139 0.41973576 0.60131818 0.4226158
		 0.56492507 0.42624629 0.56475347 0.41353884 0.57824665 0.40315479 0.59333438 0.41397649
		 0.56524879 0.39476734 0.58520275 0.40844086 0.57628453 0.40818179 0.56560814 0.40071371
		 0.56653041 0.39763927 0.55685806 0.39704189 0.54721397 0.38249531 0.52013469 0.37471545
		 0.51827061 0.37723333 0.53615987 0.37631649 0.52695972 0.3879303 0.53609121 0.37780333
		 0.54567224 0.37241319 0.55850279 0.32172334 0.52882731 0.33092538 0.53947395 0.3270193
		 0.55418247 0.3146005 0.55449164 0.34575742 0.53142571 0.34194034 0.54016465 0.33314127
		 0.52901709 0.36244753 0.53357387 0.35763285 0.54222608 0.36472186 0.5242126 0.3645266
		 0.51606262 0.74001944 0.68086982 0.74139667 0.70364845 0.34420353 0.49018049 0.33199808
		 0.47911343 0.71986014 0.71284211 0.31943789 0.46773571 0.32869595 0.45613518 0.31451583
		 0.47614878 0.30087551 0.47776756 0.29064184 0.44438165 0.31200665 0.41604438 0.27729294
		 0.40002593 0.29593754 0.38808921 0.42710641 0.55496746 0.42778507 0.54560405 0.42770049
		 0.5344764 0.4296906 0.55374247 0.42966968 0.54389584 0.42968592 0.53281057 0.35108626
		 0.55357021 0.35003632 0.56923199 0.33747849 0.5709635 0.33875048 0.55314255 0.32116005
		 0.57229143 0.37311867 0.59656113 0.36144388 0.56776696 0.38608572 0.60770178 0.40279135
		 0.61690962 0.30879223 0.49066019 0.30247483 0.50815535 0.70704347 0.68042487 0.6829344
		 0.71657819 0.29612964 0.49934554 0.35176939 0.60222214 0.65962148 0.68405223 0.30487889
		 0.57357228 0.29189321 0.56961483 0.26986778 0.58138376 0.30228686 0.5526945 0.25594777
		 0.61623007 0.23521636 0.58485407 0.25930375 0.55215967 0.32556343 0.60593998 0.30241659
		 0.6018554 0.31038123 0.51825577 0.25249392 0.38424626 0.27688664 0.36258629 0.24814385
		 0.63712978 0.79407918 0.6897099 0.78748816 0.70414752 0.2142171 0.62398887 0.24232428
		 0.65168202 0.20820861 0.64255512 0.29749537 0.62401295 0.29391512 0.64254498 0.3370268
		 0.64277244 0.3397671 0.65574586 0.29358691 0.65705216 0.33283848 0.62541264 0.37618339
		 0.63471305 0.38089651 0.64151609 0.36509007 0.62061566 0.4089638 0.62002462 0.16691887
		 0.62494391 0.17814745 0.59867674 0.13039291 0.60760897 0.13704945 0.55944586 0.19314258
		 0.56163073 0.35424638 0.49963632 0.35651609 0.49646685 0.43024722 0.48572227 0.31567198
		 0.34136984;
	setAttr ".uvst[0].uvsp[250:499]" 0.42977557 0.58216375 0.42993253 0.60400432
		 0.42972037 0.56465888 0.34434894 0.66946864 0.29645807 0.68034935 0.38792732 0.65208459
		 0.43044111 0.62858868 0.23632096 0.67834771 0.43022439 0.48796526 0.43020895 0.49049369
		 0.40763801 0.49158627 0.41110086 0.49327824 0.40916619 0.5188719 0.76015949 0.70055497
		 0.42617503 0.5069654 0.42986807 0.50741494 0.39709052 0.51367342 0.32710516 0.48769996
		 0.34117982 0.49692535 0.35262221 0.50483268 0.32444045 0.50721031 0.31339073 0.50117606
		 0.33822799 0.50652426 0.35099396 0.51241165 0.33537439 0.51835203 0.34906086 0.52210975
		 0.19853069 0.66980827 0.15565644 0.65456915 0.12107255 0.63728142 0.42982236 0.29324171
		 0.4301303 0.32415068 0.38893878 0.29480979 0.34880826 0.29584873 0.29420486 0.30239537
		 0.26345608 0.32550004 0.23537257 0.34602413 0.14699286 0.52183068 0.38981512 0.45290712
		 0.39025968 0.45945451 0.39316401 0.45996311 0.39202896 0.44571438 0.39927164 0.46365055
		 0.39690602 0.43428996 0.40750915 0.46683875 0.40430161 0.42505252 0.41655818 0.46861294
		 0.41200769 0.41694146 0.76291811 0.68553954 0.42403188 0.46971905 0.83177882 0.69109607
		 0.42099562 0.41237202 0.43027303 0.47132137 0.43059403 0.41013494 0.39180455 0.45369458
		 0.39198908 0.45501134 0.39411852 0.45815665 0.39294988 0.44713461 0.39946845 0.46209249
		 0.39780492 0.43676335 0.40717033 0.46510497 0.40476066 0.42715734 0.87635809 0.22751391
		 0.7918933 0.25950503 0.82679349 0.25754979 0.76902771 0.20950186 0.9298113 0.28843492
		 0.91761976 0.23633289 0.88023114 0.28408304 0.88904595 0.30873233 0.86143923 0.26697072
		 0.93245947 0.3134563 0.41638368 0.4666093 0.41225725 0.41959399 0.88906693 0.32499549
		 0.93432707 0.34303087 0.89009362 0.34335613 0.93933237 0.38441029 0.88538104 0.36822689
		 0.90561175 0.44143075 0.86662555 0.42404687 0.67145205 0.24415109 0.69773865 0.28326839
		 0.75955629 0.26431817 0.73419929 0.23621446 0.42407677 0.46782631 0.4209049 0.41480497
		 0.66012418 0.96963763 0.81445783 0.71094501 0.88468897 0.88049239 0.90004897 0.9088552
		 0.93082702 0.87306583 0.90694475 0.85253215 0.93799961 0.826002 0.85288918 0.74143302
		 0.87497985 0.72751272 0.74215186 0.72316861 0.75069833 0.75412321 0.74583888 0.75905395
		 0.72738945 0.73334408 0.75753665 0.7187193 0.75898015 0.75246012 0.78251809 0.72112042
		 0.77399576 0.75779784 0.80328643 0.72929829 0.78922063 0.76165432 0.8331002 0.75499463
		 0.80568707 0.77297789 0.86592448 0.8176856 0.82717538 0.8070519 0.82445073 0.8201409
		 0.85526979 0.84198827 0.83745921 0.85857362 0.7284742 0.77151632 0.76134634 0.78545219
		 0.75873721 0.78730088 0.76581407 0.78369576 0.76959133 0.78293282 0.773785 0.78263468
		 0.77833754 0.78397632 0.43061107 0.41193199 0.018937644 0.040094912 0.019301869 0.038099945
		 0.014362337 0.054495454 0.014912732 0.053879499 0.0091336668 0.022391498 0.020729933
		 0.046195507 0.018251663 0.046076775 0.01780292 0.048899531 0.020518998 0.047914326
		 0.06274166 0.049220145 0.064465478 0.036827087 0.062944092 0.039680123 0.052014574
		 0.031779945 0.058947295 0.031709909 0.066383451 0.027205825 0.062177725 0.024389088
		 0.062604696 0.033609271 0.075199842 0.033438623 0.014897315 0.029373109 0.017209115
		 0.026405275 0.017348956 0.024888575 0.013752697 0.025958002 0.050436568 0.039368033
		 0.049693976 0.037445426 0.038110703 0.036619604 0.038922176 0.04084301 0.074496463
		 0.022503674 0.071462065 0.05177474 0.052320234 0.009075284 0.049722895 0.035396159
		 0.038335439 0.033068717 0.069023371 0.021592855 0.051844593 0.011639118 0.051781442
		 0.040904343 0.03979836 0.044381738 0.06200463 0.053710699 0.048749626 0.059740782
		 0.039606567 0.027369916 0.054518573 0.019919157 0.063768037 0.020595431 0.053966083
		 0.015754282 0.058719799 0.041537344 0.055223536 0.04209739 0.050144307 0.052311659
		 0.02388172 0.044358611 0.024122732 0.050415754 0.041701455 0.05278945 0.039572034
		 0.067354858 0.041735962 0.058348179 0.024325436 0.053907514 0.019247299 0.057749808
		 0.042933546 0.0081688166 0.042775776 0.0097414851 0.013880195 0.01379025 0.042601325
		 0.017434597 0.021072779 0.018220723 0.020480964 0.02813679 0.041655689 0.021759272
		 0.020828407 0.021865189 0.020771833 0.052553535 0.018377444 0.054141581 0.013615381
		 0.019344509 0.016997725 0.019415975 0.78167748 0.78793645 0.78498286 0.79497492 0.75709438
		 0.78983235 0.042166442 0.091305256 0.04379338 0.094111919 0.027781785 0.099260867
		 0.10573393 0.067784131 0.039913386 0.089302778 0.030625552 0.10849124 0.10477638
		 0.068389237 0.10344452 0.067523181 0.10352099 0.066230416 0.073850751 0.099337518
		 0.11724669 0.098913491 0.11617351 0.099339783 0.11688572 0.097414374 0.11733037 0.097794414
		 0.39117837 0.25842622 0.35139278 0.2537286 0.31092441 0.25271964 0.24085486 0.28478068
		 0.21258961 0.30269346 0.086411022 0.58079821 0.10100371 0.52750248 0.11446696 0.48991358
		 0.20454264 0.37320077 0.18086484 0.32501626 0.18221441 0.42203501 0.14288823 0.36679921
		 0.16479051 0.47336084 0.13291648 0.44245744 0.42969152 0.26178405 0.39735681 0.91453266
		 0.076010697 0.60871762 0.38590851 0.17951442 0.38879725 0.13818273 0.43090174 0.13977368
		 0.43036109 0.17830823 0.061488092 0.093636751 0.064958453 0.090946078 0.069650292
		 0.087351024 0.075889826 0.096449852 0.39647523 0.73743504 0.37704688 0.71311706 0.44699416
		 0.74212182 0.46933281 0.71937901 0.46705627 0.71398646 0.46707875 0.70985764 0.4331502
		 0.73512918 0.42941892 0.72349006 0.43920547 0.69828945 0.36336404 0.2173683 0.91398114
		 0.52576089 0.81157064 0.34474224 0.81188989 0.34723726 0.81189507 0.34973833 0.81145614
		 0.3546648 0.81108558 0.35962912 0.81084913 0.36464754 0.80914581 0.36937854 0.79499227
		 0.3376309 0.79982221 0.33604178 0.80731577 0.33842701 0.81062341 0.34244117 0.34116253
		 0.20809482 0.85738719 0.46769595 0.86812091 0.51347005;
	setAttr ".uvst[0].uvsp[500:749]" 0.013238382 0.053759217 0.017004404 0.03701669
		 0.049969688 0.066459179 0.05115597 0.070596933 0.015305772 0.059478939 0.038198359
		 0.070295572 0.038931735 0.068916976 0.076906666 0.059693098 0.079874769 0.05088824
		 0.023315515 0.060736775 0.075293578 0.044209003 0.4120681 0.6999926 0.3464238 0.79754204
		 0.33378339 0.75014079 0.11843812 0.064921021 0.013967014 0.52429509 0.4114075 0.95953995
		 0.43457204 0.94357789 0.030080292 0.49143949 0.0009765625 0.55779165 0.38539159 0.95268244
		 0.3947998 0.2220711 0.41353849 0.87283403 0.43157506 0.89775872 0.38498077 0.87343425
		 0.42997465 0.22242065 0.0360796 0.58145016 0.05199917 0.55321133 0.06447044 0.50906706
		 0.3854157 0.92431051 0.1063404 0.42660794 0.27749562 0.5572958 0.075022034 0.40550575
		 0.08628574 0.46559915 0.052854925 0.44453552 0.28191397 0.52547944 0.2908124 0.53636515
		 0.79679471 0.29342133 0.77630913 0.29455209 0.83564001 0.42030758 0.73976386 0.31496057
		 0.84342027 0.39714372 0.85553396 0.36200494 0.81405306 0.34042126 0.80860507 0.33628213
		 0.80115384 0.33417326 0.79444033 0.33561063 0.78877801 0.34038034 0.81225133 0.37128636
		 0.81462944 0.36608505 0.8158859 0.35922745 0.81634188 0.35383448 0.81660813 0.34889945
		 0.81661808 0.34621975 0.81620866 0.34336427 0.82181334 0.29540163 0.840747 0.30162147
		 0.85365975 0.31007797 0.85985196 0.32322028 0.86031902 0.33365351 0.85858881 0.34496114
		 0.21282355 0.53021288 0.46480456 0.48931858 0.47723067 0.49127597 0.46479601 0.49942228
		 0.45697182 0.49462947 0.9093411 0.48075444 0.47164139 0.48229203 0.48682877 0.48191151
		 0.1721288 0.060851932 0.17387336 0.059049129 0.33930999 0.89766884 0.77492768 0.4642503
		 0.75478154 0.42499274 0.78598142 0.40390891 0.79665464 0.50795341 0.46511194 0.22259547
		 0.33622766 0.94349015 0.8312 0.49073738 0.84712559 0.52389622 0.4965207 0.21817324
		 0.51866317 0.20887205 0.47289935 0.13918234 0.38550001 0.85051978 0.41446689 0.85028857
		 0.49302661 0.50486892 0.48798886 0.51090598 0.47301584 0.5109331 0.48762161 0.49848971
		 0.49829 0.50554037 0.49664113 0.50989395 0.43333742 0.50203931 0.43301055 0.49734148
		 0.43634039 0.50168002 0.43554485 0.49708992 0.44393679 0.50033367 0.44094899 0.49601507
		 0.44994125 0.49813753 0.44499198 0.4949449 0.45559618 0.50214958 0.46438959 0.48184237
		 0.45414948 0.49007374 0.45255834 0.48931086 0.45819417 0.48292753 0.449018 0.48956108
		 0.45272136 0.48474509 0.44466093 0.49018559 0.44655585 0.4866932 0.44042382 0.49066713
		 0.43906856 0.48806748 0.43629 0.49074101 0.43374673 0.49072778 0.43537933 0.48836923
		 0.47448257 0.47159922 0.48399973 0.47052249 0.49458593 0.47315797 0.47580916 0.45828041
		 0.48550037 0.45824951 0.49603227 0.45761672 0.47272208 0.44504845 0.48025283 0.44501957
		 0.48941192 0.44349593 0.46679211 0.43326411 0.47285244 0.42824611 0.47923484 0.42610133
		 0.45941502 0.4236435 0.46483502 0.41834906 0.46905574 0.41381851 0.4506861 0.41376975
		 0.45390466 0.40680701 0.45583555 0.40157709 0.44069603 0.40895042 0.44220462 0.40230772
		 0.44286782 0.39794937 0.45581049 0.54992312 0.45309004 0.55838656 0.44639665 0.55810469
		 0.4465141 0.54828358 0.43628222 0.55599099 0.43576908 0.54703325 0.45987189 0.53767848
		 0.44010586 0.53669155 0.43622732 0.53561914 0.44685009 0.50450635 0.43696958 0.50599122
		 0.45970994 0.47731656 0.46646947 0.47442749 0.4656038 0.46968085 0.4701964 0.46623898
		 0.46412843 0.46833324 0.46752506 0.46314609 0.72973692 0.93253565 0.72856688 0.93165565
		 0.72159123 0.92220199 0.72485077 0.92094028 0.46002111 0.47005844 0.46156576 0.46606272
		 0.70952654 0.91739851 0.70996922 0.91466111 0.45202002 0.47369972 0.4528313 0.46937683
		 0.69789672 0.9124279 0.69740069 0.90950233 0.44345093 0.47119576 0.44284481 0.47591832
		 0.68798387 0.90800685 0.68849993 0.90481806 0.43636882 0.47268164 0.43630281 0.47712547
		 0.67747343 0.90693158 0.67840171 0.90211648 0.44375861 0.39343786 0.49710932 0.48955911
		 0.50565618 0.47901681 0.5090757 0.45818242 0.49969283 0.43953562 0.48623922 0.42384806
		 0.47172835 0.40799117 0.45697153 0.39696893 0.43624392 0.48611873 0.44072005 0.48554182
		 0.43624106 0.48135164 0.44194975 0.480975 0.45094964 0.47825903 0.44950676 0.48273605
		 0.45989454 0.47331309 0.52423358 0.47284478 0.51368392 0.48590812 0.47314289 0.39862746
		 0.49271035 0.41325647 0.45801875 0.39029679 0.45994973 0.37028626 0.49412456 0.37972152
		 0.50074446 0.35707805 0.46652552 0.35046166 0.46951082 0.32616273 0.50648719 0.33006057
		 0.44487879 0.38825616 0.43681219 0.52341294 0.44356588 0.52651304 0.51109779 0.43003508
		 0.52995974 0.39905259 0.52291918 0.44429791 0.53676236 0.36784649 0.4334985 0.51628757
		 0.43259168 0.52266455 0.43760467 0.5185039 0.46271455 0.52555668 0.44481915 0.6000247
		 0.44010881 0.60121423 0.43378961 0.58197862 0.43753397 0.58136719 0.43680578 0.56483221
		 0.43318939 0.56471395 0.44593373 0.57808018 0.45652971 0.59310144 0.44545582 0.56512916
		 0.45105198 0.57614148 0.46481258 0.58495641 0.45126641 0.56550741 0.45873302 0.56635714
		 0.46178916 0.5567534 0.46230951 0.54720336 0.47728464 0.52030009 0.48508763 0.51839584
		 0.47154287 0.53618872 0.48334396 0.5270468 0.48231256 0.53620052 0.48172474 0.54564494
		 0.48719573 0.55844891 0.53763378 0.52923417 0.54478884 0.55514634 0.53246278 0.55458868
		 0.528494 0.53976482 0.51381612 0.53155267 0.52636105 0.52926695 0.51753557 0.54034358
		 0.50188279 0.54228723 0.49714121 0.5336169 0.49530926 0.51615679 0.49498791 0.52427924
		 0.51623964 0.4903833 0.52874291 0.47934398 0.53226441 0.45645168 0.54159617 0.46798187
		 0.5463444 0.47648031 0.57068408 0.44426358 0.55988967 0.4784255 0.54896379 0.41621834
		 0.56467628 0.38802913;
	setAttr ".uvst[0].uvsp[750:999]" 0.58334541 0.39987585 0.4322677 0.55491364
		 0.43153286 0.54553324 0.43163672 0.53439593 0.50852799 0.55370295 0.52077138 0.5533576
		 0.47710603 0.81986606 0.44818777 0.82766569 0.52226245 0.57115829 0.50959671 0.56933296
		 0.45227543 0.79634428 0.53874934 0.57264829 0.48683411 0.59630138 0.49811259 0.56780338
		 0.47401893 0.60739034 0.45751527 0.61663538 0.55149364 0.49114123 0.56392711 0.50076455
		 0.55701798 0.50890863 0.50841081 0.60206479 0.55535704 0.57392216 0.556997 0.553666
		 0.56864846 0.56962168 0.59172994 0.58027238 0.47315943 0.79970396 0.60244393 0.549541
		 0.62621707 0.58279938 0.60547513 0.61457318 0.55857533 0.60133559 0.40574658 0.83546859
		 0.53493315 0.60579276 0.54891551 0.51878273 0.58334959 0.36230531 0.60780692 0.38390413
		 0.41874596 0.80129808 0.64690799 0.62224305 0.61317956 0.63541973 0.56375939 0.62312114
		 0.56747383 0.64146042 0.52420294 0.64213347 0.52801192 0.62493873 0.4845809 0.634435
		 0.49527991 0.62030083 0.45142686 0.61977524 0.68292713 0.5970763 0.72412473 0.55804992
		 0.6680848 0.55993176 0.50592983 0.49982128 0.50366217 0.49670565 0.54452091 0.34116426
		 0.45268208 0.49178204 0.44911608 0.49341384 0.45046198 0.51888132 0.43356565 0.50693703
		 0.46276689 0.51390302 0.53341675 0.4879227 0.51908892 0.49711412 0.50744045 0.50499099
		 0.54651809 0.50155681 0.53543282 0.50745851 0.52179098 0.5066998 0.50891691 0.51254141
		 0.52435625 0.51855952 0.51066512 0.52221954 0.47088802 0.29483351 0.51106203 0.29581442
		 0.56565559 0.3021208 0.59639674 0.32510307 0.6244812 0.34547368 0.71432048 0.52048433
		 0.47037911 0.45986706 0.47074538 0.45322683 0.46776903 0.46077904 0.4686729 0.44578892
		 0.4612295 0.46395713 0.46438119 0.43429914 0.45301551 0.46661523 0.45704883 0.42502475
		 0.44407001 0.4681752 0.44931051 0.41693151 0.43660939 0.46935675 0.44029546 0.41239199
		 0.7397809 0.94083136 0.7396571 0.93793434 0.73654413 0.94880509 0.73779762 0.92340708
		 0.72427297 0.9554559 0.7291832 0.90171105 0.70813328 0.96056807 0.71496069 0.88190436
		 0.68926704 0.96320212 0.69928342 0.86628032 0.67323631 0.96594739 0.68131816 0.85641205
		 0.46831197 0.25874853 0.50826001 0.25406978 0.54876506 0.25268844 0.61888629 0.28431478
		 0.64711767 0.30206016 0.76007354 0.52617699 0.37349626 0.9145118 0.74669909 0.48845184
		 0.65534759 0.3724502 0.67886817 0.32410848 0.67815858 0.42120722 0.71705455 0.36543757
		 0.69647896 0.47193822 0.72815287 0.44089311 0.3573938 0.87276274 0.47472656 0.18022086
		 0.80047202 0.20640346 0.52231574 0.800632 0.4960987 0.81083709 0.49035954 0.79840636
		 0.51370454 0.7893278 0.55528516 0.79250652 0.53648955 0.77760625 0.38554952 0.7994706
		 0.38215256 0.83553964 0.10990703 0.21689318 0.10127598 0.22857766 0.098786652 0.23872016
		 0.098279178 0.25014725 0.18226033 0.1255589 0.103715 0.13149031 0.097952604 0.26745966
		 0.10609907 0.32852289 0.10298204 0.30428746 0.22066814 0.24386339 0.18880397 0.21672492
		 0.16892964 0.21162848 0.14400285 0.2087047 0.18033874 0.17931478 0.14648783 0.17060225
		 0.21250182 0.13471995 0.039427638 0.18084104 0.061524332 0.13210972 0.088905752 0.18622138
		 0.075461566 0.2086833 0.11067033 0.1730964 0.031958461 0.20486315 0.072274029 0.22463058
		 0.02436626 0.23350276 0.067690253 0.24243884 0.011392891 0.2731103 0.067465246 0.26774898
		 0.033353984 0.33560714 0.074979365 0.32615152 0.30146533 0.18771355 0.26806396 0.2209634
		 0.21112096 0.19033228 0.24146503 0.16770576 0.12421447 0.2111067 0.36330348 0.77407569
		 0.58317149 0.69815642 0.32581308 0.71072185 0.58629411 0.75269639 0.56454653 0.7432605
		 0.14582902 0.25702849 0.14285463 0.25438276 0.14899695 0.25136963 0.14984602 0.25372347
		 0.14445037 0.25910869 0.1401664 0.25684723 0.14364421 0.26149377 0.13920641 0.2595661
		 0.14314723 0.2639443 0.13869113 0.26219478 0.14261436 0.26885906 0.13798642 0.26708624
		 0.1420092 0.27379861 0.13737983 0.27246478 0.14126164 0.27876678 0.13727349 0.2794365
		 0.16417915 0.26001665 0.13858926 0.28500316 0.16208744 0.25533995 0.1630218 0.25346574
		 0.16764402 0.25924781 0.15765858 0.25284424 0.15671539 0.25075254 0.46954969 0.78234053
		 0.45443538 0.77656484 0.46534359 0.74932784 0.47079182 0.75267315 0.07553643 0.37076417
		 0.022034705 0.37345079 0.48410934 0.78288311 0.47866726 0.75232244 0.50580978 0.77502477
		 0.49104017 0.74400473 0.52294433 0.76313806 0.50397068 0.73723519 0.54465991 0.73408514
		 0.51657885 0.72358102 0.54848176 0.70957083 0.40789142 0.75849134 0.42588609 0.77055818
		 0.47131389 0.72128403 0.47403795 0.7223866 0.47842902 0.72299302 0.48199642 0.72286087
		 0.48586297 0.72230631 0.48972601 0.72024989 0.49197948 0.71614987 0.12069118 0.062918484
		 0.13282281 0.072876573 0.17410064 0.060314476 0.17307025 0.061529338 0.11681116 0.067727625
		 0.20673829 0.090248585 0.20225871 0.088811517 0.20693862 0.078386307 0.21220499 0.079779387
		 0.21700567 0.080546379 0.20289552 0.075313628 0.18849498 0.088251173 0.18364084 0.077583492
		 0.19866312 0.07034719 0.16096753 0.090092778 0.16037995 0.087280214 0.16137195 0.08756423
		 0.16193438 0.08919239 0.19119692 0.10432488 0.82446194 0.58072215 0.80881274 0.55227458
		 0.78462833 0.60774052 0.35936356 0.95949531 0.85965276 0.55761629 0.7744261 0.57968539
		 0.73051465 0.60624045 0.7395134 0.63603568 0.69404864 0.62334436 0.70507348 0.65303981
		 0.66252947 0.668046 0.65294296 0.64076471 0.62515152 0.67659557 0.56539416 0.67921174
		 0.61905628 0.64994574 0.056091368 0.41356996 0.0087154508 0.41669104 0.17326425 0.040886521
		 0.17349267 0.038982987 0.17341794 0.05460459 0.17305145 0.053930223 0.17583463 0.038567662
		 0.17460689 0.054272532 0.1699785 0.045634031 0.17213795 0.046373785 0.17167786 0.048869729;
	setAttr ".uvst[0].uvsp[1000:1182]" 0.16959581 0.047227323 0.13206996 0.037742972
		 0.12208517 0.03030014 0.13369991 0.026480138 0.13406144 0.029476941 0.14614725 0.02499938
		 0.14033256 0.023566723 0.1346221 0.017915428 0.13894546 0.016432226 0.13626483 0.024128497
		 0.12504908 0.020910323 0.1792367 0.032019973 0.17788661 0.028769493 0.17806815 0.027346969
		 0.18098855 0.029215097 0.14570864 0.031910241 0.14680633 0.030393898 0.15733846 0.032648802
		 0.15541752 0.036020815 0.11725962 0.043329 0.12415835 0.038000286 0.1389053 0.055645108
		 0.13693793 0.059198439 0.14725588 0.028606892 0.15812518 0.02955997 0.13360713 0.012342036
		 0.12846121 0.011894345 0.15059234 0.0051802993 0.15047216 0.0075461864 0.14403161
		 0.032913923 0.1536357 0.03882587 0.13182491 0.041887343 0.14183573 0.049915731 0.15846415
		 0.024247944 0.14665781 0.014185607 0.13835908 0.012721539 0.14779039 0.010705292
		 0.13719459 0.031264365 0.14048736 0.033046365 0.14245012 0.042954504 0.16768527 0.043053985
		 0.16580804 0.048282564 0.1497907 0.045669556 0.14736563 0.059037745 0.14816608 0.050511122
		 0.1647189 0.051339626 0.16820739 0.056079686 0.14757273 0.060578763 0.16361047 0.057517171
		 0.14796107 0.061941981 0.17117214 0.058514535 0.15755287 0.014624655 0.159145 0.0076903701
		 0.18389253 0.018635511 0.17622712 0.020438194 0.17468777 0.029569566 0.15768506 0.018752158
		 0.17565899 0.023784518 0.15921831 0.0062467456 0.16807637 0.051130176 0.16977809
		 0.053189456 0.18252867 0.023423672 0.17956494 0.022508442 0.18585908 0.027298033
		 0.11654086 0.035100698 0.48023093 0.64133024 0.52181423 0.65511429 0.47364148 0.65205777
		 0.51744831 0.66890931 0.56798911 0.65592003 0.3565453 0.85021895 0.07366097 0.083262026
		 0.64940375 0.5281828 0.57597578 0.52795905 0.56775349 0.53800207 0.58359432 0.55736649
		 0.80848151 0.44332647 0.81428432 0.78056347 0.78534639 0.79964054 0.81030834 0.8295508
		 0.78398305 0.8060841 0.84284675 0.78010261 0.078410625 0.077930331 0.93648767 0.77873367
		 0.88234961 0.78797597 0.094124794 0.085367858 0.08862412 0.11113811 0.089535415 0.1104598
		 0.090277374 0.11040723 0.091324627 0.11135823 0.18839997 0.10507303 0.18927395 0.10380924
		 0.19009131 0.10384363 0.18511611 0.062011361 0.19693899 0.060216784 0.19793886 0.066398919
		 0.18603432 0.070045233 0.1739682 0.073149025 0.18401581 0.090117574 0.17809987 0.097160518
		 0.14254093 0.096104443 0.1411196 0.09787184 0.14769524 0.070100129 0.14739484 0.068276346
		 0.13406092 0.064333975 0.15497953 0.085512936 0.15537965 0.083661079 0.11470383 0.072163701
		 0.11316115 0.075830936 0.11922115 0.088234186 0.12997901 0.082107008 0.088729441
		 0.095873833 0.045900732 0.098547935 0.092454553 0.070022404 0.091411829 0.078082383
		 0.07932055 0.073773682 0.081092834 0.067663193 0.10365677 0.081104815 0.1174947 0.096699297
		 0.093570113 0.097408056 0.11649317 0.10067731 0.098112047 0.10517466 0.018063664
		 0.12248874 0.019484997 0.12425613 0.026543617 0.09071821 0.01320973 0.09466064 0.04744342
		 0.10221523 0.012909353 0.096484423 0.041383445 0.11461848 0.0056250393 0.11189723
		 0.0052248836 0.11004531 0.36140969 0.98434126 0.33759746 0.97882473 0.38536116 0.98885983
		 0.40932068 0.98438257 0.43314186 0.97890627 0.14200723 0.28374037 0.79202712 0.34181011
		 0.85083377 0.89110202 0.69801337 0.74776334 0.87457132 0.92347455 0.44044963 0.41481164
		 0.66084492 0.85041958 0.44908288 0.41955394 0.45661667 0.42706212 0.46345133 0.43658027
		 0.46759102 0.44700643 0.46848461 0.45398754 0.4685441 0.45537972 0.46698868 0.45921153
		 0.46109176 0.46240756 0.45333573 0.46486422 0.44426954 0.46613008 0.43656585 0.46744934
		 0.43026483 0.46922269 0.64064693 0.85639811 0.62265182 0.86636364 0.60705197 0.88210249
		 0.59257746 0.90209192 0.58247447 0.92367387 0.580091 0.9373247 0.58047503 0.94006479
		 0.58490622 0.94660997 0.59603912 0.95480025 0.61206615 0.96106887 0.6312387 0.96419936
		 0.64724737 0.96673185 0.52268898 0.71492559 0.47001058 0.70353872 0.61308467 0.72267562
		 0.67587698 0.49655312 0.69408584 0.5377481 0.70609498 0.57512945 0.71455562 0.61372578
		 0.13620788 0.64484721 0.72444105 0.64347744 0.14637816 0.61519545 0.15503561 0.57661486
		 0.16718987 0.53924882 0.18581173 0.49824163 0.90956938 0.75631726 0.34786451 0.68743223
		 0.58395791 0.69839054;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "SculptFreezeColorTemp";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 985 ".vt";
	setAttr ".vt[0:165]"  3.717495e-006 6.88860703 2.60891104 0 5.24982452 2.29155254
		 0 5.37437201 2.34419966 0 6.1896162 2.73348713 0 6.25007486 2.76258874 0 5.52651691 2.4652307
		 0 5.15174675 2.24884248 0 5.015293121 2.19255376 0 6.34697151 2.77306128 0 4.58865452 2.178545
		 0 4.1680131 2.21980572 8.5496677e-006 7.085636616 2.28153372 -2.0343489e-006 7.21195173 2.095727444
		 1.5050968e-005 7.58441114 1.64747608 -5.7640304e-006 7.46485567 1.79167342 -7.3917931e-006 7.33920097 1.93403494
		 4.0445201e-008 7.92920828 1.23004305 0 8.073565483 0.84917182 7.3911096e-006 7.71918249 1.46646988
		 0 7.84079266 -0.64600003 0 7.49528027 -1.25465631 0 8.1301403 -0.075204059 0 8.15399742 0.44264939
		 0 6.81052732 -1.84422719 0 6.49068165 2.75554562 0 6.55208635 2.76911163 1.759308e-009 6.61724615 2.8004272
		 1.6783033e-005 6.96044779 2.48543072 0 4.73616266 -2.5483923 0 6.26108646 -2.057658672
		 0 5.77817678 -2.29400253 0 3.0041527748 2.43133616 1.4957143e-006 6.8069911 2.72391772
		 -0.81985646 6.72587538 2.31972051 -1.038030028 6.7360425 2.096853971 -0.80634868 6.83938265 2.13734889
		 -0.63827014 6.79673004 2.39377618 -0.98660296 6.62811708 2.3126359 -1.27075744 6.60716581 2.11792159
		 -1.24458933 6.97338915 1.74756253 -1.38202083 6.8518343 1.75501943 -1.4847821 6.86303568 1.66230977
		 -1.44992828 6.94210529 1.62908602 -0.079231031 6.89617109 2.60453582 -0.17140119 6.89215946 2.58115315
		 -0.31856149 6.87658119 2.52539492 -0.47170869 6.84477139 2.46322227 -0.57813942 6.90795183 2.22692037
		 -0.83046746 6.61521673 2.47137094 -0.68025106 6.5991869 2.60646486 -0.54584473 6.59024858 2.65905666
		 -0.39791286 6.58622408 2.6934793 -0.21765457 6.57670927 2.73487568 -0.14645827 6.63588953 2.77099013
		 -0.086284444 6.62781954 2.78733182 -1.054531932 6.44417286 2.36682606 -1.25945961 6.42126083 2.27996635
		 -1.47214246 6.42248058 2.09901762 -1.037734509 6.23959208 2.36206675 -1.26828396 6.18326902 2.27008605
		 -1.46247756 6.1328311 2.11251664 -0.85404551 6.10446978 2.31332302 -1.02502346 6.039171219 2.23176384
		 -1.20668459 5.95004463 2.12608981 -0.64340615 6.0083441734 2.30422592 -0.75275803 5.84496021 2.1966424
		 -0.88201439 5.75237465 2.11837459 -0.47981551 5.88253784 2.35311198 -0.5700953 5.71036768 2.23409748
		 -0.6544717 5.57932949 2.16936731 -0.35593683 5.67398787 2.41970682 -0.40683466 5.48084354 2.31890273
		 -0.43856993 5.34937191 2.26398396 -0.17793274 5.58267784 2.45121288 -0.19825792 5.41299248 2.33673382
		 -0.20884053 5.30381346 2.27874136 -0.57003605 7.49166489 1.62390518 -0.51111615 7.62717056 1.48982418
		 -0.34654257 7.61655235 1.54783297 -0.38299361 7.48379517 1.69233048 -0.43188179 7.34161663 1.82520199
		 -0.38046595 6.94950151 2.32125521 -0.71996367 6.45663977 2.60754204 -0.87360942 6.46551037 2.48096728
		 -0.84759051 6.35638475 2.51462269 -0.93079025 6.34819365 2.4301393 -0.81353104 6.28871775 2.53317165
		 -0.86527467 6.25721025 2.44409132 -0.7392956 6.24403191 2.59493017 -0.77070642 6.16193295 2.52105594
		 -0.55630869 6.2342062 2.68490601 -0.59217608 6.10592556 2.6414752 -0.35018176 6.087037086 2.70215106
		 -0.33314803 6.22737837 2.74285746 -0.15975043 6.12155867 2.73028469 -0.16378541 6.25012589 2.77204847
		 -0.22501802 5.18984413 2.23263264 -0.2381119 5.066098213 2.17015719 -1.46728253 6.64838123 1.88326728
		 -1.68329072 6.46163607 1.85320389 -1.66826355 6.094163895 1.89652979 -1.38518047 5.81528473 1.99268353
		 -1.022929668 5.65462303 2.057119131 -0.70907706 5.43562651 2.12886 -0.45477167 5.24317932 2.2194314
		 -0.12957665 6.56886196 2.75309396 -0.15383814 6.51013851 2.74094987 -0.26741999 6.51172733 2.72944617
		 -0.1614363 6.3753643 2.77147102 -0.30592012 6.38206291 2.7527144 -0.48251149 6.4981308 2.69462562
		 -0.52557886 6.37349653 2.7022059 -0.72615379 6.33790779 2.61164236 -1.96587241 6.25370502 1.55506253
		 -1.82304263 6.54157972 1.63253975 -0.72824812 5.21758461 2.091310263 -1.1037643 5.40422869 1.97229719
		 -0.46377259 5.098164558 2.16409111 -1.067921877 4.71494675 1.95827246 -0.49531764 4.64191008 2.14071822
		 -1.17667687 4.23729277 2.057873011 -0.60297811 4.19831514 2.17449474 -0.67495674 3.016895771 2.31706119
		 -1.30937195 3.020648003 2.099617243 -0.19617151 7.59958649 1.60402822 -0.23376377 7.47402143 1.74701405
		 -0.26599622 7.34128571 1.88362694 -0.27604538 7.20864868 2.037660122 -0.20828605 6.96850109 2.4157238
		 -1.49758124 5.57993937 1.80036497 -1.75587726 5.77810812 1.65746486 -1.63338482 4.89501858 1.56459606
		 -1.7211678 4.29660416 1.70849025 -0.11859597 7.086317062 2.26495004 -0.12972017 7.21165371 2.080950975
		 -0.25882691 7.081728458 2.21401095 -0.66261065 7.028516293 2.036170959 -0.97126257 6.95926714 1.9181788
		 -0.9245823 7.14003801 1.78568006 -0.25280315 8.055771828 0.84852993 -0.17251836 8.06580162 0.84926862
		 -0.079692774 7.92699337 1.22781944 -0.15491778 7.92225075 1.22192466 -0.1716696 7.72620249 1.44245017
		 -0.078132994 7.72142601 1.46010816 -0.47523934 7.99446869 0.85872221 -0.32721296 7.89084911 1.21018469
		 -0.32463703 7.72943068 1.40691626 -0.42856544 7.85610294 1.20739114 -0.65028918 7.90169382 0.92069447
		 -0.45443663 7.72778368 1.36312926 -0.6795122 7.72122669 1.23471451 -0.75306845 7.58532286 1.4042784
		 -0.81957805 7.45262957 1.54668748 -0.87955445 7.29848385 1.66585553 -2.15102506 6.47132683 0.81753522
		 -1.91075051 7.21787214 0.71062493 -1.93108189 7.097501278 0.88818216 -2.031332731 7.011615276 0.67535645
		 -1.72762573 7.2128191 1.083602309 -1.76747608 7.32574606 0.90379673 -1.47408998 7.4060297 1.11427975
		 -1.42581499 7.29488754 1.28663838 -1.18386066 7.10941172 1.6681751 -1.42824876 7.051693439 1.54521716
		 -1.41855717 7.17494154 1.42753148;
	setAttr ".vt[166:331]" -1.14698553 7.2475996 1.56212354 -1.87082839 6.59191561 1.53302968
		 -2.02270031 6.31076145 1.39333248 -1.94173574 5.91957521 1.47053266 -2.075938463 6.011973381 1.21830928
		 -2.12997627 6.077289581 1.050769925 -2.39042473 5.39797449 0.9583931 -2.39533615 6.020641327 0.8512181
		 -2.0029325485 5.10057545 1.371647 -1.11951232 7.38082933 1.43941426 -1.11756873 7.50093985 1.27536428
		 -0.0882864 7.58869362 1.63696432 -0.10995829 7.46732664 1.7803793 -0.12591803 7.33992958 1.92112374
		 -2.054081202 6.83887815 -0.5322786 -1.87402999 7.12489223 -0.43675008 -1.78978419 7.31663656 -0.25722075
		 -1.70397806 7.48302078 0.043017048 -1.59358001 7.60909271 0.35714829 -1.46088052 7.7024498 0.59745431
		 -1.25584888 7.74491358 0.80583334 -1.56661141 7.55283642 0.86469537 -1.74882948 7.46341705 0.65291095
		 -1.84619653 7.36051893 0.42416957 -0.90476835 7.95981503 0.46862054 -1.16121268 7.63263083 1.059341192
		 -0.64629537 8.058675766 0.43877468 -0.37042475 8.13377476 0.44923824 -1.049853921 7.86927366 0.081402987
		 -1.91427958 7.23408842 0.18915734 -1.9865464 7.074094772 -0.011525163 -2.34674692 6.583426 -0.032053828
		 -2.39949083 6.33865356 0.52826869 -1.7470063 6.90018749 -0.87302041 -2.094267368 4.38172245 1.439309
		 -2.46729279 4.51054096 1.11745846 -2.22268438 6.55259705 -0.99752682 -1.31370413 6.89161539 -1.30530274
		 -1.57030118 6.29721928 -1.45320165 -0.77057737 6.84223747 -1.6087507 -0.89569801 6.28537178 -1.85239518
		 -0.54007715 6.29388237 -1.9812423 -0.50814915 6.81969643 -1.74658275 -1.014510751 7.41296673 -0.92782259
		 -0.69248873 7.43715572 -1.11590886 -0.43292016 7.47173595 -1.22996438 -0.27342185 7.82276249 -0.62675077
		 -0.51364332 7.79033566 -0.56030703 -0.8298437 7.73933506 -0.45158818 -0.37707958 8.080474854 -0.047416605
		 -0.23205909 8.10595608 -0.065989926 -0.67343092 7.99554157 0.0028795009 -0.27900305 8.14513588 0.44751558
		 -2.51026177 3.1922431 1.34569669 -2.75196815 3.29883361 0.85741645 -1.19848788 7.67209053 -0.34652668
		 -1.36207521 7.37802267 -0.62096 -1.061918616 5.73789358 -1.92765856 -0.58751404 5.76692438 -2.19186234
		 -0.56080997 4.64911222 -2.45271921 -1.31791997 4.5074439 -2.1295073 -2.53192282 4.18518019 -1.35797107
		 -1.91811693 2.98605251 1.79885411 -3.13148618 3.52216434 0.30873498 -2.9268291 3.7933569 -0.65591693
		 -1.64996183 6.75798464 1.58946097 -1.59087038 6.71042824 1.6853925 -1.21917069 6.80647087 1.90555012
		 -0.43746474 7.064655781 2.13386846 -0.45221016 7.19965458 1.97020888 -0.090158835 6.96804047 2.47276449
		 -2.17981315 6.71433544 0.58907378 -2.055176973 6.40409613 1.20970392 -1.90163004 6.67640257 1.40736544
		 -1.66854703 6.83567572 1.50660574 -1.92453623 6.80861187 1.24583268 -1.67981064 6.94737291 1.3924253
		 -2.081427336 6.68917131 0.97595632 -1.94078755 6.95600128 1.068005204 -1.69434774 7.079329014 1.24819994
		 -0.48746452 6.77150774 2.59830785 -0.59361643 6.75706005 2.56506968 -0.63669443 6.71727037 2.56332374
		 -0.073462583 6.81413698 2.7185905 -0.14451377 6.81305599 2.70416117 -0.26529285 6.80065393 2.66885042
		 -0.37651196 6.78726387 2.6317277 -0.56559634 6.69550419 2.61842275 -0.45896882 6.68591452 2.65599036
		 -0.34682286 6.66956329 2.69713759 -0.24330442 6.6543045 2.73615742 0 3.65678596 2.3142314
		 -0.65638286 3.67164445 2.23819113 -1.2728554 3.68664002 2.14084792 -1.843014 3.77659035 1.79324794
		 -2.27450633 3.87501121 1.45964265 -2.58858156 4.029942513 1.10815573 -2.4616847 5.68557549 -1.3764782
		 -0.63458008 7.33332109 1.75207746 -0.66733271 7.17880249 1.88562298 -0.91258323 6.29552698 2.3868804
		 -0.87792796 6.2221036 2.37873363 -0.86388028 6.23787069 2.40254426 -0.76354122 6.19310665 2.35643005
		 -0.77700704 6.10929108 2.47614312 -0.59633654 6.072718143 2.35785389 -0.59721464 6.040411949 2.58155584
		 -0.44512039 5.94417381 2.40731788 -0.36189669 6.021033287 2.63625431 -0.33524245 5.76794624 2.47345543
		 -0.15725201 6.036061287 2.67242908 -0.17229474 5.6775856 2.49655557 0 6.12494946 2.70244718
		 0 5.6129117 2.52581549 -0.74476534 6.40702152 1.55191696 -0.7586832 6.40004444 1.54199266
		 -0.66141337 6.30495358 1.65624869 -0.6681127 6.29455853 1.60708523 -0.52561939 6.25428152 1.72818732
		 -0.52811158 6.23080254 1.67782903 -0.42133248 6.15340757 1.72226751 -0.42501214 6.12324238 1.68033183
		 -0.32310733 6.075139046 1.70603848 -0.32504231 6.044222355 1.66496921 -0.19599937 6.11786747 1.73249424
		 -0.19574966 6.072364807 1.68057728 0 6.16038132 1.75214481 0 6.097600937 1.69184053
		 0 5.67515659 2.51344872 0 6.12194252 2.65009809 -0.15987198 6.06254673 2.61614728
		 -0.36056623 6.049839973 2.57812929 -0.58754033 6.062477589 2.52971363 -0.75750434 6.11198521 2.43298364
		 -0.83988303 6.22356415 2.36685205 -0.87063491 6.28773928 2.3384912 -0.8636328 6.26881218 2.32901812
		 -0.76024354 6.22889185 2.32010579 -0.57570946 6.15446091 2.32936192 -0.42476872 5.99834013 2.36622119
		 -0.31215623 5.84205103 2.43212104 -0.16609642 5.74436283 2.4595654 -0.65023094 1.11074996 0.26772237
		 -0.61249417 0.99749947 -0.53932375 0 2.34343982 2.26322603 -0.62371385 2.30399895 2.11919498
		 -1.24432218 2.24991369 1.90857673 -1.8247813 2.22386551 1.69564605 -2.72833967 2.35216427 1.31015968
		 -2.93665552 2.41591692 0.89963013 -3.18441463 2.48133755 0.41353405 -2.96912742 2.61467648 -0.4916473
		 -2.55741429 3.33197188 -1.36342156 -1.39129317 3.74058104 -2.16510391 -0.52686471 4.012105465 -2.53763938
		 0 4.099450111 -2.62100458 -3.020698309 0.20684624 0.12600739 -3.20288706 0.20684624 0.12600739
		 -3.15968394 0.20684624 0.14802054 -3.23717332 0.20684624 0.091721117 -3.26677155 0.20684624 0.00062675111
		 -3.23717332 0.20684624 -0.090467662 -3.15968394 0.20684648 -0.14676711 -3.063901424 0.20684624 -0.14676709
		 -2.95681357 0.20684624 0.00062675029 -3.1117928 0.20684624 0.15560576;
	setAttr ".vt[332:497]" -1.49519074 1.5887115 1.4285289 -1.10993779 1.69779658 1.56970179
		 -0.58751929 1.72296762 1.69860101 0 1.70296025 1.75427771 0 2.46117973 -2.59727311
		 -0.6300633 2.34507298 -2.5413053 -1.16761184 2.28283644 -2.23204398 -2.98641205 0.20684624 -0.090467632
		 -1.73641121 0.84022951 0.71356672 -2.14050388 1.17231023 1.1677146 -2.55722857 1.42177522 1.26343882
		 -2.92916775 1.57177079 0.96332777 -3.087666035 1.59214687 0.69854707 -3.20805907 1.63849497 0.36920387
		 -3.079486132 1.58614326 -0.26299369 -2.64724874 1.2798059 -1.15560508 -1.96936691 1.1580987 -1.56006908
		 -1.59472191 0.51209116 -0.86442983 -1.63587534 0.65446758 0.065638751 -1.23563409 1.41364336 -2.0013291836
		 -0.67363638 1.56051922 -2.16949296 0 1.64970875 -2.26597452 -4.22639799 6.28092384 -0.0093565695
		 -4.19907951 6.33266163 0.010517345 -4.26177645 6.24841738 -0.040792484 -4.15530014 6.41201115 -0.012664342
		 -4.12626028 6.46873569 -0.05367209 -4.101161 6.52161074 -0.11324394 -4.24513006 6.28000546 -0.15786989
		 -4.22228003 6.33001804 -0.22426525 -4.1520071 6.45489597 -0.24585837 -4.10377026 6.53196716 -0.20643383
		 -3.3276403 5.72562838 0.54671162 -3.14744568 6.0096812248 0.57073402 -3.01605773 6.23392153 0.42029446
		 -2.94866633 6.43061447 0.00078372657 -3.13273954 6.48946428 -0.52396744 -3.29541898 6.018733978 -0.91701728
		 -3.5697701 5.57836103 -0.73448235 -3.65125132 4.81514597 -0.41245574 -3.61592913 4.87856627 0.094853602
		 -3.55158401 5.15205383 0.46120203 -3.75736451 6.046051025 0.26467967 -3.66481113 6.13626432 0.27490139
		 -3.61242771 6.27384138 0.21284148 -3.6475873 6.47489071 -0.014432125 -3.65055275 6.51488256 -0.31539708
		 -3.76370406 6.21589994 -0.53501463 -3.83342481 6.017065048 -0.58161288 -3.99759889 5.51839828 -0.36856067
		 -3.9697473 5.48250771 -0.10896654 -3.92252135 5.70588493 0.12403366 -2.99206996 5.61633539 0.77333808
		 -2.79717779 6.0084877014 0.68986356 -2.67747474 6.27175856 0.47767332 -2.61902881 6.45545483 -0.00078093261
		 -2.66518831 6.48591137 -0.80114269 -2.90294528 5.86440325 -1.11382937 -3.19710588 4.90917444 -0.87710607
		 -3.19749117 4.028913498 0.022972472 -3.13039923 4.26008081 0.64661461 -3.039819717 4.91182041 0.81381881
		 -2.43538952 2.035673141 -1.37364519 -2.98467565 -0.14330125 -0.21716446 -3.23048711 -0.14379096 -0.28894615
		 -2.95100951 -0.14377761 -0.12510863 -3.32219267 -0.105685 -0.11189795 -2.9283464 -0.14400458 -0.030481523
		 -3.1439712 0.089713573 0.76152611 -3.18275476 0.08416152 0.79924643 -3.15069342 -0.17617536 0.66661292
		 -3.16369939 -0.18076396 0.80070287 -3.12260199 0.095602512 0.80247432 -3.1219244 -0.178581 0.80770838
		 -3.30505991 0.042165995 0.78075969 -3.30413771 -0.19333243 0.76465696 -2.96445274 0.0067820549 0.804075
		 -2.96210885 -0.20867229 0.77610511 -3.13764381 0.1144104 0.40565509 -3.2185359 0.11060882 0.39968699
		 -3.28090453 0.099297762 0.38986543 -3.31693077 -0.11606097 0.33465219 -3.14589596 -0.10939908 0.3331022
		 -3.11410165 -0.10466647 0.33960885 -3.083355904 -0.10462332 0.33889362 -2.95105052 -0.079784393 0.34868261
		 -2.96381831 0.091862917 0.39573222 -3.069844484 0.12360024 0.40638396 -3.30815387 -0.14334321 0.1886903
		 -3.17404509 -0.14390683 0.19073834 -3.091285944 -0.14329314 0.20214035 -3.039173365 -0.14408517 0.2028003
		 -2.96817636 -0.14364409 0.1564662 -3.19871068 0.019272566 0.8819409 -3.28041124 -0.0017640591 0.87149769
		 -3.20001841 -0.18585134 0.92229402 -3.28033233 -0.19405675 0.89887261 -3.08632493 0.021170378 0.88804197
		 -2.99396825 -0.019665956 0.88832134 -2.99504471 -0.2033422 0.90808266 -3.086372614 -0.18630481 0.93221688
		 -3.13395381 -0.0077829361 -0.28877038 -3.011764288 -0.017591953 -0.26591748 -2.95501542 -0.0035028458 -0.10365701
		 -2.94387627 -0.029375315 -0.02495357 -2.98749065 -0.067317486 0.12306607 -2.9316678 -0.002607584 0.36049449
		 -2.95146489 -0.13451362 0.8066951 -2.98242164 -0.05710721 0.89900011 -3.084380865 -0.033915043 0.91708541
		 -3.1214056 -0.08952117 0.83012027 -3.1454916 -0.094568253 0.82614911 -3.16320801 -0.093261003 0.82398635
		 -3.19771194 -0.034049034 0.90811783 -3.27837229 -0.045462132 0.88794065 -3.31801176 -0.11348462 0.79246205
		 -3.35543752 -0.026885509 0.34798166 -3.3510139 -0.0019638538 0.14603698 -3.36017108 0.0081980228 -0.13804883
		 -4.4970088 6.43257809 -0.051799819 -4.48001051 6.43900204 -0.22198394 -4.4377265 6.60588598 -0.06895113
		 -4.42345715 6.62312555 -0.28463501 -4.49095964 6.61782074 -0.23969403 -4.51656008 6.26937866 -0.055706929
		 -4.47002316 6.33788013 -0.16146842 -0.46212703 0.94669032 -1.5992533 0 0.980003 -1.74965131
		 -1.05008328 0.76214647 -1.29665208 -2.50413275 2.74630356 -1.38345242 -1.29148054 2.99648857 -2.27164626
		 -0.58723378 3.22120929 -2.59961319 0 3.23696947 -2.66681504 -2.13576698 6.74359083 -0.01759816
		 0.012788206 1.12387633 -0.70929682 0 1.2104528 0.26772237 -3.10573745 0.27264643 0.18954697
		 -3.0044598579 0.24873734 0.14181165 -2.94367576 0.23935556 0.026237389 -2.96075273 0.23570919 -0.091712862
		 -3.050221682 0.25843954 -0.19034317 -3.15034318 0.27898669 -0.16277263 -3.23223901 0.29625511 -0.066855222
		 -3.25670671 0.29793787 0.028637167 -3.2324369 0.29639792 0.11547722 -3.20518184 0.29523349 0.15605359
		 -3.16551828 0.28992939 0.18932295 -2.38903785 0.50356579 0.57032597 -2.64658713 0.69126099 0.82940984
		 -2.89671421 0.88330477 0.88699573 -3.078913212 1.021981001 0.70010835 -3.20779204 1.050186157 0.53600967
		 -3.24305534 1.043223143 0.31125259 -3.17937899 1.019569159 -0.12496266 -2.90929914 0.82768226 -0.64444059
		 -2.55536699 0.71994996 -0.91462487 -2.17492247 0.34679294 -0.56160766 -2.21958375 0.38731146 0.10243183
		 -1.79392779 5.69889212 -1.63376868 -1.86338115 4.36916494 -1.75272882 -1.91951656 3.55739045 -1.76774991
		 -1.94523859 2.86294174 -1.75236416 -1.85218167 2.15063477 -1.72764492 -2.21141291 6.26131296 0.82870775
		 -2.22372293 6.46875763 0.5289346 -4.91769409 6.64398623 -0.12335311;
	setAttr ".vt[498:663]" -4.90862942 6.67763615 -0.13272308 -4.91705132 6.63530159 -0.13910294
		 -4.90803623 6.66622734 -0.15362918 -4.66814947 6.82668114 -0.23169704 -4.6399703 6.85178328 -0.25272098
		 -4.66282034 6.82390976 -0.2643348 -4.65262651 6.83955717 -0.26606268 -4.77196836 6.33923054 -0.061009765
		 -4.7784729 6.37303352 -0.068391576 -4.76525688 6.34835052 -0.080263481 -4.7758317 6.38361073 -0.085688166
		 -4.22922039 6.69908571 -0.12765604 -4.22323227 6.73388004 -0.20318009 -0.50229657 1.22794151 1.0035856962
		 0 1.24744189 1.12051475 0.81980282 6.72588158 2.31974149 1.038000822 6.73606062 2.096859455
		 0.80633122 6.83940792 2.13732266 0.63823992 6.79675627 2.39380527 0.98658115 6.62812424 2.31263828
		 1.27077341 6.60722876 2.11789513 1.24457395 6.9734683 1.7475369 1.38201046 6.85191298 1.75493455
		 1.48480141 6.86311913 1.66221297 1.4499135 6.94220257 1.6289674 0.079229623 6.89615059 2.60458994
		 0.17134871 6.89220762 2.58120823 0.31851214 6.87663412 2.52549624 0.47166803 6.84480906 2.46327257
		 0.57810408 6.90796185 2.2269218 0.83046448 6.61521626 2.47137332 0.68025118 6.5991869 2.60646486
		 0.54584378 6.59024811 2.65905714 0.39791298 6.58622408 2.6934793 0.21765456 6.57670927 2.73487568
		 0.14645821 6.63589001 2.77099013 0.086284325 6.62782049 2.7873323 1.054534793 6.44417381 2.36682606
		 1.2593894 6.42125273 2.2799592 1.47201657 6.42241573 2.099023819 1.037734032 6.23959208 2.36206651
		 1.26828432 6.18327141 2.27008414 1.46247399 6.13284492 2.11250925 0.85404551 6.10446978 2.31332302
		 1.02502346 6.039171219 2.23176384 1.20668423 5.95004463 2.12608981 0.64340615 6.0083441734 2.30422592
		 0.75275803 5.84496021 2.1966424 0.88201439 5.75237465 2.11837459 0.47981551 5.88253784 2.35311198
		 0.5700953 5.71036768 2.23409748 0.6544717 5.57932949 2.16936731 0.35593683 5.67398787 2.41970682
		 0.40683466 5.48084354 2.31890273 0.43856993 5.34937191 2.26398396 0.17793274 5.58267784 2.45121288
		 0.19825792 5.41299248 2.33673382 0.20884053 5.30381346 2.27874136 0.56996244 7.49166298 1.62392187
		 0.51107055 7.6270771 1.48981678 0.34648308 7.61655807 1.54783344 0.38294071 7.48383141 1.69232154
		 0.431831 7.34165621 1.82519388 0.38043419 6.94952679 2.32130456 0.71996391 6.45663977 2.60754204
		 0.8736099 6.46551037 2.48096728 0.84759051 6.35638475 2.51462269 0.93079025 6.34819365 2.4301393
		 0.81353104 6.28871775 2.53317165 0.86527467 6.25721025 2.44409132 0.7392956 6.24403191 2.59493017
		 0.77070642 6.16193295 2.52105594 0.55630869 6.2342062 2.68490601 0.59217608 6.10592556 2.6414752
		 0.35018176 6.087037086 2.70215106 0.33314803 6.22737837 2.74285746 0.15975043 6.12155867 2.73028469
		 0.16378541 6.25012589 2.77204847 0.22501802 5.18984413 2.23263264 0.2381119 5.066098213 2.17015719
		 1.467237 6.64851141 1.8831737 1.68322599 6.46167374 1.85319233 1.66825175 6.09417057 1.89650559
		 1.38518047 5.81528473 1.99268353 1.022929668 5.65462303 2.057119131 0.70907706 5.43562651 2.12886
		 0.45477167 5.24317932 2.2194314 0.12957665 6.56886196 2.75309396 0.15383814 6.51013851 2.74094987
		 0.26741999 6.51172733 2.72944617 0.1614363 6.3753643 2.77147102 0.30592012 6.38206291 2.7527144
		 0.48251149 6.4981308 2.69462562 0.52557886 6.37349653 2.7022059 0.72615379 6.33790779 2.61164236
		 1.96587074 6.25370407 1.55506325 1.82302725 6.54158449 1.63254333 0.72824812 5.21758461 2.091310263
		 1.1037643 5.40422869 1.97229719 0.46377259 5.098164558 2.16409111 1.067921877 4.71494675 1.95827246
		 0.49531764 4.64191008 2.14071822 1.17667687 4.23729277 2.057873011 0.60297811 4.19831514 2.17449474
		 0.67495674 3.016895771 2.31706119 1.30937195 3.020648003 2.099617243 0.19619657 7.59959316 1.60398173
		 0.23374555 7.47403288 1.74698544 0.26597339 7.34129953 1.88360143 0.27603418 7.20865488 2.037642241
		 0.20827866 6.96850252 2.41573262 1.49758124 5.57993937 1.80036497 1.75587726 5.77810812 1.65746486
		 1.63338482 4.89501858 1.56459606 1.7211678 4.29660416 1.70849025 0.11860208 7.086303711 2.26495695
		 0.12971082 7.2116518 2.080946922 0.25881132 7.081726551 2.21401334 0.66257828 7.028545856 2.036149025
		 0.97123826 6.95935249 1.91821527 0.92454708 7.14008284 1.78569365 0.25280315 8.055771828 0.84852993
		 0.17251836 8.06580162 0.84926862 0.079692274 7.92699385 1.2278198 0.15491889 7.92225313 1.22192395
		 0.17164235 7.72620344 1.44244313 0.07814309 7.72141457 1.46010864 0.47523934 7.99446869 0.85872221
		 0.32720459 7.89085007 1.21019197 0.32459193 7.72937918 1.40695131 0.42854297 7.8560977 1.20739532
		 0.65031576 7.90169001 0.92068213 0.4544692 7.72774935 1.36309481 0.6795671 7.72121286 1.23468351
		 0.75305635 7.58526564 1.40432823 0.81960034 7.45251322 1.54665339 0.87955302 7.29839993 1.66579187
		 2.15102506 6.47132683 0.81753522 1.91075051 7.21787214 0.71062493 1.9311049 7.097502708 0.88816625
		 2.031332731 7.011615276 0.67535645 1.7275852 7.21292543 1.083379745 1.76747453 7.32574844 0.90378964
		 1.47407115 7.40601969 1.11429226 1.42581344 7.29491234 1.28661799 1.18385005 7.10944176 1.66811371
		 1.42823029 7.051771164 1.54504943 1.41849947 7.17505121 1.4275589 1.14699924 7.24754477 1.56200457
		 1.87080038 6.59191751 1.53300369 2.02270031 6.31076145 1.39333248 1.94173574 5.91957521 1.47053266
		 2.075938463 6.011973381 1.21830928 2.12997627 6.077289581 1.050769925 2.39042473 5.39797449 0.9583931
		 2.39533615 6.020641327 0.8512181 2.0029325485 5.10057545 1.371647 1.11955225 7.380795 1.43934536
		 1.11768758 7.50094128 1.2753365 0.088299431 7.58866358 1.63696992 0.10994305 7.46732283 1.78037167
		 0.12590012 7.33993292 1.92111099 2.054081202 6.83887815 -0.5322786 1.87402999 7.12489223 -0.43675008
		 1.78978419 7.31663656 -0.25722075 1.70397806 7.48302078 0.043017048;
	setAttr ".vt[664:829]" 1.59357989 7.60909271 0.35714364 1.46071196 7.70244551 0.59744072
		 1.25586712 7.74489355 0.8057797 1.56683457 7.55281401 0.86465031 1.74882865 7.46342134 0.65289205
		 1.84619653 7.36051893 0.42416957 0.90476835 7.95981503 0.46862054 1.16143787 7.63269472 1.059154272
		 0.64629537 8.058675766 0.43877468 0.37042475 8.13377476 0.44923824 1.049853921 7.86927366 0.081402987
		 1.91427958 7.23408842 0.18915734 1.9865464 7.074094772 -0.011525163 2.34674692 6.583426 -0.032053828
		 2.39949083 6.33865356 0.52826869 1.7470063 6.90018749 -0.87302041 2.094267368 4.38172245 1.439309
		 2.46729279 4.51054096 1.11745846 2.22268438 6.55259705 -0.99752682 1.31370413 6.89161539 -1.30530274
		 1.57030118 6.29721928 -1.45320165 0.77057737 6.84223747 -1.6087507 0.89569801 6.28537178 -1.85239518
		 0.54007715 6.29388237 -1.9812423 0.50814915 6.81969643 -1.74658275 1.014510751 7.41296673 -0.92782259
		 0.69248873 7.43715572 -1.11590886 0.43292016 7.47173595 -1.22996438 0.27342185 7.82276249 -0.62675077
		 0.51364332 7.79033566 -0.56030703 0.8298437 7.73933506 -0.45158818 0.37707958 8.080474854 -0.047416605
		 0.23205909 8.10595608 -0.065989926 0.67343092 7.99554157 0.0028795009 0.27900305 8.14513588 0.44751558
		 2.51026177 3.1922431 1.34569669 2.75196815 3.29883361 0.85741645 1.19848788 7.67209053 -0.34652668
		 1.36207521 7.37802267 -0.62096 1.061918616 5.73789358 -1.92765856 0.58751404 5.76692438 -2.19186234
		 0.56080997 4.64911222 -2.45271921 1.31791997 4.5074439 -2.1295073 2.53192282 4.18518019 -1.35797107
		 1.91811693 2.98605251 1.79885411 3.13148618 3.52216434 0.30873498 2.9268291 3.7933569 -0.65591693
		 1.6498307 6.75830936 1.58913255 1.59078932 6.71068192 1.6851325 1.21913624 6.80651665 1.90552855
		 0.43743932 7.064669609 2.13386273 0.45217586 7.19967222 1.97019577 0.090167522 6.96798801 2.47280192
		 2.17981315 6.71433544 0.58907378 2.055176973 6.40409613 1.20970392 1.9015547 6.67643404 1.40724957
		 1.66838586 6.8359704 1.50627446 1.92443311 6.80873156 1.24560082 1.67964518 6.94764519 1.3919735
		 2.08142662 6.68917179 0.97595596 1.94077408 6.95615673 1.067822456 1.69423175 7.079582691 1.24783266
		 0.48742259 6.77151632 2.59832168 0.59344262 6.7570982 2.56513619 0.63680714 6.71726131 2.5632534
		 0.073438786 6.81420231 2.71863365 0.14457199 6.81298971 2.70410728 0.26528752 6.80062819 2.66882634
		 0.37652525 6.78724289 2.63169837 0.56560493 6.69550276 2.6184175 0.45897329 6.68590879 2.65598559
		 0.34682345 6.66956282 2.69713736 0.24330479 6.65430498 2.7361567 0.65638286 3.67164445 2.23819113
		 1.2728554 3.68664002 2.14084792 1.843014 3.77659035 1.79324794 2.27450633 3.87501121 1.45964265
		 2.58858156 4.029942513 1.10815573 2.4616847 5.68557549 -1.3764782 0.63450789 7.33339596 1.7521069
		 0.66729957 7.17881441 1.88561368 0.91258281 6.29552698 2.38687801 0.8779279 6.2221036 2.37873292
		 0.86388034 6.23787069 2.40254426 0.76354122 6.19310665 2.35643005 0.77700704 6.10929108 2.47614312
		 0.59633654 6.072718143 2.35785389 0.59721464 6.040411949 2.58155584 0.44512039 5.94417381 2.40731788
		 0.36189669 6.021033287 2.63625431 0.33524245 5.76794624 2.47345543 0.15725201 6.036061287 2.67242908
		 0.17229474 5.6775856 2.49655557 0.74476624 6.40702248 1.55190253 0.75868529 6.40004492 1.54197538
		 0.66141331 6.30495358 1.65624797 0.66811264 6.29455853 1.60708201 0.52561891 6.254282 1.72818625
		 0.52811158 6.23080254 1.67782903 0.42133248 6.15340757 1.72226751 0.42501214 6.12324238 1.68033183
		 0.32310733 6.075139046 1.70603848 0.32504231 6.044222355 1.66496921 0.19599937 6.11786747 1.73249424
		 0.19574966 6.072364807 1.68057728 0.15987198 6.06254673 2.61614728 0.36056623 6.049839973 2.57812929
		 0.58754033 6.062477589 2.52971363 0.75750434 6.11198521 2.43298364 0.83988297 6.22356415 2.36685181
		 0.87063414 6.28774071 2.33848786 0.86363286 6.2688117 2.32901978 0.76024377 6.22889233 2.32010627
		 0.57570946 6.15446091 2.32936192 0.42476872 5.99834013 2.36622119 0.31215623 5.84205103 2.43212104
		 0.16609642 5.74436283 2.4595654 0.65023094 1.11074996 0.26772237 0.61249417 0.99749947 -0.53932375
		 0.62371385 2.30399895 2.11919498 1.24432218 2.24991369 1.90857673 1.8247813 2.22386551 1.69564605
		 2.72833967 2.35216427 1.31015968 2.93665552 2.41591692 0.89963013 3.18441463 2.48133755 0.41353405
		 2.96912742 2.61467648 -0.4916473 2.55741429 3.33197188 -1.36342156 1.39129317 3.74058104 -2.16510391
		 0.52686471 4.012105465 -2.53763938 3.020698309 0.20684624 0.12600739 3.20288706 0.20684624 0.12600739
		 3.15968394 0.20684624 0.14802054 3.23717332 0.20684624 0.091721117 3.26677155 0.20684624 0.00062675111
		 3.23717332 0.20684624 -0.090467662 3.15968394 0.20684648 -0.14676711 3.063901424 0.20684624 -0.14676709
		 2.95681357 0.20684624 0.00062675029 3.1117928 0.20684624 0.15560576 1.49519074 1.5887115 1.4285289
		 1.10993779 1.69779658 1.56970179 0.58751929 1.72296762 1.69860101 0.6300633 2.34507298 -2.5413053
		 1.16761184 2.28283644 -2.23204398 2.98641205 0.20684624 -0.090467632 1.73641121 0.84022951 0.71356672
		 2.14050388 1.17231023 1.1677146 2.55722857 1.42177522 1.26343882 2.92916775 1.57177079 0.96332777
		 3.087666035 1.59214687 0.69854707 3.20805907 1.63849497 0.36920387 3.079486132 1.58614326 -0.26299369
		 2.64724874 1.2798059 -1.15560508 1.96936691 1.1580987 -1.56006908 1.59472191 0.51209116 -0.86442983
		 1.63587534 0.65446758 0.065638751 1.23563409 1.41364336 -2.0013291836 0.67363638 1.56051922 -2.16949296
		 4.22639799 6.28092384 -0.0093565695 4.19907951 6.33266163 0.010517345 4.26177645 6.24841738 -0.040792484
		 4.15530014 6.41201115 -0.012664342 4.12626028 6.46873569 -0.05367209 4.101161 6.52161074 -0.11324394
		 4.24513006 6.28000546 -0.15786989 4.22228003 6.33001804 -0.22426525;
	setAttr ".vt[830:984]" 4.1520071 6.45489597 -0.24585837 4.10377026 6.53196716 -0.20643383
		 3.3276403 5.72562838 0.54671162 3.14744568 6.0096812248 0.57073402 3.01605773 6.23392153 0.42029446
		 2.94866633 6.43061447 0.00078372657 3.13273954 6.48946428 -0.52396744 3.29541898 6.018733978 -0.91701728
		 3.5697701 5.57836103 -0.73448235 3.65125132 4.81514597 -0.41245574 3.61592913 4.87856627 0.094853602
		 3.55158401 5.15205383 0.46120214 3.75736451 6.046051025 0.26467967 3.66481113 6.13626432 0.27490139
		 3.61242771 6.27384138 0.21284148 3.6475873 6.47489071 -0.014432125 3.65055275 6.51488256 -0.31539708
		 3.76370406 6.21589994 -0.53501463 3.83342481 6.017065048 -0.58161288 3.99759889 5.51839828 -0.36856067
		 3.9697473 5.48250771 -0.10896654 3.92252135 5.70588493 0.12403366 2.99206996 5.61633539 0.77333808
		 2.79717779 6.0084877014 0.68986356 2.67747474 6.27175856 0.47767332 2.61902881 6.45545483 -0.00078093261
		 2.66518831 6.48591137 -0.80114269 2.90294528 5.86440325 -1.11382937 3.19710588 4.90917444 -0.87710607
		 3.19749117 4.028913498 0.022972472 3.13039923 4.26008081 0.64661461 3.039819717 4.91182041 0.81381893
		 2.43538952 2.035673141 -1.37364519 2.98467565 -0.14330125 -0.21716446 3.23048711 -0.14379096 -0.28894615
		 2.95100951 -0.14377761 -0.12510863 3.32219267 -0.105685 -0.11189795 2.9283464 -0.14400458 -0.030481523
		 3.1439712 0.089713573 0.76152611 3.18275476 0.08416152 0.79924643 3.15069342 -0.17617536 0.66661292
		 3.16369939 -0.18076396 0.80070287 3.12260199 0.095602512 0.80247432 3.1219244 -0.178581 0.80770838
		 3.30505991 0.042165995 0.78075969 3.30413771 -0.19333243 0.76465696 2.96445274 0.0067820549 0.804075
		 2.96210885 -0.20867229 0.77610511 3.13764381 0.1144104 0.40565509 3.2185359 0.11060882 0.39968699
		 3.28090453 0.099297762 0.38986543 3.31693077 -0.11606097 0.33465219 3.14589596 -0.10939908 0.3331022
		 3.11410165 -0.10466647 0.33960885 3.083355904 -0.10462332 0.33889362 2.95105052 -0.079784393 0.34868261
		 2.96381831 0.091862917 0.39573222 3.069844484 0.12360024 0.40638396 3.30815387 -0.14334321 0.1886903
		 3.17404509 -0.14390683 0.19073834 3.091285944 -0.14329314 0.20214035 3.039173365 -0.14408517 0.2028003
		 2.96817636 -0.14364409 0.1564662 3.19871068 0.019272566 0.8819409 3.28041124 -0.0017640591 0.87149769
		 3.20001841 -0.18585134 0.92229402 3.28033233 -0.19405675 0.89887261 3.08632493 0.021170378 0.88804197
		 2.99396825 -0.019665956 0.88832134 2.99504471 -0.2033422 0.90808266 3.086372614 -0.18630481 0.93221688
		 3.13395381 -0.0077829361 -0.28877038 3.011764288 -0.017591953 -0.26591748 2.95501542 -0.0035028458 -0.10365701
		 2.94387627 -0.029375315 -0.02495357 2.98749065 -0.067317486 0.12306607 2.9316678 -0.002607584 0.36049449
		 2.95146489 -0.13451362 0.8066951 2.98242164 -0.05710721 0.89900011 3.084380865 -0.033915043 0.91708541
		 3.1214056 -0.08952117 0.83012027 3.1454916 -0.094568253 0.82614911 3.16320801 -0.093261003 0.82398635
		 3.19771194 -0.034049034 0.90811783 3.27837229 -0.045462132 0.88794065 3.31801176 -0.11348462 0.79246205
		 3.35543752 -0.026885509 0.34798166 3.3510139 -0.0019638538 0.14603698 3.36017108 0.0081980228 -0.13804883
		 4.4970088 6.43257809 -0.051799819 4.48001051 6.43900204 -0.22198394 4.4377265 6.60588598 -0.06895113
		 4.42345715 6.62312555 -0.28463501 4.49095964 6.61782074 -0.23969403 4.51656008 6.26937866 -0.055706929
		 4.47002316 6.33788013 -0.16146842 0.46212703 0.94669032 -1.5992533 1.05008328 0.76214647 -1.29665208
		 2.50413275 2.74630356 -1.38345242 1.29148054 2.99648857 -2.27164626 0.58723378 3.22120929 -2.59961343
		 2.13576698 6.74359083 -0.01759816 3.10573745 0.27264643 0.18954697 3.0044598579 0.24873734 0.14181165
		 2.94367576 0.23935556 0.026237389 2.96075273 0.23570919 -0.091712862 3.050221682 0.25843954 -0.19034317
		 3.15034318 0.27898669 -0.16277263 3.23223901 0.29625511 -0.066855222 3.25670671 0.29793787 0.028637167
		 3.2324369 0.29639792 0.11547722 3.20518184 0.29523349 0.15605359 3.16551828 0.28992939 0.18932295
		 2.38903785 0.50356579 0.57032597 2.64658713 0.69126099 0.82940984 2.89671421 0.88330477 0.88699573
		 3.078913212 1.021981001 0.70010835 3.20779204 1.050186157 0.53600967 3.24305534 1.043223143 0.31125259
		 3.17937899 1.019569159 -0.12496266 2.90929914 0.82768226 -0.64444059 2.55536699 0.71994996 -0.91462487
		 2.17492247 0.34679294 -0.56160766 2.21958375 0.38731146 0.10243183 1.79392779 5.69889212 -1.63376868
		 1.86338115 4.36916494 -1.75272882 1.91951656 3.55739045 -1.76774991 1.94523859 2.86294174 -1.75236416
		 1.85218167 2.15063477 -1.72764492 2.21141291 6.26131296 0.82870775 2.22372293 6.46875763 0.5289346
		 4.91769409 6.64398623 -0.12335311 4.90862942 6.67763615 -0.13272308 4.91705132 6.63530159 -0.13910294
		 4.90803623 6.66622734 -0.15362918 4.66814947 6.82668114 -0.23169704 4.6399703 6.85178328 -0.25272098
		 4.66282034 6.82390976 -0.2643348 4.65262651 6.83955717 -0.26606268 4.77196836 6.33923054 -0.061009765
		 4.7784729 6.37303352 -0.068391576 4.76525688 6.34835052 -0.080263481 4.7758317 6.38361073 -0.085688166
		 4.22922039 6.69908571 -0.12765604 4.22323227 6.73388004 -0.20318009 0.50229657 1.22794151 1.0035856962
		 2.50118375 4.84181404 -1.36607051 1.83298552 4.89983177 -1.71819162 1.20588326 5.020622253 -2.058694601
		 0.57249677 5.20645046 -2.34569836 0 5.26032829 -2.44420171 -0.57249677 5.20645046 -2.34569836
		 -1.20588326 5.020622253 -2.058694601 -1.83298552 4.89983177 -1.71819162 -2.50118375 4.84181404 -1.36607051;
	setAttr -s 1977 ".ed";
	setAttr ".ed[0:165]"  33 36 1 36 35 1 35 34 1 34 33 1 37 33 1 34 38 1 38 37 1
		 40 233 1 233 137 1 137 39 1 39 40 1 39 42 1 42 41 1 41 40 1 43 249 1 249 32 1 32 0 1
		 0 43 1 44 250 1 250 249 1 43 44 1 45 251 1 251 250 1 44 45 1 46 252 1 252 251 1 45 46 1
		 47 35 1 36 46 1 46 47 1 48 253 1 253 248 1 248 37 1 37 48 1 49 254 1 254 253 1 48 49 1
		 50 255 1 255 254 1 49 50 1 51 256 1 256 255 1 50 51 1 52 53 1 53 256 1 51 52 1 52 105 1
		 105 54 1 54 53 1 55 48 1 37 56 1 56 55 1 38 57 1 57 56 1 56 59 1 59 58 1 58 55 1
		 57 60 1 60 59 1 59 62 1 62 61 1 61 58 1 60 63 1 63 62 1 62 65 1 65 64 1 64 61 1 63 66 1
		 66 65 1 65 68 1 68 67 1 67 64 1 66 69 1 69 68 1 68 71 1 71 70 1 70 67 1 69 72 1 72 71 1
		 71 74 1 74 73 1 73 70 1 72 75 1 75 74 1 75 1 1 1 2 1 2 74 1 76 79 1 79 78 1 78 77 1
		 77 76 1 79 125 1 125 124 1 124 78 1 80 126 1 126 125 1 79 80 1 44 128 1 128 81 1
		 81 45 1 81 47 1 49 83 1 83 82 1 82 50 1 55 83 1 84 82 1 83 85 1 85 84 1 58 85 1 86 84 1
		 85 87 1 87 86 1 281 283 0 283 282 1 282 280 1 280 281 0 87 89 1 89 88 1 88 86 1 283 285 0
		 285 284 1 284 282 1 89 91 1 91 90 1 90 88 1 285 287 0 287 286 1 286 284 1 92 93 1
		 93 90 1 91 92 1 287 289 0 289 288 1 288 286 1 94 95 1 95 93 1 92 94 1 289 291 0 291 290 1
		 290 288 1 94 3 1 3 4 1 4 95 1 291 293 0 293 292 1 292 290 1 2 5 1 5 73 1 6 1 1 75 96 1
		 96 6 1 98 99 1 99 57 1 38 98 1 99 100 1 100 60 1 101 63 1 100 101 1 101 102 1 102 66 1
		 102 103 1 103 69 1 103 104 1 104 72 1 104 96 1 106 105 1;
	setAttr ".ed[166:331]" 52 107 1 107 106 1 108 106 1 107 109 1 109 108 1 107 110 1
		 110 111 1 111 109 1 51 110 1 82 112 1 112 111 1 110 82 1 113 100 1 99 114 1 114 113 1
		 108 95 1 4 8 1 8 108 1 109 93 1 111 90 1 112 88 1 112 86 1 102 116 1 116 115 1 115 103 1
		 115 117 1 117 104 1 119 117 1 115 118 1 118 119 1 120 121 1 121 119 1 118 120 1 120 259 1
		 259 258 1 258 121 1 117 97 1 97 96 1 9 97 1 119 9 1 121 10 1 10 9 1 80 235 1 235 127 1
		 127 126 1 101 129 1 129 116 1 118 129 1 129 130 1 130 131 1 131 118 1 131 132 1 132 120 1
		 133 11 1 11 12 1 12 134 1 134 133 1 134 127 1 127 135 1 135 133 1 139 142 1 142 141 1
		 141 140 1 140 139 1 143 144 1 144 141 1 142 143 1 146 142 1 139 145 1 145 146 1 147 143 1
		 146 147 1 145 149 1 149 148 1 148 146 1 148 150 1 150 147 1 149 151 1 151 150 1 151 152 1
		 152 77 1 77 150 1 153 76 1 152 153 1 138 163 1 163 39 1 137 138 1 153 175 1 175 166 1
		 166 154 1 154 153 1 152 176 1 176 175 1 151 191 1 191 176 1 158 156 1 156 189 1 189 195 1
		 195 158 1 159 160 1 160 156 1 156 157 1 157 159 1 159 162 1 162 161 1 161 160 1 163 166 1
		 166 165 1 165 164 1 164 163 1 164 42 1 167 168 1 168 113 1 114 167 1 168 170 1 170 169 1
		 169 113 1 171 173 1 173 172 1 172 170 1 170 171 1 172 174 1 174 169 1 172 201 1 201 200 1
		 200 174 1 176 161 1 162 175 1 177 124 1 125 178 1 178 177 1 179 126 1 134 179 1 13 177 1
		 178 14 1 14 13 1 15 179 1 12 15 1 187 185 1 185 184 1 184 188 1 188 187 1 183 189 1
		 189 188 1 184 183 1 188 160 1 161 187 1 190 185 1 185 186 1 186 149 1 149 190 1 186 191 1
		 145 192 1 192 190 1 193 192 1 139 193 1 495 496 1 496 198 1 198 173 1 173 495 1 194 184 1
		 190 194 1 187 191 1 183 182 1 182 195 1 182 181 1;
	setAttr ".ed[332:497]" 181 196 1 196 195 1 199 203 1 203 204 1 204 202 1 202 199 1
		 183 221 1 221 222 1 222 182 1 194 221 1 196 237 1 237 158 1 130 169 1 174 131 1 201 262 1
		 262 261 1 261 200 1 203 205 1 205 206 1 206 204 1 205 208 1 208 207 1 207 206 1 209 210 1
		 210 205 1 203 209 1 210 213 1 213 212 1 212 211 1 211 210 1 214 213 1 209 214 1 215 216 1
		 216 212 1 213 215 1 217 215 1 214 217 1 193 218 1 218 216 1 215 193 1 217 192 1 200 132 1
		 209 222 1 221 214 1 194 217 1 207 224 1 224 223 1 223 206 1 199 222 1 224 981 1 981 982 1
		 982 223 1 223 490 1 490 204 1 140 218 1 231 167 1 114 232 1 232 231 1 98 232 1 41 231 1
		 232 40 1 98 233 1 130 100 1 97 7 1 7 6 1 8 24 1 24 106 1 138 154 1 260 132 1 261 260 1
		 199 181 1 211 208 1 141 16 1 16 17 1 17 140 1 144 18 1 18 16 1 212 19 1 19 20 1 20 211 1
		 216 21 1 21 19 1 218 22 1 22 21 1 17 22 1 78 147 1 124 143 1 177 144 1 20 23 1 23 208 1
		 25 105 1 24 25 1 25 26 1 26 54 1 248 247 1 247 33 1 247 246 1 246 36 1 246 252 1
		 234 135 1 235 234 1 236 27 1 27 11 1 133 236 1 135 128 1 128 236 1 136 137 1 137 35 1
		 47 136 1 234 81 1 234 136 1 0 27 1 236 43 1 233 34 1 264 265 1 162 165 1 179 178 1
		 15 14 1 168 238 1 238 171 1 167 239 1 239 238 1 231 240 1 240 239 1 42 240 1 238 243 1
		 243 155 1 155 171 1 239 241 1 241 243 1 240 242 1 242 241 1 164 242 1 244 241 1 242 245 1
		 245 244 1 165 245 1 237 155 1 243 158 1 245 159 1 157 244 1 13 18 1 29 207 1 23 29 1
		 30 224 1 29 30 1 30 980 1 980 981 1 254 246 1 31 257 1 257 258 1 258 122 1 122 31 1
		 259 123 1 123 122 1 259 260 1 260 228 1 228 123 1 261 219 1 219 228 1 262 220 1 220 219 1
		 982 983 1 983 490 1 264 80 1 76 264 1;
	setAttr ".ed[498:663]" 136 265 1 265 138 1 154 264 1 235 265 1 249 54 1 26 32 1
		 250 53 1 251 256 1 252 255 1 58 267 1 267 266 1 266 85 1 266 268 1 268 87 1 61 269 1
		 269 267 1 268 270 1 270 89 1 64 271 1 271 269 1 270 272 1 272 91 1 67 273 1 273 271 1
		 272 274 1 274 92 1 70 275 1 275 273 1 274 276 1 276 94 1 73 277 1 277 275 1 276 278 1
		 278 3 1 5 279 1 279 277 1 267 302 1 302 301 1 301 266 0 301 300 1 300 268 1 269 303 1
		 303 302 1 300 299 1 299 270 1 271 304 1 304 303 1 299 298 1 298 272 1 273 305 1 305 304 1
		 298 297 1 297 274 1 275 306 1 306 305 1 297 296 1 296 276 1 277 307 1 307 306 1 296 295 1
		 295 278 1 279 294 1 294 307 1 296 290 1 292 295 1 297 288 1 298 286 1 299 284 1 300 282 1
		 301 280 0 302 281 1 303 283 1 304 285 1 305 287 1 306 289 1 307 291 1 294 293 1 311 122 1
		 123 312 1 312 311 1 313 228 1 219 314 1 314 313 1 220 315 1 315 314 1 225 320 1 320 319 1
		 319 226 1 226 225 1 319 492 1 492 491 1 491 226 1 313 312 1 229 316 1 316 315 1 220 229 1
		 230 317 1 317 316 1 229 230 1 227 318 1 318 317 1 230 227 1 310 31 1 311 310 1 28 321 1
		 321 320 1 225 28 1 511 308 1 308 467 1 467 512 1 512 511 1 511 333 1 333 332 1 332 308 1
		 337 352 1 352 351 1 351 338 1 338 337 1 336 353 1 353 352 1 337 336 1 350 309 1 309 308 1
		 308 340 1 340 350 1 314 343 1 343 342 1 342 313 1 332 341 1 341 340 1 315 344 1 344 343 1
		 316 345 1 345 344 1 317 346 1 346 345 1 394 347 1 347 346 1 317 394 1 351 460 1 460 349 1
		 349 348 1 348 351 1 342 341 1 332 313 1 333 312 1 334 311 1 333 334 1 335 310 1 334 335 1
		 321 464 1 464 463 1 463 320 1 463 462 1 462 319 1 331 322 1 322 469 1 469 468 1 468 331 1
		 324 331 1 468 478 1 478 324 1 323 324 1 478 477 1 477 323 1 325 323 1;
	setAttr ".ed[664:829]" 477 476 1 476 325 1 326 325 1 476 475 1 475 326 1 327 326 1
		 475 474 1 474 327 1 328 327 1 474 473 1 473 328 1 329 328 1 473 472 1 472 329 1 339 329 1
		 472 471 1 471 339 1 330 339 1 471 470 1 470 330 1 322 330 1 470 469 1 458 309 1 309 460 1
		 460 458 1 353 459 1 459 458 1 458 352 1 350 349 1 394 494 1 494 348 1 348 347 1 173 385 1
		 385 384 1 384 172 1 384 393 1 393 201 1 197 387 1 387 386 1 386 198 1 198 197 1 202 388 1
		 388 387 1 197 202 1 386 385 1 392 262 1 393 392 1 229 391 1 391 390 1 390 230 1 263 389 1
		 389 388 1 202 263 1 365 375 1 375 374 1 374 364 1 364 365 1 366 376 1 376 375 1 365 366 1
		 367 377 1 377 376 1 366 367 1 368 378 1 378 377 1 367 368 1 369 379 1 379 378 1 368 369 1
		 370 380 1 380 379 1 369 370 1 371 381 1 381 380 1 370 371 1 382 372 1 372 373 1 373 383 1
		 383 382 1 374 383 1 373 364 1 375 355 1 355 354 1 354 374 1 376 357 1 357 355 1 377 358 1
		 358 357 1 378 359 1 359 358 1 379 363 1 363 359 1 380 362 1 362 363 1 381 361 1 361 362 1
		 382 360 1 360 361 1 381 382 1 383 356 1 356 360 1 354 356 1 385 365 1 364 384 1 386 366 1
		 387 367 1 388 368 1 389 369 1 390 370 1 389 390 1 391 371 1 372 392 1 393 373 1 262 229 1
		 318 461 1 461 394 1 462 493 1 493 492 1 494 338 1 401 444 1 444 443 1 443 400 1 400 401 1
		 443 442 1 442 404 1 404 400 1 426 446 1 446 445 1 445 425 1 425 426 1 450 328 1 329 433 1
		 433 450 1 322 436 1 436 435 1 435 330 1 339 434 1 434 433 1 429 441 1 441 440 1 440 430 1
		 430 429 1 435 434 1 323 411 1 411 410 1 410 324 1 395 422 1 422 421 1 421 396 1 396 395 1
		 410 419 1 419 331 1 397 423 1 423 422 1 395 397 1 325 412 1 412 411 1 421 420 1 420 398 1
		 398 396 1 419 418 1 418 322 1 322 437 1 437 436 1 399 424 0 424 423 1;
	setAttr ".ed[830:995]" 397 399 1 450 449 1 449 325 1 411 401 1 400 410 1 412 406 1
		 406 401 1 412 448 1 448 447 1 447 406 1 414 403 1 403 407 1 407 413 1 413 414 1 415 402 1
		 402 403 1 414 415 1 416 405 1 405 402 1 415 416 1 417 409 1 409 405 1 416 417 1 408 439 1
		 439 438 1 438 418 1 418 408 1 419 404 1 404 408 1 449 448 1 421 414 1 413 420 1 422 415 1
		 423 416 1 424 417 1 438 437 1 406 426 1 425 401 1 445 444 1 403 427 1 427 428 1 428 407 1
		 447 446 1 404 429 1 430 408 1 440 439 1 409 431 1 431 432 1 432 405 1 442 441 1 434 395 1
		 396 433 1 435 397 1 436 399 1 437 424 1 438 417 1 439 409 1 440 431 1 441 432 1 442 405 1
		 443 402 0 444 403 1 445 427 1 446 428 1 447 407 1 448 413 1 449 420 1 450 398 1 355 451 1
		 451 356 1 453 357 1 358 509 1 509 453 1 453 451 1 506 508 1 508 507 1 507 505 1 505 506 0
		 363 510 1 510 509 1 361 452 1 452 454 1 454 362 1 498 500 1 500 499 1 499 497 1 497 498 1
		 454 510 1 502 504 1 504 503 1 503 501 1 501 502 1 456 457 1 457 361 1 356 456 0 457 452 1
		 462 338 1 494 493 1 463 337 1 464 336 1 257 10 1 197 465 1 465 180 1 180 202 1 465 196 1
		 181 180 1 309 466 1 466 467 1 459 466 1 480 479 1 479 340 1 341 480 1 489 350 1 479 489 1
		 488 349 1 489 488 1 487 348 1 488 487 1 486 347 1 487 486 1 485 346 1 486 485 1 484 345 1
		 485 484 1 483 344 1 484 483 1 482 343 1 483 482 1 481 342 1 482 481 1 481 480 1 469 479 1
		 480 468 1 481 478 1 482 477 1 483 476 1 484 475 1 485 474 1 486 473 1 487 472 1 488 471 1
		 489 470 1 984 390 1 263 984 1 490 263 1 983 984 1 492 318 1 227 491 1 493 461 1 496 465 1
		 496 237 1 171 495 1 495 155 1 158 157 1 243 244 1 199 180 1 453 498 1 497 451 1 452 451 0
		 499 452 1 455 454 1 452 455 1 455 500 1 453 455 0 455 503 1 504 454 1;
	setAttr ".ed[996:1161]" 453 501 0 451 506 1 505 456 0 456 451 1 507 457 1 508 452 0
		 502 509 1 512 334 1 512 335 1 513 514 1 514 515 1 515 516 1 516 513 1 517 518 1 518 514 1
		 513 517 1 520 519 1 519 617 1 617 713 1 713 520 1 520 521 1 521 522 1 522 519 1 523 0 1
		 32 729 1 729 523 1 524 523 1 729 730 1 730 524 1 525 524 1 730 731 1 731 525 1 526 525 1
		 731 732 1 732 526 1 527 526 1 526 516 1 515 527 1 528 517 1 517 728 1 728 733 1 733 528 1
		 529 528 1 733 734 1 734 529 1 530 529 1 734 735 1 735 530 1 531 530 1 735 736 1 736 531 1
		 532 531 1 736 533 1 533 532 1 533 534 1 534 585 1 585 532 1 535 536 1 536 517 1 528 535 1
		 536 537 1 537 518 1 535 538 1 538 539 1 539 536 1 539 540 1 540 537 1 538 541 1 541 542 1
		 542 539 1 542 543 1 543 540 1 541 544 1 544 545 1 545 542 1 545 546 1 546 543 1 544 547 1
		 547 548 1 548 545 1 548 549 1 549 546 1 547 550 1 550 551 1 551 548 1 551 552 1 552 549 1
		 550 553 1 553 554 1 554 551 1 554 555 1 555 552 1 554 2 1 1 555 1 556 557 1 557 558 1
		 558 559 1 559 556 1 558 604 1 604 605 1 605 559 1 560 559 1 605 606 1 606 560 1 525 561 1
		 561 608 1 608 524 1 527 561 1 530 562 1 562 563 1 563 529 1 563 535 1 564 565 1 565 563 1
		 562 564 1 565 538 1 566 567 1 567 565 1 564 566 1 758 757 0 757 759 1 759 760 1 760 758 0
		 566 568 1 568 569 1 569 567 1 759 761 1 761 762 1 762 760 0 568 570 1 570 571 1 571 569 1
		 761 763 1 763 764 1 764 762 0 572 571 1 570 573 1 573 572 1 763 765 1 765 766 1 766 764 0
		 574 572 1 573 575 1 575 574 1 765 767 1 767 768 1 768 766 0 575 4 1 3 574 1 767 292 1
		 293 768 0 553 5 1 6 576 1 576 555 1 578 518 1 537 579 1 579 578 1 540 580 1 580 579 1
		 581 580 1 543 581 1 546 582 1 582 581 1 549 583 1 583 582 1 552 584 1;
	setAttr ".ed[1162:1327]" 584 583 1 576 584 1 586 587 1 587 532 1 585 586 1 588 589 1
		 589 587 1 586 588 1 589 591 1 591 590 1 590 587 1 590 531 1 562 590 1 591 592 1 592 562 1
		 593 594 1 594 579 1 580 593 1 588 8 1 575 588 1 573 589 1 570 591 1 568 592 1 566 592 1
		 583 595 1 595 596 1 596 582 1 584 597 1 597 595 1 599 598 1 598 595 1 597 599 1 600 598 1
		 599 601 1 601 600 1 601 737 1 737 738 1 738 600 1 576 577 1 577 597 1 577 9 1 9 599 1
		 10 601 1 606 607 1 607 715 1 715 560 1 596 609 1 609 581 1 598 611 1 611 610 1 610 609 1
		 609 598 1 600 612 1 612 611 1 610 580 1 613 614 1 614 12 1 11 613 1 613 615 1 615 607 1
		 607 614 1 619 620 1 620 621 1 621 622 1 622 619 1 623 622 1 621 624 1 624 623 1 626 625 1
		 625 619 1 622 626 1 627 626 1 623 627 1 626 628 1 628 629 1 629 625 1 627 630 1 630 628 1
		 630 631 1 631 629 1 630 557 1 557 632 1 632 631 1 633 632 1 556 633 1 618 617 1 519 643 1
		 643 618 1 633 634 1 634 646 1 646 655 1 655 633 1 655 656 1 656 632 1 656 671 1 671 631 1
		 638 675 1 675 669 1 669 636 1 636 638 1 639 637 1 637 636 1 636 640 1 640 639 1 640 641 1
		 641 642 1 642 639 1 643 644 1 644 645 1 645 646 1 646 643 1 522 644 1 647 594 1 593 648 1
		 648 647 1 593 649 1 649 650 1 650 648 1 651 650 1 650 652 1 652 653 1 653 651 1 649 654 1
		 654 652 1 654 680 1 680 681 1 681 652 1 655 642 1 641 656 1 657 658 1 658 605 1 604 657 1
		 659 614 1 606 659 1 14 658 1 657 13 1 659 15 1 667 668 1 668 664 1 664 665 1 665 667 1
		 663 664 1 668 669 1 669 663 1 667 641 1 640 668 1 670 629 1 629 666 1 666 665 1 665 670 1
		 671 666 1 670 672 1 672 625 1 673 619 1 672 673 1 959 653 1 653 678 1 678 960 1 960 959 1
		 674 670 1 664 674 1 671 667 1 675 662 1 662 663 1 675 676 1 676 661 1;
	setAttr ".ed[1328:1493]" 661 662 1 679 682 1 682 684 1 684 683 1 683 679 1 662 702 1
		 702 701 1 701 663 1 701 674 1 638 717 1 717 676 1 611 654 1 649 610 1 680 740 1 740 741 1
		 741 681 1 684 686 1 686 685 1 685 683 1 686 687 1 687 688 1 688 685 1 689 683 1 685 690 1
		 690 689 1 690 691 1 691 692 1 692 693 1 693 690 1 694 689 1 693 694 1 695 693 1 692 696 1
		 696 695 1 697 694 1 695 697 1 673 695 1 696 698 1 698 673 1 672 697 1 612 680 1 694 701 1
		 702 689 1 697 674 1 686 703 1 703 704 1 704 687 1 702 679 1 703 978 1 978 979 1 979 704 1
		 684 954 1 954 703 1 698 620 1 711 712 1 712 594 1 647 711 1 712 578 1 520 712 1 711 521 1
		 713 578 1 7 577 1 586 24 1 634 618 1 739 740 1 612 739 1 661 679 1 688 691 1 620 17 1
		 16 621 1 18 624 1 691 20 1 19 692 1 21 696 1 22 698 1 627 558 1 623 604 1 624 657 1
		 688 23 1 585 25 1 534 26 1 513 727 1 727 728 1 516 726 1 726 727 1 732 726 1 714 715 1
		 615 714 1 716 613 1 27 716 1 716 608 1 608 615 1 616 527 1 515 617 1 617 616 1 561 714 1
		 616 714 1 523 716 1 514 713 1 744 743 1 645 642 1 658 659 1 651 718 1 718 648 1 718 719 1
		 719 647 1 719 720 1 720 711 1 720 522 1 651 635 1 635 723 1 723 718 1 723 721 1 721 719 1
		 721 722 1 722 720 1 722 644 1 724 725 1 725 722 1 721 724 1 725 645 1 638 723 1 635 717 1
		 724 637 1 639 725 1 687 29 1 704 30 1 979 980 1 726 734 1 31 602 1 602 737 1 737 257 1
		 602 603 1 603 738 1 603 708 1 708 739 1 739 738 1 708 699 1 699 740 1 699 700 1 700 741 1
		 954 977 1 977 978 1 560 743 1 743 556 1 744 616 1 618 744 1 743 634 1 744 715 1 534 729 1
		 533 730 1 736 731 1 735 732 1 565 745 1 745 746 1 746 538 1 567 747 1 747 745 1 746 748 1
		 748 541 1 569 749 1 749 747 1 748 750 1 750 544 1 571 751 1 751 749 1;
	setAttr ".ed[1494:1659]" 750 752 1 752 547 1 572 753 1 753 751 1 752 754 1 754 550 1
		 574 755 1 755 753 1 754 756 1 756 553 1 278 755 1 756 279 1 745 774 0 774 775 1 775 746 1
		 747 773 1 773 774 1 775 776 1 776 748 1 749 772 1 772 773 1 776 777 1 777 750 1 751 771 1
		 771 772 1 777 778 1 778 752 1 753 770 1 770 771 1 778 779 1 779 754 1 755 769 1 769 770 1
		 779 780 1 780 756 1 295 769 1 780 294 1 767 769 1 765 770 1 763 771 1 761 772 1 759 773 1
		 757 774 0 758 775 1 760 776 1 762 777 1 764 778 1 766 779 1 768 780 1 783 784 1 784 603 1
		 602 783 1 785 786 1 786 699 1 708 785 1 786 787 1 787 700 1 705 706 1 706 791 1 791 792 1
		 792 705 1 706 955 1 955 956 1 956 791 1 784 785 1 709 700 1 787 788 1 788 709 1 710 709 1
		 788 789 1 789 710 1 707 710 1 789 790 1 790 707 1 310 783 1 28 705 1 792 321 1 975 512 1
		 467 781 1 781 975 1 781 803 1 803 804 1 804 975 1 806 807 1 807 820 1 820 821 1 821 806 1
		 336 806 1 821 353 1 819 809 1 809 781 1 781 782 1 782 819 1 785 811 1 811 812 1 812 786 1
		 809 810 1 810 803 1 812 813 1 813 787 1 813 814 1 814 788 1 814 815 1 815 789 1 862 789 1
		 815 816 1 816 862 1 820 817 1 817 818 1 818 927 1 927 820 1 785 803 1 810 811 1 784 804 1
		 805 804 1 783 805 1 335 805 1 792 930 1 930 464 1 791 929 1 929 930 1 802 932 1 932 933 1
		 933 793 1 793 802 1 795 942 1 942 932 1 802 795 1 794 941 1 941 942 1 795 794 1 796 940 1
		 940 941 1 794 796 1 797 939 1 939 940 1 796 797 1 798 938 1 938 939 1 797 798 1 799 937 1
		 937 938 1 798 799 1 800 936 1 936 937 1 799 800 1 808 935 1 935 936 1 800 808 1 801 934 1
		 934 935 1 808 801 1 933 934 1 801 793 1 926 927 1 927 782 1 782 926 1 821 926 1 926 459 1
		 818 819 1 816 817 1 817 958 1 958 862 1 652 852 1 852 853 1 853 653 1;
	setAttr ".ed[1660:1825]" 681 861 1 861 852 1 677 678 1 678 854 1 854 855 1 855 677 1
		 682 677 1 855 856 1 856 682 1 853 854 1 860 741 1 741 709 1 709 859 1 859 860 1 710 858 1
		 858 859 1 707 976 1 976 858 1 742 682 1 856 857 1 857 742 1 833 832 1 832 842 1 842 843 1
		 843 833 1 834 833 1 843 844 1 844 834 1 835 834 1 844 845 1 845 835 1 836 835 1 845 846 1
		 846 836 1 837 836 1 846 847 1 847 837 1 838 837 1 847 848 1 848 838 1 839 838 1 848 849 1
		 849 839 1 850 840 1 840 839 1 849 850 1 832 841 1 841 851 1 851 842 1 842 822 1 822 823 1
		 823 843 1 823 825 1 825 844 1 825 826 1 826 845 1 826 827 1 827 846 1 827 831 1 831 847 1
		 831 830 1 830 848 1 830 829 1 829 849 1 829 828 1 828 850 1 851 850 1 828 824 1 824 851 1
		 824 822 1 852 832 1 833 853 1 834 854 1 835 855 1 836 856 1 837 857 1 858 857 1 838 858 1
		 839 859 1 840 860 1 861 841 1 862 928 1 928 790 1 956 957 1 957 929 1 807 958 1 869 868 1
		 868 911 1 911 912 1 912 869 1 868 872 1 872 910 1 910 911 1 894 893 1 893 913 1 913 914 1
		 914 894 1 918 901 1 901 800 1 799 918 1 801 903 1 903 904 1 904 793 1 901 902 1 902 808 1
		 897 898 1 898 908 1 908 909 1 909 897 1 902 903 1 795 878 1 878 879 1 879 794 1 863 864 1
		 864 889 1 889 890 1 890 863 1 802 887 1 887 878 1 865 863 1 890 891 1 891 865 1 879 880 1
		 880 796 1 864 866 1 866 888 1 888 889 1 793 886 1 886 887 1 904 905 1 905 793 1 867 865 1
		 891 892 1 892 867 0 796 917 1 917 918 1 878 868 1 869 879 1 869 874 1 874 880 1 874 915 1
		 915 916 1 916 880 1 882 881 1 881 875 1 875 871 1 871 882 1 883 882 1 871 870 1 870 883 1
		 884 883 1 870 873 1 873 884 1 885 884 1 873 877 1 877 885 1 876 886 1 886 906 1 906 907 1
		 907 876 1 876 872 1 872 887 1 916 917 1 888 881 1 882 889 1 883 890 1;
	setAttr ".ed[1826:1976]" 884 891 1 885 892 1 905 906 1 869 893 1 894 874 1 912 913 1
		 875 896 1 896 895 1 895 871 1 914 915 1 876 898 1 897 872 1 907 908 1 873 900 1 900 899 1
		 899 877 1 909 910 1 901 864 1 863 902 1 865 903 1 867 904 1 892 905 1 885 906 1 877 907 1
		 899 908 1 900 909 1 873 910 1 870 911 0 871 912 1 895 913 1 896 914 1 875 915 1 881 916 1
		 888 917 1 866 918 1 824 919 1 919 823 1 921 973 1 973 826 1 825 921 1 919 921 1 970 969 0
		 969 971 1 971 972 1 972 970 1 973 974 1 974 831 1 830 922 1 922 920 1 920 829 1 962 961 1
		 961 963 1 963 964 1 964 962 1 974 922 1 966 965 1 965 967 1 967 968 1 968 966 1 924 824 0
		 829 925 1 925 924 1 920 925 1 957 958 1 807 929 1 806 930 1 682 660 1 660 931 1 931 677 1
		 660 661 1 676 931 1 466 782 1 944 810 1 809 943 1 943 944 1 953 943 1 819 953 1 952 953 1
		 818 952 1 951 952 1 817 951 1 950 951 1 816 950 1 949 950 1 815 949 1 948 949 1 814 948 1
		 947 948 1 813 947 1 946 947 1 812 946 1 945 946 1 811 945 1 944 945 1 932 944 1 943 933 1
		 942 945 1 941 946 1 940 947 1 939 948 1 938 949 1 937 950 1 936 951 1 935 952 1 934 953 1
		 742 954 1 976 977 1 742 976 1 955 707 1 790 956 1 928 957 1 931 960 1 717 960 1 959 651 1
		 635 959 1 637 638 1 724 723 1 660 679 1 919 961 1 962 921 1 920 963 1 919 920 0 923 920 1
		 922 923 1 923 921 0 964 923 1 922 968 1 967 923 1 965 921 0 919 924 1 924 969 0 970 919 1
		 925 971 1 920 972 0 973 966 1 805 512 1 841 840 1 861 860 1 371 372 1 391 392 1 955 977 1
		 706 978 1 705 979 1 28 980 1 225 981 1 226 982 1 491 983 1 227 984 1 116 118 1 7 9 1
		 596 598 1;
	setAttr -s 994 -ch 3954 ".fc";
	setAttr ".fc[0:499]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 2 3
		f 4 4 -4 5 6
		mu 0 4 4 0 3 5
		f 4 7 8 9 10
		mu 0 4 6 7 8 9
		f 4 -11 11 12 13
		mu 0 4 6 9 10 11
		f 4 14 15 16 17
		mu 0 4 12 13 14 15
		f 4 18 19 -15 20
		mu 0 4 16 17 13 12
		f 4 21 22 -19 23
		mu 0 4 18 19 17 16
		f 4 24 25 -22 26
		mu 0 4 20 21 19 18
		f 4 27 -2 28 29
		mu 0 4 22 2 1 20
		f 4 30 31 32 33
		mu 0 4 23 24 25 4
		f 4 34 35 -31 36
		mu 0 4 26 27 24 23
		f 4 37 38 -35 39
		mu 0 4 28 29 27 26
		f 4 40 41 -38 42
		mu 0 4 30 31 29 28
		f 4 43 44 -41 45
		mu 0 4 32 33 31 30
		f 4 46 47 48 -44
		mu 0 4 32 34 35 33
		f 4 49 -34 50 51
		mu 0 4 36 23 4 37
		f 4 -51 -7 52 53
		mu 0 4 37 4 5 38
		f 4 54 55 56 -52
		mu 0 4 37 39 40 36
		f 4 57 58 -55 -54
		mu 0 4 38 41 39 37
		f 4 -56 59 60 61
		mu 0 4 40 39 42 43
		f 4 -59 62 63 -60
		mu 0 4 39 41 44 42
		f 4 -61 64 65 66
		mu 0 4 43 42 45 46
		f 4 -64 67 68 -65
		mu 0 4 42 44 47 45
		f 4 -66 69 70 71
		mu 0 4 46 45 48 49
		f 4 -69 72 73 -70
		mu 0 4 45 47 50 48
		f 4 -71 74 75 76
		mu 0 4 49 48 51 52
		f 4 -74 77 78 -75
		mu 0 4 48 50 53 51
		f 4 -76 79 80 81
		mu 0 4 52 51 54 55
		f 4 -79 82 83 -80
		mu 0 4 51 53 56 54
		f 4 -84 84 85 86
		mu 0 4 54 56 57 58
		f 4 87 88 89 90
		mu 0 4 59 60 61 62
		f 4 91 92 93 -89
		mu 0 4 60 63 64 61
		f 4 -88 497 496 -97
		mu 0 4 60 59 65 66
		f 4 94 95 -92 96
		mu 0 4 66 67 63 60
		f 4 97 98 99 -24
		mu 0 4 16 68 69 18
		f 4 -27 -100 100 -30
		mu 0 4 20 18 69 22
		f 4 101 102 103 -40
		mu 0 4 26 70 71 28
		f 4 -102 -37 -50 104
		mu 0 4 70 26 23 36
		f 4 105 -103 106 107
		mu 0 4 72 71 70 73
		f 4 -107 -105 -57 108
		mu 0 4 73 70 36 40
		f 4 109 -108 110 111
		mu 0 4 74 72 73 75
		f 4 112 113 114 115
		mu 0 4 76 77 78 79
		f 4 116 117 118 -112
		mu 0 4 75 80 81 74
		f 4 -114 119 120 121
		mu 0 4 78 77 82 83
		f 4 -118 122 123 124
		mu 0 4 81 80 84 85
		f 4 -121 125 126 127
		mu 0 4 83 82 86 87
		f 4 128 129 -124 130
		mu 0 4 88 89 85 84
		f 4 -127 131 132 133
		mu 0 4 87 86 90 91
		f 4 134 135 -129 136
		mu 0 4 92 93 89 88
		f 4 -133 137 138 139
		mu 0 4 91 90 94 95
		f 4 -135 140 141 142
		mu 0 4 93 92 96 97
		f 4 -139 143 144 145
		mu 0 4 95 94 98 99
		f 4 -87 146 147 -81
		mu 0 4 54 58 100 55
		f 4 148 -85 149 150
		mu 0 4 101 57 56 102
		f 4 151 152 -53 153
		mu 0 4 103 104 38 5
		f 4 -58 -153 154 155
		mu 0 4 41 38 104 105
		f 4 156 -63 -156 157
		mu 0 4 106 44 41 105
		f 4 -157 158 159 -68
		mu 0 4 44 106 107 47
		f 4 -160 160 161 -73
		mu 0 4 47 107 108 50
		f 4 -162 162 163 -78
		mu 0 4 50 108 109 53
		f 4 -164 164 -150 -83
		mu 0 4 53 109 102 56
		f 4 165 -47 166 167
		mu 0 4 110 34 32 111
		f 4 168 -168 169 170
		mu 0 4 112 110 111 113
		f 4 171 172 173 -170
		mu 0 4 111 114 115 113
		f 4 174 -172 -167 -46
		mu 0 4 30 114 111 32
		f 4 175 176 -173 177
		mu 0 4 71 116 115 114
		f 4 -175 -43 -104 -178
		mu 0 4 114 30 28 71
		f 4 178 -155 179 180
		mu 0 4 117 105 104 118
		f 4 181 -143 182 183
		mu 0 4 112 93 97 119
		f 4 184 -136 -182 -171
		mu 0 4 113 89 93 112
		f 4 -185 -174 185 -130
		mu 0 4 89 113 115 85
		f 4 -125 -186 -177 186
		mu 0 4 81 85 115 116
		f 3 187 -119 -187
		mu 0 3 116 74 81
		f 4 188 189 190 -161
		mu 0 4 107 120 121 108
		f 4 191 192 -163 -191
		mu 0 4 121 122 109 108
		f 4 193 -192 194 195
		mu 0 4 123 122 121 124
		f 4 196 197 -196 198
		mu 0 4 125 126 123 124
		f 4 199 200 201 -197
		mu 0 4 125 127 128 126
		f 4 202 203 -165 -193
		mu 0 4 122 129 102 109
		f 4 204 -203 -194 205
		mu 0 4 131 129 122 123
		f 4 206 207 -206 -198
		mu 0 4 126 132 131 123
		f 4 208 209 210 -95
		mu 0 4 66 133 134 67
		f 4 -189 -159 211 212
		mu 0 4 120 107 106 135
		f 4 213 214 215 216
		mu 0 4 124 135 136 137
		f 4 -217 217 218 -199
		mu 0 4 124 137 138 125
		f 4 219 220 221 222
		mu 0 4 139 140 141 142
		f 4 223 224 225 -223
		mu 0 4 142 134 143 139
		f 4 499 -253 -439 498
		mu 0 4 144 160 8 266
		f 4 226 227 228 229
		mu 0 4 145 146 147 148
		f 4 230 231 -228 232
		mu 0 4 149 150 147 146
		f 4 233 -227 234 235
		mu 0 4 151 146 145 152
		f 4 236 -233 -234 237
		mu 0 4 153 149 146 151
		f 4 -236 238 239 240
		mu 0 4 151 152 154 155
		f 4 241 242 -238 -241
		mu 0 4 155 156 153 151
		f 4 -240 243 244 -242
		mu 0 4 155 154 157 156
		f 4 -245 245 246 247
		mu 0 4 156 157 158 62
		f 4 248 -91 -247 249
		mu 0 4 159 59 62 158
		f 4 -498 -249 -257 500
		mu 0 4 65 59 159 164
		f 4 250 251 -10 252
		mu 0 4 160 161 9 8
		f 4 253 254 255 256
		mu 0 4 159 162 163 164
		f 4 257 258 -254 -250
		mu 0 4 158 165 162 159
		f 4 259 260 -258 -246
		mu 0 4 157 166 165 158
		f 4 261 262 263 264
		mu 0 4 167 168 169 170
		f 4 265 266 267 268
		mu 0 4 171 172 168 173
		f 4 -266 269 270 271
		mu 0 4 172 171 174 175
		f 4 272 273 274 275
		mu 0 4 161 163 176 177
		f 4 -252 -276 276 -12
		mu 0 4 9 161 177 10
		f 4 277 278 -181 279
		mu 0 4 180 181 117 118
		f 4 280 281 282 -279
		mu 0 4 181 183 184 117
		f 4 283 284 285 286
		mu 0 4 185 186 187 183
		f 4 -286 287 288 -282
		mu 0 4 183 187 188 184
		f 4 289 290 291 -288
		mu 0 4 187 189 190 188
		f 4 -259 292 -271 293
		mu 0 4 162 165 175 174
		f 4 294 -93 295 296
		mu 0 4 191 64 63 192
		f 4 297 -211 -224 298
		mu 0 4 193 67 134 142
		f 4 299 -297 300 301
		mu 0 4 194 191 192 195
		f 4 302 -299 -222 303
		mu 0 4 196 193 142 141
		f 4 304 305 306 307
		mu 0 4 197 198 199 200
		f 4 308 309 -307 310
		mu 0 4 201 169 200 199
		f 4 -308 311 -272 312
		mu 0 4 197 200 172 175
		f 4 -312 -310 -263 -267
		mu 0 4 172 200 169 168
		f 4 313 314 315 316
		mu 0 4 202 198 203 154
		f 4 -244 -316 317 -260
		mu 0 4 157 154 203 166
		f 4 -317 -239 318 319
		mu 0 4 202 154 152 204
		f 4 320 -319 -235 321
		mu 0 4 205 204 152 145
		f 4 322 323 324 325
		mu 0 4 206 207 210 186
		f 4 326 -306 -314 327
		mu 0 4 211 199 198 202
		f 4 -318 -315 -305 328
		mu 0 4 166 203 198 197
		f 4 -309 329 330 -264
		mu 0 4 169 201 213 170
		f 4 -331 331 332 333
		mu 0 4 170 213 214 216
		f 4 334 335 336 337
		mu 0 4 215 217 218 219
		f 4 338 339 340 -330
		mu 0 4 201 220 221 213
		f 4 341 -339 -311 -327
		mu 0 4 211 220 201 199
		f 4 -329 -313 -293 -261
		mu 0 4 166 197 175 165
		f 4 342 343 -265 -334
		mu 0 4 216 222 167 170
		f 4 -216 344 -289 345
		mu 0 4 137 136 184 188
		f 4 346 347 348 -291
		mu 0 4 189 223 224 190
		f 4 349 350 351 -336
		mu 0 4 217 225 228 218
		f 4 352 353 354 -351
		mu 0 4 225 229 230 228
		f 4 355 356 -350 357
		mu 0 4 231 232 225 217
		f 4 358 359 360 361
		mu 0 4 232 233 234 235
		f 4 362 -359 -356 363
		mu 0 4 236 233 232 231
		f 4 364 365 -360 366
		mu 0 4 237 238 234 233
		f 4 367 -367 -363 368
		mu 0 4 239 237 233 236
		f 4 369 370 -365 371
		mu 0 4 205 240 238 237
		f 4 -372 -368 372 -321
		mu 0 4 205 237 239 204
		f 4 373 -218 -346 -292
		mu 0 4 190 138 137 188
		f 4 374 -340 375 -364
		mu 0 4 231 221 220 236
		f 4 376 -369 -376 -342
		mu 0 4 211 239 236 220
		f 4 -355 377 378 379
		mu 0 4 228 230 241 242
		f 4 380 -375 -358 -335
		mu 0 4 215 221 231 217
		f 4 -373 -377 -328 -320
		mu 0 4 204 239 211 202
		f 4 -379 381 382 383
		mu 0 4 242 241 1176 1177
		f 4 -352 -380 384 385
		mu 0 4 218 228 242 245
		f 4 -322 -230 386 -370
		mu 0 4 205 145 148 240
		f 4 387 -280 388 389
		mu 0 4 246 180 118 247
		f 4 -180 -152 390 -389
		mu 0 4 118 104 103 247
		f 4 391 -390 392 -14
		mu 0 4 11 246 247 6
		f 4 -391 393 -8 -393
		mu 0 4 247 103 7 6
		f 4 -283 -345 394 -179
		mu 0 4 117 184 136 105
		f 4 -151 -204 395 396
		mu 0 4 101 102 129 130
		f 4 397 398 -169 -184
		mu 0 4 119 248 110 112
		f 4 399 -256 -273 -251
		mu 0 4 160 164 163 161
		f 4 400 -374 -349 401
		mu 0 4 249 138 190 224
		f 4 -332 -341 -381 402
		mu 0 4 214 213 221 215
		f 4 -357 -362 403 -353
		mu 0 4 225 232 235 229
		f 4 -229 404 405 406
		mu 0 4 148 147 250 251
		f 4 407 408 -405 -232
		mu 0 4 150 252 250 147
		f 4 -361 409 410 411
		mu 0 4 235 234 253 254
		f 4 -410 -366 412 413
		mu 0 4 253 234 238 255
		f 4 414 415 -413 -371
		mu 0 4 240 256 255 238
		f 4 -407 416 -415 -387
		mu 0 4 148 251 256 240
		f 4 -243 -248 -90 417
		mu 0 4 153 156 62 61
		f 4 -94 418 -237 -418
		mu 0 4 61 64 149 153
		f 4 -231 -419 -295 419
		mu 0 4 150 149 64 191
		f 4 -412 420 421 -404
		mu 0 4 235 254 257 229
		f 4 422 -166 -399 423
		mu 0 4 258 34 110 248
		f 4 -188 -176 -106 -110
		mu 0 4 74 116 71 72
		f 4 -48 -423 424 425
		mu 0 4 35 34 258 259
		f 4 -33 426 427 -5
		mu 0 4 4 25 260 0
		f 4 -428 428 429 -1
		mu 0 4 0 260 261 1
		f 4 -430 430 -25 -29
		mu 0 4 1 261 21 20
		f 4 431 -225 -210 432
		mu 0 4 262 143 134 133
		f 4 -499 -443 -433 501
		mu 0 4 144 266 262 133
		f 4 433 434 -220 435
		mu 0 4 264 265 140 139
		f 4 -226 436 437 -436
		mu 0 4 139 143 68 264
		f 4 438 439 -28 440
		mu 0 4 266 8 2 22
		f 4 -99 -437 -432 441
		mu 0 4 69 68 143 262
		f 4 442 -441 -101 -442
		mu 0 4 262 266 22 69
		f 4 -18 443 -434 444
		mu 0 4 12 15 265 264
		f 4 -438 -98 -21 -445
		mu 0 4 264 68 16 12
		f 4 -9 445 -3 -440
		mu 0 4 8 7 3 2
		f 4 -6 -446 -394 -154
		mu 0 4 5 3 7 103
		f 4 446 -502 -209 -497
		mu 0 4 65 144 133 66
		f 4 -447 -501 -400 -500
		mu 0 4 144 65 164 160
		f 4 -255 -294 447 -274
		mu 0 4 163 162 174 176
		f 4 -298 448 -296 -96
		mu 0 4 67 193 192 63
		f 4 -303 449 -301 -449
		mu 0 4 193 196 195 192
		f 4 450 451 -287 -281
		mu 0 4 181 267 185 183
		f 4 452 453 -451 -278
		mu 0 4 180 268 267 181
		f 4 -453 -388 454 455
		mu 0 4 268 180 246 269
		f 4 -455 -392 -13 456
		mu 0 4 269 246 11 10
		f 4 457 458 459 -452
		mu 0 4 267 270 271 185
		f 4 -458 -454 460 461
		mu 0 4 270 267 268 272
		f 4 -461 -456 462 463
		mu 0 4 272 268 269 273
		f 4 -463 -457 -277 464
		mu 0 4 273 269 10 177
		f 4 465 -464 466 467
		mu 0 4 274 272 273 275
		f 4 -467 -465 -275 468
		mu 0 4 275 273 177 176
		f 4 469 -459 470 -344
		mu 0 4 222 271 270 167
		f 4 471 -269 472 -468
		mu 0 4 275 171 173 274
		f 4 -472 -469 -448 -270
		mu 0 4 171 275 176 174
		f 4 -408 -420 -300 473
		mu 0 4 252 150 191 194
		f 4 474 -354 -422 475
		mu 0 4 276 230 229 257
		f 4 476 -378 -475 477
		mu 0 4 277 241 230 276
		f 4 -477 478 479 -382
		mu 0 4 241 277 1174 1176
		f 5 -429 -427 -32 -36 480
		mu 0 5 261 260 25 24 27
		f 4 481 482 483 484
		mu 0 4 279 280 128 281
		f 4 -201 485 486 -484
		mu 0 4 128 127 282 281
		f 4 487 488 489 -486
		mu 0 4 127 249 283 282
		f 4 -489 -402 490 491
		mu 0 4 283 249 224 284
		f 4 -491 -348 492 493
		mu 0 4 284 224 223 285
		f 4 -385 -384 494 495
		mu 0 4 245 242 1177 1178
		f 4 -16 502 -426 503
		mu 0 4 14 13 35 259
		f 4 -20 504 -49 -503
		mu 0 4 13 17 33 35
		f 4 -23 505 -45 -505
		mu 0 4 17 19 31 33
		f 4 -26 506 -42 -506
		mu 0 4 19 21 29 31
		f 4 -431 -481 -39 -507
		mu 0 4 21 261 27 29
		f 4 -212 -158 -395 -215
		mu 0 4 135 106 105 136
		f 4 507 508 509 -109
		mu 0 4 40 287 288 73
		f 4 -510 510 511 -111
		mu 0 4 73 288 289 75
		f 4 512 513 -508 -62
		mu 0 4 43 290 287 40
		f 4 -512 514 515 -117
		mu 0 4 75 289 291 80
		f 4 516 517 -513 -67
		mu 0 4 46 292 290 43
		f 4 -516 518 519 -123
		mu 0 4 80 291 293 84
		f 4 520 521 -517 -72
		mu 0 4 49 294 292 46
		f 4 -520 522 523 -131
		mu 0 4 84 293 295 88
		f 4 524 525 -521 -77
		mu 0 4 52 296 294 49
		f 4 -524 526 527 -137
		mu 0 4 88 295 298 92
		f 4 528 529 -525 -82
		mu 0 4 55 300 296 52
		f 4 -528 530 531 -141
		mu 0 4 92 298 301 96
		f 4 532 533 -529 -148
		mu 0 4 100 302 300 55
		f 4 534 535 536 -509
		mu 0 4 287 303 304 288
		f 4 -537 537 538 -511
		mu 0 4 288 304 305 289
		f 4 539 540 -535 -514
		mu 0 4 290 306 303 287
		f 4 -539 541 542 -515
		mu 0 4 289 305 307 291
		f 4 543 544 -540 -518
		mu 0 4 292 308 306 290
		f 4 -543 545 546 -519
		mu 0 4 291 307 309 293
		f 4 547 548 -544 -522
		mu 0 4 294 310 308 292
		f 4 -547 549 550 -523
		mu 0 4 293 309 321 295
		f 4 551 552 -548 -526
		mu 0 4 296 322 310 294
		f 4 -551 553 554 -527
		mu 0 4 295 321 334 298
		f 4 555 556 -552 -530
		mu 0 4 300 335 322 296
		f 4 -555 557 558 -531
		mu 0 4 298 334 1154 301
		f 4 559 560 -556 -534
		mu 0 4 302 369 335 300
		f 4 561 -146 562 -558
		mu 0 4 1166 95 99 336
		f 4 563 -140 -562 -554
		mu 0 4 1165 91 95 1166
		f 4 564 -134 -564 -550
		mu 0 4 1164 87 91 1165
		f 4 565 -128 -565 -546
		mu 0 4 1163 83 87 1164
		f 4 566 -122 -566 -542
		mu 0 4 1162 78 83 1163
		f 4 567 -115 -567 -538
		mu 0 4 1161 79 78 1162
		f 4 568 -116 -568 -536
		mu 0 4 1160 76 79 1161
		f 4 569 -113 -569 -541
		mu 0 4 1159 77 76 1160
		f 4 570 -120 -570 -545
		mu 0 4 1158 82 77 1159
		f 4 571 -126 -571 -549
		mu 0 4 1157 86 82 1158
		f 4 572 -132 -572 -553
		mu 0 4 1156 90 86 1157
		f 4 573 -138 -573 -557
		mu 0 4 1155 94 90 1156
		f 4 574 -144 -574 -561
		mu 0 4 1142 98 94 1155
		f 4 575 -487 576 577
		mu 0 4 450 281 282 451
		f 4 578 -492 579 580
		mu 0 4 452 283 284 453
		f 4 581 582 -580 -494
		mu 0 4 285 454 453 284
		f 4 583 584 585 586
		mu 0 4 243 455 456 244
		f 4 -586 587 588 589
		mu 0 4 244 456 457 286
		f 4 -577 -490 -579 590
		mu 0 4 451 282 283 452
		f 4 591 592 -582 593
		mu 0 4 458 459 454 285
		f 4 594 595 -592 596
		mu 0 4 460 461 459 458
		f 4 597 598 -595 599
		mu 0 4 462 463 461 460
		f 4 600 -485 -576 601
		mu 0 4 464 279 281 450
		f 4 602 603 -584 604
		mu 0 4 278 466 455 243
		f 4 605 606 607 608
		mu 0 4 467 468 469 470
		f 4 -606 609 610 611
		mu 0 4 468 467 484 497
		f 4 612 613 614 615
		mu 0 4 1134 516 517 1135
		f 4 616 617 -613 618
		mu 0 4 1133 520 516 1134
		f 4 619 620 621 622
		mu 0 4 312 314 860 313
		f 4 623 624 625 -581
		mu 0 4 315 318 317 316
		f 4 626 627 -622 -612
		mu 0 4 311 319 313 860
		f 4 628 629 -624 -583
		mu 0 4 320 323 318 315
		f 4 630 631 -629 -593
		mu 0 4 324 325 323 320
		f 4 632 633 -631 -596
		mu 0 4 326 327 325 324
		f 4 634 635 -633 636
		mu 0 4 328 329 327 326
		f 4 637 638 639 640
		mu 0 4 330 333 332 331
		f 4 -626 641 -627 642
		mu 0 4 316 317 319 311
		f 4 643 -591 -643 -611
		mu 0 4 484 451 452 497
		f 4 644 -578 -644 645
		mu 0 4 521 450 451 484
		f 4 646 -602 -645 647
		mu 0 4 525 464 450 521
		f 4 648 649 650 -604
		mu 0 4 466 526 527 455
		f 4 -651 651 652 -585
		mu 0 4 455 527 528 456
		f 4 653 654 655 656
		mu 0 4 496 495 544 543
		f 4 657 -657 658 659
		mu 0 4 486 496 543 554
		f 4 660 -660 661 662
		mu 0 4 487 486 554 553
		f 4 663 -663 664 665
		mu 0 4 488 487 553 552
		f 4 666 -666 667 668
		mu 0 4 489 488 552 551
		f 4 669 -669 670 671
		mu 0 4 490 489 551 550
		f 4 672 -672 673 674
		mu 0 4 491 490 550 549
		f 4 675 -675 676 677
		mu 0 4 492 491 549 548
		f 4 678 -678 679 680
		mu 0 4 493 1137 547 546
		f 4 681 -681 682 683
		mu 0 4 494 493 546 545
		f 4 684 -684 685 -655
		mu 0 4 495 494 545 544
		f 3 686 687 688
		mu 0 3 465 522 523
		f 4 689 690 691 -618
		mu 0 4 520 529 465 516
		f 4 -639 -688 -620 692
		mu 0 4 332 333 314 312
		f 4 693 694 695 -635
		mu 0 4 328 566 498 329
		f 4 696 697 698 -285
		mu 0 4 178 179 182 208
		f 4 -699 699 700 -290
		mu 0 4 208 182 209 212
		f 4 701 702 703 704
		mu 0 4 226 227 263 297
		f 4 705 706 -702 707
		mu 0 4 299 337 227 226
		f 4 -704 708 -697 -325
		mu 0 4 297 263 179 178
		f 4 709 -347 -701 710
		mu 0 4 338 339 1140 1138
		f 4 711 712 713 -597
		mu 0 4 340 341 1084 342
		f 4 714 715 -706 716
		mu 0 4 344 343 337 299
		f 4 717 718 719 720
		mu 0 4 345 346 347 348
		f 4 721 722 -718 723
		mu 0 4 349 350 346 345
		f 4 724 725 -722 726
		mu 0 4 351 352 350 349
		f 4 727 728 -725 729
		mu 0 4 353 354 352 351
		f 4 730 731 -728 732
		mu 0 4 355 356 354 353
		f 4 733 734 -731 735
		mu 0 4 1081 1077 356 355
		f 4 736 737 -734 738
		mu 0 4 357 358 1077 1081
		f 4 739 740 741 742
		mu 0 4 359 360 361 1079
		f 4 -720 743 -742 744
		mu 0 4 348 347 362 1139
		f 4 745 746 747 -719
		mu 0 4 346 363 364 347
		f 4 748 749 -746 -723
		mu 0 4 350 365 363 346
		f 4 750 751 -749 -726
		mu 0 4 352 366 365 350
		f 4 752 753 -751 -729
		mu 0 4 354 367 366 352
		f 4 754 755 -753 -732
		mu 0 4 356 368 367 354
		f 4 756 757 -755 -735
		mu 0 4 1077 433 368 356
		f 4 758 759 -757 -738
		mu 0 4 358 434 433 1077
		f 4 760 761 -759 762
		mu 0 4 359 1078 434 358
		f 4 763 764 -761 -743
		mu 0 4 1079 1080 1078 359
		f 4 -748 765 -764 -744
		mu 0 4 347 364 435 362
		f 4 766 -721 767 -698
		mu 0 4 179 345 348 182
		f 4 768 -724 -767 -709
		mu 0 4 263 349 345 179
		f 4 769 -727 -769 -703
		mu 0 4 227 351 349 263
		f 4 770 -730 -770 -707
		mu 0 4 337 353 351 227
		f 4 771 -733 -771 -716
		mu 0 4 343 355 353 337
		f 4 772 -736 -772 773
		mu 0 4 1084 1081 355 343
		f 4 774 -739 -773 -713
		mu 0 4 341 357 1081 1084
		f 4 775 -711 776 -741
		mu 0 4 360 338 1138 361
		f 4 -768 -745 -777 -700
		mu 0 4 182 348 1139 209
		f 3 -594 -493 777
		mu 0 3 458 285 223
		f 4 -599 778 779 -637
		mu 0 4 461 463 530 532
		f 4 -588 -653 780 781
		mu 0 4 457 456 528 533
		f 4 -695 782 -615 -641
		mu 0 4 498 566 485 499
		f 4 783 784 785 786
		mu 0 4 370 373 372 371
		f 4 -786 787 788 789
		mu 0 4 371 372 500 501
		f 4 790 791 792 793
		mu 0 4 375 378 377 376
		f 4 794 -676 795 796
		mu 0 4 379 381 380 510
		f 4 797 798 799 -685
		mu 0 4 382 385 384 383
		f 4 800 801 -796 -679
		mu 0 4 386 387 510 380
		f 4 802 803 804 805
		mu 0 4 388 391 390 389
		f 4 -800 806 -801 -682
		mu 0 4 383 384 387 386
		f 4 807 808 809 -661
		mu 0 4 392 395 394 393
		f 4 810 811 812 813
		mu 0 4 507 503 502 397
		f 4 -810 814 815 -658
		mu 0 4 393 394 400 399
		f 4 816 817 -811 818
		mu 0 4 401 402 398 396
		f 4 819 820 -808 -664
		mu 0 4 403 404 395 392
		f 4 -813 821 822 823
		mu 0 4 397 502 406 405
		f 4 -816 824 825 -654
		mu 0 4 399 400 407 382
		f 3 826 827 -798
		mu 0 3 382 408 385
		f 4 828 829 -817 830
		mu 0 4 409 410 402 401
		f 6 831 832 -667 -670 -673 -795
		mu 0 6 379 413 403 412 411 381
		f 4 833 -787 834 -809
		mu 0 4 395 370 371 394
		f 4 835 836 -834 -821
		mu 0 4 404 414 370 395
		f 4 837 838 839 -836
		mu 0 4 404 416 415 414
		f 4 840 841 842 843
		mu 0 4 417 420 419 418
		f 4 844 845 -841 846
		mu 0 4 506 509 420 417
		f 4 847 848 -845 849
		mu 0 4 505 504 509 506
		f 4 850 851 -848 852
		mu 0 4 424 425 423 422
		f 4 853 854 855 856
		mu 0 4 426 428 427 407
		f 4 857 858 -857 -825
		mu 0 4 400 501 426 407
		f 4 -835 -790 -858 -815
		mu 0 4 394 371 501 400
		f 4 -833 859 -838 -820
		mu 0 4 403 413 416 404
		f 4 860 -844 861 -822
		mu 0 4 502 417 418 406
		f 4 862 -847 -861 -812
		mu 0 4 503 506 417 502
		f 4 863 -850 -863 -818
		mu 0 4 402 422 421 398
		f 4 864 -853 -864 -830
		mu 0 4 410 424 422 402
		f 4 -856 865 -827 -826
		mu 0 4 407 427 408 382
		f 4 866 -794 867 -837
		mu 0 4 414 375 376 370
		f 4 -793 868 -784 -868
		mu 0 4 376 377 373 370
		f 4 869 870 871 -842
		mu 0 4 420 430 429 419
		f 4 -840 872 -791 -867
		mu 0 4 414 415 378 375
		f 4 873 -806 874 -859
		mu 0 4 501 388 389 426
		f 4 -805 875 -854 -875
		mu 0 4 389 390 428 426
		f 4 876 877 878 -852
		mu 0 4 425 432 431 423
		f 4 -789 879 -803 -874
		mu 0 4 501 374 391 388
		f 4 880 -814 881 -802
		mu 0 4 508 507 397 510
		f 4 882 -819 -881 -807
		mu 0 4 384 401 396 387
		f 4 883 -831 -883 -799
		mu 0 4 385 409 401 384
		f 4 884 -829 -884 -828
		mu 0 4 408 410 409 385
		f 4 885 -865 -885 -866
		mu 0 4 427 424 410 408
		f 4 886 -851 -886 -855
		mu 0 4 428 425 424 427
		f 4 887 -877 -887 -876
		mu 0 4 390 432 425 428
		f 4 888 -878 -888 -804
		mu 0 4 391 431 432 390
		f 4 -879 -889 -880 889
		mu 0 4 423 431 391 374
		f 4 890 -849 -890 -788
		mu 0 4 372 509 504 500
		f 4 891 -846 -891 -785
		mu 0 4 373 420 509 372
		f 4 892 -870 -892 -869
		mu 0 4 377 430 420 373
		f 4 893 -871 -893 -792
		mu 0 4 378 429 430 377
		f 4 -872 -894 -873 894
		mu 0 4 419 429 378 415
		f 4 -843 -895 -839 895
		mu 0 4 418 419 415 416
		f 4 -862 -896 -860 896
		mu 0 4 406 418 416 413
		f 4 -823 -897 -832 897
		mu 0 4 405 406 413 379
		f 4 -898 -797 -882 -824
		mu 0 4 405 379 510 397
		f 4 -747 898 899 -766
		mu 0 4 436 437 438 440
		f 4 900 -752 901 902
		mu 0 4 441 1112 1126 1128
		f 4 -901 903 -899 -750
		mu 0 4 1112 441 438 437
		f 4 904 905 906 907
		mu 0 4 439 442 443 444
		f 5 -902 -754 -756 908 909
		mu 0 5 445 471 472 473 474
		f 4 -760 910 911 912
		mu 0 4 1071 1082 1085 1111
		f 4 913 914 915 916
		mu 0 4 446 447 448 449
		f 4 917 -909 -758 -913
		mu 0 4 1111 474 473 1071
		f 4 918 919 920 921
		mu 0 4 1086 1087 1088 1089
		f 5 922 923 -762 -765 924
		mu 0 5 1113 1114 1082 1115 1116
		f 3 -924 925 -911
		mu 0 3 1082 1114 1085
		f 4 -692 -689 -638 -614
		mu 0 4 516 465 523 517
		f 4 -781 926 -783 927
		mu 0 4 533 528 518 534
		f 4 928 -616 -927 -652
		mu 0 4 527 515 518 528
		f 4 929 -619 -929 -650
		mu 0 4 526 519 515 527
		f 4 -483 930 -207 -202
		mu 0 4 128 280 132 126
		f 4 -488 -200 -219 -401
		mu 0 4 249 127 125 138
		f 4 -708 931 932 933
		mu 0 4 219 535 536 531
		f 4 934 -333 935 -933
		mu 0 4 536 216 214 531
		f 4 936 937 -607 -621
		mu 0 4 522 524 583 584
		f 4 -691 938 -937 -687
		mu 0 4 465 529 524 522
		f 4 939 940 -628 941
		mu 0 4 556 555 313 319
		f 4 942 -623 -941 943
		mu 0 4 537 312 313 555
		f 4 944 -693 -943 945
		mu 0 4 538 332 312 537
		f 4 946 -640 -945 947
		mu 0 4 540 331 332 538
		f 4 948 -696 -947 949
		mu 0 4 541 329 498 539
		f 4 950 -636 -949 951
		mu 0 4 542 327 329 541
		f 4 952 -634 -951 953
		mu 0 4 560 325 327 542
		f 4 954 -632 -953 955
		mu 0 4 559 323 325 560
		f 4 956 -630 -955 957
		mu 0 4 558 318 323 559
		f 4 958 -625 -957 959
		mu 0 4 557 317 318 558
		f 4 -942 -642 -959 960
		mu 0 4 556 319 317 557
		f 4 -656 961 -940 962
		mu 0 4 543 544 555 556
		f 4 -963 -961 963 -659
		mu 0 4 543 556 557 554
		f 4 -964 -960 964 -662
		mu 0 4 554 557 558 553
		f 4 -965 -958 965 -665
		mu 0 4 553 558 559 552
		f 4 -966 -956 966 -668
		mu 0 4 552 559 560 551
		f 4 -967 -954 967 -671
		mu 0 4 551 560 542 550
		f 4 -968 -952 968 -674
		mu 0 4 550 542 541 549
		f 4 -969 -950 969 -677
		mu 0 4 549 541 539 548
		f 4 -970 -948 970 -680
		mu 0 4 547 540 538 546
		f 4 -971 -946 971 -683
		mu 0 4 546 538 537 545
		f 4 -972 -944 -962 -686
		mu 0 4 545 537 555 544
		f 4 972 -774 -715 973
		mu 0 4 1180 1084 343 344
		f 4 -386 974 -717 -337
		mu 0 4 218 245 561 219
		f 4 -974 -975 -496 975
		mu 0 4 1179 561 245 1178
		f 4 976 -598 977 -589
		mu 0 4 457 463 462 286
		f 4 -779 -977 -782 978
		mu 0 4 530 463 457 533
		f 4 -780 -979 -928 -694
		mu 0 4 532 530 533 534
		f 4 -324 979 -932 -705
		mu 0 4 210 207 536 535
		f 4 980 -343 -935 -980
		mu 0 4 207 222 216 536
		f 3 -326 -284 981
		mu 0 3 206 186 185
		f 4 982 -470 -981 -323
		mu 0 4 206 271 222 207
		f 3 -268 -262 983
		mu 0 3 173 168 167
		f 4 -473 -984 -471 984
		mu 0 4 274 173 167 270
		f 3 -985 -462 -466
		mu 0 3 274 270 272
		f 3 -983 -982 -460
		mu 0 3 271 206 185
		f 3 -936 -403 985
		mu 0 3 531 214 215
		f 3 -986 -338 -934
		mu 0 3 531 215 219
		f 4 986 -917 987 -904
		mu 0 4 441 1129 1130 438
		f 4 988 -988 -916 989
		mu 0 4 1085 1117 1118 448
		f 3 990 -912 991
		mu 0 3 1119 1111 1085
		f 4 992 -914 -987 993
		mu 0 4 1119 447 1120 1121
		f 4 -991 994 -920 995
		mu 0 4 1111 1119 1088 1087
		f 4 996 -921 -995 -994
		mu 0 4 1121 1089 1088 1119
		f 4 997 -908 998 999
		mu 0 4 438 1127 1125 1124
		f 4 -907 1000 -923 -999
		mu 0 4 444 443 1114 1113
		f 4 -1001 -906 1001 -926
		mu 0 4 1114 443 442 1085
		f 4 -1002 -905 -998 -989
		mu 0 4 1085 442 439 1117
		f 3 -1000 -925 -900
		mu 0 3 438 1124 440
		f 5 1002 -910 -918 -996 -919
		mu 0 5 1086 445 474 1111 1087
		f 4 -992 -990 -915 -993
		mu 0 4 1119 1085 448 447
		f 4 -922 -997 -903 -1003
		mu 0 4 1123 1122 441 1128
		f 4 -646 -610 -609 1003
		mu 0 4 521 484 467 470
		f 3 -648 -1004 1004
		mu 0 3 525 521 470
		f 4 1005 1006 1007 1008
		mu 0 4 562 563 564 565
		f 4 1009 1010 -1006 1011
		mu 0 4 567 568 563 562
		f 4 1012 1013 1014 1015
		mu 0 4 585 586 587 588
		f 4 1016 1017 1018 -1013
		mu 0 4 585 589 590 586
		f 4 1019 -17 1020 1021
		mu 0 4 591 15 14 592
		f 4 1022 -1022 1023 1024
		mu 0 4 593 591 592 594
		f 4 1025 -1025 1026 1027
		mu 0 4 595 593 594 596
		f 4 1028 -1028 1029 1030
		mu 0 4 597 595 596 598
		f 4 1031 1032 -1008 1033
		mu 0 4 599 597 565 564
		f 4 1034 1035 1036 1037
		mu 0 4 600 567 601 602
		f 4 1038 -1038 1039 1040
		mu 0 4 603 600 602 604
		f 4 1041 -1041 1042 1043
		mu 0 4 605 603 604 606
		f 4 1044 -1044 1045 1046
		mu 0 4 607 605 606 608
		f 4 1047 -1047 1048 1049
		mu 0 4 609 607 608 610;
	setAttr ".fc[500:993]"
		f 4 -1050 1050 1051 1052
		mu 0 4 609 610 611 612
		f 4 1053 1054 -1035 1055
		mu 0 4 613 614 567 600
		f 4 1056 1057 -1010 -1055
		mu 0 4 614 615 568 567
		f 4 -1054 1058 1059 1060
		mu 0 4 614 613 616 617
		f 4 -1057 -1061 1061 1062
		mu 0 4 615 614 617 618
		f 4 1063 1064 1065 -1060
		mu 0 4 616 619 620 617
		f 4 -1066 1066 1067 -1062
		mu 0 4 617 620 621 618
		f 4 1068 1069 1070 -1065
		mu 0 4 619 622 623 620
		f 4 -1071 1071 1072 -1067
		mu 0 4 620 623 624 621
		f 4 1073 1074 1075 -1070
		mu 0 4 622 625 626 623
		f 4 -1076 1076 1077 -1072
		mu 0 4 623 626 627 624
		f 4 1078 1079 1080 -1075
		mu 0 4 625 628 629 626
		f 4 -1081 1081 1082 -1077
		mu 0 4 626 629 630 627
		f 4 1083 1084 1085 -1080
		mu 0 4 628 631 632 629
		f 4 -1086 1086 1087 -1082
		mu 0 4 629 632 633 630
		f 4 1088 -86 1089 -1087
		mu 0 4 632 58 57 633
		f 4 1090 1091 1092 1093
		mu 0 4 634 635 636 637
		f 4 -1093 1094 1095 1096
		mu 0 4 637 636 638 639
		f 4 -1098 1471 1472 -1094
		mu 0 4 637 641 640 634
		f 4 1097 -1097 1098 1099
		mu 0 4 641 637 639 642
		f 4 -1026 1100 1101 1102
		mu 0 4 593 595 643 644
		f 4 -1032 1103 -1101 -1029
		mu 0 4 597 599 643 595
		f 4 -1042 1104 1105 1106
		mu 0 4 603 605 645 646
		f 4 1107 -1056 -1039 -1107
		mu 0 4 646 613 600 603
		f 4 1108 1109 -1106 1110
		mu 0 4 647 648 646 645
		f 4 1111 -1059 -1108 -1110
		mu 0 4 648 616 613 646
		f 4 1112 1113 -1109 1114
		mu 0 4 649 650 648 647
		f 4 1115 1116 1117 1118
		mu 0 4 651 652 653 654
		f 4 -1113 1119 1120 1121
		mu 0 4 650 649 655 656
		f 4 1122 1123 1124 -1118
		mu 0 4 653 657 658 654
		f 4 1125 1126 1127 -1121
		mu 0 4 655 659 660 656
		f 4 1128 1129 1130 -1124
		mu 0 4 657 661 662 658
		f 4 1131 -1127 1132 1133
		mu 0 4 663 660 659 664
		f 4 1134 1135 1136 -1130
		mu 0 4 661 665 666 662
		f 4 1137 -1134 1138 1139
		mu 0 4 667 663 664 668
		f 4 1140 1141 1142 -1136
		mu 0 4 665 669 670 666
		f 4 1143 -142 1144 -1140
		mu 0 4 668 97 96 667
		f 4 1145 -145 1146 -1142
		mu 0 4 669 99 98 670
		f 4 -1085 1147 -147 -1089
		mu 0 4 632 631 100 58
		f 4 1148 1149 -1090 -149
		mu 0 4 101 671 633 57
		f 4 1150 -1058 1151 1152
		mu 0 4 672 568 615 673
		f 4 1153 1154 -1152 -1063
		mu 0 4 618 674 673 615
		f 4 1155 -1154 -1068 1156
		mu 0 4 675 674 618 621
		f 4 -1073 1157 1158 -1157
		mu 0 4 621 624 676 675
		f 4 -1078 1159 1160 -1158
		mu 0 4 624 627 677 676
		f 4 -1083 1161 1162 -1160
		mu 0 4 627 630 678 677
		f 4 -1088 -1150 1163 -1162
		mu 0 4 630 633 671 678
		f 4 1164 1165 -1053 1166
		mu 0 4 679 680 609 612
		f 4 1167 1168 -1165 1169
		mu 0 4 681 682 680 679
		f 4 -1169 1170 1171 1172
		mu 0 4 680 682 683 684
		f 4 -1048 -1166 -1173 1173
		mu 0 4 607 609 680 684
		f 4 1174 -1172 1175 1176
		mu 0 4 645 684 683 685
		f 4 -1175 -1105 -1045 -1174
		mu 0 4 684 645 605 607
		f 4 1177 1178 -1155 1179
		mu 0 4 686 687 673 674
		f 4 1180 -183 -1144 1181
		mu 0 4 681 119 97 668
		f 4 -1168 -1182 -1139 1182
		mu 0 4 682 681 668 664
		f 4 -1133 1183 -1171 -1183
		mu 0 4 664 659 683 682
		f 4 1184 -1176 -1184 -1126
		mu 0 4 655 685 683 659
		f 3 -1185 -1120 1185
		mu 0 3 685 655 649
		f 4 -1161 1186 1187 1188
		mu 0 4 676 677 688 689
		f 4 -1187 -1163 1189 1190
		mu 0 4 688 677 678 690
		f 4 1191 1192 -1191 1193
		mu 0 4 691 692 688 690
		f 4 1194 -1192 1195 1196
		mu 0 4 693 692 691 694
		f 4 -1197 1197 1198 1199
		mu 0 4 693 694 695 696
		f 4 -1190 -1164 1200 1201
		mu 0 4 690 678 671 697
		f 4 1202 1203 -1194 -1202
		mu 0 4 697 131 691 690
		f 4 -1196 -1204 -208 1204
		mu 0 4 694 691 131 132
		f 4 -1100 1205 1206 1207
		mu 0 4 641 642 698 699
		f 4 1208 1209 -1159 -1189
		mu 0 4 689 700 675 676
		f 4 1210 1211 1212 1213
		mu 0 4 692 701 702 700
		f 4 -1195 1214 1215 -1211
		mu 0 4 692 693 703 701
		f 4 -1213 1216 -1156 -1210
		mu 0 4 700 702 674 675
		f 4 1217 1218 -221 1219
		mu 0 4 704 705 141 140
		f 4 -1218 1220 1221 1222
		mu 0 4 705 704 706 698
		f 4 1473 -1423 -1248 1474
		mu 0 4 707 804 587 723
		f 4 1223 1224 1225 1226
		mu 0 4 708 709 710 711
		f 4 1227 -1226 1228 1229
		mu 0 4 712 711 710 713
		f 4 1230 1231 -1227 1232
		mu 0 4 714 715 708 711
		f 4 1233 -1233 -1228 1234
		mu 0 4 716 714 711 712
		f 4 1235 1236 1237 -1231
		mu 0 4 714 717 718 715
		f 4 -1236 -1234 1238 1239
		mu 0 4 717 714 716 719
		f 4 -1240 1240 1241 -1237
		mu 0 4 717 719 720 718
		f 4 1242 1243 1244 -1241
		mu 0 4 719 635 721 720
		f 4 1245 -1244 -1091 1246
		mu 0 4 722 721 635 634
		f 4 1475 -1251 -1247 -1473
		mu 0 4 640 725 722 634
		f 4 1247 -1014 1248 1249
		mu 0 4 723 587 586 724
		f 4 1250 1251 1252 1253
		mu 0 4 722 725 726 727
		f 4 -1246 -1254 1254 1255
		mu 0 4 721 722 727 728
		f 4 -1245 -1256 1256 1257
		mu 0 4 720 721 728 729
		f 4 1258 1259 1260 1261
		mu 0 4 730 731 732 733
		f 4 1262 1263 1264 1265
		mu 0 4 734 735 733 736
		f 4 1266 1267 1268 -1266
		mu 0 4 736 737 738 734
		f 4 1269 1270 1271 1272
		mu 0 4 724 739 740 726
		f 4 -1019 1273 -1270 -1249
		mu 0 4 586 590 739 724
		f 4 1274 -1178 1275 1276
		mu 0 4 741 687 686 742
		f 4 -1276 1277 1278 1279
		mu 0 4 742 686 743 744
		f 4 1280 1281 1282 1283
		mu 0 4 745 744 746 747
		f 4 -1279 1284 1285 -1282
		mu 0 4 744 743 748 746
		f 4 -1286 1286 1287 1288
		mu 0 4 746 748 749 750
		f 4 1289 -1268 1290 -1255
		mu 0 4 727 738 737 728
		f 4 1291 1292 -1096 1293
		mu 0 4 751 752 639 638
		f 4 1294 -1223 -1206 1295
		mu 0 4 753 705 698 642
		f 4 -302 1296 -1292 1297
		mu 0 4 194 195 752 751
		f 4 -304 -1219 -1295 1298
		mu 0 4 196 141 705 753
		f 4 1299 1300 1301 1302
		mu 0 4 754 755 758 759
		f 4 1303 -1301 1304 1305
		mu 0 4 761 758 755 732
		f 4 1306 -1267 1307 -1300
		mu 0 4 754 737 736 755
		f 4 -1265 -1261 -1305 -1308
		mu 0 4 736 733 732 755
		f 4 1308 1309 1310 1311
		mu 0 4 762 718 763 759
		f 4 -1258 1312 -1310 -1242
		mu 0 4 720 729 763 718
		f 4 1313 1314 -1238 -1309
		mu 0 4 762 764 715 718
		f 4 1315 -1232 -1315 1316
		mu 0 4 765 708 715 764
		f 4 1317 1318 1319 1320
		mu 0 4 766 747 767 768
		f 4 1321 -1312 -1302 1322
		mu 0 4 769 762 759 758
		f 4 1323 -1303 -1311 -1313
		mu 0 4 729 754 759 763
		f 4 -1260 1324 1325 -1306
		mu 0 4 732 731 770 761
		f 4 1326 1327 1328 -1325
		mu 0 4 731 771 772 770
		f 4 1329 1330 1331 1332
		mu 0 4 773 775 776 777
		f 4 -1326 1333 1334 1335
		mu 0 4 761 770 778 780
		f 4 -1323 -1304 -1336 1336
		mu 0 4 769 758 761 780
		f 4 -1257 -1291 -1307 -1324
		mu 0 4 729 728 737 754
		f 4 -1327 -1259 1337 1338
		mu 0 4 771 731 730 781
		f 4 1339 -1285 1340 -1212
		mu 0 4 701 748 743 702
		f 4 -1288 1341 1342 1343
		mu 0 4 750 749 782 783
		f 4 -1332 1344 1345 1346
		mu 0 4 777 776 785 786
		f 4 -1346 1347 1348 1349
		mu 0 4 786 785 985 988
		f 4 1350 -1347 1351 1352
		mu 0 4 787 777 786 788
		f 4 1353 1354 1355 1356
		mu 0 4 788 1069 1066 789
		f 4 1357 -1353 -1357 1358
		mu 0 4 790 787 788 789
		f 4 1359 -1356 1360 1361
		mu 0 4 791 789 1066 1065
		f 4 1362 -1359 -1360 1363
		mu 0 4 792 790 789 791
		f 4 1364 -1362 1365 1366
		mu 0 4 765 791 1065 793
		f 4 -1317 1367 -1364 -1365
		mu 0 4 765 764 792 791
		f 4 -1287 -1340 -1216 1368
		mu 0 4 749 748 701 703
		f 4 -1358 1369 -1335 1370
		mu 0 4 787 790 780 778
		f 4 -1337 -1370 -1363 1371
		mu 0 4 769 780 790 792
		f 4 1372 1373 1374 -1348
		mu 0 4 785 794 982 985
		f 4 -1333 -1351 -1371 1375
		mu 0 4 773 777 787 778
		f 4 -1314 -1322 -1372 -1368
		mu 0 4 764 762 769 792
		f 4 1376 1377 1378 -1374
		mu 0 4 794 1172 1173 982
		f 4 1379 1380 -1373 -1345
		mu 0 4 776 796 794 785
		f 4 -1367 1381 -1224 -1316
		mu 0 4 765 793 709 708
		f 4 1382 1383 -1275 1384
		mu 0 4 797 798 687 741
		f 4 -1384 1385 -1153 -1179
		mu 0 4 687 798 672 673
		f 4 -1017 1386 -1383 1387
		mu 0 4 589 585 798 797
		f 4 -1387 -1016 1388 -1386
		mu 0 4 798 585 588 672
		f 4 -1180 -1217 -1341 -1278
		mu 0 4 686 674 702 743
		f 4 -397 1389 -1201 -1149
		mu 0 4 101 130 697 671
		f 4 -1181 -1170 1390 -398
		mu 0 4 119 681 679 248
		f 4 -1250 -1273 -1252 1391
		mu 0 4 723 724 726 725
		f 4 1392 -1342 -1369 1393
		mu 0 4 799 782 749 703
		f 4 1394 -1376 -1334 -1329
		mu 0 4 772 773 778 770
		f 4 -1350 1395 -1354 -1352
		mu 0 4 786 988 1069 788
		f 4 1396 -406 1397 -1225
		mu 0 4 709 251 250 710
		f 4 -1229 -1398 -409 1398
		mu 0 4 713 710 250 252
		f 4 1399 -411 1400 -1355
		mu 0 4 1069 987 1068 1066
		f 4 -414 1401 -1361 -1401
		mu 0 4 1068 1067 1065 1066
		f 4 -1366 -1402 -416 1402
		mu 0 4 793 1065 1067 256
		f 4 -1382 -1403 -417 -1397
		mu 0 4 709 793 256 251
		f 4 1403 -1092 -1243 -1239
		mu 0 4 716 636 635 719
		f 4 -1404 -1235 1404 -1095
		mu 0 4 636 716 712 638
		f 4 1405 -1294 -1405 -1230
		mu 0 4 713 751 638 712
		f 4 -1396 1406 -421 -1400
		mu 0 4 1069 988 986 987
		f 4 -424 -1391 -1167 1407
		mu 0 4 258 248 679 612
		f 4 -1115 -1111 -1177 -1186
		mu 0 4 649 647 645 685
		f 4 1408 -425 -1408 -1052
		mu 0 4 611 259 258 612
		f 4 -1012 1409 1410 -1036
		mu 0 4 567 562 800 601
		f 4 -1009 1411 1412 -1410
		mu 0 4 562 565 801 800
		f 4 -1033 -1031 1413 -1412
		mu 0 4 565 597 598 801
		f 4 1414 -1207 -1222 1415
		mu 0 4 802 699 698 706
		f 4 1476 -1415 -1425 -1474
		mu 0 4 707 699 802 804
		f 4 1416 -1220 -435 1417
		mu 0 4 803 704 140 265
		f 4 -1417 1418 1419 -1221
		mu 0 4 704 803 644 706
		f 4 1420 -1034 1421 1422
		mu 0 4 804 599 564 587
		f 4 1423 -1416 -1420 -1102
		mu 0 4 643 802 706 644
		f 4 -1424 -1104 -1421 1424
		mu 0 4 802 643 599 804
		f 4 1425 -1418 -444 -1020
		mu 0 4 591 803 265 15
		f 4 -1426 -1023 -1103 -1419
		mu 0 4 803 591 593 644
		f 4 -1422 -1007 1426 -1015
		mu 0 4 587 564 563 588
		f 4 -1151 -1389 -1427 -1011
		mu 0 4 568 672 588 563
		f 4 1427 -1472 -1208 -1477
		mu 0 4 707 640 641 699
		f 4 -1428 -1475 -1392 -1476
		mu 0 4 640 707 723 725
		f 4 -1272 1428 -1290 -1253
		mu 0 4 726 740 738 727
		f 4 -1099 -1293 1429 -1296
		mu 0 4 642 639 752 753
		f 4 -1430 -1297 -450 -1299
		mu 0 4 753 752 195 196
		f 4 -1280 -1281 1430 1431
		mu 0 4 742 744 745 805
		f 4 -1277 -1432 1432 1433
		mu 0 4 741 742 805 806
		f 4 1434 1435 -1385 -1434
		mu 0 4 806 807 797 741
		f 4 1436 -1018 -1388 -1436
		mu 0 4 807 590 589 797
		f 4 -1431 1437 1438 1439
		mu 0 4 805 745 808 809
		f 4 1440 1441 -1433 -1440
		mu 0 4 809 810 806 805
		f 4 1442 1443 -1435 -1442
		mu 0 4 810 811 807 806
		f 4 1444 -1274 -1437 -1444
		mu 0 4 811 739 590 807
		f 4 1445 1446 -1443 1447
		mu 0 4 812 813 811 810
		f 4 1448 -1271 -1445 -1447
		mu 0 4 813 740 739 811
		f 4 -1338 1449 -1439 1450
		mu 0 4 781 730 809 808
		f 4 -1446 1451 -1263 1452
		mu 0 4 813 812 735 734
		f 4 -1269 -1429 -1449 -1453
		mu 0 4 734 738 740 813
		f 4 -474 -1298 -1406 -1399
		mu 0 4 252 194 751 713
		f 4 -476 -1407 -1349 1453
		mu 0 4 984 986 988 985
		f 4 -478 -1454 -1375 1454
		mu 0 4 983 984 985 982
		f 4 -1379 1455 -479 -1455
		mu 0 4 982 1173 1175 983
		f 5 1456 -1040 -1037 -1411 -1413
		mu 0 5 801 604 602 601 800
		f 4 1457 1458 1459 -482
		mu 0 4 279 814 695 280
		f 4 -1459 1460 1461 -1199
		mu 0 4 695 814 815 696
		f 4 -1462 1462 1463 1464
		mu 0 4 696 815 816 799
		f 4 1465 1466 -1393 -1464
		mu 0 4 816 817 782 799
		f 4 1467 1468 -1343 -1467
		mu 0 4 817 818 783 782
		f 4 1469 1470 -1377 -1381
		mu 0 4 796 1171 1172 794
		f 4 -504 -1409 1477 -1021
		mu 0 4 14 259 611 592
		f 4 -1478 -1051 1478 -1024
		mu 0 4 592 611 610 594
		f 4 -1479 -1049 1479 -1027
		mu 0 4 594 610 608 596
		f 4 -1480 -1046 1480 -1030
		mu 0 4 596 608 606 598
		f 4 -1481 -1043 -1457 -1414
		mu 0 4 598 606 604 801
		f 4 -1112 1481 1482 1483
		mu 0 4 616 648 820 821
		f 4 -1114 1484 1485 -1482
		mu 0 4 648 650 822 820
		f 4 -1064 -1484 1486 1487
		mu 0 4 619 616 821 823
		f 4 -1122 1488 1489 -1485
		mu 0 4 650 656 824 822
		f 4 -1069 -1488 1490 1491
		mu 0 4 622 619 823 825
		f 4 -1128 1492 1493 -1489
		mu 0 4 656 660 826 824
		f 4 -1074 -1492 1494 1495
		mu 0 4 625 622 825 827
		f 4 -1132 1496 1497 -1493
		mu 0 4 660 663 828 826
		f 4 -1079 -1496 1498 1499
		mu 0 4 628 625 827 829
		f 4 -1138 1500 1501 -1497
		mu 0 4 663 667 830 828
		f 4 -1084 -1500 1502 1503
		mu 0 4 631 628 829 831
		f 4 -1145 -532 1504 -1501
		mu 0 4 667 96 301 830
		f 4 -1148 -1504 1505 -533
		mu 0 4 100 631 831 302
		f 4 -1483 1506 1507 1508
		mu 0 4 821 820 1148 1147
		f 4 -1486 1509 1510 -1507
		mu 0 4 820 822 1149 1148
		f 4 -1487 -1509 1511 1512
		mu 0 4 823 821 1147 1146
		f 4 -1490 1513 1514 -1510
		mu 0 4 822 824 1150 1149
		f 4 -1491 -1513 1515 1516
		mu 0 4 825 823 1146 1145
		f 4 -1494 1517 1518 -1514
		mu 0 4 824 826 1151 1150
		f 4 -1495 -1517 1519 1520
		mu 0 4 827 825 1145 1144
		f 4 -1498 1521 1522 -1518
		mu 0 4 826 828 1152 1151
		f 4 -1499 -1521 1523 1524
		mu 0 4 829 827 1144 1143
		f 4 -1502 1525 1526 -1522
		mu 0 4 828 830 1153 1152
		f 4 -1503 -1525 1527 1528
		mu 0 4 831 829 1143 1141
		f 4 -1505 -559 1529 -1526
		mu 0 4 830 301 1154 1153
		f 4 -1506 -1529 1530 -560
		mu 0 4 302 831 1141 369
		f 4 -1530 -563 -1146 1531
		mu 0 4 842 336 99 669
		f 4 -1527 -1532 -1141 1532
		mu 0 4 840 842 669 665
		f 4 -1523 -1533 -1135 1533
		mu 0 4 838 840 665 661
		f 4 -1519 -1534 -1129 1534
		mu 0 4 836 838 661 657
		f 4 -1515 -1535 -1123 1535
		mu 0 4 834 836 657 653
		f 4 -1511 -1536 -1117 1536
		mu 0 4 832 834 653 652
		f 4 -1508 -1537 -1116 1537
		mu 0 4 833 832 652 651
		f 4 -1512 -1538 -1119 1538
		mu 0 4 835 833 651 654
		f 4 -1516 -1539 -1125 1539
		mu 0 4 837 835 654 658
		f 4 -1520 -1540 -1131 1540
		mu 0 4 839 837 658 662
		f 4 -1524 -1541 -1137 1541
		mu 0 4 841 839 662 666
		f 4 -1528 -1542 -1143 1542
		mu 0 4 843 841 666 670
		f 4 -1531 -1543 -1147 -575
		mu 0 4 1142 843 670 98
		f 4 1543 1544 -1461 1545
		mu 0 4 844 845 815 814
		f 4 1546 1547 -1466 1548
		mu 0 4 846 847 817 816
		f 4 -1468 -1548 1549 1550
		mu 0 4 818 817 847 848
		f 4 1551 1552 1553 1554
		mu 0 4 980 795 849 979
		f 4 1555 1556 1557 -1553
		mu 0 4 795 819 851 849
		f 4 1558 -1549 -1463 -1545
		mu 0 4 845 846 816 815
		f 4 1559 -1551 1560 1561
		mu 0 4 852 818 848 853
		f 4 1562 -1562 1563 1564
		mu 0 4 854 852 853 855
		f 4 1565 -1565 1566 1567
		mu 0 4 856 854 855 857
		f 4 1568 -1546 -1458 -601
		mu 0 4 464 844 814 279
		f 4 1569 -1555 1570 -603
		mu 0 4 981 980 979 976
		f 4 1571 -608 1572 1573
		mu 0 4 859 470 469 582
		f 4 1574 1575 1576 -1574
		mu 0 4 582 581 580 859
		f 4 1577 1578 1579 1580
		mu 0 4 1131 1132 577 977
		f 4 1581 -1581 1582 -617
		mu 0 4 1133 1131 977 520
		f 4 1583 1584 1585 1586
		mu 0 4 882 883 873 884
		f 4 -1547 1587 1588 1589
		mu 0 4 885 886 887 888
		f 4 -1575 -1585 1590 1591
		mu 0 4 874 873 883 889
		f 4 -1550 -1590 1592 1593
		mu 0 4 890 885 888 891
		f 4 -1561 -1594 1594 1595
		mu 0 4 892 890 891 893
		f 4 -1564 -1596 1596 1597
		mu 0 4 894 892 893 895
		f 4 1598 -1598 1599 1600
		mu 0 4 896 894 895 897
		f 4 1601 1602 1603 1604
		mu 0 4 898 899 900 901
		f 4 1605 -1592 1606 -1588
		mu 0 4 886 874 889 887
		f 4 -1576 -1606 -1559 1607
		mu 0 4 580 581 846 845
		f 4 1608 -1608 -1544 1609
		mu 0 4 576 580 845 844
		f 4 1610 -1610 -1569 -647
		mu 0 4 525 576 844 464
		f 4 -1571 1611 1612 -649
		mu 0 4 976 979 975 974
		f 4 -1554 1613 1614 -1612
		mu 0 4 979 849 575 975
		f 4 1615 1616 1617 1618
		mu 0 4 908 909 910 911
		f 4 1619 1620 -1616 1621
		mu 0 4 912 913 909 908
		f 4 1622 1623 -1620 1624
		mu 0 4 914 915 913 912
		f 4 1625 1626 -1623 1627
		mu 0 4 916 917 915 914
		f 4 1628 1629 -1626 1630
		mu 0 4 918 919 917 916
		f 4 1631 1632 -1629 1633
		mu 0 4 920 921 919 918
		f 4 1634 1635 -1632 1636
		mu 0 4 922 923 921 920
		f 4 1637 1638 -1635 1639
		mu 0 4 1136 925 923 922
		f 4 1640 1641 -1638 1642
		mu 0 4 926 927 928 924
		f 4 1643 1644 -1641 1645
		mu 0 4 929 930 927 926
		f 4 -1618 1646 -1644 1647
		mu 0 4 911 910 930 929
		f 3 1648 1649 1650
		mu 0 3 850 571 858
		f 4 -1583 1651 1652 -690
		mu 0 4 520 977 850 529
		f 4 1653 -1587 -1650 -1604
		mu 0 4 900 882 884 901
		f 4 -1601 1654 1655 1656
		mu 0 4 896 897 935 936
		f 4 -1283 1657 1658 1659
		mu 0 4 756 757 760 774
		f 4 -1289 1660 1661 -1658
		mu 0 4 757 779 784 760
		f 4 1662 1663 1664 1665
		mu 0 4 861 862 863 864
		f 4 1666 -1666 1667 1668
		mu 0 4 865 861 864 866
		f 4 -1319 -1660 1669 -1664
		mu 0 4 862 756 774 863
		f 4 1670 1671 1672 1673
		mu 0 4 867 868 512 903
		f 4 -1563 1674 1675 -1673
		mu 0 4 512 513 476 903
		f 4 1676 1677 -1675 -1566
		mu 0 4 905 1181 476 513
		f 4 1678 -1669 1679 1680
		mu 0 4 906 865 866 907
		f 4 1681 1682 1683 1684
		mu 0 4 931 932 933 934
		f 4 1685 -1685 1686 1687
		mu 0 4 937 931 934 938
		f 4 1688 -1688 1689 1690
		mu 0 4 939 937 938 940
		f 4 1691 -1691 1692 1693
		mu 0 4 941 939 940 942
		f 4 1694 -1694 1695 1696
		mu 0 4 943 941 942 944
		f 4 1697 -1697 1698 1699
		mu 0 4 945 943 944 1167
		f 4 1700 -1700 1701 1702
		mu 0 4 475 511 483 482
		f 4 1703 1704 -1703 1705
		mu 0 4 481 946 475 482
		f 4 1706 1707 1708 -1683
		mu 0 4 932 947 477 933
		f 4 -1684 1709 1710 1711
		mu 0 4 934 933 948 949
		f 4 -1687 -1712 1712 1713
		mu 0 4 938 934 949 950
		f 4 -1690 -1714 1714 1715
		mu 0 4 940 938 950 951
		f 4 -1693 -1716 1716 1717
		mu 0 4 942 940 951 952
		f 4 -1696 -1718 1718 1719
		mu 0 4 944 942 952 953
		f 4 -1699 -1720 1720 1721
		mu 0 4 1167 944 953 954
		f 4 -1702 -1722 1722 1723
		mu 0 4 482 483 1168 480
		f 4 -1706 -1724 1724 1725
		mu 0 4 481 482 480 479
		f 4 1726 -1726 1727 1728
		mu 0 4 477 481 479 478
		f 4 -1709 -1729 1729 -1710
		mu 0 4 933 477 478 948
		f 4 -1659 1730 -1682 1731
		mu 0 4 774 760 932 931
		f 4 -1670 -1732 -1686 1732
		mu 0 4 863 774 931 937
		f 4 -1665 -1733 -1689 1733
		mu 0 4 864 863 937 939
		f 4 -1668 -1734 -1692 1734
		mu 0 4 866 864 939 941
		f 4 -1680 -1735 -1695 1735
		mu 0 4 907 866 941 943
		f 4 1736 -1736 -1698 1737
		mu 0 4 904 907 943 945
		f 4 -1676 -1738 -1701 1738
		mu 0 4 903 476 511 475
		f 4 1739 -1674 -1739 -1705
		mu 0 4 946 867 903 475
		f 4 -1662 1740 -1707 -1731
		mu 0 4 760 784 947 932
		f 3 -1672 -1469 -1560
		mu 0 3 852 783 818
		f 4 -1599 1741 1742 -1567
		mu 0 4 855 574 573 857
		f 4 1743 1744 -1614 -1558
		mu 0 4 851 572 575 849
		f 4 -1602 -1579 1745 -1656
		mu 0 4 935 989 990 936
		f 4 1746 1747 1748 1749
		mu 0 4 991 992 993 994
		f 4 1750 1751 1752 -1748
		mu 0 4 992 995 996 993
		f 4 1753 1754 1755 1756
		mu 0 4 997 998 999 1000
		f 4 1757 1758 -1640 1759
		mu 0 4 1001 1002 1003 1004
		f 4 -1648 1760 1761 1762
		mu 0 4 1005 1006 1007 1008
		f 4 -1643 -1759 1763 1764
		mu 0 4 1009 1003 1002 1010
		f 4 1765 1766 1767 1768
		mu 0 4 1011 1012 1013 1014
		f 4 -1646 -1765 1769 -1761
		mu 0 4 1006 1009 1010 1007
		f 4 -1625 1770 1771 1772
		mu 0 4 1015 1016 1017 1018
		f 4 1773 1774 1775 1776
		mu 0 4 1019 1020 1021 1022
		f 4 -1622 1777 1778 -1771
		mu 0 4 1016 1023 1024 1017
		f 4 1779 -1777 1780 1781
		mu 0 4 1025 1026 1027 1028
		f 4 -1628 -1773 1782 1783
		mu 0 4 1029 1015 1018 1030
		f 4 1784 1785 1786 -1775
		mu 0 4 1020 1031 1032 1021
		f 4 -1619 1787 1788 -1778
		mu 0 4 1023 1005 1033 1024
		f 3 -1763 1789 1790
		mu 0 3 1005 1008 1034
		f 4 1791 -1782 1792 1793
		mu 0 4 1035 1025 1028 1036
		f 6 -1760 -1637 -1634 -1631 1794 1795
		mu 0 6 1001 1004 1037 1038 1029 1039
		f 4 -1772 1796 -1747 1797
		mu 0 4 1018 1017 992 991
		f 4 -1783 -1798 1798 1799
		mu 0 4 1030 1018 991 1040
		f 4 -1800 1800 1801 1802
		mu 0 4 1030 1040 1041 1042
		f 4 1803 1804 1805 1806
		mu 0 4 1043 1044 1045 1046
		f 4 1807 -1807 1808 1809
		mu 0 4 1047 1043 1046 1048
		f 4 1810 -1810 1811 1812
		mu 0 4 1049 1047 1048 1050
		f 4 1813 -1813 1814 1815
		mu 0 4 1051 1052 1053 1054
		f 4 1816 1817 1818 1819
		mu 0 4 1055 1033 1056 1057
		f 4 -1789 -1817 1820 1821
		mu 0 4 1024 1033 1055 995
		f 4 -1779 -1822 -1751 -1797
		mu 0 4 1017 1024 995 992
		f 4 -1784 -1803 1822 -1795
		mu 0 4 1029 1030 1042 1039
		f 4 -1787 1823 -1804 1824
		mu 0 4 1021 1032 1044 1043
		f 4 -1776 -1825 -1808 1825
		mu 0 4 1022 1021 1043 1047
		f 4 -1781 -1826 -1811 1826
		mu 0 4 1028 1027 1058 1052
		f 4 -1793 -1827 -1814 1827
		mu 0 4 1036 1028 1052 1051
		f 4 -1788 -1791 1828 -1818
		mu 0 4 1033 1005 1034 1056
		f 4 -1799 1829 -1754 1830
		mu 0 4 1040 991 998 997
		f 4 -1830 -1750 1831 -1755
		mu 0 4 998 991 994 999
		f 4 -1806 1832 1833 1834
		mu 0 4 1046 1045 1059 1060
		f 4 -1831 -1757 1835 -1801
		mu 0 4 1040 997 1000 1041
		f 4 -1821 1836 -1766 1837
		mu 0 4 995 1055 1012 1011
		f 4 -1837 -1820 1838 -1767
		mu 0 4 1012 1055 1057 1013
		f 4 -1815 1839 1840 1841
		mu 0 4 1054 1053 1061 1062
		f 4 -1838 -1769 1842 -1752
		mu 0 4 995 1011 1014 1063
		f 4 -1764 1843 -1774 1844
		mu 0 4 1064 1002 1020 1019
		f 4 -1770 -1845 -1780 1845
		mu 0 4 1007 1010 1026 1025
		f 4 -1762 -1846 -1792 1846
		mu 0 4 1008 1007 1025 1035
		f 4 -1790 -1847 -1794 1847
		mu 0 4 1034 1008 1035 1036
		f 4 -1829 -1848 -1828 1848
		mu 0 4 1056 1034 1036 1051
		f 4 -1819 -1849 -1816 1849
		mu 0 4 1057 1056 1051 1054
		f 4 -1839 -1850 -1842 1850
		mu 0 4 1013 1057 1054 1062
		f 4 -1768 -1851 -1841 1851
		mu 0 4 1014 1013 1062 1061
		f 4 1852 -1843 -1852 -1840
		mu 0 4 1053 1063 1014 1061
		f 4 -1753 -1853 -1812 1853
		mu 0 4 993 996 1050 1048
		f 4 -1749 -1854 -1809 1854
		mu 0 4 994 993 1048 1046
		f 4 -1832 -1855 -1835 1855
		mu 0 4 999 994 1046 1060
		f 4 -1756 -1856 -1834 1856
		mu 0 4 1000 999 1060 1059
		f 4 1857 -1836 -1857 -1833
		mu 0 4 1045 1041 1000 1059
		f 4 1858 -1802 -1858 -1805
		mu 0 4 1044 1042 1041 1045
		f 4 1859 -1823 -1859 -1824
		mu 0 4 1032 1039 1042 1044
		f 4 1860 -1796 -1860 -1786
		mu 0 4 1031 1001 1039 1032
		f 4 -1785 -1844 -1758 -1861
		mu 0 4 1031 1020 1002 1001
		f 4 -1730 1861 1862 -1711
		mu 0 4 514 955 956 959
		f 4 1863 1864 -1715 1865
		mu 0 4 1110 1109 1108 1107
		f 4 -1713 -1863 1866 -1866
		mu 0 4 1107 959 956 1110
		f 4 1867 1868 1869 1870
		mu 0 4 569 570 957 958
		f 5 1871 1872 -1719 -1717 -1865
		mu 0 5 960 961 962 963 964
		f 4 1873 1874 1875 -1723
		mu 0 4 965 966 967 968
		f 4 1876 1877 1878 1879
		mu 0 4 969 970 971 972
		f 4 -1874 -1721 -1873 1880
		mu 0 4 966 965 962 961
		f 4 1881 1882 1883 1884
		mu 0 4 973 1090 1091 1092
		f 5 1885 -1728 -1725 1886 1887
		mu 0 5 1093 1094 1095 968 1096
		f 3 -1876 1888 -1887
		mu 0 3 968 967 1096
		f 4 -1580 -1605 -1649 -1652
		mu 0 4 977 577 571 850
		f 4 1889 -1746 1890 -1745
		mu 0 4 572 1076 578 575
		f 4 -1615 -1891 -1578 1891
		mu 0 4 975 575 578 579
		f 4 -1613 -1892 -1582 -930
		mu 0 4 974 975 579 978
		f 4 -1198 -1205 -931 -1460
		mu 0 4 695 694 132 280
		f 4 -1394 -1215 -1200 -1465
		mu 0 4 799 703 693 696
		f 4 1892 1893 1894 -1667
		mu 0 4 775 1075 1074 1073
		f 4 -1894 1895 -1328 1896
		mu 0 4 1074 1075 772 771
		f 4 -1586 -1573 -938 1897
		mu 0 4 858 1070 583 524
		f 4 -1651 -1898 -939 -1653
		mu 0 4 850 858 524 529
		f 4 1898 -1591 1899 1900
		mu 0 4 902 889 883 881
		f 4 1901 -1900 -1584 1902
		mu 0 4 880 881 883 882
		f 4 1903 -1903 -1654 1904
		mu 0 4 879 880 882 900
		f 4 1905 -1905 -1603 1906
		mu 0 4 878 879 900 899
		f 4 1907 -1907 -1655 1908
		mu 0 4 877 876 935 897
		f 4 1909 -1909 -1600 1910
		mu 0 4 875 877 897 895
		f 4 1911 -1911 -1597 1912
		mu 0 4 872 875 895 893
		f 4 1913 -1913 -1595 1914
		mu 0 4 871 872 893 891
		f 4 1915 -1915 -1593 1916
		mu 0 4 870 871 891 888
		f 4 1917 -1917 -1589 1918
		mu 0 4 869 870 888 887
		f 4 1919 -1919 -1607 -1899
		mu 0 4 902 869 887 889
		f 4 1920 -1901 1921 -1617
		mu 0 4 909 902 881 910
		f 4 -1621 1922 -1920 -1921
		mu 0 4 909 913 869 902
		f 4 -1624 1923 -1918 -1923
		mu 0 4 913 915 870 869
		f 4 -1627 1924 -1916 -1924
		mu 0 4 915 917 871 870
		f 4 -1630 1925 -1914 -1925
		mu 0 4 917 919 872 871
		f 4 -1633 1926 -1912 -1926
		mu 0 4 919 921 875 872
		f 4 -1636 1927 -1910 -1927
		mu 0 4 921 923 877 875
		f 4 -1639 1928 -1908 -1928
		mu 0 4 923 925 876 877
		f 4 -1642 1929 -1906 -1929
		mu 0 4 928 927 879 878
		f 4 -1645 1930 -1904 -1930
		mu 0 4 927 930 880 879
		f 4 -1647 -1922 -1902 -1931
		mu 0 4 930 910 881 880
		f 4 -1331 -1679 1931 -1380
		mu 0 4 776 775 1072 796
		f 4 1932 -1470 -1932 1933
		mu 0 4 1170 1171 796 1072
		f 4 -1557 1934 -1568 1935
		mu 0 4 851 819 856 857
		f 4 1936 -1744 -1936 -1743
		mu 0 4 573 572 851 857
		f 4 -1657 -1890 -1937 -1742
		mu 0 4 574 1076 572 573
		f 4 -1663 -1895 1937 -1320
		mu 0 4 767 1073 1074 768
		f 4 -1938 -1897 -1339 1938
		mu 0 4 768 1074 771 781
		f 3 1939 -1284 -1318
		mu 0 3 766 745 747
		f 4 -1321 -1939 -1451 1940
		mu 0 4 766 768 781 808
		f 3 1941 -1262 -1264
		mu 0 3 735 730 733
		f 4 1942 -1450 -1942 -1452
		mu 0 4 812 809 730 735
		f 3 -1448 -1441 -1943
		mu 0 3 812 810 809
		f 3 -1438 -1940 -1941
		mu 0 3 808 745 766
		f 3 1943 -1395 -1896
		mu 0 3 1075 773 772
		f 3 -1893 -1330 -1944
		mu 0 3 1075 775 773
		f 4 -1867 1944 -1877 1945
		mu 0 4 1110 956 1106 1105
		f 4 1946 -1878 -1945 1947
		mu 0 4 967 971 970 1097
		f 3 1948 -1875 1949
		mu 0 3 1098 967 966
		f 4 1950 -1946 -1880 1951
		mu 0 4 1098 1099 969 972
		f 4 1952 -1884 1953 -1950
		mu 0 4 966 1092 1091 1098
		f 4 -1951 -1954 -1883 1954
		mu 0 4 1099 1098 1091 1090
		f 4 1955 1956 -1868 1957
		mu 0 4 956 1104 1103 1102
		f 4 -1957 -1888 1958 -1869
		mu 0 4 570 1093 1096 957
		f 4 -1889 1959 -1870 -1959
		mu 0 4 1096 967 958 957
		f 4 -1948 -1958 -1871 -1960
		mu 0 4 967 1097 569 958
		f 3 -1862 -1886 -1956
		mu 0 3 956 955 1104
		f 5 -1885 -1953 -1881 -1872 1960
		mu 0 5 973 1092 966 961 960
		f 4 -1952 -1879 -1947 -1949
		mu 0 4 1098 972 971 967
		f 4 -1961 -1864 -1955 -1882
		mu 0 4 1101 1109 1110 1100
		f 4 1961 -1572 -1577 -1609
		mu 0 4 576 470 859 580
		f 3 -1005 -1962 -1611
		mu 0 3 525 470 576
		f 4 -1727 -1708 1962 -1704
		mu 0 4 481 477 947 946
		f 4 -1963 -1741 1963 -1740
		mu 0 4 946 947 784 867
		f 4 -1964 -1661 -1344 -1671
		mu 0 4 867 784 779 868
		f 4 -763 -737 1964 -740
		mu 0 4 359 358 357 360
		f 4 -1965 -775 1965 -776
		mu 0 4 360 357 341 338
		f 4 -1966 -712 -778 -710
		mu 0 4 338 341 340 339
		f 4 -1935 1966 -1933 -1677
		mu 0 4 856 819 1171 1170
		f 4 -1471 -1967 -1556 1967
		mu 0 4 1172 1171 819 795
		f 4 -1378 -1968 -1552 1968
		mu 0 4 1173 1172 795 980
		f 4 -1456 -1969 -1570 1969
		mu 0 4 1175 1173 980 981
		f 4 -480 -1970 -605 1970
		mu 0 4 1176 1174 278 243
		f 4 -383 -1971 -587 1971
		mu 0 4 1177 1176 243 244
		f 4 -495 -1972 -590 1972
		mu 0 4 1178 1177 244 286
		f 4 1973 -976 -1973 -978
		mu 0 4 462 1179 1178 286
		f 4 -600 -714 -973 -1974
		mu 0 4 1083 342 1084 1180
		f 4 -1678 -1934 -1681 -1737
		mu 0 4 1182 1169 906 907
		f 3 -195 -190 1974
		mu 0 3 124 121 120
		f 3 -1975 -213 -214
		mu 0 3 124 120 135
		f 3 1975 -1203 -1390
		mu 0 3 130 131 697
		f 3 -396 -205 -1976
		mu 0 3 130 129 131
		f 3 -1214 -1209 1976
		mu 0 3 692 700 689
		f 3 -1193 -1977 -1188
		mu 0 3 688 692 689;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".vcs" 2;
createNode transform -n "hair" -p "Geo";
	rename -uid "227DB0EB-4C5D-EF3D-3634-FE8F20944619";
	addAttr -is true -ci true -k true -sn "currentUVSet" -ln "currentUVSet" -dt "string";
	setAttr -l on ".t" -type "double3" 0 -3.8914182186126709 0 ;
	setAttr -l on ".t";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".r";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".s";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr -k on ".currentUVSet" -type "string" "map1";
createNode mesh -n "hairShape" -p "hair";
	rename -uid "041BEFE6-4AB3-3F5F-E4F8-0BA3FEB14FC9";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".vcs" 2;
createNode mesh -n "hairShapeOrig" -p "hair";
	rename -uid "6352E7F9-4068-D14D-FC3E-CD8140010DFF";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 67 ".uvst[0].uvsp[0:66]" -type "float2" 0.6642338 0.17829159
		 0.6758787 0.17360093 0.65225166 0.21054624 0.65151983 0.18264768 0.63904613 0.11136059
		 0.65652519 0.10619181 0.63170874 0.129208 0.61566204 0.10002027 0.62495053 0.085170105
		 0.61218625 0.11056966 0.59463674 0.079358794 0.59201658 0.10453097 0.49076965 0.14311777
		 0.49569571 0.14740616 0.50042409 0.15146266 0.63625264 0.18219943 0.62182337 0.19572413
		 0.61916625 0.18114765 0.62280858 0.14866346 0.61043894 0.1662399 0.60982805 0.12713577
		 0.60097671 0.14960954 0.58948058 0.11887573 0.58467311 0.13808715 0.50878882 0.15898536
		 0.51829749 0.16642216 0.5941686 0.18769003 0.58896101 0.18171184 0.58242345 0.17487645
		 0.57323653 0.16877402 0.52973735 0.17535999 0.55113471 0.20754158 0.51006758 0.13663289
		 0.50519693 0.13599318 0.52423662 0.11545844 0.52772945 0.12106323 0.51468915 0.13755183
		 0.52957934 0.12861112 0.54565531 0.094875947 0.55249918 0.10274357 0.55344921 0.11312626
		 0.56762713 0.083640181 0.57240015 0.09652327 0.57257891 0.10537204 0.52309936 0.14159478
		 0.5344668 0.13567989 0.53223896 0.14884925 0.541215 0.14414831 0.55276871 0.12627116
		 0.55220354 0.14156567 0.56940258 0.11807913 0.56641066 0.13707389 0.54163414 0.16453829
		 0.5480417 0.16283768 0.55480176 0.16378966 0.56325036 0.16506593 0.66289842 0.22304711
		 0.66280299 0.25005758 0.65761769 0.21628021 0.65270269 0.24579488 0.64298362 0.24163383
		 0.63918501 0.20222376 0.62562507 0.23453531 0.60858524 0.22549483 0.59648186 0.19535901
		 0.59125626 0.21391505 0.59335768 0.094248131;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 61 ".vt[0:60]"  0.22850278 7.69339275 -0.35142481 0.53848153 7.64109993 -0.018641198
		 0.63178295 7.57675934 0.50570649 0.45219848 7.53365612 0.89236712 0 7.50252819 1.11385024
		 0 7.61380386 -0.40505847 0.31973121 8.091563225 -0.31994745 0.60341078 8.14750099 -0.15083332
		 0.69505882 8.25769424 0.44541717 0.59833902 8.35921192 1.021079421 0 8.38710499 1.24101508
		 0 8.060926437 -0.30640781 0.34568685 8.41121006 -0.19585809 0.47763005 8.51083851 -0.146714
		 0.49867064 8.64752197 0.026268438 0.37144932 8.76231098 0.28192127 0 8.80647659 0.44127321
		 0 8.39254093 -0.189538 0 8.68907928 -0.77323973 0.26972458 8.030248642 -0.31796083
		 0.57568455 8.029580116 -0.053710997 0.6771329 8.054014206 0.55061018 0.55148715 8.086497307 1.062781215
		 0 8.084963799 1.29407585 0 7.97114944 -0.34152392 0.35984117 8.23518467 -0.26292956
		 0.57376069 8.32389069 -0.16872461 0.64397538 8.46588326 0.24673074 0.53410167 8.58795452 0.69790941
		 0 8.6278038 0.89120144 0 8.21666908 -0.23484722 0.21377608 8.62999439 -0.22846869
		 0.26222566 8.70084381 -0.23048225 0.25095537 8.79635334 -0.23119396 0.1673128 8.89593029 -0.19718926
		 0 8.94534206 -0.17578524 0 8.59782314 -0.25466782 -0.22850278 7.69339275 -0.35142481
		 -0.53848153 7.64109993 -0.018641198 -0.63178295 7.57675934 0.50570649 -0.45219848 7.53365612 0.89236712
		 -0.31973121 8.091563225 -0.31994745 -0.60341078 8.14750099 -0.15083332 -0.69505882 8.25769424 0.44541717
		 -0.59833902 8.35921192 1.021079421 -0.34568685 8.41121006 -0.19585809 -0.47763005 8.51083851 -0.146714
		 -0.49867064 8.64752197 0.026268438 -0.37144932 8.76231098 0.28192127 -0.26972458 8.030248642 -0.31796083
		 -0.57568455 8.029580116 -0.053710997 -0.6771329 8.054014206 0.55061018 -0.55148715 8.086497307 1.062781215
		 -0.35984117 8.23518467 -0.26292956 -0.57376069 8.32389069 -0.16872461 -0.64397538 8.46588326 0.24673074
		 -0.53410167 8.58795452 0.69790941 -0.21377608 8.62999439 -0.22846869 -0.26222566 8.70084381 -0.23048225
		 -0.25095537 8.79635334 -0.23119396 -0.1673128 8.89593029 -0.19718926;
	setAttr -s 120 ".ed[0:119]"  19 20 1 20 1 1 1 0 0 0 19 1 6 7 1 7 20 1
		 19 6 1 20 21 1 21 2 1 2 1 0 7 8 1 8 21 1 21 22 1 22 3 1 3 2 0 8 9 1 9 22 1 22 23 1
		 23 4 1 4 3 0 9 10 1 10 23 1 0 5 0 5 24 1 24 19 1 24 11 1 11 6 1 25 26 1 26 7 1 6 25 1
		 12 13 1 13 26 1 25 12 1 26 27 1 27 8 1 13 14 1 14 27 1 27 28 1 28 9 1 14 15 1 15 28 1
		 28 29 1 29 10 1 15 16 1 16 29 1 11 30 1 30 25 1 30 17 1 17 12 1 31 32 1 32 13 1 12 31 1
		 32 33 1 33 14 1 33 34 1 34 15 1 34 35 1 35 16 1 17 36 1 36 31 0 18 32 1 31 18 1 18 33 1
		 18 34 1 18 35 1 36 18 1 49 37 1 37 38 0 38 50 1 50 49 1 41 49 1 50 42 1 42 41 1 38 39 0
		 39 51 1 51 50 1 51 43 1 43 42 1 39 40 0 40 52 1 52 51 1 52 44 1 44 43 1 40 4 0 23 52 1
		 10 44 1 49 24 1 5 37 0 41 11 1 53 41 1 42 54 1 54 53 1 45 53 1 54 46 1 46 45 1 43 55 1
		 55 54 1 55 47 1 47 46 1 44 56 1 56 55 1 56 48 1 48 47 1 29 56 1 16 48 1 53 30 1 45 17 1
		 57 45 1 46 58 1 58 57 1 47 59 1 59 58 1 48 60 1 60 59 1 35 60 1 57 36 0 18 57 1 58 18 1
		 59 18 1 60 18 1;
	setAttr -s 230 ".n";
	setAttr ".n[0:165]" -type "float3"  1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020;
	setAttr ".n[166:229]" -type "float3"  1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020;
	setAttr -s 60 -ch 230 ".fc[0:59]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 58 0 1 56
		f 4 4 5 -1 6
		mu 0 4 2 3 0 58
		f 4 7 8 9 -2
		mu 0 4 0 4 5 1
		f 4 10 11 -8 -6
		mu 0 4 3 6 4 0
		f 4 12 13 14 -9
		mu 0 4 4 7 8 5
		f 4 15 16 -13 -12
		mu 0 4 6 9 7 4
		f 4 17 18 19 -14
		mu 0 4 7 66 10 8
		f 4 20 21 -18 -17
		mu 0 4 9 11 66 7
		f 4 -4 22 23 24
		mu 0 4 58 56 57 59
		f 4 -7 -25 25 26
		mu 0 4 2 58 59 60
		f 4 27 28 -5 29
		mu 0 4 61 15 3 2
		f 4 30 31 -28 32
		mu 0 4 16 17 15 61
		f 4 33 34 -11 -29
		mu 0 4 15 18 6 3
		f 4 35 36 -34 -32
		mu 0 4 17 19 18 15
		f 4 37 38 -16 -35
		mu 0 4 18 20 9 6
		f 4 39 40 -38 -37
		mu 0 4 19 21 20 18
		f 4 41 42 -21 -39
		mu 0 4 20 22 11 9
		f 4 43 44 -42 -41
		mu 0 4 21 23 22 20
		f 4 -30 -27 45 46
		mu 0 4 61 2 60 62
		f 4 -33 -47 47 48
		mu 0 4 16 61 62 63
		f 4 49 50 -31 51
		mu 0 4 64 26 17 16
		f 4 52 53 -36 -51
		mu 0 4 26 27 19 17
		f 4 54 55 -40 -54
		mu 0 4 27 28 21 19
		f 4 56 57 -44 -56
		mu 0 4 28 29 23 21
		f 4 -52 -49 58 59
		mu 0 4 64 16 63 65
		f 3 60 -50 61
		mu 0 3 31 26 64
		f 3 -53 -61 62
		mu 0 3 27 26 31
		f 3 -55 -63 63
		mu 0 3 28 27 31
		f 3 -57 -64 64
		mu 0 3 29 28 31
		f 3 -62 -60 65
		mu 0 3 31 64 65
		f 4 66 67 68 69
		mu 0 4 32 33 34 35
		f 4 70 -70 71 72
		mu 0 4 36 32 35 37
		f 4 -69 73 74 75
		mu 0 4 35 34 38 39
		f 4 -72 -76 76 77
		mu 0 4 37 35 39 40
		f 4 -75 78 79 80
		mu 0 4 39 38 41 42
		f 4 -77 -81 81 82
		mu 0 4 40 39 42 43
		f 4 -80 83 -19 84
		mu 0 4 42 41 10 66
		f 4 -82 -85 -22 85
		mu 0 4 43 42 66 11
		f 4 86 -24 87 -67
		mu 0 4 32 13 12 33
		f 4 88 -26 -87 -71
		mu 0 4 36 14 13 32
		f 4 89 -73 90 91
		mu 0 4 44 36 37 45
		f 4 92 -92 93 94
		mu 0 4 46 44 45 47
		f 4 -91 -78 95 96
		mu 0 4 45 37 40 48
		f 4 -94 -97 97 98
		mu 0 4 47 45 48 49
		f 4 -96 -83 99 100
		mu 0 4 48 40 43 50
		f 4 -98 -101 101 102
		mu 0 4 49 48 50 51
		f 4 -100 -86 -43 103
		mu 0 4 50 43 11 22
		f 4 -102 -104 -45 104
		mu 0 4 51 50 22 23
		f 4 105 -46 -89 -90
		mu 0 4 44 24 14 36
		f 4 106 -48 -106 -93
		mu 0 4 46 25 24 44
		f 4 107 -95 108 109
		mu 0 4 52 46 47 53
		f 4 -109 -99 110 111
		mu 0 4 53 47 49 54
		f 4 -111 -103 112 113
		mu 0 4 54 49 51 55
		f 4 -113 -105 -58 114
		mu 0 4 55 51 23 29
		f 4 115 -59 -107 -108
		mu 0 4 52 30 25 46
		f 3 116 -110 117
		mu 0 3 31 52 53
		f 3 118 -118 -112
		mu 0 3 54 31 53
		f 3 119 -119 -114
		mu 0 3 55 31 54
		f 3 -65 -120 -115
		mu 0 3 29 31 55
		f 3 -66 -116 -117
		mu 0 3 31 30 52;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "rBlackEye" -p "Geo";
	rename -uid "3D1BE647-43BD-59FB-5434-ABBD406E4245";
	setAttr ".t" -type "double3" 0 -3.8914182186126709 0 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" -0.87412069396722691 6.9363517692155403 1.7769773251457734 ;
	setAttr ".sp" -type "double3" -0.87412069396722691 6.9363517692155403 1.7769773251457734 ;
createNode mesh -n "rBlackEyeShape" -p "rBlackEye";
	rename -uid "1082AB2E-4022-87FA-2E3A-90929F9174F7";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.54338238458348909 0.94920438528060913 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vcs" 2;
createNode mesh -n "rBlackEyeShapeOrig" -p "rBlackEye";
	rename -uid "94C575A1-420A-62D4-7CB7-3FBA6C75EF06";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 134 ".uvst[0].uvsp[0:133]" -type "float2" 0.51899874 0.93527091
		 0.52248216 0.93527091 0.52596545 0.93527091 0.52944887 0.93527091 0.53293228 0.93527091
		 0.5364157 0.93527091 0.53989899 0.93527091 0.54338241 0.93527091 0.54686576 0.93527091
		 0.55034924 0.93527091 0.55383253 0.93527091 0.55731606 0.93527091 0.56079936 0.93527091
		 0.56428277 0.93527091 0.56776607 0.93527091 0.51899874 0.9387542 0.52248216 0.9387542
		 0.52596545 0.9387542 0.52944887 0.9387542 0.53293228 0.9387542 0.5364157 0.9387542
		 0.53989899 0.9387542 0.54338241 0.9387542 0.54686576 0.9387542 0.55034924 0.9387542
		 0.55383253 0.9387542 0.55731606 0.9387542 0.56079936 0.9387542 0.56428277 0.9387542
		 0.56776607 0.9387542 0.51899874 0.94223762 0.52248216 0.94223762 0.52596545 0.94223762
		 0.52944887 0.94223762 0.53293228 0.94223762 0.5364157 0.94223762 0.53989899 0.94223762
		 0.54338241 0.94223762 0.54686576 0.94223762 0.55034924 0.94223762 0.55383253 0.94223762
		 0.55731606 0.94223762 0.56079936 0.94223762 0.56428277 0.94223762 0.56776607 0.94223762
		 0.51899874 0.94572103 0.52248216 0.94572103 0.52596545 0.94572103 0.52944887 0.94572103
		 0.53293228 0.94572103 0.5364157 0.94572103 0.53989899 0.94572103 0.54338241 0.94572103
		 0.54686576 0.94572103 0.55034924 0.94572103 0.55383253 0.94572103 0.55731606 0.94572103
		 0.56079936 0.94572103 0.56428277 0.94572103 0.56776607 0.94572103 0.51899874 0.94920433
		 0.52248216 0.94920433 0.52596545 0.94920433 0.52944887 0.94920433 0.53293228 0.94920433
		 0.5364157 0.94920433 0.53989899 0.94920433 0.54338241 0.94920433 0.54686576 0.94920433
		 0.55034924 0.94920433 0.55383253 0.94920433 0.55731606 0.94920433 0.56079936 0.94920433
		 0.56428277 0.94920433 0.56776607 0.94920433 0.51899874 0.95268774 0.52248216 0.95268774
		 0.52596545 0.95268774 0.52944887 0.95268774 0.53293228 0.95268774 0.5364157 0.95268774
		 0.53989899 0.95268774 0.54338241 0.95268774 0.54686576 0.95268774 0.55034924 0.95268774
		 0.55383253 0.95268774 0.55731606 0.95268774 0.56079936 0.95268774 0.56428277 0.95268774
		 0.56776607 0.95268774 0.51899874 0.9561711 0.52248216 0.9561711 0.52596545 0.9561711
		 0.52944887 0.9561711 0.53293228 0.9561711 0.5364157 0.9561711 0.53989899 0.9561711
		 0.54338241 0.9561711 0.54686576 0.9561711 0.55034924 0.9561711 0.55383253 0.9561711
		 0.55731606 0.9561711 0.56079936 0.9561711 0.56428277 0.9561711 0.56776607 0.9561711
		 0.51899874 0.95965451 0.52248216 0.95965451 0.52596545 0.95965451 0.52944887 0.95965451
		 0.53293228 0.95965451 0.5364157 0.95965451 0.53989899 0.95965451 0.54338241 0.95965451
		 0.54686576 0.95965451 0.55034924 0.95965451 0.55383253 0.95965451 0.55731606 0.95965451
		 0.56079936 0.95965451 0.56428277 0.95965451 0.56776607 0.95965451 0.52074039 0.96313787
		 0.5242238 0.96313787 0.52770722 0.96313787 0.53119051 0.96313787 0.53467405 0.96313787
		 0.53815734 0.96313787 0.5416407 0.96313787 0.54512405 0.96313787 0.54860747 0.96313787
		 0.55209088 0.96313787 0.5555743 0.96313787 0.55905771 0.96313787 0.56254113 0.96313787
		 0.56602442 0.96313787;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 113 ".vt[0:112]"  -1.070125818 6.97132397 1.6194787 -1.0045733452 7.056482315 1.59532464
		 -0.90984738 7.11263561 1.59782767 -0.80470943 7.12866163 1.62649179 -0.70998347 7.10138702 1.67563975
		 -0.64443099 7.036212921 1.73553717 -0.62103558 6.94604874 1.7943207 -0.64443099 6.84875202 1.84034753
		 -0.70998335 6.76359367 1.86450148 -0.80470937 6.70744085 1.86199856 -0.90984732 6.69141436 1.83333445
		 -1.0045733452 6.71868944 1.78418648 -1.070125818 6.78386307 1.72428894 -1.093521118 6.87402725 1.66550541
		 -1.092441916 6.9992137 1.66370296 -1.025203705 7.086562157 1.6389277 -0.92804164 7.14415932 1.64149511
		 -0.82019985 7.1605978 1.67089629 -0.72303778 7.13262129 1.72130823 -0.65579951 7.06577158 1.78274584
		 -0.63180244 6.97328854 1.84304118 -0.65579951 6.87348986 1.89025176 -0.72303772 6.7861414 1.9150269
		 -0.82019973 6.72854424 1.91245961 -0.92804158 6.71210575 1.88305831 -1.025203586 6.74008226 1.83264649
		 -1.092441797 6.80693197 1.77120864 -1.11643887 6.89941502 1.7109133 -1.10381043 7.02395153 1.71360707
		 -1.038258076 7.10910988 1.68945324 -0.94353199 7.1652627 1.69195604 -0.83839411 7.1812892 1.72062039
		 -0.74366808 7.15401411 1.76976812 -0.67811561 7.088840485 1.82966554 -0.65472019 6.9986763 1.88844919
		 -0.67811561 6.90137959 1.9344759 -0.74366802 6.81622124 1.95862985 -0.83839399 6.76006794 1.95612705
		 -0.94353193 6.74404192 1.92746294 -1.038258076 6.77131653 1.87831497 -1.10381031 6.83649063 1.81841743
		 -1.12720585 6.92665482 1.7596339 -1.10366142 7.044296741 1.76668894 -1.04308176 7.1229949 1.7443676
		 -0.95554191 7.17488813 1.7466805 -0.85837978 7.1896987 1.77317023 -0.77083981 7.16449261 1.81858969
		 -0.71026021 7.10426331 1.87394309 -0.68863958 7.020938873 1.92826748 -0.71026015 6.93102312 1.97080255
		 -0.77083969 6.85232496 1.99312413 -0.85837972 6.80043173 1.99081111 -0.95554179 6.78562117 1.96432161
		 -1.04308176 6.81082678 1.91890192 -1.1036613 6.87105656 1.8635484 -1.12528205 6.95438099 1.80922425
		 -1.092002153 7.059229374 1.82028687 -1.039433241 7.12752056 1.80091679 -0.96346891 7.17255211 1.80292416
		 -0.8791548 7.1854043 1.82591093 -0.80319041 7.1635313 1.8653245 -0.75062144 7.11126614 1.91335845
		 -0.7318598 7.03895998 1.96049929 -0.75062138 6.96093416 1.99740994 -0.80319035 6.8926425 2.0167799
		 -0.87915474 6.84761095 2.014772654 -0.96346879 6.83475924 1.99178588 -1.039433122 6.85663176 1.95237231
		 -1.092002153 6.90889692 1.90433824 -1.11076379 6.98120356 1.85719752 -1.069417477 7.06799984 1.87171292
		 -1.027495146 7.12246037 1.8562659 -0.96691567 7.15837193 1.85786664 -0.8996774 7.16862106 1.87619781
		 -0.8390978 7.15117788 1.90762925 -0.79717541 7.10949755 1.94593525 -0.78221351 7.051835537 1.98352861
		 -0.79717541 6.9896121 2.012963772 -0.83909774 6.9351511 2.028410912 -0.89967728 6.89924002 2.026810169
		 -0.96691561 6.88899088 2.0084788799 -1.027495146 6.90643358 1.97704768 -1.069417477 6.94811392 1.93874168
		 -1.084379435 7.0057759285 1.9011482 -1.037039876 7.070169449 1.91838872 -1.0078662634 7.10806847 1.90763903
		 -0.96570921 7.13305902 1.90875292 -0.91891843 7.14019108 1.92150974 -0.87676138 7.12805271 1.94338262
		 -0.84758782 7.099047661 1.97003949 -0.83717585 7.05892086 1.99620056 -0.84758782 7.015619755 2.016684532
		 -0.87676138 6.97772074 2.027434111 -0.91891837 6.95273018 2.026319981 -0.96570921 6.94559765 2.013563395
		 -1.0078661442 6.95773649 1.99169052 -1.037039876 6.98674154 1.96503353 -1.047451735 7.026868343 1.93887246
		 -0.99649268 7.065628529 1.95797336 -0.98153079 7.085065365 1.95246029 -0.95991015 7.097881794 1.95303154
		 -0.93591321 7.10153961 1.95957398 -0.91429251 7.095314503 1.9707917 -0.89933062 7.080439091 1.98446286
		 -0.89399076 7.059859276 1.99787986 -0.89933062 7.037652016 2.0083851814 -0.91429251 7.018215179 2.013898134
		 -0.93591315 7.0053987503 2.013326883 -0.95991021 7.0017409325 2.0067844391 -0.98153073 7.0079660416 1.99556684
		 -0.99649274 7.022841454 1.98189557 -1.0018324852 7.043421268 1.96847868 -0.94980931 7.054605007 1.98848212;
	setAttr -s 224 ".ed";
	setAttr ".ed[0:165]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0 7 8 0 8 9 0
		 9 10 0 10 11 0 11 12 0 12 13 0 13 0 0 14 15 1 15 16 1 16 17 1 17 18 1 18 19 1 19 20 1
		 20 21 1 21 22 1 22 23 1 23 24 1 24 25 1 25 26 1 26 27 1 27 14 1 28 29 1 29 30 1 30 31 1
		 31 32 1 32 33 1 33 34 1 34 35 1 35 36 1 36 37 1 37 38 1 38 39 1 39 40 1 40 41 1 41 28 1
		 42 43 1 43 44 1 44 45 1 45 46 1 46 47 1 47 48 1 48 49 1 49 50 1 50 51 1 51 52 1 52 53 1
		 53 54 1 54 55 1 55 42 1 56 57 1 57 58 1 58 59 1 59 60 1 60 61 1 61 62 1 62 63 1 63 64 1
		 64 65 1 65 66 1 66 67 1 67 68 1 68 69 1 69 56 1 70 71 1 71 72 1 72 73 1 73 74 1 74 75 1
		 75 76 1 76 77 1 77 78 1 78 79 1 79 80 1 80 81 1 81 82 1 82 83 1 83 70 1 84 85 1 85 86 1
		 86 87 1 87 88 1 88 89 1 89 90 1 90 91 1 91 92 1 92 93 1 93 94 1 94 95 1 95 96 1 96 97 1
		 97 84 1 98 99 1 99 100 1 100 101 1 101 102 1 102 103 1 103 104 1 104 105 1 105 106 1
		 106 107 1 107 108 1 108 109 1 109 110 1 110 111 1 111 98 1 0 14 1 1 15 1 2 16 1 3 17 1
		 4 18 1 5 19 1 6 20 1 7 21 1 8 22 1 9 23 1 10 24 1 11 25 1 12 26 1 13 27 1 14 28 1
		 15 29 1 16 30 1 17 31 1 18 32 1 19 33 1 20 34 1 21 35 1 22 36 1 23 37 1 24 38 1 25 39 1
		 26 40 1 27 41 1 28 42 1 29 43 1 30 44 1 31 45 1 32 46 1 33 47 1 34 48 1 35 49 1 36 50 1
		 37 51 1 38 52 1 39 53 1 40 54 1 41 55 1 42 56 1 43 57 1 44 58 1 45 59 1 46 60 1 47 61 1
		 48 62 1 49 63 1 50 64 1 51 65 1 52 66 1 53 67 1;
	setAttr ".ed[166:223]" 54 68 1 55 69 1 56 70 1 57 71 1 58 72 1 59 73 1 60 74 1
		 61 75 1 62 76 1 63 77 1 64 78 1 65 79 1 66 80 1 67 81 1 68 82 1 69 83 1 70 84 1 71 85 1
		 72 86 1 73 87 1 74 88 1 75 89 1 76 90 1 77 91 1 78 92 1 79 93 1 80 94 1 81 95 1 82 96 1
		 83 97 1 84 98 1 85 99 1 86 100 1 87 101 1 88 102 1 89 103 1 90 104 1 91 105 1 92 106 1
		 93 107 1 94 108 1 95 109 1 96 110 1 97 111 1 98 112 1 99 112 1 100 112 1 101 112 1
		 102 112 1 103 112 1 104 112 1 105 112 1 106 112 1 107 112 1 108 112 1 109 112 1 110 112 1
		 111 112 1;
	setAttr -s 112 -ch 434 ".fc[0:111]" -type "polyFaces" 
		f 4 112 14 -114 -1
		mu 0 4 0 15 16 1
		f 4 113 15 -115 -2
		mu 0 4 1 16 17 2
		f 4 114 16 -116 -3
		mu 0 4 2 17 18 3
		f 4 115 17 -117 -4
		mu 0 4 3 18 19 4
		f 4 116 18 -118 -5
		mu 0 4 4 19 20 5
		f 4 117 19 -119 -6
		mu 0 4 5 20 21 6
		f 4 118 20 -120 -7
		mu 0 4 6 21 22 7
		f 4 119 21 -121 -8
		mu 0 4 7 22 23 8
		f 4 120 22 -122 -9
		mu 0 4 8 23 24 9
		f 4 121 23 -123 -10
		mu 0 4 9 24 25 10
		f 4 122 24 -124 -11
		mu 0 4 10 25 26 11
		f 4 123 25 -125 -12
		mu 0 4 11 26 27 12
		f 4 124 26 -126 -13
		mu 0 4 12 27 28 13
		f 4 125 27 -113 -14
		mu 0 4 13 28 29 14
		f 4 126 28 -128 -15
		mu 0 4 15 30 31 16
		f 4 127 29 -129 -16
		mu 0 4 16 31 32 17
		f 4 128 30 -130 -17
		mu 0 4 17 32 33 18
		f 4 129 31 -131 -18
		mu 0 4 18 33 34 19
		f 4 130 32 -132 -19
		mu 0 4 19 34 35 20
		f 4 131 33 -133 -20
		mu 0 4 20 35 36 21
		f 4 132 34 -134 -21
		mu 0 4 21 36 37 22
		f 4 133 35 -135 -22
		mu 0 4 22 37 38 23
		f 4 134 36 -136 -23
		mu 0 4 23 38 39 24
		f 4 135 37 -137 -24
		mu 0 4 24 39 40 25
		f 4 136 38 -138 -25
		mu 0 4 25 40 41 26
		f 4 137 39 -139 -26
		mu 0 4 26 41 42 27
		f 4 138 40 -140 -27
		mu 0 4 27 42 43 28
		f 4 139 41 -127 -28
		mu 0 4 28 43 44 29
		f 4 140 42 -142 -29
		mu 0 4 30 45 46 31
		f 4 141 43 -143 -30
		mu 0 4 31 46 47 32
		f 4 142 44 -144 -31
		mu 0 4 32 47 48 33
		f 4 143 45 -145 -32
		mu 0 4 33 48 49 34
		f 4 144 46 -146 -33
		mu 0 4 34 49 50 35
		f 4 145 47 -147 -34
		mu 0 4 35 50 51 36
		f 4 146 48 -148 -35
		mu 0 4 36 51 52 37
		f 4 147 49 -149 -36
		mu 0 4 37 52 53 38
		f 4 148 50 -150 -37
		mu 0 4 38 53 54 39
		f 4 149 51 -151 -38
		mu 0 4 39 54 55 40
		f 4 150 52 -152 -39
		mu 0 4 40 55 56 41
		f 4 151 53 -153 -40
		mu 0 4 41 56 57 42
		f 4 152 54 -154 -41
		mu 0 4 42 57 58 43
		f 4 153 55 -141 -42
		mu 0 4 43 58 59 44
		f 4 154 56 -156 -43
		mu 0 4 45 60 61 46
		f 4 155 57 -157 -44
		mu 0 4 46 61 62 47
		f 4 156 58 -158 -45
		mu 0 4 47 62 63 48
		f 4 157 59 -159 -46
		mu 0 4 48 63 64 49
		f 4 158 60 -160 -47
		mu 0 4 49 64 65 50
		f 4 159 61 -161 -48
		mu 0 4 50 65 66 51
		f 4 160 62 -162 -49
		mu 0 4 51 66 67 52
		f 4 161 63 -163 -50
		mu 0 4 52 67 68 53
		f 4 162 64 -164 -51
		mu 0 4 53 68 69 54
		f 4 163 65 -165 -52
		mu 0 4 54 69 70 55
		f 4 164 66 -166 -53
		mu 0 4 55 70 71 56
		f 4 165 67 -167 -54
		mu 0 4 56 71 72 57
		f 4 166 68 -168 -55
		mu 0 4 57 72 73 58
		f 4 167 69 -155 -56
		mu 0 4 58 73 74 59
		f 4 168 70 -170 -57
		mu 0 4 60 75 76 61
		f 4 169 71 -171 -58
		mu 0 4 61 76 77 62
		f 4 170 72 -172 -59
		mu 0 4 62 77 78 63
		f 4 171 73 -173 -60
		mu 0 4 63 78 79 64
		f 4 172 74 -174 -61
		mu 0 4 64 79 80 65
		f 4 173 75 -175 -62
		mu 0 4 65 80 81 66
		f 4 174 76 -176 -63
		mu 0 4 66 81 82 67
		f 4 175 77 -177 -64
		mu 0 4 67 82 83 68
		f 4 176 78 -178 -65
		mu 0 4 68 83 84 69
		f 4 177 79 -179 -66
		mu 0 4 69 84 85 70
		f 4 178 80 -180 -67
		mu 0 4 70 85 86 71
		f 4 179 81 -181 -68
		mu 0 4 71 86 87 72
		f 4 180 82 -182 -69
		mu 0 4 72 87 88 73
		f 4 181 83 -169 -70
		mu 0 4 73 88 89 74
		f 4 182 84 -184 -71
		mu 0 4 75 90 91 76
		f 4 183 85 -185 -72
		mu 0 4 76 91 92 77
		f 4 184 86 -186 -73
		mu 0 4 77 92 93 78
		f 4 185 87 -187 -74
		mu 0 4 78 93 94 79
		f 4 186 88 -188 -75
		mu 0 4 79 94 95 80
		f 4 187 89 -189 -76
		mu 0 4 80 95 96 81
		f 4 188 90 -190 -77
		mu 0 4 81 96 97 82
		f 4 189 91 -191 -78
		mu 0 4 82 97 98 83
		f 4 190 92 -192 -79
		mu 0 4 83 98 99 84
		f 4 191 93 -193 -80
		mu 0 4 84 99 100 85
		f 4 192 94 -194 -81
		mu 0 4 85 100 101 86
		f 4 193 95 -195 -82
		mu 0 4 86 101 102 87
		f 4 194 96 -196 -83
		mu 0 4 87 102 103 88
		f 4 195 97 -183 -84
		mu 0 4 88 103 104 89
		f 4 196 98 -198 -85
		mu 0 4 90 105 106 91
		f 4 197 99 -199 -86
		mu 0 4 91 106 107 92
		f 4 198 100 -200 -87
		mu 0 4 92 107 108 93
		f 4 199 101 -201 -88
		mu 0 4 93 108 109 94
		f 4 200 102 -202 -89
		mu 0 4 94 109 110 95
		f 4 201 103 -203 -90
		mu 0 4 95 110 111 96
		f 4 202 104 -204 -91
		mu 0 4 96 111 112 97
		f 4 203 105 -205 -92
		mu 0 4 97 112 113 98
		f 4 204 106 -206 -93
		mu 0 4 98 113 114 99
		f 4 205 107 -207 -94
		mu 0 4 99 114 115 100
		f 4 206 108 -208 -95
		mu 0 4 100 115 116 101
		f 4 207 109 -209 -96
		mu 0 4 101 116 117 102
		f 4 208 110 -210 -97
		mu 0 4 102 117 118 103
		f 4 209 111 -197 -98
		mu 0 4 103 118 119 104
		f 3 210 -212 -99
		mu 0 3 105 120 106
		f 3 211 -213 -100
		mu 0 3 106 121 107
		f 3 212 -214 -101
		mu 0 3 107 122 108
		f 3 213 -215 -102
		mu 0 3 108 123 109
		f 3 214 -216 -103
		mu 0 3 109 124 110
		f 3 215 -217 -104
		mu 0 3 110 125 111
		f 3 216 -218 -105
		mu 0 3 111 126 112
		f 3 217 -219 -106
		mu 0 3 112 127 113
		f 3 218 -220 -107
		mu 0 3 113 128 114
		f 3 219 -221 -108
		mu 0 3 114 129 115
		f 3 220 -222 -109
		mu 0 3 115 130 116
		f 3 221 -223 -110
		mu 0 3 116 131 117
		f 3 222 -224 -111
		mu 0 3 117 132 118
		f 3 223 -211 -112
		mu 0 3 118 133 119;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".vcs" 2;
createNode transform -n "lBlackEye" -p "Geo";
	rename -uid "8764C8E4-4421-3B18-64E2-E995F6527E4A";
	setAttr ".t" -type "double3" 0 -3.8914182186126709 0 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" 0.87412069396722691 6.9363517692155403 1.7769773251457734 ;
	setAttr ".sp" -type "double3" 0.87412069396722691 6.9363517692155403 1.7769773251457734 ;
	setAttr ".dsp" yes;
	setAttr ".drp" yes;
createNode mesh -n "lBlackEyeShape" -p "lBlackEye";
	rename -uid "CC2D41E7-4B88-1025-5783-1FB7E0C243D5";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.57601267580275528 0.97726649818597011 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vcs" 2;
createNode mesh -n "lBlackEyeShapeOrig" -p "lBlackEye";
	rename -uid "C1EE147E-4FC2-2E20-92D6-B5B17F55499F";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 134 ".uvst[0].uvsp[0:133]" -type "float2" 0.55738217 0.96662045
		 0.56004363 0.96662045 0.56270522 0.96662045 0.56536674 0.96662045 0.56802821 0.96662045
		 0.57068968 0.96662045 0.5733512 0.96662045 0.57601273 0.96662045 0.5786742 0.96662045
		 0.58133572 0.96662045 0.58399737 0.96662045 0.58665884 0.96662045 0.58932042 0.96662045
		 0.59198189 0.96662045 0.59464324 0.96662045 0.55738217 0.96928191 0.56004363 0.96928191
		 0.56270522 0.96928191 0.56536674 0.96928191 0.56802821 0.96928191 0.57068968 0.96928191
		 0.5733512 0.96928191 0.57601273 0.96928191 0.5786742 0.96928191 0.58133572 0.96928191
		 0.58399737 0.96928191 0.58665884 0.96928191 0.58932042 0.96928191 0.59198189 0.96928191
		 0.59464324 0.96928191 0.55738217 0.97194344 0.56004363 0.97194344 0.56270522 0.97194344
		 0.56536674 0.97194344 0.56802821 0.97194344 0.57068968 0.97194344 0.5733512 0.97194344
		 0.57601273 0.97194344 0.5786742 0.97194344 0.58133572 0.97194344 0.58399737 0.97194344
		 0.58665884 0.97194344 0.58932042 0.97194344 0.59198189 0.97194344 0.59464324 0.97194344
		 0.55738217 0.97460502 0.56004363 0.97460502 0.56270522 0.97460502 0.56536674 0.97460502
		 0.56802821 0.97460502 0.57068968 0.97460502 0.5733512 0.97460502 0.57601273 0.97460502
		 0.5786742 0.97460502 0.58133572 0.97460502 0.58399737 0.97460502 0.58665884 0.97460502
		 0.58932042 0.97460502 0.59198189 0.97460502 0.59464324 0.97460502 0.55738217 0.97726643
		 0.56004363 0.97726643 0.56270522 0.97726643 0.56536674 0.97726643 0.56802821 0.97726643
		 0.57068968 0.97726643 0.5733512 0.97726643 0.57601273 0.97726643 0.5786742 0.97726643
		 0.58133572 0.97726643 0.58399737 0.97726643 0.58665884 0.97726643 0.58932042 0.97726643
		 0.59198189 0.97726643 0.59464324 0.97726643 0.55738217 0.97992796 0.56004363 0.97992796
		 0.56270522 0.97992796 0.56536674 0.97992796 0.56802821 0.97992796 0.57068968 0.97992796
		 0.5733512 0.97992796 0.57601273 0.97992796 0.5786742 0.97992796 0.58133572 0.97992796
		 0.58399737 0.97992796 0.58665884 0.97992796 0.58932042 0.97992796 0.59198189 0.97992796
		 0.59464324 0.97992796 0.55738217 0.98258954 0.56004363 0.98258954 0.56270522 0.98258954
		 0.56536674 0.98258954 0.56802821 0.98258954 0.57068968 0.98258954 0.5733512 0.98258954
		 0.57601273 0.98258954 0.5786742 0.98258954 0.58133572 0.98258954 0.58399737 0.98258954
		 0.58665884 0.98258954 0.58932042 0.98258954 0.59198189 0.98258954 0.59464324 0.98258954
		 0.55738217 0.98525101 0.56004363 0.98525101 0.56270522 0.98525101 0.56536674 0.98525101
		 0.56802821 0.98525101 0.57068968 0.98525101 0.5733512 0.98525101 0.57601273 0.98525101
		 0.5786742 0.98525101 0.58133572 0.98525101 0.58399737 0.98525101 0.58665884 0.98525101
		 0.58932042 0.98525101 0.59198189 0.98525101 0.59464324 0.98525101 0.55871296 0.98791254
		 0.56137443 0.98791254 0.56403589 0.98791254 0.56669748 0.98791254 0.56935894 0.98791254
		 0.57202053 0.98791254 0.574682 0.98791254 0.57734352 0.98791254 0.58000511 0.98791254
		 0.58266664 0.98791254 0.58532804 0.98791254 0.58798957 0.98791254 0.59065115 0.98791254
		 0.59331262 0.98791254;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 113 ".vt[0:112]"  1.070125818 6.97132397 1.61947858 1.0045734644 7.056482315 1.59532464
		 0.90984744 7.11263514 1.59782767 0.80470949 7.12866163 1.62649167 0.70998347 7.10138655 1.67563963
		 0.64443099 7.036212921 1.73553705 0.62103558 6.94604874 1.7943207 0.64443099 6.84875202 1.84034753
		 0.70998341 6.76359367 1.86450148 0.80470943 6.70744038 1.86199844 0.90984738 6.69141436 1.83333445
		 1.0045733452 6.71868896 1.78418648 1.070125818 6.78386307 1.72428894 1.093521237 6.87402725 1.66550541
		 1.092441916 6.9992137 1.66370285 1.025203705 7.086562157 1.6389277 0.92804164 7.14415932 1.64149499
		 0.82019991 7.1605978 1.67089629 0.72303784 7.13262129 1.72130811 0.65579957 7.06577158 1.78274596
		 0.6318025 6.97328854 1.8430413 0.65579951 6.87348986 1.89025176 0.72303772 6.7861414 1.9150269
		 0.82019979 6.72854424 1.91245961 0.92804158 6.71210575 1.88305831 1.025203705 6.74008226 1.83264649
		 1.092441916 6.80693197 1.77120864 1.11643898 6.89941502 1.7109133 1.10381043 7.02395153 1.71360707
		 1.038258076 7.10910988 1.68945313 0.94353205 7.16526318 1.69195616 0.83839411 7.1812892 1.72062016
		 0.74366808 7.15401459 1.76976812 0.67811561 7.088840485 1.82966566 0.65472019 6.9986763 1.88844919
		 0.67811561 6.90137959 1.93447602 0.74366802 6.81622124 1.95862997 0.83839405 6.76006842 1.95612693
		 0.94353199 6.74404192 1.92746294 1.038257957 6.77131701 1.87831497 1.10381043 6.83649063 1.81841743
		 1.12720585 6.92665482 1.7596339 1.10366142 7.044296741 1.76668906 1.04308188 7.1229949 1.74436748
		 0.95554185 7.17488813 1.7466805 0.85837978 7.1896987 1.77317011 0.77083981 7.16449308 1.81858957
		 0.71026021 7.10426331 1.87394321 0.68863964 7.020938873 1.92826736 0.71026015 6.93102312 1.97080255
		 0.77083975 6.85232496 1.99312413 0.85837972 6.80043173 1.99081111 0.95554179 6.78562117 1.96432149
		 1.04308176 6.81082726 1.91890192 1.10366142 6.87105656 1.8635484 1.12528205 6.95438099 1.80922413
		 1.092002273 7.059228897 1.82028687 1.039433241 7.12752056 1.80091691 0.96346891 7.17255211 1.80292404
		 0.8791548 7.1854043 1.82591093 0.80319047 7.1635313 1.8653245 0.75062144 7.11126614 1.91335845
		 0.7318598 7.03895998 1.96049929 0.75062144 6.96093416 1.99740994 0.80319035 6.8926425 2.0167799
		 0.87915474 6.84761095 2.014772654 0.96346885 6.83475876 1.99178588 1.039433241 6.85663176 1.95237231
		 1.092002153 6.90889692 1.90433824 1.11076391 6.98120308 1.85719752 1.069417477 7.06799984 1.87171292
		 1.027495146 7.12246037 1.8562659 0.96691561 7.15837193 1.85786653 0.8996774 7.16862106 1.87619793
		 0.8390978 7.15117836 1.90762925 0.79717547 7.10949802 1.94593513 0.78221351 7.051835537 1.98352861
		 0.79717541 6.9896121 2.012963772 0.8390978 6.93515158 2.028410912 0.89967734 6.89924002 2.026810169
		 0.96691561 6.88899088 2.0084788799 1.027495146 6.90643358 1.97704756 1.069417477 6.94811392 1.93874168
		 1.084379435 7.0057764053 1.9011482 1.037039876 7.070169449 1.91838861 1.0078662634 7.10806799 1.90763903
		 0.96570921 7.13305855 1.90875292 0.91891843 7.14019108 1.92150974 0.87676144 7.12805271 1.94338262
		 0.84758782 7.099047661 1.97003949 0.83717591 7.05892086 1.99620056 0.84758782 7.015619755 2.016684532
		 0.87676138 6.97772074 2.027433872 0.91891843 6.95273018 2.026319981 0.96570921 6.94559765 2.013563395
		 1.0078662634 6.95773602 1.9916904 1.037039876 6.98674107 1.96503353 1.047451735 7.026868343 1.93887246
		 0.99649274 7.065628529 1.95797324 0.98153079 7.085065365 1.95246029 0.95991021 7.097881794 1.95303154
		 0.93591321 7.10153961 1.95957398 0.91429257 7.095314503 1.9707917 0.89933068 7.080439091 1.98446286
		 0.89399081 7.059859276 1.99787986 0.89933068 7.037652016 2.0083851814 0.91429257 7.018215179 2.013898134
		 0.93591315 7.0053987503 2.013326883 0.95991021 7.0017409325 2.0067844391 0.98153079 7.0079660416 1.99556673
		 0.99649274 7.022841454 1.98189557 1.0018326044 7.043421268 1.96847856 0.94980937 7.054605007 1.98848212;
	setAttr -s 224 ".ed";
	setAttr ".ed[0:165]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0 7 8 0 8 9 0
		 9 10 0 10 11 0 11 12 0 12 13 0 13 0 0 14 15 1 15 16 1 16 17 1 17 18 1 18 19 1 19 20 1
		 20 21 1 21 22 1 22 23 1 23 24 1 24 25 1 25 26 1 26 27 1 27 14 1 28 29 1 29 30 1 30 31 1
		 31 32 1 32 33 1 33 34 1 34 35 1 35 36 1 36 37 1 37 38 1 38 39 1 39 40 1 40 41 1 41 28 1
		 42 43 1 43 44 1 44 45 1 45 46 1 46 47 1 47 48 1 48 49 1 49 50 1 50 51 1 51 52 1 52 53 1
		 53 54 1 54 55 1 55 42 1 56 57 1 57 58 1 58 59 1 59 60 1 60 61 1 61 62 1 62 63 1 63 64 1
		 64 65 1 65 66 1 66 67 1 67 68 1 68 69 1 69 56 1 70 71 1 71 72 1 72 73 1 73 74 1 74 75 1
		 75 76 1 76 77 1 77 78 1 78 79 1 79 80 1 80 81 1 81 82 1 82 83 1 83 70 1 84 85 1 85 86 1
		 86 87 1 87 88 1 88 89 1 89 90 1 90 91 1 91 92 1 92 93 1 93 94 1 94 95 1 95 96 1 96 97 1
		 97 84 1 98 99 1 99 100 1 100 101 1 101 102 1 102 103 1 103 104 1 104 105 1 105 106 1
		 106 107 1 107 108 1 108 109 1 109 110 1 110 111 1 111 98 1 0 14 1 1 15 1 2 16 1 3 17 1
		 4 18 1 5 19 1 6 20 1 7 21 1 8 22 1 9 23 1 10 24 1 11 25 1 12 26 1 13 27 1 14 28 1
		 15 29 1 16 30 1 17 31 1 18 32 1 19 33 1 20 34 1 21 35 1 22 36 1 23 37 1 24 38 1 25 39 1
		 26 40 1 27 41 1 28 42 1 29 43 1 30 44 1 31 45 1 32 46 1 33 47 1 34 48 1 35 49 1 36 50 1
		 37 51 1 38 52 1 39 53 1 40 54 1 41 55 1 42 56 1 43 57 1 44 58 1 45 59 1 46 60 1 47 61 1
		 48 62 1 49 63 1 50 64 1 51 65 1 52 66 1 53 67 1;
	setAttr ".ed[166:223]" 54 68 1 55 69 1 56 70 1 57 71 1 58 72 1 59 73 1 60 74 1
		 61 75 1 62 76 1 63 77 1 64 78 1 65 79 1 66 80 1 67 81 1 68 82 1 69 83 1 70 84 1 71 85 1
		 72 86 1 73 87 1 74 88 1 75 89 1 76 90 1 77 91 1 78 92 1 79 93 1 80 94 1 81 95 1 82 96 1
		 83 97 1 84 98 1 85 99 1 86 100 1 87 101 1 88 102 1 89 103 1 90 104 1 91 105 1 92 106 1
		 93 107 1 94 108 1 95 109 1 96 110 1 97 111 1 98 112 1 99 112 1 100 112 1 101 112 1
		 102 112 1 103 112 1 104 112 1 105 112 1 106 112 1 107 112 1 108 112 1 109 112 1 110 112 1
		 111 112 1;
	setAttr -s 112 -ch 434 ".fc[0:111]" -type "polyFaces" 
		f 4 0 113 -15 -113
		mu 0 4 0 1 16 15
		f 4 1 114 -16 -114
		mu 0 4 1 2 17 16
		f 4 2 115 -17 -115
		mu 0 4 2 3 18 17
		f 4 3 116 -18 -116
		mu 0 4 3 4 19 18
		f 4 4 117 -19 -117
		mu 0 4 4 5 20 19
		f 4 5 118 -20 -118
		mu 0 4 5 6 21 20
		f 4 6 119 -21 -119
		mu 0 4 6 7 22 21
		f 4 7 120 -22 -120
		mu 0 4 7 8 23 22
		f 4 8 121 -23 -121
		mu 0 4 8 9 24 23
		f 4 9 122 -24 -122
		mu 0 4 9 10 25 24
		f 4 10 123 -25 -123
		mu 0 4 10 11 26 25
		f 4 11 124 -26 -124
		mu 0 4 11 12 27 26
		f 4 12 125 -27 -125
		mu 0 4 12 13 28 27
		f 4 13 112 -28 -126
		mu 0 4 13 14 29 28
		f 4 14 127 -29 -127
		mu 0 4 15 16 31 30
		f 4 15 128 -30 -128
		mu 0 4 16 17 32 31
		f 4 16 129 -31 -129
		mu 0 4 17 18 33 32
		f 4 17 130 -32 -130
		mu 0 4 18 19 34 33
		f 4 18 131 -33 -131
		mu 0 4 19 20 35 34
		f 4 19 132 -34 -132
		mu 0 4 20 21 36 35
		f 4 20 133 -35 -133
		mu 0 4 21 22 37 36
		f 4 21 134 -36 -134
		mu 0 4 22 23 38 37
		f 4 22 135 -37 -135
		mu 0 4 23 24 39 38
		f 4 23 136 -38 -136
		mu 0 4 24 25 40 39
		f 4 24 137 -39 -137
		mu 0 4 25 26 41 40
		f 4 25 138 -40 -138
		mu 0 4 26 27 42 41
		f 4 26 139 -41 -139
		mu 0 4 27 28 43 42
		f 4 27 126 -42 -140
		mu 0 4 28 29 44 43
		f 4 28 141 -43 -141
		mu 0 4 30 31 46 45
		f 4 29 142 -44 -142
		mu 0 4 31 32 47 46
		f 4 30 143 -45 -143
		mu 0 4 32 33 48 47
		f 4 31 144 -46 -144
		mu 0 4 33 34 49 48
		f 4 32 145 -47 -145
		mu 0 4 34 35 50 49
		f 4 33 146 -48 -146
		mu 0 4 35 36 51 50
		f 4 34 147 -49 -147
		mu 0 4 36 37 52 51
		f 4 35 148 -50 -148
		mu 0 4 37 38 53 52
		f 4 36 149 -51 -149
		mu 0 4 38 39 54 53
		f 4 37 150 -52 -150
		mu 0 4 39 40 55 54
		f 4 38 151 -53 -151
		mu 0 4 40 41 56 55
		f 4 39 152 -54 -152
		mu 0 4 41 42 57 56
		f 4 40 153 -55 -153
		mu 0 4 42 43 58 57
		f 4 41 140 -56 -154
		mu 0 4 43 44 59 58
		f 4 42 155 -57 -155
		mu 0 4 45 46 61 60
		f 4 43 156 -58 -156
		mu 0 4 46 47 62 61
		f 4 44 157 -59 -157
		mu 0 4 47 48 63 62
		f 4 45 158 -60 -158
		mu 0 4 48 49 64 63
		f 4 46 159 -61 -159
		mu 0 4 49 50 65 64
		f 4 47 160 -62 -160
		mu 0 4 50 51 66 65
		f 4 48 161 -63 -161
		mu 0 4 51 52 67 66
		f 4 49 162 -64 -162
		mu 0 4 52 53 68 67
		f 4 50 163 -65 -163
		mu 0 4 53 54 69 68
		f 4 51 164 -66 -164
		mu 0 4 54 55 70 69
		f 4 52 165 -67 -165
		mu 0 4 55 56 71 70
		f 4 53 166 -68 -166
		mu 0 4 56 57 72 71
		f 4 54 167 -69 -167
		mu 0 4 57 58 73 72
		f 4 55 154 -70 -168
		mu 0 4 58 59 74 73
		f 4 56 169 -71 -169
		mu 0 4 60 61 76 75
		f 4 57 170 -72 -170
		mu 0 4 61 62 77 76
		f 4 58 171 -73 -171
		mu 0 4 62 63 78 77
		f 4 59 172 -74 -172
		mu 0 4 63 64 79 78
		f 4 60 173 -75 -173
		mu 0 4 64 65 80 79
		f 4 61 174 -76 -174
		mu 0 4 65 66 81 80
		f 4 62 175 -77 -175
		mu 0 4 66 67 82 81
		f 4 63 176 -78 -176
		mu 0 4 67 68 83 82
		f 4 64 177 -79 -177
		mu 0 4 68 69 84 83
		f 4 65 178 -80 -178
		mu 0 4 69 70 85 84
		f 4 66 179 -81 -179
		mu 0 4 70 71 86 85
		f 4 67 180 -82 -180
		mu 0 4 71 72 87 86
		f 4 68 181 -83 -181
		mu 0 4 72 73 88 87
		f 4 69 168 -84 -182
		mu 0 4 73 74 89 88
		f 4 70 183 -85 -183
		mu 0 4 75 76 91 90
		f 4 71 184 -86 -184
		mu 0 4 76 77 92 91
		f 4 72 185 -87 -185
		mu 0 4 77 78 93 92
		f 4 73 186 -88 -186
		mu 0 4 78 79 94 93
		f 4 74 187 -89 -187
		mu 0 4 79 80 95 94
		f 4 75 188 -90 -188
		mu 0 4 80 81 96 95
		f 4 76 189 -91 -189
		mu 0 4 81 82 97 96
		f 4 77 190 -92 -190
		mu 0 4 82 83 98 97
		f 4 78 191 -93 -191
		mu 0 4 83 84 99 98
		f 4 79 192 -94 -192
		mu 0 4 84 85 100 99
		f 4 80 193 -95 -193
		mu 0 4 85 86 101 100
		f 4 81 194 -96 -194
		mu 0 4 86 87 102 101
		f 4 82 195 -97 -195
		mu 0 4 87 88 103 102
		f 4 83 182 -98 -196
		mu 0 4 88 89 104 103
		f 4 84 197 -99 -197
		mu 0 4 90 91 106 105
		f 4 85 198 -100 -198
		mu 0 4 91 92 107 106
		f 4 86 199 -101 -199
		mu 0 4 92 93 108 107
		f 4 87 200 -102 -200
		mu 0 4 93 94 109 108
		f 4 88 201 -103 -201
		mu 0 4 94 95 110 109
		f 4 89 202 -104 -202
		mu 0 4 95 96 111 110
		f 4 90 203 -105 -203
		mu 0 4 96 97 112 111
		f 4 91 204 -106 -204
		mu 0 4 97 98 113 112
		f 4 92 205 -107 -205
		mu 0 4 98 99 114 113
		f 4 93 206 -108 -206
		mu 0 4 99 100 115 114
		f 4 94 207 -109 -207
		mu 0 4 100 101 116 115
		f 4 95 208 -110 -208
		mu 0 4 101 102 117 116
		f 4 96 209 -111 -209
		mu 0 4 102 103 118 117
		f 4 97 196 -112 -210
		mu 0 4 103 104 119 118
		f 3 98 211 -211
		mu 0 3 105 106 120
		f 3 99 212 -212
		mu 0 3 106 107 121
		f 3 100 213 -213
		mu 0 3 107 108 122
		f 3 101 214 -214
		mu 0 3 108 109 123
		f 3 102 215 -215
		mu 0 3 109 110 124
		f 3 103 216 -216
		mu 0 3 110 111 125
		f 3 104 217 -217
		mu 0 3 111 112 126
		f 3 105 218 -218
		mu 0 3 112 113 127
		f 3 106 219 -219
		mu 0 3 113 114 128
		f 3 107 220 -220
		mu 0 3 114 115 129
		f 3 108 221 -221
		mu 0 3 115 116 130
		f 3 109 222 -222
		mu 0 3 116 117 131
		f 3 110 223 -223
		mu 0 3 117 118 132
		f 3 111 210 -224
		mu 0 3 118 119 133;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".vcs" 2;
createNode transform -n "lBlackEyeLid" -p "Geo";
	rename -uid "BD2949B9-4AC1-1F2F-B17A-37BC34EA5F26";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" 0.87412069396722736 3.0449335506028685 1.776977325145773 ;
	setAttr ".sp" -type "double3" 0.87412069396722736 3.0449335506028685 1.776977325145773 ;
createNode mesh -n "lBlackEyeLidShape" -p "lBlackEyeLid";
	rename -uid "0EF0974E-4FEF-B23E-6FF3-8CB56ED17565";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.3140500639724943 0.98416136922659692 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vcs" 2;
createNode mesh -n "lBlackEyeLidShapeOrig" -p "lBlackEyeLid";
	rename -uid "BF12ED41-4390-D780-ABEC-349F4C85ED98";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 134 ".uvst[0].uvsp[0:133]" -type "float2" 0 0.42857143 0.071428575
		 0.42857143 0.14285715 0.42857143 0.21428573 0.42857143 0.2857143 0.42857143 0.35714287
		 0.42857143 0.42857143 0.42857143 0.5 0.42857143 0.5714286 0.42857143 0.64285719 0.42857143
		 0.71428579 0.42857143 0.78571439 0.42857143 0.85714298 0.42857143 0.92857158 0.42857143
		 1.000000119209 0.42857143 0 0.5 0.071428575 0.5 0.14285715 0.5 0.21428573 0.5 0.2857143
		 0.5 0.35714287 0.5 0.42857143 0.5 0.5 0.5 0.5714286 0.5 0.64285719 0.5 0.71428579
		 0.5 0.78571439 0.5 0.85714298 0.5 0.92857158 0.5 1.000000119209 0.5 0 0.5714286 0.071428575
		 0.5714286 0.14285715 0.5714286 0.21428573 0.5714286 0.2857143 0.5714286 0.35714287
		 0.5714286 0.42857143 0.5714286 0.5 0.5714286 0.5714286 0.5714286 0.64285719 0.5714286
		 0.71428579 0.5714286 0.78571439 0.5714286 0.85714298 0.5714286 0.92857158 0.5714286
		 1.000000119209 0.5714286 0 0.64285719 0.071428575 0.64285719 0.14285715 0.64285719
		 0.21428573 0.64285719 0.2857143 0.64285719 0.35714287 0.64285719 0.42857143 0.64285719
		 0.5 0.64285719 0.5714286 0.64285719 0.64285719 0.64285719 0.71428579 0.64285719 0.78571439
		 0.64285719 0.85714298 0.64285719 0.92857158 0.64285719 1.000000119209 0.64285719
		 0 0.71428579 0.071428575 0.71428579 0.14285715 0.71428579 0.21428573 0.71428579 0.2857143
		 0.71428579 0.35714287 0.71428579 0.42857143 0.71428579 0.5 0.71428579 0.5714286 0.71428579
		 0.64285719 0.71428579 0.71428579 0.71428579 0.78571439 0.71428579 0.85714298 0.71428579
		 0.92857158 0.71428579 1.000000119209 0.71428579 0 0.78571439 0.071428575 0.78571439
		 0.14285715 0.78571439 0.21428573 0.78571439 0.2857143 0.78571439 0.35714287 0.78571439
		 0.42857143 0.78571439 0.5 0.78571439 0.5714286 0.78571439 0.64285719 0.78571439 0.71428579
		 0.78571439 0.78571439 0.78571439 0.85714298 0.78571439 0.92857158 0.78571439 1.000000119209
		 0.78571439 0 0.85714298 0.071428575 0.85714298 0.14285715 0.85714298 0.21428573 0.85714298
		 0.2857143 0.85714298 0.35714287 0.85714298 0.42857143 0.85714298 0.5 0.85714298 0.5714286
		 0.85714298 0.64285719 0.85714298 0.71428579 0.85714298 0.78571439 0.85714298 0.85714298
		 0.85714298 0.92857158 0.85714298 1.000000119209 0.85714298 0 0.92857158 0.071428575
		 0.92857158 0.14285715 0.92857158 0.21428573 0.92857158 0.2857143 0.92857158 0.35714287
		 0.92857158 0.42857143 0.92857158 0.5 0.92857158 0.5714286 0.92857158 0.64285719 0.92857158
		 0.71428579 0.92857158 0.78571439 0.92857158 0.85714298 0.92857158 0.92857158 0.92857158
		 1.000000119209 0.92857158 0.035714287 1 0.10714287 1 0.17857143 1 0.25 1 0.3214286
		 1 0.39285716 1 0.46428573 1 0.53571433 1 0.60714287 1 0.67857146 1 0.75000006 1 0.8214286
		 1 0.89285719 1 0.96428573 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 113 ".pt[0:112]" -type "float3"  -1.9485055 7.1938448 2.0424838 
		-1.612431 7.2790031 2.3575537 -1.1267895 7.3351564 2.5483119 -0.58776778 7.3511825 
		2.5769761 -0.10212611 7.3239079 2.4378691 0.23394853 7.2587337 2.1585426 0.35389221 
		7.1685696 1.7943208 0.23394868 7.0712729 1.4173423 -0.10212573 6.9861145 1.1022723 
		-0.58776742 6.9299617 0.91151422 -1.1267891 6.9139352 0.88285005 -1.6124309 6.9412103 
		1.0219572 -1.9485054 7.0063839 1.3012836 -2.068449 7.0965481 1.6655054 -1.9934108 
		6.9992137 2.0975864 -1.6486936 7.0865622 2.420759 -1.1505628 7.1441593 2.6164229 
		-0.59767914 7.1605978 2.6458242 -0.099548236 7.1326213 2.5031397 0.24516913 7.0657716 
		2.2166297 0.36819741 6.9732885 1.8430414 0.24516936 6.8734899 1.4563682 -0.099547863 
		6.7861414 1.1331955 -0.59767872 6.7285442 0.93753183 -1.1505624 6.7121058 0.90813047 
		-1.6486933 6.7400823 1.050815 -1.9934107 6.806932 1.3373249 -2.1164389 6.899415 1.7109133 
		-1.9821901 6.8014307 2.1366122 -1.6461158 6.8865891 2.4516823 -1.1604741 6.9427419 
		2.6424403 -0.62145245 6.9587684 2.6711047 -0.13581073 6.9314933 2.5319974 0.20026392 
		6.8663197 2.252671 0.32020757 6.7761555 1.8884493 0.20026407 6.6788588 1.5114708 
		-0.13581036 6.5937004 1.1964008 -0.62145203 6.5375471 1.0056428 -1.1604737 6.5215211 
		0.97697854 -1.6461155 6.5487957 1.1160856 -1.98219 6.6139698 1.3954121 -2.1021338 
		6.704134 1.7596339 -1.9154063 6.6104131 2.1576045 -1.6048268 6.6891112 2.4487731 
		-1.1560265 6.7410045 2.6250601 -0.65789557 6.755815 2.6515498 -0.20909509 6.7306089 
		2.5229955 0.10148448 6.6703796 2.264859 0.21232913 6.5870552 1.9282676 0.1014847 
		6.4971395 1.579887 -0.20909479 6.4184413 1.2887185 -0.65789521 6.3665481 1.1124315 
		-1.1560261 6.3517375 1.0859419 -1.6048266 6.3769431 1.2144961 -1.9154062 6.4371729 
		1.4726326 -2.0262508 6.5204973 1.8092242 -1.7964081 6.4357395 2.1595106 -1.5268973 
		6.5040307 2.4121771 -1.1374429 6.5490623 2.5651534 -0.70518112 6.5619144 2.5881402 
		-0.31572664 6.5400414 2.4765849 -0.046215776 6.4877763 2.2525826 0.049971607 6.4154701 
		1.9604994 -0.046215553 6.3374443 1.6581861 -0.31572634 6.2691526 1.4055196 -0.70518076 
		6.2241211 1.2525434 -1.1374426 6.2112694 1.2295566 -1.5268971 6.2331419 1.3411118 
		-1.7964081 6.2854071 1.5651143 -1.8925953 6.3577137 1.8571975 -1.6311625 6.2861686 
		2.1422348 -1.4162349 6.3406291 2.3437297 -1.1056553 6.3765407 2.4657242 -0.76093799 
		6.3867898 2.4840555 -0.45035839 6.3693466 2.3950932 -0.23543063 6.3276663 2.2164574 
		-0.1587237 6.2700043 1.9835287 -0.23543048 6.2077808 1.7424419 -0.45035812 6.1533198 
		1.5409471 -0.76093769 6.1174088 1.4189527 -1.1056551 6.1071596 1.4006212 -1.4162346 
		6.1246023 1.4895836 -1.6311624 6.1662827 1.6682196 -1.7078693 6.2239447 1.9011482 
		-1.4279556 6.1692004 2.1066437 -1.2783884 6.2070994 2.2468629 -1.0622575 6.23209 
		2.3317583 -0.82237029 6.239222 2.3445151 -0.60623938 6.2270837 2.2826066 -0.45667213 
		6.1980786 2.1582947 -0.40329218 6.1579518 1.9962007 -0.45667204 6.1146507 1.8284295 
		-0.60623926 6.0767517 1.6882101 -0.82237011 6.0517612 1.6033148 -1.0622574 6.0446286 
		1.5905581 -1.2783883 6.0567675 1.6524665 -1.4279556 6.0857725 1.7767785 -1.4813355 
		6.1258993 1.9388725 -1.1969771 6.0907006 2.0545216 -1.1202704 6.1101375 2.1264341 
		-1.0094258 6.1229539 2.1699734 -0.88639766 6.1266117 2.1765158 -0.77555305 6.1203866 
		2.1447656 -0.69884622 6.1055112 2.0810111 -0.67146987 6.0849314 1.9978799 -0.69884622 
		6.0627241 1.911837 -0.77555299 6.0432873 1.8399243 -0.88639754 6.0304708 1.796385 
		-1.0094258 6.026813 1.7898426 -1.1202703 6.0330381 1.8215929 -1.1969771 6.0479136 
		1.8853474 -1.2243534 6.0684934 1.9684787 -0.94980931 6.054605 1.9884821;
	setAttr -s 113 ".vt[0:112]"  0.8783797 -0.22252098 -0.4230051 0.6078577 -0.22252098 -0.76222908
		 0.21694204 -0.22252098 -0.95048428 -0.21694165 -0.22252098 -0.95048434 -0.60785735 -0.22252098 -0.76222932
		 -0.87837952 -0.22252098 -0.42300546 -0.97492778 -0.22252098 -1.7433069e-007 -0.87837964 -0.22252098 0.42300516
		 -0.60785764 -0.22252098 0.76222914 -0.21694197 -0.22252098 0.95048428 0.21694176 -0.22252098 0.9504844
		 0.60785753 -0.22252098 0.76222932 0.87837964 -0.22252098 0.42300537 0.9749279 -0.22252098 0
		 0.90096891 0 -0.43388346 0.62348992 0 -0.78183126 0.22252111 0 -0.97492778 -0.22252071 0 -0.97492784
		 -0.62348956 0 -0.7818315 -0.90096867 0 -0.43388385 -0.99999988 0 -1.7881393e-007
		 -0.90096885 0 0.43388355 -0.62348986 0 0.78183132 -0.22252104 0 0.97492778 0.22252083 0 0.9749279
		 0.62348974 0 0.7818315 0.90096885 0 0.43388376 1 0 0 0.8783797 0.22252098 -0.4230051
		 0.6078577 0.22252098 -0.76222908 0.21694204 0.22252098 -0.95048428 -0.21694165 0.22252098 -0.95048434
		 -0.60785735 0.22252098 -0.76222932 -0.87837952 0.22252098 -0.42300546 -0.97492778 0.22252098 -1.7433069e-007
		 -0.87837964 0.22252098 0.42300516 -0.60785764 0.22252098 0.76222914 -0.21694197 0.22252098 0.95048428
		 0.21694176 0.22252098 0.9504844 0.60785753 0.22252098 0.76222932 0.87837964 0.22252098 0.42300537
		 0.9749279 0.22252098 0 0.81174493 0.43388376 -0.39091548 0.56174499 0.43388376 -0.70440561
		 0.20048459 0.43388376 -0.87837958 -0.20048423 0.43388376 -0.87837964 -0.56174469 0.43388376 -0.70440584
		 -0.81174469 0.43388376 -0.39091584 -0.90096873 0.43388376 -1.6110579e-007 -0.81174487 0.43388376 0.39091557
		 -0.56174493 0.43388376 0.70440567 -0.20048453 0.43388376 0.87837958 0.20048434 0.43388376 0.87837964
		 0.56174481 0.43388376 0.70440584 0.81174487 0.43388376 0.39091575 0.90096885 0.43388376 0
		 0.7044059 0.6234898 -0.33922374 0.48746407 0.6234898 -0.61126029 0.17397402 0.6234898 -0.76222926
		 -0.17397369 0.6234898 -0.76222932 -0.48746377 0.6234898 -0.61126047 -0.70440567 0.6234898 -0.33922407
		 -0.78183138 0.6234898 -1.3980237e-007 -0.70440584 0.6234898 0.33922383 -0.48746401 0.6234898 0.61126035
		 -0.17397396 0.6234898 0.76222926 0.1739738 0.6234898 0.76222932 0.48746392 0.6234898 0.61126047
		 0.70440584 0.6234898 0.33922398 0.7818315 0.6234898 0 0.56174499 0.78183144 -0.27052194
		 0.38873965 0.78183144 -0.48746386 0.13873966 0.78183144 -0.60785758 -0.13873941 0.78183144 -0.60785764
		 -0.38873941 0.78183144 -0.48746401 -0.56174481 0.78183144 -0.27052218 -0.6234898 0.78183144 -1.1148867e-007
		 -0.56174493 0.78183144 0.270522 -0.38873962 0.78183144 0.48746389 -0.13873962 0.78183144 0.60785758
		 0.13873948 0.78183144 0.60785764 0.38873953 0.78183144 0.48746401 0.56174493 0.78183144 0.27052212
		 0.62348986 0.78183144 0 0.39091578 0.90096885 -0.18825498 0.27052215 0.90096885 -0.33922389
		 0.096548297 0.90096885 -0.42300534 -0.096548118 0.90096885 -0.42300534 -0.270522 0.90096885 -0.33922398
		 -0.39091566 0.90096885 -0.18825515 -0.4338837 0.90096885 -7.758446e-008 -0.39091575 0.90096885 0.18825503
		 -0.27052212 0.90096885 0.33922392 -0.096548267 0.90096885 0.42300534 0.09654817 0.90096885 0.42300537
		 0.27052206 0.90096885 0.33922398 0.39091575 0.90096885 0.18825512 0.43388376 0.90096885 0
		 0.20048444 0.9749279 -0.096548155 0.13873956 0.9749279 -0.17397383 0.049515605 0.9749279 -0.21694183
		 -0.049515516 0.9749279 -0.21694185 -0.13873948 0.9749279 -0.17397387 -0.2004844 0.9749279 -0.096548237
		 -0.2225209 0.9749279 -3.9789843e-008 -0.20048442 0.9749279 0.09654817 -0.13873954 0.9749279 0.17397383
		 -0.04951559 0.9749279 0.21694183 0.049515542 0.9749279 0.21694186 0.13873951 0.9749279 0.17397387
		 0.20048442 0.9749279 0.096548215 0.22252093 0.9749279 0 0 1 0;
	setAttr -s 224 ".ed";
	setAttr ".ed[0:165]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0 7 8 0 8 9 0
		 9 10 0 10 11 0 11 12 0 12 13 0 13 0 0 14 15 1 15 16 1 16 17 1 17 18 1 18 19 1 19 20 1
		 20 21 1 21 22 1 22 23 1 23 24 1 24 25 1 25 26 1 26 27 1 27 14 1 28 29 1 29 30 1 30 31 1
		 31 32 1 32 33 1 33 34 1 34 35 1 35 36 1 36 37 1 37 38 1 38 39 1 39 40 1 40 41 1 41 28 1
		 42 43 1 43 44 1 44 45 1 45 46 1 46 47 1 47 48 1 48 49 1 49 50 1 50 51 1 51 52 1 52 53 1
		 53 54 1 54 55 1 55 42 1 56 57 1 57 58 1 58 59 1 59 60 1 60 61 1 61 62 1 62 63 1 63 64 1
		 64 65 1 65 66 1 66 67 1 67 68 1 68 69 1 69 56 1 70 71 1 71 72 1 72 73 1 73 74 1 74 75 1
		 75 76 1 76 77 1 77 78 1 78 79 1 79 80 1 80 81 1 81 82 1 82 83 1 83 70 1 84 85 1 85 86 1
		 86 87 1 87 88 1 88 89 1 89 90 1 90 91 1 91 92 1 92 93 1 93 94 1 94 95 1 95 96 1 96 97 1
		 97 84 1 98 99 1 99 100 1 100 101 1 101 102 1 102 103 1 103 104 1 104 105 1 105 106 1
		 106 107 1 107 108 1 108 109 1 109 110 1 110 111 1 111 98 1 0 14 1 1 15 1 2 16 1 3 17 1
		 4 18 1 5 19 1 6 20 1 7 21 1 8 22 1 9 23 1 10 24 1 11 25 1 12 26 1 13 27 1 14 28 1
		 15 29 1 16 30 1 17 31 1 18 32 1 19 33 1 20 34 1 21 35 1 22 36 1 23 37 1 24 38 1 25 39 1
		 26 40 1 27 41 1 28 42 1 29 43 1 30 44 1 31 45 1 32 46 1 33 47 1 34 48 1 35 49 1 36 50 1
		 37 51 1 38 52 1 39 53 1 40 54 1 41 55 1 42 56 1 43 57 1 44 58 1 45 59 1 46 60 1 47 61 1
		 48 62 1 49 63 1 50 64 1 51 65 1 52 66 1 53 67 1;
	setAttr ".ed[166:223]" 54 68 1 55 69 1 56 70 1 57 71 1 58 72 1 59 73 1 60 74 1
		 61 75 1 62 76 1 63 77 1 64 78 1 65 79 1 66 80 1 67 81 1 68 82 1 69 83 1 70 84 1 71 85 1
		 72 86 1 73 87 1 74 88 1 75 89 1 76 90 1 77 91 1 78 92 1 79 93 1 80 94 1 81 95 1 82 96 1
		 83 97 1 84 98 1 85 99 1 86 100 1 87 101 1 88 102 1 89 103 1 90 104 1 91 105 1 92 106 1
		 93 107 1 94 108 1 95 109 1 96 110 1 97 111 1 98 112 1 99 112 1 100 112 1 101 112 1
		 102 112 1 103 112 1 104 112 1 105 112 1 106 112 1 107 112 1 108 112 1 109 112 1 110 112 1
		 111 112 1;
	setAttr -s 112 -ch 434 ".fc[0:111]" -type "polyFaces" 
		f 4 112 14 -114 -1
		mu 0 4 0 15 16 1
		f 4 113 15 -115 -2
		mu 0 4 1 16 17 2
		f 4 114 16 -116 -3
		mu 0 4 2 17 18 3
		f 4 115 17 -117 -4
		mu 0 4 3 18 19 4
		f 4 116 18 -118 -5
		mu 0 4 4 19 20 5
		f 4 117 19 -119 -6
		mu 0 4 5 20 21 6
		f 4 118 20 -120 -7
		mu 0 4 6 21 22 7
		f 4 119 21 -121 -8
		mu 0 4 7 22 23 8
		f 4 120 22 -122 -9
		mu 0 4 8 23 24 9
		f 4 121 23 -123 -10
		mu 0 4 9 24 25 10
		f 4 122 24 -124 -11
		mu 0 4 10 25 26 11
		f 4 123 25 -125 -12
		mu 0 4 11 26 27 12
		f 4 124 26 -126 -13
		mu 0 4 12 27 28 13
		f 4 125 27 -113 -14
		mu 0 4 13 28 29 14
		f 4 126 28 -128 -15
		mu 0 4 15 30 31 16
		f 4 127 29 -129 -16
		mu 0 4 16 31 32 17
		f 4 128 30 -130 -17
		mu 0 4 17 32 33 18
		f 4 129 31 -131 -18
		mu 0 4 18 33 34 19
		f 4 130 32 -132 -19
		mu 0 4 19 34 35 20
		f 4 131 33 -133 -20
		mu 0 4 20 35 36 21
		f 4 132 34 -134 -21
		mu 0 4 21 36 37 22
		f 4 133 35 -135 -22
		mu 0 4 22 37 38 23
		f 4 134 36 -136 -23
		mu 0 4 23 38 39 24
		f 4 135 37 -137 -24
		mu 0 4 24 39 40 25
		f 4 136 38 -138 -25
		mu 0 4 25 40 41 26
		f 4 137 39 -139 -26
		mu 0 4 26 41 42 27
		f 4 138 40 -140 -27
		mu 0 4 27 42 43 28
		f 4 139 41 -127 -28
		mu 0 4 28 43 44 29
		f 4 140 42 -142 -29
		mu 0 4 30 45 46 31
		f 4 141 43 -143 -30
		mu 0 4 31 46 47 32
		f 4 142 44 -144 -31
		mu 0 4 32 47 48 33
		f 4 143 45 -145 -32
		mu 0 4 33 48 49 34
		f 4 144 46 -146 -33
		mu 0 4 34 49 50 35
		f 4 145 47 -147 -34
		mu 0 4 35 50 51 36
		f 4 146 48 -148 -35
		mu 0 4 36 51 52 37
		f 4 147 49 -149 -36
		mu 0 4 37 52 53 38
		f 4 148 50 -150 -37
		mu 0 4 38 53 54 39
		f 4 149 51 -151 -38
		mu 0 4 39 54 55 40
		f 4 150 52 -152 -39
		mu 0 4 40 55 56 41
		f 4 151 53 -153 -40
		mu 0 4 41 56 57 42
		f 4 152 54 -154 -41
		mu 0 4 42 57 58 43
		f 4 153 55 -141 -42
		mu 0 4 43 58 59 44
		f 4 154 56 -156 -43
		mu 0 4 45 60 61 46
		f 4 155 57 -157 -44
		mu 0 4 46 61 62 47
		f 4 156 58 -158 -45
		mu 0 4 47 62 63 48
		f 4 157 59 -159 -46
		mu 0 4 48 63 64 49
		f 4 158 60 -160 -47
		mu 0 4 49 64 65 50
		f 4 159 61 -161 -48
		mu 0 4 50 65 66 51
		f 4 160 62 -162 -49
		mu 0 4 51 66 67 52
		f 4 161 63 -163 -50
		mu 0 4 52 67 68 53
		f 4 162 64 -164 -51
		mu 0 4 53 68 69 54
		f 4 163 65 -165 -52
		mu 0 4 54 69 70 55
		f 4 164 66 -166 -53
		mu 0 4 55 70 71 56
		f 4 165 67 -167 -54
		mu 0 4 56 71 72 57
		f 4 166 68 -168 -55
		mu 0 4 57 72 73 58
		f 4 167 69 -155 -56
		mu 0 4 58 73 74 59
		f 4 168 70 -170 -57
		mu 0 4 60 75 76 61
		f 4 169 71 -171 -58
		mu 0 4 61 76 77 62
		f 4 170 72 -172 -59
		mu 0 4 62 77 78 63
		f 4 171 73 -173 -60
		mu 0 4 63 78 79 64
		f 4 172 74 -174 -61
		mu 0 4 64 79 80 65
		f 4 173 75 -175 -62
		mu 0 4 65 80 81 66
		f 4 174 76 -176 -63
		mu 0 4 66 81 82 67
		f 4 175 77 -177 -64
		mu 0 4 67 82 83 68
		f 4 176 78 -178 -65
		mu 0 4 68 83 84 69
		f 4 177 79 -179 -66
		mu 0 4 69 84 85 70
		f 4 178 80 -180 -67
		mu 0 4 70 85 86 71
		f 4 179 81 -181 -68
		mu 0 4 71 86 87 72
		f 4 180 82 -182 -69
		mu 0 4 72 87 88 73
		f 4 181 83 -169 -70
		mu 0 4 73 88 89 74
		f 4 182 84 -184 -71
		mu 0 4 75 90 91 76
		f 4 183 85 -185 -72
		mu 0 4 76 91 92 77
		f 4 184 86 -186 -73
		mu 0 4 77 92 93 78
		f 4 185 87 -187 -74
		mu 0 4 78 93 94 79
		f 4 186 88 -188 -75
		mu 0 4 79 94 95 80
		f 4 187 89 -189 -76
		mu 0 4 80 95 96 81
		f 4 188 90 -190 -77
		mu 0 4 81 96 97 82
		f 4 189 91 -191 -78
		mu 0 4 82 97 98 83
		f 4 190 92 -192 -79
		mu 0 4 83 98 99 84
		f 4 191 93 -193 -80
		mu 0 4 84 99 100 85
		f 4 192 94 -194 -81
		mu 0 4 85 100 101 86
		f 4 193 95 -195 -82
		mu 0 4 86 101 102 87
		f 4 194 96 -196 -83
		mu 0 4 87 102 103 88
		f 4 195 97 -183 -84
		mu 0 4 88 103 104 89
		f 4 196 98 -198 -85
		mu 0 4 90 105 106 91
		f 4 197 99 -199 -86
		mu 0 4 91 106 107 92
		f 4 198 100 -200 -87
		mu 0 4 92 107 108 93
		f 4 199 101 -201 -88
		mu 0 4 93 108 109 94
		f 4 200 102 -202 -89
		mu 0 4 94 109 110 95
		f 4 201 103 -203 -90
		mu 0 4 95 110 111 96
		f 4 202 104 -204 -91
		mu 0 4 96 111 112 97
		f 4 203 105 -205 -92
		mu 0 4 97 112 113 98
		f 4 204 106 -206 -93
		mu 0 4 98 113 114 99
		f 4 205 107 -207 -94
		mu 0 4 99 114 115 100
		f 4 206 108 -208 -95
		mu 0 4 100 115 116 101
		f 4 207 109 -209 -96
		mu 0 4 101 116 117 102
		f 4 208 110 -210 -97
		mu 0 4 102 117 118 103
		f 4 209 111 -197 -98
		mu 0 4 103 118 119 104
		f 3 210 -212 -99
		mu 0 3 105 120 106
		f 3 211 -213 -100
		mu 0 3 106 121 107
		f 3 212 -214 -101
		mu 0 3 107 122 108
		f 3 213 -215 -102
		mu 0 3 108 123 109
		f 3 214 -216 -103
		mu 0 3 109 124 110
		f 3 215 -217 -104
		mu 0 3 110 125 111
		f 3 216 -218 -105
		mu 0 3 111 126 112
		f 3 217 -219 -106
		mu 0 3 112 127 113
		f 3 218 -220 -107
		mu 0 3 113 128 114
		f 3 219 -221 -108
		mu 0 3 114 129 115
		f 3 220 -222 -109
		mu 0 3 115 130 116
		f 3 221 -223 -110
		mu 0 3 116 131 117
		f 3 222 -224 -111
		mu 0 3 117 132 118
		f 3 223 -211 -112
		mu 0 3 118 133 119;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "lBlackEyeLidShapeOrig1" -p "lBlackEyeLid";
	rename -uid "16C251A4-42A3-715F-6F37-10828C16170A";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 119 ".uvst[0].uvsp[0:118]" -type "float2" 0.29629949 0.97528607
		 0.29883528 0.97528607 0.30137107 0.97528607 0.30390689 0.97528607 0.30644268 0.97528607
		 0.30897847 0.97528607 0.31151429 0.97528607 0.31405008 0.97528607 0.31658587 0.97528607
		 0.31912169 0.97528607 0.32165748 0.97528607 0.32419327 0.97528607 0.32672909 0.97528607
		 0.32926488 0.97528607 0.33180067 0.97528607 0.29629949 0.97782189 0.29883528 0.97782189
		 0.30137107 0.97782189 0.30390689 0.97782189 0.30644268 0.97782189 0.30897847 0.97782189
		 0.31151429 0.97782189 0.31405008 0.97782189 0.31658587 0.97782189 0.31912169 0.97782189
		 0.32165748 0.97782189 0.32419327 0.97782189 0.32672909 0.97782189 0.32926488 0.97782189
		 0.33180067 0.97782189 0.29629949 0.98035771 0.29883528 0.98035771 0.30137107 0.98035771
		 0.30390689 0.98035771 0.30644268 0.98035771 0.30897847 0.98035771 0.31151429 0.98035771
		 0.31405008 0.98035771 0.31658587 0.98035771 0.31912169 0.98035771 0.32165748 0.98035771
		 0.32419327 0.98035771 0.32672909 0.98035771 0.32926488 0.98035771 0.33180067 0.98035771
		 0.29629949 0.98289347 0.29883528 0.98289347 0.30137107 0.98289347 0.30390689 0.98289347
		 0.30644268 0.98289347 0.30897847 0.98289347 0.31151429 0.98289347 0.31405008 0.98289347
		 0.31658587 0.98289347 0.31912169 0.98289347 0.32165748 0.98289347 0.32419327 0.98289347
		 0.32672909 0.98289347 0.32926488 0.98289347 0.33180067 0.98289347 0.29629949 0.98542929
		 0.29883528 0.98542929 0.30137107 0.98542929 0.30390689 0.98542929 0.30644268 0.98542929
		 0.30897847 0.98542929 0.31151429 0.98542929 0.31405008 0.98542929 0.31658587 0.98542929
		 0.31912169 0.98542929 0.32165748 0.98542929 0.32419327 0.98542929 0.32672909 0.98542929
		 0.32926488 0.98542929 0.33180067 0.98542929 0.29629949 0.98796511 0.29883528 0.98796511
		 0.30137107 0.98796511 0.30390689 0.98796511 0.30644268 0.98796511 0.30897847 0.98796511
		 0.31151429 0.98796511 0.31405008 0.98796511 0.31658587 0.98796511 0.31912169 0.98796511
		 0.32165748 0.98796511 0.32419327 0.98796511 0.32672909 0.98796511 0.32926488 0.98796511
		 0.33180067 0.98796511 0.29629949 0.99050087 0.29883528 0.99050087 0.30137107 0.99050087
		 0.30390689 0.99050087 0.30644268 0.99050087 0.30897847 0.99050087 0.31151429 0.99050087
		 0.31405008 0.99050087 0.31658587 0.99050087 0.31912169 0.99050087 0.32165748 0.99050087
		 0.32419327 0.99050087 0.32672909 0.99050087 0.32926488 0.99050087 0.33180067 0.99050087
		 0.2975674 0.99303669 0.30010316 0.99303669 0.30263901 0.99303669 0.3051748 0.99303669
		 0.30771056 0.99303669 0.31024641 0.99303669 0.3127822 0.99303669 0.31531796 0.99303669
		 0.31785381 0.99303669 0.3203896 0.99303669 0.32292536 0.99303669 0.32546115 0.99303669
		 0.327997 0.99303669 0.33053276 0.99303669;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 99 ".vt[0:98]"  1.14135528 2.97006726 1.75304544 1.089167714 2.86906004 1.80278909
		 0.99440771 2.80295253 1.84807479 0.87584412 2.7848382 1.87993336 0.7569598 2.81830478 1.89205468
		 0.66130126 2.89672327 1.88203824 0.60781461 3.0045626163 1.85186744 0.60709381 3.12046361 1.80751824
		 0.65928149 3.22147107 1.75777471 0.75404125 3.28757858 1.71248889 0.87260491 3.30569291 1.68063045
		 0.99148917 3.27222633 1.66850913 1.087147951 3.1938076 1.67852581 1.14063442 3.085968256 1.70869648
		 1.1227181 2.95012736 1.69688475 1.071838737 2.85165286 1.745381 0.97945487 2.78720307 1.78953159
		 0.86386383 2.76954246 1.82059109 0.74796027 2.80217004 1.83240867 0.65470004 2.87862277 1.82264316
		 0.60255444 2.98375821 1.79322886 0.60185176 3.09675312 1.74999189 0.652731 3.1952281 1.70149541
		 0.74511486 3.25967813 1.65734494 0.86070585 3.27733827 1.6262852 0.97660971 3.24471116 1.61446774
		 1.069869637 3.16825819 1.62423337 1.12201536 3.063122749 1.65364766 1.091620445 2.93495822 1.64490569
		 1.044600725 2.84395361 1.68972301 0.9592253 2.78439283 1.73052418 0.8524031 2.76807237 1.75922763
		 0.74529207 2.79822493 1.77014863 0.65910667 2.86887741 1.76112413 0.61091679 2.96603775 1.73394108
		 0.6102674 3.070461035 1.69398403 0.65728706 3.16146541 1.6491667 0.74266261 3.22102594 1.60836554
		 0.84948468 3.23734665 1.57966197 0.95659584 3.20719457 1.56874108 1.042781353 3.1365416 1.57776582
		 1.090971231 3.039381504 1.60494852 1.049621582 2.92531967 1.59971511 1.0088196993 2.84634972 1.63860619
		 0.93473345 2.79466438 1.67401195 0.8420366 2.78050184 1.69891989 0.74908912 2.80666733 1.70839691
		 0.67430025 2.86797738 1.70056558 0.63248277 2.95228958 1.67697704 0.63191915 3.042904615 1.64230359
		 0.67272115 3.12187529 1.60341251 0.74680746 3.17356038 1.56800663 0.83950406 3.18772268 1.54309869
		 0.93245167 3.16155767 1.53362191 1.0072405338 3.10024762 1.54145324 1.04905808 3.015934706 1.56504154
		 0.99882758 2.92169666 1.56357884 0.96628916 2.85872006 1.59459352 0.90720737 2.8175025 1.6228286
		 0.83328432 2.80620813 1.64269221 0.759161 2.82707453 1.65024972 0.6995188 2.87596798 1.64400434
		 0.66617048 2.94320464 1.62519324 0.66572112 3.015467644 1.59754217 0.69825953 3.078444719 1.56652749
		 0.75734138 3.11966181 1.53829241 0.83126467 3.13095593 1.51842868 0.90538776 3.11009026 1.51087105
		 0.96503007 3.061196804 1.51711655 0.99837828 2.99396038 1.53592765 0.94178563 2.92426896 1.53830874
		 0.91914219 2.88044381 1.55989182 0.87802744 2.8517611 1.57954061 0.82658458 2.8439014 1.59336352
		 0.7750026 2.85842204 1.5986228 0.73349792 2.89244676 1.59427679 0.71029097 2.93923664 1.58118618
		 0.70997822 2.98952413 1.56194377 0.73262155 3.033349276 1.54036081 0.77373648 3.062032461 1.52071226
		 0.82517916 3.06989193 1.50688922 0.87676102 3.055371046 1.50162995 0.918266 3.021346331 1.50597608
		 0.94147283 2.97455668 1.51906657 0.8813557 2.93290973 1.52517259 0.86974287 2.91043305 1.53624165
		 0.84865683 2.89572334 1.54631877 0.82227403 2.89169216 1.55340779 0.79581964 2.89913917 1.55610502
		 0.77453363 2.91658878 1.55387628 0.76263171 2.94058609 1.54716253 0.76247138 2.9663763 1.53729403
		 0.77408421 2.9888525 1.52622497 0.79517025 3.0035626888 1.51614797 0.82155317 3.0075933933 1.50905883
		 0.84800732 3.00014638901 1.50636148 0.86929351 2.98269677 1.50859046 0.88119525 2.95869994 1.51530397
		 0.82056832 2.94718409 1.52482867;
	setAttr -s 196 ".ed";
	setAttr ".ed[0:165]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0 7 8 0 8 9 0
		 9 10 0 10 11 0 11 12 0 12 13 0 13 0 0 14 15 1 15 16 1 16 17 1 17 18 1 18 19 1 19 20 1
		 20 21 1 21 22 1 22 23 1 23 24 1 24 25 1 25 26 1 26 27 1 27 14 1 28 29 1 29 30 1 30 31 1
		 31 32 1 32 33 1 33 34 1 34 35 1 35 36 1 36 37 1 37 38 1 38 39 1 39 40 1 40 41 1 41 28 1
		 42 43 1 43 44 1 44 45 1 45 46 1 46 47 1 47 48 1 48 49 1 49 50 1 50 51 1 51 52 1 52 53 1
		 53 54 1 54 55 1 55 42 1 56 57 1 57 58 1 58 59 1 59 60 1 60 61 1 61 62 1 62 63 1 63 64 1
		 64 65 1 65 66 1 66 67 1 67 68 1 68 69 1 69 56 1 70 71 1 71 72 1 72 73 1 73 74 1 74 75 1
		 75 76 1 76 77 1 77 78 1 78 79 1 79 80 1 80 81 1 81 82 1 82 83 1 83 70 1 84 85 1 85 86 1
		 86 87 1 87 88 1 88 89 1 89 90 1 90 91 1 91 92 1 92 93 1 93 94 1 94 95 1 95 96 1 96 97 1
		 97 84 1 0 14 1 1 15 1 2 16 1 3 17 1 4 18 1 5 19 1 6 20 1 7 21 1 8 22 1 9 23 1 10 24 1
		 11 25 1 12 26 1 13 27 1 14 28 1 15 29 1 16 30 1 17 31 1 18 32 1 19 33 1 20 34 1 21 35 1
		 22 36 1 23 37 1 24 38 1 25 39 1 26 40 1 27 41 1 28 42 1 29 43 1 30 44 1 31 45 1 32 46 1
		 33 47 1 34 48 1 35 49 1 36 50 1 37 51 1 38 52 1 39 53 1 40 54 1 41 55 1 42 56 1 43 57 1
		 44 58 1 45 59 1 46 60 1 47 61 1 48 62 1 49 63 1 50 64 1 51 65 1 52 66 1 53 67 1 54 68 1
		 55 69 1 56 70 1 57 71 1 58 72 1 59 73 1 60 74 1 61 75 1 62 76 1 63 77 1 64 78 1 65 79 1
		 66 80 1 67 81 1;
	setAttr ".ed[166:195]" 68 82 1 69 83 1 70 84 1 71 85 1 72 86 1 73 87 1 74 88 1
		 75 89 1 76 90 1 77 91 1 78 92 1 79 93 1 80 94 1 81 95 1 82 96 1 83 97 1 84 98 1 85 98 1
		 86 98 1 87 98 1 88 98 1 89 98 1 90 98 1 91 98 1 92 98 1 93 98 1 94 98 1 95 98 1 96 98 1
		 97 98 1;
	setAttr -s 98 -ch 378 ".fc[0:97]" -type "polyFaces" 
		f 4 0 99 -15 -99
		mu 0 4 0 1 16 15
		f 4 1 100 -16 -100
		mu 0 4 1 2 17 16
		f 4 2 101 -17 -101
		mu 0 4 2 3 18 17
		f 4 3 102 -18 -102
		mu 0 4 3 4 19 18
		f 4 4 103 -19 -103
		mu 0 4 4 5 20 19
		f 4 5 104 -20 -104
		mu 0 4 5 6 21 20
		f 4 6 105 -21 -105
		mu 0 4 6 7 22 21
		f 4 7 106 -22 -106
		mu 0 4 7 8 23 22
		f 4 8 107 -23 -107
		mu 0 4 8 9 24 23
		f 4 9 108 -24 -108
		mu 0 4 9 10 25 24
		f 4 10 109 -25 -109
		mu 0 4 10 11 26 25
		f 4 11 110 -26 -110
		mu 0 4 11 12 27 26
		f 4 12 111 -27 -111
		mu 0 4 12 13 28 27
		f 4 13 98 -28 -112
		mu 0 4 13 14 29 28
		f 4 14 113 -29 -113
		mu 0 4 15 16 31 30
		f 4 15 114 -30 -114
		mu 0 4 16 17 32 31
		f 4 16 115 -31 -115
		mu 0 4 17 18 33 32
		f 4 17 116 -32 -116
		mu 0 4 18 19 34 33
		f 4 18 117 -33 -117
		mu 0 4 19 20 35 34
		f 4 19 118 -34 -118
		mu 0 4 20 21 36 35
		f 4 20 119 -35 -119
		mu 0 4 21 22 37 36
		f 4 21 120 -36 -120
		mu 0 4 22 23 38 37
		f 4 22 121 -37 -121
		mu 0 4 23 24 39 38
		f 4 23 122 -38 -122
		mu 0 4 24 25 40 39
		f 4 24 123 -39 -123
		mu 0 4 25 26 41 40
		f 4 25 124 -40 -124
		mu 0 4 26 27 42 41
		f 4 26 125 -41 -125
		mu 0 4 27 28 43 42
		f 4 27 112 -42 -126
		mu 0 4 28 29 44 43
		f 4 28 127 -43 -127
		mu 0 4 30 31 46 45
		f 4 29 128 -44 -128
		mu 0 4 31 32 47 46
		f 4 30 129 -45 -129
		mu 0 4 32 33 48 47
		f 4 31 130 -46 -130
		mu 0 4 33 34 49 48
		f 4 32 131 -47 -131
		mu 0 4 34 35 50 49
		f 4 33 132 -48 -132
		mu 0 4 35 36 51 50
		f 4 34 133 -49 -133
		mu 0 4 36 37 52 51
		f 4 35 134 -50 -134
		mu 0 4 37 38 53 52
		f 4 36 135 -51 -135
		mu 0 4 38 39 54 53
		f 4 37 136 -52 -136
		mu 0 4 39 40 55 54
		f 4 38 137 -53 -137
		mu 0 4 40 41 56 55
		f 4 39 138 -54 -138
		mu 0 4 41 42 57 56
		f 4 40 139 -55 -139
		mu 0 4 42 43 58 57
		f 4 41 126 -56 -140
		mu 0 4 43 44 59 58
		f 4 42 141 -57 -141
		mu 0 4 45 46 61 60
		f 4 43 142 -58 -142
		mu 0 4 46 47 62 61
		f 4 44 143 -59 -143
		mu 0 4 47 48 63 62
		f 4 45 144 -60 -144
		mu 0 4 48 49 64 63
		f 4 46 145 -61 -145
		mu 0 4 49 50 65 64
		f 4 47 146 -62 -146
		mu 0 4 50 51 66 65
		f 4 48 147 -63 -147
		mu 0 4 51 52 67 66
		f 4 49 148 -64 -148
		mu 0 4 52 53 68 67
		f 4 50 149 -65 -149
		mu 0 4 53 54 69 68
		f 4 51 150 -66 -150
		mu 0 4 54 55 70 69
		f 4 52 151 -67 -151
		mu 0 4 55 56 71 70
		f 4 53 152 -68 -152
		mu 0 4 56 57 72 71
		f 4 54 153 -69 -153
		mu 0 4 57 58 73 72
		f 4 55 140 -70 -154
		mu 0 4 58 59 74 73
		f 4 56 155 -71 -155
		mu 0 4 60 61 76 75
		f 4 57 156 -72 -156
		mu 0 4 61 62 77 76
		f 4 58 157 -73 -157
		mu 0 4 62 63 78 77
		f 4 59 158 -74 -158
		mu 0 4 63 64 79 78
		f 4 60 159 -75 -159
		mu 0 4 64 65 80 79
		f 4 61 160 -76 -160
		mu 0 4 65 66 81 80
		f 4 62 161 -77 -161
		mu 0 4 66 67 82 81
		f 4 63 162 -78 -162
		mu 0 4 67 68 83 82
		f 4 64 163 -79 -163
		mu 0 4 68 69 84 83
		f 4 65 164 -80 -164
		mu 0 4 69 70 85 84
		f 4 66 165 -81 -165
		mu 0 4 70 71 86 85
		f 4 67 166 -82 -166
		mu 0 4 71 72 87 86
		f 4 68 167 -83 -167
		mu 0 4 72 73 88 87
		f 4 69 154 -84 -168
		mu 0 4 73 74 89 88
		f 4 70 169 -85 -169
		mu 0 4 75 76 91 90
		f 4 71 170 -86 -170
		mu 0 4 76 77 92 91
		f 4 72 171 -87 -171
		mu 0 4 77 78 93 92
		f 4 73 172 -88 -172
		mu 0 4 78 79 94 93
		f 4 74 173 -89 -173
		mu 0 4 79 80 95 94
		f 4 75 174 -90 -174
		mu 0 4 80 81 96 95
		f 4 76 175 -91 -175
		mu 0 4 81 82 97 96
		f 4 77 176 -92 -176
		mu 0 4 82 83 98 97
		f 4 78 177 -93 -177
		mu 0 4 83 84 99 98
		f 4 79 178 -94 -178
		mu 0 4 84 85 100 99
		f 4 80 179 -95 -179
		mu 0 4 85 86 101 100
		f 4 81 180 -96 -180
		mu 0 4 86 87 102 101
		f 4 82 181 -97 -181
		mu 0 4 87 88 103 102
		f 4 83 168 -98 -182
		mu 0 4 88 89 104 103
		f 3 84 183 -183
		mu 0 3 90 91 105
		f 3 85 184 -184
		mu 0 3 91 92 106
		f 3 86 185 -185
		mu 0 3 92 93 107
		f 3 87 186 -186
		mu 0 3 93 94 108
		f 3 88 187 -187
		mu 0 3 94 95 109
		f 3 89 188 -188
		mu 0 3 95 96 110
		f 3 90 189 -189
		mu 0 3 96 97 111
		f 3 91 190 -190
		mu 0 3 97 98 112
		f 3 92 191 -191
		mu 0 3 98 99 113
		f 3 93 192 -192
		mu 0 3 99 100 114
		f 3 94 193 -193
		mu 0 3 100 101 115
		f 3 95 194 -194
		mu 0 3 101 102 116
		f 3 96 195 -195
		mu 0 3 102 103 117
		f 3 97 182 -196
		mu 0 3 103 104 118;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".vcs" 2;
createNode transform -n "rBlackEyeLid" -p "Geo";
	rename -uid "19AC4FE3-4D3C-FEDF-C663-AC8C254205EB";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" -0.87412069396722614 3.0449335506028721 1.7769773251457739 ;
	setAttr ".sp" -type "double3" -0.87412069396722614 3.0449335506028721 1.7769773251457739 ;
createNode mesh -n "rBlackEyeLidShape" -p "rBlackEyeLid";
	rename -uid "FDC97225-49AF-A78F-B853-06834817EF4E";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.32514441013336182 0.97959315776824951 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vcs" 2;
createNode mesh -n "rBlackEyeLidShapeOrig" -p "rBlackEyeLid";
	rename -uid "B8582FAE-428D-12DA-CE2D-8AB59CCCC2EA";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 134 ".uvst[0].uvsp[0:133]" -type "float2" 0 0.42857143 0.071428575
		 0.42857143 0.14285715 0.42857143 0.21428573 0.42857143 0.2857143 0.42857143 0.35714287
		 0.42857143 0.42857143 0.42857143 0.5 0.42857143 0.5714286 0.42857143 0.64285719 0.42857143
		 0.71428579 0.42857143 0.78571439 0.42857143 0.85714298 0.42857143 0.92857158 0.42857143
		 1.000000119209 0.42857143 0 0.5 0.071428575 0.5 0.14285715 0.5 0.21428573 0.5 0.2857143
		 0.5 0.35714287 0.5 0.42857143 0.5 0.5 0.5 0.5714286 0.5 0.64285719 0.5 0.71428579
		 0.5 0.78571439 0.5 0.85714298 0.5 0.92857158 0.5 1.000000119209 0.5 0 0.5714286 0.071428575
		 0.5714286 0.14285715 0.5714286 0.21428573 0.5714286 0.2857143 0.5714286 0.35714287
		 0.5714286 0.42857143 0.5714286 0.5 0.5714286 0.5714286 0.5714286 0.64285719 0.5714286
		 0.71428579 0.5714286 0.78571439 0.5714286 0.85714298 0.5714286 0.92857158 0.5714286
		 1.000000119209 0.5714286 0 0.64285719 0.071428575 0.64285719 0.14285715 0.64285719
		 0.21428573 0.64285719 0.2857143 0.64285719 0.35714287 0.64285719 0.42857143 0.64285719
		 0.5 0.64285719 0.5714286 0.64285719 0.64285719 0.64285719 0.71428579 0.64285719 0.78571439
		 0.64285719 0.85714298 0.64285719 0.92857158 0.64285719 1.000000119209 0.64285719
		 0 0.71428579 0.071428575 0.71428579 0.14285715 0.71428579 0.21428573 0.71428579 0.2857143
		 0.71428579 0.35714287 0.71428579 0.42857143 0.71428579 0.5 0.71428579 0.5714286 0.71428579
		 0.64285719 0.71428579 0.71428579 0.71428579 0.78571439 0.71428579 0.85714298 0.71428579
		 0.92857158 0.71428579 1.000000119209 0.71428579 0 0.78571439 0.071428575 0.78571439
		 0.14285715 0.78571439 0.21428573 0.78571439 0.2857143 0.78571439 0.35714287 0.78571439
		 0.42857143 0.78571439 0.5 0.78571439 0.5714286 0.78571439 0.64285719 0.78571439 0.71428579
		 0.78571439 0.78571439 0.78571439 0.85714298 0.78571439 0.92857158 0.78571439 1.000000119209
		 0.78571439 0 0.85714298 0.071428575 0.85714298 0.14285715 0.85714298 0.21428573 0.85714298
		 0.2857143 0.85714298 0.35714287 0.85714298 0.42857143 0.85714298 0.5 0.85714298 0.5714286
		 0.85714298 0.64285719 0.85714298 0.71428579 0.85714298 0.78571439 0.85714298 0.85714298
		 0.85714298 0.92857158 0.85714298 1.000000119209 0.85714298 0 0.92857158 0.071428575
		 0.92857158 0.14285715 0.92857158 0.21428573 0.92857158 0.2857143 0.92857158 0.35714287
		 0.92857158 0.42857143 0.92857158 0.5 0.92857158 0.5714286 0.92857158 0.64285719 0.92857158
		 0.71428579 0.92857158 0.78571439 0.92857158 0.85714298 0.92857158 0.92857158 0.92857158
		 1.000000119209 0.92857158 0.035714287 1 0.10714287 1 0.17857143 1 0.25 1 0.3214286
		 1 0.39285716 1 0.46428573 1 0.53571433 1 0.60714287 1 0.67857146 1 0.75000006 1 0.8214286
		 1 0.89285719 1 0.96428573 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 113 ".pt[0:112]" -type "float3"  -1.9485055 7.1938448 2.0424838 
		-1.612431 7.2790031 2.3575537 -1.1267895 7.3351564 2.5483119 -0.58776778 7.3511825 
		2.5769761 -0.10212611 7.3239079 2.4378691 0.23394853 7.2587337 2.1585426 0.35389221 
		7.1685696 1.7943208 0.23394868 7.0712729 1.4173423 -0.10212573 6.9861145 1.1022723 
		-0.58776742 6.9299617 0.91151422 -1.1267891 6.9139352 0.88285005 -1.6124309 6.9412103 
		1.0219572 -1.9485054 7.0063839 1.3012836 -2.068449 7.0965481 1.6655054 -1.9934108 
		6.9992137 2.0975864 -1.6486936 7.0865622 2.420759 -1.1505628 7.1441593 2.6164229 
		-0.59767914 7.1605978 2.6458242 -0.099548236 7.1326213 2.5031397 0.24516913 7.0657716 
		2.2166297 0.36819741 6.9732885 1.8430414 0.24516936 6.8734899 1.4563682 -0.099547863 
		6.7861414 1.1331955 -0.59767872 6.7285442 0.93753183 -1.1505624 6.7121058 0.90813047 
		-1.6486933 6.7400823 1.050815 -1.9934107 6.806932 1.3373249 -2.1164389 6.899415 1.7109133 
		-1.9821901 6.8014307 2.1366122 -1.6461158 6.8865891 2.4516823 -1.1604741 6.9427419 
		2.6424403 -0.62145245 6.9587684 2.6711047 -0.13581073 6.9314933 2.5319974 0.20026392 
		6.8663197 2.252671 0.32020757 6.7761555 1.8884493 0.20026407 6.6788588 1.5114708 
		-0.13581036 6.5937004 1.1964008 -0.62145203 6.5375471 1.0056428 -1.1604737 6.5215211 
		0.97697854 -1.6461155 6.5487957 1.1160856 -1.98219 6.6139698 1.3954121 -2.1021338 
		6.704134 1.7596339 -1.9154063 6.6104131 2.1576045 -1.6048268 6.6891112 2.4487731 
		-1.1560265 6.7410045 2.6250601 -0.65789557 6.755815 2.6515498 -0.20909509 6.7306089 
		2.5229955 0.10148448 6.6703796 2.264859 0.21232913 6.5870552 1.9282676 0.1014847 
		6.4971395 1.579887 -0.20909479 6.4184413 1.2887185 -0.65789521 6.3665481 1.1124315 
		-1.1560261 6.3517375 1.0859419 -1.6048266 6.3769431 1.2144961 -1.9154062 6.4371729 
		1.4726326 -2.0262508 6.5204973 1.8092242 -1.7964081 6.4357395 2.1595106 -1.5268973 
		6.5040307 2.4121771 -1.1374429 6.5490623 2.5651534 -0.70518112 6.5619144 2.5881402 
		-0.31572664 6.5400414 2.4765849 -0.046215776 6.4877763 2.2525826 0.049971607 6.4154701 
		1.9604994 -0.046215553 6.3374443 1.6581861 -0.31572634 6.2691526 1.4055196 -0.70518076 
		6.2241211 1.2525434 -1.1374426 6.2112694 1.2295566 -1.5268971 6.2331419 1.3411118 
		-1.7964081 6.2854071 1.5651143 -1.8925953 6.3577137 1.8571975 -1.6311625 6.2861686 
		2.1422348 -1.4162349 6.3406291 2.3437297 -1.1056553 6.3765407 2.4657242 -0.76093799 
		6.3867898 2.4840555 -0.45035839 6.3693466 2.3950932 -0.23543063 6.3276663 2.2164574 
		-0.1587237 6.2700043 1.9835287 -0.23543048 6.2077808 1.7424419 -0.45035812 6.1533198 
		1.5409471 -0.76093769 6.1174088 1.4189527 -1.1056551 6.1071596 1.4006212 -1.4162346 
		6.1246023 1.4895836 -1.6311624 6.1662827 1.6682196 -1.7078693 6.2239447 1.9011482 
		-1.4279556 6.1692004 2.1066437 -1.2783884 6.2070994 2.2468629 -1.0622575 6.23209 
		2.3317583 -0.82237029 6.239222 2.3445151 -0.60623938 6.2270837 2.2826066 -0.45667213 
		6.1980786 2.1582947 -0.40329218 6.1579518 1.9962007 -0.45667204 6.1146507 1.8284295 
		-0.60623926 6.0767517 1.6882101 -0.82237011 6.0517612 1.6033148 -1.0622574 6.0446286 
		1.5905581 -1.2783883 6.0567675 1.6524665 -1.4279556 6.0857725 1.7767785 -1.4813355 
		6.1258993 1.9388725 -1.1969771 6.0907006 2.0545216 -1.1202704 6.1101375 2.1264341 
		-1.0094258 6.1229539 2.1699734 -0.88639766 6.1266117 2.1765158 -0.77555305 6.1203866 
		2.1447656 -0.69884622 6.1055112 2.0810111 -0.67146987 6.0849314 1.9978799 -0.69884622 
		6.0627241 1.911837 -0.77555299 6.0432873 1.8399243 -0.88639754 6.0304708 1.796385 
		-1.0094258 6.026813 1.7898426 -1.1202703 6.0330381 1.8215929 -1.1969771 6.0479136 
		1.8853474 -1.2243534 6.0684934 1.9684787 -0.94980931 6.054605 1.9884821;
	setAttr -s 113 ".vt[0:112]"  0.8783797 -0.22252098 -0.4230051 0.6078577 -0.22252098 -0.76222908
		 0.21694204 -0.22252098 -0.95048428 -0.21694165 -0.22252098 -0.95048434 -0.60785735 -0.22252098 -0.76222932
		 -0.87837952 -0.22252098 -0.42300546 -0.97492778 -0.22252098 -1.7433069e-007 -0.87837964 -0.22252098 0.42300516
		 -0.60785764 -0.22252098 0.76222914 -0.21694197 -0.22252098 0.95048428 0.21694176 -0.22252098 0.9504844
		 0.60785753 -0.22252098 0.76222932 0.87837964 -0.22252098 0.42300537 0.9749279 -0.22252098 0
		 0.90096891 0 -0.43388346 0.62348992 0 -0.78183126 0.22252111 0 -0.97492778 -0.22252071 0 -0.97492784
		 -0.62348956 0 -0.7818315 -0.90096867 0 -0.43388385 -0.99999988 0 -1.7881393e-007
		 -0.90096885 0 0.43388355 -0.62348986 0 0.78183132 -0.22252104 0 0.97492778 0.22252083 0 0.9749279
		 0.62348974 0 0.7818315 0.90096885 0 0.43388376 1 0 0 0.8783797 0.22252098 -0.4230051
		 0.6078577 0.22252098 -0.76222908 0.21694204 0.22252098 -0.95048428 -0.21694165 0.22252098 -0.95048434
		 -0.60785735 0.22252098 -0.76222932 -0.87837952 0.22252098 -0.42300546 -0.97492778 0.22252098 -1.7433069e-007
		 -0.87837964 0.22252098 0.42300516 -0.60785764 0.22252098 0.76222914 -0.21694197 0.22252098 0.95048428
		 0.21694176 0.22252098 0.9504844 0.60785753 0.22252098 0.76222932 0.87837964 0.22252098 0.42300537
		 0.9749279 0.22252098 0 0.81174493 0.43388376 -0.39091548 0.56174499 0.43388376 -0.70440561
		 0.20048459 0.43388376 -0.87837958 -0.20048423 0.43388376 -0.87837964 -0.56174469 0.43388376 -0.70440584
		 -0.81174469 0.43388376 -0.39091584 -0.90096873 0.43388376 -1.6110579e-007 -0.81174487 0.43388376 0.39091557
		 -0.56174493 0.43388376 0.70440567 -0.20048453 0.43388376 0.87837958 0.20048434 0.43388376 0.87837964
		 0.56174481 0.43388376 0.70440584 0.81174487 0.43388376 0.39091575 0.90096885 0.43388376 0
		 0.7044059 0.6234898 -0.33922374 0.48746407 0.6234898 -0.61126029 0.17397402 0.6234898 -0.76222926
		 -0.17397369 0.6234898 -0.76222932 -0.48746377 0.6234898 -0.61126047 -0.70440567 0.6234898 -0.33922407
		 -0.78183138 0.6234898 -1.3980237e-007 -0.70440584 0.6234898 0.33922383 -0.48746401 0.6234898 0.61126035
		 -0.17397396 0.6234898 0.76222926 0.1739738 0.6234898 0.76222932 0.48746392 0.6234898 0.61126047
		 0.70440584 0.6234898 0.33922398 0.7818315 0.6234898 0 0.56174499 0.78183144 -0.27052194
		 0.38873965 0.78183144 -0.48746386 0.13873966 0.78183144 -0.60785758 -0.13873941 0.78183144 -0.60785764
		 -0.38873941 0.78183144 -0.48746401 -0.56174481 0.78183144 -0.27052218 -0.6234898 0.78183144 -1.1148867e-007
		 -0.56174493 0.78183144 0.270522 -0.38873962 0.78183144 0.48746389 -0.13873962 0.78183144 0.60785758
		 0.13873948 0.78183144 0.60785764 0.38873953 0.78183144 0.48746401 0.56174493 0.78183144 0.27052212
		 0.62348986 0.78183144 0 0.39091578 0.90096885 -0.18825498 0.27052215 0.90096885 -0.33922389
		 0.096548297 0.90096885 -0.42300534 -0.096548118 0.90096885 -0.42300534 -0.270522 0.90096885 -0.33922398
		 -0.39091566 0.90096885 -0.18825515 -0.4338837 0.90096885 -7.758446e-008 -0.39091575 0.90096885 0.18825503
		 -0.27052212 0.90096885 0.33922392 -0.096548267 0.90096885 0.42300534 0.09654817 0.90096885 0.42300537
		 0.27052206 0.90096885 0.33922398 0.39091575 0.90096885 0.18825512 0.43388376 0.90096885 0
		 0.20048444 0.9749279 -0.096548155 0.13873956 0.9749279 -0.17397383 0.049515605 0.9749279 -0.21694183
		 -0.049515516 0.9749279 -0.21694185 -0.13873948 0.9749279 -0.17397387 -0.2004844 0.9749279 -0.096548237
		 -0.2225209 0.9749279 -3.9789843e-008 -0.20048442 0.9749279 0.09654817 -0.13873954 0.9749279 0.17397383
		 -0.04951559 0.9749279 0.21694183 0.049515542 0.9749279 0.21694186 0.13873951 0.9749279 0.17397387
		 0.20048442 0.9749279 0.096548215 0.22252093 0.9749279 0 0 1 0;
	setAttr -s 224 ".ed";
	setAttr ".ed[0:165]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0 7 8 0 8 9 0
		 9 10 0 10 11 0 11 12 0 12 13 0 13 0 0 14 15 1 15 16 1 16 17 1 17 18 1 18 19 1 19 20 1
		 20 21 1 21 22 1 22 23 1 23 24 1 24 25 1 25 26 1 26 27 1 27 14 1 28 29 1 29 30 1 30 31 1
		 31 32 1 32 33 1 33 34 1 34 35 1 35 36 1 36 37 1 37 38 1 38 39 1 39 40 1 40 41 1 41 28 1
		 42 43 1 43 44 1 44 45 1 45 46 1 46 47 1 47 48 1 48 49 1 49 50 1 50 51 1 51 52 1 52 53 1
		 53 54 1 54 55 1 55 42 1 56 57 1 57 58 1 58 59 1 59 60 1 60 61 1 61 62 1 62 63 1 63 64 1
		 64 65 1 65 66 1 66 67 1 67 68 1 68 69 1 69 56 1 70 71 1 71 72 1 72 73 1 73 74 1 74 75 1
		 75 76 1 76 77 1 77 78 1 78 79 1 79 80 1 80 81 1 81 82 1 82 83 1 83 70 1 84 85 1 85 86 1
		 86 87 1 87 88 1 88 89 1 89 90 1 90 91 1 91 92 1 92 93 1 93 94 1 94 95 1 95 96 1 96 97 1
		 97 84 1 98 99 1 99 100 1 100 101 1 101 102 1 102 103 1 103 104 1 104 105 1 105 106 1
		 106 107 1 107 108 1 108 109 1 109 110 1 110 111 1 111 98 1 0 14 1 1 15 1 2 16 1 3 17 1
		 4 18 1 5 19 1 6 20 1 7 21 1 8 22 1 9 23 1 10 24 1 11 25 1 12 26 1 13 27 1 14 28 1
		 15 29 1 16 30 1 17 31 1 18 32 1 19 33 1 20 34 1 21 35 1 22 36 1 23 37 1 24 38 1 25 39 1
		 26 40 1 27 41 1 28 42 1 29 43 1 30 44 1 31 45 1 32 46 1 33 47 1 34 48 1 35 49 1 36 50 1
		 37 51 1 38 52 1 39 53 1 40 54 1 41 55 1 42 56 1 43 57 1 44 58 1 45 59 1 46 60 1 47 61 1
		 48 62 1 49 63 1 50 64 1 51 65 1 52 66 1 53 67 1;
	setAttr ".ed[166:223]" 54 68 1 55 69 1 56 70 1 57 71 1 58 72 1 59 73 1 60 74 1
		 61 75 1 62 76 1 63 77 1 64 78 1 65 79 1 66 80 1 67 81 1 68 82 1 69 83 1 70 84 1 71 85 1
		 72 86 1 73 87 1 74 88 1 75 89 1 76 90 1 77 91 1 78 92 1 79 93 1 80 94 1 81 95 1 82 96 1
		 83 97 1 84 98 1 85 99 1 86 100 1 87 101 1 88 102 1 89 103 1 90 104 1 91 105 1 92 106 1
		 93 107 1 94 108 1 95 109 1 96 110 1 97 111 1 98 112 1 99 112 1 100 112 1 101 112 1
		 102 112 1 103 112 1 104 112 1 105 112 1 106 112 1 107 112 1 108 112 1 109 112 1 110 112 1
		 111 112 1;
	setAttr -s 112 -ch 434 ".fc[0:111]" -type "polyFaces" 
		f 4 112 14 -114 -1
		mu 0 4 0 15 16 1
		f 4 113 15 -115 -2
		mu 0 4 1 16 17 2
		f 4 114 16 -116 -3
		mu 0 4 2 17 18 3
		f 4 115 17 -117 -4
		mu 0 4 3 18 19 4
		f 4 116 18 -118 -5
		mu 0 4 4 19 20 5
		f 4 117 19 -119 -6
		mu 0 4 5 20 21 6
		f 4 118 20 -120 -7
		mu 0 4 6 21 22 7
		f 4 119 21 -121 -8
		mu 0 4 7 22 23 8
		f 4 120 22 -122 -9
		mu 0 4 8 23 24 9
		f 4 121 23 -123 -10
		mu 0 4 9 24 25 10
		f 4 122 24 -124 -11
		mu 0 4 10 25 26 11
		f 4 123 25 -125 -12
		mu 0 4 11 26 27 12
		f 4 124 26 -126 -13
		mu 0 4 12 27 28 13
		f 4 125 27 -113 -14
		mu 0 4 13 28 29 14
		f 4 126 28 -128 -15
		mu 0 4 15 30 31 16
		f 4 127 29 -129 -16
		mu 0 4 16 31 32 17
		f 4 128 30 -130 -17
		mu 0 4 17 32 33 18
		f 4 129 31 -131 -18
		mu 0 4 18 33 34 19
		f 4 130 32 -132 -19
		mu 0 4 19 34 35 20
		f 4 131 33 -133 -20
		mu 0 4 20 35 36 21
		f 4 132 34 -134 -21
		mu 0 4 21 36 37 22
		f 4 133 35 -135 -22
		mu 0 4 22 37 38 23
		f 4 134 36 -136 -23
		mu 0 4 23 38 39 24
		f 4 135 37 -137 -24
		mu 0 4 24 39 40 25
		f 4 136 38 -138 -25
		mu 0 4 25 40 41 26
		f 4 137 39 -139 -26
		mu 0 4 26 41 42 27
		f 4 138 40 -140 -27
		mu 0 4 27 42 43 28
		f 4 139 41 -127 -28
		mu 0 4 28 43 44 29
		f 4 140 42 -142 -29
		mu 0 4 30 45 46 31
		f 4 141 43 -143 -30
		mu 0 4 31 46 47 32
		f 4 142 44 -144 -31
		mu 0 4 32 47 48 33
		f 4 143 45 -145 -32
		mu 0 4 33 48 49 34
		f 4 144 46 -146 -33
		mu 0 4 34 49 50 35
		f 4 145 47 -147 -34
		mu 0 4 35 50 51 36
		f 4 146 48 -148 -35
		mu 0 4 36 51 52 37
		f 4 147 49 -149 -36
		mu 0 4 37 52 53 38
		f 4 148 50 -150 -37
		mu 0 4 38 53 54 39
		f 4 149 51 -151 -38
		mu 0 4 39 54 55 40
		f 4 150 52 -152 -39
		mu 0 4 40 55 56 41
		f 4 151 53 -153 -40
		mu 0 4 41 56 57 42
		f 4 152 54 -154 -41
		mu 0 4 42 57 58 43
		f 4 153 55 -141 -42
		mu 0 4 43 58 59 44
		f 4 154 56 -156 -43
		mu 0 4 45 60 61 46
		f 4 155 57 -157 -44
		mu 0 4 46 61 62 47
		f 4 156 58 -158 -45
		mu 0 4 47 62 63 48
		f 4 157 59 -159 -46
		mu 0 4 48 63 64 49
		f 4 158 60 -160 -47
		mu 0 4 49 64 65 50
		f 4 159 61 -161 -48
		mu 0 4 50 65 66 51
		f 4 160 62 -162 -49
		mu 0 4 51 66 67 52
		f 4 161 63 -163 -50
		mu 0 4 52 67 68 53
		f 4 162 64 -164 -51
		mu 0 4 53 68 69 54
		f 4 163 65 -165 -52
		mu 0 4 54 69 70 55
		f 4 164 66 -166 -53
		mu 0 4 55 70 71 56
		f 4 165 67 -167 -54
		mu 0 4 56 71 72 57
		f 4 166 68 -168 -55
		mu 0 4 57 72 73 58
		f 4 167 69 -155 -56
		mu 0 4 58 73 74 59
		f 4 168 70 -170 -57
		mu 0 4 60 75 76 61
		f 4 169 71 -171 -58
		mu 0 4 61 76 77 62
		f 4 170 72 -172 -59
		mu 0 4 62 77 78 63
		f 4 171 73 -173 -60
		mu 0 4 63 78 79 64
		f 4 172 74 -174 -61
		mu 0 4 64 79 80 65
		f 4 173 75 -175 -62
		mu 0 4 65 80 81 66
		f 4 174 76 -176 -63
		mu 0 4 66 81 82 67
		f 4 175 77 -177 -64
		mu 0 4 67 82 83 68
		f 4 176 78 -178 -65
		mu 0 4 68 83 84 69
		f 4 177 79 -179 -66
		mu 0 4 69 84 85 70
		f 4 178 80 -180 -67
		mu 0 4 70 85 86 71
		f 4 179 81 -181 -68
		mu 0 4 71 86 87 72
		f 4 180 82 -182 -69
		mu 0 4 72 87 88 73
		f 4 181 83 -169 -70
		mu 0 4 73 88 89 74
		f 4 182 84 -184 -71
		mu 0 4 75 90 91 76
		f 4 183 85 -185 -72
		mu 0 4 76 91 92 77
		f 4 184 86 -186 -73
		mu 0 4 77 92 93 78
		f 4 185 87 -187 -74
		mu 0 4 78 93 94 79
		f 4 186 88 -188 -75
		mu 0 4 79 94 95 80
		f 4 187 89 -189 -76
		mu 0 4 80 95 96 81
		f 4 188 90 -190 -77
		mu 0 4 81 96 97 82
		f 4 189 91 -191 -78
		mu 0 4 82 97 98 83
		f 4 190 92 -192 -79
		mu 0 4 83 98 99 84
		f 4 191 93 -193 -80
		mu 0 4 84 99 100 85
		f 4 192 94 -194 -81
		mu 0 4 85 100 101 86
		f 4 193 95 -195 -82
		mu 0 4 86 101 102 87
		f 4 194 96 -196 -83
		mu 0 4 87 102 103 88
		f 4 195 97 -183 -84
		mu 0 4 88 103 104 89
		f 4 196 98 -198 -85
		mu 0 4 90 105 106 91
		f 4 197 99 -199 -86
		mu 0 4 91 106 107 92
		f 4 198 100 -200 -87
		mu 0 4 92 107 108 93
		f 4 199 101 -201 -88
		mu 0 4 93 108 109 94
		f 4 200 102 -202 -89
		mu 0 4 94 109 110 95
		f 4 201 103 -203 -90
		mu 0 4 95 110 111 96
		f 4 202 104 -204 -91
		mu 0 4 96 111 112 97
		f 4 203 105 -205 -92
		mu 0 4 97 112 113 98
		f 4 204 106 -206 -93
		mu 0 4 98 113 114 99
		f 4 205 107 -207 -94
		mu 0 4 99 114 115 100
		f 4 206 108 -208 -95
		mu 0 4 100 115 116 101
		f 4 207 109 -209 -96
		mu 0 4 101 116 117 102
		f 4 208 110 -210 -97
		mu 0 4 102 117 118 103
		f 4 209 111 -197 -98
		mu 0 4 103 118 119 104
		f 3 210 -212 -99
		mu 0 3 105 120 106
		f 3 211 -213 -100
		mu 0 3 106 121 107
		f 3 212 -214 -101
		mu 0 3 107 122 108
		f 3 213 -215 -102
		mu 0 3 108 123 109
		f 3 214 -216 -103
		mu 0 3 109 124 110
		f 3 215 -217 -104
		mu 0 3 110 125 111
		f 3 216 -218 -105
		mu 0 3 111 126 112
		f 3 217 -219 -106
		mu 0 3 112 127 113
		f 3 218 -220 -107
		mu 0 3 113 128 114
		f 3 219 -221 -108
		mu 0 3 114 129 115
		f 3 220 -222 -109
		mu 0 3 115 130 116
		f 3 221 -223 -110
		mu 0 3 116 131 117
		f 3 222 -224 -111
		mu 0 3 117 132 118
		f 3 223 -211 -112
		mu 0 3 118 133 119;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "rBlackEyeLidShapeOrig1" -p "rBlackEyeLid";
	rename -uid "57130233-4D0D-87B9-67EB-3E84BB6E7627";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 119 ".uvst[0].uvsp[0:118]" -type "float2" 0.44499803 0.97164881
		 0.44801366 0.97164881 0.4510293 0.97164881 0.454045 0.97164881 0.45706064 0.97164881
		 0.46007627 0.97164881 0.46309197 0.97164881 0.46610761 0.97164881 0.46912324 0.97164881
		 0.47213894 0.97164881 0.47515458 0.97164881 0.47817022 0.97164881 0.48118591 0.97164881
		 0.48420155 0.97164881 0.48721719 0.97164881 0.44499803 0.97466445 0.44801366 0.97466445
		 0.4510293 0.97466445 0.454045 0.97466445 0.45706064 0.97466445 0.46007627 0.97466445
		 0.46309197 0.97466445 0.46610761 0.97466445 0.46912324 0.97466445 0.47213894 0.97466445
		 0.47515458 0.97466445 0.47817022 0.97466445 0.48118591 0.97466445 0.48420155 0.97466445
		 0.48721719 0.97466445 0.44499803 0.97768015 0.44801366 0.97768015 0.4510293 0.97768015
		 0.454045 0.97768015 0.45706064 0.97768015 0.46007627 0.97768015 0.46309197 0.97768015
		 0.46610761 0.97768015 0.46912324 0.97768015 0.47213894 0.97768015 0.47515458 0.97768015
		 0.47817022 0.97768015 0.48118591 0.97768015 0.48420155 0.97768015 0.48721719 0.97768015
		 0.44499803 0.98069578 0.44801366 0.98069578 0.4510293 0.98069578 0.454045 0.98069578
		 0.45706064 0.98069578 0.46007627 0.98069578 0.46309197 0.98069578 0.46610761 0.98069578
		 0.46912324 0.98069578 0.47213894 0.98069578 0.47515458 0.98069578 0.47817022 0.98069578
		 0.48118591 0.98069578 0.48420155 0.98069578 0.48721719 0.98069578 0.44499803 0.98371142
		 0.44801366 0.98371142 0.4510293 0.98371142 0.454045 0.98371142 0.45706064 0.98371142
		 0.46007627 0.98371142 0.46309197 0.98371142 0.46610761 0.98371142 0.46912324 0.98371142
		 0.47213894 0.98371142 0.47515458 0.98371142 0.47817022 0.98371142 0.48118591 0.98371142
		 0.48420155 0.98371142 0.48721719 0.98371142 0.44499803 0.98672712 0.44801366 0.98672712
		 0.4510293 0.98672712 0.454045 0.98672712 0.45706064 0.98672712 0.46007627 0.98672712
		 0.46309197 0.98672712 0.46610761 0.98672712 0.46912324 0.98672712 0.47213894 0.98672712
		 0.47515458 0.98672712 0.47817022 0.98672712 0.48118591 0.98672712 0.48420155 0.98672712
		 0.48721719 0.98672712 0.44499803 0.98974276 0.44801366 0.98974276 0.4510293 0.98974276
		 0.454045 0.98974276 0.45706064 0.98974276 0.46007627 0.98974276 0.46309197 0.98974276
		 0.46610761 0.98974276 0.46912324 0.98974276 0.47213894 0.98974276 0.47515458 0.98974276
		 0.47817022 0.98974276 0.48118591 0.98974276 0.48420155 0.98974276 0.48721719 0.98974276
		 0.44650584 0.99275839 0.44952148 0.99275839 0.45253718 0.99275839 0.45555282 0.99275839
		 0.45856845 0.99275839 0.46158415 0.99275839 0.46459979 0.99275839 0.46761543 0.99275839
		 0.47063112 0.99275839 0.47364676 0.99275839 0.4766624 0.99275839 0.47967803 0.99275839
		 0.48269373 0.99275839 0.48570937 0.99275839;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 99 ".vt[0:98]"  -1.13475108 2.97170305 1.75166953 -1.083841085 2.87316871 1.80019534
		 -0.9914012 2.80867958 1.84437239 -0.87574029 2.79100871 1.87545085 -0.75976646 2.82365608 1.88727546
		 -0.66644984 2.90015459 1.87750423 -0.61427271 3.0053539276 1.84807217 -0.61356956 3.11841726 1.80480874
		 -0.66447961 3.21695185 1.75628304 -0.75691938 3.28144097 1.71210587 -0.87258041 3.29911184 1.68102729
		 -0.98855412 3.26646447 1.6692028 -1.081870794 3.18996572 1.67897415 -1.13404799 3.084766388 1.70840633
		 -1.11657023 2.9522512 1.69688368 -1.066936612 2.85618758 1.7441926 -0.97681445 2.79331565 1.78726232
		 -0.86405325 2.77608752 1.81756139 -0.75098735 2.8079164 1.82908964 -0.66001028 2.88249731 1.81956327
		 -0.60914129 2.98505878 1.79086912 -0.60845584 3.095287323 1.74869061 -0.65808952 3.19135141 1.70138144
		 -0.74821162 3.25422359 1.65831196 -0.86097264 3.27145123 1.62801266 -0.9740389 3.23962307 1.6164844
		 -1.065015793 3.16504192 1.62601101 -1.11588478 3.062480211 1.65470517 -1.086233974 2.93745351 1.64617729
		 -1.040365458 2.84867692 1.6898973 -0.95708013 2.79057431 1.72969961 -0.85287321 2.77465343 1.75770032
		 -0.74838448 2.80406785 1.76835394 -0.66430908 2.87299061 1.75955033 -0.61729902 2.96777201 1.73303282
		 -0.6166656 3.069638968 1.69405401 -0.66253394 3.15841532 1.65033388 -0.74581945 3.21651769 1.61053157
		 -0.85002619 3.2324388 1.58253074 -0.95451504 3.20302486 1.57187736 -1.038590431 3.13410163 1.58068109
		 -1.085600495 3.03932023 1.60719836 -1.04526329 2.92805099 1.60209298 -1.0054603815 2.85101438 1.64003193
		 -0.93318784 2.80059457 1.67457092 -0.84276056 2.78677845 1.69886911 -0.75208855 2.81230354 1.70811403
		 -0.67913067 2.87211251 1.70047438 -0.63833696 2.95436049 1.67746341 -0.63778716 3.042757273 1.64363885
		 -0.67759025 3.11979461 1.6056999 -0.74986273 3.17021418 1.57116091 -0.84028995 3.18402958 1.54686272
		 -0.93096191 3.15850544 1.53761792 -1.0039198399 3.098696232 1.54525745 -1.044713497 3.016447544 1.5682683
		 -0.99571294 2.92451668 1.56684148 -0.96397108 2.86308193 1.5970968 -0.90633577 2.82287335 1.62464058
		 -0.83422244 2.81185555 1.64401793 -0.76191384 2.83221102 1.65139043 -0.70373172 2.87990761 1.64529788
		 -0.67119998 2.94549799 1.6269474 -0.67076164 3.015991926 1.5999732 -0.70250344 3.077427149 1.56971788
		 -0.76013881 3.11763501 1.54217398 -0.8322522 3.12865281 1.52279663 -0.90456057 3.10829782 1.51542413
		 -0.96274263 3.060601473 1.52151668 -0.99527454 2.99501133 1.53986716 -0.94006735 2.92702603 1.54218996
		 -0.91797835 2.88427401 1.5632447 -0.8778702 2.8562932 1.58241248 -0.82768679 2.84862614 1.59589684
		 -0.77736759 2.8627913 1.60102737 -0.73687905 2.89598298 1.59678781 -0.71424031 2.94162726 1.58401763
		 -0.7139352 2.99068356 1.56524634 -0.7360242 3.033435822 1.54419184 -0.7761324 3.061416626 1.52502429
		 -0.82631576 3.069083929 1.5115397 -0.87663484 3.054918528 1.50640917 -0.91712362 3.021726847 1.51064897
		 -0.93976223 2.97608256 1.5234189 -0.88111693 2.93545508 1.52937543 -0.86978841 2.91352892 1.54017353
		 -0.84921861 2.89917922 1.55000389 -0.82348174 2.89524674 1.55691946 -0.79767501 2.90251136 1.55955064
		 -0.77691007 2.91953373 1.55737638 -0.76529962 2.94294357 1.55082703 -0.76514316 2.96810246 1.54120016
		 -0.77647167 2.99002838 1.53040206 -0.79704154 3.0043785572 1.52057171 -0.82277858 3.008310318 1.51365626
		 -0.84858501 3.0010457039 1.51102495 -0.86935008 2.98402333 1.51319921 -0.88096046 2.96061397 1.51974845
		 -0.8218177 2.94938016 1.52903986;
	setAttr -s 196 ".ed";
	setAttr ".ed[0:165]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0 7 8 0 8 9 0
		 9 10 0 10 11 0 11 12 0 12 13 0 13 0 0 14 15 1 15 16 1 16 17 1 17 18 1 18 19 1 19 20 1
		 20 21 1 21 22 1 22 23 1 23 24 1 24 25 1 25 26 1 26 27 1 27 14 1 28 29 1 29 30 1 30 31 1
		 31 32 1 32 33 1 33 34 1 34 35 1 35 36 1 36 37 1 37 38 1 38 39 1 39 40 1 40 41 1 41 28 1
		 42 43 1 43 44 1 44 45 1 45 46 1 46 47 1 47 48 1 48 49 1 49 50 1 50 51 1 51 52 1 52 53 1
		 53 54 1 54 55 1 55 42 1 56 57 1 57 58 1 58 59 1 59 60 1 60 61 1 61 62 1 62 63 1 63 64 1
		 64 65 1 65 66 1 66 67 1 67 68 1 68 69 1 69 56 1 70 71 1 71 72 1 72 73 1 73 74 1 74 75 1
		 75 76 1 76 77 1 77 78 1 78 79 1 79 80 1 80 81 1 81 82 1 82 83 1 83 70 1 84 85 1 85 86 1
		 86 87 1 87 88 1 88 89 1 89 90 1 90 91 1 91 92 1 92 93 1 93 94 1 94 95 1 95 96 1 96 97 1
		 97 84 1 0 14 1 1 15 1 2 16 1 3 17 1 4 18 1 5 19 1 6 20 1 7 21 1 8 22 1 9 23 1 10 24 1
		 11 25 1 12 26 1 13 27 1 14 28 1 15 29 1 16 30 1 17 31 1 18 32 1 19 33 1 20 34 1 21 35 1
		 22 36 1 23 37 1 24 38 1 25 39 1 26 40 1 27 41 1 28 42 1 29 43 1 30 44 1 31 45 1 32 46 1
		 33 47 1 34 48 1 35 49 1 36 50 1 37 51 1 38 52 1 39 53 1 40 54 1 41 55 1 42 56 1 43 57 1
		 44 58 1 45 59 1 46 60 1 47 61 1 48 62 1 49 63 1 50 64 1 51 65 1 52 66 1 53 67 1 54 68 1
		 55 69 1 56 70 1 57 71 1 58 72 1 59 73 1 60 74 1 61 75 1 62 76 1 63 77 1 64 78 1 65 79 1
		 66 80 1 67 81 1;
	setAttr ".ed[166:195]" 68 82 1 69 83 1 70 84 1 71 85 1 72 86 1 73 87 1 74 88 1
		 75 89 1 76 90 1 77 91 1 78 92 1 79 93 1 80 94 1 81 95 1 82 96 1 83 97 1 84 98 1 85 98 1
		 86 98 1 87 98 1 88 98 1 89 98 1 90 98 1 91 98 1 92 98 1 93 98 1 94 98 1 95 98 1 96 98 1
		 97 98 1;
	setAttr -s 98 -ch 378 ".fc[0:97]" -type "polyFaces" 
		f 4 98 14 -100 -1
		mu 0 4 0 15 16 1
		f 4 99 15 -101 -2
		mu 0 4 1 16 17 2
		f 4 100 16 -102 -3
		mu 0 4 2 17 18 3
		f 4 101 17 -103 -4
		mu 0 4 3 18 19 4
		f 4 102 18 -104 -5
		mu 0 4 4 19 20 5
		f 4 103 19 -105 -6
		mu 0 4 5 20 21 6
		f 4 104 20 -106 -7
		mu 0 4 6 21 22 7
		f 4 105 21 -107 -8
		mu 0 4 7 22 23 8
		f 4 106 22 -108 -9
		mu 0 4 8 23 24 9
		f 4 107 23 -109 -10
		mu 0 4 9 24 25 10
		f 4 108 24 -110 -11
		mu 0 4 10 25 26 11
		f 4 109 25 -111 -12
		mu 0 4 11 26 27 12
		f 4 110 26 -112 -13
		mu 0 4 12 27 28 13
		f 4 111 27 -99 -14
		mu 0 4 13 28 29 14
		f 4 112 28 -114 -15
		mu 0 4 15 30 31 16
		f 4 113 29 -115 -16
		mu 0 4 16 31 32 17
		f 4 114 30 -116 -17
		mu 0 4 17 32 33 18
		f 4 115 31 -117 -18
		mu 0 4 18 33 34 19
		f 4 116 32 -118 -19
		mu 0 4 19 34 35 20
		f 4 117 33 -119 -20
		mu 0 4 20 35 36 21
		f 4 118 34 -120 -21
		mu 0 4 21 36 37 22
		f 4 119 35 -121 -22
		mu 0 4 22 37 38 23
		f 4 120 36 -122 -23
		mu 0 4 23 38 39 24
		f 4 121 37 -123 -24
		mu 0 4 24 39 40 25
		f 4 122 38 -124 -25
		mu 0 4 25 40 41 26
		f 4 123 39 -125 -26
		mu 0 4 26 41 42 27
		f 4 124 40 -126 -27
		mu 0 4 27 42 43 28
		f 4 125 41 -113 -28
		mu 0 4 28 43 44 29
		f 4 126 42 -128 -29
		mu 0 4 30 45 46 31
		f 4 127 43 -129 -30
		mu 0 4 31 46 47 32
		f 4 128 44 -130 -31
		mu 0 4 32 47 48 33
		f 4 129 45 -131 -32
		mu 0 4 33 48 49 34
		f 4 130 46 -132 -33
		mu 0 4 34 49 50 35
		f 4 131 47 -133 -34
		mu 0 4 35 50 51 36
		f 4 132 48 -134 -35
		mu 0 4 36 51 52 37
		f 4 133 49 -135 -36
		mu 0 4 37 52 53 38
		f 4 134 50 -136 -37
		mu 0 4 38 53 54 39
		f 4 135 51 -137 -38
		mu 0 4 39 54 55 40
		f 4 136 52 -138 -39
		mu 0 4 40 55 56 41
		f 4 137 53 -139 -40
		mu 0 4 41 56 57 42
		f 4 138 54 -140 -41
		mu 0 4 42 57 58 43
		f 4 139 55 -127 -42
		mu 0 4 43 58 59 44
		f 4 140 56 -142 -43
		mu 0 4 45 60 61 46
		f 4 141 57 -143 -44
		mu 0 4 46 61 62 47
		f 4 142 58 -144 -45
		mu 0 4 47 62 63 48
		f 4 143 59 -145 -46
		mu 0 4 48 63 64 49
		f 4 144 60 -146 -47
		mu 0 4 49 64 65 50
		f 4 145 61 -147 -48
		mu 0 4 50 65 66 51
		f 4 146 62 -148 -49
		mu 0 4 51 66 67 52
		f 4 147 63 -149 -50
		mu 0 4 52 67 68 53
		f 4 148 64 -150 -51
		mu 0 4 53 68 69 54
		f 4 149 65 -151 -52
		mu 0 4 54 69 70 55
		f 4 150 66 -152 -53
		mu 0 4 55 70 71 56
		f 4 151 67 -153 -54
		mu 0 4 56 71 72 57
		f 4 152 68 -154 -55
		mu 0 4 57 72 73 58
		f 4 153 69 -141 -56
		mu 0 4 58 73 74 59
		f 4 154 70 -156 -57
		mu 0 4 60 75 76 61
		f 4 155 71 -157 -58
		mu 0 4 61 76 77 62
		f 4 156 72 -158 -59
		mu 0 4 62 77 78 63
		f 4 157 73 -159 -60
		mu 0 4 63 78 79 64
		f 4 158 74 -160 -61
		mu 0 4 64 79 80 65
		f 4 159 75 -161 -62
		mu 0 4 65 80 81 66
		f 4 160 76 -162 -63
		mu 0 4 66 81 82 67
		f 4 161 77 -163 -64
		mu 0 4 67 82 83 68
		f 4 162 78 -164 -65
		mu 0 4 68 83 84 69
		f 4 163 79 -165 -66
		mu 0 4 69 84 85 70
		f 4 164 80 -166 -67
		mu 0 4 70 85 86 71
		f 4 165 81 -167 -68
		mu 0 4 71 86 87 72
		f 4 166 82 -168 -69
		mu 0 4 72 87 88 73
		f 4 167 83 -155 -70
		mu 0 4 73 88 89 74
		f 4 168 84 -170 -71
		mu 0 4 75 90 91 76
		f 4 169 85 -171 -72
		mu 0 4 76 91 92 77
		f 4 170 86 -172 -73
		mu 0 4 77 92 93 78
		f 4 171 87 -173 -74
		mu 0 4 78 93 94 79
		f 4 172 88 -174 -75
		mu 0 4 79 94 95 80
		f 4 173 89 -175 -76
		mu 0 4 80 95 96 81
		f 4 174 90 -176 -77
		mu 0 4 81 96 97 82
		f 4 175 91 -177 -78
		mu 0 4 82 97 98 83
		f 4 176 92 -178 -79
		mu 0 4 83 98 99 84
		f 4 177 93 -179 -80
		mu 0 4 84 99 100 85
		f 4 178 94 -180 -81
		mu 0 4 85 100 101 86
		f 4 179 95 -181 -82
		mu 0 4 86 101 102 87
		f 4 180 96 -182 -83
		mu 0 4 87 102 103 88
		f 4 181 97 -169 -84
		mu 0 4 88 103 104 89
		f 3 182 -184 -85
		mu 0 3 90 105 91
		f 3 183 -185 -86
		mu 0 3 91 106 92
		f 3 184 -186 -87
		mu 0 3 92 107 93
		f 3 185 -187 -88
		mu 0 3 93 108 94
		f 3 186 -188 -89
		mu 0 3 94 109 95
		f 3 187 -189 -90
		mu 0 3 95 110 96
		f 3 188 -190 -91
		mu 0 3 96 111 97
		f 3 189 -191 -92
		mu 0 3 97 112 98
		f 3 190 -192 -93
		mu 0 3 98 113 99
		f 3 191 -193 -94
		mu 0 3 99 114 100
		f 3 192 -194 -95
		mu 0 3 100 115 101
		f 3 193 -195 -96
		mu 0 3 101 116 102
		f 3 194 -196 -97
		mu 0 3 102 117 103
		f 3 195 -183 -98
		mu 0 3 103 118 104;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".vcs" 2;
createNode transform -n "back";
	rename -uid "AE4213F4-450F-20B5-48F7-A9BC68D984A4";
	setAttr ".t" -type "double3" 0 0 -100.1 ;
	setAttr ".r" -type "double3" 0 180 0 ;
createNode camera -n "backShape" -p "back";
	rename -uid "FC134FEC-4274-C4C6-CE73-968625B2E8DD";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "back1";
	setAttr ".den" -type "string" "back1_depth";
	setAttr ".man" -type "string" "back1_mask";
	setAttr ".hc" -type "string" "viewSet -b %camera";
	setAttr ".o" yes;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "F30E6D09-44A8-20D2-0C57-71B853711766";
	setAttr -s 4 ".lnk";
	setAttr -s 4 ".slnk";
createNode displayLayerManager -n "layerManager";
	rename -uid "05FBAAF1-442B-80C4-9999-F98D0C5CE648";
	setAttr -s 2 ".dli[1]"  1;
	setAttr -s 2 ".dli";
createNode displayLayer -n "defaultLayer";
	rename -uid "C633781E-4116-7B6B-AA36-16A750892831";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "27DA37A0-457B-022F-C2BF-E7892415D102";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "171082A6-4C6F-F0E2-9DF5-E1B3E44554F8";
	setAttr ".g" yes;
createNode mentalrayItemsList -s -n "mentalrayItemsList";
	rename -uid "393C6CA4-4F0F-1C3D-C6FD-549B59FB8AF5";
createNode mentalrayGlobals -s -n "mentalrayGlobals";
	rename -uid "13EF8034-47C7-F3DA-0F59-529AA943F6B1";
createNode mentalrayOptions -s -n "miDefaultOptions";
	rename -uid "FB638D8B-4377-8631-A0FF-BE9A36C4A2FF";
	addAttr -ci true -m -sn "stringOptions" -ln "stringOptions" -at "compound" -nc 
		3;
	addAttr -ci true -sn "name" -ln "name" -dt "string" -p "stringOptions";
	addAttr -ci true -sn "value" -ln "value" -dt "string" -p "stringOptions";
	addAttr -ci true -sn "type" -ln "type" -dt "string" -p "stringOptions";
	setAttr -s 81 ".stringOptions";
	setAttr ".stringOptions[0].name" -type "string" "rast motion factor";
	setAttr ".stringOptions[0].value" -type "string" "1.0";
	setAttr ".stringOptions[0].type" -type "string" "scalar";
	setAttr ".stringOptions[1].name" -type "string" "rast transparency depth";
	setAttr ".stringOptions[1].value" -type "string" "8";
	setAttr ".stringOptions[1].type" -type "string" "integer";
	setAttr ".stringOptions[2].name" -type "string" "rast useopacity";
	setAttr ".stringOptions[2].value" -type "string" "true";
	setAttr ".stringOptions[2].type" -type "string" "boolean";
	setAttr ".stringOptions[3].name" -type "string" "importon";
	setAttr ".stringOptions[3].value" -type "string" "false";
	setAttr ".stringOptions[3].type" -type "string" "boolean";
	setAttr ".stringOptions[4].name" -type "string" "importon density";
	setAttr ".stringOptions[4].value" -type "string" "1.0";
	setAttr ".stringOptions[4].type" -type "string" "scalar";
	setAttr ".stringOptions[5].name" -type "string" "importon merge";
	setAttr ".stringOptions[5].value" -type "string" "0.0";
	setAttr ".stringOptions[5].type" -type "string" "scalar";
	setAttr ".stringOptions[6].name" -type "string" "importon trace depth";
	setAttr ".stringOptions[6].value" -type "string" "0";
	setAttr ".stringOptions[6].type" -type "string" "integer";
	setAttr ".stringOptions[7].name" -type "string" "importon traverse";
	setAttr ".stringOptions[7].value" -type "string" "true";
	setAttr ".stringOptions[7].type" -type "string" "boolean";
	setAttr ".stringOptions[8].name" -type "string" "shadowmap pixel samples";
	setAttr ".stringOptions[8].value" -type "string" "3";
	setAttr ".stringOptions[8].type" -type "string" "integer";
	setAttr ".stringOptions[9].name" -type "string" "ambient occlusion";
	setAttr ".stringOptions[9].value" -type "string" "false";
	setAttr ".stringOptions[9].type" -type "string" "boolean";
	setAttr ".stringOptions[10].name" -type "string" "ambient occlusion rays";
	setAttr ".stringOptions[10].value" -type "string" "64";
	setAttr ".stringOptions[10].type" -type "string" "integer";
	setAttr ".stringOptions[11].name" -type "string" "ambient occlusion cache";
	setAttr ".stringOptions[11].value" -type "string" "false";
	setAttr ".stringOptions[11].type" -type "string" "boolean";
	setAttr ".stringOptions[12].name" -type "string" "ambient occlusion cache density";
	setAttr ".stringOptions[12].value" -type "string" "1.0";
	setAttr ".stringOptions[12].type" -type "string" "scalar";
	setAttr ".stringOptions[13].name" -type "string" "ambient occlusion cache points";
	setAttr ".stringOptions[13].value" -type "string" "64";
	setAttr ".stringOptions[13].type" -type "string" "integer";
	setAttr ".stringOptions[14].name" -type "string" "irradiance particles";
	setAttr ".stringOptions[14].value" -type "string" "false";
	setAttr ".stringOptions[14].type" -type "string" "boolean";
	setAttr ".stringOptions[15].name" -type "string" "irradiance particles rays";
	setAttr ".stringOptions[15].value" -type "string" "256";
	setAttr ".stringOptions[15].type" -type "string" "integer";
	setAttr ".stringOptions[16].name" -type "string" "irradiance particles interpolate";
	setAttr ".stringOptions[16].value" -type "string" "1";
	setAttr ".stringOptions[16].type" -type "string" "integer";
	setAttr ".stringOptions[17].name" -type "string" "irradiance particles interppoints";
	setAttr ".stringOptions[17].value" -type "string" "64";
	setAttr ".stringOptions[17].type" -type "string" "integer";
	setAttr ".stringOptions[18].name" -type "string" "irradiance particles indirect passes";
	setAttr ".stringOptions[18].value" -type "string" "0";
	setAttr ".stringOptions[18].type" -type "string" "integer";
	setAttr ".stringOptions[19].name" -type "string" "irradiance particles scale";
	setAttr ".stringOptions[19].value" -type "string" "1.0";
	setAttr ".stringOptions[19].type" -type "string" "scalar";
	setAttr ".stringOptions[20].name" -type "string" "irradiance particles env";
	setAttr ".stringOptions[20].value" -type "string" "true";
	setAttr ".stringOptions[20].type" -type "string" "boolean";
	setAttr ".stringOptions[21].name" -type "string" "irradiance particles env rays";
	setAttr ".stringOptions[21].value" -type "string" "256";
	setAttr ".stringOptions[21].type" -type "string" "integer";
	setAttr ".stringOptions[22].name" -type "string" "irradiance particles env scale";
	setAttr ".stringOptions[22].value" -type "string" "1";
	setAttr ".stringOptions[22].type" -type "string" "integer";
	setAttr ".stringOptions[23].name" -type "string" "irradiance particles rebuild";
	setAttr ".stringOptions[23].value" -type "string" "true";
	setAttr ".stringOptions[23].type" -type "string" "boolean";
	setAttr ".stringOptions[24].name" -type "string" "irradiance particles file";
	setAttr ".stringOptions[24].value" -type "string" "";
	setAttr ".stringOptions[24].type" -type "string" "string";
	setAttr ".stringOptions[25].name" -type "string" "geom displace motion factor";
	setAttr ".stringOptions[25].value" -type "string" "1.0";
	setAttr ".stringOptions[25].type" -type "string" "scalar";
	setAttr ".stringOptions[26].name" -type "string" "contrast all buffers";
	setAttr ".stringOptions[26].value" -type "string" "false";
	setAttr ".stringOptions[26].type" -type "string" "boolean";
	setAttr ".stringOptions[27].name" -type "string" "finalgather normal tolerance";
	setAttr ".stringOptions[27].value" -type "string" "25.842";
	setAttr ".stringOptions[27].type" -type "string" "scalar";
	setAttr ".stringOptions[28].name" -type "string" "trace camera clip";
	setAttr ".stringOptions[28].value" -type "string" "false";
	setAttr ".stringOptions[28].type" -type "string" "boolean";
	setAttr ".stringOptions[29].name" -type "string" "unified sampling";
	setAttr ".stringOptions[29].value" -type "string" "true";
	setAttr ".stringOptions[29].type" -type "string" "boolean";
	setAttr ".stringOptions[30].name" -type "string" "samples quality";
	setAttr ".stringOptions[30].value" -type "string" "0.25 0.25 0.25 0.25";
	setAttr ".stringOptions[30].type" -type "string" "color";
	setAttr ".stringOptions[31].name" -type "string" "samples min";
	setAttr ".stringOptions[31].value" -type "string" "1.0";
	setAttr ".stringOptions[31].type" -type "string" "scalar";
	setAttr ".stringOptions[32].name" -type "string" "samples max";
	setAttr ".stringOptions[32].value" -type "string" "100.0";
	setAttr ".stringOptions[32].type" -type "string" "scalar";
	setAttr ".stringOptions[33].name" -type "string" "samples error cutoff";
	setAttr ".stringOptions[33].value" -type "string" "0.0 0.0 0.0 0.0";
	setAttr ".stringOptions[33].type" -type "string" "color";
	setAttr ".stringOptions[34].name" -type "string" "samples per object";
	setAttr ".stringOptions[34].value" -type "string" "false";
	setAttr ".stringOptions[34].type" -type "string" "boolean";
	setAttr ".stringOptions[35].name" -type "string" "progressive";
	setAttr ".stringOptions[35].value" -type "string" "false";
	setAttr ".stringOptions[35].type" -type "string" "boolean";
	setAttr ".stringOptions[36].name" -type "string" "progressive max time";
	setAttr ".stringOptions[36].value" -type "string" "0";
	setAttr ".stringOptions[36].type" -type "string" "integer";
	setAttr ".stringOptions[37].name" -type "string" "progressive subsampling size";
	setAttr ".stringOptions[37].value" -type "string" "4";
	setAttr ".stringOptions[37].type" -type "string" "integer";
	setAttr ".stringOptions[38].name" -type "string" "iray";
	setAttr ".stringOptions[38].value" -type "string" "false";
	setAttr ".stringOptions[38].type" -type "string" "boolean";
	setAttr ".stringOptions[39].name" -type "string" "light relative scale";
	setAttr ".stringOptions[39].value" -type "string" "0.31831";
	setAttr ".stringOptions[39].type" -type "string" "scalar";
	setAttr ".stringOptions[40].name" -type "string" "trace camera motion vectors";
	setAttr ".stringOptions[40].value" -type "string" "false";
	setAttr ".stringOptions[40].type" -type "string" "boolean";
	setAttr ".stringOptions[41].name" -type "string" "ray differentials";
	setAttr ".stringOptions[41].value" -type "string" "true";
	setAttr ".stringOptions[41].type" -type "string" "boolean";
	setAttr ".stringOptions[42].name" -type "string" "environment lighting mode";
	setAttr ".stringOptions[42].value" -type "string" "off";
	setAttr ".stringOptions[42].type" -type "string" "string";
	setAttr ".stringOptions[43].name" -type "string" "environment lighting quality";
	setAttr ".stringOptions[43].value" -type "string" "0.2";
	setAttr ".stringOptions[43].type" -type "string" "scalar";
	setAttr ".stringOptions[44].name" -type "string" "environment lighting shadow";
	setAttr ".stringOptions[44].value" -type "string" "transparent";
	setAttr ".stringOptions[44].type" -type "string" "string";
	setAttr ".stringOptions[45].name" -type "string" "environment lighting resolution";
	setAttr ".stringOptions[45].value" -type "string" "512";
	setAttr ".stringOptions[45].type" -type "string" "integer";
	setAttr ".stringOptions[46].name" -type "string" "environment lighting shader samples";
	setAttr ".stringOptions[46].value" -type "string" "2";
	setAttr ".stringOptions[46].type" -type "string" "integer";
	setAttr ".stringOptions[47].name" -type "string" "environment lighting scale";
	setAttr ".stringOptions[47].value" -type "string" "1 1 1";
	setAttr ".stringOptions[47].type" -type "string" "color";
	setAttr ".stringOptions[48].name" -type "string" "environment lighting caustic photons";
	setAttr ".stringOptions[48].value" -type "string" "0";
	setAttr ".stringOptions[48].type" -type "string" "integer";
	setAttr ".stringOptions[49].name" -type "string" "environment lighting globillum photons";
	setAttr ".stringOptions[49].value" -type "string" "0";
	setAttr ".stringOptions[49].type" -type "string" "integer";
	setAttr ".stringOptions[50].name" -type "string" "light importance sampling";
	setAttr ".stringOptions[50].value" -type "string" "all";
	setAttr ".stringOptions[50].type" -type "string" "string";
	setAttr ".stringOptions[51].name" -type "string" "light importance sampling quality";
	setAttr ".stringOptions[51].value" -type "string" "1.0";
	setAttr ".stringOptions[51].type" -type "string" "scalar";
	setAttr ".stringOptions[52].name" -type "string" "light importance sampling samples";
	setAttr ".stringOptions[52].value" -type "string" "4";
	setAttr ".stringOptions[52].type" -type "string" "integer";
	setAttr ".stringOptions[53].name" -type "string" "light importance sampling resolution";
	setAttr ".stringOptions[53].value" -type "string" "1.0";
	setAttr ".stringOptions[53].type" -type "string" "scalar";
	setAttr ".stringOptions[54].name" -type "string" "light importance sampling precomputed";
	setAttr ".stringOptions[54].value" -type "string" "false";
	setAttr ".stringOptions[54].type" -type "string" "boolean";
	setAttr ".stringOptions[55].name" -type "string" "mila quality";
	setAttr ".stringOptions[55].value" -type "string" "1.0";
	setAttr ".stringOptions[55].type" -type "string" "scalar";
	setAttr ".stringOptions[56].name" -type "string" "mila glossy quality";
	setAttr ".stringOptions[56].value" -type "string" "1.0";
	setAttr ".stringOptions[56].type" -type "string" "scalar";
	setAttr ".stringOptions[57].name" -type "string" "mila scatter quality";
	setAttr ".stringOptions[57].value" -type "string" "1.0";
	setAttr ".stringOptions[57].type" -type "string" "scalar";
	setAttr ".stringOptions[58].name" -type "string" "mila scatter scale";
	setAttr ".stringOptions[58].value" -type "string" "1.0";
	setAttr ".stringOptions[58].type" -type "string" "scalar";
	setAttr ".stringOptions[59].name" -type "string" "mila diffuse quality";
	setAttr ".stringOptions[59].value" -type "string" "1.0";
	setAttr ".stringOptions[59].type" -type "string" "scalar";
	setAttr ".stringOptions[60].name" -type "string" "mila diffuse detail";
	setAttr ".stringOptions[60].value" -type "string" "false";
	setAttr ".stringOptions[60].type" -type "string" "boolean";
	setAttr ".stringOptions[61].name" -type "string" "mila diffuse detail distance";
	setAttr ".stringOptions[61].value" -type "string" "10.0";
	setAttr ".stringOptions[61].type" -type "string" "scalar";
	setAttr ".stringOptions[62].name" -type "string" "mila use max distance inside";
	setAttr ".stringOptions[62].value" -type "string" "true";
	setAttr ".stringOptions[62].type" -type "string" "boolean";
	setAttr ".stringOptions[63].name" -type "string" "mila clamp output";
	setAttr ".stringOptions[63].value" -type "string" "false";
	setAttr ".stringOptions[63].type" -type "string" "boolean";
	setAttr ".stringOptions[64].name" -type "string" "mila clamp level";
	setAttr ".stringOptions[64].value" -type "string" "1.0";
	setAttr ".stringOptions[64].type" -type "string" "scalar";
	setAttr ".stringOptions[65].name" -type "string" "gi gpu";
	setAttr ".stringOptions[65].value" -type "string" "off";
	setAttr ".stringOptions[65].type" -type "string" "string";
	setAttr ".stringOptions[66].name" -type "string" "gi gpu rays";
	setAttr ".stringOptions[66].value" -type "string" "34";
	setAttr ".stringOptions[66].type" -type "string" "integer";
	setAttr ".stringOptions[67].name" -type "string" "gi gpu passes";
	setAttr ".stringOptions[67].value" -type "string" "4";
	setAttr ".stringOptions[67].type" -type "string" "integer";
	setAttr ".stringOptions[68].name" -type "string" "gi gpu presample density";
	setAttr ".stringOptions[68].value" -type "string" "1.0";
	setAttr ".stringOptions[68].type" -type "string" "scalar";
	setAttr ".stringOptions[69].name" -type "string" "gi gpu presample depth";
	setAttr ".stringOptions[69].value" -type "string" "2";
	setAttr ".stringOptions[69].type" -type "string" "integer";
	setAttr ".stringOptions[70].name" -type "string" "gi gpu filter";
	setAttr ".stringOptions[70].value" -type "string" "1.0";
	setAttr ".stringOptions[70].type" -type "string" "integer";
	setAttr ".stringOptions[71].name" -type "string" "gi gpu depth";
	setAttr ".stringOptions[71].value" -type "string" "3";
	setAttr ".stringOptions[71].type" -type "string" "integer";
	setAttr ".stringOptions[72].name" -type "string" "gi gpu devices";
	setAttr ".stringOptions[72].value" -type "string" "0";
	setAttr ".stringOptions[72].type" -type "string" "integer";
	setAttr ".stringOptions[73].name" -type "string" "shutter shape function";
	setAttr ".stringOptions[73].value" -type "string" "none";
	setAttr ".stringOptions[73].type" -type "string" "string";
	setAttr ".stringOptions[74].name" -type "string" "shutter full open";
	setAttr ".stringOptions[74].value" -type "string" "0.2";
	setAttr ".stringOptions[74].type" -type "string" "scalar";
	setAttr ".stringOptions[75].name" -type "string" "shutter full close";
	setAttr ".stringOptions[75].value" -type "string" "0.8";
	setAttr ".stringOptions[75].type" -type "string" "scalar";
	setAttr ".stringOptions[76].name" -type "string" "gi";
	setAttr ".stringOptions[76].value" -type "string" "off";
	setAttr ".stringOptions[76].type" -type "string" "boolean";
	setAttr ".stringOptions[77].name" -type "string" "gi rays";
	setAttr ".stringOptions[77].value" -type "string" "100";
	setAttr ".stringOptions[77].type" -type "string" "integer";
	setAttr ".stringOptions[78].name" -type "string" "gi depth";
	setAttr ".stringOptions[78].value" -type "string" "0";
	setAttr ".stringOptions[78].type" -type "string" "integer";
	setAttr ".stringOptions[79].name" -type "string" "gi freeze";
	setAttr ".stringOptions[79].value" -type "string" "off";
	setAttr ".stringOptions[79].type" -type "string" "boolean";
	setAttr ".stringOptions[80].name" -type "string" "gi filter";
	setAttr ".stringOptions[80].value" -type "string" "1.0";
	setAttr ".stringOptions[80].type" -type "string" "scalar";
createNode mentalrayFramebuffer -s -n "miDefaultFramebuffer";
	rename -uid "7EE56F07-4219-F834-3DF4-278D0E25AA2D";
createNode lambert -n "HamsterMat";
	rename -uid "300B4EA1-49A0-BAD5-3F4A-83847BA342C3";
	setAttr ".dc" 1;
createNode shadingEngine -n "noseSG";
	rename -uid "2B65913D-4AFB-67B1-637A-0F98BEEA2EBB";
	setAttr ".ihi" 0;
	setAttr -s 22 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
	rename -uid "AFE708EA-4497-0933-5C83-A5A143B4A125";
createNode file -n "file1";
	rename -uid "BD1C93F1-4F07-A5D1-D4DF-40A160358CC6";
	setAttr ".ftn" -type "string" "D:\\Unity\\Octopus\\Assets\\Models\\Pets\\HamsterRemodeled\\Model\\Hamster.fbm\\Hamster_Color.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture1";
	rename -uid "35196582-4C67-AB42-12D3-07AD00099BCA";
createNode skinCluster -n "skinCluster1";
	rename -uid "68404CBF-40FF-70AA-7F19-4FB4C3E3EBB8";
	setAttr -s 26 ".wl";
	setAttr ".wl[0].w[0]"  1;
	setAttr ".wl[1].w[0]"  1;
	setAttr ".wl[2].w[0]"  1;
	setAttr ".wl[3].w[0]"  1;
	setAttr ".wl[4].w[0]"  1;
	setAttr ".wl[5].w[0]"  1;
	setAttr ".wl[6].w[0]"  1;
	setAttr ".wl[7].w[0]"  1;
	setAttr ".wl[8].w[0]"  1;
	setAttr ".wl[9].w[0]"  1;
	setAttr ".wl[10].w[0]"  1;
	setAttr ".wl[11].w[0]"  1;
	setAttr ".wl[12].w[0]"  1;
	setAttr ".wl[13].w[0]"  1;
	setAttr ".wl[14].w[0]"  1;
	setAttr ".wl[15].w[0]"  1;
	setAttr ".wl[16].w[0]"  1;
	setAttr ".wl[17].w[0]"  1;
	setAttr ".wl[18].w[0]"  1;
	setAttr ".wl[19].w[0]"  1;
	setAttr ".wl[20].w[0]"  1;
	setAttr ".wl[21].w[0]"  1;
	setAttr ".wl[22].w[0]"  1;
	setAttr ".wl[23].w[0]"  1;
	setAttr ".wl[24].w[0]"  1;
	setAttr ".wl[25].w[0]"  1;
	setAttr ".pm[0]" -type "matrix" 0.86956500000000003 0 0 0 0 0.86956500000000003 0 0
		 0 0 0.86956500000000003 0 -0.49607000000000001 -6.768046 -1.3306480000000001 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 3.8914179999999998 0 1;
	setAttr ".dpf[0]"  4;
	setAttr ".mi" 5;
	setAttr ".bm" 1;
	setAttr ".ucm" yes;
createNode tweak -n "tweak1";
	rename -uid "6C253434-4D38-956C-4B3F-36BF4B8EA4F4";
createNode objectSet -n "skinCluster1Set";
	rename -uid "F8980E4C-4201-4054-4279-18955C3ACCDD";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster1GroupId";
	rename -uid "74BEA842-4CA7-8ACF-5070-889435D3BBFB";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster1GroupParts";
	rename -uid "A47FE312-4667-AB28-FE7F-D0BEAE88EDDB";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[0:25]";
createNode objectSet -n "tweakSet1";
	rename -uid "B821B901-4E33-120D-35BC-D9A0C24BB4F6";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId2";
	rename -uid "3221BE75-4666-2CE5-3A8F-D29598AD979C";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts2";
	rename -uid "57D55C2F-4795-D038-36CB-E0879E0FD6B5";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode dagPose -n "bindPose1";
	rename -uid "EB00B286-411F-3994-5173-039BDF8994E8";
	setAttr -s 9 ".wm";
	setAttr ".wm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 9 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.0067329159937798977
		 6.1693062782287598 -0.15235787630081177 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0.72254701003264055 0 0.69132179069727817 1
		 1 1 no;
	setAttr ".xm[2]" -type "matrix" "xform" 1.1500000000000001 1.1499999999999999 1.1500000000000001 0
		 -1.6149590442363042 -2.1419699791636049e-008 0 -0.15250657498836517 -2.912883996963501
		 1.7340006710818975e-016 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 1.0709849923573602e-008 0.99999999999999989 1
		 1 1 no;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 0 0 0 0 2.0840090261312446e-016
		 -4.4408920985006262e-016 -2.2083783485169045e-016 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 1 0 0 0 1 0.86956521739130421 0.86956521739130443 0.86956521739130421 no;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 0 0 0 0 -2.8897381508599269e-018
		 1.1791349649429312 -8.9526610933416034e-017 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 no;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 0 0 0 0 -2.2581527796885223e-016
		 1.2649170160293579 0.51265501976013184 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.3911339284509423 -0.58907915428619007 0.39113392845094241 0.5890791542861904 1
		 1 1 no;
	setAttr ".xm[6]" -type "matrix" "xform" 1 1 1 -5.5511151231257827e-017 -5.5511151231257821e-017
		 2.2204460492503131e-016 0 1.692805051803588 -0.17478500306606293 -0.49606999754905701 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.39113392845094241 0.58907915428619007 -0.39113392845094219 0.5890791542861904 1
		 1 1 no;
	setAttr ".xm[7]" -type "matrix" "xform" 1 1 1 1.909203688345375e-016 -3.5183346079800623e-016
		 -5.5511151231257864e-017 0 1.4727280139923096 0.62427800893783569 2.245684520879388e-018 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.090699596933963594 0.99587829734160616 1
		 1 1 no;
	setAttr ".xm[8]" -type "matrix" "xform" 1 1 1 -3.5823585567537613e-017 7.0794529512081849e-017
		 3.3306690738754696e-016 0 0.53796261548995972 0.2128652036190033 -1.1612112316763132e-016 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.68990626092445784 -0.7238987160765199 4.4326012277499434e-017 4.2244574707642798e-017 1
		 1 1 no;
	setAttr -s 9 ".m";
	setAttr -s 9 ".p";
	setAttr -s 9 ".g[0:8]" yes yes yes yes yes yes no no no;
	setAttr ".bp" yes;
createNode skinCluster -n "skinCluster2";
	rename -uid "49AEADE7-47E1-FC1A-F755-519603C4A662";
	setAttr -s 26 ".wl";
	setAttr ".wl[0].w[0]"  1;
	setAttr ".wl[1].w[0]"  1;
	setAttr ".wl[2].w[0]"  1;
	setAttr ".wl[3].w[0]"  1;
	setAttr ".wl[4].w[0]"  1;
	setAttr ".wl[5].w[0]"  1;
	setAttr ".wl[6].w[0]"  1;
	setAttr ".wl[7].w[0]"  1;
	setAttr ".wl[8].w[0]"  1;
	setAttr ".wl[9].w[0]"  1;
	setAttr ".wl[10].w[0]"  1;
	setAttr ".wl[11].w[0]"  1;
	setAttr ".wl[12].w[0]"  1;
	setAttr ".wl[13].w[0]"  1;
	setAttr ".wl[14].w[0]"  1;
	setAttr ".wl[15].w[0]"  1;
	setAttr ".wl[16].w[0]"  1;
	setAttr ".wl[17].w[0]"  1;
	setAttr ".wl[18].w[0]"  1;
	setAttr ".wl[19].w[0]"  1;
	setAttr ".wl[20].w[0]"  1;
	setAttr ".wl[21].w[0]"  1;
	setAttr ".wl[22].w[0]"  1;
	setAttr ".wl[23].w[0]"  1;
	setAttr ".wl[24].w[0]"  1;
	setAttr ".wl[25].w[0]"  1;
	setAttr ".pm[0]" -type "matrix" 0.86956500000000003 0 0 0 0 -0.86956500000000003 0 0
		 0 0 -0.86956500000000003 0 0.49607000000000001 6.7680499999999997 1.330651 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 3.8914179999999998 0 1;
	setAttr ".dpf[0]"  4;
	setAttr ".mi" 5;
	setAttr ".bm" 1;
	setAttr ".ucm" yes;
createNode tweak -n "tweak2";
	rename -uid "DEC21F68-4A02-D7AF-6C07-64ACB6E6EE1D";
createNode objectSet -n "skinCluster2Set";
	rename -uid "FC16A8E0-4475-255D-4328-11ABF5ED6470";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster2GroupId";
	rename -uid "63CC3898-4DBD-F0D8-4332-498E5C6F5FD4";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster2GroupParts";
	rename -uid "745110F8-4418-8F0D-214E-338514BAA676";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[0:25]";
createNode objectSet -n "tweakSet2";
	rename -uid "3E277E15-4A8A-3A75-F0C3-10B172FB3DAA";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId4";
	rename -uid "AA073B05-4997-4540-8812-F8AC38DE2E32";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts4";
	rename -uid "B34ABCC9-4D96-07F9-674D-DE92AE8C0F41";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode dagPose -n "bindPose2";
	rename -uid "76DA7824-4B7D-5345-BED1-0FB0FB126CC1";
	setAttr -s 7 ".wm";
	setAttr ".wm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wm[1]" -type "matrix" -0.044148363414217462 0 -0.99902498567745857 0 0 1 0 0
		 0.99902498567745857 0 -0.044148363414217462 0 -0.0067329159937798977 6.1693062782287598 -0.15235787630081177 1;
	setAttr ".wm[2]" -type "matrix" 1.1500000000000001 -2.8183361971427663e-018 -7.5633943552588789e-016 0
		 2.8183361971428029e-018 1.1499999999999999 6.3775584429095611e-017 0 7.5633943552588789e-016 -6.3775584429095623e-017 1.1500000000000001 0
		 -2.9813577127890678e-010 3.2564222812652588 2.5926580049517867e-009 1;
	setAttr ".wm[3]" -type "matrix" 1.1500000000000001 -2.8183361971427663e-018 -7.5633943552588789e-016 0
		 2.8183361971428029e-018 1.1499999999999999 6.3775584429095611e-017 0 7.5633943552588789e-016 -6.3775584429095623e-017 1.1500000000000001 0
		 -2.9813553161786876e-010 3.2564222812652583 2.5926577509882771e-009 1;
	setAttr ".wm[4]" -type "matrix" 1.1500000000000001 -2.8183361971427663e-018 -7.5633943552588789e-016 0
		 2.8183361971428029e-018 1.1499999999999999 6.3775584429095611e-017 0 7.5633943552588789e-016 -6.3775584429095623e-017 1.1500000000000001 0
		 -2.9813553161786882e-010 4.6124274909496297 2.5926577232326957e-009 1;
	setAttr ".wm[5]" -type "matrix" 6.7912723420983526e-016 1.0598806814087751 0.44626555006685242 0
		 -1.1428402717144213e-015 0.44626555006685237 -1.0598806814087753 0 -1.1500000000000001 1.3049398402903573e-016 1.2670420268534601e-015 0
		 -2.9813539999926882e-010 6.0670820593833916 0.58955327531680957 1;
	setAttr ".wm[6]" -type "matrix" 1.1499999999999999 0 0 0 0 -1.1499999999999999 0 0
		 0 0 -1.1499999999999999 0 -0.57048100000000002 7.7832600000000003 1.530249 1;
	setAttr -s 7 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.0067329159937798977
		 6.1693062782287598 -0.15235787630081177 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0.72254701003264055 0 0.69132179069727817 1
		 1 1 no;
	setAttr ".xm[2]" -type "matrix" "xform" 1.1500000000000001 1.1499999999999999 1.1500000000000001 0
		 -1.6149590442363042 -2.1419699791636049e-008 0 -0.15250657498836517 -2.912883996963501
		 1.7362641494985239e-016 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 1.0709849923573602e-008 0.99999999999999989 1
		 1 1 no;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 0 0 0 0 2.0840090261312446e-016
		 -4.4408920985006262e-016 -2.2083783443810015e-016 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 1 0 0 0 1 0.86956521739130421 0.86956521739130443 0.86956521739130421 no;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 0 0 0 0 -2.8897380991611386e-018
		 1.1791349649429321 -8.952661134700634e-017 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 no;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 0 0 0 0 -2.2581527796885223e-016
		 1.2649170160293579 0.51265501976013184 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.3911339284509423 -0.58907915428619007 0.39113392845094241 0.5890791542861904 1
		 1 1 no;
	setAttr ".xm[6]" -type "matrix" "xform" 1 1 1 2.2204460492503131e-016 0 0 0 1.69281005859375
		 -0.17478600144386292 0.49606999754905701 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.5890791542861904 0.3911339284509423 0.58907915428618995 0.39113392845094264 1
		 1 1 no;
	setAttr -s 7 ".m";
	setAttr -s 7 ".p";
	setAttr -s 7 ".g[0:6]" yes yes yes yes yes yes no;
	setAttr ".bp" yes;
createNode skinCluster -n "skinCluster3";
	rename -uid "4BFC74E7-4193-344F-4E40-87B0F892338B";
	setAttr -s 61 ".wl";
	setAttr ".wl[0].w[0]"  1;
	setAttr ".wl[1].w[0]"  1;
	setAttr ".wl[2].w[0]"  1;
	setAttr ".wl[3].w[0]"  1;
	setAttr ".wl[4].w[0]"  1;
	setAttr ".wl[5].w[0]"  1;
	setAttr -s 3 ".wl[6].w[0:2]"  0.13862376950859895 0.17568241118691685 
		0.68569381930448425;
	setAttr -s 3 ".wl[7].w[0:2]"  0.20705469033466234 0.27404616112504837 
		0.51889914854028929;
	setAttr -s 3 ".wl[8].w[0:2]"  0.26271260614975483 0.42893355901912655 
		0.30835383483111856;
	setAttr -s 3 ".wl[9].w[0:2]"  0.27024591092030392 0.4110809352380117 
		0.31867315384168438;
	setAttr -s 3 ".wl[10].w[0:2]"  0.26601890593316413 0.42304755821369089 
		0.31093353585314498;
	setAttr -s 3 ".wl[11].w[0:2]"  0.13525366823755877 0.16915935578338115 
		0.69558697597906005;
	setAttr -s 3 ".wl[12].w[0:2]"  0.028778595245439836 0.07832003129753648 
		0.89290137345702369;
	setAttr -s 3 ".wl[13].w[0:2]"  0.039474468735937671 0.12974638664282803 
		0.83077914462123426;
	setAttr -s 3 ".wl[14].w[0:2]"  0.037551257688706284 0.21781116176875218 
		0.74463758054254148;
	setAttr -s 3 ".wl[15].w[0:2]"  0.018582133140908289 0.36721278988558881 
		0.61420507697350291;
	setAttr -s 3 ".wl[16].w[0:2]"  0.0024290829332686975 0.45759054522511838 
		0.53998037184161285;
	setAttr -s 3 ".wl[17].w[0:2]"  0.0060615568018107246 0.018985226834316367 
		0.974953216363873;
	setAttr ".wl[18].w[2]"  1;
	setAttr -s 3 ".wl[19].w[0:2]"  0.58254234011771078 0.10263876390112424 
		0.31481889598116503;
	setAttr -s 3 ".wl[20].w[0:2]"  0.60365924369575386 0.14257987876703332 
		0.25376087753721288;
	setAttr -s 3 ".wl[21].w[0:2]"  0.62461034727400078 0.1936389771973365 
		0.1817506755286627;
	setAttr -s 3 ".wl[22].w[0:2]"  0.63189364282312299 0.20300052321930898 
		0.16510583395756809;
	setAttr -s 3 ".wl[23].w[0:2]"  0.63260431625289049 0.20725540738255294 
		0.16014027636455661;
	setAttr -s 3 ".wl[24].w[0:2]"  0.58343122611548281 0.093185175847878859 
		0.32338359803663841;
	setAttr -s 3 ".wl[25].w[0:2]"  0.081296987083144173 0.13384583966741062 
		0.78485717324944515;
	setAttr -s 3 ".wl[26].w[0:2]"  0.11145020754354959 0.20580852927270538 
		0.68274126318374506;
	setAttr -s 3 ".wl[27].w[0:2]"  0.12554677567140063 0.39495007948606059 
		0.4795031448425387;
	setAttr -s 3 ".wl[28].w[0:2]"  0.087425798993788842 0.45644125533255858 
		0.45613294567365259;
	setAttr -s 3 ".wl[29].w[0:2]"  0.038582751588678431 0.48072028573786818 
		0.48069696267345347;
	setAttr -s 3 ".wl[30].w[0:2]"  0.052761519581657403 0.093334297414811723 
		0.85390418300353088;
	setAttr -s 3 ".wl[31].w[0:2]"  0.0014088886730943713 0.0070340546683885412 
		0.99155705665851712;
	setAttr -s 3 ".wl[32].w[0:2]"  0.0026355088654716934 0.014042357039792966 
		0.98332213409473535;
	setAttr -s 3 ".wl[33].w[0:2]"  0.0028525230275035667 0.017065150298079333 
		0.98008232667441708;
	setAttr -s 3 ".wl[34].w[0:2]"  0.0027707247704567436 0.020438323513742709 
		0.97679095171580055;
	setAttr -s 3 ".wl[35].w[0:2]"  0.0026184375364318598 0.021782678376100695 
		0.97559888408746742;
	setAttr ".wl[36].w[2]"  1;
	setAttr ".wl[37].w[0]"  1;
	setAttr ".wl[38].w[0]"  1;
	setAttr ".wl[39].w[0]"  1;
	setAttr ".wl[40].w[0]"  1;
	setAttr -s 3 ".wl[41].w[0:2]"  0.25988356044050681 0.16949848507071269 
		0.57061795448878061;
	setAttr -s 3 ".wl[42].w[0:2]"  0.20705469033466248 0.27404616112504865 
		0.51889914854028885;
	setAttr -s 3 ".wl[43].w[0:2]"  0.26271260614975533 0.42893355901912633 
		0.30835383483111833;
	setAttr -s 3 ".wl[44].w[0:2]"  0.27024591092030426 0.41108093523801154 
		0.31867315384168426;
	setAttr -s 3 ".wl[45].w[0:2]"  0.028778595245440009 0.078320031297536813 
		0.89290137345702314;
	setAttr -s 3 ".wl[46].w[0:2]"  0.03947446873593792 0.1297463866428285 
		0.83077914462123359;
	setAttr -s 3 ".wl[47].w[0:2]"  0.037551257688706562 0.21781116176875276 
		0.7446375805425407;
	setAttr -s 3 ".wl[48].w[0:2]"  0.018582133140908487 0.36721278988558936 
		0.61420507697350224;
	setAttr -s 3 ".wl[49].w[0:2]"  0.61400898430189399 0.10120892904614603 
		0.28478208665196003;
	setAttr -s 3 ".wl[50].w[0:2]"  0.61202957890979104 0.14219654172003571 
		0.24577387937017323;
	setAttr -s 3 ".wl[51].w[0:2]"  0.62681172532870533 0.19352591220909349 
		0.17966236246220124;
	setAttr -s 3 ".wl[52].w[0:2]"  0.63241548812547499 0.20296556370741448 
		0.16461894816711053;
	setAttr -s 3 ".wl[53].w[0:2]"  0.081296987083144381 0.13384583966741084 
		0.78485717324944471;
	setAttr -s 3 ".wl[54].w[0:2]"  0.11145020754354995 0.20580852927270554 
		0.68274126318374451;
	setAttr -s 3 ".wl[55].w[0:2]"  0.12554677567140118 0.39495007948606015 
		0.47950314484253859;
	setAttr -s 3 ".wl[56].w[0:2]"  0.087425798993789453 0.45644125533255803 
		0.45613294567365248;
	setAttr -s 3 ".wl[57].w[0:2]"  0.0014088886730943986 0.0070340546683886661 
		0.9915570566585169;
	setAttr -s 3 ".wl[58].w[0:2]"  0.0026355088654717333 0.014042357039793162 
		0.98332213409473523;
	setAttr -s 3 ".wl[59].w[0:2]"  0.0028525230275036045 0.017065150298079517 
		0.98008232667441686;
	setAttr -s 3 ".wl[60].w[0:2]"  0.0027707247704567652 0.020438323513742859 
		0.97679095171580044;
	setAttr -s 3 ".pm";
	setAttr ".pm[0]" -type "matrix" 0 0 -0.86956500000000003 0 0.80142199999999997 0.33744099999999999 0 0
		 0.33744099999999999 -0.80142199999999997 0 0 -5.0612329999999996 -1.5748 0 1;
	setAttr ".pm[1]" -type "matrix" 0 0 -0.86956500000000003 0 0.84919599999999995 0.187111 0 0
		 0.187111 -0.84919599999999995 0 0 -6.8237249999999996 -0.98252700000000004 0 1;
	setAttr ".pm[2]" -type "matrix" 0 0 0.86956500000000003 0 0.14608299999999999 0.85720700000000005 0 0
		 -0.85720700000000005 0.14608299999999999 0 0 -0.84021800000000002 -7.4106310000000004 0 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 3 ".ma";
	setAttr -s 3 ".dpf[0:2]"  4 4 4;
	setAttr -s 3 ".lw";
	setAttr -s 3 ".lw";
	setAttr ".mi" 5;
	setAttr ".bm" 1;
	setAttr ".ucm" yes;
	setAttr -s 3 ".ifcl";
	setAttr -s 3 ".ifcl";
createNode tweak -n "tweak3";
	rename -uid "68FC9366-4985-FB75-3A72-10ACBF4B3BD8";
createNode objectSet -n "skinCluster3Set";
	rename -uid "DD82C64D-4042-D990-957F-73BEA27583B4";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster3GroupId";
	rename -uid "67FD12CD-4874-C79E-477A-AAB1DECDF489";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster3GroupParts";
	rename -uid "81389048-497E-85A4-6B4A-D5A6ACD0A6D9";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[0:60]";
createNode objectSet -n "tweakSet3";
	rename -uid "02071745-47AE-43FA-835F-46AB43BA709C";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId6";
	rename -uid "DE5262A4-476E-8203-618D-C08D90F48AEB";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts6";
	rename -uid "56D3FB02-4A71-3D9E-0B5D-A0A09B47ADE2";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode skinCluster -n "skinCluster4";
	rename -uid "E7B01456-48E6-57B2-DF89-828E288B9444";
	setAttr -s 44 ".wl";
	setAttr ".wl[0].w[0]"  1;
	setAttr ".wl[1].w[0]"  1;
	setAttr ".wl[2].w[0]"  1;
	setAttr ".wl[3].w[0]"  1;
	setAttr ".wl[4].w[0]"  1;
	setAttr ".wl[5].w[0]"  1;
	setAttr ".wl[6].w[0]"  1;
	setAttr ".wl[7].w[0]"  1;
	setAttr ".wl[8].w[0]"  1;
	setAttr ".wl[9].w[0]"  1;
	setAttr ".wl[10].w[0]"  1;
	setAttr ".wl[11].w[0]"  1;
	setAttr ".wl[12].w[0]"  1;
	setAttr ".wl[13].w[0]"  1;
	setAttr ".wl[14].w[0]"  1;
	setAttr ".wl[15].w[0]"  1;
	setAttr ".wl[16].w[0]"  1;
	setAttr ".wl[17].w[0]"  1;
	setAttr ".wl[18].w[0]"  1;
	setAttr ".wl[19].w[0]"  1;
	setAttr ".wl[20].w[0]"  1;
	setAttr ".wl[21].w[0]"  1;
	setAttr ".wl[22].w[0]"  1;
	setAttr ".wl[23].w[0]"  1;
	setAttr ".wl[24].w[0]"  1;
	setAttr ".wl[25].w[0]"  1;
	setAttr ".wl[26].w[0]"  1;
	setAttr ".wl[27].w[0]"  1;
	setAttr ".wl[28].w[0]"  1;
	setAttr ".wl[29].w[0]"  1;
	setAttr ".wl[30].w[0]"  1;
	setAttr ".wl[31].w[0]"  1;
	setAttr ".wl[32].w[0]"  1;
	setAttr ".wl[33].w[0]"  1;
	setAttr ".wl[34].w[0]"  1;
	setAttr ".wl[35].w[0]"  1;
	setAttr ".wl[36].w[0]"  1;
	setAttr ".wl[37].w[0]"  1;
	setAttr ".wl[38].w[0]"  1;
	setAttr ".wl[39].w[0]"  1;
	setAttr ".wl[40].w[0]"  1;
	setAttr ".wl[41].w[0]"  1;
	setAttr ".wl[42].w[0]"  1;
	setAttr ".wl[43].w[0]"  1;
	setAttr ".pm[0]" -type "matrix" 0.86956500000000003 0 0 0 0 0.86956500000000003 0 0
		 0 0 0.86956500000000003 0 -1.4074409999999999 -6.6228389999999999 -5.6134900000000001e-007 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 3.8914179999999998 0 1;
	setAttr ".dpf[0]"  4;
	setAttr ".mi" 5;
	setAttr ".bm" 1;
	setAttr ".ucm" yes;
createNode tweak -n "tweak4";
	rename -uid "65296397-4F42-D5C0-4800-7795A3583143";
createNode objectSet -n "skinCluster4Set";
	rename -uid "DE804BA8-4E36-06B9-63BA-32A320E165C3";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster4GroupId";
	rename -uid "885D5730-42E2-F1D8-F547-A2B17BC18228";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster4GroupParts";
	rename -uid "527A0126-4D76-3F18-3004-F8860928EE03";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[0:43]";
createNode objectSet -n "tweakSet4";
	rename -uid "C54195F3-4448-6D50-104A-1EBAC77728DB";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8";
	rename -uid "4C73A6AB-46E5-F4CC-4CC2-8D81483C2063";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts8";
	rename -uid "A259C101-402A-EDF2-48CE-B789510A998B";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode dagPose -n "bindPose3";
	rename -uid "4CA25468-437E-AE51-510C-28BF2E519E73";
	setAttr -s 7 ".wm";
	setAttr ".wm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wm[1]" -type "matrix" -0.044148363414217462 0 -0.99902498567745857 0 0 1 0 0
		 0.99902498567745857 0 -0.044148363414217462 0 -0.0067329159937798977 6.1693062782287598 -0.15235787630081177 1;
	setAttr ".wm[2]" -type "matrix" 1.1500000000000001 -2.8183361971427663e-018 -7.5633943552588789e-016 0
		 2.8183361971428029e-018 1.1499999999999999 6.3775584429095611e-017 0 7.5633943552588789e-016 -6.3775584429095623e-017 1.1500000000000001 0
		 -2.9813577127890678e-010 3.2564222812652588 2.5926580049517867e-009 1;
	setAttr ".wm[3]" -type "matrix" 1.1500000000000001 -2.8183361971427663e-018 -7.5633943552588789e-016 0
		 2.8183361971428029e-018 1.1499999999999999 6.3775584429095611e-017 0 7.5633943552588789e-016 -6.3775584429095623e-017 1.1500000000000001 0
		 -2.9813553161786876e-010 3.2564222812652583 2.5926577509882771e-009 1;
	setAttr ".wm[4]" -type "matrix" 1.1500000000000001 -2.8183361971427663e-018 -7.5633943552588789e-016 0
		 2.8183361971428029e-018 1.1499999999999999 6.3775584429095611e-017 0 7.5633943552588789e-016 -6.3775584429095623e-017 1.1500000000000001 0
		 -2.9813553161786882e-010 4.6124274909496297 2.5926577232326957e-009 1;
	setAttr ".wm[5]" -type "matrix" 6.7912723420983526e-016 1.0598806814087751 0.44626555006685242 0
		 -1.1428402717144213e-015 0.44626555006685237 -1.0598806814087753 0 -1.1500000000000001 1.3049398402903573e-016 1.2670420268534601e-015 0
		 -2.9813539999926882e-010 6.0670820593833916 0.58955327531680957 1;
	setAttr ".wm[6]" -type "matrix" 1.1499999999999999 0 0 0 0 1.1499999999999999 0 0
		 0 0 1.1499999999999999 0 1.6185579999999999 7.6162669999999997 6.4555199999999996e-007 1;
	setAttr -s 7 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.0067329159937798977
		 6.1693062782287598 -0.15235787630081177 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0.72254701003264055 0 0.69132179069727817 1
		 1 1 no;
	setAttr ".xm[2]" -type "matrix" "xform" 1.1500000000000001 1.1499999999999999 1.1500000000000001 0
		 -1.6149590442363042 -2.1419699791636049e-008 0 -0.15250657498836517 -2.912883996963501
		 1.7362641494985239e-016 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 1.0709849923573602e-008 0.99999999999999989 1
		 1 1 no;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 0 0 0 0 2.0840090261312446e-016
		 -4.4408920985006262e-016 -2.2083783443810015e-016 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 1 0 0 0 1 0.86956521739130421 0.86956521739130443 0.86956521739130421 no;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 0 0 0 0 -2.8897380991611386e-018
		 1.1791349649429321 -8.952661134700634e-017 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 no;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 0 0 0 0 -2.2581527796885223e-016
		 1.2649170160293579 0.51265501976013184 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.3911339284509423 -0.58907915428619007 0.39113392845094241 0.5890791542861904 1
		 1 1 no;
	setAttr ".xm[6]" -type "matrix" "xform" 1 1 1 -5.5511151231257827e-017 -5.5511151231257821e-017
		 2.2204460492503131e-016 0 1.0426100492477417 0.99523800611495972 -1.4074410200119019 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.39113392845094241 0.58907915428619007 -0.39113392845094219 0.5890791542861904 1
		 1 1 no;
	setAttr -s 7 ".m";
	setAttr -s 7 ".p";
	setAttr -s 7 ".g[0:6]" yes yes yes yes yes yes no;
	setAttr ".bp" yes;
createNode skinCluster -n "skinCluster5";
	rename -uid "2BAFF258-4225-71E7-EEB7-6F94F516A686";
	setAttr -s 44 ".wl";
	setAttr ".wl[0].w[0]"  1;
	setAttr ".wl[1].w[0]"  1;
	setAttr ".wl[2].w[0]"  1;
	setAttr ".wl[3].w[0]"  1;
	setAttr ".wl[4].w[0]"  1;
	setAttr ".wl[5].w[0]"  1;
	setAttr ".wl[6].w[0]"  1;
	setAttr ".wl[7].w[0]"  1;
	setAttr ".wl[8].w[0]"  1;
	setAttr ".wl[9].w[0]"  1;
	setAttr ".wl[10].w[0]"  1;
	setAttr ".wl[11].w[0]"  1;
	setAttr ".wl[12].w[0]"  1;
	setAttr ".wl[13].w[0]"  1;
	setAttr ".wl[14].w[0]"  1;
	setAttr ".wl[15].w[0]"  1;
	setAttr ".wl[16].w[0]"  1;
	setAttr ".wl[17].w[0]"  1;
	setAttr ".wl[18].w[0]"  1;
	setAttr ".wl[19].w[0]"  1;
	setAttr ".wl[20].w[0]"  1;
	setAttr ".wl[21].w[0]"  1;
	setAttr ".wl[22].w[0]"  1;
	setAttr ".wl[23].w[0]"  1;
	setAttr ".wl[24].w[0]"  1;
	setAttr ".wl[25].w[0]"  1;
	setAttr ".wl[26].w[0]"  1;
	setAttr ".wl[27].w[0]"  1;
	setAttr ".wl[28].w[0]"  1;
	setAttr ".wl[29].w[0]"  1;
	setAttr ".wl[30].w[0]"  1;
	setAttr ".wl[31].w[0]"  1;
	setAttr ".wl[32].w[0]"  1;
	setAttr ".wl[33].w[0]"  1;
	setAttr ".wl[34].w[0]"  1;
	setAttr ".wl[35].w[0]"  1;
	setAttr ".wl[36].w[0]"  1;
	setAttr ".wl[37].w[0]"  1;
	setAttr ".wl[38].w[0]"  1;
	setAttr ".wl[39].w[0]"  1;
	setAttr ".wl[40].w[0]"  1;
	setAttr ".wl[41].w[0]"  1;
	setAttr ".wl[42].w[0]"  1;
	setAttr ".wl[43].w[0]"  1;
	setAttr ".pm[0]" -type "matrix" 0.86956500000000003 0 0 0 0 -0.86956500000000003 0 0
		 0 0 -0.86956500000000003 0 1.40744 6.6228400000000001 2.7770599999999999e-008 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 3.8914179999999998 0 1;
	setAttr ".dpf[0]"  4;
	setAttr ".mi" 5;
	setAttr ".bm" 1;
	setAttr ".ucm" yes;
createNode tweak -n "tweak5";
	rename -uid "230589DF-4CAC-5A9E-9763-0AAB6CA2AB97";
createNode objectSet -n "skinCluster5Set";
	rename -uid "D888B233-4B75-D558-F5B1-D0A504208B25";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster5GroupId";
	rename -uid "689BD015-489F-C171-8ACC-D0BE55A6E4B8";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster5GroupParts";
	rename -uid "4BE70E12-4124-CC3A-C3AA-76A950A8EA68";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[0:43]";
createNode objectSet -n "tweakSet5";
	rename -uid "3F57A3C3-4058-797E-8D42-DF842C69B427";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId10";
	rename -uid "FFC9E0DF-40CC-8B14-E0D6-D2B98F3868D6";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts10";
	rename -uid "3A166B63-417C-F8A3-BB50-A788F4CD677A";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode dagPose -n "bindPose4";
	rename -uid "B84BBD41-489D-5D90-DA5E-45841A625E80";
	setAttr -s 7 ".wm";
	setAttr ".wm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wm[1]" -type "matrix" -0.044148363414217462 0 -0.99902498567745857 0 0 1 0 0
		 0.99902498567745857 0 -0.044148363414217462 0 -0.0067329159937798977 6.1693062782287598 -0.15235787630081177 1;
	setAttr ".wm[2]" -type "matrix" 1.1500000000000001 -2.8183361971427663e-018 -7.5633943552588789e-016 0
		 2.8183361971428029e-018 1.1499999999999999 6.3775584429095611e-017 0 7.5633943552588789e-016 -6.3775584429095623e-017 1.1500000000000001 0
		 -2.9813577127890678e-010 3.2564222812652588 2.5926580049517867e-009 1;
	setAttr ".wm[3]" -type "matrix" 1.1500000000000001 -2.8183361971427663e-018 -7.5633943552588789e-016 0
		 2.8183361971428029e-018 1.1499999999999999 6.3775584429095611e-017 0 7.5633943552588789e-016 -6.3775584429095623e-017 1.1500000000000001 0
		 -2.9813553161786876e-010 3.2564222812652583 2.5926577509882771e-009 1;
	setAttr ".wm[4]" -type "matrix" 1.1500000000000001 -2.8183361971427663e-018 -7.5633943552588789e-016 0
		 2.8183361971428029e-018 1.1499999999999999 6.3775584429095611e-017 0 7.5633943552588789e-016 -6.3775584429095623e-017 1.1500000000000001 0
		 -2.9813553161786882e-010 4.6124274909496297 2.5926577232326957e-009 1;
	setAttr ".wm[5]" -type "matrix" 6.7912723420983526e-016 1.0598806814087751 0.44626555006685242 0
		 -1.1428402717144213e-015 0.44626555006685237 -1.0598806814087753 0 -1.1500000000000001 1.3049398402903573e-016 1.2670420268534601e-015 0
		 -2.9813539999926882e-010 6.0670820593833916 0.58955327531680957 1;
	setAttr ".wm[6]" -type "matrix" 1.1499999999999999 0 0 0 0 -1.1499999999999999 0 0
		 0 0 -1.1499999999999999 0 -1.6185560000000001 7.6162679999999998 3.19362e-008 1;
	setAttr -s 7 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.0067329159937798977
		 6.1693062782287598 -0.15235787630081177 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0.72254701003264055 0 0.69132179069727817 1
		 1 1 no;
	setAttr ".xm[2]" -type "matrix" "xform" 1.1500000000000001 1.1499999999999999 1.1500000000000001 0
		 -1.6149590442363042 -2.1419699791636049e-008 0 -0.15250657498836517 -2.912883996963501
		 1.7362641494985239e-016 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 1.0709849923573602e-008 0.99999999999999989 1
		 1 1 no;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 0 0 0 0 2.0840090261312446e-016
		 -4.4408920985006262e-016 -2.2083783443810015e-016 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 1 0 0 0 1 0.86956521739130421 0.86956521739130443 0.86956521739130421 no;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 0 0 0 0 -2.8897380991611386e-018
		 1.1791349649429321 -8.952661134700634e-017 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 no;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 0 0 0 0 -2.2581527796885223e-016
		 1.2649170160293579 0.51265501976013184 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.3911339284509423 -0.58907915428619007 0.39113392845094241 0.5890791542861904 1
		 1 1 no;
	setAttr ".xm[6]" -type "matrix" "xform" 1 1 1 2.2204460492503131e-016 0 0 0 1.0426110029220581
		 0.9952390193939209 1.4074399471282959 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.5890791542861904 0.3911339284509423 0.58907915428618995 0.39113392845094264 1
		 1 1 no;
	setAttr -s 7 ".m";
	setAttr -s 7 ".p";
	setAttr -s 7 ".g[0:6]" yes yes yes yes yes yes no;
	setAttr ".bp" yes;
createNode skinCluster -n "skinCluster6";
	rename -uid "FEED40F9-4690-DFF7-E271-DD870512FE6B";
	setAttr -s 137 ".wl";
	setAttr ".wl[0].w[0]"  1;
	setAttr ".wl[1].w[0]"  1;
	setAttr ".wl[2].w[0]"  1;
	setAttr ".wl[3].w[0]"  1;
	setAttr ".wl[4].w[0]"  1;
	setAttr ".wl[5].w[0]"  1;
	setAttr ".wl[6].w[0]"  1;
	setAttr ".wl[7].w[0]"  1;
	setAttr ".wl[8].w[0]"  1;
	setAttr ".wl[9].w[0]"  1;
	setAttr ".wl[10].w[0]"  1;
	setAttr ".wl[11].w[0]"  1;
	setAttr ".wl[12].w[0]"  1;
	setAttr ".wl[13].w[0]"  1;
	setAttr ".wl[14].w[0]"  1;
	setAttr ".wl[15].w[0]"  1;
	setAttr ".wl[16].w[0]"  1;
	setAttr ".wl[17].w[0]"  1;
	setAttr ".wl[18].w[0]"  1;
	setAttr ".wl[19].w[0]"  1;
	setAttr ".wl[20].w[0]"  1;
	setAttr ".wl[21].w[0]"  1;
	setAttr ".wl[22].w[0]"  1;
	setAttr ".wl[23].w[0]"  1;
	setAttr ".wl[24].w[0]"  1;
	setAttr ".wl[25].w[0]"  1;
	setAttr ".wl[26].w[0]"  1;
	setAttr ".wl[27].w[0]"  1;
	setAttr ".wl[28].w[0]"  1;
	setAttr ".wl[29].w[0]"  1;
	setAttr ".wl[30].w[0]"  1;
	setAttr ".wl[31].w[0]"  1;
	setAttr ".wl[32].w[0]"  1;
	setAttr ".wl[33].w[0]"  1;
	setAttr ".wl[34].w[0]"  1;
	setAttr ".wl[35].w[0]"  1;
	setAttr ".wl[36].w[0]"  1;
	setAttr ".wl[37].w[0]"  1;
	setAttr ".wl[38].w[0]"  1;
	setAttr ".wl[39].w[0]"  1;
	setAttr ".wl[40].w[0]"  1;
	setAttr ".wl[41].w[0]"  1;
	setAttr ".wl[42].w[0]"  1;
	setAttr ".wl[43].w[0]"  1;
	setAttr ".wl[44].w[0]"  1;
	setAttr ".wl[45].w[0]"  1;
	setAttr ".wl[46].w[0]"  1;
	setAttr ".wl[47].w[0]"  1;
	setAttr ".wl[48].w[0]"  1;
	setAttr ".wl[49].w[0]"  1;
	setAttr ".wl[50].w[0]"  1;
	setAttr ".wl[51].w[0]"  1;
	setAttr ".wl[52].w[0]"  1;
	setAttr ".wl[53].w[0]"  1;
	setAttr ".wl[54].w[0]"  1;
	setAttr ".wl[55].w[0]"  1;
	setAttr ".wl[56].w[0]"  1;
	setAttr ".wl[57].w[0]"  1;
	setAttr ".wl[58].w[0]"  1;
	setAttr ".wl[59].w[0]"  1;
	setAttr ".wl[60].w[0]"  1;
	setAttr ".wl[61].w[0]"  1;
	setAttr ".wl[62].w[0]"  1;
	setAttr ".wl[63].w[0]"  1;
	setAttr ".wl[64].w[0]"  1;
	setAttr ".wl[65].w[0]"  1;
	setAttr ".wl[66].w[0]"  1;
	setAttr ".wl[67].w[0]"  1;
	setAttr ".wl[68].w[0]"  1;
	setAttr ".wl[69].w[0]"  1;
	setAttr ".wl[70].w[0]"  1;
	setAttr ".wl[71].w[0]"  1;
	setAttr ".wl[72].w[0]"  1;
	setAttr ".wl[73].w[0]"  1;
	setAttr ".wl[74].w[0]"  1;
	setAttr ".wl[75].w[0]"  1;
	setAttr ".wl[76].w[0]"  1;
	setAttr ".wl[77].w[0]"  1;
	setAttr ".wl[78].w[0]"  1;
	setAttr ".wl[79].w[0]"  1;
	setAttr ".wl[80].w[0]"  1;
	setAttr ".wl[81].w[0]"  1;
	setAttr ".wl[82].w[0]"  1;
	setAttr ".wl[83].w[0]"  1;
	setAttr ".wl[84].w[0]"  1;
	setAttr ".wl[85].w[0]"  1;
	setAttr ".wl[86].w[0]"  1;
	setAttr ".wl[87].w[0]"  1;
	setAttr ".wl[88].w[0]"  1;
	setAttr ".wl[89].w[0]"  1;
	setAttr ".wl[90].w[0]"  1;
	setAttr ".wl[91].w[0]"  1;
	setAttr ".wl[92].w[0]"  1;
	setAttr ".wl[93].w[0]"  1;
	setAttr ".wl[94].w[0]"  1;
	setAttr ".wl[95].w[0]"  1;
	setAttr ".wl[96].w[0]"  1;
	setAttr ".wl[97].w[0]"  1;
	setAttr ".wl[98].w[0]"  1;
	setAttr ".wl[99].w[0]"  1;
	setAttr ".wl[100].w[0]"  1;
	setAttr ".wl[101].w[0]"  1;
	setAttr ".wl[102].w[0]"  1;
	setAttr ".wl[103].w[0]"  1;
	setAttr ".wl[104].w[0]"  1;
	setAttr ".wl[105].w[0]"  1;
	setAttr ".wl[106].w[0]"  1;
	setAttr ".wl[107].w[0]"  1;
	setAttr ".wl[108].w[0]"  1;
	setAttr ".wl[109].w[0]"  1;
	setAttr ".wl[110].w[0]"  1;
	setAttr ".wl[111].w[0]"  1;
	setAttr ".wl[112].w[0]"  1;
	setAttr ".wl[113].w[0]"  1;
	setAttr ".wl[114].w[0]"  1;
	setAttr ".wl[115].w[0]"  1;
	setAttr ".wl[116].w[0]"  1;
	setAttr ".wl[117].w[0]"  1;
	setAttr ".wl[118].w[0]"  1;
	setAttr ".wl[119].w[0]"  1;
	setAttr ".wl[120].w[0]"  1;
	setAttr ".wl[121].w[0]"  1;
	setAttr ".wl[122].w[0]"  1;
	setAttr ".wl[123].w[0]"  1;
	setAttr ".wl[124].w[0]"  1;
	setAttr ".wl[125].w[0]"  1;
	setAttr ".wl[126].w[0]"  1;
	setAttr ".wl[127].w[0]"  1;
	setAttr ".wl[128].w[0]"  1;
	setAttr ".wl[129].w[0]"  1;
	setAttr ".wl[130].w[0]"  1;
	setAttr ".wl[131].w[0]"  1;
	setAttr ".wl[132].w[0]"  1;
	setAttr ".wl[133].w[0]"  1;
	setAttr ".wl[134].w[0]"  1;
	setAttr ".wl[135].w[0]"  1;
	setAttr ".wl[136].w[0]"  1;
	setAttr ".pm[0]" -type "matrix" 0.86956500000000003 -3.30186e-009 -3.5578700000000001e-007 0
		 5.8423999999999996e-009 0.86956500000000003 4.5035900000000002e-008 0 3.12196e-007 -3.1433000000000001e-008 0.86956500000000003 0
		 -0.51023700000000005 -6.1757660000000003 -1.3933519999999999 1;
	setAttr ".gm" -type "matrix" 0.99045300000000003 0.0063649199999999996 -0.13770299999999999 0
		 0.00239054 0.99799000000000004 0.0633238 0 0.13782900000000001 -0.063048400000000004 0.98844699999999996 0
		 -0.19364899999999999 3.9814639999999999 -0.085192400000000001 1;
	setAttr ".dpf[0]"  4;
	setAttr ".mi" 5;
	setAttr ".bm" 1;
	setAttr ".ucm" yes;
createNode tweak -n "tweak6";
	rename -uid "7FBD11CA-42BF-71BD-D6D3-D7BEB1FB8273";
createNode objectSet -n "skinCluster6Set";
	rename -uid "305102D2-434C-A850-30DF-E6BA0AD58D27";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster6GroupId";
	rename -uid "1A9109EE-4BC0-4F7C-9C0A-328BE486E2E0";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster6GroupParts";
	rename -uid "160F8F4F-4C53-9748-2B9C-FE85847B0AFE";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[0:136]";
createNode objectSet -n "tweakSet6";
	rename -uid "2F1D7F4B-4753-5D8E-AAB4-9BBD26F68469";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId12";
	rename -uid "DBD136DE-4EF4-0211-1289-039F753AEDC3";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts12";
	rename -uid "5B797926-4F92-7F73-BE35-CFAE58B82EFE";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode dagPose -n "bindPose5";
	rename -uid "90C5BD0E-4D3B-BD80-1CDA-698F6FA7B88C";
	setAttr -s 7 ".wm";
	setAttr ".wm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wm[1]" -type "matrix" -0.044148363414217462 0 -0.99902498567745857 0 0 1 0 0
		 0.99902498567745857 0 -0.044148363414217462 0 -0.0067329159937798977 6.1693062782287598 -0.15235787630081177 1;
	setAttr ".wm[2]" -type "matrix" 1.1500000000000001 -2.8183361971427663e-018 -7.5633943552588789e-016 0
		 2.8183361971428029e-018 1.1499999999999999 6.3775584429095611e-017 0 7.5633943552588789e-016 -6.3775584429095623e-017 1.1500000000000001 0
		 -2.9813577127890678e-010 3.2564222812652588 2.5926580049517867e-009 1;
	setAttr ".wm[3]" -type "matrix" 1.1500000000000001 -2.8183361971427663e-018 -7.5633943552588789e-016 0
		 2.8183361971428029e-018 1.1499999999999999 6.3775584429095611e-017 0 7.5633943552588789e-016 -6.3775584429095623e-017 1.1500000000000001 0
		 -2.9813553161786876e-010 3.2564222812652583 2.5926577509882771e-009 1;
	setAttr ".wm[4]" -type "matrix" 1.1500000000000001 -2.8183361971427663e-018 -7.5633943552588789e-016 0
		 2.8183361971428029e-018 1.1499999999999999 6.3775584429095611e-017 0 7.5633943552588789e-016 -6.3775584429095623e-017 1.1500000000000001 0
		 -2.9813553161786882e-010 4.6124274909496297 2.5926577232326957e-009 1;
	setAttr ".wm[5]" -type "matrix" 6.7912723420983526e-016 1.0598806814087751 0.44626555006685242 0
		 -1.1428402717144213e-015 0.44626555006685237 -1.0598806814087753 0 -1.1500000000000001 1.3049398402903573e-016 1.2670420268534601e-015 0
		 -2.9813539999926882e-010 6.0670820593833916 0.58955327531680957 1;
	setAttr ".wm[6]" -type "matrix" 1.1499999999999999 4.3667299999999995e-009 4.7052899999999999e-007 0
		 -7.7265499999999991e-009 1.1499999999999999 -5.9560000000000005e-008 0 -4.1287900000000005e-007 4.1570199999999999e-008 1.1500010000000001 0
		 0.58677199999999996 7.1021340000000004 1.6023559999999999 1;
	setAttr -s 7 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.0067329159937798977
		 6.1693062782287598 -0.15235787630081177 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0.72254701003264055 0 0.69132179069727817 1
		 1 1 no;
	setAttr ".xm[2]" -type "matrix" "xform" 1.1500000000000001 1.1499999999999999 1.1500000000000001 0
		 -1.6149590442363042 -2.1419699791636049e-008 0 -0.15250657498836517 -2.912883996963501
		 1.7362641494985239e-016 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 1.0709849923573602e-008 0.99999999999999989 1
		 1 1 no;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 0 0 0 0 2.0840090261312446e-016
		 -4.4408920985006262e-016 -2.2083783443810015e-016 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 1 0 0 0 1 0.86956521739130421 0.86956521739130443 0.86956521739130421 no;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 0 0 0 0 -2.8897380991611386e-018
		 1.1791349649429321 -8.952661134700634e-017 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 no;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 0 0 0 0 -2.2581527796885223e-016
		 1.2649170160293579 0.51265501976013184 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.3911339284509423 -0.58907915428619007 0.39113392845094241 0.5890791542861904 1
		 1 1 no;
	setAttr ".xm[6]" -type "matrix" "xform" 1 1 1 -5.5511151231257827e-017 -5.5511151231257821e-017
		 2.2204460492503131e-016 0 1.1712729930877686 -0.46241301298141479 -0.51023697853088379 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.39113392845094241 0.58907915428619007 -0.39113392845094219 0.5890791542861904 1
		 1 1 no;
	setAttr -s 7 ".m";
	setAttr -s 7 ".p";
	setAttr -s 7 ".g[0:6]" yes yes yes yes yes yes no;
	setAttr ".bp" yes;
createNode skinCluster -n "skinCluster7";
	rename -uid "F42EDE28-4C76-1850-19DE-55B85F1AA7EB";
	setAttr -s 137 ".wl";
	setAttr ".wl[0].w[0]"  1;
	setAttr ".wl[1].w[0]"  1;
	setAttr ".wl[2].w[0]"  1;
	setAttr ".wl[3].w[0]"  1;
	setAttr ".wl[4].w[0]"  1;
	setAttr ".wl[5].w[0]"  1;
	setAttr ".wl[6].w[0]"  1;
	setAttr ".wl[7].w[0]"  1;
	setAttr ".wl[8].w[0]"  1;
	setAttr ".wl[9].w[0]"  1;
	setAttr ".wl[10].w[0]"  1;
	setAttr ".wl[11].w[0]"  1;
	setAttr ".wl[12].w[0]"  1;
	setAttr ".wl[13].w[0]"  1;
	setAttr ".wl[14].w[0]"  1;
	setAttr ".wl[15].w[0]"  1;
	setAttr ".wl[16].w[0]"  1;
	setAttr ".wl[17].w[0]"  1;
	setAttr ".wl[18].w[0]"  1;
	setAttr ".wl[19].w[0]"  1;
	setAttr ".wl[20].w[0]"  1;
	setAttr ".wl[21].w[0]"  1;
	setAttr ".wl[22].w[0]"  1;
	setAttr ".wl[23].w[0]"  1;
	setAttr ".wl[24].w[0]"  1;
	setAttr ".wl[25].w[0]"  1;
	setAttr ".wl[26].w[0]"  1;
	setAttr ".wl[27].w[0]"  1;
	setAttr ".wl[28].w[0]"  1;
	setAttr ".wl[29].w[0]"  1;
	setAttr ".wl[30].w[0]"  1;
	setAttr ".wl[31].w[0]"  1;
	setAttr ".wl[32].w[0]"  1;
	setAttr ".wl[33].w[0]"  1;
	setAttr ".wl[34].w[0]"  1;
	setAttr ".wl[35].w[0]"  1;
	setAttr ".wl[36].w[0]"  1;
	setAttr ".wl[37].w[0]"  1;
	setAttr ".wl[38].w[0]"  1;
	setAttr ".wl[39].w[0]"  1;
	setAttr ".wl[40].w[0]"  1;
	setAttr ".wl[41].w[0]"  1;
	setAttr ".wl[42].w[0]"  1;
	setAttr ".wl[43].w[0]"  1;
	setAttr ".wl[44].w[0]"  1;
	setAttr ".wl[45].w[0]"  1;
	setAttr ".wl[46].w[0]"  1;
	setAttr ".wl[47].w[0]"  1;
	setAttr ".wl[48].w[0]"  1;
	setAttr ".wl[49].w[0]"  1;
	setAttr ".wl[50].w[0]"  1;
	setAttr ".wl[51].w[0]"  1;
	setAttr ".wl[52].w[0]"  1;
	setAttr ".wl[53].w[0]"  1;
	setAttr ".wl[54].w[0]"  1;
	setAttr ".wl[55].w[0]"  1;
	setAttr ".wl[56].w[0]"  1;
	setAttr ".wl[57].w[0]"  1;
	setAttr ".wl[58].w[0]"  1;
	setAttr ".wl[59].w[0]"  1;
	setAttr ".wl[60].w[0]"  1;
	setAttr ".wl[61].w[0]"  1;
	setAttr ".wl[62].w[0]"  1;
	setAttr ".wl[63].w[0]"  1;
	setAttr ".wl[64].w[0]"  1;
	setAttr ".wl[65].w[0]"  1;
	setAttr ".wl[66].w[0]"  1;
	setAttr ".wl[67].w[0]"  1;
	setAttr ".wl[68].w[0]"  1;
	setAttr ".wl[69].w[0]"  1;
	setAttr ".wl[70].w[0]"  1;
	setAttr ".wl[71].w[0]"  1;
	setAttr ".wl[72].w[0]"  1;
	setAttr ".wl[73].w[0]"  1;
	setAttr ".wl[74].w[0]"  1;
	setAttr ".wl[75].w[0]"  1;
	setAttr ".wl[76].w[0]"  1;
	setAttr ".wl[77].w[0]"  1;
	setAttr ".wl[78].w[0]"  1;
	setAttr ".wl[79].w[0]"  1;
	setAttr ".wl[80].w[0]"  1;
	setAttr ".wl[81].w[0]"  1;
	setAttr ".wl[82].w[0]"  1;
	setAttr ".wl[83].w[0]"  1;
	setAttr ".wl[84].w[0]"  1;
	setAttr ".wl[85].w[0]"  1;
	setAttr ".wl[86].w[0]"  1;
	setAttr ".wl[87].w[0]"  1;
	setAttr ".wl[88].w[0]"  1;
	setAttr ".wl[89].w[0]"  1;
	setAttr ".wl[90].w[0]"  1;
	setAttr ".wl[91].w[0]"  1;
	setAttr ".wl[92].w[0]"  1;
	setAttr ".wl[93].w[0]"  1;
	setAttr ".wl[94].w[0]"  1;
	setAttr ".wl[95].w[0]"  1;
	setAttr ".wl[96].w[0]"  1;
	setAttr ".wl[97].w[0]"  1;
	setAttr ".wl[98].w[0]"  1;
	setAttr ".wl[99].w[0]"  1;
	setAttr ".wl[100].w[0]"  1;
	setAttr ".wl[101].w[0]"  1;
	setAttr ".wl[102].w[0]"  1;
	setAttr ".wl[103].w[0]"  1;
	setAttr ".wl[104].w[0]"  1;
	setAttr ".wl[105].w[0]"  1;
	setAttr ".wl[106].w[0]"  1;
	setAttr ".wl[107].w[0]"  1;
	setAttr ".wl[108].w[0]"  1;
	setAttr ".wl[109].w[0]"  1;
	setAttr ".wl[110].w[0]"  1;
	setAttr ".wl[111].w[0]"  1;
	setAttr ".wl[112].w[0]"  1;
	setAttr ".wl[113].w[0]"  1;
	setAttr ".wl[114].w[0]"  1;
	setAttr ".wl[115].w[0]"  1;
	setAttr ".wl[116].w[0]"  1;
	setAttr ".wl[117].w[0]"  1;
	setAttr ".wl[118].w[0]"  1;
	setAttr ".wl[119].w[0]"  1;
	setAttr ".wl[120].w[0]"  1;
	setAttr ".wl[121].w[0]"  1;
	setAttr ".wl[122].w[0]"  1;
	setAttr ".wl[123].w[0]"  1;
	setAttr ".wl[124].w[0]"  1;
	setAttr ".wl[125].w[0]"  1;
	setAttr ".wl[126].w[0]"  1;
	setAttr ".wl[127].w[0]"  1;
	setAttr ".wl[128].w[0]"  1;
	setAttr ".wl[129].w[0]"  1;
	setAttr ".wl[130].w[0]"  1;
	setAttr ".wl[131].w[0]"  1;
	setAttr ".wl[132].w[0]"  1;
	setAttr ".wl[133].w[0]"  1;
	setAttr ".wl[134].w[0]"  1;
	setAttr ".wl[135].w[0]"  1;
	setAttr ".wl[136].w[0]"  1;
	setAttr ".pm[0]" -type "matrix" 0.86956500000000003 -1.1373e-008 -2.75053e-008 0
		 2.1665600000000002e-008 -0.86956500000000003 -1.2592300000000001e-007 0 -1.1335500000000001e-007 7.6857400000000006e-008 -0.86956500000000003 0
		 0.51023700000000005 6.1757720000000003 1.393351 1;
	setAttr ".gm" -type "matrix" 0.98406899999999997 -0.047229300000000002 0.171399 0
		 0.0255511 0.99163199999999996 0.12654699999999999 0 -0.17594099999999999 -0.12015099999999999 0.97704100000000005 0
		 0.167799 4.057404 -0.223383 1;
	setAttr ".dpf[0]"  4;
	setAttr ".mi" 5;
	setAttr ".bm" 1;
	setAttr ".ucm" yes;
createNode tweak -n "tweak7";
	rename -uid "5A982B86-4118-BE33-A7EF-33B0CC861A9D";
createNode objectSet -n "skinCluster7Set";
	rename -uid "702E2702-46EA-02C0-C0C3-AD8E14700696";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster7GroupId";
	rename -uid "0DE766D6-4072-ABB0-6D1C-1499B49B3E4A";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster7GroupParts";
	rename -uid "33CA6C6B-4CCB-CD4A-9A04-5AAB6AE8308D";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[0:136]";
createNode objectSet -n "tweakSet7";
	rename -uid "176B3B24-4290-4361-7820-5AA3FE19DC08";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId14";
	rename -uid "00795AB1-4F7A-9177-DBEB-88996DCD3EA5";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts14";
	rename -uid "7216B572-40F1-9ED5-8A4D-EF8D352A2542";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode dagPose -n "bindPose6";
	rename -uid "D10C6514-4A30-79B0-DF30-FBB393299A13";
	setAttr -s 7 ".wm";
	setAttr ".wm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wm[1]" -type "matrix" -0.044148363414217462 0 -0.99902498567745857 0 0 1 0 0
		 0.99902498567745857 0 -0.044148363414217462 0 -0.0067329159937798977 6.1693062782287598 -0.15235787630081177 1;
	setAttr ".wm[2]" -type "matrix" 1.1500000000000001 -2.8183361971427663e-018 -7.5633943552588789e-016 0
		 2.8183361971428029e-018 1.1499999999999999 6.3775584429095611e-017 0 7.5633943552588789e-016 -6.3775584429095623e-017 1.1500000000000001 0
		 -2.9813577127890678e-010 3.2564222812652588 2.5926580049517867e-009 1;
	setAttr ".wm[3]" -type "matrix" 1.1500000000000001 -2.8183361971427663e-018 -7.5633943552588789e-016 0
		 2.8183361971428029e-018 1.1499999999999999 6.3775584429095611e-017 0 7.5633943552588789e-016 -6.3775584429095623e-017 1.1500000000000001 0
		 -2.9813553161786876e-010 3.2564222812652583 2.5926577509882771e-009 1;
	setAttr ".wm[4]" -type "matrix" 1.1500000000000001 -2.8183361971427663e-018 -7.5633943552588789e-016 0
		 2.8183361971428029e-018 1.1499999999999999 6.3775584429095611e-017 0 7.5633943552588789e-016 -6.3775584429095623e-017 1.1500000000000001 0
		 -2.9813553161786882e-010 4.6124274909496297 2.5926577232326957e-009 1;
	setAttr ".wm[5]" -type "matrix" 6.7912723420983526e-016 1.0598806814087751 0.44626555006685242 0
		 -1.1428402717144213e-015 0.44626555006685237 -1.0598806814087753 0 -1.1500000000000001 1.3049398402903573e-016 1.2670420268534601e-015 0
		 -2.9813539999926882e-010 6.0670820593833916 0.58955327531680957 1;
	setAttr ".wm[6]" -type "matrix" 1.1499999999999999 -1.5040800000000001e-008 -3.6375700000000005e-008 0
		 2.8652700000000002e-008 -1.1499999999999999 1.66533e-007 0 -1.49913e-007 -1.0164400000000001e-007 -1.1499999999999999 0
		 -0.58677299999999999 7.1021359999999998 1.6023529999999999 1;
	setAttr -s 7 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.0067329159937798977
		 6.1693062782287598 -0.15235787630081177 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0.72254701003264055 0 0.69132179069727817 1
		 1 1 no;
	setAttr ".xm[2]" -type "matrix" "xform" 1.1500000000000001 1.1499999999999999 1.1500000000000001 0
		 -1.6149590442363042 -2.1419699791636049e-008 0 -0.15250657498836517 -2.912883996963501
		 1.7362641494985239e-016 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 1.0709849923573602e-008 0.99999999999999989 1
		 1 1 no;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 0 0 0 0 2.0840090261312446e-016
		 -4.4408920985006262e-016 -2.2083783443810015e-016 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 1 0 0 0 1 0.86956521739130421 0.86956521739130443 0.86956521739130421 no;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 0 0 0 0 -2.8897380991611386e-018
		 1.1791349649429321 -8.952661134700634e-017 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 no;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 0 0 0 0 -2.2581527796885223e-016
		 1.2649170160293579 0.51265501976013184 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.3911339284509423 -0.58907915428619007 0.39113392845094241 0.5890791542861904 1
		 1 1 no;
	setAttr ".xm[6]" -type "matrix" "xform" 1 1 1 2.2204460492503131e-016 0 0 0 1.1712750196456909
		 -0.46241098642349243 0.51023697853088379 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.5890791542861904 0.3911339284509423 0.58907915428618995 0.39113392845094264 1
		 1 1 no;
	setAttr -s 7 ".m";
	setAttr -s 7 ".p";
	setAttr -s 7 ".g[0:6]" yes yes yes yes yes yes no;
	setAttr ".bp" yes;
createNode skinCluster -n "skinCluster8";
	rename -uid "FAE54807-4639-A6BC-88B4-DA985A74142A";
	setAttr -s 14 ".wl";
	setAttr ".wl[0].w[0]"  1;
	setAttr ".wl[1].w[0]"  1;
	setAttr ".wl[2].w[0]"  1;
	setAttr ".wl[3].w[0]"  1;
	setAttr ".wl[4].w[0]"  1;
	setAttr ".wl[5].w[0]"  1;
	setAttr ".wl[6].w[0]"  1;
	setAttr ".wl[7].w[0]"  1;
	setAttr ".wl[8].w[0]"  1;
	setAttr ".wl[9].w[0]"  1;
	setAttr ".wl[10].w[0]"  1;
	setAttr ".wl[11].w[0]"  1;
	setAttr ".wl[12].w[0]"  1;
	setAttr ".wl[13].w[0]"  1;
	setAttr ".pm[0]" -type "matrix" 0.86956500000000003 0 0 0 0 0.86956500000000003 0 0
		 0 0 0.86956500000000003 0 0 -5.8425330000000004 -2.3073009999999998 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 3.8914179999999998 0 1;
	setAttr ".dpf[0]"  4;
	setAttr ".mi" 5;
	setAttr ".bm" 1;
	setAttr ".ucm" yes;
createNode tweak -n "tweak8";
	rename -uid "3B6D6497-4A62-2906-6C1B-27A94AA62E39";
createNode objectSet -n "skinCluster8Set";
	rename -uid "19DA169B-42C1-E8E7-1B88-E0B4F77A6BDC";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster8GroupId";
	rename -uid "A20B9B87-4261-8DC9-CCD1-678F12F50F27";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster8GroupParts";
	rename -uid "48797AA7-45E4-BC43-72CB-69925D66CEB5";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[0:13]";
createNode objectSet -n "tweakSet8";
	rename -uid "386AB320-407B-D660-5163-A38EA003C06F";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId16";
	rename -uid "76064E00-4959-2309-5053-90BFBA69582B";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts16";
	rename -uid "BE2334E9-4D5C-5484-74D3-6DBA051FBEF0";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode dagPose -n "bindPose7";
	rename -uid "FDC9B968-40A1-B0C3-AB53-E481DDA99F61";
	setAttr -s 7 ".wm";
	setAttr ".wm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wm[1]" -type "matrix" -0.044148363414217462 0 -0.99902498567745857 0 0 1 0 0
		 0.99902498567745857 0 -0.044148363414217462 0 -0.0067329159937798977 6.1693062782287598 -0.15235787630081177 1;
	setAttr ".wm[2]" -type "matrix" 1.1500000000000001 -2.8183361971427663e-018 -7.5633943552588789e-016 0
		 2.8183361971428029e-018 1.1499999999999999 6.3775584429095611e-017 0 7.5633943552588789e-016 -6.3775584429095623e-017 1.1500000000000001 0
		 -2.9813577127890678e-010 3.2564222812652588 2.5926580049517867e-009 1;
	setAttr ".wm[3]" -type "matrix" 1.1500000000000001 -2.8183361971427663e-018 -7.5633943552588789e-016 0
		 2.8183361971428029e-018 1.1499999999999999 6.3775584429095611e-017 0 7.5633943552588789e-016 -6.3775584429095623e-017 1.1500000000000001 0
		 -2.9813553161786876e-010 3.2564222812652583 2.5926577509882771e-009 1;
	setAttr ".wm[4]" -type "matrix" 1.1500000000000001 -2.8183361971427663e-018 -7.5633943552588789e-016 0
		 2.8183361971428029e-018 1.1499999999999999 6.3775584429095611e-017 0 7.5633943552588789e-016 -6.3775584429095623e-017 1.1500000000000001 0
		 -2.9813553161786882e-010 4.6124274909496297 2.5926577232326957e-009 1;
	setAttr ".wm[5]" -type "matrix" 6.7912723420983526e-016 1.0598806814087751 0.44626555006685242 0
		 -1.1428402717144213e-015 0.44626555006685237 -1.0598806814087753 0 -1.1500000000000001 1.3049398402903573e-016 1.2670420268534601e-015 0
		 -2.9813539999926882e-010 6.0670820593833916 0.58955327531680957 1;
	setAttr ".wm[6]" -type "matrix" 1.1499999999999999 0 0 0 0 1.149999 3.33904e-007 0
		 0 -3.33904e-007 1.149999 0 1.5685899999999999e-007 6.7189129999999997 2.653397 1;
	setAttr -s 7 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.0067329159937798977
		 6.1693062782287598 -0.15235787630081177 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0.72254701003264055 0 0.69132179069727817 1
		 1 1 no;
	setAttr ".xm[2]" -type "matrix" "xform" 1.1500000000000001 1.1499999999999999 1.1500000000000001 0
		 -1.6149590442363042 -2.1419699791636049e-008 0 -0.15250657498836517 -2.912883996963501
		 1.7340006710818975e-016 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 1.0709849923573602e-008 0.99999999999999989 1
		 1 1 no;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 0 0 0 0 2.0840090261312446e-016
		 -4.4408920985006262e-016 -2.2083783485169045e-016 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 1 0 0 0 1 0.86956521739130421 0.86956521739130443 0.86956521739130421 no;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 0 0 0 0 -2.8897381508599269e-018
		 1.1791349649429312 -8.9526610933416034e-017 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 no;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 0 0 0 0 -2.2581527796885223e-016
		 1.2649170160293579 0.51265501976013184 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.3911339284509423 -0.58907915428619007 0.39113392845094241 0.5890791542861904 1
		 1 1 no;
	setAttr ".xm[6]" -type "matrix" "xform" 1 1 1 -5.5511151231257827e-017 -5.5511151231257821e-017
		 2.2204460492503131e-016 0 1.2188169956207275 -1.4340549707412715 7.810464335818326e-016 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.39113392845094241 0.58907915428619007 -0.39113392845094219 0.5890791542861904 1
		 1 1 no;
	setAttr -s 7 ".m";
	setAttr -s 7 ".p";
	setAttr -s 7 ".g[0:6]" yes yes yes yes yes yes no;
	setAttr ".bp" yes;
createNode skinCluster -n "skinCluster9";
	rename -uid "5C7E4318-458B-8092-29C1-E28EA986CFE8";
	setAttr -s 14 ".wl";
	setAttr ".wl[0].w[0]"  1;
	setAttr ".wl[1].w[0]"  1;
	setAttr ".wl[2].w[0]"  1;
	setAttr ".wl[3].w[0]"  1;
	setAttr ".wl[4].w[0]"  1;
	setAttr ".wl[5].w[0]"  1;
	setAttr ".wl[6].w[0]"  1;
	setAttr ".wl[7].w[0]"  1;
	setAttr ".wl[8].w[0]"  1;
	setAttr ".wl[9].w[0]"  1;
	setAttr ".wl[10].w[0]"  1;
	setAttr ".wl[11].w[0]"  1;
	setAttr ".wl[12].w[0]"  1;
	setAttr ".wl[13].w[0]"  1;
	setAttr ".pm[0]" -type "matrix" 0.86956500000000003 0 0 0 0 0.86956500000000003 0 0
		 0 0 0.86956500000000003 0 0 -5.8425330000000004 -2.3073009999999998 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 3.8914179999999998 0 1;
	setAttr ".dpf[0]"  4;
	setAttr ".mi" 5;
	setAttr ".bm" 1;
	setAttr ".ucm" yes;
createNode tweak -n "tweak9";
	rename -uid "11190B18-4C01-FD03-F8FC-5B8E00657C02";
createNode objectSet -n "skinCluster9Set";
	rename -uid "7A6DFFD9-4BAE-2BFD-1D3B-AAAD790EAFEF";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster9GroupId";
	rename -uid "E7F119F1-45C6-6F31-2750-ABA93272231A";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster9GroupParts";
	rename -uid "5AB09957-4DFF-AA1F-C688-FAB554F0E4E2";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[0:13]";
createNode objectSet -n "tweakSet9";
	rename -uid "6F250DD5-40F9-CC5D-81E8-53A6E940F4A0";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId18";
	rename -uid "57F89C8E-440A-10CB-7F25-179E6BC8DED8";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts18";
	rename -uid "C3AA3854-4B11-0177-B522-3F99F2D6C612";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode skinCluster -n "skinCluster10";
	rename -uid "562BAD86-4C5F-6F1D-646F-0A9444B29AFB";
	setAttr -s 100 ".wl";
	setAttr ".wl[0].w[0]"  1;
	setAttr ".wl[1].w[0]"  1;
	setAttr ".wl[2].w[0]"  1;
	setAttr ".wl[3].w[0]"  1;
	setAttr ".wl[4].w[0]"  1;
	setAttr ".wl[5].w[0]"  1;
	setAttr ".wl[6].w[0]"  1;
	setAttr ".wl[7].w[0]"  1;
	setAttr ".wl[8].w[0]"  1;
	setAttr ".wl[9].w[0]"  1;
	setAttr ".wl[10].w[0]"  1;
	setAttr ".wl[11].w[0]"  1;
	setAttr ".wl[12].w[0]"  1;
	setAttr ".wl[13].w[0]"  1;
	setAttr ".wl[14].w[0]"  1;
	setAttr ".wl[15].w[0]"  1;
	setAttr ".wl[16].w[0]"  1;
	setAttr ".wl[17].w[0]"  1;
	setAttr ".wl[18].w[0]"  1;
	setAttr ".wl[19].w[0]"  1;
	setAttr ".wl[20].w[0]"  1;
	setAttr ".wl[21].w[0]"  1;
	setAttr ".wl[22].w[0]"  1;
	setAttr ".wl[23].w[0]"  1;
	setAttr ".wl[24].w[0]"  1;
	setAttr ".wl[25].w[0]"  1;
	setAttr ".wl[26].w[0]"  1;
	setAttr ".wl[27].w[0]"  1;
	setAttr ".wl[28].w[0]"  1;
	setAttr ".wl[29].w[0]"  1;
	setAttr ".wl[30].w[0]"  1;
	setAttr ".wl[31].w[0]"  1;
	setAttr ".wl[32].w[0]"  1;
	setAttr ".wl[33].w[0]"  1;
	setAttr ".wl[34].w[0]"  1;
	setAttr ".wl[35].w[0]"  1;
	setAttr ".wl[36].w[0]"  1;
	setAttr ".wl[37].w[0]"  1;
	setAttr ".wl[38].w[0]"  1;
	setAttr ".wl[39].w[0]"  1;
	setAttr ".wl[40].w[0]"  1;
	setAttr ".wl[41].w[0]"  1;
	setAttr ".wl[42].w[0]"  1;
	setAttr ".wl[43].w[0]"  1;
	setAttr ".wl[44].w[0]"  1;
	setAttr ".wl[45].w[0]"  1;
	setAttr ".wl[46].w[0]"  1;
	setAttr ".wl[47].w[0]"  1;
	setAttr ".wl[48].w[0]"  1;
	setAttr ".wl[49].w[0]"  1;
	setAttr ".wl[50].w[0]"  1;
	setAttr ".wl[51].w[0]"  1;
	setAttr ".wl[52].w[0]"  1;
	setAttr ".wl[53].w[0]"  1;
	setAttr ".wl[54].w[0]"  1;
	setAttr ".wl[55].w[0]"  1;
	setAttr ".wl[56].w[0]"  1;
	setAttr ".wl[57].w[0]"  1;
	setAttr ".wl[58].w[0]"  1;
	setAttr ".wl[59].w[0]"  1;
	setAttr ".wl[60].w[0]"  1;
	setAttr ".wl[61].w[0]"  1;
	setAttr ".wl[62].w[0]"  1;
	setAttr ".wl[63].w[0]"  1;
	setAttr ".wl[64].w[0]"  1;
	setAttr ".wl[65].w[0]"  1;
	setAttr ".wl[66].w[0]"  1;
	setAttr ".wl[67].w[0]"  1;
	setAttr ".wl[68].w[0]"  1;
	setAttr ".wl[69].w[0]"  1;
	setAttr ".wl[70].w[0]"  1;
	setAttr ".wl[71].w[0]"  1;
	setAttr ".wl[72].w[0]"  1;
	setAttr ".wl[73].w[0]"  1;
	setAttr ".wl[74].w[0]"  1;
	setAttr ".wl[75].w[0]"  1;
	setAttr ".wl[76].w[0]"  1;
	setAttr ".wl[77].w[0]"  1;
	setAttr ".wl[78].w[0]"  1;
	setAttr ".wl[79].w[0]"  1;
	setAttr ".wl[80].w[0]"  1;
	setAttr ".wl[81].w[0]"  1;
	setAttr ".wl[82].w[0]"  1;
	setAttr ".wl[83].w[0]"  1;
	setAttr ".wl[84].w[0]"  1;
	setAttr ".wl[85].w[0]"  1;
	setAttr ".wl[86].w[0]"  1;
	setAttr ".wl[87].w[0]"  1;
	setAttr ".wl[88].w[0]"  1;
	setAttr ".wl[89].w[0]"  1;
	setAttr ".wl[90].w[0]"  1;
	setAttr ".wl[91].w[0]"  1;
	setAttr ".wl[92].w[0]"  1;
	setAttr ".wl[93].w[0]"  1;
	setAttr ".wl[94].w[0]"  1;
	setAttr ".wl[95].w[0]"  1;
	setAttr ".wl[96].w[0]"  1;
	setAttr ".wl[97].w[0]"  1;
	setAttr ".wl[98].w[0]"  1;
	setAttr ".wl[99].w[0]"  1;
	setAttr ".pm[0]" -type "matrix" 0.86956500000000003 0 0 0 0 0.86956500000000003 0 0
		 0 0 0.86956500000000003 0 0 -5.8425330000000004 -2.3073009999999998 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 3.8914179999999998 0 1;
	setAttr ".dpf[0]"  4;
	setAttr ".mi" 5;
	setAttr ".bm" 1;
	setAttr ".ucm" yes;
createNode tweak -n "tweak10";
	rename -uid "0C68C727-4255-7F3F-0AF5-46BD7E0F58A2";
createNode objectSet -n "skinCluster10Set";
	rename -uid "F339F28F-4238-CAB9-4FA2-048639BEA7D1";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster10GroupId";
	rename -uid "5F6DDC43-4359-998E-3E56-849E8EF0273B";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster10GroupParts";
	rename -uid "C024D871-45EE-54A7-B1F5-00978EBC96BD";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[0:99]";
createNode objectSet -n "tweakSet10";
	rename -uid "7A6719A9-487D-5B28-5143-E7A0DB7DA2E7";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId20";
	rename -uid "690598DE-4DA3-EADF-17C5-72A26DBAF868";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts20";
	rename -uid "700C1B47-4CB2-49E4-97B2-2E838CDA3D1D";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode skinCluster -n "skinCluster11";
	rename -uid "570F514A-4606-DCD8-665C-F4AA0E3AE4F6";
	setAttr -s 14 ".wl";
	setAttr ".wl[0].w[0]"  1;
	setAttr ".wl[1].w[0]"  1;
	setAttr ".wl[2].w[0]"  1;
	setAttr ".wl[3].w[0]"  1;
	setAttr ".wl[4].w[0]"  1;
	setAttr ".wl[5].w[0]"  1;
	setAttr ".wl[6].w[0]"  1;
	setAttr ".wl[7].w[0]"  1;
	setAttr ".wl[8].w[0]"  1;
	setAttr ".wl[9].w[0]"  1;
	setAttr ".wl[10].w[0]"  1;
	setAttr ".wl[11].w[0]"  1;
	setAttr ".wl[12].w[0]"  1;
	setAttr ".wl[13].w[0]"  1;
	setAttr ".pm[0]" -type "matrix" 0.86956500000000003 0 0 0 0 0.86956500000000003 0 0
		 0 0 0.86956500000000003 0 0 -5.8425330000000004 -2.3073009999999998 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 3.8914179999999998 0 1;
	setAttr ".dpf[0]"  4;
	setAttr ".mi" 5;
	setAttr ".bm" 1;
	setAttr ".ucm" yes;
createNode tweak -n "tweak11";
	rename -uid "55D573F7-4DDB-7DD2-4CF5-D681F95619F8";
createNode objectSet -n "skinCluster11Set";
	rename -uid "F2008AEF-4458-7C8A-A07F-588AA87A84C9";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster11GroupId";
	rename -uid "491F3441-4DE0-A9D4-63C3-51A795235C60";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster11GroupParts";
	rename -uid "5D25551A-482B-35F7-93F1-0AAFF63C4C12";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[0:13]";
createNode objectSet -n "tweakSet11";
	rename -uid "7604AE6B-4E1A-DA07-039B-0DA83BF91262";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId22";
	rename -uid "E269F54A-4A0E-86A5-BCCC-7189BF122435";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts22";
	rename -uid "2A407CD7-4F0B-7AA4-5B67-7F84C67D63BE";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode skinCluster -n "skinCluster12";
	rename -uid "CFCBB790-41C9-AFFD-4561-E2960845E5D2";
	setAttr -s 14 ".wl";
	setAttr ".wl[0].w[0]"  1;
	setAttr ".wl[1].w[0]"  1;
	setAttr ".wl[2].w[0]"  1;
	setAttr ".wl[3].w[0]"  1;
	setAttr ".wl[4].w[0]"  1;
	setAttr ".wl[5].w[0]"  1;
	setAttr ".wl[6].w[0]"  1;
	setAttr ".wl[7].w[0]"  1;
	setAttr ".wl[8].w[0]"  1;
	setAttr ".wl[9].w[0]"  1;
	setAttr ".wl[10].w[0]"  1;
	setAttr ".wl[11].w[0]"  1;
	setAttr ".wl[12].w[0]"  1;
	setAttr ".wl[13].w[0]"  1;
	setAttr ".pm[0]" -type "matrix" 0.86956500000000003 0 0 0 0 0.86956500000000003 0 0
		 0 0 0.86956500000000003 0 0 -5.8425330000000004 -2.3073009999999998 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 3.8914179999999998 0 1;
	setAttr ".dpf[0]"  4;
	setAttr ".mi" 5;
	setAttr ".bm" 1;
	setAttr ".ucm" yes;
createNode tweak -n "tweak12";
	rename -uid "251DC286-491B-CF2D-E175-B9BA0528B417";
createNode objectSet -n "skinCluster12Set";
	rename -uid "2419A629-4C77-79F2-8506-CF9FC798F09F";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster12GroupId";
	rename -uid "C7A42214-41BE-07FF-D182-AAACF182124A";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster12GroupParts";
	rename -uid "CBDDE945-4B38-F1C9-A496-A38B5E3DBC67";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[0:13]";
createNode objectSet -n "tweakSet12";
	rename -uid "E61BC282-472A-3DE3-DA5F-50A9AE1D5E9D";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId24";
	rename -uid "4EC00818-4878-9778-8CCC-2A83DD0BEA20";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts24";
	rename -uid "3ADBA7FF-4E95-A811-89D6-57838BA934A0";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode skinCluster -n "skinCluster13";
	rename -uid "B3E8015E-45BA-D7F5-A0AE-84AD6913A1AC";
	setAttr -s 25 ".wl";
	setAttr ".wl[0].w[0]"  1;
	setAttr ".wl[1].w[0]"  1;
	setAttr ".wl[2].w[0]"  1;
	setAttr ".wl[3].w[0]"  1;
	setAttr ".wl[4].w[0]"  1;
	setAttr ".wl[5].w[0]"  1;
	setAttr ".wl[6].w[0]"  1;
	setAttr ".wl[7].w[0]"  1;
	setAttr ".wl[8].w[0]"  1;
	setAttr ".wl[9].w[0]"  1;
	setAttr ".wl[10].w[0]"  1;
	setAttr ".wl[11].w[0]"  1;
	setAttr ".wl[12].w[0]"  1;
	setAttr ".wl[13].w[0]"  1;
	setAttr ".wl[14].w[0]"  1;
	setAttr ".wl[15].w[0]"  1;
	setAttr ".wl[16].w[0]"  1;
	setAttr ".wl[17].w[0]"  1;
	setAttr ".wl[18].w[0]"  1;
	setAttr ".wl[19].w[0]"  1;
	setAttr ".wl[20].w[0]"  1;
	setAttr ".wl[21].w[0]"  1;
	setAttr ".wl[22].w[0]"  1;
	setAttr ".wl[23].w[0]"  1;
	setAttr ".wl[24].w[0]"  1;
	setAttr ".pm[0]" -type "matrix" 0.86956500000000003 0 0 0 0 0.86956599999999995 -2.5248e-007 0
		 0 2.5248e-007 0.86956599999999995 0 -1.8545300000000001e-007 -5.8425380000000002 -2.3073009999999998 1;
	setAttr ".gm" -type "matrix" 0 -0.094964999999999994 0.28067700000000001 0 0 0.28067700000000001 0.094964999999999994 0
		 -0.29630699999999999 0 0 0 -0.101355 5.674169 2.2115200000000002 1;
	setAttr ".dpf[0]"  4;
	setAttr ".mi" 5;
	setAttr ".bm" 1;
	setAttr ".ucm" yes;
createNode tweak -n "tweak13";
	rename -uid "5792C9E5-47F1-CB25-9D20-15B06949881A";
createNode objectSet -n "skinCluster13Set";
	rename -uid "0822CD60-48AF-E733-DF42-4EBA1D6C021B";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster13GroupId";
	rename -uid "0359C279-4E8B-E3EE-72E0-CF89C7BEA065";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster13GroupParts";
	rename -uid "6F96C554-4B74-A7F1-E0CD-AB8EFDB6CF63";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[0:24]";
createNode objectSet -n "tweakSet13";
	rename -uid "2CC29B3C-446E-3872-E164-FD9434592B0E";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId26";
	rename -uid "A0EB3F52-4CD9-5327-23EF-17B89FC84313";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts26";
	rename -uid "F7377259-4503-9D41-1979-BEB3404D8E50";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode skinCluster -n "skinCluster14";
	rename -uid "B5DF57A8-40F5-D022-0F75-61A4A841D2EA";
	setAttr -s 25 ".wl";
	setAttr ".wl[0].w[0]"  1;
	setAttr ".wl[1].w[0]"  1;
	setAttr ".wl[2].w[0]"  1;
	setAttr ".wl[3].w[0]"  1;
	setAttr ".wl[4].w[0]"  1;
	setAttr ".wl[5].w[0]"  1;
	setAttr ".wl[6].w[0]"  1;
	setAttr ".wl[7].w[0]"  1;
	setAttr ".wl[8].w[0]"  1;
	setAttr ".wl[9].w[0]"  1;
	setAttr ".wl[10].w[0]"  1;
	setAttr ".wl[11].w[0]"  1;
	setAttr ".wl[12].w[0]"  1;
	setAttr ".wl[13].w[0]"  1;
	setAttr ".wl[14].w[0]"  1;
	setAttr ".wl[15].w[0]"  1;
	setAttr ".wl[16].w[0]"  1;
	setAttr ".wl[17].w[0]"  1;
	setAttr ".wl[18].w[0]"  1;
	setAttr ".wl[19].w[0]"  1;
	setAttr ".wl[20].w[0]"  1;
	setAttr ".wl[21].w[0]"  1;
	setAttr ".wl[22].w[0]"  1;
	setAttr ".wl[23].w[0]"  1;
	setAttr ".wl[24].w[0]"  1;
	setAttr ".pm[0]" -type "matrix" 0.86956500000000003 0 0 0 0 0.86956599999999995 -2.5248e-007 0
		 0 2.5248e-007 0.86956599999999995 0 -1.36399e-007 -5.8425380000000002 -2.3073009999999998 1;
	setAttr ".gm" -type "matrix" 0 -0.094964999999999994 0.28067700000000001 0 0 0.28067700000000001 0.094964999999999994 0
		 -0.29630699999999999 0 0 0 0.110559 5.674169 2.2115200000000002 1;
	setAttr ".dpf[0]"  4;
	setAttr ".mi" 5;
	setAttr ".bm" 1;
	setAttr ".ucm" yes;
createNode tweak -n "tweak14";
	rename -uid "8DFA8E2F-4986-F08B-6E96-1F946347CCF0";
createNode objectSet -n "skinCluster14Set";
	rename -uid "310EE8BF-4186-A573-47CB-A1A71E0E269D";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster14GroupId";
	rename -uid "6E39866B-41D4-1813-C2B2-69889CA5C029";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster14GroupParts";
	rename -uid "62CF465D-4A5B-F9F7-57AD-A591387AEA88";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[0:24]";
createNode objectSet -n "tweakSet14";
	rename -uid "74BD495A-4485-0DFB-C0A0-5293C8514AB1";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId28";
	rename -uid "6049068C-4566-D25D-34C2-D2835F02002B";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts28";
	rename -uid "2DB081CA-4E33-DFF1-E504-4B9446D84454";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode skinCluster -n "skinCluster15";
	rename -uid "7E47CD2D-4F49-5DC5-077C-CD81C48D85E2";
	setAttr -s 76 ".wl";
	setAttr ".wl[0].w[0]"  1;
	setAttr ".wl[1].w[0]"  1;
	setAttr ".wl[2].w[0]"  1;
	setAttr ".wl[3].w[0]"  1;
	setAttr ".wl[4].w[0]"  1;
	setAttr ".wl[5].w[0]"  1;
	setAttr ".wl[6].w[0]"  1;
	setAttr ".wl[7].w[0]"  1;
	setAttr ".wl[8].w[0]"  1;
	setAttr ".wl[9].w[0]"  1;
	setAttr ".wl[10].w[0]"  1;
	setAttr ".wl[11].w[0]"  1;
	setAttr ".wl[12].w[0]"  1;
	setAttr ".wl[13].w[0]"  1;
	setAttr ".wl[14].w[0]"  1;
	setAttr ".wl[15].w[0]"  1;
	setAttr ".wl[16].w[0]"  1;
	setAttr ".wl[17].w[0]"  1;
	setAttr ".wl[18].w[0]"  1;
	setAttr ".wl[19].w[0]"  1;
	setAttr ".wl[20].w[0]"  1;
	setAttr ".wl[21].w[0]"  1;
	setAttr ".wl[22].w[0]"  1;
	setAttr ".wl[23].w[0]"  1;
	setAttr ".wl[24].w[0]"  1;
	setAttr ".wl[25].w[0]"  1;
	setAttr ".wl[26].w[0]"  1;
	setAttr ".wl[27].w[0]"  1;
	setAttr ".wl[28].w[0]"  1;
	setAttr ".wl[29].w[0]"  1;
	setAttr ".wl[30].w[0]"  1;
	setAttr ".wl[31].w[0]"  1;
	setAttr ".wl[32].w[0]"  1;
	setAttr ".wl[33].w[0]"  1;
	setAttr ".wl[34].w[0]"  1;
	setAttr ".wl[35].w[0]"  1;
	setAttr ".wl[36].w[0]"  1;
	setAttr ".wl[37].w[0]"  1;
	setAttr ".wl[38].w[0]"  1;
	setAttr ".wl[39].w[0]"  1;
	setAttr ".wl[40].w[0]"  1;
	setAttr ".wl[41].w[0]"  1;
	setAttr ".wl[42].w[0]"  1;
	setAttr ".wl[43].w[0]"  1;
	setAttr ".wl[44].w[0]"  1;
	setAttr ".wl[45].w[0]"  1;
	setAttr ".wl[46].w[0]"  1;
	setAttr ".wl[47].w[0]"  1;
	setAttr ".wl[48].w[0]"  1;
	setAttr ".wl[49].w[0]"  1;
	setAttr ".wl[50].w[0]"  1;
	setAttr ".wl[51].w[0]"  1;
	setAttr ".wl[52].w[0]"  1;
	setAttr ".wl[53].w[0]"  1;
	setAttr ".wl[54].w[0]"  1;
	setAttr ".wl[55].w[0]"  1;
	setAttr ".wl[56].w[0]"  1;
	setAttr ".wl[57].w[0]"  1;
	setAttr ".wl[58].w[0]"  1;
	setAttr ".wl[59].w[0]"  1;
	setAttr ".wl[60].w[0]"  1;
	setAttr ".wl[61].w[0]"  1;
	setAttr ".wl[62].w[0]"  1;
	setAttr ".wl[63].w[0]"  1;
	setAttr ".wl[64].w[0]"  1;
	setAttr ".wl[65].w[0]"  1;
	setAttr ".wl[66].w[0]"  1;
	setAttr ".wl[67].w[0]"  1;
	setAttr ".wl[68].w[0]"  1;
	setAttr ".wl[69].w[0]"  1;
	setAttr ".wl[70].w[0]"  1;
	setAttr ".wl[71].w[0]"  1;
	setAttr ".wl[72].w[0]"  1;
	setAttr ".wl[73].w[0]"  1;
	setAttr ".wl[74].w[0]"  1;
	setAttr ".wl[75].w[0]"  1;
	setAttr ".pm[0]" -type "matrix" 0.86956500000000003 0 0 0 0 0.86956500000000003 0 0
		 0 0 0.86956500000000003 0 -0.51023700000000005 -6.1757669999999996 -1.3933519999999999 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 3.8914179999999998 0 1;
	setAttr ".dpf[0]"  4;
	setAttr ".mi" 5;
	setAttr ".bm" 1;
	setAttr ".ucm" yes;
createNode tweak -n "tweak15";
	rename -uid "EF6FBED7-4885-4C01-2B17-DBA03AC1C3CD";
createNode objectSet -n "skinCluster15Set";
	rename -uid "F24305BE-4C0B-C5DC-0F52-9EAB5373B9CA";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster15GroupId";
	rename -uid "B7238344-4120-C833-2CF3-7FA5CC118173";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster15GroupParts";
	rename -uid "99F1ABB0-4B6D-CCE7-EF05-559286639ABF";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[0:75]";
createNode objectSet -n "tweakSet15";
	rename -uid "AFE5A4AD-4504-7EC4-CD3F-2CB34D178820";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId30";
	rename -uid "A484A676-4927-8896-C139-DEB3AE7F029E";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts30";
	rename -uid "85E2DAD0-45B6-9A42-9A16-4283BC42C1AD";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode dagPose -n "bindPose8";
	rename -uid "EF090867-45A7-1A3D-5E81-3D8D2AB07E87";
	setAttr -s 24 ".wm";
	setAttr ".wm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wm[1]" -type "matrix" -0.044148363414217462 0 -0.99902498567745857 0 0 1 0 0
		 0.99902498567745857 0 -0.044148363414217462 0 -0.0067329159937798977 6.1693062782287598 -0.15235787630081177 1;
	setAttr ".wm[2]" -type "matrix" 1.1500000000000001 -2.8183361971427663e-018 -7.5633943552588789e-016 0
		 2.8183361971428029e-018 1.1499999999999999 6.3775584429095611e-017 0 7.5633943552588789e-016 -6.3775584429095623e-017 1.1500000000000001 0
		 -2.9813577127890678e-010 3.2564222812652588 2.5926580049517867e-009 1;
	setAttr ".wm[3]" -type "matrix" 1.1500000000000001 -2.8183361971427663e-018 -7.5633943552588789e-016 0
		 2.8183361971428029e-018 1.1499999999999999 6.3775584429095611e-017 0 7.5633943552588789e-016 -6.3775584429095623e-017 1.1500000000000001 0
		 -2.9813553161786876e-010 3.2564222812652583 2.5926577509882771e-009 1;
	setAttr ".wm[4]" -type "matrix" 1.1499999999999999 0 0 0 0 1.1499999999999999 0 0
		 0 0 1.1499999999999999 0 0 4.6124280000000004 0 1;
	setAttr ".wm[5]" -type "matrix" 0 1.0598810000000001 0.446266 0 0 0.446266 -1.0598810000000001 0
		 -1.1499999999999999 0 0 0 0 6.0670820000000001 0.58955500000000005 1;
	setAttr ".wm[6]" -type "matrix" 1.1499999999999999 0 0 0 0 1.1499999999999999 0 0
		 0 0 1.1499999999999999 0 0.58677299999999999 7.1021340000000004 1.602355 1;
	setAttr ".wm[7]" -type "matrix" 1 -2.4507271279502312e-018 -6.5768646567468501e-016 0
		 2.4507271279502636e-018 1 5.5457029938344016e-017 0 6.5768646567468501e-016 -5.545702993834401e-017 1 0
		 -2.9813597687173542e-010 4.9471855056992808e-007 2.5926572773154928e-009 1;
	setAttr ".wm[15]" -type "matrix" 1 -2.4507271279502312e-018 -6.5768646567468501e-016 0
		 2.4507271279502636e-018 1 5.5457029938344016e-017 0 6.5768646567468501e-016 -5.545702993834401e-017 1 0
		 -2.9813597000751473e-010 2.20537185846581e-007 2.5926574326445448e-009 1;
	setAttr -s 24 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.0067329159937798977
		 6.1693062782287598 -0.15235787630081177 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0.72254701003264055 0 0.69132179069727817 1
		 1 1 no;
	setAttr ".xm[2]" -type "matrix" "xform" 1.1500000000000001 1.1499999999999999 1.1500000000000001 0
		 -1.6149590442363042 -2.1419699791636049e-008 0 -0.15250657498836517 -2.912883996963501
		 1.7340006710818975e-016 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 1.0709849923573602e-008 0.99999999999999989 1
		 1 1 no;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 0 0 0 0 2.0840090261312446e-016
		 -4.4408920985006262e-016 -2.2083783485169045e-016 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 1 0 0 0 1 0.86956521739130421 0.86956521739130443 0.86956521739130421 no;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 0 0 0 0 -2.8897381508599269e-018
		 1.1791349649429312 -8.9526610933416034e-017 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 no;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 0 0 0 0 -2.2581527796885223e-016
		 1.2649170160293579 0.51265501976013184 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.3911339284509423 -0.58907915428619007 0.39113392845094241 0.5890791542861904 1
		 1 1 no;
	setAttr ".xm[6]" -type "matrix" "xform" 1 1 1 -5.5511151231257827e-017 -5.5511151231257821e-017
		 2.2204460492503131e-016 0 1.1712729930877686 -0.46241301298141457 -0.51023697853088379 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.39113392845094241 0.58907915428619007 -0.39113392845094219 0.5890791542861904 1
		 1 1 no;
	setAttr ".xm[7]" -type "matrix" "xform" 0.86956521739130421 0.86956521739130443 0.86956521739130421 0
		 0 0 0 -3.7734788404587046e-016 -4.0108060836791992 -1.6532669644173212e-016 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[8]" -type "matrix" "xform" 1 1 1 -8.8638219399644628e-017 0.0074444118223320468
		 -2.6430488865932573e-014 0 2.3913657665252686 5.3576545715332031 9.9756510154149283e-016 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.25130802352095927 0.96790716358232876 1.1500000000000001
		 1.1499999999999999 1.1500000000000001 no;
	setAttr ".xm[9]" -type "matrix" "xform" 1 1 1 1.4002844166865556e-015 -0.013330458576993243
		 1.6713468125354677e-014 0 0.89899998903274536 1.7763568394002505e-015 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[10]" -type "matrix" "xform" 1 1 1 -0.00048571771898180106 0.0058660314807561639
		 -1.4246362760242615e-006 0 1.1369999647140503 -2.6645352591003757e-015 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.041294847983993972 0.99914700396387057 1
		 1 1 no;
	setAttr ".xm[11]" -type "matrix" "xform" 1 1 1 0.057582850014508524 0.0072804412247393334
		 0.00041507031095769299 0 -2.3913700580596924 5.3576498031616211 -1.0802229175784221e-015 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.96790716358232876 -0.25130802352095943 -1.8723906992847156e-009 7.2114703918772959e-009 1.1500000000000001
		 1.1499999999999999 1.1500000000000001 no;
	setAttr ".xm[12]" -type "matrix" "xform" 1 1 1 9.8411501984514955e-007 -0.013057741457401734
		 8.247903964628821e-006 0 -0.89899998903274536 -9.6304302132921293e-006 -1.4350460652689384e-013 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1.0536712127723509e-008 0 0 0.99999999999999989 1
		 1 1 no;
	setAttr ".xm[13]" -type "matrix" "xform" 1 1 1 -0.057851759040211746 0.00095983137362321968
		 0.00013947525979733725 0 -1.1369999647140503 3.1770493933436228e-006 -1.9609583528919054e-014 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.041294847983993986 0.99914700396387057 1
		 1 1 no;
	setAttr ".xm[14]" -type "matrix" "xform" 1 1 1 0 0 0 0 2.1148005266485105e-016
		 -1.2564220428466797 -1.75295691895764e-016 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 0.86956521739130421 0.86956521739130443 0.86956521739130421 no;
	setAttr ".xm[15]" -type "matrix" "xform" 0.86956521739130421 0.86956521739130443
		 0.86956521739130421 0 0 0 0 -3.7734788404587046e-016 -1.5752493143081665 -1.6532669644173212e-016 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[16]" -type "matrix" "xform" 1 1 1 -4.4408920984952516e-016 6.9093293715851181e-022
		 1.0295703002975062e-029 0 -1.5727200508117676 1.9718899726867676 3.2881566556274335e-039 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.91297536823544234 0.40801467742638675 3.0399462638768648e-009 6.8021966199479916e-009 1.1500000000000001
		 1.1499999999999999 1.1500000000000001 no;
	setAttr ".xm[17]" -type "matrix" "xform" 1 1 1 3.1415926535897927 3.1415926535897931
		 3.1415926535897931 0 -2.3329999446868896 3.6297808492236072e-006 5.4087949532622207e-014 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.40390089818600472 -0.58039992246323635 0.16298516781633501 0.68806673333412149 1
		 1 1 no;
	setAttr ".xm[18]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.5727174282073975 1.9718871116638184
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.4080146774263867 0.91297536823544234 1.1500000000000001
		 1.1499999999999999 1.1500000000000001 no;
	setAttr ".xm[19]" -type "matrix" "xform" 1 1 1 -1.1102230246251565e-016 9.7144514654701197e-017
		 1.1102230246251565e-016 0 2.3329999446868896 8.8817841970012523e-016 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.40390089305950827 -0.58039992124890216 0.16298517214065184 0.68806673634341731 1
		 1 1 no;
	setAttr ".xm[20]" -type "matrix" "xform" 1 1 1 -5.5511151231257827e-017 -5.5511151231257821e-017
		 2.2204460492503131e-016 0 1.2188169956207275 -1.434054970741272 7.8104643368523017e-016 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.39113392845094241 0.58907915428619007 -0.39113392845094219 0.5890791542861904 1
		 1 1 no;
	setAttr ".xm[21]" -type "matrix" "xform" 1 1 1 1.6510919314276262e-016 -1.4846804678468411e-016
		 -2.2204460492503131e-016 0 0.45437100529670715 -0.40596398711204529 2.3978483650254577e-016 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.74358570071318886 0.66864064017592884 1
		 1 1 no;
	setAttr ".xm[22]" -type "matrix" "xform" 1 1 1 0 0 0 0 -5.5518642178885107e-016
		 -0.19503900408744812 1.7587560415267944 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0.86956521739130421
		 0.86956521739130443 0.86956521739130421 no;
	setAttr ".xm[23]" -type "matrix" "xform" 1 1 1 0 0 0 0 8.8361243565839172e-016
		 0.15965899825096108 -2.0348351001739502 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 1 1 no;
	setAttr -s 24 ".m";
	setAttr -s 24 ".p";
	setAttr -s 24 ".g[0:23]" yes yes yes yes yes yes no yes no no no no 
		no no no yes no no no no no no no no;
	setAttr ".bp" yes;
createNode skinCluster -n "skinCluster16";
	rename -uid "F9DB792F-425B-CABF-FD3F-B585B83751AF";
	setAttr -s 76 ".wl";
	setAttr ".wl[0].w[0]"  1;
	setAttr ".wl[1].w[0]"  1;
	setAttr ".wl[2].w[0]"  1;
	setAttr ".wl[3].w[0]"  1;
	setAttr ".wl[4].w[0]"  1;
	setAttr ".wl[5].w[0]"  1;
	setAttr ".wl[6].w[0]"  1;
	setAttr ".wl[7].w[0]"  1;
	setAttr ".wl[8].w[0]"  1;
	setAttr ".wl[9].w[0]"  1;
	setAttr ".wl[10].w[0]"  1;
	setAttr ".wl[11].w[0]"  1;
	setAttr ".wl[12].w[0]"  1;
	setAttr ".wl[13].w[0]"  1;
	setAttr ".wl[14].w[0]"  1;
	setAttr ".wl[15].w[0]"  1;
	setAttr ".wl[16].w[0]"  1;
	setAttr ".wl[17].w[0]"  1;
	setAttr ".wl[18].w[0]"  1;
	setAttr ".wl[19].w[0]"  1;
	setAttr ".wl[20].w[0]"  1;
	setAttr ".wl[21].w[0]"  1;
	setAttr ".wl[22].w[0]"  1;
	setAttr ".wl[23].w[0]"  1;
	setAttr ".wl[24].w[0]"  1;
	setAttr ".wl[25].w[0]"  1;
	setAttr ".wl[26].w[0]"  1;
	setAttr ".wl[27].w[0]"  1;
	setAttr ".wl[28].w[0]"  1;
	setAttr ".wl[29].w[0]"  1;
	setAttr ".wl[30].w[0]"  1;
	setAttr ".wl[31].w[0]"  1;
	setAttr ".wl[32].w[0]"  1;
	setAttr ".wl[33].w[0]"  1;
	setAttr ".wl[34].w[0]"  1;
	setAttr ".wl[35].w[0]"  1;
	setAttr ".wl[36].w[0]"  1;
	setAttr ".wl[37].w[0]"  1;
	setAttr ".wl[38].w[0]"  1;
	setAttr ".wl[39].w[0]"  1;
	setAttr ".wl[40].w[0]"  1;
	setAttr ".wl[41].w[0]"  1;
	setAttr ".wl[42].w[0]"  1;
	setAttr ".wl[43].w[0]"  1;
	setAttr ".wl[44].w[0]"  1;
	setAttr ".wl[45].w[0]"  1;
	setAttr ".wl[46].w[0]"  1;
	setAttr ".wl[47].w[0]"  1;
	setAttr ".wl[48].w[0]"  1;
	setAttr ".wl[49].w[0]"  1;
	setAttr ".wl[50].w[0]"  1;
	setAttr ".wl[51].w[0]"  1;
	setAttr ".wl[52].w[0]"  1;
	setAttr ".wl[53].w[0]"  1;
	setAttr ".wl[54].w[0]"  1;
	setAttr ".wl[55].w[0]"  1;
	setAttr ".wl[56].w[0]"  1;
	setAttr ".wl[57].w[0]"  1;
	setAttr ".wl[58].w[0]"  1;
	setAttr ".wl[59].w[0]"  1;
	setAttr ".wl[60].w[0]"  1;
	setAttr ".wl[61].w[0]"  1;
	setAttr ".wl[62].w[0]"  1;
	setAttr ".wl[63].w[0]"  1;
	setAttr ".wl[64].w[0]"  1;
	setAttr ".wl[65].w[0]"  1;
	setAttr ".wl[66].w[0]"  1;
	setAttr ".wl[67].w[0]"  1;
	setAttr ".wl[68].w[0]"  1;
	setAttr ".wl[69].w[0]"  1;
	setAttr ".wl[70].w[0]"  1;
	setAttr ".wl[71].w[0]"  1;
	setAttr ".wl[72].w[0]"  1;
	setAttr ".wl[73].w[0]"  1;
	setAttr ".wl[74].w[0]"  1;
	setAttr ".wl[75].w[0]"  1;
	setAttr ".pm[0]" -type "matrix" 0.86956500000000003 0 0 0 0 0.86956500000000003 0 0
		 0 0 0.86956500000000003 0 -0.51023700000000005 -6.1757669999999996 -1.3933519999999999 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 3.8914179999999998 0 1;
	setAttr ".dpf[0]"  4;
	setAttr ".mi" 5;
	setAttr ".bm" 1;
	setAttr ".ucm" yes;
createNode tweak -n "tweak16";
	rename -uid "D01236AA-4557-92FC-9588-8AA3C2E22F03";
createNode objectSet -n "skinCluster16Set";
	rename -uid "1311CC0C-44C5-6BA2-3FF6-F5ACC09E2F6E";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster16GroupId";
	rename -uid "B8A6127C-401E-7226-0EDB-178F850152CE";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster16GroupParts";
	rename -uid "7407179A-4FC2-A641-80F7-00994663FC58";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[0:75]";
createNode objectSet -n "tweakSet16";
	rename -uid "21CD683E-49E8-4E58-820C-019BEAEF8662";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId32";
	rename -uid "C4B0F3FE-499A-4F1E-5273-56A5BC945B62";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts32";
	rename -uid "59EC0F97-48A5-EF55-E1C9-11B3AA94B054";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode dagPose -n "bindPose9";
	rename -uid "F7CBF899-452B-AE9F-85BD-9AAB3CA1BFFC";
	setAttr -s 7 ".wm";
	setAttr ".wm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wm[1]" -type "matrix" -0.044148363414217462 0 -0.99902498567745857 0 0 1 0 0
		 0.99902498567745857 0 -0.044148363414217462 0 -0.0067329159937798977 6.1693062782287598 -0.15235787630081177 1;
	setAttr ".wm[2]" -type "matrix" 1.1500000000000001 -2.8183361971427663e-018 -7.5633943552588789e-016 0
		 2.8183361971428029e-018 1.1499999999999999 6.3775584429095611e-017 0 7.5633943552588789e-016 -6.3775584429095623e-017 1.1500000000000001 0
		 -2.9813577127890678e-010 3.2564222812652588 2.5926580049517867e-009 1;
	setAttr ".wm[3]" -type "matrix" 1.1500000000000001 -2.8183361971427663e-018 -7.5633943552588789e-016 0
		 2.8183361971428029e-018 1.1499999999999999 6.3775584429095611e-017 0 7.5633943552588789e-016 -6.3775584429095623e-017 1.1500000000000001 0
		 -2.9813553161786876e-010 3.2564222812652583 2.5926577509882771e-009 1;
	setAttr ".wm[4]" -type "matrix" 1.1500000000000001 -2.8183361971427663e-018 -7.5633943552588789e-016 0
		 2.8183361971428029e-018 1.1499999999999999 6.3775584429095611e-017 0 7.5633943552588789e-016 -6.3775584429095623e-017 1.1500000000000001 0
		 -2.9813553161786882e-010 4.6124274909496297 2.5926577232326957e-009 1;
	setAttr ".wm[5]" -type "matrix" 6.7912723420983526e-016 1.0598806814087751 0.44626555006685242 0
		 -1.1428402717144213e-015 0.44626555006685237 -1.0598806814087753 0 -1.1500000000000001 1.3049398402903573e-016 1.2670420268534601e-015 0
		 -2.9813539999926882e-010 6.0670820593833916 0.58955327531680957 1;
	setAttr ".wm[6]" -type "matrix" 1.1499999999999999 0 0 0 0 1.1499999999999999 0 0
		 0 0 1.1499999999999999 0 0.58677299999999999 7.1021340000000004 1.602355 1;
	setAttr -s 7 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.0067329159937798977
		 6.1693062782287598 -0.15235787630081177 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0.72254701003264055 0 0.69132179069727817 1
		 1 1 no;
	setAttr ".xm[2]" -type "matrix" "xform" 1.1500000000000001 1.1499999999999999 1.1500000000000001 0
		 -1.6149590442363042 -2.1419699791636049e-008 0 -0.15250657498836517 -2.912883996963501
		 1.7362641494985239e-016 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 1.0709849923573602e-008 0.99999999999999989 1
		 1 1 no;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 0 0 0 0 2.0840090261312446e-016
		 -4.4408920985006262e-016 -2.2083783443810015e-016 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 1 0 0 0 1 0.86956521739130421 0.86956521739130443 0.86956521739130421 no;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 0 0 0 0 -2.8897380991611386e-018
		 1.1791349649429321 -8.952661134700634e-017 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 no;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 0 0 0 0 -2.2581527796885223e-016
		 1.2649170160293579 0.51265501976013184 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.3911339284509423 -0.58907915428619007 0.39113392845094241 0.5890791542861904 1
		 1 1 no;
	setAttr ".xm[6]" -type "matrix" "xform" 1 1 1 -5.5511151231257827e-017 -5.5511151231257821e-017
		 2.2204460492503131e-016 0 1.1712729930877686 -0.46241301298141479 -0.51023697853088379 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.39113392845094241 0.58907915428619007 -0.39113392845094219 0.5890791542861904 1
		 1 1 no;
	setAttr -s 7 ".m";
	setAttr -s 7 ".p";
	setAttr -s 7 ".g[0:6]" yes yes yes yes yes yes no;
	setAttr ".bp" yes;
createNode skinCluster -n "skinCluster17";
	rename -uid "6485B215-4C61-4A42-73F6-15B18AFD55DE";
	setAttr -s 76 ".wl";
	setAttr ".wl[0].w[0]"  1;
	setAttr ".wl[1].w[0]"  1;
	setAttr ".wl[2].w[0]"  1;
	setAttr ".wl[3].w[0]"  1;
	setAttr ".wl[4].w[0]"  1;
	setAttr ".wl[5].w[0]"  1;
	setAttr ".wl[6].w[0]"  1;
	setAttr ".wl[7].w[0]"  1;
	setAttr ".wl[8].w[0]"  1;
	setAttr ".wl[9].w[0]"  1;
	setAttr ".wl[10].w[0]"  1;
	setAttr ".wl[11].w[0]"  1;
	setAttr ".wl[12].w[0]"  1;
	setAttr ".wl[13].w[0]"  1;
	setAttr ".wl[14].w[0]"  1;
	setAttr ".wl[15].w[0]"  1;
	setAttr ".wl[16].w[0]"  1;
	setAttr ".wl[17].w[0]"  1;
	setAttr ".wl[18].w[0]"  1;
	setAttr ".wl[19].w[0]"  1;
	setAttr ".wl[20].w[0]"  1;
	setAttr ".wl[21].w[0]"  1;
	setAttr ".wl[22].w[0]"  1;
	setAttr ".wl[23].w[0]"  1;
	setAttr ".wl[24].w[0]"  1;
	setAttr ".wl[25].w[0]"  1;
	setAttr ".wl[26].w[0]"  1;
	setAttr ".wl[27].w[0]"  1;
	setAttr ".wl[28].w[0]"  1;
	setAttr ".wl[29].w[0]"  1;
	setAttr ".wl[30].w[0]"  1;
	setAttr ".wl[31].w[0]"  1;
	setAttr ".wl[32].w[0]"  1;
	setAttr ".wl[33].w[0]"  1;
	setAttr ".wl[34].w[0]"  1;
	setAttr ".wl[35].w[0]"  1;
	setAttr ".wl[36].w[0]"  1;
	setAttr ".wl[37].w[0]"  1;
	setAttr ".wl[38].w[0]"  1;
	setAttr ".wl[39].w[0]"  1;
	setAttr ".wl[40].w[0]"  1;
	setAttr ".wl[41].w[0]"  1;
	setAttr ".wl[42].w[0]"  1;
	setAttr ".wl[43].w[0]"  1;
	setAttr ".wl[44].w[0]"  1;
	setAttr ".wl[45].w[0]"  1;
	setAttr ".wl[46].w[0]"  1;
	setAttr ".wl[47].w[0]"  1;
	setAttr ".wl[48].w[0]"  1;
	setAttr ".wl[49].w[0]"  1;
	setAttr ".wl[50].w[0]"  1;
	setAttr ".wl[51].w[0]"  1;
	setAttr ".wl[52].w[0]"  1;
	setAttr ".wl[53].w[0]"  1;
	setAttr ".wl[54].w[0]"  1;
	setAttr ".wl[55].w[0]"  1;
	setAttr ".wl[56].w[0]"  1;
	setAttr ".wl[57].w[0]"  1;
	setAttr ".wl[58].w[0]"  1;
	setAttr ".wl[59].w[0]"  1;
	setAttr ".wl[60].w[0]"  1;
	setAttr ".wl[61].w[0]"  1;
	setAttr ".wl[62].w[0]"  1;
	setAttr ".wl[63].w[0]"  1;
	setAttr ".wl[64].w[0]"  1;
	setAttr ".wl[65].w[0]"  1;
	setAttr ".wl[66].w[0]"  1;
	setAttr ".wl[67].w[0]"  1;
	setAttr ".wl[68].w[0]"  1;
	setAttr ".wl[69].w[0]"  1;
	setAttr ".wl[70].w[0]"  1;
	setAttr ".wl[71].w[0]"  1;
	setAttr ".wl[72].w[0]"  1;
	setAttr ".wl[73].w[0]"  1;
	setAttr ".wl[74].w[0]"  1;
	setAttr ".wl[75].w[0]"  1;
	setAttr ".pm[0]" -type "matrix" 0.86956500000000003 0 0 0 0 -0.86956500000000003 0 0
		 0 0 -0.86956500000000003 0 0.51023700000000005 6.17577 1.393351 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 3.8914179999999998 0 1;
	setAttr ".dpf[0]"  4;
	setAttr ".mi" 5;
	setAttr ".bm" 1;
	setAttr ".ucm" yes;
createNode tweak -n "tweak17";
	rename -uid "78F2777A-4A4F-AACC-8DD5-0BB10A00B45A";
createNode objectSet -n "skinCluster17Set";
	rename -uid "8B7EEFA4-4EA9-8FCD-6C53-5D84A015A089";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster17GroupId";
	rename -uid "2A55C92A-4AA5-94B5-9015-D5B823B854D6";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster17GroupParts";
	rename -uid "4A2E46D2-4308-FA91-66EE-52B4C8C89B31";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[0:75]";
createNode objectSet -n "tweakSet17";
	rename -uid "BBB5FBE7-4E2B-20A3-34B5-82AE054167BA";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId34";
	rename -uid "829811BF-47EF-8CAC-6DBC-418977B7C2A7";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts34";
	rename -uid "B1A95AD6-4ECA-2BE0-31A8-60B54508DB07";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode dagPose -n "bindPose10";
	rename -uid "6C3A3828-4354-E35C-45F1-C196C0B3FC3E";
	setAttr -s 7 ".wm";
	setAttr ".wm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wm[1]" -type "matrix" -0.044148363414217462 0 -0.99902498567745857 0 0 1 0 0
		 0.99902498567745857 0 -0.044148363414217462 0 -0.0067329159937798977 6.1693062782287598 -0.15235787630081177 1;
	setAttr ".wm[2]" -type "matrix" 1.1500000000000001 -2.8183361971427663e-018 -7.5633943552588789e-016 0
		 2.8183361971428029e-018 1.1499999999999999 6.3775584429095611e-017 0 7.5633943552588789e-016 -6.3775584429095623e-017 1.1500000000000001 0
		 -2.9813577127890678e-010 3.2564222812652588 2.5926580049517867e-009 1;
	setAttr ".wm[3]" -type "matrix" 1.1500000000000001 -2.8183361971427663e-018 -7.5633943552588789e-016 0
		 2.8183361971428029e-018 1.1499999999999999 6.3775584429095611e-017 0 7.5633943552588789e-016 -6.3775584429095623e-017 1.1500000000000001 0
		 -2.9813553161786876e-010 3.2564222812652583 2.5926577509882771e-009 1;
	setAttr ".wm[4]" -type "matrix" 1.1500000000000001 -2.8183361971427663e-018 -7.5633943552588789e-016 0
		 2.8183361971428029e-018 1.1499999999999999 6.3775584429095611e-017 0 7.5633943552588789e-016 -6.3775584429095623e-017 1.1500000000000001 0
		 -2.9813553161786882e-010 4.6124274909496297 2.5926577232326957e-009 1;
	setAttr ".wm[5]" -type "matrix" 6.7912723420983526e-016 1.0598806814087751 0.44626555006685242 0
		 -1.1428402717144213e-015 0.44626555006685237 -1.0598806814087753 0 -1.1500000000000001 1.3049398402903573e-016 1.2670420268534601e-015 0
		 -2.9813539999926882e-010 6.0670820593833916 0.58955327531680957 1;
	setAttr ".wm[6]" -type "matrix" 1.1499999999999999 0 0 0 0 -1.1499999999999999 0 0
		 0 0 -1.1499999999999999 0 -0.58677299999999999 7.1021369999999999 1.6023540000000001 1;
	setAttr -s 7 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.0067329159937798977
		 6.1693062782287598 -0.15235787630081177 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0.72254701003264055 0 0.69132179069727817 1
		 1 1 no;
	setAttr ".xm[2]" -type "matrix" "xform" 1.1500000000000001 1.1499999999999999 1.1500000000000001 0
		 -1.6149590442363042 -2.1419699791636049e-008 0 -0.15250657498836517 -2.912883996963501
		 1.7362641494985239e-016 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 1.0709849923573602e-008 0.99999999999999989 1
		 1 1 no;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 0 0 0 0 2.0840090261312446e-016
		 -4.4408920985006262e-016 -2.2083783443810015e-016 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 1 0 0 0 1 0.86956521739130421 0.86956521739130443 0.86956521739130421 no;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 0 0 0 0 -2.8897380991611386e-018
		 1.1791349649429321 -8.952661134700634e-017 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 no;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 0 0 0 0 -2.2581527796885223e-016
		 1.2649170160293579 0.51265501976013184 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.3911339284509423 -0.58907915428619007 0.39113392845094241 0.5890791542861904 1
		 1 1 no;
	setAttr ".xm[6]" -type "matrix" "xform" 1 1 1 2.2204460492503131e-016 0 0 0 1.1712750196456909
		 -0.46241098642349243 0.51023697853088379 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.5890791542861904 0.3911339284509423 0.58907915428618995 0.39113392845094264 1
		 1 1 no;
	setAttr -s 7 ".m";
	setAttr -s 7 ".p";
	setAttr -s 7 ".g[0:6]" yes yes yes yes yes yes no;
	setAttr ".bp" yes;
createNode skinCluster -n "skinCluster18";
	rename -uid "47093FC3-4493-32CA-C8CA-13BA40489B91";
	setAttr -s 76 ".wl";
	setAttr ".wl[0].w[0]"  1;
	setAttr ".wl[1].w[0]"  1;
	setAttr ".wl[2].w[0]"  1;
	setAttr ".wl[3].w[0]"  1;
	setAttr ".wl[4].w[0]"  1;
	setAttr ".wl[5].w[0]"  1;
	setAttr ".wl[6].w[0]"  1;
	setAttr ".wl[7].w[0]"  1;
	setAttr ".wl[8].w[0]"  1;
	setAttr ".wl[9].w[0]"  1;
	setAttr ".wl[10].w[0]"  1;
	setAttr ".wl[11].w[0]"  1;
	setAttr ".wl[12].w[0]"  1;
	setAttr ".wl[13].w[0]"  1;
	setAttr ".wl[14].w[0]"  1;
	setAttr ".wl[15].w[0]"  1;
	setAttr ".wl[16].w[0]"  1;
	setAttr ".wl[17].w[0]"  1;
	setAttr ".wl[18].w[0]"  1;
	setAttr ".wl[19].w[0]"  1;
	setAttr ".wl[20].w[0]"  1;
	setAttr ".wl[21].w[0]"  1;
	setAttr ".wl[22].w[0]"  1;
	setAttr ".wl[23].w[0]"  1;
	setAttr ".wl[24].w[0]"  1;
	setAttr ".wl[25].w[0]"  1;
	setAttr ".wl[26].w[0]"  1;
	setAttr ".wl[27].w[0]"  1;
	setAttr ".wl[28].w[0]"  1;
	setAttr ".wl[29].w[0]"  1;
	setAttr ".wl[30].w[0]"  1;
	setAttr ".wl[31].w[0]"  1;
	setAttr ".wl[32].w[0]"  1;
	setAttr ".wl[33].w[0]"  1;
	setAttr ".wl[34].w[0]"  1;
	setAttr ".wl[35].w[0]"  1;
	setAttr ".wl[36].w[0]"  1;
	setAttr ".wl[37].w[0]"  1;
	setAttr ".wl[38].w[0]"  1;
	setAttr ".wl[39].w[0]"  1;
	setAttr ".wl[40].w[0]"  1;
	setAttr ".wl[41].w[0]"  1;
	setAttr ".wl[42].w[0]"  1;
	setAttr ".wl[43].w[0]"  1;
	setAttr ".wl[44].w[0]"  1;
	setAttr ".wl[45].w[0]"  1;
	setAttr ".wl[46].w[0]"  1;
	setAttr ".wl[47].w[0]"  1;
	setAttr ".wl[48].w[0]"  1;
	setAttr ".wl[49].w[0]"  1;
	setAttr ".wl[50].w[0]"  1;
	setAttr ".wl[51].w[0]"  1;
	setAttr ".wl[52].w[0]"  1;
	setAttr ".wl[53].w[0]"  1;
	setAttr ".wl[54].w[0]"  1;
	setAttr ".wl[55].w[0]"  1;
	setAttr ".wl[56].w[0]"  1;
	setAttr ".wl[57].w[0]"  1;
	setAttr ".wl[58].w[0]"  1;
	setAttr ".wl[59].w[0]"  1;
	setAttr ".wl[60].w[0]"  1;
	setAttr ".wl[61].w[0]"  1;
	setAttr ".wl[62].w[0]"  1;
	setAttr ".wl[63].w[0]"  1;
	setAttr ".wl[64].w[0]"  1;
	setAttr ".wl[65].w[0]"  1;
	setAttr ".wl[66].w[0]"  1;
	setAttr ".wl[67].w[0]"  1;
	setAttr ".wl[68].w[0]"  1;
	setAttr ".wl[69].w[0]"  1;
	setAttr ".wl[70].w[0]"  1;
	setAttr ".wl[71].w[0]"  1;
	setAttr ".wl[72].w[0]"  1;
	setAttr ".wl[73].w[0]"  1;
	setAttr ".wl[74].w[0]"  1;
	setAttr ".wl[75].w[0]"  1;
	setAttr ".pm[0]" -type "matrix" 0.86956500000000003 0 0 0 0 -0.86956500000000003 0 0
		 0 0 -0.86956500000000003 0 0.51023700000000005 6.17577 1.393351 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 3.8914179999999998 0 1;
	setAttr ".dpf[0]"  4;
	setAttr ".mi" 5;
	setAttr ".bm" 1;
	setAttr ".ucm" yes;
createNode tweak -n "tweak18";
	rename -uid "E4A183DC-4EB5-0EC6-1F0B-CCA9837F3138";
createNode objectSet -n "skinCluster18Set";
	rename -uid "38AB8528-456B-E681-0839-DFB199EC3A98";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster18GroupId";
	rename -uid "8511C7F4-4CE7-AAB1-BB58-0CB58C80FE5B";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster18GroupParts";
	rename -uid "B6633A19-4EDE-53FB-AEE3-729B2388C703";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[0:75]";
createNode objectSet -n "tweakSet18";
	rename -uid "E7FF1B1E-4C26-24DD-B48E-30B3FE831A1E";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId36";
	rename -uid "44A46DCD-43AF-145E-287D-A89553D431ED";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts36";
	rename -uid "78F5DA48-41FA-8E9F-FEE5-0C908382961E";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode dagPose -n "bindPose11";
	rename -uid "A75AD46C-4003-A46C-1738-85ADFF6085ED";
	setAttr -s 7 ".wm";
	setAttr ".wm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wm[1]" -type "matrix" -0.044148363414217462 0 -0.99902498567745857 0 0 1 0 0
		 0.99902498567745857 0 -0.044148363414217462 0 -0.0067329159937798977 6.1693062782287598 -0.15235787630081177 1;
	setAttr ".wm[2]" -type "matrix" 1.1500000000000001 -2.8183361971427663e-018 -7.5633943552588789e-016 0
		 2.8183361971428029e-018 1.1499999999999999 6.3775584429095611e-017 0 7.5633943552588789e-016 -6.3775584429095623e-017 1.1500000000000001 0
		 -2.9813577127890678e-010 3.2564222812652588 2.5926580049517867e-009 1;
	setAttr ".wm[3]" -type "matrix" 1.1500000000000001 -2.8183361971427663e-018 -7.5633943552588789e-016 0
		 2.8183361971428029e-018 1.1499999999999999 6.3775584429095611e-017 0 7.5633943552588789e-016 -6.3775584429095623e-017 1.1500000000000001 0
		 -2.9813553161786876e-010 3.2564222812652583 2.5926577509882771e-009 1;
	setAttr ".wm[4]" -type "matrix" 1.1500000000000001 -2.8183361971427663e-018 -7.5633943552588789e-016 0
		 2.8183361971428029e-018 1.1499999999999999 6.3775584429095611e-017 0 7.5633943552588789e-016 -6.3775584429095623e-017 1.1500000000000001 0
		 -2.9813553161786882e-010 4.6124274909496297 2.5926577232326957e-009 1;
	setAttr ".wm[5]" -type "matrix" 6.7912723420983526e-016 1.0598806814087751 0.44626555006685242 0
		 -1.1428402717144213e-015 0.44626555006685237 -1.0598806814087753 0 -1.1500000000000001 1.3049398402903573e-016 1.2670420268534601e-015 0
		 -2.9813539999926882e-010 6.0670820593833916 0.58955327531680957 1;
	setAttr ".wm[6]" -type "matrix" 1.1499999999999999 0 0 0 0 -1.1499999999999999 0 0
		 0 0 -1.1499999999999999 0 -0.58677299999999999 7.1021369999999999 1.6023540000000001 1;
	setAttr -s 7 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.0067329159937798977
		 6.1693062782287598 -0.15235787630081177 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0.72254701003264055 0 0.69132179069727817 1
		 1 1 no;
	setAttr ".xm[2]" -type "matrix" "xform" 1.1500000000000001 1.1499999999999999 1.1500000000000001 0
		 -1.6149590442363042 -2.1419699791636049e-008 0 -0.15250657498836517 -2.912883996963501
		 1.7362641494985239e-016 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 1.0709849923573602e-008 0.99999999999999989 1
		 1 1 no;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 0 0 0 0 2.0840090261312446e-016
		 -4.4408920985006262e-016 -2.2083783443810015e-016 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 1 0 0 0 1 0.86956521739130421 0.86956521739130443 0.86956521739130421 no;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 0 0 0 0 -2.8897380991611386e-018
		 1.1791349649429321 -8.952661134700634e-017 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 no;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 0 0 0 0 -2.2581527796885223e-016
		 1.2649170160293579 0.51265501976013184 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.3911339284509423 -0.58907915428619007 0.39113392845094241 0.5890791542861904 1
		 1 1 no;
	setAttr ".xm[6]" -type "matrix" "xform" 1 1 1 2.2204460492503131e-016 0 0 0 1.1712750196456909
		 -0.46241098642349243 0.51023697853088379 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.5890791542861904 0.3911339284509423 0.58907915428618995 0.39113392845094264 1
		 1 1 no;
	setAttr -s 7 ".m";
	setAttr -s 7 ".p";
	setAttr -s 7 ".g[0:6]" yes yes yes yes yes yes no;
	setAttr ".bp" yes;
createNode skinCluster -n "skinCluster19";
	rename -uid "48FB7F36-401C-8F39-93E8-1C82EC3E71C4";
	setAttr ".bw[303]"  -1.#QNAN;
	setAttr -s 1005 ".wl";
	setAttr ".wl[0].w[11]"  0.99999997636768967;
	setAttr -s 5 ".wl[1].w[11:15]"  0.011509894756531013 0.95962519456097717 
		0.021655766544668609 0.0047864124266411368 0.0024227317111821505;
	setAttr -s 5 ".wl[2].w[11:15]"  0.0052608669504490384 0.98369633460182204 
		0.0095370918704931647 0.0015054492130270032 2.4848754047362752e-007;
	setAttr ".wl[3].w[11]"  0.99999999097781256;
	setAttr ".wl[4].w[11]"  0.99999999998181011;
	setAttr ".wl[5].w[12]"  0.99999999039573595;
	setAttr -s 5 ".wl[6].w[11:15]"  0.018028843477233915 0.93122621794944982 
		0.034870737100324775 0.0098791708504831228 0.0059950306152323513;
	setAttr -s 5 ".wl[7].w[11:15]"  0.028330693197435017 0.87540149128816125 
		0.056423621591448987 0.022030561316741065 0.01781363260985179;
	setAttr ".wl[8].w[11]"  0.99999998146086;
	setAttr -s 5 ".wl[9].w[11:15]"  0.050486214075485904 0.59732773007147799 
		0.090187610206900748 0.068014423321555495 0.19398405305640593;
	setAttr -s 5 ".wl[10].w[11:15]"  0.029482940366286195 0.20040301181269143 
		0.047362495404242581 0.054612810086991842 0.66813875301544134;
	setAttr -s 4 ".wl[11].w[11:14]"  0.21990430688028464 0.012925453912489908 
		0.76607697536105657 0.0010932792129914205;
	setAttr ".wl[12].w[13]"  1.0000000000291038;
	setAttr ".wl[13].w[13]"  0.99999999997089617;
	setAttr ".wl[14].w[13]"  1.0000000121071935;
	setAttr ".wl[15].w[13]"  1.0000000119325705;
	setAttr ".wl[16].w[13]"  1.0000000189756975;
	setAttr ".wl[17].w[13]"  0.99999997182226252;
	setAttr ".wl[18].w[13]"  1.0000000000218279;
	setAttr -s 6 ".wl[19].w";
	setAttr ".wl[19].w[2]" 1.6871253558786837e-006;
	setAttr ".wl[19].w[3]" 0.0062727303298777777;
	setAttr ".wl[19].w[4]" 0.0012157503866708759;
	setAttr ".wl[19].w[12]" 0.018012307380651228;
	setAttr ".wl[19].w[13]" 0.92260801376904766;
	setAttr ".wl[19].w[14]" 0.051889494716163199;
	setAttr -s 6 ".wl[20].w";
	setAttr ".wl[20].w[2]" 2.9597611703985442e-006;
	setAttr ".wl[20].w[3]" 0.022045237766328434;
	setAttr ".wl[20].w[4]" 0.0034479816768997681;
	setAttr ".wl[20].w[12]" 0.054371163820649285;
	setAttr ".wl[20].w[13]" 0.76417589482312998;
	setAttr ".wl[20].w[14]" 0.15595671035723571;
	setAttr -s 5 ".wl[21].w";
	setAttr ".wl[21].w[3]" 1.0950387987448514e-008;
	setAttr ".wl[21].w[4]" 2.1227479100462042e-009;
	setAttr ".wl[21].w[12]" 3.1439012395178058e-008;
	setAttr ".wl[21].w[13]" 0.99999986491967008;
	setAttr ".wl[21].w[14]" 9.0568181677401843e-008;
	setAttr ".wl[22].w[13]"  1.0000000055124474;
	setAttr -s 7 ".wl[23].w";
	setAttr ".wl[23].w[1]" 3.2150056544945479e-007;
	setAttr ".wl[23].w[2]" 2.0828818932464204e-006;
	setAttr ".wl[23].w[3]" 0.048370189821456779;
	setAttr ".wl[23].w[4]" 0.003372235090143315;
	setAttr ".wl[23].w[12]" 0.091985006957073123;
	setAttr ".wl[23].w[13]" 0.59669714663544027;
	setAttr ".wl[23].w[14]" 0.25957299855973592;
	setAttr ".wl[24].w[11]"  1.0000000000145519;
	setAttr ".wl[25].w[11]"  1;
	setAttr ".wl[26].w[11]"  1.0000000000145519;
	setAttr ".wl[27].w[11]"  0.99999997392296791;
	setAttr -s 5 ".wl[28].w";
	setAttr ".wl[28].w[3]" 0.001487162795855783;
	setAttr ".wl[28].w[10]" 0.26211251629715915;
	setAttr ".wl[28].w[13]" 0.11351080711249259;
	setAttr ".wl[28].w[14]" 0.36077699749187631;
	setAttr ".wl[28].w[16]" 0.26211251629715915;
	setAttr -s 7 ".wl[29].w";
	setAttr ".wl[29].w[1]" 3.2953052179617731e-006;
	setAttr ".wl[29].w[2]" 2.1433514758578265e-007;
	setAttr ".wl[29].w[3]" 0.016538553138062781;
	setAttr ".wl[29].w[12]" 0.12183174196146102;
	setAttr ".wl[29].w[13]" 0.43915224317752716;
	setAttr ".wl[29].w[14]" 0.40516041239227318;
	setAttr ".wl[29].w[16]" 0.017313534007787391;
	setAttr -s 7 ".wl[30].w";
	setAttr ".wl[30].w[1]" 5.2548760972397318e-006;
	setAttr ".wl[30].w[2]" 2.2964154741224414e-007;
	setAttr ".wl[30].w[10]" 0.053224655308376966;
	setAttr ".wl[30].w[12]" 0.098643294721311184;
	setAttr ".wl[30].w[13]" 0.31424415820646961;
	setAttr ".wl[30].w[14]" 0.48065779105382339;
	setAttr ".wl[30].w[16]" 0.053224655308376966;
	setAttr -s 5 ".wl[31].w";
	setAttr ".wl[31].w[7]" 1.6588321095888225e-008;
	setAttr ".wl[31].w[9]" 7.9823814805800847e-009;
	setAttr ".wl[31].w[10]" 0.0023150228913015902;
	setAttr ".wl[31].w[14]" 0.0017462208419959659;
	setAttr ".wl[31].w[15]" 0.99593872268574946;
	setAttr ".wl[32].w[11]"  1.0000000000436557;
	setAttr -s 4 ".wl[33].w[11:14]"  0.36048657907741849 0.11199755641771202 
		0.5128409273521406 0.014674937152728938;
	setAttr -s 4 ".wl[34].w[11:14]"  0.32626539490310352 0.19703499419158546 
		0.4401321353327039 0.036567451639254026;
	setAttr -s 4 ".wl[35].w[11:14]"  0.36048657907741849 0.11199755641771202 
		0.5128409273521406 0.014674937152728938;
	setAttr ".wl[36].w[11]"  1.0000000064887899;
	setAttr ".wl[37].w[11]"  1;
	setAttr -s 4 ".wl[38].w[11:14]"  0.29569376900013605 0.25386759118833296 
		0.39042039141868123 0.060018247366939656;
	setAttr -s 4 ".wl[39].w[11:14]"  0.20454046792786776 0.29502067021257644 
		0.39917103674323356 0.10126784058500822;
	setAttr -s 4 ".wl[40].w[11:14]"  0.19814506981911864 0.30369823587552841 
		0.3845765381360452 0.11358015615475589;
	setAttr -s 4 ".wl[41].w[11:14]"  0.18985867109396626 0.31122207549727232 
		0.36274508223863472 0.13617417774759247;
	setAttr -s 4 ".wl[42].w[11:14]"  0.18636238034710323 0.31401974245988484 
		0.36440803028441515 0.13520985462111185;
	setAttr ".wl[43].w[11]"  0.99999999205465429;
	setAttr ".wl[44].w[11]"  0.99999999463034328;
	setAttr ".wl[45].w[11]"  1.0000000049330993;
	setAttr ".wl[46].w[11]"  1.0000000063373591;
	setAttr ".wl[47].w[11]"  1;
	setAttr ".wl[48].w[11]"  1.0000000080181053;
	setAttr ".wl[49].w[11]"  0.99999995165853761;
	setAttr ".wl[50].w[11]"  0.99999998976272764;
	setAttr ".wl[51].w[11]"  1.000000043088221;
	setAttr ".wl[52].w[11]"  1;
	setAttr ".wl[53].w[11]"  1.0000000254294719;
	setAttr ".wl[54].w[11]"  1.0000000143809302;
	setAttr -s 4 ".wl[55].w[11:14]"  0.95119761183743812 0.023349967318581369 
		0.020171963714039187 0.0052804301215865993;
	setAttr -s 4 ".wl[56].w[11:14]"  0.83848545654606077 0.0668777293511469 
		0.074830198578051579 0.019806615514736489;
	setAttr -s 5 ".wl[57].w";
	setAttr ".wl[57].w[3]" 0.0016191427516922482;
	setAttr ".wl[57].w[11]" 0.40180748232215224;
	setAttr ".wl[57].w[12]" 0.2437915887948327;
	setAttr ".wl[57].w[13]" 0.27894007748762706;
	setAttr ".wl[57].w[14]" 0.073841713263929021;
	setAttr -s 2 ".wl[58].w[11:12]"  0.98465774047675203 0.015342263335849735;
	setAttr ".wl[59].w[11]"  1;
	setAttr -s 4 ".wl[60].w[11:14]"  0.22476295428462342 0.3606119651463216 
		0.32765084099908881 0.086974239569966166;
	setAttr -s 4 ".wl[61].w[11:14]"  0.13607219035193857 0.62984388315473672 
		0.21924462497740613 0.014839301515918687;
	setAttr -s 4 ".wl[62].w[11:14]"  0.16594994810405361 0.52907832234174701 
		0.27122200232660792 0.033749727242143195;
	setAttr -s 4 ".wl[63].w[11:14]"  0.17084998893787698 0.47659933447841607 
		0.28960715408461429 0.062943522499092644;
	setAttr -s 4 ".wl[64].w[11:14]"  0.066685104216118951 0.79558074989144378 
		0.13132831573493944 0.006405845786254789;
	setAttr -s 4 ".wl[65].w[11:14]"  1.3628460145487987e-005 0.9999582207186315 
		2.6841208605659178e-005 1.3096126173062315e-006;
	setAttr -s 5 ".wl[66].w[11:15]"  0.070979326924024033 0.74750255476657168 
		0.15408095773616509 0.027436281861354866 8.7871188431820134e-007;
	setAttr ".wl[67].w[12]"  1;
	setAttr ".wl[68].w[12]"  1.000000023865141;
	setAttr -s 5 ".wl[69].w[11:15]"  0.049195594533766818 0.81828448952522592 
		0.10966263286887283 0.018926191837492234 0.0039311192034232785;
	setAttr ".wl[70].w[12]"  0.99999997984559741;
	setAttr ".wl[71].w[12]"  0.99999999544525053;
	setAttr -s 5 ".wl[72].w[11:15]"  0.023789702162503177 0.91750323158610758 
		0.045482308765235589 0.0095141535215443017 0.0037106067876807552;
	setAttr ".wl[73].w[12]"  0.99999995944381226;
	setAttr -s 4 ".wl[74].w[11:14]"  2.1625018387549958e-006 0.9999932984054164 
		3.9201911272520963e-006 6.1875609844709363e-007;
	setAttr -s 5 ".wl[75].w[11:15]"  0.012017099459146807 0.95792735446338229 
		0.023227152493526356 0.0047596360812019144 0.002068738308766496;
	setAttr ".wl[76].w[13]"  1.0000000135769369;
	setAttr ".wl[77].w[13]"  0.99999997258419171;
	setAttr ".wl[78].w[13]"  0.99999999659485184;
	setAttr ".wl[79].w[13]"  1.0000000123982318;
	setAttr ".wl[80].w[13]"  1.0000000123982318;
	setAttr -s 2 ".wl[81].w";
	setAttr ".wl[81].w[11]" 0.99989863546215929;
	setAttr ".wl[81].w[13]" 0.00010136231867363676;
	setAttr -s 3 ".wl[82].w[11:13]"  0.99376518295213501 0.0051386278538594569 
		0.0010961891940055263;
	setAttr -s 4 ".wl[83].w[11:14]"  0.98264759057896223 0.010650009134832656 
		0.0053164586040688744 0.0013859416821362129;
	setAttr -s 2 ".wl[84].w[11:12]"  0.98784799673345225 0.012151966736693094;
	setAttr -s 2 ".wl[85].w[11:12]"  0.98586625198639377 0.014133720743317063;
	setAttr -s 2 ".wl[86].w[11:12]"  0.9686435453092328 0.031356475980219158;
	setAttr -s 2 ".wl[87].w[11:12]"  0.92549958089860052 0.074500419101399554;
	setAttr -s 2 ".wl[88].w[11:12]"  0.98824014919733894 0.01175985078810915;
	setAttr -s 2 ".wl[89].w[11:12]"  0.94198024097694777 0.058019759023052231;
	setAttr ".wl[90].w[11]"  0.99999999470310286;
	setAttr ".wl[91].w[11]"  1.0000000000145519;
	setAttr ".wl[92].w[11]"  1;
	setAttr ".wl[93].w[11]"  0.99999998926068656;
	setAttr ".wl[94].w[11]"  1;
	setAttr ".wl[95].w[11]"  0.99999997223130777;
	setAttr -s 5 ".wl[96].w[11:15]"  0.019683726354253594 0.92490027347069681 
		0.038983932942918423 0.010690084685221146 0.0057419390003037377;
	setAttr -s 5 ".wl[97].w[11:15]"  0.029106957301610226 0.87344545853526245 
		0.06009633648504608 0.022392205164333864 0.014959015985605994;
	setAttr -s 4 ".wl[98].w[11:14]"  0.23187401525422013 0.2919361605917799 
		0.36785570778252308 0.10833410471903078;
	setAttr -s 5 ".wl[99].w";
	setAttr ".wl[99].w[3]" 0.0058684827412032849;
	setAttr ".wl[99].w[11]" 0.24907636094427987;
	setAttr ".wl[99].w[12]" 0.29368030595593042;
	setAttr ".wl[99].w[13]" 0.32330126255575697;
	setAttr ".wl[99].w[14]" 0.1280735878028294;
	setAttr -s 5 ".wl[100].w";
	setAttr ".wl[100].w[3]" 0.014444299022231882;
	setAttr ".wl[100].w[11]" 0.14955948935953389;
	setAttr ".wl[100].w[12]" 0.33865178239989008;
	setAttr ".wl[100].w[13]" 0.30440742273652427;
	setAttr ".wl[100].w[14]" 0.19293698920869654;
	setAttr -s 5 ".wl[101].w";
	setAttr ".wl[101].w[3]" 4.8764321497951107e-007;
	setAttr ".wl[101].w[11]" 0.1625431437295809;
	setAttr ".wl[101].w[12]" 0.43857034250637428;
	setAttr ".wl[101].w[13]" 0.294134189725892;
	setAttr ".wl[101].w[14]" 0.10475183639493788;
	setAttr -s 6 ".wl[102].w";
	setAttr ".wl[102].w[3]" 0.0027910769519500422;
	setAttr ".wl[102].w[11]" 0.10982352822408262;
	setAttr ".wl[102].w[12]" 0.59332447406600664;
	setAttr ".wl[102].w[13]" 0.23194713988746216;
	setAttr ".wl[102].w[14]" 0.062112444416550595;
	setAttr ".wl[102].w[15]" 1.3364539480059138e-006;
	setAttr -s 5 ".wl[103].w[11:15]"  0.055537278708449149 0.78408088000827303 
		0.12161405127266797 0.03051733997955778 0.0082504330635188947;
	setAttr -s 5 ".wl[104].w[11:15]"  0.030441753428740066 0.88587921137081405 
		0.059762798151404749 0.016271500948316132 0.0076447459523715138;
	setAttr ".wl[105].w[11]"  1;
	setAttr ".wl[106].w[11]"  0.99999999765714165;
	setAttr ".wl[107].w[11]"  1.000000038959115;
	setAttr ".wl[108].w[11]"  1.000000044623448;
	setAttr ".wl[109].w[11]"  1.0000000001418812;
	setAttr ".wl[110].w[11]"  1.0000000201398507;
	setAttr ".wl[111].w[11]"  0.99999998268322088;
	setAttr -s 2 ".wl[112].w[11:12]"  0.99725605108411064 0.0027439489304412756;
	setAttr -s 5 ".wl[113].w";
	setAttr ".wl[113].w[3]" 0.063297654780263182;
	setAttr ".wl[113].w[11]" 0.10326113978111404;
	setAttr ".wl[113].w[12]" 0.26550942280782919;
	setAttr ".wl[113].w[13]" 0.29125773055728782;
	setAttr ".wl[113].w[14]" 0.27667401585378881;
	setAttr -s 5 ".wl[114].w";
	setAttr ".wl[114].w[3]" 0.02185052265685395;
	setAttr ".wl[114].w[11]" 0.16805214267923249;
	setAttr ".wl[114].w[12]" 0.2881577058738195;
	setAttr ".wl[114].w[13]" 0.32745342205657341;
	setAttr ".wl[114].w[14]" 0.19448620673352068;
	setAttr -s 5 ".wl[115].w[11:15]"  0.059477297718524134 0.74570024235313381 
		0.12673596223086339 0.047821523751933208 0.020264969754593881;
	setAttr -s 6 ".wl[116].w";
	setAttr ".wl[116].w[3]" 0.0017333431159671016;
	setAttr ".wl[116].w[11]" 0.1035785794357969;
	setAttr ".wl[116].w[12]" 0.57357043875161939;
	setAttr ".wl[116].w[13]" 0.22429493188734681;
	setAttr ".wl[116].w[14]" 0.09682023259573222;
	setAttr ".wl[116].w[15]" 2.4944698034934215e-006;
	setAttr -s 5 ".wl[117].w[11:15]"  0.039331837134408229 0.8331256948709177 
		0.079315475043098466 0.029815076215202099 0.018411907845153452;
	setAttr -s 5 ".wl[118].w[11:15]"  0.080543483949418571 0.46137953670347903 
		0.15727288560354943 0.13879760721820386 0.1620064699634505;
	setAttr -s 5 ".wl[119].w[11:15]"  0.058008889899355459 0.59197849335702335 
		0.10523267549640836 0.078787854413670283 0.16599209630865858;
	setAttr -s 6 ".wl[120].w";
	setAttr ".wl[120].w[3]" 0.0013242186415115176;
	setAttr ".wl[120].w[11]" 7.7174876107389507e-006;
	setAttr ".wl[120].w[12]" 0.28018722033785043;
	setAttr ".wl[120].w[13]" 0.10345696733943305;
	setAttr ".wl[120].w[14]" 0.12643078378165618;
	setAttr ".wl[120].w[15]" 0.48859309241193816;
	setAttr -s 5 ".wl[121].w[11:15]"  0.037750583840550474 0.23355080081459173 
		0.060918646947728847 0.070694312050443645 0.59708565634668542;
	setAttr -s 5 ".wl[122].w";
	setAttr ".wl[122].w[7]" -7.4802274059376856e-009;
	setAttr ".wl[122].w[9]" -3.5995221198415919e-009;
	setAttr ".wl[122].w[10]" 0.0055036572653663933;
	setAttr ".wl[122].w[14]" 0.004160321330523257;
	setAttr ".wl[122].w[15]" 0.99033601733531607;
	setAttr -s 5 ".wl[123].w";
	setAttr ".wl[123].w[7]" 1.0381014676100632e-007;
	setAttr ".wl[123].w[9]" 3.5370862833461496e-008;
	setAttr ".wl[123].w[10]" 0.047159841710758287;
	setAttr ".wl[123].w[14]" 0.036204613258157201;
	setAttr ".wl[123].w[15]" 0.9166353993890245;
	setAttr ".wl[124].w[13]"  0.99999997779377736;
	setAttr ".wl[125].w[13]"  1.0000000216532499;
	setAttr ".wl[126].w[13]"  1.0000000476429705;
	setAttr ".wl[127].w[13]"  0.99999998111161403;
	setAttr -s 4 ".wl[128].w[11:14]"  0.99998879471293656 2.2644337542747809e-007 
		1.0940994072957525e-005 2.0177223520148637e-008;
	setAttr -s 5 ".wl[129].w";
	setAttr ".wl[129].w[3]" 2.8158719715214111e-007;
	setAttr ".wl[129].w[11]" 0.12987238301112347;
	setAttr ".wl[129].w[12]" 0.40697231334111461;
	setAttr ".wl[129].w[13]" 0.27546822282203431;
	setAttr ".wl[129].w[14]" 0.18768681471449236;
	setAttr -s 6 ".wl[130].w";
	setAttr ".wl[130].w[3]" 0.001606715209079061;
	setAttr ".wl[130].w[4]" 0.055791467496533458;
	setAttr ".wl[130].w[11]" 2.7107409056788804e-005;
	setAttr ".wl[130].w[12]" 0.31591264601939534;
	setAttr ".wl[130].w[13]" 0.26940944386574145;
	setAttr ".wl[130].w[14]" 0.35725263719328176;
	setAttr -s 5 ".wl[131].w[11:15]"  1.3298818027805142e-005 0.22952686676316505 
		0.16329408559794631 0.60714787481189048 1.7831404600584284e-005;
	setAttr -s 6 ".wl[132].w";
	setAttr ".wl[132].w[3]" 1.1762629930139461e-007;
	setAttr ".wl[132].w[11]" 3.30918305906216e-006;
	setAttr ".wl[132].w[12]" 0.22974721985967742;
	setAttr ".wl[132].w[13]" 0.13789774532043667;
	setAttr ".wl[132].w[14]" 0.31544830056989354;
	setAttr ".wl[132].w[15]" 0.31690332364782969;
	setAttr -s 4 ".wl[133].w[11:14]"  0.24525029852391625 0.015271713845446941 
		0.73811727142766004 0.0013607172288867886;
	setAttr ".wl[134].w[13]"  0.99999998111161403;
	setAttr -s 4 ".wl[135].w[11:14]"  7.1145306988930462e-005 4.4304701629296646e-006 
		0.99992404685015801 3.947767807648282e-007;
	setAttr -s 4 ".wl[136].w[11:14]"  0.18637007767458175 0.19671577194091888 
		0.59095792452761786 0.025956199707544547;
	setAttr -s 4 ".wl[137].w[11:14]"  0.23006204531715505 0.23090109495738728 
		0.49204659639244674 0.046990242125413494;
	setAttr -s 4 ".wl[138].w[11:14]"  5.8788655811191451e-005 6.0884678911707189e-005 
		0.99986779974016093 1.2526896012373839e-005;
	setAttr ".wl[139].w[13]"  1.0000000000159162;
	setAttr ".wl[140].w[13]"  0.99999999999545253;
	setAttr ".wl[141].w[13]"  1.0000000268591975;
	setAttr ".wl[142].w[13]"  1.0000000229310899;
	setAttr ".wl[143].w[13]"  0.99999999882857082;
	setAttr ".wl[144].w[13]"  0.99999998760904418;
	setAttr ".wl[145].w[13]"  0.99999999051942723;
	setAttr ".wl[146].w[13]"  0.99999999940337148;
	setAttr ".wl[147].w[13]"  1.0000000098589226;
	setAttr ".wl[148].w[13]"  1.0000000000218279;
	setAttr ".wl[149].w[13]"  1.00000005630136;
	setAttr ".wl[150].w[13]"  1.0000000160871423;
	setAttr ".wl[151].w[13]"  0.99999997630948201;
	setAttr ".wl[152].w[13]"  0.99999995475809556;
	setAttr ".wl[153].w[13]"  1.0000000000145519;
	setAttr ".wl[154].w[13]"  1;
	setAttr -s 6 ".wl[155].w";
	setAttr ".wl[155].w[3]" 0.14614259190065026;
	setAttr ".wl[155].w[4]" 0.075143835820860191;
	setAttr ".wl[155].w[11]" 3.9418709060972856e-006;
	setAttr ".wl[155].w[12]" 0.06579575939576375;
	setAttr ".wl[155].w[13]" 0.3928183811013492;
	setAttr ".wl[155].w[14]" 0.32009550439690215;
	setAttr -s 5 ".wl[156].w";
	setAttr ".wl[156].w[3]" 0.019962496180258867;
	setAttr ".wl[156].w[4]" 0.009696295576491442;
	setAttr ".wl[156].w[12]" 0.0151925466048784;
	setAttr ".wl[156].w[13]" 0.90076710788966607;
	setAttr ".wl[156].w[14]" 0.054381553777809115;
	setAttr -s 5 ".wl[157].w";
	setAttr ".wl[157].w[3]" 0.017522220773661432;
	setAttr ".wl[157].w[4]" 0.0073543961683846552;
	setAttr ".wl[157].w[12]" 0.031550827789386102;
	setAttr ".wl[157].w[13]" 0.8714008223670876;
	setAttr ".wl[157].w[14]" 0.072171721092600977;
	setAttr -s 5 ".wl[158].w";
	setAttr ".wl[158].w[3]" 0.072060606135580407;
	setAttr ".wl[158].w[4]" 0.031197469623726198;
	setAttr ".wl[158].w[12]" 0.038721187163093328;
	setAttr ".wl[158].w[13]" 0.7209620653699278;
	setAttr ".wl[158].w[14]" 0.13705868819681116;
	setAttr ".wl[159].w[13]"  0.99999997786653694;
	setAttr ".wl[160].w[13]"  1.0000000163927325;
	setAttr ".wl[161].w[13]"  0.99999999917054083;
	setAttr ".wl[162].w[13]"  0.99999998571001925;
	setAttr ".wl[163].w[13]"  0.99999997684062691;
	setAttr ".wl[164].w[13]"  1;
	setAttr ".wl[165].w[13]"  1.0000000486979843;
	setAttr ".wl[166].w[13]"  0.99999998504063115;
	setAttr -s 5 ".wl[167].w";
	setAttr ".wl[167].w[3]" 0.033060521672616257;
	setAttr ".wl[167].w[11]" 0.11848778150238956;
	setAttr ".wl[167].w[12]" 0.27121301825940447;
	setAttr ".wl[167].w[13]" 0.34136784998537806;
	setAttr ".wl[167].w[14]" 0.2358708285802118;
	setAttr -s 5 ".wl[168].w";
	setAttr ".wl[168].w[3]" 0.11475785977316985;
	setAttr ".wl[168].w[11]" 0.067580358430546564;
	setAttr ".wl[168].w[12]" 0.21187591316045343;
	setAttr ".wl[168].w[13]" 0.30570572837141036;
	setAttr ".wl[168].w[14]" 0.30008014026441987;
	setAttr -s 6 ".wl[169].w";
	setAttr ".wl[169].w[3]" 0.10217412812975847;
	setAttr ".wl[169].w[4]" 1.2172732560585853e-005;
	setAttr ".wl[169].w[11]" 0.02788732008293374;
	setAttr ".wl[169].w[12]" 0.22330822685868162;
	setAttr ".wl[169].w[13]" 0.22768338588093998;
	setAttr ".wl[169].w[14]" 0.41893476631512555;
	setAttr -s 6 ".wl[170].w";
	setAttr ".wl[170].w[3]" 0.26098081630802089;
	setAttr ".wl[170].w[4]" 0.01635174564277295;
	setAttr ".wl[170].w[11]" 7.6576290686795408e-006;
	setAttr ".wl[170].w[12]" 0.1403762832804743;
	setAttr ".wl[170].w[13]" 0.20289387723468186;
	setAttr ".wl[170].w[14]" 0.37938961990498138;
	setAttr -s 6 ".wl[171].w";
	setAttr ".wl[171].w[3]" 0.18430792670739962;
	setAttr ".wl[171].w[4]" 0.070414194682376016;
	setAttr ".wl[171].w[11]" 4.8261860455709482e-006;
	setAttr ".wl[171].w[12]" 0.088124137772386854;
	setAttr ".wl[171].w[13]" 0.2430585677450699;
	setAttr ".wl[171].w[14]" 0.41409040299707944;
	setAttr -s 6 ".wl[172].w";
	setAttr ".wl[172].w[3]" 0.71157000247594815;
	setAttr ".wl[172].w[5]" 0.03308547106004868;
	setAttr ".wl[172].w[11]" 1.8233846250744993e-006;
	setAttr ".wl[172].w[12]" 2.5212152790396717e-005;
	setAttr ".wl[172].w[13]" 0.020949190119369066;
	setAttr ".wl[172].w[14]" 0.23436829635433251;
	setAttr -s 6 ".wl[173].w";
	setAttr ".wl[173].w[3]" 0.25238462464250949;
	setAttr ".wl[173].w[4]" 0.11632276276406753;
	setAttr ".wl[173].w[5]" 0.05400235927821749;
	setAttr ".wl[173].w[12]" 2.195508943975774e-005;
	setAttr ".wl[173].w[13]" 0.025953471769177797;
	setAttr ".wl[173].w[14]" 0.55131480054326487;
	setAttr -s 5 ".wl[174].w";
	setAttr ".wl[174].w[3]" 0.089442875217937409;
	setAttr ".wl[174].w[4]" 2.7592438740098001e-006;
	setAttr ".wl[174].w[12]" 0.1413409221573628;
	setAttr ".wl[174].w[13]" 0.12774379307247635;
	setAttr ".wl[174].w[14]" 0.64146960838791967;
	setAttr ".wl[175].w[13]"  0.9999999728606781;
	setAttr ".wl[176].w[13]"  1.0000000230938895;
	setAttr ".wl[177].w[13]"  1.000000003783498;
	setAttr ".wl[178].w[13]"  1.0000000216532499;
	setAttr ".wl[179].w[13]"  1.0000000011496013;
	setAttr -s 5 ".wl[180].w";
	setAttr ".wl[180].w[3]" 0.27372595001908717;
	setAttr ".wl[180].w[4]" 0.14180304440504421;
	setAttr ".wl[180].w[5]" 0.033415915182567188;
	setAttr ".wl[180].w[13]" 0.37288786079053071;
	setAttr ".wl[180].w[14]" 0.17816722960277084;
	setAttr -s 5 ".wl[181].w";
	setAttr ".wl[181].w[3]" 0.18406709486843964;
	setAttr ".wl[181].w[4]" 0.093281929785721793;
	setAttr ".wl[181].w[5]" 0.020939337022143817;
	setAttr ".wl[181].w[13]" 0.56140624095888947;
	setAttr ".wl[181].w[14]" 0.14030541230962226;
	setAttr -s 5 ".wl[182].w";
	setAttr ".wl[182].w[3]" 0.10554858602901418;
	setAttr ".wl[182].w[4]" 0.051425259782475231;
	setAttr ".wl[182].w[5]" 0.0083568907761204375;
	setAttr ".wl[182].w[13]" 0.73656361912678592;
	setAttr ".wl[182].w[14]" 0.098105644285604296;
	setAttr -s 5 ".wl[183].w";
	setAttr ".wl[183].w[3]" 0.033341844740894369;
	setAttr ".wl[183].w[4]" 0.012434566443353265;
	setAttr ".wl[183].w[5]" 0.0033594877066557265;
	setAttr ".wl[183].w[13]" 0.915620129659936;
	setAttr ".wl[183].w[14]" 0.035243992094690361;
	setAttr ".wl[184].w[13]"  1;
	setAttr ".wl[185].w[13]"  1;
	setAttr ".wl[186].w[13]"  1.000000029351213;
	setAttr ".wl[187].w[13]"  0.99999997036502464;
	setAttr ".wl[188].w[13]"  0.99999996669066604;
	setAttr -s 5 ".wl[189].w";
	setAttr ".wl[189].w[3]" 0.028198995946855581;
	setAttr ".wl[189].w[4]" 0.011777276761717581;
	setAttr ".wl[189].w[12]" 0.0038080631454964495;
	setAttr ".wl[189].w[13]" 0.91406450306216014;
	setAttr ".wl[189].w[14]" 0.042151156150670964;
	setAttr ".wl[190].w[13]"  0.99999999999454303;
	setAttr ".wl[191].w[13]"  0.99999998879866325;
	setAttr ".wl[192].w[13]"  0.99999998558291736;
	setAttr ".wl[193].w[13]"  1.0000000000004547;
	setAttr ".wl[194].w[13]"  1.0000000378768164;
	setAttr -s 6 ".wl[195].w";
	setAttr ".wl[195].w[3]" 0.095910129563770763;
	setAttr ".wl[195].w[4]" 0.047871578150263716;
	setAttr ".wl[195].w[5]" 4.5525485752095188e-007;
	setAttr ".wl[195].w[12]" 0.010695638000505509;
	setAttr ".wl[195].w[13]" 0.73540563445581342;
	setAttr ".wl[195].w[14]" 0.11011658015378056;
	setAttr -s 6 ".wl[196].w";
	setAttr ".wl[196].w[3]" 0.17553880759286747;
	setAttr ".wl[196].w[4]" 0.095942384524260696;
	setAttr ".wl[196].w[5]" 0.015635220067328589;
	setAttr ".wl[196].w[12]" 9.3631330663349883e-007;
	setAttr ".wl[196].w[13]" 0.5523604209137889;
	setAttr ".wl[196].w[14]" 0.16052227882804682;
	setAttr -s 5 ".wl[197].w";
	setAttr ".wl[197].w[3]" 0.48923209792423666;
	setAttr ".wl[197].w[4]" 0.26715823496011831;
	setAttr ".wl[197].w[5]" 0.065054343701116749;
	setAttr ".wl[197].w[13]" 0.019725057625351719;
	setAttr ".wl[197].w[14]" 0.1588302657978167;
	setAttr -s 6 ".wl[198].w";
	setAttr ".wl[198].w[3]" 0.32204666737247201;
	setAttr ".wl[198].w[4]" 0.28118231718996983;
	setAttr ".wl[198].w[5]" 0.048880093097266077;
	setAttr ".wl[198].w[12]" 3.2046082882798099e-006;
	setAttr ".wl[198].w[13]" 0.016902533302789614;
	setAttr ".wl[198].w[14]" 0.33098519231635221;
	setAttr -s 6 ".wl[199].w";
	setAttr ".wl[199].w[3]" 0.2140340909511767;
	setAttr ".wl[199].w[4]" 0.10561816751764763;
	setAttr ".wl[199].w[5]" 0.023970986230481859;
	setAttr ".wl[199].w[12]" 5.7981785809036669e-006;
	setAttr ".wl[199].w[13]" 0.49396771455398319;
	setAttr ".wl[199].w[14]" 0.16240324256812955;
	setAttr -s 5 ".wl[200].w";
	setAttr ".wl[200].w[3]" 0.11172372335736046;
	setAttr ".wl[200].w[12]" 0.14372000122169418;
	setAttr ".wl[200].w[13]" 2.5648844893896764e-005;
	setAttr ".wl[200].w[14]" 0.57769653301495927;
	setAttr ".wl[200].w[15]" 0.16683410869872206;
	setAttr -s 7 ".wl[201].w";
	setAttr ".wl[201].w[3]" 0.48608766149654248;
	setAttr ".wl[201].w[5]" 0.081228977117518295;
	setAttr ".wl[201].w[7]" 0.05933943735251971;
	setAttr ".wl[201].w[12]" 2.3404762319755249e-005;
	setAttr ".wl[201].w[13]" 5.0435045577179811e-006;
	setAttr ".wl[201].w[14]" 0.37329481061003689;
	setAttr ".wl[201].w[15]" 2.0692041168512146e-005;
	setAttr -s 6 ".wl[202].w";
	setAttr ".wl[202].w[3]" 0.39562687821203213;
	setAttr ".wl[202].w[4]" 0.19571301883400591;
	setAttr ".wl[202].w[5]" 0.053323378549085677;
	setAttr ".wl[202].w[12]" 6.7294868778081569e-006;
	setAttr ".wl[202].w[13]" 0.13736688805748185;
	setAttr ".wl[202].w[14]" 0.21796309745270345;
	setAttr -s 5 ".wl[203].w";
	setAttr ".wl[203].w[3]" 0.12372093345765015;
	setAttr ".wl[203].w[4]" 0.064873634310482223;
	setAttr ".wl[203].w[12]" 0.054681819524223407;
	setAttr ".wl[203].w[13]" 0.55913978781156548;
	setAttr ".wl[203].w[14]" 0.19758382489971679;
	setAttr -s 5 ".wl[204].w";
	setAttr ".wl[204].w[3]" 0.20402600619475206;
	setAttr ".wl[204].w[4]" 0.13052427948385728;
	setAttr ".wl[204].w[12]" 0.1093866788494029;
	setAttr ".wl[204].w[13]" 0.25304104566861929;
	setAttr ".wl[204].w[14]" 0.30302194850139497;
	setAttr -s 6 ".wl[205].w";
	setAttr ".wl[205].w[2]" 4.3063712233989943e-006;
	setAttr ".wl[205].w[3]" 0.039852740463342223;
	setAttr ".wl[205].w[4]" 0.018576648877248528;
	setAttr ".wl[205].w[12]" 0.088230004937233639;
	setAttr ".wl[205].w[13]" 0.5994092947174382;
	setAttr ".wl[205].w[14]" 0.25392700461896212;
	setAttr -s 6 ".wl[206].w";
	setAttr ".wl[206].w[2]" 2.5734178720672487e-007;
	setAttr ".wl[206].w[3]" 0.0018440807215883276;
	setAttr ".wl[206].w[12]" 0.16851526229526773;
	setAttr ".wl[206].w[13]" 0.38255045059021536;
	setAttr ".wl[206].w[14]" 0.44708664578061347;
	setAttr ".wl[206].w[16]" 3.3032778038711808e-006;
	setAttr -s 6 ".wl[207].w";
	setAttr ".wl[207].w[3]" 0.016565514720648884;
	setAttr ".wl[207].w[4]" 6.2322459097667165e-008;
	setAttr ".wl[207].w[12]" 0.12517383432988269;
	setAttr ".wl[207].w[13]" 0.43819930247911038;
	setAttr ".wl[207].w[14]" 0.40530845992898162;
	setAttr ".wl[207].w[16]" 0.014752844801713088;
	setAttr -s 6 ".wl[208].w";
	setAttr ".wl[208].w[2]" 0.013817116835969713;
	setAttr ".wl[208].w[3]" 0.011721894952679546;
	setAttr ".wl[208].w[4]" 6.432893911113339e-007;
	setAttr ".wl[208].w[12]" 0.09586253518257136;
	setAttr ".wl[208].w[13]" 0.61000626965898375;
	setAttr ".wl[208].w[14]" 0.26859154007585706;
	setAttr -s 5 ".wl[209].w";
	setAttr ".wl[209].w[3]" 0.073039217087500122;
	setAttr ".wl[209].w[4]" 0.035287534654306348;
	setAttr ".wl[209].w[12]" 0.027428751416008489;
	setAttr ".wl[209].w[13]" 0.74126075452107743;
	setAttr ".wl[209].w[14]" 0.12298374232838369;
	setAttr -s 6 ".wl[210].w";
	setAttr ".wl[210].w[2]" 3.1600035650419154e-006;
	setAttr ".wl[210].w[3]" 0.034741525521618528;
	setAttr ".wl[210].w[4]" 0.014684062165352034;
	setAttr ".wl[210].w[12]" 0.046130798725535084;
	setAttr ".wl[210].w[13]" 0.75880500963116349;
	setAttr ".wl[210].w[14]" 0.1456354439382139;
	setAttr -s 6 ".wl[211].w";
	setAttr ".wl[211].w[2]" 0.00979694140403377;
	setAttr ".wl[211].w[3]" 0.012827847702927461;
	setAttr ".wl[211].w[4]" 7.8172007613534512e-007;
	setAttr ".wl[211].w[12]" 0.05370688164686116;
	setAttr ".wl[211].w[13]" 0.76754472832435539;
	setAttr ".wl[211].w[14]" 0.15612281920572499;
	setAttr -s 6 ".wl[212].w";
	setAttr ".wl[212].w[2]" 0.0031513125372503708;
	setAttr ".wl[212].w[3]" 0.004613348283756865;
	setAttr ".wl[212].w[4]" 4.3710027770369678e-007;
	setAttr ".wl[212].w[12]" 0.017475469475112894;
	setAttr ".wl[212].w[13]" 0.92331851958552569;
	setAttr ".wl[212].w[14]" 0.051440913012164774;
	setAttr -s 6 ".wl[213].w";
	setAttr ".wl[213].w[2]" 1.1757051978564159e-006;
	setAttr ".wl[213].w[3]" 0.012911045353352694;
	setAttr ".wl[213].w[4]" 0.0047368506897698202;
	setAttr ".wl[213].w[12]" 0.014683478649916114;
	setAttr ".wl[213].w[13]" 0.91959902659256942;
	setAttr ".wl[213].w[14]" 0.048068440302326224;
	setAttr -s 5 ".wl[214].w";
	setAttr ".wl[214].w[3]" 0.025314452207096577;
	setAttr ".wl[214].w[4]" 0.0097266637628087432;
	setAttr ".wl[214].w[12]" 0.0086119176385225198;
	setAttr ".wl[214].w[13]" 0.91450460792746857;
	setAttr ".wl[214].w[14]" 0.041842389652495773;
	setAttr ".wl[215].w[13]"  1.000000000001819;
	setAttr ".wl[216].w[13]"  0.99999999999363354;
	setAttr ".wl[217].w[13]"  0.99999999413739715;
	setAttr ".wl[218].w[13]"  0.99999999777946869;
	setAttr -s 6 ".wl[219].w";
	setAttr ".wl[219].w[7]" 8.1392086930313953e-006;
	setAttr ".wl[219].w[10]" 2.260789746117134e-006;
	setAttr ".wl[219].w[12]" 4.3050874345480782e-006;
	setAttr ".wl[219].w[13]" 1.4162638270445275e-006;
	setAttr ".wl[219].w[14]" 0.75175796609946133;
	setAttr ".wl[219].w[15]" 0.24822592327923737;
	setAttr -s 5 ".wl[220].w";
	setAttr ".wl[220].w[3]" 5.4211006211310039e-006;
	setAttr ".wl[220].w[4]" 4.7568917444418293e-007;
	setAttr ".wl[220].w[7]" 1.0344702967424185e-006;
	setAttr ".wl[220].w[14]" 0.93319042742177938;
	setAttr ".wl[220].w[15]" 0.066802683769703081;
	setAttr -s 6 ".wl[221].w";
	setAttr ".wl[221].w[3]" 0.035074404307225686;
	setAttr ".wl[221].w[4]" 0.012232443854158035;
	setAttr ".wl[221].w[5]" 0.0035653153060402694;
	setAttr ".wl[221].w[12]" 1.9567153835488463e-006;
	setAttr ".wl[221].w[13]" 0.91250001403662506;
	setAttr ".wl[221].w[14]" 0.036625862510024726;
	setAttr -s 6 ".wl[222].w";
	setAttr ".wl[222].w[3]" 0.10765880682003294;
	setAttr ".wl[222].w[4]" 0.051491923872398281;
	setAttr ".wl[222].w[5]" 0.0090344046287935739;
	setAttr ".wl[222].w[12]" 4.6517253813953996e-006;
	setAttr ".wl[222].w[13]" 0.72605786007755191;
	setAttr ".wl[222].w[14]" 0.10575235288311792;
	setAttr -s 7 ".wl[223].w";
	setAttr ".wl[223].w[3]" 0.004739501632915857;
	setAttr ".wl[223].w[4]" 0.0068838701840806217;
	setAttr ".wl[223].w[10]" 8.7319036085443734e-006;
	setAttr ".wl[223].w[12]" 0.14290399629147774;
	setAttr ".wl[223].w[13]" 0.32664373687257431;
	setAttr ".wl[223].w[14]" 0.51881086141626132;
	setAttr ".wl[223].w[16]" 9.3301171529697208e-006;
	setAttr -s 6 ".wl[224].w";
	setAttr ".wl[224].w[3]" 1.1141296826108705e-007;
	setAttr ".wl[224].w[10]" 0.054216530431562021;
	setAttr ".wl[224].w[12]" 0.092332958902924242;
	setAttr ".wl[224].w[13]" 0.32095729140932472;
	setAttr ".wl[224].w[14]" 0.47456269822029407;
	setAttr ".wl[224].w[16]" 0.057930400135078011;
	setAttr -s 7 ".wl[225].w";
	setAttr ".wl[225].w[3]" 3.4122311729515817e-007;
	setAttr ".wl[225].w[7]" 8.0214035405191282e-007;
	setAttr ".wl[225].w[9]" 4.2291714592485187e-007;
	setAttr ".wl[225].w[10]" 0.26594195247390173;
	setAttr ".wl[225].w[13]" 0.10773166156125355;
	setAttr ".wl[225].w[14]" 0.36038287935389895;
	setAttr ".wl[225].w[16]" 0.26594195247390173;
	setAttr -s 6 ".wl[226].w";
	setAttr ".wl[226].w[3]" 0.080056145964301745;
	setAttr ".wl[226].w[7]" 8.2865090017968923e-007;
	setAttr ".wl[226].w[10]" 0.23060426202690076;
	setAttr ".wl[226].w[13]" 0.079156318324779498;
	setAttr ".wl[226].w[14]" 0.35640742806211984;
	setAttr ".wl[226].w[16]" 0.25377502121742873;
	setAttr -s 6 ".wl[227].w";
	setAttr ".wl[227].w[3]" 0.17777366381705756;
	setAttr ".wl[227].w[4]" 0.13046808167935611;
	setAttr ".wl[227].w[7]" 0.25242553579002081;
	setAttr ".wl[227].w[10]" 0.098180337839926593;
	setAttr ".wl[227].w[14]" 0.34113111389942297;
	setAttr ".wl[227].w[16]" 2.1274723110962533e-005;
	setAttr -s 5 ".wl[228].w";
	setAttr ".wl[228].w[7]" 0.11753391491084211;
	setAttr ".wl[228].w[10]" 0.036708544401334572;
	setAttr ".wl[228].w[12]" 0.023843646158180565;
	setAttr ".wl[228].w[14]" 0.31821072029879105;
	setAttr ".wl[228].w[15]" 0.50370319191142865;
	setAttr -s 5 ".wl[229].w";
	setAttr ".wl[229].w[3]" 0.13027844848783066;
	setAttr ".wl[229].w[4]" 0.092260763078736069;
	setAttr ".wl[229].w[7]" 0.14128465129592754;
	setAttr ".wl[229].w[14]" 0.59040035569230687;
	setAttr ".wl[229].w[15]" 0.045775781445198928;
	setAttr -s 7 ".wl[230].w";
	setAttr ".wl[230].w[3]" 0.067076773311235988;
	setAttr ".wl[230].w[4]" 0.21464292328737322;
	setAttr ".wl[230].w[5]" 0.063012281066427533;
	setAttr ".wl[230].w[7]" 0.14625889290172586;
	setAttr ".wl[230].w[10]" 6.5363348634548613e-006;
	setAttr ".wl[230].w[14]" 0.50899533978363076;
	setAttr ".wl[230].w[16]" 7.2503352385392805e-006;
	setAttr -s 4 ".wl[231].w[11:14]"  0.18641004533337804 0.31008706607068259 
		0.34157189814566041 0.16193099046483073;
	setAttr -s 4 ".wl[232].w[11:14]"  0.19520246225808741 0.30767854001435879 
		0.35069708603218752 0.14642191170264232;
	setAttr -s 4 ".wl[233].w[11:14]"  0.23710022106175499 0.27468158148442695 
		0.40687712544824112 0.081341072001939019;
	setAttr -s 4 ".wl[234].w[11:14]"  0.13524013736193358 0.10779774667317416 
		0.74728347328123557 0.0096786426836566308;
	setAttr ".wl[235].w[13]"  1.0000000192667358;
	setAttr -s 4 ".wl[236].w[11:14]"  0.99997025083366686 4.9271825158174476e-007 
		2.9210395270276179e-005 4.1672684751786485e-008;
	setAttr -s 6 ".wl[237].w";
	setAttr ".wl[237].w[3]" 0.1533174572755138;
	setAttr ".wl[237].w[4]" 0.090187101655975432;
	setAttr ".wl[237].w[11]" 7.9601656350669572e-008;
	setAttr ".wl[237].w[12]" 0.023112586179022045;
	setAttr ".wl[237].w[13]" 0.51202832445869417;
	setAttr ".wl[237].w[14]" 0.22135445082845609;
	setAttr -s 5 ".wl[238].w";
	setAttr ".wl[238].w[3]" 0.10002451906148978;
	setAttr ".wl[238].w[11]" 0.047425691585929512;
	setAttr ".wl[238].w[12]" 0.16682957188326647;
	setAttr ".wl[238].w[13]" 0.38238991614406848;
	setAttr ".wl[238].w[14]" 0.30333031142427502;
	setAttr -s 5 ".wl[239].w";
	setAttr ".wl[239].w[3]" 0.021843916484753752;
	setAttr ".wl[239].w[11]" 0.091615726486783594;
	setAttr ".wl[239].w[12]" 0.24369286382171135;
	setAttr ".wl[239].w[13]" 0.38888896245945687;
	setAttr ".wl[239].w[14]" 0.25395853075457048;
	setAttr -s 4 ".wl[240].w[11:14]"  0.17644921545186551 0.31426946064653744 
		0.33340761661011981 0.17587370729147719;
	setAttr -s 5 ".wl[241].w";
	setAttr ".wl[241].w[3]" 0.016548107261113942;
	setAttr ".wl[241].w[11]" 0.068928342977095158;
	setAttr ".wl[241].w[12]" 0.1919230078242096;
	setAttr ".wl[241].w[13]" 0.51877595531893916;
	setAttr ".wl[241].w[14]" 0.20382458661682318;
	setAttr -s 4 ".wl[242].w[11:14]"  0.16512636182983656 0.32163825052307071 
		0.32357530410616109 0.18966008354093164;
	setAttr -s 5 ".wl[243].w";
	setAttr ".wl[243].w[3]" 0.071628676009420383;
	setAttr ".wl[243].w[11]" 0.02732620685988621;
	setAttr ".wl[243].w[12]" 0.11199847930117159;
	setAttr ".wl[243].w[13]" 0.56543702024670306;
	setAttr ".wl[243].w[14]" 0.2236095918623085;
	setAttr -s 5 ".wl[244].w";
	setAttr ".wl[244].w[3]" 0.015704202917055907;
	setAttr ".wl[244].w[11]" 0.017354968658763643;
	setAttr ".wl[244].w[12]" 0.084788025689556262;
	setAttr ".wl[244].w[13]" 0.75246616122272314;
	setAttr ".wl[244].w[14]" 0.12968664794020976;
	setAttr -s 2 ".wl[245].w[13:14]"  0.99843176045622672 0.0015682663629530968;
	setAttr ".wl[246].w[11]"  1.0000000172658474;
	setAttr ".wl[247].w[11]"  1;
	setAttr ".wl[248].w[11]"  1;
	setAttr ".wl[249].w[11]"  1.0000000100044417;
	setAttr ".wl[250].w[11]"  1.0000000250947778;
	setAttr ".wl[251].w[11]"  1.0000000175277819;
	setAttr ".wl[252].w[11]"  0.99999999561259756;
	setAttr ".wl[253].w[11]"  1;
	setAttr ".wl[254].w[11]"  0.99999998579733074;
	setAttr ".wl[255].w[11]"  0.99999997092527337;
	setAttr ".wl[256].w[11]"  1.0000000138388714;
	setAttr -s 6 ".wl[257].w[10:15]"  3.3405236656296754e-008 0.013863458797315509 
		0.10887860025604919 0.029101378446090481 0.04874335494252096 0.79941317414642066;
	setAttr -s 5 ".wl[258].w[11:15]"  0.012960598401322267 0.11714063232850495 
		0.034318639916879619 0.068454242544841171 0.76712588680845195;
	setAttr -s 7 ".wl[259].w";
	setAttr ".wl[259].w[3]" 9.5306937205949223e-009;
	setAttr ".wl[259].w[10]" 0.011920445732228207;
	setAttr ".wl[259].w[11]" 1.9739319715044868e-006;
	setAttr ".wl[259].w[12]" 0.12407583535596518;
	setAttr ".wl[259].w[13]" 0.046631432911156942;
	setAttr ".wl[259].w[14]" 0.14889396804155111;
	setAttr ".wl[259].w[15]" 0.66847633449643329;
	setAttr -s 7 ".wl[260].w";
	setAttr ".wl[260].w[3]" 4.3140116561126795e-008;
	setAttr ".wl[260].w[7]" 0.029649405771357433;
	setAttr ".wl[260].w[10]" 1.0952496976234422e-006;
	setAttr ".wl[260].w[12]" 0.093523966682915627;
	setAttr ".wl[260].w[13]" 0.04669634281355374;
	setAttr ".wl[260].w[14]" 0.35791735428466803;
	setAttr ".wl[260].w[15]" 0.47221183434919473;
	setAttr -s 5 ".wl[261].w";
	setAttr ".wl[261].w[7]" 2.7633345316492976e-006;
	setAttr ".wl[261].w[12]" 1.8204811842961032e-005;
	setAttr ".wl[261].w[13]" 1.0048038926488e-005;
	setAttr ".wl[261].w[14]" 0.637479771324441;
	setAttr ".wl[261].w[15]" 0.36248924306746977;
	setAttr -s 6 ".wl[262].w";
	setAttr ".wl[262].w[3]" 0.21374641495300375;
	setAttr ".wl[262].w[4]" 0.01875530414644061;
	setAttr ".wl[262].w[7]" 0.040786728158219474;
	setAttr ".wl[262].w[12]" 6.6633266754777288e-006;
	setAttr ".wl[262].w[14]" 0.63009592895894362;
	setAttr ".wl[262].w[15]" 0.096608956233023666;
	setAttr -s 6 ".wl[263].w";
	setAttr ".wl[263].w[3]" 0.392148604972819;
	setAttr ".wl[263].w[4]" 0.27084515168259615;
	setAttr ".wl[263].w[5]" 0.034657388014342976;
	setAttr ".wl[263].w[12]" 8.5566144710993562e-006;
	setAttr ".wl[263].w[13]" 0.099497227870328345;
	setAttr ".wl[263].w[14]" 0.20284309714075321;
	setAttr ".wl[264].w[13]"  0.99999998074781615;
	setAttr ".wl[265].w[13]"  1.0000000187210389;
	setAttr -s 2 ".wl[266].w[11:12]"  0.95054783300151313 0.049452163273196542;
	setAttr -s 2 ".wl[267].w[11:12]"  0.90078440631671874 0.09921558594166234;
	setAttr -s 2 ".wl[268].w[11:12]"  0.91214989019488013 0.087850139607442257;
	setAttr -s 2 ".wl[269].w[11:12]"  0.89568626880645752 0.10431373119354248;
	setAttr -s 2 ".wl[270].w[11:12]"  0.90944636416303737 0.090553583799313719;
	setAttr -s 4 ".wl[271].w[11:14]"  0.1390294226429839 0.59595414830046678 
		0.25652869003641005 0.0084877390201393635;
	setAttr ".wl[272].w[11]"  1;
	setAttr -s 4 ".wl[273].w[11:14]"  7.7337590971582538e-005 0.99975689618966346 
		0.00016152979340643321 4.2364841662399597e-006;
	setAttr ".wl[274].w[11]"  1;
	setAttr ".wl[275].w[12]"  1;
	setAttr ".wl[276].w[11]"  1.000000002743036;
	setAttr ".wl[277].w[12]"  1;
	setAttr ".wl[278].w[11]"  0.99999998504063115;
	setAttr ".wl[279].w[12]"  1;
	setAttr -s 5 ".wl[280].w";
	setAttr ".wl[280].w[3]" 0.0038126665777625432;
	setAttr ".wl[280].w[11]" 0.041473339070407789;
	setAttr ".wl[280].w[12]" 0.42051493012849861;
	setAttr ".wl[280].w[13]" 0.47558138122054072;
	setAttr ".wl[280].w[14]" 0.058617705005286229;
	setAttr -s 5 ".wl[281].w";
	setAttr ".wl[281].w[3]" 0.0041719384189364038;
	setAttr ".wl[281].w[11]" 0.042067502864794666;
	setAttr ".wl[281].w[12]" 0.42188715616381794;
	setAttr ".wl[281].w[13]" 0.46955030105311341;
	setAttr ".wl[281].w[14]" 0.062323101091883888;
	setAttr -s 5 ".wl[282].w";
	setAttr ".wl[282].w[3]" 0.0021608694849878001;
	setAttr ".wl[282].w[11]" 0.036879393365196238;
	setAttr ".wl[282].w[12]" 0.44730788439327185;
	setAttr ".wl[282].w[13]" 0.47784579834555174;
	setAttr ".wl[282].w[14]" 0.035806093381021246;
	setAttr -s 5 ".wl[283].w";
	setAttr ".wl[283].w[3]" 0.00234204835867467;
	setAttr ".wl[283].w[11]" 0.032683865826349072;
	setAttr ".wl[283].w[12]" 0.45487619522831624;
	setAttr ".wl[283].w[13]" 0.46891894282221225;
	setAttr ".wl[283].w[14]" 0.04117892192024631;
	setAttr -s 4 ".wl[284].w[11:14]"  0.023796282301405 0.48925958397143732 
		0.47021279600797428 0.016731337719183489;
	setAttr -s 4 ".wl[285].w[11:14]"  0.019808899134153256 0.51162179782445449 
		0.44933860458083996 0.019230723373431;
	setAttr -s 4 ".wl[286].w[11:14]"  0.011111344055594328 0.6340996847674587 
		0.34521261851159674 0.009576338846487684;
	setAttr -s 4 ".wl[287].w[11:14]"  0.0097116583887861905 0.65397714336498536 
		0.32500936661294155 0.011301837221222358;
	setAttr -s 4 ".wl[288].w[11:14]"  0.0043650849601284255 0.79659948413795878 
		0.19423799040005327 0.0047974405018593744;
	setAttr -s 4 ".wl[289].w[11:14]"  0.0041099443859191681 0.79797757571787398 
		0.19181615801113558 0.0060963017524966285;
	setAttr -s 2 ".wl[290].w[12:13]"  0.91168309606295739 0.088316903937042585;
	setAttr -s 2 ".wl[291].w[12:13]"  0.92853648222944962 0.071463493194184644;
	setAttr -s 3 ".wl[292].w[11:13]"  1.9975599570898339e-005 0.99329437774672125 
		0.0066856546972789655;
	setAttr -s 2 ".wl[293].w[12:13]"  0.99995830947473052 4.1662993045814079e-005;
	setAttr ".wl[294].w[12]"  0.99999996896076482;
	setAttr ".wl[295].w[11]"  1.000000003783498;
	setAttr -s 3 ".wl[296].w[11:13]"  0.99998645234154537 1.3457654702408335e-005 
		9.0030127564814953e-008;
	setAttr -s 3 ".wl[297].w[11:13]"  0.99998070450965315 1.7590546350304786e-005 
		1.7049367205865633e-006;
	setAttr -s 4 ".wl[298].w[11:14]"  0.9980142291630737 0.0019764903690309243 
		9.0299678320354137e-006 2.5050552033272326e-007;
	setAttr -s 4 ".wl[299].w[11:14]"  0.90664697008952466 0.093330464418937428 
		2.1956386809675586e-005 6.0910472824403678e-007;
	setAttr -s 4 ".wl[300].w[11:14]"  0.89601857894697934 0.10394545859222666 
		3.4726663721179761e-005 1.2357825209714678e-006;
	setAttr -s 5 ".wl[301].w";
	setAttr ".wl[301].w[3]" 2.2022254662558629e-007;
	setAttr ".wl[301].w[11]" 0.92020704789712937;
	setAttr ".wl[301].w[12]" 0.079740406712498019;
	setAttr ".wl[301].w[13]" 4.8677099359155718e-005;
	setAttr ".wl[301].w[14]" 3.6481048465872338e-006;
	setAttr -s 5 ".wl[302].w";
	setAttr ".wl[302].w[3]" 5.969404304628932e-008;
	setAttr ".wl[302].w[11]" 0.9070460029659726;
	setAttr ".wl[302].w[12]" 0.092940917021618413;
	setAttr ".wl[302].w[13]" 1.1951496315962068e-005;
	setAttr ".wl[302].w[14]" 1.0504575329898624e-006;
	setAttr -s 2 ".wl[303].w[11:12]"  0.92666666209697723 0.073333337903022766;
	setAttr -s 4 ".wl[304].w[11:14]"  0.16763516602645198 0.47798661841643125 
		0.34594227329940808 0.0084359474600182657;
	setAttr -s 4 ".wl[305].w[11:14]"  0.069445393846872025 0.78168443298364332 
		0.14506540345105304 0.0038047819784201818;
	setAttr -s 2 ".wl[306].w[12:13]"  0.9999954030800724 4.5926853202266086e-006;
	setAttr ".wl[307].w[12]"  1.0000000142063072;
	setAttr -s 6 ".wl[308].w";
	setAttr ".wl[308].w[6]" 0.011232412855281355;
	setAttr ".wl[308].w[7]" 0.39713131864371287;
	setAttr ".wl[308].w[9]" 0.0165561871908072;
	setAttr ".wl[308].w[10]" 0.56448598969610209;
	setAttr ".wl[308].w[15]" 0.010593662148478974;
	setAttr ".wl[308].w[16]" 4.61667186937224e-007;
	setAttr -s 6 ".wl[309].w";
	setAttr ".wl[309].w[6]" 0.014320468746378909;
	setAttr ".wl[309].w[7]" 0.31960026412030457;
	setAttr ".wl[309].w[9]" 0.020563588511082222;
	setAttr ".wl[309].w[10]" 0.61054862705805168;
	setAttr ".wl[309].w[15]" 1.7004469559340036e-007;
	setAttr ".wl[309].w[16]" 0.034966876000673101;
	setAttr -s 5 ".wl[310].w";
	setAttr ".wl[310].w[7]" 0.012548984368150893;
	setAttr ".wl[310].w[9]" 0.00604166503047825;
	setAttr ".wl[310].w[10]" 0.016904654310863704;
	setAttr ".wl[310].w[14]" 0.0044495034249820049;
	setAttr ".wl[310].w[15]" 0.96005517705305032;
	setAttr -s 6 ".wl[311].w";
	setAttr ".wl[311].w[6]" 1.7669035361274036e-007;
	setAttr ".wl[311].w[7]" 0.026388192638376273;
	setAttr ".wl[311].w[9]" 0.008991795198757856;
	setAttr ".wl[311].w[10]" 0.030443827646330478;
	setAttr ".wl[311].w[14]" 0.0076641438465321057;
	setAttr ".wl[311].w[15]" 0.92651186105471472;
	setAttr -s 6 ".wl[312].w";
	setAttr ".wl[312].w[6]" 9.1495711257438828e-008;
	setAttr ".wl[312].w[7]" 0.2110244771845082;
	setAttr ".wl[312].w[9]" 2.3563145919265739e-006;
	setAttr ".wl[312].w[10]" 0.10670450752959663;
	setAttr ".wl[312].w[14]" 0.027473095955141323;
	setAttr ".wl[312].w[15]" 0.65479549588035679;
	setAttr -s 5 ".wl[313].w";
	setAttr ".wl[313].w[6]" 0.031794969360820796;
	setAttr ".wl[313].w[7]" 0.43127931131519592;
	setAttr ".wl[313].w[10]" 0.096783967801516865;
	setAttr ".wl[313].w[14]" 0.10204638305723675;
	setAttr ".wl[313].w[15]" 0.33809536108740867;
	setAttr -s 6 ".wl[314].w";
	setAttr ".wl[314].w[6]" 0.044423144507558354;
	setAttr ".wl[314].w[7]" 0.43618364625624706;
	setAttr ".wl[314].w[10]" 0.03386845953308168;
	setAttr ".wl[314].w[12]" 3.2736398640733592e-007;
	setAttr ".wl[314].w[14]" 0.31767743112938435;
	setAttr ".wl[314].w[15]" 0.16784702213801894;
	setAttr -s 5 ".wl[315].w";
	setAttr ".wl[315].w[6]" 0.045485221952797202;
	setAttr ".wl[315].w[7]" 0.45184995086766822;
	setAttr ".wl[315].w[10]" 0.017856428036410868;
	setAttr ".wl[315].w[14]" 0.4144279995559309;
	setAttr ".wl[315].w[15]" 0.07038040898954899;
	setAttr -s 7 ".wl[316].w";
	setAttr ".wl[316].w[3]" 0.036191898819379009;
	setAttr ".wl[316].w[4]" 0.036862390223662014;
	setAttr ".wl[316].w[6]" 0.038857477120556982;
	setAttr ".wl[316].w[7]" 0.55514227905258684;
	setAttr ".wl[316].w[10]" 3.852650126713713e-007;
	setAttr ".wl[316].w[14]" 0.33294341791560411;
	setAttr ".wl[316].w[15]" 2.1555358535566992e-006;
	setAttr -s 5 ".wl[317].w";
	setAttr ".wl[317].w[4]" 0.045754448937142228;
	setAttr ".wl[317].w[7]" 0.60583455600137115;
	setAttr ".wl[317].w[10]" 0.065353184831101335;
	setAttr ".wl[317].w[14]" 0.24171161364411836;
	setAttr ".wl[317].w[16]" 0.041346196586266988;
	setAttr -s 5 ".wl[318].w";
	setAttr ".wl[318].w[3]" 0.041754963790785693;
	setAttr ".wl[318].w[7]" 0.41378233228852712;
	setAttr ".wl[318].w[10]" 0.13985254089792762;
	setAttr ".wl[318].w[14]" 0.20293118593618911;
	setAttr ".wl[318].w[16]" 0.20167897042906929;
	setAttr -s 6 ".wl[319].w";
	setAttr ".wl[319].w[3]" 0.0010327022062897684;
	setAttr ".wl[319].w[7]" 0.12046040538610089;
	setAttr ".wl[319].w[9]" 2.8811802871275452e-007;
	setAttr ".wl[319].w[10]" 0.29551412553477202;
	setAttr ".wl[319].w[14]" 0.14922665666830928;
	setAttr ".wl[319].w[16]" 0.43376586290644054;
	setAttr -s 7 ".wl[320].w";
	setAttr ".wl[320].w[3]" 0.016928916059698946;
	setAttr ".wl[320].w[7]" 0.054731251181454971;
	setAttr ".wl[320].w[9]" 3.8804584269704746e-006;
	setAttr ".wl[320].w[10]" 0.38943216881358861;
	setAttr ".wl[320].w[13]" 1.3118579406253926e-006;
	setAttr ".wl[320].w[14]" 0.14947030441210432;
	setAttr ".wl[320].w[16]" 0.38943216848280227;
	setAttr -s 8 ".wl[321].w";
	setAttr ".wl[321].w[2]" 2.796196764055629e-006;
	setAttr ".wl[321].w[3]" 0.0063427580226867132;
	setAttr ".wl[321].w[7]" 0.042794607445821635;
	setAttr ".wl[321].w[9]" 0.022571890372763945;
	setAttr ".wl[321].w[10]" 0.37688887406313498;
	setAttr ".wl[321].w[13]" 0.0079869896360867214;
	setAttr ".wl[321].w[14]" 0.1665232102032449;
	setAttr ".wl[321].w[16]" 0.37688887406313504;
	setAttr ".wl[322].w[6]"  0.99999999172996468;
	setAttr ".wl[323].w[6]"  1;
	setAttr ".wl[324].w[6]"  0.99999999577994458;
	setAttr ".wl[325].w[6]"  1;
	setAttr ".wl[326].w[6]"  1.0000000093568815;
	setAttr ".wl[327].w[6]"  0.99999998799830792;
	setAttr ".wl[328].w[6]"  0.99999999902855818;
	setAttr ".wl[329].w[6]"  0.99999999161809683;
	setAttr ".wl[330].w[6]"  0.99999999998544808;
	setAttr ".wl[331].w[6]"  0.99999999997089617;
	setAttr -s 6 ".wl[332].w";
	setAttr ".wl[332].w[6]" 0.036265824493115134;
	setAttr ".wl[332].w[7]" 0.52888885163753785;
	setAttr ".wl[332].w[9]" 6.9954029015690039e-006;
	setAttr ".wl[332].w[10]" 0.23675264959837491;
	setAttr ".wl[332].w[14]" 0.025876825802285983;
	setAttr ".wl[332].w[15]" 0.17220885305850875;
	setAttr -s 5 ".wl[333].w";
	setAttr ".wl[333].w[6]" 5.0341246849182125e-007;
	setAttr ".wl[333].w[7]" 0.42309159679196917;
	setAttr ".wl[333].w[9]" 0.033842365542417784;
	setAttr ".wl[333].w[10]" 0.23319216147821864;
	setAttr ".wl[333].w[15]" 0.30987337277856392;
	setAttr -s 6 ".wl[334].w";
	setAttr ".wl[334].w[6]" 0.0031595886215901306;
	setAttr ".wl[334].w[7]" 0.1659599505559379;
	setAttr ".wl[334].w[9]" 0.043947394105551506;
	setAttr ".wl[334].w[10]" 0.24293608848426623;
	setAttr ".wl[334].w[14]" 1.520979402201825e-006;
	setAttr ".wl[334].w[15]" 0.54399543560000208;
	setAttr -s 7 ".wl[335].w";
	setAttr ".wl[335].w[6]" 0.0092045616051549158;
	setAttr ".wl[335].w[7]" 0.10538208014710548;
	setAttr ".wl[335].w[8]" 5.1680904754569692e-007;
	setAttr ".wl[335].w[9]" 0.056740911105094965;
	setAttr ".wl[335].w[10]" 0.22667320911321262;
	setAttr ".wl[335].w[14]" 0.0093400401151975104;
	setAttr ".wl[335].w[15]" 0.59265869258937642;
	setAttr -s 5 ".wl[336].w";
	setAttr ".wl[336].w[7]" 0.0016805058069550515;
	setAttr ".wl[336].w[9]" 0.0010287740539025093;
	setAttr ".wl[336].w[10]" 0.39226601620270296;
	setAttr ".wl[336].w[14]" 0.0012920680144740168;
	setAttr ".wl[336].w[16]" 0.60373263592560333;
	setAttr -s 5 ".wl[337].w";
	setAttr ".wl[337].w[7]" 0.0023400349768719713;
	setAttr ".wl[337].w[9]" 1.390656870609601e-007;
	setAttr ".wl[337].w[10]" 0.41829395039138939;
	setAttr ".wl[337].w[14]" 1.7472277021799032e-007;
	setAttr ".wl[337].w[16]" 0.57936571294683692;
	setAttr -s 5 ".wl[338].w";
	setAttr ".wl[338].w[7]" 0.038404320699448526;
	setAttr ".wl[338].w[9]" 0.0063095233449336312;
	setAttr ".wl[338].w[10]" 0.47526985506858122;
	setAttr ".wl[338].w[14]" 0.0072142545799872048;
	setAttr ".wl[338].w[16]" 0.4728020418814482;
	setAttr ".wl[339].w[6]"  1;
	setAttr -s 6 ".wl[340].w";
	setAttr ".wl[340].w[6]" 0.099992231620128227;
	setAttr ".wl[340].w[7]" 0.85249840347955608;
	setAttr ".wl[340].w[9]" 0.0043481084934965395;
	setAttr ".wl[340].w[10]" 0.035393448888616397;
	setAttr ".wl[340].w[14]" 4.4147535968355814e-007;
	setAttr ".wl[340].w[15]" 0.0077673765529641297;
	setAttr -s 6 ".wl[341].w";
	setAttr ".wl[341].w[6]" 0.09999382042330239;
	setAttr ".wl[341].w[7]" 0.83402407719903138;
	setAttr ".wl[341].w[9]" 0.0063298454850063465;
	setAttr ".wl[341].w[10]" 0.039118929417587413;
	setAttr ".wl[341].w[14]" 2.5097211892649773e-006;
	setAttr ".wl[341].w[15]" 0.02053081775388331;
	setAttr -s 7 ".wl[342].w";
	setAttr ".wl[342].w[3]" 0.0084755214310183527;
	setAttr ".wl[342].w[6]" 0.099995542550793515;
	setAttr ".wl[342].w[7]" 0.82901129094736248;
	setAttr ".wl[342].w[9]" 3.5054445024925565e-007;
	setAttr ".wl[342].w[10]" 0.036164730043568127;
	setAttr ".wl[342].w[14]" 1.8107454261153686e-006;
	setAttr ".wl[342].w[15]" 0.026350740291411563;
	setAttr -s 6 ".wl[343].w";
	setAttr ".wl[343].w[3]" 0.0077850215424582316;
	setAttr ".wl[343].w[6]" 0.099998934128599379;
	setAttr ".wl[343].w[7]" 0.85818863273234536;
	setAttr ".wl[343].w[10]" 0.020576075395418642;
	setAttr ".wl[343].w[14]" 6.0929461399074572e-006;
	setAttr ".wl[343].w[15]" 0.013445243255038552;
	setAttr -s 6 ".wl[344].w";
	setAttr ".wl[344].w[3]" 0.0059804662408500693;
	setAttr ".wl[344].w[6]" 0.099999648087792686;
	setAttr ".wl[344].w[7]" 0.87278355942455788;
	setAttr ".wl[344].w[10]" 0.013540767168759427;
	setAttr ".wl[344].w[14]" 2.6753354014869876e-006;
	setAttr ".wl[344].w[15]" 0.0076928837426385116;
	setAttr -s 7 ".wl[345].w";
	setAttr ".wl[345].w[3]" 0.0052273740528181708;
	setAttr ".wl[345].w[4]" 3.2943201718688931e-007;
	setAttr ".wl[345].w[6]" 0.09999945360019076;
	setAttr ".wl[345].w[7]" 0.87953488922533296;
	setAttr ".wl[345].w[10]" 0.010237213581071162;
	setAttr ".wl[345].w[14]" 2.9752911354603606e-006;
	setAttr ".wl[345].w[15]" 0.0049977648174343;
	setAttr -s 6 ".wl[346].w";
	setAttr ".wl[346].w[3]" 0.002701452071726593;
	setAttr ".wl[346].w[6]" 0.099998189467169152;
	setAttr ".wl[346].w[7]" 0.88773148323142659;
	setAttr ".wl[346].w[10]" 0.0065216828098261887;
	setAttr ".wl[346].w[14]" 7.0362380552540531e-007;
	setAttr ".wl[346].w[16]" 0.003046503279749153;
	setAttr -s 7 ".wl[347].w";
	setAttr ".wl[347].w[3]" 0.0054347602613931461;
	setAttr ".wl[347].w[6]" 0.099998714350915702;
	setAttr ".wl[347].w[7]" 0.84001501212984508;
	setAttr ".wl[347].w[9]" 1.1583057623944071e-006;
	setAttr ".wl[347].w[10]" 0.032338528964401786;
	setAttr ".wl[347].w[14]" 1.2121385349191241e-007;
	setAttr ".wl[347].w[16]" 0.022211713816024766;
	setAttr -s 5 ".wl[348].w";
	setAttr ".wl[348].w[6]" 0.089050650465230113;
	setAttr ".wl[348].w[7]" 0.51133686978809834;
	setAttr ".wl[348].w[9]" 0.01300953670488255;
	setAttr ".wl[348].w[10]" 0.15886498769037308;
	setAttr ".wl[348].w[16]" 0.22773798364397727;
	setAttr -s 5 ".wl[349].w";
	setAttr ".wl[349].w[6]" 0.099991726106777271;
	setAttr ".wl[349].w[7]" 0.739284398530765;
	setAttr ".wl[349].w[9]" 0.012278352039189509;
	setAttr ".wl[349].w[10]" 0.10570493688786296;
	setAttr ".wl[349].w[16]" 0.04274062793382967;
	setAttr -s 6 ".wl[350].w";
	setAttr ".wl[350].w[6]" 0.099992556456573192;
	setAttr ".wl[350].w[7]" 0.86705849850245675;
	setAttr ".wl[350].w[9]" 0.0029019460681116997;
	setAttr ".wl[350].w[10]" 0.02605525012508688;
	setAttr ".wl[350].w[15]" 5.7013584947124739e-007;
	setAttr ".wl[350].w[16]" 0.0039911702572591346;
	setAttr -s 5 ".wl[351].w";
	setAttr ".wl[351].w[6]" 0.038963999750867083;
	setAttr ".wl[351].w[7]" 0.20660194179135843;
	setAttr ".wl[351].w[9]" 0.011769418215846403;
	setAttr ".wl[351].w[10]" 0.37070176372511426;
	setAttr ".wl[351].w[16]" 0.37196284002788638;
	setAttr -s 5 ".wl[352].w";
	setAttr ".wl[352].w[6]" 1.6127714330007326e-007;
	setAttr ".wl[352].w[7]" 0.0048938300344813319;
	setAttr ".wl[352].w[9]" 0.0016066821603138324;
	setAttr ".wl[352].w[10]" 0.39810888924344179;
	setAttr ".wl[352].w[16]" 0.59539043926913715;
	setAttr -s 4 ".wl[353].w";
	setAttr ".wl[353].w[7]" 0.0017161550961941772;
	setAttr ".wl[353].w[9]" 7.641142597088289e-007;
	setAttr ".wl[353].w[10]" 0.37758718709785011;
	setAttr ".wl[353].w[16]" 0.62069589369169609;
	setAttr -s 3 ".wl[354].w[3:5]"  3.1654351480145802e-006 0.46318657204734442 
		0.53681023830312058;
	setAttr -s 3 ".wl[355].w[3:5]"  4.7627789195989826e-006 0.30605709964669708 
		0.69393815899480249;
	setAttr -s 3 ".wl[356].w[3:5]"  1.0243574544508136e-005 0.45330337903002998 
		0.54668637736632164;
	setAttr -s 3 ".wl[357].w[3:5]"  5.9430618742406339e-006 0.48126060676279625 
		0.51873345390061976;
	setAttr -s 3 ".wl[358].w[3:5]"  6.3146700001483327e-006 0.49757649623245948 
		0.50241717972610711;
	setAttr -s 3 ".wl[359].w[3:5]"  8.8346969990982712e-006 0.49924878411344242 
		0.50074237469212846;
	setAttr -s 3 ".wl[360].w[3:5]"  2.0814954810177084e-005 0.47654293181809732 
		0.52343625555539885;
	setAttr -s 3 ".wl[361].w[3:5]"  1.613724557013733e-005 0.48479354660458657 
		0.51519033559120209;
	setAttr -s 3 ".wl[362].w[3:5]"  0.0012424131648322951 0.49414161523900391 
		0.5046159972220865;
	setAttr -s 3 ".wl[363].w[3:5]"  0.001567263170682384 0.49778837610275373 
		0.50064436030455828;
	setAttr -s 5 ".wl[364].w";
	setAttr ".wl[364].w[3]" 0.47248864063931884;
	setAttr ".wl[364].w[4]" 0.50166139645718388;
	setAttr ".wl[364].w[5]" 0.025846010431137063;
	setAttr ".wl[364].w[13]" 5.4891722400892504e-007;
	setAttr ".wl[364].w[14]" 3.4182016388472209e-006;
	setAttr -s 5 ".wl[365].w";
	setAttr ".wl[365].w[3]" 0.48046942060425402;
	setAttr ".wl[365].w[4]" 0.48926055437671245;
	setAttr ".wl[365].w[5]" 0.030229122175488884;
	setAttr ".wl[365].w[13]" 1.3493432339672008e-006;
	setAttr ".wl[365].w[14]" 3.9572075830499696e-005;
	setAttr -s 5 ".wl[366].w";
	setAttr ".wl[366].w[3]" 0.5549154725019273;
	setAttr ".wl[366].w[4]" 0.39910649390730624;
	setAttr ".wl[366].w[5]" 0.037436890306922425;
	setAttr ".wl[366].w[13]" 0.0010364154482873432;
	setAttr ".wl[366].w[14]" 0.0075047377526869085;
	setAttr -s 5 ".wl[367].w";
	setAttr ".wl[367].w[3]" 0.46584072933043752;
	setAttr ".wl[367].w[4]" 0.48790557304812582;
	setAttr ".wl[367].w[5]" 0.043142456224435667;
	setAttr ".wl[367].w[13]" 0.0011530516294954547;
	setAttr ".wl[367].w[14]" 0.0019581645635884286;
	setAttr -s 5 ".wl[368].w";
	setAttr ".wl[368].w[3]" 0.38425826517837453;
	setAttr ".wl[368].w[4]" 0.49442356942046695;
	setAttr ".wl[368].w[5]" 0.11780454901103507;
	setAttr ".wl[368].w[13]" 0.0017557742022383436;
	setAttr ".wl[368].w[14]" 0.0017578570453906019;
	setAttr -s 5 ".wl[369].w";
	setAttr ".wl[369].w[3]" 0.41720216005449273;
	setAttr ".wl[369].w[4]" 0.46240385623837416;
	setAttr ".wl[369].w[5]" 0.11630934756048263;
	setAttr ".wl[369].w[13]" 0.0019834766302559625;
	setAttr ".wl[369].w[14]" 0.0021011418358175488;
	setAttr -s 6 ".wl[370].w";
	setAttr ".wl[370].w[3]" 0.41235188226607361;
	setAttr ".wl[370].w[4]" 0.48372921804290048;
	setAttr ".wl[370].w[5]" 0.10167910107191122;
	setAttr ".wl[370].w[7]" 2.016304827603167e-006;
	setAttr ".wl[370].w[13]" 0.0010432419309284846;
	setAttr ".wl[370].w[14]" 0.0011945614072382067;
	setAttr -s 6 ".wl[371].w";
	setAttr ".wl[371].w[3]" 0.44430706367956557;
	setAttr ".wl[371].w[4]" 0.44180681657284776;
	setAttr ".wl[371].w[5]" 0.10428974431955088;
	setAttr ".wl[371].w[7]" 0.0051349318412582858;
	setAttr ".wl[371].w[14]" 0.0044606122356891618;
	setAttr ".wl[371].w[15]" 8.15122065010733e-007;
	setAttr -s 6 ".wl[372].w";
	setAttr ".wl[372].w[3]" 0.45727501217397931;
	setAttr ".wl[372].w[4]" 0.45598116563348262;
	setAttr ".wl[372].w[5]" 0.080719580848781738;
	setAttr ".wl[372].w[7]" 0.0030998494688574641;
	setAttr ".wl[372].w[14]" 0.0029243608861190215;
	setAttr ".wl[372].w[15]" 3.0987529404323195e-008;
	setAttr -s 5 ".wl[373].w";
	setAttr ".wl[373].w[3]" 0.46504863386424611;
	setAttr ".wl[373].w[4]" 0.46515714007852343;
	setAttr ".wl[373].w[5]" 0.066577612171294209;
	setAttr ".wl[373].w[13]" 0.0015091085589604124;
	setAttr ".wl[373].w[14]" 0.0017074819456862384;
	setAttr -s 3 ".wl[374].w[3:5]"  0.023071691787587025 0.93056677421249279 
		0.046361571529309462;
	setAttr -s 3 ".wl[375].w[3:5]"  0.031471924894770735 0.92727998723762195 
		0.041248111034256414;
	setAttr -s 5 ".wl[376].w";
	setAttr ".wl[376].w[3]" 0.032745004731594918;
	setAttr ".wl[376].w[4]" 0.91334728789535735;
	setAttr ".wl[376].w[5]" 0.053906703530707693;
	setAttr ".wl[376].w[13]" 1.7085334446484764e-007;
	setAttr ".wl[376].w[14]" 8.3373841913763468e-007;
	setAttr -s 5 ".wl[377].w";
	setAttr ".wl[377].w[3]" 0.030418273288034654;
	setAttr ".wl[377].w[4]" 0.79960387917976439;
	setAttr ".wl[377].w[5]" 0.16997738045312058;
	setAttr ".wl[377].w[13]" 1.7305185473416642e-007;
	setAttr ".wl[377].w[14]" 2.8160443753722623e-007;
	setAttr -s 5 ".wl[378].w";
	setAttr ".wl[378].w[3]" 0.0619748296882539;
	setAttr ".wl[378].w[4]" 0.65941988358637493;
	setAttr ".wl[378].w[5]" 0.27860460654594627;
	setAttr ".wl[378].w[13]" 3.4005562720089097e-007;
	setAttr ".wl[378].w[14]" 3.4012379772047793e-007;
	setAttr -s 5 ".wl[379].w";
	setAttr ".wl[379].w[3]" 0.086352754226697706;
	setAttr ".wl[379].w[4]" 0.65711123706331287;
	setAttr ".wl[379].w[5]" 0.25653542366570364;
	setAttr ".wl[379].w[13]" 2.9251755260800204e-007;
	setAttr ".wl[379].w[14]" 2.9989000241940712e-007;
	setAttr -s 5 ".wl[380].w";
	setAttr ".wl[380].w[3]" 0.11784690840072844;
	setAttr ".wl[380].w[4]" 0.63109025006134023;
	setAttr ".wl[380].w[5]" 0.25106230336008462;
	setAttr ".wl[380].w[13]" 2.5343162300109995e-007;
	setAttr ".wl[380].w[14]" 2.6846263064302747e-007;
	setAttr -s 6 ".wl[381].w";
	setAttr ".wl[381].w[3]" 0.21243617182235874;
	setAttr ".wl[381].w[4]" 0.5586785238969002;
	setAttr ".wl[381].w[5]" 0.2288848163394627;
	setAttr ".wl[381].w[7]" 1.7340971000338495e-007;
	setAttr ".wl[381].w[13]" 7.4530280404464151e-008;
	setAttr ".wl[381].w[14]" 2.3414414202192499e-007;
	setAttr -s 6 ".wl[382].w";
	setAttr ".wl[382].w[3]" 0.21761409214554209;
	setAttr ".wl[382].w[4]" 0.59744338289761778;
	setAttr ".wl[382].w[5]" 0.18494218246850286;
	setAttr ".wl[382].w[7]" 1.4636465692380227e-007;
	setAttr ".wl[382].w[13]" 1.8292458134806216e-008;
	setAttr ".wl[382].w[14]" 1.5737304838926662e-007;
	setAttr -s 5 ".wl[383].w";
	setAttr ".wl[383].w[3]" 0.099387993589370907;
	setAttr ".wl[383].w[4]" 0.76097846667369462;
	setAttr ".wl[383].w[5]" 0.13963348400414818;
	setAttr ".wl[383].w[13]" 3.8016809975268029e-008;
	setAttr ".wl[383].w[14]" 4.2999929118813975e-008;
	setAttr -s 5 ".wl[384].w";
	setAttr ".wl[384].w[3]" 0.72949706836334993;
	setAttr ".wl[384].w[4]" 0.20611598707151546;
	setAttr ".wl[384].w[5]" 0.041645872452350775;
	setAttr ".wl[384].w[13]" 0.0031420583792794378;
	setAttr ".wl[384].w[14]" 0.019599017331465404;
	setAttr -s 5 ".wl[385].w";
	setAttr ".wl[385].w[3]" 0.58217879449360288;
	setAttr ".wl[385].w[4]" 0.19661901410375593;
	setAttr ".wl[385].w[5]" 0.053614429883534376;
	setAttr ".wl[385].w[13]" 0.0053687901760886914;
	setAttr ".wl[385].w[14]" 0.1622189769054877;
	setAttr -s 5 ".wl[386].w";
	setAttr ".wl[386].w[3]" 0.53205404698208647;
	setAttr ".wl[386].w[4]" 0.29200902768958054;
	setAttr ".wl[386].w[5]" 0.040294725074810051;
	setAttr ".wl[386].w[13]" 0.0046879902875142784;
	setAttr ".wl[386].w[14]" 0.13095419112559861;
	setAttr -s 5 ".wl[387].w";
	setAttr ".wl[387].w[3]" 0.4858149957996577;
	setAttr ".wl[387].w[4]" 0.43818607709650353;
	setAttr ".wl[387].w[5]" 0.043069858829643044;
	setAttr ".wl[387].w[13]" 0.0046537901591094007;
	setAttr ".wl[387].w[14]" 0.028275274186069212;
	setAttr -s 5 ".wl[388].w";
	setAttr ".wl[388].w[3]" 0.44533456131762106;
	setAttr ".wl[388].w[4]" 0.43746167605311459;
	setAttr ".wl[388].w[5]" 0.097438030303326206;
	setAttr ".wl[388].w[13]" 0.0098519477668279776;
	setAttr ".wl[388].w[14]" 0.0099137646084344819;
	setAttr -s 5 ".wl[389].w";
	setAttr ".wl[389].w[3]" 0.46804483112138523;
	setAttr ".wl[389].w[4]" 0.43870070048761928;
	setAttr ".wl[389].w[5]" 0.08058938238297976;
	setAttr ".wl[389].w[13]" 0.0059329853022120106;
	setAttr ".wl[389].w[14]" 0.006732085280773477;
	setAttr -s 7 ".wl[390].w";
	setAttr ".wl[390].w[3]" 0.34014945078162673;
	setAttr ".wl[390].w[4]" 0.32568357338986798;
	setAttr ".wl[390].w[5]" 0.058676052248157903;
	setAttr ".wl[390].w[7]" 0.043974104445455298;
	setAttr ".wl[390].w[10]" 1.2877741640013274e-006;
	setAttr ".wl[390].w[13]" 4.2478865361266974e-006;
	setAttr ".wl[390].w[14]" 0.23151128799983767;
	setAttr -s 6 ".wl[391].w";
	setAttr ".wl[391].w[3]" 0.34873152880513542;
	setAttr ".wl[391].w[4]" 0.21245586575481987;
	setAttr ".wl[391].w[5]" 0.043275746269212212;
	setAttr ".wl[391].w[7]" 1.1417267446484714e-005;
	setAttr ".wl[391].w[14]" 0.37644402277395422;
	setAttr ".wl[391].w[15]" 0.019081397614425077;
	setAttr -s 2 ".wl[392].w";
	setAttr ".wl[392].w[3]" 0.43506899575551922;
	setAttr ".wl[392].w[14]" 0.56493100424448084;
	setAttr -s 6 ".wl[393].w";
	setAttr ".wl[393].w[3]" 0.83296338702089101;
	setAttr ".wl[393].w[4]" 0.019783066396357338;
	setAttr ".wl[393].w[5]" 0.11200026567383108;
	setAttr ".wl[393].w[7]" 4.2838936659232972e-006;
	setAttr ".wl[393].w[13]" 0.015894096651316313;
	setAttr ".wl[393].w[14]" 0.019354922413727826;
	setAttr -s 6 ".wl[394].w";
	setAttr ".wl[394].w[6]" 1.4161981208366742e-006;
	setAttr ".wl[394].w[7]" 0.75399510901143885;
	setAttr ".wl[394].w[9]" 2.0687893419107944e-007;
	setAttr ".wl[394].w[10]" 0.11766128232494777;
	setAttr ".wl[394].w[14]" 0.038828828873421414;
	setAttr ".wl[394].w[16]" 0.089513136840677632;
	setAttr ".wl[395].w[6]"  0.99999997910344973;
	setAttr ".wl[396].w[6]"  0.99999999305873644;
	setAttr ".wl[397].w[6]"  0.99999997994746082;
	setAttr ".wl[398].w[6]"  1.0000000419822754;
	setAttr ".wl[399].w[6]"  1.000000000007276;
	setAttr ".wl[400].w[6]"  0.99999998696148396;
	setAttr ".wl[401].w[6]"  0.99999999997089617;
	setAttr ".wl[402].w[6]"  0.99999999499414116;
	setAttr ".wl[403].w[6]"  1.0000000207219273;
	setAttr ".wl[404].w[6]"  1;
	setAttr ".wl[405].w[6]"  1.0000000173749868;
	setAttr ".wl[406].w[6]"  0.99999997120107764;
	setAttr ".wl[407].w[6]"  0.99999999220017344;
	setAttr ".wl[408].w[6]"  0.99999999501596903;
	setAttr ".wl[409].w[6]"  1.0000000000436557;
	setAttr ".wl[410].w[6]"  0.99999999995134203;
	setAttr ".wl[411].w[6]"  1.0000000281870598;
	setAttr ".wl[412].w[6]"  0.99999999481951818;
	setAttr ".wl[413].w[6]"  1.0000000359989372;
	setAttr ".wl[414].w[6]"  1.0000000083819032;
	setAttr ".wl[415].w[6]"  0.99999999987448973;
	setAttr ".wl[416].w[6]"  0.99999998001658241;
	setAttr ".wl[417].w[6]"  1.0000000239233486;
	setAttr ".wl[418].w[6]"  0.99999998092243914;
	setAttr ".wl[419].w[6]"  0.99999999998999556;
	setAttr ".wl[420].w[6]"  1.0000000391669346;
	setAttr ".wl[421].w[6]"  0.99999999243300408;
	setAttr ".wl[422].w[6]"  1.0000000033760443;
	setAttr ".wl[423].w[6]"  0.99999996882979758;
	setAttr ".wl[424].w[6]"  0.9999999922583811;
	setAttr ".wl[425].w[6]"  1;
	setAttr ".wl[426].w[6]"  0.99999999997089617;
	setAttr ".wl[427].w[6]"  1.000000006519258;
	setAttr ".wl[428].w[6]"  0.9999999703723006;
	setAttr ".wl[429].w[6]"  0.99999998148996383;
	setAttr ".wl[430].w[6]"  1;
	setAttr ".wl[431].w[6]"  1.0000000281725079;
	setAttr ".wl[432].w[6]"  1.0000000169384293;
	setAttr ".wl[433].w[6]"  0.99999997573104338;
	setAttr ".wl[434].w[6]"  0.99999996986298356;
	setAttr ".wl[435].w[6]"  1.0000000353884388;
	setAttr ".wl[436].w[6]"  1;
	setAttr ".wl[437].w[6]"  0.99999999791180016;
	setAttr ".wl[438].w[6]"  1.0000000082854967;
	setAttr ".wl[439].w[6]"  1;
	setAttr ".wl[440].w[6]"  0.9999999703723006;
	setAttr ".wl[441].w[6]"  1.0000000097206794;
	setAttr ".wl[442].w[6]"  1.0000000000145519;
	setAttr ".wl[443].w[6]"  0.99999999988358468;
	setAttr ".wl[444].w[6]"  1;
	setAttr ".wl[445].w[6]"  1;
	setAttr ".wl[446].w[6]"  1.000000000003638;
	setAttr ".wl[447].w[6]"  1;
	setAttr ".wl[448].w[6]"  1.0000000028703653;
	setAttr ".wl[449].w[6]"  0.99999998176645022;
	setAttr ".wl[450].w[6]"  1.000000000007276;
	setAttr -s 2 ".wl[451].w[4:5]"  0.0028113645838798826 0.99718862663040142;
	setAttr -s 3 ".wl[452].w[3:5]"  3.0924022960137758e-007 0.10057549774867605 
		0.89942422093621965;
	setAttr -s 3 ".wl[453].w[3:5]"  5.1626945928918266e-007 0.019815003598349354 
		0.98018448014674331;
	setAttr -s 3 ".wl[454].w[3:5]"  0.0015958772512335313 0.17659459685184403 
		0.82180952589692247;
	setAttr -s 3 ".wl[455].w[3:5]"  1.5896032907512795e-006 0.083411981397805354 
		0.91658642899890386;
	setAttr -s 2 ".wl[456].w[4:5]"  0.12658361131188056 0.87341637608616107;
	setAttr -s 2 ".wl[457].w[4:5]"  0.12466716794838704 0.87533283205161294;
	setAttr -s 5 ".wl[458].w";
	setAttr ".wl[458].w[6]" 0.022025850807544527;
	setAttr ".wl[458].w[7]" 0.16907827222658578;
	setAttr ".wl[458].w[9]" 0.025150656886866466;
	setAttr ".wl[458].w[10]" 0.50263182157574526;
	setAttr ".wl[458].w[16]" 0.28111339150014886;
	setAttr -s 6 ".wl[459].w";
	setAttr ".wl[459].w[6]" 0.0072542263401464049;
	setAttr ".wl[459].w[7]" 0.081628180110319984;
	setAttr ".wl[459].w[8]" 3.2695094827287343e-006;
	setAttr ".wl[459].w[9]" 0.052279767814504122;
	setAttr ".wl[459].w[10]" 0.5546513339498389;
	setAttr ".wl[459].w[16]" 0.30418322227570782;
	setAttr -s 5 ".wl[460].w";
	setAttr ".wl[460].w[6]" 0.04382565677252135;
	setAttr ".wl[460].w[7]" 0.35864585512329539;
	setAttr ".wl[460].w[9]" 0.017440422581123886;
	setAttr ".wl[460].w[10]" 0.3973956490230417;
	setAttr ".wl[460].w[16]" 0.18269243672717989;
	setAttr -s 5 ".wl[461].w";
	setAttr ".wl[461].w[3]" 9.8626828484806294e-008;
	setAttr ".wl[461].w[7]" 0.54329379503824282;
	setAttr ".wl[461].w[10]" 0.15764562450369785;
	setAttr ".wl[461].w[14]" 0.083020252610235531;
	setAttr ".wl[461].w[16]" 0.21604022534654796;
	setAttr -s 6 ".wl[462].w";
	setAttr ".wl[462].w[3]" 0.010035614107997687;
	setAttr ".wl[462].w[7]" 0.082318836241592586;
	setAttr ".wl[462].w[9]" 8.5534238425557747e-007;
	setAttr ".wl[462].w[10]" 0.42295389795253974;
	setAttr ".wl[462].w[14]" 0.033970467263644201;
	setAttr ".wl[462].w[16]" 0.45072034453324256;
	setAttr -s 5 ".wl[463].w";
	setAttr ".wl[463].w[7]" 0.02015466115775905;
	setAttr ".wl[463].w[9]" 0.010317985624144873;
	setAttr ".wl[463].w[10]" 0.47411676904514016;
	setAttr ".wl[463].w[14]" 0.021293163354376279;
	setAttr ".wl[463].w[16]" 0.47411745227163493;
	setAttr -s 6 ".wl[464].w";
	setAttr ".wl[464].w[2]" 5.7863641571164099e-008;
	setAttr ".wl[464].w[7]" 0.014681523728658746;
	setAttr ".wl[464].w[9]" 0.010463207104316767;
	setAttr ".wl[464].w[10]" 0.47796922875497694;
	setAttr ".wl[464].w[14]" 0.018916379681961824;
	setAttr ".wl[464].w[16]" 0.47796960287008206;
	setAttr -s 5 ".wl[465].w";
	setAttr ".wl[465].w[3]" 0.29758785696600365;
	setAttr ".wl[465].w[4]" 0.16791709579298611;
	setAttr ".wl[465].w[5]" 0.033802694998670585;
	setAttr ".wl[465].w[13]" 0.30300862559171299;
	setAttr ".wl[465].w[14]" 0.19768372665062672;
	setAttr -s 6 ".wl[466].w";
	setAttr ".wl[466].w[6]" 0.0065111903034548611;
	setAttr ".wl[466].w[7]" 0.12151076114255044;
	setAttr ".wl[466].w[8]" 2.6275046260483549e-006;
	setAttr ".wl[466].w[9]" 0.020032339599208762;
	setAttr ".wl[466].w[10]" 0.81000735022905168;
	setAttr ".wl[466].w[16]" 0.041935718924739872;
	setAttr -s 7 ".wl[467].w";
	setAttr ".wl[467].w[6]" 0.0042039351522913243;
	setAttr ".wl[467].w[7]" 0.15709981205213816;
	setAttr ".wl[467].w[8]" 1.7094007027781519e-006;
	setAttr ".wl[467].w[9]" 0.018183282731720422;
	setAttr ".wl[467].w[10]" 0.811152933729542;
	setAttr ".wl[467].w[15]" 0.0073105637108865024;
	setAttr ".wl[467].w[16]" 0.0020477746198241695;
	setAttr -s 3 ".wl[468].w";
	setAttr ".wl[468].w[6]" 0.99994329966648365;
	setAttr ".wl[468].w[7]" 5.6496620156550051e-005;
	setAttr ".wl[468].w[10]" 2.0207626933304741e-007;
	setAttr -s 3 ".wl[469].w";
	setAttr ".wl[469].w[6]" 0.99989615657541431;
	setAttr ".wl[469].w[7]" 0.00010361629210653287;
	setAttr ".wl[469].w[10]" 2.4861110599208251e-007;
	setAttr -s 3 ".wl[470].w";
	setAttr ".wl[470].w[6]" 0.99988639005023283;
	setAttr ".wl[470].w[7]" 0.00011332255947513153;
	setAttr ".wl[470].w[10]" 2.7189977823178361e-007;
	setAttr -s 4 ".wl[471].w";
	setAttr ".wl[471].w[6]" 0.9998895500570143;
	setAttr ".wl[471].w[7]" 0.00010999619522317704;
	setAttr ".wl[471].w[9]" 4.0230812277131827e-008;
	setAttr ".wl[471].w[10]" 4.4775942579176422e-007;
	setAttr -s 4 ".wl[472].w";
	setAttr ".wl[472].w[6]" 0.99992592752460041;
	setAttr ".wl[472].w[7]" 7.3167875892154134e-005;
	setAttr ".wl[472].w[9]" 1.3089725039816495e-007;
	setAttr ".wl[472].w[10]" 7.7370953299448143e-007;
	setAttr -s 3 ".wl[473].w";
	setAttr ".wl[473].w[6]" 0.99998611532737414;
	setAttr ".wl[473].w[7]" 1.385107867029088e-005;
	setAttr ".wl[473].w[10]" 3.3617602434825378e-008;
	setAttr -s 2 ".wl[474].w[6:7]"  0.99998483786980219 1.5162132016792939e-005;
	setAttr -s 3 ".wl[475].w";
	setAttr ".wl[475].w[6]" 0.99999500931911467;
	setAttr ".wl[475].w[7]" 4.9635984540244292e-006;
	setAttr ".wl[475].w[10]" 9.3277198076077613e-009;
	setAttr ".wl[476].w[6]"  1;
	setAttr ".wl[477].w[6]"  1.0000000000436557;
	setAttr -s 3 ".wl[478].w";
	setAttr ".wl[478].w[6]" 0.99997584633438241;
	setAttr ".wl[478].w[7]" 2.4001596763965066e-005;
	setAttr ".wl[478].w[10]" 1.4309577893945643e-007;
	setAttr -s 5 ".wl[479].w";
	setAttr ".wl[479].w[6]" 0.10000000072977855;
	setAttr ".wl[479].w[7]" 0.89678706409011844;
	setAttr ".wl[479].w[9]" 5.2949743950642522e-007;
	setAttr ".wl[479].w[10]" 0.0032114672802335356;
	setAttr ".wl[479].w[15]" 9.4570021547325768e-007;
	setAttr -s 5 ".wl[480].w";
	setAttr ".wl[480].w[6]" 0.10000000140516932;
	setAttr ".wl[480].w[7]" 0.89466153170896723;
	setAttr ".wl[480].w[9]" 4.7140365180947874e-007;
	setAttr ".wl[480].w[10]" 0.0053371675911457871;
	setAttr ".wl[480].w[15]" 8.4194275898041409e-007;
	setAttr -s 5 ".wl[481].w";
	setAttr ".wl[481].w[3]" 6.5747806734276428e-007;
	setAttr ".wl[481].w[6]" 0.1000000014815723;
	setAttr ".wl[481].w[7]" 0.89352210120097963;
	setAttr ".wl[481].w[10]" 0.0064752115498884896;
	setAttr ".wl[481].w[15]" 2.0431033419769586e-006;
	setAttr -s 5 ".wl[482].w";
	setAttr ".wl[482].w[3]" 2.2439189198381867e-007;
	setAttr ".wl[482].w[6]" 0.099999998862949732;
	setAttr ".wl[482].w[7]" 0.89575874143007195;
	setAttr ".wl[482].w[10]" 0.0042406365398714105;
	setAttr ".wl[482].w[15]" 3.8740471214163998e-007;
	setAttr -s 3 ".wl[483].w";
	setAttr ".wl[483].w[6]" 0.10000037473364501;
	setAttr ".wl[483].w[7]" 0.89694256657392968;
	setAttr ".wl[483].w[10]" 0.0030570509362544749;
	setAttr -s 5 ".wl[484].w";
	setAttr ".wl[484].w[3]" 3.3253708368030125e-008;
	setAttr ".wl[484].w[6]" 0.099999995555981519;
	setAttr ".wl[484].w[7]" 0.89829961241437595;
	setAttr ".wl[484].w[10]" 0.0017002825410056062;
	setAttr ".wl[484].w[15]" 3.17947437178199e-008;
	setAttr -s 5 ".wl[485].w";
	setAttr ".wl[485].w[3]" 6.6224491376120671e-008;
	setAttr ".wl[485].w[6]" 0.10008544280964696;
	setAttr ".wl[485].w[7]" 0.89991415108075257;
	setAttr ".wl[485].w[10]" 2.6524617074156475e-007;
	setAttr ".wl[485].w[16]" 7.4638938410235445e-008;
	setAttr -s 6 ".wl[486].w";
	setAttr ".wl[486].w[3]" 2.3813124952995832e-008;
	setAttr ".wl[486].w[6]" 0.099999999999681691;
	setAttr ".wl[486].w[7]" 0.89781931647769575;
	setAttr ".wl[486].w[9]" 2.329288276035418e-007;
	setAttr ".wl[486].w[10]" 0.0021803295439757455;
	setAttr ".wl[486].w[16]" 9.7233510958868075e-008;
	setAttr -s 5 ".wl[487].w";
	setAttr ".wl[487].w[6]" 0.099999765676698715;
	setAttr ".wl[487].w[7]" 0.88801704337091503;
	setAttr ".wl[487].w[9]" 0.0016866806757330586;
	setAttr ".wl[487].w[10]" 0.010287978358039336;
	setAttr ".wl[487].w[16]" 8.5298104052031587e-006;
	setAttr -s 5 ".wl[488].w";
	setAttr ".wl[488].w[6]" 0.099999999030114861;
	setAttr ".wl[488].w[7]" 0.88899187495115761;
	setAttr ".wl[488].w[9]" 0.0015916258489840536;
	setAttr ".wl[488].w[10]" 0.0094118154461015451;
	setAttr ".wl[488].w[16]" 4.6750247904422254e-006;
	setAttr -s 5 ".wl[489].w";
	setAttr ".wl[489].w[6]" 0.10000000103364073;
	setAttr ".wl[489].w[7]" 0.89784113423587197;
	setAttr ".wl[489].w[9]" 4.4092299624506926e-007;
	setAttr ".wl[489].w[10]" 0.0021578382245824503;
	setAttr ".wl[489].w[16]" 5.9591931596330384e-007;
	setAttr -s 5 ".wl[490].w";
	setAttr ".wl[490].w[3]" 0.27495105437817574;
	setAttr ".wl[490].w[4]" 0.15998902021039979;
	setAttr ".wl[490].w[12]" 0.065866241566922917;
	setAttr ".wl[490].w[13]" 0.18498379869834775;
	setAttr ".wl[490].w[14]" 0.31420992375966073;
	setAttr -s 6 ".wl[491].w";
	setAttr ".wl[491].w[3]" 0.19399472181653726;
	setAttr ".wl[491].w[7]" 0.10820440492888013;
	setAttr ".wl[491].w[10]" 0.17720459717077786;
	setAttr ".wl[491].w[13]" 8.7457835023128591e-006;
	setAttr ".wl[491].w[14]" 0.37488442492689322;
	setAttr ".wl[491].w[16]" 0.14570311285309356;
	setAttr -s 5 ".wl[492].w";
	setAttr ".wl[492].w[3]" 3.6263658732814869e-007;
	setAttr ".wl[492].w[7]" 0.23847880744997862;
	setAttr ".wl[492].w[10]" 0.20091424214278739;
	setAttr ".wl[492].w[14]" 0.1476680870731544;
	setAttr ".wl[492].w[16]" 0.41293850149420958;
	setAttr -s 6 ".wl[493].w";
	setAttr ".wl[493].w[3]" 0.0012110788463052791;
	setAttr ".wl[493].w[7]" 0.25660764751234622;
	setAttr ".wl[493].w[9]" 1.4101221867719147e-007;
	setAttr ".wl[493].w[10]" 0.12235188673117675;
	setAttr ".wl[493].w[14]" 0.027195111749030689;
	setAttr ".wl[493].w[16]" 0.5926341230785529;
	setAttr -s 6 ".wl[494].w";
	setAttr ".wl[494].w[6]" 8.8925915353994767e-007;
	setAttr ".wl[494].w[7]" 0.290070312049098;
	setAttr ".wl[494].w[9]" 7.8125335607554055e-007;
	setAttr ".wl[494].w[10]" 0.16182460048422678;
	setAttr ".wl[494].w[14]" 0.015140713946754664;
	setAttr ".wl[494].w[16]" 0.53296269389063611;
	setAttr -s 5 ".wl[495].w";
	setAttr ".wl[495].w[3]" 0.21262590124492095;
	setAttr ".wl[495].w[4]" 0.10920139353891782;
	setAttr ".wl[495].w[12]" 0.039235070845368418;
	setAttr ".wl[495].w[13]" 0.23670495442844616;
	setAttr ".wl[495].w[14]" 0.40223270133366212;
	setAttr -s 6 ".wl[496].w";
	setAttr ".wl[496].w[3]" 0.25028681484565929;
	setAttr ".wl[496].w[4]" 0.16469019239425595;
	setAttr ".wl[496].w[5]" 0.020995502613487572;
	setAttr ".wl[496].w[12]" 8.4115590424316212e-006;
	setAttr ".wl[496].w[13]" 0.27139650596443043;
	setAttr ".wl[496].w[14]" 0.29262257261948627;
	setAttr -s 2 ".wl[497].w[4:5]"  0.0014710791427575121 0.99852890143771167;
	setAttr -s 2 ".wl[498].w[4:5]"  0.0016689966536796235 0.99833097760398237;
	setAttr -s 2 ".wl[499].w[4:5]"  0.0019965873611593262 0.99800338366597741;
	setAttr -s 2 ".wl[500].w[4:5]"  0.0023731037550316397 0.99762689624496836;
	setAttr -s 3 ".wl[501].w[3:5]"  2.9354592309766453e-006 0.038920825891259912 
		0.96107623863495728;
	setAttr -s 3 ".wl[502].w[3:5]"  0.0015294893300214973 0.058365322134553803 
		0.9401051885354248;
	setAttr -s 3 ".wl[503].w[3:5]"  0.0012846795160086888 0.049312681203494441 
		0.94940265659727607;
	setAttr -s 3 ".wl[504].w[3:5]"  0.0014836074823051249 0.055824325826267819 
		0.942692076994183;
	setAttr -s 2 ".wl[505].w[4:5]"  0.034838610061476649 0.96516137163221405;
	setAttr -s 2 ".wl[506].w[4:5]"  0.022417272622139436 0.97758274884193552;
	setAttr -s 2 ".wl[507].w[4:5]"  0.033078931932415928 0.96692103857812794;
	setAttr -s 2 ".wl[508].w[4:5]"  0.020808850454705714 0.97919112210038228;
	setAttr -s 3 ".wl[509].w[3:5]"  0.0018592892522405148 0.3433314204919522 
		0.65480929028491097;
	setAttr -s 3 ".wl[510].w[3:5]"  0.0034209444660012562 0.3749773554733607 
		0.62160169965318435;
	setAttr -s 6 ".wl[511].w";
	setAttr ".wl[511].w[6]" 3.0874394033678115e-006;
	setAttr ".wl[511].w[7]" 0.22978713569494078;
	setAttr ".wl[511].w[9]" 0.047820474301814131;
	setAttr ".wl[511].w[10]" 0.6427486867335267;
	setAttr ".wl[511].w[15]" 0.079640557269348558;
	setAttr ".wl[511].w[16]" 5.8562785533381829e-008;
	setAttr -s 6 ".wl[512].w";
	setAttr ".wl[512].w[6]" 0.017352559625308319;
	setAttr ".wl[512].w[7]" 0.15288431814963696;
	setAttr ".wl[512].w[8]" 8.5457099844561077e-008;
	setAttr ".wl[512].w[9]" 0.073444491150400554;
	setAttr ".wl[512].w[10]" 0.64004890491857513;
	setAttr ".wl[512].w[15]" 0.11626964069897923;
	setAttr -s 4 ".wl[513].w[11:14]"  0.36048657907741849 0.11199755641771202 
		0.5128409273521406 0.014674937152728938;
	setAttr -s 4 ".wl[514].w[11:14]"  0.32624505146147453 0.19707751139408894 
		0.44009567947503181 0.036581762102281958;
	setAttr -s 4 ".wl[515].w[11:14]"  0.36048657907741849 0.11199755641771202 
		0.5128409273521406 0.014674937152728938;
	setAttr ".wl[516].w[11]"  1.0000000146974344;
	setAttr -s 4 ".wl[517].w[11:14]"  0.99990356673996716 3.5654953768149224e-005 
		5.1921304055089693e-005 8.8445312182015008e-006;
	setAttr -s 5 ".wl[518].w";
	setAttr ".wl[518].w[2]" 4.4500044594717638e-007;
	setAttr ".wl[518].w[11]" 0.2956558895063694;
	setAttr ".wl[518].w[12]" 0.25389885674833002;
	setAttr ".wl[518].w[13]" 0.39040976330733301;
	setAttr ".wl[518].w[14]" 0.060035045437516657;
	setAttr -s 4 ".wl[519].w[11:14]"  0.20456732602168923 0.29508909431294245 
		0.39903807473128899 0.10130552390977686;
	setAttr -s 4 ".wl[520].w[11:14]"  0.19813177977667487 0.30371093549224837 
		0.38455194402776993 0.11360534070330687;
	setAttr -s 4 ".wl[521].w[11:14]"  0.18985274533086449 0.31122487695375867 
		0.3627221778195463 0.13620021179929725;
	setAttr -s 4 ".wl[522].w[11:14]"  0.18638387743984502 0.3140810160431643 
		0.36427541051399559 0.1352596684152923;
	setAttr ".wl[523].w[11]"  1.0000000016298145;
	setAttr ".wl[524].w[11]"  1.0000000153668225;
	setAttr ".wl[525].w[11]"  1.0000000021536835;
	setAttr ".wl[526].w[11]"  0.99999999708961695;
	setAttr ".wl[527].w[11]"  1;
	setAttr -s 4 ".wl[528].w[11:14]"  0.9999938673969585 2.942670106730801e-006 
		2.5424866333100186e-006 6.6554888399607718e-007;
	setAttr -s 4 ".wl[529].w[11:14]"  0.99999783823810828 1.353314895090271e-006 
		6.7565823633233302e-007 1.7615346767222203e-007;
	setAttr -s 3 ".wl[530].w[11:13]"  0.99999950195268983 4.1050592420988621e-007 
		8.7570489825635899e-008;
	setAttr ".wl[531].w[11]"  1.0000000409090717;
	setAttr ".wl[532].w[11]"  1.0000000000181899;
	setAttr ".wl[533].w[11]"  0.99999996565748006;
	setAttr ".wl[534].w[11]"  1.0000000314903446;
	setAttr -s 4 ".wl[535].w[11:14]"  0.95114601978756308 0.023369416481514235 
		0.020197408714794744 0.00528717061941914;
	setAttr -s 5 ".wl[536].w";
	setAttr ".wl[536].w[2]" 4.5354888179356823e-007;
	setAttr ".wl[536].w[11]" 0.83833317905175775;
	setAttr ".wl[536].w[12]" 0.066938599106355315;
	setAttr ".wl[536].w[13]" 0.074902099514704668;
	setAttr ".wl[536].w[14]" 0.019825668781938498;
	setAttr -s 5 ".wl[537].w";
	setAttr ".wl[537].w[2]" 0.0016212060964117714;
	setAttr ".wl[537].w[11]" 0.40169511513984552;
	setAttr ".wl[537].w[12]" 0.24383803010903216;
	setAttr ".wl[537].w[13]" 0.27897539171217084;
	setAttr ".wl[537].w[14]" 0.073870256935263695;
	setAttr -s 4 ".wl[538].w[11:14]"  0.98468626275316795 0.015298818348008213 
		1.181527497397722e-005 3.1273580235992993e-006;
	setAttr ".wl[539].w[11]"  1;
	setAttr -s 5 ".wl[540].w";
	setAttr ".wl[540].w[2]" 3.8785205708994898e-006;
	setAttr ".wl[540].w[11]" 0.22460415254294086;
	setAttr ".wl[540].w[12]" 0.36065653125106184;
	setAttr ".wl[540].w[13]" 0.32771386636516575;
	setAttr ".wl[540].w[14]" 0.087021571320260643;
	setAttr -s 4 ".wl[541].w[11:14]"  0.13607205849414059 0.62984395451911146 
		0.21924468124400329 0.014839305742744703;
	setAttr -s 4 ".wl[542].w[11:14]"  0.16616664397244543 0.52884621513515195 
		0.27122681922986436 0.033760321662537965;
	setAttr -s 4 ".wl[543].w[11:14]"  0.17087726578389376 0.47651236848830891 
		0.28964193877296435 0.062968394809652134;
	setAttr -s 4 ".wl[544].w[11:14]"  0.066691421687452485 0.79556821485909412 
		0.13133108969861126 0.0064092737402901678;
	setAttr -s 4 ".wl[545].w[11:14]"  5.4382663350784183e-005 0.99982933025440501 
		0.00010106576230270149 1.5221319941495891e-005;
	setAttr -s 5 ".wl[546].w";
	setAttr ".wl[546].w[2]" 7.9550643804822424e-007;
	setAttr ".wl[546].w[11]" 0.071032904528724544;
	setAttr ".wl[546].w[12]" 0.7473230922270272;
	setAttr ".wl[546].w[13]" 0.1541811127205949;
	setAttr ".wl[546].w[14]" 0.027462095017215367;
	setAttr -s 4 ".wl[547].w[11:14]"  2.2621168184199388e-005 0.99993065277059612 
		4.4552318284969035e-005 2.1737574866109754e-006;
	setAttr -s 5 ".wl[548].w[11:15]"  1.3362106507848758e-005 0.99995064390619071 
		2.9785670733570004e-005 5.14057800332036e-006 1.0677385645809662e-006;
	setAttr -s 5 ".wl[549].w[11:15]"  0.049223782534275555 0.81817974450887387 
		0.10972350754499696 0.01894005966020957 0.0039329057516441016;
	setAttr ".wl[550].w[12]"  1.0000000051040843;
	setAttr -s 5 ".wl[551].w[11:15]"  1.6659042292035868e-005 0.99993894875683542 
		3.6432917770582608e-005 6.4426173232765226e-006 1.4994945186545852e-006;
	setAttr -s 5 ".wl[552].w[11:15]"  0.023806347969153274 0.91743762494787018 
		0.045518860962268828 0.0095237831730628272 0.0037133629824170769;
	setAttr ".wl[553].w[12]"  1.0000000100699253;
	setAttr -s 5 ".wl[554].w[11:15]"  3.7827585470887865e-006 0.99998688590215157 
		7.2320506270581847e-006 1.5128307748370017e-006 5.9000856674177059e-007;
	setAttr -s 5 ".wl[555].w[11:15]"  0.012024096201916069 0.95790182695266968 
		0.023240937077268969 0.0047630045601197209 0.0020701495853177481;
	setAttr ".wl[556].w[13]"  0.99999999471037881;
	setAttr ".wl[557].w[13]"  1.0000000049622031;
	setAttr ".wl[558].w[13]"  1.0000000078871381;
	setAttr ".wl[559].w[13]"  1;
	setAttr ".wl[560].w[13]"  1;
	setAttr ".wl[561].w[11]"  1.0000000110303517;
	setAttr -s 4 ".wl[562].w[11:14]"  0.99375736446282747 0.0051435442247386798 
		0.0010984354958191794 6.2463186035619829e-007;
	setAttr -s 4 ".wl[563].w[11:14]"  0.98263030945573715 0.010657272189848752 
		0.0053243046283386582 0.0013881288746192104;
	setAttr -s 4 ".wl[564].w[11:14]"  0.98784098023773459 0.012157916306916297 
		8.7498530563389017e-007 2.2812079755931029e-007;
	setAttr -s 4 ".wl[565].w[11:14]"  0.98586762154217 0.014121755485390311 
		8.4158457218795905e-006 2.2030230777607174e-006;
	setAttr -s 2 ".wl[566].w[11:12]"  0.96861353801330929 0.03138646198669072;
	setAttr -s 2 ".wl[567].w[11:12]"  0.92551416572732592 0.074485817719870534;
	setAttr -s 2 ".wl[568].w[11:12]"  0.98821144879299627 0.011788535098033553;
	setAttr -s 2 ".wl[569].w[11:12]"  0.94194772999937493 0.058052261531410417;
	setAttr -s 2 ".wl[570].w[11:12]"  0.99999480414251907 5.1974618295502429e-006;
	setAttr -s 2 ".wl[571].w[11:12]"  0.99997691736718508 2.3062129166340713e-005;
	setAttr ".wl[572].w[11]"  0.99999998469502316;
	setAttr ".wl[573].w[11]"  1.000000013562385;
	setAttr ".wl[574].w[11]"  0.99999999157444108;
	setAttr ".wl[575].w[11]"  0.99999998875136953;
	setAttr -s 5 ".wl[576].w[11:15]"  0.019690836741876872 0.92487135574119983 
		0.038998426758685832 0.010695028211273093 0.005744348967193235;
	setAttr -s 5 ".wl[577].w[11:15]"  0.029113597101813507 0.87341296569796611 
		0.060109739537038638 0.022398562313770045 0.014965135362144661;
	setAttr -s 5 ".wl[578].w";
	setAttr ".wl[578].w[2]" 1.6911066337499655e-006;
	setAttr ".wl[578].w[11]" 0.23186984452615109;
	setAttr ".wl[578].w[12]" 0.29194549710615092;
	setAttr ".wl[578].w[13]" 0.36782836752209203;
	setAttr ".wl[578].w[14]" 0.10835462926753209;
	setAttr -s 5 ".wl[579].w";
	setAttr ".wl[579].w[2]" 0.0058785033428800093;
	setAttr ".wl[579].w[11]" 0.24903431419640296;
	setAttr ".wl[579].w[12]" 0.2936832806871314;
	setAttr ".wl[579].w[13]" 0.32329667496372672;
	setAttr ".wl[579].w[14]" 0.12810723086984319;
	setAttr -s 6 ".wl[580].w";
	setAttr ".wl[580].w[1]" 1.5127028182911157e-006;
	setAttr ".wl[580].w[2]" 0.014460704647463589;
	setAttr ".wl[580].w[11]" 0.14953314612734628;
	setAttr ".wl[580].w[12]" 0.33858657131345055;
	setAttr ".wl[580].w[13]" 0.3044063299247966;
	setAttr ".wl[580].w[14]" 0.19301173528594376;
	setAttr -s 6 ".wl[581].w";
	setAttr ".wl[581].w[1]" 6.618750612472226e-006;
	setAttr ".wl[581].w[2]" 1.5768421692112827e-006;
	setAttr ".wl[581].w[11]" 0.16253084754200597;
	setAttr ".wl[581].w[12]" 0.43851474214340164;
	setAttr ".wl[581].w[13]" 0.29414362326314608;
	setAttr ".wl[581].w[14]" 0.1048025914586647;
	setAttr -s 5 ".wl[582].w";
	setAttr ".wl[582].w[2]" 0.0027915450463409878;
	setAttr ".wl[582].w[11]" 0.10985415501631414;
	setAttr ".wl[582].w[12]" 0.59321415208638451;
	setAttr ".wl[582].w[13]" 0.23199952046870514;
	setAttr ".wl[582].w[14]" 0.062140644684482459;
	setAttr -s 6 ".wl[583].w";
	setAttr ".wl[583].w[2]" 4.5268193828376222e-007;
	setAttr ".wl[583].w[11]" 0.055558226559759977;
	setAttr ".wl[583].w[12]" 0.78399240721679886;
	setAttr ".wl[583].w[13]" 0.12166065919706369;
	setAttr ".wl[583].w[14]" 0.030537969746576719;
	setAttr ".wl[583].w[15]" 0.0082503007577643464;
	setAttr -s 5 ".wl[584].w[11:15]"  0.030456493698760891 0.88581571857968044 
		0.059795221409831019 0.016283448571350584 0.007649122338782231;
	setAttr ".wl[585].w[11]"  0.99999998148268787;
	setAttr ".wl[586].w[11]"  0.99999996547376213;
	setAttr ".wl[587].w[11]"  0.99999998862404027;
	setAttr ".wl[588].w[11]"  1.0000000000109139;
	setAttr ".wl[589].w[11]"  1.0000000001427907;
	setAttr -s 3 ".wl[590].w[11:13]"  0.99999780101451685 1.8323166984417019e-006 
		3.9087589565745792e-007;
	setAttr -s 3 ".wl[591].w[11:13]"  0.99999838123273244 1.4917547170350805e-006 
		1.2981379421106292e-007;
	setAttr -s 2 ".wl[592].w[11:12]"  0.99724617193688148 0.0027537907083520778;
	setAttr -s 5 ".wl[593].w";
	setAttr ".wl[593].w[2]" 0.06333876533468169;
	setAttr ".wl[593].w[11]" 0.10324785088679707;
	setAttr ".wl[593].w[12]" 0.26546278563703918;
	setAttr ".wl[593].w[13]" 0.29125513776733658;
	setAttr ".wl[593].w[14]" 0.27669546038142162;
	setAttr -s 5 ".wl[594].w";
	setAttr ".wl[594].w[2]" 0.021868106025679113;
	setAttr ".wl[594].w[11]" 0.16800627278760669;
	setAttr ".wl[594].w[12]" 0.2881432046751975;
	setAttr ".wl[594].w[13]" 0.32744850968276779;
	setAttr ".wl[594].w[14]" 0.19453390684330085;
	setAttr -s 6 ".wl[595].w";
	setAttr ".wl[595].w[2]" 3.1583790288666823e-007;
	setAttr ".wl[595].w[11]" 0.059495121892592685;
	setAttr ".wl[595].w[12]" 0.74561140398822634;
	setAttr ".wl[595].w[13]" 0.12677530495642797;
	setAttr ".wl[595].w[14]" 0.047844880799318028;
	setAttr ".wl[595].w[15]" 0.020272972521894066;
	setAttr -s 6 ".wl[596].w";
	setAttr ".wl[596].w[2]" 0.0017332709480791242;
	setAttr ".wl[596].w[11]" 0.10359367252661572;
	setAttr ".wl[596].w[12]" 0.57348429786328126;
	setAttr ".wl[596].w[13]" 0.22432546155748659;
	setAttr ".wl[596].w[14]" 0.096855687883377783;
	setAttr ".wl[596].w[15]" 7.5683084498865543e-006;
	setAttr -s 5 ".wl[597].w[11:15]"  0.039345599973817862 0.83305386538947124 
		0.079344240439112992 0.029829555463649949 0.018426773338402539;
	setAttr -s 5 ".wl[598].w[11:15]"  0.080536305792424448 0.46132303092970284 
		0.15728043760144797 0.13885715069155688 0.16200307498850575;
	setAttr -s 5 ".wl[599].w[11:15]"  0.058014014735704653 0.59193885057498152 
		0.10524362320448552 0.078800648615154997 0.16600283856979395;
	setAttr -s 6 ".wl[600].w";
	setAttr ".wl[600].w[2]" 0.0013242652230765206;
	setAttr ".wl[600].w[9]" 1.1173935523971509e-006;
	setAttr ".wl[600].w[12]" 0.28017871193047872;
	setAttr ".wl[600].w[13]" 0.10346414153626959;
	setAttr ".wl[600].w[14]" 0.12646799341246637;
	setAttr ".wl[600].w[15]" 0.48856374739571506;
	setAttr -s 6 ".wl[601].w";
	setAttr ".wl[601].w[2]" 2.2245364452281073e-007;
	setAttr ".wl[601].w[11]" 0.037744865403519429;
	setAttr ".wl[601].w[12]" 0.2335571024744954;
	setAttr ".wl[601].w[13]" 0.060926915165252921;
	setAttr ".wl[601].w[14]" 0.070706133417481651;
	setAttr ".wl[601].w[15]" 0.59706476108924422;
	setAttr -s 5 ".wl[602].w";
	setAttr ".wl[602].w[10]" 0.005510109557773848;
	setAttr ".wl[602].w[12]" 4.1127793135051872e-007;
	setAttr ".wl[602].w[13]" 1.5378265930189454e-007;
	setAttr ".wl[602].w[14]" 0.0041657370246973432;
	setAttr ".wl[602].w[15]" 0.99032360698725497;
	setAttr -s 6 ".wl[603].w";
	setAttr ".wl[603].w[9]" 1.5299964561781864e-005;
	setAttr ".wl[603].w[10]" 0.047163649988971608;
	setAttr ".wl[603].w[12]" 4.2668452472085512e-006;
	setAttr ".wl[603].w[13]" 5.6354382171511341e-007;
	setAttr ".wl[603].w[14]" 0.036248874686033355;
	setAttr ".wl[603].w[15]" 0.91656737245356579;
	setAttr ".wl[604].w[13]"  1.0000000285799615;
	setAttr ".wl[605].w[13]"  0.9999999720021151;
	setAttr ".wl[606].w[13]"  1.0000000000436557;
	setAttr ".wl[607].w[13]"  0.99999997526174411;
	setAttr ".wl[608].w[11]"  0.99999999998544808;
	setAttr -s 6 ".wl[609].w";
	setAttr ".wl[609].w[1]" 1.3401483012569139e-005;
	setAttr ".wl[609].w[2]" 3.8585102524131417e-007;
	setAttr ".wl[609].w[11]" 0.12983660751623152;
	setAttr ".wl[609].w[12]" 0.40691215114848317;
	setAttr ".wl[609].w[13]" 0.27546812307871094;
	setAttr ".wl[609].w[14]" 0.1877693309225367;
	setAttr -s 6 ".wl[610].w";
	setAttr ".wl[610].w[1]" 0.055787978187015197;
	setAttr ".wl[610].w[2]" 0.0016333527114354019;
	setAttr ".wl[610].w[11]" 6.7188673759425512e-006;
	setAttr ".wl[610].w[12]" 0.31586371018495935;
	setAttr ".wl[610].w[13]" 0.26939043727239925;
	setAttr ".wl[610].w[14]" 0.35731780277135783;
	setAttr -s 5 ".wl[611].w";
	setAttr ".wl[611].w[2]" 1.8920552658263942e-005;
	setAttr ".wl[611].w[12]" 0.22947809443456471;
	setAttr ".wl[611].w[13]" 0.16327632910822881;
	setAttr ".wl[611].w[14]" 0.60721671165709734;
	setAttr ".wl[611].w[15]" 9.9230598622450164e-006;
	setAttr -s 5 ".wl[612].w";
	setAttr ".wl[612].w[2]" 1.2967657596845478e-005;
	setAttr ".wl[612].w[12]" 0.22971082858283495;
	setAttr ".wl[612].w[13]" 0.13787655508505628;
	setAttr ".wl[612].w[14]" 0.31552016912886277;
	setAttr ".wl[612].w[15]" 0.31687947954928714;
	setAttr -s 4 ".wl[613].w[11:14]"  0.24533969537711628 0.015258082172485749 
		0.73804265194451835 0.0013595705058796861;
	setAttr ".wl[614].w[13]"  0.99999997526174411;
	setAttr -s 4 ".wl[615].w[11:14]"  0.00015523156436744536 2.5482104406538181e-005 
		0.99981701584847615 2.287915944349609e-006;
	setAttr -s 4 ".wl[616].w[11:14]"  0.18642047475550394 0.19675497274162246 
		0.59085441553411178 0.025970136961485847;
	setAttr -s 4 ".wl[617].w[11:14]"  0.23008127877921655 0.23092752996535088 
		0.49198170732672758 0.047009513905650425;
	setAttr -s 4 ".wl[618].w[11:14]"  1.551847633125623e-005 2.2384136248931162e-005 
		0.99995441359097825 7.6838037175415495e-006;
	setAttr ".wl[619].w[13]"  1;
	setAttr ".wl[620].w[13]"  0.99999998469502316;
	setAttr ".wl[621].w[13]"  0.99999998114071786;
	setAttr ".wl[622].w[13]"  1.0000000015252226;
	setAttr ".wl[623].w[13]"  1.0000000252912287;
	setAttr ".wl[624].w[13]"  1.0000000000291038;
	setAttr ".wl[625].w[13]"  1.0000000021318556;
	setAttr ".wl[626].w[13]"  1;
	setAttr ".wl[627].w[13]"  1.0000000000145519;
	setAttr ".wl[628].w[13]"  1;
	setAttr ".wl[629].w[13]"  1.000000000003638;
	setAttr ".wl[630].w[13]"  1.0000000000291038;
	setAttr ".wl[631].w[13]"  1;
	setAttr ".wl[632].w[13]"  1;
	setAttr ".wl[633].w[13]"  0.99999998739804141;
	setAttr ".wl[634].w[13]"  0.99999997689155862;
	setAttr -s 6 ".wl[635].w";
	setAttr ".wl[635].w[0]" 1.9288996762824494e-006;
	setAttr ".wl[635].w[1]" 0.075168777845768558;
	setAttr ".wl[635].w[2]" 0.14616860487709304;
	setAttr ".wl[635].w[12]" 0.06577346782708407;
	setAttr ".wl[635].w[13]" 0.39277770344159535;
	setAttr ".wl[635].w[14]" 0.32010949555012042;
	setAttr -s 5 ".wl[636].w";
	setAttr ".wl[636].w[1]" 0.0097036287679212012;
	setAttr ".wl[636].w[2]" 0.019979493925605506;
	setAttr ".wl[636].w[12]" 0.015200984554145279;
	setAttr ".wl[636].w[13]" 0.90070318868360166;
	setAttr ".wl[636].w[14]" 0.054412700872761954;
	setAttr -s 6 ".wl[637].w";
	setAttr ".wl[637].w[1]" 0.0073610416902287661;
	setAttr ".wl[637].w[2]" 0.01753962958616619;
	setAttr ".wl[637].w[11]" 2.5998666414737128e-006;
	setAttr ".wl[637].w[12]" 0.03156665960520709;
	setAttr ".wl[637].w[13]" 0.87131857187715278;
	setAttr ".wl[637].w[14]" 0.072211508899720722;
	setAttr -s 6 ".wl[638].w";
	setAttr ".wl[638].w[1]" 0.031210833761869245;
	setAttr ".wl[638].w[2]" 0.072082444634485196;
	setAttr ".wl[638].w[11]" -1.2206496947017838e-008;
	setAttr ".wl[638].w[12]" 0.03871974512171001;
	setAttr ".wl[638].w[13]" 0.72090480492449649;
	setAttr ".wl[638].w[14]" 0.13708218376086645;
	setAttr -s 6 ".wl[639].w";
	setAttr ".wl[639].w[1]" 1.3667818881303164e-006;
	setAttr ".wl[639].w[2]" 4.5565486367153203e-006;
	setAttr ".wl[639].w[11]" 1.4367943641388495e-006;
	setAttr ".wl[639].w[12]" 1.2882960407407986e-005;
	setAttr ".wl[639].w[13]" 0.99995560765676217;
	setAttr ".wl[639].w[14]" 2.4149250665439095e-005;
	setAttr -s 5 ".wl[640].w";
	setAttr ".wl[640].w[1]" 2.4431346302369338e-006;
	setAttr ".wl[640].w[2]" 5.3429236049695984e-006;
	setAttr ".wl[640].w[12]" 6.4611618545492246e-006;
	setAttr ".wl[640].w[13]" 0.99996798462954561;
	setAttr ".wl[640].w[14]" 1.7768150364597536e-005;
	setAttr ".wl[641].w[13]"  1.0000000270447345;
	setAttr -s 2 ".wl[642].w[13:14]"  0.99999979552506812 2.2355249268413147e-007;
	setAttr -s 4 ".wl[643].w[11:14]"  1.2216646396536919e-005 1.7621515901939044e-005 
		0.99996413588005229 6.0489387613740109e-006;
	setAttr ".wl[644].w[13]"  1;
	setAttr -s 4 ".wl[645].w[11:14]"  2.0639299199412303e-005 4.0201867303066208e-005 
		0.99991528175920452 2.3879046077475023e-005;
	setAttr ".wl[646].w[13]"  0.99999998555722414;
	setAttr -s 5 ".wl[647].w";
	setAttr ".wl[647].w[2]" 0.033082925274094163;
	setAttr ".wl[647].w[11]" 0.11844966932143365;
	setAttr ".wl[647].w[12]" 0.2711861177096947;
	setAttr ".wl[647].w[13]" 0.34137169880024226;
	setAttr ".wl[647].w[14]" 0.23590958889453523;
	setAttr -s 6 ".wl[648].w";
	setAttr ".wl[648].w[1]" 1.2379654982852617e-006;
	setAttr ".wl[648].w[2]" 0.11480420379202365;
	setAttr ".wl[648].w[11]" 0.067565836879541805;
	setAttr ".wl[648].w[12]" 0.21182850695527644;
	setAttr ".wl[648].w[13]" 0.30574261307479034;
	setAttr ".wl[648].w[14]" 0.30005760133286952;
	setAttr -s 7 ".wl[649].w";
	setAttr ".wl[649].w[0]" 4.8129217286841432e-007;
	setAttr ".wl[649].w[1]" 2.9436259146777948e-006;
	setAttr ".wl[649].w[2]" 0.10224133017752572;
	setAttr ".wl[649].w[11]" 0.027884418839874598;
	setAttr ".wl[649].w[12]" 0.22326194926801116;
	setAttr ".wl[649].w[13]" 0.22766027142968925;
	setAttr ".wl[649].w[14]" 0.41894862029707675;
	setAttr -s 6 ".wl[650].w";
	setAttr ".wl[650].w[0]" 5.4910371603101264e-006;
	setAttr ".wl[650].w[1]" 0.016366573883342138;
	setAttr ".wl[650].w[2]" 0.26102600276931337;
	setAttr ".wl[650].w[12]" 0.14033746563441113;
	setAttr ".wl[650].w[13]" 0.20286451755955359;
	setAttr ".wl[650].w[14]" 0.37939993479713485;
	setAttr -s 6 ".wl[651].w";
	setAttr ".wl[651].w[0]" 1.0138155221881486e-005;
	setAttr ".wl[651].w[1]" 0.070446567333096108;
	setAttr ".wl[651].w[2]" 0.18430573233850991;
	setAttr ".wl[651].w[12]" 0.088083554239642384;
	setAttr ".wl[651].w[13]" 0.24301594119825012;
	setAttr ".wl[651].w[14]" 0.41413806674255554;
	setAttr -s 5 ".wl[652].w";
	setAttr ".wl[652].w[0]" 0.033097799125059973;
	setAttr ".wl[652].w[1]" 1.9222316482074671e-005;
	setAttr ".wl[652].w[2]" 0.71172810377616669;
	setAttr ".wl[652].w[13]" 0.020912744097190579;
	setAttr ".wl[652].w[14]" 0.23424213068510069;
	setAttr -s 5 ".wl[653].w";
	setAttr ".wl[653].w[0]" 0.054020782915104718;
	setAttr ".wl[653].w[1]" 0.11635745238851751;
	setAttr ".wl[653].w[2]" 0.25245495592855932;
	setAttr ".wl[653].w[13]" 0.025876327456669776;
	setAttr ".wl[653].w[14]" 0.5512904813038727;
	setAttr -s 6 ".wl[654].w";
	setAttr ".wl[654].w[0]" 7.2237641387118672e-006;
	setAttr ".wl[654].w[2]" 0.089539083981487994;
	setAttr ".wl[654].w[9]" 3.1201339643274578e-006;
	setAttr ".wl[654].w[12]" 0.14129684062528233;
	setAttr ".wl[654].w[13]" 0.12771460112701538;
	setAttr ".wl[654].w[14]" 0.64143911530687903;
	setAttr ".wl[655].w[13]"  1;
	setAttr ".wl[656].w[13]"  1;
	setAttr ".wl[657].w[13]"  0.99999999997089617;
	setAttr ".wl[658].w[13]"  0.9999999720021151;
	setAttr ".wl[659].w[13]"  0.9999999807914719;
	setAttr -s 5 ".wl[660].w";
	setAttr ".wl[660].w[0]" 0.033423962109659512;
	setAttr ".wl[660].w[1]" 0.1418305038825447;
	setAttr ".wl[660].w[2]" 0.27377797744878585;
	setAttr ".wl[660].w[13]" 0.3727931909599308;
	setAttr ".wl[660].w[14]" 0.17817434759108408;
	setAttr -s 5 ".wl[661].w";
	setAttr ".wl[661].w[0]" 0.02094274371442113;
	setAttr ".wl[661].w[1]" 0.093295354264602434;
	setAttr ".wl[661].w[2]" 0.18409135025136522;
	setAttr ".wl[661].w[13]" 0.56135363340435707;
	setAttr ".wl[661].w[14]" 0.14031690809160208;
	setAttr -s 5 ".wl[662].w";
	setAttr ".wl[662].w[0]" 0.0083598432327966574;
	setAttr ".wl[662].w[1]" 0.051441612040417528;
	setAttr ".wl[662].w[2]" 0.10557657841638834;
	setAttr ".wl[662].w[13]" 0.73649406260254524;
	setAttr ".wl[662].w[14]" 0.098127903707852293;
	setAttr -s 6 ".wl[663].w";
	setAttr ".wl[663].w[0]" 0.0033593053886856248;
	setAttr ".wl[663].w[1]" 0.012444859067369321;
	setAttr ".wl[663].w[2]" 0.033361026828403507;
	setAttr ".wl[663].w[12]" 2.2126423858899531e-006;
	setAttr ".wl[663].w[13]" 0.91556718525443004;
	setAttr ".wl[663].w[14]" 0.035265410818725688;
	setAttr -s 6 ".wl[664].w";
	setAttr ".wl[664].w[0]" 1.0764488421860328e-007;
	setAttr ".wl[664].w[1]" 2.9464248964441684e-006;
	setAttr ".wl[664].w[2]" 7.1691488851225232e-006;
	setAttr ".wl[664].w[12]" 8.2386833397053159e-007;
	setAttr ".wl[664].w[13]" 0.99997867655520889;
	setAttr ".wl[664].w[14]" 1.0248625478907489e-005;
	setAttr ".wl[665].w[13]"  1;
	setAttr ".wl[666].w[13]"  1;
	setAttr ".wl[667].w[13]"  1;
	setAttr -s 5 ".wl[668].w";
	setAttr ".wl[668].w[1]" 3.0067223136267721e-006;
	setAttr ".wl[668].w[2]" 6.6054976660196413e-006;
	setAttr ".wl[668].w[12]" 3.171953340940044e-006;
	setAttr ".wl[668].w[13]" 0.99997286455628964;
	setAttr ".wl[668].w[14]" 1.4351270389779501e-005;
	setAttr -s 5 ".wl[669].w";
	setAttr ".wl[669].w[1]" 0.011786103856228605;
	setAttr ".wl[669].w[2]" 0.028217586917858601;
	setAttr ".wl[669].w[12]" 0.0038134793699907662;
	setAttr ".wl[669].w[13]" 0.91400469219685732;
	setAttr ".wl[669].w[14]" 0.042178155150466835;
	setAttr ".wl[670].w[13]"  1;
	setAttr ".wl[671].w[13]"  0.99999999999272404;
	setAttr ".wl[672].w[13]"  1;
	setAttr ".wl[673].w[13]"  0.99999999999909051;
	setAttr -s 5 ".wl[674].w";
	setAttr ".wl[674].w[0]" 2.8264585533371156e-007;
	setAttr ".wl[674].w[1]" 1.0461676332784318e-006;
	setAttr ".wl[674].w[2]" 2.8051708688923844e-006;
	setAttr ".wl[674].w[13]" 0.99999290963108045;
	setAttr ".wl[674].w[14]" 2.9652066606830076e-006;
	setAttr -s 6 ".wl[675].w";
	setAttr ".wl[675].w[0]" 2.7976400243647189e-006;
	setAttr ".wl[675].w[1]" 0.047886230427483141;
	setAttr ".wl[675].w[2]" 0.095935649292701666;
	setAttr ".wl[675].w[12]" 0.010697304968510783;
	setAttr ".wl[675].w[13]" 0.73533638335893792;
	setAttr ".wl[675].w[14]" 0.11014163431234227;
	setAttr -s 6 ".wl[676].w";
	setAttr ".wl[676].w[0]" 0.015639844881826678;
	setAttr ".wl[676].w[1]" 0.095962038930909183;
	setAttr ".wl[676].w[2]" 0.17557089479791205;
	setAttr ".wl[676].w[12]" 3.540596484829708e-007;
	setAttr ".wl[676].w[13]" 0.55228785208367204;
	setAttr ".wl[676].w[14]" 0.16053904420070492;
	setAttr -s 5 ".wl[677].w";
	setAttr ".wl[677].w[0]" 0.065064914054331333;
	setAttr ".wl[677].w[1]" 0.26725093176501363;
	setAttr ".wl[677].w[2]" 0.48932695360418871;
	setAttr ".wl[677].w[13]" 0.01959942526546074;
	setAttr ".wl[677].w[14]" 0.15875774642909196;
	setAttr -s 5 ".wl[678].w";
	setAttr ".wl[678].w[0]" 0.048897472260193448;
	setAttr ".wl[678].w[1]" 0.28127001170242888;
	setAttr ".wl[678].w[2]" 0.3221622366718519;
	setAttr ".wl[678].w[13]" 0.016761429511225986;
	setAttr ".wl[678].w[14]" 0.33090884985339031;
	setAttr -s 5 ".wl[679].w";
	setAttr ".wl[679].w[0]" 0.023977888733999655;
	setAttr ".wl[679].w[1]" 0.10563721176624243;
	setAttr ".wl[679].w[2]" 0.2140722601188482;
	setAttr ".wl[679].w[13]" 0.49390226909534996;
	setAttr ".wl[679].w[14]" 0.16241036825556751;
	setAttr -s 6 ".wl[680].w";
	setAttr ".wl[680].w[0]" 6.8369853321967019e-006;
	setAttr ".wl[680].w[2]" 0.11177029357593553;
	setAttr ".wl[680].w[9]" 4.9942001650589561e-006;
	setAttr ".wl[680].w[12]" 0.143681409388282;
	setAttr ".wl[680].w[14]" 0.57773809996012304;
	setAttr ".wl[680].w[15]" 0.16679835166566506;
	setAttr -s 4 ".wl[681].w";
	setAttr ".wl[681].w[0]" 0.081249978617701252;
	setAttr ".wl[681].w[2]" 0.48617929220199585;
	setAttr ".wl[681].w[9]" 0.059350523206868545;
	setAttr ".wl[681].w[14]" 0.37322020597343442;
	setAttr -s 5 ".wl[682].w";
	setAttr ".wl[682].w[0]" 0.053333470162502693;
	setAttr ".wl[682].w[1]" 0.19574956573448155;
	setAttr ".wl[682].w[2]" 0.395657673233476;
	setAttr ".wl[682].w[13]" 0.13731641535066413;
	setAttr ".wl[682].w[14]" 0.21794289285020671;
	setAttr -s 6 ".wl[683].w";
	setAttr ".wl[683].w[0]" 3.0111243972039132e-006;
	setAttr ".wl[683].w[1]" 0.064889510574301729;
	setAttr ".wl[683].w[2]" 0.12374889601755559;
	setAttr ".wl[683].w[12]" 0.054676360842211696;
	setAttr ".wl[683].w[13]" 0.55909880645906518;
	setAttr ".wl[683].w[14]" 0.197583435544325;
	setAttr -s 6 ".wl[684].w";
	setAttr ".wl[684].w[0]" 4.9041315379375847e-006;
	setAttr ".wl[684].w[1]" 0.13054992389304793;
	setAttr ".wl[684].w[2]" 0.20406533027074308;
	setAttr ".wl[684].w[12]" 0.10937524989018049;
	setAttr ".wl[684].w[13]" 0.25299980126592414;
	setAttr ".wl[684].w[14]" 0.30300478512434015;
	setAttr -s 5 ".wl[685].w";
	setAttr ".wl[685].w[1]" 0.01859279470609547;
	setAttr ".wl[685].w[2]" 0.039879025828620615;
	setAttr ".wl[685].w[12]" 0.088223390987261188;
	setAttr ".wl[685].w[13]" 0.59938574663570354;
	setAttr ".wl[685].w[14]" 0.25391906567835648;
	setAttr -s 5 ".wl[686].w";
	setAttr ".wl[686].w[1]" 0.058077795734413823;
	setAttr ".wl[686].w[2]" 0.094138250540218543;
	setAttr ".wl[686].w[12]" 0.11107775827206857;
	setAttr ".wl[686].w[13]" 0.37582346690780444;
	setAttr ".wl[686].w[14]" 0.36088274974035928;
	setAttr -s 5 ".wl[687].w";
	setAttr ".wl[687].w[1]" 0.01627284773559327;
	setAttr ".wl[687].w[2]" 0.0011635640068053449;
	setAttr ".wl[687].w[12]" 0.16247409873492505;
	setAttr ".wl[687].w[13]" 0.37501826487420592;
	setAttr ".wl[687].w[14]" 0.44507122219283479;
	setAttr -s 6 ".wl[688].w";
	setAttr ".wl[688].w[1]" 7.9294018578862329e-006;
	setAttr ".wl[688].w[2]" 0.011733292975754182;
	setAttr ".wl[688].w[3]" 0.013799873611204525;
	setAttr ".wl[688].w[12]" 0.095859094410277262;
	setAttr ".wl[688].w[13]" 0.61001410927538735;
	setAttr ".wl[688].w[14]" 0.26858568330705401;
	setAttr -s 6 ".wl[689].w";
	setAttr ".wl[689].w[0]" 1.5556004736783551e-006;
	setAttr ".wl[689].w[1]" 0.035297575164966136;
	setAttr ".wl[689].w[2]" 0.073058572577882328;
	setAttr ".wl[689].w[12]" 0.027422697582922567;
	setAttr ".wl[689].w[13]" 0.74123495500690584;
	setAttr ".wl[689].w[14]" 0.12298464795948678;
	setAttr -s 5 ".wl[690].w";
	setAttr ".wl[690].w[1]" 0.014695868304542663;
	setAttr ".wl[690].w[2]" 0.034761400340851893;
	setAttr ".wl[690].w[12]" 0.046124847684576982;
	setAttr ".wl[690].w[13]" 0.75878788915136852;
	setAttr ".wl[690].w[14]" 0.14563000008476754;
	setAttr -s 6 ".wl[691].w";
	setAttr ".wl[691].w[1]" 5.168719286947054e-006;
	setAttr ".wl[691].w[2]" 0.012837098076272868;
	setAttr ".wl[691].w[3]" 0.009791959520701143;
	setAttr ".wl[691].w[12]" 0.053700219825775386;
	setAttr ".wl[691].w[13]" 0.76755634113950877;
	setAttr ".wl[691].w[14]" 0.15610924240618088;
	setAttr -s 6 ".wl[692].w";
	setAttr ".wl[692].w[1]" 1.8175460523464553e-006;
	setAttr ".wl[692].w[2]" 0.0046163526829769326;
	setAttr ".wl[692].w[3]" 0.0031502161566834201;
	setAttr ".wl[692].w[12]" 0.017472603941742392;
	setAttr ".wl[692].w[13]" 0.92332407683597628;
	setAttr ".wl[692].w[14]" 0.051434960918127014;
	setAttr -s 5 ".wl[693].w";
	setAttr ".wl[693].w[1]" 0.0047408493650139142;
	setAttr ".wl[693].w[2]" 0.012919208109237674;
	setAttr ".wl[693].w[12]" 0.014681399563622815;
	setAttr ".wl[693].w[13]" 0.91959028847841873;
	setAttr ".wl[693].w[14]" 0.048068243184144557;
	setAttr -s 6 ".wl[694].w";
	setAttr ".wl[694].w[0]" 8.3049726866663427e-007;
	setAttr ".wl[694].w[1]" 0.0097296408975599373;
	setAttr ".wl[694].w[2]" 0.025322301045651242;
	setAttr ".wl[694].w[12]" 0.0086091137574654895;
	setAttr ".wl[694].w[13]" 0.91449484052251528;
	setAttr ".wl[694].w[14]" 0.041843273279539281;
	setAttr -s 5 ".wl[695].w";
	setAttr ".wl[695].w[1]" 6.4017983479841666e-008;
	setAttr ".wl[695].w[2]" 1.7446910401497282e-007;
	setAttr ".wl[695].w[12]" 1.9835729027250561e-007;
	setAttr ".wl[695].w[13]" 0.99999886806001481;
	setAttr ".wl[695].w[14]" 6.4938076575062173e-007;
	setAttr -s 5 ".wl[696].w";
	setAttr ".wl[696].w[2]" 5.4869099872003593e-008;
	setAttr ".wl[696].w[3]" 3.7482799310921844e-008;
	setAttr ".wl[696].w[12]" 2.0783068230763711e-007;
	setAttr ".wl[696].w[13]" 0.99999905145135359;
	setAttr ".wl[696].w[14]" 6.1177982155216148e-007;
	setAttr -s 5 ".wl[697].w";
	setAttr ".wl[697].w[1]" 1.8981793258914972e-007;
	setAttr ".wl[697].w[2]" 4.9401392451513352e-007;
	setAttr ".wl[697].w[12]" 1.6800845769805901e-007;
	setAttr ".wl[697].w[13]" 0.99999834186423131;
	setAttr ".wl[697].w[14]" 8.1641812988303888e-007;
	setAttr ".wl[698].w[13]"  1.0000000041291059;
	setAttr -s 5 ".wl[699].w";
	setAttr ".wl[699].w[8]" 1.092607634245873e-006;
	setAttr ".wl[699].w[9]" 1.0853966888176912e-005;
	setAttr ".wl[699].w[10]" 4.2890001946354635e-007;
	setAttr ".wl[699].w[14]" 0.7518074923848832;
	setAttr ".wl[699].w[15]" 0.24818013392318453;
	setAttr -s 5 ".wl[700].w";
	setAttr ".wl[700].w[8]" 9.65322926878301e-007;
	setAttr ".wl[700].w[9]" 1.2853847459715769e-005;
	setAttr ".wl[700].w[10]" 6.2000531514826529e-007;
	setAttr ".wl[700].w[14]" 0.93319942792040256;
	setAttr ".wl[700].w[15]" 0.066786116052777858;
	setAttr -s 5 ".wl[701].w";
	setAttr ".wl[701].w[0]" 0.003566780170650671;
	setAttr ".wl[701].w[1]" 0.012237787467655957;
	setAttr ".wl[701].w[2]" 0.035085638909242142;
	setAttr ".wl[701].w[13]" 0.91247702598290592;
	setAttr ".wl[701].w[14]" 0.036632769223051045;
	setAttr -s 5 ".wl[702].w";
	setAttr ".wl[702].w[0]" 0.009038285022917503;
	setAttr ".wl[702].w[1]" 0.051504965119155498;
	setAttr ".wl[702].w[2]" 0.10768365595299655;
	setAttr ".wl[702].w[13]" 0.72601116003698751;
	setAttr ".wl[702].w[14]" 0.10576194773091584;
	setAttr -s 7 ".wl[703].w";
	setAttr ".wl[703].w[1]" 0.066888153741186507;
	setAttr ".wl[703].w[2]" 0.13144655848572503;
	setAttr ".wl[703].w[10]" 1.110449323455966e-006;
	setAttr ".wl[703].w[12]" 0.0841973031466976;
	setAttr ".wl[703].w[13]" 0.27605549524924466;
	setAttr ".wl[703].w[14]" 0.44141051173419849;
	setAttr ".wl[703].w[16]" 9.1017452479879728e-007;
	setAttr -s 7 ".wl[704].w";
	setAttr ".wl[704].w[1]" 0.032179466982744903;
	setAttr ".wl[704].w[2]" 0.0014292938805157247;
	setAttr ".wl[704].w[10]" 2.8991948100973657e-006;
	setAttr ".wl[704].w[12]" 0.13810777703089031;
	setAttr ".wl[704].w[13]" 0.31621377207067081;
	setAttr ".wl[704].w[14]" 0.51206387417598387;
	setAttr ".wl[704].w[16]" 2.8991948100973657e-006;
	setAttr -s 5 ".wl[705].w";
	setAttr ".wl[705].w[2]" 3.1740616465685719e-006;
	setAttr ".wl[705].w[10]" 0.26593836286403977;
	setAttr ".wl[705].w[13]" 0.10772315391943238;
	setAttr ".wl[705].w[14]" 0.36039747496528124;
	setAttr ".wl[705].w[16]" 0.26593783418596206;
	setAttr -s 7 ".wl[706].w";
	setAttr ".wl[706].w[1]" 2.5688865822330343e-006;
	setAttr ".wl[706].w[2]" 0.0069434020652937353;
	setAttr ".wl[706].w[9]" 1.2022732418620483e-005;
	setAttr ".wl[706].w[10]" 0.27082239671236835;
	setAttr ".wl[706].w[13]" 2.2063487493995476e-006;
	setAttr ".wl[706].w[14]" 0.45141243592595848;
	setAttr ".wl[706].w[16]" 0.27080496732499115;
	setAttr -s 6 ".wl[707].w";
	setAttr ".wl[707].w[0]" 6.2527359300297986e-006;
	setAttr ".wl[707].w[1]" 0.13048956247475316;
	setAttr ".wl[707].w[2]" 0.17777802756157637;
	setAttr ".wl[707].w[9]" 0.25242683280488654;
	setAttr ".wl[707].w[10]" 0.098165568815963763;
	setAttr ".wl[707].w[14]" 0.34113375560689013;
	setAttr -s 6 ".wl[708].w";
	setAttr ".wl[708].w[8]" 1.0696751797780546e-006;
	setAttr ".wl[708].w[9]" 0.11757068192331037;
	setAttr ".wl[708].w[10]" 0.036703685847642678;
	setAttr ".wl[708].w[12]" 0.024467519596453786;
	setAttr ".wl[708].w[14]" 0.31880262299386242;
	setAttr ".wl[708].w[15]" 0.50245441996718887;
	setAttr -s 6 ".wl[709].w";
	setAttr ".wl[709].w[0]" 1.4235337423226768e-006;
	setAttr ".wl[709].w[1]" 4.8489898665925935e-006;
	setAttr ".wl[709].w[2]" 2.1794585814990185e-006;
	setAttr ".wl[709].w[9]" 3.3035775347552913e-006;
	setAttr ".wl[709].w[14]" 0.92390050651790467;
	setAttr ".wl[709].w[15]" 0.076087737922370141;
	setAttr -s 5 ".wl[710].w";
	setAttr ".wl[710].w[0]" 0.063018389620387014;
	setAttr ".wl[710].w[1]" 0.21465984513978226;
	setAttr ".wl[710].w[2]" 0.067069604992866516;
	setAttr ".wl[710].w[9]" 0.14624601443354926;
	setAttr ".wl[710].w[14]" 0.50900614581341497;
	setAttr -s 5 ".wl[711].w";
	setAttr ".wl[711].w[2]" 9.9403622470390039e-006;
	setAttr ".wl[711].w[11]" 0.18638420145851373;
	setAttr ".wl[711].w[12]" 0.31007640411496096;
	setAttr ".wl[711].w[13]" 0.34155980745480818;
	setAttr ".wl[711].w[14]" 0.16196967076564925;
	setAttr -s 5 ".wl[712].w";
	setAttr ".wl[712].w[2]" 5.728232999382562e-006;
	setAttr ".wl[712].w[11]" 0.19518935300951068;
	setAttr ".wl[712].w[12]" 0.30767635007823274;
	setAttr ".wl[712].w[13]" 0.35067705729688475;
	setAttr ".wl[712].w[14]" 0.14645151138237253;
	setAttr -s 4 ".wl[713].w[11:14]"  0.23709311262937527 0.27470237656988999 
		0.4068428376099254 0.081361659060878777;
	setAttr -s 4 ".wl[714].w[11:14]"  0.13531309872154362 0.10787189042172163 
		0.74712695795725059 0.0096880528994841061;
	setAttr -s 4 ".wl[715].w[11:14]"  5.3637199194877412e-005 4.7656234377068107e-005 
		0.99989349864703059 5.2079193974185856e-006;
	setAttr ".wl[716].w[11]"  1.0000000000145519;
	setAttr -s 6 ".wl[717].w";
	setAttr ".wl[717].w[0]" 2.8399550047409029e-006;
	setAttr ".wl[717].w[1]" 0.090209116894219385;
	setAttr ".wl[717].w[2]" 0.15334395076068338;
	setAttr ".wl[717].w[12]" 0.023101102083316859;
	setAttr ".wl[717].w[13]" 0.51197315672904864;
	setAttr ".wl[717].w[14]" 0.2213698078349341;
	setAttr -s 6 ".wl[718].w";
	setAttr ".wl[718].w[1]" 7.9377727538963999e-006;
	setAttr ".wl[718].w[2]" 0.099901001882687135;
	setAttr ".wl[718].w[11]" 0.047454690059774485;
	setAttr ".wl[718].w[12]" 0.16683068014802332;
	setAttr ".wl[718].w[13]" 0.38253172066614749;
	setAttr ".wl[718].w[14]" 0.30327396720415295;
	setAttr -s 5 ".wl[719].w";
	setAttr ".wl[719].w[2]" 0.021860486532748448;
	setAttr ".wl[719].w[11]" 0.091586427417764849;
	setAttr ".wl[719].w[12]" 0.24365899743321573;
	setAttr ".wl[719].w[13]" 0.38891252566568763;
	setAttr ".wl[719].w[14]" 0.25398159942495907;
	setAttr -s 5 ".wl[720].w";
	setAttr ".wl[720].w[2]" 6.1866154468912164e-006;
	setAttr ".wl[720].w[11]" 0.17642091893154926;
	setAttr ".wl[720].w[12]" 0.31425022363691429;
	setAttr ".wl[720].w[13]" 0.33341246412085401;
	setAttr ".wl[720].w[14]" 0.17591019741838959;
	setAttr -s 5 ".wl[721].w";
	setAttr ".wl[721].w[2]" 0.016563488646979208;
	setAttr ".wl[721].w[11]" 0.068901751034330549;
	setAttr ".wl[721].w[12]" 0.1918834789639397;
	setAttr ".wl[721].w[13]" 0.51881692508265342;
	setAttr ".wl[721].w[14]" 0.20383433246516375;
	setAttr -s 4 ".wl[722].w[11:14]"  0.16512636182983656 0.32163825052307071 
		0.32357530410616109 0.18966008354093164;
	setAttr -s 6 ".wl[723].w";
	setAttr ".wl[723].w[1]" 1.0987119292296673e-005;
	setAttr ".wl[723].w[2]" 0.071609329637559227;
	setAttr ".wl[723].w[11]" 0.027322772503520956;
	setAttr ".wl[723].w[12]" 0.11198346636841557;
	setAttr ".wl[723].w[13]" 0.56551069990543101;
	setAttr ".wl[723].w[14]" 0.22356272286528189;
	setAttr -s 6 ".wl[724].w";
	setAttr ".wl[724].w[1]" 1.75583705702925e-006;
	setAttr ".wl[724].w[2]" 0.015719407424098844;
	setAttr ".wl[724].w[11]" 0.017358530240105176;
	setAttr ".wl[724].w[12]" 0.084805217050205398;
	setAttr ".wl[724].w[13]" 0.75238885267511002;
	setAttr ".wl[724].w[14]" 0.12972623413952702;
	setAttr -s 5 ".wl[725].w";
	setAttr ".wl[725].w[2]" 3.9785276823538009e-006;
	setAttr ".wl[725].w[11]" 6.5538513709698083e-006;
	setAttr ".wl[725].w[12]" 2.5849937065638635e-005;
	setAttr ".wl[725].w[13]" 0.9983596754102616;
	setAttr ".wl[725].w[14]" 0.001603950218965208;
	setAttr ".wl[726].w[11]"  1.0000000351501512;
	setAttr ".wl[727].w[11]"  1.0000000018626451;
	setAttr ".wl[728].w[11]"  1.0000000018626451;
	setAttr ".wl[729].w[11]"  1.0000000000218279;
	setAttr ".wl[730].w[11]"  1.000000000007276;
	setAttr ".wl[731].w[11]"  1.0000000000218279;
	setAttr ".wl[732].w[11]"  0.99999999998544808;
	setAttr ".wl[733].w[11]"  1.0000000018626451;
	setAttr ".wl[734].w[11]"  1.0000000352010829;
	setAttr ".wl[735].w[11]"  0.99999998940620571;
	setAttr ".wl[736].w[11]"  0.9999999770661816;
	setAttr -s 6 ".wl[737].w[10:15]"  1.9203390232082336e-006 0.012958161429913561 
		0.11734614394202526 0.034341467937258945 0.06874804601181228 0.76660426033905726;
	setAttr -s 6 ".wl[738].w";
	setAttr ".wl[738].w[9]" 4.1723110125972594e-006;
	setAttr ".wl[738].w[10]" 0.011921948353370496;
	setAttr ".wl[738].w[12]" 0.12473990077808236;
	setAttr ".wl[738].w[13]" 0.046643540586797837;
	setAttr ".wl[738].w[14]" 0.14950928805024483;
	setAttr ".wl[738].w[15]" 0.66718114991321598;
	setAttr -s 5 ".wl[739].w";
	setAttr ".wl[739].w[9]" 0.029752596904562865;
	setAttr ".wl[739].w[12]" 0.09588268006930227;
	setAttr ".wl[739].w[13]" 0.046692316588406613;
	setAttr ".wl[739].w[14]" 0.35972922833953963;
	setAttr ".wl[739].w[15]" 0.46794317810182662;
	setAttr -s 2 ".wl[740].w[14:15]"  0.63756221784784861 0.36243777929633797;
	setAttr -s 3 ".wl[741].w";
	setAttr ".wl[741].w[2]" 2.3510534630389418e-005;
	setAttr ".wl[741].w[14]" 0.87110772761330446;
	setAttr ".wl[741].w[15]" 0.12886876185206514;
	setAttr -s 6 ".wl[742].w";
	setAttr ".wl[742].w[0]" 0.034662070084832387;
	setAttr ".wl[742].w[1]" 0.27086909056013853;
	setAttr ".wl[742].w[2]" 0.39216710337756305;
	setAttr ".wl[742].w[9]" 3.460146063299967e-006;
	setAttr ".wl[742].w[13]" 0.099477886643934185;
	setAttr ".wl[742].w[14]" 0.2028204370778216;
	setAttr ".wl[743].w[13]"  1.0000000033105607;
	setAttr -s 4 ".wl[744].w[11:14]"  1.5024724595239841e-005 1.5560409063543584e-005 
		0.99996621335182656 3.2015217905917053e-006;
	setAttr -s 2 ".wl[745].w[11:12]"  0.95063464493025951 0.049365328934500706;
	setAttr -s 4 ".wl[746].w[11:14]"  0.90077992780973648 0.099201889181642258 
		1.7027605751808659e-005 1.152492486405155e-006;
	setAttr -s 2 ".wl[747].w[11:12]"  0.91218829467203433 0.087811714248289735;
	setAttr -s 2 ".wl[748].w[11:12]"  0.89568626880645752 0.10431373119354248;
	setAttr -s 2 ".wl[749].w[11:12]"  0.90942736761649101 0.090572661691066286;
	setAttr -s 4 ".wl[750].w[11:14]"  0.1392809176296492 0.59587310954591488 
		0.2563603923897001 0.0084856235666124109;
	setAttr -s 2 ".wl[751].w[11:12]"  0.99997357633122697 2.6405653501981874e-005;
	setAttr -s 4 ".wl[752].w[11:14]"  4.9332143693510122e-005 0.99985665741881546 
		9.1015262657935666e-005 3.0121132623605675e-006;
	setAttr ".wl[753].w[11]"  0.99999999420833774;
	setAttr ".wl[754].w[12]"  1.0000000049185473;
	setAttr ".wl[755].w[11]"  1.0000000062136678;
	setAttr ".wl[756].w[12]"  1;
	setAttr -s 5 ".wl[757].w";
	setAttr ".wl[757].w[2]" 0.0038160026674841628;
	setAttr ".wl[757].w[11]" 0.041591282923724431;
	setAttr ".wl[757].w[12]" 0.42044866138427139;
	setAttr ".wl[757].w[13]" 0.47549200836307964;
	setAttr ".wl[757].w[14]" 0.058652058398448316;
	setAttr -s 5 ".wl[758].w";
	setAttr ".wl[758].w[2]" 0.0041773451456043288;
	setAttr ".wl[758].w[11]" 0.042196376508687357;
	setAttr ".wl[758].w[12]" 0.42183036776588795;
	setAttr ".wl[758].w[13]" 0.4694175314461197;
	setAttr ".wl[758].w[14]" 0.062378375684896653;
	setAttr -s 5 ".wl[759].w";
	setAttr ".wl[759].w[2]" 0.0021625631980979783;
	setAttr ".wl[759].w[11]" 0.036957545898437347;
	setAttr ".wl[759].w[12]" 0.44723330282483509;
	setAttr ".wl[759].w[13]" 0.47782477927672562;
	setAttr ".wl[759].w[14]" 0.035821801620533833;
	setAttr -s 5 ".wl[760].w";
	setAttr ".wl[760].w[2]" 0.002342832917801841;
	setAttr ".wl[760].w[11]" 0.032905932794250872;
	setAttr ".wl[760].w[12]" 0.45485912342891577;
	setAttr ".wl[760].w[13]" 0.46867620780372488;
	setAttr ".wl[760].w[14]" 0.041215903026202733;
	setAttr -s 5 ".wl[761].w";
	setAttr ".wl[761].w[2]" 1.0804945241021146e-006;
	setAttr ".wl[761].w[11]" 0.023854935663925794;
	setAttr ".wl[761].w[12]" 0.48913099961052781;
	setAttr ".wl[761].w[13]" 0.47026863894879362;
	setAttr ".wl[761].w[14]" 0.016744372588897674;
	setAttr -s 5 ".wl[762].w";
	setAttr ".wl[762].w[2]" 9.1890191635720212e-007;
	setAttr ".wl[762].w[11]" 0.0201054378223973;
	setAttr ".wl[762].w[12]" 0.51144886850929205;
	setAttr ".wl[762].w[13]" 0.44919869531705797;
	setAttr ".wl[762].w[14]" 0.019246079449336269;
	setAttr -s 4 ".wl[763].w[11:14]"  0.011098428282413633 0.63391812604048858 
		0.34539829183131743 0.0095851286127595116;
	setAttr -s 4 ".wl[764].w[11:14]"  0.0097592947148211675 0.65378643227013267 
		0.32514059860704203 0.011313674408004095;
	setAttr -s 4 ".wl[765].w[11:14]"  0.0043736532510764582 0.79636591303965454 
		0.19445340271680372 0.004807012176838852;
	setAttr -s 4 ".wl[766].w[11:14]"  0.0041242719838374721 0.79777543892620573 
		0.19199573410511347 0.0061045549993952774;
	setAttr -s 4 ".wl[767].w[11:14]"  3.7829113959883481e-005 0.91152880613990939 
		0.088430006321446042 3.3397036457898336e-006;
	setAttr -s 4 ".wl[768].w[11:14]"  3.2931210647050233e-006 0.92839638191487772 
		0.071596708388817404 3.6193000864013732e-006;
	setAttr ".wl[769].w[11]"  1.000000016996637;
	setAttr -s 2 ".wl[770].w[11:12]"  0.99999992012550243 8.5433329230499844e-008;
	setAttr -s 2 ".wl[771].w[11:12]"  0.99799702949255509 0.0020029524048623265;
	setAttr -s 2 ".wl[772].w[11:12]"  0.90667152460895395 0.093328468056880734;
	setAttr -s 2 ".wl[773].w[11:12]"  0.89611228791941444 0.10388767907684178;
	setAttr -s 2 ".wl[774].w[11:12]"  0.91987117853322986 0.080128800046350868;
	setAttr -s 2 ".wl[775].w[11:12]"  0.90709009611800762 0.092909880162370562;
	setAttr -s 2 ".wl[776].w[11:12]"  0.92666666209697723 0.073333337903022766;
	setAttr -s 4 ".wl[777].w[11:14]"  0.16802823845685455 0.47768919126644549 
		0.34584927027055268 0.0084333160932895945;
	setAttr -s 4 ".wl[778].w[11:14]"  0.069485481864316662 0.78159405916362545 
		0.14511364143037075 0.0038067644563003419;
	setAttr ".wl[779].w[12]"  1.0000000239233486;
	setAttr ".wl[780].w[12]"  0.99999995969119482;
	setAttr -s 6 ".wl[781].w";
	setAttr ".wl[781].w[7]" 0.016554765509951191;
	setAttr ".wl[781].w[8]" 0.011241434447304329;
	setAttr ".wl[781].w[9]" 0.39720908449806375;
	setAttr ".wl[781].w[10]" 0.56440095964189951;
	setAttr ".wl[781].w[15]" 0.010593563562076717;
	setAttr ".wl[781].w[16]" 1.9527291548630857e-007;
	setAttr -s 5 ".wl[782].w";
	setAttr ".wl[782].w[7]" 0.020562644467244262;
	setAttr ".wl[782].w[8]" 0.014329277643421252;
	setAttr ".wl[782].w[9]" 0.31967097416484447;
	setAttr ".wl[782].w[10]" 0.61047105230094012;
	setAttr ".wl[782].w[16]" 0.034966036878910575;
	setAttr -s 5 ".wl[783].w";
	setAttr ".wl[783].w[7]" 0.0089899463889874937;
	setAttr ".wl[783].w[9]" 0.026410303729962763;
	setAttr ".wl[783].w[10]" 0.030451631845145599;
	setAttr ".wl[783].w[14]" 0.0076677283766891343;
	setAttr ".wl[783].w[15]" 0.92648038591391579;
	setAttr -s 6 ".wl[784].w";
	setAttr ".wl[784].w[8]" 4.1000898075229089e-006;
	setAttr ".wl[784].w[9]" 0.2110742776458073;
	setAttr ".wl[784].w[10]" 0.10670685809832549;
	setAttr ".wl[784].w[12]" 5.629530227874302e-007;
	setAttr ".wl[784].w[14]" 0.027492596082769029;
	setAttr ".wl[784].w[15]" 0.6547216142070249;
	setAttr -s 6 ".wl[785].w";
	setAttr ".wl[785].w[2]" 9.9200815971048861e-009;
	setAttr ".wl[785].w[8]" 0.031800760084508779;
	setAttr ".wl[785].w[9]" 0.43131032070203257;
	setAttr ".wl[785].w[10]" 0.096773982728453847;
	setAttr ".wl[785].w[14]" 0.10207877669355918;
	setAttr ".wl[785].w[15]" 0.33803614987125036;
	setAttr -s 6 ".wl[786].w";
	setAttr ".wl[786].w[2]" 1.0638894886522576e-007;
	setAttr ".wl[786].w[8]" 0.044425486553847163;
	setAttr ".wl[786].w[9]" 0.43619645047267713;
	setAttr ".wl[786].w[10]" 0.033861767864746199;
	setAttr ".wl[786].w[14]" 0.3177016362324509;
	setAttr ".wl[786].w[15]" 0.16781455249278684;
	setAttr -s 6 ".wl[787].w";
	setAttr ".wl[787].w[2]" 1.0493181701710702e-007;
	setAttr ".wl[787].w[8]" 0.045486433573036014;
	setAttr ".wl[787].w[9]" 0.45187033042894215;
	setAttr ".wl[787].w[10]" 0.017855865209542816;
	setAttr ".wl[787].w[14]" 0.41442161788715626;
	setAttr ".wl[787].w[15]" 0.070365647969505771;
	setAttr -s 8 ".wl[788].w";
	setAttr ".wl[788].w[1]" 5.1400447235742196e-007;
	setAttr ".wl[788].w[2]" 2.6568321381710054e-008;
	setAttr ".wl[788].w[8]" 0.037231076568584251;
	setAttr ".wl[788].w[9]" 0.49575631277493937;
	setAttr ".wl[788].w[10]" 0.023912853909146888;
	setAttr ".wl[788].w[14]" 0.40434080200125089;
	setAttr ".wl[788].w[15]" 0.038757947328964655;
	setAttr ".wl[788].w[16]" 4.9433106918245579e-007;
	setAttr -s 7 ".wl[789].w";
	setAttr ".wl[789].w[1]" 0.045756002631865425;
	setAttr ".wl[789].w[8]" 1.2815206885550713e-006;
	setAttr ".wl[789].w[9]" 0.60582811889264254;
	setAttr ".wl[789].w[10]" 0.065348373809476376;
	setAttr ".wl[789].w[14]" 0.2417254313893733;
	setAttr ".wl[789].w[15]" 1.6720500377737637e-006;
	setAttr ".wl[789].w[16]" 0.041339119707280193;
	setAttr -s 7 ".wl[790].w";
	setAttr ".wl[790].w[0]" 3.1469302849738389e-006;
	setAttr ".wl[790].w[1]" 1.2127278835053023e-005;
	setAttr ".wl[790].w[2]" 0.050211143238858745;
	setAttr ".wl[790].w[9]" 0.42559702785842368;
	setAttr ".wl[790].w[10]" 0.15535842938910988;
	setAttr ".wl[790].w[14]" 0.22980818127082725;
	setAttr ".wl[790].w[16]" 0.13900994403366043;
	setAttr -s 5 ".wl[791].w";
	setAttr ".wl[791].w[2]" 0.0012020523047883869;
	setAttr ".wl[791].w[9]" 0.13984026483035894;
	setAttr ".wl[791].w[10]" 0.34297019503806814;
	setAttr ".wl[791].w[14]" 0.17321445176779213;
	setAttr ".wl[791].w[16]" 0.34277303606081139;
	setAttr -s 5 ".wl[792].w";
	setAttr ".wl[792].w[2]" 0.016929500435830122;
	setAttr ".wl[792].w[9]" 0.054738144372882477;
	setAttr ".wl[792].w[10]" 0.38942567221780128;
	setAttr ".wl[792].w[14]" 0.14948102537772101;
	setAttr ".wl[792].w[16]" 0.38942565759576514;
	setAttr ".wl[793].w[8]"  0.99999998247949407;
	setAttr ".wl[794].w[8]"  0.99999998428393155;
	setAttr ".wl[795].w[8]"  1.0000000228174031;
	setAttr ".wl[796].w[8]"  1;
	setAttr ".wl[797].w[8]"  1.000000056468707;
	setAttr ".wl[798].w[8]"  1.0000000246946001;
	setAttr ".wl[799].w[8]"  1;
	setAttr ".wl[800].w[8]"  1.0000000000528073;
	setAttr ".wl[801].w[8]"  1.0000000009058567;
	setAttr ".wl[802].w[8]"  1.0000000279396772;
	setAttr -s 6 ".wl[803].w";
	setAttr ".wl[803].w[2]" 7.1593388118154116e-007;
	setAttr ".wl[803].w[8]" 0.014159137729009246;
	setAttr ".wl[803].w[9]" 0.67684182795918846;
	setAttr ".wl[803].w[10]" 0.16544883233030755;
	setAttr ".wl[803].w[14]" 0.0016910547976107706;
	setAttr ".wl[803].w[15]" 0.14185845362721053;
	setAttr -s 6 ".wl[804].w";
	setAttr ".wl[804].w[7]" 0.03383045092033736;
	setAttr ".wl[804].w[8]" 3.2414582414501479e-006;
	setAttr ".wl[804].w[9]" 0.42318152928856723;
	setAttr ".wl[804].w[10]" 0.23315686479939568;
	setAttr ".wl[804].w[14]" 2.1833653597042837e-006;
	setAttr ".wl[804].w[15]" 0.30982573016809856;
	setAttr -s 6 ".wl[805].w";
	setAttr ".wl[805].w[7]" 0.043942293982411541;
	setAttr ".wl[805].w[8]" 0.0031579601660791934;
	setAttr ".wl[805].w[9]" 0.1660093346696517;
	setAttr ".wl[805].w[10]" 0.2429308763422541;
	setAttr ".wl[805].w[14]" 8.5242543696276711e-007;
	setAttr ".wl[805].w[15]" 0.54395870398738078;
	setAttr -s 6 ".wl[806].w";
	setAttr ".wl[806].w[2]" 2.9845332802117167e-007;
	setAttr ".wl[806].w[7]" 5.3000440233011604e-007;
	setAttr ".wl[806].w[9]" 0.0022996696382823287;
	setAttr ".wl[806].w[10]" 0.41010287905180481;
	setAttr ".wl[806].w[14]" 1.6162151972640198e-006;
	setAttr ".wl[806].w[16]" 0.58759500663334718;
	setAttr -s 6 ".wl[807].w";
	setAttr ".wl[807].w[7]" 0.0041367445022294919;
	setAttr ".wl[807].w[8]" 1.2751847940881043e-006;
	setAttr ".wl[807].w[9]" 0.025204557540179497;
	setAttr ".wl[807].w[10]" 0.31158123322990966;
	setAttr ".wl[807].w[14]" 0.0047333917183788677;
	setAttr ".wl[807].w[16]" 0.65434278570276305;
	setAttr ".wl[808].w[8]"  1;
	setAttr -s 5 ".wl[809].w";
	setAttr ".wl[809].w[7]" 0.0043468126603040669;
	setAttr ".wl[809].w[8]" 0.09999999819410732;
	setAttr ".wl[809].w[9]" 0.85254255969623927;
	setAttr ".wl[809].w[10]" 0.035347057947551573;
	setAttr ".wl[809].w[15]" 0.0077635534428709112;
	setAttr -s 6 ".wl[810].w";
	setAttr ".wl[810].w[2]" 1.3372732378447043e-006;
	setAttr ".wl[810].w[7]" 0.0063291985325198245;
	setAttr ".wl[810].w[8]" 0.099999999024294087;
	setAttr ".wl[810].w[9]" 0.83405541931972738;
	setAttr ".wl[810].w[10]" 0.039097296691781261;
	setAttr ".wl[810].w[15]" 0.020516739401380511;
	setAttr -s 5 ".wl[811].w";
	setAttr ".wl[811].w[2]" 0.0084763791810918403;
	setAttr ".wl[811].w[8]" 0.099999996498263508;
	setAttr ".wl[811].w[9]" 0.82903827266427965;
	setAttr ".wl[811].w[10]" 0.036147205453610963;
	setAttr ".wl[811].w[15]" 0.026338111185389011;
	setAttr -s 5 ".wl[812].w";
	setAttr ".wl[812].w[2]" 0.0077847045231544849;
	setAttr ".wl[812].w[8]" 0.099999997831434942;
	setAttr ".wl[812].w[9]" 0.8582034668536479;
	setAttr ".wl[812].w[10]" 0.020572367548481945;
	setAttr ".wl[812].w[15]" 0.013439441557630185;
	setAttr -s 5 ".wl[813].w";
	setAttr ".wl[813].w[2]" 0.0059800773948568298;
	setAttr ".wl[813].w[8]" 0.099999999511783247;
	setAttr ".wl[813].w[9]" 0.87278945145586251;
	setAttr ".wl[813].w[10]" 0.013539217475600419;
	setAttr ".wl[813].w[15]" 0.0076912492797294304;
	setAttr -s 6 ".wl[814].w";
	setAttr ".wl[814].w[2]" 0.0052270138579910098;
	setAttr ".wl[814].w[8]" 0.10000000089380273;
	setAttr ".wl[814].w[9]" 0.87953819172648784;
	setAttr ".wl[814].w[10]" 0.010237106164816968;
	setAttr ".wl[814].w[15]" 0.0049976731091126965;
	setAttr ".wl[814].w[16]" 1.4247788758192694e-008;
	setAttr -s 6 ".wl[815].w";
	setAttr ".wl[815].w[2]" 0.0027015595189561511;
	setAttr ".wl[815].w[8]" 0.10000000649605566;
	setAttr ".wl[815].w[9]" 0.88773424424163527;
	setAttr ".wl[815].w[10]" 0.0065194697103570813;
	setAttr ".wl[815].w[15]" 2.5065333661977524e-007;
	setAttr ".wl[815].w[16]" 0.0030445227042431157;
	setAttr -s 5 ".wl[816].w";
	setAttr ".wl[816].w[2]" 0.0054350185712448125;
	setAttr ".wl[816].w[8]" 0.099999999647116034;
	setAttr ".wl[816].w[9]" 0.84004833764108977;
	setAttr ".wl[816].w[10]" 0.032324952885392853;
	setAttr ".wl[816].w[16]" 0.02219168772631688;
	setAttr -s 7 ".wl[817].w";
	setAttr ".wl[817].w[2]" 5.7105928213464427e-007;
	setAttr ".wl[817].w[7]" 0.014593074787101626;
	setAttr ".wl[817].w[8]" 0.099907990915858419;
	setAttr ".wl[817].w[9]" 0.57371252577610454;
	setAttr ".wl[817].w[10]" 0.17818051994185832;
	setAttr ".wl[817].w[14]" 4.8472037659070776e-007;
	setAttr ".wl[817].w[16]" 0.13360481546808742;
	setAttr -s 5 ".wl[818].w";
	setAttr ".wl[818].w[7]" 0.012276306962086862;
	setAttr ".wl[818].w[8]" 0.099999997888335204;
	setAttr ".wl[818].w[9]" 0.73934545877491065;
	setAttr ".wl[818].w[10]" 0.10564599210870584;
	setAttr ".wl[818].w[16]" 0.042732223149313353;
	setAttr -s 6 ".wl[819].w";
	setAttr ".wl[819].w[7]" 0.0029002537218858881;
	setAttr ".wl[819].w[8]" 0.099999997631039131;
	setAttr ".wl[819].w[9]" 0.86710513539443224;
	setAttr ".wl[819].w[10]" 0.026004720818088436;
	setAttr ".wl[819].w[15]" 3.7789175513655385e-008;
	setAttr ".wl[819].w[16]" 0.0039898309557701668;
	setAttr -s 6 ".wl[820].w";
	setAttr ".wl[820].w[7]" 0.011888282468410553;
	setAttr ".wl[820].w[8]" 0.041456294336494573;
	setAttr ".wl[820].w[9]" 0.21953826320430603;
	setAttr ".wl[820].w[10]" 0.36737347781674534;
	setAttr ".wl[820].w[14]" 1.1159909484946365e-006;
	setAttr ".wl[820].w[16]" 0.35974255319551063;
	setAttr -s 6 ".wl[821].w";
	setAttr ".wl[821].w[7]" 0.0018328503792272818;
	setAttr ".wl[821].w[8]" 5.5104567089473336e-006;
	setAttr ".wl[821].w[9]" 0.0056093585681586712;
	setAttr ".wl[821].w[10]" 0.45403577703978371;
	setAttr ".wl[821].w[14]" 2.0718412547813701e-007;
	setAttr ".wl[821].w[16]" 0.53851629637563381;
	setAttr -s 2 ".wl[822].w[0:1]"  0.5369014625107601 0.46309853748923996;
	setAttr -s 2 ".wl[823].w[0:1]"  0.69404483808547723 0.30595516191452288;
	setAttr -s 2 ".wl[824].w[0:1]"  0.54684834610692545 0.45315165388579853;
	setAttr -s 2 ".wl[825].w[0:1]"  0.51895644719283573 0.48104354027796525;
	setAttr -s 3 ".wl[826].w[0:2]"  0.50258572651426781 0.49741337319109197 
		9.082690897479006e-007;
	setAttr -s 3 ".wl[827].w[0:2]"  0.50088083501818437 0.49911828158975757 
		9.0507441192698868e-007;
	setAttr -s 2 ".wl[828].w[0:1]"  0.52359122278866621 0.4764087895004262;
	setAttr -s 2 ".wl[829].w[0:1]"  0.51535457216213298 0.4846454278487809;
	setAttr -s 3 ".wl[830].w[0:2]"  0.50477954396050073 0.49399313726259797 
		0.0012273373978958677;
	setAttr -s 3 ".wl[831].w[0:2]"  0.50074796964995305 0.49769663605659248 
		0.0015554453124692401;
	setAttr -s 5 ".wl[832].w";
	setAttr ".wl[832].w[0]" 0.025853469792971706;
	setAttr ".wl[832].w[1]" 0.50179474730537132;
	setAttr ".wl[832].w[2]" 0.47235179236550212;
	setAttr ".wl[832].w[13]" 1.7632001431092792e-008;
	setAttr ".wl[832].w[14]" 1.9939581338993611e-008;
	setAttr -s 3 ".wl[833].w[0:2]"  0.030220862350566296 0.48943499313038286 
		0.48034414451905089;
	setAttr -s 5 ".wl[834].w";
	setAttr ".wl[834].w[0]" 0.037435019615757591;
	setAttr ".wl[834].w[1]" 0.39924843941642796;
	setAttr ".wl[834].w[2]" 0.55484503951196706;
	setAttr ".wl[834].w[13]" 0.0010342862518013547;
	setAttr ".wl[834].w[14]" 0.007437215204045949;
	setAttr -s 5 ".wl[835].w";
	setAttr ".wl[835].w[0]" 0.043160410535676125;
	setAttr ".wl[835].w[1]" 0.48799825006885261;
	setAttr ".wl[835].w[2]" 0.46575005878692277;
	setAttr ".wl[835].w[13]" 0.0011516106759973598;
	setAttr ".wl[835].w[14]" 0.0019396699280036934;
	setAttr -s 5 ".wl[836].w";
	setAttr ".wl[836].w[0]" 0.11784502402257498;
	setAttr ".wl[836].w[1]" 0.49444260955899605;
	setAttr ".wl[836].w[2]" 0.38420330586927537;
	setAttr ".wl[836].w[13]" 0.0017544038176373553;
	setAttr ".wl[836].w[14]" 0.0017546281442788313;
	setAttr -s 5 ".wl[837].w";
	setAttr ".wl[837].w[0]" 0.11631752710434165;
	setAttr ".wl[837].w[1]" 0.46240876035567713;
	setAttr ".wl[837].w[2]" 0.41719135931998447;
	setAttr ".wl[837].w[13]" 0.0019823857448048087;
	setAttr ".wl[837].w[14]" 0.0020999734996848146;
	setAttr -s 5 ".wl[838].w";
	setAttr ".wl[838].w[0]" 0.10168729523018329;
	setAttr ".wl[838].w[1]" 0.48374564329868042;
	setAttr ".wl[838].w[2]" 0.41234088501141475;
	setAttr ".wl[838].w[13]" 0.0010427839047169811;
	setAttr ".wl[838].w[14]" 0.0011833775956357829;
	setAttr -s 5 ".wl[839].w";
	setAttr ".wl[839].w[0]" 0.10430599594558194;
	setAttr ".wl[839].w[1]" 0.44183491333165953;
	setAttr ".wl[839].w[2]" 0.44430198658788811;
	setAttr ".wl[839].w[9]" 0.0051320127090303692;
	setAttr ".wl[839].w[14]" 0.0044250919115103411;
	setAttr -s 5 ".wl[840].w";
	setAttr ".wl[840].w[0]" 0.080730587170448967;
	setAttr ".wl[840].w[1]" 0.45603579826333202;
	setAttr ".wl[840].w[2]" 0.45723916734545172;
	setAttr ".wl[840].w[9]" 0.0031004024848095709;
	setAttr ".wl[840].w[14]" 0.0028940447359576578;
	setAttr -s 6 ".wl[841].w";
	setAttr ".wl[841].w[0]" 0.066580079100578879;
	setAttr ".wl[841].w[1]" 0.46525816215201748;
	setAttr ".wl[841].w[2]" 0.46495188215488231;
	setAttr ".wl[841].w[9]" 1.5375818724088805e-007;
	setAttr ".wl[841].w[13]" 0.0015062334972723234;
	setAttr ".wl[841].w[14]" 0.0017035046238486327;
	setAttr -s 3 ".wl[842].w[0:2]"  0.046431974399564244 0.93054091981247256 
		0.023027105787963312;
	setAttr -s 3 ".wl[843].w[0:2]"  0.041314570469026195 0.92728936426273123 
		0.031396065268242582;
	setAttr -s 3 ".wl[844].w[0:2]"  0.054002604643883116 0.91333998507209635 
		0.032657405234506047;
	setAttr -s 3 ".wl[845].w[0:2]"  0.17007525865576456 0.79957524146901804 
		0.030349499875217394;
	setAttr -s 3 ".wl[846].w[0:2]"  0.27871664904882626 0.6593805340578538 
		0.06190278852436136;
	setAttr -s 3 ".wl[847].w[0:2]"  0.25659646294469962 0.6571052774181193 
		0.086298248606829331;
	setAttr -s 3 ".wl[848].w[0:2]"  0.2511026727783755 0.63109542364545834 
		0.11780188104980138;
	setAttr -s 3 ".wl[849].w[0:2]"  0.22891611433970388 0.55867873511991339 
		0.21240516007188742;
	setAttr -s 3 ".wl[850].w[0:2]"  0.18497864261505398 0.59743052066814661 
		0.21759083671679946;
	setAttr -s 3 ".wl[851].w[0:2]"  0.13968563765267106 0.76096495217501658 
		0.099349354569444201;
	setAttr -s 5 ".wl[852].w";
	setAttr ".wl[852].w[0]" 0.041644472735156146;
	setAttr ".wl[852].w[1]" 0.2062277316539475;
	setAttr ".wl[852].w[2]" 0.72947624928245358;
	setAttr ".wl[852].w[13]" 0.0031359013931659672;
	setAttr ".wl[852].w[14]" 0.019515644935276664;
	setAttr -s 5 ".wl[853].w";
	setAttr ".wl[853].w[0]" 0.053610341471849655;
	setAttr ".wl[853].w[1]" 0.19671709355287981;
	setAttr ".wl[853].w[2]" 0.5822802456116688;
	setAttr ".wl[853].w[13]" 0.0053592315522306838;
	setAttr ".wl[853].w[14]" 0.16203308781864698;
	setAttr -s 5 ".wl[854].w";
	setAttr ".wl[854].w[0]" 0.040288521972129746;
	setAttr ".wl[854].w[1]" 0.29207054784950398;
	setAttr ".wl[854].w[2]" 0.53216770611092379;
	setAttr ".wl[854].w[13]" 0.0046799299165164064;
	setAttr ".wl[854].w[14]" 0.13079329415092611;
	setAttr -s 5 ".wl[855].w";
	setAttr ".wl[855].w[0]" 0.043063076432937143;
	setAttr ".wl[855].w[1]" 0.43829404995099019;
	setAttr ".wl[855].w[2]" 0.48581777186772274;
	setAttr ".wl[855].w[13]" 0.0046467646572818724;
	setAttr ".wl[855].w[14]" 0.028178321383867101;
	setAttr -s 5 ".wl[856].w";
	setAttr ".wl[856].w[0]" 0.09745700341273561;
	setAttr ".wl[856].w[1]" 0.43751756421176069;
	setAttr ".wl[856].w[2]" 0.445331909791711;
	setAttr ".wl[856].w[13]" 0.0098274789718381765;
	setAttr ".wl[856].w[14]" 0.0098660217040462822;
	setAttr -s 5 ".wl[857].w";
	setAttr ".wl[857].w[0]" 0.080594408968285944;
	setAttr ".wl[857].w[1]" 0.43873446730975008;
	setAttr ".wl[857].w[2]" 0.46805821481736315;
	setAttr ".wl[857].w[13]" 0.0059150803619565095;
	setAttr ".wl[857].w[14]" 0.0066978209319925328;
	setAttr -s 5 ".wl[858].w";
	setAttr ".wl[858].w[0]" 0.068293153706663084;
	setAttr ".wl[858].w[1]" 0.40548734860488855;
	setAttr ".wl[858].w[2]" 0.5114809538419739;
	setAttr ".wl[858].w[9]" 0.0067602600914026204;
	setAttr ".wl[858].w[14]" 0.0079782837550718098;
	setAttr -s 2 ".wl[859].w";
	setAttr ".wl[859].w[2]" 0.38416038876948333;
	setAttr ".wl[859].w[14]" 0.61583961123051667;
	setAttr -s 2 ".wl[860].w";
	setAttr ".wl[860].w[2]" 0.43507780810928326;
	setAttr ".wl[860].w[14]" 0.56492219189071669;
	setAttr -s 6 ".wl[861].w";
	setAttr ".wl[861].w[0]" 0.11200747945879008;
	setAttr ".wl[861].w[1]" 0.019831765795285516;
	setAttr ".wl[861].w[2]" 0.83300263311852796;
	setAttr ".wl[861].w[9]" 2.6852241113102206e-007;
	setAttr ".wl[861].w[13]" 0.015895607772255894;
	setAttr ".wl[861].w[14]" 0.019262251399059047;
	setAttr -s 7 ".wl[862].w";
	setAttr ".wl[862].w[1]" 1.5048013941469826e-006;
	setAttr ".wl[862].w[2]" 8.5121516588991524e-008;
	setAttr ".wl[862].w[8]" 3.1509338441537697e-006;
	setAttr ".wl[862].w[9]" 0.5981688730132716;
	setAttr ".wl[862].w[10]" 0.093329468259175472;
	setAttr ".wl[862].w[14]" 0.030809973683252459;
	setAttr ".wl[862].w[16]" 0.27768690714564531;
	setAttr ".wl[863].w[8]"  1.0000000374420779;
	setAttr ".wl[864].w[8]"  1.000000013737008;
	setAttr ".wl[865].w[8]"  1.000000002066372;
	setAttr ".wl[866].w[8]"  1.0000000325962901;
	setAttr ".wl[867].w[8]"  0.99999999947613105;
	setAttr ".wl[868].w[8]"  0.99999998482235242;
	setAttr ".wl[869].w[8]"  0.99999999778447091;
	setAttr ".wl[870].w[8]"  1;
	setAttr ".wl[871].w[8]"  1.0000000318832463;
	setAttr ".wl[872].w[8]"  0.99999998533166945;
	setAttr ".wl[873].w[8]"  1.000000020605512;
	setAttr ".wl[874].w[8]"  0.99999997377744876;
	setAttr ".wl[875].w[8]"  1.0000000000218279;
	setAttr ".wl[876].w[8]"  0.99999998163548298;
	setAttr ".wl[877].w[8]"  0.99999999999272404;
	setAttr ".wl[878].w[8]"  1.0000000000163709;
	setAttr ".wl[879].w[8]"  1.0000000287545845;
	setAttr ".wl[880].w[8]"  0.99999999997271516;
	setAttr ".wl[881].w[8]"  0.99999999392457539;
	setAttr ".wl[882].w[8]"  1.0000000416962394;
	setAttr ".wl[883].w[8]"  1;
	setAttr ".wl[884].w[8]"  1.0000000000200089;
	setAttr ".wl[885].w[8]"  1;
	setAttr ".wl[886].w[8]"  0.99999998303246684;
	setAttr ".wl[887].w[8]"  1.0000000177051334;
	setAttr ".wl[888].w[8]"  1.0000000475047273;
	setAttr ".wl[889].w[8]"  1.0000000120589903;
	setAttr ".wl[890].w[8]"  0.99999997622217052;
	setAttr ".wl[891].w[8]"  1;
	setAttr ".wl[892].w[8]"  1.0000000251166057;
	setAttr ".wl[893].w[8]"  1.0000000234867912;
	setAttr ".wl[894].w[8]"  1;
	setAttr ".wl[895].w[8]"  1.0000000294239726;
	setAttr ".wl[896].w[8]"  1;
	setAttr ".wl[897].w[8]"  0.99999997986014932;
	setAttr ".wl[898].w[8]"  1.0000000121654011;
	setAttr ".wl[899].w[8]"  1;
	setAttr ".wl[900].w[8]"  1.0000000266300049;
	setAttr ".wl[901].w[8]"  0.99999997894337866;
	setAttr ".wl[902].w[8]"  1;
	setAttr ".wl[903].w[8]"  1;
	setAttr ".wl[904].w[8]"  1.0000000287691364;
	setAttr ".wl[905].w[8]"  1.0000000081563485;
	setAttr ".wl[906].w[8]"  1.0000000200234354;
	setAttr ".wl[907].w[8]"  1.0000000141844794;
	setAttr ".wl[908].w[8]"  0.99999998690327629;
	setAttr ".wl[909].w[8]"  0.99999997112900019;
	setAttr ".wl[910].w[8]"  0.99999997462145984;
	setAttr ".wl[911].w[8]"  0.99999999993451638;
	setAttr ".wl[912].w[8]"  0.9999999761057552;
	setAttr ".wl[913].w[8]"  1.0000000280997483;
	setAttr ".wl[914].w[8]"  0.99999997086706571;
	setAttr ".wl[915].w[8]"  0.99999996581209416;
	setAttr ".wl[916].w[8]"  1.0000000085074134;
	setAttr ".wl[917].w[8]"  0.99999998123075784;
	setAttr ".wl[918].w[8]"  1;
	setAttr -s 2 ".wl[919].w[0:1]"  0.99726785222516845 0.0027321620939161021;
	setAttr -s 2 ".wl[920].w[0:1]"  0.89959356001483259 0.10040643999971928;
	setAttr -s 2 ".wl[921].w[0:1]"  0.98035023942683464 0.019649763760034928;
	setAttr -s 3 ".wl[922].w[0:2]"  0.82205765194212688 0.17634915084800915 
		0.0015931517187579799;
	setAttr -s 2 ".wl[923].w[0:1]"  0.91669289521369213 0.083307104786307928;
	setAttr -s 2 ".wl[924].w[0:1]"  0.87357650585372548 0.12642346588645512;
	setAttr -s 2 ".wl[925].w[0:1]"  0.87550924036813005 0.12449078773525631;
	setAttr -s 5 ".wl[926].w";
	setAttr ".wl[926].w[7]" 0.032580242934662995;
	setAttr ".wl[926].w[8]" 0.02026306893368484;
	setAttr ".wl[926].w[9]" 0.16225782033581138;
	setAttr ".wl[926].w[10]" 0.51751094739156722;
	setAttr ".wl[926].w[16]" 0.26738792040791148;
	setAttr -s 5 ".wl[927].w";
	setAttr ".wl[927].w[7]" 0.019327417378806885;
	setAttr ".wl[927].w[8]" 0.044016380022569829;
	setAttr ".wl[927].w[9]" 0.36021539494149146;
	setAttr ".wl[927].w[10]" 0.40024200741603538;
	setAttr ".wl[927].w[16]" 0.17619880024109649;
	setAttr -s 6 ".wl[928].w";
	setAttr ".wl[928].w[1]" 3.1684964274010579e-006;
	setAttr ".wl[928].w[2]" 0.014338934528364522;
	setAttr ".wl[928].w[9]" 0.40940432475182603;
	setAttr ".wl[928].w[10]" 0.15200457798909314;
	setAttr ".wl[928].w[14]" 0.099974437365191474;
	setAttr ".wl[928].w[16]" 0.3242745412476164;
	setAttr -s 6 ".wl[929].w";
	setAttr ".wl[929].w[2]" 0.010100191845470865;
	setAttr ".wl[929].w[8]" 4.0461756252948445e-007;
	setAttr ".wl[929].w[9]" 0.082874689276361838;
	setAttr ".wl[929].w[10]" 0.42564566514387425;
	setAttr ".wl[929].w[14]" 0.034196750428805184;
	setAttr ".wl[929].w[16]" 0.44718231473141185;
	setAttr -s 6 ".wl[930].w";
	setAttr ".wl[930].w[2]" 8.889359077760159e-007;
	setAttr ".wl[930].w[7]" 0.010293681022259261;
	setAttr ".wl[930].w[9]" 0.02012002667322537;
	setAttr ".wl[930].w[10]" 0.47304714546126908;
	setAttr ".wl[930].w[14]" 0.02125246069328653;
	setAttr ".wl[930].w[16]" 0.47528579721405206;
	setAttr -s 5 ".wl[931].w";
	setAttr ".wl[931].w[0]" 0.033815264089688449;
	setAttr ".wl[931].w[1]" 0.16795686478056093;
	setAttr ".wl[931].w[2]" 0.29766112980042209;
	setAttr ".wl[931].w[13]" 0.30288729938521008;
	setAttr ".wl[931].w[14]" 0.19767944462621834;
	setAttr ".wl[932].w[8]"  1.0000000031432137;
	setAttr ".wl[933].w[8]"  1.0000000197760528;
	setAttr ".wl[934].w[8]"  1.0000000226427801;
	setAttr ".wl[935].w[8]"  1.0000000296859071;
	setAttr -s 3 ".wl[936].w[8:10]"  0.99999841075623408 1.6054289130581303e-006 
		3.8964958774166465e-009;
	setAttr -s 2 ".wl[937].w[8:9]"  0.99999628132427387 3.7010970125399773e-006;
	setAttr ".wl[938].w[8]"  0.99999999270221451;
	setAttr ".wl[939].w[8]"  1.0000000070715487;
	setAttr -s 3 ".wl[940].w[8:10]"  0.99998597404210154 1.3956630508010944e-005 
		2.6415611381440603e-008;
	setAttr -s 3 ".wl[941].w[8:10]"  0.99997470854686976 2.5246242269726401e-005 
		8.6039896619576121e-008;
	setAttr -s 3 ".wl[942].w[8:10]"  0.99997733115778831 2.2598700582287695e-005 
		1.0696161293382701e-007;
	setAttr -s 3 ".wl[943].w[8:10]"  0.10008406301494688 0.89670835102779867 
		0.0032076118014557884;
	setAttr -s 3 ".wl[944].w[8:10]"  0.10005708275857615 0.89460902727291103 
		0.0053338899757888669;
	setAttr -s 3 ".wl[945].w[8:10]"  0.10001146011254605 0.89351605670540191 
		0.0064724515743827095;
	setAttr -s 5 ".wl[946].w";
	setAttr ".wl[946].w[2]" 5.0347016198881674e-008;
	setAttr ".wl[946].w[8]" 0.10000000016943886;
	setAttr ".wl[946].w[9]" 0.8957604447955988;
	setAttr ".wl[946].w[10]" 0.0042394416270292541;
	setAttr ".wl[946].w[15]" 6.4755305462938718e-008;
	setAttr -s 5 ".wl[947].w";
	setAttr ".wl[947].w[2]" 8.1090398339692142e-008;
	setAttr ".wl[947].w[8]" 0.10000000067047951;
	setAttr ".wl[947].w[9]" 0.896943173533156;
	setAttr ".wl[947].w[10]" 0.0030566738781019889;
	setAttr ".wl[947].w[15]" 7.7532659054204898e-008;
	setAttr -s 3 ".wl[948].w[8:10]"  0.10000458452530889 0.89829518477642978 
		0.0017001858215191538;
	setAttr -s 3 ".wl[949].w[8:10]"  0.10009394716682252 0.89990590935261161 
		1.1897332169500433e-007;
	setAttr -s 3 ".wl[950].w[8:10]"  0.10000301987243869 0.8978181511748855 
		0.0021788423049674487;
	setAttr -s 6 ".wl[951].w";
	setAttr ".wl[951].w[2]" 1.8692884819645624e-007;
	setAttr ".wl[951].w[7]" 0.0016851324517694452;
	setAttr ".wl[951].w[8]" 0.099999997713894118;
	setAttr ".wl[951].w[9]" 0.88803814242486667;
	setAttr ".wl[951].w[10]" 0.010275754353580418;
	setAttr ".wl[951].w[16]" 7.6326598233181892e-007;
	setAttr -s 4 ".wl[952].w[7:10]"  0.0015903079805209437 0.10007625431899214 
		0.88893342328170599 0.0094000403575697656;
	setAttr -s 3 ".wl[953].w[8:10]"  0.10010908697695414 0.89773690827016983 
		0.0021539794671043624;
	setAttr -s 7 ".wl[954].w";
	setAttr ".wl[954].w[0]" 4.3924932812164842e-006;
	setAttr ".wl[954].w[1]" 0.16001400797138887;
	setAttr ".wl[954].w[2]" 0.27499226578714331;
	setAttr ".wl[954].w[10]" 9.1252616221959962e-007;
	setAttr ".wl[954].w[12]" 0.06585045694343003;
	setAttr ".wl[954].w[13]" 0.18495785154598524;
	setAttr ".wl[954].w[14]" 0.31418012277706869;
	setAttr -s 7 ".wl[955].w";
	setAttr ".wl[955].w[1]" 1.7230551219188938e-005;
	setAttr ".wl[955].w[2]" 0.19400332734046336;
	setAttr ".wl[955].w[9]" 0.10822872576812412;
	setAttr ".wl[955].w[10]" 0.17719027844546875;
	setAttr ".wl[955].w[13]" 1.3847627275660859e-006;
	setAttr ".wl[955].w[14]" 0.37488379555631957;
	setAttr ".wl[955].w[16]" 0.14567524275455188;
	setAttr -s 6 ".wl[956].w";
	setAttr ".wl[956].w[1]" 3.5224548744110051e-006;
	setAttr ".wl[956].w[2]" 8.93268930129873e-006;
	setAttr ".wl[956].w[9]" 0.30270839482218409;
	setAttr ".wl[956].w[10]" 0.25497217420270235;
	setAttr ".wl[956].w[14]" 0.18743369349959407;
	setAttr ".wl[956].w[16]" 0.25487328232770562;
	setAttr -s 6 ".wl[957].w";
	setAttr ".wl[957].w[2]" 2.7609076174145609e-006;
	setAttr ".wl[957].w[8]" 0.0049679353578857104;
	setAttr ".wl[957].w[9]" 0.25926778122565108;
	setAttr ".wl[957].w[10]" 0.20530822123368575;
	setAttr ".wl[957].w[14]" 0.064649801669473622;
	setAttr ".wl[957].w[16]" 0.46580347110576037;
	setAttr -s 6 ".wl[958].w";
	setAttr ".wl[958].w[2]" 3.9229421498039713e-007;
	setAttr ".wl[958].w[8]" 0.016069102182052888;
	setAttr ".wl[958].w[9]" 0.24553368408506171;
	setAttr ".wl[958].w[10]" 0.14421704040134811;
	setAttr ".wl[958].w[14]" 0.019305576724913561;
	setAttr ".wl[958].w[16]" 0.5748741940242047;
	setAttr -s 6 ".wl[959].w";
	setAttr ".wl[959].w[0]" 1.4347489954783801e-005;
	setAttr ".wl[959].w[1]" 0.10925203642567251;
	setAttr ".wl[959].w[2]" 0.21268396441747847;
	setAttr ".wl[959].w[12]" 0.039195472193688047;
	setAttr ".wl[959].w[13]" 0.23657650643304262;
	setAttr ".wl[959].w[14]" 0.40227767500467237;
	setAttr -s 5 ".wl[960].w";
	setAttr ".wl[960].w[0]" 0.021012950437677799;
	setAttr ".wl[960].w[1]" 0.16475745274741754;
	setAttr ".wl[960].w[2]" 0.25035333290022777;
	setAttr ".wl[960].w[13]" 0.27124121992164213;
	setAttr ".wl[960].w[14]" 0.29263506066407269;
	setAttr -s 2 ".wl[961].w[0:1]"  0.99853010184414415 0.0014698961767954859;
	setAttr -s 2 ".wl[962].w[0:1]"  0.9983420195384729 0.0016579806943576951;
	setAttr -s 2 ".wl[963].w[0:1]"  0.99802045904425052 0.0019795081266287509;
	setAttr -s 2 ".wl[964].w[0:1]"  0.99764730474849728 0.0023526952515027203;
	setAttr -s 3 ".wl[965].w[0:2]"  0.96107338533650677 0.038922863587589354 
		3.7510831798019124e-006;
	setAttr -s 3 ".wl[966].w[0:2]"  0.94023768313067679 0.058235839393914031 
		0.0015264834125906948;
	setAttr -s 3 ".wl[967].w[0:2]"  0.94944369584645028 0.049273338707208021 
		0.0012829767386280495;
	setAttr -s 3 ".wl[968].w[0:2]"  0.94282445881726784 0.055694029544254356 
		0.0014815046535585771;
	setAttr -s 2 ".wl[969].w[0:1]"  0.96522378069114123 0.034776219308858651;
	setAttr -s 2 ".wl[970].w[0:1]"  0.97756585610676261 0.022434143893237321;
	setAttr -s 2 ".wl[971].w[0:1]"  0.9669772066971507 0.033022784571700159;
	setAttr -s 2 ".wl[972].w[0:1]"  0.97919114525058593 0.020808872822892777;
	setAttr -s 3 ".wl[973].w[0:2]"  0.65500955858627941 0.34313170991023323 
		0.0018587315034875394;
	setAttr -s 3 ".wl[974].w[0:2]"  0.62167200967832148 0.37490531310438269 
		0.0034226771481742756;
	setAttr -s 6 ".wl[975].w";
	setAttr ".wl[975].w[7]" 0.047810671784976153;
	setAttr ".wl[975].w[8]" 1.9844662769108551e-006;
	setAttr ".wl[975].w[9]" 0.22985303750166108;
	setAttr ".wl[975].w[10]" 0.64269667968914246;
	setAttr ".wl[975].w[14]" 1.5084250736811849e-007;
	setAttr ".wl[975].w[15]" 0.079637500395484201;
	setAttr -s 7 ".wl[976].w";
	setAttr ".wl[976].w[0]" 6.6796534681053963e-006;
	setAttr ".wl[976].w[1]" 0.25207300783086189;
	setAttr ".wl[976].w[2]" 0.37652140450922827;
	setAttr ".wl[976].w[9]" 0.069981395964347534;
	setAttr ".wl[976].w[10]" 7.785378812932386e-007;
	setAttr ".wl[976].w[13]" 0.056246989879047637;
	setAttr ".wl[976].w[14]" 0.24516974362516536;
	setAttr -s 7 ".wl[977].w";
	setAttr ".wl[977].w[0]" 6.4035400092440252e-008;
	setAttr ".wl[977].w[1]" 0.1267433262064537;
	setAttr ".wl[977].w[2]" 0.31305039875174295;
	setAttr ".wl[977].w[9]" 8.0200492751607554e-006;
	setAttr ".wl[977].w[10]" 0.095239169694764342;
	setAttr ".wl[977].w[13]" 0.10883788311182244;
	setAttr ".wl[977].w[14]" 0.35612111325221446;
	setAttr -s 7 ".wl[978].w";
	setAttr ".wl[978].w[1]" 1.5903116471134502e-005;
	setAttr ".wl[978].w[2]" 0.12129330270383716;
	setAttr ".wl[978].w[10]" 0.14189749107728233;
	setAttr ".wl[978].w[12]" 4.671378565160051e-007;
	setAttr ".wl[978].w[13]" 0.1559802273823627;
	setAttr ".wl[978].w[14]" 0.46451610780144703;
	setAttr ".wl[978].w[16]" 0.11629650801304496;
	setAttr -s 7 ".wl[979].w";
	setAttr ".wl[979].w[1]" 1.450994967743782e-006;
	setAttr ".wl[979].w[2]" 1.7117198838717995e-005;
	setAttr ".wl[979].w[10]" 0.16210132161576421;
	setAttr ".wl[979].w[12]" 1.8268114032488176e-006;
	setAttr ".wl[979].w[13]" 0.19569464905677922;
	setAttr ".wl[979].w[14]" 0.48008529954966372;
	setAttr ".wl[979].w[16]" 0.1620983109583739;
	setAttr -s 7 ".wl[980].w";
	setAttr ".wl[980].w[2]" 0.0010451100022556134;
	setAttr ".wl[980].w[3]" 0.0015625584850358376;
	setAttr ".wl[980].w[10]" 0.16564384858610387;
	setAttr ".wl[980].w[12]" 9.4968474001002475e-007;
	setAttr ".wl[980].w[13]" 0.19721151173181387;
	setAttr ".wl[980].w[14]" 0.46889211724650026;
	setAttr ".wl[980].w[16]" 0.16564384858610387;
	setAttr -s 6 ".wl[981].w";
	setAttr ".wl[981].w[2]" 1.6232946102384162e-007;
	setAttr ".wl[981].w[3]" 2.561100963458721e-007;
	setAttr ".wl[981].w[10]" 0.16210867651898683;
	setAttr ".wl[981].w[13]" 0.19569708321891832;
	setAttr ".wl[981].w[14]" 0.48008518405166295;
	setAttr ".wl[981].w[16]" 0.16210867651898683;
	setAttr -s 5 ".wl[982].w";
	setAttr ".wl[982].w[3]" 0.10683666724318254;
	setAttr ".wl[982].w[10]" 0.13105407975222086;
	setAttr ".wl[982].w[13]" 0.19077195893701093;
	setAttr ".wl[982].w[14]" 0.45963674496795603;
	setAttr ".wl[982].w[16]" 0.11170052421221675;
	setAttr -s 6 ".wl[983].w";
	setAttr ".wl[983].w[3]" 0.31302216281936479;
	setAttr ".wl[983].w[4]" 0.12672166771225457;
	setAttr ".wl[983].w[10]" 0.095251026008201817;
	setAttr ".wl[983].w[13]" 0.10885091704736023;
	setAttr ".wl[983].w[14]" 0.35613765748549397;
	setAttr ".wl[983].w[16]" 1.6578669831836898e-005;
	setAttr -s 7 ".wl[984].w";
	setAttr ".wl[984].w[3]" 0.37651225478142358;
	setAttr ".wl[984].w[4]" 0.2520563972025015;
	setAttr ".wl[984].w[7]" 0.069975505721900061;
	setAttr ".wl[984].w[10]" 1.1747349354552741e-005;
	setAttr ".wl[984].w[13]" 0.056253462296635706;
	setAttr ".wl[984].w[14]" 0.24518854240006935;
	setAttr ".wl[984].w[16]" 2.0830021709400035e-006;
	setAttr -s 2 ".wl[985].w[0:1]"  0.9611118950659816 0.038888104934018411;
	setAttr -s 3 ".wl[986].w[0:2]"  0.94018814740715984 0.058282741618969382 
		0.0015291109738707984;
	setAttr -s 3 ".wl[987].w[0:2]"  0.94943531675980009 0.049280240282228278 
		0.00128444295797164;
	setAttr -s 3 ".wl[988].w[0:2]"  0.9427737165257456 0.055743076002045325 
		0.0014832074722091323;
	setAttr -s 2 ".wl[989].w[0:1]"  0.96518783878668213 0.034812161213317878;
	setAttr -s 2 ".wl[990].w[0:1]"  0.97758732053089914 0.02241267946910086;
	setAttr -s 2 ".wl[991].w[0:1]"  0.96694883486380068 0.033051165136199281;
	setAttr -s 2 ".wl[992].w[0:1]"  0.97920342076552747 0.020796579234472527;
	setAttr -s 3 ".wl[993].w[0:2]"  0.65489528661977681 0.34324549430677165 
		0.0018592190734516515;
	setAttr -s 3 ".wl[994].w[0:2]"  0.62160466569805872 0.37497222366630595 
		0.0034231106356354345;
	setAttr -s 4 ".wl[995].w";
	setAttr ".wl[995].w[7]" 0.047816946859577263;
	setAttr ".wl[995].w[9]" 0.22980236051105782;
	setAttr ".wl[995].w[10]" 0.64274432925567948;
	setAttr ".wl[995].w[15]" 0.07963636337368539;
	setAttr -s 5 ".wl[996].w";
	setAttr ".wl[996].w[1]" 0.25205896540280714;
	setAttr ".wl[996].w[2]" 0.37650977918445905;
	setAttr ".wl[996].w[9]" 0.069986133099389516;
	setAttr ".wl[996].w[13]" 0.056252937988197041;
	setAttr ".wl[996].w[14]" 0.24519218432514731;
	setAttr -s 5 ".wl[997].w";
	setAttr ".wl[997].w[1]" 0.12672870087736129;
	setAttr ".wl[997].w[2]" 0.31304298740083142;
	setAttr ".wl[997].w[10]" 0.095250263252503325;
	setAttr ".wl[997].w[13]" 0.10884392975058603;
	setAttr ".wl[997].w[14]" 0.35613411871871797;
	setAttr -s 5 ".wl[998].w";
	setAttr ".wl[998].w[2]" 0.1212698634397715;
	setAttr ".wl[998].w[10]" 0.1419039333222642;
	setAttr ".wl[998].w[13]" 0.15598551428496907;
	setAttr ".wl[998].w[14]" 0.46452980258430837;
	setAttr ".wl[998].w[16]" 0.11631088636868685;
	setAttr -s 4 ".wl[999].w";
	setAttr ".wl[999].w[10]" 0.16210721919792895;
	setAttr ".wl[999].w[13]" 0.19569758158062936;
	setAttr ".wl[999].w[14]" 0.48008798002351277;
	setAttr ".wl[999].w[16]" 0.16210721919792895;
	setAttr -s 6 ".wl[1000].w";
	setAttr ".wl[1000].w[2]" 0.0010453027113013845;
	setAttr ".wl[1000].w[3]" 0.0015628466070076519;
	setAttr ".wl[1000].w[10]" 0.16564555817778306;
	setAttr ".wl[1000].w[13]" 0.19721066020034816;
	setAttr ".wl[1000].w[14]" 0.46889007412577671;
	setAttr ".wl[1000].w[16]" 0.16564555817778306;
	setAttr -s 4 ".wl[1001].w";
	setAttr ".wl[1001].w[10]" 0.16210721919792895;
	setAttr ".wl[1001].w[13]" 0.19569758158062936;
	setAttr ".wl[1001].w[14]" 0.48008798002351277;
	setAttr ".wl[1001].w[16]" 0.16210721919792895;
	setAttr -s 5 ".wl[1002].w";
	setAttr ".wl[1002].w[3]" 0.10685000978884135;
	setAttr ".wl[1002].w[10]" 0.13104744795129608;
	setAttr ".wl[1002].w[13]" 0.19077368490831123;
	setAttr ".wl[1002].w[14]" 0.45963738195405368;
	setAttr ".wl[1002].w[16]" 0.11169147539749778;
	setAttr -s 5 ".wl[1003].w";
	setAttr ".wl[1003].w[3]" 0.31304839500300169;
	setAttr ".wl[1003].w[4]" 0.12673748608735727;
	setAttr ".wl[1003].w[10]" 0.095244708361012204;
	setAttr ".wl[1003].w[13]" 0.10884276095291882;
	setAttr ".wl[1003].w[14]" 0.35612664959571;
	setAttr -s 5 ".wl[1004].w";
	setAttr ".wl[1004].w[3]" 0.37652100725401766;
	setAttr ".wl[1004].w[4]" 0.25207212778820476;
	setAttr ".wl[1004].w[7]" 0.069981729474495019;
	setAttr ".wl[1004].w[13]" 0.056249179131877984;
	setAttr ".wl[1004].w[14]" 0.24517595635140463;
	setAttr -s 17 ".pm";
	setAttr ".pm[0]" -type "matrix" 0.91085300000000002 -0.41272999999999999 0 0 0.41272999999999999 0.91085300000000002 0 0
		 0 0 1 0 -6.4184619999999999 -4.0610540000000004 0 1;
	setAttr ".pm[1]" -type "matrix" 0.87368900000000005 -0.48648599999999997 0 0 0.48648599999999997 0.87368900000000005 0 0
		 0 0 1 0 -5.5942629999999998 -3.5175559999999999 0 1;
	setAttr ".pm[2]" -type "matrix" 0.87368900000000005 -0.48648599999999997 0 0 0.48648599999999997 0.87368900000000005 0 0
		 0 0 1 0 -4.6957310000000003 -3.5175559999999999 0 1;
	setAttr ".pm[3]" -type "matrix" 0.87368900000000005 -0.48648599999999997 -7.2492000000000002e-009 0
		 -0.48648599999999997 -0.87368900000000005 -1.3019000000000001e-008 0 0 1.49012e-008 -1 0
		 4.6957329999999997 3.51755 5.2415599999999996e-008 1;
	setAttr ".pm[4]" -type "matrix" 0.87368900000000005 -0.48648599999999997 3.0027200000000002e-009 0
		 -0.48648599999999997 -0.87368900000000005 5.3926400000000001e-009 0 0 -6.1722699999999998e-009 -1 0
		 5.5942619999999996 3.51756 -2.1711299999999998e-008 1;
	setAttr ".pm[5]" -type "matrix" 0.91085300000000002 -0.41272999999999999 3.0027200000000002e-009 0
		 -0.41272999999999999 -0.91085300000000002 5.3926400000000001e-009 0 5.0933200000000006e-010 -6.1512200000000006e-009 -1 0
		 6.4184659999999996 4.0610540000000004 -2.1711299999999998e-008 1;
	setAttr ".pm[6]" -type "matrix" 0 0 -1 0 0.36662800000000001 -0.93036700000000006 0 0
		 -0.93036700000000006 -0.36662800000000001 0 0 -0.085616200000000003 0.21726200000000001 -3.1291600000000002 1;
	setAttr ".pm[7]" -type "matrix" 0.66704799999999997 0.74501499999999998 1.1101600000000001e-008 0
		 0.74501499999999998 -0.66704799999999997 -9.9397900000000009e-009 0 0 1.49012e-008 -1 0
		 -0.42000700000000002 2.4870450000000002 3.7059899999999997e-008 1;
	setAttr ".pm[8]" -type "matrix" 0 0 -1 0 -0.36662800000000001 0.93036700000000006 0 0
		 0.93036700000000006 0.36662800000000001 0 0 0.085616100000000001 -0.21726200000000001 3.1291600000000002 1;
	setAttr ".pm[9]" -type "matrix" 0.66704799999999997 0.74501499999999998 0 0 -0.74501499999999998 0.66704799999999997 0 0
		 0 0 1 0 0.42000700000000002 -2.4870410000000001 0 1;
	setAttr ".pm[10]" -type "matrix" 0.86956500000000003 0 0 0 0 0.86956500000000003 0 0
		 0 0 0.86956500000000003 0 0 -1.5752489999999999 0 1;
	setAttr ".pm[11]" -type "matrix" 0.86956500000000003 0 0 0 0 0.86956500000000003 0 0
		 0 0 0.86956500000000003 0 0 -5.8425330000000004 -2.3073009999999998 1;
	setAttr ".pm[12]" -type "matrix" 0 0 -0.86956500000000003 0 -0.42036800000000002 0.76120600000000005 0 0
		 0.76120600000000005 0.42036800000000002 0 0 1.7460389999999999 -5.3609150000000003 0 1;
	setAttr ".pm[13]" -type "matrix" 0 0 -0.86956500000000003 0 0.80142199999999997 0.33744099999999999 0 0
		 0.33744099999999999 -0.80142199999999997 0 0 -5.0612329999999996 -1.5748 0 1;
	setAttr ".pm[14]" -type "matrix" 0.86956500000000003 0 0 0 0 0.86956500000000003 0 0
		 0 0 0.86956500000000003 0 0 -4.0108059999999996 0 1;
	setAttr ".pm[15]" -type "matrix" 0.86956500000000003 0 0 0 0 0.86956500000000003 0 0
		 0 0 0.86956500000000003 0 0 -2.6366320000000001 -1.758756 1;
	setAttr ".pm[16]" -type "matrix" 0.86956500000000003 0 0 0 0 0.86956500000000003 0 0
		 0 0 0.86956500000000003 0 0 -1.7349079999999999 2.0348350000000002 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 17 ".ma";
	setAttr -s 17 ".dpf[0:16]"  4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4;
	setAttr -s 17 ".lw";
	setAttr -s 17 ".lw";
	setAttr ".mi" 5;
	setAttr ".bm" 1;
	setAttr ".ucm" yes;
	setAttr -s 17 ".ifcl";
	setAttr -s 17 ".ifcl";
createNode tweak -n "tweak19";
	rename -uid "3F0B99EC-44D2-1853-6493-0C9128A78974";
createNode objectSet -n "skinCluster19Set";
	rename -uid "788BECED-4B4C-6046-130A-7CA3B728F4C1";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster19GroupId";
	rename -uid "ECE47F01-4B64-E766-0878-51B3F82EB07F";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster19GroupParts";
	rename -uid "01572AD2-4513-B2C8-7C1E-2982798B48C0";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[0:984]";
	setAttr ".irc" -type "componentList" 1 "vtx[985:1004]";
createNode objectSet -n "tweakSet19";
	rename -uid "0562F46C-4E69-4930-54F8-A781428E28F2";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId38";
	rename -uid "B22DF6F3-434F-E7C6-3992-8EAACDAD7376";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts38";
	rename -uid "21C92BF6-4C32-8AB2-4D90-3DA68D95DFD5";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode skinCluster -n "skinCluster20";
	rename -uid "012142BE-4344-700C-10F5-46B52237BAD4";
	setAttr -s 41 ".wl";
	setAttr ".wl[0].w[0]"  1;
	setAttr ".wl[1].w[0]"  1;
	setAttr ".wl[2].w[0]"  1;
	setAttr ".wl[3].w[0]"  1;
	setAttr ".wl[4].w[0]"  1;
	setAttr ".wl[5].w[0]"  1;
	setAttr ".wl[6].w[0]"  1;
	setAttr ".wl[7].w[0]"  1;
	setAttr ".wl[8].w[0]"  1;
	setAttr ".wl[9].w[0]"  1;
	setAttr ".wl[10].w[0]"  1;
	setAttr ".wl[11].w[0]"  1;
	setAttr ".wl[12].w[0]"  1;
	setAttr ".wl[13].w[0]"  1;
	setAttr ".wl[14].w[0]"  1;
	setAttr ".wl[15].w[0]"  1;
	setAttr ".wl[16].w[0]"  1;
	setAttr ".wl[17].w[0]"  1;
	setAttr ".wl[18].w[0]"  1;
	setAttr ".wl[19].w[0]"  1;
	setAttr ".wl[20].w[0]"  1;
	setAttr ".wl[21].w[0]"  1;
	setAttr ".wl[22].w[0]"  1;
	setAttr ".wl[23].w[0]"  1;
	setAttr ".wl[24].w[0]"  1;
	setAttr ".wl[25].w[0]"  1;
	setAttr ".wl[26].w[0]"  1;
	setAttr ".wl[27].w[0]"  1;
	setAttr ".wl[28].w[0]"  1;
	setAttr ".wl[29].w[0]"  1;
	setAttr ".wl[30].w[0]"  1;
	setAttr ".wl[31].w[0]"  1;
	setAttr ".wl[32].w[0]"  1;
	setAttr ".wl[33].w[0]"  1;
	setAttr ".wl[34].w[0]"  1;
	setAttr ".wl[35].w[0]"  1;
	setAttr ".wl[36].w[0]"  1;
	setAttr ".wl[37].w[0]"  1;
	setAttr ".wl[38].w[0]"  1;
	setAttr ".wl[39].w[0]"  1;
	setAttr ".wl[40].w[0]"  1;
	setAttr ".pm[0]" -type "matrix" 0.86956500000000003 0 0 0 0 0.86956500000000003 0 0
		 0 0 0.86956500000000003 0 0 -1.7349079999999999 2.0348350000000002 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 3.8914179999999998 0 1;
	setAttr ".dpf[0]"  4;
	setAttr ".mi" 5;
	setAttr ".bm" 1;
	setAttr ".ucm" yes;
createNode tweak -n "tweak20";
	rename -uid "F75B4046-433A-E4F4-A47B-179FC8BB9DBE";
createNode objectSet -n "skinCluster20Set";
	rename -uid "7A338D6C-445A-72ED-E1ED-809D5D89F3D7";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster20GroupId";
	rename -uid "F30C3739-43FA-5240-6B2E-1B8BB1166BB4";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster20GroupParts";
	rename -uid "93AEB926-4519-17C8-06EA-F295542F10A6";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[0:40]";
createNode objectSet -n "tweakSet20";
	rename -uid "899118A0-4642-5FF6-F95D-81BD6A1F4306";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId40";
	rename -uid "18F938A4-4B8B-6C39-DE43-A18084C9553A";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts40";
	rename -uid "AE52C0B8-436F-8F99-B4F7-07BB494329CF";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode displayLayer -n "Skeleton";
	rename -uid "7CA55608-47A7-153A-8199-7685967D2DA5";
	setAttr ".do" 1;
createNode blinn -n "HamsterEyes";
	rename -uid "DC8A562D-4460-8281-6341-A89D314A26B6";
	setAttr ".c" -type "float3" 0 0 0 ;
createNode shadingEngine -n "blinn1SG";
	rename -uid "94D0B50B-4622-D286-D5BF-B2B46A8D9CA6";
	setAttr ".ihi" 0;
	setAttr -s 2 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo2";
	rename -uid "1F74BF9E-4626-DA4E-870C-E7AD6B1C2757";
createNode script -n "uiConfigurationScriptNode";
	rename -uid "1B60EE3B-448E-EC4D-7BD8-7A83A56ABEA4";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n"
		+ "                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n"
		+ "                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 1\n                -height 1\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n"
		+ "                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n"
		+ "            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n"
		+ "            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n"
		+ "        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n"
		+ "                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n"
		+ "                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n"
		+ "                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 1\n                -height 1\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n"
		+ "            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n"
		+ "            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n"
		+ "            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n"
		+ "                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n"
		+ "                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n"
		+ "                -width 1\n                -height 1\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n"
		+ "            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n"
		+ "            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n"
		+ "            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 1\n                -headsUpDisplay 1\n"
		+ "                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n"
		+ "                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n"
		+ "                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 1628\n                -height 1099\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 1\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n"
		+ "            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n"
		+ "            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1628\n            -height 1099\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n"
		+ "            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -docTag \"isolOutln_fromSeln\" \n                -showShapes 0\n                -showReferenceNodes 1\n                -showReferenceMembers 1\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n"
		+ "                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n"
		+ "                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n"
		+ "            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n"
		+ "            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\tif ($useSceneConfig) {\n\t\toutlinerPanel -e -to $panelName;\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n"
		+ "                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n"
		+ "                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n"
		+ "                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n"
		+ "                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n"
		+ "                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n"
		+ "                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n"
		+ "                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n"
		+ "                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n"
		+ "                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n"
		+ "                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n"
		+ "                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n"
		+ "                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n"
		+ "                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n"
		+ "                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n"
		+ "                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n"
		+ "                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\tif ($useSceneConfig) {\n\t\tscriptedPanel -e -to $panelName;\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"profilerPanel\" -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1628\\n    -height 1099\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1628\\n    -height 1099\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "BD626BF9-42B5-40C9-FC8E-C197C3F5DE64";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode skinCluster -n "skinCluster21";
	rename -uid "760CA152-4439-4D11-3E40-66AE3E4023EC";
	setAttr -s 113 ".wl";
	setAttr ".wl[0].w[0]"  1;
	setAttr ".wl[1].w[0]"  1;
	setAttr ".wl[2].w[0]"  1;
	setAttr ".wl[3].w[0]"  1;
	setAttr ".wl[4].w[0]"  1;
	setAttr ".wl[5].w[0]"  1;
	setAttr ".wl[6].w[0]"  1;
	setAttr ".wl[7].w[0]"  1;
	setAttr ".wl[8].w[0]"  1;
	setAttr ".wl[9].w[0]"  1;
	setAttr ".wl[10].w[0]"  1;
	setAttr ".wl[11].w[0]"  1;
	setAttr ".wl[12].w[0]"  1;
	setAttr ".wl[13].w[0]"  1;
	setAttr ".wl[14].w[0]"  1;
	setAttr ".wl[15].w[0]"  1;
	setAttr ".wl[16].w[0]"  1;
	setAttr ".wl[17].w[0]"  1;
	setAttr ".wl[18].w[0]"  1;
	setAttr ".wl[19].w[0]"  1;
	setAttr ".wl[20].w[0]"  1;
	setAttr ".wl[21].w[0]"  1;
	setAttr ".wl[22].w[0]"  1;
	setAttr ".wl[23].w[0]"  1;
	setAttr ".wl[24].w[0]"  1;
	setAttr ".wl[25].w[0]"  1;
	setAttr ".wl[26].w[0]"  1;
	setAttr ".wl[27].w[0]"  1;
	setAttr ".wl[28].w[0]"  1;
	setAttr ".wl[29].w[0]"  1;
	setAttr ".wl[30].w[0]"  1;
	setAttr ".wl[31].w[0]"  1;
	setAttr ".wl[32].w[0]"  1;
	setAttr ".wl[33].w[0]"  1;
	setAttr ".wl[34].w[0]"  1;
	setAttr ".wl[35].w[0]"  1;
	setAttr ".wl[36].w[0]"  1;
	setAttr ".wl[37].w[0]"  1;
	setAttr ".wl[38].w[0]"  1;
	setAttr ".wl[39].w[0]"  1;
	setAttr ".wl[40].w[0]"  1;
	setAttr ".wl[41].w[0]"  1;
	setAttr ".wl[42].w[0]"  1;
	setAttr ".wl[43].w[0]"  1;
	setAttr ".wl[44].w[0]"  1;
	setAttr ".wl[45].w[0]"  1;
	setAttr ".wl[46].w[0]"  1;
	setAttr ".wl[47].w[0]"  1;
	setAttr ".wl[48].w[0]"  1;
	setAttr ".wl[49].w[0]"  1;
	setAttr ".wl[50].w[0]"  1;
	setAttr ".wl[51].w[0]"  1;
	setAttr ".wl[52].w[0]"  1;
	setAttr ".wl[53].w[0]"  1;
	setAttr ".wl[54].w[0]"  1;
	setAttr ".wl[55].w[0]"  1;
	setAttr ".wl[56].w[0]"  1;
	setAttr ".wl[57].w[0]"  1;
	setAttr ".wl[58].w[0]"  1;
	setAttr ".wl[59].w[0]"  1;
	setAttr ".wl[60].w[0]"  1;
	setAttr ".wl[61].w[0]"  1;
	setAttr ".wl[62].w[0]"  1;
	setAttr ".wl[63].w[0]"  1;
	setAttr ".wl[64].w[0]"  1;
	setAttr ".wl[65].w[0]"  1;
	setAttr ".wl[66].w[0]"  1;
	setAttr ".wl[67].w[0]"  1;
	setAttr ".wl[68].w[0]"  1;
	setAttr ".wl[69].w[0]"  1;
	setAttr ".wl[70].w[0]"  1;
	setAttr ".wl[71].w[0]"  1;
	setAttr ".wl[72].w[0]"  1;
	setAttr ".wl[73].w[0]"  1;
	setAttr ".wl[74].w[0]"  1;
	setAttr ".wl[75].w[0]"  1;
	setAttr ".wl[76].w[0]"  1;
	setAttr ".wl[77].w[0]"  1;
	setAttr ".wl[78].w[0]"  1;
	setAttr ".wl[79].w[0]"  1;
	setAttr ".wl[80].w[0]"  1;
	setAttr ".wl[81].w[0]"  1;
	setAttr ".wl[82].w[0]"  1;
	setAttr ".wl[83].w[0]"  1;
	setAttr ".wl[84].w[0]"  1;
	setAttr ".wl[85].w[0]"  1;
	setAttr ".wl[86].w[0]"  1;
	setAttr ".wl[87].w[0]"  1;
	setAttr ".wl[88].w[0]"  1;
	setAttr ".wl[89].w[0]"  1;
	setAttr ".wl[90].w[0]"  1;
	setAttr ".wl[91].w[0]"  1;
	setAttr ".wl[92].w[0]"  1;
	setAttr ".wl[93].w[0]"  1;
	setAttr ".wl[94].w[0]"  1;
	setAttr ".wl[95].w[0]"  1;
	setAttr ".wl[96].w[0]"  1;
	setAttr ".wl[97].w[0]"  1;
	setAttr ".wl[98].w[0]"  1;
	setAttr ".wl[99].w[0]"  1;
	setAttr ".wl[100].w[0]"  1;
	setAttr ".wl[101].w[0]"  1;
	setAttr ".wl[102].w[0]"  1;
	setAttr ".wl[103].w[0]"  1;
	setAttr ".wl[104].w[0]"  1;
	setAttr ".wl[105].w[0]"  1;
	setAttr ".wl[106].w[0]"  1;
	setAttr ".wl[107].w[0]"  1;
	setAttr ".wl[108].w[0]"  1;
	setAttr ".wl[109].w[0]"  1;
	setAttr ".wl[110].w[0]"  1;
	setAttr ".wl[111].w[0]"  1;
	setAttr ".wl[112].w[0]"  1;
	setAttr ".pm[0]" -type "matrix" 0.86956521739130399 -2.5723069210822916e-016 8.0821195564534405e-016 -0
		 2.9649897872452129e-016 0.86956521739130421 -4.1974405467869998e-017 0 -8.9916555907581177e-016 -4.1974405467869535e-017 0.86956521739130399 -0
		 -0.76010495127584954 -6.0316102341004694 -1.545197674039803 0.99999999999999989;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".dpf[0]"  4;
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
createNode tweak -n "tweak21";
	rename -uid "31451547-4D83-DCE0-D89D-D0B619ED4B24";
createNode objectSet -n "skinCluster21Set";
	rename -uid "0E1C88F9-4FA3-8653-F7F2-F9B6B4A81CD9";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster21GroupId";
	rename -uid "1DFDD717-4AA8-96C8-0046-0F81FF98A861";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster21GroupParts";
	rename -uid "0CC998F3-4126-A25F-D8B9-5ABF1D8FF6BD";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[0:112]";
createNode objectSet -n "tweakSet21";
	rename -uid "6C215F76-4090-03B1-5CC4-1DB054EADE26";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId42";
	rename -uid "5A77F0AC-4168-A4A7-0EB1-B3A5EC4A1093";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts42";
	rename -uid "BB8E73AF-4077-92FD-7FA6-819B41748EBB";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode dagPose -n "bindPose12";
	rename -uid "D553E6F2-4A88-341B-85DB-12A171C336FD";
	setAttr -s 7 ".wm";
	setAttr ".wm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wm[1]" -type "matrix" -0.044148363414217462 0 -0.99902498567745857 0 0 1 0 0
		 0.99902498567745857 0 -0.044148363414217462 0 -0.0067329159937798977 6.1693062782287598 -0.15235787630081177 1;
	setAttr ".wm[2]" -type "matrix" 1.1500000000000001 -2.8183361971427663e-018 -7.5633943552588789e-016 0
		 2.8183361971428029e-018 1.1499999999999999 6.3775584429095611e-017 0 7.5633943552588789e-016 -6.3775584429095623e-017 1.1500000000000001 0
		 -2.9813577127890678e-010 3.2564222812652588 2.5926580049517867e-009 1;
	setAttr ".wm[3]" -type "matrix" 1.1500000000000001 -2.8183361971427663e-018 -7.5633943552588789e-016 0
		 2.8183361971428029e-018 1.1499999999999999 6.3775584429095611e-017 0 7.5633943552588789e-016 -6.3775584429095623e-017 1.1500000000000001 0
		 -2.9813553161786876e-010 3.2564222812652583 2.5926577509882771e-009 1;
	setAttr ".wm[4]" -type "matrix" 1.1500000000000001 -2.8183361971427663e-018 -7.5633943552588789e-016 0
		 2.8183361971428029e-018 1.1499999999999999 6.3775584429095611e-017 0 7.5633943552588789e-016 -6.3775584429095623e-017 1.1500000000000001 0
		 -2.9813553161786882e-010 4.6124274909496297 2.5926577232326957e-009 1;
	setAttr ".wm[5]" -type "matrix" 6.7912723420983526e-016 1.0598806814087751 0.44626555006685242 0
		 -1.1428402717144213e-015 0.44626555006685237 -1.0598806814087753 0 -1.1500000000000001 1.3049398402903573e-016 1.2670420268534601e-015 0
		 -2.9813539999926882e-010 6.0670820593833916 0.58955327531680957 1;
	setAttr ".wm[6]" -type "matrix" 1.1500000000000004 3.4018759031313316e-016 -1.0688603113409682e-015 0
		 -3.9211989936317953e-016 1.1500000000000001 5.5511151231258456e-017 0 1.189146451877762e-015 5.5511151231257839e-017 1.1500000000000004 0
		 0.8741206939672268 6.9363517692155403 1.7769773251457739 1;
	setAttr -s 7 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.0067329159937798977
		 6.1693062782287598 -0.15235787630081177 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0.72254701003264055 0 0.69132179069727817 1
		 1 1 no;
	setAttr ".xm[2]" -type "matrix" "xform" 1.1500000000000001 1.1499999999999999 1.1500000000000001 0
		 -1.6149590442363042 -2.1419699791636049e-008 0 -0.15250657498836517 -2.912883996963501
		 1.7362641494985239e-016 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 1.0709849923573602e-008 0.99999999999999989 1
		 1 1 no;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 0 0 0 0 2.0840090261312446e-016
		 -4.4408920985006262e-016 -2.2083783443810015e-016 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 1 0 0 0 1 0.86956521739130421 0.86956521739130443 0.86956521739130421 no;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 0 0 0 0 -2.8897380991611386e-018
		 1.1791349649429321 -8.952661134700634e-017 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 no;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 0 0 0 0 -2.2581527796885223e-016
		 1.2649170160293579 0.51265501976013184 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.3911339284509423 -0.58907915428619007 0.39113392845094241 0.5890791542861904 1
		 1 1 no;
	setAttr ".xm[6]" -type "matrix" "xform" 1 1 1 -5.5511151231257827e-017 -5.5511151231257821e-017
		 2.2204460492503131e-016 0 1.097337330165927 -0.65830070762888027 -0.76010495153509627 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.39113392845094241 0.58907915428619007 -0.39113392845094219 0.5890791542861904 1
		 1 1 no;
	setAttr -s 7 ".m";
	setAttr -s 7 ".p";
	setAttr -s 7 ".g[0:6]" yes yes yes yes yes yes no;
	setAttr ".bp" yes;
createNode skinCluster -n "skinCluster22";
	rename -uid "260B9F1D-4BA4-D621-2F8F-4C8E93C6F6D5";
	setAttr -s 113 ".wl";
	setAttr ".wl[0].w[0]"  1;
	setAttr ".wl[1].w[0]"  1;
	setAttr ".wl[2].w[0]"  1;
	setAttr ".wl[3].w[0]"  1;
	setAttr ".wl[4].w[0]"  1;
	setAttr ".wl[5].w[0]"  1;
	setAttr ".wl[6].w[0]"  1;
	setAttr ".wl[7].w[0]"  1;
	setAttr ".wl[8].w[0]"  1;
	setAttr ".wl[9].w[0]"  1;
	setAttr ".wl[10].w[0]"  1;
	setAttr ".wl[11].w[0]"  1;
	setAttr ".wl[12].w[0]"  1;
	setAttr ".wl[13].w[0]"  1;
	setAttr ".wl[14].w[0]"  1;
	setAttr ".wl[15].w[0]"  1;
	setAttr ".wl[16].w[0]"  1;
	setAttr ".wl[17].w[0]"  1;
	setAttr ".wl[18].w[0]"  1;
	setAttr ".wl[19].w[0]"  1;
	setAttr ".wl[20].w[0]"  1;
	setAttr ".wl[21].w[0]"  1;
	setAttr ".wl[22].w[0]"  1;
	setAttr ".wl[23].w[0]"  1;
	setAttr ".wl[24].w[0]"  1;
	setAttr ".wl[25].w[0]"  1;
	setAttr ".wl[26].w[0]"  1;
	setAttr ".wl[27].w[0]"  1;
	setAttr ".wl[28].w[0]"  1;
	setAttr ".wl[29].w[0]"  1;
	setAttr ".wl[30].w[0]"  1;
	setAttr ".wl[31].w[0]"  1;
	setAttr ".wl[32].w[0]"  1;
	setAttr ".wl[33].w[0]"  1;
	setAttr ".wl[34].w[0]"  1;
	setAttr ".wl[35].w[0]"  1;
	setAttr ".wl[36].w[0]"  1;
	setAttr ".wl[37].w[0]"  1;
	setAttr ".wl[38].w[0]"  1;
	setAttr ".wl[39].w[0]"  1;
	setAttr ".wl[40].w[0]"  1;
	setAttr ".wl[41].w[0]"  1;
	setAttr ".wl[42].w[0]"  1;
	setAttr ".wl[43].w[0]"  1;
	setAttr ".wl[44].w[0]"  1;
	setAttr ".wl[45].w[0]"  1;
	setAttr ".wl[46].w[0]"  1;
	setAttr ".wl[47].w[0]"  1;
	setAttr ".wl[48].w[0]"  1;
	setAttr ".wl[49].w[0]"  1;
	setAttr ".wl[50].w[0]"  1;
	setAttr ".wl[51].w[0]"  1;
	setAttr ".wl[52].w[0]"  1;
	setAttr ".wl[53].w[0]"  1;
	setAttr ".wl[54].w[0]"  1;
	setAttr ".wl[55].w[0]"  1;
	setAttr ".wl[56].w[0]"  1;
	setAttr ".wl[57].w[0]"  1;
	setAttr ".wl[58].w[0]"  1;
	setAttr ".wl[59].w[0]"  1;
	setAttr ".wl[60].w[0]"  1;
	setAttr ".wl[61].w[0]"  1;
	setAttr ".wl[62].w[0]"  1;
	setAttr ".wl[63].w[0]"  1;
	setAttr ".wl[64].w[0]"  1;
	setAttr ".wl[65].w[0]"  1;
	setAttr ".wl[66].w[0]"  1;
	setAttr ".wl[67].w[0]"  1;
	setAttr ".wl[68].w[0]"  1;
	setAttr ".wl[69].w[0]"  1;
	setAttr ".wl[70].w[0]"  1;
	setAttr ".wl[71].w[0]"  1;
	setAttr ".wl[72].w[0]"  1;
	setAttr ".wl[73].w[0]"  1;
	setAttr ".wl[74].w[0]"  1;
	setAttr ".wl[75].w[0]"  1;
	setAttr ".wl[76].w[0]"  1;
	setAttr ".wl[77].w[0]"  1;
	setAttr ".wl[78].w[0]"  1;
	setAttr ".wl[79].w[0]"  1;
	setAttr ".wl[80].w[0]"  1;
	setAttr ".wl[81].w[0]"  1;
	setAttr ".wl[82].w[0]"  1;
	setAttr ".wl[83].w[0]"  1;
	setAttr ".wl[84].w[0]"  1;
	setAttr ".wl[85].w[0]"  1;
	setAttr ".wl[86].w[0]"  1;
	setAttr ".wl[87].w[0]"  1;
	setAttr ".wl[88].w[0]"  1;
	setAttr ".wl[89].w[0]"  1;
	setAttr ".wl[90].w[0]"  1;
	setAttr ".wl[91].w[0]"  1;
	setAttr ".wl[92].w[0]"  1;
	setAttr ".wl[93].w[0]"  1;
	setAttr ".wl[94].w[0]"  1;
	setAttr ".wl[95].w[0]"  1;
	setAttr ".wl[96].w[0]"  1;
	setAttr ".wl[97].w[0]"  1;
	setAttr ".wl[98].w[0]"  1;
	setAttr ".wl[99].w[0]"  1;
	setAttr ".wl[100].w[0]"  1;
	setAttr ".wl[101].w[0]"  1;
	setAttr ".wl[102].w[0]"  1;
	setAttr ".wl[103].w[0]"  1;
	setAttr ".wl[104].w[0]"  1;
	setAttr ".wl[105].w[0]"  1;
	setAttr ".wl[106].w[0]"  1;
	setAttr ".wl[107].w[0]"  1;
	setAttr ".wl[108].w[0]"  1;
	setAttr ".wl[109].w[0]"  1;
	setAttr ".wl[110].w[0]"  1;
	setAttr ".wl[111].w[0]"  1;
	setAttr ".wl[112].w[0]"  1;
	setAttr ".pm[0]" -type "matrix" 0.86956521739130443 1.5028908132406235e-015 -2.837234835895996e-016 -0
		 1.3101808707735777e-015 -0.86956521739130455 -4.197440546786866e-017 0 -4.1645989619530939e-016 -6.5404892612530571e-031 -0.86956521739130443 -0
		 0.760105217391296 6.0316086956521779 1.5452000000000004 0.99999999999999989;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".dpf[0]"  4;
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
createNode tweak -n "tweak22";
	rename -uid "A8C1C7B3-4B4B-089E-FDD2-17B81BAE7969";
createNode objectSet -n "skinCluster22Set";
	rename -uid "C27B2A49-4127-77FF-2B43-D9B7D2CA9289";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster22GroupId";
	rename -uid "3B36F618-4DAF-9A53-9B3E-24BE0B44B14A";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster22GroupParts";
	rename -uid "F2A2EAF6-498F-688A-1D33-63AF9D82496B";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[0:112]";
createNode objectSet -n "tweakSet22";
	rename -uid "CD698CDC-48C7-7B84-BE55-8BBF94E952EB";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId44";
	rename -uid "A47F7F1D-47EB-6F19-E3DA-CEB9E335B101";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts44";
	rename -uid "F7735D07-421F-3ADE-6E99-29BCAF25C092";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode dagPose -n "bindPose13";
	rename -uid "41CE9C37-444E-D94D-F9D8-F9A29605DE76";
	setAttr -s 7 ".wm";
	setAttr ".wm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wm[1]" -type "matrix" -0.044148363414217462 0 -0.99902498567745857 0 0 1 0 0
		 0.99902498567745857 0 -0.044148363414217462 0 -0.0067329159937798977 6.1693062782287598 -0.15235787630081177 1;
	setAttr ".wm[2]" -type "matrix" 1.1500000000000001 -2.8183361971427663e-018 -7.5633943552588789e-016 0
		 2.8183361971428029e-018 1.1499999999999999 6.3775584429095611e-017 0 7.5633943552588789e-016 -6.3775584429095623e-017 1.1500000000000001 0
		 -2.9813577127890678e-010 3.2564222812652588 2.5926580049517867e-009 1;
	setAttr ".wm[3]" -type "matrix" 1.1500000000000001 -2.8183361971427663e-018 -7.5633943552588789e-016 0
		 2.8183361971428029e-018 1.1499999999999999 6.3775584429095611e-017 0 7.5633943552588789e-016 -6.3775584429095623e-017 1.1500000000000001 0
		 -2.9813553161786876e-010 3.2564222812652583 2.5926577509882771e-009 1;
	setAttr ".wm[4]" -type "matrix" 1.1500000000000001 -2.8183361971427663e-018 -7.5633943552588789e-016 0
		 2.8183361971428029e-018 1.1499999999999999 6.3775584429095611e-017 0 7.5633943552588789e-016 -6.3775584429095623e-017 1.1500000000000001 0
		 -2.9813553161786882e-010 4.6124274909496297 2.5926577232326957e-009 1;
	setAttr ".wm[5]" -type "matrix" 6.7912723420983526e-016 1.0598806814087751 0.44626555006685242 0
		 -1.1428402717144213e-015 0.44626555006685237 -1.0598806814087753 0 -1.1500000000000001 1.3049398402903573e-016 1.2670420268534601e-015 0
		 -2.9813539999926882e-010 6.0670820593833916 0.58955327531680957 1;
	setAttr ".wm[6]" -type "matrix" 1.1499999999999999 1.9875731005107242e-015 -3.7522430704724554e-016 0
		 1.7327142015980558e-015 -1.1499999999999997 5.5511151231255719e-017 0 -5.5076821271829655e-016 -8.6926455386461752e-032 -1.1499999999999999 0
		 -0.87412100000000004 6.9363500000000009 1.7769800000000002 1;
	setAttr -s 7 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.0067329159937798977
		 6.1693062782287598 -0.15235787630081177 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0.72254701003264055 0 0.69132179069727817 1
		 1 1 no;
	setAttr ".xm[2]" -type "matrix" "xform" 1.1500000000000001 1.1499999999999999 1.1500000000000001 0
		 -1.6149590442363042 -2.1419699791636049e-008 0 -0.15250657498836517 -2.912883996963501
		 1.7362641494985239e-016 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 1.0709849923573602e-008 0.99999999999999989 1
		 1 1 no;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 0 0 0 0 2.0840090261312446e-016
		 -4.4408920985006262e-016 -2.2083783443810015e-016 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 1 0 0 0 1 0.86956521739130421 0.86956521739130443 0.86956521739130421 no;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 0 0 0 0 -2.8897380991611386e-018
		 1.1791349649429321 -8.952661134700634e-017 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 no;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 0 0 0 0 -2.2581527796885223e-016
		 1.2649170160293579 0.51265501976013184 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.3911339284509423 -0.58907915428619007 0.39113392845094241 0.5890791542861904 1
		 1 1 no;
	setAttr ".xm[6]" -type "matrix" "xform" 1 1 1 -5.5511151231257827e-017 -5.5511151231257821e-017
		 2.2204460492503131e-016 0 1.0973368148826914 -0.6583034483217074 0.76010521713205736 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.58907915428619084 0.39113392845094197 0.58907915428618973 0.39113392845094269 1
		 1 1 no;
	setAttr -s 7 ".m";
	setAttr -s 7 ".p";
	setAttr -s 7 ".g[0:6]" yes yes yes yes yes yes no;
	setAttr ".bp" yes;
createNode skinCluster -n "skinCluster23";
	rename -uid "5C39DB2F-4A51-AB3D-C6B8-85A37ECE0CE7";
	setAttr ".bw[83]"  -1.#QNAN;
	setAttr -s 99 ".wl";
	setAttr ".wl[0].w[0]"  1;
	setAttr ".wl[1].w[0]"  1;
	setAttr ".wl[2].w[0]"  1;
	setAttr ".wl[3].w[0]"  1;
	setAttr ".wl[4].w[0]"  1;
	setAttr ".wl[5].w[0]"  1;
	setAttr ".wl[6].w[0]"  1;
	setAttr ".wl[7].w[0]"  1;
	setAttr ".wl[8].w[0]"  1;
	setAttr ".wl[9].w[0]"  1;
	setAttr ".wl[10].w[0]"  1;
	setAttr ".wl[11].w[0]"  1;
	setAttr ".wl[12].w[0]"  1;
	setAttr ".wl[13].w[0]"  1;
	setAttr ".wl[14].w[0]"  1;
	setAttr ".wl[15].w[0]"  1;
	setAttr ".wl[16].w[0]"  1;
	setAttr ".wl[17].w[0]"  1;
	setAttr ".wl[18].w[0]"  1;
	setAttr ".wl[19].w[0]"  1;
	setAttr ".wl[20].w[0]"  1;
	setAttr ".wl[21].w[0]"  1;
	setAttr ".wl[22].w[0]"  1;
	setAttr ".wl[23].w[0]"  1;
	setAttr ".wl[24].w[0]"  1;
	setAttr ".wl[25].w[0]"  1;
	setAttr ".wl[26].w[0]"  1;
	setAttr ".wl[27].w[0]"  1;
	setAttr ".wl[28].w[0]"  1;
	setAttr ".wl[29].w[0]"  1;
	setAttr ".wl[30].w[0]"  1;
	setAttr ".wl[31].w[0]"  1;
	setAttr ".wl[32].w[0]"  1;
	setAttr ".wl[33].w[0]"  1;
	setAttr ".wl[34].w[0]"  1;
	setAttr ".wl[35].w[0]"  1;
	setAttr ".wl[36].w[0]"  1;
	setAttr ".wl[37].w[0]"  1;
	setAttr ".wl[38].w[0]"  1;
	setAttr ".wl[39].w[0]"  1;
	setAttr ".wl[40].w[0]"  1;
	setAttr ".wl[41].w[0]"  1;
	setAttr ".wl[42].w[0]"  1;
	setAttr ".wl[43].w[0]"  1;
	setAttr ".wl[44].w[0]"  1;
	setAttr ".wl[45].w[0]"  1;
	setAttr ".wl[46].w[0]"  1;
	setAttr ".wl[47].w[0]"  1;
	setAttr ".wl[48].w[0]"  1;
	setAttr ".wl[49].w[0]"  1;
	setAttr ".wl[50].w[0]"  1;
	setAttr ".wl[51].w[0]"  1;
	setAttr ".wl[52].w[0]"  1;
	setAttr ".wl[53].w[0]"  1;
	setAttr ".wl[54].w[0]"  1;
	setAttr ".wl[55].w[0]"  1;
	setAttr ".wl[56].w[0]"  1;
	setAttr ".wl[57].w[0]"  1;
	setAttr ".wl[58].w[0]"  1;
	setAttr ".wl[59].w[0]"  1;
	setAttr ".wl[60].w[0]"  1;
	setAttr ".wl[61].w[0]"  1;
	setAttr ".wl[62].w[0]"  1;
	setAttr ".wl[63].w[0]"  1;
	setAttr ".wl[64].w[0]"  1;
	setAttr ".wl[65].w[0]"  1;
	setAttr ".wl[66].w[0]"  1;
	setAttr ".wl[67].w[0]"  1;
	setAttr ".wl[68].w[0]"  1;
	setAttr ".wl[69].w[0]"  1;
	setAttr ".wl[70].w[0]"  1;
	setAttr ".wl[71].w[0]"  1;
	setAttr ".wl[72].w[0]"  1;
	setAttr ".wl[73].w[0]"  1;
	setAttr ".wl[74].w[0]"  1;
	setAttr ".wl[75].w[0]"  1;
	setAttr ".wl[76].w[0]"  1;
	setAttr ".wl[77].w[0]"  1;
	setAttr ".wl[78].w[0]"  1;
	setAttr ".wl[79].w[0]"  1;
	setAttr ".wl[80].w[0]"  1;
	setAttr ".wl[81].w[0]"  1;
	setAttr ".wl[82].w[0]"  1;
	setAttr ".wl[83].w[0]"  1;
	setAttr ".wl[84].w[0]"  1;
	setAttr ".wl[85].w[0]"  1;
	setAttr ".wl[86].w[0]"  1;
	setAttr ".wl[87].w[0]"  1;
	setAttr ".wl[88].w[0]"  1;
	setAttr ".wl[89].w[0]"  1;
	setAttr ".wl[90].w[0]"  1;
	setAttr ".wl[91].w[0]"  1;
	setAttr ".wl[92].w[0]"  1;
	setAttr ".wl[93].w[0]"  1;
	setAttr ".wl[94].w[0]"  1;
	setAttr ".wl[95].w[0]"  1;
	setAttr ".wl[96].w[0]"  1;
	setAttr ".wl[97].w[0]"  1;
	setAttr ".wl[98].w[0]"  1;
	setAttr ".pm[0]" -type "matrix" 0.86956521739130421 1.5731348050338038e-015 -2.0177215983088975e-016 -0
		 1.4549925696377286e-015 -0.86956521739130455 -4.1974405467868408e-017 0 -2.2337763104310814e-016 4.1974405467869505e-017 -0.86956521739130443 -0
		 0.76010521739129455 6.0316086956521779 1.5452000000000004 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 3.8914182186126709 0 1;
	setAttr ".dpf[0]"  4;
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
createNode tweak -n "tweak23";
	rename -uid "89985663-4978-A070-0785-BD8E419CF1DA";
createNode objectSet -n "skinCluster23Set";
	rename -uid "9927B1E0-45C5-2554-7E6C-5FB3BE983601";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster23GroupId";
	rename -uid "4ACB819C-4EA1-B0CF-6702-BF8D67B9BAA6";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster23GroupParts";
	rename -uid "A7AEB1BC-43F2-4F69-9CAE-479D8B49CBD9";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[0:98]";
createNode objectSet -n "tweakSet23";
	rename -uid "69A39015-417B-B8EC-9F1D-459C6DA0331E";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId46";
	rename -uid "AE09F3DE-4F66-756D-1DB0-AEAD932F6B2C";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts46";
	rename -uid "F5A22FC8-4CD7-807C-5C55-46896C90712B";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode dagPose -n "bindPose14";
	rename -uid "4531C8DE-498A-1321-008F-AB88D4A39834";
	setAttr -s 7 ".wm";
	setAttr ".wm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wm[1]" -type "matrix" -0.044148363414217462 0 -0.99902498567745857 0 0 1 0 0
		 0.99902498567745857 0 -0.044148363414217462 0 -0.0067329159937798977 6.1693062782287598 -0.15235787630081177 1;
	setAttr ".wm[2]" -type "matrix" 1.1500000000000001 -2.8183361971427663e-018 -7.5633943552588789e-016 0
		 2.8183361971428029e-018 1.1499999999999999 6.3775584429095611e-017 0 7.5633943552588789e-016 -6.3775584429095623e-017 1.1500000000000001 0
		 -2.9813577127890678e-010 3.2564222812652588 2.5926580049517867e-009 1;
	setAttr ".wm[3]" -type "matrix" 1.1500000000000001 -2.8183361971427663e-018 -7.5633943552588789e-016 0
		 2.8183361971428029e-018 1.1499999999999999 6.3775584429095611e-017 0 7.5633943552588789e-016 -6.3775584429095623e-017 1.1500000000000001 0
		 -2.9813553161786876e-010 3.2564222812652583 2.5926577509882771e-009 1;
	setAttr ".wm[4]" -type "matrix" 1.1500000000000001 -2.8183361971427663e-018 -7.5633943552588789e-016 0
		 2.8183361971428029e-018 1.1499999999999999 6.3775584429095611e-017 0 7.5633943552588789e-016 -6.3775584429095623e-017 1.1500000000000001 0
		 -2.9813553161786882e-010 4.6124274909496297 2.5926577232326957e-009 1;
	setAttr ".wm[5]" -type "matrix" 6.7912723420983526e-016 1.0598806814087751 0.44626555006685242 0
		 -1.1428402717144213e-015 0.44626555006685237 -1.0598806814087753 0 -1.1500000000000001 1.3049398402903573e-016 1.2670420268534601e-015 0
		 -2.9813539999926882e-010 6.0670820593833916 0.58955327531680957 1;
	setAttr ".wm[6]" -type "matrix" 1.1500000000000001 2.0804707796572051e-015 -2.6684368137635179e-016 0
		 1.9242276733458957e-015 -1.1499999999999997 5.5511151231255504e-017 0 -2.9541691705451047e-016 -5.5511151231257938e-017 -1.1499999999999999 0
		 -0.87412100000000004 6.9363500000000009 1.7769800000000002 1;
	setAttr -s 7 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.0067329159937798977
		 6.1693062782287598 -0.15235787630081177 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0.72254701003264055 0 0.69132179069727817 1
		 1 1 no;
	setAttr ".xm[2]" -type "matrix" "xform" 1.1500000000000001 1.1499999999999999 1.1500000000000001 0
		 -1.6149590442363042 -2.1419699791636049e-008 0 -0.15250657498836517 -2.912883996963501
		 1.7362641494985239e-016 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 1.0709849923573602e-008 0.99999999999999989 1
		 1 1 no;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 0 0 0 0 2.0840090261312446e-016
		 -4.4408920985006262e-016 -2.2083783443810015e-016 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 1 0 0 0 1 0.86956521739130421 0.86956521739130443 0.86956521739130421 no;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 0 0 0 0 -2.8897380991611386e-018
		 1.1791349649429321 -8.952661134700634e-017 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 no;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 0 0 0 0 -2.2581527796885223e-016
		 1.2649170160293579 0.51265501976013184 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.3911339284509423 -0.58907915428619007 0.39113392845094241 0.5890791542861904 1
		 1 1 no;
	setAttr ".xm[6]" -type "matrix" "xform" 1 1 1 -5.5511151231257827e-017 -5.5511151231257821e-017
		 2.2204460492503131e-016 0 1.0973368148826914 -0.6583034483217074 0.76010521713205736 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.58907915428619084 0.39113392845094191 0.58907915428618962 0.39113392845094269 1
		 1 1 no;
	setAttr -s 7 ".m";
	setAttr -s 7 ".p";
	setAttr -s 7 ".g[0:6]" yes yes yes yes yes yes no;
	setAttr ".bp" yes;
createNode skinCluster -n "skinCluster24";
	rename -uid "44D47D5A-4C76-BFB4-C891-0E9C930B0E15";
	setAttr ".bw[83]"  -1.#QNAN;
	setAttr -s 99 ".wl";
	setAttr ".wl[0].w[0]"  1;
	setAttr ".wl[1].w[0]"  1;
	setAttr ".wl[2].w[0]"  1;
	setAttr ".wl[3].w[0]"  1;
	setAttr ".wl[4].w[0]"  1;
	setAttr ".wl[5].w[0]"  1;
	setAttr ".wl[6].w[0]"  1;
	setAttr ".wl[7].w[0]"  1;
	setAttr ".wl[8].w[0]"  1;
	setAttr ".wl[9].w[0]"  1;
	setAttr ".wl[10].w[0]"  1;
	setAttr ".wl[11].w[0]"  1;
	setAttr ".wl[12].w[0]"  1;
	setAttr ".wl[13].w[0]"  1;
	setAttr ".wl[14].w[0]"  1;
	setAttr ".wl[15].w[0]"  1;
	setAttr ".wl[16].w[0]"  1;
	setAttr ".wl[17].w[0]"  1;
	setAttr ".wl[18].w[0]"  1;
	setAttr ".wl[19].w[0]"  1;
	setAttr ".wl[20].w[0]"  1;
	setAttr ".wl[21].w[0]"  1;
	setAttr ".wl[22].w[0]"  1;
	setAttr ".wl[23].w[0]"  1;
	setAttr ".wl[24].w[0]"  1;
	setAttr ".wl[25].w[0]"  1;
	setAttr ".wl[26].w[0]"  1;
	setAttr ".wl[27].w[0]"  1;
	setAttr ".wl[28].w[0]"  1;
	setAttr ".wl[29].w[0]"  1;
	setAttr ".wl[30].w[0]"  1;
	setAttr ".wl[31].w[0]"  1;
	setAttr ".wl[32].w[0]"  1;
	setAttr ".wl[33].w[0]"  1;
	setAttr ".wl[34].w[0]"  1;
	setAttr ".wl[35].w[0]"  1;
	setAttr ".wl[36].w[0]"  1;
	setAttr ".wl[37].w[0]"  1;
	setAttr ".wl[38].w[0]"  1;
	setAttr ".wl[39].w[0]"  1;
	setAttr ".wl[40].w[0]"  1;
	setAttr ".wl[41].w[0]"  1;
	setAttr ".wl[42].w[0]"  1;
	setAttr ".wl[43].w[0]"  1;
	setAttr ".wl[44].w[0]"  1;
	setAttr ".wl[45].w[0]"  1;
	setAttr ".wl[46].w[0]"  1;
	setAttr ".wl[47].w[0]"  1;
	setAttr ".wl[48].w[0]"  1;
	setAttr ".wl[49].w[0]"  1;
	setAttr ".wl[50].w[0]"  1;
	setAttr ".wl[51].w[0]"  1;
	setAttr ".wl[52].w[0]"  1;
	setAttr ".wl[53].w[0]"  1;
	setAttr ".wl[54].w[0]"  1;
	setAttr ".wl[55].w[0]"  1;
	setAttr ".wl[56].w[0]"  1;
	setAttr ".wl[57].w[0]"  1;
	setAttr ".wl[58].w[0]"  1;
	setAttr ".wl[59].w[0]"  1;
	setAttr ".wl[60].w[0]"  1;
	setAttr ".wl[61].w[0]"  1;
	setAttr ".wl[62].w[0]"  1;
	setAttr ".wl[63].w[0]"  1;
	setAttr ".wl[64].w[0]"  1;
	setAttr ".wl[65].w[0]"  1;
	setAttr ".wl[66].w[0]"  1;
	setAttr ".wl[67].w[0]"  1;
	setAttr ".wl[68].w[0]"  1;
	setAttr ".wl[69].w[0]"  1;
	setAttr ".wl[70].w[0]"  1;
	setAttr ".wl[71].w[0]"  1;
	setAttr ".wl[72].w[0]"  1;
	setAttr ".wl[73].w[0]"  1;
	setAttr ".wl[74].w[0]"  1;
	setAttr ".wl[75].w[0]"  1;
	setAttr ".wl[76].w[0]"  1;
	setAttr ".wl[77].w[0]"  1;
	setAttr ".wl[78].w[0]"  1;
	setAttr ".wl[79].w[0]"  1;
	setAttr ".wl[80].w[0]"  1;
	setAttr ".wl[81].w[0]"  1;
	setAttr ".wl[82].w[0]"  1;
	setAttr ".wl[83].w[0]"  1;
	setAttr ".wl[84].w[0]"  1;
	setAttr ".wl[85].w[0]"  1;
	setAttr ".wl[86].w[0]"  1;
	setAttr ".wl[87].w[0]"  1;
	setAttr ".wl[88].w[0]"  1;
	setAttr ".wl[89].w[0]"  1;
	setAttr ".wl[90].w[0]"  1;
	setAttr ".wl[91].w[0]"  1;
	setAttr ".wl[92].w[0]"  1;
	setAttr ".wl[93].w[0]"  1;
	setAttr ".wl[94].w[0]"  1;
	setAttr ".wl[95].w[0]"  1;
	setAttr ".wl[96].w[0]"  1;
	setAttr ".wl[97].w[0]"  1;
	setAttr ".wl[98].w[0]"  1;
	setAttr ".pm[0]" -type "matrix" 0.86956521739130399 -2.5723069210822916e-016 8.0821195564534405e-016 -0
		 2.9649897872452129e-016 0.86956521739130421 -4.1974405467869998e-017 0 -8.9916555907581177e-016 -4.1974405467869535e-017 0.86956521739130399 -0
		 -0.76010495127584954 -6.0316102341004694 -1.545197674039803 0.99999999999999989;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 3.8914182186126709 0 1;
	setAttr ".dpf[0]"  4;
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
createNode tweak -n "tweak24";
	rename -uid "11CEF25F-4F3C-931D-4B61-1DA818F3865B";
createNode objectSet -n "skinCluster24Set";
	rename -uid "0EBED09F-48CC-5406-1904-F0841E36D389";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster24GroupId";
	rename -uid "8D0A9F90-43AE-FA88-713E-EC99CEA00BAE";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster24GroupParts";
	rename -uid "28483E1F-43CF-3C42-7B04-BE84FE93CFB1";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[0:98]";
createNode objectSet -n "tweakSet24";
	rename -uid "5CB5C7C2-44E6-9B8E-6BFA-F38FBEBAEBDB";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId48";
	rename -uid "B01DEBA6-4897-2EEF-7532-5487384D7674";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts48";
	rename -uid "E4373386-48A9-6A4F-28B1-B9B7E59335A0";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode dagPose -n "bindPose15";
	rename -uid "196606A4-45F7-5C4B-6E78-90B5E0228E6C";
	setAttr -s 7 ".wm";
	setAttr ".wm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wm[1]" -type "matrix" -0.044148363414217462 0 -0.99902498567745857 0 0 1 0 0
		 0.99902498567745857 0 -0.044148363414217462 0 -0.0067329159937798977 6.1693062782287598 -0.15235787630081177 1;
	setAttr ".wm[2]" -type "matrix" 1.1500000000000001 -2.8183361971427663e-018 -7.5633943552588789e-016 0
		 2.8183361971428029e-018 1.1499999999999999 6.3775584429095611e-017 0 7.5633943552588789e-016 -6.3775584429095623e-017 1.1500000000000001 0
		 -2.9813577127890678e-010 3.2564222812652588 2.5926580049517867e-009 1;
	setAttr ".wm[3]" -type "matrix" 1.1500000000000001 -2.8183361971427663e-018 -7.5633943552588789e-016 0
		 2.8183361971428029e-018 1.1499999999999999 6.3775584429095611e-017 0 7.5633943552588789e-016 -6.3775584429095623e-017 1.1500000000000001 0
		 -2.9813553161786876e-010 3.2564222812652583 2.5926577509882771e-009 1;
	setAttr ".wm[4]" -type "matrix" 1.1500000000000001 -2.8183361971427663e-018 -7.5633943552588789e-016 0
		 2.8183361971428029e-018 1.1499999999999999 6.3775584429095611e-017 0 7.5633943552588789e-016 -6.3775584429095623e-017 1.1500000000000001 0
		 -2.9813553161786882e-010 4.6124274909496297 2.5926577232326957e-009 1;
	setAttr ".wm[5]" -type "matrix" 6.7912723420983526e-016 1.0598806814087751 0.44626555006685242 0
		 -1.1428402717144213e-015 0.44626555006685237 -1.0598806814087753 0 -1.1500000000000001 1.3049398402903573e-016 1.2670420268534601e-015 0
		 -2.9813539999926882e-010 6.0670820593833916 0.58955327531680957 1;
	setAttr ".wm[6]" -type "matrix" 1.1500000000000004 3.4018759031313316e-016 -1.0688603113409682e-015 0
		 -3.9211989936317953e-016 1.1500000000000001 5.5511151231258456e-017 0 1.189146451877762e-015 5.5511151231257839e-017 1.1500000000000004 0
		 0.8741206939672268 6.9363517692155403 1.7769773251457739 1;
	setAttr -s 7 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.0067329159937798977
		 6.1693062782287598 -0.15235787630081177 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0.72254701003264055 0 0.69132179069727817 1
		 1 1 no;
	setAttr ".xm[2]" -type "matrix" "xform" 1.1500000000000001 1.1499999999999999 1.1500000000000001 0
		 -1.6149590442363042 -2.1419699791636049e-008 0 -0.15250657498836517 -2.912883996963501
		 1.7362641494985239e-016 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 1.0709849923573602e-008 0.99999999999999989 1
		 1 1 no;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 0 0 0 0 2.0840090261312446e-016
		 -4.4408920985006262e-016 -2.2083783443810015e-016 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 1 0 0 0 1 0.86956521739130421 0.86956521739130443 0.86956521739130421 no;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 0 0 0 0 -2.8897380991611386e-018
		 1.1791349649429321 -8.952661134700634e-017 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 no;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 0 0 0 0 -2.2581527796885223e-016
		 1.2649170160293579 0.51265501976013184 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.3911339284509423 -0.58907915428619007 0.39113392845094241 0.5890791542861904 1
		 1 1 no;
	setAttr ".xm[6]" -type "matrix" "xform" 1 1 1 -5.5511151231257827e-017 -5.5511151231257821e-017
		 2.2204460492503131e-016 0 1.097337330165927 -0.65830070762888027 -0.76010495153509627 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.39113392845094241 0.58907915428619007 -0.39113392845094219 0.5890791542861904 1
		 1 1 no;
	setAttr -s 7 ".m";
	setAttr -s 7 ".p";
	setAttr -s 7 ".g[0:6]" yes yes yes yes yes yes no;
	setAttr ".bp" yes;
select -ne :time1;
	setAttr ".o" 26;
	setAttr ".unw" 26;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 4 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 6 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
select -ne :defaultRenderingList1;
select -ne :defaultTextureList1;
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "Hamster.s" "hamsterRotCenter.is";
connectAttr "hamsterRotCenter.s" "hamsterRoot.is";
connectAttr "Skeleton.di" "hamsterRoot.do";
connectAttr "hamsterRoot.s" "hips.is";
connectAttr "hips.s" "Tail.is";
connectAttr "transform1.s" "l_leg.is";
connectAttr "l_leg.s" "l_foot.is";
connectAttr "l_foot.s" "l_toeTip.is";
connectAttr "transform1.s" "r_leg.is";
connectAttr "r_leg.s" "r_foot.is";
connectAttr "r_foot.s" "r_toeTip.is";
connectAttr "hamsterRoot.s" "Belly.is";
connectAttr "hamsterRoot.s" "torsoMid.is";
connectAttr "torsoMid.s" "torso.is";
connectAttr "torso.s" "head.is";
connectAttr "head.s" "|Hamster|hamsterRotCenter|hamsterRoot|torsoMid|torso|head|l_ear.is"
		;
connectAttr "head.s" "|Hamster|hamsterRotCenter|hamsterRoot|torsoMid|torso|head|l_eye.is"
		;
connectAttr "head.s" "|Hamster|hamsterRotCenter|hamsterRoot|torsoMid|torso|head|l_t_eyeLid.is"
		;
connectAttr "head.s" "|Hamster|hamsterRotCenter|hamsterRoot|torsoMid|torso|head|l_b_eyeLid.is"
		;
connectAttr "head.s" "|Hamster|hamsterRotCenter|hamsterRoot|torsoMid|torso|head|l_eyebrow.is"
		;
connectAttr "head.s" "jaw.is";
connectAttr "jaw.s" "jawTip.is";
connectAttr "head.s" "hair1.is";
connectAttr "hair1.s" "hair2.is";
connectAttr "hair2.s" "hair3.is";
connectAttr "head.s" "|Hamster|hamsterRotCenter|hamsterRoot|torsoMid|torso|head|r_ear.is"
		;
connectAttr "head.s" "|Hamster|hamsterRotCenter|hamsterRoot|torsoMid|torso|head|r_eye.is"
		;
connectAttr "head.s" "|Hamster|hamsterRotCenter|hamsterRoot|torsoMid|torso|head|nose.is"
		;
connectAttr "head.s" "|Hamster|hamsterRotCenter|hamsterRoot|torsoMid|torso|head|r_t_eyeLid.is"
		;
connectAttr "head.s" "|Hamster|hamsterRotCenter|hamsterRoot|torsoMid|torso|head|r_b_eyeLid.is"
		;
connectAttr "head.s" "|Hamster|hamsterRotCenter|hamsterRoot|torsoMid|torso|head|r_eyebrow.is"
		;
connectAttr "head.s" "l_eyeAlt.is";
connectAttr "head.s" "r_eyeAlt.is";
connectAttr "head.s" "l_eyeAltLid.is";
connectAttr "head.s" "r_eyeAltLid.is";
connectAttr "transform4.s" "l_arm.is";
connectAttr "l_arm.s" "l_elbow.is";
connectAttr "l_elbow.s" "l_hand.is";
connectAttr "l_hand.s" "|Hamster|hamsterRotCenter|hamsterRoot|torsoMid|torso|transform4|l_arm|l_elbow|l_hand|joint6.is"
		;
connectAttr "transform4.s" "r_arm.is";
connectAttr "r_arm.s" "r_elbow.is";
connectAttr "r_elbow.s" "r_hand.is";
connectAttr "r_hand.s" "|Hamster|hamsterRotCenter|hamsterRoot|torsoMid|torso|transform4|r_arm|r_elbow|r_hand|joint6.is"
		;
connectAttr "skinCluster10GroupId.id" "noseShape.iog.og[0].gid";
connectAttr "skinCluster10Set.mwc" "noseShape.iog.og[0].gco";
connectAttr "groupId20.id" "noseShape.iog.og[1].gid";
connectAttr "tweakSet10.mwc" "noseShape.iog.og[1].gco";
connectAttr "skinCluster10.og[0]" "noseShape.i";
connectAttr "tweak10.vl[0].vt[0]" "noseShape.twl";
connectAttr "skinCluster7GroupId.id" "r_eyeShape.iog.og[0].gid";
connectAttr "skinCluster7Set.mwc" "r_eyeShape.iog.og[0].gco";
connectAttr "groupId14.id" "r_eyeShape.iog.og[1].gid";
connectAttr "tweakSet7.mwc" "r_eyeShape.iog.og[1].gco";
connectAttr "skinCluster7.og[0]" "r_eyeShape.i";
connectAttr "tweak7.vl[0].vt[0]" "r_eyeShape.twl";
connectAttr "skinCluster4GroupId.id" "l_earShape.iog.og[0].gid";
connectAttr "skinCluster4Set.mwc" "l_earShape.iog.og[0].gco";
connectAttr "groupId8.id" "l_earShape.iog.og[1].gid";
connectAttr "tweakSet4.mwc" "l_earShape.iog.og[1].gco";
connectAttr "skinCluster4.og[0]" "l_earShape.i";
connectAttr "tweak4.vl[0].vt[0]" "l_earShape.twl";
connectAttr "skinCluster1GroupId.id" "l_eyebrowShape.iog.og[0].gid";
connectAttr "skinCluster1Set.mwc" "l_eyebrowShape.iog.og[0].gco";
connectAttr "groupId2.id" "l_eyebrowShape.iog.og[1].gid";
connectAttr "tweakSet1.mwc" "l_eyebrowShape.iog.og[1].gco";
connectAttr "skinCluster1.og[0]" "l_eyebrowShape.i";
connectAttr "tweak1.vl[0].vt[0]" "l_eyebrowShape.twl";
connectAttr "skinCluster5GroupId.id" "r_earShape.iog.og[0].gid";
connectAttr "skinCluster5Set.mwc" "r_earShape.iog.og[0].gco";
connectAttr "groupId10.id" "r_earShape.iog.og[1].gid";
connectAttr "tweakSet5.mwc" "r_earShape.iog.og[1].gco";
connectAttr "skinCluster5.og[0]" "r_earShape.i";
connectAttr "tweak5.vl[0].vt[0]" "r_earShape.twl";
connectAttr "skinCluster2GroupId.id" "r_eyebrowShape.iog.og[0].gid";
connectAttr "skinCluster2Set.mwc" "r_eyebrowShape.iog.og[0].gco";
connectAttr "groupId4.id" "r_eyebrowShape.iog.og[1].gid";
connectAttr "tweakSet2.mwc" "r_eyebrowShape.iog.og[1].gco";
connectAttr "skinCluster2.og[0]" "r_eyebrowShape.i";
connectAttr "tweak2.vl[0].vt[0]" "r_eyebrowShape.twl";
connectAttr "skinCluster20GroupId.id" "tailShape.iog.og[0].gid";
connectAttr "skinCluster20Set.mwc" "tailShape.iog.og[0].gco";
connectAttr "groupId40.id" "tailShape.iog.og[1].gid";
connectAttr "tweakSet20.mwc" "tailShape.iog.og[1].gco";
connectAttr "skinCluster20.og[0]" "tailShape.i";
connectAttr "tweak20.vl[0].vt[0]" "tailShape.twl";
connectAttr "skinCluster14GroupId.id" "tooth2Shape.iog.og[0].gid";
connectAttr "skinCluster14Set.mwc" "tooth2Shape.iog.og[0].gco";
connectAttr "groupId28.id" "tooth2Shape.iog.og[1].gid";
connectAttr "tweakSet14.mwc" "tooth2Shape.iog.og[1].gco";
connectAttr "skinCluster14.og[0]" "tooth2Shape.i";
connectAttr "tweak14.vl[0].vt[0]" "tooth2Shape.twl";
connectAttr "skinCluster13GroupId.id" "tooth1Shape.iog.og[0].gid";
connectAttr "skinCluster13Set.mwc" "tooth1Shape.iog.og[0].gco";
connectAttr "groupId26.id" "tooth1Shape.iog.og[1].gid";
connectAttr "tweakSet13.mwc" "tooth1Shape.iog.og[1].gco";
connectAttr "skinCluster13.og[0]" "tooth1Shape.i";
connectAttr "tweak13.vl[0].vt[0]" "tooth1Shape.twl";
connectAttr "skinCluster8GroupId.id" "l_t_whiskerShape.iog.og[0].gid";
connectAttr "skinCluster8Set.mwc" "l_t_whiskerShape.iog.og[0].gco";
connectAttr "groupId16.id" "l_t_whiskerShape.iog.og[1].gid";
connectAttr "tweakSet8.mwc" "l_t_whiskerShape.iog.og[1].gco";
connectAttr "skinCluster8.og[0]" "l_t_whiskerShape.i";
connectAttr "tweak8.vl[0].vt[0]" "l_t_whiskerShape.twl";
connectAttr "skinCluster9GroupId.id" "l_b_whiskerShape.iog.og[0].gid";
connectAttr "skinCluster9Set.mwc" "l_b_whiskerShape.iog.og[0].gco";
connectAttr "groupId18.id" "l_b_whiskerShape.iog.og[1].gid";
connectAttr "tweakSet9.mwc" "l_b_whiskerShape.iog.og[1].gco";
connectAttr "skinCluster9.og[0]" "l_b_whiskerShape.i";
connectAttr "tweak9.vl[0].vt[0]" "l_b_whiskerShape.twl";
connectAttr "skinCluster11GroupId.id" "r_t_whiskerShape.iog.og[0].gid";
connectAttr "skinCluster11Set.mwc" "r_t_whiskerShape.iog.og[0].gco";
connectAttr "groupId22.id" "r_t_whiskerShape.iog.og[1].gid";
connectAttr "tweakSet11.mwc" "r_t_whiskerShape.iog.og[1].gco";
connectAttr "skinCluster11.og[0]" "r_t_whiskerShape.i";
connectAttr "tweak11.vl[0].vt[0]" "r_t_whiskerShape.twl";
connectAttr "skinCluster16GroupId.id" "l_b_eyeLidShape.iog.og[0].gid";
connectAttr "skinCluster16Set.mwc" "l_b_eyeLidShape.iog.og[0].gco";
connectAttr "groupId32.id" "l_b_eyeLidShape.iog.og[1].gid";
connectAttr "tweakSet16.mwc" "l_b_eyeLidShape.iog.og[1].gco";
connectAttr "skinCluster16.og[0]" "l_b_eyeLidShape.i";
connectAttr "tweak16.vl[0].vt[0]" "l_b_eyeLidShape.twl";
connectAttr "skinCluster15GroupId.id" "l_t_eyeLidShape.iog.og[0].gid";
connectAttr "skinCluster15Set.mwc" "l_t_eyeLidShape.iog.og[0].gco";
connectAttr "groupId30.id" "l_t_eyeLidShape.iog.og[1].gid";
connectAttr "tweakSet15.mwc" "l_t_eyeLidShape.iog.og[1].gco";
connectAttr "skinCluster15.og[0]" "l_t_eyeLidShape.i";
connectAttr "tweak15.vl[0].vt[0]" "l_t_eyeLidShape.twl";
connectAttr "skinCluster17GroupId.id" "r_t_eyeLidShape.iog.og[0].gid";
connectAttr "skinCluster17Set.mwc" "r_t_eyeLidShape.iog.og[0].gco";
connectAttr "groupId34.id" "r_t_eyeLidShape.iog.og[1].gid";
connectAttr "tweakSet17.mwc" "r_t_eyeLidShape.iog.og[1].gco";
connectAttr "skinCluster17.og[0]" "r_t_eyeLidShape.i";
connectAttr "tweak17.vl[0].vt[0]" "r_t_eyeLidShape.twl";
connectAttr "skinCluster18GroupId.id" "r_b_eyeLidShape.iog.og[0].gid";
connectAttr "skinCluster18Set.mwc" "r_b_eyeLidShape.iog.og[0].gco";
connectAttr "groupId36.id" "r_b_eyeLidShape.iog.og[1].gid";
connectAttr "tweakSet18.mwc" "r_b_eyeLidShape.iog.og[1].gco";
connectAttr "skinCluster18.og[0]" "r_b_eyeLidShape.i";
connectAttr "tweak18.vl[0].vt[0]" "r_b_eyeLidShape.twl";
connectAttr "skinCluster6GroupId.id" "l_eyeShape.iog.og[0].gid";
connectAttr "skinCluster6Set.mwc" "l_eyeShape.iog.og[0].gco";
connectAttr "groupId12.id" "l_eyeShape.iog.og[1].gid";
connectAttr "tweakSet6.mwc" "l_eyeShape.iog.og[1].gco";
connectAttr "skinCluster6.og[0]" "l_eyeShape.i";
connectAttr "tweak6.vl[0].vt[0]" "l_eyeShape.twl";
connectAttr "skinCluster12GroupId.id" "r_b_whiskerShape.iog.og[0].gid";
connectAttr "skinCluster12Set.mwc" "r_b_whiskerShape.iog.og[0].gco";
connectAttr "groupId24.id" "r_b_whiskerShape.iog.og[1].gid";
connectAttr "tweakSet12.mwc" "r_b_whiskerShape.iog.og[1].gco";
connectAttr "skinCluster12.og[0]" "r_b_whiskerShape.i";
connectAttr "tweak12.vl[0].vt[0]" "r_b_whiskerShape.twl";
connectAttr "skinCluster19.og[0]" "bodyShape.i";
connectAttr "skinCluster19GroupId.id" "bodyShape.iog.og[0].gid";
connectAttr "skinCluster19Set.mwc" "bodyShape.iog.og[0].gco";
connectAttr "groupId38.id" "bodyShape.iog.og[1].gid";
connectAttr "tweakSet19.mwc" "bodyShape.iog.og[1].gco";
connectAttr "tweak19.vl[0].vt[1]" "bodyShape.twl";
connectAttr "skinCluster3.og[0]" "hairShape.i";
connectAttr "skinCluster3GroupId.id" "hairShape.iog.og[0].gid";
connectAttr "skinCluster3Set.mwc" "hairShape.iog.og[0].gco";
connectAttr "groupId6.id" "hairShape.iog.og[1].gid";
connectAttr "tweakSet3.mwc" "hairShape.iog.og[1].gco";
connectAttr "tweak3.vl[0].vt[0]" "hairShape.twl";
connectAttr "skinCluster22GroupId.id" "rBlackEyeShape.iog.og[0].gid";
connectAttr "skinCluster22Set.mwc" "rBlackEyeShape.iog.og[0].gco";
connectAttr "groupId44.id" "rBlackEyeShape.iog.og[1].gid";
connectAttr "tweakSet22.mwc" "rBlackEyeShape.iog.og[1].gco";
connectAttr "skinCluster22.og[0]" "rBlackEyeShape.i";
connectAttr "tweak22.vl[0].vt[0]" "rBlackEyeShape.twl";
connectAttr "skinCluster21GroupId.id" "lBlackEyeShape.iog.og[0].gid";
connectAttr "skinCluster21Set.mwc" "lBlackEyeShape.iog.og[0].gco";
connectAttr "groupId42.id" "lBlackEyeShape.iog.og[1].gid";
connectAttr "tweakSet21.mwc" "lBlackEyeShape.iog.og[1].gco";
connectAttr "skinCluster21.og[0]" "lBlackEyeShape.i";
connectAttr "tweak21.vl[0].vt[0]" "lBlackEyeShape.twl";
connectAttr "skinCluster24GroupId.id" "lBlackEyeLidShape.iog.og[2].gid";
connectAttr "skinCluster24Set.mwc" "lBlackEyeLidShape.iog.og[2].gco";
connectAttr "groupId48.id" "lBlackEyeLidShape.iog.og[3].gid";
connectAttr "tweakSet24.mwc" "lBlackEyeLidShape.iog.og[3].gco";
connectAttr "skinCluster24.og[0]" "lBlackEyeLidShape.i";
connectAttr "tweak24.vl[0].vt[0]" "lBlackEyeLidShape.twl";
connectAttr "skinCluster23GroupId.id" "rBlackEyeLidShape.iog.og[2].gid";
connectAttr "skinCluster23Set.mwc" "rBlackEyeLidShape.iog.og[2].gco";
connectAttr "groupId46.id" "rBlackEyeLidShape.iog.og[3].gid";
connectAttr "tweakSet23.mwc" "rBlackEyeLidShape.iog.og[3].gco";
connectAttr "skinCluster23.og[0]" "rBlackEyeLidShape.i";
connectAttr "tweak23.vl[0].vt[0]" "rBlackEyeLidShape.twl";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "noseSG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "blinn1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "noseSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "blinn1SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr ":mentalrayGlobals.msg" ":mentalrayItemsList.glb";
connectAttr ":miDefaultOptions.msg" ":mentalrayItemsList.opt" -na;
connectAttr ":miDefaultFramebuffer.msg" ":mentalrayItemsList.fb" -na;
connectAttr ":miDefaultOptions.msg" ":mentalrayGlobals.opt";
connectAttr ":miDefaultFramebuffer.msg" ":mentalrayGlobals.fb";
connectAttr "file1.oc" "HamsterMat.c";
connectAttr "HamsterMat.oc" "noseSG.ss";
connectAttr "noseShape.iog" "noseSG.dsm" -na;
connectAttr "r_eyeShape.iog" "noseSG.dsm" -na;
connectAttr "l_earShape.iog" "noseSG.dsm" -na;
connectAttr "l_eyebrowShape.iog" "noseSG.dsm" -na;
connectAttr "r_earShape.iog" "noseSG.dsm" -na;
connectAttr "r_eyebrowShape.iog" "noseSG.dsm" -na;
connectAttr "tailShape.iog" "noseSG.dsm" -na;
connectAttr "tooth2Shape.iog" "noseSG.dsm" -na;
connectAttr "tooth1Shape.iog" "noseSG.dsm" -na;
connectAttr "l_t_whiskerShape.iog" "noseSG.dsm" -na;
connectAttr "l_b_whiskerShape.iog" "noseSG.dsm" -na;
connectAttr "r_t_whiskerShape.iog" "noseSG.dsm" -na;
connectAttr "l_b_eyeLidShape.iog" "noseSG.dsm" -na;
connectAttr "l_t_eyeLidShape.iog" "noseSG.dsm" -na;
connectAttr "r_t_eyeLidShape.iog" "noseSG.dsm" -na;
connectAttr "r_b_eyeLidShape.iog" "noseSG.dsm" -na;
connectAttr "l_eyeShape.iog" "noseSG.dsm" -na;
connectAttr "r_b_whiskerShape.iog" "noseSG.dsm" -na;
connectAttr "bodyShape.iog" "noseSG.dsm" -na;
connectAttr "hairShape.iog" "noseSG.dsm" -na;
connectAttr "rBlackEyeLidShape.iog" "noseSG.dsm" -na;
connectAttr "lBlackEyeLidShape.iog" "noseSG.dsm" -na;
connectAttr "noseSG.msg" "materialInfo1.sg";
connectAttr "HamsterMat.msg" "materialInfo1.m";
connectAttr "file1.msg" "materialInfo1.t" -na;
connectAttr "place2dTexture1.o" "file1.uv";
connectAttr "place2dTexture1.ofu" "file1.ofu";
connectAttr "place2dTexture1.ofv" "file1.ofv";
connectAttr "place2dTexture1.rf" "file1.rf";
connectAttr "place2dTexture1.reu" "file1.reu";
connectAttr "place2dTexture1.rev" "file1.rev";
connectAttr "place2dTexture1.vt1" "file1.vt1";
connectAttr "place2dTexture1.vt2" "file1.vt2";
connectAttr "place2dTexture1.vt3" "file1.vt3";
connectAttr "place2dTexture1.vc1" "file1.vc1";
connectAttr "place2dTexture1.ofs" "file1.fs";
connectAttr ":defaultColorMgtGlobals.cme" "file1.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file1.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file1.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file1.ws";
connectAttr "skinCluster1GroupParts.og" "skinCluster1.ip[0].ig";
connectAttr "skinCluster1GroupId.id" "skinCluster1.ip[0].gi";
connectAttr "bindPose1.msg" "skinCluster1.bp";
connectAttr "|Hamster|hamsterRotCenter|hamsterRoot|torsoMid|torso|head|l_eyebrow.wm" "skinCluster1.ma[0]"
		;
connectAttr "|Hamster|hamsterRotCenter|hamsterRoot|torsoMid|torso|head|l_eyebrow.liw" "skinCluster1.lw[0]"
		;
connectAttr "|Hamster|hamsterRotCenter|hamsterRoot|torsoMid|torso|head|l_eyebrow.obcc" "skinCluster1.ifcl[0]"
		;
connectAttr "groupParts2.og" "tweak1.ip[0].ig";
connectAttr "groupId2.id" "tweak1.ip[0].gi";
connectAttr "skinCluster1GroupId.msg" "skinCluster1Set.gn" -na;
connectAttr "l_eyebrowShape.iog.og[0]" "skinCluster1Set.dsm" -na;
connectAttr "skinCluster1.msg" "skinCluster1Set.ub[0]";
connectAttr "tweak1.og[0]" "skinCluster1GroupParts.ig";
connectAttr "skinCluster1GroupId.id" "skinCluster1GroupParts.gi";
connectAttr "groupId2.msg" "tweakSet1.gn" -na;
connectAttr "l_eyebrowShape.iog.og[1]" "tweakSet1.dsm" -na;
connectAttr "tweak1.msg" "tweakSet1.ub[0]";
connectAttr "l_eyebrowShapeOrig.w" "groupParts2.ig";
connectAttr "groupId2.id" "groupParts2.gi";
connectAttr "Hamster.msg" "bindPose1.m[0]";
connectAttr "hamsterRotCenter.msg" "bindPose1.m[1]";
connectAttr "hamsterRoot.msg" "bindPose1.m[2]";
connectAttr "torsoMid.msg" "bindPose1.m[3]";
connectAttr "torso.msg" "bindPose1.m[4]";
connectAttr "head.msg" "bindPose1.m[5]";
connectAttr "|Hamster|hamsterRotCenter|hamsterRoot|torsoMid|torso|head|l_eyebrow.msg" "bindPose1.m[6]"
		;
connectAttr "hair1.msg" "bindPose1.m[7]";
connectAttr "hair2.msg" "bindPose1.m[8]";
connectAttr "bindPose1.w" "bindPose1.p[0]";
connectAttr "bindPose1.m[0]" "bindPose1.p[1]";
connectAttr "bindPose1.m[1]" "bindPose1.p[2]";
connectAttr "bindPose1.m[2]" "bindPose1.p[3]";
connectAttr "bindPose1.m[3]" "bindPose1.p[4]";
connectAttr "bindPose1.m[4]" "bindPose1.p[5]";
connectAttr "bindPose1.m[5]" "bindPose1.p[6]";
connectAttr "bindPose1.m[5]" "bindPose1.p[7]";
connectAttr "hair1.msg" "bindPose1.p[8]";
connectAttr "hamsterRotCenter.bps" "bindPose1.wm[1]";
connectAttr "hamsterRoot.bps" "bindPose1.wm[2]";
connectAttr "torsoMid.bps" "bindPose1.wm[3]";
connectAttr "torso.bps" "bindPose1.wm[4]";
connectAttr "head.bps" "bindPose1.wm[5]";
connectAttr "|Hamster|hamsterRotCenter|hamsterRoot|torsoMid|torso|head|l_eyebrow.bps" "bindPose1.wm[6]"
		;
connectAttr "hair1.bps" "bindPose1.wm[7]";
connectAttr "hair2.bps" "bindPose1.wm[8]";
connectAttr "skinCluster2GroupParts.og" "skinCluster2.ip[0].ig";
connectAttr "skinCluster2GroupId.id" "skinCluster2.ip[0].gi";
connectAttr "bindPose2.msg" "skinCluster2.bp";
connectAttr "|Hamster|hamsterRotCenter|hamsterRoot|torsoMid|torso|head|r_eyebrow.wm" "skinCluster2.ma[0]"
		;
connectAttr "|Hamster|hamsterRotCenter|hamsterRoot|torsoMid|torso|head|r_eyebrow.liw" "skinCluster2.lw[0]"
		;
connectAttr "|Hamster|hamsterRotCenter|hamsterRoot|torsoMid|torso|head|r_eyebrow.obcc" "skinCluster2.ifcl[0]"
		;
connectAttr "groupParts4.og" "tweak2.ip[0].ig";
connectAttr "groupId4.id" "tweak2.ip[0].gi";
connectAttr "skinCluster2GroupId.msg" "skinCluster2Set.gn" -na;
connectAttr "r_eyebrowShape.iog.og[0]" "skinCluster2Set.dsm" -na;
connectAttr "skinCluster2.msg" "skinCluster2Set.ub[0]";
connectAttr "tweak2.og[0]" "skinCluster2GroupParts.ig";
connectAttr "skinCluster2GroupId.id" "skinCluster2GroupParts.gi";
connectAttr "groupId4.msg" "tweakSet2.gn" -na;
connectAttr "r_eyebrowShape.iog.og[1]" "tweakSet2.dsm" -na;
connectAttr "tweak2.msg" "tweakSet2.ub[0]";
connectAttr "r_eyebrowShapeOrig.w" "groupParts4.ig";
connectAttr "groupId4.id" "groupParts4.gi";
connectAttr "Hamster.msg" "bindPose2.m[0]";
connectAttr "hamsterRotCenter.msg" "bindPose2.m[1]";
connectAttr "hamsterRoot.msg" "bindPose2.m[2]";
connectAttr "torsoMid.msg" "bindPose2.m[3]";
connectAttr "torso.msg" "bindPose2.m[4]";
connectAttr "head.msg" "bindPose2.m[5]";
connectAttr "|Hamster|hamsterRotCenter|hamsterRoot|torsoMid|torso|head|r_eyebrow.msg" "bindPose2.m[6]"
		;
connectAttr "bindPose2.w" "bindPose2.p[0]";
connectAttr "bindPose2.m[0]" "bindPose2.p[1]";
connectAttr "bindPose2.m[1]" "bindPose2.p[2]";
connectAttr "bindPose2.m[2]" "bindPose2.p[3]";
connectAttr "bindPose2.m[3]" "bindPose2.p[4]";
connectAttr "bindPose2.m[4]" "bindPose2.p[5]";
connectAttr "bindPose2.m[5]" "bindPose2.p[6]";
connectAttr "skinCluster3GroupParts.og" "skinCluster3.ip[0].ig";
connectAttr "skinCluster3GroupId.id" "skinCluster3.ip[0].gi";
connectAttr "head.wm" "skinCluster3.ma[0]";
connectAttr "hair1.wm" "skinCluster3.ma[1]";
connectAttr "hair2.wm" "skinCluster3.ma[2]";
connectAttr "head.liw" "skinCluster3.lw[0]";
connectAttr "hair1.liw" "skinCluster3.lw[1]";
connectAttr "hair2.liw" "skinCluster3.lw[2]";
connectAttr "head.obcc" "skinCluster3.ifcl[0]";
connectAttr "hair1.obcc" "skinCluster3.ifcl[1]";
connectAttr "hair2.obcc" "skinCluster3.ifcl[2]";
connectAttr "bindPose1.msg" "skinCluster3.bp";
connectAttr "groupParts6.og" "tweak3.ip[0].ig";
connectAttr "groupId6.id" "tweak3.ip[0].gi";
connectAttr "skinCluster3GroupId.msg" "skinCluster3Set.gn" -na;
connectAttr "hairShape.iog.og[0]" "skinCluster3Set.dsm" -na;
connectAttr "skinCluster3.msg" "skinCluster3Set.ub[0]";
connectAttr "tweak3.og[0]" "skinCluster3GroupParts.ig";
connectAttr "skinCluster3GroupId.id" "skinCluster3GroupParts.gi";
connectAttr "groupId6.msg" "tweakSet3.gn" -na;
connectAttr "hairShape.iog.og[1]" "tweakSet3.dsm" -na;
connectAttr "tweak3.msg" "tweakSet3.ub[0]";
connectAttr "hairShapeOrig.w" "groupParts6.ig";
connectAttr "groupId6.id" "groupParts6.gi";
connectAttr "skinCluster4GroupParts.og" "skinCluster4.ip[0].ig";
connectAttr "skinCluster4GroupId.id" "skinCluster4.ip[0].gi";
connectAttr "bindPose3.msg" "skinCluster4.bp";
connectAttr "|Hamster|hamsterRotCenter|hamsterRoot|torsoMid|torso|head|l_ear.wm" "skinCluster4.ma[0]"
		;
connectAttr "|Hamster|hamsterRotCenter|hamsterRoot|torsoMid|torso|head|l_ear.liw" "skinCluster4.lw[0]"
		;
connectAttr "|Hamster|hamsterRotCenter|hamsterRoot|torsoMid|torso|head|l_ear.obcc" "skinCluster4.ifcl[0]"
		;
connectAttr "groupParts8.og" "tweak4.ip[0].ig";
connectAttr "groupId8.id" "tweak4.ip[0].gi";
connectAttr "skinCluster4GroupId.msg" "skinCluster4Set.gn" -na;
connectAttr "l_earShape.iog.og[0]" "skinCluster4Set.dsm" -na;
connectAttr "skinCluster4.msg" "skinCluster4Set.ub[0]";
connectAttr "tweak4.og[0]" "skinCluster4GroupParts.ig";
connectAttr "skinCluster4GroupId.id" "skinCluster4GroupParts.gi";
connectAttr "groupId8.msg" "tweakSet4.gn" -na;
connectAttr "l_earShape.iog.og[1]" "tweakSet4.dsm" -na;
connectAttr "tweak4.msg" "tweakSet4.ub[0]";
connectAttr "l_earShapeOrig.w" "groupParts8.ig";
connectAttr "groupId8.id" "groupParts8.gi";
connectAttr "Hamster.msg" "bindPose3.m[0]";
connectAttr "hamsterRotCenter.msg" "bindPose3.m[1]";
connectAttr "hamsterRoot.msg" "bindPose3.m[2]";
connectAttr "torsoMid.msg" "bindPose3.m[3]";
connectAttr "torso.msg" "bindPose3.m[4]";
connectAttr "head.msg" "bindPose3.m[5]";
connectAttr "|Hamster|hamsterRotCenter|hamsterRoot|torsoMid|torso|head|l_ear.msg" "bindPose3.m[6]"
		;
connectAttr "bindPose3.w" "bindPose3.p[0]";
connectAttr "bindPose3.m[0]" "bindPose3.p[1]";
connectAttr "bindPose3.m[1]" "bindPose3.p[2]";
connectAttr "bindPose3.m[2]" "bindPose3.p[3]";
connectAttr "bindPose3.m[3]" "bindPose3.p[4]";
connectAttr "bindPose3.m[4]" "bindPose3.p[5]";
connectAttr "bindPose3.m[5]" "bindPose3.p[6]";
connectAttr "skinCluster5GroupParts.og" "skinCluster5.ip[0].ig";
connectAttr "skinCluster5GroupId.id" "skinCluster5.ip[0].gi";
connectAttr "bindPose4.msg" "skinCluster5.bp";
connectAttr "|Hamster|hamsterRotCenter|hamsterRoot|torsoMid|torso|head|r_ear.wm" "skinCluster5.ma[0]"
		;
connectAttr "|Hamster|hamsterRotCenter|hamsterRoot|torsoMid|torso|head|r_ear.liw" "skinCluster5.lw[0]"
		;
connectAttr "|Hamster|hamsterRotCenter|hamsterRoot|torsoMid|torso|head|r_ear.obcc" "skinCluster5.ifcl[0]"
		;
connectAttr "groupParts10.og" "tweak5.ip[0].ig";
connectAttr "groupId10.id" "tweak5.ip[0].gi";
connectAttr "skinCluster5GroupId.msg" "skinCluster5Set.gn" -na;
connectAttr "r_earShape.iog.og[0]" "skinCluster5Set.dsm" -na;
connectAttr "skinCluster5.msg" "skinCluster5Set.ub[0]";
connectAttr "tweak5.og[0]" "skinCluster5GroupParts.ig";
connectAttr "skinCluster5GroupId.id" "skinCluster5GroupParts.gi";
connectAttr "groupId10.msg" "tweakSet5.gn" -na;
connectAttr "r_earShape.iog.og[1]" "tweakSet5.dsm" -na;
connectAttr "tweak5.msg" "tweakSet5.ub[0]";
connectAttr "r_earShapeOrig.w" "groupParts10.ig";
connectAttr "groupId10.id" "groupParts10.gi";
connectAttr "Hamster.msg" "bindPose4.m[0]";
connectAttr "hamsterRotCenter.msg" "bindPose4.m[1]";
connectAttr "hamsterRoot.msg" "bindPose4.m[2]";
connectAttr "torsoMid.msg" "bindPose4.m[3]";
connectAttr "torso.msg" "bindPose4.m[4]";
connectAttr "head.msg" "bindPose4.m[5]";
connectAttr "|Hamster|hamsterRotCenter|hamsterRoot|torsoMid|torso|head|r_ear.msg" "bindPose4.m[6]"
		;
connectAttr "bindPose4.w" "bindPose4.p[0]";
connectAttr "bindPose4.m[0]" "bindPose4.p[1]";
connectAttr "bindPose4.m[1]" "bindPose4.p[2]";
connectAttr "bindPose4.m[2]" "bindPose4.p[3]";
connectAttr "bindPose4.m[3]" "bindPose4.p[4]";
connectAttr "bindPose4.m[4]" "bindPose4.p[5]";
connectAttr "bindPose4.m[5]" "bindPose4.p[6]";
connectAttr "skinCluster6GroupParts.og" "skinCluster6.ip[0].ig";
connectAttr "skinCluster6GroupId.id" "skinCluster6.ip[0].gi";
connectAttr "bindPose5.msg" "skinCluster6.bp";
connectAttr "|Hamster|hamsterRotCenter|hamsterRoot|torsoMid|torso|head|l_eye.wm" "skinCluster6.ma[0]"
		;
connectAttr "|Hamster|hamsterRotCenter|hamsterRoot|torsoMid|torso|head|l_eye.liw" "skinCluster6.lw[0]"
		;
connectAttr "|Hamster|hamsterRotCenter|hamsterRoot|torsoMid|torso|head|l_eye.obcc" "skinCluster6.ifcl[0]"
		;
connectAttr "groupParts12.og" "tweak6.ip[0].ig";
connectAttr "groupId12.id" "tweak6.ip[0].gi";
connectAttr "skinCluster6GroupId.msg" "skinCluster6Set.gn" -na;
connectAttr "l_eyeShape.iog.og[0]" "skinCluster6Set.dsm" -na;
connectAttr "skinCluster6.msg" "skinCluster6Set.ub[0]";
connectAttr "tweak6.og[0]" "skinCluster6GroupParts.ig";
connectAttr "skinCluster6GroupId.id" "skinCluster6GroupParts.gi";
connectAttr "groupId12.msg" "tweakSet6.gn" -na;
connectAttr "l_eyeShape.iog.og[1]" "tweakSet6.dsm" -na;
connectAttr "tweak6.msg" "tweakSet6.ub[0]";
connectAttr "l_eyeShapeOrig.w" "groupParts12.ig";
connectAttr "groupId12.id" "groupParts12.gi";
connectAttr "Hamster.msg" "bindPose5.m[0]";
connectAttr "hamsterRotCenter.msg" "bindPose5.m[1]";
connectAttr "hamsterRoot.msg" "bindPose5.m[2]";
connectAttr "torsoMid.msg" "bindPose5.m[3]";
connectAttr "torso.msg" "bindPose5.m[4]";
connectAttr "head.msg" "bindPose5.m[5]";
connectAttr "|Hamster|hamsterRotCenter|hamsterRoot|torsoMid|torso|head|l_eye.msg" "bindPose5.m[6]"
		;
connectAttr "bindPose5.w" "bindPose5.p[0]";
connectAttr "bindPose5.m[0]" "bindPose5.p[1]";
connectAttr "bindPose5.m[1]" "bindPose5.p[2]";
connectAttr "bindPose5.m[2]" "bindPose5.p[3]";
connectAttr "bindPose5.m[3]" "bindPose5.p[4]";
connectAttr "bindPose5.m[4]" "bindPose5.p[5]";
connectAttr "bindPose5.m[5]" "bindPose5.p[6]";
connectAttr "skinCluster7GroupParts.og" "skinCluster7.ip[0].ig";
connectAttr "skinCluster7GroupId.id" "skinCluster7.ip[0].gi";
connectAttr "bindPose6.msg" "skinCluster7.bp";
connectAttr "|Hamster|hamsterRotCenter|hamsterRoot|torsoMid|torso|head|r_eye.wm" "skinCluster7.ma[0]"
		;
connectAttr "|Hamster|hamsterRotCenter|hamsterRoot|torsoMid|torso|head|r_eye.liw" "skinCluster7.lw[0]"
		;
connectAttr "|Hamster|hamsterRotCenter|hamsterRoot|torsoMid|torso|head|r_eye.obcc" "skinCluster7.ifcl[0]"
		;
connectAttr "groupParts14.og" "tweak7.ip[0].ig";
connectAttr "groupId14.id" "tweak7.ip[0].gi";
connectAttr "skinCluster7GroupId.msg" "skinCluster7Set.gn" -na;
connectAttr "r_eyeShape.iog.og[0]" "skinCluster7Set.dsm" -na;
connectAttr "skinCluster7.msg" "skinCluster7Set.ub[0]";
connectAttr "tweak7.og[0]" "skinCluster7GroupParts.ig";
connectAttr "skinCluster7GroupId.id" "skinCluster7GroupParts.gi";
connectAttr "groupId14.msg" "tweakSet7.gn" -na;
connectAttr "r_eyeShape.iog.og[1]" "tweakSet7.dsm" -na;
connectAttr "tweak7.msg" "tweakSet7.ub[0]";
connectAttr "r_eyeShapeOrig.w" "groupParts14.ig";
connectAttr "groupId14.id" "groupParts14.gi";
connectAttr "Hamster.msg" "bindPose6.m[0]";
connectAttr "hamsterRotCenter.msg" "bindPose6.m[1]";
connectAttr "hamsterRoot.msg" "bindPose6.m[2]";
connectAttr "torsoMid.msg" "bindPose6.m[3]";
connectAttr "torso.msg" "bindPose6.m[4]";
connectAttr "head.msg" "bindPose6.m[5]";
connectAttr "|Hamster|hamsterRotCenter|hamsterRoot|torsoMid|torso|head|r_eye.msg" "bindPose6.m[6]"
		;
connectAttr "bindPose6.w" "bindPose6.p[0]";
connectAttr "bindPose6.m[0]" "bindPose6.p[1]";
connectAttr "bindPose6.m[1]" "bindPose6.p[2]";
connectAttr "bindPose6.m[2]" "bindPose6.p[3]";
connectAttr "bindPose6.m[3]" "bindPose6.p[4]";
connectAttr "bindPose6.m[4]" "bindPose6.p[5]";
connectAttr "bindPose6.m[5]" "bindPose6.p[6]";
connectAttr "skinCluster8GroupParts.og" "skinCluster8.ip[0].ig";
connectAttr "skinCluster8GroupId.id" "skinCluster8.ip[0].gi";
connectAttr "bindPose7.msg" "skinCluster8.bp";
connectAttr "|Hamster|hamsterRotCenter|hamsterRoot|torsoMid|torso|head|nose.wm" "skinCluster8.ma[0]"
		;
connectAttr "|Hamster|hamsterRotCenter|hamsterRoot|torsoMid|torso|head|nose.liw" "skinCluster8.lw[0]"
		;
connectAttr "|Hamster|hamsterRotCenter|hamsterRoot|torsoMid|torso|head|nose.obcc" "skinCluster8.ifcl[0]"
		;
connectAttr "groupParts16.og" "tweak8.ip[0].ig";
connectAttr "groupId16.id" "tweak8.ip[0].gi";
connectAttr "skinCluster8GroupId.msg" "skinCluster8Set.gn" -na;
connectAttr "l_t_whiskerShape.iog.og[0]" "skinCluster8Set.dsm" -na;
connectAttr "skinCluster8.msg" "skinCluster8Set.ub[0]";
connectAttr "tweak8.og[0]" "skinCluster8GroupParts.ig";
connectAttr "skinCluster8GroupId.id" "skinCluster8GroupParts.gi";
connectAttr "groupId16.msg" "tweakSet8.gn" -na;
connectAttr "l_t_whiskerShape.iog.og[1]" "tweakSet8.dsm" -na;
connectAttr "tweak8.msg" "tweakSet8.ub[0]";
connectAttr "l_t_whiskerShapeOrig.w" "groupParts16.ig";
connectAttr "groupId16.id" "groupParts16.gi";
connectAttr "Hamster.msg" "bindPose7.m[0]";
connectAttr "hamsterRotCenter.msg" "bindPose7.m[1]";
connectAttr "hamsterRoot.msg" "bindPose7.m[2]";
connectAttr "torsoMid.msg" "bindPose7.m[3]";
connectAttr "torso.msg" "bindPose7.m[4]";
connectAttr "head.msg" "bindPose7.m[5]";
connectAttr "|Hamster|hamsterRotCenter|hamsterRoot|torsoMid|torso|head|nose.msg" "bindPose7.m[6]"
		;
connectAttr "bindPose7.w" "bindPose7.p[0]";
connectAttr "bindPose7.m[0]" "bindPose7.p[1]";
connectAttr "bindPose7.m[1]" "bindPose7.p[2]";
connectAttr "bindPose7.m[2]" "bindPose7.p[3]";
connectAttr "bindPose7.m[3]" "bindPose7.p[4]";
connectAttr "bindPose7.m[4]" "bindPose7.p[5]";
connectAttr "bindPose7.m[5]" "bindPose7.p[6]";
connectAttr "skinCluster9GroupParts.og" "skinCluster9.ip[0].ig";
connectAttr "skinCluster9GroupId.id" "skinCluster9.ip[0].gi";
connectAttr "|Hamster|hamsterRotCenter|hamsterRoot|torsoMid|torso|head|nose.wm" "skinCluster9.ma[0]"
		;
connectAttr "|Hamster|hamsterRotCenter|hamsterRoot|torsoMid|torso|head|nose.liw" "skinCluster9.lw[0]"
		;
connectAttr "|Hamster|hamsterRotCenter|hamsterRoot|torsoMid|torso|head|nose.obcc" "skinCluster9.ifcl[0]"
		;
connectAttr "bindPose7.msg" "skinCluster9.bp";
connectAttr "groupParts18.og" "tweak9.ip[0].ig";
connectAttr "groupId18.id" "tweak9.ip[0].gi";
connectAttr "skinCluster9GroupId.msg" "skinCluster9Set.gn" -na;
connectAttr "l_b_whiskerShape.iog.og[0]" "skinCluster9Set.dsm" -na;
connectAttr "skinCluster9.msg" "skinCluster9Set.ub[0]";
connectAttr "tweak9.og[0]" "skinCluster9GroupParts.ig";
connectAttr "skinCluster9GroupId.id" "skinCluster9GroupParts.gi";
connectAttr "groupId18.msg" "tweakSet9.gn" -na;
connectAttr "l_b_whiskerShape.iog.og[1]" "tweakSet9.dsm" -na;
connectAttr "tweak9.msg" "tweakSet9.ub[0]";
connectAttr "l_b_whiskerShapeOrig.w" "groupParts18.ig";
connectAttr "groupId18.id" "groupParts18.gi";
connectAttr "skinCluster10GroupParts.og" "skinCluster10.ip[0].ig";
connectAttr "skinCluster10GroupId.id" "skinCluster10.ip[0].gi";
connectAttr "|Hamster|hamsterRotCenter|hamsterRoot|torsoMid|torso|head|nose.wm" "skinCluster10.ma[0]"
		;
connectAttr "|Hamster|hamsterRotCenter|hamsterRoot|torsoMid|torso|head|nose.liw" "skinCluster10.lw[0]"
		;
connectAttr "|Hamster|hamsterRotCenter|hamsterRoot|torsoMid|torso|head|nose.obcc" "skinCluster10.ifcl[0]"
		;
connectAttr "bindPose7.msg" "skinCluster10.bp";
connectAttr "groupParts20.og" "tweak10.ip[0].ig";
connectAttr "groupId20.id" "tweak10.ip[0].gi";
connectAttr "skinCluster10GroupId.msg" "skinCluster10Set.gn" -na;
connectAttr "noseShape.iog.og[0]" "skinCluster10Set.dsm" -na;
connectAttr "skinCluster10.msg" "skinCluster10Set.ub[0]";
connectAttr "tweak10.og[0]" "skinCluster10GroupParts.ig";
connectAttr "skinCluster10GroupId.id" "skinCluster10GroupParts.gi";
connectAttr "groupId20.msg" "tweakSet10.gn" -na;
connectAttr "noseShape.iog.og[1]" "tweakSet10.dsm" -na;
connectAttr "tweak10.msg" "tweakSet10.ub[0]";
connectAttr "noseShapeOrig.w" "groupParts20.ig";
connectAttr "groupId20.id" "groupParts20.gi";
connectAttr "skinCluster11GroupParts.og" "skinCluster11.ip[0].ig";
connectAttr "skinCluster11GroupId.id" "skinCluster11.ip[0].gi";
connectAttr "|Hamster|hamsterRotCenter|hamsterRoot|torsoMid|torso|head|nose.wm" "skinCluster11.ma[0]"
		;
connectAttr "|Hamster|hamsterRotCenter|hamsterRoot|torsoMid|torso|head|nose.liw" "skinCluster11.lw[0]"
		;
connectAttr "|Hamster|hamsterRotCenter|hamsterRoot|torsoMid|torso|head|nose.obcc" "skinCluster11.ifcl[0]"
		;
connectAttr "bindPose7.msg" "skinCluster11.bp";
connectAttr "groupParts22.og" "tweak11.ip[0].ig";
connectAttr "groupId22.id" "tweak11.ip[0].gi";
connectAttr "skinCluster11GroupId.msg" "skinCluster11Set.gn" -na;
connectAttr "r_t_whiskerShape.iog.og[0]" "skinCluster11Set.dsm" -na;
connectAttr "skinCluster11.msg" "skinCluster11Set.ub[0]";
connectAttr "tweak11.og[0]" "skinCluster11GroupParts.ig";
connectAttr "skinCluster11GroupId.id" "skinCluster11GroupParts.gi";
connectAttr "groupId22.msg" "tweakSet11.gn" -na;
connectAttr "r_t_whiskerShape.iog.og[1]" "tweakSet11.dsm" -na;
connectAttr "tweak11.msg" "tweakSet11.ub[0]";
connectAttr "r_t_whiskerShapeOrig.w" "groupParts22.ig";
connectAttr "groupId22.id" "groupParts22.gi";
connectAttr "skinCluster12GroupParts.og" "skinCluster12.ip[0].ig";
connectAttr "skinCluster12GroupId.id" "skinCluster12.ip[0].gi";
connectAttr "|Hamster|hamsterRotCenter|hamsterRoot|torsoMid|torso|head|nose.wm" "skinCluster12.ma[0]"
		;
connectAttr "|Hamster|hamsterRotCenter|hamsterRoot|torsoMid|torso|head|nose.liw" "skinCluster12.lw[0]"
		;
connectAttr "|Hamster|hamsterRotCenter|hamsterRoot|torsoMid|torso|head|nose.obcc" "skinCluster12.ifcl[0]"
		;
connectAttr "bindPose7.msg" "skinCluster12.bp";
connectAttr "groupParts24.og" "tweak12.ip[0].ig";
connectAttr "groupId24.id" "tweak12.ip[0].gi";
connectAttr "skinCluster12GroupId.msg" "skinCluster12Set.gn" -na;
connectAttr "r_b_whiskerShape.iog.og[0]" "skinCluster12Set.dsm" -na;
connectAttr "skinCluster12.msg" "skinCluster12Set.ub[0]";
connectAttr "tweak12.og[0]" "skinCluster12GroupParts.ig";
connectAttr "skinCluster12GroupId.id" "skinCluster12GroupParts.gi";
connectAttr "groupId24.msg" "tweakSet12.gn" -na;
connectAttr "r_b_whiskerShape.iog.og[1]" "tweakSet12.dsm" -na;
connectAttr "tweak12.msg" "tweakSet12.ub[0]";
connectAttr "r_b_whiskerShapeOrig.w" "groupParts24.ig";
connectAttr "groupId24.id" "groupParts24.gi";
connectAttr "skinCluster13GroupParts.og" "skinCluster13.ip[0].ig";
connectAttr "skinCluster13GroupId.id" "skinCluster13.ip[0].gi";
connectAttr "|Hamster|hamsterRotCenter|hamsterRoot|torsoMid|torso|head|nose.wm" "skinCluster13.ma[0]"
		;
connectAttr "|Hamster|hamsterRotCenter|hamsterRoot|torsoMid|torso|head|nose.liw" "skinCluster13.lw[0]"
		;
connectAttr "|Hamster|hamsterRotCenter|hamsterRoot|torsoMid|torso|head|nose.obcc" "skinCluster13.ifcl[0]"
		;
connectAttr "bindPose7.msg" "skinCluster13.bp";
connectAttr "groupParts26.og" "tweak13.ip[0].ig";
connectAttr "groupId26.id" "tweak13.ip[0].gi";
connectAttr "skinCluster13GroupId.msg" "skinCluster13Set.gn" -na;
connectAttr "tooth1Shape.iog.og[0]" "skinCluster13Set.dsm" -na;
connectAttr "skinCluster13.msg" "skinCluster13Set.ub[0]";
connectAttr "tweak13.og[0]" "skinCluster13GroupParts.ig";
connectAttr "skinCluster13GroupId.id" "skinCluster13GroupParts.gi";
connectAttr "groupId26.msg" "tweakSet13.gn" -na;
connectAttr "tooth1Shape.iog.og[1]" "tweakSet13.dsm" -na;
connectAttr "tweak13.msg" "tweakSet13.ub[0]";
connectAttr "tooth1ShapeOrig.w" "groupParts26.ig";
connectAttr "groupId26.id" "groupParts26.gi";
connectAttr "skinCluster14GroupParts.og" "skinCluster14.ip[0].ig";
connectAttr "skinCluster14GroupId.id" "skinCluster14.ip[0].gi";
connectAttr "|Hamster|hamsterRotCenter|hamsterRoot|torsoMid|torso|head|nose.wm" "skinCluster14.ma[0]"
		;
connectAttr "|Hamster|hamsterRotCenter|hamsterRoot|torsoMid|torso|head|nose.liw" "skinCluster14.lw[0]"
		;
connectAttr "|Hamster|hamsterRotCenter|hamsterRoot|torsoMid|torso|head|nose.obcc" "skinCluster14.ifcl[0]"
		;
connectAttr "bindPose7.msg" "skinCluster14.bp";
connectAttr "groupParts28.og" "tweak14.ip[0].ig";
connectAttr "groupId28.id" "tweak14.ip[0].gi";
connectAttr "skinCluster14GroupId.msg" "skinCluster14Set.gn" -na;
connectAttr "tooth2Shape.iog.og[0]" "skinCluster14Set.dsm" -na;
connectAttr "skinCluster14.msg" "skinCluster14Set.ub[0]";
connectAttr "tweak14.og[0]" "skinCluster14GroupParts.ig";
connectAttr "skinCluster14GroupId.id" "skinCluster14GroupParts.gi";
connectAttr "groupId28.msg" "tweakSet14.gn" -na;
connectAttr "tooth2Shape.iog.og[1]" "tweakSet14.dsm" -na;
connectAttr "tweak14.msg" "tweakSet14.ub[0]";
connectAttr "tooth2ShapeOrig.w" "groupParts28.ig";
connectAttr "groupId28.id" "groupParts28.gi";
connectAttr "skinCluster15GroupParts.og" "skinCluster15.ip[0].ig";
connectAttr "skinCluster15GroupId.id" "skinCluster15.ip[0].gi";
connectAttr "bindPose8.msg" "skinCluster15.bp";
connectAttr "|Hamster|hamsterRotCenter|hamsterRoot|torsoMid|torso|head|l_t_eyeLid.wm" "skinCluster15.ma[0]"
		;
connectAttr "|Hamster|hamsterRotCenter|hamsterRoot|torsoMid|torso|head|l_t_eyeLid.liw" "skinCluster15.lw[0]"
		;
connectAttr "|Hamster|hamsterRotCenter|hamsterRoot|torsoMid|torso|head|l_t_eyeLid.obcc" "skinCluster15.ifcl[0]"
		;
connectAttr "groupParts30.og" "tweak15.ip[0].ig";
connectAttr "groupId30.id" "tweak15.ip[0].gi";
connectAttr "skinCluster15GroupId.msg" "skinCluster15Set.gn" -na;
connectAttr "l_t_eyeLidShape.iog.og[0]" "skinCluster15Set.dsm" -na;
connectAttr "skinCluster15.msg" "skinCluster15Set.ub[0]";
connectAttr "tweak15.og[0]" "skinCluster15GroupParts.ig";
connectAttr "skinCluster15GroupId.id" "skinCluster15GroupParts.gi";
connectAttr "groupId30.msg" "tweakSet15.gn" -na;
connectAttr "l_t_eyeLidShape.iog.og[1]" "tweakSet15.dsm" -na;
connectAttr "tweak15.msg" "tweakSet15.ub[0]";
connectAttr "l_t_eyeLidShapeOrig.w" "groupParts30.ig";
connectAttr "groupId30.id" "groupParts30.gi";
connectAttr "Hamster.msg" "bindPose8.m[0]";
connectAttr "hamsterRotCenter.msg" "bindPose8.m[1]";
connectAttr "hamsterRoot.msg" "bindPose8.m[2]";
connectAttr "torsoMid.msg" "bindPose8.m[3]";
connectAttr "torso.msg" "bindPose8.m[4]";
connectAttr "head.msg" "bindPose8.m[5]";
connectAttr "|Hamster|hamsterRotCenter|hamsterRoot|torsoMid|torso|head|l_t_eyeLid.msg" "bindPose8.m[6]"
		;
connectAttr "transform4.msg" "bindPose8.m[7]";
connectAttr "l_arm.msg" "bindPose8.m[8]";
connectAttr "l_elbow.msg" "bindPose8.m[9]";
connectAttr "l_hand.msg" "bindPose8.m[10]";
connectAttr "r_arm.msg" "bindPose8.m[11]";
connectAttr "r_elbow.msg" "bindPose8.m[12]";
connectAttr "r_hand.msg" "bindPose8.m[13]";
connectAttr "hips.msg" "bindPose8.m[14]";
connectAttr "transform1.msg" "bindPose8.m[15]";
connectAttr "r_leg.msg" "bindPose8.m[16]";
connectAttr "r_foot.msg" "bindPose8.m[17]";
connectAttr "l_leg.msg" "bindPose8.m[18]";
connectAttr "l_foot.msg" "bindPose8.m[19]";
connectAttr "|Hamster|hamsterRotCenter|hamsterRoot|torsoMid|torso|head|nose.msg" "bindPose8.m[20]"
		;
connectAttr "jaw.msg" "bindPose8.m[21]";
connectAttr "Belly.msg" "bindPose8.m[22]";
connectAttr "Tail.msg" "bindPose8.m[23]";
connectAttr "bindPose8.w" "bindPose8.p[0]";
connectAttr "bindPose8.m[0]" "bindPose8.p[1]";
connectAttr "bindPose8.m[1]" "bindPose8.p[2]";
connectAttr "bindPose8.m[2]" "bindPose8.p[3]";
connectAttr "bindPose8.m[3]" "bindPose8.p[4]";
connectAttr "bindPose8.m[4]" "bindPose8.p[5]";
connectAttr "bindPose8.m[5]" "bindPose8.p[6]";
connectAttr "bindPose8.m[4]" "bindPose8.p[7]";
connectAttr "transform4.msg" "bindPose8.p[8]";
connectAttr "l_arm.msg" "bindPose8.p[9]";
connectAttr "l_elbow.msg" "bindPose8.p[10]";
connectAttr "bindPose8.m[7]" "bindPose8.p[11]";
connectAttr "r_arm.msg" "bindPose8.p[12]";
connectAttr "r_elbow.msg" "bindPose8.p[13]";
connectAttr "bindPose8.m[2]" "bindPose8.p[14]";
connectAttr "hips.msg" "bindPose8.p[15]";
connectAttr "transform1.msg" "bindPose8.p[16]";
connectAttr "r_leg.msg" "bindPose8.p[17]";
connectAttr "bindPose8.m[15]" "bindPose8.p[18]";
connectAttr "l_leg.msg" "bindPose8.p[19]";
connectAttr "bindPose8.m[5]" "bindPose8.p[20]";
connectAttr "bindPose8.m[5]" "bindPose8.p[21]";
connectAttr "bindPose8.m[2]" "bindPose8.p[22]";
connectAttr "bindPose8.m[14]" "bindPose8.p[23]";
connectAttr "l_arm.bps" "bindPose8.wm[8]";
connectAttr "l_elbow.bps" "bindPose8.wm[9]";
connectAttr "l_hand.bps" "bindPose8.wm[10]";
connectAttr "r_arm.bps" "bindPose8.wm[11]";
connectAttr "r_elbow.bps" "bindPose8.wm[12]";
connectAttr "r_hand.bps" "bindPose8.wm[13]";
connectAttr "hips.bps" "bindPose8.wm[14]";
connectAttr "r_leg.bps" "bindPose8.wm[16]";
connectAttr "r_foot.bps" "bindPose8.wm[17]";
connectAttr "l_leg.bps" "bindPose8.wm[18]";
connectAttr "l_foot.bps" "bindPose8.wm[19]";
connectAttr "|Hamster|hamsterRotCenter|hamsterRoot|torsoMid|torso|head|nose.bps" "bindPose8.wm[20]"
		;
connectAttr "jaw.bps" "bindPose8.wm[21]";
connectAttr "Belly.bps" "bindPose8.wm[22]";
connectAttr "Tail.bps" "bindPose8.wm[23]";
connectAttr "skinCluster16GroupParts.og" "skinCluster16.ip[0].ig";
connectAttr "skinCluster16GroupId.id" "skinCluster16.ip[0].gi";
connectAttr "bindPose9.msg" "skinCluster16.bp";
connectAttr "|Hamster|hamsterRotCenter|hamsterRoot|torsoMid|torso|head|l_b_eyeLid.wm" "skinCluster16.ma[0]"
		;
connectAttr "|Hamster|hamsterRotCenter|hamsterRoot|torsoMid|torso|head|l_b_eyeLid.liw" "skinCluster16.lw[0]"
		;
connectAttr "|Hamster|hamsterRotCenter|hamsterRoot|torsoMid|torso|head|l_b_eyeLid.obcc" "skinCluster16.ifcl[0]"
		;
connectAttr "groupParts32.og" "tweak16.ip[0].ig";
connectAttr "groupId32.id" "tweak16.ip[0].gi";
connectAttr "skinCluster16GroupId.msg" "skinCluster16Set.gn" -na;
connectAttr "l_b_eyeLidShape.iog.og[0]" "skinCluster16Set.dsm" -na;
connectAttr "skinCluster16.msg" "skinCluster16Set.ub[0]";
connectAttr "tweak16.og[0]" "skinCluster16GroupParts.ig";
connectAttr "skinCluster16GroupId.id" "skinCluster16GroupParts.gi";
connectAttr "groupId32.msg" "tweakSet16.gn" -na;
connectAttr "l_b_eyeLidShape.iog.og[1]" "tweakSet16.dsm" -na;
connectAttr "tweak16.msg" "tweakSet16.ub[0]";
connectAttr "l_b_eyeLidShapeOrig.w" "groupParts32.ig";
connectAttr "groupId32.id" "groupParts32.gi";
connectAttr "Hamster.msg" "bindPose9.m[0]";
connectAttr "hamsterRotCenter.msg" "bindPose9.m[1]";
connectAttr "hamsterRoot.msg" "bindPose9.m[2]";
connectAttr "torsoMid.msg" "bindPose9.m[3]";
connectAttr "torso.msg" "bindPose9.m[4]";
connectAttr "head.msg" "bindPose9.m[5]";
connectAttr "|Hamster|hamsterRotCenter|hamsterRoot|torsoMid|torso|head|l_b_eyeLid.msg" "bindPose9.m[6]"
		;
connectAttr "bindPose9.w" "bindPose9.p[0]";
connectAttr "bindPose9.m[0]" "bindPose9.p[1]";
connectAttr "bindPose9.m[1]" "bindPose9.p[2]";
connectAttr "bindPose9.m[2]" "bindPose9.p[3]";
connectAttr "bindPose9.m[3]" "bindPose9.p[4]";
connectAttr "bindPose9.m[4]" "bindPose9.p[5]";
connectAttr "bindPose9.m[5]" "bindPose9.p[6]";
connectAttr "skinCluster17GroupParts.og" "skinCluster17.ip[0].ig";
connectAttr "skinCluster17GroupId.id" "skinCluster17.ip[0].gi";
connectAttr "bindPose10.msg" "skinCluster17.bp";
connectAttr "|Hamster|hamsterRotCenter|hamsterRoot|torsoMid|torso|head|r_t_eyeLid.wm" "skinCluster17.ma[0]"
		;
connectAttr "|Hamster|hamsterRotCenter|hamsterRoot|torsoMid|torso|head|r_t_eyeLid.liw" "skinCluster17.lw[0]"
		;
connectAttr "|Hamster|hamsterRotCenter|hamsterRoot|torsoMid|torso|head|r_t_eyeLid.obcc" "skinCluster17.ifcl[0]"
		;
connectAttr "groupParts34.og" "tweak17.ip[0].ig";
connectAttr "groupId34.id" "tweak17.ip[0].gi";
connectAttr "skinCluster17GroupId.msg" "skinCluster17Set.gn" -na;
connectAttr "r_t_eyeLidShape.iog.og[0]" "skinCluster17Set.dsm" -na;
connectAttr "skinCluster17.msg" "skinCluster17Set.ub[0]";
connectAttr "tweak17.og[0]" "skinCluster17GroupParts.ig";
connectAttr "skinCluster17GroupId.id" "skinCluster17GroupParts.gi";
connectAttr "groupId34.msg" "tweakSet17.gn" -na;
connectAttr "r_t_eyeLidShape.iog.og[1]" "tweakSet17.dsm" -na;
connectAttr "tweak17.msg" "tweakSet17.ub[0]";
connectAttr "r_t_eyeLidShapeOrig.w" "groupParts34.ig";
connectAttr "groupId34.id" "groupParts34.gi";
connectAttr "Hamster.msg" "bindPose10.m[0]";
connectAttr "hamsterRotCenter.msg" "bindPose10.m[1]";
connectAttr "hamsterRoot.msg" "bindPose10.m[2]";
connectAttr "torsoMid.msg" "bindPose10.m[3]";
connectAttr "torso.msg" "bindPose10.m[4]";
connectAttr "head.msg" "bindPose10.m[5]";
connectAttr "|Hamster|hamsterRotCenter|hamsterRoot|torsoMid|torso|head|r_t_eyeLid.msg" "bindPose10.m[6]"
		;
connectAttr "bindPose10.w" "bindPose10.p[0]";
connectAttr "bindPose10.m[0]" "bindPose10.p[1]";
connectAttr "bindPose10.m[1]" "bindPose10.p[2]";
connectAttr "bindPose10.m[2]" "bindPose10.p[3]";
connectAttr "bindPose10.m[3]" "bindPose10.p[4]";
connectAttr "bindPose10.m[4]" "bindPose10.p[5]";
connectAttr "bindPose10.m[5]" "bindPose10.p[6]";
connectAttr "skinCluster18GroupParts.og" "skinCluster18.ip[0].ig";
connectAttr "skinCluster18GroupId.id" "skinCluster18.ip[0].gi";
connectAttr "bindPose11.msg" "skinCluster18.bp";
connectAttr "|Hamster|hamsterRotCenter|hamsterRoot|torsoMid|torso|head|r_b_eyeLid.wm" "skinCluster18.ma[0]"
		;
connectAttr "|Hamster|hamsterRotCenter|hamsterRoot|torsoMid|torso|head|r_b_eyeLid.liw" "skinCluster18.lw[0]"
		;
connectAttr "|Hamster|hamsterRotCenter|hamsterRoot|torsoMid|torso|head|r_b_eyeLid.obcc" "skinCluster18.ifcl[0]"
		;
connectAttr "groupParts36.og" "tweak18.ip[0].ig";
connectAttr "groupId36.id" "tweak18.ip[0].gi";
connectAttr "skinCluster18GroupId.msg" "skinCluster18Set.gn" -na;
connectAttr "r_b_eyeLidShape.iog.og[0]" "skinCluster18Set.dsm" -na;
connectAttr "skinCluster18.msg" "skinCluster18Set.ub[0]";
connectAttr "tweak18.og[0]" "skinCluster18GroupParts.ig";
connectAttr "skinCluster18GroupId.id" "skinCluster18GroupParts.gi";
connectAttr "groupId36.msg" "tweakSet18.gn" -na;
connectAttr "r_b_eyeLidShape.iog.og[1]" "tweakSet18.dsm" -na;
connectAttr "tweak18.msg" "tweakSet18.ub[0]";
connectAttr "r_b_eyeLidShapeOrig.w" "groupParts36.ig";
connectAttr "groupId36.id" "groupParts36.gi";
connectAttr "Hamster.msg" "bindPose11.m[0]";
connectAttr "hamsterRotCenter.msg" "bindPose11.m[1]";
connectAttr "hamsterRoot.msg" "bindPose11.m[2]";
connectAttr "torsoMid.msg" "bindPose11.m[3]";
connectAttr "torso.msg" "bindPose11.m[4]";
connectAttr "head.msg" "bindPose11.m[5]";
connectAttr "|Hamster|hamsterRotCenter|hamsterRoot|torsoMid|torso|head|r_b_eyeLid.msg" "bindPose11.m[6]"
		;
connectAttr "bindPose11.w" "bindPose11.p[0]";
connectAttr "bindPose11.m[0]" "bindPose11.p[1]";
connectAttr "bindPose11.m[1]" "bindPose11.p[2]";
connectAttr "bindPose11.m[2]" "bindPose11.p[3]";
connectAttr "bindPose11.m[3]" "bindPose11.p[4]";
connectAttr "bindPose11.m[4]" "bindPose11.p[5]";
connectAttr "bindPose11.m[5]" "bindPose11.p[6]";
connectAttr "skinCluster19GroupParts.og" "skinCluster19.ip[0].ig";
connectAttr "skinCluster19GroupId.id" "skinCluster19.ip[0].gi";
connectAttr "l_hand.wm" "skinCluster19.ma[0]";
connectAttr "l_elbow.wm" "skinCluster19.ma[1]";
connectAttr "l_arm.wm" "skinCluster19.ma[2]";
connectAttr "r_arm.wm" "skinCluster19.ma[3]";
connectAttr "r_elbow.wm" "skinCluster19.ma[4]";
connectAttr "r_hand.wm" "skinCluster19.ma[5]";
connectAttr "r_foot.wm" "skinCluster19.ma[6]";
connectAttr "r_leg.wm" "skinCluster19.ma[7]";
connectAttr "l_foot.wm" "skinCluster19.ma[8]";
connectAttr "l_leg.wm" "skinCluster19.ma[9]";
connectAttr "hips.wm" "skinCluster19.ma[10]";
connectAttr "|Hamster|hamsterRotCenter|hamsterRoot|torsoMid|torso|head|nose.wm" "skinCluster19.ma[11]"
		;
connectAttr "jaw.wm" "skinCluster19.ma[12]";
connectAttr "head.wm" "skinCluster19.ma[13]";
connectAttr "torso.wm" "skinCluster19.ma[14]";
connectAttr "Belly.wm" "skinCluster19.ma[15]";
connectAttr "Tail.wm" "skinCluster19.ma[16]";
connectAttr "l_hand.liw" "skinCluster19.lw[0]";
connectAttr "l_elbow.liw" "skinCluster19.lw[1]";
connectAttr "l_arm.liw" "skinCluster19.lw[2]";
connectAttr "r_arm.liw" "skinCluster19.lw[3]";
connectAttr "r_elbow.liw" "skinCluster19.lw[4]";
connectAttr "r_hand.liw" "skinCluster19.lw[5]";
connectAttr "r_foot.liw" "skinCluster19.lw[6]";
connectAttr "r_leg.liw" "skinCluster19.lw[7]";
connectAttr "l_foot.liw" "skinCluster19.lw[8]";
connectAttr "l_leg.liw" "skinCluster19.lw[9]";
connectAttr "hips.liw" "skinCluster19.lw[10]";
connectAttr "|Hamster|hamsterRotCenter|hamsterRoot|torsoMid|torso|head|nose.liw" "skinCluster19.lw[11]"
		;
connectAttr "jaw.liw" "skinCluster19.lw[12]";
connectAttr "head.liw" "skinCluster19.lw[13]";
connectAttr "torso.liw" "skinCluster19.lw[14]";
connectAttr "Belly.liw" "skinCluster19.lw[15]";
connectAttr "Tail.liw" "skinCluster19.lw[16]";
connectAttr "l_hand.obcc" "skinCluster19.ifcl[0]";
connectAttr "l_elbow.obcc" "skinCluster19.ifcl[1]";
connectAttr "l_arm.obcc" "skinCluster19.ifcl[2]";
connectAttr "r_arm.obcc" "skinCluster19.ifcl[3]";
connectAttr "r_elbow.obcc" "skinCluster19.ifcl[4]";
connectAttr "r_hand.obcc" "skinCluster19.ifcl[5]";
connectAttr "r_foot.obcc" "skinCluster19.ifcl[6]";
connectAttr "r_leg.obcc" "skinCluster19.ifcl[7]";
connectAttr "l_foot.obcc" "skinCluster19.ifcl[8]";
connectAttr "l_leg.obcc" "skinCluster19.ifcl[9]";
connectAttr "hips.obcc" "skinCluster19.ifcl[10]";
connectAttr "|Hamster|hamsterRotCenter|hamsterRoot|torsoMid|torso|head|nose.obcc" "skinCluster19.ifcl[11]"
		;
connectAttr "jaw.obcc" "skinCluster19.ifcl[12]";
connectAttr "head.obcc" "skinCluster19.ifcl[13]";
connectAttr "torso.obcc" "skinCluster19.ifcl[14]";
connectAttr "Belly.obcc" "skinCluster19.ifcl[15]";
connectAttr "Tail.obcc" "skinCluster19.ifcl[16]";
connectAttr "bindPose8.msg" "skinCluster19.bp";
connectAttr "groupParts38.og" "tweak19.ip[0].ig";
connectAttr "groupId38.id" "tweak19.ip[0].gi";
connectAttr "skinCluster19GroupId.msg" "skinCluster19Set.gn" -na;
connectAttr "bodyShape.iog.og[0]" "skinCluster19Set.dsm" -na;
connectAttr "skinCluster19.msg" "skinCluster19Set.ub[0]";
connectAttr "tweak19.og[0]" "skinCluster19GroupParts.ig";
connectAttr "skinCluster19GroupId.id" "skinCluster19GroupParts.gi";
connectAttr "groupId38.msg" "tweakSet19.gn" -na;
connectAttr "bodyShape.iog.og[1]" "tweakSet19.dsm" -na;
connectAttr "tweak19.msg" "tweakSet19.ub[0]";
connectAttr "bodyShapeOrig.w" "groupParts38.ig";
connectAttr "groupId38.id" "groupParts38.gi";
connectAttr "skinCluster20GroupParts.og" "skinCluster20.ip[0].ig";
connectAttr "skinCluster20GroupId.id" "skinCluster20.ip[0].gi";
connectAttr "Tail.wm" "skinCluster20.ma[0]";
connectAttr "Tail.liw" "skinCluster20.lw[0]";
connectAttr "Tail.obcc" "skinCluster20.ifcl[0]";
connectAttr "bindPose8.msg" "skinCluster20.bp";
connectAttr "groupParts40.og" "tweak20.ip[0].ig";
connectAttr "groupId40.id" "tweak20.ip[0].gi";
connectAttr "skinCluster20GroupId.msg" "skinCluster20Set.gn" -na;
connectAttr "tailShape.iog.og[0]" "skinCluster20Set.dsm" -na;
connectAttr "skinCluster20.msg" "skinCluster20Set.ub[0]";
connectAttr "tweak20.og[0]" "skinCluster20GroupParts.ig";
connectAttr "skinCluster20GroupId.id" "skinCluster20GroupParts.gi";
connectAttr "groupId40.msg" "tweakSet20.gn" -na;
connectAttr "tailShape.iog.og[1]" "tweakSet20.dsm" -na;
connectAttr "tweak20.msg" "tweakSet20.ub[0]";
connectAttr "tailShapeOrig.w" "groupParts40.ig";
connectAttr "groupId40.id" "groupParts40.gi";
connectAttr "layerManager.dli[1]" "Skeleton.id";
connectAttr "HamsterEyes.oc" "blinn1SG.ss";
connectAttr "lBlackEyeShape.iog" "blinn1SG.dsm" -na;
connectAttr "rBlackEyeShape.iog" "blinn1SG.dsm" -na;
connectAttr "blinn1SG.msg" "materialInfo2.sg";
connectAttr "HamsterEyes.msg" "materialInfo2.m";
connectAttr "skinCluster21GroupParts.og" "skinCluster21.ip[0].ig";
connectAttr "skinCluster21GroupId.id" "skinCluster21.ip[0].gi";
connectAttr "bindPose12.msg" "skinCluster21.bp";
connectAttr "l_eyeAlt.wm" "skinCluster21.ma[0]";
connectAttr "l_eyeAlt.liw" "skinCluster21.lw[0]";
connectAttr "l_eyeAlt.obcc" "skinCluster21.ifcl[0]";
connectAttr "groupParts42.og" "tweak21.ip[0].ig";
connectAttr "groupId42.id" "tweak21.ip[0].gi";
connectAttr "skinCluster21GroupId.msg" "skinCluster21Set.gn" -na;
connectAttr "lBlackEyeShape.iog.og[0]" "skinCluster21Set.dsm" -na;
connectAttr "skinCluster21.msg" "skinCluster21Set.ub[0]";
connectAttr "tweak21.og[0]" "skinCluster21GroupParts.ig";
connectAttr "skinCluster21GroupId.id" "skinCluster21GroupParts.gi";
connectAttr "groupId42.msg" "tweakSet21.gn" -na;
connectAttr "lBlackEyeShape.iog.og[1]" "tweakSet21.dsm" -na;
connectAttr "tweak21.msg" "tweakSet21.ub[0]";
connectAttr "lBlackEyeShapeOrig.w" "groupParts42.ig";
connectAttr "groupId42.id" "groupParts42.gi";
connectAttr "Hamster.msg" "bindPose12.m[0]";
connectAttr "hamsterRotCenter.msg" "bindPose12.m[1]";
connectAttr "hamsterRoot.msg" "bindPose12.m[2]";
connectAttr "torsoMid.msg" "bindPose12.m[3]";
connectAttr "torso.msg" "bindPose12.m[4]";
connectAttr "head.msg" "bindPose12.m[5]";
connectAttr "l_eyeAlt.msg" "bindPose12.m[6]";
connectAttr "bindPose12.w" "bindPose12.p[0]";
connectAttr "bindPose12.m[0]" "bindPose12.p[1]";
connectAttr "bindPose12.m[1]" "bindPose12.p[2]";
connectAttr "bindPose12.m[2]" "bindPose12.p[3]";
connectAttr "bindPose12.m[3]" "bindPose12.p[4]";
connectAttr "bindPose12.m[4]" "bindPose12.p[5]";
connectAttr "bindPose12.m[5]" "bindPose12.p[6]";
connectAttr "skinCluster22GroupParts.og" "skinCluster22.ip[0].ig";
connectAttr "skinCluster22GroupId.id" "skinCluster22.ip[0].gi";
connectAttr "bindPose13.msg" "skinCluster22.bp";
connectAttr "r_eyeAlt.wm" "skinCluster22.ma[0]";
connectAttr "r_eyeAlt.liw" "skinCluster22.lw[0]";
connectAttr "r_eyeAlt.obcc" "skinCluster22.ifcl[0]";
connectAttr "groupParts44.og" "tweak22.ip[0].ig";
connectAttr "groupId44.id" "tweak22.ip[0].gi";
connectAttr "skinCluster22GroupId.msg" "skinCluster22Set.gn" -na;
connectAttr "rBlackEyeShape.iog.og[0]" "skinCluster22Set.dsm" -na;
connectAttr "skinCluster22.msg" "skinCluster22Set.ub[0]";
connectAttr "tweak22.og[0]" "skinCluster22GroupParts.ig";
connectAttr "skinCluster22GroupId.id" "skinCluster22GroupParts.gi";
connectAttr "groupId44.msg" "tweakSet22.gn" -na;
connectAttr "rBlackEyeShape.iog.og[1]" "tweakSet22.dsm" -na;
connectAttr "tweak22.msg" "tweakSet22.ub[0]";
connectAttr "rBlackEyeShapeOrig.w" "groupParts44.ig";
connectAttr "groupId44.id" "groupParts44.gi";
connectAttr "Hamster.msg" "bindPose13.m[0]";
connectAttr "hamsterRotCenter.msg" "bindPose13.m[1]";
connectAttr "hamsterRoot.msg" "bindPose13.m[2]";
connectAttr "torsoMid.msg" "bindPose13.m[3]";
connectAttr "torso.msg" "bindPose13.m[4]";
connectAttr "head.msg" "bindPose13.m[5]";
connectAttr "r_eyeAlt.msg" "bindPose13.m[6]";
connectAttr "bindPose13.w" "bindPose13.p[0]";
connectAttr "bindPose13.m[0]" "bindPose13.p[1]";
connectAttr "bindPose13.m[1]" "bindPose13.p[2]";
connectAttr "bindPose13.m[2]" "bindPose13.p[3]";
connectAttr "bindPose13.m[3]" "bindPose13.p[4]";
connectAttr "bindPose13.m[4]" "bindPose13.p[5]";
connectAttr "bindPose13.m[5]" "bindPose13.p[6]";
connectAttr "skinCluster23GroupParts.og" "skinCluster23.ip[0].ig";
connectAttr "skinCluster23GroupId.id" "skinCluster23.ip[0].gi";
connectAttr "bindPose14.msg" "skinCluster23.bp";
connectAttr "r_eyeAltLid.wm" "skinCluster23.ma[0]";
connectAttr "r_eyeAltLid.liw" "skinCluster23.lw[0]";
connectAttr "r_eyeAltLid.obcc" "skinCluster23.ifcl[0]";
connectAttr "groupParts46.og" "tweak23.ip[0].ig";
connectAttr "groupId46.id" "tweak23.ip[0].gi";
connectAttr "skinCluster23GroupId.msg" "skinCluster23Set.gn" -na;
connectAttr "rBlackEyeLidShape.iog.og[2]" "skinCluster23Set.dsm" -na;
connectAttr "skinCluster23.msg" "skinCluster23Set.ub[0]";
connectAttr "tweak23.og[0]" "skinCluster23GroupParts.ig";
connectAttr "skinCluster23GroupId.id" "skinCluster23GroupParts.gi";
connectAttr "groupId46.msg" "tweakSet23.gn" -na;
connectAttr "rBlackEyeLidShape.iog.og[3]" "tweakSet23.dsm" -na;
connectAttr "tweak23.msg" "tweakSet23.ub[0]";
connectAttr "rBlackEyeLidShapeOrig1.w" "groupParts46.ig";
connectAttr "groupId46.id" "groupParts46.gi";
connectAttr "Hamster.msg" "bindPose14.m[0]";
connectAttr "hamsterRotCenter.msg" "bindPose14.m[1]";
connectAttr "hamsterRoot.msg" "bindPose14.m[2]";
connectAttr "torsoMid.msg" "bindPose14.m[3]";
connectAttr "torso.msg" "bindPose14.m[4]";
connectAttr "head.msg" "bindPose14.m[5]";
connectAttr "r_eyeAltLid.msg" "bindPose14.m[6]";
connectAttr "bindPose14.w" "bindPose14.p[0]";
connectAttr "bindPose14.m[0]" "bindPose14.p[1]";
connectAttr "bindPose14.m[1]" "bindPose14.p[2]";
connectAttr "bindPose14.m[2]" "bindPose14.p[3]";
connectAttr "bindPose14.m[3]" "bindPose14.p[4]";
connectAttr "bindPose14.m[4]" "bindPose14.p[5]";
connectAttr "bindPose14.m[5]" "bindPose14.p[6]";
connectAttr "skinCluster24GroupParts.og" "skinCluster24.ip[0].ig";
connectAttr "skinCluster24GroupId.id" "skinCluster24.ip[0].gi";
connectAttr "bindPose15.msg" "skinCluster24.bp";
connectAttr "l_eyeAltLid.wm" "skinCluster24.ma[0]";
connectAttr "l_eyeAltLid.liw" "skinCluster24.lw[0]";
connectAttr "l_eyeAltLid.obcc" "skinCluster24.ifcl[0]";
connectAttr "groupParts48.og" "tweak24.ip[0].ig";
connectAttr "groupId48.id" "tweak24.ip[0].gi";
connectAttr "skinCluster24GroupId.msg" "skinCluster24Set.gn" -na;
connectAttr "lBlackEyeLidShape.iog.og[2]" "skinCluster24Set.dsm" -na;
connectAttr "skinCluster24.msg" "skinCluster24Set.ub[0]";
connectAttr "tweak24.og[0]" "skinCluster24GroupParts.ig";
connectAttr "skinCluster24GroupId.id" "skinCluster24GroupParts.gi";
connectAttr "groupId48.msg" "tweakSet24.gn" -na;
connectAttr "lBlackEyeLidShape.iog.og[3]" "tweakSet24.dsm" -na;
connectAttr "tweak24.msg" "tweakSet24.ub[0]";
connectAttr "lBlackEyeLidShapeOrig1.w" "groupParts48.ig";
connectAttr "groupId48.id" "groupParts48.gi";
connectAttr "Hamster.msg" "bindPose15.m[0]";
connectAttr "hamsterRotCenter.msg" "bindPose15.m[1]";
connectAttr "hamsterRoot.msg" "bindPose15.m[2]";
connectAttr "torsoMid.msg" "bindPose15.m[3]";
connectAttr "torso.msg" "bindPose15.m[4]";
connectAttr "head.msg" "bindPose15.m[5]";
connectAttr "l_eyeAltLid.msg" "bindPose15.m[6]";
connectAttr "bindPose15.w" "bindPose15.p[0]";
connectAttr "bindPose15.m[0]" "bindPose15.p[1]";
connectAttr "bindPose15.m[1]" "bindPose15.p[2]";
connectAttr "bindPose15.m[2]" "bindPose15.p[3]";
connectAttr "bindPose15.m[3]" "bindPose15.p[4]";
connectAttr "bindPose15.m[4]" "bindPose15.p[5]";
connectAttr "bindPose15.m[5]" "bindPose15.p[6]";
connectAttr "noseSG.pa" ":renderPartition.st" -na;
connectAttr "blinn1SG.pa" ":renderPartition.st" -na;
connectAttr "HamsterMat.msg" ":defaultShaderList1.s" -na;
connectAttr "HamsterEyes.msg" ":defaultShaderList1.s" -na;
connectAttr "place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "file1.msg" ":defaultTextureList1.tx" -na;
// End of hamster_Maya.ma
