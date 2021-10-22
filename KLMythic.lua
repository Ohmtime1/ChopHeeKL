if game.CoreGui:FindFirstChild("FluxLib") then
    game.CoreGui:FindFirstChild("FluxLib"):Destroy()
end
local Flux = loadstring(game:HttpGet"https://raw.githubusercontent.com/Root-Hub-Dev/BloxFruit_Script/main/UiFree.txt")()

local win = Flux:Window("Mythic Hub", "King Piece",getgenv().Color, Enum.KeyCode.RightControl)
local Main = win:Tab("Auto Farm", "")
local Main7 = win:Tab("Setting AutoFarm", "")
local Main1 = win:Tab("Stats", "")
local Combat = win:Tab("Player", "")
local Teleport = win:Tab("Teleport", "")
local btns = win:Tab("TelePort NPC", "")
local Misc = win:Tab("Misc", "")
local Setting = win:Tab("Setting", "")
--Bypass
local m = getrawmetatable(game)
setreadonly(m,false)
local newi = m.__newindex
m.__newindex = newcclosure(function(self,a,x)
    if self == game.Players.LocalPlayer.Character.HumanoidRootPart and a == "CFrame" and not checkcaller() then
        return nil 
    end
    return newi(self,a,x)
end)
setreadonly(m,true)
local VirtualUser = game:GetService("VirtualUser")
local placeId = game.PlaceId
if placeId == 4520749081 then
    OldWorld = true
elseif placeId == 6381829480 then
    newworld = true
end
function CheckQuest()
    local MyLevel = game.Players.LocalPlayer.PlayerStats.lvl.Value
    if OldWorld then
        if MyLevel == 1 or MyLevel <= 9 then
            CFrameQuest = CFrame.new(2277.1884765625, 48.143299102783, -1648.5339355469)
            CFrameMon = CFrame.new(2388.6013183594, 700.19408416748, -1578.6862792969)
            NameMon = "Soldier"
            Ms = "Soldier [Lv. 1]"
        elseif MyLevel == 10 or MyLevel <= 19 then
            CFrameQuest = CFrame.new(2496.5114746094, 48.135684967041, -1771.6900634766)
            CFrameMon = CFrame.new(2388.6013183594, 700.19408416748, -1578.6862792969)
            NameMon = "Clown Pirate"
            Ms = "Clown Pirate [Lv. 10]"
        elseif MyLevel == 20 or MyLevel <= 29 then
            CFrameQuest = CFrame.new(2231.0498046875, 48.153293609619, -1779.0476074219)
            CFrameMon = CFrame.new(2293.3962402344, 700.193294525146, -1802.6019287109)
            NameMon = "Smoky"
            Ms = "Smoky [Lv. 20]"
        elseif MyLevel == 30 or MyLevel <= 49 then
            CFrameQuest = CFrame.new(2011.1265869141, 48.143299102783, -1810.4008789063)
            CFrameMon = CFrame.new(2091.3608398438, 700.193294525146, -1928.6489257813)
            NameMon = "Tashi"
            Ms = "Tashi [Lv. 30]"
        elseif MyLevel == 50 or MyLevel <= 74 then
            CFrameQuest = CFrame.new(4021.53125, 37.794128417969, 265.56207275391)
            CFrameMon = CFrame.new(4242.3955078125, 700.844142913818, 360.71514892578)
            NameMon = "Clown Pirate"
            Ms = "Clown Pirate [Lv. 50]"
        elseif MyLevel == 75 or MyLevel <= 144 then
            CFrameQuest = CFrame.new(4261.104, 68.696701, 249.134613, -0.53081423, -4.38243397e-08, 0.847488225, -3.48812144e-08, 1, 2.98634184e-08, -0.847488225, -1.37094904e-08, -0.53081423)
            CFrameMon = CFrame.new(4279.83838, 700.8366318, 53.9889946, 1, 0, 0, 0, 1, 0, 0, 0, 1)
            NameMon = "The Clown"
            Ms = "The Clown [Lv. 75]"
        elseif MyLevel == 145 or MyLevel <= 179 then
            CFrameQuest = CFrame.new(1607.07849, 68.6067047, 1359.05444, -0.916158259, 1.08116197e-07, 0.400816768, 8.42807708e-08, 1, -7.70967716e-08, -0.400816768, -3.6851695e-08, -0.916158259)
            CFrameMon = CFrame.new(1708.06006, 700.6267929, 1412.47498, -0.30467996, -2.88281569e-07, -0.952454805, -1.12445697e-08, 1, -2.99075111e-07, 0.952454805, -8.04122919e-08, -0.30467996)
            NameMon = "Axe-Hand"
            Ms = "Axe-Hand [Lv. 145]"
        elseif MyLevel == 180 or MyLevel <= 199 then
            CFrameQuest = CFrame.new(3873.9126, 10.4919758, 3251.1311, -0.802002728, 6.71699567e-08, 0.597320378, 6.60731692e-09, 1, -1.0358071e-07, -0.597320378, -7.91253285e-08, -0.802002728)
            CFrameMon = CFrame.new(4094.49268, 700.541934, 3257.55811, -0.775331855, 2.66401594e-06, 0.631554782, -8.0835207e-08, 1, -4.31742546e-06, -0.631554782, -3.39848611e-06, -0.775331855)
            NameMon = "Fishman"
            Ms = "Fishman [Lv. 180]"
        elseif MyLevel == 200 or MyLevel <= 229 then
            CFrameQuest = CFrame.new(4206.74316, 10.4919758, 3284.43677, -0.657494724, 8.37139957e-09, -0.753459156, 3.44963613e-09, 1, 8.10034884e-09, 0.753459156, 2.72677703e-09, -0.657494724)
            CFrameMon = CFrame.new(4036.80542, 700.541934, 3292.59131, -0.57204628, -0.000133881113, -0.820221543, 4.97097108e-06, 1, -0.000166692451, 0.820221663, -9.94330767e-05, -0.57204622)
            NameMon = "Karate Fishman"
            Ms = "Karate Fishman [Lv. 200]"
        elseif MyLevel == 230 or MyLevel <= 249 then
            CFrameQuest = CFrame.new(4291.0083, 10.4918489, 3249.17334, 0.768826306, 3.71405058e-08, -0.639457643, -4.14807317e-08, 1, 8.20856005e-09, 0.639457643, 2.02142161e-08, 0.768826306)
            CFrameMon = CFrame.new(4393.53223, 700.4659395, 3235.98608, 0.0537349731, -2.63740105e-08, -0.998555124, -8.0552196e-09, 1, -2.68456439e-08, 0.998555124, 9.48613454e-09, 0.0537349731)
            NameMon = "SharkMan"
            Ms = "SharkMan [Lv. 230]"
        elseif MyLevel == 250 or MyLevel <= 299 then
            CFrameQuest = CFrame.new(-51.7463303, 49.7374306, -87.7024078, -0.890068233, 5.02155011e-08, -0.455827266, 1.35535352e-08, 1, 8.36982181e-08, 0.455827266, 6.83190535e-08, -0.890068233)
            CFrameMon = CFrame.new(83.5972366, 700.7886353, -116.122696, 0.8125965, -5.7749336e-08, -0.582826674, 2.33809416e-08, 1, -6.64864288e-08, 0.582826674, 4.03996019e-08, 0.8125965)
            NameMon = "Trainer Chef"
            Ms = "Trainer Chef [Lv. 250]"
        elseif MyLevel == 300 or MyLevel <= 349 then
            CFrameQuest = CFrame.new(39.4004707, 99.5126801, -47.8512077, -0.729110777, 1.33901312e-09, -0.68439573, 3.3774807e-08, 1, -3.40249997e-08, 0.68439573, -4.79233258e-08, -0.729110777)
            CFrameMon = CFrame.new(96.1493149, 700.94034, -143.488434, 0.890978813, 0.000249340112, -0.454044282, -0.000173823966, 0.99999994, 0.000208055935, 0.454044282, -0.000106449646, 0.890978813)
            NameMon = "Dark Leg"
            Ms = "Dark Leg [Lv. 300]"
        elseif MyLevel == 350 or MyLevel <= 399 then
            CFrameQuest = CFrame.new(-44.2784309, 49.7609177, 115.918266, 0.879749179, 6.2658474e-09, -0.475438058, -3.5766341e-09, 1, 6.56091004e-09, 0.475438058, -4.07148715e-09, 0.879749179)
            CFrameMon = CFrame.new(-103.605598, 700.94034, 233.536148, -0.915480971, 8.39859382e-08, 0.402359068, -8.1782634e-09, 1, -2.27341445e-07, -0.402359068, -2.114176e-07, -0.915480971)
            NameMon = "Weapon Man"
            Ms = "Weapon Man [Lv. 350]"
        elseif MyLevel == 400 or MyLevel <= 449 then
            CFrameQuest = CFrame.new(-2852.99561, 18.3158665, 1418.44324, -0.633437693, 6.3445313e-08, 0.773793697, 4.94023489e-09, 1, -7.79483997e-08, -0.773793697, -4.55527349e-08, -0.633437693)
            CFrameMon = CFrame.new(-2790.9187, 700.0717945, 1513.32324, 0.178857639, -7.1459354e-08, -0.983874977, 3.31025052e-09, 1, -7.20287545e-08, 0.983874977, 9.62601998e-09, 0.178857639)
            NameMon = "Snow Soldier"
            Ms = "Snow Soldier [Lv. 400]"
        elseif MyLevel == 450 or MyLevel <= 499 then
            CFrameQuest = CFrame.new(-2838.73584, 18.0917892, 1320.16968, 0.124360628, 3.01195975e-08, -0.992237091, -4.76816666e-08, 1, 2.43791298e-08, 0.992237091, 4.42797123e-08, 0.124360628)
            CFrameMon = CFrame.new(-2872.40991, 700.1319504, 1231.0188, 0.971849024, 2.11350351e-08, 0.235606149, 4.7638764e-09, 1, -1.09355611e-07, -0.235606149, 1.07399494e-07, 0.971849024)
            NameMon = "King Snow"
            Ms = "King Snow [Lv. 450]"
        elseif MyLevel == 500 or MyLevel <= 524 then
            CFrameQuest = CFrame.new(-2633.37744, 18.0917454, 1613.08435, -0.920508802, 1.58408184e-08, 0.390721768, -2.08127098e-08, 1, -8.95755079e-08, -0.390721768, -9.05870223e-08, -0.920508802)
            CFrameMon = CFrame.new(-2668.09644, 700.8993683, 1516.5918, 0.976024449, -5.43744889e-08, 0.217660517, 3.23144533e-08, 1, 1.04910058e-07, -0.217660517, -9.53612158e-08, 0.976024449)
            NameMon = "Heavy Man"
            Ms = "Heavy Man [Lv. 500]"
        elseif MyLevel == 525 or MyLevel <= 624 then
            CFrameQuest = CFrame.new(1731.58447, 12.9022503, 3644.47266, -0.640727878, -1.29334472e-08, 0.767768025, -3.10395585e-08, 1, -9.05802722e-09, -0.767768025, -2.96349114e-08, -0.640727878)
            CFrameMon = CFrame.new(1777.10193, 700.9670887, 3556.31445, -0.709855139, -5.17305978e-07, -0.70434767, -2.76546519e-08, 1, -7.06576202e-07, 0.70434767, -4.82088183e-07, -0.709855139)
            NameMon = "Candle Man"
            Ms = "Candle Man [Lv. 525]"
        elseif MyLevel == 625 or MyLevel <= 724 then
            CFrameQuest = CFrame.new(1519.38831, 12.9022474, 3432.72827, -0.949043155, -3.96788664e-08, 0.315146208, -5.65051863e-08, 1, -4.42556249e-08, -0.315146208, -5.98078955e-08, -0.949043155)
            CFrameMon = CFrame.new(1552.72803, 700.9585972, 3358.44922, 0.558580875, -7.08846741e-08, -0.829450071, -1.31967082e-09, 1, -8.63485567e-08, 0.829450071, 4.93272552e-08, 0.558580875)
            NameMon = "Bomb Man [Lv. 625]"
            Ms = "Bomb Man [Lv. 625]"
        elseif MyLevel == 725 or MyLevel <= 849 then
            CFrameQuest = CFrame.new(1338.36304, 97.1146317, 3757.16943, -0.693056166, -9.24907727e-06, 0.720883727, 7.08352218e-07, 1, 1.35111986e-05, -0.720883727, 9.87465774e-06, -0.693056166)
            CFrameMon = CFrame.new(1338.36304, 700.1146317, 3757.16943, -0.693056166, -9.24907727e-06, 0.720883727, 7.08352218e-07, 1, 1.35111986e-05, -0.720883727, 9.87465774e-06, -0.693056166)
            NameMon = "King of Sand"
            Ms = "King of Sand [Lv. 725]"
        elseif MyLevel == 850 or MyLevel <= 899 then
            CFrameQuest = CFrame.new(-818.713257, 386.420563, 4745.16748, 0.559334755, 1.41585632e-08, -0.828941882, 4.42332677e-08, 1, 4.69270134e-08, 0.828941882, -6.29147152e-08, 0.559334755)
            CFrameMon = CFrame.new(-749.03302, 700.476288, 4830.28271, -0.681340039, 7.95353685e-08, -0.731966913, -2.38829756e-08, 1, 1.30890868e-07, 0.731966913, 1.06662753e-07, -0.681340039)
            NameMon = "Ball Man"
            Ms = "Ball Man [Lv. 850]"
        elseif MyLevel == 900 or MyLevel <= 999 then
            CFrameQuest = CFrame.new(-860.128418, 387.59024, 4879.0791, -0.21409291, 2.4865761e-08, -0.976813316, 2.82774817e-08, 1, 1.92582892e-08, 0.976813316, -2.34987567e-08, -0.21409291)
            CFrameMon = CFrame.new(-942.517273, 700.472992, 5034.9668, -0.982746959, -2.63648712e-08, -0.18495506, -3.98676425e-09, 1, -1.21364025e-07, 0.18495506, -1.1853276e-07, -0.982746959)
            NameMon = "Rumble Man [Lv. 900]"
            Ms = "Rumble Man [Lv. 900]"
        elseif MyLevel == 1000 or MyLevel <= 1099 then
            CFrameQuest = CFrame.new(8271.36426, 11.8968763, 5438.22168, -0.873024821, -1.0268602e-08, 0.487675756, 1.37032146e-08, 1, 4.55873561e-08, -0.487675756, 4.64816203e-08, -0.873024821)
            CFrameMon = CFrame.new(8362.75098, 700.9012051, 5583.56543, -0.313793898, -8.17095838e-07, 0.949491262, -1.52189159e-07, 1, 8.10265533e-07, -0.949491262, 1.09753984e-07, -0.313793898)
            NameMon = "Soldier"
            Ms = "Soldier [Lv. 1000]"
        elseif MyLevel == 1100 or MyLevel <= 1149 then
            CFrameQuest = CFrame.new(8358.49512, 11.9031868, 5335.61963, 0.875773251, 5.90176263e-08, -0.482722491, -1.68161893e-08, 1, 9.17514313e-08, 0.482722491, -7.22359488e-08, 0.875773251)
            CFrameMon = CFrame.new(8358.49512, 700.9031868, 5335.61963, 0.875773251, 5.90176263e-08, -0.482722491, -1.68161893e-08, 1, 9.17514313e-08, 0.482722491, -7.22359488e-08, 0.875773251)
            NameMon = "Leader"
            Ms = "Leader [Lv. 1100]"
        elseif MyLevel == 1150 or MyLevel <= 1249 then
            CFrameQuest = CFrame.new(7994.31787, 11.84688, 5765.47998, -0.438062042, 3.05090753e-09, -0.898944736, 8.79363249e-09, 1, -8.91321905e-10, 0.898944736, -8.29544433e-09, -0.438062042)
            CFrameMon = CFrame.new(8108.4585, 700.8996677, 5846.50293, -0.507237077, 1.36267488e-06, -0.861806512, 1.54674893e-07, 1, 1.49014704e-06, 0.861806512, 6.22558048e-07, -0.507237077)
            NameMon = "Pasta"
            Ms = "Pasta [Lv. 1150]"
        elseif MyLevel == 1250 or MyLevel <= 1324 then
            CFrameQuest = CFrame.new(4209.38086, 13.0308113, 6768.38818, 0.963791907, 8.65829541e-09, 0.266655505, -5.86965498e-09, 1, -1.12548575e-08, -0.266655505, 9.28216437e-09, 0.963791907)
            CFrameMon = CFrame.new(4108.94092, 700.0906544, 6920.09082, -0.039561376, -7.95942299e-07, 0.999216497, -1.61973986e-07, 1, 7.90152683e-07, -0.999216497, -1.30587651e-07, -0.039561376)
            NameMon = "Wolf"
            Ms = "Wolf [Lv. 1250]"
        elseif MyLevel == 1325 or MyLevel <= 1399 then
            CFrameQuest = CFrame.new(4310.63721, 13.0308247, 6979.06885, -0.921168864, -2.6064944e-08, 0.389163077, -2.20137011e-08, 1, 1.48693653e-08, -0.389163077, 5.13027709e-09, -0.921168864)
            CFrameMon = CFrame.new(4422.90137, 700.0906544, 6909.24951, -0.630549908, 2.29463967e-05, -0.776148736, 3.8082037e-06, 1, 2.64706105e-05, 0.776148736, 1.37353072e-05, -0.630549908)
            NameMon = "Giraffe"
            Ms = "Giraffe [Lv. 1325]"
        elseif MyLevel == 1400 or MyLevel <= 1499 then
            CFrameQuest = CFrame.new(4315.00146, 13.0596485, 7417.95898, 0.800340414, -7.72058417e-09, 0.599545836, 7.34413064e-08, 1, -8.51602309e-08, -0.599545836, 1.12188602e-07, 0.800340414)
            CFrameMon = CFrame.new(4326.93066, 700.0210743, 7607.66943, -0.991105318, 6.30616537e-09, 0.133079991, 8.00743383e-09, 1, 1.2248611e-08, -0.133079991, 1.3205292e-08, -0.991105318)
            NameMon = "Leo"
            Ms = "Leo [Lv. 1400]"
        elseif MyLevel == 1500 or MyLevel <= 1599 then
            CFrameQuest = CFrame.new(-775.853088, 47.8566017, 8477.94727, 0.585376441, 1.71114287e-08, 0.810761631, 6.70318485e-08, 1, -6.95029101e-08, -0.810761631, 9.50322203e-08, 0.585376441)
            CFrameMon = CFrame.new(-763.112244, 700.8564072, 8610.06934, -0.172181785, -3.9935544e-06, 0.985065281, -1.07025187e-07, 1, 4.03539525e-06, -0.985065281, 5.89394972e-07, -0.172181785)
            NameMon = "Zombie"
            Ms = "Zombie [Lv. 1500]"
        elseif MyLevel == 1600 or MyLevel <= 1749 then
            CFrameQuest = CFrame.new(-793.499878, 47.8572884, 8329.46094, -0.661378562, -7.19648785e-09, -0.750052273, -1.81298665e-09, 1, -7.99599942e-09, 0.750052273, -3.92854771e-09, -0.661378562)
            CFrameMon = CFrame.new(-793.499878, 700.8572884, 8329.46094, -0.661378562, -7.19648785e-09, -0.750052273, -1.81298665e-09, 1, -7.99599942e-09, 0.750052273, -3.92854771e-09, -0.661378562)
            NameMon = "Shadow Master"
            Ms = "Shadow Master [Lv. 1600]"
        elseif MyLevel == 1750 or MyLevel <= 1799 then
            CFrameQuest = CFrame.new(8601.87305, 49.5820999, 1731.75549, -0.107155122, -1.1088045e-07, -0.994242311, 4.39945218e-08, 1, -1.16264097e-07, 0.994242311, -5.61995073e-08, -0.107155122)
            CFrameMon = CFrame.new(8556.38379, 700.5821114, 1770.01843, -0.845430195, 3.45681741e-08, 0.534085989, 4.53518867e-09, 1, -5.75450088e-08, -0.534085989, -4.62281093e-08, -0.845430195)
            NameMon = "New World Pirate"
            Ms = "New World Pirate [Lv. 1750]"
        elseif MyLevel == 1800 or MyLevel <= 1849 then
            CFrameQuest = CFrame.new(8581.40723, 49.5780792, 1347.57031, -0.176219329, 7.88337644e-08, -0.98435092, 6.06777462e-10, 1, 7.99784274e-08, 0.98435092, 1.34964635e-08, -0.176219329)
            CFrameMon = CFrame.new(8567.5127, 700.5760689, 1306.75549, 0.943771362, -1.5048867e-08, 0.330598801, 9.13352416e-09, 1, 1.94462508e-08, -0.330598801, -1.53332831e-08, 0.943771362)
            NameMon = "Rear Admiral"
            Ms = "Rear Admiral [Lv. 1800]"
        elseif MyLevel == 1850 or MyLevel <= 1924 then
            CFrameQuest = CFrame.new(8556.3418, 49.5760689, 1460.35986, -0.600640297, 8.08265543e-09, -0.79951936, 8.42657666e-10, 1, 9.47634504e-09, 0.79951936, 5.01815345e-09, -0.600640297)
            CFrameMon = CFrame.new(8544.60156, 700.5800858, 1538.51074, -0.843984306, 7.66903341e-08, 0.536367893, 3.79221099e-08, 1, -8.3309736e-08, -0.536367893, -4.99719093e-08, -0.843984306)
            NameMon = "True Karate Fishman"
            Ms = "True Karate Fishman [Lv. 1850]"
        elseif MyLevel == 1925 or MyLevel <= 1999 then
            CFrameQuest = CFrame.new(8240.5166, 49.6000557, 1391.36194, 0.99342531, 3.92465171e-09, -0.114482306, 1.36278566e-09, 1, 4.61073668e-08, 0.114482306, -4.59602383e-08, 0.99342531)
            CFrameMon = CFrame.new(8363.50684, 700.04085779, 1558.95898, 0.136143133, -1.43789611e-08, -0.990689158, 1.04824034e-08, 1, -1.30735796e-08, 0.990689158, -8.60492566e-09, 0.136143133)
            NameMon = "Quake Woman"
            Ms = "Quake Woman [Lv. 1925]"
        elseif MyLevel == 2000 or MyLevel <= 2049 then
            CFrameQuest = CFrame.new(2970.91455, 40.2607422, 13350.335, -0.126118615, -1.10633209e-07, -0.992015183, -3.23265326e-08, 1, -1.07413918e-07, 0.992015183, 1.85215168e-08, -0.126118615)
            CFrameMon = CFrame.new(3056.98828, 700.2736931, 13492.4365, -0.667037487, 9.53922381e-08, -0.745024145, 4.82418478e-08, 1, 8.48470734e-08, 0.745024145, 2.06548414e-08, -0.667037487)
            NameMon = "Fishman"
            Ms = "Fishman [Lv. 2000]"
        elseif MyLevel == 2050 or MyLevel <= 2099 then
            CFrameQuest = CFrame.new(2782.57349, 40.2482567, 13618.085, 0.588448286, 7.33037737e-08, 0.808534861, -4.4122185e-08, 1, -5.85505369e-08, -0.808534861, -1.22036159e-09, 0.588448286)
            CFrameMon = CFrame.new(2785.354, 700.2706299, 13543.8164, 0.598989785, 9.21603842e-08, 0.800756693, -2.15154383e-08, 1, -9.89974325e-08, -0.800756693, 4.20698179e-08, 0.598989785)
            NameMon = "Combat Fishman"
            Ms = "Combat Fishman [Lv. 2050]"
        elseif MyLevel == 2100 or MyLevel <= 2149 then
            CFrameQuest = CFrame.new(3297.23364, 40.2750244, 13793.1836, -0.991359532, 5.86071192e-09, 0.131172732, 5.69709435e-09, 1, -1.62261748e-09, -0.131172732, -8.6129387e-10, -0.991359532)
            CFrameMon = CFrame.new(3232.24658, 700.2725983, 14001.0674, -0.995495796, 1.80314828e-07, 0.0948052108, 9.93200473e-08, 1, -8.59045315e-07, -0.0948052108, -8.45759928e-07, -0.995495796)
            NameMon = "Sword Fishman"
            Ms = "Sword Fishman [Lv. 2100]"
        elseif MyLevel == 2150 or MyLevel <= 2199 then
            CFrameQuest = CFrame.new(3019.17065, 40.2707024, 13884.2441, -0.824479103, 5.32482947e-09, -0.565892398, 5.5762424e-08, 1, -7.18336679e-08, 0.565892398, -9.07808868e-08, -0.824479103)
            CFrameMon = CFrame.new(2795.09497, 700.9922104, 13987.3037, 0.998544633, 0, -0.0539316386, 0, 1, 0, 0.0539316386, 0, 0.998544633)
            NameMon = "Fishman Soldier"
            Ms = "Fishman Soldier [Lv. 2150]"
        elseif MyLevel == 2200 then
            CFrameQuest = CFrame.new(2786.71313, 40.2758522, 13820.2549, -0.907282948, 1.59911622e-08, 0.420520723, -3.32718386e-09, 1, -4.52055247e-08, -0.420520723, -4.24133511e-08, -0.907282948)
            CFrameMon = CFrame.new(2854.65942, 700.9235916, 14031.7773, -0.9591313, -5.14385683e-05, 0.282961309, 1.86556972e-05, 0.99999994, 0.000245022267, -0.282961309, 0.00024028738, -0.9591313)
            NameMon = "Seasoned Fishman"
            Ms = "Seasoned Fishman [Lv. 2200]"
        end
    end
    if newworld then
        if MyLevel >= 2250 and MyLevel <= 2299 then
            Ms = "Beast Pirate [Lv. 2250]"
            CFrameQuest = CFrame.new(558.123962, 75.4188766, -2156.09204, -1, 0, 0, 0, 1, 0, 0, 0, -1)
            NameMon = "Beast Pirate"
            CFrameMon = CFrame.new(558.123962, 622.4188766, -2156.09204)
        elseif MyLevel >= 2300 and MyLevel <= 2349 then
            Ms = "Beast Pirate [Lv. 2300]"
            CFrameQuest = CFrame.new(416.176941, 75.386673, -5425.97754, -1.1920929e-07, 0, 1.00000012, 0, 1, 0, -1.00000012, 0, -1.1920929e-07)
            NameMon = "Beast Pirate"
            CFrameMon = CFrame.new(416.176941, 622.386673, -5425.97754)
        elseif MyLevel >= 2350 and MyLevel <= 2399 then
            Ms = "Snake Man [Lv. 2350]"
            CFrameQuest = CFrame.new(88.140152, 75.3936996, -5321.16357, -0.023422122, 0, -0.99972564, 0, 1, 0, 0.99972564, 0, -0.023422122)
            NameMon = "Snake Man"
            CFrameMon = CFrame.new(88.140152, 622.3936996, -5321.16357)
        elseif MyLevel >= 2400 and MyLevel <= 2449 then
            Ms = "Bandit Beast Pirate [Lv. 2400]"
            CFrameQuest = CFrame.new(-2120.31909, 74.9218903, -4906.35107, -1, 0, 0, 0, 1, 0, 0, 0, -1)
            NameMon = "Bandit Beast Pirate"
            CFrameMon = CFrame.new(-2120.31909, 622.9218903, -4906.35107)
        elseif MyLevel >= 2450 and MyLevel <= 2499 then
            Ms = "Powerful Beast Pirate [Lv. 2450]"
            CFrameQuest = CFrame.new(-2754.46362, 75.4548111, -5289.625, 0.57264179, 0, 0.819805682, 0, 1, 0, -0.819805682, 0, 0.57264179)
            NameMon = "Powerful Beast Pirate"
            CFrameMon = CFrame.new(-2754.46362, 622.4548111, -5289.625)
        elseif MyLevel >= 2500 and MyLevel <= 2549 then
            Ms = "Violet Samurai [Lv. 2500]"
            CFrameQuest = CFrame.new(-3022.99292, 75.7534866, -4925.86426, 0.901796937, 0, 0.43216005, 0, 1, 0, -0.43216005, 0, 0.901796937)
            NameMon = "Violet Samurai"
            CFrameMon = CFrame.new(-3022.99292, 622.7534866, -4925.86426)
        elseif MyLevel >= 2550 and MyLevel <= 2599 then
            Ms = "Rabbit Man [Lv. 2550]"
            CFrameQuest = CFrame.new(-1037.83777, 75.6733093, -1947.10742, 1, 0, 0, 0, 1, 0, 0, 0, 1)
            NameMon = "Rabbit Man"
            CFrameMon = CFrame.new(-1037.83777, 622.6733093, -1947.10742)
        elseif MyLevel >= 2600 and MyLevel <= 2649 then
            Ms = "Bat Man [Lv. 2600]"
            CFrameQuest = CFrame.new(-2710.16284, 75.4078979, -1561.74146, 0, 0, 1, 0, 1, -0, -1, 0, 0)
            NameMon = "Bat Man"
            CFrameMon = CFrame.new(-2710.16284, 622.4078979, -1561.74146)
        elseif MyLevel >= 2650 and MyLevel <= 2699 then
            Ms = "Kitsune Samurai [Lv. 2650]"
            CFrameQuest = CFrame.new(-2917.12598, 75.457901, -1452.71692, 1, 0, 0, 0, 1, 0, 0, 0, 1)
            NameMon = "Kitsune Samurai"
            CFrameMon = CFrame.new(-2917.12598, 622.457901, -1452.71692)
        elseif MyLevel >= 2700 and MyLevel <= 2749 then
            Ms = "Elite Beast Pirate [Lv. 2700]"
            CFrameQuest = CFrame.new(-1042.13416, 75.4581985, 172.622971, 0.707134247, -0, -0.707079291, 0, 1, -0, 0.707079291, 0, 0.707134247)
            NameMon = "Elite Beast Pirate"
            CFrameMon = CFrame.new(-1042.13416, 622.4581985, 172.622971)
        elseif MyLevel >= 2750 and MyLevel <= 2799 then
            Ms = "Elite Beast Pirate [Lv. 2750]"
            CFrameQuest = CFrame.new(-1051.44336, 75.4359818, -113.772148, -1.1920929e-07, -0, -1.00000012, 0, 1, -0, 1.00000012, 0, -1.1920929e-07)
            NameMon = "Elite Beast Pirate"
            CFrameMon = CFrame.new(-1051.44336, 622.4359818, -113.772148)
        elseif MyLevel >= 2800 and MyLevel <= 2849 then
            Ms = "Bear Man [Lv. 2800]"
            CFrameQuest = CFrame.new(-387.776123, 75.4327545, 280.899261, 1, 0, 0, 0, 1, 0, 0, 0, 1)
            NameMon = "Bear Man"
            CFrameMon = CFrame.new(-387.776123, 622.4327545, 280.899261)
        elseif MyLevel >= 2850 and MyLevel <= 2899 then
            Ms = "Magician [Lv. 2850]"
            CFrameQuest = CFrame.new(-3519.60156, 75.506752, 1201.35449, 1, 0, 0, 0, 1, 0, 0, 0, 1)
            NameMon = "Magician"
            CFrameMon = CFrame.new(-3519.60156, 622.506752, 1201.35449)
        elseif MyLevel >= 2900 and MyLevel <= 2949 then
            Ms = "Pachy Woman [Lv. 2900]"
            CFrameQuest = CFrame.new(-4334.17969, 75.456749, 1914.44507, 0.480083644, -0, -0.877222717, 0, 1, -0, 0.877222717, 0, 0.480083644)
            NameMon = "Pachy Woman"
            CFrameMon = CFrame.new(-4334.17969, 622.456749, 1914.44507)
        elseif MyLevel >= 2950 and MyLevel <= 2999 then
            Ms = "Kappa [Lv. 2950]"
            CFrameQuest = CFrame.new(-1426.53455, 74.8297577, 4112.34961, 0.0880642533, -0, -0.996114731, 0, 1, -0, 0.996114731, 0, 0.0880642533)
            NameMon = "Kappa"
            CFrameMon = CFrame.new(-1426.53455, 622.8297577, 4112.34961)
        elseif MyLevel >= 3000 and MyLevel <= 3024 then
            Ms = "Mammoth Man [Lv. 3000]"
            CFrameQuest = CFrame.new(-4276.69336, 74.254776, 4561.5752, 0.996116102, 0, 0.0880491585, 0, 1, 0, -0.0880491585, 0, 0.996116102)
            NameMon = "Mammoth Man"
            CFrameMon = CFrame.new(-4276.69336, 622.254776, 4561.5752)
        elseif MyLevel >= 3025 and MyLevel <= 3074 then
            Ms = "Skull Pirate [Lv. 3050]"
            CFrameQuest = CFrame.new(-3816.54614, 51.3296509, 9891.29688, -1.1920929e-07, 0, -1.00000012, 0, 1, 0, 1.00000012, 0, -1.1920929e-07)
            NameMon = "Skull Pirate"
            CFrameMon = CFrame.new(-3816.54614, 622.3296509, 9891.29688)
        elseif MyLevel >= 3075 and MyLevel <= 3099 then
            Ms = "Elite Skeleton [Lv. 3100]"
            CFrameQuest = CFrame.new(-3032.25317, 51.5443535, 9854.83691, -1.1920929e-07, 0, 1.00000012, 0, 1, 0, -1.00000012, 0, -1.1920929e-07)
            NameMon = "Elite Skeleton"
            CFrameMon = CFrame.new(-3032.25317, 622.5443535, 9854.83691)
        elseif MyLevel >= 3100 and MyLevel <= 3124 then
            Ms = "Desert Thief [Lv.3125]"
            CFrameQuest = CFrame.new(8847.94238, 14.4670143, 1400.72119, -0.322491169, 0, 0.946572542, 0, 1, 0, -0.946572542, 0, -0.322491169)
            NameMon = "Desert Thief"
            CFrameMon = CFrame.new(8847.94238, 622.4670143, 1400.72119)
        elseif MyLevel >= 3125 and MyLevel <= 3149 then
            Ms = "Anubis [Lv.3150]"
            CFrameQuest = CFrame.new(9141.8457, 14.469614, 1055.01233, -0.894592047, 0, 0.446883589, 0, 1, 0, -0.446883589, 0, -0.894592047)
            NameMon = "Anubis"
            CFrameMon = CFrame.new(9141.8457, 622.469614, 1055.01233)
        elseif MyLevel >= 3150  and MyLevel <= 3174 then
            Ms = "Pharaoh [Lv.3175]"
            CFrameQuest = CFrame.new(9554.38672, 14.4762154, 1545.59363, 0.31220305, 0, 0.950015426, 0, 1, 0, -0.950015426, 0, 0.31220305)
            NameMon = "Pharaoh"
            CFrameMon = CFrame.new(9554.38672, 622.4762154, 1545.59363)
        elseif MyLevel >= 3175 then
            Ms = "Flame User [Lv.3200]"
            CFrameQuest = CFrame.new(9857.44727, 14.7451639, 1684.2052, -0.0956259966, 0, 0.995417356, 0, 1, 0, -0.995417356, 0, -0.0956259966)
            NameMon = "Flame User"
            CFrameMon = CFrame.new(9857.44727, 622.7451639, 1684.2052)
        end
    end
end
CheckQuest()


SelectToolWeapon1 = ""
function EquipWeapon(ToolSe)
    if game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe) then
        getgenv().tool = game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe)
        wait()
        game.Players.LocalPlayer.Character.Humanoid:EquipTool(tool)
    end
end

local LocalPlayer = game:GetService("Players").LocalPlayer
local VirtualUser = game:GetService('VirtualUser')
function attack()
    game:GetService'VirtualUser':Button1Down(Vector2.new(0.9,0.9))
    game:GetService'VirtualUser':Button1Up(Vector2.new(0.9,0.9))
end
Typeing = 3
Main:Slider("Type Farm", "", 1, 3,3,function(typess)
    Typeing = typess
end)
DistanceMob = 4
Main:Slider("DistanceMob", "", 0, 50,4,function(dis)
    DistanceMob = dis
end)
Main:Toggle("Auto Farm"," ",false,function(vu)
    CheckQuest()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
    wait(.3)
    _G.AF = vu
end)
spawn(function()
    game:GetService('RunService').Stepped:connect(function()
        if _G.AF == true then
            game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
        end
    end)
end)
Wapon = {}
for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
    if v:IsA("Tool") then
        table.insert(Wapon ,v.Name)
    end
end
local SelectWeapona = Main:Dropdown("Select Weapon",Wapon,function(Value)
    SelectToolWeapon1 = Value
    SelectToolWeaponOld = Value
end)
Main:Button("Refresh Weapon","", function()
    SelectWeapona:Clear()
    Wapon = {}
    for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
        if v:IsA("Tool") then
            SelectWeapona:Add(v.Name)
        end
    end
    for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
        if v:IsA("Tool") then
            SelectWeapona:Add(v.Name)
        end
    end
end)
spawn(function()
    while wait(.1) do
        local busohee = game.Players.LocalPlayer.PlayerStats.BusoShopValue.Value
        if _G.AF and busohee == "BusoHaki" then
            pcall(function()
                if game.Players.LocalPlayer.Character.Haki.Value == 0 then
                    game:GetService("Players").LocalPlayer.Character.Services.Client.Armament:FireServer()
                end
            end)
        end
    end
end)
local LocalPlayer = game:GetService("Players").LocalPlayer
local VirtualUser = game:GetService('VirtualUser')
spawn(function()
    while wait() do
        if _G.AF then
            if game:GetService("Players").LocalPlayer.PlayerGui.Quest.QuestBoard.Visible == false then
                pcall(function()
                    CheckQuest()
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameQuest
                    attack()
                    wait(.5)
                    for i, v in pairs(game.Players.LocalPlayer.PlayerGui:GetDescendants()) do
                        if v.Name == "Dialogue" then
                            v.Accept.Size = UDim2.new(0, 10000, 0, 10000)
                            v.Accept.Position = UDim2.new(-2, 0, -5, 0)
                            v.Accept.ImageTransparency = 1
                            game:GetService("ReplicatedStorage").Remotes.Functions.CheckQuest:InvokeServer(unpack(args))
                        end
                    end
                end)
            elseif game:GetService("Players").LocalPlayer.PlayerGui.Quest.QuestBoard.Visible == true then
                if game:GetService("Workspace").Monster:GetDescendants(Ms) then
                    pcall(
                        function()
                            for i, v in pairs(game:GetService("Workspace").Monster:GetDescendants()) do
                                if v.Name == Ms then
                                    repeat wait()
                                        if v.Humanoid.Health > 0 then
                                            VirtualUser:CaptureController()
                                            VirtualUser:ClickButton1(Vector2.new(851, 158), game:GetService("Workspace").Camera.CFrame)
                                            if Typeing == 2 then
                                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.Angles(math.rad(90), 0, 0) - Vector3.new(0,DistanceMob,0)
                                            elseif Typeing == 3 then
                                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.Angles(math.rad(-90), 0, 0) * CFrame.new(0,0,DistanceMob)
                                            elseif Typeing == 1 then
                                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,0,DistanceMob)
                                            end
                                        else
                                            CheckQuest()
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
                                        end
                                    until not v.Parent or v.Humanoid.Health <= 0 or _G.AF == false
                                end
                            end
                        end)
                else
                end
            end
        end
    end
end)
spawn(function()
    while wait() do
        if _G.AF then
            EquipWeapon(SelectToolWeapon1)
        end
    end
end)
spawn(function()
    while wait() do
        local kenhee = game.Players.LocalPlayer.PlayerStats.KenShopValue.Value
        if _G.AF or _G.AutoDunguen or _G.Bisento or _G.Pole or _G.Sharkblade or _G.SeaKing and kenhee == "KenHaki" then
            if game.Players.LocalPlayer.Character.KenHaki.Value == 0 then
                local args = {
                    [1] = true
                }

                game:GetService("Players").LocalPlayer.Character.Services.Client.KenEvent:InvokeServer(unpack(args))
            end
        end
    end
end)
Main7:Line()
Main7:Label("Auto | Skill")
_G.SkillZ = false
Main7:Toggle("Auto Skill Z"," ",false,function(Z)
    _G.SkillZ = Z
end)
_G.SkillX = false
Main7:Toggle("Auto Skill X"," ",false,function(X)
    _G.SkillX = X
end)
_G.SkillC = false
Main7:Toggle("Auto Skill C"," ",false,function(C)
    _G.SkillC = C
end)
_G.SkillV = false
Main7:Toggle("Auto Skill V"," ",false,function(V)
    _G.SkillV = V
end)
_G.SkillB = false
Main7:Toggle("Auto Skill B"," ",false,function(V)
    _G.SkillB = V
end)
_G.SkillE = false
Main7:Toggle("Auto Skill E"," ",false,function(V)
    _G.SkillE = V
end)
spawn(function()
    while wait(.1) do
        if _G.SkillZ then
            pcall(function()
                game:GetService("VirtualInputManager"):SendKeyEvent(true,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                wait(.1)
                game:GetService("VirtualInputManager"):SendKeyEvent(false,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
            end)
        end
    end
end)

spawn(function()
    while wait(.1) do
        if _G.SkillX then
            pcall(function()
                game:GetService("VirtualInputManager"):SendKeyEvent(true,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                wait(.1)
                game:GetService("VirtualInputManager"):SendKeyEvent(false,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
            end)
        end
    end
end)

spawn(function()
    while wait(.1) do
        if _G.SkillC then
            pcall(function()
                game:GetService("VirtualInputManager"):SendKeyEvent(true,99	,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                wait(.1)
                game:GetService("VirtualInputManager"):SendKeyEvent(false,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
            end)
        end
    end
end)

spawn(function()
    while wait(.1) do
        if _G.SkillV then
            pcall(function()
                game:GetService("VirtualInputManager"):SendKeyEvent(true,118,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                wait(.1)
                game:GetService("VirtualInputManager"):SendKeyEvent(false,118,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
            end)
        end
    end
end)
spawn(function()
    while wait(.1) do
        if _G.SkillE then
            pcall(function()
                game:GetService("VirtualInputManager"):SendKeyEvent(true,101,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                wait(.1)
                game:GetService("VirtualInputManager"):SendKeyEvent(false,101,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
            end)
        end
    end
end)
spawn(function()
    while wait(.1) do
        if _G.SkillB then
            pcall(function()
                game:GetService("VirtualInputManager"):SendKeyEvent(true,98,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                wait(.1)
                game:GetService("VirtualInputManager"):SendKeyEvent(false,98,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
            end)
        end
    end
end)
Main7:Line()
Main7:Label("--Misc | Setting--")
Main7:Label("Setting")
Main7:Toggle("KenHaki","",true,function(t)
    _G.Ken = t
end)
Main7:Toggle("BusoHaki","",true,function(t)
    _G.buso = t
end)
_G.GodMode = false
Main7:Toggle("God Mode"," ",false,function(Mode)
    _G.GodMode = Mode 
end)
spawn(function()
    while wait(.1) do
        if _G.GodMode then
            pcall(function()
                game:GetService("Players").LocalPlayer.Character.KenHaki:Destroy()
                game:GetService("Players").LocalPlayer.Backpack.SwimScript.RemoteEvent:Destroy()
            end)
        end
    end
end)
Combat:Toggle("Kill Player Behind"," ",false,function(bool)
    KillPlayer = bool
    if KillPlayer == false then
        game.Players:FindFirstChild(SelectedKillPlayer).Character.HumanoidRootPart.Size = Vector3.new(2, 2, 1)
    end
    while KillPlayer do wait()
        game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players:FindFirstChild(SelectedKillPlayer).Character.HumanoidRootPart.CFrame * CFrame.new(0,distance,0)
        game.Players:FindFirstChild(SelectedKillPlayer).Character.HumanoidRootPart.Size = Vector3.new(60,60,60)
        game:GetService'VirtualUser':CaptureController()
        game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
    end
end)
Combat:Toggle("Spectate Player"," ",false,function(bool)
    Sp = bool
    local plr1 = game.Players.LocalPlayer.Character.Humanoid
    local plr2 = game.Players:FindFirstChild(SelectedKillPlayer)
    repeat wait(.1)
        game.Workspace.Camera.CameraSubject = plr2.Character.Humanoid
    until Sp == false 
    game.Workspace.Camera.CameraSubject = game.Players.LocalPlayer.Character.Humanoid
end)
PlayerName = {}
for i,v in pairs(game.Players:GetChildren()) do  
    table.insert(PlayerName ,v.Name)
end
PlayerName = {}
for i,v in pairs(game.Players:GetChildren()) do
    table.insert(PlayerName ,v.Name)
end
SelectedKillPlayer = ""
local Player = Combat:Dropdown("Selected Player",PlayerName,function(plys) --true/false, replaces the current title "Dropdown" with the option that t
    SelectedKillPlayer = plys
    SelectedPly:Refresh("Selected Player : "..SelectedKillPlayer)
end)
Combat:Button("Refrsh Player","", function()
    PlayerName = {}
    Player:Clear()
    for i,v in pairs(game.Players:GetChildren()) do  
        Player:Add(v.Name)
    end
end)
Combat:Slider("Distance", "", 0, 100,4,function(bool)
    _G.Distance2 = bool
end)
Combat:Line()
Combat:Label("Click to Player")
Combat:Button("Teleport Player","", function()
    local plr1 = game.Players.LocalPlayer.Character
    local plr2 = game.Players:FindFirstChild(SelectedKillPlayer)
    plr1.HumanoidRootPart.CFrame = plr2.Character.HumanoidRootPart.CFrame
end)
Main1:Toggle("Defense"," ",false,function(vu)
    _G.Defense = vu
end)
Main1:Toggle("Melee"," ",false,function(vu)
    _G.Melee = vu
end)
Main1:Toggle("Sword"," ",false,function(vu)
    _G.Sword = vu
end)
Main1:Toggle("Power fruit"," ",false,function(vu)
    _G.Fruit = vu
end)
Main1:Line()
PointStats = 1
Main1:Slider("Point", "", 1, 100,PointStats,function(a)
    PointStats = a
end)
spawn(function()
    while wait() do
        if _G.Defense then
            pcall(function()
                local args = {
                    [1] = "Defense",
                    [2] = PointStats
                }

                game:GetService("Players").LocalPlayer.PlayerGui.Stats.Button.StatsFrame.RemoteEvent:FireServer(unpack(args))
            end)
        end
    end
end)
spawn(function()
    while wait() do
        if _G.Melee then
            pcall(function()
                local args = {
                    [1] = "Melee",
                    [2] = PointStats
                }

                game:GetService("Players").LocalPlayer.PlayerGui.Stats.Button.StatsFrame.RemoteEvent:FireServer(unpack(args))
            end)
        end
    end
end)
spawn(function()
    while wait() do
        if _G.Sword then
            pcall(function()
                local args = {
                    [1] = "Sword",
                    [2] = PointStats
                }

                game:GetService("Players").LocalPlayer.PlayerGui.Stats.Button.StatsFrame.RemoteEvent:FireServer(unpack(args))
            end)
        end
    end
end)
spawn(function()
    while wait() do
        if _G.Fruit then
            pcall(function()
                local args = {
                    [1] = "Devil Fruit",
                    [2] = PointStats
                }

                game:GetService("Players").LocalPlayer.PlayerGui.Stats.Button.StatsFrame.RemoteEvent:FireServer(unpack(args))
            end)
        end
    end
end)
Teleport:Toggle("Ctrl + Click = TP"," ",false,function(vu)
    CTRL = vu
end)
local Plr = game:GetService("Players").LocalPlayer
local Mouse = Plr:GetMouse()
Mouse.Button1Down:connect(
    function()
        if not game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.LeftControl) then
            return
        end
        if not Mouse.Target then
            return
        end
        if CTRL then
            Plr.Character:MoveTo(Mouse.Hit.p)
        end
    end)
if newworld then
    Teleport:Toggle("Teleport-To-OldWorld"," ",false,function(vu)
        _G.autonew = vu
        while _G.autonew do
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1906.7269287109, 72.378662109375, -1995.2386474609)
            wait(.5)
            local args = {
                [1] = workspace.AntiTPNPC:FindFirstChild("Elite Pirate")
            }

            game:GetService("ReplicatedStorage").Remotes.Functions.CheckQuest:InvokeServer(unpack(args))
            if game:GetService("Players").LocalPlayer.PlayerGui["Elite Pirate"].Dialogue.Accept.Visible == true then
                game:GetService'VirtualUser':Button1Down(Vector2.new(0.9,0.9))
                game:GetService'VirtualUser':Button1Up(Vector2.new(0.9,0.9))
                wait(.1)
                for i, v in pairs(game.Players.LocalPlayer.PlayerGui:GetDescendants()) do
                    if v.Name == "Dialogue" then
                        v.Accept.Size = UDim2.new(0, 10000, 0, 10000)
                        v.Accept.Position = UDim2.new(-2, 0, -5, 0)
                        v.Accept.ImageTransparency = 1
                    end
                end
            end
        end

    end)
end
if OldWorld then
    Teleport:Toggle("Teleport-To-Newworld"," ",false,function(vu)
        _G.autoold = true
        while _G.autoold do
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1836.171875, 17.260786056519, -1483.9815673828)
            wait(.5)
            local args = {
                [1] = workspace.AntiTPNPC:FindFirstChild("Elite Pirate")
            }

            game:GetService("ReplicatedStorage").Remotes.Functions.CheckQuest:InvokeServer(unpack(args))
            if game:GetService("Players").LocalPlayer.PlayerGui["Elite Pirate"].Dialogue.Accept.Visible == true then
                game:GetService'VirtualUser':Button1Down(Vector2.new(0.9,0.9))
                game:GetService'VirtualUser':Button1Up(Vector2.new(0.9,0.9))
                wait(.1)
                for i, v in pairs(game.Players.LocalPlayer.PlayerGui:GetDescendants()) do
                    if v.Name == "Dialogue" then
                        v.Accept.Size = UDim2.new(0, 10000, 0, 10000)
                        v.Accept.Position = UDim2.new(-2, 0, -5, 0)
                        v.Accept.ImageTransparency = 1
                    end
                end
            end
        end
    end)
end
Teleport:Line()
if newworld then
    Teleport:Button("Dock","", function()
        game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1872.46875, 72.357009887695, -2131.8950195313)
    end)
    Teleport:Button("Fons Land","", function()
        game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(212.10015869141, 75.344528198242, -4806.1918945313)
    end)
    Teleport:Button("Hibernus Land","", function()
        game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1398.8989257813, 75.344528198242, -5781.6713867188)
    end)
    Teleport:Button("Floresco Land","", function()
        game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2254.3591308594, 75.344680786133, -1809.3531494141)
    end)
    Teleport:Button("Carcer Land","", function()
        game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-89.93913269043, 75.344505310059, 237.99586486816)
    end)
    Teleport:Button("King Samurai","", function()
        game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-3616.9169921875, 508.57568359375, -1410.0499267578)
    end)
    Teleport:Button("Torrefacio","", function()
        game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-3610.3190917969, 75.34969329834, 522.27752685547)
    end)
    Teleport:Button("Viridans","", function()
        game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2930.3295898438, 74.702262878418, 3004.9523925781)
    end)
    Teleport:Button("Skull Island","", function()
        game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-3438.1079101563, 51.437122344971, 10338.633789063)
    end)
    Teleport:Button("Daed TunDra","", function()
        game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(8431.083984375, 14.361581802368, 990.84057617188)
    end)
    Teleport:Button("Lougetown","", function()
        game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2020.85242, 48.1932945, -1669.03381, -0.871182859, 0, 0.490959018, 0, 1, 0, -0.490959018, 0, -0.871182859)
    end)
else
    Teleport:Button("pirate Island","", function()
        game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(4035.46411, 37.8441544, 244.575745, 1, 0, 0, 0, 1, 0, 0, 0, 1)
    end)
    Teleport:Button("Shells Town","", function()
        game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1880.66003, 39.336544, 1225.96362, 1, 0, 0, 0, 1, 0, 0, 0, 1)
    end)
    Teleport:Button("Arlong park","", function()
        game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(3936.66357, 10.541934, 3236.86377, 1, 0, 0, 0, 1, 0, 0, 0, 1)
    end)
    Teleport:Button("Baratie","", function()
        game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(59.1432037, 99.4314957, -79.532135, 1, 0, 0, 0, 1, 0, 0, 0, 1)
    end)
    Teleport:Button("Snow Island","", function()
        game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2826.00098, 18.0717945, 1388.91125, 1, 0, 0, 0, 1, 0, 0, 0, 1)
    end)
    Teleport:Button("Desert Island","", function()
        game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1581.31677, 43.0943527, 3541.448, 1, 0, 0, 0, 1, 0, 0, 0, 1)
    end)
    Teleport:Button("Sky land","", function()
        game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-857.51886, 386.473694, 4839.23926, 1, 0, 0, 0, 1, 0, 0, 0, 1)
    end)
    Teleport:Button("Bubble Land","", function()
        game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(8225.72559, 11.84688, 5523.85352, 1, 0, 0, 0, 1, 0, 0, 0, 1)
    end)
    Teleport:Button("Enies Lobby","", function()
        game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(4195.46582, 22.1771049, 6134.26416, 1, 0, 0, 0, 1, 0, 0, 0, 1)
    end)
    Teleport:Button("Thriller Bark","", function()
        game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1085.04187, 226.748688, 8384.25488, 1, 0, 0, 0, 1, 0, 0, 0, 1)
    end)
    Teleport:Button("Marine Ford","", function()
        game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(8587.34766, 81.4805832, 1592.68201, 1, 0, 0, 0, 1, 0, 0, 0, 1)
    end)
    Teleport:Button("Fish man","", function()
        game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(3448.94653, 40.2424316, 13571.792, 1, 0, 0, 0, 1, 0, 0, 0, 1)
    end)
    Teleport:Button("RocIsland","", function()
        game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(6158.94434, 256.987762, -2141.6001, 1, 0, 0, 0, 1, 0, 0, 0, 1)
    end)
    Teleport:Button("Stone Arena","", function()
        game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(9625.23926, 37.7222023, -3846.9978, 1, 0, 0, 0, 1, 0, 0, 0, 1)
    end)
end
if newworld then
    btns:Button("Black Market","",function()
        game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1908.8797607422, 72.357009887695, -2100.9055175781)
    end)
    btns:Button("Gacha","",function()
        game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2326.703125, 75.435775756836, -1890.0198974609)
    end)
    btns:Button("Reset Stats","",function()
        game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2274.4897460938, 75.292015075684, -1778.0109863281)
    end)
    btns:Button("DarkLeg Shop","",function()
        game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(783.34460449219, 75.294143676758, -4036.01171875)
    end)
    btns:Button("Cyborg","",function()
        game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(841.56256103516, 75.294364929199, -4033.5974121094)
    end)
    btns:Button("Water Style","",function()
        game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(851.13958740234, 75.294364929199, -3968.2131347656)
    end)
    btns:Button("Dragon Claw","",function()
        game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(246.9157409668, 432.90087890625, -936.02331542969)
    end)
    btns:Button("Awake Master","",function()
        game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2067.57421875, 169.78974914551, 5003.4887695313)
    end)
    btns:Button("Random Appearance","",function()
        game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1338.2873535156, 75.847648620605, -2216.00390625)
    end)
else
    btns:Button("black market","",function()
        game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2133.73657, 79.9022598, -1596.13232, 1, 0, 0, 0, 1, 0, 0, 0, 1)
    end)
    btns:Button("Gacha","",function()
        game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2015.10571, 48.1432877, -1727.69031, 1, 0, 0, 0, 1, 0, 0, 0, 1)
    end)
    btns:Button("Delaet Fuit","",function()
        game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-930.983154, 386.420685, 4756.65137, 1, 0, 0, 0, 1, 0, 0, 0, 1)
    end)
    btns:Button("Reset stat","",function()
        game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2049.5708, 48.1432991, -1802.85901, 1, 0, 0, 0, 1, 0, 0, 0, 1)
    end)
    btns:Button("Random Appearance","",function()
        game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2095.91748, 49.3003693, -1766.4021, 1, 0, 0, 0, 1, 0, 0, 0, 1)
    end)
    btns:Button("Soru Shop","",function()
        game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1643.65637, 40.609642, 1174.27539, 1, 0, 0, 0, 1, 0, 0, 0, 1)
    end)
    btns:Button("Bosu Shop","",function()
        game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(8137.15918, 12.7555771, 5436.8208, 1, 0, 0, 0, 1, 0, 0, 0, 1)
    end)
    btns:Button("Ken Shop","",function()
        game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-892.359741, 386.964813, 4697.16016, 1, 0, 0, 0, 1, 0, 0, 0, 1)
    end)
    btns:Button("pipe Shop","",function()
        game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(8103.03223, 11.8468285, 5374.82129, 1, 0, 0, 0, 1, 0, 0, 0, 1)
    end)
    btns:Button("Tripple katana","",function()
        game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(6227.92041, 26.5671806, -2121.84155, 1, 0, 0, 0, 1, 0, 0, 0, 1)
    end)
    btns:Button("mini mace","",function()
        game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(8700.28711, 310.095123, 1923.63208, 1, 0, 0, 0, 1, 0, 0, 0, 1)
    end)
    btns:Button("Dark leg","",function()
        game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(6433.2915, 103.330521, -2334.13794, 1, 0, 0, 0, 1, 0, 0, 0, 1)
    end)
    btns:Button("cyborg","",function()
        game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(4581.2666, 123.651573, 3224.02539, 1, 0, 0, 0, 1, 0, 0, 0, 1)
    end)

    btns:Button("water style","",function()
        game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2857.86548, 40.2725754, 14145.1279, 1, 0, 0, 0, 1, 0, 0, 0, 1)
    end)
    btns:Button("Traveler","",function()
        game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(8783.8584, 211.303848, 1708.29797, 1, 0, 0, 0, 1, 0, 0, 0, 1)
    end)
    btns:Button("Eleite Pirate","",function()
        game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1836.13538, 17.2347126, -1483.94019, 1, 0, 0, 0, 1, 0, 0, 0, 1)
    end)
end
Misc:Button("Water No Dmg","", function()
    game.Players.LocalPlayer.Backpack.SwimScript.RemoteEvent:Destroy()
end)
Misc:Line()
if newworld then
    Misc:Toggle("AutoBuyDevilFruitBeli"," ",false,function(value)
        _G.A = value
        while _G.A do
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2327.4165, 75.461853, -1890.0365, 0.999834597, 1.31936474e-07, -0.0181870535, -1.3101139e-07, 1, 5.20563859e-08, 0.0181870535, -4.96650649e-08, 0.999834597)
            wait(.5)
            local args = {
                [1] = workspace.AntiTPNPC.ARandomFruit
            }

            game:GetService("ReplicatedStorage").Remotes.Functions.CheckQuest:InvokeServer(unpack(args))
            if game:GetService("Players").LocalPlayer.PlayerGui.ARandomFruit.Dialogue.Beli.Visible == true then
                game:GetService'VirtualUser':Button1Down(Vector2.new(0.9,0.9))
                game:GetService'VirtualUser':Button1Up(Vector2.new(0.9,0.9))
                wait(.1)
                for i, v in pairs(game.Players.LocalPlayer.PlayerGui:GetDescendants()) do
                    if v.Name == "Dialogue" then
                        v.Beli.Size = UDim2.new(0, 10000, 0, 10000)
                        v.Beli.Position = UDim2.new(-2, 0, -5, 0)
                        v.Beli.ImageTransparency = 1
                    end
                end
            end
        end
    end)
end
if OldWorld then
    Misc:Toggle("AutoBuyDevilFruitBeli"," ",false,function(value)
        _G.A = value
        while _G.A do
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2015.4337158203, 48.169368743896, -1727.3041992188)
            wait(.5)
            local args = {
                [1] = workspace.AntiTPNPC.ARandomFruit
            }

            game:GetService("ReplicatedStorage").Remotes.Functions.CheckQuest:InvokeServer(unpack(args))
            if game:GetService("Players").LocalPlayer.PlayerGui.ARandomFruit.Dialogue.Beli.Visible == true then
                game:GetService'VirtualUser':Button1Down(Vector2.new(0.9,0.9))
                game:GetService'VirtualUser':Button1Up(Vector2.new(0.9,0.9))
                wait(.1)
                for i, v in pairs(game.Players.LocalPlayer.PlayerGui:GetDescendants()) do
                    if v.Name == "Dialogue" then
                        v.Beli.Size = UDim2.new(0, 10000, 0, 10000)
                        v.Beli.Position = UDim2.new(-2, 0, -5, 0)
                        v.Beli.ImageTransparency = 1
                    end
                end
            end
        end
    end)
end
Misc:Toggle("Bring Fruit"," ",false,function(t)

    _G.A = t
    if _G.A == false then return end 
    while _G.A do wait()
        for i,v in pairs(game.Workspace:GetChildren()) do
            if v:IsA "Tool" then
                v.Handle.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
            end
        end	end
end)
Misc:Line()
Misc:Toggle("Use Speed"," ",false,function(a)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 36
    speed = a
end)

Misc:Slider("Walkspeed", "Makes your faster.", 0, 100,16,function(t)
    sspeed = t
end)

spawn(function()
    while wait() do
        if speed then
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = sspeed
        end
    end
end)

Misc:Button("Un Lock Coffin Boat","", function()
    local args = {
        [1] = "CoffinBoat",
        [2] = "ShipA"
    }

    game:GetService("ReplicatedStorage").Remotes.Events.Ship:FireServer(unpack(args))
end)
Misc:Line()
Misc:Label("--Character--")
Misc:Toggle("Inf Geppo"," ",false,function(value)

    if value == true then
        game.Players.LocalPlayer.Backpack.GeppoNew.cds.Value = 1000000000000000000
    elseif value == false then
        game.Players.LocalPlayer.Backpack.GeppoNew.cds.Value = 6
    end

end)
Fly = false
function activatefly()
    local mouse=game.Players.LocalPlayer:GetMouse''
    localplayer=game.Players.LocalPlayer
    game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")
    local torso = game.Players.LocalPlayer.Character.HumanoidRootPart
    local speed=150
    local keys={a=false,d=false,w=false,s=false}
    local e1
    local e2
    local function start()
        local pos = Instance.new("BodyPosition",torso)
        local gyro = Instance.new("BodyGyro",torso)
        pos.Name="EPIXPOS"
        pos.maxForce = Vector3.new(math.huge, math.huge, math.huge)
        pos.position = torso.Position
        gyro.maxTorque = Vector3.new(9e9, 9e9, 9e9)
        gyro.cframe = torso.CFrame
        repeat
            wait()
            localplayer.Character.Humanoid.PlatformStand=true
            local new=gyro.cframe - gyro.cframe.p + pos.position
            if not keys.w and not keys.s and not keys.a and not keys.d then
                speed=40
            end
            if keys.w then
                new = new + workspace.CurrentCamera.CoordinateFrame.lookVector * speed
                speed=speed+3.02
            end
            if keys.s then
                new = new - workspace.CurrentCamera.CoordinateFrame.lookVector * speed
                speed=speed+3.02
            end
            if keys.d then
                new = new * CFrame.new(speed,0,0)
                speed=speed+3.02
            end
            if keys.a then
                new = new * CFrame.new(-speed,0,0)
                speed=speed+2.02
            end
            if speed>10 then
                speed=100
            end
            pos.position=new.p
            if keys.w then
                gyro.cframe = workspace.CurrentCamera.CoordinateFrame*CFrame.Angles(-math.rad(speed*15),0,0)
            elseif keys.s then
                gyro.cframe = workspace.CurrentCamera.CoordinateFrame*CFrame.Angles(math.rad(speed*15),0,0)
            else
                gyro.cframe = workspace.CurrentCamera.CoordinateFrame
            end
        until not Fly
        if gyro then
            gyro:Destroy()
        end
        if pos then
            pos:Destroy()
        end
        flying=false
        localplayer.Character.Humanoid.PlatformStand=false
        speed=9
    end
    e1=mouse.KeyDown:connect(function(key)
        if not torso or not torso.Parent then
            flying=false e1:disconnect() e2:disconnect() return
        end
        if key=="w" then
            keys.w=true
        elseif key=="s" then
            keys.s=true
        elseif key=="a" then
            keys.a=true
        elseif key=="d" then
            keys.d=true
        end
    end)
    e2=mouse.KeyUp:connect(function(key)
        if key=="w" then
            keys.w=false
        elseif key=="s" then
            keys.s=false
        elseif key=="a" then
            keys.a=false
        elseif key=="d" then
            keys.d=false
        end
    end)
    start()
end
Misc:Toggle("Fly"," ",false,function(Value)
    Fly = Value
    activatefly()
end)
Misc:Toggle("No Clip"," ",false,function(value)
    NoClip = value
end)
game:GetService("RunService").Heartbeat:Connect(
function()
    if NoClip then
        game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11)
    end
end)
SpeesPlayer = 16
local Speed = Misc:Slider("Player Speed", "", 1, 1000,50,function(value)
    SpeesPlayer = value
end)
spawn(function()
    while wait(.1) do
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = SpeesPlayer
    end
end)
Misc:Button("Set Speed","", function()
    Speed:Change(16)
end)
JumpPlayer = 50
local Jump = Misc:Slider("Player JumpPower", "", 1, 1000,50,function(value)
    JumpPlayer = value
end)
spawn(function()
    while wait(.1) do
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = JumpPlayer
    end
end)
Misc:Button("Set jumpPower","", function()
    Jump:Change(50)
end)
Main:Line()
Main:Label("Dunguen Beta")
SelectToolWeapon = ""
function EquipWeapon(ToolSe)
    if game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe) then
        getgenv().tool = game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe)
        wait()
        game.Players.LocalPlayer.Character.Humanoid:EquipTool(tool)
    end
end
Main:Toggle("Auto Dunguen","",false,function(t)
    _G.AutoDunguen = t
end)
local SelectWeapona = Main:Dropdown("Select Weapon 1 ",Wapon,function(Value)
    SelectToolWeapon1 = Value
end)


Main:Button("Refresh Weapon","", function()
    SelectWeapona1:Clear()
    Wapon = {}
    for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
        if v:IsA("Tool") then
            SelectWeapona1:Add(v.Name)
        end
    end
    for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
        if v:IsA("Tool") then
            SelectWeapona1:Add(v.Name)
        end
    end
end)

spawn(function()
    while wait() do
        if _G.AutoDunguen then
            if newworld then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1563.5205078125, 680.43780517578, -2829.1767578125)
            end
            if OldWorld then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(8692.4052734375, 103.69751739502, 1589.6212158203)
            end
        end
    end
end)
spawn(function()
    while wait() do
        if _G.AutoDunguen then
            pcall(function()
                EquipWeapon(SelectToolWeapon1)
                wait(.5)
                EquipWeapon(SelectToolWeapon2)
                wait(.5)
                EquipWeapon(SelectToolWeapon3)
                wait(.5)
                local mt = getrawmetatable(game)
                local old = mt.__namecall
                local protect = newcclosure or protect_function

                if not protect then
                protect = function(f) return f end
                end

                setreadonly(mt, false)
                mt.__namecall = protect(function(self, ...)
                local method = getnamecallmethod()
                if method == "Kick" then
                wait(9e9)
                return
                end
                return old(self, ...)
                end)
                hookfunction(game:GetService("Players").LocalPlayer.Kick,protect(function() wait(9e9) end))
            end)
        end
    end
end)
spawn(function()
    while wait() do
        if _G.AutoDunguen then
            if game.PlaceId == 5931540094 then
                game:GetService("ReplicatedStorage").GoldenArenaEvents.StartEvent:FireServer()
                pcall(function()
                for i,v in pairs(game:GetService("Workspace").MOB:GetChildren()) do
                    if v:FindFirstChild("HumanoidRootPart") or v:FindFirstChild("Humanoid") then
                        repeat wait()
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.Angles(math.rad(-90), 0, 0) * CFrame.new(0,0,7)
                        v.HumanoidRootPart.CanCollide = false
                        until not _G.AutoDunguen or v.Humanoid.Health <= 0
                    elseif not v:FindFirstChild("Humanoid") or v.Humanoid.Health == 0 then
                        game.Players.LocalPlayer.Character.HumanoidRootpPrt.CFrame = CFrame.new(0,500,0)
                    end
                end
            end)
        end
    end
end
end)
spawn(function()
    while wait() do
        if _G.Weapon then
            pcall(function()
            for _, tool in ipairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
                if tool:IsA("Tool") then
                     tool.Parent = game:GetService("Players").LocalPlayer.Character
                end
            end
            end)
        end
    end
end)
spawn(function()
    while wait() do
        if _G.AutoDunguen then
            pcall(function ()
                for i,v in pairs(game:GetService("Workspace").MOB:GetChildren()) do
                    if  v:FindFirstChild("Humanoid") then
                        v.Humanoid.HipHeight = -10
                        v.Humanoid:ChangeState(11)
                    end
                end
            end)
        end
    end
end)
spawn(function()
    while wait() do
        if _G.AutoDunguen then
            if game.PlaceId == 5931540094 then
            pcall(function()
            game:GetService'VirtualUser':Button1Down(Vector2.new(0.9,0.9))
            game:GetService'VirtualUser':Button1Up(Vector2.new(0.9,0.9))
            end)
            end
        end
    end
end)
spawn(function()
    game:GetService('RunService').Stepped:connect(function()
        if _G.AutoDunguen == true then
            game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
        end
    end)
end)
spawn(function()
    while wait(.1) do
        if _G.AutoDunguen then
            if game.PlaceId == 5931540094 then
            pcall(function()
                game:GetService("VirtualInputManager"):SendKeyEvent(true,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                wait(.1)
                game:GetService("VirtualInputManager"):SendKeyEvent(false,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
            end)
            end
        end
    end
end)

spawn(function()
    while wait(.1) do
        if _G.AutoDunguen then
            if game.PlaceId == 5931540094 then
            pcall(function()
                game:GetService("VirtualInputManager"):SendKeyEvent(true,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                wait(.1)
                game:GetService("VirtualInputManager"):SendKeyEvent(false,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
            end)
            end
        end
    end
end)

spawn(function()
    while wait(.1) do
        if _G.AutoDunguen then
            if game.PlaceId == 5931540094 then
            pcall(function()
                game:GetService("VirtualInputManager"):SendKeyEvent(true,99	,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                wait(.1)
                game:GetService("VirtualInputManager"):SendKeyEvent(false,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
            end)
            end
        end
    end
end)

spawn(function()
    while wait(.1) do
        if _G.AutoDunguen then
            if game.PlaceId == 5931540094 then
            pcall(function()
                game:GetService("VirtualInputManager"):SendKeyEvent(true,118,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                wait(.1)
                game:GetService("VirtualInputManager"):SendKeyEvent(false,118,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
            end)
            end
        end
    end
end)
spawn(function()
    while wait(.1) do
        if _G.AutoDunguen then
            if game.PlaceId == 5931540094 then
            pcall(function()
                game:GetService("VirtualInputManager"):SendKeyEvent(true,101,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                wait(.1)
                game:GetService("VirtualInputManager"):SendKeyEvent(false,101,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
            end)
            end
        end
    end
end)
spawn(function()
    while wait(.1) do
        if _G.AutoDunguen then
           if game.PlaceId == 5931540094 then
            pcall(function()
                game:GetService("VirtualInputManager"):SendKeyEvent(true,98,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                wait(.1)
                game:GetService("VirtualInputManager"):SendKeyEvent(false,98,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
            end)
            end
        end
    end
end)
spawn(function()
    while wait(.1) do
        local busohee = game.Players.LocalPlayer.PlayerStats.BusoShopValue.Value
        if _G.AutoDunguen and busohee == "BusoHaki" then
            pcall(function()
                if game.Players.LocalPlayer.Character.Haki.Value == 0 then
                    game:GetService("Players").LocalPlayer.Character.Services.Client.Armament:FireServer()
                end
            end)
        end
    end
end)
Setting:Label("Copy Link Discord")
Setting:Button("Copy Link Disord","", function()
    setclipboard("https://discord.gg/PrHmckN86J")
    Flux:Notification("Copied!!!!!!!!!", "Alright!!!!!!!")
end)
Setting:Line()
Setting:Label("--Destroy Gui--")
Setting:Button("Destroy GUI","", function()
    local ui = game.CoreGui:FindFirstChild(CNLib.Name)
    if ui then
        ui:Destroy()
    end
end)
Setting:Line()
Setting:Label("--Server--")
Setting:Button("Rejoin","", function()
    local ts = game:GetService("TeleportService")
    local p = game:GetService("Players").LocalPlayer
    ts:Teleport(game.PlaceId, p)
end)
local function HttpGet(url)
    return game:GetService("HttpService"):JSONDecode(htgetf(url))
end
Setting:Button("Server Hop","", function()
    local PlaceID = game.PlaceId
    local AllIDs = {}
    local foundAnything = ""
    local actualHour = os.date("!*t").hour
    local Deleted = false
    function TPReturner()
        local Site;
        if foundAnything == "" then
            Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100'))
        else
            Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100&cursor=' .. foundAnything))
        end
        local ID = ""
        if Site.nextPageCursor and Site.nextPageCursor ~= "null" and Site.nextPageCursor ~= nil then
            foundAnything = Site.nextPageCursor
        end
        local num = 0;
        for i,v in pairs(Site.data) do
            local Possible = true
            ID = tostring(v.id)
            if tonumber(v.maxPlayers) > tonumber(v.playing) then
                for _,Existing in pairs(AllIDs) do
                    if num ~= 0 then
                        if ID == tostring(Existing) then
                            Possible = false
                        end
                    else
                        if tonumber(actualHour) ~= tonumber(Existing) then
                            local delFile = pcall(function()
                                -- delfile("NotSameServers.json")
                                AllIDs = {}
                                table.insert(AllIDs, actualHour)
                            end)
                        end
                    end
                    num = num + 1
                end
                if Possible == true then
                    table.insert(AllIDs, ID)
                    wait()
                    pcall(function()
                        -- writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
                        wait()
                        game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceID, ID, game.Players.LocalPlayer)
                    end)
                    wait(4)
                end
            end
        end
    end
    function Teleport()
        while wait() do
            pcall(function()
                TPReturner()
                if foundAnything ~= "" then
                    TPReturner()
                end
            end)
        end
    end
    Teleport()
end)

if NP then
if game.CoreGui:FindFirstChild("FluxLib") then
    game.CoreGui:FindFirstChild("FluxLib"):Destroy()
end
local Flux = loadstring(game:HttpGet"https://pastebin.com/raw/XLCrin0T")()

local win = Flux:Window("Mythic HUB", "NOK PIECE",getgenv().Color, Enum.KeyCode.RightControl)
local AutoFarms = win:Tab("Auto Farm", "")
function Quest()
    local MyLevel = game.Players.localPlayer.Data.Level.Value
    if MyLevel == 1 or MyLevel <= 14 then 
        Monster = "Bandit LV. 1"
        NameQuest = "Bandit Quest"
    elseif MyLevel == 15 or MyLevel <= 24 then
        Monster = "Blue Hair Pirate LV. 15"
        NameQuest = "Blue Hair Quest"
    elseif MyLevel == 25 or MyLevel <= 49 then
        Monster = "Clown Pirate LV. 25"
        NameQuest = "Clown Pirate"
    elseif MyLevel == 50 or MyLevel <= 74 then
       Monster = "Clown Captain LV 50"
       NameQuest = "Clown Captain"
    elseif MyLevel == 75 or MyLevel <= 99 then
        Monster = "Fishman Pirate LV. 75"
        NameQuest = "Fishman Pirate"
    elseif MyLevel == 100 or MyLevel <= 149 then
        Monster = "Fishman Captain LV. 100"
        NameQuest = "Fishman Captain"
    elseif MyLevel == 150 or MyLevel <= 199 then
        Monster = "Marine LV. 150"
        NameQuest = "MarineQUest"
    elseif MyLevel == 200 or MyLevel <= 249 then
        Monster = "Smokeman LV. 200"
        NameQuest = "Smokeman"
    elseif MyLevel == 250 or MyLevel <= 299 then
        Monster = "Chef Pirate LV. 250"
        NameQuest = "ChefPirateQuest"
    elseif MyLevel == 300 or MyLevel <= 349 then
        Monster = "Golden Armour Pirate LV. 300"
        NameQuest = "Golden Armour Quest"
    elseif MyLevel == 350 or MyLevel <= 399 then
        Monster = "Blackleg Chef LV. 350"
        NameQuest = "Blackleg Man"
    elseif MyLevel == 400 or MyLevel <= 449 then
        Monster = "Desert Pirate LV. 400"
        NameQuest = "Mr Bomb"
    elseif MyLevel == 400 then
        Monster = "Mr. Bomb LV. 450"
        NameQuest = "Mr Bomb"
    end
end
function click()
    pcall(function()
    game:GetService'VirtualUser':CaptureController()
    game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
    game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11)
    end)
end
function autofarm()
    pcall(function()
        Quest()
        repeat wait()
            for i, v in pairs(game:GetService("Workspace").Lives:GetChildren()) do
                if v.Name == Monster then
                    click()
                    pcall(function()
                    if Typeing == 2 then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.Angles(math.rad(400), 400, 400) - Vector3.new(0,DistanceMob,0)
                    elseif Typeing == 3 then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.Angles(math.rad(-90), 0, 0) * CFrame.new(0,0,DistanceMob)
                    elseif Typeing == 1 then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,0,DistanceMob)
                    end
                    end)
                end
            end
        until v.Humanoid.Health <= 0 or _G.AutoFarmnp == false
    end)
end
function getquest()
    Quest()
    local a = game:GetService("Workspace").Quest[NameQuest].ClickDetector
    fireclickdetector(a)
end
Typeing = 3
AutoFarms:Slider("Type Farm", "", 1, 3,3,function(typess)
    Typeing = typess
end)
DistanceMob = 4
AutoFarms:Slider("DistanceMob", "", 0, 50,4,function(dis)
    DistanceMob = dis
end)
AutoFarms:Toggle("Auto Farm"," ",false,function(vu)
    _G.AutoFarmnp = vu
end)
spawn(function()
    while wait() do
        if _G.AutoFarmnp then
            pcall(function()
                    autofarm()
                    getquest()
                    Quest()
            end)
        end
    end
end)
SelectToolWeapon = ""
function EquipWeapon(ToolSe)
    if game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe) then
        local tool = game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe)
        wait(.1)
        game.Players.LocalPlayer.Character.Humanoid:EquipTool(tool)
    end
end
AutoFarms:Toggle("Auto Equit","",false,function(vu)
    _G.q = vu
end)
spawn(function()
    while wait() do
        if _G.q then
            pcall(function()
            EquipWeapon(SelectToolWeapon)
            end)
        end
    end
end)
Wapon = {}
for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do  
    if v:IsA("Tool") then
        table.insert(Wapon ,v.Name)
    end
end
for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do  
    if v:IsA("Tool") then
        table.insert(Wapon, v.Name)
    end
end
local SelectWeapona = AutoFarms:Dropdown("Select Weapon",Wapon,function(Value)
    SelectToolWeapon = Value
    SelectToolWeaponOld = Value
end)
AutoFarms:Button("Refresh Weapon","", function()
    SelectWeapona:Clear()
    Wapon = {}
    for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do  
        if v:IsA("Tool") then
            SelectWeapona:Add(v.Name)
        end
    end
    for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do  
        if v:IsA("Tool") then
            SelectWeapona:Add(v.Name)
        end
    end
end)
game:GetService("RunService").Heartbeat:Connect(
function()
    if _G.AutoFarmnp then
        game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11)
    end
end)
local st = win:Tab("Auto Stats", "")
st:Toggle("Melee"," ",false,function(vu)
    _G.Meleenp = vu
end)
st:Toggle("Defense"," ",false,function(vu)
    _G.Defensenp = vu
end)
st:Toggle("Fruit"," ",false,function(vu)
    _G.Fruitnp = vu
end)
st:Toggle("Sword"," ",false,function(vu)
    _G.Swordnp = vu
end)
st:Slider("PointStats", "", 1, 100,1,function(t)
    PointStats = t
end)
spawn(function()
    while wait() do
        if _G.Meleenp then
            local args = {
                [1] = "StrengthText",
                [2] = 1
            }

            game:GetService("ReplicatedStorage").UpdateStats:FireServer(unpack(args))
        end
    end
end)
spawn(function()
    while wait() do
        if _G.Fruitnp then
            local args = {
                [1] = "DevilFruitText",
                [2] = 1
            }

            game:GetService("ReplicatedStorage").UpdateStats:FireServer(unpack(args))
        end
    end
end)
spawn(function()
    while wait() do
        if _G.Swordnp then
            local args = {
                [1] = "SwordText",
                [2] = 1
            }

            game:GetService("ReplicatedStorage").UpdateStats:FireServer(unpack(args))
        end
    end
end)
spawn(function()
    while wait() do
        if _G.Defensenp then
                local args = {
                    [1] = "DefenseText",
                    [2] = 1
                }

                game:GetService("ReplicatedStorage").UpdateStats:FireServer(unpack(args))
        end
    end
end)
local btns = win:Tab("Teleport", "")
btns:Button("Marine Island", "", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-46.4119873, -6.90767384, 3810.16187, 1, 0, 0, 0, 1, 0, 0, 0, 1)
    end)
    btns:Button("Clown Island", "", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2570.28223, -61.5541382, 949.548279, 1, 0, 0, 0, 1, 0, 0, 0, 1)
    end)
    btns:Button("Boss Island", "", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(3984.87817, -76.9566269, -2680.29712, 0.999959707, 1.88191443e-05, -0.00901332125, -1.87249061e-05, 1, 1.05397603e-05, 0.00901332125, -1.03705634e-05, 0.999959707)
    end)
    btns:Button("Fishman Island", "", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2592.42114, -76.3180542, -2571.2002, 0, 0, 1, 0, 1, -0, -1, 0, 0)
    end)
    btns:Button("Bandit Island", "", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(175.735901, -80.5028839, -635.927124, 1, 0, 0, 0, 1, 0, 0, 0, 1)
    end)
    btns:Button("Prison Island", "", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(4902.17334, -82.2431412, 6552.74268, 0.987594068, 5.19572474e-08, 0.157028615, -6.67122464e-08, 1, 8.86931559e-08, -0.157028615, -9.80685613e-08, 0.987594068)
    end)
    btns:Button("Desert Island", "", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-6129.16846, -67.420929, 4228.6001, 0, 0, 1, 0, 1, -0, -1, 0, 0)
    end)
    btns:Button("Monkey Island", "", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2988.35107, -40.7315063, 1813.31482, 0.538414896, 3.18457403e-08, -0.842679918, -3.24756186e-08, 1, 1.70413053e-08, 0.842679918, 1.81912529e-08, 0.538414896)
    end)
    btns:Button("Sky Island", "", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(4003.75464, 1866.10583, 2357.73926, 0.999893427, -5.57522242e-08, -0.0145749338, 5.54740645e-08, 1, -1.94892262e-08, 0.0145749338, 1.86786249e-08, 0.999893427)
    end)
    btns:Button("Sky City", "", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2949.06201, 1394.91687, 4255.53271, -0.488502413, 8.55892353e-08, 0.872562528, 1.49636903e-09, 1, -9.72517711e-08, -0.872562528, -4.62020502e-08, -0.488502413)
    end)
    btns:Button("Snow Island", "", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(6071.08252, -77.3941193, 2878.48706, 0.165375546, 4.09736467e-09, -0.986230671, -1.13554911e-07, 1, -1.48868233e-08, 0.986230671, 1.14453258e-07, 0.165375546)
    end)
    btns:Button("Restaurant Ship", "", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-310.558777, -9.81450367, -5968.27979, -0.996466756, -1.21768249e-08, 0.0839885548, -1.27447084e-08, 1, -6.22528873e-09, -0.0839885548, -7.27370297e-09, -0.996466756)
    end)
local Combat = win:Tab("Player", "")
Combat:Toggle("Kill Player Behind"," ",false,function(bool)
    KillPlayer = bool
    if KillPlayer == false then
        game.Players:FindFirstChild(SelectedKillPlayer).Character.HumanoidRootPart.Size = Vector3.new(2, 2, 1)
    end
    while KillPlayer do wait()
        game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players:FindFirstChild(SelectedKillPlayer).Character.HumanoidRootPart.CFrame * CFrame.new(0,distance,0)
        game.Players:FindFirstChild(SelectedKillPlayer).Character.HumanoidRootPart.Size = Vector3.new(60,60,60)
        game:GetService'VirtualUser':CaptureController()
        game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
    end
end)
Combat:Toggle("Spectate Player"," ",false,function(bool)
    Sp = bool
    local plr1 = game.Players.LocalPlayer.Character.Humanoid
    local plr2 = game.Players:FindFirstChild(SelectedKillPlayer)
    repeat wait(.1)
        game.Workspace.Camera.CameraSubject = plr2.Character.Humanoid
    until Sp == false 
    game.Workspace.Camera.CameraSubject = game.Players.LocalPlayer.Character.Humanoid
end)
PlayerName = {}
for i,v in pairs(game.Players:GetChildren()) do  
    table.insert(PlayerName ,v.Name)
end
PlayerName = {}
for i,v in pairs(game.Players:GetChildren()) do
    table.insert(PlayerName ,v.Name)
end
SelectedKillPlayer = ""
local Player = Combat:Dropdown("Selected Player",PlayerName,function(plys) --true/false, replaces the current title "Dropdown" with the option that t
    SelectedKillPlayer = plys
    SelectedPly:Refresh("Selected Player : "..SelectedKillPlayer)
end)
Combat:Button("Refrsh Player","", function()
    PlayerName = {}
    Player:Clear()
    for i,v in pairs(game.Players:GetChildren()) do  
        Player:Add(v.Name)
    end
end)
Combat:Slider("Distance", "", 0, 100,4,function(bool)
    _G.Distance2 = bool
end)
Combat:Line()
Combat:Label("Click to Player")
Combat:Button("Teleport Player","", function()
    local plr1 = game.Players.LocalPlayer.Character
    local plr2 = game.Players:FindFirstChild(SelectedKillPlayer)
    plr1.HumanoidRootPart.CFrame = plr2.Character.HumanoidRootPart.CFrame
end)
local eiei = win:Tab("Misc", "")
eiei:Toggle("No Clip"," ",false,function(vu)
    _G.Noclip = vu
end)
game:GetService("RunService").Heartbeat:Connect(
function()
    if _G.Noclip then
        game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11)
    end
end)
eiei:Toggle("WalkSpeed"," ",false,function(vu)
    if vu == true then
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 1000000000
    elseif vu == false then
        game.Players.LocalPlayer.Character.Humanoid.Health = 0
    end
end)
local k = win:Tab("Setting", "")
k:Line()
k:Label("--Setting--", true)
k:Toggle("Anit AFK"," ",true,function(vu)
    local vu = game:GetService("VirtualUser")
    game:GetService("Players").LocalPlayer.Idled:connect(function()
        vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
        wait(1)
        vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
    end)
end)
k:Line()
k:Button("Destroy GUI","", function()
    local ui = game.CoreGui:FindFirstChild("FluxLib")
    if ui then
        ui:Destroy()
    end
end)
k:Line()
k:Button("Rejoin","", function()
    local ts = game:GetService("TeleportService")
    local p = game:GetService("Players").LocalPlayer
    ts:Teleport(game.PlaceId, p)
end)
local function HttpGet(url)
    return game:GetService("HttpService"):JSONDecode(htgetf(url))
end
k:Button("Server Hop","", function()
    local PlaceID = game.PlaceId
    local AllIDs = {}
    local foundAnything = ""
    local actualHour = os.date("!*t").hour
    local Deleted = false
    function TPReturner()
        local Site;
        if foundAnything == "" then
            Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100'))
        else
            Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100&cursor=' .. foundAnything))
        end
        local ID = ""
        if Site.nextPageCursor and Site.nextPageCursor ~= "null" and Site.nextPageCursor ~= nil then
            foundAnything = Site.nextPageCursor
        end
        local num = 0;
        for i,v in pairs(Site.data) do
            local Possible = true
            ID = tostring(v.id)
            if tonumber(v.maxPlayers) > tonumber(v.playing) then
                for _,Existing in pairs(AllIDs) do
                    if num ~= 0 then
                        if ID == tostring(Existing) then
                            Possible = false
                        end
                    else
                        if tonumber(actualHour) ~= tonumber(Existing) then
                            local delFile = pcall(function()
                                -- delfile("NotSameServers.json")
                                AllIDs = {}
                                table.insert(AllIDs, actualHour)
                            end)
                        end
                    end
                    num = num + 1
                end
                if Possible == true then
                    table.insert(AllIDs, ID)
                    wait()
                    pcall(function()
                        -- writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
                        wait()
                        game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceID, ID, game.Players.LocalPlayer)
                    end)
                    wait(.1)
                end
            end
        end
    end
    function Teleport() 
        while wait() do
            pcall(function()
                TPReturner()
                if foundAnything ~= "" then
                    TPReturner()
                end
            end)
        end
    end
    Teleport()
end)
end
