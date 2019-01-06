RegisterCommand('reset', function(source)
    local _source = source
    local playername = GetPlayerName(_source)
	if IsPlayerAceAllowed(source, 'w.reset') then
		TriggerClientEvent('chatMessage', -1, '^1The server is being reset by ^5 ' .. playername .. '^1!')
		TriggerClientEvent('delcar', -1)
	--^^ This is here to remove the player last vehicle and also here because if it was the last thing on the list it the below functions would TP the player to the spawnpoints which then will not delete the ped is in.
		StopResource("fivem") -- These will remove all vehicles but the players last.
     		StartResource("fivem")
	 else
	 	TriggerClientEvent('chatMessage', -1, "^1 You are not allowed to do this action!")
	 end
end, false)
