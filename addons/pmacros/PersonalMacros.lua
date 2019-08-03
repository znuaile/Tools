--private macro functions def  
--every function begin with 'PMF_' to identify it is a private macro function

--[[PMF_DbgMsg = Stubby.Print
if Stubby then
    PMF_DbgMsg =  Stubby.Print
end
]]
PMF_TxtColorRed={0.9,0.1,0.1}
PMF_TxtColorGreen={0.1,0.9,0.1}
PMF_TxtColorBlue={0.1,0.1,0.9}
PMF_TxtColorWhite={1,1,1}
PMF_TxtColorBlack={0,0,0}
function PMF_PrintLog(...)
	if ( DEFAULT_CHAT_FRAME ) then 
		local msg = ""
		for i=1, table.getn(arg) do
			if i==1 then msg = arg[i]
			else msg = msg.." "..arg[i]
			end
        end
        -- msg ,red ,green,blue,messageId,time alive
		DEFAULT_CHAT_FRAME:AddMessage(msg, 0, 0.2, 0.7)
	end
end

function PMF_ColorPrint(colors,...)
	if ( DEFAULT_CHAT_FRAME ) then 
		local msg = ""
		for i=1, table.getn(arg) do
			if i==1 then msg = arg[i]
			else msg = msg.." "..arg[i]
			end
        end
        -- msg ,red ,green,blue,messageId,time alive
		DEFAULT_CHAT_FRAME:AddMessage(msg, colors[1], colors[2], colors[3])
	end
end


function PMF_Version()
    PMF_PrintLog("Personal Macro functions version 1.0.0");
end

PMF_Msg= PMF_PrintLog

function PMF_Ss()
    CastSpellByName('Sinister Strike')
end

PMF_LocalSpellNumber = 1

function PMF_CSpl()
    PMF_LocalSpellNumber = PMF_LocalSpellNumber +1
    if (math.mod(PMF_LocalSpellNumber,2) == 1 )then
        CastSpellByName('Sinister Strike')
        PMF_Msg('test if  :'..PMF_LocalSpellNumber)
    else
        CastSpellByName('eviscerate')    
        PMF_Msg('test else:'..PMF_LocalSpellNumber)
    end
end