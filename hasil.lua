-- Luraph runtime function (from the VM object, not part of the script: not lifted).
-- LPH_ENCFUNC decrypts a function this way: (key, encrypted buffer, ...) -> function.
local function luraph_runtime1(...)
	error("Luraph runtime function, not devirtualized")
end

local v
v = game
local request_
request_ = request or http_request or syn_request or syn and syn.request or assert("Try another Executor!")
local setclipboard_
setclipboard_ = setclipboard or toclipboard or syn and syn.setclipboard or assert("Try another Executor!")
local vector2
vector2 = Vector2.new
local vector
vector = Vector3.zero
local cframe
cframe = CFrame.new
local cframe2
cframe2 = CFrame.lookAt
local udim2
udim2 = UDim2.fromOffset
local udim
udim = UDim.new
local udim22
udim22 = UDim2.new
local vector3
vector3 = Vector3.new
local color
color = Color3.fromRGB
local floor
floor = math.floor
local clamp
clamp = math.clamp
local max
max = math.max
local min
min = math.min
local abs
abs = math.abs
local sqrt
sqrt = math.sqrt
local random
random = math.random
local char
char = string.char
local v2
v2 = tostring
local sub = string.sub
local time
time = os.time
local insert
insert = table.insert
local remove
remove = table.remove
local clear
clear = table.clear
local find
find = table.find
local format
format = string.format
local gmatch
gmatch = string.gmatch
local gsub
gsub = string.gsub
local byte
byte = string.byte
_round = math.round
_huge = math.huge

do
	local v3 = ipairs
	local v4 = pairs
	_tonumber = tonumber
	_ipairs = v3
	_pairs = v4
end

local delay = task.delay
_defer = task.defer
_delay = delay
local v3 = error
_print = print
_error = v3
local v4
v4 = type
local v5
v5 = typeof
local v6
v6 = pcall
local clock
clock = os.clock
local v7
v7 = tick
local getDescendants
getDescendants = v.GetDescendants
local heartbeat
heartbeat = v:GetService("RunService").Heartbeat
local renderStepped
renderStepped = v:GetService("RunService").RenderStepped

do
	local UserInputService = game:GetService("UserInputService")
	local TweenService = game:GetService("TweenService")
	_UserInputService = UserInputService
	_TweenService = TweenService
end

ERROR_HANDLING(false)
local tbl
tbl = { 0 }
v6(function(...) end)
local freeze
freeze = table.freeze
local fn

do
	local isfrozen = table.isfrozen
	local v8 = rawset

	if newcclosure then
		freeze = newcclosure(freeze)
		newcclosure(isfrozen)
		v8 = newcclosure(v8)
		v4 = newcclosure(v4)
	end

	fn = function(arg, arg2)
		if v6(v8, arg, "_lw_probe_3f8a", nil) then
			v.Players.LocalPlayer:Kick("[LuWare] integrity violation: table.freeze tampered (%s)"):format(arg2 or "?")
		end
	end
end

local fn2, fn3

do
	local str = "__lw_3f8a"

	fn2 = function(arg)
		if v4(getgenv) ~= "function" then
			return nil
		end
		local genv = getgenv()
		return genv[str] and genv[str][arg]
	end

	fn3 = function(arg, arg2)
		if v4(getgenv) ~= "function" then
			return
		end
		local genv = getgenv()

		if not genv[str] then
			genv[str] = {}
		end

		genv[str][arg] = arg2
	end

	local function fn4()
		if v4(getgenv) ~= "function" then
			return
		end
		getgenv()[str] = nil
	end
end

if v4(getgenv) == "function" and fn2("h") == "yes" then
	v6(function()
		v:GetService("StarterGui"):SetCore("SendNotification", { Title = "LuWare is already running!", Text = "luware.filho.wtf", Button1 = "Ok", Duration = 7 })
	end)

	return
end

if v4(getgenv) == "function" then
	fn3("h", "yes")
end

local tbl2
tbl2 = {}
local tbl3
tbl3 = { MAX_CACHE_SIZE = 50, CACHE_TTL = 30, Theme = {}, Colors = {} }
local tbl4
tbl4 = {}
local tbl5
tbl5 = {}
local tbl6

tbl6 = {
	Player = {},
	Players = { Cache = {}, Names = {} },
	Game = {},
	UI = {},
	Features = {
		AutoFarm = {},
		Combat = {},
		ESP = {},
		Visuals = {},
		Movement = {},
		Webhook = {},
		PostFarm = {},
	},
	game = "Unsupported game, Kill this Guy.",
}

local tbl7
tbl7 = { A = {} }
local tbl8 = {}

tbl6.Get = function(arg, arg2, arg3)
	local v8 = tbl6

	for k_ in gmatch(arg2, "[^%.]+") do
		if v4(v8) ~= "table" then
			return arg3
		end
		v8 = v8[k_]
	end

	if v8 == nil then
		return arg3
	end
	return v8
end

tbl6.Set = function(arg, arg2, arg3)
	local tbl9 = {}

	for k_ in gmatch(arg2, "[^%.]+") do
		insert(tbl9, k_)
	end

	local v8 = tbl6

	for i_ = 1, #tbl9 - 1 do
		local v9 = tbl9[i_]

		if v4(v8[v9]) ~= "table" then
			v8[v9] = {}
		end

		v8 = v8[v9]
	end

	v8[tbl9[#tbl9]] = arg3
	local v9 = tbl8[arg2]

	if v9 then
		for _, v10 in ipairs(v9) do
			task.spawn(v10, arg3)
		end
	end
end

tbl6.Subscribe = function(arg, arg2, arg3)
	local tbl9 = tbl8[arg2]

	if not tbl9 then
		tbl9 = {}
		tbl8[arg2] = tbl9
	end

	insert(tbl9, arg3)

	return function()
		local v8 = find(tbl9, arg3)

		if v8 then
			remove(tbl9, v8)
		end
	end
end

tbl6.Batch = function(L,L)L();end
local tbl9

tbl9 = {
	Legacy = {},
	AutoFarmCoin = {},
	AutoFarmEvent = {},
	ESP = {},
	AutoFarm = {},
	Combat = {},
	Movement = {},
	Visuals = {},
}

do
	local obj = setmetatable({}, { __newindex = function(...) end })

	local tbl10 = {
		Add = function(arg, arg2, arg3, arg4)
			local tbl10 = tbl9[arg2]

			if v4(tbl10) ~= "table" then
				tbl10 = {}
				tbl9[arg2] = tbl10
			end

			local v8 = tbl10[arg3]

			if v8 and v8 ~= arg4 then
				obj.conn = v8
			end

			tbl10[arg3] = arg4
			return arg4
		end,
		Disconnect = function(...) end,
		DisconnectGroup = function(arg, arg2)
			local v8 = tbl9[arg2]
			if v4(v8) ~= "table" then
				return
			end

			for _, v9 in pairs(v8) do
				if v5 and v5(v9) == "RBXScriptConnection" then
					obj.conn = v9
				elseif v4(v9) == "table" and v4(v9.Disconnect) == "function" then
					obj.conn = v9
				end
			end

			clear(v8)
		end,
	}
end

local fn4
local tbl10 = { Ping = 0 }

setmetatable({}, {
	__metatable = "Metatable is Locked",
	__index = tbl10,
	__newindex = function()
		error("Metatable is Locked", 2)
	end,
})

fn4 = function(arg, arg2)
	if not arg then
		return
	end
	local tbl11 = {}

	for k_ in gmatch(arg, "[^.]+") do
		tbl11[#tbl11 + 1] = k_
	end

	local v8 = tbl10

	for i_ = 1, #tbl11 - 1 do
		local v9 = v8[tbl11[i_]]

		if v4(v9) == "table" then
			v8 = v9
		else
			local tbl12 = {}
			v8[tbl11[i_]] = tbl12
			v8 = tbl12
		end
	end

	v8[tbl11[#tbl11]] = arg2
	return arg2
end

local tbl11

tbl11 = {
	Static = {},
	GuiCache = setmetatable({}, { __mode = "v" }),
	InstancePaths = setmetatable({}, { __mode = "k" }),
	ESP = { Cache = {}, GunCache = {}, TrapCache = {}, CoinCache = {} },
	_generic = {},
}

for k_, v8 in pairs({
	Register = function(arg, arg2, arg3, arg4, arg5)
		local obj = tbl11._generic[arg2]

		if v4(obj) ~= "table" then
			obj = setmetatable({}, { __mode = "k" })
			tbl11._generic[arg2] = obj
		end

		obj[arg3] = { object = arg4, meta = arg5, cachedAt = clock(), lastAccess = clock() }
		return arg4
	end,
	Get = function(...) end,
	Release = function(...) end,
	BulkRelease = function(...) end,
	Update = function(arg, arg2, arg3, object)
		local v8 = tbl11._generic[arg2]
		local flag = v4(v8) == "table" and v8[arg3] or nil

		if flag then
			flag.object = object
			flag.cachedAt = clock()
			flag.lastAccess = clock()
		end

		return flag and flag.object or nil
	end,
}) do
	tbl11[k_] = v8
end

local tbl12 = {
	_available = {},
	_active = {},
	Create = function(arg, arg2, arg3, arg4, arg5)
		local v8 = arg._available[arg3]

		if v8 then
			for i_ = 1, #v8 do
				local v9 = v8[i_]
				local info = v9.info

				if info.Time == arg4.Time and info.EasingStyle == arg4.EasingStyle and info.EasingDirection == arg4.EasingDirection and info.RepeatCount == arg4.RepeatCount and info.Reverses == arg4.Reverses and info.DelayTime == arg4.DelayTime then
					remove(v8, i_)

					if #v8 == 0 then
						arg._available[arg3] = nil
					end

					v9.tween:Cancel()

					for k_, v10 in pairs(arg5) do
						arg3[k_] = v10
					end

					return setmetatable({}, {
						__index = function(arg6, arg7)
							if arg7 == "Play" then
								return function(...)
									v9.tween:Play(select(2, ...))
									nil._active[v9.tween] = arg3
								end
							end

							return v9.tween[arg7]
						end,
						__newindex = function(arg6, arg7, arg8)
							v9.tween[arg7] = arg8
						end,
					})
				end
			end
		end

		local tween = arg2:Create(arg3, arg4, arg5)
		arg._active[tween] = arg3

		tween.Completed:Connect(function()
			local v9 = arg._active[tween]

			if v9 then
				arg._active[tween] = nil
				local tbl12 = arg._available[v9]

				if not tbl12 then
					tbl12 = {}
					arg._available[v9] = tbl12
				end

				if #tbl12 < tbl3.MAX_CACHE_SIZE then
					insert(tbl12, { tween = tween, info = arg4 })
				end
			end
		end)

		return tween
	end,
}

local tbl13
tbl13 = {}

local tbl14 = { Create = function(arg, arg2, arg3)
	local tbl14 = {}

	local tbl15 = {
		Name = arg2,
		OnCleanup = function(arg4)
			insert(tbl14, arg4)
		end,
	}

	local flag = false
	local v8 = nil

	if v4(arg3) == "function" then
		flag, v8 = arg3(tbl15)
	end

	for i_ = #tbl14, 1, -1 do
		v6(tbl14[i_])
	end

	if not flag then
		error(("[Env.Scope:%*] %*"):format(arg2, v2(v8)), 0)
	end
end }

local destroy

destroy = v ~= nil and v.Destroy or function()
end

tbl7.doKick = luraph_runtime1("0123456789abcdef0123456789abcdef0123456789abcdef0123456789abcdef", buffer.fromstring("\240\132\198\222α\223\194V\t\tr]\170\156\27\209\200ּ\204C\156Q\151U\nc\244\131\28\156\218\242\176n\241\165Y\187u\205g{~\19^\239\2\19\251\135>\205ȁ^2\153\245xd]\139\215[I/\230\178Nz\1684T\29v1\238*k\240\227\2073=6\171\161t9\191\175Q\205\31\139\29G!\169R\157\132\228\0(B\190\250\28l7r\209<k{}\168\237\229\25\20\167ڼ\249MkV\201ݴR\160\240\162\1297\23N{M\134\166\131|\138[\233q\229\151I\245\2396-\160\166\208qnHO\6\26\231\192\19\176\0037\142\156\239\u{99}\139\154\181*\t\190Ri\208\30S\163fփ\249\23T\254\230\246\186\12o\212IBv\148\249\30\188\234\133\14G\193\194S\172\225L\237\159pO\136r7\144\181\27¬j\192Iu\226|\17\160\254\26@\156Ѓ\153\206[\194T\151\193N\\8\161\23\189.\192Y\22\212g\189:U\2289\14\215,\12\173\19\20P\184\211\r\133z\160\198>\254\235\19\166Q\130\145\210~\158\0009\252}\243B_\0fю\130\247n\241X\157\130\138\11\7\155\193\240\4\162 \245\137\230Q\1654\178x\162b\134\137\224Q\166\11\178P\179Y\187\137\224Q\170~\165T\177\0052P\162\20\179\26\255\137\195Q\176n\178h\179F\191\23\179\3\165\17\177%\177]\163\25\178>\1299\165a\18\191!\177I\178!\1624\178\16\163b\0\162j\148\137\225Q\181\137\253Q\176xȉ\232Q\179hȉ\241Q\166\1\1714\177\28\162|\165=\164]\165s\129\21\179M\134\137\243Q\165\12\178~\129\12\171O\2\179f\176S\178H\161\\\1766\164O\176g\164\18\163G\178_\163 \163\8\162s\191&\179a\177|\171(\164\t\165\28\164/\\\177\20\165M\165m\162O\29\178\1>\27\177p\176[\1788\129/\132\137\194Q\176B|\177b\179,\179:\179Kd\1638\129'\161T)\178&\163r\165e\129@\162)\164t\161v\178/^\171<\129\6\164?\170f\162`\163S\163\137\195Q\165+\162M\164i\228\137\233Qm\177\18\164#\177R\171.\170n\177.\179%\162Y\162D\162d\191(\251\180-\14\143\127מ\189\242\246M\230\221;\210>ІjvO\240\19\27h\182\30\185-\n\165-3\158_q\227\178\22\222-\7\242&e \240n\236-\4\140.\150O-\4\237\134o\230-\16\217\27N\127@$f\245M\6v\147\131\145\227\219-\n\20\140^@w\151\26\182\141$\30\184-\4\203\237\146k-\7\194Υ\252aϑ-\rI\2<?U\216PX\228*\247\27T\2\8\200ZE\204/\14\181\208-\4\219\223\"\195-\7n{I8l\227W-\8\182\158\1971D\150\n1-\0067($K\222z-\6\216>\218F\171\137-\8j\240\192u\158z\153\200-\5\152>\12\173\253\0H\16P\160\14\0\30!\147M̟)\226\249\200;\177\20+\132݈\255(\30*\196\12\133&\255%yj{\148m\238\23-\161\178\227\28U\1827\0\t\250\139d=~I\7y\0213\236\243\6G\16\217P\204t\205\206o\24\1\150|õ\150\151\224i\192\252D\157^\191\232\222\234\132\212P\254\178\2409\28\14T-\174\207\248nz\180\216*I\243\255\246\186K$\253>\7\2211\194\243\172\165\198\31ř\n\1554\141\162R\182\161:z\241\17;\27\248^\240\199t>\127\18\217\238\243\127\173\16\142h\184\238\242\238\11\248O\154\148\r\30v\181\218>\160\172\6d\132\1462\238\159\4\136\14\169%$\194K\237\\\139]\181\t}\217\217\197\23\128=qi\155\5f]X\242\\W![C_%\15\251vc0\251\160\252盢l\244ЊkС\177,\1#z\139\151x\193\169\7=+3\160\29\201\207\24Yɗ\155LI\189\26\0\149\1906\180\145\129\175ؖ]\11\170\224\133Sl\173\165z\251Tk1>1:\251-\174<;ބ\1649M\246t\143p\186\7j|(\30g1Ar\173if\203r\144C\2545\132\208\19YH\196\2\165\245\213\27\191/U\161\1\255\28\254\173ѡ҈\202\225\230\135yi\1801\161\164C\153\237m\231\239#7\179Ê\251\15[\180\127YA/\131\165\237φD\145\u{605}\138\184\145\2R\186\193\29a\253h\23)\224h\179\235D\210y6\233\210.|\148\24\255\3\160\236\191\227\12\241k\6\172\2}&\136\238,\255\146\239W\30\254\205\229\250\173\242\164<+\236\252\152\249\3\183\"\147\22\192\200\193\236\156\198\30x\159^\2\138S\n\171p\148Z=;\n\157T\210\239&\249\238#\189]\166\167\3\241\158|\"B\157\234<[P\180\204-:0\132I\148\2047\165|E\143\16\21\133\30:\17\128\132\214[\\\174\178\254_\193\18\180\147\22\238\129\230\145\20Jz\1387\189\175\235\185'\228\127\26ng}T\134;\150\3t\191?\21\"С\234Xw.5dsCe\131'vg\211j\175\0\187\195\0025w\28n\152\159\212֩z\144\167\1\2263\247\169\234\150\29\138\31\167\245~C(>+\164\242F\204\25Lۍs\1\146\167@\131\tEt/\145\139\191\151}\128+\228n\147\241\2\140!\4\253:\221\210t\19\160\251yޤ=\178\130=DTx\161\149\162ݲ\139\133F\218\203\238\174\27\230n\233\174\22\190I\254YA8\166\174K8ڃp\175\239\255\247\203iX\162\233\188 Diz!\192\250\248\230u\165\242\19=\153\5g5\229\201K\163m~\0001\157#K\5y\5\227\224\226\143#H\198<h\178\172z\158\170\248o)8\231\136_\171\182G\185U_\0140o\136X\14\158<\137!\30\187Zmʖ)\253\197\223\r\172\31.\129؛\247\4=#\214\t\1591\226%|`~\129h\228\0035\141\158\203?t\166\31\21(\239\163|(kW\27y\27\18\252\205\19k\5\240E\211c\230\226T\22\20\186Y렪\170\204zΉ\26\194\17\151\253\240\247\187\212P\243\175\22713\23z\1\130\227\218yg\169\254\rc\253\226ܿg \194\0013\208$\218湞\222\18ߑ\29\183\24\142\162\3\249\209z\22\157`~O\181<\182\179\17E\11D\176\132\173[\155\16\138k\156\213\198\239\1\196a\135\1755\21^\176\249\26\155\161\156R\4\236\170\230ʐ䆌SI\143\235\148f\245w\248ao\250\176\153\7\214t&\30\14A\252v/\142\\\171\29pDh?F\231s\14\127\177\189\129\248\131\2cm\218\2346S\157\225baY\18ތx\146\145]\153e_\0\24j\171|\17\153\19\173,\30\135M`ǫ\16\217\248\251\5\1336J\235\172\206\251\23.\14\192\224\203*\185<tgu\153`\227\0115\172\191\195\19X\187f\t\4\247\218m0s\14\1|\15%\225\232\11U\29\212G\233{\192\195\24\17\12\1594\245\184\155\223\237d\215\206I\144S\137\231\220\239\205\193H\235\135\2534'\11[ \163\159\245l\127\152\209\24{\161\207ķ\242-\2403\210\193<\207>\165\168\203\202ٔ\7V=\128\131[\213\204_O\177x[\18\175$\1512\rP\19桜\175ׁ\8\171#\189\244\231\200\27\224c\23\181,?!\145\216;\133\143\132w\178\237\176\243f\129\252\1432eh\139F\153T\199\255\249@C\187\149\140\31\169s8\27\175m\228W\7\201\16\211Zg\\o@E\200kty\180\167\127٠#2u\236\255oS\152\251\24ID7\164\173p\179\240A\188O\28%(Ka]\20\135m\185\0\3\192WL\223N5\248\219\26)\164\23ۉГz%\28/\188\3\136+\1329tgc\152`\227\1415\172\191\160\19X\187\164\t\4\247\24m0s\204\1|\15\158\229\232\11\234\25\212Gv}\192\195\194\17\12\159\250\245\184\155\248\233d\215\213H\144S,\229\220\239\176\195H\235X\2494'\196] \1634\241l\127\142\212\24{\218\200ķf,\2403\20\192<\207\248\164\168\203\8ؔ\7\148<\128\131q\212\204_\185\177x[ٯ$\151P\rP\19Z\160\156\175v\132\8\171B\184\244\231\214\28\224c\249\180,?\165\145\216;<\143\132w\18\236\176\243ƀ\252\143\170dh\139ޘT\199\247\248@C7\149\140\31Ls8\27\183l\228W\189\201\16ӱg\\o>D\200k\nx\180\167\180ܠ#\176q\236\255\220U\152\251\136ID74\173p\179UD\188O\149!(K\12_\20\135\6\188\0\3\178PLߞ4\248\219,)\164\23ЍГ\228 \28/\200\4\136+\2528tg`\156`\227\2334\172\191\23\17X\187\176\15\4\247sh0s\173\5|\15\175\227\232\11K\31\212G\223x\192\195\240\23\12\159L\244\184\155\152\232d\215\255K\144S\163\228\220\239\16\195H\235\138\2484'\22\\ \163\226\240l\127\142\212\24{\215\207ķ[(\2403e\199<\207ã\168\203.ܔ\7\239;\128\1316\208\204_\26\180x[\21\175$\151\136\8P\19\14\167\156\175\168\133\8\171\156\185\244\231\230\28\224c\146\176,?~\148\216;\170\136\132w\18\236\176\243ƀ\252\143Heh\1398\153T\199%\251@C\166\148\140\31\\s8\27:h\228WF\204\16ӽg\\oR@\200kU\127\180\167-۠#\19t\236\255\175S\152\251\223OD7\153\168p\179\238G\188O\140%(KxY\20\135\228\189\0\3PQL\223G3\248۶,\164\23\184\139Г\200 \28/\228\4\136+\2088tg\151\155`\227\1284\172\191p\19X\187\n\8\4\247\143j0s\216\4|\15W\227\232\11~\24\212G\226|\192\195V\16\12\159z\244\184\155N\233d\2152M\144Sj\225\220\239\196\197H\235\141\2544'\171X \163c\247l\127\148\212\24{\192\200ķ\146-\2403&\192<\207Τ\168\203\210ٔ\7L=\128\131\250\209\204_C\178x[\247\172$\151\204\11P\19H\160\156\175\138\133\8\171\190\185\244\231\16\29\224c\178\176,?\t\146\216;\r\140\132w\167\235\176\243\146\128\252\143\254dh\139\250\152T\199\22\252@C6\145\140\31\254t8\27\192i\228W\178\205\16\211\230a\\o^D\200k\175~\180\167zؠ#5w\236\255\30T\152\251\162ID7\30\173p\179tA\188O\152%(KlY\20\135\240\189\0\3\11VL\223T0\248۲/\164\23\242\141Г&!\28/e\2\136+\11<tg\237\155`\22760\172\191\218\20X\187\243\14\4\247vh0s\201\7|\15\236\229\232\11\175\30\212G\214{\192\195\195\23\12\159\156\245\184\155H\233d\2154M\144S\134\224\220\239B\197H\235v\2494'\234] \163\24\241l\127\238\212\24{\239\201ķT+\2403\138\199<\207,\165\168\2030ؔ\7\172<\128\131\24\208\204_N\180x[\26\168$\151@\rP\19G\161\156\175~\131\8\171\242\191\244\231\181\29\224c\164\183,?\31\147\216;\\\137\132w\224\237\176\243\2\129\252\143neh\139\26\153Tǆ\253@C\185\145\140\31\250s8\27wo\228W\r\205\16\211qg\\oiC\200k\163y\180\167\255۠#(w\236\255\187U\152\251.OD7g\171p\179FA\188O\170%(KbY\20\135\254\189\0\3JQL\223f5\248\219<)\164\23\22\140Г\194 \28/\238\4\136+>9tg\183\157`\227o7\172\191v\19X\187\14\8\4\247\178l0s\136\1|\15\4\228\232\11p\24\212G\236|\192\195X\16\12\159\156\245\184\155\22\233d\215jM\144SC\225\220\239\225\195H\235\157\2554'7\\ \163G\247l\127\240\211\24{:\201ķ\134-\2403\210\193<\207>\165\168\203Tٔ\7\200=\128\131L\209\204_`\181x[G\168$\1512\11P\19'\167\156\175u\132\8\171\246\191\244\231\166\27\224c\12\177,?S\148\216;\28\143\132wV\235\176\243|\129\252\143\16eh\139d\153T\199\248\253@Cl\145\140\31@u8\27\148i\228W\4\205\16Ӓa\\o\190E\200kIx\180\167\8۠#\19w\236\255QT\152\251\185OD7\148\171p\179\27@\188O\180#(K\165_\20\135\129\188\0\3vWL\223\2013\248\219q(\164\23\252\139Г\154'\28/i\4\136+\r?tg%\155`\227\1821\172\191Z\21X\187\180\t\4\247\218m0s\139\0|\15\201\227\232\11\127\31\212GB}\192\195\246\17\12\159\218\245\184\155\14\233d\215\31L\144S\181\230\220\239\171\195H\235>\2494'\130] \163v\241l\127\"\213\24{\227\203ķP*\2403F\199<\207ѧ\168\203(ޔ\7\215;\128\131X\209\204_t\181x[\6\169$\151\220\rP\19=\163\156\175r\130\8\171.\191\244\231z\29\224c\14\177,?\226\149\216;6\137\132wd\237\176\243\\\129\252\143\208eh\139\163\155T\199o\250@C\131\151\140\31\187w8\27[n\228W\4\203\16ӷc\\oYB\200kp\127\180\167\216ݠ#,q\236\255\187W\152\251)ND7\148\171p\1794A\188O\216%(K,Y\20\135\128\189\0\0034QL\223\0245\248\219N)\164\23V\141Г\130!\28/\174\5\136+\1549tg\24\157`\227h1\172\191-\23X\187R\14\4\247\177k0s\146\1|\15\254\229\232\11\254\25\212G\15\127\192\195\24\22\12\159q\243\184\155m\235dיJ\144S\232\231\220\239\192\197H\235\196\2494'X] \163\2\241l\127\192\213\24{R\201ķ\238-\2403\186\193<\207V\165\168\203\25ڔ\7\6:\128\131w\215\204_t\181x[ \169$\151\220\rP\19\22\161\156\175\234\133\8\171\254\185\244\231>\29\224cJ\177,?\166\149\216;z\137\132wX\237\176\243\140\129\252\143\224eh\139݉H\196M\248AZX\189-LRX\2323\187ly~\22\200\18l\16\227\209w\134\t\186\28\148T\5\135\23\163\17\14\252\\]\223R*&\210\203m\229Zw\130Κ#e\29X\232\n\150b2}\146\8\14/+\162\156\200e\t\205\26\249\217z\0047>\171\163V\31\251\162\1657\127}\7\7\235=\213\4ܰ\193\167\142\28\18\150j\199@<,u\0p9q\138^\243\t\224&\150\200\233\n̳\235\192jaU\236\195&\144\182e\240\185\233ɑ v\241\207RK\18\250Z2\134[`nI\229\162\12\151X\189\138\206\244n\250\250\180\30\250\228\214G\224¨Ƕ\237ݺ\25\201&\27ӻ\242\230p(\0161\172\131\175}u\176\152\201t&֚\190 \130H\133Y6\181.\224\136\142\155@Ԟ\143\164t\142\4\177\208*\3\11\244\1870\181\246\251~\128\179\182\233ҳ\253\142\204\22h؝\135\209\233{|;k\226\235\141\29\1750pS_%\172\17>\167X\158i(\7)S\12\144-g;\236\225\251\145\232n\15-\164\178c\28շ7\0\tk\145\2286\254\223\r\233\"\19io\6\209\16H\208[\244MN\229\29\22\151\198w\190\148\146u\226Z`і\u{7BF}}Zb\150@\192J\131[\30\19\15\225\30\155Ex\247\242\178F\21\246w@H\186\2035g;\8M*Bz\172\180\\\28B\148\15\1444\141\155$XA\199\8\188\252\214ƺ,\185\174\15\221\21꣑\169Ư\0\175\231\161cf~\17h司49\227\151@=\183\139\156\217\14\127\189w_\153k\153\161\225\224\131G\144\211J\205t\219\196o\142\129\3Y\249>\r\21\229%\138\190\23Y\6j\184\157\154Q\138\4\165b\161\224\231\238\17\252w\154\18188\\\180\244\30\151\247\250#u\192\192\129Qܓ\219\235\0147\15\247\2414\190:\1303:\130\224\224x\188\17*\5\7q\255M\127\209\25\192+t[b\6Q\199\232.\254\131\171\189ç.Kc\207\251-S\153\251EB\192[\250\151O\143\175v\143\127O\6\5z\186{:\183\31\183*!\1700Mߍ\181\254\244\251=\214n[\225\138\239\135PdV\163|\224H\143S\r\21\14\29\\\173\\c\234\253\166D\18\253}\\J\141\246\20K\247?\134rvC\147\152~>u\163%\163\26\171\186\17~\143\223)\154\223\244\255\137\28\176\139,\155R\175\231\194\249\130\205@\244\191~w\22'\218f\173\200\247dg\186\211\17v\248\206϶K;\2556(\235\28\214\224\155\148\2558\255\1903\160\14\180\182\2\254\242v*\158Qs}\210P\237\215gj2-\251\218\246\t\222E\236<뺶\169N\165,\196\251an\0\254\145\184\245\140\2\127\135Ჿ҈\253\1419aj\156ʳU\197V\249w\196\224\172\196\30Iq'+\25l\231Vd\204\21\2147`Yj\155\\\243k-|\181\166\188\138\162#HK\225\255$P\30\243\253^D7\173\179p\u{5ED}_\188PN\")H\139_\127\157\22\128\134J\138Ufތ3\136\216\222\8\164\22'\149\208\22\155\163-\20Z9\r\25\214_\241Pv\187_\249\2\20\151\196\239\18Y\185\188\6\5s\249\2329\242J\7S)>\227\135aJ\31\140EP&F\149?\17\138\201a\158\224\189\240\239\0\179\130H\147\214\217c\212i\244G\11\186\193\23142\tC 턎\235{܂d\12\248\178\149\178G*\139P\20C\26J\148'\190\203\29ݢ\6\1489\128\7WS\198\218#4dz\\\183$\185\167\8\"QL\210\232\198J\252\137\189\237\169\187\208\244V\230\231\250\1386? ף:\185\140\134\28\28l\234\221\250\219z\u{7BC}\18\19\139\235\157V\139V\200AAd\210\11\28\207\247\11\157`\26\230(7\204\17\208Ik\24oYA\193g.X\180\1670\152%`\196Gh\136\1689\29\240{NE5\173\179pȭ_\188\202s\1669J\201]\145\224\147\206\11\14\217z\201ִ3}\210߲\219~-\6O\250\152\7\17@-\24\139V\129\204܄~\135G\191\138\5\5C\247\246\26\158\173\163\0179՞-\15\193\253\7\1280\22\145\234\180\215\29  \227 -\11\185\3\28ϽH\23\155\180\161\197-\n\182\0007#͚H\12W\127-\7\190i\149\192\220®-\t\155\133\238-\227\185\n\141!-\4\228\26R[-\8\130|\162\132F\176Ny!\193\201\192\253\182`\8\29\30;-\8\22\184r\u{604}\186\189\203Vs\211\2ώ\1-\0\30\235\19ɝ\223mq-\0071s\2\142\233\201W-\7\162\12\205\25YNP-\n\129\166\11\250\225['\155U\127-\15\t\133o`\242\180*\217\233\2475\133'\11\173-\5\138\204\253ե-\6\156\30\186\175\15\239-\14\133\203\251hY\167\195\11o\217\197ͻB-\rf\173u\191\222\228\232\180\227e\192\150\198-\n`.\2\197\197\5p4\241j-\r)?\227\16\226ĺ\148\2302\229\185+-\14\11\6\248 \173\2\214\16o[L\190C\206-\21\t\18\136\152\212\nu\130\7 \"ܫj\29Bj\"])\2\134\239/AI\18\23\246\229-\15\254\190Q\20BI9F(\29\204\237,f0-\nd\7A\175\138\140\231\129\8o-\14P\221\236\226\186}\17\247\0250\232\23\243\197-\8eB\146\246\22R\192\232-\4\201\22\141\1-\12ֳ=\176\20\186\153\11\249\237b5\2\nV-\2323~\209D\231\247f-\tC.\144Sx|\128\31\172-\22$x\179\216Uwc\n\224\133l\137\187c\135wW\27\5m\161l-\3~I\29-\t\15_\149\160\171w\171%\143-\r\244\\\29<$@\248mO\241\29\200*-\7.;\21\243\14\181\n\134\26ls\129&\159<\18-\14\26*ޥD?Ns\25\\5\19\200\196-\5\17J\192p\\-\11j3z\243B\5P\189\157\155\240-\2L\153-\6\132\153DB\162\246-\4\1697\159,-\0120\24p\3\142\205\200Me\137\246$-\8\252\233\0m'\242j\236P\132X\167\224\164\192\17/\22\224\157\202$ߓ8ZY\162V\210:=\173\131\234>w\148\22\"+جF\31\\\162(S \173\203\199$\2177\251h\249V\239\236^:#\176oޗ\180\153\192K\248\129c\191|\213\207\243\192\249\235g\196\205\215\27\8>v\15\140\245\218CP$\2527T\213\226\235\152i\6\223\28=\234\19\224\133\138\135\228q\246\187(\185\22\175\172\r\250\227p!\158Wt?\135\11\184\195#\127<\26\138\179\128V\174'\132l\144\219ȍ2\207L\249\158\3\16\21\186\247\20\193\166\171X)Ɵ\220\253\170Ӡ\145NG\164\171\182{\2327\210ol\174\186\1630\219^\0234\28@\203xI\230?\252\29Js@1n\231D\5R\155\136\209\243\143\12mZ\195\208\1~\183\212Ubk\24\161\131_\156\245o\147`\218\14\7d\233r;\1689\150/,3\127c\240]h\142ĳ2\187\0089h\2022\239\254\4\129\183\144\133\216\213\243\30\149\8ߺ\229\227K\158\186\168z\4\253@nf\177\230.v5\20B&t+\156\171}P\2\1995\249\27\219\192\29Kr\1360\178ǋ\147\186`\228\201f\191a\165\128\233\192\136\142K\226\253\253\11^\3j\21\254l\2162X\242\141\6BߋڎY8\232\7&\131{\164\186\199\238\141+\154\209`\244e\198\199d{\231V,\156V\245<\174\5\172\137&\127<]\1382\128S\183&\133E\147\219\227X\2\164V\173\154gc\192\204\200\20\193\222\237X\2\129\30\173\171\170\211V\157\246V\207H\214ʌز\200\t\150\155\223K\170\"@PO&\175(6\156\16\2195\6>)[\4\142*@a\186\168\156ь/fV\237\220\1d\182\213T`H\24͆}\158\151H\147\225\nG=H\174y#\139w\u{5EE}]\251\251\t\180\161\159\209u\162\131\219q\t\179\192\240\180G\127V\189Y\208s\140e,?[7Y\234\tr\235\140\200W \250oTG\241\223\n!4V\rW\"1\204\198 %\179\135r\240w\238\172n\24\"\176Cܳ\146\175\194'\170\2361\165k\177K\165\192\143\229PΟҚ'l\247\"\150\237\222\199\31c-\6\29\221|\171\143\1\19ϐ\149\14\219-\8\0287\180\128W5\248\149-(ؿ\1886\245J\21'h\n\131yA\239,\232UKuJ?e\233F\17\26\187\128\138\249\137\6Ynə\12j\191\221-\4\200j\230E\19\191\151\172w\153-\6g\186\228\26\132\160-\17{hm\24\235\181J\154\180~\132fD\12\14`\187\134\144\177\180\193\162-\254\218o\132Yژ\137v\196K~x\176\251\25G\21:m\152\142\16\164\174L\n\\\150\4\1544\138\179\21\\F\2468\177\228\224\230\135$\168\191\17\200 ︹\139\254\155\17\177\230\167t^M!rꆙ;8܈h \208\207ӿx\24\2485H\170S\165\u{E86B}\201\15ِ(\182\4\172\175\14\249\224p\27\159LV]\169\n\162\1506[\29~\185\131\177\127\161(\160O\161\250\232\2232\226w\136\134\17\1s\171\230\27\158\185\179A?\248\181\238\240\171ӝ\245,9\235\158\217\19\1296\160\11\t\175\217\195R\182\8]wM:\1608\"\129Y\153@\26<\26Z?LM\206\4\243\194Ӽ\171C'\16\231\159K4\147\155\31(UW\163\204a\211\247 \173/\27D=+\2398\1\231s\220\21c\1990<\186\235T\140\190\191H{pC\236\199\243\151@\11O\187d\159K\143Xc\7\19\252u\131gP\230ڋt\26\222_hې\227\12\4\0227`6j[\1325l/x\208\"\179\28\145\166\7p\211\248+\148\173\251\255\136q\183\131,\1293׀͏\251\164[\139Ϙ'GS<3ç\144\127\31˴\6\30\159\168\235\210#L/Tw\160)\175\155\196T\174o\184\151b\243\\_\228G\176f:k\212a>?\200\249\240\195l\206v\23\192r\202;\228\215\204\15؈\131\147|\22\6\231\208\241X\11\244\201[\223\232\202\19c\140w\150\183\224.\232\219\4\17\255\184\251/\1631\129\153:\23\219\201…_\230\"\137\11*\177\169\237\230\230\7\176\4\2278\192\12g\128\146Zܞ\251F\25\145\175\156J\181\224\187-\27\17{\150\234\27\231\205p\2232.LD$\234tw\140u\216~\231\215)H\161\229\21\227\249\254\4\142\243\22\152\167\5\17A\18Y\215\15\133'\2257}`C\189B\193 \23\142\157\211\8@\160&\12\27\255\155{=aG\23m\31\17\207\197\14b6\177\4\241_\133\227E0*\237w\184\130\163\167\215]\239\209\19\161c\134п\217\240\136\1\161\231\183}om\25e灷-?\145\187r\29\179)\176\245\162Y\149Wl\161Z\171\153\198L\183j<\190ҽ'-\nL>B\153\151\136z\1662\208-\15\151\252t̠\192\8\27\17\127+\132\230\210V-\6\169Qaw\139\24-\nx\152\160\147y\167\1\145G\148-\5f0\250j\236-\8_\138\26\186\131$v/-\11\216\246e)\139`a}\136\28\171-\11\21\162?\150-\t\159ip\248\168\30\184-\6F\205qM\2284\134pm\245\154eR\203\7-\7\128\223S|i\r\253\189\6\164\5\140\172\215A\188\255\223\236-\r\155\2272\243\203\15\208\0158`B7\245\134\148\193o\224\193Q\150\240\12\147\245գ\160=\190\169\19j-\3#Q0-\12\189\201\232\162Ɗ\147ZS\162\229\176-\n\203\27\233¾\133\234%\253\168-\3.\229\8-\r-\174\244\180\200>1\22\227,\174\0\199-\15\155\1352{4T\131\177\132b\1422\140W\133\3_ܽ\181\134\148\2476\225\168;Z\t-\7Me˿\1682\226-\4\253\19k\177-\8\17S\183\243\7\155\170\162-\0065\198\204,pf-\rJߩ\171\17\231K\29\22$@\194k\134\226)\136\153\177\208\209\237-\14\251l\208xN٭\1395\236\\\19'!\2\4\208\230\201=\3ܽ\n--\21h\2326\255<DfT\"J\232J\14Q\179\137\189\253\137\24y-\t;\155\230\212P{\143\2475V\137\175\220\1\250\6-\12\7YBQ\167M\236?\19\161\164\246-\n\167\199\14\0\12W\26\138\231\216\3H\185\1500\30\191-\nD!\172\248\220@^\131\247$-\6\204F\5T\159\150\3\26#\208^\251\171-\n\226ř\175\225(\240\191;\173P\139\18u\153\165\135b\167q5\0319\221&\188Ux\236\232\185F\0\228zZS\160\2226p$\5R$P~\182\191\\\18B\148\16\1294\128\1485BA\223\25\166\239\204ͺ\17\154\1662\192\15ļ\155\144ܾ\n\148ǆ@\\v\0bݚ\170,&\236\175Y9\129\176\184\246\4Q\179Ok\156I\157\179\225\237\189S\154\235E\237j\232\235r\174\183\15u\202\20\22\26\244f\233\254V\16J0\219\222\240%\128&\186q\184\231ď\20︮n!\228O\144\243\224\206岯\0252\225+\226^٦\157sN\173\229Ed\234\127\238WI\244N\139\196\202R\227%4@\202}\190\231\203\223\233IW_\30v\16R\242O\130\19\226ܝ\27}J4\193\245_C\175\162b/R\30\2405\134\128\6\255\3.n\243\2Q'?\183\27\166')\179\142m\130\226i\150\139\1L\127\14^\240\177̾HI{\158@\232Q\162~\12\19>B?8l~\245ȄB1\238QZN\170ز5\171!Q\4h\30\253\202\21n*\246\156\221K\221\24\127\0187\165d*\251\135\1376<\12\241\146ɋ\178\243\252\242E\252\147\150q\210(\r,C\251\162\146\128J[\188\242:W\"\241\235\226=V\178L\127\190o\167\150\218Ӛq\147/\30\171\12\218\217x\t\147\5T\181'\1\0\169{\205\252Z\nI(\246\198\245\4kP\2410\u{AEF6C}L\1869\216^te4\234\130a\224\194\222-\\\1詈\242\166\213\228'2ѐt\12\157\12/\31\25\184\242\214E\148\tbA@\244\188\r<\212J\137h\24\0065Dݐ1pv\238\253\236\174\250y\24봥t\141ǡ H\30m\156\201*\233\200\217\228\21$\253w\17ЁK\221L\185_Y\248r\22\133\212(\162\129\128\217\252M|Z\138ɨ6Fu\132\244\208q\176\242.=,\146:\185X\217\244\229\180\238\2\225`\1^\173\220\243h)\0085#Ud\n\178Q\16\26\142\29\140\224\152\1538\242V\197\20\200\226\193\192q<\141\188\149\207\t\2329\131\181\196\29\23\177\240\247k}lS\127\249\152\2553%\244^B!\160\248\158\237\28ߨiH~f\149\164\142\242\145P*\204]\204\251\223\217x\23\147\5T\26\"\1\0\139~\205\252\154\8I(\4\198\245\4ZR\24104\172\189\172ۿ9\216}se4Y\135a\224q\219-\\\23煮S\163\213\228\1577ѐa\11\157\12\182\27\25\184U\214E\148\243`A@\0\191\r<2J\137h\243\0045D\191\1511p\129\235\253\236\17\255y\24d\183\165t\162¡ \192\28m\156\166+\233ȯ\230\21$\182p\17ПK\221LM_Y\248\161\19\133\212ͧ\129\128\229\251M|A\143ɨ\209Cu\132*\211q\176\166.=,\0168\185X\234\247崌\2\225`\157\\\173ܡo)\8\199#Ud.\179Q\16\151\142\29\140\244\152\1538\195S\197\0209\231\193\192%;\141\188\139\207\t\232'\131\181\196\t\23\177\2405k}l\145\127\249\152=3%\244\19G!\160 \159\237\28\147\170iHXd\149\164w\247\145P!\203]\204\199\223\217x\3\147\5T #\1\0\24~\205\252\154\8I(Q\195\245\0048S\2410\28\174\189\172\143\1849\216Ase4e\135a\224y\219-\\\29煮M\163\213\228\1697ѐU\11\157\0121\31\25\184a\211E\148\133gA@\153\187\r<=O\137h\167\0035D\131\1511p\129\235\253\236\148\248y\24 \183\165t\217\192\161 \185\27m\156Y/\233ȵ\227\21$\209w\17ЭK\221LG_Y\248\"\20\133\212u\163\129\128\164\252M|\159\143ɨ>Du\132}\211q\176\164,=,O?\185X\227\243\229\180\199\7\225`\219[\173ܵo)\8\217#Ud\162\163I\21]\143\28\158\187\148\153:\245}d\0256\203\201\192\181\132\166\29\30W \132\191\132\15\239:\31,ٴn\127\214(\219\244\5\134S%\246\19\"\185딟Q4ڂ\241\2\156g)\140R\217\t$=\225\252\139\255\243\216x\142\245!Q\240'\23\0\207~\171\252\209,U(\226\196\247 \219'\2412劽\127\0\1478\217ꌯ5\182\134a\229\214\219(]\179묓ڰ\213ܹ\19\164\207F$\28\n\"y;\184\170\230D\148+`e@>\190\15>\183J\177h\3m\180\3D\200j*\166\180\161\166ī.N\174\152$J@\136 7WQ\29\236\146C\148\163s\137eP\26.F\157E\22\141\22\159=4\157ca\243\161\234\230\251\239\r\151\"\3\167\227\185\209\n9\18\234>\182n\217~2-7\2052\181Ot\230\242\192vp\136\n<\223\197\211$i<\3B([\229\2203\"}r\15>\rO\189\164\185&\u{5EC}+\241\213\245\245\130P\187\137\146\170=Ä\170\166\238\166:0\244&\29\252\24#]\192\188\153iC\169\135\25\14!\151ߛk\"+|z\202\231\133핝\216\rȀ\1\1333\144\1528\217\213X\0\144W}k\153\5\163\148?x3)\197\198\217\4YMs\26ɋ\191\130\193\145;\197\237\253c\22-\12\226\181u\185\217m\239_\200\231@\176-\8\247mjި\1822\245\3\235W\30\27\30\r"), {
	[5] = 90,
	[11] = 216,
	[12] = 12,
	[2] = 158,
	[10] = 163,
	[9] = 30,
	[3] = 147,
	[7] = 169,
	[6] = 179,
	[8] = 252,
	[4] = 93,
	[13] = 8,
	172,
}, 317)

tbl4.CoreGui = v:GetService("CoreGui")
tbl4.Players = v:GetService("Players")
tbl4.HttpService = v:GetService("HttpService")
tbl4.Workspace = v:GetService("Workspace")
tbl4.RunService = v:GetService("RunService")
tbl4.CollectionService = v:GetService("CollectionService")
tbl4.UserInputService = v:GetService("UserInputService")
tbl4.TweenService = v:GetService("TweenService")
tbl4.Lighting = v:GetService("Lighting")
tbl4.SoundService = v:GetService("SoundService")
tbl4.Debris = v:GetService("Debris")
tbl4.ReplicatedStorage = v:GetService("ReplicatedStorage")
tbl4.TextChatService = v:GetService("TextChatService")
tbl4.ContextActionService = v:GetService("ContextActionService")
tbl4.VirtualUser = v:GetService("VirtualUser")
tbl4.GuiService = v:GetService("GuiService")
tbl4.MarketplaceService = v:GetService("MarketplaceService")
tbl4.TeleportService = v:GetService("TeleportService")

tbl7.BuildPath = function(arg, arg2)
	local tbl15 = {}

	while arg and arg ~= arg2 do
		insert(tbl15, 1, arg.Name)
		arg = arg.Parent
	end

	return table.concat(tbl15, ".")
end

tbl7.ConnectPathCache = function()
	task.spawn(function()
		task.wait()

		for _, v8 in ipairs(getDescendants(tbl4.CoreGui)) do
			local v9 = tbl7.BuildPath(v8, tbl4.CoreGui)
			tbl11.GuiCache[v9] = v8
			tbl11.InstancePaths[v8] = v9
		end
	end)

	tbl4.CoreGui.DescendantAdded:Connect(function(descendant)
		local v8 = tbl7.BuildPath(descendant, tbl4.CoreGui)
		tbl11.GuiCache[v8] = descendant
		tbl11.InstancePaths[descendant] = v8
	end)

	tbl4.CoreGui.DescendantRemoving:Connect(function(descendant)
		local v8 = tbl11.InstancePaths[descendant]

		if v8 then
			tbl11.GuiCache[v8] = nil
			tbl11.InstancePaths[descendant] = nil
		end
	end)
end

tbl7.ConnectPathCache()

tbl7.buildStaticCache = function()
	tbl11.Static = {
		RS = {
			Remotes = nil,
			Gameplay = nil,
			Extras = nil,
			TrapSystem = nil,
			GetPlayerData = nil,
			ClientServices = nil,
			WeaponService = nil,
		},
		WS = { RegularLobby = nil, Lobby = nil, Spawns = nil, RoundTimerPart = nil, DeathFXPuppets = nil },
	}

	local replicatedStorage = tbl4.ReplicatedStorage
	local workspace_ = tbl4.Workspace
	tbl11.Static.RS.Remotes = replicatedStorage:FindFirstChild("Remotes")
	tbl11.Static.RS.TrapSystem = replicatedStorage:FindFirstChild("TrapSystem")
	tbl11.Static.RS.GetPlayerData = replicatedStorage:FindFirstChild("GetPlayerData", true)
	tbl11.Static.RS.ClientServices = replicatedStorage:FindFirstChild("ClientServices")

	if tbl11.Static.RS.Remotes then
		tbl11.Static.RS.Gameplay = tbl11.Static.RS.Remotes:FindFirstChild("Gameplay")
		tbl11.Static.RS.Extras = tbl11.Static.RS.Remotes:FindFirstChild("Extras")
	end

	if tbl11.Static.RS.ClientServices then
		tbl11.Static.RS.WeaponService = tbl11.Static.RS.ClientServices:FindFirstChild("WeaponService")
	end

	tbl11.Static.WS.RegularLobby = workspace_:FindFirstChild("RegularLobby")
	tbl11.Static.WS.Lobby = workspace_:FindFirstChild("Lobby")
	tbl11.Static.WS.RoundTimerPart = workspace_:FindFirstChild("RoundTimerPart")
	tbl11.Static.WS.DeathFXPuppets = workspace_:FindFirstChild("DeathFXPuppets")

	if tbl11.Static.WS.RegularLobby then
		tbl11.Static.WS.Spawns = tbl11.Static.WS.RegularLobby:FindFirstChild("Spawns")
	elseif tbl11.Static.WS.Lobby then
		tbl11.Static.WS.Spawns = tbl11.Static.WS.Lobby:FindFirstChild("Spawns")
	end
end

tbl7.buildStaticCache()

tbl7._obfName = function()
	local v8 = random
	local tbl15 = {}

	for i_ = 1, random(5, 8) do
		local v9 = v8(1, 3)

		if v9 == 1 then
			tbl15[i_] = utf8.char(v8(9472, 9599))
		elseif v9 == 2 then
			tbl15[i_] = utf8.char(v8(9632, 9727))
		else
			tbl15[i_] = utf8.char(v8(9984, 10175))
		end
	end

	tbl15[#tbl15 + 1] = ("%x"):format(v8(4096, 1048575))
	return table.concat(tbl15)
end

tbl5.uiN = {
	key = tbl7._obfName(),
	root = tbl7._obfName(),
	pill = tbl7._obfName(),
	tabContent = tbl7._obfName(),
	tabName = tbl7._obfName(),
	content = tbl7._obfName(),
	search = tbl7._obfName(),
	notify = tbl7._obfName(),
	blur = tbl7._obfName(),
	floating = tbl7._obfName(),
	scroll = tbl7._obfName(),
}

tbl13.keyValid = false
tbl13.keyValue = nil
tbl13.keyNotifies = {}

tbl7.queueKeyNotify = function(arg, arg2, time2)
	if tbl6 and tbl6.UI.lib and tbl6.UI.lib.Notify then
		local lib = tbl6.UI.lib
		local notify = lib.Notify
		local tbl15 = { Title = arg, Description = arg2 }
		time2 = time2 or 5
		tbl15.Time = time2
		notify(lib, tbl15)
	else
		tbl13.keyNotifies[#tbl13.keyNotifies + 1] = { Title = arg, Description = arg2, Time = time2 or 5 }
	end
end

tbl7.flushKeyNotifies = function()
	if tbl6 and tbl6.UI.lib and tbl6.UI.lib.Notify then
		for i_ = 1, #tbl13.keyNotifies do
			local v8 = tbl13.keyNotifies[i_]
			tbl6.UI.lib:Notify({ Title = v8.Title, Description = v8.Description, Time = v8.Time })
		end
	end

	clear(tbl13.keyNotifies)
end

do
	local n = 4294967296
	local n2 = n - 1

	local function fn5(arg, arg2)
		local n3 = 0
		local n4 = 1

		while arg ~= 0 or arg2 ~= 0 do
			n3 += (arg % 2 + arg2 % 2) % 2 * n4
			arg = floor(arg / 2)
			arg2 = floor(arg2 / 2)
			n4 *= 2
		end

		return n3 % n
	end

	local fn6 = nil

	fn6 = function(arg, arg2, arg3, ...)
		if arg2 then
			local v8 = fn5(arg % n, arg2 % n)
			local v9

			if arg3 then
				v9 = fn6(v8, arg3, ...)
			else
				v9 = v8
			end

			return v9
		end

		if arg then
			return arg % n
		end
		return 0
	end

	local fn7 = nil

	fn7 = function(arg, arg2, arg3, ...)
		if arg2 then
			local n3 = arg % n
			local n4 = arg2 % n
			local n5 = (n3 + n4 - fn5(n3, n4)) / 2
			local v8

			if arg3 then
				v8 = fn7(n5, arg3, ...)
			else
				v8 = n5
			end

			return v8
		end

		if arg then
			return arg % n
		end
		return n2
	end

	local function fn8(arg)
		return n2 - arg
	end

	local function fn9(arg, arg2)
		if arg2 < 0 then
			return lshift(arg, -arg2)
		end
		return floor(arg % 4294967296 / 2 ^ arg2)
	end

	local function fn10(arg, arg2)
		if arg2 > 31 or arg2 < -31 then
			return 0
		end
		return fn9(arg % n, arg2)
	end

	local function fn11(arg, arg2)
		if arg2 < 0 then
			return fn10(arg, -arg2)
		end
		return arg * 2 ^ arg2 % 4294967296
	end

	local function fn12(arg, arg2)
		local n3 = arg % n
		local n4 = arg2 % 32
		local v8 = fn7(n3, 2 ^ n4 - 1)
		return fn10(n3, n4) + fn11(v8, 32 - n4)
	end

	local tbl15 = {
		1116352408,
		1899447441,
		3049323471,
		3921009573,
		961987163,
		1508970993,
		2453635748,
		2870763221,
		3624381080,
		310598401,
		607225278,
		1426881987,
		1925078388,
		2162078206,
		2614888103,
		3248222580,
		3835390401,
		4022224774,
		264347078,
		604807628,
		770255983,
		1249150122,
		1555081692,
		1996064986,
		2554220882,
		2821834349,
		2952996808,
		3210313671,
		3336571891,
		3584528711,
		113926993,
		338241895,
		666307205,
		773529912,
		1294757372,
		1396182291,
		1695183700,
		1986661051,
		2177026350,
		2456956037,
		2730485921,
		2820302411,
		3259730800,
		3345764771,
		3516065817,
		3600352804,
		4094571909,
		275423344,
		430227734,
		506948616,
		659060556,
		883997877,
		958139571,
		1322822218,
		1537002063,
		1747873779,
		1955562222,
		2024104815,
		2227730452,
		2361852424,
		2428436474,
		2756734187,
		3204031479,
		3329325298,
	}

	local function fn13(arg)
		return gsub(arg, ".", function(arg2)
			return format("%02x", byte(arg2))
		end)
	end

	local function fn14(arg, arg2)
		local str = ""

		for i_ = 1, arg2 do
			local n3 = arg % 256
			str = char(n3) .. str
			arg = (arg - n3) / 256
		end

		return str
	end

	local function fn15(arg, arg2)
		local n3 = 0

		for i_ = arg2, arg2 + 3 do
			n3 = n3 * 256 + byte(arg, i_)
		end

		return n3
	end

	local function fn16(arg, arg2)
		local v8 = fn14(8 * arg2, 8)
		local str = arg .. "\128" .. string.rep("\0", 64 - (arg2 + 9) % 64) .. v8
		assert(#str % 64 == 0)
		return str
	end

	local function fn17(arg)
		arg[1] = 1779033703
		arg[2] = 3144134277
		arg[3] = 1013904242
		arg[4] = 2773480762
		arg[5] = 1359893119
		arg[6] = 2600822924
		arg[7] = 528734635
		arg[8] = 1541459225
		return arg
	end

	local function fn18(arg, arg2, arg3)
		local tbl16 = {}

		for i_ = 1, 16 do
			tbl16[i_] = fn15(arg, arg2 + (i_ - 1) * 4)
		end

		for i_ = 17, 64 do
			local v8 = tbl16[i_ - 15]
			local v9 = fn6(fn12(v8, 7), fn12(v8, 18), fn10(v8, 3))
			local v10 = tbl16[i_ - 2]
			tbl16[i_] = (tbl16[i_ - 16] + v9 + tbl16[i_ - 7] + fn6(fn12(v10, 17), fn12(v10, 19), fn10(v10, 10))) % n
		end

		local n3 = arg3[1]
		local v8 = arg3[2]
		local v9 = arg3[3]
		local v10 = arg3[4]
		local v11 = arg3[5]
		local v12 = arg3[6]
		local v13 = arg3[7]
		local v14 = arg3[8]

		for i_ = 1, 64 do
			local v15 = fn6
			local n4 = (fn6(fn12(n3, 2), fn12(n3, 13), fn12(n3, 22)) + v15(fn7(n3, v8), fn7(n3, v9), fn7(v8, v9))) % n
			local v16 = fn6
			local v17 = fn7
			local n5 = (v14 + fn6(fn12(v11, 6), fn12(v11, 11), fn12(v11, 25)) + v16(fn7(v11, v12), v17(fn8(v11), v13)) + tbl15[i_] + tbl16[i_]) % n
			local n6 = (v10 + n5) % n
			v14 = v13
			v10 = v9
			v13 = v12
			v9 = v8
			v12 = v11
			v8 = n3
			v11 = n6
			n3 = (n5 + n4) % n
		end

		arg3[1] = (arg3[1] + n3) % n
		arg3[2] = (arg3[2] + v8) % n
		arg3[3] = (arg3[3] + v9) % n
		arg3[4] = (arg3[4] + v10) % n
		arg3[5] = (arg3[5] + v11) % n
		arg3[6] = (arg3[6] + v12) % n
		arg3[7] = (arg3[7] + v13) % n
		arg3[8] = (arg3[8] + v14) % n
	end

	local function fn19(arg)
		local v8 = fn16(arg, #arg)
		local v9 = fn17({})

		for i_ = 1, #v8, 64 do
			fn18(v8, i_, v9)
		end

		return fn13(fn14(v9[1], 4) .. fn14(v9[2], 4) .. fn14(v9[3], 4) .. fn14(v9[4], 4) .. fn14(v9[5], 4) .. fn14(v9[6], 4) .. fn14(v9[7], 4) .. fn14(v9[8], 4))
	end

	local fn20 = nil

	local tbl16 = {
		["\\"] = "\\",
		["\""] = "\"",
		["\8"] = "b",
		["\12"] = "f",
		["\n"] = "n",
		["\r"] = "r",
		["\t"] = "t",
	}

	local tbl17 = { ["/"] = "/" }

	for k_, v8 in pairs(tbl16) do
		tbl17[v8] = k_
	end

	local function fn21(arg)
		return "\\" .. (tbl16[arg] or format("u%04x", arg:byte()))
	end

	local tbl18 = {
		["nil"] = function()
			return "null"
		end,
		table = function(arg, arg2)
			local tbl18 = {}
			arg2 = arg2 or {}

			if arg2[arg] then
				error("circular reference")
			end

			arg2[arg] = true

			if rawget(arg, 1) ~= nil or next(arg) == nil then
				local n3 = 0

				for k_ in pairs(arg) do
					if v4(k_) ~= "number" then
						error("invalid table: mixed or invalid key types")
					end

					n3 += 1
				end

				if n3 ~= #arg then
					error("invalid table: sparse array")
				end

				for _, v8 in ipairs(arg) do
					insert(tbl18, fn20(v8, arg2))
				end

				arg2[arg] = nil
				return "[" .. table.concat(tbl18, ",") .. "]"
			end

			for k_, v8 in pairs(arg) do
				if v4(k_) ~= "string" then
					error("invalid table: mixed or invalid key types")
				end

				insert(tbl18, fn20(k_, arg2) .. ":" .. fn20(v8, arg2))
			end

			arg2[arg] = nil
			return "{" .. table.concat(tbl18, ",") .. "}"
		end,
		string = function(arg)
			return "\"" .. arg:gsub("[%z\1-\31\\\"]", fn21) .. "\""
		end,
		number = function(arg)
			if arg ~= arg or arg <= -math.huge or arg >= math.huge then
				error("unexpected number value '" .. v2(arg) .. "'")
			end

			return format("%.14g", arg)
		end,
		boolean = v2,
	}

	fn20 = function(arg, arg2)
		local v8 = v4(arg)
		local v9 = tbl18[v8]
		if v9 then
			return v9(arg, arg2)
		end
		error("unexpected _type '" .. v8 .. "'")
	end

	local function fn22(arg)
		return fn20(arg)
	end

	local fn23 = nil

	local function fn24(...)
		local v8 = table.pack(...)
		local tbl19 = {}

		for i_ = 1, select("#", ...) do
			tbl19[select(i_, table.unpack(v8, 1, v8.n))] = true
		end

		return tbl19
	end

	local v8 = fn24(" ", "\t", "\r", "\n")
	local v9 = fn24(" ", "\t", "\r", "\n", "]", "}", ",")
	local v10 = fn24("\\", "/", "\"", "b", "f", "n", "r", "t", "u")
	local v11 = fn24("true", "false", "null")
	local tbl19 = { ["true"] = true, ["false"] = false, null = nil }

	local function fn25(arg, arg2, arg3, arg4)
		for i_ = arg2, #arg do
			if arg3[arg:sub(i_, i_)] ~= arg4 then
				return i_
			end
		end

		return #arg + 1
	end

	local function fn26(arg, arg2, arg3)
		local n3 = 1
		local n4 = 1

		for i_ = 1, arg2 - 1 do
			n3 += 1

			if arg:sub(i_, i_) == "\n" then
				n4 += 1
				n3 = 1
			end
		end

		error(format("%s at line %d col %d", arg3, n4, n3))
	end

	local function fn27(arg)
		local v12 = floor
		if arg <= 127 then
			return char(arg)
		end

		if arg <= 2047 then
			return char(v12(arg / 64) + 192, arg % 64 + 128)
		end

		if arg <= 65535 then
			return char(v12(arg / 4096) + 224, v12(arg % 4096 / 64) + 128, arg % 64 + 128)
		end

		if arg <= 1114111 then
			return char(v12(arg / 262144) + 240, v12(arg % 262144 / 4096) + 128, v12(arg % 4096 / 64) + 128, arg % 64 + 128)
		end
		error(format("invalid unicode codepoint '%x'", arg))
	end

	local function fn28(arg)
		local num = tonumber(arg:sub(1, 4), 16)
		local num2 = tonumber(arg:sub(7, 10), 16)
		if num2 then
			return fn27((num - 55296) * 1024 + num2 - 56320 + 65536)
		end
		return fn27(num)
	end

	local function fn29(arg, arg2)
		local n3 = arg2 + 1
		local str = ""
		local n4 = n3

		while n3 <= #arg do
			local v12 = arg:byte(n3)

			if v12 < 32 then
				fn26(arg, n3, "control character in string")
			elseif v12 == 92 then
				local str2 = str .. arg:sub(n4, n3 - 1)
				n3 += 1
				local str3 = arg:sub(n3, n3)

				if str3 == "u" then
					local match = arg:match("^[dD][89aAbB]%x%x\\u%x%x%x%x", n3 + 1) or arg:match("^%x%x%x%x", n3 + 1) or fn26(arg, n3 - 1, "invalid unicode escape in string")
					str = str2 .. fn28(match)
					n3 += #match
				else
					if not v10[str3] then
						fn26(arg, n3 - 1, "invalid escape char '" .. str3 .. "' in string")
					end

					str = str2 .. tbl17[str3]
				end

				n4 = n3 + 1
			elseif v12 == 34 then
				return str .. arg:sub(n4, n3 - 1), n3 + 1
			end

			n3 += 1
		end

		fn26(arg, arg2, "expected closing quote for string")
	end

	local function fn30(arg, arg2)
		local v12 = fn25(arg, arg2, v9)
		local str = arg:sub(arg2, v12 - 1)
		local num = tonumber(str)

		if not num then
			fn26(arg, arg2, "invalid number '" .. str .. "'")
		end

		return num, v12
	end

	local function fn31(arg, arg2)
		local v12 = fn25(arg, arg2, v9)
		local str = arg:sub(arg2, v12 - 1)

		if not v11[str] then
			fn26(arg, arg2, "invalid literal '" .. str .. "'")
		end

		return tbl19[str], v12
	end

	local tbl20 = {
		["\""] = fn29,
		["0"] = fn30,
		["1"] = fn30,
		["2"] = fn30,
		["3"] = fn30,
		["4"] = fn30,
		["5"] = fn30,
		["6"] = fn30,
		["7"] = fn30,
		["8"] = fn30,
		["9"] = fn30,
		["-"] = fn30,
		t = fn31,
		f = fn31,
		n = fn31,
		["["] = function(arg, arg2)
			local tbl20 = {}
			local n3 = arg2 + 1
			local n4 = 1

			while true do
				local v12 = fn25(arg, n3, v8, true)

				if arg:sub(v12, v12) == "]" then
					n3 = v12 + 1
					break
				else
					local v13, v14 = fn23(arg, v12)
					tbl20[n4] = v13
					n4 += 1
					local v15 = fn25(arg, v14, v8, true)
					local str = arg:sub(v15, v15)
					n3 = v15 + 1

					if str ~= "]" then
						if str ~= "," then
							fn26(arg, n3, "expected ']' or ','")
						end

						continue
					end

					break
				end
			end

			return tbl20, n3
		end,
		["{"] = function(arg, arg2)
			local tbl20 = {}
			local n3 = arg2 + 1

			while true do
				local v12 = fn25(arg, n3, v8, true)

				if arg:sub(v12, v12) == "}" then
					n3 = v12 + 1
					break
				else
					if arg:sub(v12, v12) ~= "\"" then
						fn26(arg, v12, "expected string for key")
					end

					local v13, v14 = fn23(arg, v12)
					local v15 = fn25(arg, v14, v8, true)

					if arg:sub(v15, v15) ~= ":" then
						fn26(arg, v15, "expected ':' after key")
					end

					local v16 = fn25(arg, v15 + 1, v8, true)
					local v17, v18 = fn23(arg, v16)
					tbl20[v13] = v17
					local v19 = fn25(arg, v18, v8, true)
					local str = arg:sub(v19, v19)
					n3 = v19 + 1

					if str ~= "}" then
						if str ~= "," then
							fn26(arg, n3, "expected '}' or ','")
						end

						continue
					end

					break
				end
			end

			return tbl20, n3
		end,
	}

	fn23 = function(arg, arg2)
		local str = arg:sub(arg2, arg2)
		local v12 = tbl20[str]
		if v12 then
			return v12(arg, arg2)
		end
		fn26(arg, arg2, "unexpected character '" .. str .. "'")
	end

	local function fn32(arg)
		if v4(arg) ~= "string" then
			error("expected argument of _type string, got " .. v4(arg))
		end

		local v12, v13 = fn23(arg, fn25(arg, 1, v8, true))
		local v14 = fn25(arg, v13, v8, true)

		if v14 <= #arg then
			fn26(arg, v14, "trailing garbage")
		end

		return v12
	end

	if fn19("abc") ~= "ba7816bf8f01cfea414140de5dae2223b00361a396177a9cb410ff61f20015ad" then
		error("platoboost integrity error.")
	end
end

do
	local function fn5(arg)
		tbl7.queueKeyNotify("Platoboost", v2(arg), 5)
	end

	local v8 = request_

	if not gethwid then
		local function fn6()
			return v:GetService("Players").LocalPlayer.UserId
		end
	end

	local v9 = luraph_runtime1("0123456789abcdef0123456789abcdef0123456789abcdef0123456789abcdef", buffer.fromstring("sQE\242ŕ\179iBM\5\3I\227]y\143nVL\u{5EC}|\12\202\219\251\152\153E\210z\1315G\7V*p\251z꼼goo\17\218C\191͓\161-t\147\231\140E\133e9D\248\196w\144\253\186\166\19\251\31\198\239\232#*\181\198\201\236\220\252\u{70E}\23\134\25\130\6\154$\0224\149\246ٺ\253\rܶv\205\7\160\245\225\221\235;\1719\133\205c\171\253E\135\132\243\r\200\248N\130\tL\165*\148,[\161k\173\nnI9\200\195}\157.\151z]\30\183\235C\143\7\11qvͭZ`p\167\151᳨W\3d[\151\136\n\242\185l=L\127\26\135\139\196g#i\131K\228\188 iJ\25\4\253\236\20\20G\160\236nud\148-cv\224\25¦)է\2428\141}\28\1305\158K\17\216f\11\223\237p\27\232M\210G\29NlOb\12\172\197\11\159\240z\150\161\246.\147\235˙;>\162֠)$\132a\n\25\204Q\172q\166\182\229W\220\14\130\254\179\29\169\173\1808b\147lGrX\150;~\176\189w\19B2t\0030\176b\234\239\166ˮ\16\tu\206\229\177f+\158\148\181\174\137\152\196\220\236^\7\12\144[Dvrs\u{80}\198\"\2030\199ݧ\1J\6E\136\198\241\246\149筁\153E1-\0250\6\211\192\239\4\7\212\255\245\255\30\15\t'\188\137\194Q\133m-\5\228^\228\233A\251\150\12\233\209\244\221\206-\8\25\251\143[\143\179b\154\148\131yp\190!\138\185ዠ\14\218]P\133C2\19\2242\178\29\222\15\232%O\162ί7\26\148\143\211&k\225\11>+ةF\31\\}*S \17\201\199$e*\251h\249\235\236\236M\186$\176a^\144\180\181BL\248\201\228\184|\157\241\243\192\177\173gąo\24\8\25\244\8\140\237XDP\129|0T\213m\235\152iU\223\28=W\16\224\209\n\128\228%Y\187(\185L\175\172\rG\224p!\226Ptu\248\12\184\137\\x<]\2\180\128q\17'\132E\254\219\200ً\204L\173\18\4\16A\196\240\20\149جX)\188\152\220\253IӠ\145;G\164\229\178{\232y\172hl\205\192\1640\225$\016458\204xI\27\29\164kE\127M;,\239MJ\28\159\141\155\188\143\rsE\223\205-t\239\138\0050;F\243\250\5\205\204|\163\0168m/\20\133'R\134O\188Y\25\227H\26\254\247U߳\245^\1756_\197\193\205\198O>M\250\17\176M\197WV\5\29\137H\149-_\246\143\132<v\131PK/\153\197y8%\24(w\\\17\232\189GAJ\158/\138e\129\221\30\28[\253G\143\168\146\205̜\219e<M%1\146\1\159\217Y\"6\183\195\6\191)\218_~\186\239\244^s\174\128\17'\150\\؛L\2410\207\231\173\235\11\139a\225\153\246V \151:\130\135\24\238\245x-\144Y|s\159\14\176\135*q\17e\158\188\168_\131\t\175c\182\253\224\247s\137W\144\167:*{\131\198%\245ǒb\22\251\190\253\139ü\153\172 %\149؏\2\144W\235nmͺ\1614\227^\21:7B\200?f\243)\215rJs@1c\229D\5U\190\210\198\249\214X1\0\184\163SE\230\128\0070\"T\160\200s\161\182c\146yJ1(J\136Y\26\187>\158\26 \181r`\244\167\7\217\229\251\2\157-\31\159с\251\"\4$\2150\137R\131S%ua\140q\244\r+\189\173\251\4I\161%\3\20\229\2346\"`LMn\21(\247\250\31u3\156k\234R\233\135O6J\176r\131ԑ\163\140ʳ\185f\190u\157\164\226\192\145\238\4ޕ\202\r6\12cd\168\244\202]\"\156\2274W\212\227Ľ-\\\138Pr\129>\201\250\162\132\241:\250\147%\190\30\168\178\t\251\237u/\151Aay\163%\182\166\12P\24z\171\157\2047\173\19\185\127\177\228\244\225\7\243q\151\1859,i\159\203)\224\146\150(L\254\162\225œ\244\156\153O-\165\238\182x\225{\219dl\173\243\"\3\253H\127\181%K\203bH\228G\245\29O\246w\215"), {
		[9] = 151,
		[5] = 38,
		[4] = 89,
		[3] = 87,
		[12] = 245,
		[15] = 74,
		[2] = 243,
		[16] = 125,
		30,
		[10] = 138,
		[7] = 1,
		[8] = 5,
		[17] = 96,
		[6] = 117,
		[14] = 233,
		[11] = 174,
		[13] = 12,
	}, 368)

	local str = "https://api.platoboost.com"

	if v5(v8) == "function" then
		local v10 = v9({ Url = str .. "/public/connectivity", Method = "GET" })
		local statusCode = v5(v10) == "table" and v10.StatusCode or 0

		if statusCode ~= 200 and statusCode ~= 429 then
		end
	end

	local tbl15 = {
		[13] = 12,
		[5] = 65,
		[7] = 113,
		[10] = 250,
		103,
		[3] = 160,
		[12] = 233,
		[4] = 85,
		[6] = 226,
		[24] = 5,
		[21] = 142,
		[16] = 142,
		[20] = 195,
		[15] = 211,
		[19] = 233,
		[11] = 25,
		[18] = 187,
		[14] = 160,
		[17] = 226,
		[22] = 82,
		119,
		[8] = 219,
		[9] = 84,
		[23] = 126,
	}

	luraph_runtime1("0123456789abcdef0123456789abcdef0123456789abcdef0123456789abcdef", buffer.fromstring("\150H\187\231Ai\1\203\228\241<w\135\5rE?\157\197\208\u{379}\2273\5\167\178%\247,\2~\2Y\252\232\242\198a\127$$|\235F\2021q\194?G\148\135\191\164\238]\24?\232\202\236\178ҳ\192\173rzãt\160\163ǀJy2\197,қ\217\21\245e\181\164\200\\L\229\230\157j\1926xÂ\218}\17\27\138\149/2f\r͎\127\177\167\145\211\26Q('Fk\168\214\6\177\216_\232\25\183\167\149\212\r+\160\243@.0\14\210%3:Yp);)D\23~X7\206S\188l߃Jc\218\243 \22H\183\218\200֜2\\\212P\146A\160\172[{=̝\220+J\194\8\t\247qn\2\153\179\233Cg\11(\7\131\191ɧ\16\163\242\175\223h\238A\231\3\27\244!T\152\176\175\228\239}vW\245\135\156\255h0\2\219\203y\176\181H\219al\207xVy\128)DoǏd`\128p\200T\172\143]\138\148Oj\191li\142:\23\143\241w{_\220\212\28\221w%hpW(\231\131\245%\232r\179\162\239\187\251\246\1699\26cD\20F\14e\179.MZ\159\8\27\161\187\171\127\230\165\235\247\250p2\225\219\252\n\224\n\0215\168\221\rM\171\u{38B}Q\255e\3\156\11lP\181/\24\3\5/\146\219 \4HKh0\135\189DD<\245\2208U\0\197j(\247\239Cd;#\5\218й\225h\139\154n\176\160\222o\189b=\1839F\152\152J&\\\243\205\241q%\229)\3RJ\184\163Y\202Hꦯuxwy\152RBtM\193\31\224n\227a\223:ݥx\178\155lT\244_\150\228\209U\212\30\146\26\248\138'\213n\163\202\n\20!\176\179b\234\203\212Ε\204\4+\205t\173\202\234h\196HƐ\239\246\235\178\0\134\252\216\0056\189b\238\4\186\142\187=\175\0177l\159\152\188\220\7\20\251\244\157\248\16H7k!\24\167ϩ4\163\222f<\31\250㤑\161\3\145\8Q\6\229 \249\164\237\157\r\213\27oJ\135wA\12\1514k\160+bIO\142I\18\18\11\193\135\4\158C\20\157r\154\137\223Q\157~\157\8\0\158\4\250\137\194Q\158\12\1574\180\137\194Q\252\255\239\255\26\237\137\223Q\157x\1587\129\t\157D\157J\u{5C9}\223Q\157\n#\150\137\194Q\157\29\157Y/\157+\158\21\157\14\1576\158MV㖟\2\164\222\2-\n\139\247\169+\146ΖPOI-\4\5\211\\\202-\7\129%\130F\144\206\220V\161\242\234\1\190S-\3\174\232!-\21\188\204\253˳\237 \u{5CD}\149\31\14\29y\r\203\230\212J\\\200-A\190\11PR\218\218\220\246\205I$\20\132\208S?\227\145U.\"U\160\210\26رj\195,\20OT!\165%z\225m\150=<\141)&\179\238P\147\167\245C\197|\t\242\173\229\221KtA\184`\169P\155|\174\187\23\228\242c\1\140\228\25`\158\138\u{6DD}&`$F\156\167\138lk'\132E\146\219\200\2176\207L\173\157\3\16A\175\247\20\149r\168X)Ɵ\220\253\nԠ\145\238@\164\229\18|\232yvhlͺ\1630\225^\02345B\203xIF8\252\29\234t@1\206\224D\5\u{9C219}\18\136\12m\190\196\208\1\152\176\212U\194l\24\233&X\156\189ʔ`Q\174\0d\165\184<\1689\\(,\141\176d\240\161\212\208\244\245\162\1408\t\6\248\188ݪ4\0\241\228\160\4\197\216\\HY\235O\204-(\131\144\193\238t\148\21\"+ةF\31\\}*S \17\163\199$ea\251h\249\134\236\236M\138$\176an\144\180\181rL\248\201ɿ|\157\150\243\192\177>dąi\27\8\25\23\15\140\237?@P\129;7TՋ\235\152i\214\220\28=(\20\224\209L\128\228%6\188(\185ͯ\172\r\143\227p!NTtu0\12\184\137\140x<] \180\128q\24 \132E$\220\200ـ\200L\173,\4\16A\30\240\20\149\2\172X)f\152\220\253\171Ҡ\145\202G\164\229jx\232y|hl\205\8\1640\225\236\01645\240\204xIT8\252\29\232t@1\204\224D\5\u{1C219}T\136\12m\250\196\208\1ް\212U\200l\24\233,X\156\189Ɣ`Q\162\0d\165\216<\1689<(,\141\208d\240\161\180\208\244\2453\1388\t\5\255\188\221\2180\0\241\132\160\4\197YZHY\29O\204-\u{80}\144\193gv\148\21\152+ة\150\28\\}\254T \17\26\192$e\230\252h\249\130\232\236ME\"\176a\29\151\180\181\18H\248\201f\191|\157A\242\192\177?gą\2\24\8\25v\15\140\237\218CP\129\2547T\213\226\235\152i\166\216\28=J\20\224\209?\134\228%\19\187(\185\22\175\172\r?\226p!pWtuR\8\184\137\130x<].\180\128q\8 \132Ew\218\200\2176\206L\173J\0\16Ah\240\20\149t\172X)\30\152\220\253\nԠ\145\238@\164\229\18|\232yvhl\205z\1640\225\158\01645W\201xI\246>\252\29\154p@1\186\224D\5w\153\136\153\233\142\12m\138\192\208\1\170\176\212U\182l\24\233RX\156\189-\145`Q9\6d\165\1628\1689.(,\141\194d\240\161\164\208\244\245\162\1408\tx\248\188\221\2124\0\241\240\160\4\197\242\\HY7M\204-^\130\144\193\238t\148\21\200,ةF\31\\}*S \17\206\199$e2\251h\249\195\237\236Mt\"\176a\14\148\180\181]I\248\2015\190|\157\202\243\192\177N`ąr\28\8\25\214\8\140\237\20DP\129.0T\2132\236\152i\202\216\28=&\20\224\209B\128\228%<\188(\185ب\172\r4\228p!_Utu\2\n\184\137\246|<]\137\176\128q+&\132E\146\219\200\217;\204L\173\22\2\16An\244\20\149h\172X)f\152\220\253\nԠ\145\238@\164\229\18|\232y\30hl\205r\1640\225\150\01645i\200xI\127>\252\29\175p@1[\228D\5\247\154\136\153&\140\12m\228\196\208\1\192\176\212U3h\24\233*^\156\189\186\144`QU\4d\165\195:\1689\150/,\141\31`\240\161\169\214\244\245҈8\tL\248\188\221\2244\0\241[\164\4\197\209ZHYfL\204-\147\128\144\193\246v\148\21\"+ة\213\28\\}\248R \17\30\196$e\149\248h\249\129\238\236M:#\176a~\144\180\181bL\248\201Ƹ|\157\22\244\192\1772`ąi\24\8\25\144\14\140\237\n@P\129\2547T\213\226\235\152i\6\223\28=?\16\224\209y\134\228%\"\184(\185¨\172\rZ\228p!>Ptu\"\12\184\137&\127<]\138\179\128q\174'\132E\146\219\200\217\246\200L\173Z\4\16A~\240\20\149b\172X)f\152\220\253\nԠ\145\238@\164\229\18|\232y\214olͺ\1630\225^\02345\226\204xIf\139\253\0089\255R\178p\188\21:$\237\254§\212]\2|\181>y&\239\140#\227vڑ6'U\163\n\212v\155\17\129a\16t\0\159\14\165\28\27\186A,\135\134=\244\167\1309\170(^\169\241\181\156H\26(\197P\2165\245!j<-\198\"\184Yb\143\164\165^\23\233!ZS\172\221\24o(}\2+PE\206\199 a\n\195(\157f\223\216Z\2\27\192\18\168ɩ\168\195B\253\2137\182q\144\203\234\229\148\207*\169\184\199\1\2EeQ\171\180\151ovÜX!\160ا\174yX\1318G\230;Ꞁ\243\176/ےW\131\27Ѿ\r\228\247\4\11\245yI\1\180c\130\201FA|9\188ۊ7\227%\1925\186\173\247\1634\161{ޯr;\18\133\176W\179\164\243&D\192Ǩ\214\246\208ɘ\26s\146\179\188*\243&\240l6\200\226\191v\248\r\12vBp\202UB\177m\182\28\23\1276\27\r\218\3fo\173\229ţ\213(\22+\189\132wT\149\241q\29I\12\216\234u\177\201\\\250i\1]Wv\254.&\2489\165{Z\163<'\143\128\8\192\129\165\15\217;\20\226\255\229\219\24_8\219'\162\15\2059\\PO\172`\131\3q\183\252\172R_\243+B\170އh3}_\\+W\29\204\197+oa\135\27\244\4\224\188Dl(\228o\148\155\252\191\210\6\248\183\12\168D\197\248\241\195\213\202\30\171\164\172yP\t\n:\231\166\217\nFϱ#\16\199\235\198\235FB\208S6\170F\235\213\238\192\252d\236\222\23\223Q\181\172V\159\234t_\193U)F\193\21\230\219/\n{\29\147\246\2000\202\30\251`\240\189\172\244\4\255\20\140\225\".)\158\146o\233\223\213nN\238\216\255\200\192؎\158RW\130\152\211:\247\24\147xdɟ\243\21\164E-(q^\156d\5\250\127\161\28\8sx\19\12\250~?0\183\169\249\149\240\6D,\213\235\15X\207\200i5<\n\249\156\243\191O[?C@\30\ri\175rə`\191:sZY \165\248I\181\149\7S\176\7>\n\145N\173\189u\242\183\144\193\181\164\2364\244\"\251\30>M\171\246,\161o&fi\160lZ\134\15\179\6\143c\190q\144\250\250\166{\176\234\238\149\212\224o\r\215J6\t3\252\211\2\156\185\146~\4>{1\235\1\243\\\198i\214w\241\183=\235Q\24\158\31\229\174\127-\223\197gT\161Y\177\179'\221\18\207\213a\146#\2019\177\148\160\nvGv\19\206O\184\17\7\141\251\165\7\244\139\167\213{YI\23s0\209,9\\}\25\30`\234d\137H\184\190\227[D\192\23@\160\170\217\\\212\244Y4\249\147\182X\169z\209\215\8\255\138\221\22\141r\189)~ߡ\183 \246P\02568\195\237fK\2461\242}dT6C\14\171\8!t\213\203۴\193[?\26B\167\18)\229\136\0272)^\189\196\29\192\243\n\225\21*suj\1850\186\146G\222r\174\170\248\30\140#7\133\165\215$\175\24;'\246=\216*\1R\176z&\30D%tv.7\0\194\5!\1\172C\28S\177%\1\25Z\151\199GcL\23{\0304\234\232\tX\n\219O\206\212\202nTzf\231$\155\192\203\192\189ɒK\12\189mԄ\165\144\241lYE\234Sq\21\3`\24\138l\181\194\14\151\23847W\138i\244\235h^#\188\239{\132\162\228Ѳu\182:\0278\23\246\231~\136\148\6F\234>\11\247\182\137\167\246J=|(\8\150\134}\163-\6\27\16\250J\248\180\145V\132\193/]\31=\207f\230 \206\18K\191\30\179߄\251\208\19/0݄\176y\233t\209h\238\1928\179\27\217w-\27\to\245\251Ie\16\247\159\27rv\22Z\209~3e\166\187\27\241\12\12cX\208\213\6j\176\235\212\25X\11\232\235<\243\193\233\226\227/r`\30\174y\"\215E\226T\\\14\5\16\145\192|\182\134\146v\8C\\\u{9E}̸iSl\144R\222lD.]--7w\184Nn\1\223B^\4\255iai\139\240\t\156I\254)\208#\146\167\159\165\16\179\224\233\163\11\164\244G<,\169\127ƃ\164\184C\\y\202\231\134o\157\195\251\165\149\251䃝\177|}z\21r\225\140\213\194]\188\157Fl\239\204ѭS \2296\niPc\153\173\189\224-\219:o\165\30\183\181\20\237\246x.\130\214\14\244Ċǉ4\\zP\135\179\128\242å\204`\161\219\200\2176\207H\136\166\22\31E\155vc\179\131\166!\170\190چ\166\255\144\196\238.$ό\215?jE\162\18\17\1338\159X\20fr\181`Ɠ%\203\249 }c\191W\29T<\190\19883\25ڷڨ&uۥ\247\128g\191\150b=X\nh\180t\30\251\235\142G['*m'\17\16ۻ\137|s\213\"\5\150\228\156\248\151\213e~#\136ĔK\245\187\24\131\217#\152J\235H\26;۬\21\136vE\202\233\216L \0223Lf\156\219.u:\23^Mt\0\216\220??\179\254`\242S\243\242N\187\2\178|_\185\198ʴ7z\214\20=_\31鹂\245\174-\143\u{95}\26ZE ]\r\160\148\194\17ñ\182\r\147\167i\183'\135\139nC\147h\159\163\12\228\234+\240\142\170\156Y\251\225W\169\190\241\t\28\26\245\0\180\137\245\169\167:x\220\228\147\2$\253o\5y\19\195I\156\26N>\232\27\27\146e\151\2133\191 \227z\171\245\191\252Õ\239\"\193ts\147ב\249\230VTVIO\190\134\1\239\27\150=p\5Jq\12\145G\136t \242\0082)\162\23\135oɑ\128\238\14eq^A\170\21m\172U;\227\19\th\1915\245\211\0\248\0115e\134`'Ky*\4\192\11W\12B:\179#\3\169v\238w\t\5rƓ\196^\0MG\190P\1898\211~W\127n\201\27\151\0008\2\191BD;\222Wo{\143(\30P>\255]l\162vL\185\166\19t\239H\245]\224\238G\184r\226\"\\\143\1584\192cz\141H=!\177\225\193\229\129\215溰\231\159k!O:\15\200\230uC\3Ƕ\16\212\226h\134o\132\183\157&kga\222\r\154\247Q\1589*\215b\220/p\135`\0126\0281\127\7\237s\192\249H\252C.\8\175\234\243\227G\221#\218X\181\172\180\195./\144n\145d=\176\151\210\195(\tS\216\196_\189\204R\156\19W6ߞ\217\248\137\7\164<\238\226\251 $\188\17_|`\193\221Y\200\217a\127~\19hG\178&\250\199Q\209\204\n\238\231\12Rr;B\160r\253\236\198B\224\14o\195\5j\136>\17\229\226[ik\231\163\29\185\170\186\145\174\19\12Q\26r\175}\235v\162>\180\0\139\241\203?\1442\176T\208\20\154=G{Ai\216\214̾7\14\150\137ֽ\27\134\151@%Y\132~\158\20\249-S9\144\129\181M\0218\240\11\159<\135\239H<+\185m\180\137\180\181\194-\253\215x\218\28\240\192\138\184\202\197L\237\170\2403,;9R\183\206\224\16\r\166\252\2425\235\253\249\27K2\233\22\248\179(\213\231\r\187\209?\134\209@\215ӳ\200e{\170|?\230'\8e\156o9\241B\23:1鳂\21\222Y\152T\137\199\227\248v\129`\141\17878e\178\248\30\149\175\170P<\221\239\167\232\180\u{378}\155zr\153\168\245Z\236ra\25\7\163\223\198\17\134\n\8),U\137'D\2322\241\27C}B=l\1494s&\229\250\24\141\152L/\25\133\154C?\246\138\0076=H\183\200\29\222\253 \213 \31@E\22\218\14B\223I\148!,\143X'\191\237S\153\167\175\128ɹd'\149\154\241*{\129\144\2\135Z\150\147_&\4\149c\131\172\29\242\180\232\26P\178<\0\4\248\138x\"eL\16h\24(\227\230\11\228[\220C\220e\225\171\4\127d\249$\164\231\197\198\234E\251\134+\235 \207\230\255\1950\131tО\198Ef\152\31\19\157l\222gV\238\148\0301\191\137i\230\235v\139@k\212h\181\136\n\242f~\135\193]\193m-\170v\130\144\14l\1972:v\192\15\187\1468j&^\1602\2322\239k\223?\193\139I\254Q\208G\166\227we\14Āl\243\196\237z\28\199\216]\u{38D}\249\133\185mi\133ɃI\219I\227UY\244\140\150\6\219\220\4\26QfH9G\231=\247\27\2035_I>\248Wj;\248\230\148\248\12\127\16ٳ\217\6uǮ>\22\23s\150\245\221\210\221\7\243\0117g\132\16\195\31Y+n\231@\175\203\249!\142\212d\135ٜd\n\rqב\250\156\136z}\136o\233E\144OF\18\2\227̧y\155\162\253\144gb\145\31?\168\150*\18\156\17n6LeL\241\2166n6\140^\2276l\147,QD\209\14\177\20\1896\255ʷH,>J\242\169\201\246\141\214Z\242\177\228#\139XH5\180\213\210Yi\236\238-A\202\249\254\27\26\12\220\18\19kw\164ݎ\133\127KY-\0\251h\175\251-\r6\160\198Pie\28\161\146L\154\168y-\7\163\214@se\28\235-\3U\163\210-\7\4S\186\243\22\129\182\251\193-\12\213&\174\23\199\27H\2j\168X\206\12\214\194\242\248o!\158\164\244\183\204\210-\6 \152Woi\151-\16,D7\26\192\195\"v<\243a\177[\251\228D-\5Yߍ<\252-\4\166t(\174\19\187\144\236\19\226-\4\182hR\16-\6Fϩ\1728\226-\7P\193\196\21x\183\214- \164\11:\145\184\169\223\28t\1\227'\163\23\203\26R\15P\190\\\139+\11\133\158\2028r\159\23k-\n;\159\235\201QD\165\2464V-\8\190n\148\206\224ι\231"), tbl15, 578)()

	local v10 = luraph_runtime1("0123456789abcdef0123456789abcdef0123456789abcdef0123456789abcdef", buffer.fromstring("ʳc\7$<O9\27\2391\170\208˰\206<\213\206\21\250\160\160\2428~0\157\161\31\211긍\169\206o\30*\134OFɷ\214+\229`\172(\25\185\171<#Z\141\149\20T5\202}\153\171\145M\22\161\31(\22\243\180\253\252\198@\157\3\22\146\4\153\210\201m\153\14\197\199\239\177r\0v\150\189Ꜩ\139\139\242\198\237nQ\r\241{\201\28f\15\224\189\199&\198\235%\193\153-N\u{3A2}\178\1978\182\1959\220&\177*\20\1J%\1486\144I\213\23\t\162\156\139\253M\159\249\181N\n,\210Z\184\154\217E\239i~J\242\199\4\253Z\22\5H.\210\229\211\224\212\233\242&O\236\21\15=[\11/\182\203\254\4\160\133\0ق\226\237\18\187Fy\165\1864[\11\147翂\170\168\137\158 \1766\200ND\1ga+\180\30j\233o\15\195\241p\174\162\202E\201+\20D\193=\235\163_\176\7Q\255\151\254\25491\166o\31\238\239VR\191\1325-\224\30Tq\139\4\221v\153\208\18|\196#\207<\239\218\15\160\147C\152\251\234F6\203-\162\130\189I\228\247\215U\128\128<\230*\225\30\4\133}\236\248=\185aj\235\254\183\174u\234Ls\199\26\221q\177\22W\135\2035\170\14\4M\143\176S\247\193\219\245\151\128\23^\173\197K\233\23]\255r+\17e,a\160\169\230\146;\t\184H2$\252\3%X\22KU\164\247\152D\205;\2\239\197\226\253\184\186$i\190\178\171\161\19\171\8o\15\1565E~\226l#f\5\161 \246V\155\138d\132\215O\232\225\254\189\175D\26K\3\\\232\207\241xI\163\213]\185G\136r\196\237B\185\156\227\164\23\248h\242G\219M\157Q۴\133Kr}2B\5)\160\147\28zjr \197˭\243\169LO\2237m]\157\222\197\230B̳\158d\144xד\27$\160Pb.\146\195E\210\2219\230ې5J\168~\128%x\188\240\31\147\212\15,\128ϏC,l)\5\"\132\5\233Fj\6\177\202h+\191\248\142::M\149\22\146\229\184U\239\221@\157\187\146o\170j\145\206\20Dax\30\237\2\169\15P銢\8\189T-\237\1392\147\137\0|\2170\171\193\193\195%\208\251\u{7B8}\176\1470\128\236\127\28D\174\0287\145\184\249\18(\153\226\27\242r|.\151\1763\235\161\213\237\188\26\166u\129`\250\20\158\178\177x1W\135\26\233\209&\127\238\251>\0318\128'D\146P\1L\133\1452\149\2385\226\5\0077k\"\28(d\165|\232\253\1824\222\19z\\i-\211\241'\28\151Y\216\214\3Cm\0315F\171\14\18\203 \225O\244f\228\197~\134*\216\235\229\208\0033h\"\14\137q\134$x\2230D/\184E\20\191<Km\241\131\246|'\22lDL\159<\183\251\28\\b\152\145\179\0\222ߣ\27'\14\19f\211Y'\176Ў\182\144a\191\189\2\29\240b\200?\251\190X\179\133\158\136\"r\134\236\187<\31\21\138ep\214\3n\213\29\29a\166\235\216GB¬X0Qqf\167\20\235\175ٙZ\133\174\29\253N94\250\23\nu\193\169\178k0\131J\20\237\26::\152Q\143\251\158\r\148\140B\143\16\169\168@#\148\227\11\184\185\4\240\228\183\219\199\14\255>\173P\134.{B&-n\229|\255'|0\\\130\137\158is\182o\137\174\146g<\24m\23\142\244\163-M\181\197\31\136\15\0140\161\170;\160ԉ\167\230\245\242\138\166\17W$\255i\247\187\157\r\177{\14&\212_c\149\245\226\4\252\187pk\182\244l\2215<\177\231\203Û\136\"F?\150\184%\2gYz\131\12\1697\8\0\20738HQ\147\1830\1502:\2\139\15\167}\177^\183@\182\11}\133\14B\1992\230\5\131T뇭\231\214\232\202\19q\140\1561\5\8\205H\181\198\1993\168\214'Zd]\130v\200\14v\245\243\1923fظ\15&\2224,\150\7i\3\31D"), {
		[13] = 10,
		[2] = 242,
		[9] = 244,
		[12] = 135,
		[15] = 215,
		[14] = 139,
		[7] = 162,
		[4] = 155,
		[5] = 15,
		141,
		[3] = 142,
		[8] = 227,
		[17] = 229,
		[11] = 48,
		[10] = 227,
		[16] = 185,
		[6] = 237,
	}, 422)

	for i_ = 1, 5 do
		local v11 = v10()
		task.wait(0.2)

		if v10() == v11 then
			fn5("platoboost nonce error.")
			error("platoboost nonce error.")
		end
	end
end

do
	local v8 = luraph_runtime1("0123456789abcdef0123456789abcdef0123456789abcdef0123456789abcdef", buffer.fromstring("\173\128\232\145\226_a،\133]?\163\164\170\229p\136\\\218s\167\156.G\151\150\134\5ڝ\252\232\197\193\241\180d\253I\254\189\239\19\143\188\132\236m\146\254\157\8\175w\196\233\165\251 \190\254x\141\244\2412&\232\137\227\193\172\155\164q\208/\238\19\135M\136\2314^\2\161R\252\211k\130GO+C\241&\29L\224\234\151S\17\237_\162\139FH<\2\141 ʷ!\181\179W\18\187@_s\191\166̐*\223\17\250\180\215\30H\180v\2079\222\205LKŀ\255120g<\175\31\244\169\161\138|\169O U\211\216\195\30?Q\133\23\150\194*\172eD\182\248\139\247i\29|{C\1,<\205\237sh\11VZCc\159z\26\146gŗag\165h\5\166\15c%G\251\168\1\230\2\236\0\143\20\197\196\234d\239\164\7$\2156{\221ρ(\24_.G\178l_@q\6;\202@~\2\242\229\2\17{\178\nK\128\11\236\236&\189~\196\250\251\207F\241\0\170j\158\252\232\251\169\129\\J\149\179\128\149\175/\u{5FB}6\245(\180\131\200 \249\\\0120,D\27H(\3\188\234\205\216 \236\155]\157\174Og\153\152\155t\168\183\247\178\183fjϳ7\25\176g@\202̷\222f\130\199}8\213q\238`\179\20/\158\225\216ÕI;\189\2225\2396\242\248\193\165j\243\245I\220+[\186㤹\228\143\2341q4E\2140\155\232\184a5q\183\2286R\245С\156L\8\236\203\12?\1564\243\240\233\t\168ck\138`\135X\1\170yNj\169[\222\31\237,`\7焅\218>\221\245b\179\249\175\180\174\30\153$\0211+l\16Áe\21\28\8A\0æ\193\220\28\1e\219f̀i\21\139t\239G\0V@[\26A \6߅\178\u{E7E2}vo\232\216LТ\157\227\3\254p\30\1291\200\31\210\nw3չ\18\251\127\237\19\156)\r\230ڌ\142\143\169yk\161\31'\241\198\20\221`\156D\240\27=\130\151\249:\140\254hV\246\156\u{382}r\201saj\230,\31RH\208\16\147S\241\158\15\212\"K\217\18y\237i\226\24\\\14\136\21\171\224[\4\183hM\166v\131\181\154a)xG\184P\155\178\158ͣ\142.$\146\185\188\26\191f\135\235\233\218{\223a\232\244Eu\194\29\160\"\11\6,^zI啺m\31K\216훆\1-\154\1570\199:\1\1270T\1\187)3u\186\30 \184@\184\233<\31\173\248ǅ%\154\240֜3`D\252\134C\249`R\2131\217\219E\152C\135\198\234\16\254B`\3\164\2262\147\1401W\161Ӟ\237$h\171\216\1N\160]\15\151\15\1946\27\t\226\1514fu\138y\244Dg\176\246FL\205ߔ@q\144m\238\193۶|\182$\136\245U\213\2 k\3\137\224\149\149CǤ\166肫L\2\152Q$-\176\226\1\156UQV\5\n\0047\190\165o.\243LR\186\24w\201?=8|y\r>\227\250?\178\7$\193\233\26-{N\5\145~]\253\214\208\244\173\255_\175\184\20\n\165\"{\0144\192\6\244s\180\2\157\15W\0203\3\231\6Ӯn\132/ި\147\1\186\140&i\233\200?\n\151{\18\164A)\\\25gYJ\215yH\198(\192\237\206L\1937\249\16W6\11\192Dܑt\186\145\226\11\231\27)\226b\161:\244x\4\6\148P~\234\\\194$R\140\2F3*\29\6\12?\166\145(\202-\"Sq\5\212Ì\151J\19\209=o_\249pf\nD\23\242\252\16E6\137;+Rn\11\140\231Z\2324S\7\138\150\17\190\24\u{F121}\u{8F}\198\t\173\1415\171\240\226\21b\"Y0\206W\"\247\15pw}\2N\234\197V\31\224ۻ\241\186\193\n\2247\1672\238\170w\2\245<[\5\198\206\19532Z\224\199\255\12)\168\243\150c\177ᲾN#\16~\19v9\170\253THO\251\30R\3\19\165e+\127z!G۶}\7\230\231u>\194%\231ݟ\194\20Uq2\130Y\135_0\14\225\223frK\188iĸ\247\136\236\251P\18ׯ\210%\230\19O\232\210\206b\157ʘ\193\202\"R\227[)\178\139Pޙ\ri\2_W\169\246\132\188\236~\8\239\187\22\154ӕ\165\178yG\131\156\131\228Pu\250Z\237\178KczGJh\11QN\189[\20\139f\210\20\168\204n!\157\190\143<(?,\242\136A.\136\223z\153O\0\230t\128\158\128w\162\144ڔ\21Äx\207\208]ޗ\5rW\8\150\243$\225L\177P\1\243/\18\235\157\17o*N\171Z\1833[\27ǎ\221\251\7(V1\"LP\199'J\150\143Ę+訇\200Üߐk\6Z\143wAó\254\247\155]\229\241\1479\148\199ٴ`\154\162\142\178-\171c\185\133l\195W\142\178\1333\196\210D[.&\tm\149D\r\19A\187\0273\170\145\185b\230}\255M=<\226C2'\225\146;n\250\1966\16\242\167Z\216`\172\162\242\17*\148\130\7\175\14y\209\27\244\135L\28\5\156\217\204ʊ\26\30E\"\247\238ϴ\167U2\252\175\19\151J|\199JxM\165<*\239&\199M"), {
		[17] = 156,
		[8] = 77,
		[18] = 113,
		115,
		[16] = 1,
		[13] = 12,
		[7] = 15,
		[20] = 65,
		[9] = 254,
		[12] = 52,
		[4] = 45,
		[19] = 45,
		[5] = 185,
		[10] = 199,
		[6] = 75,
		226,
		[15] = 71,
		[11] = 138,
		1,
		[14] = 242,
	}, 495)

	luraph_runtime1("0123456789abcdef0123456789abcdef0123456789abcdef0123456789abcdef", buffer.fromstring("\140\0185\189\136p\209L\17\0\2ڼ\180\202?\163h\197G\3\130\18F\248\173m!\177*[}ܲ@\146\184\171\128\240\16\227\29a\226\179W:\189~\0\2\"\208GEW\127\12\164\27\22gpwR\24ǡ\165\178\0111\8\238\218\29\250\191X|\228[\192'\215[\23\179\r\222\238\5zM3\247=tm\202\0\244f\153\132\181\135v\244ĉ\215\7\184q\154:*\154R\204!\6)̯\228kO\218u\254u\215\201G\21\236~'8\128\161$\208)%I\8'\175^\224\253,I\1^\157\1s\228\254\150w\163AVh\160\170\255}z?F\222(\237\17g`aY`][Y\224\177\248\240\183\n\133\184\147\217\247\158kVI\27\141\u{5CA}\n\145\"V,*\"\136\188W<\133\130e\165@}̿`K\228\179e\178\138\163[\253\145\133\253JE\189~r!\134 \22\191S\181\247/\1297\219>\22\253\236\236\159q\241M'\233\1nHf\127\241\210\223mm\180\236\1329G\137\252'P\141D\132k\185\193F\205\201*\179V\131ˍ\255J\246-Ú\19n4ې\7|\229\229Kƣ\210P\29D\227{\219\224%y\1660\30\8\151\136\25aB\190C\159(H\161Z{7ތ\135\29\167=\187t\8z\nL~\16\192#-\129\134U\181\223\n\171\u{F0F5}\157\135\\4\145\150\160\158\0297\12\243\177d3o\145\2l\170\179\21r\157\176\155\167\241\2148\190\186N\154j\247\225\t\179\227\6\255\160Eo\28\251\232\26\21\"\24h\212\\\234\245\2457\208g\220U\1380\28\216\31\138Jx\171|R\172\175OsY2\140\12q\141Ĳ<.3z\217\250E\152c!ɬ \221\228I#1f3V;p\223\250W\128q\247\188l;\247\203A\249\211\204Z\0214\2447^vǑq\231\182\242\134\197\25\243\138&\214\21\15T✚r\16\191\22\153>\26A\19\197WHb)A\28\181gpذ\135\29\238\215\245\2133S^_\151=D\176X\23#\205\255\197I&\160\22\166\5\21F*\230Es![;P_h\175\211\229Ò}\2\238Gd\12\200Wbn\190\6\252O\136\155\180\171\133\222\229\26\139\255\153X\r9?\"\214b\17䄊\174\1389*\181\147~=\162L\7\23\149S\150<\171\152\133:j\224\129\221no\215)\216c\142\127\138\153\164\201C\194\243\15JU\30\162\222\24596~K\175Z\163Б\196\21\0Q\226bh7$\206\15\134Ѓn&q\239\186\0ݻ\228\215\12x\214\252\193i\229?\140\156d\183\189\147\188\204\241<\182N\136\"\19l\148\244\147GV[Ƨ\226\238#z\163v\145\235\189ǩ\201\215o\22\138\167\171\30\233\30\\ \240k\224Пq\24\251B\154\139\168,\243H\128\130)\232yz\178\156v\254\195T\r\t\239LV\8\174%\131\253\21\133\211\\m\130\180¬\173W7\166YEr\31\254\0k\0274\27\142\183I\225ɒ\216E\180\196\11\241\246\155:\139\152\28\146\236QN^\155z\16@\12\17\216[\240\143e\174H\173\239\158\221\11\178\19\n[\200@\1\239\210\22\171\233\r\145\161\241ŭ\134\190\144[D\195\0161\158ރ\180\181V\248\209\20c\n\149y\175R\229\254\190\183\213)\189,\203\31\152\18\183\n\2اAQ\165\1794\201T\227L\209 K\7\179n\18\225\1wö\167\132F\128\149\234Vu\3\7OL\5\144\221N\176Q0\139)Ż\163\237%s\165b\206\208W{\171\31\209\2482\17\165MECo\208J\135}\192\182\198}[h\175!MB\166\25\211\22*\146b\146\131\nh\140z\181\15c\27\\\164T\26\140\206\22\150\169wٗ?\27\28P\238\2\254\18714\30\163\31\7\192\178\247|\157\184pk\222A\172\230\2\235T\188\135\245\188\221\21\140g*\181\156\15%\147\196Mo\194m\t\131:g\207\197\8\231\242nq\185>q\135-\240\157+\206\205#\147\134\144\155\151\195V\5\196\23Ф\206%\137\202\232铂\150\177Fy\195\22\206\12?\30Iv\203\233\217\221\244\154%\17U\165\136\186Z]v\229\0306\231\217j\0\219\20x\188\174\234\217\210P2\233.\135r\249a\240[\30\17\170\145dI7q=-\22\nܻ\128\199\217\n\156З\tP\217:<\216M^\153\250\203٢\1,\24~\1832\138\3\135\172e\140\16?\29\224g\29\22S\209o\171\177* \161\233Ҥ\12\16S9D驴\152\137\1\205~`\196\24\223o\139\1633v\165\251\200/?\167p\167\178a\2157l'\15\213=y\u{7B2}} q\190\11\206\222ϱ\2 qĭ;\2536q+\138.+\136qKG\22\156\153\250o\138\132\3\5\153\164\tG_\236\207?\153)Yx\162>\162\180ρ\173\2020M\146.\246@SG1\20{$\5Y\0Q3\235\234(îq`\31K\222\18\132\199\211\2208\135\178\t\185#XK\168\178X\186\244\5\138z*t\30!\171\231h\4#\147\137cܳ\185d\0\14wӝkЂH>C\192\230\24?\244\241\229\229NO\193G\6B\235\242\"JCi>\189h%i\250\210uVC|\135\215.\31\t8@r\232 \213kf\228p\147#\128\139=\30\184g+\184\1294\220趗H-\136\127<י\7\17\196p\21v\252\251?\166\170$\176\253\181\3\23a﮲_(O\2456\248\185?\24\241\225&\25\247\133U\154UO\140L\185\147\163\t\131Z\182\169\21d\172#\15\127U\0\20\195%\132ߜ\165\2298\156\212\199\220\228\197\8\205\218\229\8\182\23\211\223?\11\252:\128/($\237#\3\150t\251\139\137\26T\237/\163\7-͵\214hM`Ϡ\178\1332U8\rWT8\8\0228\188\165&\183\246j\12\176}\226I6ɾުيy\31\205|\156l%\24\222LZڑ\157\176Ȁv\26 )\131\1927jj\189\3\135\239T\\\182O\159Wy3u$t\1792o\149.\150k\220ޢ\189e\12\196\22\212\\\138\200m\2$\11\212}K\19s]<m\138\191㔨\134\227\219\248=\135쎡\176\135\6čW\187`\166\148\242x}\148P\146\239\t\218f\29\182\226\220,z\210\247\190<RF\143\232\147\255g\134r\148\252oѩL@'1yi\26\22\24\190\232\166&\17\0232\161\232r\151\18\247\155bʹ♓&&\215c\217\219n\teN\249\11\129`\184\229q\\\177\18\205S\182\01627\171 \216Fῆ\252\132\158X\252f\168]ki\146\151 \210Ǌy\193`\136g\251\5\158\253{\23\232\213dC\21P\218\19qU\185\160x*\172\194F\2\137\203\28\28L\146\155\232gIa\137&\151\170\225\229\224.\246\141\24&\184\158y\176\133\130&\155y\224sɥg>g\185\21\30\136\243)Pк\248~\244\236\171\210~\190|\165\171\133Cp\188T\148\135\223\254|\196\30,\133\2527>\169)\161\254\179\235L\174!\234z\182\14'\6xns\\ŷ\245uW\246W\15370\136OD\246\174\250\173\153\178a\254/\nCu\157\250y%\23\135\161w\30Z\0119E\145\151\193^\155\183\202/\225HBj\143\162\168\194n!!\151\245@^\167\148\18\14e\211d\173\159\226\12\20\150\253\152\216\228kV\30H`\249\248\3\15)\136\183\214\246\17\205\232\130\208n\132\8PK-\19>\173\171a\14\132\182\28\r\8O\186[\197\2212ڴLkԸ\200\12^{\167\163\207\219\"(\18A\226\247\22\190ǣE\128\0\207*L-\134\236\132i\";!\157\134\239\244C&\1550\25ǚ\1Kh\u{5C8}bS\8k\7\193J/E\t\166\03150\181\194U/\151\165\18\195\220E݀b*+\164\177\14L\239\1554-KC\144\161\167(\23Oc\236\164S\2tP'R\138\7\6\16Ө\187P\149xi\173\4O\156\r\3\226BF\137\194 \129\239\1550)*\186\127c\206&.`o\197_`\151\245zm\227[\168\204\220C#ٚWq\144\154{;\176\193Z\1\240F\182\247\236\142ݞ\11nG,/lЎH]R\179\158C,ⅅ\133\r+\250\218\u{E62}\138\196\197\18\197=\180\17\22P\150\7\214R\2466d7\198 L\213\"t\156\244N\128\"5\183;z\153x\189C\192\240\204\2֨|\219\205\192T,\246ً5\7:\28]\137\152pNWS\145\1433\195֦\238\139\228\234\130E\182u\214@\243<1Z\254\"\132\1\rǓZ\15B\249\"\155\28\181b?\29\\\151\215\210\6\191*\254\31\239\216řϧ\208 \252\149\tQӪ\22\239\166I^R*L\170\5\206㎩rp\186\168;-\26\7QW\5ϻ\165\150t\192\t\128\11V\170\145սQ\146\177\24sq\129\253\242\4+z*\249ԯ\197\3\172\138\176A\135!Fg\232\137T\163\201\t̛R\20\184\t[\242\191\1633\223G{-\156\140DR\178\28\20J\167VuƙR\186͌\152\158\u{ECA0}\22Xъ\154ǫ\14\14&\162߇\198{u7\6\128ݒ\141\175\226\147\245\217\200k\234\245\niK\129;\216\25\1460\194\237\24\197oxL\185X\212sH\170\244\161K\247\248\210b|\210\239g\11:fZkpw\167M\162\232.\212T\201ЄT])6^\30\200\214\199 \7\130\230\233\1\205\255\161*4\239\242(\179\213c~x\131x\4f|\11\14\1431\255\165\248\216e\183\148\175V\19\160sѭ%a\26\23x%\149\173%\227\195\2\192Q/\174w\141G)\136NRI\198\225w\176\138f\164Fk\163\197\222\252ԏ\158\159\17k\148ۍ\172|p{\14\168ܚ\190V\212w\245\250\193:m>Ϭ\143l\149\140͇uc\252\237[\144~F\1924m\154\202\16YK\2496\23\176+<R6d\218e\137\162\152\128}8b\187\237?H\2319\168\21\ts\"a\254\26\250\154íq\11\164\7V\215\2&_\6\159-\136G\170\159\203\247<\212.J\20m3`\154\19\139'\207\12\241u\204Pz\25\21\245\241T\14jSu\18\0200\19Y\160<\150\232;JTm\131saE\31w\215\240\236\6kj,[\0\171Moh\210\"\8甍F\162\213c\202ڿ\u{5FF}%\1\23ۡ3\144i[\133\139\229]\27oԯ\162\142\202\27u1z,\249\135\195\250\191\193\191f\159 \"\21\176s\234\nÐ\26z\193[\208@\178\229\175\226\254\18\17d\141\3Ʈ\194U\137\n\189w0\234\7뎙<.$\0\21\129\234\31#\255\236B\245Ȅ\127\179G\228\182RU,e=&;\244\3Bf\255\12\237\232\226cRR\150\\5\132\143\238h\132\166\196x?h\3\133\140Z\214RY\4g˶A\228\187ʁ\135B\158\21j/\214|\193\148\25/\225\"\206h\141\195>\184\173\234\194\247\193{:\127\0208\163\131ʅ&\223s\221?d\159\r\140\234\242RA\26[J4\204\195\197\16\4\191/u\223I\209A\251u\235 \2411U:\224hQ\184\20=\205\241A\153>\174\11\24\129\3\27y\145\1401M\240H/\17\133\144\246\180s|e{\228\"\t\167\246Q\6=\141\212i\179'\137q\233ۃ\165\127\152z\208\20\221a>\197%\245\220\192\141I\184\231\144\5\31d\159m\23\254ԫ+\200f\178%Z\127K\179\23\239\142+\1775\174<\223M\145J\238\148\23^N\236\231\0299\231~Yor*\139\140\31\200r\227\165\17\230\146\14\153\181\169S\0209c\191\n?M\18\149\3\2111\141\0249v\241\202w\131\28\250\140/R.j\129\11\31\214\23\141\151:\250\128\6\235N\202\tV\226|{(\145\241}\19\137\228p-*Iw\166\229\184\6ǃ\252\139o\210\223Wn\204\14p\228u\195\224J\163-\252\136\158m8\198\221\193h,X9\31PX\229\137Z\175\18\158\230\204\223\18,p\149\30\11Aײ\247d\180\163C\202\248ːw\1894\251\218s\236\237\176\217\2\136\201@\234\186if>8.\1526j\199i\25\11\240\21ۅ\192_\211\243x\19613\0\0276`\132ă\197\230.\20$\1546\240͘L\149\159\247\8\191H3Kp˵P~\tJ\176\193\240\148\143\223n\216\215\254\237\163t\5\132\149\201\203\n2em\147\234\219+\185\136\212\2397ɐ\218\245\210pʇ\16\"7\242\181\4V\127\228\4\175\202\6攈*G\11*h\177\181rUҌO\226#a\236^:\249W\141Rj\189E,\219\2555)\189\138\244U\192\169\16\209 }\138\127)\139\200G\5+k\141ũ\168\221\12\135\23V\4jg\6sUd\174\225w\254\217\253E\3\2435\133\30\244\145\228\25k\211q\7\127ୁ]7\146_X\228\170\204\236\197M\241\202~\225\154\228r\189\129\143\221\246(?\196\196(o\8\169\154\252հ\141\194\8,\7A\186\173\200\12\24\218\3mo\u{379}u\171\185\165\t\28\152\15\19Y\17\242\164\162\195\25p\167\198\248K\1945SP\u{7FC}\29\162\137\235\24\237:\181`\15\130\130 n{a\21\255X\251\188\128\148\233۟\235\137}\\g\147\144\241(Mr\226\159\8\247\215\11L\162u\152B%Tn\166\236\173\28\163 \238\245\0\236O\134\223<\139\204n\27\185\20\219\253N\194\246\243\217Yv\225\165Y\130\245\226+9\151\254\144N\191w\216K\206\"NSe_\227v\11d\177PQ\136\189\145\200\251\151\247\2246\158\"\169\220R$\218\25l0l\\\255i\5\145\213ZH\179h\176\246\3\233*P\228e\175\220\242c\188z\230\142\15;\151\166K\198\211j?\198\r\28\141\218\0tO\184\132/\214^\253e\2\225\149\0123\229\251\170\162P6\173@\227\15\1733\175Ż'\146C\149\235+\185f\141\244\150\180\212\245>\247\140R\166\236\12.kv\151\243=\184ͻ\166\241(\172\29҃\180m\134\4\196\1925\183E\27p\149\181>\11\229\147q\166\152\153\204=lX$}\0147d\246\20\6(\12ù\183&\19y\220\2493\137\231\222\224\131\158r5\132ӊ\238\151b\144\171\182\213\233)\187\243Y0\148\170\239&\136\29\141\20w\191/\132uZ\183\154\171\221h\235\223\19\u{380}\225\127CF^\231\228R\240\1495\175R\219\31\167}\17\172\198\239O\251I\185f\224^\127)乣Qe\28ߘ\8\224H\245\131\193q\252\22\209\246]\133\190\132\178\2241d\186\139ס3\141\165\205M\136\178\243\249z\175%\20(\240\165˭\22+\220\31\195\205a\191\162\186;\0257\227\231\18112mo\151f\245\182,\243\22\188\255\165V\11-p#I\3F?>\231\255R\235\246R>\127\212\245\160\130zB%\7-_\163\20I\152\251T\246\"\196ZE\135'\168,s-\130\11|\2486\140H\134(\197\31\n\136)\140\208\222\230M\170\3\183\167]ʊm٠\30\171\185\4\4\235\212a\138\207\25\176\208BȽ2\184\1\144G\232f\11\"M;\4]\230̳\249\242h\15\199`w\150\135\139\2327\25\\I\31\2235\150\140\138\n\29j\163\130{\187\1\189\207\127\167)\139r{\1696\25\192\142\138'g\127㼵y\192K\247\22z\143\26^\30\1523:\244\149n 3,\217D4i\241\23/e\253Y\160f\165\229Q\1323\127\255-\1271\173i6ev\243\138\193I\197n\15\244_u\4\177'\151D\139\2\249\t\180jqx\19|\223\r\233\u{7B4}\244\218m\185\183\0171\233\243`s\156Spγ\19V\202\239\163\25\245P\148p5d\133~\137\151\131\21r\188\23GL0\129T\24\22\166\180+\233\150\194\127g\25\156\143\166B\148\246I\245\255\159Flx.\6w\19\18l1\228\252\140\31\210\rWxP\229\198\22\21$\241?\233C6\197\\\144X\217l\201\247\5\216\253\223-D\182\152\2017\177l\129\19Y\227\160x\26St\181\144\246\189+]_\\̢z\213_\232\2\193\131Q\155\252\19#\3\181n-V\180G\245\"\25?\25W9R\235>\246/,\221\24U#\4\18\r|\8\248\157\207\250)\177P\"\133\251\29\158],\166\216#\244\236\172+t\4i\20\7\145${\204\228\255c\239\249\24s\182b\208Z>T\242\214Q\169F\226]ދ4_\u{5FB}\217%↔ݔʧ\234R\195rsH\194\7\201\4\2329\31\202\0215p\31,\161\nmj\175\135j\157^OP4!\174\133\178\3*9\12\134\142\134e\18\0\225\204%a\232\218\\\19\174i\28'\167T\173\\0t\216S8\171\254p\153\143\153c\233\27\168\127\212C;\23\157\201[\18\255\20201\225%\248\155nM\15?\2517\156\141\252\226X]Δ7\197{\182\176\247s6\211\201\1966\0\174\206\221\14\1\192\185\204\255͈~o.B\172Fx\251\241\192\178\250\185`;6\14*\224\131\188\177|w_\131MLd\253\5\228Zb\155ǖ\186\137\182Oi\237\175V.\147\245\148L5b\188x\135\201P\180\233\217\234\248\245\129\201\"\234o\156%\237\215u\246f\22|\t\178\161\250D\254JK\165#\173Tڬ\16\145zɰ\150\170\179p\21w\189M\25W\127`bN&\201b\217U\160=B\151\12\244r\131\177%\197[۾6qp\150\21q5\130\133D\6O \172\244gn\134\2499q\233\148\15\146˟\191\23\178\22\206D֝4B\158舉7\147\167\29\154\250c\135\241\128p\1\205\0236\225\254\203\2351>)V\1288mk\250\193\166\191Tk\"d\225>\239\245P?e\242r\196\249l\208\20*Rv\190\174\175Bb\151\12\195\216ݏ\187\181g\182\173\182'ǉ\183\1669\211A\162\1939+\241\1701\218\210\255W\217E\247\17\206*9ˊ^;\2336\231z.\173\185o\21ǰ\151\178\24$\198Χ@x\149\180(\15H?r\136\29\218\193\220\235\211}\145x_\0147\175\175\129b\191\7t\8\199Y\169[7\179\228\246\162\2453\176\198s\198SM\21י\1626\223*\177ì\211OqG?H3\218G\131\23\180\150\2524\1550h\193\30\21213\127eb#\n~\147\239\194>\2TC^\193>\18\21ҾgJSΆB\215'\170\211wM\239Oi\188\221q\216\4L\248\189f\217\251Q\192\183\207\236\147#Mj\179\172\244\3@\129s\22P\192\243\230\22\227`\149U<\198,\143\1395\221\2\181?\145\223\25\234+\205\28\8'\241m#\149\137\195\253b\189\u{77A56}\160\219\230\162v\186\213\21\222d;-'h\8̂\145\130\228\184\23GG՚ \245\231\184\8\148\189\23G/\223Q։\n\175|\1458\14\181\14Z\225eT\215Qr\235S\141U\150[\205\242\156rX\r\12\142\1L\175k\218FQ\245\249ӻL\246M1>I\2\200e\206\28\159\160[b\225e\12`\247A\23\174\226_7\253~,\214e'\22\156\27\136\150\248\3\246qf\213A\tx<[,)ri\22\252\142\167\243Q\0042\11\2432\192\r\235\152\0036\149\165\189zi\172pi\226\150\246\164,J\145>\165\19\17\192\212ݹJ\194]\161QM\194\203"), {
		[5] = 76,
		[9] = 117,
		[4] = 64,
		[11] = 58,
		[14] = 37,
		[2] = 194,
		[15] = 78,
		[16] = 163,
		[13] = 10,
		[10] = 68,
		195,
		[12] = 200,
		[6] = 66,
		[7] = 38,
		[8] = 162,
		[3] = 112,
	}, 636)

	local v9 = luraph_runtime1

	tbl7.PB = {
		copy = v8,
		verify = luraph_runtime1("0123456789abcdef0123456789abcdef0123456789abcdef0123456789abcdef", buffer.fromstring("E\132\241\240$\214\ngZ.\227\248\209@\189)A\155r\2355\2141'\249b\163U^*(\21}Z8\178*\190\138a\172\129\133^\21JZ \7\172\246\218K\7\\VJ\187\204\211\201\251\" \168\4\"\250\1\209\2417\165\193¼Zh\213T\163\24\197\212\4F\176G\17\206\20\253\216#n\187\15\214To\1463\195\247\13124\135\141\15ޥ\14\1572|\193]\218\244\0312\221\247_\185\200ʛpx\160\140\7\29\180Xé\173\165\186\174A]\144-\185*\235MLE;\182\194\194R\252b\11\182UTB\20\208\218\248#/\22=\1\210o$\128\195тW\5\245\156\5\t\138\172G\250\223߾\142f\231\18\157\241ANM\158Yk\170\162U _\211F\2152U\250\228\25\159{7\\.h\193G\189\198w\181\245Zd\243_yc\17\23\136\138)\160\243-L/\144\131l\199G\22\253\249\241\253\238\253\254\30\127x\234\236\134B\30\237&\1\8\217z&\219N\161\131:l\142\231\250\172\160\"\246\237\18z\127S\27\161\180\233\233\236\212*\\\209\245X\148\208aX?j^e\30\221\234\20>_\153I\189>\153p\185\227\254\184\252\246\n]\241\243HHꨴ\27\209\215\19,8l\r\185 \151]G\5v\196dV\1697fʐ\238\28\186\140\177\197.Â\238\255\180&ф/\24+~\215/\221Nv\164\183H\132\1995\22\18t\245\190\130 \226\174\8\184\28I;7\182\22\6\2090*#eЖ\145#\27\181\199[4w\133\0\176\249=!\238\166l\252\151\131\8ƒ\2460\162\195\208\2452\193<<\6c\234}&TX\16\2289\165vĐ\127\177\12ѱ{o\255\190\214\26\205v\216o\187[\207g\227\246\189\219-}D<\206=J\134o\208\239K7h\254[eM&I\128\15z\143\179'\221\7?\27\164\"G\253\181}\165\167\18sO\139-\232\176x\154\143kwa\145%\228R_\225w5\r\154\253\199#.\175V\227\137\14\20\238\183\246\146\171\146\29x\160B\22\173(F\240\145c\151\212\tƊ\184\254\\Q\214\223qB\254\221]\131\160\213\246\7\130\186H\30\238u\165\190KO\250\15[*jH\142\143&w\183\173\220\8\232^ncP\206\243\130y\164'\190/\155,\241N\185\239\226\153\220T\178\166p\1\5\3\225\191\247+K\241\164Y\215`\172S\158\199k\140sm\227;\228\234\251\167ƽ\5\177\160;\137\239%\0187\137\212\23\215\25qc\188\202[\235\211ױz9\191\183\15`\189\11\187z\201w%f\213\209\234\200I\2094\198\30\11-#\208\r\234\31c9f]&\0\156&ޡ\252\16\7\17\253M\212ѝ\239\195\2413\205GBN\175|P\5`\23 \172{\129X\222@\163\136\247c\130\149\232\158>\144\182\184i]\129\u{5ED}h\224\224\247Cn\8!\241͵Q\231F\129\2471٢$\214az)\3\177aN\137\225\u{F57E}\148\212V\"\185\141\4\2014\131qa\217q\12\190ޙθm\184\140u\177r\191\29\208\0041\152\143\20\168@m\140\164!\"\1720\149<\234\168v,\232\220vhh\193\228; $ 1kdb\128(\225\198@_\164\24\215\221@]\248\182\221r\206U\211$\146\234̫\17\163\248^M\240s\178\250\252\162|P\172>\29Q\168\199Hw\135\157\6\242Ӌ\233)\244N\169\192\149\168K\140\143v\8\193=\140O\30\131\23\222Y״6\187\16\214\28\164\137\163\168\r\t\253\2202\131\163]\1625\191T(֔\244\191x\146\253%\136e\225\184\0/=\242\242QA\179\133\178\241\26e53\145\229\169|:\193\206\2420\250f\160`\149q\163d\245\244\224\219\193\130f\228\228%\nI\181\198\249\245\2483BeV?ӢpR6Y\245\0\187\244\164|\160Őa\31\199+\1532t\186\140X\176\23\u{F314}\179d\14\149\163\169\28\11\211\20-\146'O\205\254Tο\182\16\218\18nn\159\244\164t\5\12}\167SJ\203\250\30\23#lG[)\187\27zO+\135\212\127\2380\157CҠe\236z\129昿\164<\200og\185)\136L\134\27\204!X\232\\\135\198\232\1587\31Gx\252\157\226\204\2\18݂\11L\185h\210\11{\135nr\144V\138\4\160\19Dp\131?\175&\247\t\164\21\20\162bf.\141p)\130\\\133C\170\140P\24fԜva\30\\\177\n\21C\185Y\191~A\174O\235\15[W\202\215c\1331\173\212\"ӧ\139u\186\\\176.;\140\179\129$\187\191\18\198\2115\211\236.F1\"\178\159K\211$FzD\200Ǖ\181ܕ\23\172>\194\0211\166\202\238\191CK7N^\177\208\6\14\227\215;\158x~m\nH\238%\237\168\170 \175\24\185\224&'\250\161\128`\31\7\183\19OJ\130\166a\200\216}g\147\16,\161eJk\176\195\237lt\251\0308E\209M\171\178ii\158?\250\17\215t\146\252\6)\224n\1943\215\250?\181\204/L\129\159]bݟ\221\2061SO\141Q\247\242\227!!\134\151\180\247\222N\218#\174H\244\"U\161T|q\163\150R\27S\248fʰ\232n\156\141\185\172\201|\161\237\179\170-\143\191\170\199\205\14\29\197\0\219\204&E\178{\29\162W\136\26\132\250\228\230\14@,\240\1474\176\16O\212\228z\200\27A\147\23\2292i\228>]\17U\22\254ql3f\3h\131r^}C\158sVS\230}vgS\190\181^\r\3\160\2511Y\173\165\208~\5\30\0291\220q܊`\147\251\162m\r\194c\148:\179a\2488\192\136\132*\"\145/\152|\181S\145\135\237Ğ\1486\214)\190\244m$\5\26G\132\0ع`\254\4\21(S@b-|E\2273\145\4{:\154\7Ֆ(<y%y\157\153Z.\178d\254\155!\144@\178\27ۉ\2104\225\254\134\171l\26\16|8\190n\168.\192\14\191Z\172\255\u{F2DF}\176\31\1372\203>\27\140\158A\216v\24\151\144NR\163k\166\176\195\248\183<\161\252\n\r/ޡ\20,Fۊ\187\242\161w\179\134\142\142!\169\19\161\148\220VR\226r\249U\142k\142\212\26\225\237=\192\142D\249v\175]Ѿ\192\138\253\153\240\\\203\233K3y\230\5f\136\11\232\202\t\201:\165H\247G\31&\154\201\216F\161F.}\176X\144\254\181a\149G\146\175\185\216\224&\207\18G;\182\157O?\170\6g\200\205\u{7BC}G\225|\255\28BI\r^U\244\217f巷7\227PS\3\183#|\201\247\15$\133P\184L\204I3X\215G\224C+\27\159\29驗\170\138\225\166$R\241\23\189\\M2\201\248|\183I\127\147{\30\131\172\1830\166^\254٦/yR\4\207ѹ\12h+\147\208e\232\171\230\143\0206\0072\166\t\186\139g4\201&\221\4\177[l\250\2539\188\232\248\219\31U\n\u{5EC}>\249w\222\245\182\184\1388\157\175\248\184\236\1545\162\194\239\17\142^òH~N\175\198JlZ\31M\213gk\159^92\184\31\251\215\239T\164\156_\5\224\200\203S=v\183Y\157b^Q\157\18\193\233kX\191\157ٝ\227J\31\150R\220=jb\233\5\139\131\136\253\222ٺ~Z\229\199[\252\183\232pJ\156Qw~\211\4\176Q\137nڗX6\145\31\21)|\226\26`2\149\176~3;\236-\221_T\131{E\233\178a\166\19\205[\232\211\228\235\223Xc\187\171\213#ė\180\202^\24\0U\192ұ\207͵\173\182\202EK\140\233OK\207\237=<&V\t\2309fOE4\133\18\220P\232P\6KeO\149\1\201\203!\174\148\194\252\171\137\152)\199\2500I\148M\172\243\238\18\230H\174v. \214X3\252\248\150\190\229\175\214\199ꊑ\167\6\194+\250\137\189T\132SG\229~\30\"\217\199\25L\138σ\230\222\0\179w\184,\174\217\12|\180\1289\141\208\26\220\210\27\26m[\137\206\15\137\172\166\252\15\200\206\24\232\195\213/{\nK\229\236t\137\202\208?DX\132r\153\1691\217\7R\11\201\\ZO\243P\171ũm\141\164\132\162R\19В1\133\167\15X\178\21>\243\198\195\204\204\12Պ=p\224\tA|?yO\0D:\131\1730\204:\193Z\24\0(ҾZ\27'\233%\228L\25\128͘\158\140\253;\188\15\180*\30\129\6\159\142\241\239\222/\2$\172\159\140\1854EdUC\183\0277\178\246\1920\137\t\145-\240*H4\167/\147u;;\159\14Խy\226ڌ|\165=^\150\170Q\30\166\170\152\8\143c>\127RWw\176\246\1647$*\212']\15M\164|?\144d\178\27x\240x\186\248E\128\194\198\240\182\141\20\235\191$ۨ\174.\249\241!>\137\172M\206\241\129\140 o(\188Uw\249P\240\1766\214\225K5\23viO\204\31\230x+\185Kq\233Y\"\250\237C\254\128N\130\154Ɣ\131{b\238[\250\3\131\197)S\189\175\1v\198j\16\185\240N\179\147\161\170\248\170\168\19\31\227$\178\4\175\168\246\143\210\2|击\242\138\17\31\26v\186M\19T\152n\2258\250^\27HM\140\0\213\213c0\136\144 \241#\3\130\218C}\155\251\159\248\127!\252\182\140FY\207\193\237Y\180q\236\31\205\26\247ۙ\200Z\18\26\228\0\134(\239\233|\166\168\200\224\240\197\31\190\167\132\192\194a\166\137\20\0265D\251\161\236i\157\154\247ͷŗ#\247i1\230n0\138\237@2\25\0\198\5\203\4\136\191\219X AW\14\7\22\137ܘ\0294\129/\225S\169\173x\181\28Tf\237\4\20m\133\158J~T\16U\167\222\21\22\28}\8V\128\133t\r\221-意\207\1n\227\230\227\208\28\156 6\2524X\248)\232)O\152\4\251\230O\205A\\gf(5A\1823qdaq\161\253\t.\255\145\240N\135X\0249\t\220\14F\254LN\28\173\n{\2128\141Q\138\136\16里\6W/\149\\Z\28Y>\168*\158\169\164\195 a\232\179C\3\220U#UojR\204\230\143s\195^a\239y\166\219!2\153rp\167\224\139\252\0287\190\221x\224\156\166\166Db\232ay\155L\134\227\226\22D\203\217$\183\175\21\2217\230\127\247\197-\175c\247+c<~}\240\244\222M\165-\11\192s\208\232ڱ\188\219\236\208\23\180\15(p~i;G\135Y\t\189S.\171m\251O\185\186ip\251\134\5b\rC\140\166\161W\147\162\235@'-b\245\190\173\134Q\193\6\211.\226~)U\189\153{.\237\169/\146\184\236wφJ\148\145vO}\157 n\177\177#k\18\158\159\175\2\1720M\152k\1926\178\1\\\167\211\231\159\243\\\226\245@\21\170p=\232\252M\255\7\175X'y=\234!\150\228g\167\146V\172?p?\142\135\26\253>v;ʺ\185\174\232\24\176\201\3\160\153\170\193T\248ڣ\184:\172\192\142\30\24\242\193\\\191ɿ\25\194;\2\180\24ݰ\218f\248\161.y\215a\249ʳϯ\141\169\238[^\235\154\255\131\219f\173*u\254T0/WgV\249\147w\216\235?\148Q\213\11\212n\151\137m\174,\15\178Ii\224\207\127K\179\31|z\193\200\21\179\224\153\135\148\227Mc\209U\143>\147\152\231\22v\242\160t\245!>\164~d\209'\243\28\247\226j\229\239e\243\128Ov\154nm\186\26\25]}\169\140\156\211\242D\181@ߺL\23\152]\179\249\172|\227\244R\25Z\175(rݱ?\219\28\239Ƙtm\6p\137\29\27\"6\189\1644\227\16\237r\28\216j\18\247\142,yT\23\26&\131\237ֿ\149\0F\168S\t=\161\157}\141\145\210ŊB\155\224x\227X\1664\251\30D\242\1425\204zؕ\198\5\176C0\193\194\229\11\254\183\195\211ا\225z\196\214\31թ\228 c\134\2\206\240\193h\199\194&\20\206am*\152}\174\238\246Z\152+\190\157k\24\137\11\28?\2005\171&/\205n}.%\192N1\238\208\201P\143\168{\29\188\164\148\201\215]\177!Rxb\181\15I<\247ő\28\14T'\0181\174\185\nm[+\237\17{&\153\22\217(%\r\176\15\24r\152eya\17\150p\230u\210\" \219\231\129\254Ch\137:\212\15\150\141\248\216TV\165\t2,\17{\229\169\14\203\213\u{F2D9}\157\185\194\24\139\202z궴\218b\171\138\148h\255\7<\215MG\210\203\252\8\6#y\2088\7\224N\208&\131\240\128\238mrA@qU\144%u\17\1349jAQ\2\245\20\15M\8\18\232+\169x\22.:\0059X?\20\186\202\228\2\8)\21\27Y\184^sV\171\191$\31\1341S-6\180\192_\245*\159T\133\17T⎚\231s>8v\225\248\150^\248n\176f\141\251)\241\184\136\21Rfqȭ'\217\212V(\255\167ɍ\180u\1515\228\247N\196\201\212E\194KVB\174\131\134\233\205\226\140\3\190\2>&\250y(\171\192\177>\245j\136r\139!\134,\155Wz\31\16\182X~SXC\139\140(\141@\221p\243\255ù\n\173r|)\165.\214]\164\163\194\22i\240\149\26}\143@q\229\134x\250\244:0\249\21?\138\4z\222\231\169\127Ѳ\216\6\230\209\224]\141\246\131/\148\241q\19\159\18\rs\180\135\200\2516\\D\0\165\173D@\8\137\2170\127\155ɦ\15\136\156\142=@\157\200\253.\190r\199\228\150\206\1966\225V\15\253\149$L\207^\186\135\191\189\149\3E\247ypUkN4\196\t1\253\230\235\6r<\163\21\177夐Iyô\233\157iH\182W/@B\144q\168\231\251|a0\192\183N\185\185\224H=M\133\\hxz?y\1764\155\2326D\228oĐ\168\22\"\29\136j_R\232B>W&\176\182\239\220A\183\1)k\192σ7\"\235\134oԙ\153!\8\179\129y\251\182[\240\nI\247\228\195l\249>8\224\0n\205\31f9a~\128\196Z\157~\163\11\143|v\194\194\0\"\15\22J]\236\160\2X(\6\29\211\29\148\6c\201\31W\249\25\216\23\1901$J\177s\238\16\23\234\\\171<\127\140\255\141\237\179\250\5\29\186\136I\194\234M\193\136\14`H\190\0049\148\206\29>\2\242\250\236R#\198{\182ʎ\176\163=\29<\238Њ\161G\154\170p\186\20\1669\5f\185\204a\144\206\127\5 \17\184D\184\215^\149BLl\156\141\222b\24\"\215\200m\144(\219\209R\161\8\1650\u{F32F}6^\185\133\15\130\240O\248k\198|ִ\241\191\240\12s/\173\170\2111\181\229S^\28\242F\229\5\253\132\2j\191\11pY89\208\227\162$\162\228L\127\239N:\128\214\\i\156\180{\190\237\27\240)\168'M}/\\\169$\28\14\7_\178\246\161\237ߵ\138\21\14096\224i\202\3\224J\129\146(\14\232bJ\221\241i\7\213U4O\4\226\151zr\253\158\149\145\233Y(Z\198\26s\2228˃\22\7\\wyH\161ʏ\n\193'\187\248S\219B\154\165\204\232\130t\171\27\4\11z!\1412\149~\197\206\198\255\166\140&ҭ\29\155F\r\213\"\166g5^\7\185\234}\176\16ݧq\167uH4T7m\208c\2\238\255\18\24\163\229!\156A,\205\18aa6L\6~\134\141S\169Mh\229\27\251#`uu\192r5\244M\227T\27\228\150QΒY&\210+\16nv\136\14K'*2\r\236\237\231\194\222\199?\164爥)g\189\20i\182\160\4|\30\1867\0294\144\231\133UŻ\1839i#\128ʴ\135O\28\162\163\234\175Ew\21\210\23\22\27)\7\227\164D\22\172\149\31\178\18ǔ\250V\129V\251NҊ(\2248\166\250\4\2465\150\250\128fE\"\181wYōR\181\138\151\236\150\204\243\2422U\\[\1313\29\136$Dn̠\203&erӢ\214\203\220\25&\159w\220\240\195\224<1\8\136\31)\137\225\227\217m\179n~\149\253\196W*\6\238\0\2548\243\205EN\137j2\164\163\182(P\149\193\152\22\8-\176\232\227\201ѝ\195\16\233C\250\169\\E\138\222ڴ(?\16\213\235!.-\8`D;\26\237\16XWƤְ\230i\169\15\28\150z\153[\226Ve\196\211_8\220y5\28\169\0\3\168\142\255\177y\202-%}y,\202s\230\152\240K\172r+\0ﴕ\232\31\151\225\17\145\175J!*u#\218\"\136Ŋ\7\t\161y\233,3o̠\233n\177\185\161߭\127P\238\152^n\240M\143q"), {
			[14] = 35,
			[21] = 192,
			[9] = 157,
			93,
			[7] = 6,
			[23] = 106,
			[16] = 238,
			[24] = 102,
			[15] = 144,
			155,
			[11] = 151,
			[22] = 242,
			[19] = 206,
			[6] = 11,
			[4] = 201,
			[20] = 47,
			[18] = 90,
			[10] = 168,
			171,
			[8] = 33,
			[13] = 8,
			[5] = 93,
			[12] = 100,
			[17] = 5,
		}, 570),
		flag = v9("0123456789abcdef0123456789abcdef0123456789abcdef0123456789abcdef", buffer.fromstring("\162\168\158\200\198\222\\\237\4\143\25\206\17X\1511\173\251\r\157^s\215`\154\25\212z\164k\"\253\225`\222\255J\187~\139\157\242@\1\128\217\243)\214u\171\250U\n^\149\172\134\239\178\203?\249\159o\194\25\16Ït\154{\187\1701\200Y\202\245\161\171\8\"\140\161Dn\2\17v|b\251@ƑaV\30t7\177P\1998T\186\228\166j\239(K \178\249|r\3\21\242>\131++D\254J-\191\224҈T\155\250`\193'z\251\136\187\162\229]ɑ\1730n\176\249\0044\31I\182֖\24c\3|g\225\218%F\198Ȟc\169)H\4\2371i\251\159R\1\160\142\133\233\223s\177pz\162\155\203\236\2\183\127'v>a\14505\234\16\251M\178\26\170]\243y\5<\148\147\228fs\156\175\176۩\250g\u{5FC}\191[7\195L\30\147\20A\134\136\221D\191\128\158\30\249\12\28\244\150\224\234D\5l\160y6+\190\162\232}\249\18\134\224JF8f\189\216ܵ\21g\183W\31\172\245%L\189\20R2\15\31\27\202\248\156\181F\176|\171O\229\205\214X\171\19r\28\155\135d\224\220;\166\128\n\1\164\198Vۮo9\r\154~\177\15\137)Q\184)\133\6\185\189\19݉@S]\188*\28\232ՖWb@_\150\184ֱ\1812\144\172N\156k\166\130{{ze\231\230\234\129\223q\28^\178\234 \200A\214}\140\15u\198d\158C\30\162p\152jV\177)\1680\239e\166tJE\12\129\236\1747i\234Ьz\11Sc\197ML{\185\201a\183Q_)A\203\23]?\134\235\235\156\31\242B\201w\183&Hmdx\251p\184\233\1482Ѣe^l[`\t\1792\171Z\146ց\229\169\2\171QRNah~\175@g\188\182\14\207\26,\192\255\165\246\168)\240i\n\24\234\214\12h\208\231\180N~Q\24\161\165K\158\230\242?R\182\132\224\135\15\204܉N:*\250Ej\146\252\132\182\170\242\221\248\27\139\172\212\254\127KS%\241\145\214<\156\133\198\26fB\138`\140\238\238g\225\206\240V-3\26\219R\4\175\2\216@'\238X}\180(\227\239\5:\191T\216\11'\176,\221\8C\221Zc\178)\229b\137\25\139\229*\235\242\195\202?\149\214S#x\220\127|?\127\146\234\221T\2520\233!zOYT\3aq\164\210/\129I\231\235\7\163\219\193%mI-\1\139B\246J\245\173\244\182\167\205Ё\198>v\12\214>\178VQ\253uK\156\168\2381T!\172f\"\229\184\235\168x\198;T\159\142\203\235`٢\n\214\230\238\139\241\223.\21G\207F\227\151e\194\199\2189\225⏁5G\21]Y\31\247\217*\149%E\246n0!\137?\175\157\228\28jxc$0(\171A$\5\236\239\30Gh\r\159\12}\136\4\170\173\208\220m\239\t\183\151Yq\189k\192\0\3*\203h\250\150\135\191&\"GM\26\193'J\180\246;E\249\209\227\r\223;\164\4\203y\142a\142\1623?\149\190\173\200:[\178\162\226\172\u{86}+\26\244\160\nG:|\200\226\1554\204\240\148\233\155\236G\131q1\7\1563\233\0cl-w8\169!\17\183\27\146\195ro\132\3\30\23\1294η<+\228[\187?8\8d\7\28\141\215DS\168\243\197\210V\151\145d\222T\245ս\235\n\20\192\n&\188O\215\200\229\166\255\19ky,\170\231|\128\219YyT\183\154\r\180\133\156>\221J8n*=\136\2120\238\17\247\200bF9\221\220w\1338\27\8{v\237\181\8\195j\29\173\196\208\6\206\208pq\t\234\163M\233\30Z\132o\129\133r\1816{\243.\220\21\21\247,b\241\208%|a\207/I\237\230\5\190\2\18:\165\159\164\242\163\207\242\144\21\197\194\"\161\178\203\127\252\192̀\1\130\19;\135\179\200 \239P\141\155\29\176;H\185B\17;ַ\234I\252D\164\147\169;g\18㼙\225\24\240\251\163=ت\136\146P)\7I\31\162\30\208PJ\1304{Fc\29\208\2530\175\242\7\207\203\2087C\183<{p}\127{\137\3\222u;\2248\30\162\12Hۮ\208/L\28u\185\128\199\222\23\223T\230\221\22;\149\232\206CN\164\25m\160\27I#qWKn\241\210\209ppM\153\221\12i?\208\192AT\233B3\240\176\2P4|\2430ʄ\246\249\173\180,\166/\163f\250\237\241\130z>\249\138d\144oK\139\160Ή\148\235\27I\"/\202c\213z$oSE\15Z\r\135EQG\155\198\208\224\2\28\179\158\133\128ƶ\138\169\28\222Ry=o_\206\5-b\142\196a:\135\218R\211\248C\21\145\226v\21520\178*\209Ƌ\183\203\212>\228\16584\1809\165\242\172IX\188\255\203\251r\177\182\239\232v-\191\190\157\246\247I\224/\152R\220\211\254\213\3LC\240~\220<\249\25K\142\245ܗ\30\163K(gr\14\255\202{\6\172\237\242o~\166}++\167\159C\181F\0\23\226aj \7y\12\168N9\130e˖/\246\17\248\19\236pe\160\179\246\153o\159\248o\16\236\132m\164&\239\230\250*]/ \227\6q\156|\164\150yv\249\134\232v[\217\19\249\1323\202\248\137\145$\158]E\228-a*\163\\d<\226\253\223\244\132\199\243\226w\141\165\25\205\18I\7\140\178\140\249\208(\18\187+1Og|Ǘ'\173n\243\237r`\27\3c\234)\144\29V\189&|ƽ\17\244zp\218\219\11Z\\$.V`\234\7X\177y\196\28`xZ:\197s2\198r\212\t-\220\15q\173\177\133\163\192[:U\238\225@\207\228)\155\0\211\209ٖ\207h\173\2362\227\0\249\144\"\18\139\8\16\137獤\16\221#aH%\11\239L!8y\1ԲFŕ\132\23\137&\248\128\223\195\n\22\180]\240\164\168\255\2536-lӀ]\5D@\178\241du\150\6\214'\129\207P:\205\11&\173cI\132N\201B\141\127\\\193\218\235\239arR\r\141\140\"\25E:\247\138Y&\197߰\31\172\28+\140]*\131\161\16\18G:\129˙\207\25\249\"\185\7\225`\210\194Z\187\133\239\241\246\255z\180\235h}\186\225\198\15\134F\26L\219\213\229\247T\139#\\\255\130\191\129\250 \254D\127\225n\132\161O\128\153\195/ٗ^\31\23-\"\20Kp>]<\182]\6\5\197#9\228\24\21a(\132\170\221\220\4\17\147\\\1786/\192\130\162D,\231)\142\129QϤu\190[\244\23^\141\209\200Z}d\253\12-@T`\135\t\11g\162}\171[\0123\30\200(\203U\133S\31x\251\28w+\194\127\242\219J\149K\26Ʋh\179/\132\199\229:\225i\168\246\11\148\149G\132U\224\241\233\7\206Q$\212Vۘ<6cɽ\227#\\\179ej\216\228*\239\"\\?ɰ\11\160\\3\144jWǷ\233\145\25t\rF\176\136\239\169T\249\144Z'-\156/>wxD\240J\171Ta\248z:\27\229\0058\0036\173+\12\149'\n$N\227\137b ?>\192\237\179䠒\187\197\254>7~\14\162\128SL\144\225\21\0211\195\245\u{BAAF4}Ў\164\208=3\215\192\167\234@\174\251л\26$c\1\1823\163\198V\224\201\19#M\24X\171\241/\14\169\198$\4\22\188\6\6\174{\174\243\152=\204\n8\212?\15BU=\243\242\175\176\195\238\26\147\135e\233\0\178\213(\155=P\204\211\224\249h\16y>x\18\181Y\234\212\219\206\236\254\175m\164\251H\29\180\255N\31\17I\22\225\214u+V?_\139\168\227}\141u\159\165\133\229Nط\2494\211xb\174\132ᨔ\232ߴ\181\133\164V{\154\237D'\140\168\224\161\223\15\174\235Z\222J\2\190\212x\199$:<i}P\166\242\14b]jfoZ/w\225dB\245\156\184\172\220\12\184\30\247O/\191\0\192\160\184\20\236 \177\154\132\182\217#\190RǚsPh\210\15\251\246'\129\249G\177>\137\216\6\193\228\203L\181_\217!f\155.Xq\14m\17:\30A\132\172\145\197\234[-\159\248k\253\28\172<eg\165\254\222G\157\143}\18\147ŘU\1524\186\224\137/L\144Уw(\166#\175\127:hq@T\177\158'\180<ߏ\195\\8> \252\220$W\r\221\31\134\25\214\193{\150\163b\174\194j\r8W\180\158R\19\26T-8\241~F2j\245&Cq\31/˷R\rݙ\224\253q\135\162\251\160\193\133\\hEw\214\16\"\20\243Q\136Չ\204~\213\29\204g^\237+4\7\223iG\224\129\0210~\217\15h\128Q\8[\130*\151\18\2H\156\127\247\240\155~\163\3\28\164It\159Ĩ\6\170\156\194P\215\31C\170\138\146v\191W\254乂\25\215GHY\134\252\4X\196\6)\181\181\135\160\2\182\168\222r8\18\1\253I\145\24\230_\202\244s\155Ӧ\2044\161,\162\234n&\161\181\130e\138\7C\244c?\183\165\138]\n-\230ۇ\7\176\167\207\194Fp\188\187\173c\1\155]\201R\175Cg\188\1݊\210\241\146\156;>H@\15\135\205\246\186\154\8Wt\12\232\193\167\217\235\244\137\1a\144\20 7 \172Z\156\128n\245{\252\249\246\254\246\221Hc\175\151\201\200\236\233\238\175O\185\223\234\171\30\19$c*Kh\166\157w\205\27b\19\147\31\138o\15?\236\24\197\22\188\138\215C \132عM%NX\3\2523\154\233\2028Y\138\n\156!\28=yww5\192g\171nN\227a\169\229\208\19\160\135\136\195@\144F\6\165\134\17514\26\28\n\0192\255\\|\18\198p(\177\132\162ޚ\164=qR}\1881\t\161=\"\249ͰYBO\146\27^\236V\127z\156\1804O\252\140\224f\133\170\18-$\211\247\175\231\193n\215\25\165\198\18N\176N\242Mf\244\255\132\130\15`)\128(\192\222[\172\249ճ\236\192`\152\130\175w /\24\175\165\164\143\177\145\179\222\t\t\157\140\1678\2464\136\140c\131\144N\184\233\188\242I}\220\201\241\137*\136\128\155\239-\171a%\248\231\18\172\135\168V\127E\252\136\188\206E\154\189\1806}\245s\30΅\198%x\244\154\222\193O^6\224$8,\165\0237p\227\177Ѹ\201-,\248P\237U\180\248\7\170ʐ\241-i\255\131\15\131<(5\30|\8'\135-\241\233\143Ij\236\196\205r(\3F\127\150\248Y?\132\3(\218H\254\28\237\215\242\193$zK\213Bk.~M\246\4\1593\204\252\170I8d[\215ΎS8\21C\169\245\194?\250ܿ\245\144\"~D_\152\25199r)\232\28\236\162A\169=b\244\244G\254G\211\193\5\199\24\143\25FV\153#\179\226\189\20\206\20\205\1923\173\168\249\140\11\19p]\157C!\240*~\137\211\127\27թ\228\156/\214\26\1e\31\200\237#\141\220\216\28S\236\232\247%\167\0kN\129V\135 \\CAZA.\149L\7\0\2/\146\168ɽZg\140W\1{\29\215\203?\238bp\162|u\241\153T6\148\164\221\234\139\206ȵz\217a\138\164\\\151\188Vd\226\1487'\203\2460\242Gh\159\214\27\159\236V\7\144\18\4\172\7\237uxk\244\201\231\17/Q\200/\\\213\201O\236\rgv[J\\\19\224\177۞#\rc\239\12'V\217le\187\0085\137\186\129\176\1438\203\251\167\230\249\nd!\163\161\147{\22\162\131\212\247\155\149kh\204#\132\195m(L\157\162\127P\241~b\192\130\25\233-\11/\250\209\247\28@\207\15L\133ǹ\11\192_\130\r\206OaT\241N?f\150\n^\222/\19zF\166~7\180'\226Zve?\236\27\145\0089\161\220ㅡ\212\30\163mQN\158b\253p[\6d\233\184M\24[H7ЈY!\t\214N\190,\129&\186RX\138\135\253\163̼P_䫜\17ڏ6\131d\236y\7\23\133(\130\151\6\181\21;WEL\178\t\199(\11\11ղ1\209\218\247,|2~@\164<\134\161\194p\129\193_\17\1510b\\\148\238\184\218F\241\26\21\178<\249)4É\134\190P\227\27\u{5FF}\23a\\YA\4\5\26\1710\167\173\251\162o\1586:\160\14\250\"pI\142\27R\142\239\01666\195K\145\2049a8P\215E\228\244\166\189)\4o\227H\215\253\187XM\175\22\22C9Y@)8\192\190}\204\24\142\255ժ@\133\147\0162H\2\246!ٖl~w?Z*o2\236<\156\235.Jށ\229|\166\202\14\179\5 \165\232t\193\25\210\220\234\244@W\5\141Qv߰\143\150]\210\29\201D\u{9F}\149(\237\172'\141\198\29NC\185\206,8\22\141\169\195`\151%\190\237\144\7L\138)}:\129\8\165\224h\157\229\185\0031\249\8\163\232I\187\219\242o\131/?\149\8\184.\178Ș\180\249\18h\1757WOC\237x\185F\144\21~\181\144\238%\171\154\193f9[\242ɚB\7)(\171a\225c\133-\27C_+wq\nZ\179|\213\18\157P\157BC\236vǓ\186\153#\184e\172\r?\163Jz\30\174\2155\22P\178\172\132\12/\252\30\20M\196\209%\255F\153=\225Fh$\6u\251_@\128\141\30\t\0278\177\195\231\0256\247\rC\140\229z֔l\235sXd\166pB\21\214\23\141\162\151Q\156\142\4&]Qh\193\188ӳ\141a<^\239\19 \191pl\17\28\213\nD\14\23R\12\2216\246$@\178\161\213H\170\130\142\180\129\142\177\18\0048\245\183\163\2179\29\0\159l\251\187\159\19ՙpw|\156\155?Y\6F\146ˍ\1621?\208L|\\cK\254^\2075ͪL\154C\159s\160(\3\233B\200\29I\2\31\rJ\128\181_\11\225\180\2\193\255c\190\135\7\244\194\212\n\1542\6k\238\5\134\128\14A/O!\1؟\211\29B\252\194\248\173r[\25=fbfo\175\23\136\19\170p"), {
			107,
			[5] = 62,
			[14] = 164,
			[12] = 146,
			[10] = 100,
			[6] = 220,
			[7] = 168,
			[15] = 77,
			[11] = 93,
			[3] = 101,
			[13] = 12,
			[9] = 157,
			70,
			[4] = 143,
			[16] = 175,
			[8] = 87,
		}, 385),
	}
end

tbl7._detachTabContents = function()
	local manager = tbl5.bK and tbl5.bK._manager
	if not manager or not manager._tabs then
		return
	end

	for _, tab in ipairs(manager._tabs) do
		if tab._contentFrame and tab._contentFrame.Parent then
			tab._contentFrame.Visible = false
			tab._contentFrame.Parent = nil
		end
	end
end

if isfile and readfile and isfile("LuWare/key.txt") then
	local txt = readfile("LuWare/key.txt")

	if v4(txt) == "string" and txt ~= "" then
		tbl13.keyValue = txt
	end
end

do
	local httpService = tbl4.HttpService
	local players = tbl4.Players
	tbl5.c = v7()
	tbl5.d = httpService
	tbl5.e = players
end

tbl7.getGuiParent = function()
	if v5(gethui) == "function" then
		local hui = gethui()
		if v5(hui) == "Instance" then
			return hui
		end
	end

	if v5(get_hidden_gui) == "function" then
		local v8 = get_hidden_gui()
		if v5(v8) == "Instance" then
			return v8
		end
	end

	return tbl4.CoreGui
end

tbl7.protectGui = function(arg)
	if not arg then
		return
	end

	if v4(protectgui) == "function" then
		protectgui(arg)
	end

	if syn ~= nil and v4(syn.protect_gui) == "function" then
		syn.protect_gui(arg)
	end
end

tbl7.A.showKeySystem = luraph_runtime1("0123456789abcdef0123456789abcdef0123456789abcdef0123456789abcdef", buffer.fromstring("\6aw\171*)a\252\164j\222v\136\228S\245\158כ\15/\208\235\252S\212\r\0232\1~z\6\8\28\236\6\139\142\15\160\250\23J)\207mPF\211Av\194)2\168X\235V{g\196Ԓ\187Wrݾg\127\163\164\248k\17\171\4\128\205V૪(s'eA\29\151\221;\23275\163N\147\0212#\6`\195&饓\196M\197'\141\174rD\130\218\236\247\12ym\239}\1808\143w\211\27\1526Wgl*?i\24\246\132I\222\209vu&\205\"\133\247\15\214܅i\167\238g\237\3\141\n\150\188}\158$\197\2\182\18I\243\226\5\185\11-\7\136\24\240\245\214\205\217\223ĂB\25\14\31\249\163\195]\152\192\151-V\128EG\190\174\249\214\0036D\131\218\236\209\28\31\197\5\185\188u\t\241;\29\192\0\0]\145\148\18l\167\2\240\225eP\129\29\154\207/,\183\152E5Iy%_ዒ\247\210\\\7\235{5\u{8B}\163T\14\206<\nk~OI-\11\157R\214\236\165$\173*\223b\174e\31]S\193\203z\t\253ɗ\197ɬѝ7>\178\172\5\8\155\31\149\244)\130\6LK\156\2468\239\153:q\179\216\31_JCEG\2\166\n\192\164\182Ô\202\25aAR\206_.ؓ~\246A\187\244\25\186`\202l\238\197\5\187/\137\255\223\3\199\12\\S\210V\155I\7\151=\225\12$\212i\197;\253f_\185\156\202SLv,d\196\207\252\146VY7\255P\254J\21\132r\195!K\149\16\134Z\168\204\31`\166\204\29\228\0 \0276(\228\192\144̥\1770\2369\197\240\170j~\143\7\244v\193\244\190\20\145QY\1677\164[\2051\6\220 ̙\146-\18\2104?\254\14\27\4\6ӽ\225\161\217\31\186\230\230(xg\140\173\130I\217}QI&\233\231,\"\164\218\222J(e\134\247tg\\\167\251\222Õ\231\239\227L|\169s\227\11\150\155\175\170\202mHۗp\133\194v(ȶ?SR\190\25\8&\193'\206=\16:o,\246\1843\3h\168O!\30Y\"\173I~\224'\5\161\177\161:n\130`]EYX\195g\21U0\176@[IE\181\133\138\215\4w\250\160\189fl\24Z\19\\}!C\174?|V\\\1408\130t\186\129R\234\225VO\206[\0\195\229\229@;\179\221\19\6\217<\6[\199\2391\2371g\248j\21.Y\16\t\183w\235\244\237[\154\0035\168WJ\143\176\160\140~\131\225\253\20#\180\222K<\178w\26Ơ\200/\253\255\158\184&\24:\131,M\233\11t\245\133>\133\253eXV\241Y\249\141@\1729ȯ<S+\209\244V\179?2\1736\133)\210\3\141\200\2518ۍ{\nB\221Ώ\128\144\176\134\167b\208*\206J\204\230DG\20{\28\146߮d\142:\238\180P\138\134\188\163G\203&\179\192\5\r\142ϡX\21\162K\4jlQ\249\205\29bX\171\249\14\161q\23H%\142\155+$\230\14\150\29?\241\243\134`qL?nJ\190\178\204\249\158t-\253\246\135R8Pc\186\4#\153ҬԼdjӘپ)\243\2%\1437\172]ڨ,\184\229\201\17\188E \239|\150\175\241q\165=\18\204Nؼ\152\169\218$\210\r\205=\201\253\155&ܖ|\237ˠ\16\1\173\4L\2221\140n>\27;UYd\21X\220,\r\202y\152\rN\197_\219a\203\2110\167\162zP\22\247\186\14\n\161\136bH\180\147\232\145Q\11~\200\4\144wk\231\135(\161~\149\240\185>\155\25h\\m\154\14\190\0\213\4\152\248\214x\145Ǟ\191V\193\225\139\31%\198\193\229\138\222#\174\151^\6f\235o\209\192\243쮹\237qe\234\166\210m\18x\147\220\n\231:6b<\7\2\170NǨU\176\175\25\211F,`%\130*\127DӐ\185kU\183ӈ\194\249\204o\155'\206\241\250\222{\142\248~\131\31\193\241'\157\199\245\180\210\243\147\148W\175\0162\205\215\29zb\252\31\0245\130\134t{ײ7Ć$\5Xi}\2194\138z5\205?\200\218\232\202@EaSb\164\143U\137\1\142\147(&\150\133\179\14\219\241\160|B*+h\231/\128>5\235\135\18k\244|\8\234[\214ؿqMp\0\15ת\2\246\159\251\1339!\163\151H\7PȒ\133\26\16\169\129pjϽ\239\174\248\"\209\192\247\159\217\239\22\132\197\245\1807\208V\138v\154RZ\249x\15<\238Wo\u{5CA}\245N%lU\227\26@\172kI\138\131\169J\159\7q;\1750\212P\127\152R\133\19\4=\2558깑\145r\243\12\242(F\232\195\2134\26\127x%M.6:\140\189ƶ\181\16\2054\2\3Ͷʞ*\173`Փ-\248\173\29s->\"\187\173\137Q\216\225p\0294\245\151\224\11\141<[Q\132\240\169\134\252Ĺ\167\229E\201S5\243ٴ\158E\178\235\231\22}\0055@\171'u\1\220B\151\14u7\204L2%o\153\192\226##Z\0U\141^J\231a\178\0066wǩ\242\206C\133\23\188\178T\140\6ƥ[\181#\235\26\153\232g\28]\177\181jXBi\205d\223`R\127\241$\144\182\229\17P\199\\:\234\229\152Yѝ\216\212-\02583\211%~ѝ\138r\255\188\7gʹW\136\19\185\1328\187\229\138Sz-\ng\200\26\3\209\253\205'\15;,a\n\220v\189\186t\133\159\159C5\155A\156\1896\162ur\\-\6\235\175\221U\151(Zg۶\153\235W\252N(\254\27\30\128\181\233\150U\191z\159\141z\136\127\3\190\239\191\4M\t\152s\214j\129T\23\27\27\183\187P\190+\192\140 \2220\173\225E\232\159y\190j\135(\"\231\7\234\140ۄ\137p\213\192X\146\29\23S\247\14\229^\245\253\155Z6\179\216j\137\159\18\243`y\20I\128\148vJ\206Y*\16b`\179\30\27\255\u{8C}gq-\1754\158<\155T!\239\16Ը\239\210\216\245E\2396Lx\183옑y\228\230\151\251(\238\216F\12\203\200y\12\182v\180Uc_.\194.WT\1785\255\143\19f\222\254D\229C\181^0e\215\246i\148Hl\210\231\194؈eS\169.\127\11\171\172\165\142\199\18ڴ\168\237\18\204fl\183\232\14563\164\233\209G\221\246wZd\213\n\133\145\1385=\235\228\220\2\130\29a\11\245\224\145\127\19\22\149\183\251\27\6Y\14\30\129\211S'HM旛\211~\182\246\168\19^\192\4\177fp\220X\158\165M\237>V\17\194\12\1674uC\128\237G5U\139\203{\226\187\249\209ޟ\134\156=\201\238Z\129\253\2510\142+\3\181i\215\26>\201/\127,\235\21\2029\197JL>\t\22\31\\!\3RxM\127\0\244@\r\5\2?>\182\28poES\30\186|\190\182\220y\229g9\238\215@|\234\207h\rx\143W|\226\130\212Q\239\11\12ŋ{]9\218\3t\156\182\240CU\193\219wP̣\"\2539b\28\153\18\161\135\1\200W\24\128\231\26\217\229\197\242\15\159\198\251\211}TZ\236&\186\226\148Oh\1506eS\202l\172\242\185\148\251@\228\5R\138\167\199K\206\2431j3a\185u\254\20\140{Q\249Č\23M\2326W\168\138\164\147(\217\228\210\253;X_\208\245\195\222U\169\5\181\231\238\247\"\nhxJ\174\190ǒ\r{\3\162\26\127\133y\254vX5C\189\135^\139\132\221\212P\0\246\142\127\241\239-a<\131\148\27\251\27\165\239\241u\"\254\145\145;t\196\242,\237Pz\0001p!\0\142\24&1\221\216\228Q\252Ɉ\157\176\227\7\219\244\164D\234\6q*\232\194'\23<\137Ej\0190u\168 \167\136'ￓ\137\2\171\253\201)\233\230\136\15aN\180ODS\232\240\188B\144v~\138\239\195p\222t\148o\0213pD\248\0088!\249\143d\201=\195\31cR\0\225\153rA?DN\2400&U\170\163\162\201\30\185\11\214\219\219f\131\8~\26\208=0\251\158\127.\133\5\224O\0.\169\1896\248\168gχ1\4\239v3\207\216\241\173\30\152\tf\135\30$ہ\178\200T\23\194u@:\159\189X6\145\238UH/\176\27\165Q\22/\27\2521\205~\231\151\197\235\250/Q\181\135\196Q\146\192\182\12\142\152\179$\18\1560\178\158y\229z\16\230\6\174<A\160Y\1\7\143\255\129\161I#\127I#\209O-\147\143\18\252i\179\139^\18\173\151\253B\6\20\181\8`\183\4\211\253\18~m\155\197P\29\154dO\130*?\2322\236i2q]\127i\25\252\128c\200\192\186D\193 dOv%\164\197>wv\162\t\160\186?\20y\135\252\17\17\252\228\193\162l&\179H\226\228\181\26ß\31@\225\17\210\206:\"-4\6\198\228\26\18\236\1\228\176QƊV\134\167\219\2\150\179C\178P\15\31k\195\219\254\204ױP\130\208\4\31\149\20\161\159\147\2238|\245\133\230\159\254\192eF\251oSD\237\2113\183sQV52\142)\1Ǩ\5\195Y\223\211\31\7\173_O\226!\190\247\6\155\180\226\1781\127\8\236o]\n׀\167'\1986\2\0081K\11\151vr\133p\224,\254gt\134\228w\21\191\136\171\169\167!\181i\27\212^R\"G\189~\251r\179\225\28\149\14\r\26\230\224\131\243%\157^iK\232\27-\186\218\5\254\139\141!r\218\202\208,ɰ\147\142\183\254\243\152\181\u{5FE}!\158\243\249\14\206\208\17\252\165x\11\193>\5C\2317D˒\224\186\26U>\134\197\16\223p?/\191\250\139\249K\148\219\31\252:|\175ru\231\176ɛh\234a\214 \129\164i\132\192\196V\136\245h\153v\141\201\193\242X\233\4'\222\8\160Ϋ[\5\17\254\4\175\193\t\171~\r\195\221N\27=Ԗ\136\229\234\230\243\163\208\18d\0\165\223Z\182\204L+R\2425~\235F\199l\\\15\2392?\27\127`\142v\31\234pʫ\192\166\239\26C\1\184U\209\25\137\2146\183\196\250\207@\166\1864/{\149\152\195#\138!\197\n\235\139V\193\238\220\231\236\229f\216@\128\21r\131\127\168S\2\234_\188\145J`xŲ\167\28\198)2\238:\147F\169\132\130\16\235\238YD\220\23\214g\191\245\t\29\219n\14:'\167U!ab\31\8\136.݅ę\1626\132\25\"\190\199\198?\137+\1532u\184\236\16\136@\167\149\172\168\181m\193\238a\195\214#y\190\129\217\199||\225\255<\131\235W\175\160\154\4g*To\r=hFhW\145\0312Xp*\208;\228\160?\231X\31\228\205Sq\1\t\203֧\200\6\246\166L\1881v/</\153s\203kof[Ƅ\139\174\224\240\nb_1\252\156eJ\166\233\22Y\4\135\233j\146\160\217h\22\252\133\142\242\r\27\254U\253\191G8\251\193\155\26\127\178\138\236rb\243x\31\255\12j\237\20^ǡ\130\127b\190\27¬9\187\249\130mt#\213\5W\129\169\183\191\211fG\159\130#|\187\2340\227\n\240=K\131n\212\30\127\182,\172\2455\30\130\247=\133+\220.\138\184\157\19\203\217Ъ+\234\219\228'\27\15\251R \173\144\28\129$\190-\202\230@\154R\151\172\200\208\20$\129*R\200\240q\234\226\176\1958\243B\170\167)\171%\18594\242P*\0\143\215\234\170{\1\30\237g+>\150\25\30\1558o\172V/\147\207\16TұH(\255\171;\219\16\128O\rJ\7z\133\141\131\132\"_\220\246\178\195b\3\153&œ\127\142N<p\145v\2309\160\1593b\139/k\225(m\2490\28\136g\190\238$]\144\29\215`\169籏\187\234hl滋\220\245Ț\247\200g\199P\129p\27\252i\160+c\225\11\216\r+lh\154˧{\224\23\219\249\171\231>h\199\u{81}j\24Kr\238\16\139\227)(з\171\243gE\n\192\21\19=<\127V\235\20\137H,x/'\186\159C\1485\5No\142\165Kۇ\253Nᛙۗ!+0B\230m\14@K\141m\249\233o\141\175\193?\145\181Ig#\173\212\219~}P\\\190\1\187\16i\224\137\183R\212Lș\134g\134/\201\209\212D\130\161}8\131\222x\2551|$k%$\193\176\253\16_\169\12\26\29\238\230\195\252\205\1\243\31\249t\255\191\152\138ۜT\224}L\201(9>\191\166\2293}\20\165\161\236\1468\31V\23\251\17\206\30V:iQ\137WHG\136,rԎ\242\247,\232\174P0\12\248c\181\1377\25\168h}\208Ɇ8\24%\204{\132cT\230m\214\\v{\148\215!,\2079\236\137\0297\193\240hN#\5\254F\242&\180X`\17\196\212z_\28D\254,\227\206pP\nk\2\191m\160\144\218\11\239\"\204M\141\23\127\237<S\n\218Ѻ`ё~=Y\210[\194Rky\154\191&\2187\244\169Vx \17/\30*\174\145\140Ϩ~O\215I7\30\230\02483Ol\\\226v-\21\140Q\145\150^\186\2055\208\11Y\248\18NA\"\144;דz\0\148Ss\175\232\145\198\237\171?ccEG\146)\169\222\217Ia\160\163\25|\t\165<E\215I\18KQj%_\161Hz\172\3\n\140o\2\187\1465\205\235J$Pw\23\29얎\165`U\133\146\153\200\24b\149\"Y\159a\247$\169\184k\234\175\247\171\248}t5\218\3@\243\152ly\3\162\29\217b\188@\2103S\218\u{9E5A7}\183*F\146\214dn\21j\22}ͯ.m\150\171C\175\165e-\159\241^\144|\1814\217<\252\2\22424A \220w\174\16\22#q 5\193\30\0114/\199\2357À\177C\247^wbp\152\234S\186\151\136\28\193~\150+xjm\30\215\237\189\245O\2168\28\0\137\177\240~\137\221\237e \243ƎC\222\192sޞ,\2260\243\5\172\247\29/?\249&u\16\2077\5Fm\0\221\16\199\200\26e\151Q\224@\228\152\5+1\186n\14d\238V\129\245T\213Jp\r%_f\136\23a7\201que\1\173\146k\187\214\239\183\223\tS\134\162\173.\28\151\181\176+\26Ϗ\186\176\218M\6\214\27ZY\27Z\242G\4\147i\175I1\161>G\194\12K\188W\136?\146\180\21 \133\1#Ƥ\27\202\31(\183\194\205\23d+\31\182!\16\158?\3\140qSr\136?v\144\231G\240c\147\11\163\146\239\169(\141\164vSv\158ᮄ>\238\14\196\221}\150|\209s٤5\237\193$\204?\141\171\1721j\19*F9\248\238\145\208I\246\t\240ƃ\154\157\26\181G\u{601}bk\n\223S\188\137\134\135p|O\1 \150\4i\2209;\181\216{m\236\163h\230ػ\3=vGgL\136\154΅/V\11\154\0191\137\224\241\200o\188\170\151\r>'\153;\250-\5\174\254ǭd\206\192W3K\165D#\160)\14\241n\234\130\2374\25\143\191B\30\249(u\u{5FB}\177\214u\197Ⱥ\150\21\251\231\212\206S{8dU\241,\187I\232'\163-}\30U\196Xߖ\237\204cb(\2\231U\28\4\161\143\244\24\226iڛ{0(\212C\155\250\134\5\192=2\24\12x~!P\148u\145S>|\201u\224?\186\156\174\232\235\15>\6\225i\25\28//Q.\129Q~w\166\rQ\218<Ŭ\210{\226;\162+\1\189\140\3*E'\3C\2061|\227\231\160\27H\217i\241s\186^\232\208\233\164\22\183g\161\150u\160D\201\197\19\236HV\210\31\223h\181m\0\142\232\150A\219\24\170\1728\236G\188K\12\1925\186\r\172\226W\15NN\165ٷ\1506\252Fmd\6\225\194v\168\231c\1\15\184\21\172\222kh\206ka2\216nB\157\2269\240EA\168\160\164\231I\174G\11\176\212\30\t\171O\127\169\192\197A,\150\151\140:7@o\18\148\178Ǽ\248\134{\0\3\252\133\156\198\215*R'\218\208a\"\222m\1399L\142M\0252\144\"\7Z\234\24\147\135;L\0# \147\232\241|\142_\5\210a\133\148\215Id/A\6Z\232]\255tզG\234Ԫ\243\2\148\167\178\2295\4\15\216S\216\";Yua\24\175$L\247\139\18En\162F\149\155\138\184S\230\8\170\188I\232@Sg՞`\31\5.\159\242\218\234\"<\11\229\131\\ߙ\177(r;$#\171\227@\135Q\200ZM\233o\247R\176\221H\246\133\162\130C\176\254\28\8\\\12\156\2547\252\1\234[\164V%?\228\12ި\255I~2\0253\247Zz\23ׯ$\244\179\136(8\15@\232\247\183\236?\19\167\220\249\\\170\245Y\192Upby\153\5Q\7\245\184\186<\236\209\232\194\23]\175qx\169\146\1855\172\237\11\128,\177md\225r\17S\26\203R?\180a\192\129@\217\223\206\250\213\7\7g,F\183G\155\200v \1458hR\218BFs\128\141'\205ot\254*\250\197\238dM\170x\210\20\201\27\188n\12\218\229\249|^\145\19\25\208\220n\164\17\1861T\214]\193\u{5C8}\23\29\202\15\141\156\251\5\133yR\183\214C\133\149\180\178}\160\207.L\191\202\193\30I\248\142|\4ex\u{80}K\217\250\131\1286\174\212@Kg\127<\200i\12\156yt\2406(\194\240\182\136_\2533G \t\145\175\n`\207\218Z\211\216tg\154ь\u{379}Y)P\209ֈU\143\2390\171\172\235w\147\16S?ǋ\1560w\186pq\184+\180\170:\197`ֱwnΙ<\249(\189x\4\2151\219\204\5\200\2153\181\22\164(\28\134\234\199\25{\170\198F\rr]\172\205\206`\152\28`\183̲\n\255H\247\212\249\130\243\164*\154;<\195\16C=\231)\144\222b\235\236\r\132\128H%\156\129{\163\r\2182\213t\140\163\185\16\0\141\227\134U\146\25\28\229\237p\235P뽓\192\168TOm\128b_<\209M\134\226\241\23\5\177\173h3\15q\20\151\21\224n\166\133\r\195\24\202)D\215\201AC\170\147N^\242KPy\19e\179\12t,\15\"\202~\185\191\14y\152F.\187\198vw\146M*\242\136\199#\137\243\168ؔ\183\200^\158\18N\6\216|\225\199\214\253\208\3d\183\155\247h\176U\218f\224Eq\199\202\14Y\221\18/U۶\20HY\155\180\236\133E\1903=\255\3\184\17RnQ\29\231h\146\153\7\226쬣\211\242D]b|\153@\n\22:5A\227\180\221\210\225b\14\182\192\252\28\205\5HE\156\11 \176%\2259\186\188\160؏#\144,\215\23\14\149Qd}\24\134d\153hf\27\141\145\2239Pf\19\191\175\248\164֎n\219mZ6S#k*\144\188t\14\151\153ǣs\158\231zj\155\n\232\218\209\227H\140@\165\197\11\177,\129\138\152zVM\178\22\182z5g\19\176T\178\163N\127\188\131i\127\221\2301\149L\247\172\153\165X\166\1>\1336R\187JQ\12\178f\195V\226\16\3\155\128\1790\251O\190)\194>\160\238\234\31)My\243\0\4U\28\134E|\133\140P+#\235S\220\12\138dp\236\11f\158\186g\23n\156\201~\21\185/\1\u{E159}\165\30r#g\31\151Ig\204\23U.\155\231-e\171\7u\226o\153qr\22\18R\158\1279\4V\206~\189\200;dar\185?X\169ev\194V\2518A\29\162ٝ\19\191\12͇\235(\183\179ݑ\20\238\2311\20\30\153\2552\30\1459\31@\142sv\208 \247\0\228\4F\131C\158\175?\252\193\231\255~&\144\243\161\14\158\239\190\250\143\184\186\181i\157\1697<\237X\138\31\208`\179(L\159\165\252\253\15\150\236\28\148Y\241\195\195L\232ײ\252b>\243\206q<f\185\151\210\228ŉې\2169\247Q\154\254\216\233bk\171h\138\143\143[!\238\220\t\150N\167\138\168\164*S\185\220D:\167xB\144U\14gU\1790\31\172uǊ\227\179S\147v\1723\211q4A\236-\151i\\\247u\27`F\128\223VZ\130\183w\242\173\253\243\194\199Nj\128\156\197\234\\X\0119\218>8R\183\18\166\172\143\184\"i㯏q\247\153\149\t\205ȹ\190=\202-\243>C\198!\7\237\191\150wa\177\136\179\200\250\245{w\142\27\244\147\239l\7\2307Ah;P1\166\239\\\230;=\239]\181\180\182\141P\148 '\174\190WYb\140l\179\5\144\249\19*\138\153r\29\148\135\218\234\177\218\254\214\197{\\:\237\251&%ܖ\131T\16\166\31\145\227q\2267hpN\208i\18\131|\1329\200D\189l\245\1Q\250\144\212\3\206E2\8T\216\0\"x\168@5sP~\173I\225\193M\00036.\1515&I\161q@_?\244)\215p&KW_\2208KD(\255\29Q\164\152\153\143p)\191\135\215\29T\2\146\171\223\241Lmn~\165\4&xs\19\23\4\245\31\204DQ\1368\1760\148\238?\143\151ф\221\31<\152)\249[\233\205C\208\n3\\f\214\14\2294\250\1e\240\152\16\167,\247\28\161\155\11\167\181\229\245\254s\236%\138dV\157H\134\r-d\173.\203\205&\145\17\173!=\154.\163ZN?$\31\230\206M.\30\237-\221(\2494G\190R\133!o\221\241\225\153\23^FY\171\31\140|Զd1\\\226\190R-\u{F7EA}v8yz\220i\146yO\19M\236\150A\234H\245?\154\240S\241\5_\134.\178\25n9f\223e\189N\137\192D\208^\228\2Ͽ\20T\16\238\158/\4\213\n#\25BДJ\20\31%w\242\31\205\222W\237\240f}ǌ\n\197\202`\220K\140\212*\30\156\159!\158\240\209R\6\168\142\1563G\231\158f\219C\208>k?\rCj\179\179\250K\2381ab\215r\142rְ\229\19\174\163\188YӤm\130\167\230\243$\249\17942ǩ>\134$\211Z\r\189\31\207ݣ\11\166\2 \4\255\206E&\234=\189\235r\134\12\139\2\164G\1944\134@\239eg\192[\26\181_\18\245 \200\18\1294h>\185r'\154\150Ɵ\189x\250\237\183W(\185k\184\16L\145j\128\164 \173\226\221\0\240\5Հ\240Uz\164_\210W\236\173,s\173\176\244\2330l=#\165\128\153cRH#\229f\225,\194\242\169\180xB\1681P\251\2049\189t\128oH@6\189\174\183\191\234/\204\199\2125\207C\144D\224\227\12\204}l\28\141qB\211,\19\128\19G\149\153\246-9o\3\210\196e\154\27\230N\27\251\190^I~\27\154lZ_\150\211۾T\136\190[\170\r\133@\223m=\201<u&n\222~\\\30\178\214\249\147\177\2\173B\18\144>pJ9\143x\14?\250\177\127\2038\216\2018\150\144~~ţ\229q\151\0278\240\0269\21714\160\181\30'\26\15-\229\242?\191\226#V\239k\149\4\132\19\224\12\11\243µ\1463`\135\220\31\26\186\254yh\228/\3Y\214n\218R\8ɵ\31*᩶\217ČL\169-i\21p\184}\218\1\156\248\144\254(\162\28\194ʀ'\0\188Z\19\1648̦\204\194p\161\19\27$\193\196P\250\239\169o\8<h,w;z\199\n\212\227A\204\208#`\11\\\132\129kS\248\n'\152DӇ,+\"\179\164\22\162$\167\17\145\t\242\250pn\2523\23\182Ơ\205\2\0315\245\"G\2392I\4\148\"\200\22W\25\198\29_\18\129\138\0043\250w\176\0018\137\161\237W$=\201O\180\132F\152,\165\16\145\148i<\188P\0000\254\193\200~K$\12\230_\136'\183\128\2\167ks\255{\183\207\20T\216\0\226\154\7\203m\176\147:t'\164O\144\26\16\5\25.&5fuh\233\149{?\1880@ڃ\244Tz\17\n\206\245\176\226\203\n\193.\2\199\24\8?\2261,\250\235#1\17939\128\170IK\146 \137\189\143r߄\230.\250#\200y\0\241\"}\130D\171P\211$\226\132a\3\154\5ԝݧ\195ۖE\153Vl\12\255\175,\225/\210},\201^\250\176\153W\235k\11\132\u{58B}B<\175\191\200\194\23qH\182\239\250\168!El\129\219|\177a\154\175\174\133]\168꿔|\195:\138A\181\28\151`\2\169\29\u{7B8}\164\233%\228B\227\227\157\195P\11H\177r[\251\140ﯖ\14/\173\14dh\2357\181b#7\155\209,s\133\202\16=}\128\188\207=G_\r]\246O=t\199\29\184n\182\237\4v\11\133\t\12_2\205\230l\222\237+\165\172JvQˏs\166\147\235\252U#\213\236+EM\253\157\24[\153/\8UY|Y\184`\249\249˼x-\200\14X\127\18Jy\239\8\162RM\2419K\235G\128\219E\241e`\5Ӥp\17Ͳ\1876\170Ǌ\18Z\253\28\231\136\224|V\144\3\221\218\251F\141\181\226\1353\168\198\6!\159\196\248L\161N\196CC}u4\168ת\2m\176*\3\174\194$\26ڪh[\146ǟ6\137\19\156\29\253=\221*\207\18\230\208f\184\202`\179\228\137\203e$\24628\200\194z3M\252\174\249|\127K[\150EC\218\222 \162\1\245\238\150\205\230\157\n\\\150\213NѸ%\222y\192:\202\230\176[v`j#^\155+\142\243\203\16\248\t\212Ϗ`\181١VW\156b\189\149ũ3Y\152\255\208˙xV\129\177𦦆p3\198J5'\3]\18\22\238\183U\207ǹ\227\227\177O\201O6\r\149\217\15\226&ۛR\204f\134\176\201\20\156\224dhxM\188\241\240\27\"\149\14Y\202_V\160=s)W\217'\14N\141.%fI\203VFl\228h)l%Vf\193\2251\210W\1548A\28b?\202\217N(\178\14\195\225\3\152\216gw\224\231r\186\2031\157i\\\198\2191\248\1391θɆ\7\140\u{7BF}5\233_\198\210\29\u{E8BE}\190\254\184\1693\r\250\255x\164\169]\181\164\185<\28\219\252X_\\\161\246\234\" \21f\"a\182\170\241\154\31\215G[K\232\142\220yR\23U\239\239\6\200ϰ\255\8,Ax\152\0119\1\133ѓ\161f\175\249#\200\246d\11y\134^\248k\226\29\31\153J\130\31W\15\175C\180EL\195\4\2330F\236j.\186\173\3\151=\26A\227\133d\19\179s\170yQ\30\219\252s\224\250p\133\229\232\158qy\146\1678ұ\191b\185\233\"\161lM\3\131\212\232\249(yg\137̲\245Ǧ\133\234\203\237\185\183.\8\141\135\31.e\175\140(\216\219\253UPc\31DG97\27Ll\28\0258T\138\175\1969?Vֺ\246\26>@\1i\21\144\223/\173\23\141\248\199\236\253\226\129'\23!\155\222IJu\2\18\11\204\2134\182\155\25\238\210\252<~\30\142vE\131NJ\4\181\151ҶO\224\190F\214,\221[\175\150\20\155.\133\236%KL2\209\215G˭$\194:\203\192\0\168B\135s\8\7\185'\219%V\0P\182>\213\15\186b7\19\0\159\182\171/Z\233\152\211.\172\213\19B3I\155\30:}\142\205\214T\140oG\30\30\227\2|r\30bo\30\6\134JO\n\146\163\192\130ȡ\148b\249ۃ\128(\159$\210<\185j\207S[\134\1\0143br\"\248\176M\18\200ݴH3\12ر\19\28\193\250\138\200d\224\2504\180\160P\145\149\217\7t\174-\168\1%M*\224F\196\251\175F\1\178\214@y\182\221D%?\249\139J.\1314>\191%F\188\149K}\139\138\28\240\213[\162\129f\u{87}\152\136\t\145\23\163\145\140\198k\163\17\24z薵\151\138\n\252\240۷ܗ\191\255q\216\8wG\239\"\185\21\244\1770\136\8\142\236\165^\143#\165\236q/\155eO\19\195\215hꔅ\14?1\204\231~\1798\1552tarՂE\1\183)\224֡]\238\253\192\169<\8\172\178\185\230 \188\143.\246\202y\159\236;}\2462F\149.\246\150\16\208o\17̑\1720ÿL\153\237\143\206j\161-S\196\237\148\239\137(w\253\132_\192\245;[\221o\200~/N\175\220\0\230/Z\245ll\142\145\229FPţ\7\173ٯ\12\182tI\8>\15.$\202\17\243\180\2273\189K\240\191\225db\143\215\253\132\151e\n\6\218\250\210)\145u\221\r\212>\15Ƥ\141\137\225\0\228\131\216lJ\233\236\245\1295M\163\21\147\169::\178\218\244u\164]q\1746\30\220\16<\153)\31nH\4\155\148\156\22\145b?x\196{f\195O\197\237\14\222Ә?\218\237Z\148\15.\12W\141z/\255\210K\196\11\166A\186\198F\7\163\190\242\196\227Ŭ+T\156\153\227>?\191\190\237\"\0011^\220\17\230\165Neɮ! \173\2222̣\2286\210\227ÖY_.\215)]\216\199-Q\247h1\180}0\239%\157Q\22dt\235'\136b\249''\14\238f\177\190\164\25\240\189\135\17\234\240sl\236\208(\24J\11\4\225\192h,U\"WQ\226;\27\246\197g\242\163~*\161\2327\230\208\0\177\148;*\236\192\224\n\154\127\182 ]\135\220\252d\255\153\t\135!>\12/\132\182\11(\12\210!&]\189\235v\241\12\198F\222O\164\144|\143\225\235\175ߏ{\208b\24B\170\144ur\181\1928~\22WXu9\229\138zU\227n\26[\21\2\12(\1\165\185V\24y\5\242\198\240Ug\\\157\31s\184\191sC\2389\29ډ\230a\1396\6p\30\243 h\20\180\215y\193a5\220\225\253\5\132\151z\11\227j\169\"\213xTu\213\1\170\205\231z\185\nz\135\209*\237T\1416\254\144 Ɔ\17U\144\151\182WA\167,DNh\25\180y\192\28R_\n\226\137[\2498,7\255\185\133\193\166b\159\230諆cr\215\11\225*,6tc\24k\\%W\136@\193\11+\247\17\"e\1uG\158\241ڤ\3Ҫ\224\156\136[\184\149\160~\190au1\r\227/ǁ\190\7+\29_\253\201\211\24(\244\198\237l`p\139F\31\5\149\146f\28\12YO1\186r\30}=\191\161\"\247Y\238\28Zx;\236i\3y\155F\235\180\22258x_\230\162\219hF\30F\235\254\8\243\1553\198m\142\200\237}z\224>\241\1581}\131\237x\6S\16460<\243\237^\3\\fp\193|$b\31w5\129\20)\236o\245\t/sU\2338:\153c;ep\4MKc\199\233%\t\193-\208\220w\247\25Վ\137\157\210\234\248\11\31\234\250\169\224\137\148<\206\r\192\242%P\4\192\0;\1671\254\149z\235\210<$\2114\30\1307JQ\181\235֭\29\222q\176\150{\31\30\130\187\t\167A\"v\238\141ƹ\253%\132S\22u\132`㭵\175\0\222\204D\239A\4\139lX[\238\128\207\229\231\6\223\202\252\243\11\152i\183U\29]À\14\244\t܄]92\176\207<4\128\19\245\158c\174\19><|\167\31\144\7B²ݠ\218I\142\171\238\142\27\248\r\180ByLb|\127\145\152`\154Ӭ\7BĬ\151\r^\162M\193\149\1572\233\n\26f\1999\"7\254\231\144\253^\142\182\26\1693\11\243\r\139\2\27\163\203\15\168u֜\183f_\138\2332\194;X\198P\4\145\249\227m\129]w<b\186\236\15\156\20\220\236\157Ӌ\168\25\197A\7\206s\228j\15\0\u{3A2}yO\251\186\1548\250#\195\28\12$e\1415Q\14\169\141[\192\184\248\129\1P\166\31ЎE\249\161μ\r\u{F429}\157#F\129;9\248\25\188,'\237\213xz܂\247\8'C\20\26\228\254\239xS&\200=\191]\141<i\\\239&\177\227L\201P'\215\0124v\233v\1\20D\243\148w\4<\"\137X\158\2339\216G\168\201\r\130.\19\2321\238\166\16\194\207\227r\17A\254\242:\172\141\216%\203M\184AugB46\1710\18\175\142\237\206\230o\241{-X\146F\200\t\163M\182\197|8\171AE>rĽ\128e-\133\149F.\255l\u{F8DD}\t^T\182\225\242\211.-K\171Q\204\216\tP\244.\222>\244\243\135\185\1934\200g`\152r'\190\6\148\136k(\135\31 \22\137P\213(}\202\7\186\248\255\159\5\186@\17\246s\230f\1592^\209ʃ\138\3ANb\234V\226V\231\156\210s\160\27A\205\20F\1\20\253\147<\154\144\142^+\132\3\231\231\22\239W( \247\168\0\194Y\128\243OG\146\20\153\188\186i4!t\251\251f)ݠ\188S\145\186㊰\8\140\195И+\235\136\233\29\145\211O1\193\157\180\0YsdG\145G\4\189\26|]9\169\250to\227\177Q#ܟ\153d\193;Z\161r\208\251\224])6\149\141\206P\255'\189\167Tܤ\159\1350\141|њ\183\148;\180>\163\26\134\253\237ۋȋ\210i@\n@\157\161\170\t+\7\241\234;8\142\129Q\192I\129\161A\159퇡͏8ٵJ\253\198\5$\28\192\254D\179\171j\252D\204\231f\248m\2 \26\214s=\157\1858d\227\2\22\179\202m\27I\131g\248\1985b\252\174\21\132\188\5\14GK\167\239Gn\152\174v\14\163\197\223羰@P]\28\196 \248\0123\2050\190\235\127\1U\150\222_\153Φ\195\236+\142(t]\191\146\208.;\199j\247\234\29\154\"A\179@Y`U\179\15\t\133\n2\u{5CF}Z-\243\211\6rպ'\243*\26~\131\160\180\219\215t\230.\201\198\246\165\5\223\20\178c\207]\145ֺ\132Vl\159~\154\204\246b\245\131\5\222u\5iy\202Kx\1483\154\205`d\223A\16\163K\251\170\220E߬0m\255\214\14\\S\141\182E\134LC\19\200\24\253&\193q\19W\150\239\\\167MZ\250o\6\18^\184\206I\137\254\203\228\27\195\7b\19\220\4\178\178[&Y\141\132\184\254\238\144ֿZ\228\169_\151\241\129\21\26\163\19\14*\157d\151\153\189\132\253HBYe\180\165\30Ho\2528\176\2541\r\2103\254\26\232}\2047\n\152Z\7\163\130Zչ\224\185\30LO\170\247\135x\160\185\204\240U\6\197O\166\149\159'\6#2e\176\233\147\16a\188\131\128\142\236Omm\233\170+\202\227\31\174\220\\e\141\28\21\181\165_\18\154\186Ev8\152\142.'ήs{\"-\19\214Ŷ\239W\182.IR<\212S\203j7Q]\185*#R\216t2\163\198\231\218\210L`,\146rx'\210}\207hxK\246\207-\31'\146\24cL7\138s.RFU\171\131̏\171d\216\rd\2\229Ǝ9\146\207@\156\220!}\182U\231K|\26\238\154\25\131\160\213i\162z\220H[\146+/\1637\205\14\228\134E3B\173\190\186\128\181dX7w\5\135\t\215kpI\183\193\156B36%\229b\23\5x\137\218ԮUZ\23\4ׇ\151Zt\166\137\225j\129\154j\3\142\225v\161sa\235\168\209j\207\200?f\237<L\18@\192\140\245v\191\165\210\241jl\223+&\172\26\190\235d\150\220{\209\229܁\8\31\175\r\190\227\16\0111\156\221\251>\2386\210?ffp\204\205!\242\227\2239\243b\14\208K\11In_,[\216o\153\29\167\252\147z˭N\130\134\236/\207u\253\246\156\133AF\184-\177\178N0\30\225\15\7\154,\140&\238\21\6HVj\6ޙzc\193U\221֡U\221^\254q\226j\160\22n\148\134\254\t)Ș\16f\130TrT\136\186'KF\25,q\1476qT\197}TF\238\233v\21\19C\7WQ;\159Q\195\228\250Ge\16p\11G\"\222u\24[\192$\247M\164\189\1583{-u\224[\204̶\24\162ȣ\185\207\236R\14F\230\134Kz\173\163C\6\28\131\240\228\19\2\191\n\209\254Z̒|?(6\233\140\205g\136\134\130\173\n߉\0c\185m\144x\160B4\29\159=tGVy\7d\221裙%\1\131\180\2201\203\199w\230k\247\2\1469\218\28\201N\230r\159\2549>\14\227\1\8\143ZԱc\149\209q\143x\131\185\14r\132\209\244f\237j\145n7\223E%-\166\188\23װ~\1472\16GimET\2238\232\195j\153\200q\145A\28n\148\28K-\u{94}\22k\250ŷ\26ۆ\151\227b\23E6\156\181\145\197\28٨\15\159;S\168\197\n\229\203\19K\130Ċ/\152wU\138\156\236@ݼ_HB\211v\179\128\140S@n\0232\251\157\4\237y\14W\181\30\142\216`m\195\"ɘ\208hZ\136\231\127B\240Q\nʅZ\149\21M\162\31\28N\184@08\246\t\130>)(\169Y̨\246\127F\131Pz\203\0\21\168\24\175\180\15\226\203W\191\29l\167C\1638ؙ\25\196z\251\222\242\12\24%\149\242\153\221$\186Q\21\28\135\238\253V\249\189\165\"X\222c\238\29\130Վc\223}:\154\139&\223H'ؖ\170y\20\233\15\172\172@q'\211D\t\133:\149\180\25\180\177FD\236B\251\160\255G\7\138\136|\238\135\235\26\139i\14:\216R[ތ\158!\211{\255b\214\28\179;\247H\248\203\219:\181\191\135D{\214\227t\183\4\1526\225t\182\143\188eIϰnA.]KЌ\203#n\214)\169x\160\199!\146\233@c\175\151~\161ͻ-\149\249{\17s1k/l\138\140\231\30\192\252\148\184\240GV\18\159\163\206v\253I^6\19\132g\163\224\158ēwh\246sN\181\192ެ\25(\232\188\29;\184A\135P\232\242\23&\\\249\25\196\231\203Y\219n\241\188@$\169?\152\255\16\5b65^\243\0303@\r\254\223;\n\1794\223GG<l\24\158\202_̯A1T\151\217#(\184`\254\1669\149\215\2102\254\\R\202o\155,\170\0Uٜ\171\\!(\128U7%^Q\12\17\164\140\140y\152\204\16\185\168b0i\23168A\0262\1695\175\29\163\27͙wϸ\249\3\147\234(\188\253\161\155&\171\194N\227Zep}\247]\14bB\160\162\21\210\16\29%5\225Q\224\251\249\n%\132t\185\133\238\16c\31$\219݊N\28\241\237\172^\6\235\196qK^M\174\233l1\161\248\155s0\142\24#\228\2557%N\147\247$\216\232\246\133]6\128\180\144?\2493\145j\18\228@˘\208\25\241\219Bw;\240hy\r\192L\7<\27\163\218\248}j\178\146\21\8\140\146\182\2\16\240\1548'\254i\152\17\176E\173\243Q\3\227˃H+\149\nߛ\197\4\15K徨\28\132\136(\244\213'\169UAt\164\30\0\7\253~\216\238u!d\2502\233\247\2=\130\228\17\21\133uq\223\224\147\226N\162\3>\16\195ɝz\252\234\31,\141AtB\170&\16\162\206\244r\190\127\17\18\16P|a\18`\5\182\6iJ\21*\0127\226\203\0\155\31\8\190٪\18L\221:d!\2044A\5\137\184\162\244R\238-\2S\131\158{K^W1\212И\223MWK\183\3w\230Z\199\28*\161~\250\1\197\5X\218qg{\188\30\151\187|@\244\6з\187i\1498\205'\140m7.s\182\206\252t4A\141\r\15\8\253\233\208\213{аSP\19X\t\253\t/Fg/\29\169 -\188\247de\182t!)EL\187T\182\186\240\14_\150Q\14\251O\148I'\12C\165\16t\165q\253W:\182\240\187\1343\193K\231\5wK\223XQ\154\176\216\25090\210\249I9\148\171\185\151\134b\148\230\211\239d\150\165\174\n\15\247$<\19\142z\229Y\196zW\167a\0\\\140\166\249\171\177F\191p\176H*m\206\249\2\172:\169\213c\233\239\0\222'wQ\240\239vd\165)%ۿ\251=\134\150\18\141\8Dp\130\238\227\245$åO\183\246e\134M\227`\164\216\219\t)\178\188\1761_|2\235\0\216Ĕ0\181\190{\150h\232\166>\235/\182\207]\142b\239\173\195|\160SɌ\189\162\187|u\\\143> ëЙ\154\220m\2\242Ӣ\4*.\1790\207V*\5;ǰב\160\232\229\4\229\250\141\187\129\183\243\243\164o\213:'\197\23l\135\232\0030\237)\248\186lE\206\11\210\241\t\"[\136퀳\185\233\162E\22\238G\130\250\160\250|Q\154\181w\130d\230\145\22\2\2\194\214\21\24\227\rK.\197*\157\27\21\24\206.\136\250\189M\253\135\5W\1969h\221\197\23\130\0\227\161G\3\178k\0273\18D\11\153\211\198T\217\196ͪz\244\26\228夼\127h\186<\243\162\175P뗂\26t\136^\151\n\237qz$\138^\1426@\152\26\213 80·_5\146\246\160؏\190\138\222\16\170\216\222l$\209@\247x\184\23G\138\154y\11\140S\r\0025\213\242l\239\r\134E\1356\26\219\3,\194.\252\212\236l<\5\150\154\2#\135\21\225\198\244\27'<\25\18\u{603}ZâJ5UH\134|\135\162\210~:\2505R_Q\230i\157L\192\200\14\223\218\254\230\0141N23\135\172$//\193ܢ\151\23\127\1\134\149\152\145\233\171ݾ\164ȆΏ\251*.\2131\0173e\187\11\209.\163\216\217d$\1573\242\128\179\213H\127\25\14\2q\1B\142駤\244\179\237\130\251\1803\25\230\230\164\240s_(\179\155\175\205\223W\232r6X\14֑h\187\142\4\26^\247\136\22/\211A@n㍈ϛ\222\248˂\227*|3IS\229\162\245\186\189@bg Ù\199\21\252c\135\16\161u\252\6{(\149\150\14\238\134\6\3ⴠ\2203\23_\16\t\160\151j\243\221\212s M`#8\138\196A\170\159\223\16\186\27\156\167\4[\146Ԩ\254\27A\7\220>\167bp_\236\19$D\141ק\223\31ѡ\168v\166e1*\186\224\175a̭k\215f\144\242G\247x\157\15m\212m\183\1694\173Hw\236g'B\180\160z\225\162\248z\21ϳ|\237\23\167\r\147\184\202\192IE\243\14\127\8sҙ\185\n_W\215-\232\140\27\4Q\145\242z\148\136xw\22Z&\8\224\171yc\202\14\5\17\16\224ܩ7\134\173\189\176\133\227\"\205\24\168\252d\rL\183w3\188E5Hd+W\182^c\213\239\167$\191\170\166\228\131\26\165\t\135\158N4\172\227&}\223\1978V\177M\191Cl\142f[\204_V8\136\r\227ӏ$\207\193\220I\193\149#W:\131!|x\170\215\240Z\164\183\29\17a\133JZ\206Ό\215\24+\187u\21\226\132\28\194 ~\150\2365qfx)\188\175g\0\181\15)\152\11ݐG\29ֱ\207\247\224r\203!\155\201F\219\19\182B\2\1822\145\196kәwK\244\20V\0005\\F\237\206t\142z20\25yG5JTf0\3R\16\190;\129g\216r!\203d\242\157-\236\185,\173\185\149\145\7nJ\0\250(n#\164\17)a\243\29\185\18b\226\222ƃo\232\204\222\n\217\30\201`a\135\147c^ty\240R\206\2395\12\28j\185\187\4\251\223k\24:\0298v\220\22287Ea\224\4غv\127x`\\3\250\15\177\230M:\146\235\237\20\1!\0\193E\227î!]\152k\128\181s?\158\180Z.z\162\29F|i\251=^i\186\16ߚ{\167\248cy\232\7bJ\141\8\\\30=\134hL\170\4\232\174M\154,\21\16\206\231\225\192ƥ\n\131\134\216\228\136n\29\157\251\253\190\187ȿ/\3\27\141\133\217R\27X\197\230\4\222\30KΞ\247\17\195\234\131\244=\199\26k2\239N\225\185yA\245\159\180yV>\134\175Y\240wJ\229\185\219\6\18\250\25/D\165x\224\180\230+l\227\254]\"YL\205P]\170\191(\27֚\24\186I\212'\133\238\145a\173*r\139Q/\228\200<\244\28\146I\151\181=\182\223OS?\169\19q\199N\172\155\227n\131\174$e\11)h\127\8\227mf\135)\173o\194\12\178dG\155\246\183\174\166\255\230\179q\255\186\227D\176Egd\132\251\161\165\156|\225\133p<5\214\18\226g\188\215\t\181@t\145\176T\241\146\173\227\181߬\2316Re\133ˈ\162\154\157azh\206\26\162T,\128:\237\172\212Y\191\14\203q\16\157\209*\170\222\220Z\215h\237\239\142{\242\147\221\2353,[#+f\162\220\19)\202wO\167@\162qLj\160\135\15\178mu~\19\3\180\145\t\133\235lOY\180\181\0d\141\179\161\227M\2395\191\137N\190\201#\166\226\191\5\18\226wk\2121z\236\210\2129\169U\182\210=\139\253T\229E\244m,\213dmA\175\u{A7287}\2\229>R\190\130\4\195m\146\rx\11=\183\191\152\170mR\229\0\148\207Q[9\2005\192\29\3\192\7UA\219\"\6<O\189B\212wYL\246AFb\237i\152\6]\11\206\25A\198\27\149d\30\134O\0\206Z\0303c\147\246\127Վ\139q\208\\\161\n\150\11\146\176\"!\141\135E\180Ȁ\188\158\169/\238\155Q\26\221\127\2031\25kv5Mk\207\215\211\211 \31\218\196_;\175\149\159{\233\28z\245*\183`aBa\204=\194\31\244\167\22\18\249\235\149\26ƍ_4e$'ֆ~\175^\157\149]\141\15)͛\146\148\203 q\254+\219`]\30\28\1673\248\2;\17\163\207\249\233\22O\23\222\192\15\228\249\176\163\200\193\186d\153\171-\228\r\2*\131\146%:\210\254ӣ6\165WqE\181\227WJ\188/\253O!o\133t\169\145%\242\132'@\252SDK\213r\3q\233/\4\"\132u\17c,\232]\178\153*\146\19\16|\212֔\1597R\182\172wz4\164\25=&\249\243\242\239\183Z\238+CQw\1646\163\129`P\"҅\198\30\246\2gL%h\26\198D\202h\219\214\247\148\181\tC\161l\157\29\248\135\127r\149\219\205qg\228\246\229_29\163\28\\b\134&\214\242pρ\189\14\224\19\231\188\18\128\179\163iE\181(\198\210M\214Zm\18\200\1\226h\203WI(\245!\157\253\193\12l\244\0\151\1\162p\253\249}y\141\2338P\226\u{382}\228\237O\225\174~\16\17\207[\25\152\161\199<\1296\173á}\153\157]\20\132Uwg\143\\\7\182ٕ\251\165\148B\156\149\132\22\186T\188&r\150D\231s~O\188\253\237\22\238\206w{uL\190\2559\231;\6\246\146\223\16\198\6KlK\233Ӎ\172\159\165)ڊ\201\27\130\220s\253uo\175\6p\248'\195\233}9\"\255\222',\212z\141\245\26\131M\0259\151\168?E\130v\163\247\165\178OA\226\140\238\227\194R8\8A\171\179\r\248\218\2126\235$x\198Q\175'\7\174\246M'\164\226\211w\8x-J$\5\175 $\4\4\127\192\145pxPRb\139u\1712@\186l\172\2327\138\150*Nۭ1\214;\183\167\218[\234\159I\130\130\130\137\16\183\28m\210H\147\190\2045\243\250\221h\1360\183\253\250+\249\245,4\253\215\22Շ\6\198_!f1rb\151\24\207\t\131\3\160\194b\162\185IQ\240\223\1\31\203ŏ\1678\155\241\1554\177=e\191BW\149Z\188\176ۛ\146!M\154\135\7\137/B\193K\158}\18P\133\2510\199,}\192\155\153?\174Q\203PI\207\n\149\0ε\2382\136N\7\243/\nזR͕\204\249w\207E\140\15`n~0\237\180\143\167\152\254\28\26+s\134oI\240n\20}\tK\246\211 \192\220\254\131\146T\255ж\182\240,F6\131\23\228\232u\225#\235x\154\0235\141\255\172\134xo\222`:\149YOkD\183\171\155$;\138\198\228\212bɤ\162p\189yg\241#\7\128\208W\233k\22\181\209ߥ\141\1537\26}\203C2Ǐ\12\140\249\253jJ(\166\254\180\162\r\175v\19\"\223%\142\18\161jJƅ9\237y\190\236Z\29\29\178~\174\148b\1436\0Q\23\3\193o\245\248`\186ǁ\187\179~I\247\6i\233h/d\11<\213\217\0310\230\200B\r\130hP\235\208qPwf\141\155:\136\206:\197@:\173F\178\180F\204\192\187ι\164\222I\153\156\4\234_\239\20?U\190\255\236\186\248\248)\178!\155\193\246\246j\141,\1\197\2\134\135m\18\183v\157\134\26\234\20\0182M\242f`V\175\185G\0073\177\16\174\163\r\141\15\230W^]\131\174p\212\224\152F\217\207\236\3\220s\8kټ\236\155&\149\175\0F\229L}\216d\226\30\28O\160f\182\"\159,\17L\160y\"\135҆\241\175\5i,\212\236\162ϋ\204\245\245\138\181\\\184Ŭ \157\194 \132\r\252\152 \179\133\151.!\193\127\245\149\26\3^w\128~v\157u\175\146\0\151r\133\183Y\229\162\248\237\147\252zwY$\142lJ\201V\26\127M\166\25\189\162Gl\1477t\20\179\195\224\243\6\137Y\239\1\230m\2220ɑz/\250\1822\148\204g]\131ľ\252j\11Go\188܉H:T\137\136'\185I\201\240\25\199@\01188!9C֛/݂$i\147\163C\16%r\17\189\218v\207\253\175c\143O\248\170\11,\11\u{9F010}\187~fy\17#\128K!~\208(j\205T\162z\135ө\247\231\134\127M\135\220\200\29=|\193\19㒡]\2096\172\229&P\246!d\139X\11Hm\21,\215^\250\211iD\131ۂ\174\21X/\194%\131\211\0\240{\27\198\26z\203\240\2062\7o\185\"\218\221\16\24^\192\252k\17\208\245\220\5+\165\195\253\133\162X\246\136\6\241\177\195\0\232m\25\159\22\240\144\r͑ѓ\137\1446\216\127\155\171].'\157_\231\30ن#\143E\30D?\165\185\151\171M\141\3\141/&\185\212\253$Y\0262\247\150\5zpbxF\219Y\16nN?(\n\136\n\167\181ߤ\23\140\214\15\140|\193\160\255\t\2339\1447HotY\148F\130\169\tr\161\235VȲ\1733\159\131\235\241\190\1447P}\135,\17\170\7\214\204\\\169l\157\247#}\188\229|\183h2H\171<Kl\177ULy>ͤ\211\22\1\138x\188\0\u{7BF}\0\2416:\19\146\156\165\165h\153߭\218a\238\186K\171\149\174\224\14\157\238\203\2\140ڿ؊\212\193qf\136\200RCe֍a\202\217\194(\157\138\192պ\208أ/\190\178\6\146\188T\238\208\27\128\231\17\220҆4\221\234{/]ʡ\132\16\227\r~\24\203\255g\232\230D6\233ɧe1\170c\23n\209='!\194\12)\153\143\177\241>\186\\ð\14\18\29_\246\11\3\157\154\186`~\145\25\182.\133/\2439\208'a\174\2176\191<\148\168\130\202\205\236\238Ǒ\193\197Y|\210ſ\21\140\185)\178\192\230\242\143{\171\184)\12+\220\212\223\29\255\236,\154\7\187/U\244\12\170\179\179\169\250\127\136\2vn\2203\138X\u{600}\190/H\5%ܭa\235\18~\127\161'\193\134\11G\194Z9\229\236\164\250\4\183(\t\207r\207q&G\250b\186Nz\2425W\1Νx\4\134\184\25\1784\1339\228\241+<\232\130\26\248q\185s\146z\t\165\249\200\203\243\219\196\251#^\240\156\193K[\241ҸB\17\7S(\215\219Dv-3\176ewA2\29\250\223\4\24\128\8\161ۡ\235U7G\176ѝ\230\199\11\164\251}\14\"\127\146\17(\136Ͼp\221\228\30\128\253G\158\14'\254\245\2123r;\128\1957\178\152\n7\130\n\0r\187\4\164$\215l\212vo\198z\207af\150\168;\189\142O"), {
	[10] = 15,
	[4] = 37,
	[2] = 171,
	[13] = 8,
	[5] = 159,
	[12] = 28,
	[9] = 18,
	[6] = 244,
	[7] = 70,
	[3] = 156,
	[11] = 228,
	[8] = 196,
	250,
}, 524)

tbl7.A.runKeyGate = luraph_runtime1("0123456789abcdef0123456789abcdef0123456789abcdef0123456789abcdef", buffer.fromstring("|hY\238Z\31\227;\171\232a\239\234\5`\205t°\1330\234?\154\141\163\149\152o\188h\200\17\179>{\253qG\u{8E}\170\178\246\130\174A\203\7\15\205\233>\139<\246\189m\132\225N,\0074\242\1990ޜ\242\153\149^\22\181\189f|\5\172\22\224\182'b\136٠?-\24\229\241\128[\213Lw\235\146\234\169\224\241nE+\229\rjG\192\177dU\164<\224[+1\227\229\"T\24?\14\170\230\244ږ\210JЙ\157\161\3\182\189\198\248\11\163%\2m\2q\172\164\246\218>\8м\247\176!\204\4\199\218\8g\184df\212/\207#\2503\149ý\t\197I\133\227\178\r\181Gl\22\"\217W\190\29H\194w\0044\171\157q\225an\207ۆ\148V\241FM\145j\220\23\3\182\151\15\27\246V\216l\206\0\222x\199\213\31Se\248ZyZ\198\236\16\165\t\224,4\178\147\167\201$;&ĝ\218\n\235Ջ\209\205\251\\(x\251\136\226W\246a\194\244g\221M\193\254p\193uWI\235\224\239K\214\24-\185\210\30\22w_n\240\213\253&\30\1359_\235N\7c_\190\130<\253\156!\243n\2265\5H\253óy\\)\159\16\170\174~\21\177\144\154\246\129N]\235\20u\14W\23\133\192\181\253\217颇w\r\163:\195\240\193\6<Ŵ\147\204opN\182!\227\244]\6\175\155\130\226\140ոfS\159PJ\29\179\222@o+\217\193*]\214\201_ͽ\129\22\18636k9\146\8r\168\221ݧ\219Յ\135R\142\168S\8\231Z\0v0tZN\26\16\24\190e\167\3a\28\168L\251\187\197ɴ\134\185$\152\22\139\150x\146fp\245\237R\191m\179\238\5\173\17\233\187\"T /\19S\127q\177a\19\131\246\247\232,i\224\187S\195!\175k\7]\239\139\20-\19%\228\247\nl\232^\206\3\142̘\141\227\1\1910\217}d\132%&9\179Zp\246H[\n\162\161\254\252@|in\177\16\228{\251\183y^܂\24SX\174NA-\243Y\178\253\232P\240ʚ\153\147\rh\252x\135W\21\185\143\0157\136\u{E627}\245\234\5\2509;:\247;I\146\241ׇ\239\246\26\206p\136\194\252\182Ag\30\3\190TH\182\213v:\249\214A\145\232(\242!\198l\161&0\254\169\153\180\209\21\191\161!\194kaO\178\196{\236\161Ɩ\18z\213t_T\163\22\152!\172\17/va\166\138\196\30\154\129J\214\192k\155\132\127\163x\2\158\225J\133sx\11\172\167\167\180ogu>{l\"\222I\198\211\2478(\2169\\\222\249\243'\228\227\148\17\250\196eV\0a\138\197#-x\163\143x\160b\5\20\186ټ\161n\168\n\209\234\152\192&.\192o\23\198{a!\233;\127\239\159;ܰt\253\1527\161\160Pj\5\6\225[\241\186\23\129\27\221o[QQEŇ\18z\255\142\222H~\131\250\1484\235\178\6?\251\248z\182>\4\231\29z\28`\232SD~'\0068\140!\141h奺>\25V\244\203\28\195\245!\176m\t\14\130\174GĚ\\qe\141\201A\3\215\199BT\225\6 \222;:\233\156#\220K\199@r\253*\251\2072͟09]p\251Ф l+\137f]I\239\248\2204\143ƴ\185*@n\130\133\162>\247d\128OZ\165\237\171\231\149O\211\226\134:݆E\26qx륂\148?b]\21\15\165\228WL\11]\150+<\127\209\29\171{\229̀F\19\145\239Ļ\232\128\192\237\242\209y۶\175P\143iĻ\226\2263\178xlE\189t&\183\139a\242U\198\11\r\225\167\3\170\"\188\152\251\188\255唎\193D\164\15\151\8\191\202\247\18ܡ\173\163Ub\195)\22\164\1283\144\4\144`\u{F3BE}⻭sv[\216\213\202\209>\1633\31\193\199ci'\169R\159u\11\183\225Y\253\0l\3v\151\136\r\147\192`\26#\129\196}}O\231Y\203\23\179Y\181\175h\12\31\136\213*\16>FY.h/D\163\245quu\22\166\192X\227\203?`\147\174\18\5YM\217v1\130\230C\239&+i\204!\t\199ފ\136Y\177H\226L\200\252\0\164[j4\151\186\31I\t\224\193z\184\2078\186&<Wx\157mS\215N\2逇iă\233\234\248\209\219\230\204\1\228\190O\234\168\226\226\203\215!\136\169D\187c\152\"\196)5c\168\131\127\129\153s\197\11\242\145Q\155V1e:^\190#&\137II\135Aް;\170k,\7yk\1962%\234\138oj^B@\141\185y\247Ve\131 \250\234\252-(\250E䱬\239d\182\0\129Ң\165!\185\161:\\\179\192\6%\250\236q\147\30<\217x\159\245\239\200QN\"@GA\29\160\204F\224\161M\187g\131\165\221<\215\246m\25\15^\15\197s'\8m:\190@\229\150ư\134\27\241\25\25\16R?~[]RK@=\193\199\rT\149\24\138\218\240\170\153VT'\170\1\140ڠ)LmU\249\135\239\232\246\28Ա\152B\138\238\24Ҳ\225\175Rr\198\31\168\\єw\14\160\228T\1f]\146\1578\151\5JĶYPm\182e#J\143J\149\183\246$\174I\211 \197\244\150\175\129\1936\142\213,f\164\157\20\1737+\""), {
	[23] = 53,
	[9] = 171,
	[13] = 12,
	[12] = 88,
	[8] = 65,
	[19] = 41,
	[10] = 253,
	[16] = 178,
	[4] = 28,
	[6] = 228,
	[18] = 181,
	[7] = 174,
	[11] = 154,
	[17] = 121,
	[22] = 147,
	106,
	[20] = 3,
	48,
	[5] = 219,
	[15] = 241,
	[21] = 65,
	37,
	[14] = 234,
}, 277)

tbl7.A.runKeyGate()
tbl5.q = "N/A"
tbl5.r = nil

do
	local str = "https://script-execution-count.vibecodetothemax.workers.dev"
	local flag = v5(request_) == "function" and request_ or nil
	local localPlayer = v:GetService("Players").LocalPlayer
	local userId = localPlayer and localPlayer.UserId

	local HttpService = v:GetService("HttpService")
	;(nil --[[ constant not decoded ]])(-812990456586214, 0, "\201=Q\142)\178\218?^\23\156u\176\217\14\170\162\5o!\219\199\18\241V\181:k\0124\183V\127\235Z\166Ng\140X\240\232B\196w7\144\t`\174\130\0009\5\230\242:\2\245R%\172_\205۰:<\164\173#\tz\191\203\29\255wG\133\28\141\15}~\180l\214px\135Ůϖ\189\3\139\25~\230r>\164\162\139\208:\241\147\30)j\28c,\197\228ˈ\168Nu6If\238", nil --[[ the caller's registers ]], 174)
	local str2 = "\201=Q\142)\178\218?^\23\156u\176\217\14\170\162\5o!\219\199\18\241V\181:k\0124\183V\127\235Z\166Ng\140X\240\232B\196w7\144\t`\174\130\0009\5\230\242:\2\245R%\172_\205۰:<\164\173#\tz\191\203\29\255wG\133\28\141\15}~\180l\214px\135Ůϖ\189\3\139\25~\230r>\164\162\139\208:\241\147\30)j\28c,\197\228ˈ\168Nu6If\238"
	local v8 = bit32

	local tbl15 = {
		1116352408,
		1899447441,
		3049323471,
		3921009573,
		961987163,
		1508970993,
		2453635748,
		2870763221,
		3624381080,
		310598401,
		607225278,
		1426881987,
		1925078388,
		2162078206,
		2614888103,
		3248222580,
		3835390401,
		4022224774,
		264347078,
		604807628,
		770255983,
		1249150122,
		1555081692,
		1996064986,
		2554220882,
		2821834349,
		2952996808,
		3210313671,
		3336571891,
		3584528711,
		113926993,
		338241895,
		666307205,
		773529912,
		1294757372,
		1396182291,
		1695183700,
		1986661051,
		2177026350,
		2456956037,
		2730485921,
		2820302411,
		3259730800,
		3345764771,
		3516065817,
		3600352804,
		4094571909,
		275423344,
		430227734,
		506948616,
		659060556,
		883997877,
		958139571,
		1322822218,
		1537002063,
		1747873779,
		1955562222,
		2024104815,
		2227730452,
		2361852424,
		2428436474,
		2756734187,
		3204031479,
		3329325298,
	}

	local function fn5(arg, arg2)
		return v8.bor(v8.rshift(arg, arg2), v8.lshift(arg, 32 - arg2))
	end

	local function fn6(arg)
		local n = #arg
		local str3 = arg .. char(128) .. string.rep("\0", (55 - n) % 64) .. string.pack(">I8", n * 8)
		local n2 = 1779033703
		local n3 = 3144134277
		local n4 = 1013904242
		local n5 = 2773480762
		local n6 = 1359893119
		local n7 = 2600822924
		local n8 = 528734635
		local n9 = 1541459225

		for i_ = 1, #str3, 64 do
			local str4 = str3:sub(i_, i_ + 63)
			local tbl16 = {}

			for i_2 = 0, 15 do
				tbl16[i_2] = string.unpack(">I4", str4, i_2 * 4 + 1)
			end

			for i_2 = 16, 63 do
				local rshift = v8.rshift
				local v9 = tbl16[i_2 - 15]
				local bxor = v8.bxor
				tbl16[i_2] = (tbl16[i_2 - 16] + v8.bxor(fn5(tbl16[i_2 - 15], 7), fn5(tbl16[i_2 - 15], 18), rshift(v9, 3)) + tbl16[i_2 - 7] + bxor(fn5(tbl16[i_2 - 2], 17), fn5(tbl16[i_2 - 2], 19), v8.rshift(tbl16[i_2 - 2], 10))) % 4294967296
			end

			local v9 = n6
			local v10 = n7
			local v11 = n8
			local v12 = n9
			local v13 = n2
			local v14 = n3
			local v15 = n4
			local v16 = n5

			for i_2 = 0, 63 do
				local bxor = v8.bxor
				local n10 = (v12 + v8.bxor(fn5(v9, 6), fn5(v9, 11), fn5(v9, 25)) + bxor(v8.band(v9, v10), v8.band(v8.bnot(v9), v11)) + tbl15[i_2 + 1] + tbl16[i_2]) % 4294967296
				local bxor2 = v8.bxor
				local band = v8.band
				local n11 = (v16 + n10) % 4294967296
				local n12 = (n10 + (v8.bxor(fn5(v13, 2), fn5(v13, 13), fn5(v13, 22)) + bxor2(v8.band(v13, v14), v8.band(v13, v15), band(v14, v15))) % 4294967296) % 4294967296
				v12 = v11
				v16 = v15
				v11 = v10
				v15 = v14
				v10 = v9
				v14 = v13
				v9 = n11
				v13 = n12
			end

			n2 = (n2 + v13) % 4294967296
			n3 = (n3 + v14) % 4294967296
			n4 = (n4 + v15) % 4294967296
			n5 = (n5 + v16) % 4294967296
			n6 = (n6 + v9) % 4294967296
			n7 = (n7 + v10) % 4294967296
			n8 = (n8 + v11) % 4294967296
			n9 = (n9 + v12) % 4294967296
		end

		return string.pack(">I4 I4 I4 I4 I4 I4 I4 I4", n2, n3, n4, n5, n6, n7, n8, n9)
	end

	local function fn7(arg, arg2)
		local v9

		if #arg > 64 then
			v9 = fn6(arg)
		else
			v9 = arg
		end

		local str3 = v9 .. string.rep("\0", 64 - #v9)
		local tbl16 = {}
		local tbl17 = {}

		for i_ = 1, 64 do
			local v10 = byte(str3, i_)
			tbl16[i_] = char(v8.bxor(v10, 54))
			tbl17[i_] = char(v8.bxor(v10, 92))
		end

		local v10 = fn6(table.concat(tbl16) .. arg2)

		return fn6(table.concat(tbl17) .. v10):gsub(".", function(arg3)
			return format("%02x", byte(arg3))
		end)
	end

	local function fn8(arg, arg2, arg3)
		local v9 = v2(time())
		local str3 = ("%*|%*|%*|%*"):format(v9, arg, arg2, arg3 or "")
		return v9, fn7(str2, str3)
	end

	local function fn9(arg, arg2, arg3, arg4)
		local str3 = arg2 .. (arg4 and "?" .. arg4 or "")
		local v9, v10 = fn8(arg, str3, arg3)

		return flag({
			Url = str .. str3,
			Method = arg,
			Headers = { ["Content-Type"] = "application/json", ["X-Timestamp"] = v9, ["X-Signature"] = v10 },
			Body = arg3,
		})
	end

	if flag and userId then
		local v9, v10 = v6(function()
			return fn9("POST", "/user/add", HttpService:JSONEncode({ userId = userId }))
		end)

		if v9 and v4(v10) == "table" and v10.Body then
			local v11, v12 = v6(function()
				return HttpService:JSONDecode(v10.Body)
			end)

			if v11 and v4(v12) == "table" then
				tbl5.q = v2(v12.executions or v12.count or v12.total or "N/A")
			end
		end

		local v11, v12 = v6(function()
			return fn9("GET", "/total")
		end)

		if v11 and v4(v12) == "table" and v12.Body then
			local v13, v14 = v6(function()
				return HttpService:JSONDecode(v12.Body)
			end)

			if v13 and v4(v14) == "table" then
				tbl5.r = v14.total or v14.total_executions or v14.totalExecutions or v14.total_count or v14.count
			end
		end
	else
		warn("[LuWare] execution backend unavailable | req _type:", v5(request_), "| player:", localPlayer, "| UserId:", userId)
	end
end

if v4(doKick) == "function" then
	if tbl[1] ~= 19993 and tbl[1] ~= 19994 then
		tbl7.doKick("<font color=\"rgb(255, 0, 0)\"><b>Malicious Loader, Get our official script from https://luware.filho.wtf</b></font>")
		return
	end
end

tbl5.s_2 = v2(tbl5.r or "N/A")
local fn5 = nil

fn5 = function(arg, arg2)
	for k_, v8 in pairs(arg) do
		if v4(v8) ~= "function" then
			if v4(v8) == "table" and arg2 then
				fn5(v8, k_ == "Features")
			else
				arg[k_] = nil
			end
		end
	end
end

fn5(tbl6, true)
tbl6.UI.lockedButtons = {}
tbl4.Players = tbl4.Players
tbl4.Workspace = tbl4.Workspace
tbl4.RunService = tbl4.RunService
tbl4.CollectionService = tbl4.CollectionService
tbl4.CoreGui = tbl4.CoreGui
tbl6.Player.Camera = tbl4.Workspace.CurrentCamera
tbl4.HttpService = tbl4.HttpService
tbl4.UserInputService = tbl4.UserInputService
tbl4.TweenService = tbl4.TweenService
tbl4.Lighting = tbl4.Lighting
tbl6.Player.LocalPlayer = tbl4.Players.LocalPlayer

do
	local colors = tbl3.Colors
	local colors2 = tbl3.Colors
	local colors3 = tbl3.Colors
	local colors4 = tbl3.Colors
	local colors5 = tbl3.Colors
	local colors6 = tbl3.Colors
	local colors7 = tbl3.Colors
	local colors8 = tbl3.Colors
	local colors9 = tbl3.Colors
	local v8 = color(110, 80, 255)
	local v9 = color(160, 130, 255)
	local v10 = color(60, 50, 180)
	local v11 = color(5, 3, 18)
	local v12 = color(211, 34, 34)
	local v13 = color(80, 20, 20)
	local v14 = color(0, 90, 210)
	local v15 = color(60, 155, 255)
	local v16 = color(0, 10, 45)

	local theme = {
		Accent = color(110, 80, 255),
		AccentBright = color(140, 110, 255),
		Dark = color(4, 2, 16),
		Font = color(220, 220, 255),
		GroupBg = color(0, 0, 0),
		GroupTint = color(0, 0, 60),
		TitleGrad1 = color(80, 130, 255),
		TitleGrad2 = color(200, 210, 255),
		Sep = color(0, 0, 128),
		Divider = color(0, 0, 100),
		SliderInput = color(0, 0, 0),
		SliderKnob = Color3.new(1, 1, 1),
		SliderFill = color(110, 80, 255),
		SliderPlaceholder = color(178, 178, 178),
		ToggleOn = color(110, 80, 255),
		ToggleOff = color(0, 0, 0),
		Dropdown = color(4, 2, 16),
		TextBox = color(220, 220, 255),
		SearchBar = Color3.new(1, 1, 1),
		Keybind = color(4, 2, 16),
		Button = color(220, 220, 255),
		ColorpickerEl = color(70, 70, 88),
	}

	local o = {
		Accent = color(110, 80, 255),
		Dark = color(4, 2, 16),
		Font = color(220, 220, 255),
		GroupBg = color(0, 0, 0),
		GroupTint = color(0, 0, 60),
		Sep = color(0, 0, 128),
		Divider = color(0, 0, 100),
	}

	colors.v = v8
	colors2.w = v9
	colors3.x = v10
	colors4.y = v11
	colors5.z = v12
	colors6.A = v13
	colors7.B = v14
	colors8.C = v15
	colors9.D = v16
	tbl3.Theme = theme
	tbl5.F = {}
	tbl5.G = {}
	tbl5.H = {}
	tbl5.I = {}
	tbl5.J = {}
	tbl5.K = {}
	tbl5.L = {}
	tbl5.M = {}
	tbl5.N = {}
	tbl5.O = o
end

tbl6.Game.roleTable = {}
tbl6.Features.Combat.PredictionEnabled = true
tbl6.Features.Combat.PredictionMultiplier = 1
tbl6.Features.Combat.PingCheck = true
tbl6.Features.Combat.HorizontalMultiplier = 1
tbl6.Features.Combat.VerticalMultiplier = 1
tbl6.Features.Combat.SilentAimEnabled = false
tbl6.Features.Combat.ShootMurdererWallCheckEnabled = false
tbl6.Features.Combat.MagicBulletEnabled = false
tbl6.Features.Combat.silentAimCooldown = 0
tbl6.Features.Combat.shootButtonState = "ready"
tbl6.Features.ESP.wallCheckCache = {}
tbl6.Features.Combat.SilentAimbutmurd = false
tbl6.Features.Combat.TriggerBotEnabled = false
tbl6.Features.Combat.TriggerBotOnShiftlock = false
tbl6.Features.Combat.TriggerBotRadius = 10
tbl6.Features.Combat.MurdererAimMode = "Nearest Player"
tbl6.Features.Combat.MurdererIgnoreList = {}
tbl6.Features.Combat.FastThrowEnabled = false
tbl6.Features.Combat.FastThrowSpeed = 0.12
tbl6.Features.ESP.WALL_CACHE_TTL = 0.2

tbl7.isPlayerCharacterPart = function(arg)
	if not arg or not arg:IsA("BasePart") then
		return false
	end
	local model = arg:FindFirstAncestorWhichIsA("Model")
	if not model then
		return false
	end
	return model:FindFirstChildOfClass("Humanoid") ~= nil
end

tbl7.cloneRaycastParams = function(arg)
	local filterDescendantsInstances = {}
	local clone

	if v5(arg) == "RaycastParams" then
		local flag = arg ~= nil and v4(arg.Clone) == "function"

		if flag then
			clone = arg:Clone()
		end

		if not (flag and v5(clone) == "RaycastParams") then
			clone = RaycastParams.new()
			clone.IgnoreWater = arg.IgnoreWater
			clone.CollisionGroup = arg.CollisionGroup
			local filterDescendantsInstances2 = arg.FilterDescendantsInstances

			if v4(filterDescendantsInstances2) == "table" then
				for _, v8 in ipairs(filterDescendantsInstances2) do
					filterDescendantsInstances[#filterDescendantsInstances + 1] = v8
				end
			end
		end
	else
		clone = RaycastParams.new()
	end

	clone.FilterType = Enum.RaycastFilterType.Exclude

	if not clone.FilterDescendantsInstances then
		clone.FilterDescendantsInstances = filterDescendantsInstances
	else
		filterDescendantsInstances = {}
		local v8 = ipairs
		local filterDescendantsInstances2 = clone.FilterDescendantsInstances or {}

		for _, v9 in v8(filterDescendantsInstances2) do
			filterDescendantsInstances[#filterDescendantsInstances + 1] = v9
		end

		clone.FilterDescendantsInstances = filterDescendantsInstances
	end

	return clone, filterDescendantsInstances
end

tbl6.Features.ESP.wallCheckIgnoreList = { nil }
tbl6.Features.ESP.wallCheckParams = RaycastParams.new()
tbl6.Features.ESP.wallCheckParams.FilterType = Enum.RaycastFilterType.Exclude
tbl6.Features.Visuals.DisableChromaSkins = false
tbl6.Features.Visuals.ChromaObjects = {}

tbl7.disableChromaDecal = function(arg)
	if not arg or not arg:IsA("Decal") then
		return
	end
	arg:SetAttribute("ChromaLayer", arg.Texture)
	local attribute = arg:GetAttribute("StaticLayer")

	if attribute then
		arg.Color3 = color(255, 255, 255)
		arg.Texture = attribute
		return
	end

	arg.Color3 = color(255, 255, 255)
	arg.Texture = "rbxassetid://18363392181"
end

tbl7.enableChromaDecal = function(arg)
	if not arg or not arg:IsA("Decal") then
		return
	end
	local attribute = arg:GetAttribute("ChromaLayer")
	if not attribute then
		return
	end
	arg.Color3 = color(255, 0, 0)
	arg.Texture = attribute
end

tbl7.onChromaInstanceAdded = function(arg)
	local flag = not arg

	if not flag then
		flag = not (arg:IsA("Decal") or arg:IsA("Fire") or arg:IsA("Part"))
	end

	if flag then
		return
	end

	if tbl6.Features.Visuals.ChromaObjects[arg] then
		return
	end

	if tbl6.Features.Visuals.DisableChromaSkins and arg:IsA("Decal") then
		tbl7.disableChromaDecal(arg)
	end

	tbl6.Features.Visuals.ChromaObjects[arg] = true
end

tbl7.onChromaInstanceRemoved = function(arg)
	local flag = not arg

	if not flag then
		flag = not (arg:IsA("Decal") or arg:IsA("Fire") or arg:IsA("Part"))
	end

	if flag then
		return
	end
	tbl6.Features.Visuals.ChromaObjects[arg] = nil
end

tbl7.isChromaDisabled = function()
	local tagged = tbl4.CollectionService:GetTagged("ChromaDecal")
	if #tagged == 0 then
		return tbl6.Features.Visuals.chromaDisabledState or false
	end

	for _, v8 in ipairs(tagged) do
		local color3 = v8.Color3
		if color3.R < 0.995 or color3.G < 0.995 or color3.B < 0.995 then
			return false
		end
	end

	return true
end

tbl7.applyChromaSkinToggle = function(disableChromaSkins)
	tbl6.Features.Visuals.DisableChromaSkins = disableChromaSkins
	tbl6.Features.Visuals.chromaDisabledState = disableChromaSkins

	task.spawn(function()
		local localPlayer = v.Players.LocalPlayer
		local playerScripts = localPlayer and localPlayer:FindFirstChild("PlayerScripts")
		playerScripts = playerScripts and playerScripts:FindFirstChild("WeaponVisuals")
		playerScripts = playerScripts and playerScripts:FindFirstChild("ChromaScript")
		playerScripts = playerScripts and playerScripts:FindFirstChild("ToggleChromas")
		local n = 0

		while not playerScripts and n < 50 do
			task.wait(0.2)
			n += 1
			playerScripts = localPlayer and localPlayer:FindFirstChild("PlayerScripts")
			playerScripts = playerScripts and playerScripts:FindFirstChild("WeaponVisuals")
			playerScripts = playerScripts and playerScripts:FindFirstChild("ChromaScript")
			playerScripts = playerScripts and playerScripts:FindFirstChild("ToggleChromas")
		end

		if playerScripts and playerScripts:IsA("BindableEvent") then
			if tbl7.isChromaDisabled() ~= disableChromaSkins then
				playerScripts:Fire()
			end

			return
		end

		for _, v8 in ipairs({ "ChromaDecal", "ChromaFire", "ChromaPart" }) do
			for _, v9 in ipairs(tbl4.CollectionService:GetTagged(v8)) do
				tbl7.onChromaInstanceAdded(v9)

				if disableChromaSkins and v9:IsA("Decal") then
					tbl7.disableChromaDecal(v9)
				elseif not disableChromaSkins and v9:IsA("Decal") then
					tbl7.enableChromaDecal(v9)
				end
			end
		end
	end)
end

tbl4.CollectionService:GetInstanceAddedSignal("ChromaDecal"):Connect(tbl7.onChromaInstanceAdded)
tbl4.CollectionService:GetInstanceAddedSignal("ChromaFire"):Connect(tbl7.onChromaInstanceAdded)
tbl4.CollectionService:GetInstanceAddedSignal("ChromaPart"):Connect(tbl7.onChromaInstanceAdded)
tbl4.CollectionService:GetInstanceRemovedSignal("ChromaDecal"):Connect(tbl7.onChromaInstanceRemoved)
tbl4.CollectionService:GetInstanceRemovedSignal("ChromaFire"):Connect(tbl7.onChromaInstanceRemoved)
tbl4.CollectionService:GetInstanceRemovedSignal("ChromaPart"):Connect(tbl7.onChromaInstanceRemoved)
tbl5.P = {}

tbl6.Features.ESP.espSettings = {
	MurdererColor = color(255, 80, 80),
	SheriffColor = color(80, 140, 255),
	InnocentColor = color(170, 255, 170),
	HeroColor = color(255, 215, 0),
	UnknownColor = color(190, 190, 190),
	GunColor = color(70, 130, 255),
	CoinColor = color(255, 215, 0),
	NameColor = color(160, 155, 180),
	ShowDistance = false,
	ESP = {
		Enabled = false,
		Everyone = false,
		Murderer = false,
		Sheriff = false,
		Innocent = false,
		Gun = false,
		Coin = false,
	},
	Outline = {
		Enabled = false,
		Everyone = false,
		Murderer = false,
		Sheriff = false,
		Innocent = false,
		Gun = false,
		Coin = false,
	},
	Chams = {
		Enabled = false,
		Everyone = false,
		Murderer = false,
		Sheriff = false,
		Innocent = false,
		Gun = false,
		Coin = false,
	},
	Tracers = {
		Enabled = false,
		Everyone = false,
		Murderer = false,
		Sheriff = false,
		Innocent = false,
		Gun = false,
		Coin = false,
	},
	Box = {
		Enabled = false,
		Everyone = false,
		Murderer = false,
		Sheriff = false,
		Innocent = false,
		Gun = false,
		Coin = false,
	},
}

tbl6.Features.ESP.coinEspObjects = {}
tbl6.Features.ESP.coinHighlightObjects = {}
tbl6.Features.ESP.espObjects = {}
tbl6.Features.ESP.highlightObjects = {}
tbl6.Features.ESP.gunEspObjects = {}
tbl6.Features.ESP.gunHighlightObjects = {}
fn4("ESP.Player", tbl6.Features.ESP.espObjects)
fn4("ESP.Gun", tbl6.Features.ESP.gunEspObjects)
fn4("ESP.Coin", tbl6.Features.ESP.coinEspObjects)
fn4("Pool.Line", _linePool)
fn4("Pool.Billboard", _billboardPool)
fn4("Pool.ESPEntry", _espPool)
tbl9.Legacy = {}
tbl6.Features.Visuals.AuraEnabled = false
tbl6.Features.Visuals.AuraColor = color(180, 60, 255)
tbl6.Features.Visuals.auraParts = {}
tbl6.Features.Visuals.auraTweens = {}
tbl6.Features.Visuals.auraPulseToken = 0
tbl6.Features.Visuals.SkyEnabled = false
tbl6.Features.Visuals.SkyColor = color(90, 120, 180)
tbl6.Features.Visuals.SkyFogColor = color(120, 150, 190)
tbl6.Features.Visuals.SkyFogStart = 0
tbl6.Features.Visuals.SkyFogEnd = 1000
tbl6.Features.Visuals.SkyParticlesEnabled = false
tbl6.Features.Visuals.SkyParticlesColor = color(170, 210, 255)
tbl6.Features.Visuals.SkyOriginalLighting = nil
tbl6.Features.Visuals.SkyParts = {}
tbl6.Features.Visuals.SkyAtmosphere = nil
tbl6.Features.Visuals.PerformanceHudEnabled = false
tbl6.Features.Visuals.PerformanceHudGui = nil
tbl6.Features.Visuals.PerformanceHudConnection = nil
tbl6.Features.Visuals.PerformanceHudScriptName = "LuWare"
tbl6.Features.ESP.xrayParts = {}
tbl6.Features.Movement.normalWalkSpeed = 16
tbl6.Features.Movement.TouchFlingEnabled = false
tbl6.Features.Movement.touchFlingThread = nil
tbl6.Features.Combat.AutoGrab = false
tbl6.Features.Combat.AutoThrowEnabled = false
tbl6.Features.ESP.notifiedGunDrops = {}
tbl6.Features.Combat.AutoKillAllEnabled = false
tbl6.Features.Combat.AutoKillMurdererEnabled = false
tbl6.Features.Combat.AutoKillSheriffEnabled = false
tbl6.Features.Combat.killingPlayer = nil
tbl6.Game.currentMurderer = nil
tbl6.Game.currentSheriff = nil
tbl6.Game.roleAssigned = false
tbl6.Features.Movement.FlyEnabled = false
tbl6.Features.Movement.NoclipEnabled = false
tbl6.Features.Movement.InfJumpEnabled = false
tbl6.Features.Movement.SpeedGlitchEnabled = false
tbl6.AntiFlingEnabled = false
tbl6.AntiVoidEnabled = false
tbl6.Features.Visuals.InvisibleEnabled = false
tbl6.Features.AutoFarm.AutoFarmOriginalNoclipState = false
tbl6.Game.prevRoles = {}
tbl6.UI.wsValue = 16
tbl6.UI.jpValue = 50
tbl6.Features.Combat.grabConn = nil
local fn6
fn6 = function(...) end
fn6()
tbl4.Players.PlayerAdded:Connect(fn6)
tbl4.Players.PlayerRemoving:Connect(fn6)
tbl6.UI.dragData = { dragging = false, btn = nil, dragStart = nil, startPos = nil, moved = false, key = nil }
tbl6.Features.Movement.flingTarget = nil
tbl6.Features.Movement.isFlinging = false
tbl6.Features.Movement.flingOldPos = nil
tbl6.Features.Movement.flingOldCameraSubject = nil
tbl6.Features.Movement.flingConnection = nil
tbl6.Features.Movement.flingAngle = 0
tbl6.Features.Movement.flingVibStep = 0
tbl6.Features.Movement.flingNextTick = 0
tbl6.Features.Movement.flingOriginalFallenHeight = nil
tbl6.Features.Combat.flickInProgress = false
tbl6.Features.Movement.flingVelConn = nil
tbl6.Features.Movement.flingWeld = nil
tbl6.Features.Movement.flingSuccess = false
tbl6.Features.Movement.flingBV = nil
tbl6.Features.Movement.flingBG = nil
tbl6.Features.ESP.gunDropNotifyEnabled = false
tbl6.Features.Movement.flingQueue = {}
tbl6.Features.Movement.flingQueueIndex = 1
tbl6.Features.Movement.isFlingingAll = false
tbl6.Features.Movement.flingOriginalAnchoredState = false
tbl6.Features.Movement.flingOriginalFallenHeight = nil
tbl6.Features.Combat.TrickshotEnabled = false
tbl6.Features.Combat.AutoDodgeMurdererEnabled = false
tbl6.Features.Combat.AutoDodgeMurdererDist = 5
tbl6.Features.Combat.AutoDodgeKnifeEnabled = false
tbl6.Features.Combat.dodgeCooldown = false
tbl6.Features.Movement.FreecamEnabled = false
tbl6.Features.Movement.freecamConn = nil
tbl6.Features.Movement.freecamCF = nil
tbl6.Features.ESP.trapEspObjects = {}
tbl6.Features.ESP.trapHighlightObjects = {}
fn4("ESP.Trap", tbl6.Features.ESP.trapEspObjects)
tbl6.Features.ESP.trapEspColor = color(255, 80, 200)
tbl6.Features.ESP.trapEspSettings = { Enabled = false, Box = false, Tracer = false, Chams = false, Outline = false, Label = false }
tbl6.Features.Visuals.Hitmarker = tbl6.Features.Visuals.Hitmarker or {}
tbl6.Features.Visuals.Hitmarker.Knife = tbl6.Features.Visuals.Hitmarker.Knife or { Enabled = false, SoundId = "142247768", CustomSoundId = nil }
tbl6.Features.Visuals.Hitmarker.Gunshot = tbl6.Features.Visuals.Hitmarker.Gunshot or { Enabled = false, SoundId = "10209803", CustomSoundId = nil }
tbl6.Features.Visuals.Hitmarker.Reload = tbl6.Features.Visuals.Hitmarker.Reload or { Enabled = false, SoundId = "4753414199", CustomSoundId = nil }
tbl6.Features.Visuals.Hitmarker.GunHit = nil
tbl6.Features.Visuals.Hitmarker.Gun = nil
tbl6.Features.Visuals.KillFX = tbl6.Features.Visuals.KillFX or {}

tbl5.Q = {
	Knife = { tag = "Weapon_Knife", soundName = "Kill" },
	Gunshot = { tag = "Weapon_Gun", soundName = "Gunshot" },
	Reload = { tag = "Weapon_Gun", soundName = "Reload" },
}

tbl7.findLiveSound = function(arg)
	local v8 = tbl5.Q[arg]
	if not v8 then
		return nil
	end

	for _, v9 in ipairs({ tbl6.Player.LocalPlayer.Backpack, tbl6.Player.LocalPlayer.Character }) do
		if v9 then
			for _, child in ipairs(v9:GetChildren()) do
				if child:IsA("Tool") and child:HasTag(v8.tag) then
					local handle = child:FindFirstChild("Handle")

					if handle then
						local v10 = handle:FindFirstChild(v8.soundName)
						if v10 then
							return v10
						end
					end
				end
			end
		end
	end

	return nil
end

tbl7.applyHitmarkerSound = function(arg)
	local v8 = tbl5.Q[arg]
	if not v8 then
		return
	end
	local v9 = tbl6.Features.Visuals.Hitmarker[arg]
	if not v9 then
		return
	end
	local v10 = tbl7.idFromSoundId(v2(v9.CustomSoundId and v9.CustomSoundId ~= "" and v9.CustomSoundId or tbl7.resolveHitmarkerSoundId(arg)))
	if v10 == "" then
		return
	end
	local soundId = ("rbxassetid://%*"):format(v10)

	for _, v11 in ipairs({ tbl6.Player.LocalPlayer.Backpack, tbl6.Player.LocalPlayer.Character }) do
		if v11 then
			for _, child in ipairs(v11:GetChildren()) do
				if child:IsA("Tool") and child:HasTag(v8.tag) then
					local handle = child:FindFirstChild("Handle")

					if handle then
						local v12 = handle:FindFirstChild(v8.soundName)

						if v12 and v12:IsA("Sound") and v12.SoundId ~= soundId then
							v12.SoundId = soundId
						end
					end
				end
			end
		end
	end
end

tbl7.setHitmarkerSound = function(arg, soundId)
	local v8 = tbl6.Features.Visuals.Hitmarker[arg]
	if not v8 then
		return
	end
	v8.SoundId = soundId or ""
	v8.CustomSoundId = soundId or ""
	tbl7.applyHitmarkerSound(arg)
end

tbl7.loadCustomSoundPresets = function()
	tbl6.Features.Visuals.CustomSoundPresets = { Knife = {}, Gunshot = {}, Reload = {} }
	if not (isfile and readfile) or not isfile("LuWare/customsounds.json") then
		return
	end
	local flag = tbl2 ~= nil and tbl5 ~= nil and tbl5.d ~= nil and v4(tbl5.d.JSONDecode) == "function"
	local data

	if flag then
		data = tbl5.d:JSONDecode(readfile("LuWare/customsounds.json"))
	end

	if flag and v4(data) == "table" then
		for k_ in pairs({ Knife = true, Gunshot = true, Reload = true }) do
			if v4(data[k_]) == "table" then
				tbl6.Features.Visuals.CustomSoundPresets[k_] = data[k_]
			end
		end
	end
end

tbl7.saveCustomSoundPresets = function()
	if not writefile then
		return false
	end

	if v4(makefolder) == "function" then
		makefolder("LuWare")
	end

	return (v6(function()
		writefile("LuWare/customsounds.json", tbl5.d:JSONEncode(tbl6.Features.Visuals.CustomSoundPresets))
	end))
end

tbl7.getSoundPresets = function(arg)
	local tbl15 = {}
	local gunSoundPresets = arg == "Gunshot" and tbl6.Features.Visuals.GunSoundPresets or arg == "Reload" and tbl6.Features.Visuals.ReloadSoundPresets or tbl6.Features.Visuals.KnifeSoundPresets

	for k_, gunSoundPreset in pairs(gunSoundPresets) do
		tbl15[k_] = gunSoundPreset
	end

	if tbl6.Features.Visuals.CustomSoundPresets and tbl6.Features.Visuals.CustomSoundPresets[arg] then
		for k_, v8 in pairs(tbl6.Features.Visuals.CustomSoundPresets[arg]) do
			tbl15[k_] = v8
		end
	end

	return tbl15
end

tbl7.refreshSoundPresetDropdown = function(arg)
	local gunSoundPresetDropdown = arg == "Gunshot" and tbl6.UI.gunSoundPresetDropdown or arg == "Reload" and tbl6.UI.reloadSoundPresetDropdown or tbl6.UI.knifeSoundPresetDropdown

	if gunSoundPresetDropdown then
		gunSoundPresetDropdown:SetValues(tbl7.buildSoundPresetNames(tbl7.getSoundPresets(arg)))
	end
end

tbl7.idFromSoundId = function(arg)
	return (arg or ""):gsub("^rbxassetid://", ""):gsub("^http.-id=", ""):gsub("%D", "")
end

tbl7.writeCustomSound = function(arg, arg2)
	if not arg then
		return
	end
	local v8 = tbl7.idFromSoundId(arg2.CustomSoundId)
	if v8 == "" then
		return
	end
	arg.SoundId = ("rbxassetid://%*"):format(v8)
end

tbl7.playSoundPreview = function(arg)
	if not arg then
		return
	end
	local v8 = v2(arg.CustomSoundId or arg.SoundId or "")
	if v8 == "" then
		return
	end
	local soundId

	if not v8:find("rbxassetid://") then
		soundId = ("rbxassetid://%*"):format(v8)
	else
		soundId = v8
	end

	local sound = Instance.new("Sound")
	sound.SoundId = soundId
	sound.Volume = 1
	sound.Parent = tbl4.SoundService
	sound:Play()

	task.delay(3, function()
		if sound and sound.Parent then
			destroy(sound)
		end
	end)
end

tbl7.resolveHitmarkerSoundId = function(...) end

if tbl6.Features.Visuals.KillFX.Selected == nil then
	tbl6.Features.Visuals.KillFX.Selected = "lightning"
end

if tbl6.Features.Visuals.KillFX.Enabled == nil then
	tbl6.Features.Visuals.KillFX.Enabled = false
end

if tbl6.Features.Visuals.KillFX.Random == nil then
	tbl6.Features.Visuals.KillFX.Random = false
end

do
	local runService = tbl4.RunService
	local userInputService = tbl4.UserInputService
	tbl5.S = tbl4.Players
	tbl5.T = runService
	tbl5.U = userInputService
end

do
	local localPlayer = tbl5.S.LocalPlayer
	local sound = Instance.new("Sound")
	tbl5.V = localPlayer
	tbl5.W = sound
end

tbl5.W.SoundId = "rbxassetid://6895079853"
tbl5.W.Volume = 0.4
tbl5.W.RollOffMaxDistance = 0
tbl5.W.Parent = tbl4.SoundService

tbl7._playBtnClick = function()
	tbl5.W.TimePosition = 0

	if tbl2 ~= nil and tbl5 ~= nil and tbl5.W ~= nil and v4(tbl5.W.Play) == "function" then
		tbl5.W:Play()
	end
end

tbl5.X = 0
tbl5.Y = nil
tbl5.FW = tbl5.FW or {}

tbl7._ensureStrokeConn = function()
	if tbl5.Y or #tbl5.F == 0 and #tbl5.FW == 0 then
		return
	end

	tbl5.Y = renderStepped:Connect(function()
		if #tbl5.F == 0 and #tbl5.FW == 0 then
			tbl5.Y:Disconnect()
			tbl5.Y = nil
			return
		end

		tbl5.X = clock() * 144 % 360
		local flag = tbl5.bp ~= nil and tbl5.bp.Visible == true
		local n = 0

		for i_ = 1, #tbl5.F do
			local v8 = tbl5.F[i_]
			local parent = v8.Parent and v8.Parent.Parent

			if v8.Parent then
				if not parent or parent.Visible ~= false then
					v8.Rotation = tbl5.X
				end

				n += 1

				if n ~= i_ then
					tbl5.F[n] = v8
				end
			end
		end

		for i_ = #tbl5.F, n + 1, -1 do
			tbl5.F[i_] = nil
		end

		local n2 = 0

		for i_ = 1, #tbl5.FW do
			local v8 = tbl5.FW[i_]
			local parent = v8.Parent and v8.Parent.Parent

			if v8.Parent then
				if flag and (not parent or parent.Visible ~= false) then
					v8.Rotation = tbl5.X
				end

				n2 += 1

				if n2 ~= i_ then
					tbl5.FW[n2] = v8
				end
			end
		end

		for i_ = #tbl5.FW, n2 + 1, -1 do
			tbl5.FW[i_] = nil
		end
	end)
end

tbl7._animateStroke = function(parent)
	if not parent then
		return
	end
	local uiGradient = Instance.new("UIGradient")
	local colorSequence = ColorSequence.new
	local tbl15 = {}
	local v8 = ColorSequenceKeypoint.new(0, tbl3.Theme.Dark)
	local v9 = ColorSequenceKeypoint.new(0.25, tbl3.Theme.Accent)
	local v10 = ColorSequenceKeypoint.new(0.5, tbl3.Theme.AccentBright)
	local v11 = ColorSequenceKeypoint.new(0.75, tbl3.Theme.Accent)
	tbl15[1] = v8
	tbl15[2] = v9
	tbl15[3] = v10
	tbl15[4] = v11

	do
		local values = table.pack(ColorSequenceKeypoint.new(1, tbl3.Theme.Dark))
		table.move(values, 1, values.n, 5, tbl15)
	end

	uiGradient.Color = colorSequence(tbl15)
	uiGradient.Parent = parent
	insert(tbl5.bp and parent:IsDescendantOf(tbl5.bp) and tbl5.FW or tbl5.F, uiGradient)

	insert(tbl5.N, {
		uiGradient,
		function(arg)
			local colorSequence2 = ColorSequence.new
			local tbl16 = {}
			local v12 = ColorSequenceKeypoint.new(0, tbl3.Theme.Dark)
			local v13 = ColorSequenceKeypoint.new(0.25, tbl3.Theme.Accent)
			local v14 = ColorSequenceKeypoint.new(0.5, tbl3.Theme.AccentBright)
			local v15 = ColorSequenceKeypoint.new(0.75, tbl3.Theme.Accent)
			local new = ColorSequenceKeypoint.new
			local dark = tbl3.Theme.Dark
			tbl16[1] = v12
			tbl16[2] = v13
			tbl16[3] = v14
			tbl16[4] = v15

			do
				local values = table.pack(new(1, dark))
				table.move(values, 1, values.n, 5, tbl16)
			end

			arg.Color = colorSequence2(tbl16)
		end,
	})

	tbl7._ensureStrokeConn()
	return uiGradient
end

tbl7.playEffectSound = function(arg, arg2)
	local v8 = ({
		lightning = "rbxassetid://84986266888002",
		freeze = "rbxassetid://120052762591633",
		void = "rbxassetid://2780372490",
		matrix = "rbxassetid://139682612041479",
		hologram = "rbxassetid://9071932234",
		laser = "rbxassetid://107419276278599",
		yeet = "rbxassetid://119490144266950",
		plushie = "rbxassetid://129088013422694",
		popcorn = "rbxassetid://106879573498735",
		soul = "rbxassetid://139481207162657",
	})[arg] or arg

	if not v8 or v8 == "" or v8 == "0" then
		return nil
	end
	local soundId

	if not v2(v8):find("rbxassetid://", 1, true) and not v2(v8):find("http", 1, true) then
		soundId = ("rbxassetid://%*"):format(v8)
	else
		soundId = v8
	end

	local sound = Instance.new("Sound")
	sound.SoundId = soundId
	sound.Volume = (arg2 or 1) * 5
	sound.Parent = workspace
	sound:Play()
	tbl4.Debris:AddItem(sound, 6)
	return sound
end

tbl7.getDeathEffectRoot = function(arg)
	if not arg then
		return nil
	end
	return arg:FindFirstChild("HumanoidRootPart") or arg:FindFirstChild("Torso") or arg:FindFirstChild("UpperTorso") or arg:FindFirstChildWhichIsA("BasePart")
end

do
	local obj = setmetatable({}, { __mode = "k" })
	local obj2 = setmetatable({}, { __mode = "k" })
	local obj3 = setmetatable({}, { __mode = "k" })
	local obj4 = setmetatable({}, { __mode = "k" })

	local function fn7(arg, arg2)
		local tbl15 = {}

		while arg and arg ~= arg2 do
			insert(tbl15, 1, arg.Name)
			arg = arg.Parent
		end

		return table.concat(tbl15, ".")
	end

	tbl7.GetDescendantCache = function(arg)
		local v8 = obj[arg]
		if v8 then
			return v8
		end
		local tbl15 = {}
		local tbl16 = {}
		local tbl17 = {}
		obj[arg] = tbl15
		obj2[arg] = tbl16
		obj3[arg] = tbl17

		for _, v9 in ipairs(getDescendants(arg)) do
			tbl15[v9] = true
			local v10 = fn7(v9, arg)
			tbl16[v10] = v9
			tbl17[v9] = v10
		end

		local tbl18 = {}
		obj4[arg] = tbl18

		tbl18.added = arg.DescendantAdded:Connect(function(descendant)
			if not descendant then
				return
			end
			tbl15[descendant] = true
			local v9 = fn7(descendant, arg)
			tbl16[v9] = descendant
			tbl17[descendant] = v9
		end)

		tbl18.removing = arg.DescendantRemoving:Connect(function(descendant)
			if not descendant then
				return
			end
			tbl15[descendant] = nil
			local v9 = tbl17[descendant]

			if v9 then
				tbl16[v9] = nil
				tbl17[descendant] = nil
			end
		end)

		return tbl15
	end
end

tbl7.hideCharacter = function(arg)
	if not arg then
		return
	end

	for k_ in pairs(tbl7.GetDescendantCache(arg)) do
		if k_.Parent then
			if k_:IsA("BasePart") then
				k_.Transparency = 1
				k_.CanCollide = false
			elseif k_:IsA("Decal") or k_:IsA("Texture") then
				k_.Transparency = 1
			end
		end
	end
end

do
	local ac = setmetatable({}, { __mode = "k" })
	local touchEnabled = tbl4.UserInputService.TouchEnabled

	tbl5.aa = {
		spark = "rbxasset://textures/particles/sparkles_main.dds",
		smoke = "rbxasset://textures/particles/smoke_main.dds",
		fire = "rbxasset://textures/particles/fire_main.dds",
	}

	tbl5.ab = "rbxassetid://5045128262"
	tbl5.ac = ac
	tbl5.ad = touchEnabled
end

do
	local z = tbl5.ad and 0.55 or 1
	local debris = tbl4.Debris
	local lighting = tbl4.Lighting
	tbl5.Z = z
	tbl5._ = debris
	tbl5.ae = lighting
end

tbl5.af = "DeathFXPuppets"

tbl5.ag = {
	blackhole = "void",
	ascension = "soul",
	shatter = "freeze",
	ashes = "lightning",
	glitch = "matrix",
	implode = "plushie",
	slice = "laser",
	rocket = "yeet",
}

tbl5.ah = {
	"lightning",
	"freeze",
	"void",
	"matrix",
	"hologram",
	"laser",
	"yeet",
	"plushie",
	"popcorn",
	"soul",
	"cinematic_soul",
	"blackhole",
	"ascension",
	"shatter",
	"ashes",
	"glitch",
	"implode",
	"slice",
	"rocket",
}

tbl7.deathFXCount = function(...) end
tbl7.deathFXSound = function(A,p)local q= tbl5 .ag[A]or A; tbl7 .playEffectSound(q,p or 1);end
tbl7.deathFXFolder = function()local A= tbl11 .Static.WS.DeathFXPuppets;if not A then A=workspace:FindFirstChild( tbl5 .af);if not A then A=Instance.new("Folder");A.Name= tbl5 .af;A.Parent=workspace;end; tbl11 .Static.WS.DeathFXPuppets=A;end;return A;end

tbl7.spawnDeathDebris = function(arg, arg2, color2, arg3, arg4, arg5, material)
	for i_ = 1, tbl7.deathFXCount(arg2) do
		local part = Instance.new("Part")
		local n = random(arg3[1] * 100, arg3[2] * 100) / 100
		part.Size = vector3(n, n * random(45, 100) / 100, n * random(55, 100) / 100)
		part.Position = arg + vector3(random(-8, 8) / 10, random(-8, 8) / 10, random(-8, 8) / 10)
		part.Orientation = vector3(random(0, 360), random(0, 360), random(0, 360))
		part.Color = color2
		part.Material = material or Enum.Material.SmoothPlastic
		part.Anchored = false
		part.CanCollide = false
		part.CastShadow = false
		part.CustomPhysicalProperties = PhysicalProperties.new(0.7, 0.3, 0.25, 1, 1)
		part.Parent = tbl7.deathFXFolder()
		local bodyVelocity = Instance.new("BodyVelocity")
		bodyVelocity.Velocity = vector3(random(-arg4, arg4), random(arg4 * 0.35, arg4 * 1.15), random(-arg4, arg4))
		bodyVelocity.MaxForce = vector3(100000, 100000, 100000)
		bodyVelocity.Parent = part
		tbl5._:AddItem(part, arg5 or 3)
		tbl5._:AddItem(bodyVelocity, 0.35)
	end
end

tbl7.spawnDeathEffectPart = function(position, size, color2, material, arg)
	local part = Instance.new("Part")
	part.Size = size or vector3(1, 1, 1)
	part.Position = position
	part.Color = color2 or Color3.new(1, 1, 1)
	part.Material = material or Enum.Material.Neon
	part.Anchored = true
	part.CanCollide = false
	part.CastShadow = false
	part.Transparency = 0.1
	part.Parent = tbl7.deathFXFolder()
	tbl5._:AddItem(part, arg or 1)
	return part
end

tbl7.attachParticles = function(parent, arg, arg2)
	local particleEmitter = Instance.new("ParticleEmitter")
	particleEmitter.Texture = tbl5.aa.spark

	for k_, v8 in pairs(arg) do
		particleEmitter[k_] = v8
	end

	if particleEmitter.Rate > 0 then
		particleEmitter.Rate = tbl7.deathFXCount(particleEmitter.Rate)
	end

	particleEmitter.Parent = parent

	if arg2 then
		task.delay(arg2, function()
			particleEmitter.Enabled = false
			tbl5._:AddItem(particleEmitter, 3)
		end)
	end

	return particleEmitter
end

tbl7.cameraShake = function(...) end
tbl7.deathFXFov = function(...) end
tbl7.deathFXLightingPulse = function(A,p,q,Q)local f,P,b= tbl5 .ae.ExposureCompensation, tbl5 .ae.OutdoorAmbient,TweenInfo.new(q or 0.08,Enum.EasingStyle.Quad,Enum.EasingDirection.Out); tbl4 .TweenService:Create( tbl5 .ae,b,{ExposureCompensation=f+A,OutdoorAmbient=p or P}):Play();task.delay(q or 0.08,function() tbl4 .TweenService:Create( tbl5 .ae,TweenInfo.new(Q or 0.55,Enum.EasingStyle.Sine,Enum.EasingDirection.InOut),{ExposureCompensation=f,OutdoorAmbient=P}):Play();end);end
tbl7.deathFXRing = function(...) end
tbl7.deathFXShockwave = function(...) end
tbl7.deathFXFlash = function(...) end
tbl7.deathFXBolt = function(...) end
tbl7.deathFXJaggedBolt = function(...) end
tbl7.deathFXScorch = function(...) end

tbl7.buildDeathPuppet = function(arg, arg2)
	local tbl15 = arg2 or {}
	if not arg then
		return nil
	end

	local v8, v9 = v6(function()
		arg.Archivable = true
		return arg:Clone()
	end)

	if not v8 or not v9 then
		return nil
	end
	local v10 = tbl7.GetDescendantCache(v9)
	local tbl16 = {}

	for k_ in pairs(v10) do
		insert(tbl16, k_)
	end

	local tbl17 = {}

	for i_ = 1, #tbl16 do
		local v11 = tbl16[i_]

		if v11.Parent then
			if v11:IsA("Script") or v11:IsA("LocalScript") or v11:IsA("ModuleScript") or v11:IsA("Sound") or v11:IsA("ForceField") or v11:IsA("BillboardGui") or v11:IsA("SurfaceGui") or v11:IsA("ParticleEmitter") or v11:IsA("Fire") or v11:IsA("Smoke") or v11:IsA("Sparkles") then
				destroy(v11)
			elseif v11:IsA("Humanoid") then
				destroy(v11)
			elseif v11:IsA("BodyMover") or v11:IsA("Constraint") then
				destroy(v11)
			elseif v11:IsA("BasePart") then
				v11.Anchored = tbl15.anchored ~= false
				v11.CanCollide = false
				v11.CastShadow = true
				v11.Velocity = vector
				v11.CollisionGroup = "Default"
				insert(tbl17, v11)
			end
		end
	end

	if #tbl17 == 0 then
		destroy(v9)
		return nil
	end
	local humanoidRootPart = v9:FindFirstChild("HumanoidRootPart") or v9.PrimaryPart or v9:FindFirstChild("Torso") or v9:FindFirstChild("UpperTorso") or tbl17[1]
	v9.Name = "DeathPuppet"
	v9.PrimaryPart = humanoidRootPart
	v9.Parent = tbl7.deathFXFolder()
	local tbl18

	tbl18 = {
		model = v9,
		parts = tbl17,
		root = humanoidRootPart,
		origin = humanoidRootPart.Position,
		cframe = humanoidRootPart.CFrame,
		forEach = function(arg3)
			for i_, v11 in ipairs(tbl17) do
				if v11.Parent then
					arg3(v11, i_)
				end
			end
		end,
		visible = function()
			local tbl19 = {}

			for _, v11 in ipairs(tbl17) do
				if v11.Parent and v11.Transparency < 1 and v11.Name ~= "HumanoidRootPart" then
					insert(tbl19, v11)
				end
			end

			return tbl19
		end,
		byHeight = function(arg3)
			local v11 = tbl18.visible()

			table.sort(v11, function(arg4, arg5)
				if arg3 then
					return arg4.Position.Y > arg5.Position.Y
				end
				return arg4.Position.Y < arg5.Position.Y
			end)

			return v11
		end,
		setMaterial = function(material)
			tbl18.forEach(function(arg3)
				arg3.Material = material
			end)
		end,
		setColor = function(color2)
			tbl18.forEach(function(arg3)
				arg3.Color = color2
			end)
		end,
		tint = function(arg3, arg4, arg5)
			tbl18.forEach(function(arg6)
				local tweenService = tbl4.TweenService
				local create = tweenService.Create
				local tweenInfo = TweenInfo.new
				local sine = arg5 or Enum.EasingStyle.Sine
				local tbl19 = { Color = arg3 }
				create(tweenService, arg6, tweenInfo(arg4, sine, Enum.EasingDirection.InOut), tbl19):Play()
			end)
		end,
		glow = function(arg3, arg4)
			tbl18.forEach(function(arg5)
				local tbl19 = { Reflectance = arg3 }
				tbl4.TweenService:Create(arg5, TweenInfo.new(arg4, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), tbl19):Play()
			end)
		end,
		fade = function(arg3, arg4, arg5)
			local v11 = tbl18.byHeight(false)

			for i_, v12 in ipairs(v11) do
				task.delay((arg4 or 0) * (i_ - 1), function()
					if v12.Parent then
						tbl4.TweenService:Create(v12, TweenInfo.new(arg3, arg5 or Enum.EasingStyle.Quad, Enum.EasingDirection.In), { Transparency = 1 }):Play()
					end
				end)
			end

			return (arg4 or 0) * max(0, #v11 - 1) + arg3
		end,
		unjoint = function()
			local v11 = tbl7.GetDescendantCache(v9)
			local tbl19 = {}

			for k_ in pairs(v11) do
				insert(tbl19, k_)
			end

			for i_ = 1, #tbl19 do
				local v12 = tbl19[i_]

				if v12.Parent and v12:IsA("Motor6D") then
					destroy(v12)
				end
			end
		end,
		anchorAll = function(anchored)
			tbl18.forEach(function(arg3)
				arg3.Anchored = anchored
			end)
		end,
		ragdoll = function(arg3)
			local v11 = tbl7.GetDescendantCache(v9)
			local tbl19 = {}

			for k_ in pairs(v11) do
				insert(tbl19, k_)
			end

			for i_ = 1, #tbl19 do
				local v12 = tbl19[i_]

				if v12.Parent and v12:IsA("Motor6D") then
					local part0 = v12.Part0
					local part1 = v12.Part1

					if part0 and part1 then
						local attachment = Instance.new("Attachment")
						attachment.CFrame = v12.C0
						attachment.Parent = part0
						local attachment2 = Instance.new("Attachment")
						attachment2.CFrame = v12.C1
						attachment2.Parent = part1
						local ballSocketConstraint = Instance.new("BallSocketConstraint")
						ballSocketConstraint.Attachment0 = attachment
						ballSocketConstraint.Attachment1 = attachment2
						ballSocketConstraint.LimitsEnabled = true
						ballSocketConstraint.TwistLimitsEnabled = false
						ballSocketConstraint.UpperAngle = 42
						ballSocketConstraint.Parent = part0
					end

					destroy(v12)
				end
			end

			tbl18.forEach(function(arg4)
				arg4.Anchored = false

				if arg3 and arg4.Name ~= "HumanoidRootPart" then
					arg4.CanCollide = true
				end
			end)
		end,
		weldRigid = function()
			tbl18.forEach(function(part1)
				if part1 ~= humanoidRootPart then
					local weldConstraint = Instance.new("WeldConstraint")
					weldConstraint.Part0 = humanoidRootPart
					weldConstraint.Part1 = part1
					weldConstraint.Parent = humanoidRootPart
				end

				part1.Anchored = false
				part1.CanCollide = false
			end)
		end,
		impulse = function(velocity, angularVelocity)
			local bodyVelocity = Instance.new("BodyVelocity")
			bodyVelocity.Velocity = velocity
			bodyVelocity.MaxForce = vector3(1000000, 1000000, 1000000)
			bodyVelocity.Parent = humanoidRootPart
			tbl5._:AddItem(bodyVelocity, 0.2)

			if angularVelocity then
				local bodyAngularVelocity = Instance.new("BodyAngularVelocity")
				bodyAngularVelocity.AngularVelocity = angularVelocity
				bodyAngularVelocity.MaxTorque = vector3(1000000, 1000000, 1000000)
				bodyAngularVelocity.P = 100000
				bodyAngularVelocity.Parent = humanoidRootPart
				tbl5._:AddItem(bodyAngularVelocity, 3)
			end
		end,
		moveBy = function(arg3, arg4, arg5, arg6)
			local tweenInfo = TweenInfo.new(arg4, arg5 or Enum.EasingStyle.Quad, arg6 or Enum.EasingDirection.Out)

			tbl18.forEach(function(arg7)
				tbl4.TweenService:Create(arg7, tweenInfo, { CFrame = arg7.CFrame + arg3 }):Play()
			end)
		end,
		group = function(arg3, arg4)
			local tbl19 = {}
			local tbl20 = {}

			for _, v11 in ipairs(tbl18.visible()) do
				if (v11.Position - arg3):Dot(arg4) >= 0 then
					insert(tbl19, v11)
				else
					insert(tbl20, v11)
				end
			end

			return tbl19, tbl20
		end,
		pointAttachment = function(parent)
			local attachment = Instance.new("Attachment")
			attachment.Parent = parent or humanoidRootPart
			return attachment
		end,
		destroy = function(arg3)
			if arg3 and arg3 > 0 then
				tbl5._:AddItem(v9, arg3)
			else
				destroy(v9)
			end
		end,
	}

	return tbl18
end

tbl7.deathFXPrepare = function(...) end
tbl7.deathFXLightning = function(...) end
tbl7.deathFXFreeze = function(...) end
tbl7.deathFXVoid = function(...) end
tbl7.deathFXMatrix = function(...) end
tbl7.deathFXHologram = function(...) end
tbl7.deathFXLaser = function(...) end
tbl7.deathFXYeet = function(...) end
tbl7.deathFXPlushie = function(...) end
tbl7.deathFXPopcorn = function(...) end
tbl7.deathFXSoulPipeline = function(...) end
tbl7.deathFXBlackhole = function(...) end
tbl7.deathFXAscension = function(...) end
tbl7.deathFXShatter = function(...) end
tbl7.deathFXAshes = function(...) end
tbl7.deathFXGlitch = function(...) end
tbl7.deathFXImplode = function(...) end
tbl7.deathFXSlice = function(...) end
tbl7.deathFXRocket = function(...) end

tbl5.ai = {
	lightning = { run = tbl7.deathFXLightning },
	freeze = { run = tbl7.deathFXFreeze },
	void = { run = tbl7.deathFXVoid },
	matrix = { run = tbl7.deathFXMatrix },
	hologram = { run = tbl7.deathFXHologram },
	laser = { run = tbl7.deathFXLaser },
	yeet = { run = tbl7.deathFXYeet, anchored = false },
	plushie = { run = tbl7.deathFXPlushie },
	popcorn = { run = tbl7.deathFXPopcorn },
	soul = { run = function(arg)
		tbl7.deathFXSoulPipeline(arg, false)
	end },
	cinematic_soul = { run = function(arg)
		tbl7.deathFXSoulPipeline(arg, true)
	end },
	blackhole = { run = tbl7.deathFXBlackhole },
	ascension = { run = tbl7.deathFXAscension },
	shatter = { run = tbl7.deathFXShatter },
	ashes = { run = tbl7.deathFXAshes },
	glitch = { run = tbl7.deathFXGlitch },
	implode = { run = tbl7.deathFXImplode },
	slice = { run = tbl7.deathFXSlice },
	rocket = { run = tbl7.deathFXRocket, anchored = false },
}

tbl7.getDeathEffectIds = function()
	return tbl5.ah
end

tbl7.runCinematicSoulEffect = function(arg)
	tbl7.runDeathEffect(arg, "cinematic_soul")
end

tbl7.runDeathEffect = function(arg, arg2)
	if not tbl6.Features.Visuals.KillFX.Enabled then
		return
	end

	if not arg or tbl5.ac[arg] then
		return
	end
	local v8 = tbl7.getDeathEffectRoot(arg)
	if not v8 then
		return
	end
	local v9 = tbl5.ai[arg2]

	if not v9 then
		if v4(tbl7.hideCharacter) == "function" then
			tbl7.hideCharacter(arg)
		end

		return
	end

	tbl5.ac[arg] = true
	local position = v8.Position
	local v10 = tbl7.deathFXPrepare(arg, { anchored = v9.anchored ~= false })
	if not v10 then
		tbl5.ac[arg] = nil
		return
	end

	local v11, v12 = v6(function()
		return v9.run({ character = arg, puppet = v10, root = v8, pos = position, effectId = arg2 })
	end)

	if not v11 then
		local v13 = warn
		local str = ("[DeathFX] %* failed: %*"):format(arg2, v12)
		v13(str)
	end

	v10.destroy(1.5)
	tbl5.ac[arg] = nil
end

tbl5.aj = {}

for _, v8 in ipairs(tbl5.ah) do
	insert(tbl5.aj, {
		id = v8,
		name = v8:gsub("_", " "):gsub("(%a)([%w_]*)", function(arg, arg2)
			return arg:upper() .. arg2
		end),
	})
end

tbl5.ak = {}

for _, v8 in ipairs(tbl5.aj) do
	tbl5.ak[v8.id] = v8.id
end

tbl7.isKnifeTool = function(arg)
	if not arg or not arg:IsA("Tool") then
		return false
	end
	return arg:HasTag("Weapon_Knife") or arg.Name == "Knife" or string.lower(arg.Name):find("knife") ~= nil
end

tbl6.Features.Movement.BombJumpEnabled = false
tbl6.Features.Movement.BombJumpAutoGet = false
tbl6.Features.Movement.BombJumpOnCooldown = false
tbl6.Features.Movement.BombJumpDebounce = false
tbl6.Features.Movement.BombJumpJustRespawned = false
tbl6.Features.Visuals.FEAnimEnabled = false

tbl6.Features.Visuals.FEAnimState = {
	all = "Default",
	idle = "Default",
	walk = "Default",
	run = "Default",
	jump = "Default",
	climb = "Default",
	fall = "Default",
}

tbl6.Features.Visuals.FEAnimOriginals = {}
tbl6.Features.AutoFarm.AutoFarmEnabled = false
tbl6.Features.AutoFarm.AutoFarmOwnsCoinAura = false
tbl6.Features.AutoFarm.AutoFarmChangingCoinAura = false
tbl6.Features.AutoFarm.AutoFarmLoadingConfig = false
tbl6.Features.AutoFarm.AutoFarmOverlayEnabled = false
tbl6.Features.AutoFarm.AutoFarmTweenSpeed = 25
tbl6.Features.AutoFarm.AutoFarmTweenDelay = 0.1
tbl6.Features.AutoFarm.AutoFarmThread = nil
tbl6.Features.AutoFarm.AutoFarmActiveTween = nil
tbl6.Features.AutoFarm.AutoFarmTweening = false
tbl6.Features.AutoFarm.AutoFarmCurrentTargetCoin = nil
tbl6.Features.AutoFarm.AutoFarmLastProfileRefresh = 0
tbl6.Features.AutoFarm.AutoFarmPostActionCooldown = 0
tbl6.Features.AutoFarm.AutoFarmBodyMovers = {}
tbl6.Features.AutoFarm.AutoFarmVictoryActive = false
tbl6.Features.AutoFarm.AutoFarmNearestCoinCache = nil
tbl6.Features.AutoFarm.AutoFarmNearestCoinConn = nil
tbl6.Features.AutoFarm.AutoFarmIgnoredCoins = {}
tbl6.Features.AutoFarm.AutoFarmCoinRegistry = {}
tbl9.AutoFarmCoin = {}
tbl6.Features.AutoFarm.AutoFarmSavedCFrame = nil
tbl6.Features.AutoFarm.AutoFarmStartCFrame = nil
tbl6.Features.AutoFarm.AutoFarmWaitingForRoundStart = false
tbl6.Features.AutoFarm.AutoFarmWaitConn = nil
tbl6.Features.AutoFarm.AutoFarmWaitCFrame = nil
tbl6.Features.AutoFarm.AutoFarmWaitRestoreUntil = 0
tbl6.Features.AutoFarm.AutoFarmWaitPlatform = nil
tbl6.Features.AutoFarm.AutoFarmWaitRespawnConn = nil
tbl9.AutoFarmEvent = { victoryScreen = nil, coinsStarted = nil, coinCollected = nil }
tbl6.Features.PostFarm.PostFarmKillMurd = false
tbl6.Features.PostFarm.PostFarmKillAll = false
tbl6.Features.PostFarm.PostFarmFlingMurd = false
tbl6.Features.PostFarm.PostFarmRestoreAfterFling = nil
tbl6.Features.PostFarm.postfarmresetin = false
tbl6.Features.PostFarm.postfarmresetsh = false
tbl6.Features.PostFarm.postfarmresetmurd = false
tbl7.getAutoFarmSafeCFrame = function(...) end
tbl7.getAutoFarmLobbyCFrame = function(...) end
tbl7.getAutoFarmRestoreCFrame = function()local A= tbl6 .Player.LocalPlayer.Character;local L=A and(A:FindFirstChild("HumanoidRootPart"));if L then return L.CFrame;end;return nil;end
tbl7.getAutoFarmTeleportTarget = function(A)if not A then return nil;end;if A:IsA("BasePart")then local p=A;while p do if p.Name=="CoinContainer"then return A;end;p=p.Parent;end;end;if A.Parent then local p= tbl7 .getCoinTouchPart(A.Parent);if p then return p;end;end;return A;end
tbl7.getCoinCollectionTouchTarget = function(A)if not A then return nil;end;if A.Parent and A.Parent.Name=="CoinContainer"and(A.Parent:IsA("BasePart"))then return A.Parent;end;local p= tbl7 .getCoinTouchPart(A);if not p or not p:IsA("BasePart")then return nil;end;A=p;while A do if A.Name=="CoinContainer"then return p;end;A=A.Parent;end;return p;end
tbl7.startAutoFarmCoinTracking = function(...) end
tbl7.stopAutoFarmCoinTracking = function(...) end
tbl7.getNearestWorldCollectibleCoin = function(...) end
tbl7.getNearestCollectibleCoin = function(...) end

if not tbl6.Features.AutoFarm.AutoFarmNearestCoinConn then
	tbl6.Features.AutoFarm.AutoFarmNearestCoinConn = nil
end

tbl7.waitForAutoFarmCoinServer = function(...) end
tbl7.cancelAutoFarmTween = function(...) end
tbl7.getAutoFarmTweenDelaySeconds = function(...) end
tbl7.startAutoFarmPhysicsStabilizer = function()local A= tbl6 .Player.LocalPlayer.Character;local p=A and(A:FindFirstChild("HumanoidRootPart"));if not p then return;end;if  tbl6 .Features.AutoFarm.AutoFarmStabilizerConn then return;end;A=Instance.new("Attachment");A.Name="AutoFarmStabilizer";A.Parent=p; tbl6 .Features.AutoFarm.AutoFarmAP=Instance.new("AlignPosition"); tbl6 .Features.AutoFarm.AutoFarmAP.Mode=Enum.PositionAlignmentMode.OneAttachment; tbl6 .Features.AutoFarm.AutoFarmAP.Attachment0=A; tbl6 .Features.AutoFarm.AutoFarmAP.Position=p.Position; tbl6 .Features.AutoFarm.AutoFarmAP.MaxForce=1/0; tbl6 .Features.AutoFarm.AutoFarmAP.Responsiveness=200; tbl6 .Features.AutoFarm.AutoFarmAP.Parent=p; tbl6 .Features.AutoFarm.AutoFarmAO=Instance.new("AlignOrientation"); tbl6 .Features.AutoFarm.AutoFarmAO.Mode=Enum.OrientationAlignmentMode.OneAttachment; tbl6 .Features.AutoFarm.AutoFarmAO.Attachment0=A; tbl6 .Features.AutoFarm.AutoFarmAO.CFrame=p.CFrame; tbl6 .Features.AutoFarm.AutoFarmAO.MaxTorque=1/0; tbl6 .Features.AutoFarm.AutoFarmAO.Responsiveness=200; tbl6 .Features.AutoFarm.AutoFarmAO.Parent=p; tbl6 .Features.AutoFarm.AutoFarmStabilizerConn= tbl4 .RunService.Stepped:Connect(function()local A= tbl6 .Player.LocalPlayer.Character;local p=A and(A:FindFirstChild("HumanoidRootPart"));if  tbl6 .Features.AutoFarm.AutoFarmAP and p and p.Parent then if  tbl6 .Features.AutoFarm.AutoFarmAP.Attachment0 and  tbl6 .Features.AutoFarm.AutoFarmAP.Attachment0.Parent==p then  tbl6 .Features.AutoFarm.AutoFarmAP.Position=p.Position; tbl6 .Features.AutoFarm.AutoFarmAO.CFrame=p.CFrame;else  tbl7 .stopAutoFarmPhysicsStabilizer(); tbl7 .startAutoFarmPhysicsStabilizer();end;else  tbl7 .stopAutoFarmPhysicsStabilizer();end;end);end
tbl7.stopAutoFarmPhysicsStabilizer = function()if  tbl6 .Features.AutoFarm.AutoFarmStabilizerConn then  tbl6 .Features.AutoFarm.AutoFarmStabilizerConn:Disconnect(); tbl6 .Features.AutoFarm.AutoFarmStabilizerConn=nil;end;if  tbl6 .Features.AutoFarm.AutoFarmAP then  destroy ( tbl6 .Features.AutoFarm.AutoFarmAP); tbl6 .Features.AutoFarm.AutoFarmAP=nil;end;if  tbl6 .Features.AutoFarm.AutoFarmAO then  destroy ( tbl6 .Features.AutoFarm.AutoFarmAO); tbl6 .Features.AutoFarm.AutoFarmAO=nil;end;local A= tbl6 .Player.LocalPlayer and  tbl6 .Player.LocalPlayer.Character;local p=A and(A:FindFirstChild("HumanoidRootPart"));if p then A=p:FindFirstChild("AutoFarmStabilizer");if A then  destroy (A);end;end;end
tbl7.cleanupAutoFarmPhysics = function()local A= tbl6 .Player.LocalPlayer and  tbl6 .Player.LocalPlayer.Character;local p,q=A and(A:FindFirstChildOfClass("Humanoid")),A and(A:FindFirstChild("HumanoidRootPart"));if p then p.PlatformStand=false;end;if q then q.Anchored=false;end; tbl7 .stopAutoFarmWaitLoop(); tbl7 .stopAutoFarmPhysicsStabilizer();if  tbl6 .Features.AutoFarm.AutoFarmBodyMovers then for A,A in ipairs( tbl6 .Features.AutoFarm.AutoFarmBodyMovers)do if A and A.Parent then  destroy (A);end;end; tbl6 .Features.AutoFarm.AutoFarmBodyMovers={};end; tbl6 .Features.Movement.NoclipEnabled= tbl6 .Features.AutoFarm.AutoFarmOriginalNoclipState or false;end
tbl7.stopAutoFarmWaitLoop = function()if  tbl6 .Features.AutoFarm.AutoFarmWaitConn then  tbl6 .Features.AutoFarm.AutoFarmWaitConn:Disconnect(); tbl6 .Features.AutoFarm.AutoFarmWaitConn=nil;end;if  tbl6 .Features.AutoFarm.AutoFarmWaitRespawnConn then  tbl6 .Features.AutoFarm.AutoFarmWaitRespawnConn:Disconnect(); tbl6 .Features.AutoFarm.AutoFarmWaitRespawnConn=nil;end; tbl6 .Features.AutoFarm.AutoFarmWaitCFrame=nil; tbl6 .Features.AutoFarm.AutoFarmWaitRestoreUntil=0;if  tbl6 .Features.AutoFarm.AutoFarmWaitPlatform then  destroy ( tbl6 .Features.AutoFarm.AutoFarmWaitPlatform); tbl6 .Features.AutoFarm.AutoFarmWaitPlatform=nil;end;local A= tbl6 .Player.LocalPlayer and  tbl6 .Player.LocalPlayer.Character;local L,p=A and(A:FindFirstChildOfClass("Humanoid")),A and(A:FindFirstChild("HumanoidRootPart"));if L then L:SetStateEnabled(Enum.HumanoidStateType.Dead,true);L.PlatformStand=false;end;if p then p.Anchored=false;end;end
tbl7.startAutoFarmWaitLoop = function(...) end
tbl7.startAutoFarmStep = function(...) end
tbl6.Features.AutoFarm.AutoFarmBaseCoins = 0
tbl6.Features.AutoFarm.AutoFarmBaseTime = 0
tbl7.getAutoFarmStatsSummary = function(...) end
tbl7.formatAutoFarmDuration = function(...) end
tbl7.updateAutoFarmStatsLabel = function()if not  tbl6 .UI.autoFarmStatsLabel then return;end;local A,p,q= tbl7 .getAutoFarmStatsSummary(),"Idle","rgb(255,255,255)";if  tbl6 .Features.AutoFarm.AutoFarmEnabled then if  tbl6 .Features.AutoFarm.AutoFarmWaitingForRoundStart then q,p="rgb(120,200,255)","Waiting";elseif  tbl6 .Game.CoinsStarted then p,q= tbl6 .Game.CoinsFull and"Waiting for next round"or"Active", tbl6 .Game.CoinsFull and"rgb(255,200,80)"or"rgb(80,255,120)";end;end;local Q=("<font color=\"rgb(120,220,255)\"><b>Auto Farm</b></font> \226\128\162 <font color=\"%*\">%*</font>\10<font color=\"rgb(255,255,255)\">Coins:</font> <font color=\"rgb(80,255,120)\">%*</font> \226\128\162 <font color=\"rgb(255,255,255)\">Time:</font> <font color=\"rgb(255,200,80)\">%*</font>\10<font color=\"rgb(255,255,255)\">Rate:</font> <font color=\"rgb(255,120,120)\">%*/hr</font>"):format(q,p,A.coins, tbl7 .formatAutoFarmDuration(A.elapsed),A.perHour); tbl6 .UI.autoFarmStatsLabel:SetText(Q);if  tbl6 .Features.AutoFarm.AutoFarmOverlayEnabled and  tbl6 .UI.autoFarmOverlayLabel and  tbl6 .UI.autoFarmOverlayLabel.SetText then  tbl6 .UI.autoFarmOverlayLabel:SetText(Q);end;end
tbl7.setAutoFarmOverlayEnabled = function(A) tbl6 .Features.AutoFarm.AutoFarmOverlayEnabled=A;if A then if not  tbl6 .UI.autoFarmOverlayLabel then  tbl6 .UI.autoFarmOverlayLabel= tbl6 .UI.lib and  tbl6 .UI.lib.AddDraggableLabel and( tbl6 .UI.lib:AddDraggableLabel("Auto Farm: Initializing"));if  tbl6 .UI.autoFarmOverlayLabel and  tbl6 .UI.autoFarmOverlayLabel.SetVisible then  tbl6 .UI.autoFarmOverlayLabel:SetVisible(true);end;end; tbl7 .updateAutoFarmStatsLabel();elseif  tbl6 .UI.autoFarmOverlayLabel then  tbl6 .UI.autoFarmOverlayLabel:Destroy(); tbl6 .UI.autoFarmOverlayLabel=nil;end;end
tbl7.sendAutoFarmWebhook = function(...) end
tbl7.getAutoFarmActiveMurderer = function()local A= tbl6 .Game.currentMurderer;if A and A.Parent and A.Character and not  tbl7 .isDead(A)then return A;end;for A,A in ipairs( tbl6 .Players.Cache)do if A~= tbl6 .Player.LocalPlayer and A.Parent and A.Character and not  tbl7 .isDead(A)and  tbl7 .getRole(A)=="Murderer"then return A;end;end;return nil;end

tbl7.executePostFarmActions = function()
	if not tbl6.Game.CoinsFull then
		return
	end
	local v8 = tbl7.getRole(tbl6.Player.LocalPlayer)
	local character = tbl6.Player.LocalPlayer.Character
	local humanoidRootPart = character and character:FindFirstChild("HumanoidRootPart")
	local autoFarmStartCFrame = tbl6.Features.AutoFarm.AutoFarmStartCFrame

	if v8 == "Innocent" or v8 == "Sheriff" or v8 == "Hero" or v8 == "Murderer" then
		if tbl6.Features.PostFarm.PostFarmKillMurd and (tbl7.getRole(tbl6.Player.LocalPlayer) == "Sheriff" or tbl7.getRole(tbl6.Player.LocalPlayer) == "Hero") then
			task.wait(0.5)
			tbl7.cancelAutoFarmTween()
			tbl6.Features.AutoFarm.AutoFarmCurrentTargetCoin = nil
			tbl7.cleanupAutoFarmPhysics()

			if humanoidRootPart then
				humanoidRootPart.CFrame = tbl7.getAutoFarmSafeCFrame()
				humanoidRootPart.Velocity = vector
				humanoidRootPart.AssemblyLinearVelocity = vector
			end

			local v9 = v7()

			while true do
				if tbl6.Features.AutoFarm.AutoFarmEnabled and (tbl7.getRole(tbl6.Player.LocalPlayer) == "Sheriff" or tbl7.getRole(tbl6.Player.LocalPlayer) == "Hero") and not tbl6.Features.AutoFarm.AutoFarmVictoryActive and v7() - v9 < 10 then
					local character2 = tbl6.Player.LocalPlayer.Character

					if character2 then
						local gun = character2:FindFirstChild("Gun") or tbl6.Player.LocalPlayer.Backpack and tbl6.Player.LocalPlayer.Backpack:FindFirstChild("Gun")

						if gun and gun.Parent ~= character2 then
							gun.Parent = character2
							task.wait(0.15)
						end

						local v10 = tbl7.getAutoFarmActiveMurderer()

						if not v10 or not v10.Character then
							task.wait(0.2)
						elseif tbl7.isDead(v10) then
							task.wait(0.2)
						elseif tbl7.getRole(v10) ~= "Murderer" then
							task.wait(0.2)
						else
							local upperTorso = v10.Character:FindFirstChild("UpperTorso") or v10.Character:FindFirstChild("Torso") or v10.Character:FindFirstChild("Head") or v10.Character:FindFirstChild("HumanoidRootPart")
							local gun2 = tbl4.Workspace:FindFirstChild(tbl6.Player.LocalPlayer.Name)
							gun2 = gun2 and gun2:FindFirstChild("Gun")
							gun2 = gun2 and gun2:FindFirstChild("Shoot", true)

							if upperTorso and gun2 then
								local cFrame = upperTorso.CFrame
								tbl7.fireGunShot(gun2, cframe(cFrame.Position - cFrame.LookVector * 5, cFrame.Position), cFrame)
							end

							task.wait(0.3)
						end

						continue
					end
				end

				break
			end
		elseif v8 == "Murderer" and tbl6.Features.PostFarm.PostFarmKillAll then
			tbl7.cancelAutoFarmTween()
			tbl6.Features.AutoFarm.AutoFarmCurrentTargetCoin = nil
			tbl7.cleanupAutoFarmPhysics()

			if humanoidRootPart then
				humanoidRootPart.CFrame = tbl7.getAutoFarmSafeCFrame()
				humanoidRootPart.Velocity = vector
				humanoidRootPart.AssemblyLinearVelocity = vector
			end

			task.wait(0.3)

			if v4(tbl7.farmKillAll) == "function" then
				tbl7.farmKillAll()
			end
		elseif v8 == "Innocent" and tbl6.Features.PostFarm.PostFarmFlingMurd then
			task.wait(0.5)

			if tbl6.Game.currentMurderer then
				tbl6.Features.PostFarm.PostFarmRestoreAfterFling = autoFarmStartCFrame

				if not tbl7.flingMurderer() then
					tbl6.Features.PostFarm.PostFarmRestoreAfterFling = nil

					if humanoidRootPart and autoFarmStartCFrame then
						humanoidRootPart.CFrame = autoFarmStartCFrame
					end
				end
			elseif humanoidRootPart and autoFarmStartCFrame then
				humanoidRootPart.CFrame = autoFarmStartCFrame
			end
		end

		if tbl6.Features.PostFarm.postfarmresetin and v8 == "Innocent" then
			character:BreakJoints()
		elseif tbl6.Features.PostFarm.postfarmresetsh and (v8 == "Sheriff" or v8 == "Hero") then
			character:BreakJoints()
		elseif tbl6.Features.PostFarm.postfarmresetmurd and v8 == "Murderer" then
			character:BreakJoints()
		end
	end

	tbl7.cancelAutoFarmTween()
	tbl6.Features.AutoFarm.AutoFarmCurrentTargetCoin = nil
	tbl6.Game.CoinsStarted = false
	tbl6.Game.CoinsFull = false
	tbl6.Features.AutoFarm.AutoFarmPostActionCooldown = v7() + 99999
	tbl7.cleanupAutoFarmPhysics()
	local autoFarmSavedCFrame = tbl6.Features.AutoFarm.AutoFarmSavedCFrame or tbl7.getAutoFarmRestoreCFrame()

	if autoFarmSavedCFrame and tbl6.Player.LocalPlayer.Character and not tbl6.Features.PostFarm.PostFarmRestoreAfterFling then
		local humanoidRootPart2 = tbl6.Player.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")

		if humanoidRootPart2 then
			humanoidRootPart2.CFrame = autoFarmSavedCFrame
		end
	end

	tbl7.updateAutoFarmStatsLabel()

	if tbl6.Features.AutoFarm.AutoFarmEnabled then
		tbl6.Features.AutoFarm.AutoFarmWaitingForRoundStart = true
		tbl4.Workspace.FallenPartsDestroyHeight = (0/0)

		if not tbl6.Features.PostFarm.PostFarmRestoreAfterFling then
			tbl7.startAutoFarmWaitLoop()
		end
	end
end

tbl7.farmKillAll = function()
	local character = tbl6.Player.LocalPlayer.Character
	if not character then
		return
	end
	local knife = character:FindFirstChild("Knife") or tbl6.Player.LocalPlayer.Backpack:FindFirstChild("Knife")
	if not knife then
		return
	end
	local events = knife:FindFirstChild("Events")
	if not events then
		return
	end
	local handleTouched = events:FindFirstChild("HandleTouched")
	if not handleTouched then
		return
	end

	for _, v8 in ipairs(tbl6.Players.Cache) do
		if v8 ~= tbl6.Player.LocalPlayer and v8.Character then
			local upperTorso = v8.Character:FindFirstChild("UpperTorso") or v8.Character:FindFirstChild("Torso")

			if upperTorso then
				for i_ = 1, 3 do
					handleTouched:FireServer(upperTorso)
				end
			end
		end
	end
end

tbl7.disconnectAutoFarmEventConnections = function(...) end
tbl7.setupAutoFarmEvents = function(...) end
tbl7.startAutoFarm = function(...) end
tbl7.stopAutoFarm = function(...) end

tbl7.startWebhookLoop = function()
	if tbl6.Features.Webhook.WebhookThread then
		tbl6.Features.Webhook.WebhookThread = nil
	end

	tbl6.Features.Webhook.WebhookThread = task.spawn(function()
		while tbl6.Features.Webhook.WebhookEnabled and task.wait(1) do
			local webhookLastSent = tbl6.Features.Webhook.WebhookLastSent

			if tbl6.Features.Webhook.WebhookInterval <= v7() - webhookLastSent then
				tbl6.Features.Webhook.WebhookLastSent = v7()
				local v8 = tbl7.getAutoFarmStatsSummary()
				local perHour = v8.perHour
				tbl7.sendAutoFarmWebhook("Auto Farm Status", ("Session Coins = %* | Elapsed = %* | Approx /hr = %*."):format(v8.coins, tbl7.formatAutoFarmDuration(v8.elapsed), perHour), 16776960)
			end
		end
	end)
end

tbl7.stopWebhookLoop = function()
	tbl6.Features.Webhook.WebhookEnabled = false

	if tbl6.Features.Webhook.WebhookThread then
		tbl6.Features.Webhook.WebhookThread = nil
	end
end

tbl5.am = v4(tbl7.setupAutoFarmEvents) == "function" and tbl6.game == "Murder Mystery 2"

if tbl5.am then
	tbl5.an = tbl7.setupAutoFarmEvents()
end

tbl6.Features.Combat.AimlockEnabled = false
tbl6.Features.Combat.AimlockMurderer = false
tbl6.Features.Combat.AimlockSheriff = false
tbl6.Features.Combat.AimlockSelected = false
tbl6.Features.Combat.AimlockSmoothness = 10
tbl6.Features.Combat.aimlockRenderConn = nil
tbl6.Features.Combat.aimlockOldCameraType = nil
tbl6.Features.Combat.aimlockOldCameraSubject = nil
tbl6.Features.Webhook.WebhookEnabled = false
tbl6.Features.Webhook.WebhookURL = ""
tbl6.Features.Webhook.WebhookInterval = 10
tbl6.Features.Webhook.WebhookLastSent = 0
tbl6.Features.Webhook.WebhookOnFull = false
tbl6.Game.CoinsStarted = false
tbl6.Game.CoinsFull = false
tbl6.Game.CoinsCollected = 0
tbl6.Game.RoundStartTime = 0
tbl6.Features.AutoFarm.AutoFarmSessionCoinsCollected = 0
tbl6.Features.AutoFarm.AutoFarmSessionStartTime = 0
tbl6.Features.AutoFarm.AutoFarmSessionXPStart = nil
tbl6.Features.AutoFarm.AutoFarmSessionLevelStart = nil
tbl6.Features.AutoFarm.AutoFarmProfileXP = nil
tbl6.Features.AutoFarm.AutoFarmProfileLevel = nil
tbl6.Features.Webhook.WebhookThread = nil
tbl6.Features.PostFarm.AutoRejoinEnabled = false
tbl6.Features.PostFarm.AutoRejoinTarget = nil
tbl6.Features.PostFarm.AutoRejoinThread = nil
tbl6.Player.CharacterParts = setmetatable({}, { __mode = "k" })
tbl7.charPart = function(A,p)local q=A and A.Character;if not q then return nil;end;local Q= tbl6 .Player.CharacterParts[A];if not Q or Q.c~=q then Q={c=q}; tbl6 .Player.CharacterParts[A]=Q;end;A=Q[p];if A and A.Parent==q then return A;end;A=if p=="Humanoid"then(q:FindFirstChildOfClass("Humanoid"))else(q:FindFirstChild(p));if A then Q[p]=A;end;return A;end
tbl7.getRole = function(A)local p= tbl6 .Game.roleTable[A.Name];return p and p.Role or"Unknown";end
tbl7.isDead = function(A)local p= tbl6 .Game.roleTable[A.Name];return p and p.Dead==true;end

tbl7.isHeroEligible = function(arg)
	local character = arg.Character
	local backpack = arg:FindFirstChild("Backpack")
	return character and character:FindFirstChild("Gun") ~= nil or backpack and backpack:FindFirstChild("Gun") ~= nil
end

tbl7.getDisplayColor = function(arg)
	if arg == "Murderer" then
		return tbl6.Features.ESP.espSettings.MurdererColor
	end

	if arg == "Sheriff" then
		return tbl6.Features.ESP.espSettings.SheriffColor
	end

	if arg == "Hero" then
		return tbl6.Features.ESP.espSettings.HeroColor
	end

	if arg == "Innocent" then
		return tbl6.Features.ESP.espSettings.InnocentColor
	end
	return tbl6.Features.ESP.espSettings.UnknownColor
end

tbl7.shouldShow = function(A,p)local q= tbl6 .Features.ESP.espSettings[A];if not q or not q.Enabled then return false;end;if q.Everyone then return true;end;if p=="Murderer"and q.Murderer then return true;end;if(p=="Sheriff"or p=="Hero")and q.Sheriff then return true;end;if p=="Innocent"and q.Innocent then return true;end;return false;end
tbl7.shouldShowGun = function(A)local p= tbl6 .Features.ESP.espSettings[A];return p and p.Enabled and p.Gun;end

tbl7.setTransparency = function(arg, localTransparencyModifier)
	for k_ in pairs(tbl7.GetDescendantCache(arg)) do
		if k_.Parent and k_:IsA("BasePart") then
			if k_.Name == "HumanoidRootPart" then
				k_.LocalTransparencyModifier = localTransparencyModifier
			else
				k_.Transparency = localTransparencyModifier
			end
		elseif k_.Parent and k_:IsA("Decal") then
			k_.Transparency = localTransparencyModifier
		end
	end

	tbl7.cancelAutoFarmTween()
	tbl6.Features.AutoFarm.AutoFarmCurrentTargetCoin = nil
	tbl6.Game.CoinsStarted = false
	tbl6.Game.CoinsFull = false
	tbl7.cleanupAutoFarmPhysics()
	tbl7.updateAutoFarmStatsLabel()
end

tbl7.applyinv = function()
	local cFrame = tbl6.Player.LocalPlayer.Character.HumanoidRootPart.CFrame
	wait()
	tbl6.Player.LocalPlayer.Character:MoveTo(vector3(-25.95, 84, 3537.55))
	wait(0.15)
	local seat = Instance.new("Seat")
	seat.Anchored = false
	seat.CanCollide = false
	seat.Name = "invischair"
	seat.Transparency = 1
	seat.Position = vector3(-25.95, 84, 3537.55)
	seat.Parent = v.Workspace
	local weld = Instance.new("Weld")
	weld.Name = "invisweld"
	weld.Part0 = seat
	weld.Part1 = tbl6.Player.LocalPlayer.Character:FindFirstChild("Torso") or tbl6.Player.LocalPlayer.Character.UpperTorso
	weld.Parent = seat
	wait()
	seat.CFrame = cFrame
	tbl7.setTransparency(tbl6.Player.LocalPlayer.Character, 0.5)
end

tbl7.cleanupinvis = function()
	local character = tbl6.Player.LocalPlayer.Character

	if character then
		local torso = character:FindFirstChild("Torso") or character:FindFirstChild("UpperTorso")

		if torso then
			local invisweld = torso:FindFirstChild("invisweld")

			if invisweld then
				destroy(invisweld)
			end
		end
	end

	local invischair = v.Workspace:FindFirstChild("invischair")

	if invischair then
		local invisweld = invischair:FindFirstChild("invisweld")

		if invisweld then
			destroy(invisweld)
		end

		destroy(invischair)
	end

	if character then
		tbl7.setTransparency(character, 0)
	end
end

tbl7.secondsToMinutes = function(arg)
	if not arg or v4(arg) ~= "number" then
		return "0:00"
	end
	local v8 = floor(arg / 60)
	local v9 = floor(arg % 60)
	return format("%d:%02d", v8, v9)
end

tbl7.getColorString = function(arg, arg2)
	return format("<font color=\"rgb(%d,%d,%d)\">%s</font>", floor(arg.R * 255), floor(arg.G * 255), floor(arg.B * 255), arg2 or "")
end

tbl7.isRoundOngoing = function()
	local roundTimerPart = tbl4.Workspace:FindFirstChild("RoundTimerPart")
	if not roundTimerPart then
		return false
	end
	local attribute = roundTimerPart:GetAttribute("Time")
	return v4(attribute) == "number" and attribute > 0
end

tbl7.updateCachedRoles = function()
	tbl6.Game.currentMurderer = nil
	tbl6.Game.currentSheriff = nil
	tbl6.Game.currentHero = nil

	for _, v8 in pairs(tbl6.Players.Cache) do
		local v9 = tbl7.getRole(v8)

		if v9 == "Murderer" and not tbl7.isDead(v8) then
			tbl6.Game.currentMurderer = v8
		end

		if v9 == "Sheriff" and not tbl7.isDead(v8) then
			tbl6.Game.currentSheriff = v8
		end

		if v9 == "Hero" and not tbl7.isDead(v8) then
			tbl6.Game.currentHero = v8
		end
	end

	if not tbl6.Game.currentSheriff and not tbl6.Game.currentHero and tbl7.isRoundOngoing() then
		for _, v8 in pairs(tbl6.Players.Cache) do
			local v9 = tbl7.getRole(v8)
			if (v9 == "Innocent" or v9 == "Unknown") and not tbl7.isDead(v8) and tbl7.isHeroEligible(v8) then
				tbl6.Game.currentHero = v8
				break
			end
		end
	end
end

tbl7.updateStatusLabels = function()
	local str = "None"

	if tbl6.Game.currentMurderer then
		str = ("%* (%*)"):format(tbl6.Game.currentMurderer.Name, tbl6.Game.currentMurderer.DisplayName)
	end

	local unknownColor = tbl6.Features.ESP.espSettings.UnknownColor
	local str2, str3

	if tbl6.Game.currentHero then
		str2 = ("%* (%*)"):format(tbl6.Game.currentHero.Name, tbl6.Game.currentHero.DisplayName)
		unknownColor = tbl6.Features.ESP.espSettings.HeroColor
		str3 = "Hero"
	else
		str2 = "None"
		str3 = "Sheriff"

		if tbl6.Game.currentSheriff then
			str2 = ("%* (%*)"):format(tbl6.Game.currentSheriff.Name, tbl6.Game.currentSheriff.DisplayName)
			unknownColor = tbl6.Features.ESP.espSettings.SheriffColor
		end
	end

	local str4 = next(tbl6.Features.ESP.gunEspObjects) ~= nil and "true" or "false"

	if tbl6.UI.statusMurdererLabel then
		local statusMurdererLabel = tbl6.UI.statusMurdererLabel
		local setText = statusMurdererLabel.SetText
		local str5 = ("Murderer : %*"):format(tbl7.getColorString(tbl6.Features.ESP.espSettings.MurdererColor, str))
		setText(statusMurdererLabel, str5)
	end

	if tbl6.UI.statusSheriffLabel then
		local statusSheriffLabel = tbl6.UI.statusSheriffLabel
		local setText = statusSheriffLabel.SetText
		local str5 = ("%* : %*"):format(str3, tbl7.getColorString(unknownColor, str2))
		setText(statusSheriffLabel, str5)
	end

	if tbl6.UI.statusGunLabel then
		local statusGunLabel = tbl6.UI.statusGunLabel
		local setText = statusGunLabel.SetText
		local str5 = ("Dropped Gun : %*"):format(tbl7.getColorString(tbl6.Features.ESP.espSettings.GunColor, str4))
		setText(statusGunLabel, str5)
	end

	if tbl6.UI.flingStatusLabel and not tbl6.Features.Movement.isFlinging then
		tbl6.UI.flingStatusLabel:SetText("Fling Status: Idle")
	end

	if tbl6.Features.Visuals.StatusOverlayEnabled and tbl6.UI.statusDraggableLabel and tbl6.UI.statusDraggableLabel.SetText then
		local str5 = ("Murderer : %*\n%* : %*\nDropped Gun : %*"):format(tbl7.getColorString(tbl6.Features.ESP.espSettings.MurdererColor, str), str3, tbl7.getColorString(unknownColor, str2), tbl7.getColorString(tbl6.Features.ESP.espSettings.GunColor, str4))

		if tbl2 ~= nil and tbl6 ~= nil and tbl6.UI ~= nil and tbl6.UI.statusDraggableLabel ~= nil and v4(tbl6.UI.statusDraggableLabel.SetText) == "function" then
			tbl6.UI.statusDraggableLabel:SetText(str5)
		end
	end
end

tbl7.checkRoleNotify = function()
	local v8 = tbl7.getRole(tbl6.Player.LocalPlayer)
	local v9 = tbl7.isDead(tbl6.Player.LocalPlayer)
	local local_ = tbl6.Game.prevRoles.__local__ or "Unknown"

	if v8 ~= local_ and not v9 then
		tbl6.Game.prevRoles.__local__ = v8

		if v8 ~= "Unknown" and tbl6.UI.Toggles.InstantRoleNotify and tbl6.UI.Toggles.InstantRoleNotify.Value == true then
			tbl6.UI.lib:Notify({
				Title = "Role Assigned\t\t\t\t",
				Description = tbl7.getColorString(tbl7.getDisplayColor(v8), v8) .. "\t\t\t",
				Time = 5,
			})
		end

		if local_ == "Unknown" and v8 ~= "Unknown" then
			if tbl6.UI.Toggles.ShowMurdererChance and tbl6.UI.Toggles.ShowMurdererChance.Value == true then
				local flag = tbl2 ~= nil and tbl4 ~= nil and tbl4.ReplicatedStorage ~= nil and v4(tbl4.ReplicatedStorage.FindFirstChild) == "function"
				local response = nil

				if flag then
					response = tbl4.ReplicatedStorage:FindFirstChild("Remotes") and tbl4.ReplicatedStorage.Remotes:FindFirstChild("Extras") and tbl4.ReplicatedStorage.Remotes.Extras:FindFirstChild("GetChance") and tbl4.ReplicatedStorage.Remotes.Extras.GetChance:InvokeServer()
				end

				if flag and v4(response) == "number" then
					local lib = tbl6.UI.lib
					local notify = lib.Notify
					local tbl15 = { Title = "Murderer Chance\t\t\t\t" }
					local getColorString = tbl7.getColorString
					local murdererColor = tbl6.Features.ESP.espSettings.MurdererColor
					local str = ("%*%%\t\t\t"):format(response)
					tbl15.Description = getColorString(murdererColor, str)
					tbl15.Time = 5
					notify(lib, tbl15)
				end
			end
		end
	elseif v9 then
		tbl6.Game.prevRoles.__local__ = "Dead"
	elseif not v9 and v8 == "Unknown" then
		tbl6.Game.prevRoles.__local__ = "Unknown"
	end

	for _, v10 in ipairs(tbl6.Players.Cache) do
		if v10 ~= tbl6.Player.LocalPlayer then
			local v11 = tbl7.getRole(v10)
			local v12 = tbl7.isDead(v10)

			if v11 ~= (tbl6.Game.prevRoles[v10.Name] and tbl6.Game.prevRoles[v10.Name].Role or "Unknown") and not v12 then
				tbl6.Game.prevRoles[v10.Name] = { Role = v11, Dead = v12 }

				if v11 ~= "Unknown" and tbl6.UI.Toggles.ExposeRoles and tbl6.UI.Toggles.ExposeRoles.Value == true then
					if v11 == "Murderer" or v11 == "Sheriff" or v11 == "Hero" then
						local getColorString = tbl7.getColorString

						tbl6.UI.lib:Notify({
							Title = "Role Exposed\t\t\t\t",
							Description = ("%* is the "):format(v10.Name) .. getColorString(tbl7.getDisplayColor(v11), v11) .. "\t\t\t\t",
							Time = 5,
						})
					end
				end
			elseif v12 then
				tbl6.Game.prevRoles[v10.Name] = { Role = "Dead", Dead = true }
			elseif not v12 and v11 == "Unknown" then
				tbl6.Game.prevRoles[v10.Name] = { Role = "Unknown", Dead = false }
			end
		end
	end
end

tbl7.blurtSheriff = function()
	local currentSheriff = tbl6.Game.currentSheriff or tbl6.Game.currentHero

	if currentSheriff then
		if tbl2 ~= nil and tbl4 ~= nil and tbl4.TextChatService ~= nil and tbl4.TextChatService.TextChannels ~= nil and tbl4.TextChatService.TextChannels.RBXGeneral ~= nil and v4(tbl4.TextChatService.TextChannels.RBXGeneral.SendAsync) == "function" then
			local rbxGeneral = tbl4.TextChatService.TextChannels.RBXGeneral
			local sendAsync = rbxGeneral.SendAsync
			local v8 = rbxGeneral
			local str = ("%* is the Sheriff"):format(currentSheriff.Name)
			sendAsync(v8, str)
		end
	end
end

tbl7.blurtMurderer = function()
	if tbl6.Game.currentMurderer then
		if tbl2 ~= nil and tbl4 ~= nil and tbl4.TextChatService ~= nil and tbl4.TextChatService.TextChannels ~= nil and tbl4.TextChatService.TextChannels.RBXGeneral ~= nil and v4(tbl4.TextChatService.TextChannels.RBXGeneral.SendAsync) == "function" then
			local rbxGeneral = tbl4.TextChatService.TextChannels.RBXGeneral
			local sendAsync = rbxGeneral.SendAsync
			local v8 = rbxGeneral
			local str = ("%* is the Murderer"):format(tbl6.Game.currentMurderer.Name)
			sendAsync(v8, str)
		end
	end
end

tbl7.blurtBoth = function()
	tbl7.blurtSheriff()
	tbl7.blurtMurderer()
end

tbl7.exposeSheriff = function()
	local currentSheriff = tbl6.Game.currentSheriff or tbl6.Game.currentHero

	if currentSheriff then
		local v8 = tbl7.getRole(currentSheriff)
		local str = v8 == "Hero" and "Hero" or "Sheriff"
		local heroColor = v8 == "Hero" and tbl6.Features.ESP.espSettings.HeroColor or tbl6.Features.ESP.espSettings.SheriffColor

		tbl6.UI.lib:Notify({
			Title = "Role Exposed\t\t\t\t",
			Description = ("%* is the "):format(currentSheriff.Name) .. tbl7.getColorString(heroColor, str) .. "\t\t\t\t",
			Time = 5,
		})
	end
end

tbl7.exposeMurderer = function()
	if tbl6.Game.currentMurderer then
		tbl6.UI.lib:Notify({
			Title = "Role Exposed\t\t\t",
			Description = ("%* is the "):format(tbl6.Game.currentMurderer.Name) .. tbl7.getColorString(tbl6.Features.ESP.espSettings.MurdererColor, "Murderer"),
			Time = 5,
		})
	end
end

tbl7.exposeBoth = function()
	tbl7.exposeSheriff()
	tbl7.exposeMurderer()
end

tbl7.getDrawingFolder = function()
	if not tbl6.Features.ESP.drawingFolder or not tbl6.Features.ESP.drawingFolder.Parent then
		local screenGui = Instance.new("ScreenGui")
		screenGui.Name = tbl7._obfName()
		screenGui.IgnoreGuiInset = true
		screenGui.DisplayOrder = 9999
		screenGui.ResetOnSpawn = false
		screenGui.Parent = tbl7.getGuiParent()
		tbl6.Features.ESP.drawingFolder = screenGui
		tbl7.protectGui(screenGui)
	end

	return tbl6.Features.ESP.drawingFolder
end

do
	local function fn7(arg, arg2, arg3)
		local tbl15 = {}
		local tbl16

		tbl16 = {
			_cache = tbl15,
			_max = arg3 or 16,
			acquire = function()
				local v8 = remove(tbl15)
				if v8 then
					arg2(v8)
					return v8
				end
				return arg()
			end,
			release = function(arg4)
				arg2(arg4)

				if #tbl15 < tbl16._max then
					tbl15[#tbl15 + 1] = arg4
				else
					local frame = arg4._frame or arg4._billboard or arg4.gui or arg4

					if frame and v4(frame) ~= "table" then
						destroy(frame)
					end
				end
			end,
		}

		return tbl16
	end

	tbl7.createDrawingLine = function(...) end
	tbl7.createDrawingText = function(...) end

	local function fn8(arg)
		arg.Transparency = 0
		arg.Thickness = 1
		arg.Color = color(255, 255, 255)
		arg.Visible = false
	end

	local function fn9(arg)
		if arg.Enabled ~= nil then
			arg.Enabled = false
			arg.Adornee = nil
		end
	end

	local function fn10(arg)
		if arg.box then
			arg.box[1].Visible = false
			arg.box[2].Visible = false
			arg.box[3].Visible = false
			arg.box[4].Visible = false
		end

		if arg.tracer then
			arg.tracer.Visible = false
		end

		if arg.billboard then
			arg.billboard.Enabled = false
			arg.billboard.Adornee = nil
		end
	end

	fn7(tbl7.createDrawingLine, fn8, 64)

	fn7(function()
		local billboardGui = Instance.new("BillboardGui")
		billboardGui.Size = udim22(0, 220, 0, 60)
		billboardGui.StudsOffset = vector3(0, 2.2, 0)
		billboardGui.AlwaysOnTop = true
		billboardGui.LightInfluence = 0
		billboardGui.Enabled = false
		billboardGui.Parent = tbl7.getGuiParent()
		tbl7.protectGui(billboardGui)
		return billboardGui
	end, fn9, 32)

	fn7(function()
		return { box = {}, tracer = nil, billboard = nil }
	end, fn10, 16)
end

do
	local tbl15 = {}
	local position = cframe(2.4975, 4.725, 0).Position
	local position2 = cframe(-2.4975, 4.725, 0).Position
	local position3 = cframe(2.4975, -4.725, 0).Position
	local position4 = cframe(-2.4975, -4.725, 0).Position
	tbl15[1] = position
	tbl15[2] = position2
	tbl15[3] = position3
	tbl15[4] = position4
	local tbl16 = {}
	local position5 = cframe(1.35, 1.35, 0).Position
	local position6 = cframe(-1.35, 1.35, 0).Position
	local position7 = cframe(1.35, -1.35, 0).Position
	local position8 = cframe(-1.35, -1.35, 0).Position
	tbl16[1] = position5
	tbl16[2] = position6
	tbl16[3] = position7
	tbl16[4] = position8
	local tbl17 = {}
	local position9 = cframe(0.9, 0.9, 0).Position
	local position10 = cframe(-0.9, 0.9, 0).Position
	local position11 = cframe(0.9, -0.9, 0).Position
	local position12 = cframe(-0.9, -0.9, 0).Position
	tbl17[1] = position9
	tbl17[2] = position10
	tbl17[3] = position11
	tbl17[4] = position12

	tbl7._hideBox = function(arg)
		for i_ = 1, 4 do
			arg[i_].Visible = false
		end
	end

	tbl7.updateFixedBox = function(arg, arg2, color2, arg3, arg4)
		arg3 = arg3 or 40
		arg4 = arg4 or 55
		local v8 = vector2(arg2.X - arg3, arg2.Y - arg4)
		local v9 = vector2(arg2.X + arg3, arg2.Y - arg4)
		local v10 = vector2(arg2.X - arg3, arg2.Y + arg4)
		local v11 = vector2(arg2.X + arg3, arg2.Y + arg4)
		local v12 = arg[1]
		local v13 = arg[2]
		local v14 = arg[3]
		local v15 = arg[4]
		v12.From = v8
		v12.To = v9
		v12.Color = color2
		v12.Visible = true
		v13.From = v10
		v13.To = v11
		v13.Color = color2
		v13.Visible = true
		v14.From = v8
		v14.To = v10
		v14.Color = color2
		v14.Visible = true
		v15.From = v9
		v15.To = v11
		v15.Color = color2
		v15.Visible = true
		return true
	end

	tbl7.updateOrientedBox = function(arg, arg2, arg3, color2, arg4)
		local v8 = arg4 or tbl15
		local v9 = cframe2(arg2, arg3.CFrame.Position)
		local v10, v11 = arg3:WorldToViewportPoint(v9 * v8[1])
		local v12, v13 = arg3:WorldToViewportPoint(v9 * v8[2])
		local v14, v15 = arg3:WorldToViewportPoint(v9 * v8[3])
		local v16, v17 = arg3:WorldToViewportPoint(v9 * v8[4])
		if not (v11 or v13 or v15 or v17) then
			tbl7._hideBox(arg)
			return false
		end
		local v18 = vector2(v10.X, v10.Y)
		local v19 = vector2(v12.X, v12.Y)
		local v20 = vector2(v14.X, v14.Y)
		local v21 = vector2(v16.X, v16.Y)
		local v22 = arg[1]
		local v23 = arg[2]
		local v24 = arg[3]
		local v25 = arg[4]

		if v11 and v13 then
			v22.From = v18
			v22.To = v19
			v22.Color = color2
			v22.Visible = true
		else
			v22.Visible = false
		end

		if v17 and v15 then
			v23.From = v21
			v23.To = v20
			v23.Color = color2
			v23.Visible = true
		else
			v23.Visible = false
		end

		if v13 and v17 then
			v24.From = v19
			v24.To = v21
			v24.Color = color2
			v24.Visible = true
		else
			v24.Visible = false
		end

		if v11 and v15 then
			v25.From = v18
			v25.To = v20
			v25.Color = color2
			v25.Visible = true
		else
			v25.Visible = false
		end

		return true
	end

	tbl7.updateBox = function(arg, arg2, arg3, arg4, arg5, arg6)
		local v8

		if arg6 == "coin" then
			v8 = tbl17
		elseif arg6 == "prop" then
			v8 = tbl16
		else
			v8 = tbl15
		end

		if not tbl7.updateOrientedBox(arg, arg2, arg4, arg5, v8) then
			tbl7._hideBox(arg)
			return false
		end
		return true
	end
end

tbl7._updateTracer = function(arg, from, to, color2, arg2)
	if not arg2 then
		arg.Visible = false
		return
	end
	arg.From = from
	arg.To = to
	arg.Color = color2
	arg.Visible = true
end

tbl7.createESP = function(...) end
tbl7.removeESP = function(...) end
tbl7.patchCharacterVisibility = function(A)if not A then return;end;for p in pairs( tbl7 .GetDescendantCache(A))do if p.Parent and(p:IsA("BasePart"))and p.Name~="HumanoidRootPart"then if p.LocalTransparencyModifier>=1 then p.LocalTransparencyModifier=0.9;end;if p.Transparency>=1 then p.Transparency=0.9;end;end;end;end

do
	local function fn7(...) end
	local function fn8(...) end
	tbl7.applyHighlight = function(...) end
	tbl7.removeHighlight = function(A)local p= tbl6 .Features.ESP.highlightObjects[A];if p then  fn8 (p.boxes);if p.outline then  destroy (p.outline);end; tbl6 .Features.ESP.highlightObjects[A]=nil;end;end
	tbl7.hideDrawings = function(L)for A,A in pairs(L.box)do A.Visible=false;end;L.tracer.Visible=false;if L.billboard then L.billboard.Enabled=false;end;end
	tbl7.createGunESP = function(...) end
	tbl7.removeGunESP = function(...) end
	tbl7.applyGunHighlight = function(A,p,q)if not A or not A:IsA("BasePart")then return;end;local Q,f,P= tbl6 .Features.ESP.gunHighlightObjects[A],(p and 2 or 0)+(q and 1 or 0), tbl6 .Features.ESP.espSettings.GunColor;if not Q or Q.part~=A then if Q then  fn8 (Q.chams); fn8 (Q.outline);else Q={}; tbl6 .Features.ESP.gunHighlightObjects[A]=Q;end;Q.part=A;Q.chams={ fn7 (A,P,0.4,10,0.08)};local b=Instance.new("Highlight");b.Adornee=A;b.FillTransparency=1;b.OutlineTransparency=0;b.OutlineColor=P;b.DepthMode=Enum.HighlightDepthMode.AlwaysOnTop;b.Enabled=false;b.Parent= tbl7 .getGuiParent(); tbl7 .protectGui(b);Q.outline={b};Q.color=nil;Q.mode=nil;end;if Q.color~=P or Q.mode~=f then Q.color=P;Q.mode=f;for L,L in ipairs(Q.chams)do L.Color3=P;L.Visible=p;end;for L,L in ipairs(Q.outline)do L.OutlineColor=P;L.Enabled=q;end;end;end
	tbl7.removeGunHighlight = function(A)local p= tbl6 .Features.ESP.gunHighlightObjects[A];if p then  fn8 (p.chams); fn8 (p.outline); tbl6 .Features.ESP.gunHighlightObjects[A]=nil;end;end
	tbl7.createTrapESP = function(...) end
	tbl7.getTrapPosition = function(L)if not L then return nil;end;if L:IsA("BasePart")then return L.Position;end;if L:IsA("Model")then return L:GetPivot().Position;end;local A=L:FindFirstChildWhichIsA("BasePart",true);return A and A.Position or nil;end
	tbl7.removeTrapESP = function(...) end
	tbl7.applyTrapHighlight = function(A)if not A or not A:IsA("BasePart")then return;end;local p,q= tbl6 .Features.ESP.trapHighlightObjects[A], tbl6 .Features.ESP.trapEspColor;if not p or p.part~=A then if p then  fn8 (p.chams); fn8 (p.outline);else p={}; tbl6 .Features.ESP.trapHighlightObjects[A]=p;end;p.part=A;p.chams={ fn7 (A,q,0.45,10,0.08)};p.outline={ fn7 (A,q,0.8,5,0.2)};p.color=nil;end;if p.color~=q then p.color=q;for L,L in ipairs(p.chams)do L.Color3=q;end;for L,L in ipairs(p.outline)do L.Color3=q;end;end;end
	tbl7.refreshTrapESPColor = function(...) end
	tbl7.removeTrapHighlight = function(A)local p= tbl6 .Features.ESP.trapHighlightObjects[A];if p then  fn8 (p.chams); fn8 (p.outline); tbl6 .Features.ESP.trapHighlightObjects[A]=nil;end;end
end

tbl7.updateTrapESP = function(...) end
tbl6.Cache = tbl6.Cache or { trapModels = {}, knifeThreats = {} }
tbl7._hubSubs = tbl7._hubSubs or { added = {}, removed = {}, childAdded = {}, knife = {} }

tbl7.hubOnWorkspaceAdded = function(arg)
	insert(tbl7._hubSubs.added, arg)

	if not tbl9.Legacy.hubWsAdded then
		tbl9.Legacy.hubWsAdded = tbl4.Workspace.DescendantAdded:Connect(function(descendant)
			for _, v8 in ipairs(tbl7._hubSubs.added) do
				v6(v8, descendant)
			end
		end)
	end
end

tbl7.hubOnWorkspaceRemoved = function(arg)
	insert(tbl7._hubSubs.removed, arg)

	if not tbl9.Legacy.hubWsRemoved then
		tbl9.Legacy.hubWsRemoved = tbl4.Workspace.DescendantRemoving:Connect(function(descendant)
			for _, v8 in ipairs(tbl7._hubSubs.removed) do
				v6(v8, descendant)
			end
		end)
	end
end

tbl7.hubOnWorkspaceChildAdded = function(arg)
	insert(tbl7._hubSubs.childAdded, arg)

	if not tbl9.Legacy.hubWsChildAdded then
		tbl9.Legacy.hubWsChildAdded = tbl4.Workspace.ChildAdded:Connect(function(child)
			for _, v8 in ipairs(tbl7._hubSubs.childAdded) do
				v6(v8, child)
			end
		end)
	end
end

tbl7.hubOnKnifeAdded = function(arg)
	insert(tbl7._hubSubs.knife, arg)

	if not tbl9.Legacy.hubKnifeAdded then
		tbl9.Legacy.hubKnifeAdded = tbl4.CollectionService:GetInstanceAddedSignal("ThrowingKnife"):Connect(function(arg2)
			for _, v8 in ipairs(tbl7._hubSubs.knife) do
				v6(v8, arg2)
			end
		end)
	end
end

tbl7.hubOnWorkspaceAdded(function(arg)
	if tbl6.Features.Combat.AutoGrab and tbl7.isValidGunDrop(arg) then
		tbl7.bringGunToPlayer(arg)
		return
	end

	if arg.Name == "TrapVisual" then
		local parent = arg.Parent

		if parent then
			tbl6.Cache.trapModels[parent] = true

			if not tbl6.Features.ESP.trapEspObjects[parent] then
				tbl7.createTrapESP(parent)
			end
		end
	end
end)

tbl7.hubOnWorkspaceRemoved(function(arg)
	if tbl6.Features.ESP.trapEspObjects[arg] then
		tbl6.Cache.trapModels[arg] = nil
		tbl7.removeTrapESP(arg)
	elseif arg.Name == "TrapVisual" then
		local parent = arg.Parent

		if parent and tbl6.Features.ESP.trapEspObjects[parent] then
			tbl6.Cache.trapModels[parent] = nil
			tbl7.removeTrapESP(parent)
		end
	end

	tbl6.Cache.knifeThreats[arg] = nil
end)

for k_ in pairs(tbl7.GetDescendantCache(tbl4.Workspace)) do
	if k_.Name == "TrapVisual" then
		local parent = k_.Parent

		if parent then
			tbl6.Cache.trapModels[parent] = true

			if not tbl6.Features.ESP.trapEspObjects[parent] then
				tbl7.createTrapESP(parent)
			end
		end
	end
end

tbl5.ao = nil

tbl7._returnFromVoid = function(cFrame)
	local character = tbl6.Player.LocalPlayer.Character
	local safeVoidPath = character and character:FindFirstChild("Safe Void Path")

	if safeVoidPath then
		destroy(safeVoidPath)
	end

	character = character and character:FindFirstChild("HumanoidRootPart")

	if character and cFrame then
		character.CFrame = cFrame
	end
end

tbl7.autoDodgeMurdererTick = function()
	if not tbl6.Features.Combat.AutoDodgeMurdererEnabled or tbl6.Features.Combat.dodgeCooldown then
		return
	end
	local currentMurderer = tbl6.Game.currentMurderer
	if not currentMurderer then
		return
	end

	if currentMurderer == tbl6.Player.LocalPlayer then
		return
	end
	local character = currentMurderer.Character and tbl7.charPart(currentMurderer, "HumanoidRootPart")
	if not character then
		return
	end
	local character2 = tbl6.Player.LocalPlayer.Character and tbl7.charPart(tbl6.Player.LocalPlayer, "HumanoidRootPart")
	if not character2 then
		return
	end

	if tbl6.Features.Combat.AutoDodgeMurdererDist < (character2.Position - character.Position).Magnitude then
		return
	end
	tbl6.Features.Combat.dodgeCooldown = true
	tbl5.ao = character2.CFrame
	tbl7.teleportToVoid()

	task.spawn(function()
		while tbl6.Features.Combat.dodgeCooldown do
			task.wait(0.2)
			local currentMurderer2 = tbl6.Game.currentMurderer
			local character3 = currentMurderer2 and currentMurderer2.Character and tbl7.charPart(currentMurderer2, "HumanoidRootPart")

			if not (not character3 or not tbl5.ao) then
				if not (tbl6.Features.Combat.AutoDodgeMurdererDist <= (tbl5.ao.Position - character3.Position).Magnitude) then
					continue
				end
			end

			break
		end

		local ao = tbl5.ao
		tbl5.ao = nil
		tbl7._returnFromVoid(ao)
		task.wait(0.4)
		tbl6.Features.Combat.dodgeCooldown = false
	end)
end

tbl5.ap = false

tbl7._evalKnifeThreat = function(arg)
	if tbl5.ap or not tbl6.Features.Combat.AutoDodgeKnifeEnabled then
		return
	end
	local character = tbl6.Player.LocalPlayer.Character
	character = character and character:FindFirstChild("HumanoidRootPart")
	if not character or not arg.Parent then
		return
	end
	local attribute = arg:GetAttribute("Direction")
	if not attribute or attribute.Magnitude < 0.01 then
		return
	end
	local bladePosition = arg:FindFirstChild("BladePosition")
	local n = character.Position - (bladePosition and bladePosition.Position or arg:GetPivot().Position)
	if n.Magnitude > 80 then
		return
	end

	if n.Unit:Dot(attribute.Unit) < 0.6 then
		return
	end
	tbl5.ap = true
	local cFrame = character.CFrame
	tbl7.teleportToVoid()

	task.delay(2, function()
		tbl7._returnFromVoid(cFrame)
		task.wait(0.3)
		tbl5.ap = false
	end)
end

for _, v8 in ipairs(tbl4.CollectionService:GetTagged("ThrowingKnife")) do
	tbl6.Cache.knifeThreats[v8] = true
end

tbl7.hubOnWorkspaceAdded(function(arg)
	if not arg:IsA("Tool") then
		return
	end

	for k_, v8 in pairs(tbl5.Q) do
		if arg:HasTag(v8.tag) then
			tbl7.applyHitmarkerSound(k_)
		end
	end
end)

for k_ in pairs(tbl5.Q) do
	tbl7.applyHitmarkerSound(k_)
end

tbl7.hubOnKnifeAdded(function(arg)
	if not arg then
		return
	end
	tbl6.Cache.knifeThreats[arg] = true

	if tbl6.Features.Combat.AutoDodgeKnifeEnabled then
		task.defer(function()
			tbl7._evalKnifeThreat(arg)
		end)
	end
end)

do
	local contextActionService = tbl4.ContextActionService
	local runService = tbl4.RunService
	tbl5.aq = tbl4.UserInputService
	tbl5.ar = contextActionService
	tbl5.as = runService
end

tbl5.at = 32
tbl5.au = {}
tbl5.au.__index = tbl5.au

tbl5.au.new = function(arg, arg2)
	return setmetatable({ f = arg, p = arg2, v = arg2 * 0 }, tbl5.au)
end

tbl5.au.Update = function(arg, arg2, arg3)
	local n = arg.f * 2 * 3.1415926535897931
	local v8 = math.exp(-n * arg2)
	local n2 = arg3 - arg.p
	arg.p = arg3 + (arg.v * arg2 - n2 * (n * arg2 + 1)) * v8
	arg.v = (n * arg2 * (n2 * n - arg.v) + arg.v) * v8
	return arg.p
end

tbl5.au.Reset = function(arg, p)
	arg.p = p
	arg.v = p * 0
end

do
	local v8 = vector3()
	local v9 = vector2()
	local v10 = tbl5.au.new(5, vector3())
	local v11 = tbl5.au.new(5, vector2())
	local ag = { Delta = vector2() }
	local ah_ = { Delta = vector2(), LastPos = nil }
	tbl5.av = v8
	tbl5.aw = v9
	tbl5.ax = 70
	tbl5.ay = v10
	tbl5.az = v11
	tbl5.aA = nil
	tbl5.aB = nil
	tbl5.aC = nil
	tbl5.aD = nil
	tbl5.aE = nil
	tbl5.aF = { W = 0, A = 0, S = 0, D = 0, E = 0, Q = 0, Up = 0, Down = 0 }
	tbl5.aG = ag
	tbl5.aH = ah_
end

tbl5.aI = 1

tbl7._fcVelInput = function(arg)
	local v8 = tbl5.aq:IsKeyDown(Enum.KeyCode.LeftShift)
	tbl5.aI = clamp(tbl5.aI + arg * (tbl5.aF.Up - tbl5.aF.Down) * 0.75, 0.01, 4)
	local n = tbl5.at / 32 * tbl5.aI * (v8 and 0.25 or 1)
	local v9 = vector3(tbl5.aF.D - tbl5.aF.A, tbl5.aF.E - tbl5.aF.Q, tbl5.aF.S - tbl5.aF.W)

	if tbl5.aq.TouchEnabled then
		local character = tbl6.Player.LocalPlayer.Character
		character = character and character:FindFirstChildOfClass("Humanoid")
		character = character and character.MoveDirection or vector3()

		if character.Magnitude > 0.01 then
			local v10 = CFrame.fromOrientation(tbl5.aw.X, tbl5.aw.Y, 0):VectorToObjectSpace(character)
			v9 += vector3(v10.X, 0, v10.Z) * 1.5
		end
	end

	return v9 * n
end

tbl7._fcPanInput = function()
	local n = tbl5.aG.Delta * vector2(0.049087385212340517, 0.049087385212340517)
	tbl5.aG.Delta = vector2()
	local n2 = tbl5.aH.Delta * vector2(0.024543692606170259, 0.024543692606170259)
	tbl5.aH.Delta = vector2()
	return n + n2
end

tbl7._fcFocusDist = function(arg)
	local viewportSize = tbl6.Player.Camera.ViewportSize
	local n = 2 * math.tan(math.rad(tbl5.ax) / 2)
	local n2 = viewportSize.X / max(viewportSize.Y, 1) * n
	local rightVector = arg.RightVector
	local upVector = arg.UpVector
	local lookVector = arg.LookVector
	local n3 = 512

	for i_ = 0, 1, 0.5 do
		for i_2 = 0, 1, 0.5 do
			local n4 = rightVector * (i_ - 0.5) * n2 - upVector * (i_2 - 0.5) * n + lookVector
			local n5 = arg.Position + n4 * 0.1
			local v8, v9 = workspace:FindPartOnRay(Ray.new(n5, n4.Unit * n3))
			local magnitude = (v9 - n5).Magnitude

			if magnitude < n3 then
				n3 = magnitude
			end
		end
	end

	return lookVector:Dot(lookVector) * n3
end

tbl7._fcStep = function(arg)
	local v8 = tbl5.ay:Update(arg, tbl7._fcVelInput(arg))
	local v9 = tbl5.az:Update(arg, tbl7._fcPanInput(arg))
	local v10 = sqrt(0.70020753820970971 / math.tan(math.rad(tbl5.ax / 2)))
	tbl5.aw = tbl5.aw + v9 * vector2(0.75, 1) * 8 * arg / v10
	local n = tbl5.aw.Y % 6.2831853071795862
	tbl5.aw = vector2(clamp(tbl5.aw.X, -1.5707963267948966, 1.5707963267948966), n)
	local v11 = cframe
	local cFrame = cframe(tbl5.av) * CFrame.fromOrientation(tbl5.aw.X, tbl5.aw.Y, 0) * v11(v8 * vector3(1, 1, 1) * 64 * arg)
	tbl5.av = cFrame.Position
	tbl6.Player.Camera.CFrame = cFrame
	tbl6.Player.Camera.Focus = cFrame * cframe(0, 0, -max(tbl7._fcFocusDist(cFrame), 0.1))
	tbl6.Player.Camera.FieldOfView = tbl5.ax
end

tbl7._fcStartCapture = function()
	local value = Enum.ContextActionPriority.High.Value

	local function fn7(arg, arg2, arg3)
		local name = arg3.KeyCode.Name

		if tbl5.aF[name] ~= nil then
			tbl5.aF[name] = arg2 == Enum.UserInputState.Begin and 1 or 0
		end

		return Enum.ContextActionResult.Sink
	end

	local function fn8(arg, arg2, arg3)
		local delta = arg3.Delta
		tbl5.aG.Delta = vector2(-delta.Y, -delta.X)
		return Enum.ContextActionResult.Sink
	end

	local function fn9(arg, arg2, arg3)
		local v8 = vector2(arg3.Position.X, arg3.Position.Y)
		local flag = v8.X > tbl6.Player.Camera.ViewportSize.X * 0.5

		if arg2 == Enum.UserInputState.Begin then
			local ah_ = tbl5.aH
			v8 = flag and v8 or nil
			ah_.LastPos = v8
		elseif arg2 == Enum.UserInputState.Change and tbl5.aH.LastPos then
			if not flag then
				tbl5.aH.LastPos = nil
			else
				local n = v8 - tbl5.aH.LastPos
				tbl5.aH.Delta = tbl5.aH.Delta + vector2(-n.Y, -n.X)
				tbl5.aH.LastPos = v8
			end
		else
			tbl5.aH.LastPos = nil
		end

		return Enum.ContextActionResult.Pass
	end

	tbl5.ar:BindActionAtPriority("FreecamKeyboard", fn7, false, value, Enum.KeyCode.W, Enum.KeyCode.A, Enum.KeyCode.S, Enum.KeyCode.D, Enum.KeyCode.E, Enum.KeyCode.Q, Enum.KeyCode.Up, Enum.KeyCode.Down)
	tbl5.ar:BindActionAtPriority("FreecamMousePan", fn8, false, value, Enum.UserInputType.MouseMovement)
	tbl5.ar:BindActionAtPriority("FreecamTouchPan", fn9, false, value, Enum.UserInputType.Touch)
	tbl5.aD = tbl5.aq.MouseBehavior
	tbl5.aE = tbl5.aq.MouseIconEnabled
	tbl5.aq.MouseIconEnabled = true
	tbl5.aq.MouseBehavior = Enum.MouseBehavior.Default
end

tbl7._fcStopCapture = function()
	tbl5.aI = 1

	for k_ in pairs(tbl5.aF) do
		tbl5.aF[k_] = 0
	end

	tbl5.aG.Delta = vector2()
	tbl5.aH.Delta = vector2()
	tbl5.aH.LastPos = nil
	tbl5.ar:UnbindAction("FreecamKeyboard")
	tbl5.ar:UnbindAction("FreecamMousePan")
	tbl5.ar:UnbindAction("FreecamTouchPan")
	tbl5.aq.MouseBehavior = tbl5.aD or Enum.MouseBehavior.Default
	tbl5.aq.MouseIconEnabled = tbl5.aE ~= nil and tbl5.aE or true
	tbl5.aD = nil
	tbl5.aE = nil
end

tbl7.startFreecam = function()
	if tbl6.Features.Movement.freecamConn then
		return
	end
	local camera = tbl6.Player.Camera
	tbl5.aA = camera.CameraType
	tbl5.aB = camera.CFrame
	tbl5.aC = camera.FieldOfView
	tbl5.aw = vector2()
	tbl5.av = camera.CFrame.Position
	tbl5.ax = camera.FieldOfView
	tbl5.ay:Reset(vector3())
	tbl5.az:Reset(vector2())
	local humanoidRootPart = tbl6.Player.LocalPlayer.Character and tbl6.Player.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")

	if humanoidRootPart then
		humanoidRootPart.Anchored = true
	end

	camera.CameraType = Enum.CameraType.Custom
	camera.FieldOfView = tbl5.ax
	tbl7._fcStartCapture()
	tbl5.as:BindToRenderStep("_LuWareFC", Enum.RenderPriority.Camera.Value, tbl7._fcStep)
	tbl6.Features.Movement.freecamConn = true
end

tbl7.stopFreecam = function()
	if not tbl6.Features.Movement.freecamConn then
		return
	end
	tbl7._fcStopCapture()
	tbl5.as:UnbindFromRenderStep("_LuWareFC")
	tbl6.Player.Camera.CameraType = tbl5.aA or Enum.CameraType.Custom

	if tbl5.aB then
		tbl6.Player.Camera.CFrame = tbl5.aB
	end

	if tbl5.aC then
		tbl6.Player.Camera.FieldOfView = tbl5.aC
	end

	tbl5.aA = nil
	tbl5.aB = nil
	tbl5.aC = nil
	local humanoidRootPart = tbl6.Player.LocalPlayer.Character and tbl6.Player.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")

	if humanoidRootPart then
		humanoidRootPart.Anchored = false
	end

	tbl6.Features.Movement.freecamConn = nil
end

tbl7.toggleFreecam = function(freecamEnabled)
	tbl6.Features.Movement.FreecamEnabled = freecamEnabled

	if freecamEnabled then
		tbl7.startFreecam()
	else
		tbl7.stopFreecam()
	end

	if tbl6.UI.freecamBtn then
		tbl7.setButtonActive(tbl6.UI.freecamBtn, freecamEnabled)
	end
end

tbl7.createCoinESP = function(...) end
tbl7.removeCoinESP = function(...) end
tbl7.applyCoinHighlight = function(...) end
tbl7.removeCoinHighlight = function(A)local p= tbl6 .Features.ESP.coinHighlightObjects[A];if p then p.Visible=false;end;end

tbl7.createESPByKind = function(arg, arg2)
	if arg == "Gun" then
		return tbl7.createGunESP(arg2)
	end

	if arg == "Trap" then
		return tbl7.createTrapESP(arg2)
	end

	if arg == "Coin" then
		return tbl7.createCoinESP(arg2)
	end
	return tbl7.createESP(arg2)
end

tbl7.removeESPByKind = function(arg, arg2)
	if arg == "Gun" then
		return tbl7.removeGunESP(arg2)
	end

	if arg == "Trap" then
		return tbl7.removeTrapESP(arg2)
	end

	if arg == "Coin" then
		return tbl7.removeCoinESP(arg2)
	end
	return tbl7.removeESP(arg2)
end

tbl7.updateCoinESP = function(...) end
tbl7.shouldShowCoin = function(A)local p= tbl6 .Features.ESP.espSettings[A];return p and p.Enabled and p.Coin;end

tbl7.findAncestorByName = function(arg, arg2)
	arg = arg and arg.Parent

	while arg do
		if arg.Name == arg2 then
			return arg
		end
		arg = arg.Parent
	end

	return nil
end

tbl7.getCoinTouchPart = function(L)if not L then return nil;end;local A=L:FindFirstChild("MainCoin",true);if A and(A:IsA("BasePart"))then return A;end;if L:IsA("BasePart")then return L;end;return nil;end
tbl7.isCollectibleCoin = function(A)if not A then return false;end;local p= tbl7 .getCoinTouchPart(A);if not p then return false;end;if p.Transparency==1 then return false;end;local q,Q= tbl7 .findAncestorByName(p,"CoinVisual")or(A:FindFirstChild("CoinVisual")), tbl7 .findAncestorByName(p,"CoinContainer")or( tbl7 .findAncestorByName(A,"CoinContainer"));return q~=nil and Q~=nil;end
tbl7.isValidCoin = function(A)return  tbl7 .isCollectibleCoin(A);end

tbl7.getCoinModelFromDescendant = function(arg)
	local v8 = tbl7.findAncestorByName(arg, "CoinContainer")
	if not v8 then
		return nil
	end

	while arg and arg.Parent do
		if arg.Parent == v8 then
			return arg
		end
		arg = arg.Parent
	end

	return nil
end

tbl7.registerCoinContainer = function(A)if not A or A.Name~="CoinContainer"or not(A:IsA("Folder")or(A:IsA("Model")))then return;end;for p,q in ipairs(A:GetChildren())do p=q:FindFirstChild("CoinVisual");if p then local Q=p:FindFirstChild("MainCoin");if Q and Q.Transparency==0 then  tbl7 .createCoinESP(q);end;end;end;A.DescendantAdded:Connect(function(p)if p.Name=="MainCoin"and(p:IsA("BasePart"))then local q=p.Parent;if not q or q.Name~="CoinVisual"then return;end;local Q=q.Parent;if not Q then return;end;if p.Transparency==0 then  tbl7 .createCoinESP(Q);end;p:GetPropertyChangedSignal("Transparency"):Connect(function()if p.Transparency==0 then  tbl7 .createCoinESP(Q);else  tbl7 .removeCoinESP(Q); tbl7 .removeCoinHighlight( tbl7 .getCoinTouchPart(Q));end;end);end;end);A.DescendantRemoving:Connect(function(A)if A.Name=="MainCoin"and(A:IsA("BasePart"))then local p=A.Parent;if not p then return;end;local A=p.Parent;if A and  tbl6 .Features.ESP.coinEspObjects[A]then  tbl7 .removeCoinESP(A);end;end;end);end
tbl7.isValidGunDrop = function(L)return L:IsA("BasePart")and L.Name=="GunDrop";end
tbl7.registerGunDrop = function(...) end

tbl7.tryGrabGun = function(arg)
	if tbl7.isDead(tbl6.Player.LocalPlayer) then
		return
	end
	local v8 = tbl7.getRole(tbl6.Player.LocalPlayer)
	if v8 == "Murderer" or v8 == "Unknown" then
		return
	end
	local character = tbl6.Player.LocalPlayer.Character and tbl7.charPart(tbl6.Player.LocalPlayer, "HumanoidRootPart")
	if not character then
		return
	end

	if arg and arg.Parent and arg:FindFirstChild("TouchInterest") then
		firetouchinterest(character, arg, 0)
		firetouchinterest(character, arg, 1)
	end
end

tbl7.bringGunToPlayer = function(A)if not  tbl6 .Features.Combat.AutoGrab then return;end;if  tbl7 .isDead( tbl6 .Player.LocalPlayer)then return;end;local p= tbl7 .getRole( tbl6 .Player.LocalPlayer);if p=="Murderer"or p=="Unknown"then return;end;p= tbl6 .Player.LocalPlayer.Character and( tbl7 .charPart( tbl6 .Player.LocalPlayer,"HumanoidRootPart"));if not p then return;end;if not A or not A.Parent then return;end;A.CFrame=p.CFrame;task.spawn(function()for p=1,8,1 do task.wait(0.25);if not  tbl6 .Features.Combat.AutoGrab then return;end;if not A.Parent then return;end;p= tbl6 .Player.LocalPlayer;local q=p.Character;if q and(q:FindFirstChild("Gun"))then return;end;local Q=p:FindFirstChild("Backpack");if Q and(Q:FindFirstChild("Gun"))then return;end;Q=q and( tbl7 .charPart(p,"HumanoidRootPart"));if not Q then return;end;A.CFrame=Q.CFrame;end;end);end

tbl7.setAutoGrabEnabled = function(arg)
	if not arg then
		return
	end

	for k_ in pairs(tbl7.GetDescendantCache(tbl4.Workspace)) do
		if tbl7.isValidGunDrop(k_) then
			tbl7.bringGunToPlayer(k_)
		end
	end
end

tbl7.grabgun = function()
	task.spawn(function()
		if tbl7.isDead(tbl6.Player.LocalPlayer) then
			return
		end
		local v8 = tbl7.getRole(tbl6.Player.LocalPlayer)
		if v8 == "Murderer" or v8 == "Unknown" then
			return
		end
		local character = tbl6.Player.LocalPlayer.Character
		local humanoidRootPart = character and character:FindFirstChild("HumanoidRootPart")
		if not humanoidRootPart then
			return
		end
		local key = next(tbl6.Features.ESP.gunEspObjects)
		if not key then
			return
		end
		tbl7.tryGrabGun(key)

		if tbl6.Features.Combat.grabConn then
			tbl6.Features.Combat.grabConn:Disconnect()
		end

		tbl6.Features.Combat.grabConn = heartbeat:Connect(function()
			if not key or not key.Parent then
				if tbl6.Features.Combat.grabConn then
					tbl6.Features.Combat.grabConn:Disconnect()
					tbl6.Features.Combat.grabConn = nil
				end

				return
			end

			key.CFrame = humanoidRootPart.CFrame
		end)

		task.delay(2, function()
			if tbl6.Features.Combat.grabConn then
				tbl6.Features.Combat.grabConn:Disconnect()
				tbl6.Features.Combat.grabConn = nil
			end
		end)
	end)
end

tbl7.findKnifeHolder = function()
	for _, v8 in ipairs(tbl6.Players.Cache) do
		if v8 ~= tbl6.Player.LocalPlayer and not tbl7.isDead(v8) then
			local character = v8.Character
			if character and character:FindFirstChild("Knife") then
				return v8
			end
			local backpack = v8:FindFirstChild("Backpack")
			if backpack and backpack:FindFirstChild("Knife") then
				return v8
			end
		end
	end

	return nil
end

tbl7.whosthemurdererson = function()
	return tbl6.Game.currentMurderer
end

tbl7.getpredictedpos = function(arg)
	if not (arg and arg:IsA("BasePart")) then
		arg = arg and arg.Position or vector
		return arg
	end

	if not tbl6.Features.Combat.PredictionEnabled then
		return arg.Position
	end
	local character = tbl6.Player.LocalPlayer.Character and tbl7.charPart(tbl6.Player.LocalPlayer, "HumanoidRootPart")
	if not character then
		return arg.Position
	end
	local parent = arg.Parent
	local humanoid = parent and parent:FindFirstChildOfClass("Humanoid")
	local state = humanoid and humanoid:GetState() or Enum.HumanoidStateType.None
	local magnitude = (character.Position - arg.Position).Magnitude
	local networkPing = tbl6.Features.Combat.PingCheck ~= false and tbl6.Player.LocalPlayer:GetNetworkPing() or 0
	local v8 = clamp((magnitude / max(character.AssemblyLinearVelocity.Magnitude + 800, 800) + networkPing) * clamp(tonumber(tbl6.Features.Combat.PredictionMultiplier) or 1, 0, 3), 0.005, 0.15)

	if not tbl6.Features.Movement.lastVel then
		tbl6.Features.Movement.lastVel = {}
	end

	if not tbl6.Features.Movement.lastVel[arg] then
		tbl6.Features.Movement.lastVel[arg] = arg.AssemblyLinearVelocity
	end

	local v9 = tbl6.Features.Movement.lastVel[arg]:Lerp(arg.AssemblyLinearVelocity, (arg.AssemblyLinearVelocity - tbl6.Features.Movement.lastVel[arg]).Magnitude > 50 and 0.8 or 0.35)
	tbl6.Features.Movement.lastVel[arg] = v9
	local moveDirection = humanoid and humanoid.MoveDirection or vector

	if humanoid and moveDirection.Magnitude > 0.01 then
		local assemblyLinearVelocity = arg.AssemblyLinearVelocity
		local v10 = max(vector3(assemblyLinearVelocity.X, 0, assemblyLinearVelocity.Z).Magnitude, humanoid.WalkSpeed or 16)

		if v10 > 0 then
			v9 = (moveDirection.Unit * v10):Lerp(v9, clamp(1 - networkPing * 10 + 0.35, 0.2, 0.8))
		end
	end

	local walkToPoint = humanoid and humanoid.WalkToPoint or vector

	if humanoid and walkToPoint.Magnitude > 0.01 then
		local v10 = max(humanoid.WalkSpeed or 16, 0)
		local n = walkToPoint - arg.Position

		if v10 > 0 and n.Magnitude > 0.01 then
			v9 = v9:Lerp(n.Unit * min(v10, n.Magnitude / max(v8, 0.005)), 0.25)
		end
	end

	local v10 = clamp(tonumber(tbl6.Features.Combat.HorizontalMultiplier) or 1, 0, 3)
	local v11 = vector3(v9.X * v10, v9.Y * clamp(tonumber(tbl6.Features.Combat.VerticalMultiplier) or 1, 0, 3), v9.Z * v10)
	local n = arg.Position + v11 * v8
	local flag = state == Enum.HumanoidStateType.Jumping or state == Enum.HumanoidStateType.Freefall or state == Enum.HumanoidStateType.GettingUp

	if flag then
		n += vector3(0, workspace.Gravity * v8 * v8 * 0.12, 0)

		if v11.Y > 0 then
			n += vector3(0, v11.Y * v8 * 0.08, 0)
		end
	end

	local n2 = n.Y - arg.Position.Y
	local v12

	if flag then
		v12 = clamp(n2, -magnitude * 0.08, magnitude * 0.12)
	else
		v12 = clamp(n2, -magnitude * 0.03, magnitude * 0.05)
	end

	local n3 = 3

	if parent then
		local head = parent:FindFirstChild("Head")
		local humanoidRootPart = parent:FindFirstChild("HumanoidRootPart")

		if head and humanoidRootPart then
			n3 = abs(head.Position.Y - humanoidRootPart.Position.Y) + 1
		end
	end

	local n4 = vector3(n.X, arg.Position.Y + v12 + n3 * 0.25, n.Z)
	local v13 = max(magnitude * 0.25, 8)
	local n5 = n4 - arg.Position

	if v13 < n5.Magnitude then
		n4 = arg.Position + n5.Unit * v13
	end

	return n4
end

local color2 = Color3.new(1, 1, 1)
tbl5.aJ = nil
tbl5.aK = nil
tbl5.aL = nil
tbl5.aM = nil
tbl5.aN = nil
tbl5.aO = nil
tbl5.aP = nil
tbl5.aQ = nil
tbl5.aR = color2

tbl7._getUiSeqs = function()
	local accentBright = tbl3.Theme.AccentBright

	if tbl5.aJ ~= accentBright then
		tbl5.aJ = accentBright
		local dark = tbl3.Theme.Dark
		local v8 = tbl5
		local colorSequence = ColorSequence.new
		local tbl15 = {}
		local v9 = ColorSequenceKeypoint.new(0, dark)
		local v10 = ColorSequenceKeypoint.new(0.25, accentBright)
		local v11 = ColorSequenceKeypoint.new(0.5, accentBright)
		local new = ColorSequenceKeypoint.new
		local v12 = ColorSequenceKeypoint.new(0.75, accentBright)
		tbl15[1] = v9
		tbl15[2] = v10
		tbl15[3] = v11
		tbl15[4] = v12

		do
			local values = table.pack(new(1, dark))
			table.move(values, 1, values.n, 5, tbl15)
		end

		v8.aK = colorSequence(tbl15)
		local colorSequence2 = ColorSequence.new
		local tbl16 = {}
		local v13 = ColorSequenceKeypoint.new(0, dark)
		local v14 = ColorSequenceKeypoint.new(0.25, tbl3.Theme.Accent)
		local v15 = ColorSequenceKeypoint.new(0.5, accentBright)
		local v16 = ColorSequenceKeypoint.new(0.75, tbl3.Theme.Accent)
		local new2 = ColorSequenceKeypoint.new
		tbl16[1] = v13
		tbl16[2] = v14
		tbl16[3] = v15
		tbl16[4] = v16

		do
			local values = table.pack(new2(1, dark))
			table.move(values, 1, values.n, 5, tbl16)
		end

		local v17 = colorSequence2(tbl16)
		tbl5.aL = v17
		tbl5.aN = v17
		local v18 = tbl5
		local colorSequence3 = ColorSequence.new
		local tbl17 = {}
		local v19 = ColorSequenceKeypoint.new(0, dark)
		local v20 = ColorSequenceKeypoint.new(0.25, accentBright)
		local v21 = ColorSequenceKeypoint.new(0.5, accentBright:Lerp(Color3.new(1, 1, 1), 0.85))
		local v22 = ColorSequenceKeypoint.new(0.75, accentBright)
		local new3 = ColorSequenceKeypoint.new
		tbl17[1] = v19
		tbl17[2] = v20
		tbl17[3] = v21
		tbl17[4] = v22

		do
			local values = table.pack(new3(1, dark))
			table.move(values, 1, values.n, 5, tbl17)
		end

		v18.aM = colorSequence3(tbl17)
		local v23, v24, v25 = accentBright:ToHSV()
		local n = (v23 + 0.4) % 1
		local color3 = Color3.fromHSV(n, clamp(v24 * 1.05, 0.5, 0.9), clamp(v25 * 0.95 + 0.15, 0.7, 0.92))
		local v26 = color3:Lerp(Color3.new(1, 1, 1), 0.45)
		local color4 = Color3.fromHSV(n, clamp(v24, 0.35, 0.85), 0.1)
		local v27 = tbl5
		local colorSequence4 = ColorSequence.new
		local tbl18 = {}
		local v28 = ColorSequenceKeypoint.new(0, color4)
		local v29 = ColorSequenceKeypoint.new(0.25, color3)
		local v30 = ColorSequenceKeypoint.new(0.5, v26)
		local v31 = ColorSequenceKeypoint.new(0.75, color3)
		local new4 = ColorSequenceKeypoint.new
		tbl18[1] = v28
		tbl18[2] = v29
		tbl18[3] = v30
		tbl18[4] = v31

		do
			local values = table.pack(new4(1, color4))
			table.move(values, 1, values.n, 5, tbl18)
		end

		v27.aO = colorSequence4(tbl18)
		tbl5.aQ = v26:Lerp(Color3.new(1, 1, 1), 0.2)
	end

	return tbl5.aK, tbl5.aL, tbl5.aM
end

tbl5.aS = TweenInfo.new(0.22, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
tbl5.aT = {}

tbl7._fadeGradient = function(arg, arg2)
	if not arg then
		return
	end
	local v8 = tbl5.aT[arg]

	if v8 then
		v8:Disconnect()
		tbl5.aT[arg] = nil
	end

	local keypoints = arg.Color.Keypoints
	local keypoints2 = arg2.Keypoints
	local n = #keypoints2
	local v9 = clock()
	local v10 = nil

	tbl5.aT[arg] = renderStepped:Connect(function()
		if not arg.Parent then
			tbl5.aT[arg] = nil
			v10:Disconnect()
			return
		end

		local v11 = min((clock() - v9) / 0.22, 1)
		local n2 = 1 - (1 - v11) * (1 - v11)
		local v12 = table.create(n)

		for i_ = 1, n do
			v12[i_] = ColorSequenceKeypoint.new(keypoints2[i_].Time, keypoints[i_].Value:Lerp(keypoints2[i_].Value, n2))
		end

		arg.Color = ColorSequence.new(v12)

		if v11 >= 1 then
			tbl5.aT[arg] = nil
			v10:Disconnect()
		end
	end)
end

do
	local colorSequence = ColorSequence.new
	local tbl15 = {}
	local v8 = ColorSequenceKeypoint.new(0, tbl3.Colors.A)
	local v9 = ColorSequenceKeypoint.new(0.25, color(255, 100, 100))
	local v10 = ColorSequenceKeypoint.new(0.5, color(255, 130, 130))
	local v11 = ColorSequenceKeypoint.new(0.75, color(255, 100, 100))
	local new = ColorSequenceKeypoint.new
	local a = tbl3.Colors.A
	tbl15[1] = v8
	tbl15[2] = v9
	tbl15[3] = v10
	tbl15[4] = v11

	do
		local values = table.pack(new(1, a))
		table.move(values, 1, values.n, 5, tbl15)
	end

	tbl5.aP = colorSequence(tbl15)
end

tbl7.applyShootButtonVisual = function(arg, arg2)
	if not arg then
		return
	end
	local v8 = tbl5.P[arg]
	local stroke = v8 and v8.stroke or arg and arg:FindFirstChildOfClass("UIStroke") or tbl4.SoundService
	local gradient = v8 and v8.gradient or stroke and stroke:FindFirstChildOfClass("UIGradient")
	local accentBright = tbl3.Theme.AccentBright
	local accent = tbl3.Theme.Accent
	local v9, v10 = tbl7._getUiSeqs()

	if arg2 == "waiting" then
		if stroke then
			tbl4.TweenService:Create(stroke, tbl5.aS, { Color = accentBright }):Play()
		end

		if arg.TextColor3 ~= accentBright then
			tbl4.TweenService:Create(arg, tbl5.aS, { TextColor3 = accentBright }):Play()
		end

		tbl7._fadeGradient(gradient, v9)
	else
		if stroke then
			tbl4.TweenService:Create(stroke, tbl5.aS, { Color = accent }):Play()
		end

		if arg.TextColor3 ~= tbl3.Theme.Font then
			tbl4.TweenService:Create(arg, tbl5.aS, { TextColor3 = tbl3.Theme.Font }):Play()
		end

		tbl7._fadeGradient(gradient, v10)
	end

	if v8 and v8.startAnim then
		v8.startAnim()
	end
end

tbl7.setShootButtonState = function(arg, arg2)
	if not tbl6.UI.shootButton then
		return
	end

	if arg == "waiting" then
		tbl6.Features.Combat.shootButtonState = "waiting"
		tbl6.UI.shootButton.Text = "Waiting..."
		tbl7.applyShootButtonVisual(tbl6.UI.shootButton, "waiting")
		return
	end

	if arg == "ready" and (arg2 or tbl6.Features.Combat.shootButtonState ~= "ready") then
		tbl6.Features.Combat.shootButtonState = "ready"
		tbl6.Features.Combat.shootWaiting = false
		tbl6.UI.shootButton.Text = "Shoot Murderer"
		tbl7.applyShootButtonVisual(tbl6.UI.shootButton, "ready")
	end
end

tbl7.updateWallCheckFilter = function()
	tbl6.Features.ESP.wallCheckIgnoreList[1] = tbl6.Player.LocalPlayer and tbl6.Player.LocalPlayer.Character
	tbl6.Features.ESP.wallCheckParams.FilterDescendantsInstances = tbl6.Features.ESP.wallCheckIgnoreList
end

tbl7.isWallBlockedForShot = function(arg, arg2, arg3, arg4, arg5, arg6)
	if not arg5 and not tbl6.Features.Combat.ShootMurdererWallCheckEnabled then
		return false
	end

	if not arg or not arg2 then
		return false
	end

	if tbl6.Features.ESP.wallCheckIgnoreList[1] ~= (tbl6.Player.LocalPlayer and tbl6.Player.LocalPlayer.Character) then
		tbl7.updateWallCheckFilter()
	end

	local v8 = clock()
	arg4 = arg4 or arg3 or "default"
	local tbl15 = tbl6.Features.ESP.wallCheckCache[arg4]
	if not arg6 and tbl15 and v8 - tbl15.time < tbl6.Features.ESP.WALL_CACHE_TTL then
		return tbl15.blocked
	end
	local n = (v5(arg2) == "Vector3" and arg2 or arg2.Position) - arg
	if n.Magnitude <= 0.0001 then
		return false
	end
	local hit = workspace:Raycast(arg, n, tbl6.Features.ESP.wallCheckParams)
	local blocked = hit ~= nil and not hit.Instance:IsDescendantOf(arg3)

	if not tbl15 then
		tbl15 = {}
		tbl6.Features.ESP.wallCheckCache[arg4] = tbl15
	end

	tbl15.blocked = blocked
	tbl15.time = v8
	return blocked
end

tbl7.fireGunShot = function(arg, arg2, arg3)
	if arg then
		return arg:FireServer(arg2, arg3)
	end
end

tbl7.isShiftLocked = function()
	local userInputService = tbl4.UserInputService
	return userInputService and userInputService.MouseBehavior == Enum.MouseBehavior.LockCenter or false
end

tbl7._triggerPartOnCrosshair = function(L,A,p,q)if not A or not A.Parent then return false;end;local Q,f=L:WorldToViewportPoint(A.Position);if not f then return false;end;L,f=Q.X-p.X,Q.Y-p.Y;return L*L+f*f<=q;end
tbl7.triggerBotTick = function(...) end

tbl7.shootmurd = function(arg)
	local flag = arg ~= false
	local flag2 = arg == false
	local magicBulletEnabled = tbl6.Features.Combat.MagicBulletEnabled
	local flag3 = flag and tbl6.Features.Combat.ShootMurdererWallCheckEnabled and not magicBulletEnabled

	task.spawn(function()
		local v8 = tbl7.getRole(tbl6.Player.LocalPlayer)
		if v8 ~= "Sheriff" and v8 ~= "Hero" then
			return
		end

		if tbl7.isDead(tbl6.Player.LocalPlayer) then
			return
		end

		if tbl6.Features.Combat.shootWaiting then
			return
		end
		local v9 = v7()
		if tbl6.Features.Combat.silentAimCooldown and v9 - tbl6.Features.Combat.silentAimCooldown < 0.25 then
			return
		end
		tbl6.Features.Combat.silentAimCooldown = v9
		local v10 = tbl7.whosthemurdererson()

		if not v10 or not v10.Character or tbl7.isDead(v10) then
			v10 = tbl7.findKnifeHolder()
		end

		if not v10 then
			return
		end
		local character = v10.Character
		if not character then
			return
		end
		local upperTorso = character:FindFirstChild("UpperTorso") or character:FindFirstChild("Torso") or character:FindFirstChild("Head") or character:FindFirstChild("HumanoidRootPart")
		if not upperTorso then
			return
		end
		local character2 = tbl6.Player.LocalPlayer.Character
		if not character2 then
			return
		end
		local cachedHr = tbl6.Features.Movement._cachedHr

		if not cachedHr or cachedHr.Parent ~= character2 then
			cachedHr = character2:FindFirstChild("HumanoidRootPart")
			if not cachedHr then
				return
			end
			tbl6.Features.Movement._cachedHr = cachedHr
		end

		local gun = character2:FindFirstChild("Gun")

		if not gun then
			local backpack = tbl6.Player.LocalPlayer.Backpack
			backpack = backpack and backpack:FindFirstChild("Gun")
			if not backpack then
				return
			end
			backpack.Parent = character2

			if task ~= nil and v4(task.wait) == "function" then
				task.wait(0.1)
			end

			gun = character2:FindFirstChild("Gun")
			if not gun then
				return
			end
			tbl6.Features.Movement._cachedSr = nil
		end

		local cachedSr = tbl6.Features.Movement._cachedSr

		if not cachedSr or not cachedSr.Parent then
			local v11 = tbl4.Workspace:FindFirstChild(tbl6.Player.LocalPlayer.Name)
			if not v11 then
				return
			end
			local gun2 = v11:FindFirstChild("Gun")
			if not gun2 then
				return
			end
			cachedSr = gun2:FindFirstChild("Shoot", true)
			if not cachedSr then
				return
			end
			tbl6.Features.Movement._cachedSr = cachedSr
		end

		local function fn7()
			if not gun or gun.Parent ~= character2 then
				return
			end
			local humanoid = character2:FindFirstChildOfClass("Humanoid")

			if humanoid then
				if v4(humanoid.UnequipTools) == "function" then
					if humanoid ~= nil and v4(humanoid.UnequipTools) == "function" then
						humanoid:UnequipTools()
					end
				end
			end

			if gun.Parent == character2 then
				local backpack = tbl6.Player.LocalPlayer:FindFirstChild("Backpack")

				if v5(gun) == "Instance" and v5(backpack) == "Instance" then
					gun.Parent = backpack
				end
			end

			tbl6.Features.Movement._cachedSr = nil
		end

		local v11 = tbl7.getpredictedpos(upperTorso)
		local v12 = cframe(v11)

		if magicBulletEnabled then
			local cFrame = upperTorso.CFrame
			tbl7.fireGunShot(cachedSr, cframe(cFrame.Position - cFrame.LookVector * 5, cFrame.Position), cFrame)

			if not flag2 then
				if v4(fn7) == "function" then
					fn7()
				end
			end
		else
			if flag3 and tbl7.isWallBlockedForShot(cachedHr.Position, upperTorso, character, v10) then
				tbl6.Features.Combat.shootWaiting = true

				if flag then
					tbl7.setShootButtonState("waiting", true)
				end

				local v13 = v7()

				while true do
					if v7() - v13 < 15 and tbl6.Features.Combat.ShootMurdererWallCheckEnabled and v10 and v10.Character and not tbl7.isDead(tbl6.Player.LocalPlayer) then
						local character3 = v10.Character
						local upperTorso2 = character3:FindFirstChild("UpperTorso") or character3:FindFirstChild("Torso") or character3:FindFirstChild("Head") or character3:FindFirstChild("HumanoidRootPart")

						if upperTorso2 then
							local v14 = tbl7.getpredictedpos(upperTorso2)

							if not tbl7.isWallBlockedForShot(cachedHr.Position, v14, character3, v10, nil, true) then
								tbl7.fireGunShot(cachedSr, cframe(cachedHr.Position, v14), cframe(v14))

								if not flag2 then
									if v4(fn7) == "function" then
										fn7()
									end
								end

								break
							else
								if tbl2 ~= nil and tbl4 ~= nil and tbl4.RunService ~= nil and heartbeat ~= nil and v4(heartbeat.Wait) == "function" then
									heartbeat:Wait()
								end

								continue
							end
						end
					end

					break
				end

				tbl6.Features.Combat.shootWaiting = false

				if flag then
					tbl7.setShootButtonState("ready", true)
				end

				return
			end

			tbl7.fireGunShot(cachedSr, cframe(cachedHr.Position, v11), v12)

			if not flag2 then
				if v4(fn7) == "function" then
					fn7()
				end
			end
		end

		if flag then
			tbl7.setShootButtonState("ready", true)
		end
	end)
end

tbl6.Game.RoleChangedSignal = tbl6.Game.RoleChangedSignal or Instance.new("BindableEvent")

tbl7.killMurderer = function()
	task.spawn(function()
		local v8 = tbl7.getRole(tbl6.Player.LocalPlayer)

		if v8 ~= "Sheriff" and v8 ~= "Hero" then
			local bindableEvent = Instance.new("BindableEvent")

			local connection = tbl6.Game.RoleChangedSignal.Event:Connect(function()
				bindableEvent:Fire(true)
			end)

			task.delay(3, function()
				bindableEvent:Fire(false)
			end)

			while true do
				if tbl7.isHeroEligible(tbl6.Player.LocalPlayer) then
					tbl7.assignHero(tbl6.Player.LocalPlayer)
				end

				if bindableEvent.Event:Wait() then
					v8 = tbl7.getRole(tbl6.Player.LocalPlayer)
					if not (v8 == "Sheriff" or v8 == "Hero") then
						continue
					end
				end

				break
			end

			connection:Disconnect()
			destroy(bindableEvent)
		end

		if v8 ~= "Sheriff" and v8 ~= "Hero" then
			return
		end

		if tbl7.isDead(tbl6.Player.LocalPlayer) then
			return
		end
		local v9 = tbl7.whosthemurdererson()
		if not v9 or not v9.Character then
			return
		end
		local humanoidRootPart = v9.Character:FindFirstChild("HumanoidRootPart")
		if not humanoidRootPart then
			return
		end
		local character = tbl6.Player.LocalPlayer.Character
		local humanoidRootPart2 = character and character:FindFirstChild("HumanoidRootPart")
		if not humanoidRootPart2 then
			return
		end
		local backpack = tbl6.Player.LocalPlayer:FindFirstChild("Backpack")
		local gun = character:FindFirstChild("Gun") or backpack and backpack:FindFirstChild("Gun")

		if not gun then
			local bindableEvent = Instance.new("BindableEvent")

			local tbl15 = {
				character.ChildAdded:Connect(function(child)
					if child.Name == "Gun" then
						bindableEvent:Fire(true)
					end
				end),
			}

			if backpack then
				insert(tbl15, backpack.ChildAdded:Connect(function(child)
					if child.Name == "Gun" then
						bindableEvent:Fire(true)
					end
				end))
			end

			task.delay(3, function()
				bindableEvent:Fire(false)
			end)

			while not gun do
				if bindableEvent.Event:Wait() then
					gun = character:FindFirstChild("Gun") or backpack and backpack:FindFirstChild("Gun")
					continue
				end
				break
			end

			for _, v10 in ipairs(tbl15) do
				v10:Disconnect()
			end

			destroy(bindableEvent)
		end

		if not gun then
			return
		end
		gun.Parent = character
		task.wait(0.15)
		local v10 = tbl4.Workspace:WaitForChild(tbl6.Player.LocalPlayer.Name, 2)
		if not v10 then
			return
		end
		local gun2 = v10:WaitForChild("Gun", 1.5)
		if not gun2 then
			return
		end
		local shoot = gun2:FindFirstChild("Shoot")
		if not shoot then
			return
		end
		local cFrame = humanoidRootPart2.CFrame
		local position = humanoidRootPart.Position
		local v11 = cframe((humanoidRootPart.CFrame * cframe(0, 0, 5)).Position, position)
		humanoidRootPart2.Anchored = true
		humanoidRootPart2.CFrame = v11
		task.wait(0.05)
		local position2 = humanoidRootPart.Position
		local v12 = cframe(humanoidRootPart2.Position, position2)
		local v13 = cframe(position2)
		tbl7.fireGunShot(shoot, v12, v13)
		task.wait(0.05)
		humanoidRootPart2.CFrame = cFrame
		humanoidRootPart2.Anchored = false
	end)
end

tbl7.savePosition = function(arg, arg2)
	task.spawn(function()
		if not isfolder("LuWare/configs") then
			if v4(makefolder) == "function" then
				makefolder("LuWare/configs")
			end
		end

		local tbl15 = {}

		if isfile("LuWare/configs/positions.json") then
			local v8, v9 = v6(function()
				return tbl4.HttpService:JSONDecode(readfile("LuWare/configs/positions.json"))
			end)

			if v8 and v9 then
				tbl15 = v9
			end
		end

		tbl15[arg] = { XS = arg2.X.Scale, XO = arg2.X.Offset, YS = arg2.Y.Scale, YO = arg2.Y.Offset }
		writefile("LuWare/configs/positions.json", tbl4.HttpService:JSONEncode(tbl15))
	end)
end

tbl7.loadPosition = function(arg, arg2)
	local v8, v9 = v6(function()
		if not isfile("LuWare/configs/positions.json") then
			return nil
		end
		return tbl4.HttpService:JSONDecode(readfile("LuWare/configs/positions.json"))
	end)

	if not v8 or not v9 then
		return arg2
	end
	local v10 = v9[arg]
	if not v10 then
		return arg2
	end
	return udim22(v10.XS or arg2.X.Scale, v10.XO or v10.X or arg2.X.Offset, v10.YS or arg2.Y.Scale, v10.YO or v10.Y or arg2.Y.Offset)
end

tbl6.Features.Visuals.FEAnimPresets = {
	["OG Rthro Run"] = { run = "http://www.roblox.com/asset/?id=9801814462" },
	Vampire = {
		idle1 = "http://www.roblox.com/asset/?id=1083445855",
		idle2 = "http://www.roblox.com/asset/?id=1083450166",
		walk = "http://www.roblox.com/asset/?id=1083473930",
		run = "http://www.roblox.com/asset/?id=1083462077",
		jump = "http://www.roblox.com/asset/?id=1083455352",
		climb = "http://www.roblox.com/asset/?id=1083439238",
		fall = "http://www.roblox.com/asset/?id=1083443587",
	},
	Hero = {
		idle1 = "http://www.roblox.com/asset/?id=616111295",
		idle2 = "http://www.roblox.com/asset/?id=616113536",
		walk = "http://www.roblox.com/asset/?id=616122287",
		run = "http://www.roblox.com/asset/?id=616117076",
		jump = "http://www.roblox.com/asset/?id=616115533",
		climb = "http://www.roblox.com/asset/?id=616104706",
		fall = "http://www.roblox.com/asset/?id=616108001",
	},
	["Zombie Classic"] = {
		idle1 = "http://www.roblox.com/asset/?id=616158929",
		idle2 = "http://www.roblox.com/asset/?id=616160636",
		walk = "http://www.roblox.com/asset/?id=616168032",
		run = "http://www.roblox.com/asset/?id=616163682",
		jump = "http://www.roblox.com/asset/?id=616161997",
		climb = "http://www.roblox.com/asset/?id=616156119",
		fall = "http://www.roblox.com/asset/?id=616157476",
	},
	Mage = {
		idle1 = "http://www.roblox.com/asset/?id=707742142",
		idle2 = "http://www.roblox.com/asset/?id=707855907",
		walk = "http://www.roblox.com/asset/?id=707897309",
		run = "http://www.roblox.com/asset/?id=707861613",
		jump = "http://www.roblox.com/asset/?id=707853694",
		climb = "http://www.roblox.com/asset/?id=707826056",
		fall = "http://www.roblox.com/asset/?id=707829716",
	},
	Ghost = {
		idle1 = "http://www.roblox.com/asset/?id=616006778",
		idle2 = "http://www.roblox.com/asset/?id=616008087",
		walk = "http://www.roblox.com/asset/?id=616010382",
		run = "http://www.roblox.com/asset/?id=616013216",
		jump = "http://www.roblox.com/asset/?id=616008936",
		climb = "http://www.roblox.com/asset/?id=616003713",
		fall = "http://www.roblox.com/asset/?id=616005863",
	},
	Elder = {
		idle1 = "http://www.roblox.com/asset/?id=845397899",
		idle2 = "http://www.roblox.com/asset/?id=845400520",
		walk = "http://www.roblox.com/asset/?id=845403856",
		run = "http://www.roblox.com/asset/?id=845386501",
		jump = "http://www.roblox.com/asset/?id=845398858",
		climb = "http://www.roblox.com/asset/?id=845392038",
		fall = "http://www.roblox.com/asset/?id=845396048",
	},
	Levitation = {
		idle1 = "http://www.roblox.com/asset/?id=616006778",
		idle2 = "http://www.roblox.com/asset/?id=616008087",
		walk = "http://www.roblox.com/asset/?id=616013216",
		run = "http://www.roblox.com/asset/?id=616010382",
		jump = "http://www.roblox.com/asset/?id=616008936",
		climb = "http://www.roblox.com/asset/?id=616003713",
		fall = "http://www.roblox.com/asset/?id=616005863",
	},
	Astronaut = {
		idle1 = "http://www.roblox.com/asset/?id=891621366",
		idle2 = "http://www.roblox.com/asset/?id=891633237",
		walk = "http://www.roblox.com/asset/?id=891667138",
		run = "http://www.roblox.com/asset/?id=891636393",
		jump = "http://www.roblox.com/asset/?id=891627522",
		climb = "http://www.roblox.com/asset/?id=891609353",
		fall = "http://www.roblox.com/asset/?id=891617961",
	},
	Ninja = {
		idle1 = "http://www.roblox.com/asset/?id=656117400",
		idle2 = "http://www.roblox.com/asset/?id=656118341",
		walk = "http://www.roblox.com/asset/?id=656121766",
		run = "http://www.roblox.com/asset/?id=656118852",
		jump = "http://www.roblox.com/asset/?id=656117878",
		climb = "http://www.roblox.com/asset/?id=656114359",
		fall = "http://www.roblox.com/asset/?id=656115606",
	},
	Werewolf = {
		idle1 = "http://www.roblox.com/asset/?id=1083195517",
		idle2 = "http://www.roblox.com/asset/?id=1083214717",
		walk = "http://www.roblox.com/asset/?id=1083178339",
		run = "http://www.roblox.com/asset/?id=1083216690",
		jump = "http://www.roblox.com/asset/?id=1083218792",
		climb = "http://www.roblox.com/asset/?id=1083182000",
		fall = "http://www.roblox.com/asset/?id=1083189019",
	},
	Cartoon = {
		idle1 = "http://www.roblox.com/asset/?id=742637544",
		idle2 = "http://www.roblox.com/asset/?id=742638445",
		walk = "http://www.roblox.com/asset/?id=742640026",
		run = "http://www.roblox.com/asset/?id=742638842",
		jump = "http://www.roblox.com/asset/?id=742637942",
		climb = "http://www.roblox.com/asset/?id=742636889",
		fall = "http://www.roblox.com/asset/?id=742637151",
	},
	Pirate = {
		idle1 = "http://www.roblox.com/asset/?id=750781874",
		idle2 = "http://www.roblox.com/asset/?id=750782770",
		walk = "http://www.roblox.com/asset/?id=750785693",
		run = "http://www.roblox.com/asset/?id=750783738",
		jump = "http://www.roblox.com/asset/?id=750782230",
		climb = "http://www.roblox.com/asset/?id=750779899",
		fall = "http://www.roblox.com/asset/?id=750780242",
	},
	Sneaky = {
		idle1 = "http://www.roblox.com/asset/?id=1132473842",
		idle2 = "http://www.roblox.com/asset/?id=1132477671",
		walk = "http://www.roblox.com/asset/?id=1132510133",
		run = "http://www.roblox.com/asset/?id=1132494274",
		jump = "http://www.roblox.com/asset/?id=1132489853",
		climb = "http://www.roblox.com/asset/?id=1132461372",
		fall = "http://www.roblox.com/asset/?id=1132469004",
	},
	Toy = {
		idle1 = "http://www.roblox.com/asset/?id=782841498",
		idle2 = "http://www.roblox.com/asset/?id=782845736",
		walk = "http://www.roblox.com/asset/?id=782843345",
		run = "http://www.roblox.com/asset/?id=782842708",
		jump = "http://www.roblox.com/asset/?id=782847020",
		climb = "http://www.roblox.com/asset/?id=782843869",
		fall = "http://www.roblox.com/asset/?id=782846423",
	},
	Knight = {
		idle1 = "http://www.roblox.com/asset/?id=657595757",
		idle2 = "http://www.roblox.com/asset/?id=657568135",
		walk = "http://www.roblox.com/asset/?id=657552124",
		run = "http://www.roblox.com/asset/?id=657564596",
		jump = "http://www.roblox.com/asset/?id=658409194",
		climb = "http://www.roblox.com/asset/?id=658360781",
		fall = "http://www.roblox.com/asset/?id=657600338",
	},
	Confident = {
		idle1 = "http://www.roblox.com/asset/?id=1069977950",
		idle2 = "http://www.roblox.com/asset/?id=1069987858",
		walk = "http://www.roblox.com/asset/?id=1070017263",
		run = "http://www.roblox.com/asset/?id=1070001516",
		jump = "http://www.roblox.com/asset/?id=1069984524",
		climb = "http://www.roblox.com/asset/?id=1069946257",
		fall = "http://www.roblox.com/asset/?id=1069973677",
	},
	Popstar = {
		idle1 = "http://www.roblox.com/asset/?id=1212900985",
		idle2 = "http://www.roblox.com/asset/?id=1212900985",
		walk = "http://www.roblox.com/asset/?id=1212980338",
		run = "http://www.roblox.com/asset/?id=1212980348",
		jump = "http://www.roblox.com/asset/?id=1212954642",
		climb = "http://www.roblox.com/asset/?id=1213044953",
		fall = "http://www.roblox.com/asset/?id=1212900995",
	},
	Princess = {
		idle1 = "http://www.roblox.com/asset/?id=941003647",
		idle2 = "http://www.roblox.com/asset/?id=941013098",
		walk = "http://www.roblox.com/asset/?id=941028902",
		run = "http://www.roblox.com/asset/?id=941015281",
		jump = "http://www.roblox.com/asset/?id=941008832",
		climb = "http://www.roblox.com/asset/?id=940996062",
		fall = "http://www.roblox.com/asset/?id=941000007",
	},
	Cowboy = {
		idle1 = "http://www.roblox.com/asset/?id=1014390418",
		idle2 = "http://www.roblox.com/asset/?id=1014398616",
		walk = "http://www.roblox.com/asset/?id=1014421541",
		run = "http://www.roblox.com/asset/?id=1014401683",
		jump = "http://www.roblox.com/asset/?id=1014394726",
		climb = "http://www.roblox.com/asset/?id=1014380606",
		fall = "http://www.roblox.com/asset/?id=1014384571",
	},
	Patrol = {
		idle1 = "http://www.roblox.com/asset/?id=1149612882",
		idle2 = "http://www.roblox.com/asset/?id=1150842221",
		walk = "http://www.roblox.com/asset/?id=1151231493",
		run = "http://www.roblox.com/asset/?id=1150967949",
		jump = "http://www.roblox.com/asset/?id=1150944216",
		climb = "http://www.roblox.com/asset/?id=1148811837",
		fall = "http://www.roblox.com/asset/?id=1148863382",
	},
	["Zombie FE"] = {
		idle1 = "http://www.roblox.com/asset/?id=3489171152",
		idle2 = "http://www.roblox.com/asset/?id=3489171152",
		walk = "http://www.roblox.com/asset/?id=3489174223",
		run = "http://www.roblox.com/asset/?id=3489173414",
		jump = "http://www.roblox.com/asset/?id=616161997",
		climb = "http://www.roblox.com/asset/?id=616156119",
		fall = "http://www.roblox.com/asset/?id=616157476",
	},
	["Catwalk Glam"] = {
		idle1 = "http://www.roblox.com/asset/?id=133806214992291",
		idle2 = "http://www.roblox.com/asset/?id=133806214992291",
		walk = "http://www.roblox.com/asset/?id=109168724482748",
		run = "http://www.roblox.com/asset/?id=81024476153754",
		jump = "http://www.roblox.com/asset/?id=116936326516985",
		climb = "http://www.roblox.com/asset/?id=119377220967554",
		fall = "http://www.roblox.com/asset/?id=92294537340807",
	},
	["Amazon Unboxed"] = {
		idle1 = "http://www.roblox.com/asset/?id=98281136301627",
		idle2 = "http://www.roblox.com/asset/?id=98281136301627",
		walk = "http://www.roblox.com/asset/?id=90478085024465",
		run = "http://www.roblox.com/asset/?id=134824450619865",
		jump = "http://www.roblox.com/asset/?id=121454505477205",
		climb = "http://www.roblox.com/asset/?id=121145883950231",
		fall = "http://www.roblox.com/asset/?id=94788218468396",
	},
	["Glow Motion"] = {
		idle1 = "https://www.roblox.com/asset/?id=137764781910579",
		idle2 = "https://www.roblox.com/asset/?id=137764781910579",
		walk = "http://www.roblox.com/asset/?id=85809016093530",
		run = "http://www.roblox.com/asset/?id=101925097435036",
		jump = "http://www.roblox.com/asset/?id=74159004634379",
		climb = "http://www.roblox.com/asset/?id=108236155509584",
		fall = "https://www.roblox.com/asset/?id=98070939608691",
	},
	Bubbly = {
		idle1 = "https://www.roblox.com/asset/?id=10921054344",
		idle2 = "https://www.roblox.com/asset/?id=10921054344",
		walk = "http://www.roblox.com/asset/?id=10980888364",
		run = "http://www.roblox.com/asset/?id=10921057244",
		jump = "http://www.roblox.com/asset/?id=10921062673",
		climb = "http://www.roblox.com/asset/?id=10921053544",
		fall = "https://www.roblox.com/asset/?id=10921061530",
	},
	["Adidas Comm"] = {
		idle1 = "https://www.roblox.com/asset/?id=122257458498464",
		idle2 = "https://www.roblox.com/asset/?id=122257458498464",
		walk = "http://www.roblox.com/asset/?id=122150855457006",
		run = "http://www.roblox.com/asset/?id=82598234841035",
		jump = "http://www.roblox.com/asset/?id=75290611992385",
		climb = "http://www.roblox.com/asset/?id=88763136693023",
		fall = "https://www.roblox.com/asset/?id=98600215928904",
	},
	KATSEYE = {
		idle1 = "https://www.roblox.com/asset/?id=108187809145790",
		idle2 = "https://www.roblox.com/asset/?id=108187809145790",
		walk = "http://www.roblox.com/asset/?id=99182913548783",
		run = "http://www.roblox.com/asset/?id=73117360545482",
		jump = "http://www.roblox.com/asset/?id=103632305262747",
		climb = "http://www.roblox.com/asset/?id=106213237973858",
		fall = "https://www.roblox.com/asset/?id=127802717128367",
	},
	["Wicked Popular"] = {
		idle1 = "https://www.roblox.com/asset/?id=118832222982049",
		idle2 = "https://www.roblox.com/asset/?id=118832222982049",
		walk = "http://www.roblox.com/asset/?id=92072849924640",
		run = "http://www.roblox.com/asset/?id=72301599441680",
		jump = "http://www.roblox.com/asset/?id=104325245285198",
		climb = "http://www.roblox.com/asset/?id=131326830509784",
		fall = "https://www.roblox.com/asset/?id=121152442762481",
	},
}

tbl6.Features.Visuals.FEAnimMap = {
	idle = {
		folder = "idle",
		slots = { { child = "Animation1", origKey = "idle1" }, { child = "Animation2", origKey = "idle2" } },
	},
	walk = { folder = "walk", slots = { { child = "WalkAnim", origKey = "walk" } } },
	run = { folder = "run", slots = { { child = "RunAnim", origKey = "run" } } },
	jump = { folder = "jump", slots = { { child = "JumpAnim", origKey = "jump" } } },
	climb = { folder = "climb", slots = { { child = "ClimbAnim", origKey = "climb" } } },
	fall = { folder = "fall", slots = { { child = "FallAnim", origKey = "fall" } } },
}

tbl6.SaveFEAnimOriginals = function(arg, arg2)
	for _, v8 in pairs(arg.Features.Visuals.FEAnimMap) do
		local v9 = arg2:FindFirstChild(v8.folder)

		if v9 then
			for _, slot in ipairs(v8.slots) do
				local v10 = v9:FindFirstChild(slot.child)

				if v10 and v10:IsA("Animation") and v10.AnimationId and v10.AnimationId ~= "" then
					arg.Features.Visuals.FEAnimOriginals[slot.origKey] = v10.AnimationId
				end
			end
		end
	end
end

tbl6.ApplyFEAnims = function(arg, arg2)
	local animate = arg2:FindFirstChild("Animate")
	if not animate then
		return
	end
	local humanoid = arg2:FindFirstChildOfClass("Humanoid")
	if not humanoid then
		return
	end
	arg:SaveFEAnimOriginals(animate)

	for _, v8 in pairs(humanoid:GetPlayingAnimationTracks()) do
		v8:Stop(0)
	end

	animate.Disabled = true
	task.wait(0.15)

	for k_, v8 in pairs(arg.Features.Visuals.FEAnimMap) do
		local all = arg.Features.Visuals.FEAnimState[k_] ~= "Default" and arg.Features.Visuals.FEAnimState[k_] or arg.Features.Visuals.FEAnimState.all
		local v9 = animate:FindFirstChild(v8.folder)

		if v9 then
			for _, slot in ipairs(v8.slots) do
				local v10 = v9:FindFirstChild(slot.child)

				if v10 and v10:IsA("Animation") then
					if all == "Default" then
						if arg.Features.Visuals.FEAnimOriginals[slot.origKey] then
							v10.AnimationId = arg.Features.Visuals.FEAnimOriginals[slot.origKey]
						end
					else
						local v11 = arg.Features.Visuals.FEAnimPresets[all]

						if v11 and v11[slot.origKey] then
							v10.AnimationId = v11[slot.origKey]
						end
					end
				end
			end
		end
	end

	animate.Disabled = false
	local state = humanoid:GetState()
	humanoid:ChangeState(Enum.HumanoidStateType.GettingUp)

	task.delay(0.1, function()
		if humanoid and humanoid.Parent then
			humanoid:ChangeState(state)
		end
	end)
end

tbl6.RestoreFEAnimOriginals = function(arg, arg2)
	local animate = arg2:FindFirstChild("Animate")
	if not animate then
		return
	end
	local humanoid = arg2:FindFirstChildOfClass("Humanoid")
	if not humanoid then
		return
	end

	for _, v8 in pairs(humanoid:GetPlayingAnimationTracks()) do
		v8:Stop(0)
	end

	animate.Disabled = true
	task.wait(0.15)

	for _, v8 in pairs(arg.Features.Visuals.FEAnimMap) do
		local v9 = animate:FindFirstChild(v8.folder)

		if v9 then
			for _, slot in ipairs(v8.slots) do
				local v10 = v9:FindFirstChild(slot.child)

				if v10 and v10:IsA("Animation") and arg.Features.Visuals.FEAnimOriginals[slot.origKey] then
					v10.AnimationId = arg.Features.Visuals.FEAnimOriginals[slot.origKey]
				end
			end
		end
	end

	animate.Disabled = false
	local state = humanoid:GetState()
	humanoid:ChangeState(Enum.HumanoidStateType.GettingUp)

	task.delay(0.1, function()
		if humanoid and humanoid.Parent then
			humanoid:ChangeState(state)
		end
	end)
end

tbl6.UI.lockedButtons = {}

tbl7.saveLockConfig = function()
	if not isfolder("LuWare/configs") then
		if v4(makefolder) == "function" then
			makefolder("LuWare/configs")
		end
	end

	local tbl15 = {}

	for k_, lockedButton in pairs(tbl6.UI.lockedButtons) do
		if lockedButton == true and v4(k_) == "string" then
			tbl15[k_] = true
		end
	end

	writefile("LuWare/configs/locks.json", tbl4.HttpService:JSONEncode(tbl15))
end

tbl7.loadLockConfig = function()
	if not isfile("LuWare/configs/locks.json") then
		return
	end
	local data = tbl4.HttpService:JSONDecode(readfile("LuWare/configs/locks.json"))

	if v4(data) == "table" then
		for k_, v8 in pairs(data) do
			if v8 == true and v4(k_) == "string" then
				tbl6.UI.lockedButtons[k_] = true
			end
		end
	end
end

tbl7.loadLockConfig()

tbl7.trim = function(arg)
	return v4(arg) == "string" and arg:match("^%s*(.-)%s*$") or arg
end

tbl7.getDropdownNames = function(arg)
	local tbl15 = {}

	if v4(arg) == "table" then
		for k_, v8 in pairs(arg) do
			if v4(v8) ~= "string" then
				if v4(v8) == "table" then
					local value = v4(v8.Value) == "string" and v8.Value

					if value then
						v8 = value
					else
						v8 = v4(v8.Name) == "string" and v8.Name or nil
					end
				else
					v8 = nil

					if v4(k_) == "string" then
						v8 = k_
					end
				end
			end

			if v8 and v8 ~= "" then
				insert(tbl15, tbl7.trim(v8))
			end
		end
	elseif v4(arg) == "string" and arg ~= "" then
		insert(tbl15, tbl7.trim(arg))
	end

	return tbl15
end

tbl5.aU = {}
tbl5.aV = nil

tbl7.makeDraggable = function(arg, arg2)
	local tbl15 = { input = nil, dragStart = nil, startPos = nil, moved = false }

	arg.InputBegan:Connect(function(input)
		if input.UserInputType ~= Enum.UserInputType.Touch and input.UserInputType ~= Enum.UserInputType.MouseButton1 then
			return
		end

		if tbl15.input then
			return
		end
		local v8 = tbl7.trim(arg:GetAttribute("LockKey") or arg.Text)
		if not v8 or v8 == "" then
			return
		end

		if tbl6.UI.lockedButtons[v8] == true then
			return
		end
		tbl15.input = input
		tbl15.dragStart = input.Position
		tbl15.startPos = arg.Position
		tbl15.moved = false

		input.Changed:Connect(function()
			if input.UserInputState ~= Enum.UserInputState.End and input.UserInputState ~= Enum.UserInputState.Cancel then
				return
			end

			if tbl15.input == input then
				tbl15.input = nil

				if tbl15.moved then
					tbl15.moved = false

					if arg2 then
						task.spawn(tbl7.savePosition, arg2, arg.Position)
					end
				end
			end
		end)
	end)

	tbl15.move = function(arg3)
		local n = arg3.Position - tbl15.dragStart

		if not tbl15.moved and (abs(n.X) > 3 or abs(n.Y) > 3) then
			tbl15.moved = true

			if arg2 then
				tbl6.UI.dragData.moved = true
			end
		end

		if tbl15.moved then
			arg.Position = udim22(tbl15.startPos.X.Scale, tbl15.startPos.X.Offset + n.X, tbl15.startPos.Y.Scale, tbl15.startPos.Y.Offset + n.Y)
		end
	end

	insert(tbl5.aU, tbl15)

	if not tbl5.aV then
		tbl5.aV = tbl4.UserInputService.InputChanged:Connect(function(input)
			local userInputType = input.UserInputType
			if userInputType ~= Enum.UserInputType.Touch and userInputType ~= Enum.UserInputType.MouseMovement then
				return
			end

			for _, v8 in ipairs(tbl5.aU) do
				if v8.input == input or userInputType == Enum.UserInputType.MouseMovement and v8.input and v8.input.UserInputType == Enum.UserInputType.MouseButton1 then
					v8.move(input)
					break
				end
			end
		end)
	end
end

tbl7.updateWallCheckFilter()

tbl4.Players.PlayerRemoving:Connect(function(player)
	if player then
		tbl6.Features.ESP.wallCheckCache[player] = nil
	end
end)

tbl7.assignHero = function(arg)
	local v8 = tbl7.getRole(arg)
	if v8 ~= "Innocent" and v8 ~= "Unknown" then
		return
	end

	if not tbl6.Game.roleTable[arg.Name] then
		tbl6.Game.roleTable[arg.Name] = {}
	end

	tbl6.Game.roleTable[arg.Name].Role = "Hero"
	tbl6.Game.roleTable[arg.Name].Dead = false
	tbl7.updateCachedRoles()
	tbl7.updateStatusLabels()
	tbl7.checkRoleNotify()
	tbl7.updatePlayerDropdown()
	tbl7.updateFlingDropdown()
end

tbl7.createDraggableButton = function(text, arg, arg2, arg3)
	local textButton = Instance.new("TextButton")
	textButton:SetAttribute("LockKey", arg2 or text)
	textButton.Size = udim22(0, 42, 0, 40)
	local v8 = udim22(0.5, arg, 0.75 + (arg3 or 0) * 0.09, 0)
	textButton.Position = arg2 and tbl7.loadPosition(arg2, v8) or v8
	textButton.Text = text
	textButton.BackgroundTransparency = 1
	textButton.TextColor3 = Color3.new(1, 1, 1)
	textButton.Font = Enum.Font.Jura
	textButton.TextSize = 11
	textButton.TextWrapped = true
	textButton.Visible = false
	textButton.Parent = tbl6.UI.floatingGui
	Instance.new("UICorner", textButton).CornerRadius = udim(1, 0)
	local uiStroke = Instance.new("UIStroke", textButton)
	uiStroke.Thickness = 2.5
	uiStroke.Color = Color3.new(1, 1, 1)
	uiStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

	tbl5.P[textButton] = {
		stroke = uiStroke,
		gradient = tbl7._animateStroke(uiStroke),
		animConn = nil,
		isActive = false,
		isCooldown = false,
	}

	textButton.TouchTap:Connect(function()
		tbl7._playBtnClick()
	end)

	tbl7.makeDraggable(textButton, arg2)
	return textButton
end

tbl7.setButtonActive = function(arg, isActive)
	if not arg or not tbl5.P[arg] then
		return
	end

	if arg == tbl6.UI.shootButton then
		tbl5.P[arg].isActive = isActive
		tbl7.applyShootButtonVisual(arg, tbl6.Features.Combat.shootButtonState == "waiting" and "waiting" or "ready")
		return
	end

	local v8 = tbl5.P[arg]
	local gradient = v8.gradient
	v8.isActive = isActive
	tbl7._getUiSeqs()

	if isActive then
		tbl7._fadeGradient(gradient, tbl5.aO)
		tbl4.TweenService:Create(arg, tbl5.aS, { TextColor3 = tbl5.aQ }):Play()
	else
		tbl7._fadeGradient(gradient, tbl5.aN)
		tbl4.TweenService:Create(arg, tbl5.aS, { TextColor3 = Color3.new(1, 1, 1) }):Play()
	end
end

tbl7.setButtonCooldown = function(arg, isCooldown)
	if not arg or not tbl5.P[arg] then
		return
	end
	local v8 = tbl5.P[arg]
	v8.isCooldown = isCooldown
	if isCooldown then
		tbl7._fadeGradient(v8.gradient, tbl5.aP)
		return
	end
	tbl7.setButtonActive(arg, v8.isActive)
end

tbl7.flickButton = function(arg)
	if not arg or not tbl5.P[arg] then
		return
	end
	local v8, v9, v10 = tbl7._getUiSeqs()
	tbl7._fadeGradient(tbl5.P[arg].gradient, v10)

	task.delay(0.3, function()
		local v11 = tbl5.P[arg]
		if not v11 or v11.isCooldown then
			return
		end
		tbl7.setButtonActive(arg, v11.isActive)
	end)
end

tbl7.doFlick = function()
	if tbl6.Features.Combat.flickInProgress then
		return
	end
	local v8 = tbl7.getRole(tbl6.Player.LocalPlayer)
	if v8 ~= "Sheriff" and v8 ~= "Hero" then
		return
	end

	if not tbl6.Game.currentMurderer or tbl7.isDead(tbl6.Game.currentMurderer) then
		return
	end
	local character = tbl6.Player.LocalPlayer.Character
	local humanoidRootPart = character and character:FindFirstChild("HumanoidRootPart")
	local head = tbl6.Game.currentMurderer.Character and tbl6.Game.currentMurderer.Character:FindFirstChild("Head")
	if not humanoidRootPart or not head then
		return
	end
	tbl6.Features.Combat.flickInProgress = true
	local cameraType = tbl6.Player.Camera.CameraType
	local cameraSubject = tbl6.Player.Camera.CameraSubject
	local cFrame = tbl6.Player.Camera.CFrame
	local v9 = cframe(cFrame.Position, head.Position)
	tbl6.Player.Camera.CameraType = Enum.CameraType.Scriptable

	for i_ = 1, 3 do
		tbl6.Player.Camera.CFrame = cFrame:Lerp(v9, 0.5 + i_ * 0.15)
		renderStepped:Wait()
	end

	tbl7.shootmurd()

	for i_ = 1, 3 do
		tbl6.Player.Camera.CFrame = v9:Lerp(cFrame, 0.5 + i_ * 0.15)
		renderStepped:Wait()
	end

	tbl6.Player.Camera.CameraType = cameraType

	if cameraSubject then
		tbl6.Player.Camera.CameraSubject = cameraSubject
	else
		character = character and character:FindFirstChildOfClass("Humanoid")

		if character then
			tbl6.Player.Camera.CameraSubject = character
		end
	end

	tbl6.Features.Combat.flickInProgress = false
end

tbl7.executeBombJump = function()
	if tbl6.Features.Movement.BombJumpOnCooldown or tbl6.Features.Movement.BombJumpDebounce or tbl6.Features.Movement.BombJumpJustRespawned then
		return
	end
	tbl6.Features.Movement.BombJumpDebounce = true
	local character = tbl6.Player.LocalPlayer.Character
	if not character then
		tbl6.Features.Movement.BombJumpDebounce = false
		return
	end
	local fakeBomb = character:FindFirstChild("FakeBomb")

	if not fakeBomb then
		local backpack = tbl6.Player.LocalPlayer:FindFirstChild("Backpack")

		if backpack then
			fakeBomb = backpack:FindFirstChild("FakeBomb")
		end

		if fakeBomb then
			fakeBomb.Parent = character
		end
	end

	if not fakeBomb then
		tbl4.ReplicatedStorage:FindFirstChild("Remotes", true):FindFirstChild("Extras", true):FindFirstChild("ReplicateToy"):InvokeServer("FakeBomb")

		for i_ = 1, 5 do
			fakeBomb = character:FindFirstChild("FakeBomb")

			if not fakeBomb then
				local backpack = tbl6.Player.LocalPlayer:FindFirstChild("Backpack")

				if backpack then
					fakeBomb = backpack:FindFirstChild("FakeBomb")
				end

				if fakeBomb then
					fakeBomb.Parent = character
				end
			end

			if not fakeBomb then
				task.wait(0.05)
				continue
			end
			break
		end
	end

	if fakeBomb and character:FindFirstChild("HumanoidRootPart") then
		local remote = fakeBomb:FindFirstChild("Remote")

		if remote then
			remote:FireServer(cframe(character.HumanoidRootPart.Position + tbl6.Player.Camera.CFrame.LookVector * 5), 50)
			character:FindFirstChildOfClass("Humanoid"):ChangeState(Enum.HumanoidStateType.Jumping)

			task.spawn(function()
				task.wait(0.5)
				local fakeBomb2 = character:FindFirstChild("FakeBomb")

				if fakeBomb2 then
					fakeBomb2.Parent = tbl6.Player.LocalPlayer:FindFirstChild("Backpack") or character
				end
			end)

			tbl6.Features.Movement.BombJumpOnCooldown = true
			tbl7.setButtonCooldown(tbl6.UI.bombjumpBtn, true)
			tbl6.UI.bombjumpBtn.Text = "Wait"

			task.delay(22, function()
				if not tbl6.Features.Movement.BombJumpOnCooldown then
					return
				end
				tbl6.Features.Movement.BombJumpOnCooldown = false
				tbl6.UI.bombjumpBtn.Text = "Bomb\nJump"
				tbl7.setButtonCooldown(tbl6.UI.bombjumpBtn, false)
				tbl7.setButtonActive(tbl6.UI.bombjumpBtn, false)
			end)

			task.spawn(function()
				for i_ = 22, 1, -1 do
					if tbl6.Features.Movement.BombJumpOnCooldown then
						tbl6.UI.bombjumpBtn.Text = v2(i_)
						task.wait(1)
						continue
					end

					break
				end
			end)
		end
	end

	tbl6.Features.Movement.BombJumpDebounce = false
end

tbl7.setupButtonBuffer = function(arg, thickness, cornerRadius)
	if not arg then
		return
	end
	;(arg:FindFirstChildOfClass("UICorner") or Instance.new("UICorner", arg)).CornerRadius = cornerRadius or udim(1, 0)
	local uiStroke = arg:FindFirstChildOfClass("UIStroke") or Instance.new("UIStroke", arg)
	uiStroke.Thickness = thickness or 2.5
	uiStroke.Color = Color3.new(1, 1, 1)
	uiStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	local uiGradient = uiStroke:FindFirstChildOfClass("UIGradient")

	if uiGradient then
		destroy(uiGradient)
	end

	tbl5.P[arg] = { stroke = uiStroke, gradient = tbl7._animateStroke(uiStroke), animConn = nil, isActive = false }
end

tbl7.setupRippleButton = function(parent, thickness, cornerRadius)
	if not parent then
		return
	end

	parent.ClipsDescendants = true
	;(parent:FindFirstChildOfClass("UICorner") or Instance.new("UICorner", parent)).CornerRadius = cornerRadius or udim(0, 12)
	local uiStroke = parent:FindFirstChildOfClass("UIStroke") or Instance.new("UIStroke", parent)
	uiStroke.Thickness = thickness or 2.5
	uiStroke.Color = Color3.new(1, 1, 1)
	uiStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	local uiGradient = uiStroke:FindFirstChildOfClass("UIGradient")

	if uiGradient then
		destroy(uiGradient)
	end

	local v8 = tbl7._animateStroke(uiStroke)
	local tbl15 = {}
	local tbl16 = {}
	local tbl17 = {}

	for i_ = 1, 1 do
		local frame = Instance.new("Frame")
		frame.Name = "Wave" .. i_
		frame.Size = udim22(0, 0, 0, 0)
		frame.Position = udim22(0.5, 0, 0.5, 0)
		frame.AnchorPoint = vector2(0.5, 0.5)
		frame.BackgroundTransparency = 1
		frame.BorderSizePixel = 0
		frame.ZIndex = parent.ZIndex - 1
		frame.Visible = false
		Instance.new("UICorner", frame).CornerRadius = udim(1, 0)
		local uiStroke2 = Instance.new("UIStroke", frame)
		uiStroke2.Thickness = 1.75
		uiStroke2.Color = Color3.new(1, 1, 1)
		uiStroke2.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
		Instance.new("UIAspectRatioConstraint", frame).AspectRatio = 1
		frame.Parent = parent
		tbl15[i_] = frame
		tbl16[i_] = uiStroke2
		local tbl18 = {}
		local tween = tbl4.TweenService:Create(frame, TweenInfo.new(0.55, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Size = udim22(1.5, 0, 1.5, 0) })
		local tweenService = tbl4.TweenService
		local create = tweenService.Create
		local tweenInfo = TweenInfo.new(0.55, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
		tbl18[1] = tween

		do
			local values = table.pack(create(tweenService, uiStroke2, tweenInfo, { Transparency = 1 }))
			table.move(values, 1, values.n, 2, tbl18)
		end

		tbl17[i_] = tbl18
	end

	tbl5.P[parent] = {
		stroke = uiStroke,
		gradient = v8,
		waves = tbl15,
		waveStrokes = tbl16,
		waveTweens = tbl17,
		animConn = nil,
		isActive = false,
	}
end

tbl7._playWave = function(arg, arg2)
	local v8 = arg.waves[arg2]
	local v9 = arg.waveStrokes[arg2]
	local v10 = arg.waveTweens[arg2]
	if not v8 or not v8.Parent then
		return
	end
	v10[1]:Cancel()
	v10[2]:Cancel()
	v8.Position = udim22(0.5, 0, 0.5, 0)
	v8.Size = udim22(0, 0, 0, 0)
	v9.Transparency = 0.25
	v8.Visible = true
	v10[1]:Play()
	v10[2]:Play()

	v10[2].Completed:Once(function()
		v8.Visible = false
	end)
end

tbl7.rippleShootButton = function(arg)
	arg = arg and tbl5.P[arg]
	if not arg or not arg.waves then
		return
	end

	for i_ = 1, #arg.waves do
		local n = (i_ - 1) * 0.08

		if n == 0 then
			tbl7._playWave(arg, i_)
		else
			task.delay(n, tbl7._playWave, arg, i_)
		end
	end
end

tbl7.toggleFly = function(arg)
	local character = tbl6.Player.LocalPlayer.Character
	local humanoidRootPart = character and character:FindFirstChild("HumanoidRootPart")
	local humanoid = character and character:FindFirstChildOfClass("Humanoid")
	if not (character and humanoidRootPart and humanoid) then
		return
	end

	if arg then
		tbl6.Features.Movement.FlyEnabled = true
		humanoid.PlatformStand = true
		humanoid:ChangeState(Enum.HumanoidStateType.Swimming)

		if character:FindFirstChild("Animate") then
			character.Animate.Disabled = true
		end

		for _, v8 in ipairs(humanoid:GetPlayingAnimationTracks()) do
			v8:Stop()
		end

		local bodyGyro = Instance.new("BodyGyro")
		bodyGyro.P = 90000
		bodyGyro.MaxTorque = vector3(1, 1, 1) * math.huge
		bodyGyro.CFrame = tbl6.Player.Camera.CFrame
		bodyGyro.Name = "_FlyGyro"
		bodyGyro.Parent = humanoidRootPart
		local bodyVelocity = Instance.new("BodyVelocity")
		bodyVelocity.MaxForce = vector3(1, 1, 1) * math.huge
		bodyVelocity.Velocity = vector
		bodyVelocity.Name = "_FlyVelocity"
		bodyVelocity.Parent = humanoidRootPart
		local flyGyro = humanoidRootPart:FindFirstChild("_FlyGyro")
		local flyVelocity = humanoidRootPart:FindFirstChild("_FlyVelocity")

		tbl9.Legacy.flyRender = renderStepped:Connect(function()
			if not tbl6.Features.Movement.FlyEnabled then
				return
			end
			local cFrame = tbl6.Player.Camera.CFrame
			local moveDirection = humanoid.MoveDirection
			local lookVector = cFrame.LookVector
			local dot = moveDirection.Dot
			local unit = (cFrame.RightVector * moveDirection:Dot(cFrame.RightVector) + lookVector * dot(moveDirection, vector3(cFrame.LookVector.X, 0, cFrame.LookVector.Z).Unit)).Unit
			local velocity = moveDirection.Magnitude > 0 and unit * 90 or vector

			if flyVelocity then
				flyVelocity.Velocity = velocity
			end

			if flyGyro then
				flyGyro.CFrame = cFrame
			end
		end)
	else
		tbl6.Features.Movement.FlyEnabled = false

		if tbl9.Legacy.flyRender then
			tbl9.Legacy.flyRender:Disconnect()
			tbl9.Legacy.flyRender = nil
		end

		if humanoidRootPart:FindFirstChild("_FlyGyro") then
			destroy(humanoidRootPart._FlyGyro)
		end

		if humanoidRootPart:FindFirstChild("_FlyVelocity") then
			destroy(humanoidRootPart._FlyVelocity)
		end

		humanoid.PlatformStand = false

		if character:FindFirstChild("Animate") then
			character.Animate.Disabled = false
		end
	end
end

tbl7.setupSpeedGlitch = function(arg)
	local humanoid = arg:WaitForChild("Humanoid", 5)
	if not humanoid then
		return
	end
	tbl6.Features.Movement.normalWalkSpeed = humanoid.WalkSpeed

	humanoid.StateChanged:Connect(function(old, new)
		if not tbl6.Features.Movement.SpeedGlitchEnabled then
			return
		end

		if new == Enum.HumanoidStateType.Landed then
			humanoid.WalkSpeed = tbl6.Features.Movement.normalWalkSpeed
		elseif new == Enum.HumanoidStateType.Jumping then
			if tbl6.UI.Toggles.OnlySideways.Value then
				local moveDirection = humanoid.MoveDirection

				if abs(moveDirection.X) > abs(moveDirection.Z) and moveDirection.Magnitude > 0.1 then
					humanoid.WalkSpeed = 30
				end
			else
				humanoid.WalkSpeed = 30
			end
		end
	end)
end

tbl7.applyMovement = function()
	local function fn7()
		local character = tbl6.Player.LocalPlayer.Character
		character = character and character:FindFirstChildOfClass("Humanoid")

		if character then
			character.WalkSpeed = tbl6.UI.wsValue
			character.JumpPower = tbl6.UI.jpValue
			tbl6.Features.Movement.normalWalkSpeed = tbl6.UI.wsValue
		end
	end

	if tbl9.Legacy and tbl9.Legacy.movementCharacterConn then
		tbl9.Legacy.movementCharacterConn:Disconnect()
		tbl9.Legacy.movementCharacterConn = nil
	end

	fn7()

	if tbl6.Player.LocalPlayer and tbl6.Player.LocalPlayer.CharacterAdded then
		tbl9.Legacy.movementCharacterConn = tbl6.Player.LocalPlayer.CharacterAdded:Connect(function(character)
			task.defer(function()
				local humanoid = character and character:FindFirstChildOfClass("Humanoid")

				if humanoid then
					humanoid.WalkSpeed = tbl6.UI.wsValue
					humanoid.JumpPower = tbl6.UI.jpValue
					tbl6.Features.Movement.normalWalkSpeed = tbl6.UI.wsValue
				end
			end)
		end)
	end
end

tbl7.refreshRoles = function()
	tbl6.Game.GetPlayerData = tbl11.Static.RS.GetPlayerData

	if not tbl6.Game.GetPlayerData then
		tbl6.Game.GetPlayerData = tbl4.ReplicatedStorage:FindFirstChild("GetPlayerData", true)

		if tbl6.Game.GetPlayerData then
			tbl11.Static.RS.GetPlayerData = tbl6.Game.GetPlayerData
		end
	end

	if tbl6.Game.GetPlayerData then
		local flag = tbl2 ~= nil and tbl6 ~= nil and tbl6.Game ~= nil and tbl6.Game.GetPlayerData ~= nil and v4(tbl6.Game.GetPlayerData.InvokeServer) == "function"
		local response = nil

		if flag then
			response = tbl6.Game.GetPlayerData:InvokeServer()
		end

		if flag and v5(response) == "table" then
			tbl6.Game.roleTable = response
		end
	end

	fn6()
	tbl7.updateCachedRoles()
	tbl7.updatePlayerDropdown()
	tbl7.updateFlingDropdown()
	tbl7.updateStatusLabels()
	tbl7.checkRoleNotify()
end

tbl6.LastPosition = nil

tbl7.updateAntiFling = function()
	if not tbl6.AntiFlingEnabled then
		return
	end

	if tbl6.Features.Movement.isFlinging or tbl6.Features.Movement.isFlingingAll or tbl6.Features.Movement.TouchFlingEnabled then
		return
	end

	local function fn7()
		local localPlayer = tbl6.Player.LocalPlayer
		if not localPlayer or not localPlayer.Character or not localPlayer.Character.PrimaryPart then
			return
		end
		local primaryPart = localPlayer.Character.PrimaryPart

		for _, v8 in ipairs(tbl6.Players.Cache) do
			if v8 ~= localPlayer and v8.Character then
				local primaryPart2 = v8.Character.PrimaryPart or tbl7.charPart(v8, "HumanoidRootPart")

				if primaryPart2 then
					if primaryPart2.AssemblyAngularVelocity.Magnitude > 50 or primaryPart2.AssemblyLinearVelocity.Magnitude > 100 then
						for _, child in ipairs(v8.Character:GetChildren()) do
							if child:IsA("BasePart") then
								child.CanCollide = false
								child.AssemblyAngularVelocity = vector
								child.AssemblyLinearVelocity = vector
								child.CustomPhysicalProperties = PhysicalProperties.new(0.1, 0.1, 0.1)
							end
						end
					end
				end
			end
		end

		if primaryPart.AssemblyLinearVelocity.Magnitude > 250 or primaryPart.AssemblyAngularVelocity.Magnitude > 250 then
			primaryPart.AssemblyAngularVelocity = vector
			primaryPart.AssemblyLinearVelocity = vector

			if tbl6.LastPosition then
				primaryPart.CFrame = tbl6.LastPosition
			end
		elseif primaryPart.AssemblyLinearVelocity.Magnitude < 50 and primaryPart.AssemblyAngularVelocity.Magnitude < 50 then
			tbl6.LastPosition = primaryPart.CFrame + vector3(0, 1, 0)
		end
	end

	fn7()
end

heartbeat:Connect(tbl7.updateAntiFling)

tbl7.setupAntiAFK = function()
	if tbl9.Legacy.antiAFKLoop then
		tbl9.Legacy.antiAFKLoop:Disconnect()
		tbl9.Legacy.antiAFKLoop = nil
	end

	if not tbl6.Features.PostFarm.AntiAFKEnabled then
		return
	end
	local virtualUser = tbl4.VirtualUser

	tbl9.Legacy.antiAFKLoop = tbl6.Player.LocalPlayer.Idled:Connect(function()
		if virtualUser ~= nil and v4(virtualUser.CaptureController) == "function" then
			virtualUser:CaptureController()
		end

		virtualUser:ClickButton2(vector2(0, 0))
	end)
end

tbl7.throwKnife = function()
	task.spawn(function()
		if tbl7.getRole(tbl6.Player.LocalPlayer) ~= "Murderer" then
			return
		end

		if tbl7.isDead(tbl6.Player.LocalPlayer) then
			return
		end
		local character = tbl6.Player.LocalPlayer.Character
		local humanoidRootPart = character and character:FindFirstChild("HumanoidRootPart")
		if not humanoidRootPart then
			return
		end
		local huge = math.huge
		local v8 = nil

		for _, v9 in ipairs(tbl6.Players.Cache) do
			if v9 ~= tbl6.Player.LocalPlayer and not tbl7.isDead(v9) and tbl7.getRole(v9) ~= "Unknown" then
				local character2 = v9.Character
				character2 = character2 and character2:FindFirstChild("HumanoidRootPart")

				if character2 then
					local magnitude = (humanoidRootPart.Position - character2.Position).Magnitude

					if magnitude < huge then
						huge = magnitude
						v8 = v9
					end
				end
			end
		end

		if not v8 then
			return
		end
		local humanoidRootPart2 = v8.Character:FindFirstChild("HumanoidRootPart")
		if not humanoidRootPart2 then
			return
		end
		local knife = character:FindFirstChild("Knife") or tbl6.Player.LocalPlayer.Backpack:FindFirstChild("Knife")
		if not knife then
			return
		end

		if knife.Parent ~= character then
			knife.Parent = character
			task.wait(0.1)
		end

		local knife2 = character:FindFirstChild("Knife")
		if not knife2 then
			return
		end
		local handle = knife2:FindFirstChild("Handle")
		local knifeThrown = knife2:FindFirstChild("Events") and knife2.Events:FindFirstChild("KnifeThrown")
		if not knifeThrown or not handle then
			return
		end
		knifeThrown:FireServer(handle.CFrame, cframe(humanoidRootPart2.Position, humanoidRootPart.Position))
	end)
end

tbl7.killPlayer = function(arg)
	task.spawn(function()
		local character = tbl6.Player.LocalPlayer.Character
		if not character then
			return
		end
		local character2 = arg.Character
		character2 = character2 and character2:FindFirstChild("HumanoidRootPart")
		if not character2 then
			return
		end
		tbl6.Features.Combat.killingPlayer = arg.Name
		local knife = character:FindFirstChild("Knife") or tbl6.Player.LocalPlayer.Backpack:FindFirstChild("Knife")

		if knife and knife.Parent ~= character then
			knife.Parent = character
		end

		local knife2 = character:FindFirstChild("Knife")
		if not knife2 then
			tbl6.Features.Combat.killingPlayer = nil
			return
		end
		local handle = knife2:FindFirstChild("Handle")
		local events = knife2:FindFirstChild("Events")
		events = events and events:FindFirstChild("HandleTouched")

		if handle and events then
			local weld = handle:FindFirstChildWhichIsA("Weld") or handle:FindFirstChildWhichIsA("WeldConstraint")

			if weld then
				weld.Enabled = false
			end

			local parent = handle.Parent
			local cFrame = handle.CFrame
			handle.Parent = workspace
			handle.CFrame = character2.CFrame
			task.wait()
			events:FireServer(character2)
			task.wait()
			handle.CFrame = cFrame
			handle.Parent = parent

			if weld then
				weld.Enabled = true
			end

			tbl6.Features.Combat.killingPlayer = nil
			return
		end

		tbl6.Features.Combat.killingPlayer = nil
	end)
end

tbl7.killAll = function()
	task.spawn(function()
		local character = tbl6.Player.LocalPlayer.Character
		if not character then
			return
		end
		local knife = character:FindFirstChild("Knife") or tbl6.Player.LocalPlayer.Backpack:FindFirstChild("Knife")

		if knife and knife.Parent ~= character then
			knife.Parent = character
			task.wait(0.1)
		end

		local knife2 = character:FindFirstChild("Knife")
		if not knife2 then
			return
		end
		local handle = knife2:FindFirstChild("Handle")
		local events = knife2:FindFirstChild("Events")
		events = events and events:FindFirstChild("HandleTouched")
		if not handle or not events then
			return
		end
		local tbl15 = {}

		for _, v8 in ipairs(tbl6.Players.Cache) do
			if v8 ~= tbl6.Player.LocalPlayer and not tbl7.isDead(v8) and tbl7.getRole(v8) ~= "Unknown" then
				local character2 = v8.Character
				character2 = character2 and character2:FindFirstChild("HumanoidRootPart")

				if character2 then
					insert(tbl15, character2)
				end
			end
		end

		if #tbl15 == 0 then
			return
		end
		local weld = handle:FindFirstChildWhichIsA("Weld") or handle:FindFirstChildWhichIsA("WeldConstraint")

		if weld then
			weld.Enabled = false
		end

		local parent = handle.Parent
		local cFrame = handle.CFrame
		handle.Parent = workspace

		for _, v8 in ipairs(tbl15) do
			handle.CFrame = v8.CFrame

			if task ~= nil and v4(task.wait) == "function" then
				task.wait()
			end

			if events ~= nil and v4(events.FireServer) == "function" then
				events:FireServer(v8)
			end

			if task ~= nil and v4(task.wait) == "function" then
				task.wait()
			end
		end

		handle.CFrame = cFrame
		handle.Parent = parent

		if weld then
			weld.Enabled = true
		end
	end)
end

tbl7.killSheriff = function()
	for _, v8 in ipairs(tbl6.Players.Cache) do
		if v8 ~= tbl6.Player.LocalPlayer and not tbl7.isDead(v8) and (tbl7.getRole(v8) == "Sheriff" or tbl7.getRole(v8) == "Hero") then
			task.spawn(function()
				tbl7.killPlayer(v8)
			end)

			break
		end
	end
end

tbl7.updatePlayerDropdown = function()
	if not tbl6.UI.playerDropdown then
		return
	end
	local tbl15 = {}

	for _, v8 in ipairs(tbl6.Players.Cache) do
		if v8 ~= tbl6.Player.LocalPlayer then
			insert(tbl15, v8.Name)
		end
	end

	tbl6.UI.playerDropdown:SetValues(tbl15)
end

tbl7.updateRoundTimer = function()
	local roundTimerPart = tbl11.Static.WS.RoundTimerPart

	if not roundTimerPart then
		roundTimerPart = tbl4.Workspace:FindFirstChild("RoundTimerPart")

		if roundTimerPart then
			tbl11.Static.WS.RoundTimerPart = roundTimerPart
		end
	end

	if roundTimerPart then
		local attribute = roundTimerPart:GetAttribute("Time")

		if attribute and v4(attribute) == "number" then
			if attribute < 0 then
				attribute = 0
			end

			tbl6.UI.timerLabelGui.Text = tbl7.secondsToMinutes(attribute)
		else
			tbl6.UI.timerLabelGui.Text = "0:00"
		end
	else
		tbl6.UI.timerLabelGui.Text = "0:00"
	end
end

tbl7.cachePlayerList = function()
	fn6()
	tbl7.updateCachedRoles()

	task.defer(function()
		tbl7.updatePlayerDropdown()
		tbl7.updateFlingDropdown()
		tbl7.updateAimlockDropdown()
		tbl7.updateTeleportPlayerDropdown()
		tbl7.updateMurdererSilentAimDropdowns()
		tbl7.updateStatusLabels()
		tbl7.checkRoleNotify()
	end)
end

tbl7.onPlayerAdded = function(arg)
	tbl7.cachePlayerList()
	tbl7.updateTeleportPlayerDropdown()
	tbl7.updateMurdererSilentAimDropdowns()
	tbl7.createESP(arg)
end

tbl7.onPlayerRemoving = function(arg)
	tbl7.cachePlayerList()
	tbl7.updateTeleportPlayerDropdown()
	tbl7.updateMurdererSilentAimDropdowns()
	tbl7.removeESP(arg)
	tbl7.removeHighlight(arg)
	tbl6.Game.prevRoles[arg.Name] = nil

	if tbl6.Features.Movement.flingTarget == arg and tbl6.Features.Movement.isFlinging then
		tbl7.cleanupFling()
	end
end

tbl7.applyXray = function(arg)
	if not arg:IsA("BasePart") then
		return
	end

	if arg.LocalTransparencyModifier == 0.7 then
		return
	end
	local flag = false

	for _, v8 in ipairs(tbl6.Players.Cache) do
		if v8.Character and arg:IsDescendantOf(v8.Character) then
			flag = true
			break
		end
	end

	if not flag then
		arg.LocalTransparencyModifier = 0.7

		if not tbl6.Features.ESP.xrayParts then
			tbl6.Features.ESP.xrayParts = {}
		end

		insert(tbl6.Features.ESP.xrayParts, arg)
	end
end

tbl7.clearXray = function()
	if not tbl6.Features.ESP.xrayParts then
		return
	end

	for i_ = 1, #tbl6.Features.ESP.xrayParts do
		local v8 = tbl6.Features.ESP.xrayParts[i_]

		if v8 and v8.Parent then
			v8.LocalTransparencyModifier = 0
		end
	end

	tbl6.Features.ESP.xrayParts = {}
end

tbl7.enableXray = function()
	tbl6.Features.ESP.xrayParts = {}
	local v8 = tbl7.GetDescendantCache(tbl4.Workspace)

	for k_ in pairs(v8) do
		if k_:IsA("BasePart") then
			local flag = false

			for _, v9 in ipairs(tbl6.Players.Cache) do
				if v9.Character and k_:IsDescendantOf(v9.Character) then
					flag = true
					break
				end
			end

			if not flag then
				k_.LocalTransparencyModifier = 0.7
				insert(tbl6.Features.ESP.xrayParts, k_)
			end
		end
	end
end

tbl7.updateGunESP = function(...) end
tbl7.updateESP = function(...) end

tbl7.savePredictionConfig = function()
	task.spawn(function()
		local tbl15 = {
			PredictionEnabled = tbl6.Features.Combat.PredictionEnabled,
			PredictionMultiplier = tbl6.Features.Combat.PredictionMultiplier,
			PingCheck = tbl6.Features.Combat.PingCheck,
			HorizontalMultiplier = tbl6.Features.Combat.HorizontalMultiplier,
			VerticalMultiplier = tbl6.Features.Combat.VerticalMultiplier,
		}

		if not isfolder("LuWare/configs") then
			makefolder("LuWare/configs")
		end

		writefile("LuWare/configs/prediction.json", tbl4.HttpService:JSONEncode(tbl15))
	end)
end

tbl7.loadPredictionConfig = function(arg, arg2)
	if not isfile("LuWare/configs/prediction.json") then
		return
	end
	local flag = tbl2 ~= nil and tbl4 ~= nil and tbl4.HttpService ~= nil and v4(tbl4.HttpService.JSONDecode) == "function"
	local data = nil

	if flag then
		data = tbl4.HttpService:JSONDecode(readfile("LuWare/configs/prediction.json"))
	end

	if flag and data then
		if data.PredictionEnabled ~= nil then
			tbl6.Features.Combat.PredictionEnabled = data.PredictionEnabled
			arg:SetValue(data.PredictionEnabled)
		end

		if data.PredictionMultiplier then
			tbl6.Features.Combat.PredictionMultiplier = clamp(tonumber(data.PredictionMultiplier) or 1, 0, 3)
			arg2:SetValue(tbl6.Features.Combat.PredictionMultiplier)
		end

		if data.PingCheck ~= nil then
			tbl6.Features.Combat.PingCheck = data.PingCheck == true

			if tbl6.UI.Toggles.PingCheck then
				tbl6.UI.Toggles.PingCheck:SetValue(tbl6.Features.Combat.PingCheck)
			end
		end

		if data.HorizontalMultiplier then
			tbl6.Features.Combat.HorizontalMultiplier = clamp(tonumber(data.HorizontalMultiplier) or 1, 0, 3)

			if tbl6.UI.hmultSlider then
				tbl6.UI.hmultSlider:SetValue(tbl6.Features.Combat.HorizontalMultiplier)
			end
		end

		if data.VerticalMultiplier then
			tbl6.Features.Combat.VerticalMultiplier = clamp(tonumber(data.VerticalMultiplier) or 1, 0, 3)

			if tbl6.UI.vmultSlider then
				tbl6.UI.vmultSlider:SetValue(tbl6.Features.Combat.VerticalMultiplier)
			end
		end
	end
end

tbl7.cleanupFling = function()
	local isFlinging = tbl6.Features.Movement.isFlinging
	local trueOriginalPos = tbl6.trueOriginalPos or tbl6.Features.Movement.flingOldPos
	local flingVelConn = tbl6.Features.Movement.flingVelConn
	local flingConnection = tbl6.Features.Movement.flingConnection
	local flingStateConn = tbl6.Features.Movement.flingStateConn
	tbl6.Features.Movement.flingVelConn = nil
	tbl6.Features.Movement.flingConnection = nil
	tbl6.Features.Movement.flingStateConn = nil

	if flingVelConn then
		if flingVelConn ~= nil and v4(flingVelConn.Disconnect) == "function" then
			flingVelConn:Disconnect()
		end
	end

	if flingConnection then
		if flingConnection ~= nil and v4(flingConnection.Disconnect) == "function" then
			flingConnection:Disconnect()
		end
	end

	if flingStateConn then
		if flingStateConn ~= coroutine.running() then
			if task ~= nil and v4(task.cancel) == "function" then
				task.cancel(flingStateConn)
			end
		end
	end

	tbl6.Features.Movement.isFlinging = false
	tbl6.Features.Movement.flingTarget = nil
	tbl6.Features.Movement.flingAngle = 0
	tbl6.Features.Movement.flingVibStep = 0

	if tbl6.Features.Movement.flingFakePart then
		destroy(tbl6.Features.Movement.flingFakePart)
		tbl6.Features.Movement.flingFakePart = nil
	end

	if tbl6.Features.Movement.flingOriginalMaxHealth then
		local character = tbl6.Player.LocalPlayer.Character

		if character then
			local humanoid = character:FindFirstChildOfClass("Humanoid")

			if humanoid then
				humanoid.MaxHealth = tbl6.Features.Movement.flingOriginalMaxHealth

				if tbl6.Features.Movement.flingOriginalMaxHealth < humanoid.Health then
					humanoid.Health = tbl6.Features.Movement.flingOriginalMaxHealth
				end
			end
		end

		tbl6.Features.Movement.flingOriginalMaxHealth = nil
	end

	if tbl6.Features.Movement.flingOldCameraSubject then
		tbl6.Player.Camera.CameraSubject = tbl6.Features.Movement.flingOldCameraSubject
		tbl6.Features.Movement.flingOldCameraSubject = nil
	else
		local character = tbl6.Player.LocalPlayer.Character

		if character then
			local humanoid = character:FindFirstChildOfClass("Humanoid")

			if humanoid then
				tbl6.Player.Camera.CameraSubject = humanoid
			end
		end
	end

	local character = tbl6.Player.LocalPlayer.Character

	if character then
		local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
		local humanoid = character:FindFirstChildOfClass("Humanoid")

		if humanoidRootPart then
			humanoidRootPart.Anchored = true

			for k_ in pairs(tbl7.GetDescendantCache(character)) do
				if k_:IsA("BasePart") then
					k_.Velocity = vector
					k_.AssemblyLinearVelocity = vector
					k_.AssemblyAngularVelocity = vector
					k_.RotVelocity = vector
				end
			end

			for _, child in pairs(humanoidRootPart:GetChildren()) do
				if child:IsA("BodyVelocity") or child:IsA("BodyGyro") or child:IsA("LinearVelocity") or child:IsA("AngularVelocity") or child:IsA("AlignOrientation") or child:IsA("AlignPosition") then
					destroy(child)
				end
			end

			local flingStabilizer = humanoidRootPart:FindFirstChild("FlingStabilizer")

			if flingStabilizer then
				destroy(flingStabilizer)
			end
		end

		if humanoidRootPart and trueOriginalPos then
			task.spawn(function()
				local postFarmRestoreAfterFling = tbl6.Features.PostFarm.PostFarmRestoreAfterFling

				for i_ = 1, 10 do
					if humanoidRootPart.Parent then
						humanoidRootPart.CFrame = trueOriginalPos

						if character ~= nil and v4(character.SetPrimaryPartCFrame) == "function" then
							character:SetPrimaryPartCFrame(trueOriginalPos)
						end

						humanoidRootPart.Velocity = vector
						humanoidRootPart.AssemblyLinearVelocity = vector
						humanoidRootPart.AssemblyAngularVelocity = vector
						humanoidRootPart.RotVelocity = vector
						tbl4.RunService.Stepped:Wait()
						continue
					end

					break
				end

				if tbl6.Features.Movement.flingOriginalFallenHeight ~= nil then
					tbl4.Workspace.FallenPartsDestroyHeight = tbl6.Features.Movement.flingOriginalFallenHeight
					tbl6.Features.Movement.flingOriginalFallenHeight = nil
				end

				humanoidRootPart.Anchored = false

				for k_ in pairs(tbl7.GetDescendantCache(character)) do
					if k_:IsA("BasePart") then
						k_.AssemblyLinearVelocity = vector
						k_.AssemblyAngularVelocity = vector
					end
				end

				if humanoid then
					humanoid:ChangeState(Enum.HumanoidStateType.GettingUp)
				end

				if postFarmRestoreAfterFling then
					tbl6.Features.PostFarm.PostFarmRestoreAfterFling = nil
					humanoidRootPart.CFrame = postFarmRestoreAfterFling
					humanoidRootPart.Velocity = vector
					humanoidRootPart.AssemblyLinearVelocity = vector
					humanoidRootPart.AssemblyAngularVelocity = vector
					humanoidRootPart.RotVelocity = vector
				end
			end)
		elseif tbl6.Features.Movement.flingOriginalFallenHeight ~= nil then
			tbl4.Workspace.FallenPartsDestroyHeight = tbl6.Features.Movement.flingOriginalFallenHeight
			tbl6.Features.Movement.flingOriginalFallenHeight = nil
		end

		if humanoid then
			humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated, true)
			humanoid:SetStateEnabled(Enum.HumanoidStateType.FallingDown, true)

			if humanoid ~= nil and v4(humanoid.ChangeState) == "function" then
				humanoid:ChangeState(Enum.HumanoidStateType.GettingUp)
			end

			humanoid.PlatformStand = false
		end
	end

	tbl6.Features.Movement.flingOldPos = nil

	if isFlinging and tbl6.Features.Movement.isFlingingAll and tbl6.Features.Movement.flingQueue then
		local function fn7()
			tbl6.trueOriginalPos = nil
			tbl6.Features.Movement.flingQueue = {}
			tbl6.Features.Movement.flingQueueIndex = 1
			tbl6.Features.Movement.isFlingingAll = false

			if tbl6.UI.flingStatusLabel then
				tbl6.UI.flingStatusLabel:SetText("Fling Status: Idle")
			end
		end

		local fn8 = nil

		fn8 = function()
			while tbl6.Features.Movement.flingQueueIndex <= #tbl6.Features.Movement.flingQueue do
				local v8 = tbl6.Features.Movement.flingQueue[tbl6.Features.Movement.flingQueueIndex]
				local movement = tbl6.Features.Movement
				movement.flingQueueIndex = movement.flingQueueIndex + 1

				if v8 and v8.Parent and v8.Character and not tbl7.isDead(v8) then
					if tbl6.UI.flingStatusLabel then
						tbl6.UI.flingStatusLabel:SetText("Fling Status: Next target...")
					end

					task.delay(0.5, function()
						if not tbl7.startVibrationFling(v8) and not fn8() then
							fn7()
						end
					end)

					return true
				end
			end

			return false
		end

		if fn8() then
			return
		end
	end

	if isFlinging then
		tbl6.trueOriginalPos = nil
		tbl6.Features.Movement.flingQueue = {}
		tbl6.Features.Movement.flingQueueIndex = 1
		tbl6.Features.Movement.isFlingingAll = false
	end

	if tbl6.UI.flingStatusLabel then
		tbl6.UI.flingStatusLabel:SetText("Fling Status: Idle")
	end
end

tbl7.startVibrationFling = function(flingTarget)
	if not flingTarget or not flingTarget.Character then
		return false
	end
	local character = tbl6.Player.LocalPlayer.Character
	if not character then
		return false
	end
	local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
	local humanoid = character:FindFirstChildOfClass("Humanoid")
	if not humanoidRootPart or not humanoid then
		return false
	end
	local character2 = flingTarget.Character
	local humanoidRootPart2 = character2 and character2:FindFirstChild("HumanoidRootPart")
	local humanoid2 = character2 and character2:FindFirstChildOfClass("Humanoid")
	if not humanoidRootPart2 or not humanoid2 then
		return false
	end

	if not tbl6.trueOriginalPos then
		tbl6.trueOriginalPos = humanoidRootPart.CFrame
	end

	tbl7.cleanupFling()
	tbl6.Features.Movement.flingTarget = flingTarget
	tbl6.Features.Movement.isFlinging = true
	tbl6.Features.Movement.flingAngle = 0
	tbl6.Features.Movement.flingOldPos = humanoidRootPart.CFrame
	tbl6.Features.Movement.flingOriginalMaxHealth = nil
	tbl6.Features.Movement.flingOldCameraSubject = tbl6.Player.Camera.CameraSubject

	if tbl6.UI.flingStatusLabel then
		local flingStatusLabel = tbl6.UI.flingStatusLabel
		local setText = flingStatusLabel.SetText
		local str = ("Fling Status: Flinging %*"):format(flingTarget.Name)
		setText(flingStatusLabel, str)
	end

	tbl6.Features.Movement.flingHighVelCount = 0

	tbl6.Features.Movement.flingStateConn = task.spawn(function()
		local bodyVelocity = Instance.new("BodyVelocity")
		bodyVelocity.Name = "Lama ku memendam rasa di dada Mengagumi indahmu, wahai Jelita Tak dapat lagi kuucap kata Bisu, kudiam terpesona Dan andai suatu hari kau jadi milikku Tak akan kulepas dirimu, oh, Kasih Dan bila waktu mengizinkanku untuk menunggu dirimu Kurasa ku t'lah jatuh cinta Pada pandangan yang pertama Sulit bagiku untuk bisa Berhenti mengagumi dirinya Seiring dengan berjalannya waktu Akhirnya kita berdua bertemu Oh, diriku tersipu malu Melihat sikapmu yang lucu Andai suatu hari kau jadi milikku Tak akan kulepas dirimu, oh, Kasih Dan bila waktu mengizinkanku menunggu dirimu, yea-yea-yeah Kurasa ku t'lah jatuh cinta Pada pandangan yang pertama Sulit bagiku untuk bisa Berhenti mengagumi dirinya Oh, Tuhan, tolong diriku 'Tuk membuat dia menjadi milikku Sayangku, kasihku, oh, cintaku She's all that I need Dan bila kita bersama 'Kan kujaga dirimu untuk selamanya Tolong terima cintaku Yeah, yeah, yeah Yeah, summertime, ain't a summertime If I don't have you as mine, but you're always on my mind (always on my mind) In a magazine you showed up Baby girl, your beauty makes my mind blow up Your personality, it's calm and friendly The kinda girl that I would love to be with me Once I start, no, I won't fall back Here's my cellphone number, so please call back, uh (yeah, yeah, yeah, yeah, yeah) Kurasa ku t'lah jatuh cinta Pada pandangan yang pertama Sulit bagiku untuk bisa Berhenti mengagumi dirinya Oh, Tuhan, tolong diriku 'Tuk membuat dia menjadi milikku Sayangku, oh, kasihku, oh, cintaku She's all that I need"
		bodyVelocity.Parent = humanoidRootPart
		bodyVelocity.MaxForce = vector3(math.huge, math.huge, math.huge)
		local v8 = v7()

		if tbl6.Features.Movement.flingOriginalFallenHeight == nil then
			tbl6.Features.Movement.flingOriginalFallenHeight = tbl4.Workspace.FallenPartsDestroyHeight
			tbl4.Workspace.FallenPartsDestroyHeight = 0
		end

		humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated, false)
		local v9 = vector3(0, 99999, 0)

		local function fn7()
			local v10 = humanoidRootPart
			local v11 = cframe
			local position = humanoidRootPart2.Position
			local n = humanoid2.MoveDirection * min(3.7 + humanoidRootPart2.Velocity.Magnitude * 0.2, 8.5)
			v10.CFrame = v11(position + vector3(0, 0.6, 0) + n)
			bodyVelocity.Velocity = v9
			humanoidRootPart.Velocity = v9
			humanoidRootPart.RotVelocity = v9
		end

		while true do
			if tbl6.Features.Movement.isFlinging and tbl6.Features.Movement.flingTarget == flingTarget then
				if not (not character.Parent or not character2.Parent or not humanoidRootPart2.Parent or not humanoid2.Parent or not humanoidRootPart.Parent or not humanoid.Parent) then
					if not (humanoid.Health <= 0) then
						tbl6.Player.Camera.CameraSubject = flingTarget.Character

						if humanoidRootPart2.Velocity.Magnitude >= 50 then
							fn7()
							heartbeat:Wait()
							fn7()
							heartbeat:Wait()
							fn7()
							heartbeat:Wait()
							fn7()
							heartbeat:Wait()
							fn7()
							heartbeat:Wait()
							fn7()
						else
							fn7()
							heartbeat:Wait()
							fn7()
							heartbeat:Wait()
							fn7()
						end

						if v7() - v8 > 12 or not tbl6.Features.Movement.isFlinging or tbl6.Features.Movement.flingTarget ~= flingTarget or not flingTarget.Character or humanoidRootPart2.Velocity.Magnitude > 500 or humanoid2.Health <= 0 or humanoid2.Sit then
							if humanoidRootPart2.Velocity.Magnitude > 500 and tbl6.UI.flingStatusLabel then
								local flingStatusLabel = tbl6.UI.flingStatusLabel
								local setText = flingStatusLabel.SetText
								local str = ("Fling Status: Target Flung! (%*)"):format(floor(humanoidRootPart2.Velocity.Magnitude))
								setText(flingStatusLabel, str)
							end

							break
						else
							heartbeat:Wait()
							continue
						end
					end
				end
			end

			break
		end

		if bodyVelocity then
			bodyVelocity.Velocity = vector
		end

		if tbl6.Features.Movement.isFlinging and tbl6.Features.Movement.flingTarget == flingTarget then
			tbl7.cleanupFling()
		end
	end)

	return true
end

tbl7.flingMurderer = function()
	if tbl6.Features.Movement.isFlinging then
		tbl7.cleanupFling()
		return false
	end
	tbl7.updateCachedRoles()

	if tbl6.Game.currentMurderer and tbl6.Game.currentMurderer ~= tbl6.Player.LocalPlayer and not tbl7.isDead(tbl6.Game.currentMurderer) and tbl6.Game.currentMurderer.Character then
		tbl6.Features.Movement.flingQueue = {}
		tbl6.Features.Movement.flingQueueIndex = 1
		tbl6.Features.Movement.isFlingingAll = false
		tbl7.startVibrationFling(tbl6.Game.currentMurderer)
		return true
	end

	if tbl6.UI.flingStatusLabel then
		tbl6.UI.flingStatusLabel:SetText("Fling Status: No Murderer found")
	end

	return false
end

tbl7.flingSheriffHero = function()
	if tbl6.Features.Movement.isFlinging then
		tbl7.cleanupFling()
		return
	end
	tbl7.updateCachedRoles()
	local currentSheriff = tbl6.Game.currentSheriff or tbl6.Game.currentHero

	if currentSheriff and currentSheriff ~= tbl6.Player.LocalPlayer and not tbl7.isDead(currentSheriff) and currentSheriff.Character then
		tbl6.Features.Movement.flingQueue = {}
		tbl6.Features.Movement.flingQueueIndex = 1
		tbl6.Features.Movement.isFlingingAll = false
		tbl7.startVibrationFling(currentSheriff)
	elseif tbl6.UI.flingStatusLabel then
		tbl6.UI.flingStatusLabel:SetText("Fling Status: No Sheriff/Hero found")
	end
end

tbl7.flingEveryone = function()
	if tbl6.Features.Movement.isFlinging then
		tbl7.cleanupFling()
		return
	end
	local character = tbl6.Player.LocalPlayer.Character
	character = character and character:FindFirstChild("HumanoidRootPart")
	tbl6.Features.Movement.flingQueue = {}

	for _, v8 in ipairs(tbl6.Players.Cache) do
		if v8 ~= tbl6.Player.LocalPlayer and not tbl7.isDead(v8) and v8.Character then
			local humanoidRootPart = v8.Character:FindFirstChild("HumanoidRootPart")

			if humanoidRootPart and character then
				insert(tbl6.Features.Movement.flingQueue, { player = v8, distance = (character.Position - humanoidRootPart.Position).Magnitude })
			end
		end
	end

	if #tbl6.Features.Movement.flingQueue == 0 then
		if tbl6.UI.flingStatusLabel then
			tbl6.UI.flingStatusLabel:SetText("Fling Status: No targets found")
		end

		tbl6.Features.Movement.isFlingingAll = false
		return
	end

	table.sort(tbl6.Features.Movement.flingQueue, function(arg, arg2)
		return arg.distance < arg2.distance
	end)

	for i_, v8 in ipairs(tbl6.Features.Movement.flingQueue) do
		tbl6.Features.Movement.flingQueue[i_] = v8.player
	end

	tbl6.Features.Movement.flingQueueIndex = 1
	tbl6.Features.Movement.isFlingingAll = true
	tbl6.Features.Movement.flingSuccess = false
	local v8 = tbl6.Features.Movement.flingQueue[1]
	tbl6.Features.Movement.flingQueueIndex = 2
	tbl7.startVibrationFling(v8)
end

tbl7.flingSelected = function()
	if tbl6.Features.Movement.isFlinging then
		tbl7.cleanupFling()
		return
	end
	local value = tbl6.UI.flingDropdown.Value

	if v4(value) == "table" then
		value = value[1]
	end

	if v4(value) ~= "string" or value == "" then
		if tbl6.UI.flingStatusLabel then
			tbl6.UI.flingStatusLabel:SetText("Fling Status: No player selected")
		end

		return
	end

	local v8 = nil

	for _, v9 in ipairs(tbl6.Players.Cache) do
		if v9.Name == value then
			v8 = v9
			break
		else
			v8 = nil
		end
	end

	if v8 and v8 ~= tbl6.Player.LocalPlayer and v8.Character then
		tbl6.Features.Movement.flingQueue = {}
		tbl6.Features.Movement.flingQueueIndex = 1
		tbl6.Features.Movement.isFlingingAll = false
		tbl7.startVibrationFling(v8)
	elseif tbl6.UI.flingStatusLabel then
		tbl6.UI.flingStatusLabel:SetText("Fling Status: Invalid target")
	end
end

tbl7.updateFlingDropdown = function()
	if not tbl6.UI.flingDropdown then
		return
	end
	local tbl15 = {}

	for _, v8 in ipairs(tbl6.Players.Cache) do
		if v8 ~= tbl6.Player.LocalPlayer and v8.Character and v8.Character:FindFirstChild("HumanoidRootPart") then
			insert(tbl15, v8.Name)
		end
	end

	tbl6.UI.flingDropdown:SetValues(tbl15)
end

tbl7.updateAimlockDropdown = function()
	if not tbl6.UI.aimlockTargetDropdown then
		return
	end
	tbl6.UI.aimlockTargetDropdown:SetValues(tbl6.Players.Names)
end

tbl7.getAimlockTarget = function()
	local function fn7()
		if not tbl6.UI.aimlockTargetDropdown then
			return nil
		end
		local value = tbl6.UI.aimlockTargetDropdown.Value

		if v4(value) == "table" then
			value = value[1]
		end

		if v4(value) ~= "string" or value == "" then
			return nil
		end
		local v8 = nil

		for _, v9 in ipairs(tbl6.Players.Cache) do
			if v9.Name == value then
				v8 = v9
				break
			else
				v8 = nil
			end
		end

		if not v8 or v8 == tbl6.Player.LocalPlayer or tbl7.isDead(v8) then
			return nil
		end

		if not v8.Character or not tbl7.charPart(v8, "Head") then
			return nil
		end
		local aimlockTeam = tbl6.Features.Combat.AimlockTeam
		local team = v8.Team
		team = team and team.Name or ""
		local flag

		if v4(aimlockTeam) == "table" then
			flag = false

			for _, v9 in ipairs(aimlockTeam) do
				if v9 == "Everyone" or v9 == team then
					flag = true
					break
				end
			end
		else
			local flag2 = aimlockTeam == nil or aimlockTeam == "Everyone" or aimlockTeam == team
			flag = false

			if flag2 then
				flag = true
			end
		end

		if not flag then
			return nil
		end
		return v8
	end

	if tbl6.Features.Combat.AimlockSelected then
		return (fn7())
	end

	if tbl6.Features.Combat.AimlockMurderer and tbl6.Game.currentMurderer and not tbl7.isDead(tbl6.Game.currentMurderer) then
		return tbl6.Game.currentMurderer
	end

	if tbl6.Features.Combat.AimlockSheriff then
		if tbl6.Game.currentSheriff and not tbl7.isDead(tbl6.Game.currentSheriff) then
			return tbl6.Game.currentSheriff
		end

		if tbl6.Game.currentHero and not tbl7.isDead(tbl6.Game.currentHero) then
			return tbl6.Game.currentHero
		end
	end

	if tbl6.Features.Combat.AimlockNearest then
		local aimlockWallCheck = tbl6.Features.Combat.AimlockWallCheck
		local raycastParams = nil
		local position = nil

		if aimlockWallCheck then
			position = tbl6.Player.Camera.CFrame.Position
			raycastParams = RaycastParams.new()
			raycastParams.FilterType = Enum.RaycastFilterType.Exclude
			raycastParams.IgnoreWater = true
			local character = tbl6.Player.LocalPlayer.Character
			raycastParams.FilterDescendantsInstances = character and { character } or {}
		end

		local huge = math.huge
		local v8 = nil

		for _, v9 in ipairs(tbl6.Players.Cache) do
			if v9 ~= tbl6.Player.LocalPlayer then
				local aimlockTeam = tbl6.Features.Combat.AimlockTeam

				if v4(aimlockTeam) == "table" then
					local flag = false

					for _, v10 in ipairs(aimlockTeam) do
						if v10 == "Everyone" or v9.Team and v9.Team.Name == v10 then
							flag = true
							break
						end
					end

					if flag then
						local character = v9.Character
						local v10 = character and tbl7.charPart(v9, "HumanoidRootPart")
						local v11 = character and tbl7.charPart(v9, "Humanoid")

						if v10 and v10.Parent and v11 and v11.Health > 0 then
							local magnitude = (v10.Position - tbl6.Player.LocalPlayer.Character:GetPivot().Position).Magnitude
							local flag2 = true

							if aimlockWallCheck then
								local hit = tbl4.Workspace:Raycast(position, v10.Position - position, raycastParams)
								flag2 = not hit or character and hit.Instance:IsDescendantOf(character)
							end

							if flag2 and magnitude < huge then
								huge = magnitude
								v8 = v9
							end
						end
					end
				elseif aimlockTeam == nil or aimlockTeam == "Everyone" or v9.Team and v9.Team.Name == aimlockTeam then
					local character = v9.Character
					local v10 = character and tbl7.charPart(v9, "HumanoidRootPart")
					local v11 = character and tbl7.charPart(v9, "Humanoid")

					if v10 and v10.Parent and v11 and v11.Health > 0 then
						local magnitude = (v10.Position - tbl6.Player.LocalPlayer.Character:GetPivot().Position).Magnitude
						local flag = true

						if aimlockWallCheck then
							local hit = tbl4.Workspace:Raycast(position, v10.Position - position, raycastParams)
							flag = not hit or character and hit.Instance:IsDescendantOf(character)
						end

						if flag and magnitude < huge then
							huge = magnitude
							v8 = v9
						end
					end
				end
			end
		end

		return v8
	end

	return nil
end

tbl7.toggleAimlock = function(aimlockEnabled)
	tbl6.Features.Combat.AimlockEnabled = aimlockEnabled

	if aimlockEnabled then
		if tbl6.Features.Combat.aimlockRenderConn then
			return
		end

		tbl6.Features.Combat.aimlockRenderConn = renderStepped:Connect(function()
			if not tbl6.Features.Combat.AimlockEnabled then
				return
			end
			local currentCamera = tbl4.Workspace.CurrentCamera
			if not currentCamera then
				return
			end
			local v8 = tbl7.getAimlockTarget()
			if not v8 or not v8.Character or tbl7.isDead(v8) then
				return
			end
			local v9 = tbl7.charPart(v8, "Head")
			if not v9 then
				return
			end
			local aimlockHitChance = tbl6.Features.Combat.AimlockHitChance or 100
			local position = v9.Position

			if aimlockHitChance < 100 and random(1, 100) > aimlockHitChance then
				local v10 = clamp((position - currentCamera.CFrame.Position).Magnitude / 3, 3, 4)
				position += vector3(random() * 2 * v10 - v10, random() * v10 - v10 / 2, random() * 2 * v10 - v10)
			end

			local v10 = clamp((tbl6.Features.Combat.AimlockSmoothness or 1) / 50, 0.01, 1)
			currentCamera.CFrame = currentCamera.CFrame:Lerp(cframe(currentCamera.CFrame.Position, position), v10)
		end)
	elseif tbl6.Features.Combat.aimlockRenderConn then
		tbl6.Features.Combat.aimlockRenderConn:Disconnect()
		tbl6.Features.Combat.aimlockRenderConn = nil
	end
end

tbl7.doAimlock = function()
	local v8 = tbl7.getAimlockTarget()
	if not v8 or not v8.Character or tbl7.isDead(v8) then
		return
	end
	local v9 = tbl7.charPart(v8, "Head")
	if not v9 then
		return
	end
	local currentCamera = tbl4.Workspace.CurrentCamera
	if not currentCamera then
		return
	end
	local v10 = clamp((tbl6.Features.Combat.AimlockSmoothness or 1) / 50, 0.01, 1)
	currentCamera.CFrame = currentCamera.CFrame:Lerp(cframe(currentCamera.CFrame.Position, v9.Position), v10)
end

tbl7.toggleTouchFling = function(touchFlingEnabled)
	tbl6.Features.Movement.TouchFlingEnabled = touchFlingEnabled

	if touchFlingEnabled then
		tbl6.Features.Movement.touchFlingThread = task.spawn(function()
			local localPlayer = tbl4.Players.LocalPlayer
			local n = 0.1

			while tbl6.Features.Movement.TouchFlingEnabled do
				heartbeat:Wait()
				local character = localPlayer.Character and tbl7.charPart(localPlayer, "HumanoidRootPart")

				if character then
					local velocity = character.Velocity
					character.Velocity = velocity * 10000 + vector3(0, 10000, 0)
					renderStepped:Wait()
					character.Velocity = velocity
					tbl4.RunService.Stepped:Wait()
					character.Velocity = velocity + vector3(0, n, 0)
					n = -n
				end
			end
		end)

		if tbl6.UI.touchFlingStatusLabel then
			tbl6.UI.touchFlingStatusLabel:SetText("Touch Fling: ON")
		end
	else
		tbl6.Features.Movement.TouchFlingEnabled = false
		tbl6.Features.Movement.touchFlingThread = nil

		if tbl6.UI.touchFlingStatusLabel then
			tbl6.UI.touchFlingStatusLabel:SetText("Touch Fling: OFF")
		end
	end
end

tbl7.teleportToLobby = function()
	task.spawn(function()
		local humanoidRootPart = tbl6.Player.LocalPlayer.Character and tbl6.Player.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
		if not humanoidRootPart then
			return
		end
		local regularLobby = tbl4.Workspace:FindFirstChild("RegularLobby") or tbl4.Workspace:FindFirstChild("Lobby") or tbl4.Workspace:FindFirstChild("SummerLobby")
		if not regularLobby then
			tbl6.UI.lib:Notify({ Title = "Teleport", Description = "Lobby not found!", Time = 3 })
			return
		end
		local spawns = regularLobby:FindFirstChild("Spawns")
		if not spawns then
			tbl6.UI.lib:Notify({ Title = "Teleport", Description = "Lobby spawns not found!", Time = 3 })
			return
		end
		local v8 = nil

		for _, child in ipairs(spawns:GetChildren()) do
			if child:IsA("BasePart") then
				v8 = child
				break
			else
				v8 = nil
			end
		end

		if not v8 then
			tbl6.UI.lib:Notify({ Title = "Teleport", Description = "No valid lobby spawn found!", Time = 3 })
			return
		end
		humanoidRootPart.CFrame = v8.CFrame + vector3(0, 3, 0)
		tbl6.UI.lib:Notify({ Title = "Teleport", Description = "Teleported to Lobby", Time = 3 })
	end)
end

tbl7.teleportToMap = function()
	task.spawn(function()
		local humanoidRootPart = tbl6.Player.LocalPlayer.Character and tbl6.Player.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
		if not humanoidRootPart then
			return
		end
		local v8 = nil

		for _, child in ipairs(tbl4.Workspace:GetChildren()) do
			if child:GetAttribute("MapID") ~= nil then
				v8 = child
				break
			else
				v8 = nil
			end
		end

		if not v8 then
			return
		end
		local spawns = v8:FindFirstChild("Spawns")
		if not spawns then
			return
		end
		local v9 = nil

		for _, child in ipairs(spawns:GetChildren()) do
			if child:IsA("BasePart") then
				v9 = child
				break
			else
				v9 = nil
			end
		end

		if not v9 then
			return
		end
		humanoidRootPart.CFrame = v9.CFrame + vector3(0, 3, 0)
	end)
end

tbl7.teleportToPlayer = function(arg)
	task.spawn(function()
		local v8 = arg

		if v4(arg) == "string" then
			v8 = nil

			for _, v9 in ipairs(tbl6.Players.Cache) do
				if v9.Name == arg then
					v8 = v9
					break
				else
					v8 = nil
				end
			end
		end

		if v5(v8) ~= "Instance" or not v8:IsA("Player") then
			return
		end
		local humanoidRootPart = v8.Character and v8.Character:FindFirstChild("HumanoidRootPart")
		if not humanoidRootPart then
			return
		end
		local humanoidRootPart2 = tbl6.Player.LocalPlayer.Character and tbl6.Player.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
		if not humanoidRootPart2 then
			return
		end
		humanoidRootPart2.CFrame = humanoidRootPart.CFrame + vector3(0, 3, 0)
	end)
end

tbl7.teleportAboveMap = function()
	local v8 = nil

	for _, child in ipairs(workspace:GetChildren()) do
		if child:GetAttribute("MapID") ~= nil then
			v8 = child
			break
		else
			v8 = nil
		end
	end

	if not v8 then
		return
	end
	local basePart = v8.Spawns:FindFirstChildWhichIsA("BasePart")
	if not basePart then
		return
	end
	local v9 = cframe(basePart.CFrame.X, basePart.CFrame.Y, basePart.CFrame.Z)

	if v9 ~= nil then
		local position = (v9 * cframe(0, 999, 0)).Position
		local huge = math.huge
		local v10 = nil

		for k_ in pairs(tbl7.GetDescendantCache(v8)) do
			if k_.Parent and k_:IsA("BasePart") and k_.Transparency ~= 1 then
				local magnitude = (position - k_.Position).Magnitude

				if magnitude < huge then
					huge = magnitude
					v10 = k_
				end
			end
		end

		if v10 then
			local v11 = cframe(v9.X, v10.Position.Y + 7, v9.Z)
			local character = v.Players.LocalPlayer.Character

			if character and character:FindFirstChild("HumanoidRootPart") then
				character.HumanoidRootPart.CFrame = v11
			end
		end
	end
end

tbl7.teleportToVoid = function()
	local character = v.Players.LocalPlayer.Character
	if not character or not character:FindFirstChild("HumanoidRootPart") then
		return
	end
	character.HumanoidRootPart.CFrame = cframe(99999, 99999, 99999)

	if not character:FindFirstChild("Safe Void Path") then
		local part = Instance.new("Part")
		part.Name = "Safe Void Path"
		part.Parent = character
		part.Anchored = true
		part.Size = vector3(300, 0.1, 300)
		part.Transparency = 0.5
		part.CanCollide = true
		part.CFrame = cframe(99999, 99995, 99999)
	end
end

tbl7.updateTeleportPlayerDropdown = function()
	if not tbl6.UI.tpPlayerDropdown then
		return
	end
	tbl6.UI.tpPlayerDropdown:SetValues(tbl6.Players.Names)
end

tbl7.refreshSpectateCamera = function()
	if not tbl6.Features.Movement.spectateTarget then
		return
	end

	if not tbl6.Player.Camera or not tbl6.Player.Camera.Parent then
		tbl6.Player.Camera = tbl4.Workspace.CurrentCamera
	end

	local spectateTarget = tbl6.Features.Movement.spectateTarget
	spectateTarget = spectateTarget and spectateTarget.Character
	spectateTarget = spectateTarget and spectateTarget:FindFirstChildOfClass("Humanoid")

	if spectateTarget and tbl6.Player.Camera then
		tbl6.Player.Camera.CameraSubject = spectateTarget
	end
end

tbl7.disconnectSpectateEvents = function()
	if tbl6.Features.Movement.spectateCameraConn then
		tbl6.Features.Movement.spectateCameraConn:Disconnect()
		tbl6.Features.Movement.spectateCameraConn = nil
	end

	if tbl6.Features.Movement.spectateTargetCharacterConn then
		tbl6.Features.Movement.spectateTargetCharacterConn:Disconnect()
		tbl6.Features.Movement.spectateTargetCharacterConn = nil
	end
end

tbl7.stopSpectate = function()
	tbl7.disconnectSpectateEvents()

	if not tbl6.Player.Camera then
		tbl6.Player.Camera = tbl4.Workspace.CurrentCamera
	end

	if tbl6.Player.Camera and tbl6.Player.LocalPlayer and tbl6.Player.LocalPlayer.Character then
		local humanoid = tbl6.Player.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")

		if humanoid then
			tbl6.Player.Camera.CameraSubject = humanoid
		end
	end

	tbl6.Features.Movement.spectateTarget = nil
end

tbl7.connectSpectateEvents = function(arg)
	tbl7.disconnectSpectateEvents()

	tbl6.Features.Movement.spectateCameraConn = tbl4.Workspace:GetPropertyChangedSignal("CurrentCamera"):Connect(function()
		tbl6.Player.Camera = tbl4.Workspace.CurrentCamera
		tbl7.refreshSpectateCamera()
	end)

	if arg and arg:IsA("Player") then
		tbl6.Features.Movement.spectateTargetCharacterConn = arg.CharacterAdded:Connect(function()
			task.wait(0.1)
			tbl7.refreshSpectateCamera()
		end)
	end
end

tbl7.startSpectate = function(spectateTarget)
	if v4(spectateTarget) == "string" then
		local v8 = nil
		local exitTo = nil

		for _, v9 in ipairs(tbl6.Players.Cache) do
			if v9.Name == spectateTarget then
				exitTo = 1
				break
			else
				v8 = nil
			end
		end

		if exitTo == 1 then
			spectateTarget = s4
		else
			spectateTarget = v8
		end
	end

	if not spectateTarget or not spectateTarget:IsA("Player") then
		return false
	end
	local character = spectateTarget.Character
	character = character and character:FindFirstChildOfClass("Humanoid")
	if not character then
		return false
	end

	if not tbl6.Player.Camera then
		tbl6.Player.Camera = tbl4.Workspace.CurrentCamera
	end

	if tbl6.Player.Camera then
		tbl6.Player.Camera.CameraSubject = character
	end

	tbl6.Features.Movement.spectateTarget = spectateTarget
	tbl7.connectSpectateEvents(spectateTarget)
	return true
end

tbl7.spectatePlayer = function(arg)
	local v8

	if v4(arg) ~= "string" then
		v8 = arg
	else
		v8 = nil

		for _, v9 in ipairs(tbl6.Players.Cache) do
			if v9.Name == arg then
				v8 = v9
				break
			else
				v8 = nil
			end
		end
	end

	if tbl6.Features.Movement.spectateTarget == v8 then
		tbl7.stopSpectate()
		return
	end
	tbl7.startSpectate(arg)
end

do
	local userInputService = tbl4.UserInputService
	local vector22 = Vector2.zero
	local localPlayer = v.Players.LocalPlayer
	tbl5.aX = tbl4.TweenService
	tbl5.aY = userInputService
	tbl5.aZ = vector22
	tbl5.a_ = localPlayer
end

do
	local playerGui = tbl5.a_:WaitForChild("PlayerGui")
	local screenGui = Instance.new("ScreenGui")
	tbl5.a0 = playerGui
	tbl5.a1 = screenGui
end

tbl5.a1.Name = tbl5.uiN.root
tbl5.a1.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
tbl5.a1.ResetOnSpawn = false
tbl5.a1.DisplayOrder = 5
tbl5.a1.ScreenInsets = Enum.ScreenInsets.None
tbl5.a1.SafeAreaCompatibility = Enum.SafeAreaCompatibility.None
tbl5.a1.IgnoreGuiInset = true
tbl5.a1.Parent = tbl7.getGuiParent()
tbl7.protectGui(tbl5.a1)
v6(fn3, "g", tbl5.a1)
tbl5.a2 = Instance.new("Frame", tbl5.a1)
tbl5.a2.Name = tbl5.uiN.pill
v6(fn3, "p", tbl5.a2)
tbl5.a2.AnchorPoint = Vector2.new(0.5, 0.5)
tbl5.a2.BackgroundColor3 = color(0, 0, 0)
tbl5.a2.BorderSizePixel = 0
tbl5.a2.ClipsDescendants = true
tbl5.a2.Active = true
tbl5.a2.Position = udim22(0.5, 0, 0.5, 0)
tbl5.a2.Size = udim22(0, 360, 0, 92)
Instance.new("UICorner", tbl5.a2).CornerRadius = udim(1, 0)
tbl5.a3 = Instance.new("ImageLabel", tbl5.a2)
tbl5.a3.Name = "Icon"
tbl5.a3.AnchorPoint = Vector2.new(0, 0.5)
tbl5.a3.BackgroundTransparency = 1
tbl5.a3.BorderSizePixel = 0
tbl5.a3.Position = udim22(0, 8, 0.5, 0)
tbl5.a3.Size = udim22(0, 32, 0, 32)
tbl5.a3.ZIndex = 2
tbl5.a3.Image = "rbxassetid://95587351117044"
tbl5.a3.ImageColor3 = color(200, 200, 200)
tbl5.a3.Active = true
tbl5.a3.ScaleType = Enum.ScaleType.Fit
Instance.new("UICorner", tbl5.a3).CornerRadius = udim(1, 0)
local height = Enum.DominantAxis.Height
Instance.new("UIAspectRatioConstraint", tbl5.a3).DominantAxis = height
tbl5.a4 = Instance.new("UIAspectRatioConstraint", tbl5.a2)
tbl5.a4.AspectRatio = 5.909
Instance.new("UIScale", tbl5.a2)
tbl5.a5 = Instance.new("UIStroke", tbl5.a2)
tbl5.a5.Color = color(110, 80, 255)
tbl5.a5.Transparency = 0.1
tbl5.a5.Thickness = 1.5
tbl5.a5.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
tbl7._animateStroke(tbl5.a5)
tbl5.a6 = Instance.new("UIGradient", tbl5.a2)

do
	local a6 = tbl5.a6
	local colorSequence = ColorSequence.new
	local tbl15 = {}
	local v8 = ColorSequenceKeypoint.new(0, tbl3.Theme.Dark)
	local v9 = ColorSequenceKeypoint.new(0.5, tbl3.Theme.Accent)
	local new = ColorSequenceKeypoint.new
	local dark = tbl3.Theme.Dark
	tbl15[1] = v8
	tbl15[2] = v9

	do
		local values = table.pack(new(1, dark))
		table.move(values, 1, values.n, 3, tbl15)
	end

	a6.Color = colorSequence(tbl15)
end

insert(tbl5.N, {
	tbl5.a6,
	function(arg)
		local colorSequence = ColorSequence.new
		local tbl15 = {}
		local v8 = ColorSequenceKeypoint.new(0, tbl3.Theme.Dark)
		local v9 = ColorSequenceKeypoint.new(0.5, tbl3.Theme.Accent)
		local new = ColorSequenceKeypoint.new
		local dark = tbl3.Theme.Dark
		tbl15[1] = v8
		tbl15[2] = v9

		do
			local values = table.pack(new(1, dark))
			table.move(values, 1, values.n, 3, tbl15)
		end

		arg.Color = colorSequence(tbl15)
	end,
})

tbl5.a7 = Instance.new("CanvasGroup", tbl5.a2)
tbl5.a7.Name = "LoadingState"
tbl5.a7.Size = udim22(1, -28, 1, -16)
tbl5.a7.Position = udim22(0, 14, 0, 8)
tbl5.a7.BackgroundTransparency = 1
tbl5.a7.BorderSizePixel = 0
tbl5.a7.ZIndex = 5
tbl5.a8 = Instance.new("Frame", tbl5.a7)
tbl5.a8.Name = "StatusDot"
tbl5.a8.AnchorPoint = Vector2.new(0, 0.5)
tbl5.a8.Position = udim22(0, 4, 0.5, 1)
tbl5.a8.Size = udim22(0, 8, 0, 8)
tbl5.a8.BackgroundColor3 = tbl3.Theme.AccentBright
tbl5.a8.BorderSizePixel = 0
tbl5.a8.ZIndex = 6
Instance.new("UICorner", tbl5.a8).CornerRadius = udim(1, 0)
tbl5.a8.Visible = false
tbl5.a9 = Instance.new("TextLabel", tbl5.a7)
tbl5.a9.Name = "StatusText"
tbl5.a9.AnchorPoint = Vector2.new(0.5, 0.5)
tbl5.a9.Position = udim22(0.5, 0, 0.46, 0)
tbl5.a9.Size = udim22(1, -20, 0, 30)
tbl5.a9.BackgroundTransparency = 1
tbl5.a9.Text = "Preparing LuWare"
tbl5.a9.TextColor3 = color(175, 175, 205)
tbl5.a9.TextSize = 22
tbl5.a9.Font = Enum.Font.Jura
tbl5.a9.TextXAlignment = Enum.TextXAlignment.Center
tbl5.a9.ZIndex = 6
tbl5.ba = Instance.new("Frame", tbl5.a7)
tbl5.ba.Name = "ProgressTrack"
tbl5.ba.AnchorPoint = Vector2.new(1, 0.5)
tbl5.ba.Position = udim22(1, -4, 0.5, 5)
tbl5.ba.Size = udim22(0, 112, 0, 3)
tbl5.ba.BackgroundColor3 = tbl3.Theme.Dark
tbl5.ba.BackgroundTransparency = 0.15
tbl5.ba.BorderSizePixel = 0
tbl5.ba.ZIndex = 6
Instance.new("UICorner", tbl5.ba).CornerRadius = udim(1, 0)
tbl5.ba.Visible = false
tbl5.bb = Instance.new("Frame", tbl5.ba)
tbl5.bb.Name = "ProgressFill"
tbl5.bb.Size = udim22(0.28, 0, 1, 0)
tbl5.bb.BackgroundColor3 = tbl3.Theme.AccentBright
tbl5.bb.BorderSizePixel = 0
tbl5.bb.ZIndex = 7
Instance.new("UICorner", tbl5.bb).CornerRadius = udim(1, 0)
tbl5.bc = Instance.new("TextLabel", tbl5.a7)
tbl5.bc.Name = "Watermark"
tbl5.bc.AnchorPoint = Vector2.new(0.5, 1)
tbl5.bc.Position = udim22(0.5, 0, 1, -1)
tbl5.bc.Size = udim22(1, 0, 0, 14)
tbl5.bc.BackgroundTransparency = 1
tbl5.bc.Text = "Made by @l.u.a.u"
tbl5.bc.TextColor3 = color(145, 145, 175)
tbl5.bc.TextTransparency = 0.2
tbl5.bc.TextSize = 12
tbl5.bc.Font = Enum.Font.Montserrat
tbl5.bc.TextXAlignment = Enum.TextXAlignment.Center
tbl5.bc.ZIndex = 6

task.spawn(function()
	local flag = true

	while tbl5.a7 and tbl5.a7.Parent do
		flag = not flag
		tbl5.aX:Create(tbl5.a9, TweenInfo.new(0.8, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), { TextTransparency = flag and 0 or 0.3 }):Play()
		task.wait(0.8)
	end
end)

tbl5.bd = Instance.new("ScrollingFrame", tbl5.a2)
tbl5.bd.Name = tbl5.uiN.scroll
tbl5.bd.Active = true
tbl5.bd.AnchorPoint = Vector2.new(0, 0.5)
tbl5.bd.BackgroundTransparency = 1
tbl5.bd.BorderSizePixel = 0
tbl5.bd.ClipsDescendants = true
tbl5.bd.Position = udim22(0, 55, 0.5, 0)
tbl5.bd.Size = udim22(1, -68, 0.74, 0)
tbl5.bd.ScrollBarThickness = 0
tbl5.bd.ScrollingEnabled = true
tbl5.bd.ScrollingDirection = Enum.ScrollingDirection.X
tbl5.bd.CanvasSize = udim22(0, 0, 0, 0)
tbl5.bd.AutomaticCanvasSize = Enum.AutomaticSize.None
tbl5.be = Instance.new("UIListLayout", tbl5.bd)
tbl5.be.FillDirection = Enum.FillDirection.Horizontal
tbl5.be.VerticalAlignment = Enum.VerticalAlignment.Center
tbl5.be.Padding = udim(0, 5)
tbl5.bf = Instance.new("UIPadding", tbl5.bd)
tbl5.bf.PaddingLeft = udim(0, 4)
tbl5.bf.PaddingRight = udim(0, 4)

tbl5.be:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
	tbl5.bd.CanvasSize = udim22(0, tbl5.be.AbsoluteContentSize.X + 8, 0, 0)
end)

tbl5.bg = Instance.new("Frame", tbl5.a2)
tbl5.bg.Name = "Divider"
tbl5.bg.AnchorPoint = Vector2.new(0, 0.5)
tbl5.bg.BackgroundColor3 = color(255, 255, 255)
tbl5.bg.BackgroundTransparency = 0.8
tbl5.bg.BorderSizePixel = 0
tbl5.bg.Position = udim22(0, 48, 0.5, 0)
tbl5.bg.Size = udim22(0, 1, 0.6, 0)
tbl5.bd.Visible = false
tbl5.a3.Visible = false
tbl5.bg.Visible = false
tbl5.a2.BackgroundTransparency = 1
tbl5.a5.Transparency = 1
tbl5.a6.Enabled = false
tbl5.a4.AspectRatio = 3.9130434782608696

do
	local vector22 = Vector2.zero
	local vector23 = Vector2.zero
	tbl5.bh = false
	tbl5.bi = false
	tbl5.bj = nil
	tbl5.bk = false
	tbl5.bl = nil
	tbl5.bm = vector22
	tbl5.bn = vector23
end

tbl5.bQ = nil
tbl5.bR = nil

do
	local function fn7(bk)
		if tbl5.bk == bk and not tbl5.bl then
			return
		end
		tbl5.bk = bk

		if tbl5.bl then
			for _, v8 in ipairs(tbl5.bl) do
				if v8 ~= nil and v4(v8.Cancel) == "function" then
					v8:Cancel()
				end
			end

			tbl5.bl = nil
		end

		local manager = tbl5.bK and tbl5.bK._manager

		if manager and manager._pill then
			if bk then
				manager._pill.Visible = false
			elseif manager._pillTarget then
				task.delay(0.45, function()
					if not tbl5.bk and manager._pillTarget then
						if manager ~= nil and v4(manager._morphPill) == "function" then
							manager:_morphPill(manager._pillTarget)
						end
					end
				end)
			end
		end

		if bk then
			if not tbl5.bQ then
				tbl5.bQ = tbl5.a2.Position
				tbl5.bR = tbl5.a2.Size
			end

			tbl5.a6.Enabled = false
			tbl5.bd.Visible = false
			tbl5.bg.Visible = false
			tbl5.a3.Visible = false
			local tweenInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint, Enum.EasingDirection.Out)

			local v8, v9, v10, v11 = v6(function()
				local ax = tbl5.aX
				local ax2 = tbl5.aX
				return tbl5.aX:Create(tbl5.a5, tweenInfo, { Transparency = 0.5 }), ax:Create(tbl5.a2, tweenInfo, { Position = udim22(0.5, 0, 0, 30), Size = udim2(150, 6), BackgroundTransparency = 0.45 }), ax2:Create(tbl5.a4, tweenInfo, { AspectRatio = 25 })
			end)

			local flag = not v8

			if not flag then
				flag = not (v9 and v10 and v11)
			end

			if flag then
				tbl5.a3.ImageTransparency = 1
				tbl5.bg.BackgroundTransparency = 1
				tbl5.a5.Transparency = 0.5
				tbl5.a2.Position = udim22(0.5, 0, 0, 30)
				tbl5.a2.Size = udim2(150, 6)
				tbl5.a2.BackgroundTransparency = 0.45
				tbl5.a4.AspectRatio = 25
				tbl5.bd.Visible = false
				tbl5.bg.Visible = false
				tbl5.a3.Visible = false
				tbl5.bl = nil
				return
			end

			local bl = { v9, v10, v11 }
			tbl5.bl = bl
			v9:Play()
			v10:Play()
			v11:Play()

			v10.Completed:Connect(function(playbackState)
				if playbackState ~= Enum.PlaybackState.Completed then
					return
				end

				if not tbl5.bk or tbl5.bl ~= bl then
					return
				end
				local flag2 = true

				for _, v12 in ipairs(bl) do
					if v12.PlaybackState == Enum.PlaybackState.Playing then
						flag2 = false
						break
					end
				end

				if flag2 then
					tbl5.bl = nil
				end
			end)
		else
			local bq = tbl5.bQ or udim22(0.482731551, 0, 0.098842591, 0)
			local br = tbl5.bR or udim22(0, 400, 0, 50)
			tbl5.bd.Visible = false
			tbl5.bg.Visible = false
			tbl5.a3.Visible = false
			local tweenInfo = TweenInfo.new(0.22, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
			local tweenInfo2 = TweenInfo.new(0.45, Enum.EasingStyle.Quart, Enum.EasingDirection.Out)

			local v8, v9, v10, v11 = v6(function()
				local ax = tbl5.aX
				return tbl5.aX:Create(tbl5.a2, tweenInfo2, { Position = bq, Size = br, BackgroundTransparency = 0 }), tbl5.aX:Create(tbl5.a5, tweenInfo2, { Transparency = 0.1 }), ax:Create(tbl5.a4, tweenInfo2, { AspectRatio = 5.909 })
			end)

			local flag = not v8

			if not flag then
				flag = not (v9 and v10 and v11)
			end

			if flag then
				tbl5.a2.Position = bq
				tbl5.a2.Size = br
				tbl5.a2.BackgroundTransparency = 0
				tbl5.a5.Transparency = 0.1
				tbl5.a4.AspectRatio = 5.909
				tbl5.a6.Enabled = true
				tbl5.a3.Visible = true
				tbl5.bg.Visible = true
				tbl5.bd.Visible = true
				tbl5.a3.ImageTransparency = 0
				tbl5.bg.BackgroundTransparency = 0.8
				tbl5.bl = nil
				return
			end

			local bl = { v9, v10, v11 }
			tbl5.bl = bl
			v9:Play()
			v10:Play()
			v11:Play()

			v9.Completed:Connect(function(playbackState)
				if playbackState ~= Enum.PlaybackState.Completed then
					return
				end

				if tbl5.bk or tbl5.bl ~= bl then
					return
				end
				tbl5.a6.Enabled = true
				tbl5.a3.Visible = true
				tbl5.bg.Visible = true
				tbl5.bd.Visible = true
				tbl5.a3.ImageTransparency = 1
				tbl5.bg.BackgroundTransparency = 1
				local tween = tbl5.aX:Create(tbl5.a3, tweenInfo, { ImageTransparency = 0 })
				local tween2 = tbl5.aX:Create(tbl5.bg, tweenInfo, { BackgroundTransparency = 0.8 })
				tween:Play()
				tween2:Play()

				tween2.Completed:Connect(function(playbackState2)
					if playbackState2 ~= Enum.PlaybackState.Completed then
						return
					end

					if not tbl5.bk and tbl5.bl == bl then
						tbl5.bl = nil
					end
				end)

				local uiScale = tbl5.a2:FindFirstChildOfClass("UIScale")

				if uiScale then
					uiScale.Scale = 0.96
					tbl5.aX:Create(uiScale, tweenInfo, { Scale = 1 }):Play()
				end
			end)
		end
	end

	local function fn8(arg)
		if arg.UserInputType == Enum.UserInputType.Touch then
			local az = tbl5.aZ
			return vector2(arg.Position.X, arg.Position.Y) - az
		end
		local ay = tbl5.aY
		local az = tbl5.aZ
		return ay:GetMouseLocation() - az
	end

	tbl5.a2.InputBegan:Connect(function(input)
		if input.UserInputType ~= Enum.UserInputType.MouseButton1 and input.UserInputType ~= Enum.UserInputType.Touch then
			return
		end

		if tbl5.a7 and tbl5.a7.Visible then
			return
		end

		if not tbl5.bk then
			return
		end

		if v7() - (tbl5._pillToggleT or 0) < 0.3 then
			return
		end

		if tbl5.a3.Visible then
			local n = vector2(input.Position.X, input.Position.Y) - tbl5.aZ
			local absolutePosition = tbl5.a3.AbsolutePosition
			local absoluteSize = tbl5.a3.AbsoluteSize
			if n.X >= absolutePosition.X and n.X <= absolutePosition.X + absoluteSize.X and n.Y >= absolutePosition.Y and n.Y <= absolutePosition.Y + absoluteSize.Y then
				return
			end
		end

		fn7(false)
	end)

	tbl5.a3.InputBegan:Connect(function(input)
		if input.UserInputType ~= Enum.UserInputType.MouseButton1 and input.UserInputType ~= Enum.UserInputType.Touch then
			return
		end

		if tbl5.a7 and tbl5.a7.Visible then
			return
		end
		local v8 = v7()
		local v9 = fn8(input)
		local pillToggle = tbl5._pillToggle
		if pillToggle and v8 - pillToggle.t < 0.35 and (v9 - pillToggle.p).Magnitude < 20 then
			return
		end
		tbl5._pillToggle = { t = v8, p = v9 }
		tbl5._pillToggleT = v8
		fn7(not tbl5.bk)
	end)
end

insert(tbl5.G, tbl5.a2)
insert(tbl5.G, _tc)
tbl5.bo = Instance.new("TextButton", tbl5.a1)
tbl5.bo.Name = "CloseOverlay"
tbl5.bo.BackgroundTransparency = 1
tbl5.bo.Size = udim22(1, 0, 1, 0)
tbl5.bo.Visible = false
tbl5.bo.ZIndex = 99
tbl5.bo.Text = ""
tbl5.bp = Instance.new("Frame", tbl5.a1)
tbl5.bp.Name = tbl5.uiN.tabContent
tbl5.bp.AnchorPoint = Vector2.new(0.5, 0.5)
tbl5.bp.BackgroundColor3 = color(0, 0, 0)
tbl5.bp.BackgroundTransparency = 0.3
tbl5.bp.BorderSizePixel = 0
tbl5.bp.Position = udim22(0.498526514, 0, 0.5, 0)
tbl5.bp.Size = udim22(0, 500, 0, 300)
tbl5.bp.Visible = false
Instance.new("UICorner", tbl5.bp)
tbl5.bq = Instance.new("UIStroke", tbl5.bp)
tbl5.bq.Color = color(110, 80, 255)
tbl5.bq.Transparency = 0.1
tbl5.bq.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
tbl7._animateStroke(tbl5.bq)
tbl5.br = Instance.new("UIGradient", tbl5.bp)

do
	local br = tbl5.br
	local colorSequence = ColorSequence.new
	local tbl15 = {}
	local v8 = ColorSequenceKeypoint.new(0, tbl3.Theme.Dark)
	local v9 = ColorSequenceKeypoint.new(0.5, tbl3.Theme.Accent)
	local new = ColorSequenceKeypoint.new
	local dark = tbl3.Theme.Dark
	tbl15[1] = v8
	tbl15[2] = v9

	do
		local values = table.pack(new(1, dark))
		table.move(values, 1, values.n, 3, tbl15)
	end

	br.Color = colorSequence(tbl15)
end

insert(tbl5.N, {
	tbl5.br,
	function(arg)
		local colorSequence = ColorSequence.new
		local tbl15 = {}
		local v8 = ColorSequenceKeypoint.new(0, tbl3.Theme.Dark)
		local v9 = ColorSequenceKeypoint.new(0.5, tbl3.Theme.Accent)
		local new = ColorSequenceKeypoint.new
		local dark = tbl3.Theme.Dark
		tbl15[1] = v8
		tbl15[2] = v9

		do
			local values = table.pack(new(1, dark))
			table.move(values, 1, values.n, 3, tbl15)
		end

		arg.Color = colorSequence(tbl15)
	end,
})

tbl5.bs = Instance.new("UIAspectRatioConstraint", tbl5.bp)
tbl5.bs.AspectRatio = 1.667
tbl5.bp.Active = true
Instance.new("UIScale", tbl5.bp)
tbl5.bt = Instance.new("TextLabel", tbl5.bp)
tbl5.bt.Name = tbl5.uiN.tabName
tbl5.bt.AnchorPoint = Vector2.new(1, 0.5)
tbl5.bt.BackgroundTransparency = 1
tbl5.bt.BorderSizePixel = 0
tbl5.bt.Position = udim22(0.96, 0, 0.08, 0)
tbl5.bt.Size = udim22(0, 120, 0, 30)
tbl5.bt.Font = Enum.Font.Jura
tbl5.bt.Text = ""
tbl5.bt.TextColor3 = color(255, 255, 255)
tbl5.bt.TextScaled = true
tbl5.bt.TextWrapped = true
tbl5.bt.TextXAlignment = Enum.TextXAlignment.Right
tbl5.bu = "MM2"
tbl5.bu = tbl4.MarketplaceService:GetProductInfo(v.PlaceId).Name
tbl5.bv = Instance.new("TextLabel", tbl5.bp)
tbl5.bv.Name = "Version"
tbl5.bv.BackgroundTransparency = 1
tbl5.bv.BorderSizePixel = 0
tbl5.bv.Position = udim22(0.03, 0, 0.01, 0)
tbl5.bv.Size = udim22(0, 250, 0, 20)
tbl5.bv.Font = Enum.Font.Jura
tbl5.bv.RichText = true
tbl5.bv.TextColor3 = color(255, 255, 255)
tbl5.bv.TextSize = 12
tbl5.bv.TextXAlignment = Enum.TextXAlignment.Left

do
	local function fn7()
		local version = tbl6 and tbl6.Game.version or "v1.0"
		local str = ("#%*"):format(tbl3.Theme.Accent:ToHex())
		tbl5.bv.Text = ("%* | %* | <font color=\"%*\">luware.filho.wtf</font>"):format(version, tbl5.bu, str)
	end

	fn7()
	tbl5.bw = Instance.new("ScrollingFrame", tbl5.bp)
	tbl5.bw.Name = tbl5.uiN.content
	tbl5.bw.AnchorPoint = Vector2.new(0.5, 0)
	tbl5.bw.BackgroundTransparency = 1
	tbl5.bw.BorderSizePixel = 0
	tbl5.bw.Position = udim22(0.5, 0, 0.17, 0)
	tbl5.bw.Size = udim22(0.96, 0, 0.8, 0)
	tbl5.bw.ScrollBarImageColor3 = tbl3.Theme.Accent
	tbl5.bw.CanvasSize = udim22(0, 0, 0, 0)
	tbl5.bw.ScrollBarThickness = 4
	tbl5.bw.AutomaticCanvasSize = Enum.AutomaticSize.Y
	tbl5.bw.Active = true
	tbl5.bx = Instance.new("UIListLayout", tbl5.bw)
	tbl5.bx.FillDirection = Enum.FillDirection.Vertical
	tbl5.bx.SortOrder = Enum.SortOrder.LayoutOrder
	tbl5.bx.Padding = udim(0, 8)
	tbl5.by = Instance.new("UIPadding", tbl5.bw)
	tbl5.by.PaddingBottom = udim(0, 4)
	tbl5.by.PaddingLeft = udim(0, 4)
	tbl5.by.PaddingRight = udim(0, 4)
	tbl5.by.PaddingTop = udim(0, 4)
	tbl5.bz = {}
	tbl5.bA = {}

	local function fn8()
		for _, child in ipairs(tbl5.a1:GetChildren()) do
			if child:IsA("Frame") then
				local name = child.Name

				if name:sub(1, 3) == "CM_" or name:sub(1, 4) == "CTX_" then
					child.Visible = false
				end
			end
		end
	end

	tbl5.bo.MouseButton1Click:Connect(function()
		local mouseLocation = tbl5.aY:GetMouseLocation()
		local absolutePosition = tbl5.bp.AbsolutePosition
		local absoluteSize = tbl5.bp.AbsoluteSize
		if tbl5.bp.Visible and mouseLocation.X >= absolutePosition.X and mouseLocation.X <= absolutePosition.X + absoluteSize.X and mouseLocation.Y >= absolutePosition.Y and mouseLocation.Y <= absolutePosition.Y + absoluteSize.Y then
			return
		end
		tbl5.bp.Visible = false
		tbl5.bo.Visible = false
		tbl7._detachTabContents()
		fn8()

		if tbl5._headerSearch then
			v6(function()
				tbl5._headerSearch.restore()
			end)

			v6(function()
				tbl5._headerSearch.collapse()
			end)
		end

		tbl5.bA = {}

		for _, v8 in ipairs(tbl5.bz) do
			if v8._isActive then
				v8._isActive = false

				if v8._setActive then
					if v8 ~= nil and v4(v8._setActive) == "function" then
						v8._setActive(false)
					end
				end
			end
		end

		local v8 = workspace.CurrentCamera:FindFirstChild(tbl5.uiN.blur)

		if v8 then
			tbl5.aX:Create(v8, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.In), { Size = 0 }):Play()

			task.delay(0.35, function()
				if v8.Parent then
					v8.Parent = nil
				end
			end)
		end
	end)

	local flag = v5(request_) == "function" and request_({
		Url = "https://raw.githubusercontent.com/mstudio45/lucide-roblox-direct/refs/heads/main/source.lua",
		Method = "GET",
	}) or nil

	local body = v5(flag) == "table" and v4(flag.Body) == "string" and flag.Body or ""

	local v8, v9 = v6(function()
		return loadstring(body)()
	end)

	tbl5.bB = false
	tbl5.bC = nil
	tbl5.bD = v8
	tbl5.bE = v9

	local function fn9(arg)
		if v4(arg) ~= "string" or arg == "" then
			return nil
		end

		if not tbl5.bD or not tbl5.bE then
			return nil
		end
		local flag2 = tbl2 ~= nil and tbl5 ~= nil and tbl5.bE ~= nil and v4(tbl5.bE.GetAsset) == "function"

		if flag2 then
			j = tbl5.bE.GetAsset(arg)
		end

		if flag2 and j then
			return j
		end
		local flag3 = tbl2 ~= nil and tbl5 ~= nil and tbl5.bE ~= nil and v4(tbl5.bE.GetAsset) == "function"

		if flag3 then
			l = tbl5.bE.GetAsset(arg:lower())
		end

		return flag3 and l or nil
	end

	local dark = tbl3.Theme.Dark
	tbl5.bF = tbl3.Theme.Accent
	tbl5.bG = dark
	tbl5.bH = {}
	tbl5.bI = 40
	tbl5.bJ = {}

	for i_ = 0, tbl5.bI - 1 do
		tbl5.bL = i_ / (tbl5.bI - 1)
		tbl5.bM = clamp(tbl5.bL - 0.28, 0.001, 0.96)
		tbl5.bN = clamp(tbl5.bL, tbl5.bM + 0.001, 0.97)
		tbl5.bO = clamp(tbl5.bL + 0.28, tbl5.bN + 0.001, 0.999)
		local bj = tbl5.bJ
		local colorSequence = ColorSequence.new
		local tbl15 = {}
		local v10 = ColorSequenceKeypoint.new(0, tbl5.bG)
		local v11 = ColorSequenceKeypoint.new(tbl5.bM, tbl5.bG)
		local v12 = ColorSequenceKeypoint.new(tbl5.bN, tbl5.bF)
		local v13 = ColorSequenceKeypoint.new(tbl5.bO, tbl5.bG)
		tbl15[1] = v10
		tbl15[2] = v11
		tbl15[3] = v12
		tbl15[4] = v13

		do
			local values = table.pack(ColorSequenceKeypoint.new(1, tbl5.bG))
			table.move(values, 1, values.n, 5, tbl15)
		end

		bj[i_] = colorSequence(tbl15)
	end

	heartbeat:Connect(function()
		local rotation = clock() * 144 % 360

		for k_ in _pairs(tbl5.bH) do
			if not k_.Parent then
				tbl5.bH[k_] = nil
			else
				k_.Rotation = rotation
			end
		end
	end)

	local function fn10(arg)
		if not arg then
			return
		end
		arg.Rotation = random() * 360
		tbl5.bH[arg] = true
	end

	local function fn11()
		local currentCamera = workspace.CurrentCamera
		if not currentCamera then
			return nil
		end
		local blurEffect = tbl6.Features.Visuals.blurEffect

		if not blurEffect or not blurEffect.Parent then
			blurEffect = currentCamera:FindFirstChild(tbl5.uiN.blur) or blurEffect
		end

		if not blurEffect then
			blurEffect = Instance.new("BlurEffect")
			blurEffect.Name = tbl5.uiN.blur
			blurEffect.Size = 0
		end

		if blurEffect.Parent ~= currentCamera then
			blurEffect.Parent = currentCamera
		end

		tbl6.Features.Visuals.blurEffect = blurEffect
		return blurEffect
	end

	tbl5.bK = {}
	tbl5.bL_3 = false
	tbl5.bK.Toggles = {}
	tbl5.bK.Options = {}
	tbl5.bK.Tabs = {}

	tbl5.bK.Elements = {
		SliderInput = {},
		SliderKnob = {},
		SliderFill = {},
		SliderPlaceholder = {},
		Dropdown = {},
		TextBox = {},
		SearchBar = {},
		Keybind = {},
		Button = {},
		ColorpickerEl = {},
	}

	tbl5.bK.Scheme = {
		AccentColor = tbl3.Theme.Accent,
		BackgroundColor = tbl3.Theme.Dark,
		FontColor = tbl3.Theme.Font,
		MainColor = tbl3.Theme.GroupBg,
		OutlineColor = tbl3.Theme.Sep,
	}

	tbl7.refreshElements = function()
		local elements = tbl5.bK.Elements

		if elements then
			for k_, element in _pairs(elements) do
				local v10 = tbl3.Theme[k_]

				if v10 then
					for _, v11 in _ipairs(element) do
						if v11.i.Parent then
							v11.i[v11.p] = v10
						end
					end
				end
			end
		end

		for _, toggle in _pairs(tbl5.bK.Toggles) do
			if v4(toggle) == "table" and toggle._switch and toggle.Value ~= nil then
				toggle._switch.BackgroundColor3 = toggle.Value and tbl3.Theme.ToggleOn or tbl3.Theme.ToggleOff
			end
		end
	end

	tbl5.bK.UpdateColorsUsingRegistry = function(arg)
		local scheme = arg.Scheme
		local accent = tbl3.Theme.Accent
		local dark2 = tbl3.Theme.Dark
		local font = tbl3.Theme.Font
		local groupBg = tbl3.Theme.GroupBg
		local groupTint = tbl3.Theme.GroupTint
		local sep = tbl3.Theme.Sep
		local divider = tbl3.Theme.Divider
		local titleGrad1 = tbl3.Theme.TitleGrad1
		local titleGrad2 = tbl3.Theme.TitleGrad2
		tbl3.Theme.Accent = scheme.Variant3Color or scheme.AccentColor or tbl3.Theme.Accent
		tbl3.Theme.AccentBright = scheme.AccentBrightColor or tbl3.Theme.Accent:Lerp(Color3.new(1, 1, 1), 0.15)
		tbl3.Theme.Dark = scheme.Surface1Color or scheme.BackgroundColor or tbl3.Theme.Dark
		tbl3.Theme.Font = scheme.Secondary1Color or scheme.FontColor or tbl3.Theme.Font
		tbl3.Theme.GroupBg = scheme.Surface2Color or scheme.MainColor or tbl3.Theme.GroupBg
		local theme = tbl3.Theme
		local surface3Color = scheme.Surface3Color or scheme.GroupTintColor

		if not surface3Color then
			surface3Color = (scheme.MainColor or tbl3.Theme.GroupBg):Lerp(scheme.AccentColor or tbl3.Theme.Accent, 0.12)
		end

		theme.GroupTint = surface3Color
		tbl3.Theme.TitleGrad1 = scheme.TitleGrad1Color or scheme.OutlineColor or tbl3.Theme.TitleGrad1
		tbl3.Theme.TitleGrad2 = scheme.TitleGrad2Color or tbl3.Theme.TitleGrad1:Lerp(Color3.new(1, 1, 1), 0.35)
		tbl3.Theme.Sep = scheme.SepColor or scheme.OutlineColor or tbl3.Theme.Sep
		tbl3.Theme.Divider = scheme.DividerColor or scheme.OutlineColor or tbl3.Theme.Divider
		tbl3.Theme.SliderInput = scheme.SliderInputColor or tbl3.Theme.GroupBg
		tbl3.Theme.SliderKnob = scheme.SliderKnobColor or Color3.new(1, 1, 1)
		tbl3.Theme.SliderFill = scheme.SliderFillColor or tbl3.Theme.Accent
		tbl3.Theme.SliderPlaceholder = scheme.SliderPlaceholderColor or color(178, 178, 178)
		tbl3.Theme.ToggleOn = scheme.ToggleOnColor or tbl3.Theme.Accent
		tbl3.Theme.ToggleOff = scheme.ToggleOffColor or tbl3.Theme.GroupBg
		tbl3.Theme.Dropdown = scheme.DropdownColor or tbl3.Theme.Dark
		tbl3.Theme.TextBox = scheme.TextBoxColor or tbl3.Theme.Font
		tbl3.Theme.SearchBar = scheme.SearchBarColor or Color3.new(1, 1, 1)
		tbl3.Theme.Keybind = scheme.KeybindColor or tbl3.Theme.Dark
		tbl3.Theme.Button = scheme.ButtonColor or tbl3.Theme.Font
		tbl3.Theme.ColorpickerEl = scheme.ColorpickerElColor or color(70, 70, 88)
		tbl3.Theme.Paragraph = scheme.ParagraphColor or tbl3.Theme.Font
		tbl3.Theme.Secondary2 = scheme.Secondary2Color or tbl3.Theme.Font
		tbl3.Theme.Secondary3 = scheme.Secondary3Color or tbl3.Theme.Font
		tbl3.Theme.Variant1 = scheme.Variant1Color or tbl3.Theme.Accent
		tbl3.Theme.Variant2 = scheme.Variant2Color or tbl3.Theme.Accent
		tbl7.refreshElements()
		tbl5.bF = tbl3.Theme.Accent
		tbl5.bG = tbl3.Theme.Dark

		for i_ = 0, tbl5.bI - 1 do
			local n = i_ / (tbl5.bI - 1)
			local v10 = clamp(n - 0.28, 0.001, 0.96)
			local v11 = clamp(n, v10 + 0.001, 0.97)
			local v12 = clamp(n + 0.28, v11 + 0.001, 0.999)
			local bj = tbl5.bJ
			local colorSequence = ColorSequence.new
			local tbl15 = {}
			local v13 = ColorSequenceKeypoint.new(0, tbl5.bG)
			local v14 = ColorSequenceKeypoint.new(v10, tbl5.bG)
			local v15 = ColorSequenceKeypoint.new(v11, tbl5.bF)
			local v16 = ColorSequenceKeypoint.new(v12, tbl5.bG)
			local new = ColorSequenceKeypoint.new
			local bg = tbl5.bG
			tbl15[1] = v13
			tbl15[2] = v14
			tbl15[3] = v15
			tbl15[4] = v16

			do
				local values = table.pack(new(1, bg))
				table.move(values, 1, values.n, 5, tbl15)
			end

			bj[i_] = colorSequence(tbl15)
		end

		local colorSequence = ColorSequence.new
		local tbl15 = {}
		local v10 = ColorSequenceKeypoint.new(0, tbl3.Theme.Dark)
		local v11 = ColorSequenceKeypoint.new(0.25, tbl3.Theme.Accent)
		local v12 = ColorSequenceKeypoint.new(0.5, tbl3.Theme.AccentBright)
		local v13 = ColorSequenceKeypoint.new(0.75, tbl3.Theme.Accent)
		local new = ColorSequenceKeypoint.new
		local dark3 = tbl3.Theme.Dark
		tbl15[1] = v10
		tbl15[2] = v11
		tbl15[3] = v12
		tbl15[4] = v13

		do
			local values = table.pack(new(1, dark3))
			table.move(values, 1, values.n, 5, tbl15)
		end

		local v14 = colorSequence(tbl15)

		for _, v15 in ipairs(tbl5.F) do
			v15.Color = v14
		end

		for _, v15 in ipairs(tbl5.H) do
			local new2 = ColorSequenceKeypoint.new
			local groupTint2 = tbl3.Theme.GroupTint
			v15.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, tbl3.Theme.GroupBg), new2(1, groupTint2) })
		end

		for _, v15 in ipairs(tbl5.N) do
			v15[2](v15[1])
		end

		for _, v15 in ipairs(tbl5.J) do
			local new2 = ColorSequenceKeypoint.new
			local titleGrad22 = tbl3.Theme.TitleGrad2
			v15.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, tbl3.Theme.TitleGrad1), new2(1, titleGrad22) })
		end

		local tbl16 = {
			Accent = accent,
			Dark = dark2,
			Font = font,
			GroupBg = groupBg,
			GroupTint = groupTint,
			Sep = sep,
			Divider = divider,
			TitleGrad1 = titleGrad1,
			TitleGrad2 = titleGrad2,
		}

		local function fn12(arg2, arg3)
			return abs(arg2.R - arg3.R) < 0.03 and abs(arg2.G - arg3.G) < 0.03 and abs(arg2.B - arg3.B) < 0.03
		end

		local function fn13(arg2)
			return fn12(arg2, tbl16.Accent)
		end

		local function fn14(arg2)
			return fn12(arg2, tbl16.Dark)
		end

		local function fn15(arg2)
			return fn12(arg2, tbl16.GroupBg)
		end

		local function fn16(arg2)
			return fn12(arg2, tbl16.GroupTint)
		end

		local function fn17(arg2)
			return fn12(arg2, tbl16.Sep) or fn12(arg2, tbl16.Divider)
		end

		local function fn18(arg2)
			return fn12(arg2, tbl16.Font)
		end

		local tbl17 = {}
		local tbl18 = {}

		local function fn19(arg2)
			if not arg2 or tbl18[arg2] then
				return
			end
			tbl18[arg2] = true
			local flag2 = arg2 ~= nil and v4(arg2.GetDescendants) == "function"
			local v15 = nil

			if flag2 then
				v15 = getDescendants(arg2)
			end

			if flag2 and v4(v15) == "table" and next(v15) ~= nil then
				for _, v16 in ipairs(v15) do
					tbl17[v16] = true
				end

				return
			end

			local tbl19 = {}
			local fn20 = nil

			fn20 = function(arg3)
				local flag3 = arg3 ~= nil and v4(arg3.GetChildren) == "function"
				local children = nil

				if flag3 then
					children = arg3:GetChildren()
				end

				if not flag3 or v4(children) ~= "table" then
					return
				end

				for _, child in ipairs(children) do
					if not tbl19[child] then
						tbl19[child] = true
						tbl17[child] = true
						fn20(child)
					end
				end
			end

			fn20(arg2)
		end

		fn19(tbl5.a1)

		for _, v15 in ipairs(tbl5.bz) do
			if v15._contentFrame then
				fn19(v15._contentFrame)
			end
		end

		if tbl5._headerSearch and tbl5._headerSearch.container then
			fn19(tbl5._headerSearch.container)
		end

		if tbl5._headerSearch and tbl5._headerSearch.empty then
			fn19(tbl5._headerSearch.empty)
		end

		if tbl6.UI.floatingGui then
			fn19(tbl6.UI.floatingGui)
		end

		for k_ in pairs(tbl17) do
			local className = k_.ClassName

			if className == "TextLabel" or className == "TextButton" or className == "TextBox" then
				if fn18(k_.TextColor3) then
					k_.TextColor3 = tbl3.Theme.Font
				end
			end

			if (className == "Frame" or className == "TextButton" or className == "TextBox" or className == "ScrollingFrame") and k_.BackgroundTransparency < 0.99 then
				local backgroundColor3 = k_.BackgroundColor3

				if fn13(backgroundColor3) then
					k_.BackgroundColor3 = tbl3.Theme.Accent
				elseif fn14(backgroundColor3) then
					k_.BackgroundColor3 = tbl3.Theme.Dark
				elseif fn16(backgroundColor3) then
					k_.BackgroundColor3 = tbl3.Theme.GroupTint
				elseif fn17(backgroundColor3) then
					k_.BackgroundColor3 = tbl3.Theme.Sep
				elseif fn15(backgroundColor3) then
					k_.BackgroundColor3 = tbl3.Theme.GroupBg
				end
			end

			if className == "UIStroke" then
				local color3 = k_.Color

				if fn12(color3, tbl16.Accent) then
					k_.Color = tbl3.Theme.Accent
				elseif fn14(color3) then
					k_.Color = tbl3.Theme.Dark
				elseif fn18(color3) then
					k_.Color = tbl3.Theme.Font
				elseif fn15(color3) then
					k_.Color = tbl3.Theme.GroupBg
				elseif fn16(color3) then
					k_.Color = tbl3.Theme.GroupTint
				elseif fn12(color3, tbl16.Sep) or fn12(color3, tbl16.Divider) then
					k_.Color = tbl3.Theme.Sep
				end
			end

			if className == "ScrollingFrame" then
				k_.ScrollBarImageColor3 = tbl3.Theme.Accent
			end

			if className == "ImageLabel" then
				if fn12(k_.ImageColor3, tbl16.Font) then
					k_.ImageColor3 = tbl3.Theme.Font
				end
			end
		end

		for _, v15 in ipairs(tbl5.bz) do
			if v15._refreshVisuals then
				if v15 ~= nil and v4(v15._refreshVisuals) == "function" then
					v15._refreshVisuals()
				end
			end

			if v15._lbl and not v15._isActive then
				v15._lbl.TextColor3 = tbl3.Theme.Font
			end
		end

		for k_, v15 in pairs(tbl5.P) do
			if not k_.Parent then
				return
			end

			if k_ == tbl6.UI.shootButton then
				tbl7.applyShootButtonVisual(k_, tbl6.Features.Combat.shootButtonState == "waiting" and "waiting" or "ready")
			elseif v15.isCooldown then
				tbl7.setButtonCooldown(k_, true)
			else
				tbl7.setButtonActive(k_, v15.isActive)
			end
		end

		local v15 = pairs
		local toggles = tbl5.bK.Toggles or {}

		for _, toggle in v15(toggles) do
			if toggle._visualSync then
				if toggle ~= nil and v4(toggle._visualSync) == "function" then
					toggle._visualSync(toggle.Value)
				end
			end
		end

		for _, v16 in ipairs(tbl5.I) do
			v16.TextColor3 = tbl3.Theme.Font
		end

		for _, v16 in ipairs(tbl5.K) do
			v16.BackgroundColor3 = tbl3.Theme.Sep
		end

		tbl5.O.Accent = tbl3.Theme.Accent
		tbl5.O.Dark = tbl3.Theme.Dark
		tbl5.O.Font = tbl3.Theme.Font
		tbl5.O.GroupBg = tbl3.Theme.GroupBg
		tbl5.O.GroupTint = tbl3.Theme.GroupTint
		tbl5.O.Sep = tbl3.Theme.Sep
		tbl5.O.Divider = tbl3.Theme.Divider

		if fn7 then
			if v4(fn7) == "function" then
				fn7()
			end
		end
	end
end

tbl5.bK.SetFont = function()
end

tbl5.bK.SetBackgroundImage = function()
end

tbl5.bK.Window = { AddDialog = function(arg, arg2, arg3)
	if arg3 and arg3.FooterButtons and arg3.FooterButtons.DestructiveAction then
		local callback = arg3.FooterButtons.DestructiveAction.Callback

		if callback then
			if v4(callback) == "function" then
				callback({ Dismiss = function()
				end })
			end
		end
	end
end }

tbl5.bL_2 = {}
tbl5.bL_2.__index = tbl5.bL_2
tbl5.bM_2 = {}
tbl5.bM_2.__index = tbl5.bM_2
tbl5.bN_2 = {}
tbl5.bN_2.__index = tbl5.bN_2

tbl5.VisualPool = {
	Box = { cache = {}, active = setmetatable({}, { __mode = "k" }) },
	Tracer = { cache = {}, active = setmetatable({}, { __mode = "k" }) },
	ESP = { cache = {}, active = setmetatable({}, { __mode = "k" }) },
	Chams = { cache = {}, active = setmetatable({}, { __mode = "k" }) },
	Outline = { cache = {}, active = setmetatable({}, { __mode = "k" }) },
}

tbl5.bL_2.AddDivider = function(...) end
tbl5.bL_2.AddLabel = function(...) end
tbl5.bL_2.AddToggle = function(...) end
tbl5.bL_2.AddSlider = function(...) end
tbl5.bL_2.AddDropdown = function(...) end
tbl5.bL_2.AddButton = function(...) end
tbl5.bL_2.AddInput = function(...) end
tbl5.bL_2.AddColorPicker = function(L,A,p)p=p or{};return L:AddLabel(p.Title or p.Text or A):AddColorPicker(A,p);end
tbl5.bM_2.AddLeftGroupbox = function(L,A)return L:AddLeftGroupBox(A);end
tbl5.bM_2.AddRightGroupbox = function(L,A)return L:AddRightGroupBox(A);end
tbl5.bM_2.AddLeftGroupBox = function(...) end
tbl5.bM_2.AddRightGroupBox = function(...) end

tbl5.bM_2._buildContent = function(arg, arg2)
	local frame = Instance.new("Frame", arg2)
	frame.Name = "InnerGrid"
	frame.BackgroundTransparency = 1
	frame.BorderSizePixel = 0
	frame.Size = udim22(1, 0, 0, 0)
	frame.AutomaticSize = Enum.AutomaticSize.Y
	local uiListLayout = Instance.new("UIListLayout", frame)
	uiListLayout.FillDirection = Enum.FillDirection.Horizontal
	uiListLayout.VerticalAlignment = Enum.VerticalAlignment.Top
	uiListLayout.SortOrder = Enum.SortOrder.LayoutOrder
	uiListLayout.Padding = udim(0, 8)
	local frame2 = Instance.new("Frame", frame)
	frame2.Name = "LeftColumn"
	frame2.Size = udim22(0.5, -5, 0, 0)
	frame2.AutomaticSize = Enum.AutomaticSize.Y
	frame2.BackgroundTransparency = 1
	frame2.BorderSizePixel = 0
	frame2.LayoutOrder = 0
	local uiListLayout2 = Instance.new("UIListLayout", frame2)
	uiListLayout2.SortOrder = Enum.SortOrder.LayoutOrder
	uiListLayout2.Padding = udim(0, 8)
	local frame3 = Instance.new("Frame", frame)
	frame3.Name = "RightColumn"
	frame3.Size = udim22(0.5, -5, 0, 0)
	frame3.AutomaticSize = Enum.AutomaticSize.Y
	frame3.BackgroundTransparency = 1
	frame3.BorderSizePixel = 0
	frame3.LayoutOrder = 1
	local uiListLayout3 = Instance.new("UIListLayout", frame3)
	uiListLayout3.SortOrder = Enum.SortOrder.LayoutOrder
	uiListLayout3.Padding = udim(0, 8)

	for _, leftGroup in ipairs(arg._leftGroups) do
		tbl5.bC(frame2, leftGroup)
	end

	for _, rightGroup in ipairs(arg._rightGroups) do
		tbl5.bC(frame3, rightGroup)
	end
end

tbl5.bN_2.new = function(arg)
	local frame = Instance.new("Frame", tbl5.a2)
	frame.Name = "ActivePill"
	frame.BackgroundColor3 = tbl3.Theme.AccentBright
	frame.BackgroundTransparency = 1
	frame.BorderSizePixel = 0
	frame.ZIndex = 10
	frame.Visible = false
	Instance.new("UICorner", frame).CornerRadius = udim(0, 10)
	local uiGradient = Instance.new("UIGradient", frame)
	uiGradient.Rotation = 90
	local colorSequence = ColorSequence.new
	local tbl15 = {}
	local v8 = ColorSequenceKeypoint.new(0, tbl3.Theme.AccentBright)
	local v9 = ColorSequenceKeypoint.new(0.5, Color3.new(1, 1, 1))
	local new = ColorSequenceKeypoint.new
	local accent = tbl3.Theme.Accent
	tbl15[1] = v8
	tbl15[2] = v9

	do
		local values = table.pack(new(1, accent))
		table.move(values, 1, values.n, 3, tbl15)
	end

	uiGradient.Color = colorSequence(tbl15)
	local obj = setmetatable({ _scroll = arg, _pill = frame, _pillTarget = nil, _tabs = {}, _notifyCards = nil, _notifyGap = 8 }, tbl5.bN_2)

	insert(tbl5.N, {
		uiGradient,
		function(arg2)
			local colorSequence2 = ColorSequence.new
			local tbl16 = {}
			local v10 = ColorSequenceKeypoint.new(0, tbl3.Theme.AccentBright)
			local v11 = ColorSequenceKeypoint.new(0.5, tbl3.Theme.AccentBright:Lerp(Color3.new(1, 1, 1), 0.4))
			local new2 = ColorSequenceKeypoint.new
			local accent2 = tbl3.Theme.Accent
			tbl16[1] = v10
			tbl16[2] = v11

			do
				local values = table.pack(new2(1, accent2))
				table.move(values, 1, values.n, 3, tbl16)
			end

			arg2.Color = colorSequence2(tbl16)
		end,
	})

	tbl5.bd:GetPropertyChangedSignal("CanvasPosition"):Connect(function()
		local pillTarget = obj._pillTarget

		if frame.Visible and pillTarget and pillTarget.Parent then
			local n = pillTarget.AbsolutePosition - tbl5.a2.AbsolutePosition
			frame.Position = udim2(n.X, n.Y)
		end
	end)

	return obj
end

tbl5.bN_2._morphPill = function(arg, pillTarget)
	local pill = arg._pill
	if not pill or not pillTarget or not pillTarget.Parent then
		return
	end
	arg._pillTarget = pillTarget
	local n = pillTarget.AbsolutePosition - tbl5.a2.AbsolutePosition
	local v8 = udim2(n.X, n.Y)
	local v9 = udim2(pillTarget.AbsoluteSize.X, pillTarget.AbsoluteSize.Y)

	if not pill.Visible then
		pill.Position = v8
		pill.Size = v9
		pill.Visible = true
		tbl5.aX:Create(pill, TweenInfo.new(0.15, Enum.EasingStyle.Cubic, Enum.EasingDirection.Out), { BackgroundTransparency = 0.93 }):Play()
		return
	end

	tbl5.aX:Create(pill, TweenInfo.new(0.4, Enum.EasingStyle.Back, Enum.EasingDirection.Out), { Position = v8 }):Play()
	tbl5.aX:Create(pill, TweenInfo.new(0.35, Enum.EasingStyle.Cubic, Enum.EasingDirection.Out), { Size = v9 }):Play()
end

tbl5.bN_2._hidePill = function(arg)
	local pill = arg._pill
	if not pill or not pill.Visible then
		return
	end
	arg._pillTarget = nil
	tbl5.aX:Create(pill, TweenInfo.new(0.15, Enum.EasingStyle.Cubic, Enum.EasingDirection.Out), { BackgroundTransparency = 1 }):Play()

	task.delay(0.16, function()
		if pill.BackgroundTransparency >= 1 then
			pill.Visible = false
		end
	end)
end

tbl5.bN_2.BuildAllContent = function(arg)
	local v8 = tbl5.bp:FindFirstChild(tbl5.uiN.content)

	if v8 then
		for _, tab in ipairs(arg._tabs) do
			if not tab._contentBuilt then
				local contentFrame = tab._contentFrame

				if not contentFrame then
					contentFrame = Instance.new("Frame", v8)
					contentFrame.Name = tbl7._obfName()
					contentFrame.Size = udim22(1, 0, 0, 0)
					contentFrame.AutomaticSize = Enum.AutomaticSize.Y
					contentFrame.BackgroundTransparency = 1
					contentFrame.BorderSizePixel = 0
					contentFrame.Visible = false
					tab._contentFrame = contentFrame
				end

				tab:_buildContent(contentFrame)
				tab._contentBuilt = true
			end
		end

		for _, tab in ipairs(arg._tabs) do
			if tab._contentFrame and tab._contentFrame.Parent then
				tab._contentFrame.Visible = false
				tab._contentFrame.Parent = nil
			end
		end
	end

	tbl5.a9.Text = "LuWare ready"
	tbl5.aX:Create(tbl5.bb, TweenInfo.new(0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Size = udim22(1, 0, 1, 0) }):Play()

	task.delay(0.3, function()
		if not tbl5.a7 or not tbl5.a7.Parent then
			return
		end
		tbl5.aX:Create(tbl5.a7, TweenInfo.new(0.35, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { GroupTransparency = 1 }):Play()

		task.delay(0.4, function()
			if tbl5.a7 and tbl5.a7.Parent then
				tbl5.a7.Visible = false

				if not tbl5.bk then
					tbl5.a2.Position = udim22(0.482731551, 0, 0.098842591, 0)
					tbl5.a2.Size = udim22(0, 400, 0, 50)
					tbl5.a4.AspectRatio = 5.909
					tbl5.a2.BackgroundTransparency = 0
					tbl5.a5.Transparency = 0.1
					tbl5.a6.Enabled = true
					tbl5.a3.Visible = true
					tbl5.bg.Visible = true
					tbl5.bd.Visible = true
				end
			end
		end)
	end)
end

tbl5.bN_2.AddTab = function(...) end

tbl5.bN_2.Notify = function(arg, text, arg2)
	if not arg._notifyContainer then
		arg._notifyContainer = Instance.new("Frame", tbl5.a1)
		arg._notifyContainer.Name = tbl5.uiN.notify
		arg._notifyContainer.Size = udim22(0, 210, 0, 0)
		arg._notifyContainer.AnchorPoint = vector2(1, 1)
		arg._notifyContainer.Position = udim22(1, -20, 1, -20)
		arg._notifyContainer.BackgroundTransparency = 1
		arg._notifyContainer.ZIndex = 300
		arg._notifyCards = {}
		tbl5.bL_3 = false
	end

	local frame = Instance.new("Frame")
	frame.Name = "Notify"
	frame.Size = udim22(1, 0, 0, 0)
	frame.AutomaticSize = Enum.AutomaticSize.Y
	frame.BackgroundColor3 = color(5, 5, 18)
	frame.BackgroundTransparency = 0
	frame.ZIndex = 300
	frame.AnchorPoint = vector2(0.5, 1)
	frame.ClipsDescendants = true
	frame.BorderSizePixel = 0
	frame.Parent = arg._notifyContainer
	Instance.new("UICorner", frame).CornerRadius = udim(0, 6)
	local uiStroke = Instance.new("UIStroke", frame)
	uiStroke.Color = tbl5.bF
	uiStroke.Thickness = 1.5
	uiStroke.Transparency = 0.2
	local uiGradient = Instance.new("UIGradient", frame)
	uiGradient.Rotation = 90
	local colorSequence = ColorSequence.new
	local tbl15 = {}
	local v8 = ColorSequenceKeypoint.new(0, tbl5.bG)
	local new = ColorSequenceKeypoint.new
	local v9 = color
	local v10 = clamp(floor(tbl5.bF.R * 255 * 0.18), 0, 255)
	local v11 = clamp(floor(tbl5.bF.G * 255 * 0.18), 0, 255)
	tbl15[1] = v8

	do
		local values = table.pack(new(1, v9(v10, v11, clamp(floor(tbl5.bF.B * 255 * 0.18), 0, 255))))
		table.move(values, 1, values.n, 2, tbl15)
	end

	uiGradient.Color = colorSequence(tbl15)
	local uiPadding = Instance.new("UIPadding", frame)
	uiPadding.PaddingLeft = udim(0, 14)
	uiPadding.PaddingRight = udim(0, 14)
	uiPadding.PaddingTop = udim(0, 10)
	uiPadding.PaddingBottom = udim(0, 10)
	local uiListLayout = Instance.new("UIListLayout", frame)
	uiListLayout.SortOrder = Enum.SortOrder.LayoutOrder
	uiListLayout.Padding = udim(0, 5)
	local textLabel = Instance.new("TextLabel", frame)
	textLabel.Size = udim22(1, 0, 0, 0)
	textLabel.AutomaticSize = Enum.AutomaticSize.Y
	textLabel.BackgroundTransparency = 1
	textLabel.RichText = true
	local n = tbl5.bF.B * 255
	textLabel.Text = format("<font color=\"#%02X%02X%02X\">Luware</font> Says:", floor(tbl5.bF.R * 255), floor(tbl5.bF.G * 255), floor(n))
	textLabel.TextColor3 = Color3.new(1, 1, 1)
	textLabel.TextSize = 12
	textLabel.Font = Enum.Font.Jura
	textLabel.TextXAlignment = Enum.TextXAlignment.Left
	textLabel.TextWrapped = true
	textLabel.LayoutOrder = 0
	local textLabel2 = Instance.new("TextLabel", frame)
	textLabel2.Size = udim22(1, 0, 0, 0)
	textLabel2.AutomaticSize = Enum.AutomaticSize.Y
	textLabel2.BackgroundTransparency = 1
	textLabel2.RichText = true
	textLabel2.Text = text or ""
	textLabel2.TextColor3 = color(200, 200, 235)
	textLabel2.TextSize = 11
	textLabel2.Font = Enum.Font.Jura
	textLabel2.TextXAlignment = Enum.TextXAlignment.Left
	textLabel2.TextWrapped = true
	textLabel2.LayoutOrder = 1
	local frame2 = Instance.new("Frame", frame)
	frame2.Size = udim22(1, 0, 0, 2)
	frame2.BackgroundColor3 = tbl5.bF
	frame2.BackgroundTransparency = 0.5
	frame2.LayoutOrder = 2
	frame2.BorderSizePixel = 0
	Instance.new("UICorner", frame2).CornerRadius = udim(1, 0)
	tbl5.aX:Create(frame2, TweenInfo.new(arg2 or 3, Enum.EasingStyle.Linear), { Size = udim22(0, 0, 0, 2) }):Play()
	insert(arg._notifyCards, frame)
	local v12 = arg

	task.defer(function()
		if not frame.Parent then
			return
		end
		local y = frame.AbsoluteSize.Y
		frame:SetAttribute("FH", y)
		frame.AutomaticSize = Enum.AutomaticSize.None
		frame.Size = udim22(1, 0, 0, 0)
		frame.Position = udim22(0.5, 0, 1, y + v12._notifyGap)
		v12:_layoutCards()
		tbl5.aX:Create(frame, TweenInfo.new(0.4, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), { Size = udim22(1, 0, 0, y) }):Play()
	end)

	task.delay(arg2 or 3, function()
		if not frame.Parent then
			return
		end
		tbl5.aX:Create(frame, TweenInfo.new(0.3, Enum.EasingStyle.Sine, Enum.EasingDirection.In), { Size = udim22(1, 0, 0, 0) }):Play()

		task.delay(0.3, function()
			for i_, notifyCard in ipairs(v12._notifyCards) do
				if notifyCard == frame then
					remove(v12._notifyCards, i_)
					break
				end
			end

			destroy(frame)
			v12:_layoutCards()
		end)
	end)
end

tbl5.bN_2._layoutCards = function(arg)
	if not arg._notifyContainer then
		return
	end
	local n = 0

	for _, notifyCard in ipairs(arg._notifyCards) do
		if notifyCard.Parent then
			n += notifyCard:GetAttribute("FH") or 0
		end
	end

	local n2 = n + arg._notifyGap * max(0, #arg._notifyCards - 1)
	tbl5.aX:Create(arg._notifyContainer, TweenInfo.new(0.4, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), { Size = udim22(0, 210, 0, n2) }):Play()
	local n3 = 0

	for i_ = #arg._notifyCards, 1, -1 do
		local v8 = arg._notifyCards[i_]

		if v8.Parent then
			local attribute = v8:GetAttribute("FH") or 0
			tbl5.aX:Create(v8, TweenInfo.new(0.4, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), { Position = udim22(0.5, 0, 1, -n3) }):Play()
			n3 = n3 + attribute + arg._notifyGap
		end
	end
end

tbl5.bO_2 = 0
tbl5.bN_2.AddDraggableLabel = function(...) end

tbl5.bC = function(arg, arg2)
	local frame = Instance.new("Frame", arg)
	frame.Name = (arg2.side or "Left") .. "Group"
	frame.Size = udim22(1, 0, 0, 0)
	frame.AutomaticSize = Enum.AutomaticSize.Y
	frame.BackgroundColor3 = tbl3.Theme.GroupBg
	frame.BackgroundTransparency = 0.4
	frame.BorderSizePixel = 0
	Instance.new("UICorner", frame).CornerRadius = udim(0, 8)
	insert(tbl5.G, frame)
	local uiGradient = Instance.new("UIGradient", frame)
	uiGradient.Rotation = 90

	uiGradient.Color = ColorSequence.new({
		ColorSequenceKeypoint.new(0, tbl3.Theme.GroupBg),
		ColorSequenceKeypoint.new(1, tbl3.Theme.GroupTint),
	})

	insert(tbl5.H, uiGradient)
	local uiStroke = Instance.new("UIStroke", frame)
	uiStroke.Color = tbl3.Theme.Accent
	uiStroke.Thickness = 1.5
	uiStroke.Transparency = 0.1

	insert(tbl5.N, {
		uiStroke,
		function(arg3)
			arg3.Color = tbl3.Theme.Accent
		end,
	})

	tbl7._animateStroke(uiStroke)
	local uiPadding = Instance.new("UIPadding", frame)
	uiPadding.PaddingTop = udim(0, 10)
	uiPadding.PaddingBottom = udim(0, 10)
	uiPadding.PaddingLeft = udim(0, 10)
	uiPadding.PaddingRight = udim(0, 10)
	local uiListLayout = Instance.new("UIListLayout", frame)
	uiListLayout.SortOrder = Enum.SortOrder.LayoutOrder
	uiListLayout.Padding = udim(0, 8)
	local textLabel = Instance.new("TextLabel", frame)
	textLabel.Name = "Title"
	textLabel.Size = udim22(1, 0, 0, 26)
	textLabel.BackgroundTransparency = 1
	textLabel.RichText = true
	textLabel.Text = arg2.title or ""
	textLabel.TextColor3 = tbl3.Theme.Font
	textLabel.TextSize = 15
	textLabel.Font = Enum.Font.MontserratBold
	textLabel.TextXAlignment = Enum.TextXAlignment.Left
	textLabel.TextYAlignment = Enum.TextYAlignment.Center
	textLabel.LayoutOrder = 0
	textLabel.BorderSizePixel = 0
	insert(tbl5.I, textLabel)
	local uiGradient2 = Instance.new("UIGradient", textLabel)
	uiGradient2.Rotation = 0

	uiGradient2.Color = ColorSequence.new({
		ColorSequenceKeypoint.new(0, tbl3.Theme.TitleGrad1),
		ColorSequenceKeypoint.new(1, tbl3.Theme.TitleGrad2),
	})

	insert(tbl5.J, uiGradient2)
	local frame2 = Instance.new("Frame", frame)
	frame2.Size = udim22(1, 0, 0, 1)
	frame2.BackgroundColor3 = tbl3.Theme.Sep
	frame2.BackgroundTransparency = 0.6
	frame2.BorderSizePixel = 0
	frame2.LayoutOrder = 1
	insert(tbl5.K, frame2)
	local frame3 = Instance.new("Frame", frame)
	frame3.Name = "Content"
	frame3.Size = udim22(1, 0, 0, 0)
	frame3.AutomaticSize = Enum.AutomaticSize.Y
	frame3.BackgroundTransparency = 1
	frame3.LayoutOrder = 2
	frame3.BorderSizePixel = 0
	local uiListLayout2 = Instance.new("UIListLayout", frame3)
	uiListLayout2.SortOrder = Enum.SortOrder.LayoutOrder
	uiListLayout2.Padding = udim(0, 8)
	arg2._holder = frame3

	if arg2._builders then
		for _, builder in ipairs(arg2._builders) do
			local v8 = builder()

			if v8 then
				v8.Parent = frame3
			end
		end
	end

	tbl5.bL_3 = false
	arg2._builtFrame = frame

	if not tbl5.bK._ucrPending then
		tbl5.bK._ucrPending = true

		task.defer(function()
			tbl5.bK._ucrPending = false

			if tbl2 ~= nil and tbl5 ~= nil and tbl5.bK ~= nil and v4(tbl5.bK.UpdateColorsUsingRegistry) == "function" then
				tbl5.bK:UpdateColorsUsingRegistry()
			end
		end)
	end

	return frame
end

tbl5.bN_2.AddHeaderSearch = function(...) end

tbl5.bK.CreateWindow = function(arg)
	local v8 = tbl5.bN_2.new(tbl5.bd)
	arg._manager = v8

	local tbl15 = {
		AddTab = function(arg2, arg3, arg4)
			return v8:AddTab(arg3, arg4)
		end,
		BuildTabs = function()
			v8:BuildAllContent()
		end,
	}

	v8:AddHeaderSearch()

	tbl15.AddDialog = function()
		return {}
	end

	tbl15.Toggle = function()
		tbl5.a2.Visible = not tbl5.a2.Visible

		if not tbl5.a2.Visible and tbl5.bp.Visible then
			tbl5.bp.Visible = false
			tbl5.bo.Visible = false
			tbl7._detachTabContents()
			local v9 = workspace.CurrentCamera:FindFirstChild(tbl5.uiN.blur)

			if v9 then
				tbl5.aX:Create(v9, TweenInfo.new(0.3), { Size = 0 }):Play()

				task.delay(0.35, function()
					if v9.Parent then
						v9.Parent = nil
					end
				end)
			end
		end
	end

	return tbl15
end

tbl5.bK.Notify = function(arg, arg2)
	if not arg._manager then
		return
	end
	local str

	if v4(arg2) == "table" then
		local title = arg2.Title or ""
		local description = arg2.Description or ""
		str = (title ~= "" and ("<b><font color=\"#aabbff\">%*</font></b>\n"):format(title) or "") .. description
	else
		str = v2(arg2)
	end

	arg._manager:Notify(str, v4(arg2) == "table" and arg2.Time or 3)
end

tbl5.bK.AddDraggableLabel = function(arg, arg2)
	if not arg._manager then
		return {
			SetText = function()
			end,
			SetVisible = function()
			end,
			Destroy = function()
			end,
		}
	end

	return arg._manager:AddDraggableLabel(arg2)
end

tbl6.UI.lib = tbl5.bK
tbl6.UI.lib:Notify({ Title = "LuWare", Description = "Loading LuWare...", Time = 3 })
tbl7.flushKeyNotifies()

local function fn7()
	local fn8 = delfile or function()
	end

	local httpService = tbl4.HttpService

	local fn9 = isfile or function()
		return false
	end

	local fn10 = listfiles or function()
		return {}
	end

	local tbl15 = { Library = nil, Folder = "LuWare", SubFolder = "", Ignore = {}, AutoloadConfig = nil }

	local function fn11(arg)
		return arg:match("^%s*(.-)%s*$")
	end

	local function fn12(arg)
		return v5(arg) ~= "string" or fn11(arg) == ""
	end

	local function fn13()
		if fn12(tbl15.Folder) then
			return false
		end

		if fn12(tbl15.SubFolder) then
			return tbl15.Folder .. "/settings"
		end
		return (("%*/settings/%*"):format(tbl15.Folder, tbl15.SubFolder))
	end

	local function fn14(arg)
		local v8 = fn13()
		return v8 and ("%*/%*.json"):format(v8, arg) or false
	end

	local function fn15()
		local v8 = fn13()
		return v8 and v8 .. "/autoload.txt" or false
	end

	local function fn16(arg)
		local v8 = fn14(arg)
		if v4(fn9) ~= "function" then
			return false
		end
		return v8 and fn9(v8) or false
	end

	local function fn17()
		if v4(makefolder) == "function" then
			makefolder(tbl15.Folder)
		end

		if v4(makefolder) == "function" then
			makefolder(tbl15.Folder .. "/settings")
		end

		if not fn12(tbl15.SubFolder) then
			if v4(makefolder) == "function" then
				local v8 = makefolder
				local str = ("%*/settings/%*"):format(tbl15.Folder, tbl15.SubFolder)
				v8(str)
			end
		end
	end

	local tbl16 = {}

	local function fn18(type_, arg, arg2, arg3)
		tbl16[type_] = {
			Save = function(idx, arg4)
				local v8 = arg2(idx, arg4)
				v8._type = type_
				v8.idx = idx
				return v8
			end,
			Load = function(arg4, arg5)
				local library = tbl15.Library and tbl15.Library[arg]
				arg3(library and library[arg4], arg5)
			end,
		}
	end

	fn18("Toggle", "Toggles", function(arg, arg2)
		return { value = arg2.Value }
	end, function(arg, arg2)
		if not arg then
			return
		end

		if arg.Value == arg2.value then
			arg:RunChanged()
		else
			arg:SetValue(arg2.value)
		end
	end)

	fn18("Slider", "Options", function(arg, arg2)
		return { value = v2(arg2.Value) }
	end, function(arg, arg2)
		if not arg then
			return
		end
		local value = arg2.value

		if v2(arg.Value) == value then
			arg:RunChanged()
		else
			arg:SetValue(arg2.value)
		end
	end)

	fn18("Dropdown", "Options", function(arg, arg2)
		return { value = arg2.Value, multi = arg2.Multi }
	end, function(arg, arg2)
		if not arg then
			return
		end

		if arg.Value == arg2.value then
			arg:RunChanged()
		else
			arg:SetValue(arg2.value)
		end
	end)

	fn18("Input", "Options", function(arg, arg2)
		return { text = arg2.Value }
	end, function(arg, arg2)
		if not arg then
			return
		end

		if arg.Value == arg2.text then
			arg:RunChanged()
		else
			arg:SetValue(arg2.text)
		end
	end)

	fn18("Keybind", "Options", function(arg, arg2)
		return { value = arg2.Value and arg2.Value ~= Enum.KeyCode.Unknown and arg2.Value.Name or "" }
	end, function(arg, arg2)
		if not arg then
			return
		end
		local unknown = arg2.value and arg2.value ~= "" and Enum.KeyCode[arg2.value] or Enum.KeyCode.Unknown

		if arg.Value ~= unknown then
			arg:SetValue(unknown)
		end
	end)

	tbl15.SetLibrary = function(arg, library)
		arg.Library = library
	end

	tbl15.SetFolder = function(arg, folder)
		arg.Folder = folder or "LuWare"
		fn17()
	end

	tbl15.SetSubFolder = function(arg, subFolder)
		arg.SubFolder = subFolder or ""
		fn17()
	end

	tbl15.IgnoreThemeSettings = function(arg)
		for _, v8 in ipairs({ "ThemePreset", "TMcR1", "TMcG1", "TMcB1", "TMcR2", "TMcG2", "TMcB2", "TMAutoLoad" }) do
			arg.Ignore[v8] = true
		end
	end

	tbl15.SetIgnoreIndexes = function(arg, arg2)
		for _, v8 in ipairs(arg2) do
			arg.Ignore[v8] = true
		end
	end

	tbl15.RefreshConfigList = function()
		local v8 = fn13()
		if not v8 then
			return {}
		end
		local flag = v4(fn10) == "function"

		if flag then
			aj = fn10(v8)
		end

		if not flag or v4(aj) ~= "table" then
			return {}
		end
		local tbl17 = {}

		for _, v9 in ipairs(aj) do
			local match = v9:gsub("\\", "/"):match("/([^/]+)%.json$") or v9:match("([^/]+)%.json$")

			if match and match ~= "autoload" then
				insert(tbl17, match)
			end
		end

		return tbl17
	end

	tbl15.SaveJSON = function(arg, arg2)
		local library = arg.Library
		if not library then
			return "{}", false, "No library"
		end
		local tbl17 = { timestamp = os.date("%d.%m.%Y %H:%M:%S"), name = arg2 or "", objects = {} }
		local v8 = pairs
		local toggles = library.Toggles or {}

		for k_, toggle in v8(toggles) do
			if not arg.Ignore[k_] and toggle.Type then
				local v9 = tbl16[toggle.Type]

				if v9 then
					insert(tbl17.objects, v9.Save(k_, toggle))
				end
			end
		end

		local v9 = pairs
		local options = library.Options or {}

		for k_, option in v9(options) do
			if not arg.Ignore[k_] and option.Type then
				local v10 = tbl16[option.Type]

				if v10 then
					insert(tbl17.objects, v10.Save(k_, option))
				end
			end
		end

		local flag = httpService ~= nil and v4(httpService.JSONEncode) == "function"
		local json = nil

		if flag then
			json = httpService:JSONEncode(tbl17)
		end

		if not flag then
			return "{}", false, "Encode failed"
		end
		return json, true
	end

	tbl15.Save = function(arg, arg2)
		if fn12(arg2) or string.lower(arg2) == "autoload" then
			return false, "Invalid name"
		end
		local v8 = fn14(arg2)
		if not v8 then
			return false, "Invalid path"
		end
		fn17()
		local v9, v10, v11 = arg:SaveJSON(arg2)
		if not v10 then
			return false, v11
		end
		local flag = v4(writefile) == "function"

		if flag then
			j = writefile(v8, v9)
		end

		return flag, j and v2(j) or nil
	end

	tbl15.LoadJSON = function(arg, arg2)
		if fn12(arg2) then
			return false, "Empty"
		end
		local flag = httpService ~= nil and v4(httpService.JSONDecode) == "function"
		local data = nil

		if flag then
			data = httpService:JSONDecode(arg2)
		end

		if not flag or v4(data) ~= "table" or v4(data.objects) ~= "table" then
			return false, "Decode failed"
		end

		for _, object in ipairs(data.objects) do
			if object._type and object.idx and not arg.Ignore[object.idx] then
				local v8 = tbl16[object._type]

				if v8 then
					task.defer(v8.Load, object.idx, object)
				end
			end
		end

		return true
	end

	tbl15.Load = function(arg, arg2)
		if fn12(arg2) then
			return false, "No config selected"
		end
		local v8 = fn14(arg2)
		if not v8 or not fn9(v8) then
			return false, "Config not found"
		end
		local flag = v4(readfile) == "function"

		if flag then
			ak = readfile(v8)
		end

		if not flag then
			return false, "Read failed"
		end
		return arg:LoadJSON(ak)
	end

	tbl15.Delete = function(arg, arg2)
		if fn12(arg2) then
			return false, "No config selected"
		end
		local v8 = fn14(arg2)
		if not v8 or not fn9(v8) then
			return false, "Not found"
		end
		local flag = v4(fn8) == "function"

		if flag then
			ak = fn8(v8)
		end

		if not flag then
			return false, v2(ak)
		end

		if arg2 == arg.AutoloadConfig then
			arg:DeleteAutoLoadConfig()
		end

		return true
	end

	tbl15.GetAutoloadConfig = function(arg)
		fn17()
		local v8 = fn15()
		if not v8 then
			return "none", false, "Invalid path"
		end

		if not fn9(v8) then
			return "none", false, "Not set"
		end
		local flag = v4(readfile) == "function"

		if flag then
			aj = readfile(v8)
		end

		if not flag or v4(aj) ~= "string" then
			return "none", false, "Read failed"
		end
		aj = fn11(aj)
		if not fn16(aj) then
			return "none", false, "Config not found"
		end
		arg.AutoloadConfig = aj
		return aj, true
	end

	tbl15.SaveAutoloadConfig = function(arg, autoloadConfig)
		if fn12(autoloadConfig) then
			return false, "No config selected"
		end
		fn17()
		local v8 = fn15()
		if not v8 then
			return false, "Invalid path"
		end

		if not fn16(autoloadConfig) then
			return false, "Config does not exist"
		end
		local flag = v4(writefile) == "function"

		if flag then
			ak = writefile(v8, autoloadConfig)
		end

		if not flag then
			return false, v2(ak)
		end
		arg.AutoloadConfig = autoloadConfig
		return true
	end

	tbl15.LoadAutoloadConfig = function(arg)
		local autoloadConfig, v8, v9 = arg:GetAutoloadConfig()

		if not v8 then
			if v9 ~= "Not set" then
				if arg ~= nil and arg.Library ~= nil and v4(arg.Library.Notify) == "function" then
					local library = arg.Library
					local notify = library.Notify
					local str = ("Autoload: %*"):format(v9)
					notify(library, str)
				end
			end

			return
		end

		local v10, v11 = arg:Load(autoloadConfig)

		if not v10 then
			if arg ~= nil and arg.Library ~= nil and v4(arg.Library.Notify) == "function" then
				local library = arg.Library
				local notify = library.Notify
				local str = ("Autoload failed: %*"):format(v11)
				notify(library, str)
			end
		elseif arg ~= nil and arg.Library ~= nil and v4(arg.Library.Notify) == "function" then
			local library = arg.Library
			local notify = library.Notify
			local str = ("Loaded autoload: %*"):format(autoloadConfig)
			notify(library, str)
		end
	end

	tbl15.DeleteAutoLoadConfig = function(arg)
		local v8 = fn15()
		if not v8 then
			return false
		end

		if not fn9(v8) then
			return false
		end

		if v4(fn8) == "function" then
			fn8(v8)
		end

		arg.AutoloadConfig = nil
		return true
	end

	tbl15.BuildConfigSection = function(arg, arg2)
		assert(arg.Library, "Call SaveManager:SetLibrary first")
		local Configuration = arg2:AddRightGroupbox("Configuration")
		local library = arg.Library
		local saveManagerConfigName = nil
		local saveManagerConfigList = nil
		local saveManagerJson = nil
		local v8 = nil

		local function fn19()
			local v9 = arg:RefreshConfigList()
			saveManagerConfigList:SetValues(v9)
			saveManagerConfigList:SetValue(nil)
		end

		local function fn20()
			local autoloadConfig = arg:GetAutoloadConfig()
			local v9 = v8
			local setText = v9.SetText
			local str = ("Autoload: %*"):format(autoloadConfig)
			setText(v9, str)
			fn19()
		end

		Configuration:AddInput("SaveManager_ConfigName", { Text = "Config name" })

		Configuration:AddButton({
			Text = "Create / Overwrite",
			Func = function()
				local value = saveManagerConfigName.Value
				if fn12(value) or string.lower(value) == "autoload" then
					library:Notify("Invalid name.")
					return
				end
				local v9, v10 = arg:Save(value)

				if not v9 then
					local v11 = library
					local notify = v11.Notify
					local str = ("Save failed: %*"):format(v10)
					notify(v11, str)
					return
				end

				local v11 = library
				local notify = v11.Notify
				local str = ("Saved: %*"):format(value)
				notify(v11, str)
				fn19()
			end,
		})

		Configuration:AddDivider()
		Configuration:AddDropdown("SaveManager_ConfigList", { Text = "Config list", Values = arg:RefreshConfigList(), AllowNull = true, Multi = false })

		Configuration:AddButton({
			Text = "Load config",
			Func = function()
				local value = saveManagerConfigList.Value
				if fn12(value) then
					library:Notify("Select a config first.")
					return
				end
				local v9, v10 = arg:Load(value)

				if not v9 then
					local v11 = library
					local notify = v11.Notify
					local str = ("Load failed: %*"):format(v10)
					notify(v11, str)
					return
				end

				local v11 = library
				local notify = v11.Notify
				local str = ("Loaded: %*"):format(value)
				notify(v11, str)
			end,
		})

		Configuration:AddButton({
			Text = "Overwrite config",
			Func = function()
				local value = saveManagerConfigList.Value
				if fn12(value) then
					library:Notify("Select a config first.")
					return
				end
				local v9, v10 = arg:Save(value)

				if not v9 then
					local v11 = library
					local notify = v11.Notify
					local str = ("Overwrite failed: %*"):format(v10)
					notify(v11, str)
					return
				end

				local v11 = library
				local notify = v11.Notify
				local str = ("Overwrote: %*"):format(value)
				notify(v11, str)
			end,
		})

		Configuration:AddButton({
			Text = "Delete config",
			Func = function()
				local value = saveManagerConfigList.Value
				if fn12(value) then
					library:Notify("Select a config first.")
					return
				end
				local v9, v10 = arg:Delete(value)

				if not v9 then
					local v11 = library
					local notify = v11.Notify
					local str = ("Delete failed: %*"):format(v10)
					notify(v11, str)
					return
				end

				local v11 = library
				local notify = v11.Notify
				local str = ("Deleted: %*"):format(value)
				notify(v11, str)
				fn20()
			end,
		})

		Configuration:AddButton("Refresh list", fn19)
		Configuration:AddDivider()

		Configuration:AddButton({
			Text = "Set as autoload",
			Func = function()
				local value = saveManagerConfigList.Value
				if fn12(value) then
					library:Notify("Select a config first.")
					return
				end
				local v9, v10 = arg:SaveAutoloadConfig(value)

				if not v9 then
					local v11 = library
					local notify = v11.Notify
					local str = ("Autoload failed: %*"):format(v10)
					notify(v11, str)
					return
				end

				local v11 = library
				local notify = v11.Notify
				local str = ("Autoload set: %*"):format(value)
				notify(v11, str)
				fn20()
			end,
		})

		Configuration:AddButton({
			Text = "Reset autoload",
			Func = function()
				arg:DeleteAutoLoadConfig()
				library:Notify("Autoload cleared.")
				fn20()
			end,
		})

		v8 = Configuration:AddLabel("Autoload: none")
		Configuration:AddDivider()
		Configuration:AddInput("SaveManager_JSON", { Text = "Config JSON" })

		Configuration:AddButton("Import config", function()
			local value = saveManagerJson.Value
			if fn12(value) then
				library:Notify("JSON is empty.")
				return
			end
			local v9, v10 = arg:LoadJSON(value)

			if not v9 then
				local v11 = library
				local notify = v11.Notify
				local str = ("Import failed: %*"):format(v10)
				notify(v11, str)
				return
			end

			library:Notify("Config imported.")
		end)

		Configuration:AddButton("Export config", function()
			local v9, v10, v11 = arg:SaveJSON()
			if not v10 then
				library:Notify(v2(v11))
				return
			end
			saveManagerJson:SetValue(v9)

			if setclipboard_ then
				setclipboard_(v9)
				library:Notify("Copied to clipboard.")
			end
		end)

		saveManagerConfigName = library.Options.SaveManager_ConfigName
		saveManagerConfigList = library.Options.SaveManager_ConfigList
		saveManagerJson = library.Options.SaveManager_JSON
		arg:SetIgnoreIndexes({ "SaveManager_ConfigList", "SaveManager_ConfigName", "SaveManager_JSON", "SMLoad", "SMSaveName" })
		fn20()
		return Configuration
	end

	fn17()
	return tbl15
end

tbl6.UI.SaveManager = fn7()

local function fn8()
	local httpService = tbl4.HttpService

	local fn9 = isfile or function()
		return false
	end

	local fn10 = isfolder or function()
		return false
	end

	local fn11 = writefile or function()
	end

	local fn12 = readfile or function()
		return nil
	end

	local fn13 = makefolder or function()
	end

	local fn14 = delfile or function()
	end

	local function fn15(arg)
		return arg:match("^%s*(.-)%s*$")
	end

	local function fn16(arg)
		return v5(arg) ~= "string" or fn15(arg) == ""
	end

	local tbl15 = {
		"AccentColor",
		"AccentBrightColor",
		"BackgroundColor",
		"FontColor",
		"MainColor",
		"GroupTintColor",
	}

	local tbl16 = {
		"FontColor",
		"MainColor",
		"AccentColor",
		"BackgroundColor",
		"OutlineColor",
		"Surface1Color",
		"Surface2Color",
		"Surface3Color",
		"SliderInputColor",
		"SliderKnobColor",
		"SliderFillColor",
		"SliderPlaceholderColor",
		"ToggleOnColor",
		"ToggleOffColor",
		"DropdownColor",
		"TextBoxColor",
		"SearchBarColor",
		"KeybindColor",
		"ButtonColor",
		"ColorpickerElColor",
		"ParagraphColor",
		"Secondary1Color",
		"Secondary2Color",
		"Secondary3Color",
		"Variant1Color",
		"Variant2Color",
		"Variant3Color",
		"TitleGrad1Color",
		"TitleGrad2Color",
		"SepColor",
		"DividerColor",
	}

	local tbl17 = {
		Library = nil,
		Folder = "LuWare",
		DefaultThemeName = nil,
		BuiltInThemes = {
			Default = {
				1,
				{
					FontColor = "dcdcef",
					MainColor = "000000",
					AccentColor = "6e50ff",
					BackgroundColor = "040210",
					OutlineColor = "000080",
					Surface1Color = "040210",
					Surface2Color = "000000",
					Surface3Color = "0d0a1f",
					SliderInputColor = "000000",
					SliderKnobColor = "ffffff",
					SliderFillColor = "6e50ff",
					SliderPlaceholderColor = "6e6e78",
					ToggleOnColor = "6e50ff",
					ToggleOffColor = "000000",
					DropdownColor = "040210",
					TextBoxColor = "dcdcef",
					SearchBarColor = "ffffff",
					KeybindColor = "040210",
					ButtonColor = "dcdcef",
					ColorpickerElColor = "000080",
					ParagraphColor = "dcdcef",
					Secondary1Color = "dcdcef",
					Secondary2Color = "b6abf5",
					Secondary3Color = "6e6e78",
					Variant1Color = "6e50ff",
					Variant2Color = "4935ab",
					Variant3Color = "6e50ff",
					TitleGrad1Color = "000080",
					TitleGrad2Color = "5959ac",
					SepColor = "000080",
					DividerColor = "000080",
				},
			},
			["Midnight Rose"] = {
				2,
				{
					FontColor = "f8d4e8",
					MainColor = "1a0a1f",
					AccentColor = "e040a0",
					BackgroundColor = "0d0010",
					OutlineColor = "7a1060",
					Surface1Color = "0d0010",
					Surface2Color = "1a0a1f",
					Surface3Color = "32102e",
					SliderInputColor = "1a0a1f",
					SliderKnobColor = "ffffff",
					SliderFillColor = "e040a0",
					SliderPlaceholderColor = "896f84",
					ToggleOnColor = "e040a0",
					ToggleOffColor = "1a0a1f",
					DropdownColor = "0d0010",
					TextBoxColor = "f8d4e8",
					SearchBarColor = "ffffff",
					KeybindColor = "0d0010",
					ButtonColor = "f8d4e8",
					ColorpickerElColor = "7a1060",
					ParagraphColor = "f8d4e8",
					Secondary1Color = "f8d4e8",
					Secondary2Color = "f0a0cf",
					Secondary3Color = "7c6a74",
					Variant1Color = "e040a0",
					Variant2Color = "962a6e",
					Variant3Color = "e040a0",
					TitleGrad1Color = "7a1060",
					TitleGrad2Color = "a96498",
					SepColor = "7a1060",
					DividerColor = "7a1060",
				},
			},
			["Cyber Green"] = {
				3,
				{
					FontColor = "ccffcc",
					MainColor = "081208",
					AccentColor = "00ff66",
					BackgroundColor = "020802",
					OutlineColor = "006633",
					Surface1Color = "020802",
					Surface2Color = "081208",
					Surface3Color = "072e13",
					SliderInputColor = "081208",
					SliderKnobColor = "ffffff",
					SliderFillColor = "00ff66",
					SliderPlaceholderColor = "6a886a",
					ToggleOnColor = "00ff66",
					ToggleOffColor = "081208",
					DropdownColor = "020802",
					TextBoxColor = "ccffcc",
					SearchBarColor = "ffffff",
					KeybindColor = "020802",
					ButtonColor = "ccffcc",
					ColorpickerElColor = "006633",
					ParagraphColor = "ccffcc",
					Secondary1Color = "ccffcc",
					Secondary2Color = "85ffa8",
					Secondary3Color = "668066",
					Variant1Color = "00ff66",
					Variant2Color = "01a943",
					Variant3Color = "00ff66",
					TitleGrad1Color = "006633",
					TitleGrad2Color = "599c7a",
					SepColor = "006633",
					DividerColor = "006633",
				},
			},
			["Ocean Blue"] = {
				4,
				{
					FontColor = "d0ecff",
					MainColor = "071428",
					AccentColor = "2288ff",
					BackgroundColor = "020814",
					OutlineColor = "0a3080",
					Surface1Color = "020814",
					Surface2Color = "071428",
					Surface3Color = "0a2242",
					SliderInputColor = "071428",
					SliderKnobColor = "ffffff",
					SliderFillColor = "2288ff",
					SliderPlaceholderColor = "6c8094",
					ToggleOnColor = "2288ff",
					ToggleOffColor = "071428",
					DropdownColor = "020814",
					TextBoxColor = "d0ecff",
					SearchBarColor = "ffffff",
					KeybindColor = "020814",
					ButtonColor = "d0ecff",
					ColorpickerElColor = "0a3080",
					ParagraphColor = "d0ecff",
					Secondary1Color = "d0ecff",
					Secondary2Color = "93c9ff",
					Secondary3Color = "687680",
					Variant1Color = "2288ff",
					Variant2Color = "175bad",
					Variant3Color = "2288ff",
					TitleGrad1Color = "0a3080",
					TitleGrad2Color = "6078ac",
					SepColor = "0a3080",
					DividerColor = "0a3080",
				},
			},
			["Solar Flare"] = {
				5,
				{
					FontColor = "fff0d0",
					MainColor = "1a0800",
					AccentColor = "ff6a00",
					BackgroundColor = "0d0400",
					OutlineColor = "803300",
					Surface1Color = "0d0400",
					Surface2Color = "1a0800",
					Surface3Color = "351400",
					SliderInputColor = "1a0800",
					SliderKnobColor = "ffffff",
					SliderFillColor = "ff6a00",
					SliderPlaceholderColor = "8c7c68",
					ToggleOnColor = "ff6a00",
					ToggleOffColor = "1a0800",
					DropdownColor = "0d0400",
					TextBoxColor = "fff0d0",
					SearchBarColor = "ffffff",
					KeybindColor = "0d0400",
					ButtonColor = "fff0d0",
					ColorpickerElColor = "803300",
					ParagraphColor = "fff0d0",
					Secondary1Color = "fff0d0",
					Secondary2Color = "ffc187",
					Secondary3Color = "807868",
					Variant1Color = "ff6a00",
					Variant2Color = "aa4600",
					Variant3Color = "ff6a00",
					TitleGrad1Color = "803300",
					TitleGrad2Color = "ac7a59",
					SepColor = "803300",
					DividerColor = "803300",
				},
			},
			Monochrome = {
				6,
				{
					FontColor = "f0f0f0",
					MainColor = "151515",
					AccentColor = "8a8a8a",
					BackgroundColor = "0a0a0a",
					OutlineColor = "3a3a3a",
					Surface1Color = "0a0a0a",
					Surface2Color = "151515",
					Surface3Color = "232323",
					SliderInputColor = "151515",
					SliderKnobColor = "ffffff",
					SliderFillColor = "8a8a8a",
					SliderPlaceholderColor = "828282",
					ToggleOnColor = "8a8a8a",
					ToggleOffColor = "151515",
					DropdownColor = "0a0a0a",
					TextBoxColor = "f0f0f0",
					SearchBarColor = "ffffff",
					KeybindColor = "0a0a0a",
					ButtonColor = "f0f0f0",
					ColorpickerElColor = "3a3a3a",
					ParagraphColor = "f0f0f0",
					Secondary1Color = "f0f0f0",
					Secondary2Color = "cccccc",
					Secondary3Color = "787878",
					Variant1Color = "8a8a8a",
					Variant2Color = "5d5d5d",
					Variant3Color = "8a8a8a",
					TitleGrad1Color = "3a3a3a",
					TitleGrad2Color = "7f7f7f",
					SepColor = "3a3a3a",
					DividerColor = "3a3a3a",
				},
			},
			["Midnight Purple"] = {
				7,
				{
					FontColor = "e6d6ff",
					MainColor = "140a24",
					AccentColor = "a24dff",
					BackgroundColor = "0a0514",
					OutlineColor = "3d1780",
					Surface1Color = "0a0514",
					Surface2Color = "140a24",
					Surface3Color = "25123e",
					SliderInputColor = "140a24",
					SliderKnobColor = "ffffff",
					SliderFillColor = "a24dff",
					SliderPlaceholderColor = "7d7092",
					ToggleOnColor = "a24dff",
					ToggleOffColor = "140a24",
					DropdownColor = "0a0514",
					TextBoxColor = "e6d6ff",
					SearchBarColor = "ffffff",
					KeybindColor = "0a0514",
					ButtonColor = "e6d6ff",
					ColorpickerElColor = "3d1780",
					ParagraphColor = "e6d6ff",
					Secondary1Color = "e6d6ff",
					Secondary2Color = "cea6ff",
					Secondary3Color = "736b80",
					Variant1Color = "a24dff",
					Variant2Color = "6d34ad",
					Variant3Color = "a24dff",
					TitleGrad1Color = "3d1780",
					TitleGrad2Color = "8168ac",
					SepColor = "3d1780",
					DividerColor = "3d1780",
				},
			},
			Forest = {
				8,
				{
					FontColor = "d8f0d0",
					MainColor = "0c1a0c",
					AccentColor = "2e8b57",
					BackgroundColor = "050d05",
					OutlineColor = "0f3d20",
					Surface1Color = "050d05",
					Surface2Color = "0c1a0c",
					Surface3Color = "102815",
					SliderInputColor = "0c1a0c",
					SliderKnobColor = "ffffff",
					SliderFillColor = "2e8b57",
					SliderPlaceholderColor = "72856e",
					ToggleOnColor = "2e8b57",
					ToggleOffColor = "0c1a0c",
					DropdownColor = "050d05",
					TextBoxColor = "d8f0d0",
					SearchBarColor = "ffffff",
					KeybindColor = "050d05",
					ButtonColor = "d8f0d0",
					ColorpickerElColor = "0f3d20",
					ParagraphColor = "d8f0d0",
					Secondary1Color = "d8f0d0",
					Secondary2Color = "9ccda6",
					Secondary3Color = "6c7868",
					Variant1Color = "2e8b57",
					Variant2Color = "205f3a",
					Variant3Color = "2e8b57",
					TitleGrad1Color = "0f3d20",
					TitleGrad2Color = "63816e",
					SepColor = "0f3d20",
					DividerColor = "0f3d20",
				},
			},
			["Royal Gold"] = {
				9,
				{
					FontColor = "ffe8c8",
					MainColor = "1a1205",
					AccentColor = "d4a017",
					BackgroundColor = "0d0902",
					OutlineColor = "6b4d00",
					Surface1Color = "0d0902",
					Surface2Color = "1a1205",
					Surface3Color = "302307",
					SliderInputColor = "1a1205",
					SliderKnobColor = "ffffff",
					SliderFillColor = "d4a017",
					SliderPlaceholderColor = "8c7d66",
					ToggleOnColor = "d4a017",
					ToggleOffColor = "1a1205",
					DropdownColor = "0d0902",
					TextBoxColor = "ffe8c8",
					SearchBarColor = "ffffff",
					KeybindColor = "0d0902",
					ButtonColor = "ffe8c8",
					ColorpickerElColor = "6b4d00",
					ParagraphColor = "ffe8c8",
					Secondary1Color = "ffe8c8",
					Secondary2Color = "f0cf8a",
					Secondary3Color = "807464",
					Variant1Color = "d4a017",
					Variant2Color = "8e6b10",
					Variant3Color = "d4a017",
					TitleGrad1Color = "6b4d00",
					TitleGrad2Color = "9f8b59",
					SepColor = "6b4d00",
					DividerColor = "6b4d00",
				},
			},
			Crimson = {
				10,
				{
					FontColor = "f5cfcf",
					MainColor = "100202",
					AccentColor = "a50e2c",
					BackgroundColor = "060101",
					OutlineColor = "3d060d",
					Surface1Color = "060101",
					Surface2Color = "100202",
					Surface3Color = "220307",
					SliderInputColor = "100202",
					SliderKnobColor = "ffffff",
					SliderFillColor = "a50e2c",
					SliderPlaceholderColor = "826868",
					ToggleOnColor = "a50e2c",
					ToggleOffColor = "100202",
					DropdownColor = "060101",
					TextBoxColor = "f5cfcf",
					SearchBarColor = "ffffff",
					KeybindColor = "060101",
					ButtonColor = "f5cfcf",
					ColorpickerElColor = "3d060d",
					ParagraphColor = "f5cfcf",
					Secondary1Color = "f5cfcf",
					Secondary2Color = "d98b96",
					Secondary3Color = "7a6868",
					Variant1Color = "a50e2c",
					Variant2Color = "6d091d",
					Variant3Color = "a50e2c",
					TitleGrad1Color = "3d060d",
					TitleGrad2Color = "815d62",
					SepColor = "3d060d",
					DividerColor = "3d060d",
				},
			},
			Graphite = {
				11,
				{
					FontColor = "889695",
					MainColor = "2d2d2d",
					AccentColor = "464646",
					BackgroundColor = "141414",
					OutlineColor = "323232",
					Surface1Color = "141414",
					Surface2Color = "2d2d2d",
					Surface3Color = "303030",
					SliderInputColor = "2d2d2d",
					SliderKnobColor = "ffffff",
					SliderFillColor = "464646",
					SliderPlaceholderColor = "5a6261",
					ToggleOnColor = "464646",
					ToggleOffColor = "2d2d2d",
					DropdownColor = "141414",
					TextBoxColor = "889695",
					SearchBarColor = "ffffff",
					KeybindColor = "141414",
					ButtonColor = "889695",
					ColorpickerElColor = "323232",
					ParagraphColor = "889695",
					Secondary1Color = "889695",
					Secondary2Color = "717a79",
					Secondary3Color = "444b4a",
					Variant1Color = "464646",
					Variant2Color = "343434",
					Variant3Color = "464646",
					TitleGrad1Color = "323232",
					TitleGrad2Color = "7a7a7a",
					SepColor = "323232",
					DividerColor = "323232",
				},
			},
			["Ember Orange"] = {
				12,
				{
					FontColor = "ffe3c2",
					MainColor = "170c02",
					AccentColor = "cc5a00",
					BackgroundColor = "0b0501",
					OutlineColor = "5e2a00",
					Surface1Color = "0b0501",
					Surface2Color = "170c02",
					Surface3Color = "2d1502",
					SliderInputColor = "170c02",
					SliderKnobColor = "ffffff",
					SliderFillColor = "cc5a00",
					SliderPlaceholderColor = "8b7862",
					ToggleOnColor = "cc5a00",
					ToggleOffColor = "170c02",
					DropdownColor = "0b0501",
					TextBoxColor = "ffe3c2",
					SearchBarColor = "ffffff",
					KeybindColor = "0b0501",
					ButtonColor = "ffe3c2",
					ColorpickerElColor = "5e2a00",
					ParagraphColor = "ffe3c2",
					Secondary1Color = "ffe3c2",
					Secondary2Color = "edb37e",
					Secondary3Color = "807261",
					Variant1Color = "cc5a00",
					Variant2Color = "883c00",
					Variant3Color = "cc5a00",
					TitleGrad1Color = "5e2a00",
					TitleGrad2Color = "967559",
					SepColor = "5e2a00",
					DividerColor = "5e2a00",
				},
			},
			["Arctic Frost"] = {
				13,
				{
					FontColor = "e6f7ff",
					MainColor = "08131c",
					AccentColor = "4dd8ff",
					BackgroundColor = "03070c",
					OutlineColor = "14455e",
					Surface1Color = "03070c",
					Surface2Color = "08131c",
					Surface3Color = "102b37",
					SliderInputColor = "08131c",
					SliderKnobColor = "ffffff",
					SliderFillColor = "4dd8ff",
					SliderPlaceholderColor = "77858e",
					ToggleOnColor = "4dd8ff",
					ToggleOffColor = "08131c",
					DropdownColor = "03070c",
					TextBoxColor = "e6f7ff",
					SearchBarColor = "ffffff",
					KeybindColor = "03070c",
					ButtonColor = "e6f7ff",
					ColorpickerElColor = "14455e",
					ParagraphColor = "e6f7ff",
					Secondary1Color = "e6f7ff",
					Secondary2Color = "b0ecff",
					Secondary3Color = "737c80",
					Variant1Color = "4dd8ff",
					Variant2Color = "338faa",
					Variant3Color = "4dd8ff",
					TitleGrad1Color = "14455e",
					TitleGrad2Color = "668696",
					SepColor = "14455e",
					DividerColor = "14455e",
				},
			},
			Toxic = {
				14,
				{
					FontColor = "e4ffc2",
					MainColor = "101500",
					AccentColor = "99ff00",
					BackgroundColor = "060a02",
					OutlineColor = "3d5e00",
					Surface1Color = "060a02",
					Surface2Color = "101500",
					Surface3Color = "203100",
					SliderInputColor = "101500",
					SliderKnobColor = "ffffff",
					SliderFillColor = "99ff00",
					SliderPlaceholderColor = "7a8a61",
					ToggleOnColor = "99ff00",
					ToggleOffColor = "101500",
					DropdownColor = "060a02",
					TextBoxColor = "e4ffc2",
					SearchBarColor = "ffffff",
					KeybindColor = "060a02",
					ButtonColor = "e4ffc2",
					ColorpickerElColor = "3d5e00",
					ParagraphColor = "e4ffc2",
					Secondary1Color = "e4ffc2",
					Secondary2Color = "caff7e",
					Secondary3Color = "728061",
					Variant1Color = "99ff00",
					Variant2Color = "66a901",
					Variant3Color = "99ff00",
					TitleGrad1Color = "3d5e00",
					TitleGrad2Color = "819659",
					SepColor = "3d5e00",
					DividerColor = "3d5e00",
				},
			},
			Magma = {
				15,
				{
					FontColor = "ffd9c4",
					MainColor = "190b03",
					AccentColor = "ff3d00",
					BackgroundColor = "0d0301",
					OutlineColor = "70200a",
					Surface1Color = "0d0301",
					Surface2Color = "190b03",
					Surface3Color = "351103",
					SliderInputColor = "190b03",
					SliderKnobColor = "ffffff",
					SliderFillColor = "ff3d00",
					SliderPlaceholderColor = "8c7264",
					ToggleOnColor = "ff3d00",
					ToggleOffColor = "190b03",
					DropdownColor = "0d0301",
					TextBoxColor = "ffd9c4",
					SearchBarColor = "ffffff",
					KeybindColor = "0d0301",
					ButtonColor = "ffd9c4",
					ColorpickerElColor = "70200a",
					ParagraphColor = "ffd9c4",
					Secondary1Color = "ffd9c4",
					Secondary2Color = "ffa27f",
					Secondary3Color = "806c62",
					Variant1Color = "ff3d00",
					Variant2Color = "aa2900",
					Variant3Color = "ff3d00",
					TitleGrad1Color = "70200a",
					TitleGrad2Color = "a26e60",
					SepColor = "70200a",
					DividerColor = "70200a",
				},
			},
		},
	}

	local function fn17()
		return tbl17.Folder .. "/themes"
	end

	local function fn18(arg)
		return (("%*/%*.json"):format(fn17(), arg))
	end

	local function fn19()
		return fn17() .. "/default.txt"
	end

	local function fn20()
		if not fn10(tbl17.Folder) then
			fn13(tbl17.Folder)
		end

		local v8 = fn17()

		if not fn10(v8) then
			fn13(v8)
		end
	end

	tbl17.SetLibrary = function(arg, library)
		arg.Library = library
	end

	tbl17.SetFolder = function(arg, folder)
		arg.Folder = folder or "LuWare"
		fn20()
	end

	tbl17.ReloadCustomThemes = function()
		fn20()

		local v8, v9 = v6(listfiles or function()
			return {}
		end, fn17())

		if not v8 or v4(v9) ~= "table" then
			return {}
		end
		local tbl18 = {}

		for _, v10 in ipairs(v9) do
			local match = v10:match("(.+)%..+$")

			if match then
				local pos = match:gsub("\\", "/"):find("/[^/]*$")
				pos = pos and match:sub(pos + 1) or match

				if pos ~= "default" then
					insert(tbl18, pos)
				end
			end
		end

		return tbl18
	end

	tbl17.GetCustomTheme = function(arg, arg2)
		if fn16(arg2) then
			return nil
		end
		local v8 = fn18(arg2)
		if not fn9(v8) then
			return nil
		end
		local flag = v4(fn12) == "function"

		if flag then
			i = fn12(v8)
		end

		if not flag then
			return nil
		end
		local flag2 = httpService ~= nil and v4(httpService.JSONDecode) == "function"

		if flag2 then
			k = httpService:JSONDecode(i)
		end

		return flag2 and v4(k) == "table" and k or nil
	end

	tbl17.SaveCustomTheme = function(arg, arg2)
		if fn16(arg2) or arg2:lower() == "default" then
			return false, "Invalid name"
		end
		fn20()
		local library = arg.Library
		local tbl18 = {}

		for _, v8 in ipairs(tbl16) do
			local v9 = library.Options[v8]
			tbl18[v8] = v9 and v9.Value:ToHex() or "ffffff"
		end

		local flag = httpService ~= nil and v4(httpService.JSONEncode) == "function"

		if flag then
			j = httpService:JSONEncode(tbl18)
		end

		if not flag then
			return false, "Encode failed"
		end
		local flag2 = v4(fn11) == "function"

		if flag2 then
			local v8 = j
			l = fn11(fn18(arg2), v8)
		end

		return flag2 or false, l
	end

	tbl17.DeleteTheme = function(arg, arg2)
		if fn16(arg2) then
			return false, "No theme selected"
		end
		local v8 = fn18(arg2)
		if not fn9(v8) then
			return false, "File not found"
		end
		local flag = v4(fn14) == "function"

		if flag then
			i = fn14(v8)
		end

		if not flag then
			return false, v2(i)
		end

		if arg2 == arg.DefaultThemeName then
			arg:ClearDefault()
		end

		return true
	end

	tbl17.GetDefaultTheme = function(arg)
		fn20()
		local v8 = fn19()
		if not fn9(v8) then
			return "none", false
		end
		local flag = v4(fn12) == "function"

		if flag then
			h = fn12(v8)
		end

		if not (flag and v4(h) == "string") then
			return "none", false
		end
		h = fn15(h)
		if not (arg.BuiltInThemes[h] or fn9(fn18(h))) then
			return "none", false
		end
		arg.DefaultThemeName = h
		return h, true
	end

	tbl17.SetDefault = function(arg, defaultThemeName)
		if fn16(defaultThemeName) then
			return false, "No theme selected"
		end
		fn20()
		if not (arg.BuiltInThemes[defaultThemeName] or fn9(fn18(defaultThemeName))) then
			return false, "Theme not found"
		end
		local flag = v4(fn11) == "function"

		if flag then
			h = fn11(fn19(), defaultThemeName)
		end

		if flag then
			arg.DefaultThemeName = defaultThemeName
		end

		return flag, h
	end

	tbl17.ClearDefault = function(arg)
		fn20()
		local v8 = fn19()

		if fn9(v8) then
			if v4(fn14) == "function" then
				fn14(v8)
			end
		end

		arg.DefaultThemeName = nil
	end

	tbl17.ApplyTheme = function(arg, arg2)
		if fn16(arg2) then
			return false, "No theme"
		end
		local library = arg.Library
		local customTheme = arg:GetCustomTheme(arg2)

		if not customTheme then
			local v8 = arg.BuiltInThemes[arg2]
			if not v8 then
				return false, "Theme not found"
			end
			customTheme = v8[2]
		end

		local tbl18 = {}

		for _, v8 in _ipairs(tbl16) do
			insert(tbl18, v8)
		end

		for _, v8 in _ipairs(tbl15) do
			insert(tbl18, v8)
		end

		for _, v8 in _ipairs(tbl18) do
			local v9 = customTheme[v8]

			if v9 then
				local flag = Color3 ~= nil and v4(Color3.fromHex) == "function"

				if flag then
					m = Color3.fromHex(v9)
				end

				if flag and v5(m) == "Color3" then
					library.Scheme[v8] = m
					local v10 = library.Options[v8]

					if v10 then
						v10.Value = m

						if v10.SetHSVFromRGB then
							if v10 ~= nil and v4(v10.SetHSVFromRGB) == "function" then
								v10:SetHSVFromRGB(m)
							end
						end

						if v10.Display then
							if v10 ~= nil and v4(v10.Display) == "function" then
								v10:Display()
							end
						end
					end
				end
			end
		end

		library:UpdateColorsUsingRegistry()
		return true
	end

	tbl17.LoadDefault = function(arg)
		local defaultTheme, v8 = arg:GetDefaultTheme()
		if not v8 then
			return
		end

		if arg:ApplyTheme(defaultTheme) then
			arg.Library:Notify(format("Applied default theme: %s", defaultTheme))
		end
	end

	tbl17.BuildConfigSection = function(arg, arg2)
		assert(arg.Library, "Call ThemeManager:SetLibrary(lib) first")
		local library = arg.Library
		local Themes = arg2:AddLeftGroupbox("Themes")
		local ThemeManager_CustomList = nil
		local ThemeManager_BuiltinList = nil
		local v8 = nil

		local function fn21()
			if ThemeManager_CustomList then
				ThemeManager_CustomList:SetValues(arg:ReloadCustomThemes())
				ThemeManager_CustomList:SetValue(nil)
			end
		end

		local function fn22()
			local defaultTheme = arg:GetDefaultTheme()

			if v8 then
				local v9 = v8
				local setText = v9.SetText
				local str = ("Default: %*"):format(defaultTheme)
				setText(v9, str)
			end

			if ThemeManager_BuiltinList and ThemeManager_BuiltinList.SetValue then
				defaultTheme = defaultTheme and arg.BuiltInThemes[defaultTheme] and defaultTheme or nil

				if ThemeManager_BuiltinList.Value ~= defaultTheme then
					ThemeManager_BuiltinList:SetValue(defaultTheme)
				end
			end

			fn21()
		end

		local function fn23(arg3, arg4, arg5)
			Themes:AddLabel(arg3):AddColorPicker(arg4, { Default = library.Scheme[arg4] or arg5 or Color3.new(1, 1, 1), Title = arg3 })
			local v9 = library.Options[arg4]

			if v9 then
				v9:OnChanged(function()
					library.Scheme[arg4] = v9.Value
					library:UpdateColorsUsingRegistry()
				end)
			end

			return v9
		end

		Themes:AddLabel("Surface")
		fn23("Surface 1", "Surface1Color", tbl3.Theme.Dark)
		fn23("Surface 2", "Surface2Color", tbl3.Theme.GroupBg)
		fn23("Surface 3", "Surface3Color", tbl3.Theme.GroupTint)
		Themes:AddDivider()
		Themes:AddLabel("Primary")
		fn23("Slider Input", "SliderInputColor", tbl3.Theme.SliderInput)
		fn23("Slider Knob", "SliderKnobColor", tbl3.Theme.SliderKnob)
		fn23("Slider Fill", "SliderFillColor", tbl3.Theme.SliderFill)
		fn23("Slider Placeholder", "SliderPlaceholderColor", tbl3.Theme.SliderPlaceholder)
		fn23("Toggle On", "ToggleOnColor", tbl3.Theme.ToggleOn)
		fn23("Toggle Off", "ToggleOffColor", tbl3.Theme.ToggleOff)
		fn23("Dropdown", "DropdownColor", tbl3.Theme.Dropdown)
		fn23("TextBox", "TextBoxColor", tbl3.Theme.TextBox)
		fn23("Search Bar", "SearchBarColor", tbl3.Theme.SearchBar)
		fn23("Keybind", "KeybindColor", tbl3.Theme.Keybind)
		fn23("Button", "ButtonColor", tbl3.Theme.Button)
		fn23("Colorpicker", "ColorpickerElColor", tbl3.Theme.ColorpickerEl)
		Themes:AddDivider()
		Themes:AddLabel("Secondary")
		fn23("Secondary 1", "Secondary1Color", tbl3.Theme.Font)
		fn23("Secondary 2", "Secondary2Color", tbl3.Theme.Font)
		fn23("Secondary 3", "Secondary3Color", tbl3.Theme.Font)
		fn23("Paragraph", "ParagraphColor", tbl3.Theme.Font)
		Themes:AddDivider()
		Themes:AddLabel("Secondary Variant")
		fn23("Variant 1", "Variant1Color", tbl3.Theme.Accent)
		fn23("Variant 2", "Variant2Color", tbl3.Theme.Accent)
		fn23("Variant 3", "Variant3Color", tbl3.Theme.Accent)
		Themes:AddDivider()
		Themes:AddLabel("Details")
		fn23("Outline color", "OutlineColor")
		fn23("Title grad 1", "TitleGrad1Color", tbl3.Theme.TitleGrad1)
		fn23("Title grad 2", "TitleGrad2Color", tbl3.Theme.TitleGrad2)
		fn23("Separator", "SepColor", tbl3.Theme.Sep)
		fn23("Divider", "DividerColor", tbl3.Theme.Divider)
		Themes:AddDivider()
		local tbl18 = {}

		for k_ in pairs(arg.BuiltInThemes) do
			insert(tbl18, k_)
		end

		table.sort(tbl18, function(arg3, arg4)
			return arg.BuiltInThemes[arg3][1] < arg.BuiltInThemes[arg4][1]
		end)

		ThemeManager_BuiltinList = Themes:AddDropdown("ThemeManager_BuiltinList", { Text = "Presets", Values = tbl18, AllowNull = true, Multi = false })

		Themes:AddButton({
			Text = "Apply preset",
			Func = function()
				local value = library.Options.ThemeManager_BuiltinList and library.Options.ThemeManager_BuiltinList.Value
				if fn16(value) then
					library:Notify("Select a preset first.")
					return
				end
				arg:ApplyTheme(value)
				local v9 = library
				local notify = v9.Notify
				local str = ("Applied: %*"):format(value)
				notify(v9, str)
				fn22()

				if ThemeManager_BuiltinList and ThemeManager_BuiltinList.SetValue then
					ThemeManager_BuiltinList:SetValue(value)
				end
			end,
		})

		Themes:AddButton({
			Text = "Set preset as default",
			Func = function()
				local value = library.Options.ThemeManager_BuiltinList and library.Options.ThemeManager_BuiltinList.Value
				if fn16(value) then
					library:Notify("Select a preset first.")
					return
				end
				arg:SetDefault(value)
				local v9 = library
				local notify = v9.Notify
				local str = ("Default set to: %*"):format(value)
				notify(v9, str)
				fn22()
			end,
		})

		Themes:AddDivider()
		Themes:AddInput("ThemeManager_CustomName", { Text = "New theme name" })

		Themes:AddButton({
			Text = "Save custom theme",
			Func = function()
				local value = library.Options.ThemeManager_CustomName and library.Options.ThemeManager_CustomName.Value
				if fn16(value) then
					library:Notify("Enter a name first.")
					return
				end
				local v9, v10 = arg:SaveCustomTheme(value)

				if v9 then
					local v11 = library
					local notify = v11.Notify
					local str = ("Saved: %*"):format(value)
					notify(v11, str)
				else
					local v11 = library
					local notify = v11.Notify
					local str = ("Save failed: %*"):format(v10)
					notify(v11, str)
				end

				fn21()
			end,
		})

		ThemeManager_CustomList = Themes:AddDropdown("ThemeManager_CustomList", { Text = "Custom themes", Values = arg:ReloadCustomThemes(), AllowNull = true, Multi = false })

		Themes:AddButton({
			Text = "Load custom",
			Func = function()
				local value = library.Options.ThemeManager_CustomList and library.Options.ThemeManager_CustomList.Value
				if fn16(value) then
					library:Notify("Select a theme first.")
					return
				end
				local v9, v10 = arg:ApplyTheme(value)

				if v9 then
					local v11 = library
					local notify = v11.Notify
					local str = ("Loaded: %*"):format(value)
					notify(v11, str)
				else
					local v11 = library
					local notify = v11.Notify
					local str = ("Load failed: %*"):format(v10)
					notify(v11, str)
				end
			end,
		})

		Themes:AddButton({
			Text = "Set custom as default",
			Func = function()
				local value = library.Options.ThemeManager_CustomList and library.Options.ThemeManager_CustomList.Value
				if fn16(value) then
					library:Notify("Select a theme first.")
					return
				end
				arg:SetDefault(value)
				local v9 = library
				local notify = v9.Notify
				local str = ("Default set to: %*"):format(value)
				notify(v9, str)
				fn22()
			end,
		})

		Themes:AddButton({
			Text = "Delete custom",
			Func = function()
				local value = library.Options.ThemeManager_CustomList and library.Options.ThemeManager_CustomList.Value
				if fn16(value) then
					library:Notify("Select a theme first.")
					return
				end
				local v9, v10 = arg:DeleteTheme(value)

				if v9 then
					local v11 = library
					local notify = v11.Notify
					local str = ("Deleted: %*"):format(value)
					notify(v11, str)
				else
					local v11 = library
					local notify = v11.Notify
					local str = ("Delete failed: %*"):format(v10)
					notify(v11, str)
				end

				fn22()
			end,
		})

		Themes:AddButton({ Text = "Refresh list", Func = fn21 })
		Themes:AddDivider()

		Themes:AddButton({
			Text = "Clear default theme",
			Func = function()
				arg:ClearDefault()
				library:Notify("Default theme cleared.")
				fn22()
			end,
		})

		v8 = Themes:AddLabel("Default: none")

		arg:SetIgnoreIndexes({
			"ThemeManager_BuiltinList",
			"ThemeManager_CustomName",
			"ThemeManager_CustomList",
			"AccentColor",
			"BackgroundColor",
			"FontColor",
			"MainColor",
			"OutlineColor",
		})

		arg:LoadDefault()
		fn22()
		return Themes
	end

	tbl17.SetIgnoreIndexes = function(arg, arg2)
		if arg.Library and arg.Library.SaveManager then
			if arg ~= nil and arg.Library ~= nil and arg.Library.SaveManager ~= nil and v4(arg.Library.SaveManager.SetIgnoreIndexes) == "function" then
				arg.Library.SaveManager:SetIgnoreIndexes(arg2)
			end
		end
	end

	fn20()
	return tbl17
end

tbl6.UI.ThemeManager = fn8()
tbl5.aX_2 = "https://luware.filho.wtf/version.lua"

tbl7.fetch = function(arg, arg2)
	local flag = v5(request_) == "function" and request_({ Url = arg, Method = "GET" }) or nil
	local body = v5(flag) == "table" and v4(flag.Body) == "string" and flag.Body ~= "" and flag.Body or nil
	if not body or body == "" then
		return arg2
	end
	local match = body:match("^%s*(.-)%s*$")
	local chunk = loadstring(match)

	if chunk then
		local flag2 = v4(chunk) == "function"

		if flag2 then
			ah = chunk()
		end

		if flag2 and ah ~= nil then
			return v2(ah)
		end
	end

	return match
end

do
	local game_ = tbl6.Game
	local format2 = ("v%*").format
	local str = v2(tbl7.fetch(tbl5.aX_2, "0.0.5")):gsub("^v", "")
	game_.version = format2("v%*", str)
end

do
	local v8, v9 = v6(function()
		tbl6.UI.window = tbl6.UI.lib:CreateWindow({
			Title = "LuWare",
			Footer = ("version: %*    Hello %*!    By: @l.u.a.u"):format(tbl6.Game.version, tbl6.Player.LocalPlayer.Name),
			Size = udim2(580, 460),
			ShowCustomCursor = false,
			Icon = 109752177767101,
			ShowMobileButtons = false,
		})
	end)

	tbl5.aY_2 = v8
	tbl5.aZ_2 = v9
end

if not tbl5.aY_2 or not tbl6.UI.window then
	local v8 = error
	local str = ("[LW.X3] Window creation critical failure: %*"):format(tbl5.aZ_2)
	v8(str)
	return
end

if _updateVerText then
	if v4(_updateVerText) == "function" then
		_updateVerText()
	end
end

tbl5.a__2 = nil

tbl5.a__2 = tbl6.UI.window:AddDialog("PayVisitDialog", {
	Title = ("Hey %*!"):format(tbl6.Player.LocalPlayer.Name),
	Description = "Please pay our site and discord a visit!",
	AutoDismiss = true,
	OutsideClickDismiss = true,
	FooterButtons = {
		Site = {
			Title = "Copy Site",
			Variant = "Primary",
			Order = 1,
			Callback = function()
				setclipboard_("luware.filho.wtf")
			end,
		},
		Discord = {
			Title = "Copy Discord",
			Variant = "Secondary",
			Order = 2,
			Callback = function()
				setclipboard_("https://discord.gg/WqfkmTKKWh")
			end,
		},
	},
})

tbl7.createAuraAttachment = function(parent)
	local attachment = Instance.new("Attachment")
	attachment.Parent = parent
	insert(tbl6.Features.Visuals.auraParts, attachment)
	return attachment
end

tbl7.getAuraColor = function(arg)
	local auraColor = tbl6.Features.Visuals.AuraColor
	return Color3.new(clamp(auraColor.R * arg, 0, 1), clamp(auraColor.G * arg, 0, 1), clamp(auraColor.B * arg, 0, 1))
end

tbl7.createAuraEmitter = function(parent, name, texture, arg, arg2, arg3, rate, arg4, lightEmission, lockedToPart, zOffset, acceleration, drag, arg5)
	local particleEmitter = Instance.new("ParticleEmitter")
	particleEmitter.Name = name
	particleEmitter.Texture = texture
	local colorSequence = ColorSequence.new
	local tbl15 = {}
	local v8 = ColorSequenceKeypoint.new(0, tbl7.getAuraColor(1.35))
	local v9 = ColorSequenceKeypoint.new(0.25, tbl7.getAuraColor(1))
	local v10 = ColorSequenceKeypoint.new(0.6, tbl7.getAuraColor(0.72))
	tbl15[1] = v8
	tbl15[2] = v9
	tbl15[3] = v10

	do
		local values = table.pack(ColorSequenceKeypoint.new(1, tbl7.getAuraColor(0.42)))
		table.move(values, 1, values.n, 4, tbl15)
	end

	particleEmitter.Color = colorSequence(tbl15)
	particleEmitter.Size = NumberSequence.new(arg)
	particleEmitter.Transparency = NumberSequence.new(arg2)
	particleEmitter.Lifetime = NumberRange.new(arg3[1], arg3[2])
	particleEmitter.Rate = rate
	particleEmitter.Speed = NumberRange.new(arg4[1], arg4[2])
	particleEmitter.SpreadAngle = vector2(180, 180)
	particleEmitter.LightEmission = lightEmission
	particleEmitter.LightInfluence = 0
	particleEmitter.LockedToPart = lockedToPart
	particleEmitter.ZOffset = zOffset
	particleEmitter.Acceleration = acceleration
	particleEmitter.Drag = drag
	particleEmitter.Rotation = NumberRange.new(0, 360)
	particleEmitter.RotSpeed = NumberRange.new(-arg5, arg5)
	particleEmitter.Parent = parent
	return particleEmitter
end

tbl7.setupAura = function()
	tbl7.cleanupAura()
	if not tbl6.Features.Visuals.AuraEnabled then
		return
	end
	local character = tbl6.Player.LocalPlayer.Character
	local humanoidRootPart = character and character:FindFirstChild("HumanoidRootPart")
	if not character or not humanoidRootPart then
		return
	end

	for k_ in pairs(tbl7.GetDescendantCache(character)) do
		if k_.Parent and k_:IsA("BasePart") and k_.Name ~= "HumanoidRootPart" then
			local createAuraEmitter = tbl7.createAuraEmitter
			local v8 = tbl7.createAuraAttachment(k_)
			local tbl15 = {}
			local v9 = NumberSequenceKeypoint.new(0, 0.08)
			local v10 = NumberSequenceKeypoint.new(0.2, 0.3)
			local v11 = NumberSequenceKeypoint.new(0.5, 0.5)
			local v12 = NumberSequenceKeypoint.new(0.8, 0.2)
			local new = NumberSequenceKeypoint.new
			tbl15[1] = v9
			tbl15[2] = v10
			tbl15[3] = v11
			tbl15[4] = v12

			do
				local values = table.pack(new(1, 0))
				table.move(values, 1, values.n, 5, tbl15)
			end

			local tbl16 = {}
			local v13 = NumberSequenceKeypoint.new(0, 0.15)
			local v14 = NumberSequenceKeypoint.new(0.3, 0.35)
			local v15 = NumberSequenceKeypoint.new(0.6, 0.6)
			local new2 = NumberSequenceKeypoint.new
			tbl16[1] = v13
			tbl16[2] = v14
			tbl16[3] = v15

			do
				local values = table.pack(new2(1, 1))
				table.move(values, 1, values.n, 4, tbl16)
			end

			createAuraEmitter(v8, "AuraCore", "rbxassetid://258128463", tbl15, tbl16, { 0.25, 0.5 }, 25, { 0.15, 0.5 }, 1, true, 0.05, vector3(0, 1, 0), 3.5, 50)
			local createAuraEmitter2 = tbl7.createAuraEmitter
			local v16 = tbl7.createAuraAttachment(k_)
			local tbl17 = {}
			local v17 = NumberSequenceKeypoint.new(0, 0.15)
			local v18 = NumberSequenceKeypoint.new(0.25, 0.6)
			local v19 = NumberSequenceKeypoint.new(0.5, 0.9)
			local v20 = NumberSequenceKeypoint.new(0.75, 0.4)
			local new3 = NumberSequenceKeypoint.new
			tbl17[1] = v17
			tbl17[2] = v18
			tbl17[3] = v19
			tbl17[4] = v20

			do
				local values = table.pack(new3(1, 0))
				table.move(values, 1, values.n, 5, tbl17)
			end

			local tbl18 = {}
			local v21 = NumberSequenceKeypoint.new(0, 0.2)
			local v22 = NumberSequenceKeypoint.new(0.4, 0.45)
			local v23 = NumberSequenceKeypoint.new(0.7, 0.7)
			local new4 = NumberSequenceKeypoint.new
			tbl18[1] = v21
			tbl18[2] = v22
			tbl18[3] = v23

			do
				local values = table.pack(new4(1, 1))
				table.move(values, 1, values.n, 4, tbl18)
			end

			createAuraEmitter2(v16, "AuraFlame", "rbxassetid://241876428", tbl17, tbl18, { 0.4, 0.8 }, 18, { 0.4, 1 }, 0.95, false, 0.2, vector3(0, 1.8, 0), 2.5, 80)
			local createAuraEmitter3 = tbl7.createAuraEmitter
			local v24 = tbl7.createAuraAttachment(k_)
			local tbl19 = {}
			local v25 = NumberSequenceKeypoint.new(0, 0.03)
			local v26 = NumberSequenceKeypoint.new(0.3, 0.12)
			local v27 = NumberSequenceKeypoint.new(0.6, 0.08)
			local new5 = NumberSequenceKeypoint.new
			tbl19[1] = v25
			tbl19[2] = v26
			tbl19[3] = v27

			do
				local values = table.pack(new5(1, 0))
				table.move(values, 1, values.n, 4, tbl19)
			end

			local tbl20 = {}
			local v28 = NumberSequenceKeypoint.new(0, 0)
			local v29 = NumberSequenceKeypoint.new(0.5, 0.25)
			local new6 = NumberSequenceKeypoint.new
			tbl20[1] = v28
			tbl20[2] = v29

			do
				local values = table.pack(new6(1, 1))
				table.move(values, 1, values.n, 3, tbl20)
			end

			createAuraEmitter3(v24, "AuraSpark", "rbxassetid://28630837", tbl19, tbl20, { 0.2, 0.4 }, 30, { 0.3, 0.7 }, 1, true, -0.05, vector3(0, 2, 0), 4, 150)
			local createAuraEmitter4 = tbl7.createAuraEmitter
			local v30 = tbl7.createAuraAttachment(k_)
			local tbl21 = {}
			local v31 = NumberSequenceKeypoint.new(0, 0.12)
			local v32 = NumberSequenceKeypoint.new(0.2, 0.45)
			local v33 = NumberSequenceKeypoint.new(0.5, 0.7)
			local v34 = NumberSequenceKeypoint.new(0.8, 0.3)
			local new7 = NumberSequenceKeypoint.new
			tbl21[1] = v31
			tbl21[2] = v32
			tbl21[3] = v33
			tbl21[4] = v34

			do
				local values = table.pack(new7(1, 0))
				table.move(values, 1, values.n, 5, tbl21)
			end

			local tbl22 = {}
			local v35 = NumberSequenceKeypoint.new(0, 0.3)
			local v36 = NumberSequenceKeypoint.new(0.4, 0.55)
			local v37 = NumberSequenceKeypoint.new(0.7, 0.8)
			local new8 = NumberSequenceKeypoint.new
			tbl22[1] = v35
			tbl22[2] = v36
			tbl22[3] = v37

			do
				local values = table.pack(new8(1, 1))
				table.move(values, 1, values.n, 4, tbl22)
			end

			createAuraEmitter4(v30, "AuraWisp", "rbxassetid://258128463", tbl21, tbl22, { 0.5, 1 }, 12, { 0.6, 1.3 }, 0.9, false, 0.3, vector3(0, 1.2, 0), 1.5, 40)
			local createAuraEmitter5 = tbl7.createAuraEmitter
			local v38 = tbl7.createAuraAttachment(k_)
			local tbl23 = {}
			local v39 = NumberSequenceKeypoint.new(0, 0.06)
			local v40 = NumberSequenceKeypoint.new(0.3, 0.25)
			local v41 = NumberSequenceKeypoint.new(0.6, 0.15)
			local new9 = NumberSequenceKeypoint.new
			tbl23[1] = v39
			tbl23[2] = v40
			tbl23[3] = v41

			do
				local values = table.pack(new9(1, 0))
				table.move(values, 1, values.n, 4, tbl23)
			end

			local tbl24 = {}
			local v42 = NumberSequenceKeypoint.new(0, 0.1)
			local v43 = NumberSequenceKeypoint.new(0.5, 0.3)
			local new10 = NumberSequenceKeypoint.new
			tbl24[1] = v42
			tbl24[2] = v43

			do
				local values = table.pack(new10(1, 1))
				table.move(values, 1, values.n, 3, tbl24)
			end

			createAuraEmitter5(v38, "AuraDeep", "rbxassetid://258128463", tbl23, tbl24, { 0.3, 0.6 }, 22, { 0.2, 0.6 }, 1, true, 0.1, vector3(0, 0.6, 0), 5, 60)
		end
	end

	local v8 = tbl7.createAuraAttachment(humanoidRootPart)
	local pointLight = Instance.new("PointLight")
	pointLight.Name = "AuraPointLight"
	pointLight.Color = tbl6.Features.Visuals.AuraColor
	pointLight.Brightness = 2
	pointLight.Range = 5
	pointLight.Shadows = false
	pointLight.Parent = v8
	local tween = tbl4.TweenService:Create(pointLight, TweenInfo.new(1, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), { Brightness = 4, Range = 7 })
	local tween2 = tbl4.TweenService:Create(pointLight, TweenInfo.new(1, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), { Brightness = 1.5, Range = 4 })
	insert(tbl6.Features.Visuals.auraTweens, tween)
	insert(tbl6.Features.Visuals.auraTweens, tween2)
	local visuals = tbl6.Features.Visuals
	visuals.auraPulseToken = visuals.auraPulseToken + 1
	local auraPulseToken = tbl6.Features.Visuals.auraPulseToken

	task.spawn(function()
		local flag = tween

		while tbl6.Features.Visuals.AuraEnabled and tbl6.Features.Visuals.auraPulseToken == auraPulseToken and pointLight.Parent do
			flag:Play()
			flag.Completed:Wait()
			flag = flag == tween and tween2 or tween
		end
	end)
end

tbl7.cleanupAura = function()
	local visuals = tbl6.Features.Visuals
	visuals.auraPulseToken = visuals.auraPulseToken + 1

	for _, auraTween in ipairs(tbl6.Features.Visuals.auraTweens) do
		if auraTween ~= nil and v4(auraTween.Cancel) == "function" then
			auraTween:Cancel()
		end
	end

	tbl6.Features.Visuals.auraTweens = {}

	for _, auraPart in ipairs(tbl6.Features.Visuals.auraParts) do
		if auraPart and auraPart.Parent then
			destroy(auraPart)
		end
	end

	tbl6.Features.Visuals.auraParts = {}
end

tbl7.setAuraEnabled = function(arg)
	tbl6.Features.Visuals.AuraEnabled = arg == true

	if tbl6.Features.Visuals.AuraEnabled then
		tbl7.setupAura()
	else
		tbl7.cleanupAura()
	end
end

tbl7.setAuraColor = function(auraColor)
	if v5(auraColor) ~= "Color3" then
		return
	end
	tbl6.Features.Visuals.AuraColor = auraColor

	if tbl6.Features.Visuals.AuraEnabled then
		tbl7.setupAura()
	end
end

tbl7.onAuraCharacterAdded = function(arg)
	tbl7.cleanupAura()
	if not tbl6.Features.Visuals.AuraEnabled then
		return
	end
	arg:WaitForChild("Humanoid", 5)
	arg:WaitForChild("HumanoidRootPart", 5)

	if tbl6.Features.Visuals.AuraEnabled and tbl6.Player.LocalPlayer.Character == arg then
		tbl7.setupAura()
	end
end

tbl7.saveSkyLighting = function()
	if tbl6.Features.Visuals.SkyOriginalLighting then
		return
	end

	tbl6.Features.Visuals.SkyOriginalLighting = {
		Ambient = tbl4.Lighting.Ambient,
		OutdoorAmbient = tbl4.Lighting.OutdoorAmbient,
		ColorShift_Top = tbl4.Lighting.ColorShift_Top,
		ColorShift_Bottom = tbl4.Lighting.ColorShift_Bottom,
		FogColor = tbl4.Lighting.FogColor,
		FogStart = tbl4.Lighting.FogStart,
		FogEnd = tbl4.Lighting.FogEnd,
	}
end

tbl7.applySkyLighting = function()
	tbl7.saveSkyLighting()
	tbl4.Lighting.Ambient = tbl6.Features.Visuals.SkyColor
	tbl4.Lighting.OutdoorAmbient = tbl6.Features.Visuals.SkyColor:Lerp(Color3.new(1, 1, 1), 0.2)
	tbl4.Lighting.ColorShift_Top = tbl6.Features.Visuals.SkyColor:Lerp(Color3.new(1, 1, 1), 0.35)
	tbl4.Lighting.ColorShift_Bottom = tbl6.Features.Visuals.SkyColor:Lerp(Color3.new(0, 0, 0), 0.35)
	tbl4.Lighting.FogColor = tbl6.Features.Visuals.SkyFogColor
	tbl4.Lighting.FogStart = tbl6.Features.Visuals.SkyFogStart
	tbl4.Lighting.FogEnd = tbl6.Features.Visuals.SkyFogEnd

	if tbl6.Features.Visuals.SkyAtmosphere then
		destroy(tbl6.Features.Visuals.SkyAtmosphere)
	end

	tbl6.Features.Visuals.SkyAtmosphere = Instance.new("Atmosphere")
	tbl6.Features.Visuals.SkyAtmosphere.Name = "LuWareSkyAtmosphere"
	tbl6.Features.Visuals.SkyAtmosphere.Color = tbl6.Features.Visuals.SkyColor
	tbl6.Features.Visuals.SkyAtmosphere.Decay = tbl6.Features.Visuals.SkyFogColor
	tbl6.Features.Visuals.SkyAtmosphere.Density = 0.28
	tbl6.Features.Visuals.SkyAtmosphere.Haze = 1.2
	tbl6.Features.Visuals.SkyAtmosphere.Glare = 0.15
	tbl6.Features.Visuals.SkyAtmosphere.Parent = tbl4.Lighting
end

tbl7.cleanupSkyParticles = function()
	for _, skyPart in ipairs(tbl6.Features.Visuals.SkyParts) do
		if skyPart and skyPart.Parent then
			destroy(skyPart)
		end
	end

	tbl6.Features.Visuals.SkyParts = {}
end

tbl7.setupSkyParticles = function()
	tbl7.cleanupSkyParticles()
	if not tbl6.Features.Visuals.SkyParticlesEnabled then
		return
	end
	local character = tbl6.Player.LocalPlayer.Character
	character = character and character:FindFirstChild("HumanoidRootPart")
	if not character then
		return
	end
	local attachment = Instance.new("Attachment")
	attachment.Name = "LuWareSkyParticles"
	attachment.Parent = character
	local particleEmitter = Instance.new("ParticleEmitter")
	particleEmitter.Name = "SkyParticles"
	particleEmitter.Texture = "rbxassetid://258128463"
	particleEmitter.Color = ColorSequence.new(tbl6.Features.Visuals.SkyParticlesColor)
	particleEmitter.LightEmission = 0.45
	particleEmitter.LightInfluence = 0
	particleEmitter.Rate = 22
	particleEmitter.Lifetime = NumberRange.new(2, 4)
	particleEmitter.Speed = NumberRange.new(3, 8)
	particleEmitter.SpreadAngle = vector2(180, 180)
	local numberSequence = NumberSequence.new
	local tbl15 = {}
	local v8 = NumberSequenceKeypoint.new(0, 0.12)
	local v9 = NumberSequenceKeypoint.new(0.5, 0.28)
	local new = NumberSequenceKeypoint.new
	tbl15[1] = v8
	tbl15[2] = v9

	do
		local values = table.pack(new(1, 0))
		table.move(values, 1, values.n, 3, tbl15)
	end

	particleEmitter.Size = numberSequence(tbl15)
	local numberSequence2 = NumberSequence.new
	local tbl16 = {}
	local v10 = NumberSequenceKeypoint.new(0, 0.2)
	local v11 = NumberSequenceKeypoint.new(0.75, 0.55)
	local new2 = NumberSequenceKeypoint.new
	tbl16[1] = v10
	tbl16[2] = v11

	do
		local values = table.pack(new2(1, 1))
		table.move(values, 1, values.n, 3, tbl16)
	end

	particleEmitter.Transparency = numberSequence2(tbl16)
	particleEmitter.Acceleration = vector3(0, 2, 0)
	particleEmitter.Drag = 1
	particleEmitter.Rotation = NumberRange.new(0, 360)
	particleEmitter.RotSpeed = NumberRange.new(-80, 80)
	particleEmitter.Parent = attachment
	insert(tbl6.Features.Visuals.SkyParts, attachment)
end

tbl7.restoreSkyLighting = function()
	if tbl6.Features.Visuals.SkyAtmosphere then
		destroy(tbl6.Features.Visuals.SkyAtmosphere)
		tbl6.Features.Visuals.SkyAtmosphere = nil
	end

	if not tbl6.Features.Visuals.SkyOriginalLighting then
		return
	end

	for k_, v8 in pairs(tbl6.Features.Visuals.SkyOriginalLighting) do
		tbl4.Lighting[k_] = v8
	end

	tbl6.Features.Visuals.SkyOriginalLighting = nil
end

tbl7.setSkyEnabled = function(arg)
	tbl6.Features.Visuals.SkyEnabled = arg == true

	if tbl6.Features.Visuals.SkyEnabled then
		tbl7.applySkyLighting()
		tbl7.setupSkyParticles()
	else
		tbl7.cleanupSkyParticles()
		tbl7.restoreSkyLighting()
	end
end

tbl7.updateSkyColor = function(skyColor)
	if v5(skyColor) ~= "Color3" then
		return
	end
	tbl6.Features.Visuals.SkyColor = skyColor

	if tbl6.Features.Visuals.SkyEnabled then
		tbl7.applySkyLighting()
	end
end

tbl7.updateSkyFogColor = function(skyFogColor)
	if v5(skyFogColor) ~= "Color3" then
		return
	end
	tbl6.Features.Visuals.SkyFogColor = skyFogColor

	if tbl6.Features.Visuals.SkyEnabled then
		tbl7.applySkyLighting()
	end
end

tbl7.updateSkyParticlesColor = function(skyParticlesColor)
	if v5(skyParticlesColor) ~= "Color3" then
		return
	end
	tbl6.Features.Visuals.SkyParticlesColor = skyParticlesColor

	if tbl6.Features.Visuals.SkyEnabled then
		tbl7.setupSkyParticles()
	end
end

tbl7.updateSkyFogStart = function(arg)
	tbl6.Features.Visuals.SkyFogStart = tonumber(arg) or 0

	if tbl6.Features.Visuals.SkyEnabled then
		tbl7.applySkyLighting()
	end
end

tbl7.updateSkyFogEnd = function(arg)
	tbl6.Features.Visuals.SkyFogEnd = max(tbl6.Features.Visuals.SkyFogStart + 1, tonumber(arg) or 1000)

	if tbl6.Features.Visuals.SkyEnabled then
		tbl7.applySkyLighting()
	end
end

tbl7.onSkyCharacterAdded = function(arg)
	tbl7.cleanupSkyParticles()

	if tbl6.Features.Visuals.SkyEnabled and tbl6.Features.Visuals.SkyParticlesEnabled then
		arg:WaitForChild("HumanoidRootPart", 5)

		if tbl6.Player.LocalPlayer.Character == arg then
			tbl7.setupSkyParticles()
		end
	end
end

tbl7.destroyPerformanceHud = function()
	if tbl6.Features.Visuals.PerformanceHudConnection then
		tbl6.Features.Visuals.PerformanceHudConnection:Disconnect()
		tbl6.Features.Visuals.PerformanceHudConnection = nil
	end

	if tbl6.Features.Visuals.PerformanceHudGui then
		tbl6.Features.Visuals.PerformanceHudGui:Destroy()
		tbl6.Features.Visuals.PerformanceHudGui = nil
	end
end

tbl7.preparePerformanceHudAssets = function()
	local tbl15 = {
		cpu = "https://raw.githubusercontent.com/DoliScriptz/LuWare/refs/heads/main/assets/cpu.png",
		wifi = "https://raw.githubusercontent.com/DoliScriptz/LuWare/refs/heads/main/assets/wifi.png",
		meter = "https://raw.githubusercontent.com/DoliScriptz/LuWare/refs/heads/main/assets/meter.png",
	}

	if not isfolder("LuWare") then
		if v4(makefolder) == "function" then
			makefolder("LuWare")
		end
	end

	if not isfolder("LuWare/images") then
		if v4(makefolder) == "function" then
			makefolder("LuWare/images")
		end
	end

	for k_, v8 in pairs(tbl15) do
		local str = ("%*/%*.png"):format("LuWare/images", k_)

		if not isfile(str) then
			local flag = v5(request_) == "function" and request_({ Url = v8, Method = "GET" }) or nil
			local body = v5(flag) == "table" and v4(flag.Body) == "string" and flag.Body ~= "" and flag.Body or nil

			if body and #body > 0 then
				writefile(str, body)
			end
		end
	end
end

tbl7.getPerformanceHudAsset = function(arg)
	local getcustomasset_ = getcustomasset or _G.getcustomasset
	if v5(getcustomasset_) ~= "function" then
		return ""
	end
	local flag = v4(getcustomasset_) == "function"

	if flag then
		local str = ("LuWare/images/%*"):format(arg)
		ad = getcustomasset_(str)
	end

	return flag and ad or ""
end

tbl7.getLuWareWordmark = function()
	return "<font color=\"#6DBBFF\"><b>L</b></font><font color=\"#E8EDF7\"><b>u</b></font><font color=\"#6DBBFF\"><b>W</b></font><font color=\"#E8EDF7\"><b>a</b></font><font color=\"#6DBBFF\"><b>r</b></font><font color=\"#E8EDF7\"><b>e</b></font>"
end

tbl7.createPerformanceHud = function()
	tbl7.destroyPerformanceHud()
	if not tbl6.Features.Visuals.PerformanceHudEnabled then
		return
	end
	v7()
	local n = 60
	tbl6.Features.Visuals.PerformanceHudGui = tbl6.UI.lib:AddDraggableLabel(("%* <font color=\"#D7C2FF\">%*</font>  |  <font color=\"#8DEDB5\"><b>FPS 60</b></font>  |  <font color=\"#FFD46E\"><b>PING 0 ms</b></font>"):format(tbl7.getLuWareWordmark(), tbl6.Features.Visuals.PerformanceHudScriptName or "Script"), "activity", "Left")
	tbl6.Features.Visuals.PerformanceHudGui:SetVisible(true)
	local n2 = 0
	local v8 = v7()

	tbl6.Features.Visuals.PerformanceHudConnection = heartbeat:Connect(function()
		if not tbl6.Features.Visuals.PerformanceHudGui then
			tbl6.Features.Visuals.PerformanceHudConnection:Disconnect()
			tbl6.Features.Visuals.PerformanceHudConnection = nil
			return
		end

		n2 += 1
		local v9 = v7()

		if v9 - v8 >= 1 then
			n = n2
			n2 = 0
			v8 = v9
			local v10 = floor((tbl6.Player.LocalPlayer:GetNetworkPing() or 0) * 1000)
			local performanceHudGui = tbl6.Features.Visuals.PerformanceHudGui
			local setText = performanceHudGui.SetText
			local str = ("%* <font color=\"#D7C2FF\">%*</font>  |  <font color=\"#8DEDB5\"><b>FPS %*</b></font>  |  <font color=\"#FFD46E\"><b>PING %* ms</b></font>"):format(tbl7.getLuWareWordmark(), tbl6.Features.Visuals.PerformanceHudScriptName or "Script", n, v10)
			setText(performanceHudGui, str)
		end
	end)
end

tbl7.setPerformanceHudEnabled = function(arg)
	tbl6.Features.Visuals.PerformanceHudEnabled = arg == true

	if tbl6.Features.Visuals.PerformanceHudEnabled then
		tbl7.createPerformanceHud()
	else
		tbl7.destroyPerformanceHud()
	end
end

tbl6.Features.Combat._fastThrowOriginals = {}

tbl7._applyFastThrowKnife = function(arg)
	if not arg or not arg:IsA("Tool") then
		return
	end

	if tbl6.Features.Combat._fastThrowOriginals[arg] == nil then
		tbl6.Features.Combat._fastThrowOriginals[arg] = arg:GetAttribute("ThrowSpeed")
	end

	arg:SetAttribute("ThrowSpeed", tbl6.Features.Combat.FastThrowSpeed)

	if arg.Parent == tbl6.Player.LocalPlayer.Character then
		local character = tbl6.Player.LocalPlayer.Character
		arg.Parent = tbl6.Player.LocalPlayer.Backpack

		if task ~= nil and v4(task.wait) == "function" then
			task.wait(0.06)
		end

		if arg and arg.Parent == tbl6.Player.LocalPlayer.Backpack and character and character.Parent then
			arg.Parent = character
		end
	end
end

tbl7._fastThrowScan = function(arg)
	for _, child in ipairs(arg:GetChildren()) do
		if child.Name == "Knife" then
			tbl7._applyFastThrowKnife(child)
		end
	end
end

tbl7._fastThrowHookBackpack = function()
	local backpack = tbl6.Player.LocalPlayer:FindFirstChild("Backpack")
	if not backpack then
		return
	end

	if tbl9.Legacy.fastThrowBP then
		tbl9.Legacy.fastThrowBP:Disconnect()
		tbl9.Legacy.fastThrowBP = nil
	end

	tbl9.Legacy.fastThrowBP = backpack.ChildAdded:Connect(function(child)
		if child.Name ~= "Knife" or not tbl6.Features.Combat.FastThrowEnabled then
			return
		end
		task.defer(tbl7._applyFastThrowKnife, child)
	end)
end

tbl9.Legacy.fastThrowChar = tbl6.Player.LocalPlayer.CharacterAdded:Connect(function(character)
	task.defer(function()
		if not tbl6.Features.Combat.FastThrowEnabled then
			return
		end
		tbl7._fastThrowScan(character)
		tbl7._fastThrowHookBackpack()
		tbl7._fastThrowScan(tbl6.Player.LocalPlayer:FindFirstChild("Backpack") or character)
	end)
end)

tbl6.Features.Combat.FastStabEnabled = false
tbl6.Features.Combat.FastStabAnimSpeed = 2
tbl6.Features.Visuals.KnifeDualEffectEnabled = false
tbl6.Features.Visuals.GunDualEffectEnabled = false
tbl5.a0_2 = nil

if tbl6.game == "Murder Mystery 2" then
	tbl5.a0_2 = require(tbl4.ReplicatedStorage:WaitForChild("ClientServices", 10):WaitForChild("WeaponService", 10))
end

tbl6.Features.Combat._stabAnimCache = nil

tbl7._stabAnimMatches = function(arg)
	if arg == nil then
		return false
	end
	local stabAnimCache = tbl6.Features.Combat._stabAnimCache
	if stabAnimCache and stabAnimCache.anims[arg] then
		return true
	end

	if v5(arg) ~= "Instance" or not arg:IsA("Animation") then
		return false
	end
	local parent = arg.Parent
	local parent2 = parent and parent.Name == "KnifeClient" and parent or parent and parent.Parent
	local parent3 = parent2 and parent2.Parent
	local parent4 = parent3 and parent3.Parent
	if not (parent2 and parent2.Name == "KnifeClient" and parent3 and parent3.Name == "Knife") then
		return false
	end

	if parent4 ~= tbl6.Player.LocalPlayer.Character then
		return false
	end

	if stabAnimCache then
		stabAnimCache.anims[arg] = true
	end

	return true
end

tbl7._applyStabSpeedToPlaying = function()
	local stabAnimCache = tbl6.Features.Combat._stabAnimCache
	stabAnimCache = stabAnimCache and stabAnimCache.animator
	if not stabAnimCache or not stabAnimCache.Parent then
		return
	end
	local n = tonumber(tbl6.Features.Combat.FastStabAnimSpeed) or 2

	for _, v8 in ipairs(stabAnimCache:GetPlayingAnimationTracks()) do
		if v8.Animation and tbl7._stabAnimMatches(v8.Animation) then
			v6(function()
				v8:AdjustSpeed(n)
			end)
		end
	end
end

tbl7._hookStabAnims = function()
	if tbl9.Legacy.fastStabAnim then
		tbl9.Legacy.fastStabAnim:Disconnect()
		tbl9.Legacy.fastStabAnim = nil
	end

	tbl6.Features.Combat._stabAnimCache = nil
	if not tbl6.Features.Combat.FastStabEnabled then
		return
	end
	local character = tbl6.Player.LocalPlayer.Character
	local humanoid = character and character:FindFirstChildOfClass("Humanoid")
	humanoid = humanoid and humanoid:FindFirstChildOfClass("Animator")
	if not humanoid then
		return
	end
	local tbl15 = {}
	local knife = character:FindFirstChild("Knife")
	local knifeClient = knife and knife:FindFirstChild("KnifeClient")

	if knifeClient then
		if knife:FindFirstChild("DualEffect") then
			local dual = knifeClient:FindFirstChild("Dual")
			local dualSlash = dual and dual:FindFirstChild("DualSlash")
			dual = dual and dual:FindFirstChild("DualStab")

			if dualSlash then
				tbl15[dualSlash] = true
			end

			if dual then
				tbl15[dual] = true
			end
		else
			local slash = knifeClient:FindFirstChild("Slash")
			local downstab = knifeClient:FindFirstChild("Downstab")

			if slash then
				tbl15[slash] = true
			end

			if downstab then
				tbl15[downstab] = true
			end
		end
	end

	tbl6.Features.Combat._stabAnimCache = { animator = humanoid, anims = tbl15 }
	tbl7._applyStabSpeedToPlaying()

	tbl9.Legacy.fastStabAnim = humanoid.AnimationPlayed:Connect(function(arg)
		if not tbl6.Features.Combat.FastStabEnabled then
			return
		end

		if not (arg and arg.Animation and tbl7._stabAnimMatches(arg.Animation)) then
			return
		end
		local n = tonumber(tbl6.Features.Combat.FastStabAnimSpeed) or 2

		v6(function()
			arg:AdjustSpeed(n)
		end)
	end)
end

tbl7._unhookStabAnims = function()
	if tbl9.Legacy.fastStabAnim then
		tbl9.Legacy.fastStabAnim:Disconnect()
		tbl9.Legacy.fastStabAnim = nil
	end

	tbl6.Features.Combat._stabAnimCache = nil
end

tbl9.Legacy.fastStabChar = tbl6.Player.LocalPlayer.CharacterAdded:Connect(function()
	task.defer(function()
		if not tbl6.Features.Combat.FastStabEnabled then
			return
		end
		tbl7._hookStabAnims()
	end)
end)

tbl6.Features.Visuals._dualEffect = tbl6.Features.Visuals._dualEffect or { Knife = {}, Gun = {} }

tbl7.clearDualEffectVisuals = function(arg)
	local v8 = tbl6.Features.Visuals._dualEffect[arg]
	if not v8 then
		return
	end

	if v8.anim then
		if v8 ~= nil and v8.anim ~= nil and v4(v8.anim.Stop) == "function" then
			v8.anim:Stop()
		end

		v8.anim = nil
	end

	if v8.holder then
		destroy(v8.holder)
		v8.holder = nil
	end

	if v8.clone then
		destroy(v8.clone)
		v8.clone = nil
	end

	if v8.grip then
		destroy(v8.grip)
		v8.grip = nil
	end
end

tbl7.applyDualEffect = function(arg)
	local tbl15 = tbl6.Features.Visuals._dualEffect[arg]

	if not tbl15 then
		tbl15 = {}
		tbl6.Features.Visuals._dualEffect[arg] = tbl15
	end

	tbl7.clearDualEffectVisuals(arg)

	if tbl15.added then
		tbl15.added:Disconnect()
		tbl15.added = nil
	end

	if tbl15.removed then
		tbl15.removed:Disconnect()
		tbl15.removed = nil
	end

	local character = tbl6.Player.LocalPlayer.Character
	if not character then
		return
	end

	tbl15.added = character.ChildAdded:Connect(function(child)
		if child.Name == arg and child:IsA("Tool") then
			task.delay(0.1, function()
				tbl7.applyDualEffect(arg)
			end)
		end
	end)

	tbl15.removed = character.ChildRemoved:Connect(function(child)
		if child.Name == arg and child:IsA("Tool") then
			tbl7.clearDualEffectVisuals(arg)
		end
	end)

	if not (arg == "Gun" and tbl6.Features.Visuals.GunDualEffectEnabled or tbl6.Features.Visuals.KnifeDualEffectEnabled) then
		return
	end
	local v8 = character:FindFirstChild(arg)
	if not (v8 and v8:IsA("Tool")) then
		return
	end
	local handle = v8:FindFirstChild("Handle")
	local humanoid = character:FindFirstChildOfClass("Humanoid")
	local rightHand = character:FindFirstChild("RightHand") or character:FindFirstChild("Right Arm")
	local leftHand = character:FindFirstChild("LeftHand") or character:FindFirstChild("Left Arm")
	if not (handle and humanoid and rightHand and leftHand) then
		return
	end
	local rightGrip = rightHand:FindFirstChild("RightGrip")
	if not rightGrip then
		return
	end
	local animation = Instance.new("Animation")
	animation.Name = "Dual Hold"
	animation.AnimationId = "http://www.roblox.com/asset/?id=2464917949"
	animation.Parent = character
	local clone = handle:Clone()
	clone.Name = "Handle1"
	clone.Parent = v8
	local clone2 = rightGrip:Clone()
	clone2.Name = "LeftGrip"
	clone2.Part0 = leftHand
	clone2.Part1 = clone
	clone2.Parent = leftHand
	local animator = character:FindFirstChildOfClass("Animator")
	local v9

	if animator then
		v9 = animator:LoadAnimation(animation)
	else
		v9 = humanoid:LoadAnimation(animation)
	end

	if v9 ~= nil and v4(v9.Play) == "function" then
		v9:Play()
	end

	tbl15.anim = v9
	tbl15.holder = animation
	tbl15.clone = clone
	tbl15.grip = clone2
end

if not tbl6.Features.Visuals._dualEffect.charConn then
	tbl6.Features.Visuals._dualEffect.charConn = tbl6.Player.LocalPlayer.CharacterAdded:Connect(function()
		task.wait(0.5)
		tbl7.applyDualEffect("Knife")
		tbl7.applyDualEffect("Gun")
	end)
end

tbl7.getNearestPlayer = function(A)local p=1/0;local q=nil;for Q,f in ipairs( tbl6 .Players.Cache)do if f~= tbl6 .Player.LocalPlayer then Q=f.Character;if Q then local L,f=Q:FindFirstChild("HumanoidRootPart"),Q:FindFirstChild("Humanoid");if L and f and f.Health>0 then local Q=(L.Position-A).Magnitude;if Q<p then p,q=Q,L;end;end;end;end;end;return q;end

tbl7.getSilentAimPart = function()
	local localPlayer = tbl6.Player.LocalPlayer
	local v8 = tbl7.getRole(localPlayer)

	if v8 ~= "Sheriff" and v8 ~= "Hero" then
		if v8 ~= "Unknown" then
			return nil
		end
		local character = localPlayer.Character
		character = character and character:FindFirstChild("Gun")

		if not character then
			character = localPlayer:FindFirstChild("Backpack")
			character = character and character:FindFirstChild("Gun")
		end

		if not character then
			return nil
		end
	end

	if tbl7.isDead(localPlayer) then
		return nil
	end
	local v9 = tbl7.whosthemurdererson()

	if not v9 or not v9.Character or tbl7.isDead(v9) then
		v9 = tbl7.findKnifeHolder()
	end

	if not v9 then
		return nil
	end
	local character = v9.Character

	if character then
		character = character:FindFirstChild("UpperTorso") or character:FindFirstChild("Torso") or character:FindFirstChild("Head") or character:FindFirstChild("HumanoidRootPart")
	end

	return character or nil
end

tbl7.installAimHook = function()
	local clientServices = tbl4.ReplicatedStorage:WaitForChild("ClientServices", 10)
	clientServices = clientServices and clientServices:WaitForChild("WeaponService", 10)
	if not clientServices then
		return
	end
	local flag = v4(require) == "function"
	local module = nil

	if flag then
		module = require(clientServices)
	end

	if not flag then
		return
	end

	if module.GetMouseTargetCFrame then
		local getMouseTargetCFrame = module.GetMouseTargetCFrame

		module.GetMouseTargetCFrame = function(...)
			local v8 = getMouseTargetCFrame(...)

			if tbl6.Features.Combat.SilentAimbutmurd and tbl7.hasKnifeEquipped() and v5(v8) == "CFrame" then
				local v9 = tbl7.getMurdererSilentAimTarget()
				if v9 then
					return cframe(v9.Position)
				end
			end

			if tbl6.Features.Combat.SilentAimEnabled and v5(v8) == "CFrame" then
				local v9 = tbl7.getSilentAimPart()
				if v9 then
					return cframe(tbl7.getpredictedpos(v9))
				end
			end

			return v8
		end
	end

	if module.GetTargetPosition then
		local getTargetPosition = module.GetTargetPosition

		module.GetTargetPosition = function(arg, arg2, arg3)
			local v8 = getTargetPosition(arg, arg2, arg3)

			if tbl6.Features.Combat.SilentAimbutmurd and tbl7.hasKnifeEquipped() and v5(v8) == "CFrame" then
				local v9 = tbl7.getMurdererSilentAimTarget()
				if v9 then
					return cframe(v9.Position)
				end
			end

			if tbl6.Features.Combat.SilentAimEnabled and v5(v8) == "CFrame" then
				local v9 = tbl7.getSilentAimPart()
				if v9 then
					return cframe(tbl7.getpredictedpos(v9))
				end
			end

			return v8
		end
	end
end

tbl7.getMurdererSilentAimTarget = function()
	local character = tbl6.Player.LocalPlayer.Character
	character = character and character:GetPivot().Position or vector3()
	local murdererAimMode = tbl6.Features.Combat.MurdererAimMode or "Nearest Player"
	local murdererIgnoreList = tbl6.Features.Combat.MurdererIgnoreList or {}
	local tbl15 = {}

	for _, v8 in ipairs(murdererIgnoreList) do
		tbl15[v8] = true
	end

	local az = tbl5.aZ
	local n = tbl5.aY:GetMouseLocation() - az
	local currentCamera = tbl4.Workspace.CurrentCamera
	local huge = math.huge
	local character2 = nil

	for _, v8 in ipairs(tbl6.Players.Cache) do
		if v8 ~= tbl6.Player.LocalPlayer and not tbl15[v8.Name] and not tbl7.isDead(v8) and tbl7.getRole(v8) ~= "Unknown" then
			local character3 = v8.Character

			if character3 then
				character3 = character3:FindFirstChild("HumanoidRootPart") or character3:FindFirstChild("Head")
			end

			if character3 and character3.Parent then
				local magnitude

				if murdererAimMode == "Nearest to Cursor" then
					local v9, v10 = currentCamera:WorldToViewportPoint(character3.Position)
					magnitude = nil

					if v10 then
						magnitude = (vector2(v9.X, v9.Y) - n).Magnitude
					end
				else
					magnitude = (character3.Position - character).Magnitude
				end

				if magnitude and magnitude < huge then
					huge = magnitude
					character2 = character3
				end
			end
		end
	end

	if not character2 then
		character2 = tbl7.findKnifeHolder()
		character2 = character2 and character2.Character

		if character2 then
			character2 = character2:FindFirstChild("HumanoidRootPart") or character2:FindFirstChild("Head")
		end

		character2 = character2 or nil
	end

	return character2
end

tbl7.updateMurdererSilentAimDropdowns = function()
	if not tbl6.UI.murdAimIgnoreDropdown then
		return
	end
	tbl6.UI.murdAimIgnoreDropdown:SetValues(tbl6.Players.Names)
end

tbl7.hasKnifeEquipped = function()
	local character = tbl6.Player.LocalPlayer.Character
	if not character then
		return false
	end
	return character:FindFirstChild("Knife") ~= nil
end

if v.PlaceId == 335132309 or v.PlaceId == 142823291 or v.PlaceId == 80469437126309 then
	tbl6.game = "Murder Mystery 2"
end

tbl5.a4_2 = "https://luware.filho.wtf/changelog.lua"

tbl7.fetchRemote = function(arg, arg2)
	local flag = tbl2 ~= nil and tbl4 ~= nil and tbl4.HttpService ~= nil and v4(tbl4.HttpService.JSONDecode) == "function"
	local data = nil

	if flag then
		local flag2 = v5(request_) == "function" and request_({ Url = arg, Method = "GET" }) or nil
		local body = v5(flag2) == "table" and v4(flag2.Body) == "string" and flag2.Body ~= "" and flag2.Body or nil
		data = body and body ~= "" and tbl4.HttpService:JSONDecode(body) or nil
	end

	return flag and v4(data) == "table" and data or arg2
end

tbl5.a5_2 = { { version = "v0.0.67", notes = { "+ Brooo i failed :(" } } }

do
	local v8, v9 = v6(tbl7.fetchRemote, tbl5.a4_2, tbl5.a5_2)

	if v8 and v4(v9) == "table" then
		tbl5.a5_2 = v9
	end
end

tbl7.onDragClick = function(arg, arg2)
	arg.MouseButton1Click:Connect(function()
		if tbl6.UI.dragData.moved then
			tbl6.UI.dragData.moved = false
			return
		end
		tbl7._playBtnClick()
		tbl7.flickButton(arg)
		arg2()
	end)
end

if tbl6.game == "Murder Mystery 2" then
	tbl6.t = {
		main = tbl6.UI.window:AddTab("Main", "house"),
		changelogs = tbl6.UI.window:AddTab("Changelogs", "scroll-text"),
	}

	tbl6.t.e = tbl6.UI.window:AddTab("Visuals", "eye")
	tbl6.t.c = tbl6.UI.window:AddTab("Combat", "sword")
	tbl6.t.lp = tbl6.UI.window:AddTab("Local Player", "user")
	tbl6.t.tp = tbl6.UI.window:AddTab("Teleport", "locate")
	tbl6.t.emotes = tbl6.UI.window:AddTab("Emotes", "users")
	tbl6.t.g = tbl6.UI.window:AddTab("Global", "globe")
	tbl6.t.af = tbl6.UI.window:AddTab("Auto Farm", "coins")
	tbl6.t.fun = tbl6.UI.window:AddTab("Fun", "sparkles")
	tbl6.t.settings = tbl6.UI.window:AddTab("UI Settings", "settings")
	tbl5.a1_2 = "Unknown"
	tbl5.a1_2 = tbl4.MarketplaceService:GetProductInfo(v.PlaceId).Name
	tbl5.a2_2 = tonumber(tbl5.s_2) or 0
	tbl5.a3_2 = "th"

	if tbl5.a2_2 % 100 < 11 or tbl5.a2_2 % 100 > 13 then
		tbl5.a3_2 = ({ "st", "nd", "rd" })[tbl5.a2_2 % 10] or "th"
	end

	tbl6.UI.maingt = {
		performance = tbl6.t.main:AddLeftGroupbox("Performance"),
		info = tbl6.t.main:AddRightGroupbox("Information"),
	}

	tbl6.UI.fungt = {
		hitmarker = tbl6.t.fun:AddLeftGroupbox("Hitmarker"),
		death = tbl6.t.fun:AddRightGroupbox("Death Animation"),
		aura = tbl6.t.fun:AddLeftGroupbox("Aura"),
		sky = tbl6.t.fun:AddRightGroupbox("Sky"),
	}

	tbl6.Features.Visuals.mm2Emotes = {
		{ key = "sit", name = "Sit", command = "sit2", animationId = 2431845940 },
		{ key = "ninja", name = "Ninja Rest", command = "ninja", animationId = 2431864798 },
		{ key = "zen", name = "Zen", command = "zen", animationId = 2431812646 },
		{ key = "dab", name = "Dab", command = "dab", animationId = 2445521505 },
		{ key = "floss", name = "Floss", command = "floss", animationId = 2452938820 },
		{ key = "zombie", name = "Zombie", command = "zombie", animationId = 2513692312 },
		{ key = "headless", name = "Headless", command = "headless", animationId = 2513664073 },
	}

	for i_, mm2Emote in ipairs(tbl6.Features.Visuals.mm2Emotes) do
		tbl5.a6_2 = i_ % 2 == 1 and "AddLeftGroupbox" or "AddRightGroupbox"
		mm2Emote.group = tbl6.t.emotes[tbl5.a6_2](tbl6.t.emotes, mm2Emote.name)
	end

	tbl6.Features.Visuals.mm2EmoteTracks = {}

	tbl7.stopMM2Emote = function(arg)
		local v8 = tbl6.Features.Visuals.mm2EmoteTracks[arg.key]

		if v8 then
			if v8 ~= nil and v4(v8.Stop) == "function" then
				v8:Stop(0.1)
			end

			tbl6.Features.Visuals.mm2EmoteTracks[arg.key] = nil
		end
	end

	tbl7.playMM2Emote = function(arg)
		tbl7.stopMM2Emote(arg)
		local character = tbl6.Player.LocalPlayer.Character
		character = character and character:FindFirstChildOfClass("Humanoid")
		if not character then
			return
		end
		local animator = character:FindFirstChildOfClass("Animator") or Instance.new("Animator", character)
		local animation = Instance.new("Animation")
		animation.AnimationId = ("rbxassetid://%*"):format(arg.animationId)
		local v8 = animator:LoadAnimation(animation)
		if not v8 then
			destroy(animation)
			return
		end
		v8.Looped = true
		v8.Priority = Enum.AnimationPriority.Action
		v8:Play(0.1)
		tbl6.Features.Visuals.mm2EmoteTracks[arg.key] = v8
	end

	tbl7.setMM2EmoteEnabled = function(arg, arg2)
		if arg2 then
			tbl7.playMM2Emote(arg)
		else
			tbl7.stopMM2Emote(arg)
		end
	end

	tbl7.removeGlitchProof = function(arg)
		if tbl7.isGlitchProof(arg) then
			if v4(destroy) == "function" then
				destroy(arg)
			end
		end
	end

	tbl7.stopRemoveBarriers = function()
		if tbl9.Legacy.removeBarriers then
			tbl9.Legacy.removeBarriers:Disconnect()
			tbl9.Legacy.removeBarriers = nil
		end
	end

	tbl7.startRemoveBarriers = function()
		tbl7.stopRemoveBarriers()
		local v8 = tbl7.GetDescendantCache(tbl4.Workspace)

		for k_ in pairs(v8) do
			tbl7.removeGlitchProof(k_)
		end

		tbl9.Legacy.removeBarriers = tbl4.Workspace.DescendantAdded:Connect(function(descendant)
			tbl7.removeGlitchProof(descendant)
		end)
	end

	tbl6.UI.changelogsgt = {}

	for i_ = #tbl5.a5_2, 1, -1 do
		tbl5.a7_2 = tbl5.a5_2[i_]
		tbl5.a8_2 = nil

		if (#tbl6.UI.changelogsgt + 1) % 2 == 1 then
			tbl5.a8_2 = tbl6.t.changelogs:AddLeftGroupbox(tbl5.a7_2.version)
		else
			tbl5.a8_2 = tbl6.t.changelogs:AddRightGroupbox(tbl5.a7_2.version)
		end

		insert(tbl6.UI.changelogsgt, tbl5.a8_2)
		tbl5.a8_2:AddLabel(table.concat(tbl5.a7_2.notes or { "No changelog entries available." }, "\n"), true)
	end

	tbl6.UI.gt = {
		esp = tbl6.t.e:AddLeftGroupbox("ESP"),
		outline = tbl6.t.e:AddRightGroupbox("Outline"),
		chams = tbl6.t.e:AddLeftGroupbox("Chams"),
		tracers = tbl6.t.e:AddRightGroupbox("Tracers"),
		box = tbl6.t.e:AddLeftGroupbox("Box"),
		trapesp = tbl6.t.e:AddRightGroupbox("Trap ESP"),
		gun = tbl6.t.c:AddLeftGroupbox("Gun"),
		shoot = tbl6.t.c:AddRightGroupbox("Shoot Murderer"),
		killmurd = tbl6.t.c:AddLeftGroupbox("Kill Murderer"),
		silent = tbl6.t.c:AddRightGroupbox("Silent Aim"),
		magicbullet = tbl6.t.c:AddLeftGroupbox("Magic Bullet"),
		autothrow = tbl6.t.c:AddLeftGroupbox("Auto Throw Nearest"),
		kill = tbl6.t.c:AddRightGroupbox("Kill"),
		trig = tbl6.t.c:AddLeftGroupbox("Trigger Bot"),
		fast = tbl6.t.c:AddRightGroupbox("Fast"),
		dual = tbl6.t.c:AddLeftGroupbox("Dual Effect"),
		farm = tbl6.t.af:AddLeftGroupbox("Farm"),
		farmfull = tbl6.t.af:AddRightGroupbox("When Full"),
		webhook = tbl6.t.af:AddLeftGroupbox("Webhook"),
	}

	tbl6.UI.lpgt = {
		noclip = tbl6.t.lp:AddLeftGroupbox("Noclip"),
		xray = tbl6.t.lp:AddRightGroupbox("X-Ray"),
		invisible = tbl6.t.lp:AddRightGroupbox("Invisible"),
		infjump = tbl6.t.lp:AddLeftGroupbox("Infinite Jump"),
		fly = tbl6.t.lp:AddRightGroupbox("Fly"),
		speedglitch = tbl6.t.lp:AddLeftGroupbox("Speed Glitch"),
		movement = tbl6.t.lp:AddRightGroupbox("Movement"),
		antifling = tbl6.t.lp:AddLeftGroupbox("Anti Fling"),
		antivoid = tbl6.t.lp:AddRightGroupbox("Anti Void"),
	}

	tbl6.UI.tpgt = {
		locations = tbl6.t.tp:AddLeftGroupbox("Locations"),
		players = tbl6.t.tp:AddRightGroupbox("Players"),
	}

	tbl6.UI.defgt = {
		freecam = tbl6.t.lp:AddLeftGroupbox("Freecam"),
		dodgemurd = tbl6.t.g:AddLeftGroupbox("Auto Dodge Murderer"),
		dodgeknife = tbl6.t.g:AddRightGroupbox("Auto Dodge Knife"),
	}

	tbl6.UI.ggt = {
		status = tbl6.t.g:AddLeftGroupbox("Status"),
		prediction = tbl6.t.g:AddRightGroupbox("Prediction"),
		timer = tbl6.t.g:AddLeftGroupbox("Round Timer"),
		aimlock = tbl6.t.g:AddRightGroupbox("Aim Lock"),
		blurt = tbl6.t.g:AddLeftGroupbox("Blurt Roles"),
		expose = tbl6.t.g:AddRightGroupbox("Expose Roles"),
		barriers = tbl6.t.g:AddLeftGroupbox("Remove Barriers"),
		fling = tbl6.t.g:AddLeftGroupbox("Fling"),
		touchfling = tbl6.t.g:AddRightGroupbox("Touch Fling"),
		coinaura = tbl6.t.g:AddLeftGroupbox("Coin Aura"),
		trickshot = tbl6.t.g:AddRightGroupbox("Trickshot"),
		bombjump = tbl6.t.g:AddRightGroupbox("Bomb Jump"),
		feanim = tbl6.t.g:AddLeftGroupbox("FE Animations"),
		optimizations = tbl6.t.g:AddRightGroupbox("Optimizations"),
		prestige = tbl6.t.g:AddLeftGroupbox("Prestige"),
	}

	tbl6.Features.PostFarm.AutoPrestigeEnabled = false

	tbl7.prestigeRemote = function()
		local remotes = tbl4.ReplicatedStorage and tbl4.ReplicatedStorage:FindFirstChild("Remotes")
		remotes = remotes and remotes:FindFirstChild("Inventory")
		return remotes and remotes:FindFirstChild("Prestige")
	end

	tbl7.firePrestige = function()
		local v8 = tbl7.prestigeRemote()
		if not v8 then
			return false
		end

		if v8 ~= nil and v4(v8.FireServer) == "function" then
			v8:FireServer()
		end

		return true
	end

	tbl6.UI.ggt.prestige:AddToggle("AutoPrestige", {
		Text = "Auto Prestige",
		Default = false,
		Callback = function(autoPrestigeEnabled)
			tbl6.Features.PostFarm.AutoPrestigeEnabled = autoPrestigeEnabled

			if autoPrestigeEnabled and not tbl6.Features.PostFarm._autoPrestigeThread then
				tbl6.Features.PostFarm._autoPrestigeThread = task.spawn(function()
					local flag = false

					while tbl6.Features.PostFarm.AutoPrestigeEnabled do
						if not tbl7.firePrestige() then
							if not flag then
								local flag2 = tbl2 ~= nil and tbl6 ~= nil and tbl6.UI ~= nil and tbl6.UI.lib ~= nil and v4(tbl6.UI.lib.Notify) == "function"
								flag = true

								if flag2 then
									tbl6.UI.lib:Notify("Prestige remote not found.")
								end
							end
						end

						task.wait(3)
					end

					tbl6.Features.PostFarm._autoPrestigeThread = nil
				end)
			end
		end,
	})

	tbl6.UI.ggt.prestige:AddButton("Prestige", function()
		if tbl7.firePrestige() then
			if tbl2 ~= nil and tbl6 ~= nil and tbl6.UI ~= nil and tbl6.UI.lib ~= nil and v4(tbl6.UI.lib.Notify) == "function" then
				tbl6.UI.lib:Notify("Prestige fired.")
			end
		elseif tbl2 ~= nil and tbl6 ~= nil and tbl6.UI ~= nil and tbl6.UI.lib ~= nil and v4(tbl6.UI.lib.Notify) == "function" then
			tbl6.UI.lib:Notify("Prestige remote not found.")
		end
	end)

	tbl6.UI.settingsgt = { m = tbl6.t.settings:AddLeftGroupbox("Misc") }

	tbl7.buildFakeGuiNest = function()
		if tbl6._fakeGuiRoot and tbl6._fakeGuiRoot.Parent then
			return tbl6._fakeGuiRoot
		end
		local v8 = tbl7.getGuiParent()
		if v5(v8) ~= "Instance" then
			return nil
		end
		local folder = Instance.new("Folder")
		folder.Name = tbl7._obfName()
		folder.Parent = v8
		tbl6._fakeGuiRoot = folder
		tbl7.protectGui(folder)
		local fakeGuiIndex = {}
		tbl6._fakeGuiIndex = fakeGuiIndex
		fakeGuiIndex[folder] = true
		local tbl15 = { folder }

		for i_ = 1, 3 do
			local tbl16 = {}

			for _, v9 in ipairs(tbl15) do
				for i_2 = 1, 2 do
					local folder2 = Instance.new("Folder")
					folder2.Name = tbl7._obfName()
					folder2.Parent = v9
					fakeGuiIndex[folder2] = true
					tbl16[#tbl16 + 1] = folder2
					local frame = Instance.new("Frame")
					frame.Name = tbl7._obfName()
					frame.BackgroundTransparency = 1
					frame.BorderSizePixel = 0
					frame.Size = udim22(0, 0, 0, 0)
					frame.Parent = folder2
					fakeGuiIndex[frame] = true
				end
			end

			tbl15 = tbl16
		end

		local screenGui = Instance.new("ScreenGui")
		screenGui.Name = tbl7._obfName()
		screenGui.ResetOnSpawn = false
		screenGui.DisplayOrder = 1
		screenGui.Parent = v8
		fakeGuiIndex[screenGui] = true
		local frame = Instance.new("Frame")
		frame.Name = tbl7._obfName()
		frame.BackgroundTransparency = 1
		frame.BorderSizePixel = 0
		frame.Size = udim22(1, 0, 1, 0)
		frame.Visible = false
		frame.Parent = screenGui
		fakeGuiIndex[frame] = true

		if not tbl6._fakeGuiThread then
			tbl6._fakeGuiThread = task.spawn(function()
				while fn2("h") == "yes" do
					task.wait(3)
					local fakeGuiRoot = tbl6._fakeGuiRoot

					if fakeGuiRoot and not fakeGuiRoot.Parent then
						fakeGuiRoot.Parent = v8
					end
				end

				tbl6._fakeGuiThread = nil
			end)
		end

		return folder
	end

	tbl7.buildFakeGuiNest()
	tbl6.UI.floatingGui = Instance.new("ScreenGui")
	tbl6.UI.floatingGui.Name = tbl5.uiN.floating
	tbl6.UI.floatingGui.ResetOnSpawn = false
	tbl6.UI.floatingGui.ScreenInsets = Enum.ScreenInsets.None
	tbl6.UI.floatingGui.SafeAreaCompatibility = Enum.SafeAreaCompatibility.None
	tbl6.UI.floatingGui.IgnoreGuiInset = true
	tbl6.UI.floatingGui.Parent = tbl7.getGuiParent()
	tbl7.protectGui(tbl6.UI.floatingGui)
	tbl6.UI.timerLabelGui = Instance.new("TextLabel")
	tbl6.UI.timerLabelGui.Name = "RoundTimerLabel"
	tbl6.UI.timerLabelGui.Size = udim22(0, 280, 0, 44)
	tbl6.UI.timerLabelGui.Position = udim22(0.5, 0, 0.22, 0)
	tbl6.UI.timerLabelGui.AnchorPoint = Vector2.new(0.5, 0.5)
	tbl6.UI.timerLabelGui.BackgroundTransparency = 1
	tbl6.UI.timerLabelGui.TextColor3 = Color3.new(1, 1, 1)
	tbl6.UI.timerLabelGui.Font = Enum.Font.Jura
	tbl6.UI.timerLabelGui.TextSize = 26
	tbl6.UI.timerLabelGui.TextStrokeTransparency = 0.5
	tbl6.UI.timerLabelGui.TextStrokeColor3 = Color3.new(0, 0, 0)
	tbl6.UI.timerLabelGui.Text = "0:00"
	tbl6.UI.timerLabelGui.Visible = false
	tbl6.UI.timerLabelGui.Parent = tbl6.UI.floatingGui
	tbl6.UI.grabButton = Instance.new("TextButton")
	tbl6.UI.grabButton.Size = udim22(0, 42, 0, 40)
	tbl6.UI.grabButton.Position = tbl7.loadPosition("grabButton", udim22(0.5, -80, 0.75, 0))
	tbl6.UI.grabButton.Text = "Grab\nGun"
	tbl6.UI.grabButton.BackgroundTransparency = 1
	tbl6.UI.grabButton.TextColor3 = Color3.new(1, 1, 1)
	tbl6.UI.grabButton.Font = Enum.Font.Montserrat
	tbl6.UI.grabButton.TextSize = 11
	tbl6.UI.grabButton.TextWrapped = true
	tbl6.UI.grabButton.Visible = false
	tbl6.UI.grabButton.Parent = tbl6.UI.floatingGui
	Instance.new("UICorner", tbl6.UI.grabButton).CornerRadius = udim(1, 0)
	tbl6.gs = Instance.new("UIStroke", tbl6.UI.grabButton)
	tbl6.gs.Thickness = 2
	tbl6.gs.Color = color(0, 120, 170)
	tbl6.gs.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	tbl6.UI.shootButton = Instance.new("TextButton")
	tbl6.UI.shootButton.Size = udim22(0, 200, 0, 75)
	tbl6.UI.shootButton.Position = tbl7.loadPosition("shootButton", udim22(0.5, -100, 0.6, 0))
	tbl6.UI.shootButton.Text = "Shoot Murderer"
	tbl6.UI.shootButton.BackgroundTransparency = 1
	tbl6.UI.shootButton.TextColor3 = tbl3.Theme.Font
	tbl6.UI.shootButton.Font = Enum.Font.Jura
	tbl6.UI.shootButton.TextSize = 24
	tbl6.UI.shootButton.Visible = false
	tbl6.UI.shootButton.Parent = tbl6.UI.floatingGui
	Instance.new("UICorner", tbl6.UI.shootButton).CornerRadius = udim(0, 4)
	tbl4.SoundService = Instance.new("UIStroke", tbl6.UI.shootButton)
	tbl4.SoundService.Thickness = 2
	tbl4.SoundService.Color = tbl3.Theme.Accent
	tbl4.SoundService.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	tbl7.setupButtonBuffer(tbl6.UI.grabButton, 2.5, udim(1, 0))
	tbl7.setupRippleButton(tbl6.UI.shootButton, 2.5, udim(0, 12))
	tbl7.makeDraggable(tbl6.UI.grabButton, "grabButton")
	tbl7.makeDraggable(tbl6.UI.shootButton, "shootButton")

	tbl6.UI.grabButton.TouchTap:Connect(function()
		tbl7._playBtnClick()
	end)

	tbl6.UI.shootButton.TouchTap:Connect(function()
		tbl7._playBtnClick()
	end)

	local tbl15 = {
		{ "Noclip", "noclipButton" },
		{ "X-Ray", "xrayButton" },
		{ "Infinite\nJump", "infjumpButton" },
		{ "Fly", "flyButton" },
		{ "Speed\nGlitch", "speedglitchButton" },
		{ "Touch\nFling", "touchFlingBtn" },
		{ "Invisible", "invisibleBtn" },
		{ "Free\nCam", "freecamButton" },
		{ "Trickshot", "trickshotBtn" },
		{ "Bomb\nJump", "bombjumpBtn" },
		{ "Kill\nMurderer", "killMurdererBtn" },
		{ "Kill\nSheriff", "killSheriffBtn" },
		{ "Kill\nAll", "killAllBtn" },
		{ "Fling\nMurderer", "flingMurdererBtn" },
		{ "Fling\nSheriff", "flingSheriffBtn" },
		{ "Fling\nEveryone", "flingEveryoneBtn" },
		{ "Magic\nBullet", "magicBulletBtn" },
		{ "TP Map", "teleportMapBtn" },
		{ "TP Lobby", "teleportLobbyBtn" },
		{ "TP Void", "teleportVoidBtn" },
		{ "TP Above", "teleportAboveBtn" },
	}

	local v8 = max(3, floor(tbl6.Player.Camera.ViewportSize.X / 50))
	local v9 = math.ceil(#tbl15 / v8)

	for i_, v10 in ipairs(tbl15) do
		tbl6.UI[v10[2]] = tbl7.createDraggableButton(v10[1], ((i_ - 1) % v8 - (v8 - 1) / 2) * 48, v10[2], floor((i_ - 1) / v8) - v9 + 1)
	end

	if not tbl6.UI.freecamBtn then
		tbl6.UI.freecamBtn = tbl7.createDraggableButton("Free\nCam", 216, "freecamButton", 0)
	end

	if not v:IsLoaded() then
		repeat
			task.wait()
		until v:IsLoaded()
	end

	tbl6.Game.executor = identifyexecutor and identifyexecutor() or "Unknown"
	tbl6.Features.Visuals.PerformanceHudScriptName = tbl6.Game.executor ~= "Unknown" and tbl6.Game.executor or "LuWare"
	task.wait(1)
	task.wait(1)
	tbl6.UI.gt.esp:AddToggle("ESPEnabled", { Text = "Enable ESP", Default = false })
	tbl6.UI.gt.esp:AddToggle("ESPEveryone", { Text = "ESP Everyone", Default = false })
	tbl6.UI.gt.esp:AddToggle("ShowDistance", { Text = "Show Distance", Default = false })
	tbl6.UI.gt.esp:AddToggle("ESPMurderer", { Text = "ESP Murderer", Default = false })
	tbl6.UI.gt.esp:AddToggle("ESPSheriff", { Text = "ESP Sheriff/Hero", Default = false })
	tbl6.UI.gt.esp:AddToggle("ESPInnocent", { Text = "ESP Innocent", Default = false })
	tbl6.UI.gt.esp:AddToggle("ESPGun", { Text = "ESP Gun", Default = false })
	tbl6.UI.gt.esp:AddToggle("ESPCoin", { Text = "ESP Coin", Default = false })
	tbl6.UI.gt.outline:AddToggle("OutlineEnabled", { Text = "Enable Outline", Default = false })
	tbl6.UI.gt.outline:AddToggle("OutlineEveryone", { Text = "Outline Everyone", Default = false })
	tbl6.UI.gt.outline:AddToggle("OutlineMurderer", { Text = "Outline Murderer", Default = false })
	tbl6.UI.gt.outline:AddToggle("OutlineSheriff", { Text = "Outline Sheriff/Hero", Default = false })
	tbl6.UI.gt.outline:AddToggle("OutlineInnocent", { Text = "Outline Innocent", Default = false })
	tbl6.UI.gt.outline:AddToggle("OutlineGun", { Text = "Outline Gun", Default = false })
	tbl6.UI.gt.chams:AddToggle("ChamsEnabled", { Text = "Enable Chams", Default = false })
	tbl6.UI.gt.chams:AddToggle("ChamsEveryone", { Text = "Chams Everyone", Default = false })
	tbl6.UI.gt.chams:AddToggle("ChamsMurderer", { Text = "Chams Murderer", Default = false })
	tbl6.UI.gt.chams:AddToggle("ChamsSheriff", { Text = "Chams Sheriff/Hero", Default = false })
	tbl6.UI.gt.chams:AddToggle("ChamsInnocent", { Text = "Chams Innocent", Default = false })
	tbl6.UI.gt.chams:AddToggle("ChamsGun", { Text = "Chams Gun", Default = false })
	tbl6.UI.gt.chams:AddToggle("ChamsCoin", { Text = "Chams Coin", Default = false })
	tbl6.UI.gt.tracers:AddToggle("TracersEnabled", { Text = "Enable Tracers", Default = false })
	tbl6.UI.gt.tracers:AddToggle("TracersEveryone", { Text = "Tracers Everyone", Default = false })
	tbl6.UI.gt.tracers:AddToggle("TracersMurderer", { Text = "Tracers Murderer", Default = false })
	tbl6.UI.gt.tracers:AddToggle("TracersSheriff", { Text = "Tracers Sheriff/Hero", Default = false })
	tbl6.UI.gt.tracers:AddToggle("TracersInnocent", { Text = "Tracers Innocent", Default = false })
	tbl6.UI.gt.tracers:AddToggle("TracersGun", { Text = "Tracers Gun", Default = false })
	tbl6.UI.gt.tracers:AddToggle("TracersCoin", { Text = "Tracers Coin", Default = false })
	tbl6.UI.gt.box:AddToggle("BoxEnabled", { Text = "Enable Box", Default = false })
	tbl6.UI.gt.box:AddToggle("BoxEveryone", { Text = "Box Everyone", Default = false })
	tbl6.UI.gt.box:AddToggle("BoxMurderer", { Text = "Box Murderer", Default = false })
	tbl6.UI.gt.box:AddToggle("BoxSheriff", { Text = "Box Sheriff/Hero", Default = false })
	tbl6.UI.gt.box:AddToggle("BoxInnocent", { Text = "Box Innocent", Default = false })
	tbl6.UI.gt.box:AddToggle("BoxGun", { Text = "Box Gun", Default = false })
	tbl6.UI.gt.box:AddToggle("BoxCoin", { Text = "Box Coin", Default = false })
	tbl6.UI.gt.trapesp:AddToggle("TrapESPEnabled", { Text = "Enable Trap ESP", Default = false })
	tbl6.UI.gt.trapesp:AddToggle("TrapESPBox", { Text = "Box", Default = false })
	tbl6.UI.gt.trapesp:AddToggle("TrapESPTracer", { Text = "Tracer", Default = false })
	tbl6.UI.gt.trapesp:AddToggle("TrapESPChams", { Text = "Chams", Default = false })
	tbl6.UI.gt.trapesp:AddToggle("TrapESPOutline", { Text = "Outline", Default = false })
	tbl6.UI.gt.trapesp:AddToggle("TrapESPLabel", { Text = "ESP Label", Default = false })
	tbl6.UI.gt.trapesp:AddLabel("Trap Color"):AddColorPicker("TrapESPColor", { Default = tbl6.Features.ESP.trapEspColor, Title = "Trap Color" })
	tbl6.UI.defgt.dodgemurd:AddToggle("AutoDodgeMurderer", { Text = "Enable Auto Dodge", Default = false })

	tbl6.UI.defgt.dodgemurd:AddSlider("AutoDodgeMurdererDist", {
		Text = "Trigger Distance",
		Default = 5,
		Min = 2,
		Max = 30,
		Rounding = 1,
		AllowRightClickInput = true,
	})

	tbl6.UI.defgt.dodgeknife:AddToggle("AutoDodgeKnife", { Text = "Enable Auto Dodge Knife", Default = false })
	tbl6.UI.defgt.freecam:AddToggle("FreecamEnabled", { Text = "Enable Freecam", Default = false })
	tbl6.UI.defgt.freecam:AddToggle("FreecamButton", { Text = "Draggable Button", Default = false })

	tbl6.UI.defgt.freecam:AddSlider("FreecamSpeed", {
		Text = "Fly Speed",
		Default = 32,
		Min = 4,
		Max = 200,
		Rounding = 1,
		AllowRightClickInput = true,
	})

	tbl6.UI.defgt.freecam:AddLabel("Hold RMB + WASD/QE to move. Shift = fast.")

	tbl6.UI.gt.gun:AddButton("Grab Gun", function()
		tbl7.grabgun()
	end)

	tbl6.UI.gt.gun:AddToggle("AutoGrab", { Text = "Auto Grab Gun", Default = false })
	tbl6.UI.gt.gun:AddToggle("GrabButton", { Text = "Draggable Button", Default = false })
	tbl6.UI.predToggle = tbl6.UI.gt.shoot:AddToggle("PredictionEnabled", { Text = "Enable Prediction", Default = tbl6.Features.Combat.PredictionEnabled })

	tbl6.UI.predSlider = tbl6.UI.gt.shoot:AddSlider("PredictionMultiplier", {
		Text = "Prediction Multiplier",
		Default = tbl6.Features.Combat.PredictionMultiplier,
		Min = 0,
		Max = 3,
		Rounding = 2,
		AllowRightClickInput = true,
	})

	tbl6.UI.gt.shoot:AddToggle("PingCheck", {
		Text = "Ping Check",
		Default = tbl6.Features.Combat.PingCheck ~= false,
		Callback = function(pingCheck)
			tbl6.Features.Combat.PingCheck = pingCheck
			tbl7.savePredictionConfig()
		end,
	})

	tbl6.UI.hmultSlider = tbl6.UI.gt.shoot:AddSlider("HorizontalMultiplier", {
		Text = "Horizontal Multiplier",
		Default = tbl6.Features.Combat.HorizontalMultiplier,
		Min = 0,
		Max = 3,
		Rounding = 2,
		AllowRightClickInput = true,
	})

	tbl6.UI.vmultSlider = tbl6.UI.gt.shoot:AddSlider("VerticalMultiplier", {
		Text = "Vertical Multiplier",
		Default = tbl6.Features.Combat.VerticalMultiplier,
		Min = 0,
		Max = 3,
		Rounding = 2,
		AllowRightClickInput = true,
	})

	tbl6.UI.gt.shoot:AddButton("Shoot Murderer", function()
		tbl7.shootmurd()
	end)

	tbl6.UI.gt.shoot:AddToggle("ShootButton", { Text = "Draggable Button", Default = false })
	tbl6.UI.gt.shoot:AddToggle("ShootMurdererWallCheck", { Text = "Wall Check", Default = false })
	tbl6.UI.gt.trig:AddToggle("TriggerBot", { Text = "Trigger Bot Toggle", Default = false })
	tbl6.UI.gt.trig:AddToggle("TriggerBotOnShiftlock", { Text = "Trigger Bot on Shiftlock", Default = false })
	tbl6.UI.gt.gun:AddLabel("Grab Gun Keybind"):AddKeyPicker("grabgun", { Text = "Grab Gun", Default = "Z", Mode = "Press", SyncToggleState = false, NoUI = false })
	tbl6.UI.gt.magicbullet:AddToggle("MagicBullet", { Text = "Magic Bullet", Default = false })
	tbl6.UI.gt.magicbullet:AddLabel("Magic Bullet Keybind"):AddKeyPicker("MagicBulletKey", { Text = "Magic Bullet", Default = "B", Mode = "Toggle", SyncToggleState = false, NoUI = false })
	tbl6.UI.gt.magicbullet:AddToggle("MagicBulletButton", { Text = "Draggable Button", Default = false })

	tbl6.UI.gt.shoot:AddLabel("Shoot Murderer Keybind"):AddKeyPicker("ShootMurdererKey", {
		Text = "Shoot Murderer",
		Default = "X",
		Mode = "Press",
		SyncToggleState = false,
		NoUI = false,
	})

	tbl6.UI.gt.killmurd:AddButton("Kill Murderer", function()
		tbl7.killMurderer()
	end)

	tbl6.UI.gt.killmurd:AddToggle("AutoKillMurderer", { Text = "Auto Kill Murderer", Default = false })
	tbl6.UI.gt.killmurd:AddLabel("Kill Murderer Keybind"):AddKeyPicker("KillMurdererKey", { Text = "Kill Murderer", Default = "V", Mode = "Press", SyncToggleState = false, NoUI = false })
	tbl6.UI.gt.killmurd:AddToggle("KillMurdererButton", { Text = "Draggable Button", Default = false })
	tbl6.UI.gt.silent:AddToggle("SilentAim", { Text = "Enable Sheriff Silent Aim", Default = false })

	tbl6.UI.gt.silent:AddToggle("SilentAimbutmurd", {
		Text = "Enable Murderer Silent Aim",
		Default = false,
		Callback = function(silentAimbutmurd)
			tbl6.Features.Combat.SilentAimbutmurd = silentAimbutmurd

			if silentAimbutmurd and not tbl6.Features.Combat._aimHookInstalled then
				tbl6.Features.Combat._aimHookInstalled = true
				task.spawn(tbl7.installAimHook)
			end
		end,
	})

	tbl6.UI.murdAimModeDropdown = tbl6.UI.gt.silent:AddDropdown("MurdererAimMode", {
		Text = "Murderer Target Mode",
		Values = { "Nearest to Cursor", "Nearest Player" },
		Default = "Nearest Player",
		Multi = false,
	})

	tbl6.UI.murdAimIgnoreDropdown = tbl6.UI.gt.silent:AddDropdown("MurdererIgnoreList", { Text = "Player Ignore List", Values = tbl6.Players.Names, Default = {}, Multi = true })

	tbl6.UI.gt.fast:AddToggle("FastThrow", {
		Text = "Fast Throw",
		Default = false,
		Callback = function(fastThrowEnabled)
			tbl6.Features.Combat.FastThrowEnabled = fastThrowEnabled

			if fastThrowEnabled then
				local character = tbl6.Player.LocalPlayer.Character

				if character then
					tbl7._fastThrowScan(character)
				end

				tbl7._fastThrowHookBackpack()
				local backpack = tbl6.Player.LocalPlayer:FindFirstChild("Backpack")

				if backpack then
					tbl7._fastThrowScan(backpack)
				end
			else
				for k_, fastThrowOriginal in pairs(tbl6.Features.Combat._fastThrowOriginals) do
					k_:SetAttribute("ThrowSpeed", fastThrowOriginal)
				end

				tbl6.Features.Combat._fastThrowOriginals = {}

				if tbl9.Legacy.fastThrowBP then
					tbl9.Legacy.fastThrowBP:Disconnect()
					tbl9.Legacy.fastThrowBP = nil
				end
			end
		end,
	})

	tbl6.UI.gt.fast:AddToggle("FastStab", {
		Text = "Fast Stab",
		Default = false,
		Callback = function(fastStabEnabled)
			tbl6.Features.Combat.FastStabEnabled = fastStabEnabled

			if fastStabEnabled then
				tbl7._hookStabAnims()
			else
				tbl7._unhookStabAnims()
			end
		end,
	})

	tbl6.UI.gt.fast:AddSlider("FastStabAnimSpeed", {
		Text = "Stab Anim Speed",
		Default = 2,
		Min = 1,
		Max = 5,
		Rounding = 1,
		AllowRightClickInput = true,
	}):OnChanged(function(fastStabAnimSpeed)
		tbl6.Features.Combat.FastStabAnimSpeed = fastStabAnimSpeed
		tbl7._applyStabSpeedToPlaying()
	end)

	tbl6.UI.gt.dual:AddToggle("KnifeDualEffect", {
		Text = "Use Knife Dual Effect",
		Default = false,
		Callback = function(knifeDualEffectEnabled)
			tbl6.Features.Visuals.KnifeDualEffectEnabled = knifeDualEffectEnabled
			tbl7.applyDualEffect("Knife")
		end,
	})

	tbl6.UI.gt.dual:AddToggle("GunDualEffect", {
		Text = "Use Gun Dual Effect",
		Default = false,
		Callback = function(gunDualEffectEnabled)
			tbl6.Features.Visuals.GunDualEffectEnabled = gunDualEffectEnabled
			tbl7.applyDualEffect("Gun")
		end,
	})

	tbl6.UI.gt.autothrow:AddToggle("AutoThrow", { Text = "Auto Throw Nearest", Default = false })

	tbl6.UI.gt.autothrow:AddButton("Throw Nearest", function()
		tbl7.throwKnife()
	end)

	tbl6.UI.gt.autothrow:AddLabel("Throw Keybind"):AddKeyPicker("ThrowKey", { Text = "Throw Nearest", Default = "C", Mode = "Press", SyncToggleState = false, NoUI = false })

	tbl6.UI.gt.kill:AddButton("Kill All", function()
		tbl7.killAll()
	end)

	tbl6.UI.gt.kill:AddToggle("KillAllButton", { Text = " Kill All Draggable Button", Default = false })
	tbl6.UI.playerDropdown = tbl6.UI.gt.kill:AddDropdown("KillTarget", { Text = "Select Player", Values = {}, Default = 1, Multi = false })

	tbl6.UI.gt.kill:AddButton("Kill Selected", function()
		local value = tbl6.UI.playerDropdown.Value

		if v4(value) == "table" then
			value = value[1]
		end

		if v4(value) == "string" and value ~= "" then
			local v10 = nil

			for _, v11 in ipairs(tbl6.Players.Cache) do
				if v11.Name == value then
					v10 = v11
					break
				else
					v10 = nil
				end
			end

			if v10 then
				tbl7.killPlayer(v10)
			end
		end
	end)

	tbl6.UI.gt.kill:AddToggle("AutoKillAll", { Text = "Auto Kill All", Default = false })

	tbl6.UI.gt.kill:AddLabel("Kill All Keybind"):AddKeyPicker("AutoKillKey", {
		Text = "Kill All Keybind",
		Default = nil,
		Mode = "Press",
		SyncToggleState = false,
		NoUI = false,
	})

	tbl6.UI.gt.kill:AddButton("Kill Sheriff", function()
		tbl7.killSheriff()
	end)

	tbl6.UI.gt.kill:AddToggle("KillSheriffButton", { Text = " Kill Sheriff Draggable Button", Default = false })
	tbl6.UI.gt.kill:AddToggle("AutoKillSheriff", { Text = "Auto Kill Sheriff", Default = false })
	tbl6.UI.gt.kill:AddLabel("Kill Sheriff Keybind"):AddKeyPicker("KillSheriffKey", { Text = "Kill Sheriff", Default = "G", Mode = "Press", SyncToggleState = false, NoUI = false })
	tbl5.a6_3 = nil
	tbl7.setCoinAuraFromAutoFarm = function(...) end
	tbl6.UI.gt.farm:AddLabel("Coin Aura is required. If it's off, Auto Farm will enable it and turn it off when disabled. If it was already on before Auto Farm, it will stay on.", true)

	tbl6.UI.gt.farm:AddToggle("AutoFarm", {
		Text = "Auto Farm",
		Default = false,
		Callback = function(autoFarmEnabled)
			tbl6.Features.AutoFarm.AutoFarmEnabled = autoFarmEnabled

			if autoFarmEnabled then
				local coinAura = tbl6.UI.Toggles and tbl6.UI.Toggles.CoinAura
				coinAura = coinAura and coinAura.Value or false
				tbl6.Features.AutoFarm.AutoFarmOriginalCoinAuraState = coinAura
				tbl6.Features.AutoFarm.AutoFarmOwnsCoinAura = not coinAura

				if tbl6.Features.AutoFarm.AutoFarmOwnsCoinAura then
					tbl7.setCoinAuraFromAutoFarm(true)
				end

				tbl7.startAutoFarm()

				task.defer(function()
					if tbl6.Features.AutoFarm.AutoFarmEnabled and tbl6.UI.Toggles.CoinAura.Value and not tbl9.Legacy.coinAuraLoop then
						tbl5.a6_3()
					end
				end)
			else
				tbl7.stopAutoFarm()

				if tbl6.Features.AutoFarm.AutoFarmOwnsCoinAura then
					tbl7.setCoinAuraFromAutoFarm(false)
				end

				tbl6.Features.AutoFarm.AutoFarmOwnsCoinAura = false
				tbl6.Features.AutoFarm.AutoFarmOriginalCoinAuraState = nil
			end
		end,
	})

	tbl6.UI.gt.farm:AddSlider("AutoFarmTweenSpeed", {
		Text = "Tween Speed",
		Default = tbl6.Features.AutoFarm.AutoFarmTweenSpeed,
		Min = 0,
		Max = 100,
		Rounding = 1,
		AllowRightClickInput = true,
		Callback = function(autoFarmTweenSpeed)
			tbl6.Features.AutoFarm.AutoFarmTweenSpeed = autoFarmTweenSpeed
		end,
	})

	tbl6.UI.gt.farm:AddSlider("AutoFarmTweenDelay", {
		Text = "Tween Delay (s)",
		Default = tbl6.Features.AutoFarm.AutoFarmTweenDelay,
		Min = 0,
		Max = 100,
		Rounding = 2,
		Suffix = "s",
		Tooltip = "Delay before tweening to the next target in seconds",
		AllowRightClickInput = true,
		Callback = function(autoFarmTweenDelay)
			tbl6.Features.AutoFarm.AutoFarmTweenDelay = autoFarmTweenDelay
		end,
	})

	tbl6.UI.gt.farm:AddToggle("3DRendering", {
		Text = "Disable 3D Rendering",
		Default = false,
		Callback = function(autoFarm3DRendering)
			tbl6.Features.AutoFarm.AutoFarm3DRendering = autoFarm3DRendering

			if tbl2 ~= nil and tbl4 ~= nil and tbl4.RunService ~= nil and v4(tbl4.RunService.Set3dRenderingEnabled) == "function" then
				tbl4.RunService:Set3dRenderingEnabled(not autoFarm3DRendering)
			end
		end,
	})

	tbl6.UI.gt.farmstatus = tbl6.t.af:AddRightGroupbox("Status")

	tbl6.UI.autoFarmStatsLabel = tbl6.UI.gt.farmstatus:AddLabel([[<font color="rgb(120,220,255)"><b>Auto Farm</b></font> • <font color="rgb(255,255,255)">Idle</font>
<font color="rgb(255,255,255)">Coins:</font> <font color="rgb(80,255,120)">0</font> • <font color="rgb(255,255,255)">Time:</font> <font color="rgb(255,200,80)">0:00</font>
<font color="rgb(255,255,255)">Rate:</font> <font color="rgb(255,120,120)">0/hr</font>]], true)

	tbl6.UI.gt.farmstatus:AddToggle("AutoFarmOverlay", {
		Text = "Status Overlay",
		Default = false,
		Callback = function(arg)
			tbl7.setAutoFarmOverlayEnabled(arg)
		end,
	})

	tbl7.updateAutoFarmStatsLabel()

	if not tbl6.Features.AutoFarm.AutoFarmStatsConn then
		tbl6.Features.AutoFarm.AutoFarmStatsConn = heartbeat:Connect(function()
			local v10 = v7()

			if not tbl6._lastAutoFarmStatsUpdate or v10 - tbl6._lastAutoFarmStatsUpdate >= 1 then
				tbl6._lastAutoFarmStatsUpdate = v10
				tbl7.updateAutoFarmStatsLabel()
			end
		end)
	end

	tbl6.UI.gt.farmfull:AddToggle("PostFarmKillMurd", {
		Text = "Auto Kill Murderer (Sheriff/Hero)",
		Default = false,
		Callback = function(postFarmKillMurd)
			tbl6.Features.PostFarm.PostFarmKillMurd = postFarmKillMurd
		end,
	})

	tbl6.UI.gt.farmfull:AddToggle("PostFarmKillAll", {
		Text = "Auto Kill All (Murderer)",
		Default = false,
		Callback = function(postFarmKillAll)
			tbl6.Features.PostFarm.PostFarmKillAll = postFarmKillAll
		end,
	})

	tbl6.UI.gt.farmfull:AddToggle("PostFarmFlingMurd", {
		Text = "Auto Fling Murderer (Innocent)",
		Default = false,
		Callback = function(postFarmFlingMurd)
			tbl6.Features.PostFarm.PostFarmFlingMurd = postFarmFlingMurd
		end,
	})

	tbl6.UI.gt.farmfull:AddToggle("PostFarmResetInno", {
		Text = "Auto Reset (Innocent)",
		Default = false,
		Callback = function(postfarmresetin)
			tbl6.Features.PostFarm.postfarmresetin = postfarmresetin
		end,
	})

	tbl6.UI.gt.farmfull:AddToggle("PostFarmResetSher", {
		Text = "Auto Reset (Sheriff/Hero)",
		Default = false,
		Callback = function(postfarmresetsh)
			tbl6.Features.PostFarm.postfarmresetsh = postfarmresetsh
		end,
	})

	tbl6.UI.gt.farmfull:AddToggle("PostFarmResetMurd", {
		Text = "Auto Reset (Murderer)",
		Default = false,
		Callback = function(postfarmresetmurd)
			tbl6.Features.PostFarm.postfarmresetmurd = postfarmresetmurd
		end,
	})

	tbl6.UI.gt.webhook:AddToggle("WebhookOnFull", {
		Text = "Send on Full",
		Default = false,
		Callback = function(webhookOnFull)
			tbl6.Features.Webhook.WebhookOnFull = webhookOnFull
		end,
	})

	tbl6.UI.gt.webhook:AddToggle("WebhookInterval", {
		Text = "Send by Interval",
		Default = false,
		Callback = function(webhookEnabled)
			tbl6.Features.Webhook.WebhookEnabled = webhookEnabled

			if webhookEnabled and tbl6.Features.Webhook.WebhookURL ~= "" then
				tbl7.startWebhookLoop()
			else
				tbl7.stopWebhookLoop()
			end
		end,
	})

	tbl6.UI.gt.webhook:AddInput("WebhookURL", {
		Default = "",
		Numeric = false,
		Finished = false,
		ClearTextOnFocus = true,
		Text = "Webhook URL",
		Tooltip = "Discord webhook URL",
		Placeholder = "https://discord.com/api/webhooks/...",
		Callback = function(webhookURL)
			tbl6.Features.Webhook.WebhookURL = webhookURL
		end,
	})

	tbl6.UI.gt.webhook:AddInput("WebhookIntervalInput", {
		Default = "10",
		Numeric = true,
		Finished = false,
		ClearTextOnFocus = false,
		Text = "Interval (seconds)",
		Tooltip = "Webhook send interval in seconds",
		Placeholder = "10",
		Callback = function(arg)
			tbl6.Features.Webhook.WebhookInterval = tonumber(arg) or 10
		end,
	})

	tbl6.UI.lpgt.noclip:AddToggle("Noclip", { Text = "Enable Noclip", Default = false })
	tbl6.UI.lpgt.noclip:AddToggle("NoclipButton", { Text = "Draggable Button", Default = false })
	tbl6.UI.lpgt.xray:AddToggle("XRay", { Text = "Enable X-Ray", Default = false })
	tbl6.UI.lpgt.xray:AddToggle("XRayButton", { Text = "Draggable Button", Default = false })
	tbl6.UI.lpgt.infjump:AddToggle("InfiniteJump", { Text = "Enable Infinite Jump", Default = false })
	tbl6.UI.lpgt.infjump:AddToggle("InfiniteJumpButton", { Text = "Draggable Button", Default = false })
	tbl6.UI.lpgt.fly:AddToggle("Fly", { Text = "Enable Fly", Default = false })
	tbl6.UI.lpgt.fly:AddToggle("FlyButton", { Text = "Draggable Button", Default = false })
	tbl6.UI.lpgt.speedglitch:AddToggle("SpeedGlitch", { Text = "Enable Speed Glitch", Default = false })
	tbl6.UI.lpgt.speedglitch:AddToggle("OnlySideways", { Text = "Only When Jumping Sideways", Default = false })
	tbl6.UI.lpgt.speedglitch:AddToggle("SpeedGlitchButton", { Text = "Draggable Button", Default = false })
	tbl6.UI.lpgt.invisible:AddToggle("Invisible", { Text = "Enable Invisible", Default = false })
	tbl6.UI.lpgt.invisible:AddToggle("InvisibleButton", { Text = "Draggable Button", Default = false })

	tbl6.UI.wsSlider = tbl6.UI.lpgt.movement:AddSlider("WalkSpeed", {
		Text = "WalkSpeed",
		Default = 16,
		Min = 0,
		Max = 500,
		Rounding = 0,
		AllowRightClickInput = true,
	})

	tbl6.UI.jpSlider = tbl6.UI.lpgt.movement:AddSlider("JumpPower", {
		Text = "JumpPower",
		Default = 50,
		Min = 0,
		Max = 500,
		Rounding = 0,
		AllowRightClickInput = true,
	})

	tbl6.UI.lpgt.antifling:AddToggle("AntiFling", { Text = "Enable Anti Fling", Default = false })
	tbl6.UI.lpgt.antivoid:AddToggle("AntiVoid", { Text = "Enable Anti Void", Default = false })
	tbl6.UI.lpgt.antivoid:AddToggle("AntiAFK", { Text = "Enable Anti AFK", Default = false })
	tbl6.UI.tpgt.locations:AddButton("Teleport to Lobby", tbl7.teleportToLobby)
	tbl6.UI.tpgt.locations:AddButton("Teleport to Map", tbl7.teleportToMap)

	tbl6.UI.tpPlayerDropdown = tbl6.UI.tpgt.players:AddDropdown("TPPlayerTarget", {
		Text = "Select Player",
		Values = tbl6.Players.Names,
		Default = 1,
		Multi = false,
		SpecialType = "Player",
	})

	tbl6.UI.tpgt.locations:AddButton("Teleport to Above Map", tbl7.teleportAboveMap)
	tbl6.UI.tpgt.locations:AddButton("Teleport to Void (Safe)", tbl7.teleportToVoid)

	tbl6.UI.tpgt.players:AddButton("Teleport to Player", function()
		tbl7.teleportToPlayer(tbl6.UI.tpPlayerDropdown and tbl6.UI.tpPlayerDropdown.Value)
	end)

	tbl6.UI.tpgt.players:AddButton("Spectate Selected", function()
		tbl7.spectatePlayer(tbl6.UI.tpPlayerDropdown and tbl6.UI.tpPlayerDropdown.Value)
	end)

	tbl6.UI.tpgt.players:AddButton("Stop Spectating", tbl7.stopSpectate)

	tbl6.UI.tpgt.players:AddButton("Spectate Murderer", function()
		tbl7.spectatePlayer(tbl6.Game.currentMurderer)
	end)

	tbl6.UI.tpgt.players:AddButton("Spectate Sheriff", function()
		tbl7.spectatePlayer(tbl6.Game.currentSheriff)
	end)

	tbl6.UI.tpgt.locations:AddToggle("TeleportMapButton", { Text = "Draggable Teleport to Map Button", Default = false })
	tbl6.UI.tpgt.locations:AddToggle("TeleportLobbyButton", { Text = "Draggable Teleport to Lobby Button", Default = false })
	tbl6.UI.tpgt.locations:AddToggle("TeleportVoidButton", { Text = "Draggable Teleport to Void Button", Default = false })
	tbl6.UI.tpgt.locations:AddToggle("TeleportAboveButton", { Text = "Draggable Teleport to Above Map Button", Default = false })
	local ui = tbl6.UI
	local status = tbl6.UI.ggt.status
	local addLabel = status.AddLabel
	local str = ("Murderer : %*"):format(tbl7.getColorString(tbl6.Features.ESP.espSettings.UnknownColor, "None"))
	ui.statusMurdererLabel = addLabel(status, str)
	local ui2 = tbl6.UI
	local status2 = tbl6.UI.ggt.status
	local addLabel2 = status2.AddLabel
	local str2 = ("Sheriff : %*"):format(tbl7.getColorString(tbl6.Features.ESP.espSettings.UnknownColor, "None"))
	ui2.statusSheriffLabel = addLabel2(status2, str2)
	local ui3 = tbl6.UI
	local status3 = tbl6.UI.ggt.status
	local addLabel3 = status3.AddLabel
	local str3 = ("Dropped Gun : %*"):format(tbl7.getColorString(tbl6.Features.ESP.espSettings.UnknownColor, "false"))
	ui3.statusGunLabel = addLabel3(status3, str3)
	tbl6.UI.ggt.status:AddToggle("GunDropNotify", { Text = "Gun Drop Notification", Default = false })

	tbl7.isGlitchProof = function(arg)
		return arg and arg.Name == "GlitchProof"
	end

	tbl6.UI.ggt.barriers:AddToggle("RemoveBarriers", {
		Text = "Remove Barriers",
		Default = false,
		Callback = function(arg)
			if arg then
				tbl7.startRemoveBarriers()
			else
				tbl7.stopRemoveBarriers()
			end
		end,
	})

	tbl6.UI.ggt.status:AddToggle("StatusOverlay", {
		Text = "Status Overlay",
		Default = false,
		Callback = function(statusOverlayEnabled)
			tbl6.Features.Visuals.StatusOverlayEnabled = statusOverlayEnabled

			if statusOverlayEnabled then
				if not tbl6.UI.statusDraggableLabel then
					tbl6.UI.statusDraggableLabel = tbl6.UI.lib and tbl6.UI.lib.AddDraggableLabel and tbl6.UI.lib:AddDraggableLabel("Status: Initializing")

					if tbl6.UI.statusDraggableLabel and tbl6.UI.statusDraggableLabel.SetVisible then
						tbl6.UI.statusDraggableLabel:SetVisible(true)
					end
				end

				tbl7.updateStatusLabels()
			elseif tbl6.UI.statusDraggableLabel then
				tbl6.UI.statusDraggableLabel:Destroy()
				tbl6.UI.statusDraggableLabel = nil
			end
		end,
	})

	tbl6.UI.ggt.prediction:AddToggle("InstantRoleNotify", { Text = "Instant Role Notify", Default = false })
	tbl6.UI.ggt.prediction:AddToggle("ShowMurdererChance", { Text = "Show Murderer Chance", Default = false })
	tbl6.UI.ggt.timer:AddToggle("ShowRoundTimer", { Text = "Show Round Timer", Default = false })
	tbl6.UI.ggt.blurt:AddButton("Blurt Sheriff", tbl7.blurtSheriff)
	tbl6.UI.ggt.blurt:AddButton("Blurt Murderer", tbl7.blurtMurderer)
	tbl6.UI.ggt.blurt:AddButton("Blurt Both", tbl7.blurtBoth)
	tbl6.UI.ggt.blurt:AddLabel("Blurt Sheriff Keybind"):AddKeyPicker("BlurtSheriffKey", { Text = "Blurt Sheriff", Default = nil, Mode = "Press", SyncToggleState = false, NoUI = false })

	tbl6.UI.ggt.blurt:AddLabel("Blurt Murderer Keybind"):AddKeyPicker("BlurtMurdererKey", {
		Text = "Blurt Murderer",
		Default = nil,
		Mode = "Press",
		SyncToggleState = false,
		NoUI = false,
	})

	tbl6.UI.ggt.blurt:AddLabel("Blurt Both Keybind"):AddKeyPicker("BlurtBothKey", { Text = "Blurt Both", Default = nil, Mode = "Press", SyncToggleState = false, NoUI = false })
	tbl6.UI.ggt.expose:AddToggle("ExposeRoles", { Text = "Auto Expose Roles", Default = false })
	tbl6.UI.ggt.expose:AddButton("Expose Sheriff", tbl7.exposeSheriff)
	tbl6.UI.ggt.expose:AddButton("Expose Murderer", tbl7.exposeMurderer)
	tbl6.UI.ggt.expose:AddButton("Expose Both", tbl7.exposeBoth)

	tbl6.UI.ggt.expose:AddLabel("Expose Sheriff Keybind"):AddKeyPicker("ExposeSheriffKey", {
		Text = "Expose Sheriff",
		Default = nil,
		Mode = "Press",
		SyncToggleState = false,
		NoUI = false,
	})

	tbl6.UI.ggt.expose:AddLabel("Expose Murderer Keybind"):AddKeyPicker("ExposeMurdererKey", {
		Text = "Expose Murderer",
		Default = nil,
		Mode = "Press",
		SyncToggleState = false,
		NoUI = false,
	})

	tbl6.UI.ggt.expose:AddLabel("Expose Both Keybind"):AddKeyPicker("ExposeBothKey", { Text = "Expose Both", Default = nil, Mode = "Press", SyncToggleState = false, NoUI = false })
	tbl6.UI.ggt.fling:AddButton("Fling Murderer", tbl7.flingMurderer)
	tbl6.UI.ggt.fling:AddButton("Fling Sheriff/Hero", tbl7.flingSheriffHero)
	tbl6.UI.ggt.fling:AddButton("Fling Everyone", tbl7.flingEveryone)
	tbl6.UI.flingStatusLabel = tbl6.UI.ggt.fling:AddLabel("Fling Status: Idle")
	tbl6.UI.flingDropdown = tbl6.UI.ggt.fling:AddDropdown("FlingTarget", { Text = "Select Player", Values = tbl6.Players.Names, Default = 1, Multi = false })
	tbl6.UI.ggt.fling:AddButton("Fling Selected", tbl7.flingSelected)
	tbl6.UI.ggt.fling:AddToggle("FlingMurdererButton", { Text = "Draggable Fling Murd Btn", Default = false })
	tbl6.UI.ggt.fling:AddToggle("FlingSheriffButton", { Text = "Draggable Fling Sher Btn", Default = false })
	tbl6.UI.ggt.fling:AddToggle("FlingEveryoneButton", { Text = "Draggable Fling All Btn", Default = false })
	tbl6.UI.touchFlingStatusLabel = tbl6.UI.ggt.touchfling:AddLabel("Touch Fling: OFF")
	tbl6.UI.ggt.touchfling:AddToggle("TouchFling", { Text = "Enable Touch Fling", Default = false })
	tbl6.UI.ggt.touchfling:AddToggle("TouchFlingButton", { Text = "Draggable Button", Default = false })
	tbl6.UI.ggt.optimizations:AddToggle("DisableChromaSkins", { Text = "Disable Chroma Skins", Default = false })
	tbl6.UI.ggt.coinaura:AddToggle("CoinAura", { Text = "Coin Aura", Default = false })
	tbl6.UI.ggt.trickshot:AddToggle("TrickshotButton", { Text = "Draggable Button", Default = false })
	tbl6.UI.ggt.trickshot:AddLabel("Flick Keybind"):AddKeyPicker("FlickKey", { Text = "Flick", Default = nil, Mode = "Press", SyncToggleState = false, NoUI = false })
	tbl6.UI.ggt.aimlock:AddToggle("AimlockEnabled", { Text = "Enable Aimlock", Default = false })
	tbl6.UI.ggt.aimlock:AddToggle("AimlockMurderer", { Text = "Aimlock Murderer", Default = false })
	tbl6.UI.ggt.aimlock:AddToggle("AimlockSheriff", { Text = "Aimlock Sheriff", Default = false })
	tbl6.UI.aimlockTargetDropdown = tbl6.UI.ggt.aimlock:AddDropdown("AimlockTarget", { Text = "Select Target", Values = tbl6.Players.Names, Default = 1, Multi = false })
	tbl6.UI.ggt.aimlock:AddToggle("AimlockSelected", { Text = "Aimlock Selected Player", Default = false })

	tbl6.UI.aimlockSmoothnessSlider = tbl6.UI.ggt.aimlock:AddSlider("AimlockSmoothness", {
		Text = "Smoothness",
		Default = tbl6.Features.Combat.AimlockSmoothness,
		Min = 1,
		Max = 50,
		Rounding = 1,
		AllowRightClickInput = true,
	})

	tbl6.UI.ggt.bombjump:AddLabel("Bomb Jump Keybind"):AddKeyPicker("BombJumpKey", { Text = "Bomb Jump", Default = nil, Mode = "Press", SyncToggleState = false, NoUI = false })
	tbl6.UI.ggt.bombjump:AddToggle("BombJumpAuto", { Text = "Enable Auto Bomb Jump", Default = false })
	tbl6.UI.ggt.bombjump:AddToggle("BombJumpAutoGet", { Text = "Auto-Get Fake Bomb", Default = false })
	tbl6.UI.ggt.bombjump:AddToggle("BombJumpButton", { Text = "Draggable Button", Default = false })

	local function fn9()
		if tbl9.Legacy.feAnimChar then
			tbl9.Legacy.feAnimChar:Disconnect()
			tbl9.Legacy.feAnimChar = nil
		end

		tbl6.Features.Visuals.FEAnimState = {
			all = "Default",
			idle = "Default",
			walk = "Default",
			run = "Default",
			jump = "Default",
			climb = "Default",
			fall = "Default",
		}

		if tbl6.Player.LocalPlayer.Character then
			task.spawn(function()
				tbl6:RestoreFEAnimOriginals(tbl6.Player.LocalPlayer.Character)
			end)
		end
	end

	tbl6.UI.ggt.feanim:AddToggle("FEAnim", {
		Text = "Enable FE Anims",
		Default = false,
		Callback = function(feAnimEnabled)
			tbl6.Features.Visuals.FEAnimEnabled = feAnimEnabled

			if not feAnimEnabled then
				fn9()
			end
		end,
	})

	tbl6.UI.ggt.feanim:AddDropdown("FEAnimAll", {
		Text = "All Animations",
		Values = {
			"Default",
			"Vampire",
			"Hero",
			"Zombie Classic",
			"Mage",
			"Ghost",
			"Elder",
			"Levitation",
			"Astronaut",
			"Ninja",
			"Werewolf",
			"Cartoon",
			"Pirate",
			"Sneaky",
			"Toy",
			"Knight",
			"Confident",
			"Popstar",
			"Princess",
			"Cowboy",
			"Patrol",
			"Zombie FE",
			"Catwalk Glam",
			"Amazon Unboxed",
			"Glow Motion",
			"Bubbly",
			"Adidas Comm",
			"KATSEYE",
			"Wicked Popular",
		},
		Default = 1,
	})

	tbl6.UI.ggt.feanim:AddDropdown("FEAnimIdle", {
		Text = "Idle Animation",
		Values = {
			"Default",
			"Vampire",
			"Hero",
			"Zombie Classic",
			"Mage",
			"Ghost",
			"Elder",
			"Levitation",
			"Astronaut",
			"Ninja",
			"Werewolf",
			"Cartoon",
			"Pirate",
			"Sneaky",
			"Toy",
			"Knight",
			"Confident",
			"Popstar",
			"Princess",
			"Cowboy",
			"Patrol",
			"Zombie FE",
			"Catwalk Glam",
			"Amazon Unboxed",
			"Glow Motion",
			"Bubbly",
			"Adidas Comm",
			"KATSEYE",
			"Wicked Popular",
		},
		Default = 1,
	})

	tbl6.UI.ggt.feanim:AddDropdown("FEAnimWalk", {
		Text = "Walk Animation",
		Values = {
			"Default",
			"Vampire",
			"Hero",
			"Zombie Classic",
			"Mage",
			"Ghost",
			"Elder",
			"Levitation",
			"Astronaut",
			"Ninja",
			"Werewolf",
			"Cartoon",
			"Pirate",
			"Sneaky",
			"Toy",
			"Knight",
			"Confident",
			"Popstar",
			"Princess",
			"Cowboy",
			"Patrol",
			"Zombie FE",
			"Catwalk Glam",
			"Amazon Unboxed",
			"Glow Motion",
			"Bubbly",
			"Adidas Comm",
			"KATSEYE",
			"Wicked Popular",
		},
		Default = 1,
	})

	tbl6.UI.ggt.feanim:AddDropdown("FEAnimRun", {
		Text = "Run Animation",
		Values = {
			"Default",
			"OG Rthro Run",
			"Vampire",
			"Hero",
			"Zombie Classic",
			"Mage",
			"Ghost",
			"Elder",
			"Levitation",
			"Astronaut",
			"Ninja",
			"Werewolf",
			"Cartoon",
			"Pirate",
			"Sneaky",
			"Toy",
			"Knight",
			"Confident",
			"Popstar",
			"Princess",
			"Cowboy",
			"Patrol",
			"Zombie FE",
			"Catwalk Glam",
			"Amazon Unboxed",
			"Glow Motion",
			"Bubbly",
			"Adidas Comm",
			"KATSEYE",
			"Wicked Popular",
		},
		Default = 1,
	})

	tbl6.UI.ggt.feanim:AddDropdown("FEAnimJump", {
		Text = "Jump Animation",
		Values = {
			"Default",
			"Vampire",
			"Hero",
			"Zombie Classic",
			"Mage",
			"Ghost",
			"Elder",
			"Levitation",
			"Astronaut",
			"Ninja",
			"Werewolf",
			"Cartoon",
			"Pirate",
			"Sneaky",
			"Toy",
			"Knight",
			"Confident",
			"Popstar",
			"Princess",
			"Cowboy",
			"Patrol",
			"Zombie FE",
			"Catwalk Glam",
			"Amazon Unboxed",
			"Glow Motion",
			"Bubbly",
			"Adidas Comm",
			"KATSEYE",
			"Wicked Popular",
		},
		Default = 1,
	})

	tbl6.UI.ggt.feanim:AddDropdown("FEAnimClimb", {
		Text = "Climb Animation",
		Values = {
			"Default",
			"Vampire",
			"Hero",
			"Zombie Classic",
			"Mage",
			"Ghost",
			"Elder",
			"Levitation",
			"Astronaut",
			"Ninja",
			"Werewolf",
			"Cartoon",
			"Pirate",
			"Sneaky",
			"Toy",
			"Knight",
			"Confident",
			"Popstar",
			"Princess",
			"Cowboy",
			"Patrol",
			"Zombie FE",
			"Catwalk Glam",
			"Amazon Unboxed",
			"Glow Motion",
			"Bubbly",
			"Adidas Comm",
			"KATSEYE",
			"Wicked Popular",
		},
		Default = 1,
	})

	tbl6.UI.ggt.feanim:AddDropdown("FEAnimFall", {
		Text = "Fall Animation",
		Values = {
			"Default",
			"Vampire",
			"Hero",
			"Zombie Classic",
			"Mage",
			"Ghost",
			"Elder",
			"Levitation",
			"Astronaut",
			"Ninja",
			"Werewolf",
			"Cartoon",
			"Pirate",
			"Sneaky",
			"Toy",
			"Knight",
			"Confident",
			"Popstar",
			"Princess",
			"Cowboy",
			"Patrol",
			"Zombie FE",
			"Catwalk Glam",
			"Amazon Unboxed",
			"Glow Motion",
			"Bubbly",
			"Adidas Comm",
			"KATSEYE",
			"Wicked Popular",
		},
		Default = 1,
	})

	tbl6.UI.settingsgt.m:AddLabel("Button Lock")

	tbl6.UI.lockDropdown = tbl6.UI.settingsgt.m:AddDropdown("LockButtonDropdown", {
		Text = "Lock Button",
		Values = {
			"Grab Gun",
			"Shoot Murderer",
			"Noclip",
			"X-Ray",
			"Infinite Jump",
			"Fly",
			"Speed Glitch",
			"Kill Murderer",
			"Kill All",
			"Fling Murderer",
			"Fling Sheriff",
			"Fling Everyone",
			"Touch Fling",
			"Invisible",
			"Trickshot",
			"Bomb Jump",
			"Magic Bullet",
			"Sit",
			"Ninja Rest",
			"Zen",
			"Dab",
			"Floss",
			"Zombie",
			"Headless",
		},
		Multi = true,
	})

	tbl6.UI.settingsgt.m:AddButton("Lock Selected", function()
		local v10 = tbl7.getDropdownNames(tbl6.UI.lockDropdown.Value)

		for _, v11 in ipairs(v10) do
			tbl6.UI.lockedButtons[v11] = true
		end

		if #v10 > 0 then
			tbl7.saveLockConfig()
			tbl6.UI.lib:Notify({ Title = "Buttons Locked", Description = #v10 .. " button(s) locked", Time = 3 })
		end
	end)

	tbl6.UI.settingsgt.m:AddButton("Unlock Selected", function()
		local v10 = tbl7.getDropdownNames(tbl6.UI.lockDropdown.Value)

		for _, v11 in ipairs(v10) do
			if tbl6.UI.lockedButtons[v11] == true then
				tbl6.UI.lockedButtons[v11] = nil
			end
		end

		if #v10 > 0 then
			tbl7.saveLockConfig()
			tbl6.UI.lib:Notify({ Title = "Buttons Unlocked", Description = #v10 .. " button(s) unlocked", Time = 3 })
		end
	end)

	tbl6.UI.settingsgt.m:AddButton("Lock All", function()
		for _, child in ipairs(tbl6.UI.floatingGui:GetChildren()) do
			if child:IsA("TextButton") then
				local v10 = tbl7.trim(child:GetAttribute("LockKey") or child.Text)

				if v10 and v10 ~= "" then
					tbl6.UI.lockedButtons[v10] = true
				end
			end
		end

		tbl7.saveLockConfig()
		tbl6.UI.lib:Notify({ Title = "All Locked", Description = "All buttons are now locked", Time = 3 })
	end)

	tbl6.UI.settingsgt.m:AddButton("Unlock All", function()
		for k_ in pairs(tbl6.UI.lockedButtons) do
			tbl6.UI.lockedButtons[k_] = nil
		end

		tbl7.saveLockConfig()
		tbl6.UI.lib:Notify({ Title = "All Unlocked", Description = "All buttons are now draggable", Time = 3 })
	end)

	tbl6.UI.Toggles = tbl6.UI.lib.Toggles
	tbl6.UI.Options = tbl6.UI.lib.Options

	tbl6.UI.maingt.performance:AddToggle("PerformanceHud", {
		Text = "Show Performance HUD",
		Default = false,
		Callback = function(arg)
			tbl7.setPerformanceHudEnabled(arg)
		end,
	})

	tbl7.setPerformanceHudEnabled(false)

	tbl6.UI.maingt.info:AddLabel(([[<font color="rgb(120,220,255)"><b>LuWare Information</b></font>
<font color="rgb(255,255,255)">Username:</font> <font color="rgb(190,220,255)"><b>%*</b></font>
<font color="rgb(255,255,255)">Game Name:</font> <font color="rgb(190,220,255)"><b>%*</b></font>
<font color="rgb(255,255,255)">Website:</font> <font color="rgb(120,220,255)"><b>luware.filho.wtf</b></font>
<font color="rgb(255,255,255)">Version:</font> <font color="rgb(190,220,255)"><b>%*</b></font>
<font color="rgb(255,255,255)">Executor:</font> <font color="rgb(190,220,255)"><b>%*</b></font>
<font color="rgb(255,255,255)">Made By:</font> <font color="rgb(255,190,120)"><b>@l.u.a.u on Discord</b></font>

<font color="rgb(120,255,170)"><b>You are the %*%* executor!</b></font>]]):format(tbl6.Player.LocalPlayer.Name, tbl5.a1_2, tbl6.Game.version, tbl6.Game.executor, tbl5.a2_2, tbl5.a3_2), true)

	tbl6.UI.maingt.info:AddLabel(("<font color=\"rgb(255,255,255)\">Your Executions:</font> <font color=\"rgb(120,255,170)\"><b>%*</b></font>\n<font color=\"rgb(255,255,255)\">Total Executions:</font> <font color=\"rgb(255,200,120)\"><b>%*</b></font>"):format(tbl5.q, tbl5.s_2), true)

	tbl6.UI.fungt.sky:AddToggle("SkyEnabled", {
		Text = "Enable Custom Sky",
		Default = false,
		Callback = function(arg)
			tbl7.setSkyEnabled(arg)
		end,
	})

	tbl6.UI.fungt.sky:AddLabel("Sky Color"):AddColorPicker("SkyColor", {
		Default = tbl6.Features.Visuals.SkyColor,
		Title = "Sky Color",
		Callback = function(arg)
			tbl7.updateSkyColor(arg)
		end,
	})

	tbl6.UI.fungt.sky:AddLabel("Fog Color"):AddColorPicker("SkyFogColor", {
		Default = tbl6.Features.Visuals.SkyFogColor,
		Title = "Fog Color",
		Callback = function(arg)
			tbl7.updateSkyFogColor(arg)
		end,
	})

	tbl6.UI.fungt.sky:AddSlider("SkyFogStart", {
		Text = "Fog Start",
		Default = tbl6.Features.Visuals.SkyFogStart,
		Min = 0,
		Max = 2000,
		Rounding = 0,
		Callback = function(arg)
			tbl7.updateSkyFogStart(arg)
		end,
	})

	tbl6.UI.fungt.sky:AddSlider("SkyFogEnd", {
		Text = "Fog End",
		Default = tbl6.Features.Visuals.SkyFogEnd,
		Min = 50,
		Max = 5000,
		Rounding = 0,
		Callback = function(arg)
			tbl7.updateSkyFogEnd(arg)
		end,
	})

	tbl6.UI.fungt.sky:AddToggle("SkyParticles", {
		Text = "Flying Sky Particles",
		Default = false,
		Callback = function(arg)
			tbl6.Features.Visuals.SkyParticlesEnabled = arg == true

			if tbl6.Features.Visuals.SkyEnabled then
				tbl7.setupSkyParticles()
			end
		end,
	})

	tbl6.UI.fungt.sky:AddLabel("Particle Color"):AddColorPicker("SkyParticlesColor", {
		Default = tbl6.Features.Visuals.SkyParticlesColor,
		Title = "Particle Color",
		Callback = function(arg)
			tbl7.updateSkyParticlesColor(arg)
		end,
	})

	tbl6.UI.fungt.hitmarker:AddToggle("HitmarkerKnifeEnabled", {
		Text = "Knife Enabled",
		Default = false,
		Callback = function(enabled)
			tbl6.Features.Visuals.Hitmarker.Knife.Enabled = enabled
		end,
	})

	tbl6.UI.fungt.hitmarker:AddToggle("HitmarkerGunshotEnabled", {
		Text = "Gunshot Enabled",
		Default = false,
		Callback = function(enabled)
			tbl6.Features.Visuals.Hitmarker.Gunshot.Enabled = enabled
		end,
	})

	tbl6.UI.fungt.hitmarker:AddToggle("HitmarkerReloadEnabled", {
		Text = "Reload Enabled",
		Default = false,
		Callback = function(enabled)
			tbl6.Features.Visuals.Hitmarker.Reload.Enabled = enabled
		end,
	})

	tbl7.loadCustomSoundPresets()

	tbl6.Features.Visuals.KnifeSoundPresets = {
		Default = "142247768",
		["Realistic Swing #1"] = "88486886540552",
		["Realistic Swing #2"] = "85420154248547",
		["Realistic Swing #3"] = "78140114976741",
		["HL2 Crowbar"] = "2156366946",
		FAHHHHH = "139922944531667",
		["FAHHHHH (w/Explosion)"] = "136811509829663",
	}

	tbl6.Features.Visuals.GunSoundPresets = {
		Default = "10209803",
		["Realistic Gun Shot #1"] = "125103649230147",
		["Realistic Gun Shot #2"] = "99330025121805",
		["Realistic Gun Shot #3"] = "109237542107005",
		["Lazer Gun Shot #1"] = "122914613842358",
		["Lazer Gun Shot #2"] = "1019401548",
		FAHHHHH = "139922944531667",
		["FAHHHHH (w/Explosion)"] = "136811509829663",
		["Old Explosion"] = "140278004623742",
		["HL2 Rocket Launcher"] = "2157448269",
	}

	tbl6.Features.Visuals.ReloadSoundPresets = { Default = "4753414199" }

	tbl7.buildSoundPresetNames = function(arg)
		local tbl16 = { "None" }

		for k_ in next, arg, nil do
			insert(tbl16, k_)
		end

		table.sort(tbl16, function(arg2, arg3)
			return string.lower(arg2) < string.lower(arg3)
		end)

		return tbl16
	end

	tbl7.soundPresetHandler = function(arg, arg2, arg3)
		return function(arg4)
			arg4 = arg4 and tbl7.getSoundPresets(arg)[arg4]
			if not arg4 then
				return
			end
			local options = tbl6.UI.lib and tbl6.UI.lib.Options and tbl6.UI.lib.Options[arg3]

			if options then
				options:SetValue(arg4)
			end

			tbl7.setHitmarkerSound(arg2, arg4)
		end
	end

	local Knife = tbl7.soundPresetHandler("Knife", "Knife", "HitmarkerKnifeSound")

	tbl6.UI.knifeSoundPresetDropdown = tbl6.UI.fungt.hitmarker:AddDropdown("KnifeSoundPreset", {
		Text = "Knife SFX Presets",
		Values = tbl7.buildSoundPresetNames(tbl7.getSoundPresets("Knife")),
		Default = "None",
		Multi = false,
		Searchable = true,
		Callback = Knife,
	})

	tbl6.UI.knifeSoundPresetDropdown:OnChanged(Knife)

	tbl6.UI.fungt.hitmarker:AddInput("HitmarkerKnifeSound", {
		Default = tbl6.Features.Visuals.Hitmarker.Knife.SoundId or "142247768",
		Numeric = false,
		Finished = true,
		ClearTextOnFocus = false,
		Text = "Knife Sound ID",
		Placeholder = "142247768",
		Callback = function(arg)
			tbl7.setHitmarkerSound("Knife", arg)
		end,
	}):OnChanged(function(arg)
		tbl7.setHitmarkerSound("Knife", arg)
	end)

	tbl6.UI.fungt.hitmarker:AddButton("Test Knife Sound", function()
		tbl6.Features.Visuals.Hitmarker.Knife.Enabled = true
		tbl6.Features.Visuals.Hitmarker.Knife.CustomSoundId = tbl6.Features.Visuals.Hitmarker.Knife.SoundId
		tbl7.playSoundPreview(tbl6.Features.Visuals.Hitmarker.Knife)
	end)

	local Gunshot = tbl7.soundPresetHandler("Gunshot", "Gunshot", "HitmarkerGunshotSound")

	tbl6.UI.gunSoundPresetDropdown = tbl6.UI.fungt.hitmarker:AddDropdown("GunSoundPreset", {
		Text = "Gun SFX Presets",
		Values = tbl7.buildSoundPresetNames(tbl7.getSoundPresets("Gunshot")),
		Default = "None",
		Multi = false,
		Searchable = true,
		Callback = Gunshot,
	})

	tbl6.UI.gunSoundPresetDropdown:OnChanged(Gunshot)

	tbl6.UI.fungt.hitmarker:AddInput("HitmarkerGunshotSound", {
		Default = tbl6.Features.Visuals.Hitmarker.Gunshot.SoundId or "10209803",
		Numeric = false,
		Finished = true,
		ClearTextOnFocus = false,
		Text = "Gunshot Sound ID",
		Placeholder = "10209803",
		Callback = function(arg)
			tbl7.setHitmarkerSound("Gunshot", arg)
		end,
	}):OnChanged(function(arg)
		tbl7.setHitmarkerSound("Gunshot", arg)
	end)

	tbl6.UI.fungt.hitmarker:AddButton("Test Gunshot Sound", function()
		tbl6.Features.Visuals.Hitmarker.Gunshot.Enabled = true
		tbl6.Features.Visuals.Hitmarker.Gunshot.CustomSoundId = tbl6.Features.Visuals.Hitmarker.Gunshot.SoundId
		tbl7.playSoundPreview(tbl6.Features.Visuals.Hitmarker.Gunshot)
	end)

	local Reload = tbl7.soundPresetHandler("Reload", "Reload", "HitmarkerReloadSound")

	tbl6.UI.reloadSoundPresetDropdown = tbl6.UI.fungt.hitmarker:AddDropdown("ReloadSoundPreset", {
		Text = "Reload SFX Presets",
		Values = tbl7.buildSoundPresetNames(tbl7.getSoundPresets("Reload")),
		Default = "None",
		Multi = false,
		Searchable = true,
		Callback = Reload,
	})

	tbl6.UI.reloadSoundPresetDropdown:OnChanged(Reload)

	tbl6.UI.fungt.hitmarker:AddInput("HitmarkerReloadSound", {
		Default = tbl6.Features.Visuals.Hitmarker.Reload.SoundId or "4753414199",
		Numeric = false,
		Finished = true,
		ClearTextOnFocus = false,
		Text = "Reload Sound ID",
		Placeholder = "4753414199",
		Callback = function(arg)
			tbl7.setHitmarkerSound("Reload", arg)
		end,
	}):OnChanged(function(arg)
		tbl7.setHitmarkerSound("Reload", arg)
	end)

	tbl6.UI.fungt.hitmarker:AddButton("Test Reload Sound", function()
		tbl6.Features.Visuals.Hitmarker.Reload.Enabled = true
		tbl6.Features.Visuals.Hitmarker.Reload.CustomSoundId = tbl6.Features.Visuals.Hitmarker.Reload.SoundId
		tbl7.playSoundPreview(tbl6.Features.Visuals.Hitmarker.Reload)
	end)

	tbl6.UI.fungt.hitmarker:AddDivider()

	tbl6.UI.customSoundPresetNameInput = tbl6.UI.fungt.hitmarker:AddInput("CustomSoundPresetName", {
		Numeric = false,
		Finished = true,
		ClearTextOnFocus = false,
		Text = "Custom Preset Name",
		Placeholder = "My Preset",
	})

	tbl6.UI.customSoundPresetTypeDropdown = tbl6.UI.fungt.hitmarker:AddDropdown("CustomSoundPresetType", {
		Text = "Custom Preset Type",
		Values = { "Knife", "Gunshot", "Reload" },
		Default = "Knife",
		Multi = false,
	})

	tbl6.UI.fungt.hitmarker:AddButton("Save Custom Preset", function()
		local value = tbl6.UI.customSoundPresetNameInput and tbl6.UI.customSoundPresetNameInput.Value
		value = value and value:match("^%s*(.-)%s*$")
		if not value or value == "" then
			tbl6.UI.lib:Notify("Enter a preset name first.")
			return
		end
		local str4 = tbl6.UI.lib.Options.CustomSoundPresetType and tbl6.UI.lib.Options.CustomSoundPresetType.Value or "Knife"
		local v10 = tbl6.Features.Visuals.Hitmarker[str4]

		if not v10 or not v10.SoundId or v10.SoundId == "" then
			local lib = tbl6.UI.lib
			local notify = lib.Notify
			local str5 = ("Set a %* sound ID first."):format(str4)
			notify(lib, str5)
			return
		end

		tbl6.Features.Visuals.CustomSoundPresets[str4] = tbl6.Features.Visuals.CustomSoundPresets[str4] or {}
		tbl6.Features.Visuals.CustomSoundPresets[str4][value] = tbl7.idFromSoundId(v10.SoundId)

		if tbl7.saveCustomSoundPresets() then
			tbl7.refreshSoundPresetDropdown(str4)
			local gunSoundPresetDropdown = str4 == "Gunshot" and tbl6.UI.gunSoundPresetDropdown or str4 == "Reload" and tbl6.UI.reloadSoundPresetDropdown or tbl6.UI.knifeSoundPresetDropdown

			if gunSoundPresetDropdown then
				gunSoundPresetDropdown:SetValue(value)
			end

			local lib = tbl6.UI.lib
			local notify = lib.Notify
			local str5 = ("Saved custom preset: %*"):format(value)
			notify(lib, str5)
		else
			local lib = tbl6.UI.lib
			local notify = lib.Notify
			local str5 = ("Failed to save custom preset: %*"):format(value)
			notify(lib, str5)
		end
	end)

	tbl6.UI.fungt.hitmarker:AddButton("Delete Custom Preset", function()
		local value = tbl6.UI.customSoundPresetNameInput and tbl6.UI.customSoundPresetNameInput.Value
		value = value and value:match("^%s*(.-)%s*$")
		if not value or value == "" then
			tbl6.UI.lib:Notify("Enter a preset name first.")
			return
		end
		local str4 = tbl6.UI.lib.Options.CustomSoundPresetType and tbl6.UI.lib.Options.CustomSoundPresetType.Value or "Knife"

		if tbl6.Features.Visuals.CustomSoundPresets[str4] and tbl6.Features.Visuals.CustomSoundPresets[str4][value] then
			tbl6.Features.Visuals.CustomSoundPresets[str4][value] = nil
			tbl7.saveCustomSoundPresets()
			tbl7.refreshSoundPresetDropdown(str4)
			local gunSoundPresetDropdown = str4 == "Gunshot" and tbl6.UI.gunSoundPresetDropdown
			local reloadSoundPresetDropdown

			if gunSoundPresetDropdown then
				reloadSoundPresetDropdown = gunSoundPresetDropdown
			else
				reloadSoundPresetDropdown = str4 == "Reload" and tbl6.UI.reloadSoundPresetDropdown or tbl6.UI.knifeSoundPresetDropdown
			end

			if reloadSoundPresetDropdown then
				reloadSoundPresetDropdown:SetValue("None")
			end

			local lib = tbl6.UI.lib
			local notify = lib.Notify
			local str5 = ("Deleted custom preset: %*"):format(value)
			notify(lib, str5)
		else
			local lib = tbl6.UI.lib
			local notify = lib.Notify
			local v10 = lib
			local str5 = ("No custom preset named: %*"):format(value)
			notify(v10, str5)
		end
	end)

	tbl6.UI.fungt.death:AddToggle("DeathAnimationEnabled", {
		Text = "Enable Death Animation",
		Default = false,
		Callback = function(enabled)
			tbl6.Features.Visuals.KillFX.Enabled = enabled
		end,
	})

	tbl5.a7_3 = {}

	for _, v10 in ipairs(tbl5.aj) do
		insert(tbl5.a7_3, v10.name)
	end

	tbl6.UI.deathEffectDropdown = tbl6.UI.fungt.death:AddDropdown("DeathAnimationEffect", {
		Text = "Effect",
		Values = tbl5.a7_3,
		Default = "Lightning Strike",
		Multi = false,
		Searchable = true,
	})

	if tbl6.UI.deathEffectDropdown and tbl6.UI.deathEffectDropdown.OnChanged then
		tbl6.UI.deathEffectDropdown:OnChanged(function(arg)
			for _, v10 in ipairs(tbl5.aj) do
				if v10.name == arg then
					tbl6.Features.Visuals.KillFX.Selected = v10.id
					break
				end
			end
		end)
	end

	tbl6.UI.fungt.aura:AddToggle("AuraEnabled", {
		Text = "Enable Aura",
		Default = false,
		Callback = function(arg)
			tbl7.setAuraEnabled(arg)
		end,
	})

	tbl6.UI.fungt.aura:AddLabel("Aura Color"):AddColorPicker("AuraColor", {
		Default = tbl6.Features.Visuals.AuraColor,
		Title = "Aura Color",
		Callback = function(arg)
			tbl7.setAuraColor(arg)
		end,
	})

	if tbl9.Legacy.auraCharacter then
		tbl9.Legacy.auraCharacter:Disconnect()
	end

	tbl9.Legacy.auraCharacter = tbl6.Player.LocalPlayer.CharacterAdded:Connect(tbl7.onAuraCharacterAdded)

	if tbl9.Legacy.skyCharacter then
		tbl9.Legacy.skyCharacter:Disconnect()
	end

	tbl9.Legacy.skyCharacter = tbl6.Player.LocalPlayer.CharacterAdded:Connect(tbl7.onSkyCharacterAdded)

	for i_, mm2Emote in ipairs(tbl6.Features.Visuals.mm2Emotes) do
		tbl5.ba_2 = ("MM2Emote_%*"):format(mm2Emote.key)
		local v10 = max(3, floor(tbl6.Player.Camera.ViewportSize.X / 50))
		local v11 = floor((i_ - 1) / v10)
		local bb2 = ("%*Button"):format(tbl5.ba)
		local v12 = tbl7.createDraggableButton(mm2Emote.name, ((i_ - 1) % v10 - (v10 - 1) / 2) * 48, ("mm2EmoteButton_%*"):format(mm2Emote.key), 1 + v11)
		tbl5.bb_2 = bb2
		tbl5.bc_2 = v12
		mm2Emote.button = tbl5.bc_2
		mm2Emote.toggleName = tbl5.ba_2

		mm2Emote.button.MouseButton1Click:Connect(function()
			tbl7._playBtnClick()
		end)

		mm2Emote.group:AddToggle(tbl5.ba_2, {
			Text = ("Enable %*"):format(mm2Emote.name),
			Default = false,
			Callback = function(arg)
				tbl7.setMM2EmoteEnabled(mm2Emote, arg)
				tbl7.setButtonActive(mm2Emote.button, arg)
			end,
		})

		mm2Emote.group:AddToggle(tbl5.bb_2, {
			Text = "Draggable Button",
			Default = false,
			Callback = function(visible)
				mm2Emote.button.Visible = visible
				tbl7.setButtonActive(mm2Emote.button, tbl6.UI.Toggles[mm2Emote.toggleName] and tbl6.UI.Toggles[mm2Emote.toggleName].Value or false)
			end,
		})
	end

	tbl9.Legacy.mm2EmoteCharacter = tbl6.Player.LocalPlayer.CharacterAdded:Connect(function()
		task.wait(0.25)

		for _, mm2Emote in ipairs(tbl6.Features.Visuals.mm2Emotes) do
			local v10 = tbl6.UI.Toggles[mm2Emote.toggleName]

			if v10 and v10.Value then
				tbl7.playMM2Emote(mm2Emote)
			end
		end
	end)

	tbl6.visualMap = {
		ESPEnabled = { "ESP", "Enabled" },
		ESPEveryone = { "ESP", "Everyone" },
		ESPMurderer = { "ESP", "Murderer" },
		ESPSheriff = { "ESP", "Sheriff" },
		ESPInnocent = { "ESP", "Innocent" },
		ESPGun = { "ESP", "Gun" },
		ESPCoin = { "ESP", "Coin" },
		OutlineEnabled = { "Outline", "Enabled" },
		OutlineEveryone = { "Outline", "Everyone" },
		OutlineMurderer = { "Outline", "Murderer" },
		OutlineSheriff = { "Outline", "Sheriff" },
		OutlineInnocent = { "Outline", "Innocent" },
		OutlineGun = { "Outline", "Gun" },
		ChamsEnabled = { "Chams", "Enabled" },
		ChamsEveryone = { "Chams", "Everyone" },
		ChamsMurderer = { "Chams", "Murderer" },
		ChamsSheriff = { "Chams", "Sheriff" },
		ChamsInnocent = { "Chams", "Innocent" },
		ChamsGun = { "Chams", "Gun" },
		ChamsCoin = { "Chams", "Coin" },
		TracersEnabled = { "Tracers", "Enabled" },
		TracersEveryone = { "Tracers", "Everyone" },
		TracersMurderer = { "Tracers", "Murderer" },
		TracersSheriff = { "Tracers", "Sheriff" },
		TracersInnocent = { "Tracers", "Innocent" },
		TracersGun = { "Tracers", "Gun" },
		TracersCoin = { "Tracers", "Coin" },
		BoxEnabled = { "Box", "Enabled" },
		BoxEveryone = { "Box", "Everyone" },
		BoxMurderer = { "Box", "Murderer" },
		BoxSheriff = { "Box", "Sheriff" },
		BoxInnocent = { "Box", "Innocent" },
		BoxGun = { "Box", "Gun" },
		BoxCoin = { "Box", "Coin" },
	}

	for k_, v10 in pairs(tbl6.visualMap) do
		if tbl6.UI.Toggles[k_] then
			tbl6.UI.Toggles[k_]:OnChanged(function(arg)
				tbl6.Features.ESP.espSettings[v10[1]][v10[2]] = arg
			end)
		end
	end

	tbl6.UI.Toggles.AutoGrab:OnChanged(function(autoGrab)
		tbl6.Features.Combat.AutoGrab = autoGrab
		tbl7.setAutoGrabEnabled(autoGrab)
	end)

	tbl6.UI.Toggles.ShowDistance:OnChanged(function(showDistance)
		tbl6.Features.ESP.espSettings.ShowDistance = showDistance
	end)

	tbl6.UI.Toggles.GrabButton:OnChanged(function(visible)
		tbl6.UI.grabButton.Visible = visible
		tbl7.setButtonActive(tbl6.UI.grabButton, false)
	end)

	tbl6.UI.Toggles.ShootButton:OnChanged(function(visible)
		tbl6.UI.shootButton.Visible = visible
		tbl7.setShootButtonState("ready", true)
	end)

	tbl6.UI.Toggles.SilentAim:OnChanged(function(silentAimEnabled)
		tbl6.Features.Combat.SilentAimEnabled = silentAimEnabled

		if silentAimEnabled and not tbl6.Features.Combat._aimHookInstalled then
			tbl6.Features.Combat._aimHookInstalled = true
			task.spawn(tbl7.installAimHook)
		end
	end)

	tbl6.UI.Toggles.TriggerBot:OnChanged(function(triggerBotEnabled)
		tbl6.Features.Combat.TriggerBotEnabled = triggerBotEnabled
	end)

	tbl6.UI.Toggles.TriggerBotOnShiftlock:OnChanged(function(triggerBotOnShiftlock)
		tbl6.Features.Combat.TriggerBotOnShiftlock = triggerBotOnShiftlock
	end)

	tbl6.UI.Toggles.ShootMurdererWallCheck:OnChanged(function(shootMurdererWallCheckEnabled)
		tbl6.Features.Combat.ShootMurdererWallCheckEnabled = shootMurdererWallCheckEnabled

		if tbl6.Features.Combat.shootButtonState == "waiting" then
			tbl7.setShootButtonState("waiting")
		else
			tbl7.setShootButtonState("ready")
		end
	end)

	tbl6.UI.Toggles.AutoThrow:OnChanged(function(autoThrowEnabled)
		tbl6.Features.Combat.AutoThrowEnabled = autoThrowEnabled
	end)

	tbl6.UI.Toggles.AutoKillAll:OnChanged(function(autoKillAllEnabled)
		tbl6.Features.Combat.AutoKillAllEnabled = autoKillAllEnabled
	end)

	tbl6.UI.Toggles.NoclipButton:OnChanged(function(visible)
		tbl6.UI.noclipButton.Visible = visible
		tbl7.setButtonActive(tbl6.UI.noclipButton, tbl6.UI.Toggles.Noclip.Value)
	end)

	tbl6.UI.Toggles.XRayButton:OnChanged(function(visible)
		tbl6.UI.xrayButton.Visible = visible
		tbl7.setButtonActive(tbl6.UI.xrayButton, tbl6.UI.Toggles.XRay.Value)
	end)

	tbl6.UI.Toggles.InfiniteJumpButton:OnChanged(function(visible)
		tbl6.UI.infjumpButton.Visible = visible
		tbl7.setButtonActive(tbl6.UI.infjumpButton, tbl6.Features.Movement.InfJumpEnabled)
	end)

	tbl6.UI.Toggles.FlyButton:OnChanged(function(visible)
		tbl6.UI.flyButton.Visible = visible
		tbl7.setButtonActive(tbl6.UI.flyButton, tbl6.Features.Movement.FlyEnabled)
	end)

	tbl6.UI.Toggles.SpeedGlitchButton:OnChanged(function(visible)
		tbl6.UI.speedglitchButton.Visible = visible
		tbl7.setButtonActive(tbl6.UI.speedglitchButton, tbl6.Features.Movement.SpeedGlitchEnabled)
	end)

	tbl6.UI.Toggles.InvisibleButton:OnChanged(function(visible)
		tbl6.UI.invisibleBtn.Visible = visible
		tbl7.setButtonActive(tbl6.UI.invisibleBtn, tbl6.UI.Toggles.Invisible.Value)
	end)

	tbl6.UI.Toggles.KillMurdererButton:OnChanged(function(visible)
		tbl6.UI.killMurdererBtn.Visible = visible
		tbl7.setButtonActive(tbl6.UI.killMurdererBtn, false)
	end)

	tbl6.UI.Toggles.KillSheriffButton:OnChanged(function(visible)
		tbl6.UI.killSheriffBtn.Visible = visible
		tbl7.setButtonActive(tbl6.UI.killSheriffBtn, false)
	end)

	tbl6.UI.Toggles.KillAllButton:OnChanged(function(visible)
		tbl6.UI.killAllBtn.Visible = visible
		tbl7.setButtonActive(tbl6.UI.killAllBtn, false)
	end)

	tbl6.UI.Toggles.FlingMurdererButton:OnChanged(function(visible)
		tbl6.UI.flingMurdererBtn.Visible = visible
		tbl7.setButtonActive(tbl6.UI.flingMurdererBtn, false)
	end)

	tbl6.UI.Toggles.FlingSheriffButton:OnChanged(function(visible)
		tbl6.UI.flingSheriffBtn.Visible = visible
		tbl7.setButtonActive(tbl6.UI.flingSheriffBtn, false)
	end)

	tbl6.UI.Toggles.FlingEveryoneButton:OnChanged(function(visible)
		tbl6.UI.flingEveryoneBtn.Visible = visible
		tbl7.setButtonActive(tbl6.UI.flingEveryoneBtn, false)
	end)

	tbl6.UI.Toggles.TeleportMapButton:OnChanged(function(visible)
		tbl6.UI.teleportMapBtn.Visible = visible
		tbl7.setButtonActive(tbl6.UI.teleportMapBtn, false)
	end)

	tbl6.UI.Toggles.TeleportLobbyButton:OnChanged(function(visible)
		tbl6.UI.teleportLobbyBtn.Visible = visible
		tbl7.setButtonActive(tbl6.UI.teleportLobbyBtn, false)
	end)

	tbl6.UI.Toggles.TeleportVoidButton:OnChanged(function(visible)
		tbl6.UI.teleportVoidBtn.Visible = visible
		tbl7.setButtonActive(tbl6.UI.teleportVoidBtn, false)
	end)

	tbl6.UI.Toggles.TeleportAboveButton:OnChanged(function(visible)
		tbl6.UI.teleportAboveBtn.Visible = visible
		tbl7.setButtonActive(tbl6.UI.teleportAboveBtn, false)
	end)

	tbl6.UI.Toggles.TouchFlingButton:OnChanged(function(visible)
		tbl6.UI.touchFlingBtn.Visible = visible
		tbl7.setButtonActive(tbl6.UI.touchFlingBtn, tbl6.Features.Movement.TouchFlingEnabled)
	end)

	tbl6.UI.Toggles.MagicBulletButton:OnChanged(function(visible)
		tbl6.UI.magicBulletBtn.Visible = visible
		tbl7.setButtonActive(tbl6.UI.magicBulletBtn, tbl6.Features.Combat.MagicBulletEnabled)
	end)

	tbl6.UI.Toggles.DisableChromaSkins:OnChanged(function(arg)
		tbl7.applyChromaSkinToggle(arg)
	end)

	tbl6.UI.Toggles.TrickshotButton:OnChanged(function(visible)
		tbl6.UI.trickshotBtn.Visible = visible
		tbl7.setButtonActive(tbl6.UI.trickshotBtn, false)
	end)

	tbl6.UI.Toggles.TrapESPEnabled:OnChanged(function(enabled)
		tbl6.Features.ESP.trapEspSettings.Enabled = enabled
		tbl7.updateTrapESP()
	end)

	tbl6.UI.Toggles.TrapESPBox:OnChanged(function(box)
		tbl6.Features.ESP.trapEspSettings.Box = box
		tbl7.updateTrapESP()
	end)

	tbl6.UI.Toggles.TrapESPTracer:OnChanged(function(tracer)
		tbl6.Features.ESP.trapEspSettings.Tracer = tracer
		tbl7.updateTrapESP()
	end)

	tbl6.UI.Toggles.TrapESPChams:OnChanged(function(chams)
		tbl6.Features.ESP.trapEspSettings.Chams = chams
		tbl7.updateTrapESP()
	end)

	tbl6.UI.Toggles.TrapESPOutline:OnChanged(function(outline)
		tbl6.Features.ESP.trapEspSettings.Outline = outline
		tbl7.updateTrapESP()
	end)

	tbl6.UI.Toggles.TrapESPLabel:OnChanged(function(label)
		tbl6.Features.ESP.trapEspSettings.Label = label
		tbl7.updateTrapESP()
	end)

	if tbl6.UI.Options.TrapESPColor then
		tbl6.UI.Options.TrapESPColor:OnChanged(function(trapEspColor)
			tbl6.Features.ESP.trapEspColor = trapEspColor
			tbl7.refreshTrapESPColor()
		end)
	end

	tbl6.UI.Toggles.AutoDodgeMurderer:OnChanged(function(autoDodgeMurdererEnabled)
		tbl6.Features.Combat.AutoDodgeMurdererEnabled = autoDodgeMurdererEnabled
	end)

	tbl6.UI.Options.AutoDodgeMurdererDist:OnChanged(function(autoDodgeMurdererDist)
		tbl6.Features.Combat.AutoDodgeMurdererDist = autoDodgeMurdererDist
	end)

	tbl6.UI.Toggles.AutoDodgeKnife:OnChanged(function(autoDodgeKnifeEnabled)
		tbl6.Features.Combat.AutoDodgeKnifeEnabled = autoDodgeKnifeEnabled
	end)

	tbl6.UI.Toggles.FreecamEnabled:OnChanged(function(arg)
		tbl7.toggleFreecam(arg)
	end)

	tbl6.UI.Options.FreecamSpeed:OnChanged(function(at)
		tbl5.at = at
	end)

	local function fn10()
		local camera = tbl6.Player.Camera
		if not camera then
			return
		end
		local viewportSize = camera.ViewportSize
		if viewportSize.X < 50 or viewportSize.Y < 50 then
			return
		end

		for _, child in ipairs(tbl6.UI.floatingGui:GetChildren()) do
			if child:IsA("GuiObject") then
				local position = child.Position
				local size = child.Size
				local n = position.X.Scale * viewportSize.X + position.X.Offset
				local n2 = position.Y.Scale * viewportSize.Y + position.Y.Offset
				local n3 = size.Y.Scale * viewportSize.Y + size.Y.Offset
				local v10 = clamp(n, 0, max(0, viewportSize.X - size.X.Scale * viewportSize.X + size.X.Offset))
				local v11 = clamp(n2, 0, max(0, viewportSize.Y - n3))

				if v10 ~= n or v11 ~= n2 then
					child.Position = udim22(0, v10, 0, v11)
				end
			end
		end
	end

	fn10()
	task.delay(1, fn10)
	tbl6.Player.Camera:GetPropertyChangedSignal("ViewportSize"):Connect(fn10)

	tbl6.UI.Toggles.FreecamButton:OnChanged(function(visible)
		if not tbl6.UI.freecamBtn then
			return
		end
		tbl6.UI.freecamBtn.Visible = visible
		tbl7.setButtonActive(tbl6.UI.freecamBtn, tbl6.Features.Movement.FreecamEnabled)
	end)

	if tbl6.UI.freecamBtn then
		tbl6.UI.freecamBtn.MouseButton1Click:Connect(function()
			tbl6.Features.Movement.FreecamEnabled = not tbl6.Features.Movement.FreecamEnabled
			tbl7.toggleFreecam(tbl6.Features.Movement.FreecamEnabled)

			if tbl6.UI.Toggles.FreecamEnabled then
				tbl6.UI.Toggles.FreecamEnabled:SetValue(tbl6.Features.Movement.FreecamEnabled)
			end
		end)
	end

	tbl6.UI.Toggles.AimlockEnabled:OnChanged(function(arg)
		tbl7.toggleAimlock(arg)
	end)

	tbl6.UI.Toggles.AimlockMurderer:OnChanged(function(aimlockMurderer)
		tbl6.Features.Combat.AimlockMurderer = aimlockMurderer
	end)

	tbl6.UI.Toggles.AimlockSheriff:OnChanged(function(aimlockSheriff)
		tbl6.Features.Combat.AimlockSheriff = aimlockSheriff
	end)

	tbl6.UI.Toggles.AimlockSelected:OnChanged(function(aimlockSelected)
		tbl6.Features.Combat.AimlockSelected = aimlockSelected
	end)

	tbl6.UI.Options.FlickKey:OnClick(function()
		tbl7.doFlick()
		tbl7.flickButton(tbl6.UI.trickshotBtn)
	end)

	tbl6.UI.Toggles.CoinAura:OnChanged(function(autoFarmOriginalCoinAuraState)
		if tbl6.Features.AutoFarm.AutoFarmLoadingConfig and tbl6.Features.AutoFarm.AutoFarmEnabled then
			tbl6.Features.AutoFarm.AutoFarmOriginalCoinAuraState = autoFarmOriginalCoinAuraState
			tbl6.Features.AutoFarm.AutoFarmOwnsCoinAura = not autoFarmOriginalCoinAuraState
		elseif not tbl6.Features.AutoFarm.AutoFarmChangingCoinAura and tbl6.Features.AutoFarm.AutoFarmEnabled then
			tbl6.Features.AutoFarm.AutoFarmOwnsCoinAura = false
		end

		if autoFarmOriginalCoinAuraState then
			tbl5.a6_3()
		else
			if tbl9.Legacy.coinAuraLoop then
				tbl9.Legacy.coinAuraLoop:Disconnect()
				tbl9.Legacy.coinAuraLoop = nil
			end

			if tbl9.Legacy.coinAuraWorldAdded then
				tbl9.Legacy.coinAuraWorldAdded:Disconnect()
				tbl9.Legacy.coinAuraWorldAdded = nil
			end
		end
	end)

	tbl5.a6_3 = function()
		if tbl9.Legacy.coinAuraLoop then
			return
		end
		local tbl16 = {}
		local tbl17 = {}

		local function fn11(arg)
			if not arg:IsA("BasePart") then
				return
			end
			tbl16[arg] = true

			tbl17[arg] = arg.AncestryChanged:Connect(function(child, parent)
				if not parent then
					tbl16[arg] = nil

					if tbl17[arg] then
						tbl17[arg]:Disconnect()
						tbl17[arg] = nil
					end
				end
			end)
		end

		local function fn12(arg)
			for _, child in ipairs(arg:GetChildren()) do
				fn11(child)
			end

			arg.DescendantAdded:Connect(function(descendant)
				fn11(descendant)
			end)
		end

		local function fn13()
			local v10 = tbl7.GetDescendantCache(tbl4.Workspace)

			for k_ in pairs(v10) do
				if k_.Name == "CoinContainer" then
					fn12(k_)
				end
			end
		end

		fn13()

		tbl9.Legacy.coinAuraWorldAdded = tbl4.Workspace.DescendantAdded:Connect(function(descendant)
			if descendant.Name == "CoinContainer" then
				fn12(descendant)
			end
		end)

		tbl9.Legacy.coinAuraLoop = heartbeat:Connect(function()
			if not tbl6.UI.Toggles.CoinAura.Value then
				return
			end
			local v10 = tbl7.getRole(tbl6.Player.LocalPlayer)
			if v10 ~= "Innocent" and v10 ~= "Sheriff" and v10 ~= "Murderer" and v10 ~= "Hero" then
				return
			end
			local character = tbl6.Player.LocalPlayer.Character and tbl7.charPart(tbl6.Player.LocalPlayer, "HumanoidRootPart")
			if not character then
				return
			end
			local position = character.Position
			local x = position.X
			local y = position.Y
			local z = position.Z

			for k_ in pairs(tbl16) do
				if k_.Parent then
					local position2 = k_.Position
					local n = x - position2.X
					local n2 = y - position2.Y
					local n3 = z - position2.Z

					if n * n + n2 * n2 + n3 * n3 <= 100 then
						firetouchinterest(character, k_, 0)
						firetouchinterest(character, k_, 1)
					end
				end
			end
		end)
	end

	tbl7.ensureAutoFarmCoinAura = function()if not  tbl6 .Features.AutoFarm.AutoFarmEnabled then return;end;local A= tbl6 .UI.Toggles and  tbl6 .UI.Toggles.CoinAura;if not A then return;end;if not A.Value then if  tbl6 .Features.AutoFarm.AutoFarmOriginalCoinAuraState==nil then  tbl6 .Features.AutoFarm.AutoFarmOriginalCoinAuraState=false; tbl6 .Features.AutoFarm.AutoFarmOwnsCoinAura=true;end;if  tbl6 .Features.AutoFarm.AutoFarmOwnsCoinAura then  tbl7 .setCoinAuraFromAutoFarm(true);end;elseif not  tbl9 .Legacy.coinAuraLoop then  tbl5 .a6_3();end;end

	tbl6.UI.Options.AimlockSmoothness:OnChanged(function(aimlockSmoothness)
		tbl6.Features.Combat.AimlockSmoothness = aimlockSmoothness
	end)

	tbl6.UI.Options.MurdererAimMode:OnChanged(function(murdererAimMode)
		tbl6.Features.Combat.MurdererAimMode = murdererAimMode
	end)

	tbl6.UI.Options.MurdererIgnoreList:OnChanged(function(murdererIgnoreList)
		tbl6.Features.Combat.MurdererIgnoreList = murdererIgnoreList
	end)

	tbl7._wireSilentFireInput = function()
		local tbl16 = {}

		local connection = tbl4.UserInputService.InputBegan:Connect(function(input, gameProcessed)
			if gameProcessed then
				return
			end

			if input.UserInputType ~= Enum.UserInputType.MouseButton1 then
				return
			end
			tbl16[input] = { pos = input.Position, time = v7() }
		end)

		local connection2 = tbl4.UserInputService.InputEnded:Connect(function(input)
			local v10 = tbl16[input]
			if not v10 then
				return
			end
			tbl16[input] = nil
			if input.UserInputState ~= Enum.UserInputState.End then
				return
			end

			if input.UserInputType ~= Enum.UserInputType.MouseButton1 then
				return
			end
			local time2 = v10.time
			if v7() - time2 > 1 then
				return
			end
			local n = input.Position - v10.pos
			if vector3(n.X, n.Y, 0).Magnitude > 14 then
				return
			end

			if not tbl6.Features.Combat.SilentAimEnabled then
				return
			end
			local character = tbl6.Player.LocalPlayer.Character
			character = character and character:FindFirstChild("Gun")
			if not character or not character:IsA("Tool") then
				return
			end
			tbl7.shootmurd(false)
		end)

		local connection3 = tbl4.UserInputService.TouchTapInWorld:Connect(function(arg, arg2)
			if arg2 then
				return
			end

			if not tbl6.Features.Combat.SilentAimEnabled then
				return
			end
			local character = tbl6.Player.LocalPlayer.Character
			character = character and character:FindFirstChild("Gun")
			if not character or not character:IsA("Tool") then
				return
			end
			tbl7.shootmurd(false)
		end)

		tbl9.Legacy.silentFireInputEnd = connection2
		tbl9.Legacy.silentFireInputTap = connection3
		return connection
	end

	tbl9.Legacy.silentFireInput = tbl7._wireSilentFireInput()

	tbl7._wireBombJumpInput = function()
		return tbl4.UserInputService.InputBegan:Connect(function(input, gameProcessed)
			if gameProcessed then
				return
			end

			if input.UserInputType ~= Enum.UserInputType.Touch and input.UserInputType ~= Enum.UserInputType.MouseButton1 then
				return
			end

			if not tbl6.Features.Movement.BombJumpEnabled then
				return
			end
			local character = tbl6.Player.LocalPlayer.Character
			if not character then
				return
			end

			if character:FindFirstChild("FakeBomb") == nil then
				return
			end
			tbl7.executeBombJump()
		end)
	end

	tbl6.UI.Toggles.BombJumpAuto:OnChanged(function(bombJumpEnabled)
		tbl6.Features.Movement.BombJumpEnabled = bombJumpEnabled

		if bombJumpEnabled then
			if not tbl9.Legacy.bombJumpInput then
				tbl9.Legacy.bombJumpInput = tbl7._wireBombJumpInput()
			end
		elseif tbl9.Legacy.bombJumpInput then
			tbl9.Legacy.bombJumpInput:Disconnect()
			tbl9.Legacy.bombJumpInput = nil
		end
	end)

	tbl6.UI.Toggles.BombJumpAutoGet:OnChanged(function(bombJumpAutoGet)
		tbl6.Features.Movement.BombJumpAutoGet = bombJumpAutoGet

		if bombJumpAutoGet then
			tbl4.ReplicatedStorage:FindFirstChild("Remotes", true):FindFirstChild("Extras", true):FindFirstChild("ReplicateToy"):InvokeServer("FakeBomb")
		end
	end)

	tbl6.UI.Toggles.BombJumpButton:OnChanged(function(visible)
		tbl6.UI.bombjumpBtn.Visible = visible

		if tbl6.Features.Movement.BombJumpOnCooldown then
			tbl7.setButtonCooldown(tbl6.UI.bombjumpBtn, true)
		else
			tbl7.setButtonActive(tbl6.UI.bombjumpBtn, false)
		end
	end)

	tbl6.UI.Options.BombJumpKey:OnClick(function()
		tbl7.executeBombJump()
	end)

	tbl6.UI.Toggles.FEAnim:OnChanged(function(feAnimEnabled)
		tbl6.Features.Visuals.FEAnimEnabled = feAnimEnabled

		if feAnimEnabled then
			if tbl6.Player.LocalPlayer.Character then
				task.spawn(function()
					tbl6:ApplyFEAnims(tbl6.Player.LocalPlayer.Character)
				end)
			end

			if tbl9.Legacy.feAnimChar then
				tbl9.Legacy.feAnimChar:Disconnect()
			end

			tbl9.Legacy.feAnimChar = tbl6.Player.LocalPlayer.CharacterAdded:Connect(function(character)
				task.spawn(function()
					tbl6:ApplyFEAnims(character)
				end)
			end)
		else
			if tbl9.Legacy.feAnimChar then
				tbl9.Legacy.feAnimChar:Disconnect()
				tbl9.Legacy.feAnimChar = nil
			end

			tbl6.Features.Visuals.FEAnimState = {
				all = "Default",
				idle = "Default",
				walk = "Default",
				run = "Default",
				jump = "Default",
				climb = "Default",
				fall = "Default",
			}

			if tbl6.Player.LocalPlayer.Character then
				task.spawn(function()
					tbl6:RestoreFEAnimOriginals(tbl6.Player.LocalPlayer.Character)
				end)
			end
		end
	end)

	tbl6.UI.Options.FEAnimAll:OnChanged(function(all)
		if not tbl6.Features.Visuals.FEAnimEnabled then
			return
		end
		tbl6.Features.Visuals.FEAnimState.all = all

		if tbl6.Player.LocalPlayer.Character then
			tbl6:ApplyFEAnims(tbl6.Player.LocalPlayer.Character)
		end
	end)

	tbl6.UI.Options.FEAnimIdle:OnChanged(function(idle)
		if not tbl6.Features.Visuals.FEAnimEnabled then
			return
		end
		tbl6.Features.Visuals.FEAnimState.idle = idle

		if tbl6.Player.LocalPlayer.Character then
			tbl6:ApplyFEAnims(tbl6.Player.LocalPlayer.Character)
		end
	end)

	tbl6.UI.Options.FEAnimWalk:OnChanged(function(walk)
		if not tbl6.Features.Visuals.FEAnimEnabled then
			return
		end
		tbl6.Features.Visuals.FEAnimState.walk = walk

		if tbl6.Player.LocalPlayer.Character then
			tbl6:ApplyFEAnims(tbl6.Player.LocalPlayer.Character)
		end
	end)

	tbl6.UI.Options.FEAnimRun:OnChanged(function(run)
		if not tbl6.Features.Visuals.FEAnimEnabled then
			return
		end
		tbl6.Features.Visuals.FEAnimState.run = run

		if tbl6.Player.LocalPlayer.Character then
			tbl6:ApplyFEAnims(tbl6.Player.LocalPlayer.Character)
		end
	end)

	tbl6.UI.Options.FEAnimJump:OnChanged(function(jump)
		if not tbl6.Features.Visuals.FEAnimEnabled then
			return
		end
		tbl6.Features.Visuals.FEAnimState.jump = jump

		if tbl6.Player.LocalPlayer.Character then
			tbl6:ApplyFEAnims(tbl6.Player.LocalPlayer.Character)
		end
	end)

	tbl6.UI.Options.FEAnimClimb:OnChanged(function(climb)
		if not tbl6.Features.Visuals.FEAnimEnabled then
			return
		end
		tbl6.Features.Visuals.FEAnimState.climb = climb

		if tbl6.Player.LocalPlayer.Character then
			tbl6:ApplyFEAnims(tbl6.Player.LocalPlayer.Character)
		end
	end)

	tbl6.UI.Options.FEAnimFall:OnChanged(function(fall)
		if not tbl6.Features.Visuals.FEAnimEnabled then
			return
		end
		tbl6.Features.Visuals.FEAnimState.fall = fall

		if tbl6.Player.LocalPlayer.Character then
			tbl6:ApplyFEAnims(tbl6.Player.LocalPlayer.Character)
		end
	end)

	tbl6.UI.Toggles.Noclip:OnChanged(function(noclipEnabled)
		tbl6.Features.Movement.NoclipEnabled = noclipEnabled
		tbl7.setButtonActive(tbl6.UI.noclipButton, noclipEnabled)
	end)

	tbl6.UI.Toggles.XRay:OnChanged(function(arg)
		if arg then
			tbl7.enableXray()

			if not tbl6.Features.ESP.xrayDescendantConn then
				tbl6.Features.ESP.xrayDescendantConn = tbl4.Workspace.DescendantAdded:Connect(function(descendant)
					if tbl6.UI.Toggles.XRay.Value then
						tbl7.applyXray(descendant)
					end
				end)
			end
		else
			if tbl6.Features.ESP.xrayDescendantConn then
				tbl6.Features.ESP.xrayDescendantConn:Disconnect()
				tbl6.Features.ESP.xrayDescendantConn = nil
			end

			tbl7.clearXray()
		end

		tbl7.setButtonActive(tbl6.UI.xrayButton, arg)
	end)

	tbl6.UI.Toggles.InfiniteJump:OnChanged(function(infJumpEnabled)
		tbl6.Features.Movement.InfJumpEnabled = infJumpEnabled
		tbl7.setButtonActive(tbl6.UI.infjumpButton, infJumpEnabled)
	end)

	tbl6.UI.Toggles.Fly:OnChanged(function(arg)
		tbl7.toggleFly(arg)
		tbl7.setButtonActive(tbl6.UI.flyButton, arg)
	end)

	tbl6.UI.Toggles.SpeedGlitch:OnChanged(function(speedGlitchEnabled)
		tbl6.Features.Movement.SpeedGlitchEnabled = speedGlitchEnabled

		if not speedGlitchEnabled then
			local character = tbl6.Player.LocalPlayer.Character
			character = character and character:FindFirstChildOfClass("Humanoid")

			if character then
				character.WalkSpeed = tbl6.Features.Movement.normalWalkSpeed or 16
			end
		end

		tbl7.setButtonActive(tbl6.UI.speedglitchButton, speedGlitchEnabled)
	end)

	tbl6.UI.Toggles.Invisible:OnChanged(function(arg)
		if arg then
			tbl7.applyinv()
			tbl7.setButtonActive(tbl6.UI.invisibleBtn, arg)
		else
			tbl7.cleanupinvis()
			tbl7.setButtonActive(tbl6.UI.invisibleBtn, arg)
		end
	end)

	tbl6.UI.Toggles.AntiFling:OnChanged(function(antiFlingEnabled)
		tbl6.AntiFlingEnabled = antiFlingEnabled
	end)

	tbl6.UI.Toggles.AntiAFK:OnChanged(function(antiAFKEnabled)
		tbl6.Features.PostFarm.AntiAFKEnabled = antiAFKEnabled

		if antiAFKEnabled then
			tbl7.setupAntiAFK()
		elseif tbl9.Legacy.antiAFKLoop then
			tbl9.Legacy.antiAFKLoop:Disconnect()
			tbl9.Legacy.antiAFKLoop = nil
		end
	end)

	tbl6.UI.Toggles.AntiVoid:OnChanged(function(antiVoidEnabled)
		tbl6.AntiVoidEnabled = antiVoidEnabled
	end)

	tbl6.UI.Toggles.TouchFling:OnChanged(function(arg)
		tbl7.toggleTouchFling(arg)
		tbl7.setButtonActive(tbl6.UI.touchFlingBtn, arg)
	end)

	tbl6.UI.Toggles.InstantRoleNotify:OnChanged(function()
	end)

	tbl6.UI.Toggles.ShowMurdererChance:OnChanged(function()
	end)

	tbl6.UI.Toggles.ShowRoundTimer:OnChanged(function(visible)
		tbl6.UI.timerLabelGui.Visible = visible

		if visible then
			tbl7.updateRoundTimer()
		end
	end)

	tbl6.UI.Toggles.ExposeRoles:OnChanged(function()
	end)

	tbl6.UI.wsSlider:OnChanged(function(wsValue)
		tbl6.UI.wsValue = wsValue
		tbl7.applyMovement()
	end)

	tbl6.UI.jpSlider:OnChanged(function(jpValue)
		tbl6.UI.jpValue = jpValue
		tbl7.applyMovement()
	end)

	tbl6.UI.predToggle:OnChanged(function(predictionEnabled)
		tbl6.Features.Combat.PredictionEnabled = predictionEnabled
		tbl7.savePredictionConfig()
	end)

	tbl6.UI.predSlider:OnChanged(function(arg)
		tbl6.Features.Combat.PredictionMultiplier = clamp(tonumber(arg) or 1, 0, 3)
		tbl7.savePredictionConfig()
	end)

	tbl6.UI.hmultSlider:OnChanged(function(arg)
		tbl6.Features.Combat.HorizontalMultiplier = clamp(tonumber(arg) or 1, 0, 3)
		tbl7.savePredictionConfig()
	end)

	tbl6.UI.vmultSlider:OnChanged(function(arg)
		tbl6.Features.Combat.VerticalMultiplier = clamp(tonumber(arg) or 1, 0, 3)
		tbl7.savePredictionConfig()
	end)

	tbl6.UI.Toggles.AutoKillMurderer:OnChanged(function(autoKillMurdererEnabled)
		tbl6.Features.Combat.AutoKillMurdererEnabled = autoKillMurdererEnabled
	end)

	tbl6.UI.Toggles.AutoKillSheriff:OnChanged(function(autoKillSheriffEnabled)
		tbl6.Features.Combat.AutoKillSheriffEnabled = autoKillSheriffEnabled
	end)

	tbl6.UI.Options.KillMurdererKey:OnClick(function()
		tbl7.killMurderer()
	end)

	tbl6.UI.Options.KillSheriffKey:OnClick(function()
		tbl7.killSheriff()
	end)

	tbl6.UI.Options.grabgun:OnClick(function()
		tbl7.grabgun()
	end)

	tbl6.UI.Options.ShootMurdererKey:OnClick(function()
		tbl7.shootmurd()
	end)

	if tbl6.UI.Toggles.MagicBullet then
		tbl6.UI.Toggles.MagicBullet:OnChanged(function(magicBulletEnabled)
			tbl6.Features.Combat.MagicBulletEnabled = magicBulletEnabled
			tbl7.setButtonActive(tbl6.UI.magicBulletBtn, magicBulletEnabled)
		end)
	end

	if tbl6.UI.Options.MagicBulletKey then
		tbl6.UI.Options.MagicBulletKey:OnClick(function()
			tbl6.UI.Toggles.MagicBullet:SetValue(not tbl6.UI.Toggles.MagicBullet.Value)
		end)
	end

	tbl6.UI.Options.ThrowKey:OnClick(function()
		tbl7.throwKnife()
	end)

	tbl6.UI.Options.AutoKillKey:OnClick(function()
		tbl7.killAll()
	end)

	tbl6.UI.Options.BlurtSheriffKey:OnClick(function()
		tbl7.blurtSheriff()
	end)

	tbl6.UI.Options.BlurtMurdererKey:OnClick(function()
		tbl7.blurtMurderer()
	end)

	tbl6.UI.Options.BlurtBothKey:OnClick(function()
		tbl7.blurtBoth()
	end)

	tbl6.UI.Options.ExposeSheriffKey:OnClick(function()
		tbl7.exposeSheriff()
	end)

	tbl6.UI.Options.ExposeMurdererKey:OnClick(function()
		tbl7.exposeMurderer()
	end)

	tbl6.UI.Options.ExposeBothKey:OnClick(function()
		tbl7.exposeBoth()
	end)

	tbl6.UI.Options.BombJumpKey:OnClick(function()
		tbl7.executeBombJump()
	end)

	if not tbl6.UI.SaveManager or not tbl6.t or not tbl6.t.settings or v4(tbl6.UI.SaveManager.SetLibrary) ~= "function" or v4(tbl6.UI.SaveManager.BuildConfigSection) ~= "function" then
		return
	end

	if tbl2 ~= nil and tbl6 ~= nil and tbl6.UI ~= nil and tbl6.UI.SaveManager ~= nil and v4(tbl6.UI.SaveManager.SetLibrary) == "function" then
		tbl6.UI.SaveManager:SetLibrary(tbl6.UI.lib)
	end

	if tbl2 ~= nil and tbl6 ~= nil and tbl6.UI ~= nil and tbl6.UI.SaveManager ~= nil and v4(tbl6.UI.SaveManager.SetFolder) == "function" then
		tbl6.UI.SaveManager:SetFolder("LuWare")
	end

	if tbl2 ~= nil and tbl6 ~= nil and tbl6.UI ~= nil and tbl6.UI.SaveManager ~= nil and v4(tbl6.UI.SaveManager.IgnoreThemeSettings) == "function" then
		tbl6.UI.SaveManager:IgnoreThemeSettings()
	end

	if tbl2 ~= nil and tbl6 ~= nil and tbl6.UI ~= nil and tbl6.UI.SaveManager ~= nil and v4(tbl6.UI.SaveManager.BuildConfigSection) == "function" then
		tbl6.UI.SaveManager:BuildConfigSection(tbl6.t.settings)
	end

	if not tbl6.UI.ThemeManager or not tbl6.t or not tbl6.t.settings or v4(tbl6.UI.ThemeManager.SetLibrary) ~= "function" or v4(tbl6.UI.ThemeManager.BuildConfigSection) ~= "function" then
		return
	end

	if tbl2 ~= nil and tbl6 ~= nil and tbl6.UI ~= nil and tbl6.UI.ThemeManager ~= nil and v4(tbl6.UI.ThemeManager.SetLibrary) == "function" then
		tbl6.UI.ThemeManager:SetLibrary(tbl6.UI.lib)
	end

	if tbl2 ~= nil and tbl6 ~= nil and tbl6.UI ~= nil and tbl6.UI.ThemeManager ~= nil and v4(tbl6.UI.ThemeManager.SetFolder) == "function" then
		tbl6.UI.ThemeManager:SetFolder("LuWare")
	end

	if tbl2 ~= nil and tbl6 ~= nil and tbl6.UI ~= nil and tbl6.UI.ThemeManager ~= nil and v4(tbl6.UI.ThemeManager.BuildConfigSection) == "function" then
		tbl6.UI.ThemeManager:BuildConfigSection(tbl6.t.settings)
	end

	if tbl6.UI.window and tbl6.UI.window.BuildTabs then
		tbl6.UI.window:BuildTabs()
	end

	tbl7.loadPredictionConfig(tbl6.UI.predToggle, tbl6.UI.predSlider)

	task.defer(function()
		for k_, v10 in pairs(tbl5.P) do
			tbl7.setButtonActive(k_, v10.isActive)
		end
	end)

	tbl7._espTick = function(...) end

	tbl7._espTickMissing = function(arg)
		if not tbl6.Features.ESP._tickWarned then
			tbl6.Features.ESP._tickWarned = true
			warn("[LuWare] ESP _tick missing: " .. v2(arg) .. " - re-execute the latest script copy")
		end
	end

	tbl7._coinEspActive = function(...) end
	tbl7._isEspActive = function()local A= tbl6 .Features.ESP.espSettings;return A.ESP and A.ESP.Enabled or A.Box and A.Box.Enabled or A.Tracers and A.Tracers.Enabled or A.Chams and A.Chams.Enabled or A.Outline and A.Outline.Enabled or  tbl6 .Features.ESP.trapEspSettings.Enabled or( tbl7 ._coinEspActive());end

	tbl9.Legacy.espLoop = renderStepped:Connect(function()
		if not tbl7._isEspActive() then
			if not tbl6.Features.ESP._masterHidden then
				tbl6.Features.ESP._masterHidden = true
				local esp = tbl6.Features.ESP
				local esp2 = tbl6.Features.ESP
				tbl6.Features.ESP._coinCamKey = nil
				esp._coinRevKey = nil
				esp2._coinFlagKey = nil

				for k_, espObject in pairs(tbl6.Features.ESP.espObjects) do
					tbl7.hideDrawings(espObject)
					tbl7.removeHighlight(k_)
				end

				for k_, gunEspObject in pairs(tbl6.Features.ESP.gunEspObjects) do
					for _, v10 in pairs(gunEspObject.box) do
						v10.Visible = false
					end

					gunEspObject.tracer.Visible = false

					if gunEspObject.billboard then
						gunEspObject.billboard.Enabled = false
					end

					tbl7.removeGunHighlight(k_)
				end

				for _, coinEspObject in pairs(tbl6.Features.ESP.coinEspObjects) do
					coinEspObject._boxOn = false
					coinEspObject._trOn = false
					coinEspObject._hlOn = false

					for _, v10 in pairs(coinEspObject.box) do
						v10.Visible = false
					end

					coinEspObject.tracer.Visible = false

					if coinEspObject.tag then
						coinEspObject.tag.Visible = false
					end

					local v10 = tbl6.Features.ESP.coinHighlightObjects[coinEspObject.target]

					if v10 and v10.Parent then
						v10.Visible = false
					end
				end

				for k_, trapEspObject in pairs(tbl6.Features.ESP.trapEspObjects) do
					for _, v10 in pairs(trapEspObject.box) do
						v10.Visible = false
					end

					trapEspObject.tracer.Visible = false
					trapEspObject.tag.Visible = false
					tbl7.removeTrapHighlight(k_)
				end
			end

			return
		end

		tbl6.Features.ESP._masterHidden = false
		tbl7._espTick()
	end)

	tbl7._onPlayerCharAdded = function(arg)
		tbl7.createESP(arg)

		arg.CharacterAdded:Connect(function(character)
			character:WaitForChild("HumanoidRootPart", 3)

			if tbl7._isEspActive() then
				tbl7._espTick()
			end
		end)
	end

	tbl9.Legacy.espPlayerAdded = tbl4.Players.PlayerAdded:Connect(tbl7._onPlayerCharAdded)

	for _, v10 in ipairs(tbl6.Players.Cache) do
		if v10 ~= tbl6.Player.LocalPlayer then
			tbl7._onPlayerCharAdded(v10)
		end
	end

	tbl9.Legacy.espPlayerRemoving = tbl4.Players.PlayerRemoving:Connect(function(player)
		tbl7.removeESP(player)
		tbl7.removeHighlight(player)
		tbl6.Features.ESP.wallCheckCache[player] = nil
	end)

	tbl7.bindTimerPart = function(roundTimerPart)
		if tbl9.Legacy.timerAttr then
			tbl9.Legacy.timerAttr:Disconnect()
			tbl9.Legacy.timerAttr = nil
		end

		tbl11.Static.WS.RoundTimerPart = roundTimerPart

		if roundTimerPart then
			tbl9.Legacy.timerAttr = roundTimerPart:GetAttributeChangedSignal("Time"):Connect(function()
				tbl7.updateRoundTimer()
			end)

			tbl7.updateRoundTimer()
		end
	end

	tbl7.bindTimerPart(tbl11.Static.WS.RoundTimerPart or tbl4.Workspace:FindFirstChild("RoundTimerPart"))

	tbl7.hubOnWorkspaceChildAdded(function(arg)
		if arg.Name == "RoundTimerPart" then
			tbl7.bindTimerPart(arg)
		end
	end)

	tbl6.Game.gameplayRemotes = tbl4.ReplicatedStorage:FindFirstChild("Remotes", true)

	if tbl6.Game.gameplayRemotes then
		tbl6.Game.gameplayFolder = tbl6.Game.gameplayRemotes:FindFirstChild("Gameplay", true)

		if tbl6.Game.gameplayFolder then
			tbl6.Game.dataEvent = tbl6.Game.gameplayFolder:FindFirstChild("PlayerDataChanged")

			if tbl6.Game.dataEvent and tbl6.Game.dataEvent.OnClientEvent then
				tbl6.Game.dataEvent.OnClientEvent:Connect(function(roleTable)
					if v5(roleTable) ~= "table" then
						return
					end

					for k_, v10 in pairs(tbl6.Game.roleTable) do
						local v11 = roleTable[k_]
						local flag = not v11 or v11.Dead and not v10.Dead
						local flag2

						if flag then
							flag2 = flag
						else
							flag2 = v11.Role == "Unknown" and v10.Role ~= "Unknown"
						end

						if flag2 then
							local v12 = nil

							for _, v13 in ipairs(tbl6.Players.Cache) do
								if v13.Name == k_ then
									v12 = v13
									break
								else
									v12 = nil
								end
							end

							if v12 then
								tbl7.removeESP(v12)
								tbl7.removeHighlight(v12)

								if v12 ~= tbl6.Player.LocalPlayer then
									tbl7.createESP(v12)
								end

								if v12 ~= tbl6.Player.LocalPlayer and v11 and v11.Dead and not v10.Dead then
									local selected = tbl6.Features.Visuals.KillFX.Selected

									if tbl6.Features.Visuals.KillFX.Random then
										selected = tbl5.aj[random(1, #tbl5.aj)].id
									end

									if tbl5.ak[selected] then
										local character = v12.Character

										if character then
											task.spawn(function()
												if v4(tbl7.runDeathEffect) == "function" then
													tbl7.runDeathEffect(character, selected)
												end
											end)
										end
									end
								end

								tbl6.Game.prevRoles[k_] = nil
							end
						end
					end

					tbl6.Game.roleTable = roleTable
					tbl7.updateCachedRoles()

					if tbl6.Game.RoleChangedSignal then
						tbl6.Game.RoleChangedSignal:Fire()
					end

					tbl7.updateStatusLabels()
					tbl7.updatePlayerDropdown()
					tbl7.updateFlingDropdown()
					tbl7.checkRoleNotify()
				end)
			end
		end
	end

	local combat = tbl6.Features.Combat
	local combat2 = tbl6.Features.Combat
	local combat3 = tbl6.Features.Combat
	local combat4 = tbl6.Features.Combat
	tbl6.Features.Combat.autoGrabReady = true
	combat.autoThrowReady = true
	combat2.autoKillMurdererReady = true
	combat3.autoKillReady = true
	combat4.autoKillSheriffReady = true

	tbl9.Legacy.bombJumpChar = tbl6.Player.LocalPlayer.CharacterAdded:Connect(function()
		tbl6.Features.Movement.BombJumpOnCooldown = false
		tbl6.Features.Movement.BombJumpDebounce = false
		tbl6.Features.Movement.BombJumpJustRespawned = true
		tbl6.UI.bombjumpBtn.Text = "Bomb\nJump"
		tbl7.setButtonCooldown(tbl6.UI.bombjumpBtn, false)
		tbl7.setButtonActive(tbl6.UI.bombjumpBtn, false)

		task.delay(1, function()
			tbl6.Features.Movement.BombJumpJustRespawned = false

			if tbl6.Features.Movement.BombJumpAutoGet then
				task.delay(0.2, function()
					tbl4.ReplicatedStorage:FindFirstChild("Remotes", true):FindFirstChild("Extras", true):FindFirstChild("ReplicateToy"):InvokeServer("FakeBomb")
				end)
			end
		end)
	end)

	tbl5.a8_3 = {}

	tbl7._rebuildNoclipCache = function(arg)
		tbl5.a8_3 = {}
		if not arg then
			return
		end
		local v10 = tbl7.GetDescendantCache(arg)

		for k_ in pairs(v10) do
			if k_.Parent and k_:IsA("BasePart") then
				insert(tbl5.a8_3, k_)
			end
		end

		arg.DescendantAdded:Connect(function(descendant)
			if descendant:IsA("BasePart") then
				insert(tbl5.a8_3, descendant)
			end
		end)
	end

	tbl6.Player.LocalPlayer.CharacterAdded:Connect(tbl7._rebuildNoclipCache)

	if tbl6.Player.LocalPlayer.Character then
		tbl7._rebuildNoclipCache(tbl6.Player.LocalPlayer.Character)
	end

	tbl9.Legacy.steppedMaster = tbl4.RunService.Stepped:Connect(function()
		if tbl6.Features.Movement.NoclipEnabled then
			for _, v10 in ipairs(tbl5.a8_3) do
				if v10.Parent then
					v10.CanCollide = false
				end
			end
		end

		if tbl6.AntiVoidEnabled then
			local character = tbl6.Player.LocalPlayer.Character and tbl7.charPart(tbl6.Player.LocalPlayer, "HumanoidRootPart")

			if character and character.CFrame.Y <= -465 then
				character.Parent.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
			end
		end
	end)

	tbl9.Legacy.heartbeatMaster = heartbeat:Connect(function()
		local combat5 = tbl6.Features.Combat
		if not combat5.AutoThrowEnabled and not combat5.AutoKillMurdererEnabled and not combat5.AutoKillAllEnabled and not combat5.AutoKillSheriffEnabled and not combat5.TriggerBotEnabled then
			return
		end

		if combat5.AutoThrowEnabled and combat5.autoThrowReady then
			combat5.autoThrowReady = false
			tbl7.throwKnife()

			task.delay(0.25, function()
				combat5.autoThrowReady = true
			end)
		end

		if combat5.AutoKillMurdererEnabled and combat5.autoKillMurdererReady then
			combat5.autoKillMurdererReady = false
			tbl7.killMurderer()

			task.delay(0.5, function()
				combat5.autoKillMurdererReady = true
			end)
		end

		if tbl6.Features.Combat.AutoKillAllEnabled and tbl6.Features.Combat.autoKillReady then
			tbl6.Features.Combat.autoKillReady = false
			tbl7.killAll()

			task.delay(0.1, function()
				tbl6.Features.Combat.autoKillReady = true
			end)
		end

		if tbl6.Features.Combat.AutoKillSheriffEnabled and tbl6.Features.Combat.autoKillSheriffReady then
			tbl6.Features.Combat.autoKillSheriffReady = false
			tbl7.killSheriff()

			task.delay(0.5, function()
				tbl6.Features.Combat.autoKillSheriffReady = true
			end)
		end

		if tbl6.Features.Combat.TriggerBotEnabled then
			tbl7.triggerBotTick()
		end
	end)

	tbl4.UserInputService.JumpRequest:Connect(function()
		if not tbl6.Features.Movement.InfJumpEnabled then
			return
		end
		local character = tbl6.Player.LocalPlayer.Character and tbl7.charPart(tbl6.Player.LocalPlayer, "Humanoid")

		if character then
			character:ChangeState(Enum.HumanoidStateType.Jumping)
		end
	end)

	tbl7.onDragClick(tbl6.UI.grabButton, tbl7.grabgun)

	tbl7.onDragClick(tbl6.UI.shootButton, function()
		tbl7.rippleShootButton(tbl6.UI.shootButton)
		tbl7.shootmurd()
	end)

	tbl7.onDragClick(tbl6.UI.teleportMapBtn, tbl7.teleportToMap)
	tbl7.onDragClick(tbl6.UI.teleportLobbyBtn, tbl7.teleportToLobby)
	tbl7.onDragClick(tbl6.UI.teleportVoidBtn, tbl7.teleportToVoid)
	tbl7.onDragClick(tbl6.UI.teleportAboveBtn, tbl7.teleportAboveMap)
	tbl7.onDragClick(tbl6.UI.killMurdererBtn, tbl7.killMurderer)
	tbl7.onDragClick(tbl6.UI.killSheriffBtn, tbl7.killSheriff)
	tbl7.onDragClick(tbl6.UI.flingMurdererBtn, tbl7.flingMurderer)
	tbl7.onDragClick(tbl6.UI.flingSheriffBtn, tbl7.flingSheriffHero)
	tbl7.onDragClick(tbl6.UI.flingEveryoneBtn, tbl7.flingEveryone)

	tbl7.onDragClick(tbl6.UI.noclipButton, function()
		tbl6.UI.Toggles.Noclip:SetValue(not tbl6.UI.Toggles.Noclip.Value)
	end)

	tbl7.onDragClick(tbl6.UI.xrayButton, function()
		tbl6.UI.Toggles.XRay:SetValue(not tbl6.UI.Toggles.XRay.Value)
	end)

	tbl7.onDragClick(tbl6.UI.infjumpButton, function()
		tbl6.UI.Toggles.InfiniteJump:SetValue(not tbl6.UI.Toggles.InfiniteJump.Value)
	end)

	tbl7.onDragClick(tbl6.UI.flyButton, function()
		tbl6.UI.Toggles.Fly:SetValue(not tbl6.UI.Toggles.Fly.Value)
	end)

	tbl7.onDragClick(tbl6.UI.speedglitchButton, function()
		tbl6.UI.Toggles.SpeedGlitch:SetValue(not tbl6.UI.Toggles.SpeedGlitch.Value)
	end)

	tbl7.onDragClick(tbl6.UI.touchFlingBtn, function()
		tbl6.UI.Toggles.TouchFling:SetValue(not tbl6.UI.Toggles.TouchFling.Value)
	end)

	tbl7.onDragClick(tbl6.UI.magicBulletBtn, function()
		tbl6.UI.Toggles.MagicBullet:SetValue(not tbl6.UI.Toggles.MagicBullet.Value)
	end)

	tbl7.onDragClick(tbl6.UI.invisibleBtn, function()
		tbl6.UI.Toggles.Invisible:SetValue(not tbl6.UI.Toggles.Invisible.Value)
	end)

	tbl7.onDragClick(tbl6.UI.killAllBtn, function()
		tbl7.killAll()
	end)

	tbl7.onDragClick(tbl6.UI.trickshotBtn, function()
		tbl7.doFlick()
		tbl7.flickButton(tbl6.UI.trickshotBtn)
	end)

	for _, mm2Emote in ipairs(tbl6.Features.Visuals.mm2Emotes) do
		tbl7.onDragClick(mm2Emote.button, function()
			tbl6.UI.Toggles[mm2Emote.toggleName]:SetValue(not tbl6.UI.Toggles[mm2Emote.toggleName].Value)
		end)
	end

	tbl6.UI.bombjumpBtn.MouseButton1Click:Connect(function()
		if tbl6.UI.dragData.moved then
			tbl6.UI.dragData.moved = false
			return
		end
		tbl7.executeBombJump()
	end)

	tbl4.Players.PlayerAdded:Connect(tbl7.onPlayerAdded)
	tbl4.Players.PlayerRemoving:Connect(tbl7.onPlayerRemoving)
	tbl5.bb_3 = 0
	local v10 = tbl7.GetDescendantCache(tbl4.Workspace)

	for k_ in pairs(v10) do
		if k_.Name == "CoinContainer" and (k_:IsA("Folder") or k_:IsA("Model")) then
			tbl7.registerCoinContainer(k_)
			tbl5.bb_3 = tbl5.bb_3 + 1
		end
	end

	tbl4.Workspace.DescendantAdded:Connect(function(descendant)
		tbl7.registerGunDrop(descendant)

		if descendant.Name == "CoinContainer" and (descendant:IsA("Folder") or descendant:IsA("Model")) then
			tbl7.registerCoinContainer(descendant)
		end
	end)

	tbl4.Workspace.DescendantRemoving:Connect(function(descendant)
		if descendant.Name == "GunDrop" and descendant:IsA("BasePart") then
			task.delay(0.1, tbl7.refreshRoles)
		end
	end)

	tbl7.cachePlayerList()

	for _, v11 in ipairs(tbl6.Players.Cache) do
		tbl7.createESP(v11)
	end

	tbl6.Player.LocalPlayer.CharacterAdded:Connect(function(character)
		if tbl6.Features.Movement.isFlinging then
			tbl7.cleanupFling()
		end

		task.wait(0.5)
		local humanoid = character:FindFirstChildOfClass("Humanoid")

		if humanoid then
			tbl6.Player.Camera.CameraSubject = humanoid
		end

		if tbl6.Features.Visuals.InvisibleEnabled then
			tbl6.Features.Visuals.InvisibleEnabled = false
		end

		task.wait(0.2)
		tbl7.setupSpeedGlitch(character)
		tbl7.applyMovement()
	end)

	if tbl6.Player.LocalPlayer.Character then
		tbl7.setupSpeedGlitch(tbl6.Player.LocalPlayer.Character)
	end

	task.spawn(function()
		repeat
			task.wait(1)
		until tbl4.ReplicatedStorage:FindFirstChild("GetPlayerData", true)

		tbl7.refreshRoles()
	end)

	tbl7.setAutoRejoinEnabled = function(arg)
		local autoRejoinEnabled = arg == true
		tbl6.Features.PostFarm.AutoRejoinEnabled = autoRejoinEnabled

		if autoRejoinEnabled then
			if not tbl6.Features.PostFarm.AutoRejoinThread then
				tbl6.Features.PostFarm.AutoRejoinThread = task.spawn(function()
					local httpService = tbl4.HttpService

					while tbl6.Features.PostFarm.AutoRejoinEnabled do
						local nextPageCursor = nil
						local v11 = nil

						while true do
							local v12, v13 = v6(function()
								local str4 = ("https://games.roblox.com/v1/games/%*/servers/Public?limit=100%*"):format(v.PlaceId, nextPageCursor and ("&cursor=%*"):format(nextPageCursor) or "")
								return httpService:GetAsync(str4)
							end)

							if not (not v12 or not v13) then
								local data = httpService:JSONDecode(v13)

								if data and data.data then
									for _, v14 in ipairs(data.data) do
										if v14.playing and v14.maxPlayers and v14.playing < v14.maxPlayers and v2(v14.id) ~= v2(v.JobId) then
											v11 = v2(v14.id)
											break
										end
									end

									nextPageCursor = data.nextPageCursor

									if not v11 then
										if nextPageCursor then
											continue
										end
									end
								end
							end

							break
						end

						if v11 then
							tbl6.Features.PostFarm.AutoRejoinTarget = v11
						end

						task.wait(30)
					end
				end)
			end
		else
			if tbl6.Features.PostFarm.AutoRejoinThread then
				tbl6.Features.PostFarm.AutoRejoinThread = nil
			end

			tbl6.Features.PostFarm.AutoRejoinTarget = nil
		end
	end

	tbl6.UI.settingsgt.m:AddToggle("AutoRejoin", {
		Text = "Auto Rejoin (Serverhop)",
		Default = false,
		Callback = function(arg)
			tbl7.setAutoRejoinEnabled(arg, "toggle")
		end,
	})

	tbl6.Features.AutoFarm.AutoFarmLoadingConfig = true
	tbl6.UI.SaveManager:LoadAutoloadConfig()

	task.defer(function()
		local autoFarmOverlay = tbl6.UI.Toggles and tbl6.UI.Toggles.AutoFarmOverlay

		if autoFarmOverlay and autoFarmOverlay.Value then
			autoFarmOverlay:SetValue(true)

			if tbl6.UI.autoFarmOverlayLabel and tbl6.UI.autoFarmOverlayLabel.SetVisible then
				tbl6.UI.autoFarmOverlayLabel:SetVisible(true)
			end
		end

		local statusOverlay = tbl6.UI.Toggles and tbl6.UI.Toggles.StatusOverlay

		if statusOverlay and statusOverlay.Value then
			statusOverlay:SetValue(true)

			if tbl6.UI.statusDraggableLabel and tbl6.UI.statusDraggableLabel.SetVisible then
				tbl6.UI.statusDraggableLabel:SetVisible(true)
			end

			tbl7.updateStatusLabels()
		end

		local performanceHud = tbl6.UI.Toggles and tbl6.UI.Toggles.PerformanceHud

		if performanceHud and performanceHud.Value then
			performanceHud:SetValue(true)
		end
	end)

	task.defer(function()
		tbl6.Features.AutoFarm.AutoFarmLoadingConfig = false
		tbl7.ensureAutoFarmCoinAura()
	end)

	if tbl6.UI.Toggles and tbl6.UI.Toggles.AutoRejoin then
		tbl7.setAutoRejoinEnabled(tbl6.UI.Toggles.AutoRejoin.Value, "autoload")
	end

	if tbl6.Features.PostFarm.AutoRejoinErrorConn then
		tbl6.Features.PostFarm.AutoRejoinErrorConn:Disconnect()
		tbl6.Features.PostFarm.AutoRejoinErrorConn = nil
	end

	task.spawn(function()
		repeat
			task.wait()
		until v.CoreGui:FindFirstChild("RobloxPromptGui")

		local promptOverlay = v.CoreGui.RobloxPromptGui:WaitForChild("promptOverlay", 10)
		if not promptOverlay then
			return
		end

		local function fn11(child)
			if child.Name == "ErrorPrompt" then
				while tbl6.Features.PostFarm.AutoRejoinEnabled do
					if tbl6.Features.PostFarm.AutoRejoinTarget then
						tbl4.TeleportService:TeleportToPlaceInstance(v.PlaceId, tbl6.Features.PostFarm.AutoRejoinTarget, tbl6.Player.LocalPlayer)
					else
						tbl4.TeleportService:Teleport(v.PlaceId, tbl6.Player.LocalPlayer)
					end

					task.wait(2)
				end
			end
		end

		for _, child in ipairs(promptOverlay:GetChildren()) do
			fn11(child)
		end

		tbl6.Features.PostFarm.AutoRejoinErrorConn = promptOverlay.ChildAdded:Connect(fn11)
	end)

	tbl6.Player.LocalPlayer.CharacterAdded:Connect(function(character)
		if tbl6.Features.Movement.isFlinging then
			tbl7.cleanupFling()
		end

		task.wait(0.5)
		local humanoid = character:FindFirstChildOfClass("Humanoid")

		if humanoid then
			tbl6.Player.Camera.CameraSubject = humanoid
		end

		if tbl6.Features.Visuals.InvisibleEnabled then
			tbl6.Features.Visuals.InvisibleEnabled = false
		end

		task.wait(0.2)
		tbl7.setupSpeedGlitch(character)
		tbl7.applyMovement()

		if tbl6.Features.Visuals.FEAnimEnabled then
			task.spawn(function()
				if character:WaitForChild("Animate", 3) then
					tbl6:ApplyFEAnims(character)
				end
			end)
		end
	end)
end

local c = tbl5.c
tbl6.UI.lib:Notify({ Title = "LuWare", Description = format("LuWare loaded in <b>%.2fs</b>!", v7() - c), Time = 10 })

do
	local newindex = newcclosure and newcclosure(function()
		error("Table is Locked", 2)
	end) or function()
		error("Table is Locked", 2)
	end

	local function fn9(index, arg)
		freeze(index)
		fn(index, arg)
		local proxy = newproxy(true)
		local v8 = getmetatable(proxy)
		v8.__index = index
		v8.__newindex = newindex
		v8.__metatable = "Table is Locked"

		v8.__pairs = function()
			return next, index, nil
		end

		v8.__ipairs = function()
			local n = 0

			return function()
				n += 1
				local v9 = index[n]
				if v9 ~= nil then
					return n, v9
				end
			end
		end

		v8.__len = function()
			return #index
		end

		return proxy
	end

	local bL2 = tbl5.bL_2
	local bM2 = tbl5.bM_2
	local bN2 = tbl5.bN_2
	local visualPool = tbl5.VisualPool

	if v4(bL2) == "table" then
		tbl5.__bL_mt = bL2
	end

	if v4(bM2) == "table" then
		tbl5.__bM_mt = bM2
	end

	if v4(bN2) == "table" then
		tbl5.__bN_mt = bN2
	end

	if visualPool then
		for _, v8 in ipairs({ "Box", "Tracer", "ESP", "Chams", "Outline" }) do
			if v4(visualPool[v8]) == "table" then
				visualPool[v8] = fn9(visualPool[v8], "VisualPool." .. v8)
			end
		end
	end

	if v4(bL2) == "table" then
		tbl5.bL_2 = fn9(bL2, "bL_2")
	end

	if v4(bM2) == "table" then
		tbl5.bM_2 = fn9(bM2, "bM_2")
	end

	if v4(bN2) == "table" then
		tbl5.bN_2 = fn9(bN2, "bN_2")
	end

	if visualPool ~= nil then
		tbl5.VisualPool = fn9(visualPool, "VisualPool")
	end
end
