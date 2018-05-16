local signals_increment_current = 0;
local signals_increment_order = {"a-a","a-b","a-c","a-d","a-e","a-f","a-g","a-h","a-i","a-j","a-k","a-l","a-m","a-n","a-o","a-p","a-q","a-r","a-s","a-t","a-u","a-v","a-w","a-x","a-y","a-z",
"b-a","b-b","b-c","b-d","b-e","b-f","b-g","b-h","b-i","b-j","b-k","b-l","b-m","b-n","b-o","b-p","b-q","b-r","b-s","b-t","b-u","b-v","b-w","b-x","b-y","b-z",
"c-a","c-b","c-c","c-d","c-e","c-f","c-g","c-h","c-i","c-j","c-k","c-l","c-m","c-n","c-o","c-p","c-q","c-r","c-s","c-t","c-u","c-v","c-w","c-x","c-y","c-z",
"d-a","d-b","d-c","d-d","d-e","d-f","d-g","d-h","d-i","d-j","d-k","d-l","d-m","d-n","d-o","d-p","d-q","d-r","d-s","d-t","d-u","d-v","d-w","d-x","d-y","d-z",
"e-a","e-b","e-c","e-d","e-e","e-f","e-g","e-h","e-i","e-j","e-k","e-l","e-m","e-n","e-o","e-p","e-q","e-r","e-s","e-t","e-u","e-v","e-w","e-x","e-y","e-z",
"f-a","f-b","f-c","f-d","f-e","f-f","f-g","f-h","f-i","f-j","f-k","f-l","f-m","f-n","f-o","f-p","f-q","f-r","f-s","f-t","f-u","f-v","f-w","f-x","f-y","f-z",
"g-a","g-b","g-c","g-d","g-e","g-f","g-g","g-h","g-i","g-j","g-k","g-l","g-m","g-n","g-o","g-p","g-q","g-r","g-s","g-t","g-u","g-v","g-w","g-x","g-y","g-z",
"h-a","h-b","h-c","h-d","h-e","h-f","h-g","h-h","h-i","h-j","h-k","h-l","h-m","h-n","h-o","h-p","h-q","h-r","h-s","h-t","h-u","h-v","h-w","h-x","h-y","h-z",
"i-a","i-b","i-c","i-d","i-e","i-f","i-g","i-h","i-i","i-j","i-k","i-l","i-m","i-n","i-o","i-p","i-q","i-r","i-s","i-t","i-u","i-v","i-w","i-x","i-y","i-z",
"j-a","j-b","j-c","j-d","j-e","j-f","j-g","j-h","j-i","j-j","j-k","j-l","j-m","j-n","j-o","j-p","j-q","j-r","j-s","j-t","j-u","j-v","j-w","j-x","j-y","j-z",
"k-a","k-b","k-c","k-d","k-e","k-f","k-g","k-h","k-i","k-j","k-k","k-l","k-m","k-n","k-o","k-p","k-q","k-r","k-s","k-t","k-u","k-v","k-w","k-x","k-y","k-z",
"l-a","l-b","l-c","l-d","l-e","l-f","l-g","l-h","l-i","l-j","l-k","l-l","l-m","l-n","l-o","l-p","l-q","l-r","l-s","l-t","l-u","l-v","l-w","l-x","l-y","l-z",
"m-a","m-b","m-c","m-d","m-e","m-f","m-g","m-h","m-i","m-j","m-k","m-l","m-m","m-n","m-o","m-p","m-q","m-r","m-s","m-t","m-u","m-v","m-w","m-x","m-y","m-z",
"n-a","n-b","n-c","n-d","n-e","n-f","n-g","n-h","n-i","n-j","n-k","n-l","n-m","n-n","n-o","n-p","n-q","n-r","n-s","n-t","n-u","n-v","n-w","n-x","n-y","n-z",
"o-a","o-b","o-c","o-d","o-e","o-f","o-g","o-h","o-i","o-j","o-k","o-l","o-m","o-n","o-o","o-p","o-q","o-r","o-s","o-t","o-u","o-v","o-w","o-x","o-y","o-z",
"p-a","p-b","p-c","p-d","p-e","p-f","p-g","p-h","p-i","p-j","p-k","p-l","p-m","p-n","p-o","p-p","p-q","p-r","p-s","p-t","p-u","p-v","p-w","p-x","p-y","p-z",
"q-a","q-b","q-c","q-d","q-e","q-f","q-g","q-h","q-i","q-j","q-k","q-l","q-m","q-n","q-o","q-p","q-q","q-r","q-s","q-t","q-u","q-v","q-w","q-x","q-y","q-z",
"r-a","r-b","r-c","r-d","r-e","r-f","r-g","r-h","r-i","r-j","r-k","r-l","r-m","r-n","r-o","r-p","r-q","r-r","r-s","r-t","r-u","r-v","r-w","r-x","r-y","r-z",
"s-a","s-b","s-c","s-d","s-e","s-f","s-g","s-h","s-i","s-j","s-k","s-l","s-m","s-n","s-o","s-p","s-q","s-r","s-s","s-t","s-u","s-v","s-w","s-x","s-y","s-z",
"t-a","t-b","t-c","t-d","t-e","t-f","t-g","t-h","t-i","t-j","t-k","t-l","t-m","t-n","t-o","t-p","t-q","t-r","t-s","t-t","t-u","t-v","t-w","t-x","t-y","t-z",
"u-a","u-b","u-c","u-d","u-e","u-f","u-g","u-h","u-i","u-j","u-k","u-l","u-m","u-n","u-o","u-p","u-q","u-r","u-s","u-t","u-u","u-v","u-w","u-x","u-y","u-z",
"v-a","v-b","v-c","v-d","v-e","v-f","v-g","v-h","v-i","v-j","v-k","v-l","v-m","v-n","v-o","v-p","v-q","v-r","v-s","v-t","v-u","v-v","v-w","v-x","v-y","v-z",
"w-a","w-b","w-c","w-d","w-e","w-f","w-g","w-h","w-i","w-j","w-k","w-l","w-m","w-n","w-o","w-p","w-q","w-r","w-s","w-t","w-u","w-v","w-w","w-x","w-y","w-z",
"x-a","x-b","x-c","x-d","x-e","x-f","x-g","x-h","x-i","x-j","x-k","x-l","x-m","x-n","x-o","x-p","x-q","x-r","x-s","x-t","x-u","x-v","x-w","x-x","x-y","x-z",
"y-a","y-b","y-c","y-d","y-e","y-f","y-g","y-h","y-i","y-j","y-k","y-l","y-m","y-n","y-o","y-p","y-q","y-r","y-s","y-t","y-u","y-v","y-w","y-x","y-y","y-z",
"z-a","z-b","z-c","z-d","z-e","z-f","z-g","z-h","z-i","z-j","z-k","z-l","z-m","z-n","z-o","z-p","z-q","z-r","z-s","z-t","z-u","z-v","z-w","z-x","z-y","z-z",}
function signals_increment() 
	signals_increment_current = signals_increment_current + 1
	return "a-" .. signals_increment_order[signals_increment_current]
end

data:extend(
{
	{
		type = "item-subgroup",
		name = "nobody-needs-so-many-signals",
		group = "signals",
		order = "d-a-z",
	},	
})

if settings.startup["nobody-needs-so-many-signals-ammo"].value then
	data:extend({
		{
			type = "virtual-signal",
			name = "ammo-icon-green",
			icon = "__nobody-needs-so-many-signals__/graphics/ammo-icon-green.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "ammo-icon-yellow",
			icon = "__nobody-needs-so-many-signals__/graphics/ammo-icon-yellow.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "ammo-icon-red",
			icon = "__nobody-needs-so-many-signals__/graphics/ammo-icon-red.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "ammo-icon-purple",
			icon = "__nobody-needs-so-many-signals__/graphics/ammo-icon-purple.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "ammo-icon-blue",
			icon = "__nobody-needs-so-many-signals__/graphics/ammo-icon-blue.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "ammo-icon-black",
			icon = "__nobody-needs-so-many-signals__/graphics/ammo-icon-black.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "ammo-icon-white",
			icon = "__nobody-needs-so-many-signals__/graphics/ammo-icon-white.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "ammo-icon-square-green",
			icon = "__nobody-needs-so-many-signals__/graphics/ammo-icon-square-green.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "ammo-icon-square-red",
			icon = "__nobody-needs-so-many-signals__/graphics/ammo-icon-square-red.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "ammo-icon-square-blue",
			icon = "__nobody-needs-so-many-signals__/graphics/ammo-icon-square-blue.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
	})
end

if settings.startup["nobody-needs-so-many-signals-artillery"].value then
	data:extend({
		{
			type = "virtual-signal",
			name = "artillery-icon-green",
			icon = "__nobody-needs-so-many-signals__/graphics/artillery-icon-green.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "artillery-icon-yellow",
			icon = "__nobody-needs-so-many-signals__/graphics/artillery-icon-yellow.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "artillery-icon-red",
			icon = "__nobody-needs-so-many-signals__/graphics/artillery-icon-red.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "artillery-icon-purple",
			icon = "__nobody-needs-so-many-signals__/graphics/artillery-icon-purple.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "artillery-icon-blue",
			icon = "__nobody-needs-so-many-signals__/graphics/artillery-icon-blue.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "artillery-icon-black",
			icon = "__nobody-needs-so-many-signals__/graphics/artillery-icon-black.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "artillery-icon-white",
			icon = "__nobody-needs-so-many-signals__/graphics/artillery-icon-white.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "artillery-icon-square-green",
			icon = "__nobody-needs-so-many-signals__/graphics/artillery-icon-square-green.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "artillery-icon-square-red",
			icon = "__nobody-needs-so-many-signals__/graphics/artillery-icon-square-red.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "artillery-icon-square-blue",
			icon = "__nobody-needs-so-many-signals__/graphics/artillery-icon-square-blue.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
	})
end
	
if settings.startup["nobody-needs-so-many-signals-battery"].value then
	data:extend({
		{
			type = "virtual-signal",
			name = "battery-icon-green",
			icon = "__nobody-needs-so-many-signals__/graphics/battery-icon-green.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "battery-icon-yellow",
			icon = "__nobody-needs-so-many-signals__/graphics/battery-icon-yellow.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "battery-icon-red",
			icon = "__nobody-needs-so-many-signals__/graphics/battery-icon-red.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "battery-icon-purple",
			icon = "__nobody-needs-so-many-signals__/graphics/battery-icon-purple.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "battery-icon-blue",
			icon = "__nobody-needs-so-many-signals__/graphics/battery-icon-blue.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "battery-icon-black",
			icon = "__nobody-needs-so-many-signals__/graphics/battery-icon-black.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "battery-icon-white",
			icon = "__nobody-needs-so-many-signals__/graphics/battery-icon-white.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "battery-icon-square-green",
			icon = "__nobody-needs-so-many-signals__/graphics/battery-icon-square-green.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "battery-icon-square-red",
			icon = "__nobody-needs-so-many-signals__/graphics/battery-icon-square-red.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "battery-icon-square-blue",
			icon = "__nobody-needs-so-many-signals__/graphics/battery-icon-square-blue.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
	})
end

if settings.startup["nobody-needs-so-many-signals-bot"].value then
	data:extend({
		{
			type = "virtual-signal",
			name = "bot-icon-green",
			icon = "__nobody-needs-so-many-signals__/graphics/bot-icon-green.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "bot-icon-yellow",
			icon = "__nobody-needs-so-many-signals__/graphics/bot-icon-yellow.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "bot-icon-red",
			icon = "__nobody-needs-so-many-signals__/graphics/bot-icon-red.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "bot-icon-purple",
			icon = "__nobody-needs-so-many-signals__/graphics/bot-icon-purple.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "bot-icon-blue",
			icon = "__nobody-needs-so-many-signals__/graphics/bot-icon-blue.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "bot-icon-black",
			icon = "__nobody-needs-so-many-signals__/graphics/bot-icon-black.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "bot-icon-white",
			icon = "__nobody-needs-so-many-signals__/graphics/bot-icon-white.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "bot-icon-square-green",
			icon = "__nobody-needs-so-many-signals__/graphics/bot-icon-square-green.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "bot-icon-square-red",
			icon = "__nobody-needs-so-many-signals__/graphics/bot-icon-square-red.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "bot-icon-square-blue",
			icon = "__nobody-needs-so-many-signals__/graphics/bot-icon-square-blue.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
	})
end
	
if settings.startup["nobody-needs-so-many-signals-chest"].value then
	data:extend({
		{
			type = "virtual-signal",
			name = "chest-icon-green",
			icon = "__nobody-needs-so-many-signals__/graphics/chest-icon-green.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "chest-icon-yellow",
			icon = "__nobody-needs-so-many-signals__/graphics/chest-icon-yellow.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "chest-icon-red",
			icon = "__nobody-needs-so-many-signals__/graphics/chest-icon-red.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "chest-icon-purple",
			icon = "__nobody-needs-so-many-signals__/graphics/chest-icon-purple.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "chest-icon-blue",
			icon = "__nobody-needs-so-many-signals__/graphics/chest-icon-blue.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "chest-icon-black",
			icon = "__nobody-needs-so-many-signals__/graphics/chest-icon-black.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "chest-icon-white",
			icon = "__nobody-needs-so-many-signals__/graphics/chest-icon-white.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "chest-icon-square-green",
			icon = "__nobody-needs-so-many-signals__/graphics/chest-icon-square-green.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "chest-icon-square-red",
			icon = "__nobody-needs-so-many-signals__/graphics/chest-icon-square-red.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "chest-icon-square-blue",
			icon = "__nobody-needs-so-many-signals__/graphics/chest-icon-square-blue.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
	})
end
	
if settings.startup["nobody-needs-so-many-signals-circuit"].value then
	data:extend({
		{
			type = "virtual-signal",
			name = "circuit-icon-green",
			icon = "__nobody-needs-so-many-signals__/graphics/circuit-icon-green.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "circuit-icon-yellow",
			icon = "__nobody-needs-so-many-signals__/graphics/circuit-icon-yellow.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "circuit-icon-red",
			icon = "__nobody-needs-so-many-signals__/graphics/circuit-icon-red.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "circuit-icon-purple",
			icon = "__nobody-needs-so-many-signals__/graphics/circuit-icon-purple.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "circuit-icon-blue",
			icon = "__nobody-needs-so-many-signals__/graphics/circuit-icon-blue.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "circuit-icon-black",
			icon = "__nobody-needs-so-many-signals__/graphics/circuit-icon-black.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "circuit-icon-white",
			icon = "__nobody-needs-so-many-signals__/graphics/circuit-icon-white.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "circuit-icon-square-green",
			icon = "__nobody-needs-so-many-signals__/graphics/circuit-icon-square-green.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "circuit-icon-square-red",
			icon = "__nobody-needs-so-many-signals__/graphics/circuit-icon-square-red.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "circuit-icon-square-blue",
			icon = "__nobody-needs-so-many-signals__/graphics/circuit-icon-square-blue.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
	})
end
	
if settings.startup["nobody-needs-so-many-signals-cross"].value then
	data:extend({
		{
			type = "virtual-signal",
			name = "cross-icon-green",
			icon = "__nobody-needs-so-many-signals__/graphics/cross-icon-green.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "cross-icon-yellow",
			icon = "__nobody-needs-so-many-signals__/graphics/cross-icon-yellow.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "cross-icon-red",
			icon = "__nobody-needs-so-many-signals__/graphics/cross-icon-red.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "cross-icon-purple",
			icon = "__nobody-needs-so-many-signals__/graphics/cross-icon-purple.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "cross-icon-blue",
			icon = "__nobody-needs-so-many-signals__/graphics/cross-icon-blue.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "cross-icon-black",
			icon = "__nobody-needs-so-many-signals__/graphics/cross-icon-black.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "cross-icon-white",
			icon = "__nobody-needs-so-many-signals__/graphics/cross-icon-white.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "cross-icon-square-green",
			icon = "__nobody-needs-so-many-signals__/graphics/cross-icon-square-green.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "cross-icon-square-red",
			icon = "__nobody-needs-so-many-signals__/graphics/cross-icon-square-red.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "cross-icon-square-blue",
			icon = "__nobody-needs-so-many-signals__/graphics/cross-icon-square-blue.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
	})
end
	
if settings.startup["nobody-needs-so-many-signals-exclamation"].value then
	data:extend({
		{
			type = "virtual-signal",
			name = "exclamation-icon-green",
			icon = "__nobody-needs-so-many-signals__/graphics/exclamation-icon-green.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "exclamation-icon-yellow",
			icon = "__nobody-needs-so-many-signals__/graphics/exclamation-icon-yellow.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "exclamation-icon-red",
			icon = "__nobody-needs-so-many-signals__/graphics/exclamation-icon-red.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "exclamation-icon-purple",
			icon = "__nobody-needs-so-many-signals__/graphics/exclamation-icon-purple.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "exclamation-icon-blue",
			icon = "__nobody-needs-so-many-signals__/graphics/exclamation-icon-blue.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "exclamation-icon-black",
			icon = "__nobody-needs-so-many-signals__/graphics/exclamation-icon-black.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "exclamation-icon-white",
			icon = "__nobody-needs-so-many-signals__/graphics/exclamation-icon-white.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "exclamation-icon-square-green",
			icon = "__nobody-needs-so-many-signals__/graphics/exclamation-icon-square-green.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "exclamation-icon-square-red",
			icon = "__nobody-needs-so-many-signals__/graphics/exclamation-icon-square-red.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "exclamation-icon-square-blue",
			icon = "__nobody-needs-so-many-signals__/graphics/exclamation-icon-square-blue.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
	})
end
	
if settings.startup["nobody-needs-so-many-signals-flag"].value then
	data:extend({
		{
			type = "virtual-signal",
			name = "flag-icon-green",
			icon = "__nobody-needs-so-many-signals__/graphics/flag-icon-green.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "flag-icon-yellow",
			icon = "__nobody-needs-so-many-signals__/graphics/flag-icon-yellow.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "flag-icon-red",
			icon = "__nobody-needs-so-many-signals__/graphics/flag-icon-red.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "flag-icon-purple",
			icon = "__nobody-needs-so-many-signals__/graphics/flag-icon-purple.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "flag-icon-blue",
			icon = "__nobody-needs-so-many-signals__/graphics/flag-icon-blue.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "flag-icon-black",
			icon = "__nobody-needs-so-many-signals__/graphics/flag-icon-black.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "flag-icon-white",
			icon = "__nobody-needs-so-many-signals__/graphics/flag-icon-white.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "flag-icon-square-green",
			icon = "__nobody-needs-so-many-signals__/graphics/flag-icon-square-green.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "flag-icon-square-red",
			icon = "__nobody-needs-so-many-signals__/graphics/flag-icon-square-red.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "flag-icon-square-blue",
			icon = "__nobody-needs-so-many-signals__/graphics/flag-icon-square-blue.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
	})
end
	
if settings.startup["nobody-needs-so-many-signals-fluid"].value then
	data:extend({
		{
			type = "virtual-signal",
			name = "fluid-icon-green",
			icon = "__nobody-needs-so-many-signals__/graphics/fluid-icon-green.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "fluid-icon-yellow",
			icon = "__nobody-needs-so-many-signals__/graphics/fluid-icon-yellow.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "fluid-icon-red",
			icon = "__nobody-needs-so-many-signals__/graphics/fluid-icon-red.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "fluid-icon-purple",
			icon = "__nobody-needs-so-many-signals__/graphics/fluid-icon-purple.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "fluid-icon-blue",
			icon = "__nobody-needs-so-many-signals__/graphics/fluid-icon-blue.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "fluid-icon-black",
			icon = "__nobody-needs-so-many-signals__/graphics/fluid-icon-black.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "fluid-icon-white",
			icon = "__nobody-needs-so-many-signals__/graphics/fluid-icon-white.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "fluid-icon-square-green",
			icon = "__nobody-needs-so-many-signals__/graphics/fluid-icon-square-green.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "fluid-icon-square-red",
			icon = "__nobody-needs-so-many-signals__/graphics/fluid-icon-square-red.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "fluid-icon-square-blue",
			icon = "__nobody-needs-so-many-signals__/graphics/fluid-icon-square-blue.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
	})
end
	
if settings.startup["nobody-needs-so-many-signals-fuel"].value then
	data:extend({
		{
			type = "virtual-signal",
			name = "fuel-icon-green",
			icon = "__nobody-needs-so-many-signals__/graphics/fuel-icon-green.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "fuel-icon-yellow",
			icon = "__nobody-needs-so-many-signals__/graphics/fuel-icon-yellow.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "fuel-icon-red",
			icon = "__nobody-needs-so-many-signals__/graphics/fuel-icon-red.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "fuel-icon-purple",
			icon = "__nobody-needs-so-many-signals__/graphics/fuel-icon-purple.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "fuel-icon-blue",
			icon = "__nobody-needs-so-many-signals__/graphics/fuel-icon-blue.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "fuel-icon-black",
			icon = "__nobody-needs-so-many-signals__/graphics/fuel-icon-black.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "fuel-icon-white",
			icon = "__nobody-needs-so-many-signals__/graphics/fuel-icon-white.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "fuel-icon-square-green",
			icon = "__nobody-needs-so-many-signals__/graphics/fuel-icon-square-green.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "fuel-icon-square-red",
			icon = "__nobody-needs-so-many-signals__/graphics/fuel-icon-square-red.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "fuel-icon-square-blue",
			icon = "__nobody-needs-so-many-signals__/graphics/fuel-icon-square-blue.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
	})
end
	
if settings.startup["nobody-needs-so-many-signals-gear"].value then
	data:extend({
		{
			type = "virtual-signal",
			name = "gear-icon-green",
			icon = "__nobody-needs-so-many-signals__/graphics/gear-icon-green.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "gear-icon-yellow",
			icon = "__nobody-needs-so-many-signals__/graphics/gear-icon-yellow.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "gear-icon-red",
			icon = "__nobody-needs-so-many-signals__/graphics/gear-icon-red.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "gear-icon-purple",
			icon = "__nobody-needs-so-many-signals__/graphics/gear-icon-purple.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "gear-icon-blue",
			icon = "__nobody-needs-so-many-signals__/graphics/gear-icon-blue.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "gear-icon-black",
			icon = "__nobody-needs-so-many-signals__/graphics/gear-icon-black.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "gear-icon-white",
			icon = "__nobody-needs-so-many-signals__/graphics/gear-icon-white.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "gear-icon-square-green",
			icon = "__nobody-needs-so-many-signals__/graphics/gear-icon-square-green.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "gear-icon-square-red",
			icon = "__nobody-needs-so-many-signals__/graphics/gear-icon-square-red.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "gear-icon-square-blue",
			icon = "__nobody-needs-so-many-signals__/graphics/gear-icon-square-blue.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
	})
end
	
if settings.startup["nobody-needs-so-many-signals-module1"].value then
	data:extend({
		{
			type = "virtual-signal",
			name = "module1-icon-green",
			icon = "__nobody-needs-so-many-signals__/graphics/module1-icon-green.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "module1-icon-yellow",
			icon = "__nobody-needs-so-many-signals__/graphics/module1-icon-yellow.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "module1-icon-red",
			icon = "__nobody-needs-so-many-signals__/graphics/module1-icon-red.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "module1-icon-purple",
			icon = "__nobody-needs-so-many-signals__/graphics/module1-icon-purple.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "module1-icon-blue",
			icon = "__nobody-needs-so-many-signals__/graphics/module1-icon-blue.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "module1-icon-black",
			icon = "__nobody-needs-so-many-signals__/graphics/module1-icon-black.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "module1-icon-white",
			icon = "__nobody-needs-so-many-signals__/graphics/module1-icon-white.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "module1-icon-square-green",
			icon = "__nobody-needs-so-many-signals__/graphics/module1-icon-square-green.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "module1-icon-square-red",
			icon = "__nobody-needs-so-many-signals__/graphics/module1-icon-square-red.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "module1-icon-square-blue",
			icon = "__nobody-needs-so-many-signals__/graphics/module1-icon-square-blue.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
	})
end
	
if settings.startup["nobody-needs-so-many-signals-module2"].value then
	data:extend({
		{
			type = "virtual-signal",
			name = "module2-icon-green",
			icon = "__nobody-needs-so-many-signals__/graphics/module2-icon-green.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "module2-icon-yellow",
			icon = "__nobody-needs-so-many-signals__/graphics/module2-icon-yellow.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "module2-icon-red",
			icon = "__nobody-needs-so-many-signals__/graphics/module2-icon-red.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "module2-icon-purple",
			icon = "__nobody-needs-so-many-signals__/graphics/module2-icon-purple.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "module2-icon-blue",
			icon = "__nobody-needs-so-many-signals__/graphics/module2-icon-blue.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "module2-icon-black",
			icon = "__nobody-needs-so-many-signals__/graphics/module2-icon-black.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "module2-icon-white",
			icon = "__nobody-needs-so-many-signals__/graphics/module2-icon-white.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "module2-icon-square-green",
			icon = "__nobody-needs-so-many-signals__/graphics/module2-icon-square-green.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "module2-icon-square-red",
			icon = "__nobody-needs-so-many-signals__/graphics/module2-icon-square-red.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "module2-icon-square-blue",
			icon = "__nobody-needs-so-many-signals__/graphics/module2-icon-square-blue.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
	})
end
	
if settings.startup["nobody-needs-so-many-signals-module3"].value then
	data:extend({
		{
			type = "virtual-signal",
			name = "module3-icon-green",
			icon = "__nobody-needs-so-many-signals__/graphics/module3-icon-green.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "module3-icon-yellow",
			icon = "__nobody-needs-so-many-signals__/graphics/module3-icon-yellow.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "module3-icon-red",
			icon = "__nobody-needs-so-many-signals__/graphics/module3-icon-red.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "module3-icon-purple",
			icon = "__nobody-needs-so-many-signals__/graphics/module3-icon-purple.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "module3-icon-blue",
			icon = "__nobody-needs-so-many-signals__/graphics/module3-icon-blue.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "module3-icon-black",
			icon = "__nobody-needs-so-many-signals__/graphics/module3-icon-black.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "module3-icon-white",
			icon = "__nobody-needs-so-many-signals__/graphics/module3-icon-white.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "module3-icon-square-green",
			icon = "__nobody-needs-so-many-signals__/graphics/module3-icon-square-green.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "module3-icon-square-red",
			icon = "__nobody-needs-so-many-signals__/graphics/module3-icon-square-red.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "module3-icon-square-blue",
			icon = "__nobody-needs-so-many-signals__/graphics/module3-icon-square-blue.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
	})
end
	
if settings.startup["nobody-needs-so-many-signals-nuclear"].value then
	data:extend({
		{
			type = "virtual-signal",
			name = "nuclear-icon-green",
			icon = "__nobody-needs-so-many-signals__/graphics/nuclear-icon-green.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "nuclear-icon-yellow",
			icon = "__nobody-needs-so-many-signals__/graphics/nuclear-icon-yellow.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "nuclear-icon-red",
			icon = "__nobody-needs-so-many-signals__/graphics/nuclear-icon-red.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "nuclear-icon-purple",
			icon = "__nobody-needs-so-many-signals__/graphics/nuclear-icon-purple.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "nuclear-icon-blue",
			icon = "__nobody-needs-so-many-signals__/graphics/nuclear-icon-blue.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "nuclear-icon-black",
			icon = "__nobody-needs-so-many-signals__/graphics/nuclear-icon-black.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "nuclear-icon-white",
			icon = "__nobody-needs-so-many-signals__/graphics/nuclear-icon-white.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "nuclear-icon-square-green",
			icon = "__nobody-needs-so-many-signals__/graphics/nuclear-icon-square-green.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "nuclear-icon-square-red",
			icon = "__nobody-needs-so-many-signals__/graphics/nuclear-icon-square-red.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "nuclear-icon-square-blue",
			icon = "__nobody-needs-so-many-signals__/graphics/nuclear-icon-square-blue.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
	})
end
	
if settings.startup["nobody-needs-so-many-signals-offset"].value then
	data:extend({
		{
			type = "virtual-signal",
			name = "offset-icon-green",
			icon = "__nobody-needs-so-many-signals__/graphics/offset-icon-green.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "offset-icon-yellow",
			icon = "__nobody-needs-so-many-signals__/graphics/offset-icon-yellow.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "offset-icon-red",
			icon = "__nobody-needs-so-many-signals__/graphics/offset-icon-red.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "offset-icon-purple",
			icon = "__nobody-needs-so-many-signals__/graphics/offset-icon-purple.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "offset-icon-blue",
			icon = "__nobody-needs-so-many-signals__/graphics/offset-icon-blue.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "offset-icon-black",
			icon = "__nobody-needs-so-many-signals__/graphics/offset-icon-black.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "offset-icon-white",
			icon = "__nobody-needs-so-many-signals__/graphics/offset-icon-white.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "offset-icon-square-green",
			icon = "__nobody-needs-so-many-signals__/graphics/offset-icon-square-green.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "offset-icon-square-red",
			icon = "__nobody-needs-so-many-signals__/graphics/offset-icon-square-red.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "offset-icon-square-blue",
			icon = "__nobody-needs-so-many-signals__/graphics/offset-icon-square-blue.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
	})
end
	
if settings.startup["nobody-needs-so-many-signals-plug"].value then
	data:extend({
		{
			type = "virtual-signal",
			name = "plug-icon-green",
			icon = "__nobody-needs-so-many-signals__/graphics/plug-icon-green.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "plug-icon-yellow",
			icon = "__nobody-needs-so-many-signals__/graphics/plug-icon-yellow.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "plug-icon-red",
			icon = "__nobody-needs-so-many-signals__/graphics/plug-icon-red.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "plug-icon-purple",
			icon = "__nobody-needs-so-many-signals__/graphics/plug-icon-purple.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "plug-icon-blue",
			icon = "__nobody-needs-so-many-signals__/graphics/plug-icon-blue.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "plug-icon-black",
			icon = "__nobody-needs-so-many-signals__/graphics/plug-icon-black.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "plug-icon-white",
			icon = "__nobody-needs-so-many-signals__/graphics/plug-icon-white.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "plug-icon-square-green",
			icon = "__nobody-needs-so-many-signals__/graphics/plug-icon-square-green.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "plug-icon-square-red",
			icon = "__nobody-needs-so-many-signals__/graphics/plug-icon-square-red.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "plug-icon-square-blue",
			icon = "__nobody-needs-so-many-signals__/graphics/plug-icon-square-blue.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
	})
end
	
if settings.startup["nobody-needs-so-many-signals-roboport"].value then
	data:extend({
		{
			type = "virtual-signal",
			name = "roboport-icon-green",
			icon = "__nobody-needs-so-many-signals__/graphics/roboport-icon-green.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "roboport-icon-yellow",
			icon = "__nobody-needs-so-many-signals__/graphics/roboport-icon-yellow.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "roboport-icon-red",
			icon = "__nobody-needs-so-many-signals__/graphics/roboport-icon-red.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "roboport-icon-purple",
			icon = "__nobody-needs-so-many-signals__/graphics/roboport-icon-purple.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "roboport-icon-blue",
			icon = "__nobody-needs-so-many-signals__/graphics/roboport-icon-blue.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "roboport-icon-black",
			icon = "__nobody-needs-so-many-signals__/graphics/roboport-icon-black.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "roboport-icon-white",
			icon = "__nobody-needs-so-many-signals__/graphics/roboport-icon-white.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "roboport-icon-square-green",
			icon = "__nobody-needs-so-many-signals__/graphics/roboport-icon-square-green.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "roboport-icon-square-red",
			icon = "__nobody-needs-so-many-signals__/graphics/roboport-icon-square-red.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "roboport-icon-square-blue",
			icon = "__nobody-needs-so-many-signals__/graphics/roboport-icon-square-blue.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
	})
end
	
if settings.startup["nobody-needs-so-many-signals-science"].value then
	data:extend({
		{
			type = "virtual-signal",
			name = "science-icon-green",
			icon = "__nobody-needs-so-many-signals__/graphics/science-icon-green.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "science-icon-yellow",
			icon = "__nobody-needs-so-many-signals__/graphics/science-icon-yellow.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "science-icon-red",
			icon = "__nobody-needs-so-many-signals__/graphics/science-icon-red.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "science-icon-purple",
			icon = "__nobody-needs-so-many-signals__/graphics/science-icon-purple.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "science-icon-blue",
			icon = "__nobody-needs-so-many-signals__/graphics/science-icon-blue.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "science-icon-black",
			icon = "__nobody-needs-so-many-signals__/graphics/science-icon-black.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "science-icon-white",
			icon = "__nobody-needs-so-many-signals__/graphics/science-icon-white.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "science-icon-square-green",
			icon = "__nobody-needs-so-many-signals__/graphics/science-icon-square-green.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "science-icon-square-red",
			icon = "__nobody-needs-so-many-signals__/graphics/science-icon-square-red.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "science-icon-square-blue",
			icon = "__nobody-needs-so-many-signals__/graphics/science-icon-square-blue.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
	})
end
	
if settings.startup["nobody-needs-so-many-signals-solar"].value then
	data:extend({
		{
			type = "virtual-signal",
			name = "solar-icon-green",
			icon = "__nobody-needs-so-many-signals__/graphics/solar-icon-green.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "solar-icon-yellow",
			icon = "__nobody-needs-so-many-signals__/graphics/solar-icon-yellow.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "solar-icon-red",
			icon = "__nobody-needs-so-many-signals__/graphics/solar-icon-red.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "solar-icon-purple",
			icon = "__nobody-needs-so-many-signals__/graphics/solar-icon-purple.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "solar-icon-blue",
			icon = "__nobody-needs-so-many-signals__/graphics/solar-icon-blue.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "solar-icon-black",
			icon = "__nobody-needs-so-many-signals__/graphics/solar-icon-black.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "solar-icon-white",
			icon = "__nobody-needs-so-many-signals__/graphics/solar-icon-white.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "solar-icon-square-green",
			icon = "__nobody-needs-so-many-signals__/graphics/solar-icon-square-green.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "solar-icon-square-red",
			icon = "__nobody-needs-so-many-signals__/graphics/solar-icon-square-red.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "solar-icon-square-blue",
			icon = "__nobody-needs-so-many-signals__/graphics/solar-icon-square-blue.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
	})
end
	
if settings.startup["nobody-needs-so-many-signals-voltage"].value then
	data:extend({
		{
			type = "virtual-signal",
			name = "voltage-icon-green",
			icon = "__nobody-needs-so-many-signals__/graphics/voltage-icon-green.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "voltage-icon-yellow",
			icon = "__nobody-needs-so-many-signals__/graphics/voltage-icon-yellow.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "voltage-icon-red",
			icon = "__nobody-needs-so-many-signals__/graphics/voltage-icon-red.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "voltage-icon-purple",
			icon = "__nobody-needs-so-many-signals__/graphics/voltage-icon-purple.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "voltage-icon-blue",
			icon = "__nobody-needs-so-many-signals__/graphics/voltage-icon-blue.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "voltage-icon-black",
			icon = "__nobody-needs-so-many-signals__/graphics/voltage-icon-black.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "voltage-icon-white",
			icon = "__nobody-needs-so-many-signals__/graphics/voltage-icon-white.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "voltage-icon-square-green",
			icon = "__nobody-needs-so-many-signals__/graphics/voltage-icon-square-green.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "voltage-icon-square-red",
			icon = "__nobody-needs-so-many-signals__/graphics/voltage-icon-square-red.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "voltage-icon-square-blue",
			icon = "__nobody-needs-so-many-signals__/graphics/voltage-icon-square-blue.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
	})
end
	
if settings.startup["nobody-needs-so-many-signals-wrench"].value then
	data:extend({
		{
			type = "virtual-signal",
			name = "wrench-icon-green",
			icon = "__nobody-needs-so-many-signals__/graphics/wrench-icon-green.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "wrench-icon-yellow",
			icon = "__nobody-needs-so-many-signals__/graphics/wrench-icon-yellow.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "wrench-icon-red",
			icon = "__nobody-needs-so-many-signals__/graphics/wrench-icon-red.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "wrench-icon-purple",
			icon = "__nobody-needs-so-many-signals__/graphics/wrench-icon-purple.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "wrench-icon-blue",
			icon = "__nobody-needs-so-many-signals__/graphics/wrench-icon-blue.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "wrench-icon-black",
			icon = "__nobody-needs-so-many-signals__/graphics/wrench-icon-black.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "wrench-icon-white",
			icon = "__nobody-needs-so-many-signals__/graphics/wrench-icon-white.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "wrench-icon-square-green",
			icon = "__nobody-needs-so-many-signals__/graphics/wrench-icon-square-green.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "wrench-icon-square-red",
			icon = "__nobody-needs-so-many-signals__/graphics/wrench-icon-square-red.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
		{
			type = "virtual-signal",
			name = "wrench-icon-square-blue",
			icon = "__nobody-needs-so-many-signals__/graphics/wrench-icon-square-blue.png",
			subgroup = "nobody-needs-so-many-signals",
			icon_size = 64,
			order = ""..signals_increment()
		},
	})
end
