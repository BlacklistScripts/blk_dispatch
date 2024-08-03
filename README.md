# blk_dispatch
A basic Dispatch Notifier that sends a notification to all players on a job role. Currently only made for Police and Ambulance calls 

- Easy to use
- Simple Drag & Drop installation
- Supports ESX and QBCore/Qbox

# Preview

https://youtube.com/@blacklistscripts

# Suport and Suggestions

* [Discord](https://discord.gg/fzUqqQBSUf)

```lua
local callData = {
    badge = 'ESTA',                         -- Appears in the top left
    title = 'Officer Down Title',           -- Call Title
    info = 'Officer Down Info',             -- Call Information
    location = 'Officer Down Location',     -- Call Location
    job = 'police',                         -- Job to display the notification to ('police' or 'ambulance')
    length = 5000                           -- How long the notification appears for in ms
    isImportant = true,                     -- Is this a duress? (basically makes the notification flash)
}
TriggerServerEvent("blk_dispatch:showNotification", callData)
```