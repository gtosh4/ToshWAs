local DogTag = LibStub("LibDogTag-3.0")

local red = "|cFFFF0000"
local t = {
  second = 1,
  minute = 60,
  hour = 60*60,
}
local threshold = 4.5

if DogTag.Tags["TMW"]["ToshDuration"] then
  DogTag.Tags["TMW"]["ToshDuration"] = nil
end

DogTag:AddTag("TMW", "ToshDuration", {
  code = TMW:MakeSingleArgFunctionCached(function(seconds)
    if seconds == 0 then
      return ""
    elseif seconds > t.hour then
      return format("%.1f", seconds / t.hour)
    elseif seconds > t.minute then
      return format("%.1f", seconds / t.minute)
    elseif seconds > threshold then
      return format("%d", seconds)
    else
      return red .. format("%.1f", seconds) .. "|r"
    end
	end),
	arg = {
		'seconds', 'number', '@req',
	},
	ret = "string",
  static = true,
  doc = "Returns a string formatted by Tosh's time format. Alternative to [FormatDuration] based on [TMWFormatDuration]",
  example = '[0.54:ToshDuration] => "0.5"; [20:ToshDuration] => "20"; [80:ToshDuration] => "1.3"; [10000:ToshDuration] => "2.8h"',
  category = "Text manipulation",
})
