RegisterNetEvent('delcar') -- Event called when x player triggers the command set to check if player is in a car.
AddEventHandler('delcar', function()
    local player = GetPlayerPed(-1)
	local cars = GetVehiclePedIsIn(player, true)
		SetEntityAsMissionEntity(cars, true, true)
            		remCar(cars)

end )

function remCar(entity) -- Function to remove the car.
    Citizen.InvokeNative(0xEA386986E786A54F, Citizen.PointerValueIntInitialized(entity))
end


-- Credits to WolNight and Scammer!
