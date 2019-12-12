For RedM . Some option for player , spawn horse , add / remouve Campfire and hid / display the hud on pad - WIP

Some fun Option :

Up = Horse Down = Hid / display Hud right = spawn campfire left = del campfire

Modular MENU :

`Menu based on warmenu so you can use like the fiveM version if you know `

CLOTHE SHOP  : 
 Buy the complet clorhd for all ped
demo added you can added how mush you whant .
Juste added this line after 247

>         elseif (Vdist(coords.x, coords.y, coords.z, x, y,z) < 1.0) then 
            WarMenu.OpenMenu('tenu')


AMUNATION: 
Buy weapon with ammo for the player
demo added you can added how mush you whant .
Juste added this line after 108

>         elseif (Vdist(coords.x, coords.y, coords.z, x, y,z) < 1.0) then 
            WarMenu.OpenMenu('tenu')

GARE EXPRESS :
This is simple teleportation 
demo added you can added how mush you whant .
Juste added this line after 35

>         elseif (Vdist(coords.x, coords.y, coords.z, x, y,z) < 1.0) then 
            WarMenu.OpenMenu('tenu')

PERSONAL MENU : 
For have personal menu , demo here : 

```
Citizen.CreateThread(function()
	local items = { "Item 1", "Item 2", "Item 3", "Item 4", "Item 5" }
	local currentItemIndex = 1
	local selectedItemIndex = 1
	local checkbox = true

	WarMenu.CreateMenu('test', 'Test title')
	WarMenu.CreateSubMenu('closeMenu', 'test', 'Are you sure?')

	while true do
		if WarMenu.IsMenuOpened('test') then
			if WarMenu.CheckBox('Checkbox', checkbox) then
				checkbox = not checkbox
				-- Do your stuff here
			elseif WarMenu.ComboBox('Combobox', items, currentItemIndex, selectedItemIndex, function(currentIndex, selectedIndex)
					currentItemIndex = currentIndex
					selectedItemIndex = selectedIndex

					-- Do your stuff here if current index was changed (don't forget to check it)
				end) then
					-- Do your stuff here if current item was activated
			elseif WarMenu.MenuButton('Exit', 'closeMenu') then
			end

			WarMenu.Display()
		elseif WarMenu.IsMenuOpened('closeMenu') then
			if WarMenu.Button('Yes') then
				WarMenu.CloseMenu()
			elseif WarMenu.MenuButton('No', 'test') then
			end

			WarMenu.Display()
		elseif IsDisabledControlJustPressed(0, "KEY_YOU_WHANT") then -- check in config the key
			WarMenu.OpenMenu('test')
		end

		Citizen.Wait(0)
	end
end)
```

Replace any code here :

(Vdist(coords.x, coords.y, coords.z, x, y,z) < 1.0)

BY 

IsDisabledControlJustPressed(0, "KEY_YOU_WHANT")
 

More info and update 

https://discord.gg/aX5th2U

WIP

![0_20191210121238_1|666x500](upload://rjrEvQtkCmrrcY8J4NiBclzvx4p.png) ![0_20191210130617_1|666x500](upload://vwxa2onh8DOljtDcCoMxKQo0Y3i.png) ![0_20191211163633_1|666x500](upload://qibQKgytQQ1mS6EI07kUYUtCNEd.png) ![0_20191211205807_1|666x500](upload://6YYZDTvxaXUXIhlZssyGllkYgRq.png)

know bug : 

Horse spawn any you whant
Campfire dont despawn
