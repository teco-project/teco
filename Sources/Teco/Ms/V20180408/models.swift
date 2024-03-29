//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project
//
// Copyright (c) 2022-2023 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

import TecoCore

extension Ms {
    /// 渠道合作Android加固App信息
    public struct AndroidAppInfo: TCInputModel, TCOutputModel {
        /// app文件的md5算法值，需要正确传递，在线加固必输。
        /// 例如linux环境下执行算法命令md5sum ：
        /// #md5sum test.apk
        /// d40cc11e4bddd643ecdf29cde729a12b
        public let appMd5: String?

        /// app的大小，非必输。
        public let appSize: Int64?

        /// app下载链接，在线加固必输。
        public let appUrl: String?

        /// app名称，非必输
        public let appName: String?

        /// app的包名，本次操作的包名。
        /// 当Android是按年收费、免费试用加固时，在线加固和输出工具要求该字段必输，且与AndroidPlan.AppPkgName值相等。
        public let appPkgName: String?

        /// app的文件名，非必输。
        public let appFileName: String?

        /// app版本号，非必输。
        public let appVersion: String?

        /// Android app的文件类型，本次加固操作的应用类型 。
        /// Android在线加固和输出工具加固必输，其值需等于“apk”或“aab”，且与AndroidAppInfo.AppType值相等。
        public let appType: String?

        public init(appMd5: String? = nil, appSize: Int64? = nil, appUrl: String? = nil, appName: String? = nil, appPkgName: String? = nil, appFileName: String? = nil, appVersion: String? = nil, appType: String? = nil) {
            self.appMd5 = appMd5
            self.appSize = appSize
            self.appUrl = appUrl
            self.appName = appName
            self.appPkgName = appPkgName
            self.appFileName = appFileName
            self.appVersion = appVersion
            self.appType = appType
        }

        enum CodingKeys: String, CodingKey {
            case appMd5 = "AppMd5"
            case appSize = "AppSize"
            case appUrl = "AppUrl"
            case appName = "AppName"
            case appPkgName = "AppPkgName"
            case appFileName = "AppFileName"
            case appVersion = "AppVersion"
            case appType = "AppType"
        }
    }

    /// 渠道合作Android加固策略信息
    public struct AndroidPlan: TCInputModel, TCOutputModel {
        /// 非必输字段，PlanId 是指本次加固使用的配置策略Id，可通过载入上次配置接口获取。其值非0时，代表引用对应的策略。
        public let planId: Int64?

        /// 本次操作的包名。
        /// 当收费模式是android按年收费和android免费试用的在线加固和输出工具加固时，要求该字段必输，且与AndroidAppInfo.AppPkgName值相等。
        public let appPkgName: String?

        /// android app的文件类型，本次加固操作的应用类型 。
        /// android在线加固和输出工具加固必输，其值需等于“apk”或“aab”，且与AndroidAppInfo.AppType值相等。
        public let appType: String?

        /// android加固必输字段。
        /// 加固策略，json格式字符串。
        /// 字段说明（0-关闭，1-开启）：
        ///         "enable"=1 #DEX整体加固;
        ///         "antiprotect"=1 #反调试;
        ///         "antirepack"=1 #防重打包、防篡改;
        ///         "dexsig"=1       #签名校验;
        ///         "antimonitor"=1 #防模拟器运行保护;
        ///         "ptrace"=1 #防动态注入、动态调试;
        ///         "so"."enable" = 1 #文件加密;
        ///         "vmp"."enable" = 1 #VMP虚拟化保护;
        ///         "respro"."assets"."enable" = 1 #assets资源文件加密
        ///        "respro"."res"."enable" = 1 #res资源文件加密
        ///
        /// so文件加密：
        /// 支持5种架构:
        /// apk 格式: /lib/armeabi/libxxx.so,/lib/arm64-v8a/libxxx.so,/lib/armeabi-v7a/libxxx.so,/lib/x86/libxxx.so,/lib/x86_64/libxxx.so
        /// aab格式: /base/lib/armeabi/libxxx.so,/base/lib/arm64-v8a/libxxx.so,/base/lib/armeabi-v7a/libxxx.so,/base/lib/x86/libxxx.so,/base/lib/x86_64/libxxx.so
        /// 请列举 SO 库在 apk 文件解压后的完整有效路径，如:/lib/armeabi/libxxx.so；
        /// 需要加固的 SO 库需确认为自研的 SO 库，不要加固第三方 SO 库，否则会增加 crash 风险
        ///
        /// res资源文件加密注意事项：
        /// 请指定需要加密的文件全路径，如：res/layout/1.xml;
        /// res资源文件加密不能加密APP图标
        /// res目录文件，不能加密以下后缀规则的文件".wav", ".mp2", ".mp3", ".ogg", ".aac", ".mpg",".mpeg", ".mid", ".midi", ".smf", ".jet", ".rtttl", ".imy", ".xmf", ".mp4", ".m4a", ".m4v", ".3gp",".3gpp", ".3g2", ".3gpp2", ".amr", ".awb", ".wma", ".wmv"
        ///
        /// assets资源文件加密注意事项:
        /// 请指定需要加密的文件全路径，如：assets/main.js；可以完整路径，也可以相对路径。
        /// 如果有通配符需要完整路径 ":all"或者"*"代表所有文件
        /// assets资源文件加密不能加密APP图标
        /// assets目录文件，不能加密以下后缀规则的文件".wav", ".mp2", ".mp3", ".ogg", ".aac", ".mpg",".mpeg", ".mid", ".midi", ".smf", ".jet", ".rtttl", ".imy", ".xmf", ".mp4", ".m4a", ".m4v", ".3gp",".3gpp", ".3g2", ".3gpp2", ".amr", ".awb", ".wma", ".wmv"
        ///
        /// apk[dex+so+vmp+res+assets]加固参数示例：
        /// ‘{
        ///     "dex": {
        ///         "enable": 1,
        ///         "antiprotect": 1,
        ///         "antirepack": 1,
        ///         "dexsig": 1,
        ///         "antimonitor": 1,
        ///         "ptrace": 1
        ///     },
        ///     "so": {
        ///         "enable": 1,
        ///         "ver": "1.3.3",
        ///         "file": [
        ///             "/lib/armeabi/libtest.so"
        ///         ]
        ///     },
        ///     "vmp": {
        ///         "enable": 1,
        ///         "ndkpath": "/xxx/android-ndk-r10e",
        ///         "profile": "/xxx/vmpprofile.txt",
        ///         "mapping": "/xxx/mapping.txt"
        ///     },
        ///     "respro": {
        ///         "assets": {
        ///             "enable": 1,
        ///             "file": [
        ///                 "assets/1.js",
        ///                 "assets/2.jpg"
        ///             ]
        ///         },
        ///         "res": {
        ///             "enable": 1,
        ///             "file": [
        ///                 "res/layout/1.xml",
        ///                 "res/layout/2.xml"
        ///             ]
        ///         }
        ///     }
        /// }’
        ///
        /// aab加固方案一
        /// [dex+res+assets]加固json字符串：
        /// ‘{
        ///     "dex": {
        ///         "enable": 1,
        ///         "antiprotect": 1,
        ///         "antimonitor": 1
        ///     },
        ///     "respro": {
        ///         "assets": {
        ///             "enable": 1,
        ///             "file": [
        ///                 "assets/1.js",
        ///                 "assets/2.jpg"
        ///             ]
        ///         },
        ///         "res": {
        ///             "enable": 1,
        ///             "file": [
        ///                 "res/layout/1.xml",
        ///                 "res/layout/2.xml"
        ///             ]
        ///         }
        ///     }
        /// }’
        ///
        /// aab加固方案二
        /// 单独vmp加固：
        /// ‘{
        ///     "vmp": {
        ///         "enable": 1,
        ///         "ndkpath": "/xxx/android-ndk-r10e",
        ///         "profile": "/xxx/vmpprofile.txt",
        ///         "mapping": "/xxx/mapping.txt",
        ///         "antiprotect": 1,
        ///         "antimonitor": 1
        ///     }
        /// }’
        public let encryptParam: String?

        public init(planId: Int64? = nil, appPkgName: String? = nil, appType: String? = nil, encryptParam: String? = nil) {
            self.planId = planId
            self.appPkgName = appPkgName
            self.appType = appType
            self.encryptParam = encryptParam
        }

        enum CodingKeys: String, CodingKey {
            case planId = "PlanId"
            case appPkgName = "AppPkgName"
            case appType = "AppType"
            case encryptParam = "EncryptParam"
        }
    }

    /// Android加固结果
    public struct AndroidResult: TCOutputModel {
        /// 结果Id,用于查询加固结果
        public let resultId: String

        /// 与当前任务关联的订单id
        public let orderId: String

        /// 与当前任务关联的资源Id
        public let resourceId: String

        /// 本次任务发起者
        public let opUin: Int64

        /// 应用类型：android-apk; android-aab;
        public let appType: String

        /// 应用包名
        public let appPkgName: String

        /// 后台资源绑定的包名
        public let bindAppPkgName: String

        /// 加固结果
        public let encryptState: Int64

        /// 加固结果描述
        public let encryptStateDesc: String

        /// 加固失败错误码
        public let encryptErrCode: Int64

        /// 加固失败原因
        public let encryptErrDesc: String

        /// 加固失败解决方案
        public let encryptErrRef: String

        /// 任务创建时间
        public let creatTime: String

        /// 任务开始处理时间
        public let startTime: String

        /// 任务处理结束时间
        public let endTime: String

        /// 加固耗时（秒单位）
        public let costTime: Int64

        /// 在线加固-android应用原包下载链接
        public let appUrl: String

        /// 在线加固-android应用文件MD5算法值
        public let appMd5: String

        /// 在线加固-android应用应用名称
        public let appName: String

        /// 在线加固-android应用版本；
        public let appVersion: String

        /// 在线加固-android应用大小
        public let appSize: Int64

        /// 在线加固-android加固-腾讯云应用加固工具版本
        public let onlineToolVersion: String

        /// 在线加固-android加固，加固成功后文件md5算法值
        public let encryptAppMd5: String

        /// 在线加固-android加固，加固成功后应用大小
        public let encryptAppSize: Int64

        /// 在线加固-android加固，加固包下载链接。
        public let encryptPkgUrl: String

        /// 输出工具-android加固-腾讯云输出工具版本
        public let outputToolVersion: String

        /// 输出工具-android加固-工具大小
        public let outputToolSize: Int64

        /// 输出工具-android加固-工具输出时间
        public let toolOutputTime: String

        /// 输出工具-android加固-工具到期时间
        public let toolExpireTime: String

        /// 输出工具-android加固-输出工具下载链接
        public let outputToolUrl: String

        /// 本次android加固策略信息
        public let androidPlan: AndroidPlan

        enum CodingKeys: String, CodingKey {
            case resultId = "ResultId"
            case orderId = "OrderId"
            case resourceId = "ResourceId"
            case opUin = "OpUin"
            case appType = "AppType"
            case appPkgName = "AppPkgName"
            case bindAppPkgName = "BindAppPkgName"
            case encryptState = "EncryptState"
            case encryptStateDesc = "EncryptStateDesc"
            case encryptErrCode = "EncryptErrCode"
            case encryptErrDesc = "EncryptErrDesc"
            case encryptErrRef = "EncryptErrRef"
            case creatTime = "CreatTime"
            case startTime = "StartTime"
            case endTime = "EndTime"
            case costTime = "CostTime"
            case appUrl = "AppUrl"
            case appMd5 = "AppMd5"
            case appName = "AppName"
            case appVersion = "AppVersion"
            case appSize = "AppSize"
            case onlineToolVersion = "OnlineToolVersion"
            case encryptAppMd5 = "EncryptAppMd5"
            case encryptAppSize = "EncryptAppSize"
            case encryptPkgUrl = "EncryptPkgUrl"
            case outputToolVersion = "OutputToolVersion"
            case outputToolSize = "OutputToolSize"
            case toolOutputTime = "ToolOutputTime"
            case toolExpireTime = "ToolExpireTime"
            case outputToolUrl = "OutputToolUrl"
            case androidPlan = "AndroidPlan"
        }
    }

    /// app的详细基础信息
    public struct AppDetailInfo: TCOutputModel {
        /// app的名称
        public let appName: String

        /// app的包名
        public let appPkgName: String

        /// app的版本号
        public let appVersion: String

        /// app的大小
        public let appSize: UInt64

        /// app的md5
        public let appMd5: String

        /// app的图标url
        public let appIconUrl: String

        /// app的文件名称
        public let fileName: String

        enum CodingKeys: String, CodingKey {
            case appName = "AppName"
            case appPkgName = "AppPkgName"
            case appVersion = "AppVersion"
            case appSize = "AppSize"
            case appMd5 = "AppMd5"
            case appIconUrl = "AppIconUrl"
            case fileName = "FileName"
        }
    }

    /// 提交的app基本信息
    public struct AppInfo: TCInputModel {
        /// app的url，必须保证不用权限校验就可以下载
        public let appUrl: String

        /// app的md5，需要正确传递
        public let appMd5: String

        /// app的大小
        public let appSize: UInt64?

        /// app的文件名
        public let fileName: String?

        /// app的包名，需要正确的传递此字段
        public let appPkgName: String?

        /// app的版本号
        public let appVersion: String?

        /// app的图标url
        public let appIconUrl: String?

        /// app的名称
        public let appName: String?

        public init(appUrl: String, appMd5: String, appSize: UInt64? = nil, fileName: String? = nil, appPkgName: String? = nil, appVersion: String? = nil, appIconUrl: String? = nil, appName: String? = nil) {
            self.appUrl = appUrl
            self.appMd5 = appMd5
            self.appSize = appSize
            self.fileName = fileName
            self.appPkgName = appPkgName
            self.appVersion = appVersion
            self.appIconUrl = appIconUrl
            self.appName = appName
        }

        enum CodingKeys: String, CodingKey {
            case appUrl = "AppUrl"
            case appMd5 = "AppMd5"
            case appSize = "AppSize"
            case fileName = "FileName"
            case appPkgName = "AppPkgName"
            case appVersion = "AppVersion"
            case appIconUrl = "AppIconUrl"
            case appName = "AppName"
        }
    }

    /// 加固后app的信息，包含基本信息和加固信息
    public struct AppSetInfo: TCOutputModel {
        /// 任务唯一标识
        public let itemId: String

        /// app的名称
        public let appName: String

        /// app的包名
        public let appPkgName: String

        /// app的版本号
        public let appVersion: String

        /// app的md5
        public let appMd5: String

        /// app的大小
        public let appSize: UInt64

        /// 加固服务版本
        public let serviceEdition: String

        /// 加固结果返回码
        public let shieldCode: UInt64

        /// 加固后的APP下载地址
        public let appUrl: String?

        /// 任务状态: 1-已完成,2-处理中,3-处理出错,4-处理超时
        public let taskStatus: UInt64

        /// 请求的客户端ip
        public let clientIp: String

        /// 提交加固时间
        public let taskTime: UInt64

        /// app的图标url
        public let appIconUrl: String

        /// 加固后app的md5
        public let shieldMd5: String

        /// 加固后app的大小
        public let shieldSize: UInt64

        enum CodingKeys: String, CodingKey {
            case itemId = "ItemId"
            case appName = "AppName"
            case appPkgName = "AppPkgName"
            case appVersion = "AppVersion"
            case appMd5 = "AppMd5"
            case appSize = "AppSize"
            case serviceEdition = "ServiceEdition"
            case shieldCode = "ShieldCode"
            case appUrl = "AppUrl"
            case taskStatus = "TaskStatus"
            case clientIp = "ClientIp"
            case taskTime = "TaskTime"
            case appIconUrl = "AppIconUrl"
            case shieldMd5 = "ShieldMd5"
            case shieldSize = "ShieldSize"
        }
    }

    /// 小程序加固信息
    public struct AppletInfo: TCInputModel, TCOutputModel {
        /// 客户JS包
        public let appletJsUrl: String?

        /// 小程序加固等级配置
        /// 1 - 开启代码混淆、代码压缩、代码反调试保护。 2 - 开启字符串编码和代码变换，代码膨胀，随机插入冗余代码，开启代码控制流平坦化，保证业务逻辑正常前提下，扁平化代码逻辑分支，破坏代码简单的线性结构。 3 - 开启代码加密，对字符串、函数、变量、属性、类、数组等结构进行加密保护，更多得代码控制流平坦化，扁平化逻辑分支。
        public let appletLevel: Int64?

        /// 本次加固输出产物名称，如”test.zip“,非空必须是 ”.zip“结尾
        public let name: String?

        public init(appletJsUrl: String? = nil, appletLevel: Int64? = nil, name: String? = nil) {
            self.appletJsUrl = appletJsUrl
            self.appletLevel = appletLevel
            self.name = name
        }

        enum CodingKeys: String, CodingKey {
            case appletJsUrl = "AppletJsUrl"
            case appletLevel = "AppletLevel"
            case name = "Name"
        }
    }

    /// 小程序加固配置
    public struct AppletPlan: TCInputModel, TCOutputModel {
        /// 策略Id
        public let planId: Int64?

        /// 1 - 开启代码混淆、代码压缩、代码反调试保护。
        /// 2 - 开启字符串编码和代码变换，代码膨胀，随机插入冗余代码，开启代码控制流平坦化，保证业务逻辑正常前提下，扁平化代码逻辑分支，破坏代码简单的线性结构。
        /// 3 - 开启代码加密，对字符串、函数、变量、属性、类、数组等结构进行加密保护，更多得代码控制流平坦化，扁平化逻辑分支。
        public let appletLevel: Int64?

        public init(planId: Int64? = nil, appletLevel: Int64? = nil) {
            self.planId = planId
            self.appletLevel = appletLevel
        }

        enum CodingKeys: String, CodingKey {
            case planId = "PlanId"
            case appletLevel = "AppletLevel"
        }
    }

    /// 渠道合作加固小程序加固结果
    public struct AppletResult: TCOutputModel {
        /// 加固任务结果id
        public let resultId: String?

        /// 资源id
        public let resourceId: String?

        /// 订单id
        public let orderId: String?

        /// 操作账号
        public let opUin: Int64?

        /// 加固结果
        public let encryptState: Int64?

        /// 加固结果描述
        public let encryptStateDesc: String?

        /// 失败错误码
        public let encryptErrCode: Int64?

        /// 失败原因
        public let encryptErrDesc: String?

        /// 解决方案
        public let encryptErrRef: String?

        /// 任务创建时间
        public let creatTime: String?

        /// 任务开始处理时间
        public let startTime: String?

        /// 任务处理结束时间
        public let endTime: String?

        /// 加固耗时（秒单位）
        public let costTime: Int64?

        /// 在线加固成功下载包
        public let encryptPkgUrl: String?

        /// 本次加固配置
        public let appletInfo: AppletInfo?

        enum CodingKeys: String, CodingKey {
            case resultId = "ResultId"
            case resourceId = "ResourceId"
            case orderId = "OrderId"
            case opUin = "OpUin"
            case encryptState = "EncryptState"
            case encryptStateDesc = "EncryptStateDesc"
            case encryptErrCode = "EncryptErrCode"
            case encryptErrDesc = "EncryptErrDesc"
            case encryptErrRef = "EncryptErrRef"
            case creatTime = "CreatTime"
            case startTime = "StartTime"
            case endTime = "EndTime"
            case costTime = "CostTime"
            case encryptPkgUrl = "EncryptPkgUrl"
            case appletInfo = "AppletInfo"
        }
    }

    /// 用户绑定app的基本信息
    public struct BindInfo: TCOutputModel {
        /// app的icon的url
        public let appIconUrl: String

        /// app的名称
        public let appName: String

        /// app的包名
        public let appPkgName: String

        enum CodingKeys: String, CodingKey {
            case appIconUrl = "AppIconUrl"
            case appName = "AppName"
            case appPkgName = "AppPkgName"
        }
    }

    /// 渠道合作加固结果信息
    public struct EncryptResults: TCOutputModel {
        /// 平台类型枚举值  1-android加固   2-ios源码混淆  3-sdk加固  4-applet小程序加固
        public let platformType: Int64

        /// 平台类型描述  1-android加固   2-ios源码混淆  3-sdk加固  4-applet小程序加固
        public let platformDesc: String

        /// 订单采购类型枚举值， 1-免费试用 2-按年收费 3-按次收费
        public let orderType: Int64

        /// 订单采购类型 描述：1-免费试用 2-按年收费 3-按次收费
        public let orderTypeDesc: String

        /// 枚举值：1-在线加固 或 2-输出工具加固
        public let encryptOpType: Int64

        /// 描述：1-在线加固 或 2-输出工具加固
        public let encryptOpTypeDesc: String

        /// 与当前任务关联的资源Id
        public let resourceId: String

        /// 与当前任务关联的订单Id
        public let orderId: String

        /// 对应PlatformType平台类型值   1-android加固结果
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let androidResult: AndroidResult?

        /// 对应PlatformType平台类型值   2-ios源码混淆加固结果
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let iosResult: IOSResult?

        /// 对应PlatformType平台类型值   3-sdk加固结果
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let sdkResult: SDKResult?

        /// 对应PlatformType平台类型值   4-applet小程序加固结果
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let appletResult: AppletResult?

        enum CodingKeys: String, CodingKey {
            case platformType = "PlatformType"
            case platformDesc = "PlatformDesc"
            case orderType = "OrderType"
            case orderTypeDesc = "OrderTypeDesc"
            case encryptOpType = "EncryptOpType"
            case encryptOpTypeDesc = "EncryptOpTypeDesc"
            case resourceId = "ResourceId"
            case orderId = "OrderId"
            case androidResult = "AndroidResult"
            case iosResult = "IOSResult"
            case sdkResult = "SDKResult"
            case appletResult = "AppletResult"
        }
    }

    /// 筛选数据结构
    public struct Filter: TCInputModel {
        /// 需要过滤的字段
        public let name: String

        /// 需要过滤字段的值
        public let value: String?

        public init(name: String, value: String? = nil) {
            self.name = name
            self.value = value
        }

        enum CodingKeys: String, CodingKey {
            case name = "Name"
            case value = "Value"
        }
    }

    /// 渠道合作IOS源码混淆配置
    public struct IOSPlan: TCInputModel, TCOutputModel {
        /// 策略id
        public let planId: Int64?

        public init(planId: Int64? = nil) {
            self.planId = planId
        }

        enum CodingKeys: String, CodingKey {
            case planId = "PlanId"
        }
    }

    /// 渠道合作ios源码混淆加固结果
    public struct IOSResult: TCOutputModel {
        /// 加固任务结果Id
        public let resultId: String?

        enum CodingKeys: String, CodingKey {
            case resultId = "ResultId"
        }
    }

    /// APK检测服务：非广告插件结果列表(SDK、风险插件等)
    public struct OptPluginListItem: TCOutputModel {
        /// 非广告类型
        public let pluginType: String

        /// 非广告插件名称
        public let pluginName: String

        /// 非广告插件描述
        public let pluginDesc: String

        enum CodingKeys: String, CodingKey {
            case pluginType = "PluginType"
            case pluginName = "PluginName"
            case pluginDesc = "PluginDesc"
        }
    }

    /// 渠道合作加固订单资源信息
    public struct Orders: TCOutputModel {
        /// 订单号
        public let orderId: String

        /// 平台类型整型值
        public let platformType: Int64

        /// 平台类型描述：  1.android加固   2.ios源码混淆  3.sdk加固  4.applet小程序加固
        public let platformTypeDesc: String

        /// 订单采购类型整型值
        public let orderType: Int64

        /// 订单采购类型描述： 1-免费试用 2-按年收费 3-按次收费
        public let orderTypeDesc: String

        /// android包年收费加固的包名
        public let appPkgName: String

        /// 资源号
        public let resourceId: String

        /// 资源状态整型值
        public let resourceStatus: Int64

        /// 资源状态描述
        /// 0-未生效、1-生效中、2-已失效。
        public let resourceStatusDesc: String

        /// 订单类型为免费试用时的免费加固次数。
        public let testTimes: Int64

        /// 资源生效时间
        public let validTime: String

        /// 资源过期时间
        public let expireTime: String

        /// 资源创建时间
        public let createTime: String

        /// 订单审批人
        public let approver: String

        /// 订单审批状态整型值
        public let approvalStatus: Int64

        /// 订单审批状态整型值描述：0-未审批、1-审批通过、2-驳回。
        public let approvalStatusDesc: String

        /// 订单审批时间
        public let approvalTime: String

        /// 按次收费加固资源，其关联的总任务数
        public let timesTaskTotalCount: Int64

        /// 按次收费加固资源，其关联的任务成功数
        public let timesTaskSuccessCount: Int64

        /// 按次收费加固资源，其关联的任务失败数
        public let timesTaskFailCount: Int64

        enum CodingKeys: String, CodingKey {
            case orderId = "OrderId"
            case platformType = "PlatformType"
            case platformTypeDesc = "PlatformTypeDesc"
            case orderType = "OrderType"
            case orderTypeDesc = "OrderTypeDesc"
            case appPkgName = "AppPkgName"
            case resourceId = "ResourceId"
            case resourceStatus = "ResourceStatus"
            case resourceStatusDesc = "ResourceStatusDesc"
            case testTimes = "TestTimes"
            case validTime = "ValidTime"
            case expireTime = "ExpireTime"
            case createTime = "CreateTime"
            case approver = "Approver"
            case approvalStatus = "ApprovalStatus"
            case approvalStatusDesc = "ApprovalStatusDesc"
            case approvalTime = "ApprovalTime"
            case timesTaskTotalCount = "TimesTaskTotalCount"
            case timesTaskSuccessCount = "TimesTaskSuccessCount"
            case timesTaskFailCount = "TimesTaskFailCount"
        }
    }

    /// 加固策略具体信息
    public struct PlanDetailInfo: TCOutputModel {
        /// 默认策略，1为默认，0为非默认
        public let isDefault: UInt64

        /// 策略id
        public let planId: UInt64

        /// 策略名称
        public let planName: String

        /// 策略信息
        public let planInfo: PlanInfo

        enum CodingKeys: String, CodingKey {
            case isDefault = "IsDefault"
            case planId = "PlanId"
            case planName = "PlanName"
            case planInfo = "PlanInfo"
        }
    }

    /// 加固策略信息
    public struct PlanInfo: TCOutputModel {
        /// apk大小优化，0关闭，1开启
        public let apkSizeOpt: UInt64

        /// Dex加固，0关闭，1开启
        public let dex: UInt64

        /// So加固，0关闭，1开启
        public let so: UInt64

        /// 数据收集，0关闭，1开启
        public let bugly: UInt64

        /// 防止重打包，0关闭，1开启
        public let antiRepack: UInt64

        /// Dex分离，0关闭，1开启
        public let seperateDex: UInt64

        /// 内存保护，0关闭，1开启
        public let db: UInt64

        /// Dex签名校验，0关闭，1开启
        public let dexSig: UInt64

        /// So文件信息
        public let soInfo: SoInfo

        /// vmp，0关闭，1开启
        public let antiVMP: UInt64

        /// 保护so的强度，
        public let soType: [String]

        /// 防日志泄漏，0关闭，1开启
        public let antiLogLeak: UInt64

        /// root检测，0关闭，1开启
        public let antiQemuRoot: UInt64

        /// 资源防篡改，0关闭，1开启
        public let antiAssets: UInt64

        /// 防止截屏，0关闭，1开启
        public let antiScreenshot: UInt64

        /// SSL证书防窃取，0关闭，1开启
        public let antiSSL: UInt64

        enum CodingKeys: String, CodingKey {
            case apkSizeOpt = "ApkSizeOpt"
            case dex = "Dex"
            case so = "So"
            case bugly = "Bugly"
            case antiRepack = "AntiRepack"
            case seperateDex = "SeperateDex"
            case db = "Db"
            case dexSig = "DexSig"
            case soInfo = "SoInfo"
            case antiVMP = "AntiVMP"
            case soType = "SoType"
            case antiLogLeak = "AntiLogLeak"
            case antiQemuRoot = "AntiQemuRoot"
            case antiAssets = "AntiAssets"
            case antiScreenshot = "AntiScreenshot"
            case antiSSL = "AntiSSL"
        }
    }

    /// APK检测服务：广告插件结果结构体
    public struct PluginListItem: TCOutputModel {
        /// 数字类型，分别为 1-通知栏广告，2-积分墙广告，3-banner广告，4- 悬浮窗图标广告，5-精品推荐列表广告, 6-插播广告
        public let pluginType: String

        /// 广告插件名称
        public let pluginName: String

        /// 广告插件描述
        public let pluginDesc: String

        enum CodingKeys: String, CodingKey {
            case pluginType = "PluginType"
            case pluginName = "PluginName"
            case pluginDesc = "PluginDesc"
        }
    }

    /// 拉取某个用户的所有资源信息
    public struct ResourceInfo: TCOutputModel {
        /// 用户购买的资源id，全局唯一
        public let resourceId: String

        /// 资源的pid，MTP加固-12767，应用加固-12750 MTP反作弊-12766 源代码混淆-12736
        public let pid: UInt64

        /// 购买时间戳
        public let createTime: UInt64

        /// 到期时间戳
        public let expireTime: UInt64

        /// 0-未绑定，1-已绑定
        public let isBind: Int64

        /// 用户绑定app的基本信息
        public let bindInfo: BindInfo

        /// 资源名称，如应用加固，漏洞扫描
        public let resourceName: String

        enum CodingKeys: String, CodingKey {
            case resourceId = "ResourceId"
            case pid = "Pid"
            case createTime = "CreateTime"
            case expireTime = "ExpireTime"
            case isBind = "IsBind"
            case bindInfo = "BindInfo"
            case resourceName = "ResourceName"
        }
    }

    /// 资源服务信息
    public struct ResourceServiceInfo: TCOutputModel {
        /// 创建时间戳
        public let createTime: UInt64

        /// 到期时间戳
        public let expireTime: UInt64

        /// 资源名称，如应用加固，源码混淆
        public let resourceName: String

        enum CodingKeys: String, CodingKey {
            case createTime = "CreateTime"
            case expireTime = "ExpireTime"
            case resourceName = "ResourceName"
        }
    }

    /// APK检测服务参数返回具体信息
    public struct ResultListItem: TCOutputModel {
        /// banner广告软件标记，分别为-1-不确定，0-否，1-是
        public let banner: String

        /// 精品推荐列表广告标记，分别为-1-不确定，0-否，1-是
        public let boutiqueRecommand: String

        /// 悬浮窗图标广告标记,分别为-1-不确定，0-否，1-是
        public let floatWindows: String

        /// 积分墙广告软件标记，分别为 -1 -不确定，0-否，1-是
        public let integralWall: String

        /// 安装包的md5
        public let md5: String

        /// 通知栏广告软件标记，分别为-1-不确定，0-否，1-是
        public let notifyBar: String

        /// 1表示官方，0表示非官方
        public let official: String

        /// 广告插件结果列表
        public let pluginList: [PluginListItem]

        /// 非广告插件结果列表(SDK、风险插件等)
        public let optPluginList: [OptPluginListItem]

        /// 数字类型，分别为0-未知， 1-安全软件，2-风险软件，3-病毒软件
        public let safeType: String

        /// Session id，合作方可以用来区分回调数据，需要唯一。
        public let sid: String

        /// 安装包名称
        public let softName: String

        /// 插播广告软件标记，取值：-1 不确定，0否， 1 是
        public let spot: String

        /// 病毒名称，utf8编码
        public let virusName: String

        /// 病毒描述，utf8编码
        public let virusDesc: String

        /// 二次打包状态：0-表示默认；1-表示二次
        public let repackageStatus: String

        /// 应用错误码：0、1-表示正常；
        ///
        /// 2表示System Error(engine analysis error).
        ///
        /// 3表示App analysis error, please confirm it.
        ///
        /// 4表示App have not cert, please confirm it.
        ///
        /// 5表示App size is zero, please confirm it.
        ///
        /// 6表示App have not package name, please confirm it.
        ///
        /// 7表示App build time is empty, please confirm it.
        ///
        /// 8表示App have not valid cert, please confirm it.
        ///
        /// 99表示Other error.
        ///
        /// 1000表示App downloadlink download fail, please confirm it.
        ///
        /// 1001表示APP md5 different between real md5, please confirm it.
        ///
        /// 1002表示App md5 uncollect, please offer downloadlink.
        public let errno: String

        /// 对应errno的错误信息描述
        public let errMsg: String

        enum CodingKeys: String, CodingKey {
            case banner = "Banner"
            case boutiqueRecommand = "BoutiqueRecommand"
            case floatWindows = "FloatWindows"
            case integralWall = "IntegralWall"
            case md5 = "Md5"
            case notifyBar = "NotifyBar"
            case official = "Official"
            case pluginList = "PluginList"
            case optPluginList = "OptPluginList"
            case safeType = "SafeType"
            case sid = "Sid"
            case softName = "SoftName"
            case spot = "Spot"
            case virusName = "VirusName"
            case virusDesc = "VirusDesc"
            case repackageStatus = "RepackageStatus"
            case errno = "Errno"
            case errMsg = "ErrMsg"
        }
    }

    /// 渠道合作sdk加固策略配置
    public struct SDKPlan: TCInputModel, TCOutputModel {
        /// 策略id
        public let planId: Int64?

        public init(planId: Int64? = nil) {
            self.planId = planId
        }

        enum CodingKeys: String, CodingKey {
            case planId = "PlanId"
        }
    }

    /// 渠道合作加固sdk加固结果
    public struct SDKResult: TCOutputModel {
        /// 加固任务结果Id
        public let resultId: String?

        enum CodingKeys: String, CodingKey {
            case resultId = "ResultId"
        }
    }

    /// 提交app加固的服务信息
    public struct ServiceInfo: TCInputModel {
        /// 服务版本，基础版basic，专业版professional，企业版enterprise。
        public let serviceEdition: String

        /// 任务处理完成后的反向通知回调地址，如果不需要通知请传递空字符串。通知为POST请求，post包体数据示例{"Response":{"ItemId":"4cdad8fb86f036b06bccb3f58971c306","ShieldCode":0,"ShieldMd5":"78701576793c4a5f04e1c9660de0aa0b","ShieldSize":11997354,"TaskStatus":1,"TaskTime":1539148141}}，调用方需要返回如下信息，{"Result":"ok","Reason":"xxxxx"}，如果Result字段值不等于ok会继续回调。
        public let callbackUrl: String

        /// 提交来源 YYB-应用宝 RDM-rdm MC-控制台 MAC_TOOL-mac工具 WIN_TOOL-window工具。
        public let submitSource: String

        /// 加固策略编号，如果不传则使用系统默认加固策略。如果指定的plan不存在会返回错误。
        public let planId: UInt64?

        public init(serviceEdition: String, callbackUrl: String, submitSource: String, planId: UInt64? = nil) {
            self.serviceEdition = serviceEdition
            self.callbackUrl = callbackUrl
            self.submitSource = submitSource
            self.planId = planId
        }

        enum CodingKeys: String, CodingKey {
            case serviceEdition = "ServiceEdition"
            case callbackUrl = "CallbackUrl"
            case submitSource = "SubmitSource"
            case planId = "PlanId"
        }
    }

    /// 加固后app的信息
    public struct ShieldInfo: TCOutputModel {
        /// 加固结果的返回码
        public let shieldCode: UInt64

        /// 加固后app的大小
        public let shieldSize: UInt64?

        /// 加固后app的md5
        public let shieldMd5: String?

        /// 加固后的APP下载地址，该地址有效期为20分钟，请及时下载
        public let appUrl: String?

        /// 加固的提交时间
        public let taskTime: UInt64

        /// 任务唯一标识
        public let itemId: String

        /// 加固版本，basic基础版，professional专业版，enterprise企业版
        public let serviceEdition: String

        enum CodingKeys: String, CodingKey {
            case shieldCode = "ShieldCode"
            case shieldSize = "ShieldSize"
            case shieldMd5 = "ShieldMd5"
            case appUrl = "AppUrl"
            case taskTime = "TaskTime"
            case itemId = "ItemId"
            case serviceEdition = "ServiceEdition"
        }
    }

    /// 加固策略信息
    public struct ShieldPlanInfo: TCOutputModel {
        /// 加固策略数量
        public let totalCount: UInt64

        /// 加固策略具体信息数组
        public let planSet: [PlanDetailInfo]

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case planSet = "PlanSet"
        }
    }

    /// so加固信息
    public struct SoInfo: TCOutputModel {
        /// so文件列表
        public let soFileNames: [String]

        enum CodingKeys: String, CodingKey {
            case soFileNames = "SoFileNames"
        }
    }
}
