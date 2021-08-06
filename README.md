Port OEM ROMs to project treble using github actions and [ErfanGSIs](https://github.com/erfanoabdi/ErfanGSIs) then upload to sourceforge,github releases & other file upload websites.

# What is GSI?
Generic System Image, referred to as GSI.
Project Treble, which was added in Android 8, enables basically all phones that can be upgraded to Android 8 to have GSI flashing. That is to say, even if your manufacturer does not open to unlock BL, you can also use a special channel to unlock GSI after unlocking and play the game. Tripartite ROM (an allusion to a chrysanthemum factory).
At present, there are mainly phh GSI (built from source code) and ErfanGSI (built from ROM). This script is developed based on the latter.

# What's github action?
Github Actions is a new feature launched by Github that can automatically build workflows for our projects, such as code inspection, automated packaging, testing, release versions, and so on. Because it is based on Docker, it is used up and released (nothing is stored).
This is an independent Docker container that can run Ubuntu, Winserver and other operating systems (providing a complete environment). Provides the configuration of 2 core CPU, 7G RAM, 14G hard disk.
In other words, as long as it can be done by a computer, it can basically do it.
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
# Features
- Easy to use.
- Customizable. Chose your own custom ErfanGSIs tool, chose build type (A only or AB or both), and many more.
- Deploy ported GSI to sourceforge,github releases & other file upload websites
- Send notifications on telegram with informations about the latest build.

# Requirements
- A little understanding on how to use ErfanGSIs tool.
- A SourceForge account and project.
- A little understanding on how SourceForge works and how to use it with sftp.

# How To Use
- Fork the repo.
- Setup ErfanGSIs configuration in config.env. See [ErfanGSIs Configuration](#ErfanGSIs-Configuration).
- Setup SourceForge credentials in github secrets. See [SourceForge Configuration](#SourceForge-Configuration).
- Go to actions tab, enable workflows.
- Go to Actions tab again, click and run workflow manually.
- It should take around 10 to succesfully build and upload your builds to sourceforge.com.

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
