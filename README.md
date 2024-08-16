# DawnTools-ad

This repository contains the public version of DawnTools.

DawnTools is a standalone in-game addon to assist with advertising and gold handling tasks. Fully GUI based using StdUi and built using the Ace3 framework, it currently has the following features:

- BulkMail (Send one or many mails, specifying recipient, subject, body and gold amount)
- DepositSender (Quickly send deposits to Dawn bank)
- InfoPanel (Displays current realm, character name, banker name, gold and guildbank gold)
- InviteTool (Mass-invite tool with ability to track progress and reinvite)
- MailGrabber (Collects one or many mails matching Subject:Gold pattern and outputs list of IDs for easy copy/paste)
- MailLog (Logs and displays all mail sent/received)
- Macro (Allows creation of ad macros)
- TradeLog (Logs and displays all trades sent/received)
- AutoInvite (Responds to keywords set in options and invites automatically, such as `inv`)

## Slash commands

Typing `/dawn` displays the help menu.

```
/dawn info        - Toggle info panel on/off
/dawn invite      - Toggle invite window
/dawn maillog     - Toggle mail log
/dawn tradelog    - Toggle trade log
/dawn macro       - Toggle macro window
/dawn minimap     - Toggle Minimap icon
/dawn version     - Prints current version to chat
/dawn reinstall   - Deletes addon database
```
