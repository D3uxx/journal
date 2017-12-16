--====================================================================================
-- #Author: GTAVFTRP 
--====================================================================================
 

ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

--------Prendre un journal--------

RegisterServerEvent('journal:disp')
AddEventHandler('journal:disp', function()


	local total   = math.random(0, 99);
	local xPlayer  = ESX.GetPlayerFromId(source)
	

	if     total >= 0 and total <= 90 then
		xPlayer.addInventoryItem('journal', 1)
	elseif 		total > 90 and total <= 99 then
		TriggerClientEvent('esx:showNotification', source, 'Votre monnaie vous a été rendu. Réessayer !')
	end
end)


-------Utiliser Le Journal------

ESX.RegisterUsableItem('journal', function(source)
	TriggerClientEvent('journal:journal', source)
	
		local xPlayer  = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('journal', 1)
end)

