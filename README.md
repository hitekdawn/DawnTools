**DawnTools**

**Introduction**
DawnTools is a standalone in-game addon to assist with advertising and gold handling tasks. Fully GUI based using StdUi and built using the Ace3 framework, it currently has the following features:

- BulkMail (Send one or many mails, specifying recipient, subject, body and gold amount)
- InfoPanel (Displays current realm, character name, banker name, gold and guildbank gold)
- InviteTool (Mass-invite tool with ability to track progress and reinvite)
- GoldLog (Logs and displays all gold on all your characters/guild banks)
- MailLog (Logs and displays all mail sent/received)
- TradeLog (Logs and displays all trades sent/received)
- Macros (Allows creation of ad macros)
- AutoInvite (Responds to keywords set in options and invites automatically, such as `inv`)

**Slash commands**

Typing `/dawn` displays the help menu.

```
/dawn info        - Toggle info panel on/off
/dawn invite      - Toggle invite window
/dawn goldlog     - Toggle gold log
/dawn maillog     - Toggle mail log
/dawn tradelog    - Toggle trade log
/dawn macro       - Toggle macro window
/dawn minimap     - Toggle Minimap icon
/dawn version     - Prints current version to chat
/dawn reinstall   - Deletes addon database
```

**GUI Options**
By accessing `Interface -> Addons -> DawnTools` you can configure:

- Show Minimap Icon (on/off)
- Show Info Panel (on/off)
- Whisper after trade (on/off)
- Auto Invite on Whisper (on/off)
- Auto Invite Keywords (strings)
- Macro password (for sharing between accounts)
