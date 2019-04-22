# apktoool

## Decoding

Apptool 的解析选项可以使用 `d`或者`decode`，如下使用:

``` powershell
$ apktool d foo.jar
# decodes foo.jar to foo.jar.out folder

$ apktool decode foo.jar
# decodes foo.jar to foo.jar.out folder

$ apktool d bar.apk
# decodes bar.apk to bar folder

$ apktool decode bar.apk
# decodes bar.apk to bar folder

$ apktool d bar.apk -o baz
# decodes bar.apk to baz folder
```

## Building

Apptool 的编译选项可以使用 `b`或者`build`，如下使用:

``` powershell
$ apktool b foo.jar.out
# builds foo.jar.out folder into foo.jar.out/dist/foo.jar file

$ apktool build foo.jar.out
# builds foo.jar.out folder into foo.jar.out/dist/foo.jar file

$ apktool b bar
# builds bar folder into bar/dist/bar.apk file

$ apktool b .
# builds current directory into ./dist

$ apktool b bar -o new_bar.apk
# builds bar folder into new_bar.apk

$ apktool b bar.apk
# WRONG: brut.androlib.AndrolibException: brut.directory.PathNotExist: apktool.yml
# Must use folder, not apk/jar file
```

## Framework

您可能知道，Android应用程序利用Android操作系统本身的代码和资源。这些被称为框架资源，Apktool依赖于这些来正确解码和构建apks。 

每个Apktool版本都在内部包含发布时最新的AOSP框架。这允许您解决和构建大多数apks没有问题。但是，除了常规的AOSP之外，制造商还会添加自己的框架文件。要对这些制造商apks使用apktool，您必须首先安装制造商框架文件。

* 例
假设你想要`HtcContacts.apk`从HTC设备解码。如果您尝试，将收到错误消息。

``` powershell
$ apktool d HtcContacts.apk
I: Loading resource table...
I: Decoding resources...
I: Loading resource table from file: 1.apk
W: Could not decode attr value, using undecoded value instead: ns=android, name=drawable
W: Could not decode attr value, using undecoded value instead: ns=android, name=icon
Can't find framework resources for package of id: 2. You must install proper framework files, see project website for more info.
```
我们必须在解码这个apk之前获得HTC框架资源。我们`com.htc.resources.apk`从设备中取出并安装它

``` powershell
$ apktool if com.htc.resources.apk
I: Framework installed to: 2.apk
```
现在我们将再次尝试此解码。

``` powershell
$ apktool d HtcContacts.apk 
I: Loading resource table...
I: Decoding resources...
I: Loading resource table from file: /home/brutall/apktool/framework/1.apk
I: Loading resource table from file: /home/brutall/apktool/framework/2.apk
I: Copying assets and libs...
```
如你看到的。Apktool利用两者`1.apk`和`2.apk`框架文件来正确解码此应用程序。

* 寻找框架

在大多数情况下`/system/framework`，设备上的任何apk 都将是一个框架文件。在某些设备上，它们可能存在于中 `/data/system-framework`，甚至可以巧妙地隐藏在`/system/app`或中`/system/priv-app`。它们通常以**"resources"**，**"res"**或**"framework"**的命名命名。

> HTC 的资源框架名字是 `com.htc.resources.apk`, LG 的资源框架名字是 `lge-res.apk`

找到框架文件后，您可以通过它`adb pull /path/to/file`或使用文件管理器应用程序。在本地获得文件后，请注意Apktool如何安装它。安装期间命名框架的编号对应于应用程序的pkgId。这些值的范围为`1`至`30`，它安装本身作为任何APK `127`是`0x7F`这是一个内部pkgId。

* 内部框架

Apktool带有如上所述的内部框架。`$HOME/apktool/framework/1.apk`在使用期间将此文件复制到该文件。 

> 警告 Apktool不知道那里有什么版本的框架。它将假定它是最新的，因此在Apktool升级期间删除该文件

* 管理框架文件

根据所讨论的操作系统，框架存储在不同的位置。

* unix - `$HOME/.local/share/apktool`
* windows - `%UserProfile%\AppData\Local\apktool`
* osx - `$HOME/Library/apktool`
如果这些目录不可用，则默认`java.io.tmpdir`为通常`/tmp`。这是一个易失性目录，因此利用该参数`--frame-path`为框架文件选择备用文件夹是有意义的。 

由于这些位置有时是隐藏目录，因此管理这些框架成为一项挑战。一个简单的辅助函数（在v2.2.1中添加）允许你运行`apktool empty-framework-dir`以清空框架。 

> 注意 Apktool一旦安装就无法控制框架，但您可以自由管理这些文件。

* 标记框架文件

框架存储在以下命名约定中：`<id>-<tag>.apk`。它们由pkgId和可选的自定义标记标识。通常标记框架不是必需的，但如果您处理来自许多不同设备的应用程序并且它们具有不兼容的框架，您将需要一些方法来轻松地在它们之间切换。您可以通过以下方式标记框架：

``` powershell
$ apktool if com.htc.resources.apk -t hero
I: Framework installed to: /home/brutall/apktool/framework/2-hero.apk
$ apktool if com.htc.resources.apk -t desire
I: Framework installed to: /home/brutall/apktool/framework/2-desire.apk
```
然后
``` powershell
$ apktool d HtcContacts.apk -t hero
I: Loading resource table...
I: Decoding resources...
I: Loading resource table from file: /home/brutall/apktool/framework/1.apk
I: Loading resource table from file: /home/brutall/apktool/framework/2-hero.apk
I: Copying assets and libs...
$ apktool d HtcContacts.apk -t desire
I: Loading resource table...
I: Decoding resources...
I: Loading resource table from file: /home/brutall/apktool/framework/1.apk
I: Loading resource table from file: /home/brutall/apktool/framework/2-desire.apk
I: Copying assets and libs...
```
构建apk时不必选择标记 - apktool会自动使用相同的标记，就像解码时一样。



## Smali调试

> 警告 SmaliDebugging在2.0.3中已标记为已弃用，在2.1中已删除。请检查[SmaliIdea](https://github.com/JesusFreke/smali/wiki/smalidea)以获取调试器。

### 9path 图片

在[这里](https://developer.android.com/guide/topics/graphics/drawables#nine-patch) 和[那里](https://developer.android.com/studio/write/draw9patch) 存在神秘的9patch图像的文档。（先阅读这些）。这些文档虽然适用于开发人员，但缺少使用已编译的第三方应用程序的人员的信息。在那里，您可以找到有关如何创建它们的信息，但没有关于它们实际工作方式的信息。

我会在这里尝试解释一下。官方文档错过了一点，即9patch图像有两种形式：源代码和编译代码。

* 来源 - 你知道这个。您可以在应用程序的源代码中找到它，也可以在线免费获取。这些图像周围有黑色边框。
* 编译 - 在apk文件中找到的神秘形式。没有边框，9patch数据被写入一个名为的二进制块`npTc`。您无法轻松查看或修改它，但Android OS可以更快地阅读。

存在与上述两点有关的问题。

* 没有转换，您无法在两种类型之间移动9patch图像。如果您尝试从apk中解压缩9patch图像并在另一个源的源中使用它，则在构建期间会出现错误。反之亦然，您无法将源9patch图像直接带入apk。
* 现代图像处理工具无法识别9patch二进制块。因此，修改编译的图像很可能会破坏 `npTc`块，从而破坏设备上的图像。


解决此问题的唯一方法是在这两种类型之间轻松转换。编码器（将源代码编译）内置于aapt工具中，并在构建期间自动使用。这意味着我们只需要构建一个自己在apktool中的解码器，并`v1.3.0` 在解码过程中自动在所有9patch图像上运行。 

因此，如果要修改9patch图像，请不要直接执行。使用apktool解码应用程序（包括9patch图像），然后修改图像。在您重新构建应用程序时，将编译源9patch映像。


## 其他


### apktool的框架文件放在那里

* unix -

```
$HOME/.local/share/apktool
```

* mac -

```
$HOME/Library/apktool
```

* windows -

```
$HOME/AppData/Local/apktool
```

## 操作选项

### Utility

Options that can be executed at any time. 

`**-version, --version**`
>Outputs current version. (Ex: 1.5.2)

`**-v, --verbose**`
>Verbose output. Must be first parameter

`**-q, --quiet**`
>Quiet output. Must be first parameter

`**-advance, --advanced**`
>Advance usage output

### Empty Framework Dir

These are all the options when clearing the framework directory. 

`**-f, --force**`
>Force delete destination directory.

`**-p, --frame-path <DIR>**`
>The location where framework files are loaded from

### Decode

These are all the options when decoding an apk. 

`**-api, --api-level <API>**`
>The numeric api-level of the smali files to generate (defaults to targetSdkVersion)

`**-b, --no-debug-info**`
>Prevents baksmali from writing out debug info (.local, .param, .line, etc). Preferred to use if you are comparing smali from the same APK of different versions. The line numbers and debug will change among versions, which can make DIFF reports a pain.

`**-f, --force**`
>Force delete destination directory. Use when trying to decode to a folder that already exists

`**--force-manifest**` - `v2.3.1`
>Forces decode of AndroidManifest regardless of decoding of resources flag.

`**--keep-broken-res**` - `Advanced`
>If there is an error like "Invalid Config Flags Detected. Dropping Resources...". This means that APK has a different structure then Apktool can handle. This might be a newer Android version or a random APK that doesn't match standards. Running this will allow the decode, but then you have to manually fix the folders with -ERR in them.

`**-m, --match-original**` - `Used for analysis`
>Matches files closest as possible to original, but prevents rebuild.

`**--no-assets*` - `v2.3.0`
>Prevents decoding/copying of unknown asset files.

`**-o, --output <DIR>**`
>The name of the folder that apk gets written to

`**-p, --frame-path <DIR>**`
>The folder location where framework files should be stored/read from

`**-r, --no-res**`
>This will prevent the decompile of resources. This keeps the resources.arsc intact without any decode. If only editing Java (smali) then this is the recommended action for faster decompile & rebuild

`**-s, --no-src**`
>This will prevent the disassembly of the dex file(s). This keeps the apk dex file(s) and simply moves it during build. If you are only editing the resources. This is the recommended action for faster disassemble & assemble

`**-t, --frame-tag <TAG>**`
>Uses framework files tagged via <TAG>

### Rebuild

These are all the options when building an apk. 

`**-a, --aapt <FILE>**`

>Loads aapt from the specified file location, instead of relying on path. Falls back to $PATH loading, if no file found. Unless $PATH references prebuilt custom aapt. This will more than likely not work.

`**-c, --copy-original**`
>Copies original AndroidManifest.xml and META-INF folder into built apk. Scheduled for deprecation.

`**-d, --debug**`
>Adds debuggable="true" to AndroidManifest file.

`**-f, --force-all**`
>Overwrites existing files during build, reassembling the resources.arsc file and dex file(s)

`**-o, --output <FILE>**`
>The name and location of the apk that gets written

`**-p, --frame-path <DIR>**`
>The location where framework files are loaded from

`**--use-aapt2**` - `v2.3.2`
>The location where framework files are loaded from


