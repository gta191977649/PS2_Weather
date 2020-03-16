local WeatherArr = {
	["Los Santos"] = {0,1--[[,2,3,4--]]},
	["San Fierro"] = {5,6--[[,7,8,9--]]},
	["Las Venturas"] = {10,11--[[,12--]]},
	["Red County"] = {13,14--[[,15,16--]]},
	["Whetstone"] = {13,14--[[,15,16--]]},
	["Flint County"] = {13,14--[[,15,16--]]},
	["Bone County"] = {17,18--[[,19--]]},
	["Tierra Robada"] = {17,18--[[,19--]]},
	["UNDERWATER"] = {20},
	["Unknown"] = {21, 22}, 
	
	["Portland"] = {29,30,31,32}, 
	["Staunton Island"] = {29,30,31,32}, 
	["Shoreside Vale"] = {29,30,31,32}, 
	
	["Vice City"] = {23,24,25,26,27,28}, 
}





local CurrentWeather = {
	["Los Santos"] = nil,
	["San Fierro"] = nil,
	["Las Venturas"] = nil,
	["Red County"] = nil,
	["Whetstone"] = nil,
	["Flint County"] = nil,
	["Bone County"] = nil,
	["Tierra Robada"] = nil,
	["UNDERWATER"] = nil,
	["Unknown"] = nil, 
	
	["Portland"] = nil, 
	["Staunton Island"] = nil, 
	["Shoreside Vale"] = nil, 
	
	["Vice City"] = nil, 
	
}


function NewWeather()
	for name, k in pairs(WeatherArr) do
		CurrentWeather[name] = WeatherArr[name][math.random(#WeatherArr[name])]
	end
	setElementData(root, "weather", toJSON(CurrentWeather))
	
	for _,thePlayer in ipairs(getElementsByType("player")) do 
		triggerClientEvent(thePlayer, "GameSky", thePlayer, false, true)
	end
end
addEvent("NewWeather", true)
addEventHandler("NewWeather", root, NewWeather)



function preLoad()
	NewWeather()
end
addEventHandler("onResourceStart", getResourceRootElement(), preLoad)



local Cheat_Weather = {
	["afzllqll"] = 1, 
	["icikpyh"] = 0, 
	["auifrvqs"] = 8, 
	["mghxyrm"] = 16, 
	["alnsfmzo"] = 4, 
	["cfvfgmj"] = 7, 
	["cwjxuoc"] = 19, 
	["ofviac"] = 0, 
}


function CheatWeather(zone, cheat)
	CurrentWeather[zone] = Cheat_Weather[cheat]
	setElementData(root, "weather", toJSON(CurrentWeather))
	
	for _,thePlayer in ipairs(getElementsByType("player")) do 
		triggerClientEvent(thePlayer, "GameSky", thePlayer, false, false)
	end
end
addEvent("CheatWeather", true)
addEventHandler("CheatWeather", root, CheatWeather)




















local OffsetLiberty = {[1] = -8000, [2] = -8000, [3] = 0}
local LibertySmall = {
	--["WHOLEVC"] = {
	--	{"WHOLEVC", 5977.83, -10413.5, 10069.9, -6351.89}, 
	--	{"WHOLELC", 6109.65, 6902.24, 10069.9, 10206.4}
	--}, 
	--["COPS_1"] = {
	--	{"COPS_1", 9050.8, 8304.98, 9097.36, 8368.98}
	--}, 
	--["HOSPI_1"] = {
	--	{"HOSPI_1", 9051.09, 8390.02, 9097.09, 8478.83}
	--}, 
	--["FILLIN1"] = {
	--	{"FILLIN1", 9278.77, 8386.66, 9304.17, 8487.46}
	--}, 
	--["MAIN_D1"] = {
	--	{"MAIN_D1", 8952.53, 8092.73, 8980.16, 8362.31}
	--}, 
	--["MAIN_D2"] = {
	--	{"MAIN_D2", 8881.08, 8362.63, 8979.83, 8390.44}
	--}, 
	--["FISHFAC"] = {
	--	{"FISHFAC", 8859.21, 7850.19, 8931.14, 7923.99}
	--}, 
	--["MAIN_D3"] = {
	--	{"MAIN_D3", 8880.79, 8391.01, 8910.31, 8529.77}
	--}, 
	--["MAIN_D4"] = {
	--	{"MAIN_D4", 8910.59, 8488.91, 8980.11, 8529.77}
	--}, 
	--["MAIN_D5"] = {
	--	{"MAIN_D5", 8950.88, 8536.44, 8979.83, 8717.14}
	--}, 
	--["MAIN_D6"] = {
	--	{"MAIN_D6", 8951.15, 8718.04, 8979.85, 8820.78}
	--}, 
	--["WEE_DAM"] = {
	--	{"WEE_DAM", 6676.41, 9306.84, 7004.55, 9504.65}
	--}, 
	["ROADBR1"] = {
		{"Callahan Bridge", 8532.77, 8041.65, 8980.44, 8091.65}
	}, 
	["PORT_W"] = {
		{"Callahan Point", 8666.68, 7821.78, 8980.68, 8041.27}
	}, 
	["PORT_S"] = {
		{"Atlantic Quays", 8980.88, 7748.45, 9416.88, 7930.07}
	}, 
	["PORT_E"] = {
		{"Portland Harbor", 9278.68, 7930.35, 9730.68, 8386.35}
	}, 
	["PORT_I"] = {
		{"Trenton", 8980.88, 7930.15, 9278.38, 8257.95}
	}, 
	["LCHINA"] = {
		{"Chinatown", 8660.42, 8091.71, 8965.42, 8551.31}
	}, 
	["REDLIGH"] = {
		{"Red Light District", 8660.38, 8536.38, 8980.38, 8717.38}
	}, 
	["TOWERS"] = {
		{"Hepburn Heights", 8660.42, 8717.6, 8980.42, 8921.23}
	}, 
	["LITTLEI"] = {
		{"Saint Mark's", 8980.9, 8487.68, 9303.9, 8921.68}
	}, 
	["HARWOOD"] = {
		{"Harwood", 8660.98, 8921.82, 9303.98, 9322.68}
	}, 
	["EASTBAY"] = {
		{"Portland Beach", 9304.37, 8386.53, 9712.6, 9199.63}
	}, 
	["S_VIEW"] = {
		{"Portland View", 8981.1, 8258.19, 9278.6, 8487.19}
	}, 
	["ROADBR2"] = {
		{"Callahan Bridge", 8359.77, 8041.7, 8529.88, 8091.7}
	}, 
	["CONSTRU"] = {
		{"Fort Staunton", 8154.88, 8588.38, 8529.32, 8938.38}
	}, 
	["LCADIUM"] = {
		{"Aspatria", 7689.24, 8587.4, 8031.24, 9160.5}
	}, 
	["YAKUSA"] = {
		{"Torrington", 8114.77, 7327.58, 8492.77, 7940.07}
	}, 
	["LCOPING"] = {
		{"Bedford Point", 7690.56, 7327.95, 8114.56, 7995.55}
	}, 
	["COM_EAS"] = {
		{"Newport", 8115.11, 7940.81, 8530.11, 8587.81}
	}, 
	["PARK"] = {
		{"Belleville Park", 7793.43, 7996.93, 8114.27, 8586.93}
	}, 
	["UNIVERS"] = {
		{"Liberty Campus", 8032.27, 8588.38, 8154.27, 8938.38}
	}, 
	["HOSPI_2"] = {
		{"Rockford", 8032.24, 8938.89, 8530.24, 9268.89}
	}, 
	["LCRPORT"] = {
		{"Francis Intl. Airport", 6282.03, 7655.29, 7446.37, 8731.56}
	}, 
	["PROJECT"] = {
		{"Wichita Gardens", 7103.17, 8731.93, 7543.96, 9092.73}
	}, 
	["SWANKS"] = {
		{"Cedar Grove", 7047.77, 9093.39, 7648.09, 9650.06}
	}, 
	["SUB_IND"] = {
		{"Pike Creek", 6507.43, 8732.03, 7102.69, 9092.76}
	}, 
	["BIG_DAM"] = {
		{"Cochrane Dam", 6520.5, 9093.44, 7047.48, 9704.54}
	}, 
}

local LibertyBig = {
	["IND_ZON"] = {
		{"Portland", 8532.15, 7670.28, 9817.66, 9434.12}
	}, 
	["COM_ZON"] = {
		{"Staunton Island", 7649.52, 7280.03, 8530.52, 9367.26}
	}, 
	["SUB_ZON"] = {
		{"Shoreside Vale", 6270.36, 7648.62, 7648.1, 10206.4}
	}, 
	--["SUB_ZO2"] = {
	--	{"Shoreside Vale", 7649.56, 9161.11, 7793.71, 9367.04}
	--}, 
	--["SUB_ZO3"] = {
	--	{"Shoreside Vale", 7649.57, 9079.09, 7688.67, 9161.06}
	--}, 
}

for _,dat in pairs(LibertySmall) do
	for _, v in pairs(dat) do
		v[2] = v[2] + OffsetLiberty[1]
		v[3] = v[3] + OffsetLiberty[2]
		
		v[4] = v[4] + OffsetLiberty[1]
		v[5] = v[5] + OffsetLiberty[2]
	end
end


for _,dat in pairs(LibertyBig) do
	for _, v in pairs(dat) do
		v[2] = v[2] + OffsetLiberty[1]
		v[3] = v[3] + OffsetLiberty[2]
		
		v[4] = v[4] + OffsetLiberty[1]
		v[5] = v[5] + OffsetLiberty[2]
	end
end




local OffsetVice = {[1] = -8000, [2] = 8000, [3] = 0}
local ViceSmall = {
	--["Tour1"] = {
	--	{"Tour1", 8113.6, -6906.46, 9228.6, -6516.46}, 
	--	{"Tour1", 8113.6, -7624.81, 8381.37, -7424.89}, 
	--	{"Tour1", 7636.51, -8191.88, 7986.41, -7763.15}, 
	--	{"Tour1", 8171.42, -7910.5, 8210.63, -7830.22}, 
	--	{"Tour1", 8171.42, -7682.23, 8291.33, -7624.37}, 
	--}, 
	["STARI"] = {
		{"Starfish Island", 8058.72, -9034.02, 8196.32, -8687.1}, 
		{"Starfish Island", 7733.72, -9034.02, 8058.72, -8884.89}, 
		{"Starfish Island", 7496.81, -9034.02, 7733.72, -8820.2}, 
		{"Starfish Island", 7733.72, -8687.1, 8171.42, -8192.02}, 
		{"Starfish Island", 7548.19, -8687.1, 7733.72, -8193.28}, 
		{"Starfish Island", 7448.81, -8687.1, 7548.19, -8565.2}, 
		{"Starfish Island", 7448.81, -8720.2, 7733.72, -8687.1}, 
		{"Starfish Island", 7466.81, -8820.2, 7733.72, -8720.2}, 
		{"Starfish Island", 8171.42, -8687.1, 8267.34, -8495.83}, 
		{"Starfish Island", 7733.72, -8752.95, 8058.72, -8687.1}, 
	},
	["PORNSTU"] = {
		{"Porn Studio", 8113.6, -7397.96, 8265.7, -7204.25}, 
	},
	["A_PORT"] = {
		{"Escobar International", 6301.95, -8291.91, 6894.79, -8015.34}, 
		{"Escobar International", 6301.95, -8565.2, 6451.95, -8291.91}, 
		{"Escobar International", 6301.95, -9195.2, 6633.81, -8565.2}, 
		{"Escobar International", 6973.81, -9115.2, 7016.81, -8720.2}, 
		{"Escobar International", 6301.95, -10052.6, 7016.47, -9195.2}, 
		{"Escobar International", 6694.15, -8565.2, 6953.42, -8291.91}, 
		{"Escobar International", 6451.95, -8565.2, 6694.15, -8291.91}, 
		{"Escobar International", 6633.81, -9195.2, 6973.81, -8945.2}, 
		{"Escobar International", 6633.81, -8945.2, 6973.82, -8565.2}, 
		{"Escobar International", 6973.81, -9195.2, 7016.81, -9115.2}, 
	},
	["HAVANA"] = {
		{"Little Havana", 7016.81, -8920.2, 7496.81, -8846.38}, 
		{"Little Havana", 7016.92, -9160.66, 7189.06, -9057.18}, 
		{"Little Havana", 7290.3, -9159.67, 7495.92, -9057.18}, 
		{"Little Havana", 7016.81, -9057.18, 7496.81, -8920.2}, 
		{"Little Havana", 7016.92, -9339.55, 7494.92, -9160.66}, 
		{"Little Havana", 7016.81, -8846.38, 7339.09, -8720.2}, 
		{"Little Havana", 7399.11, -8846.38, 7496.81, -8820.2}, 
		{"Little Havana", 7399.11, -8820.2, 7466.81, -8720.2}, 
		{"Little Havana", 7339.09, -8792.91, 7399.11, -8720.2}, 
		{"Little Havana", 6973.82, -8720.2, 7448.81, -8565.2}, 
		{"Little Havana", 7016.81, -9423.01, 7526.81, -9339.55}, 
		{"Little Havana", 7339.09, -8846.38, 7399.11, -8819.89}, 
		{"Little Havana", 7339.09, -8819.89, 7399.11, -8792.91}, 
	},
	["BEACH2"] = {
		{"Washington Beach", 8176.84, -9284.67, 8301.84, -9159.67}, 
		{"Washington Beach", 8301.83, -9159.67, 8551.84, -9034.77}, 
		{"Washington Beach", 8433.37, -9034.02, 8613.37, -8924.02}, 
		{"Washington Beach", 8301.84, -9284.67, 8521.84, -9159.67}, 
		{"Washington Beach", 8489.79, -8815.17, 8714.79, -8708.37}, 
		{"Washington Beach", 8778.03, -8708.37, 9228.03, -8633.37}, 
		{"Washington Beach", 8208.78, -9584.67, 8458.78, -9484.67}, 
		{"Washington Beach", 8208.78, -9946.02, 8408.78, -9726.02}, 
		{"Washington Beach", 8208.78, -9726.02, 8428.78, -9584.67}, 
		{"Washington Beach", 8528.03, -8708.37, 8678.03, -8633.37}, 
		{"Washington Beach", 8433.37, -8924.02, 8658.53, -8817.02}, 
		{"Washington Beach", 8433.37, -8815.76, 8489.79, -8687.1}, 
		{"Washington Beach", 8489.79, -8708.37, 8528.03, -8687.1}, 
		{"Washington Beach", 7898.78, -9946.02, 8208.78, -9523.65}, 
		{"Washington Beach", 7946.47, -9523.65, 8208.78, -9484.67}, 
		{"Washington Beach", 7946.47, -9484.67, 8176.84, -9339.55}, 
		{"Washington Beach", 8001.92, -9339.55, 8176.84, -9159.67}, 
		{"Washington Beach", 8176.84, -9484.67, 8488.83, -9284.67}, 
		{"Washington Beach", 8046.81, -9159.47, 8301.84, -9034.22}, 
		{"Washington Beach", 8196.32, -9034.02, 8433.37, -8816.74}, 
		{"Washington Beach", 8196.32, -8816.74, 8433.37, -8687.1}, 
	},
	["VCSTADI"] = {
		{"Little Havana", 6635.59, -7176.26, 7235.59, -6516.26}, 
	},
	["PORNI"] = {
		{"Prawn Island", 8113.6, -7204.25, 8380.91, -6906.46}, 
		{"Prawn Island", 8265.7, -7397.96, 8380.91, -7204.25}, 
		{"Prawn Island", 8113.6, -7424.89, 8381.37, -7397.96}, 
	},
	["HAITI"] = {
		{"Little Haiti", 6953.42, -8028.25, 7255.96, -7960.2}, 
		{"Little Haiti", 6953.42, -8071.09, 7234.64, -8028.25}, 
		{"Little Haiti", 6953.42, -8409.82, 7256.51, -8071.09}, 
		{"Little Haiti", 7256.62, -8191.88, 7636.51, -8073.52}, 
		{"Little Haiti", 7256.62, -8030.68, 7636.51, -7763.15}, 
		{"Little Haiti", 7270.15, -8073.52, 7636.51, -8030.68}, 
		{"Little Haiti", 6953.42, -8565.2, 7112.76, -8410.2}, 
		{"Little Haiti", 7208.24, -8565.2, 7548.19, -8410.2}, 
		{"Little Haiti", 6894.79, -7960.2, 7256.51, -7763.28}, 
		{"Little Haiti", 6894.79, -8291.91, 6953.42, -7960.2}, 
		{"Little Haiti", 7256.51, -8409.82, 7548.19, -8193.28}, 
		{"Little Haiti", 7112.76, -8565.2, 7208.24, -8410.2}, 
	},
	["BEACH3"] = {
		{"Vice Point", 8528.24, -8632.62, 8657.74, -8453.58}, 
		{"Vice Point", 8657.8, -8632.76, 8877.5, -8282.76}, 
		{"Vice Point", 8426.87, -8495.83, 8528.24, -8453.58}, 
		{"Vice Point", 8426.87, -8453.58, 8657.8, -8282.76}, 
		{"Vice Point", 8470.63, -7991.4, 8732.23, -7830.5}, 
		{"Vice Point", 8504.23, -7830.5, 8732.23, -7694.38}, 
		{"Vice Point", 8732.23, -7938.46, 9228.43, -7694.38}, 
		{"Vice Point", 8589.58, -7694.33, 8867.16, -7221.88}, 
		{"Vice Point", 8589.11, -7222.06, 8823.41, -6906.46}, 
		{"Vice Point", 8267.34, -8687.03, 8528.24, -8495.83}, 
		{"Vice Point", 8485.43, -8142.85, 8732.23, -8065.2}, 
		{"Vice Point", 8380.91, -7625.29, 8589.11, -6906.46}, 
		{"Vice Point", 8823.87, -7222.11, 9228.6, -6906.28}, 
		{"Vice Point", 8426.87, -8282.75, 8472.02, -8202.94}, 
		{"Vice Point", 8472.02, -8282.75, 8707.59, -8202.94}, 
		{"Vice Point", 8472.02, -8202.94, 8732.23, -8142.85}, 
		{"Vice Point", 8707.59, -8282.75, 8807.59, -8202.94}, 
		{"Vice Point", 8867.16, -7694.38, 9228.43, -7221.88}, 
		{"Vice Point", 8470.63, -8065.2, 8732.23, -7991.4}, 
	},
	["cARYRD"] = {
		{"Sunshine Autos", 7189.46, -9160.66, 7290.3, -9057.18}, 
	},
	["DTOWN"] = {
		{"Downtown", 7235.59, -7176.26, 7595.59, -6516.26}, 
		{"Downtown", 7595.59, -6826.26, 8030.85, -6516.26}, 
		{"Downtown", 7416.28, -7763.28, 7886.94, -7408.28}, 
		{"Downtown", 7595.59, -7408.11, 8030.82, -6826.26}, 
		{"Downtown", 6995.59, -7408.2, 7595.38, -7176.26}, 
		{"Downtown", 6995.64, -7763.28, 7416.23, -7408.2}, 
	},
	["BEACH1"] = {
		{"Ocean Beach", 8539.73, -9584.67, 8951.73, -9484.67}, 
		{"Ocean Beach", 8582.73, -9926.02, 8882.73, -9726.02}, 
		{"Ocean Beach", 8511.44, -9725.67, 8931.44, -9584.67}, 
		{"Ocean Beach", 8601.84, -9159.67, 9081.84, -9034.77}, 
		{"Ocean Beach", 8663.37, -9034.02, 9113.37, -8924.02}, 
		{"Ocean Beach", 8569.08, -9484.67, 8989.08, -9284.67}, 
		{"Ocean Beach", 8708.53, -8924.02, 9158.53, -8817.02}, 
		{"Ocean Beach", 8834.79, -8815.37, 9234.79, -8708.37}, 
		{"Ocean Beach", 8408.78, -10052.6, 8978.12, -9926.02}, 
		{"Ocean Beach", 8521.84, -9284.67, 8601.84, -9159.67}, 
		{"Ocean Beach", 8488.83, -9484.67, 8569.08, -9284.67}, 
		{"Ocean Beach", 8458.78, -9584.67, 8539.73, -9484.67}, 
		{"Ocean Beach", 8428.78, -9726.02, 8511.44, -9584.67}, 
		{"Ocean Beach", 8408.78, -9926.37, 8582.73, -9726.02}, 
		{"Ocean Beach", 8551.84, -9160.22, 8601.84, -9034.77}, 
		{"Ocean Beach", 8613.37, -9034.02, 8663.37, -8924.02}, 
		{"Ocean Beach", 8658.53, -8924.02, 8708.53, -8817.02}, 
		{"Ocean Beach", 8714.79, -8814.58, 8834.79, -8708.37}, 
		{"Ocean Beach", 8678.03, -8708.37, 8778.03, -8633.37}, 
		{"Ocean Beach", 8601.84, -9284.67, 9001.84, -9159.67}, 
	},
	["XDocks"] = {
		{"Viceport", 7016.47, -9788.46, 7604.36, -9762.27}, 
		{"Viceport", 7016.47, -10052.6, 7695.84, -9788.46}, 
		{"Viceport", 7554.36, -9698.29, 7604.36, -9423.01}, 
		{"Viceport", 7604.36, -9702.69, 7668.26, -9423.01}, 
		{"Viceport", 7668.26, -9745.58, 7696.47, -9423.01}, 
		{"Viceport", 7016.81, -9762.27, 7554.36, -9423.01},
	},
	["GANG1"] = {
		{"Vercetti Estate", 7733.72, -8884.89, 8058.72, -8752.95}, 
	},
	["Beach3"] = {
		{"Vice Point", 8732.23, -8202.94, 9228.43, -7938.46}, 
		{"Vice Point", 8877.51, -8631.94, 9228.29, -8231.94}, 
		{"Vice Point", 8807.59, -8231.94, 9228.29, -8202.94}, 
		{"Vice Point", 8807.59, -8282.75, 8877.5, -8231.94}, 
	},
	["BOATYRD"] = {
		{"Boatyard", 7604.36, -9745.58, 7668.26, -9702.69}, 
		{"Boatyard", 7604.36, -9788.46, 7695.84, -9745.58}, 
		{"Boatyard", 7554.36, -9762.27, 7604.36, -9698.29}, 
	},
	["KAUFCAB"] = {
		{"Kaufman Cabs", 7234.64, -8071.09, 7255.97, -8028.25}, 
		{"Kaufman Cabs", 7256.62, -8073.52, 7270.15, -8030.68}, 
	},
	["GOLFC"] = {
		{"Leaf Links", 8320.63, -8000.5, 8470.63, -7830.5}, 
		{"Leaf Links", 8291.33, -7830.21, 8504.23, -7624.8}, 
		{"Leaf Links", 8210.63, -7910.5, 8320.63, -7830.5}, 
		{"Leaf Links", 8320.63, -8024.2, 8370.83, -8000.5}, 
		{"Leaf Links", 8172.88, -8024.44, 8260.63, -7977.22}, 
		{"Leaf Links", 8471.79, -8142.85, 8485.43, -8065.2}, 
		{"Leaf Links", 8422.1, -8202.94, 8472.02, -8024.44}, 
		{"Leaf Links", 7986.41, -7850.08, 8171.42, -7624.37}, 
		{"Leaf Links", 8171.42, -7977.22, 8320.63, -7910.5}, 
		{"Leaf Links", 8172.88, -8202.94, 8422.1, -8024.44}, 
		{"Leaf Links", 8370.83, -8024.43, 8472.02, -8000.5}, 
		{"Leaf Links", 8260.63, -8024.2, 8320.63, -7977.22}, 
		{"Leaf Links", 8171.42, -8495.83, 8426.87, -8202.94}, 
		{"Leaf Links", 8171.42, -7830.2, 8291.33, -7682.23}, 
	}, 
}

for _,dat in pairs(ViceSmall) do
	for _, v in pairs(dat) do
		v[2] = v[2] + OffsetVice[1]
		v[3] = v[3] + OffsetVice[2]
		
		v[4] = v[4] + OffsetVice[1]
		v[5] = v[5] + OffsetVice[2]
	end
end





function GetZoneName(x,y,z, citiesonly, City)
	if(City) then
		if(City == "Liberty City") then 
			if(not citiesonly) then -- Если ничего не находит отображает название больших районов
				for _, dist in pairs(LibertySmall) do
					for _, v in pairs(dist) do
						if(v[2] <= x and v[3] <= y) then
							if(v[4] >= x and v[5] >= y) then
								return v[1]
							end
						end
					end
				end
			end 
			
			for _, dist in pairs(LibertyBig) do -- Если не находит тут то пишет просто Liberty City
				for _, v in pairs(dist) do
					if(v[2] <= x and v[3] <= y) then
						if(v[4] >= x and v[5] >= y) then
							return v[1]
						end
					end
				end
			end
			return "Liberty City"
		elseif(City == "Vice City") then
			if(not citiesonly) then -- Если ничего не находит отображает название больших районов
				for _, dist in pairs(ViceSmall) do
					for _, v in pairs(dist) do
						if(v[2] <= x and v[3] <= y) then
							if(v[4] >= x and v[5] >= y) then
								return v[1]
							end
						end
					end
				end
			end 
			return "Vice City"
		end
	end
	return getZoneName(x,y,z, citiesonly)
end














