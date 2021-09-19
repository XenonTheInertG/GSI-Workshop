Port OEM ROMs,Custom ROMs to project treble using github actions and [ErfanGSIs](https://github.com/erfanoabdi/ErfanGSIs) then upload to sourceforge,github releases & other file upload websites.

![GSI-Workshop](https://github.com/XenonTheInertG/GSI-Workshop/actions/workflows/Xenon-CI.yml/badge.svg) [![GSI-Workshop2](https://github.com/XenonTheInertG/GSI-Workshop/actions/workflows/XenonCI2.yml/badge.svg)](https://github.com/XenonTheInertG/GSI-Workshop/actions/workflows/XenonCI2.yml) [![GSI-Workshop3](https://github.com/XenonTheInertG/GSI-Workshop/actions/workflows/Xenon-CI3.yml/badge.svg)](https://github.com/XenonTheInertG/GSI-Workshop/actions/workflows/Xenon-CI3.yml)
[![Download GSI-Workshop GSIs](https://img.shields.io/sourceforge/dm/velosh-gsis.svg)](https://sourceforge.net/projects/gsi-workshop/files/latest/download)
[![Download GSI-Workshop GSIs](https://img.shields.io/sourceforge/dw/velosh-gsis.svg)](https://sourceforge.net/projects/gsi-workshop/files/latest/download)
[![Download GSI-Workshop GSIs](https://img.shields.io/sourceforge/dt/velosh-gsis.svg)](https://sourceforge.net/projects/gsi-workshop/files/latest/download) [![Codacy Badge](https://api.codacy.com/project/badge/Grade/2cadab25a04c42779f3203b4a61bd6ef)](https://app.codacy.com/gh/XenonTheInertG/GSI-Workshop?utm_source=github.com&utm_medium=referral&utm_content=XenonTheInertG/GSI-Workshop&utm_campaign=Badge_Grade)
[Download link](https://sourceforge.net/projects/gsi-workshop/files/)  
Telegram group: https://t.me/techtweaky  
Telegram channel: https://t.me/XenonTheInertGCI

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
# Features
- Easy to use.
- Modular & fast
- Customizable. Chose your own custom ErfanGSIs tool, chose build type (A only or AB or both), and many more.
- Deploy ported GSI to sourceforge,github releases & other file upload websites
- Send notifications on telegram with informations about the latest build.

# Requirements

<b>• If you want to port & upload GSI directly to your sourceforge project!</b>

- A little understanding on how to use ErfanGSIs tool.
- A SourceForge account and project.
- A little understanding on how SourceForge works and how to use it with sftp.

<b>• If you want to port & upload GSI to file hosting websites</b>
- Scroll download & see website variables

<b>• If you want to port & Upload GSI to github releases</b>
- PAT(Personal access token)

# How To Use
- Fork the repo.
- Setup ErfanGSIs configuration in config.env. See [ErfanGSIs Configuration](#ErfanGSIs-Configuration).
- Setup SourceForge credentials in github secrets. See [SourceForge Configuration](#SourceForge-Configuration).
- Go to actions tab, enable workflows.
- Go to Actions tab again, click and run workflow manually.
- It should take around 10-30 miniute to succesfully build and upload your builds to sourceforge.com.

# How to update
- Change ErfanGSIs configuration in config.env. [ErfanGSIs Configuration](#ErfanGSIs-Configuration).
- Go to actions tab, click and run workflow manually.
- It should take around 10 to succesfully build and upload your builds to sourceforge.com.

# ErfanGSIs Configuration
> All the settings for Erfan's tool is available by editing the config.env file.

**Name**|**Description**|**Required**
:-----:|:-----:|:-----:
  TOOL\_REPO| Repository from where to clone ErfanGSIs tool. Only change this if you are using a custom one.
  URL| Firmware download link or path on the repo.
  FIRMWARE\_TYPE| Firmware type (eg: Pixel).
  OUTPUT\_TYPE| Build type. Can be: "all" to build AB and AOnly; "ab" to build just AB; "a" to build just AOnly.
  SOURCEFORGE\_DIR| The directory on sourceforge. See: https://sourceforge.net/p/forge/documentation/SFTP/#for-managing-file-releases
  TG\_CHAT\_IDS| List of telegram chat id separated by space where to send info about the latest builds. Set to 0 to disable telegram notifications.
  SOURCEFORGE\_URL| Url to the sourceforge directory where the builds are uploaded. Used if telegram notifications are enabled.
  EXTRA\_ARGS| Extra arguments to pass to url2GSI.sh script.

# SourceForge Configuration

> In order to connect to source forge you need some extra configuration variables in your repo secrets. See [here](https://docs.github.com/en/actions/reference/encrypted-secrets).

**Name** | **Description**
:-----:|:-----:
USERNAME | SourceForge username.
PASSWORD | SourceForge password.
TG_BOT_TOKEN | Telegram Bot Token to send notification messages to. Used only if telegram notifications are enabled.

# Mirror
You can change cloud for uploading your options are

|  Name   | Site  | Limit | Provider |
|  ----  | ----  |  ----  |  ----  |
| Airportal | https://aitportal.cn/ | - | Aliyun |
| bitSend | https://bitsend.jp/ | - | OVH |
| CatBox | https://catbox.moe/ | 100MB | Psychz |
| CowTransfer | https://www.cowtransfer.com/ | 2GB | Qiniu |
| GoFile | https://gofile.io/ | - | - |
| TmpLink | https://tmp.link/ | - | - |
| Vim-cn | https://img.vim-cn.com/ | 100MB | CloudFlare |
| WenShuShu | https://www.wenshushu.cn/ | 5GB | QCloud |
| WeTransfer | https://wetransfer.com/ | 2GB | CloudFront |
| FileLink | https://filelink.io/ | - | GCE |
| Transfer.sh | https://transfer.sh/ | - | Hetzner |
| Lanzous | https://www.lanzous.com/ | login only | - |

Config values

| config | site name | website |
|  ----  | ----  |  ----  |
|  arp  |  Airportal  |  https://aitportal.cn/ |
|  bit  |  bitSend  |  https://bitsend.jp/ |
|  cat  |  CatBox  |  https://catbox.moe/
|  cow  |  CowTransfer  |  https://www.cowtransfer.com/ |
|  gof  |  GoFile  |  https://gofile.io/ |
|  tmp  |  TmpLink  |  https://tmp.link/ |
|  vim  |  Vim-cn  |  https://img.vim-cn.com/ |
|  wss  |  WenShuShu  |  https://www.wenshushu.cn/ |
|  wet  |  WeTransfer  |  https://wetransfer.com/ |
|  flk  |  FileLink  |  https://filelink.io/ |
|  trs  |  Transfer.sh  |  https://transfer.sh/ |
|  lzs  |  Lanzous  |  https://www.lanzous.com/ |

# Credits
--------
- [EfanGSIs](github.com/erfanoadbi) for his GSI porting tool

- Me for creating these workflows & upload system
