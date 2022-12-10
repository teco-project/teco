//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Trdp {
    /// 账号信息
    public struct AccountInfo: TCInputModel {
        /// 用户账号类型：
        /// 1-手机号；
        /// 2-IMEI；
        /// 3-IDFA；
        /// 100-SSID类型
        public let accountType: Int64
        
        /// 通用账号信息，当AccountType为1、2、3、100时必填
        public let universalAccount: UniversalAccountInfo
        
        public init (accountType: Int64, universalAccount: UniversalAccountInfo) {
            self.accountType = accountType
            self.universalAccount = universalAccount
        }
        
        enum CodingKeys: String, CodingKey {
            case accountType = "AccountType"
            case universalAccount = "UniversalAccount"
        }
    }
    
    /// 设备详情	
    public struct DeviceDetailInfo: TCInputModel {
        /// mac地址或唯一设备标识
        public let macAddress: String?
        
        /// 手机型号
        public let model: String?
        
        /// 操作系统(unknown，android，ios，windows)
        public let osSystem: String?
        
        /// 操作系统版本
        public let osSystemVersion: String?
        
        /// 竞价底价
        public let bidFloor: Int64?
        
        /// 设备版本
        public let deviceVersion: String?
        
        /// 设备制造商
        public let maker: String?
        
        /// 设备类型（PHONE,TABLET）
        public let deviceType: String?
        
        /// 运营商；-1: 获取失败，0: 其他，1: 移动，2: 联通，3: 电信，4: 铁通
        public let carrier: String?
        
        /// 入网方式(wifi,5g,4g,3g,2g)
        public let accessMode: String?
        
        /// 手机芯片信息
        public let phoneChipInfo: String?
        
        /// CPU 型号
        public let cpuModel: String?
        
        /// CPU 核数
        public let cpuCore: String?
        
        /// 内存容量，单位转换为 GB
        public let memory: String?
        
        /// 系统语言
        public let language: String?
        
        /// 手机音量
        public let volume: String?
        
        /// 电池电量
        public let batteryPower: String?
        
        /// 屏幕分辨率宽，保留整数
        public let resolutionWidth: Int64?
        
        /// 屏幕分辨率高，保留整数
        public let resolutionHeight: Int64?
        
        /// 浏览器类型
        public let ua: String?
        
        /// 客户端应用
        public let app: String?
        
        /// 应用包名
        public let appPackageName: String?
        
        /// 设备序列号
        /// Android设备
        public let serialNumber: String?
        
        /// netOperator MCC+MNC
        /// Android设备
        public let mobileCountryAndNetworkCode: String?
        
        /// 设备品牌 “华为”“oppo”“小米”
        /// Android设备
        public let vendorId: String?
        
        /// Android API等级
        /// Android设备
        public let androidApiLevel: String?
        
        /// 屏幕亮度
        /// Android设备
        public let brightness: String?
        
        /// 蓝牙地址
        /// Android设备
        public let bluetoothAddress: String?
        
        /// 基带版本
        /// Android设备
        public let baseBandVersion: String?
        
        /// kernel 版本
        /// Android设备
        public let kernelVersion: String?
        
        /// 存储容量，单位转换为 GB
        /// Android设备
        public let storage: String?
        
        /// 软件包名
        /// Android设备
        public let packageName: String?
        
        /// app 版本号
        /// Android设备
        public let appVersion: String?
        
        /// app 显示名称
        /// Android设备
        public let appName: String?
        
        /// 是否 debug；0 为正常模式，1 为 debug 模式；其他值无效
        /// Android设备
        public let isDebug: String?
        
        /// 是否越狱；0 为正常，1 为越狱；其他值无效
        /// Android设备
        public let isRoot: String?
        
        /// 是否启动代理；0 为未开启，1 为开启；其他值无效
        /// Android设备
        public let isProxy: String?
        
        /// 是否模拟器；0 为未开启，1 为开启；其他值无效
        /// Android设备
        public let isEmulator: String?
        
        /// 充电状态；1-不在充电，2-USB充电，3-电源充电
        /// Android设备
        public let chargeStatus: String?
        
        /// 网络类型：2G/3G/4G/5G/Wi-Fi/WWAN/other
        /// Android设备
        public let networkType: String?
        
        /// Wi-Fi MAC地址
        /// Android设备
        public let wifiMac: String?
        
        /// 设备名称 "xxx 的 iPhone"，"xxx's IPhone" 等等
        /// IOS设备
        public let deviceName: String?
        
        /// 开机时间
        /// IOS设备
        public let startupTime: String?
        
        /// 所在经度
        public let lon: String?
        
        /// 所在纬度
        public let lat: String?
        
        public init (macAddress: String?, model: String?, osSystem: String?, osSystemVersion: String?, bidFloor: Int64?, deviceVersion: String?, maker: String?, deviceType: String?, carrier: String?, accessMode: String?, phoneChipInfo: String?, cpuModel: String?, cpuCore: String?, memory: String?, language: String?, volume: String?, batteryPower: String?, resolutionWidth: Int64?, resolutionHeight: Int64?, ua: String?, app: String?, appPackageName: String?, serialNumber: String?, mobileCountryAndNetworkCode: String?, vendorId: String?, androidApiLevel: String?, brightness: String?, bluetoothAddress: String?, baseBandVersion: String?, kernelVersion: String?, storage: String?, packageName: String?, appVersion: String?, appName: String?, isDebug: String?, isRoot: String?, isProxy: String?, isEmulator: String?, chargeStatus: String?, networkType: String?, wifiMac: String?, deviceName: String?, startupTime: String?, lon: String?, lat: String?) {
            self.macAddress = macAddress
            self.model = model
            self.osSystem = osSystem
            self.osSystemVersion = osSystemVersion
            self.bidFloor = bidFloor
            self.deviceVersion = deviceVersion
            self.maker = maker
            self.deviceType = deviceType
            self.carrier = carrier
            self.accessMode = accessMode
            self.phoneChipInfo = phoneChipInfo
            self.cpuModel = cpuModel
            self.cpuCore = cpuCore
            self.memory = memory
            self.language = language
            self.volume = volume
            self.batteryPower = batteryPower
            self.resolutionWidth = resolutionWidth
            self.resolutionHeight = resolutionHeight
            self.ua = ua
            self.app = app
            self.appPackageName = appPackageName
            self.serialNumber = serialNumber
            self.mobileCountryAndNetworkCode = mobileCountryAndNetworkCode
            self.vendorId = vendorId
            self.androidApiLevel = androidApiLevel
            self.brightness = brightness
            self.bluetoothAddress = bluetoothAddress
            self.baseBandVersion = baseBandVersion
            self.kernelVersion = kernelVersion
            self.storage = storage
            self.packageName = packageName
            self.appVersion = appVersion
            self.appName = appName
            self.isDebug = isDebug
            self.isRoot = isRoot
            self.isProxy = isProxy
            self.isEmulator = isEmulator
            self.chargeStatus = chargeStatus
            self.networkType = networkType
            self.wifiMac = wifiMac
            self.deviceName = deviceName
            self.startupTime = startupTime
            self.lon = lon
            self.lat = lat
        }
        
        enum CodingKeys: String, CodingKey {
            case macAddress = "MacAddress"
            case model = "Model"
            case osSystem = "OsSystem"
            case osSystemVersion = "OsSystemVersion"
            case bidFloor = "BidFloor"
            case deviceVersion = "DeviceVersion"
            case maker = "Maker"
            case deviceType = "DeviceType"
            case carrier = "Carrier"
            case accessMode = "AccessMode"
            case phoneChipInfo = "PhoneChipInfo"
            case cpuModel = "CpuModel"
            case cpuCore = "CpuCore"
            case memory = "Memory"
            case language = "Language"
            case volume = "Volume"
            case batteryPower = "BatteryPower"
            case resolutionWidth = "ResolutionWidth"
            case resolutionHeight = "ResolutionHeight"
            case ua = "Ua"
            case app = "App"
            case appPackageName = "AppPackageName"
            case serialNumber = "SerialNumber"
            case mobileCountryAndNetworkCode = "MobileCountryAndNetworkCode"
            case vendorId = "VendorId"
            case androidApiLevel = "AndroidApiLevel"
            case brightness = "Brightness"
            case bluetoothAddress = "BluetoothAddress"
            case baseBandVersion = "BaseBandVersion"
            case kernelVersion = "KernelVersion"
            case storage = "Storage"
            case packageName = "PackageName"
            case appVersion = "AppVersion"
            case appName = "AppName"
            case isDebug = "IsDebug"
            case isRoot = "IsRoot"
            case isProxy = "IsProxy"
            case isEmulator = "IsEmulator"
            case chargeStatus = "ChargeStatus"
            case networkType = "NetworkType"
            case wifiMac = "WifiMac"
            case deviceName = "DeviceName"
            case startupTime = "StartupTime"
            case lon = "Lon"
            case lat = "Lat"
        }
    }
    
    /// 设备指纹信息	
    public struct DeviceFingerprintInfo: TCInputModel {
        /// 设备指纹Token
        public let deviceToken: String
        
        /// 设备指纹的客户端SDK对应渠道
        public let sdkChannel: String
        
        public init (deviceToken: String, sdkChannel: String) {
            self.deviceToken = deviceToken
            self.sdkChannel = sdkChannel
        }
        
        enum CodingKeys: String, CodingKey {
            case deviceToken = "DeviceToken"
            case sdkChannel = "SdkChannel"
        }
    }
    
    /// 评估结果	
    public struct EvaluationResult: TCOutputModel {
        /// SSID值
        public let ssid: String
        
        /// 风险价值分
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let score: Float?
        
        /// 风险标签，请参考官网风险类型
        /// 账号风险
        /// 1 账号信用低 账号近期存在因恶意被处罚历史，网络低活跃，被举报等因素
        /// 11 疑似低活跃账号 账号活跃度与正常用户有差异
        /// 2 垃圾账号 疑似批量注册小号，近期存在严重违规或大量举报
        /// 21 疑似小号 账号有疑似线上养号，小号等行为
        /// 22 疑似违规账号 账号曾有违规行为、曾被举报过、曾因违规被处罚过等
        /// 3 无效账号 送检账号参数无法成功解析，请检查微信 Openid 是否有误/Appid与QQopenid无法关联/微信Openid权限是否有开通/手机号是否为中国大陆手机号
        /// 4 黑名单 该账号在业务侧有过拉黑记录
        /// 5 白名单 业务自行有添加过白名单记录
        /// 行为风险
        /// 101 批量操作存在 IP/设备/环境等因素的聚集性异常
        /// 1011 疑似 IP 属性聚集 出现 IP 聚集
        /// 1012 疑似设备属性聚集 出现设备聚集
        /// 102 自动机 疑似自动机批量请求
        /// 103 恶意行为-网赚 疑似网赚
        /// 104 微信登录态无效 检查 WeChatAccessToken 参数，是否已经失效
        /// 201 环境风险 环境异常 操作 IP/设备/环境存在异常。当前 IP 为非常用 IP 或恶意 IP 段
        /// 2011 疑似非常用 IP 请求 当前请求 IP 非该账号常用 IP
        /// 2012 疑似 IP 异常 使用 idc 机房 IP 或使用代理 IP 或使用恶意 IP 等
        /// 205 非公网有效IP 传进来的 IP 地址为内网 IP 地址或者 IP 保留地址
        /// 设备风险
        /// 206 设备异常 该设备存在异常的使用行为
        /// 2061 疑似非常用设备 当前请求的设备非该账号常用设备
        /// 2062 疑似虚拟设备 请求设备为模拟器、脚本、云设备等虚拟设备
        /// 2063 疑似群控设备 请求设备为猫池、手机墙等群控设备
        /// 10201 设备处于开发者模式 来源于Android
        /// 10202 设备疑似 Root 来源于Android
        /// 10203 疑似应用被注 来源于Android
        /// 10204 疑似应用被重打包 来源于Android
        /// 10205 疑似使用 hook 技术 来源于Android
        /// 10206 疑似应用被双开 来源于Android
        /// 10207 疑似设备存在风险进程 来源于Android
        /// 10208 疑似伪造地理位置 来源于Android
        /// 10209 疑似使用 VPN 软件 来源于Android
        /// 10210 疑似使用代理软件 来源于Android
        /// 10211 疑似设备处于调试模式 来源于Android
        /// 10212 疑似高危 ROM 来源于Android
        /// 10213 疑似检测到系统劫持 来源于Android
        /// 10003 疑似模拟器 来源于Android
        /// 10301 疑似主流模拟器 来源于Android
        /// 10302 疑似云模拟器 来源于Android
        /// 10303 疑似开发板设备 来源于Android
        /// 10004 疑似群控设备风险 来源于Android
        /// 10401 疑似使用自动化软件 来源于Android
        /// 10402 疑似群控自动化操作 来源于Android
        /// 10501 疑似参数异常-IMEI 来源于Android
        /// 10502 疑似参数异常-FP 来源于Android
        /// 10504 疑似参数异常-IMSI 来源于Android
        /// 10801 疑似存在刷量安装应用的行为 来源于Android
        /// 10901 疑似多账号异常 来源于Android
        /// 11001 疑似设备参数篡改 来源于Android
        /// 11002 疑似存在风险软件 来源于Android
        /// 11003 疑似应用被调试 来源于Android
        /// 11100 疑似云真机 来源于Android
        /// 25001 设备疑似越狱 来源于IOS
        /// 25004 进程疑似有注入文件 来源于IOS
        /// 25005 疑似使用代理软件 来源于IOS
        /// 25006 疑似使用 VPN 软件 来源于IOS
        /// 25007 疑似被 Hook 来源于IOS
        /// 25008 疑似进程被调试 来源于IOS
        /// 25009 疑似多开 来源于IOS
        /// 25010 疑似改机 来源于IOS
        /// 25011 疑似应用二次打包 来源于IOS
        /// 25012 疑似模拟器 来源于IOS
        /// 25013 疑似云真机 来源于IOS
        /// 25014 疑似云模拟器 来源于IOS
        /// 25015 疑似伪造地理位置 来源于IOS
        /// 25016 疑似使用自动化脚本 来源于IOS
        /// 25017 疑似群控自动化操作 来源于IOS
        /// 30001 疑似虚拟浏览器 来源于H5
        /// 30002 疑似安装作弊插件 来源于H5
        /// 30003 疑似浏览器参数遭篡改 来源于H5
        /// 30004 疑似 JS 代码被篡改 来源于H5
        /// 30005 疑似 JS 被调试 来源于H5
        /// 30006 Cookies 被禁用 来源于H5
        /// 40001 疑似伪造地理位置 来源于小程序
        /// 40002 疑似被调试 来源于小程序
        /// 40003 疑似模拟器 来源于小程序
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let riskLabels: [Int64]?
        
        enum CodingKeys: String, CodingKey {
            case ssid = "SSID"
            case score = "Score"
            case riskLabels = "RiskLabels"
        }
    }
    
    /// 营销信息
    public struct MarketingInfo: TCInputModel {
        /// 投放模式（0=PDB，1=PD，2=RTB，10=其他）
        public let deliveryMode: Int64?
        
        /// 广告位类型 （0=前贴片，1=开屏广告，2=网页头部广告、3=网页中部广告、4=网页底部广告、5=悬浮广告、10=其它）
        public let advertisingType: Int64?
        
        /// 是否全屏插广告（0-否，1-是）
        public let fullScreen: Int64?
        
        /// 广告位宽度
        public let advertisingSpaceWidth: Int64?
        
        /// 广告位高度
        public let advertisingSpaceHeight: Int64?
        
        /// 网址
        public let url: String?
        
        public init (deliveryMode: Int64?, advertisingType: Int64?, fullScreen: Int64?, advertisingSpaceWidth: Int64?, advertisingSpaceHeight: Int64?, url: String?) {
            self.deliveryMode = deliveryMode
            self.advertisingType = advertisingType
            self.fullScreen = fullScreen
            self.advertisingSpaceWidth = advertisingSpaceWidth
            self.advertisingSpaceHeight = advertisingSpaceHeight
            self.url = url
        }
        
        enum CodingKeys: String, CodingKey {
            case deliveryMode = "DeliveryMode"
            case advertisingType = "AdvertisingType"
            case fullScreen = "FullScreen"
            case advertisingSpaceWidth = "AdvertisingSpaceWidth"
            case advertisingSpaceHeight = "AdvertisingSpaceHeight"
            case url = "Url"
        }
    }
    
    /// 通用账号信息
    public struct UniversalAccountInfo: TCInputModel {
        /// 账号值：
        /// 当账户类型为1时，填入手机号，如135****3695；
        /// 当账户类型为2、3或100时，填入对应的值。
        public let accountId: String
        
        public init (accountId: String) {
            self.accountId = accountId
        }
        
        enum CodingKeys: String, CodingKey {
            case accountId = "AccountId"
        }
    }
    
    /// 用户信息	
    public struct UserInfo: TCInputModel {
        /// 用户外网IP地址
        public let ip: String
        
        /// 来源渠道编码
        public let channelSource: String?
        
        /// 用户登录平台。1：Android 2：iOS 3：H5 4：小程序
        public let platform: Int64?
        
        /// 姓名
        public let name: String?
        
        /// 年龄
        public let age: Int64?
        
        /// 性别：
        /// male（男）
        /// female（女）
        public let gender: String?
        
        /// 身份证号
        public let residentIdentityCard: String?
        
        /// 邮箱地址
        public let email: String?
        
        /// 用户地址
        public let address: String?
        
        /// 用户昵称
        public let nickname: String?
        
        public init (ip: String, channelSource: String?, platform: Int64?, name: String?, age: Int64?, gender: String?, residentIdentityCard: String?, email: String?, address: String?, nickname: String?) {
            self.ip = ip
            self.channelSource = channelSource
            self.platform = platform
            self.name = name
            self.age = age
            self.gender = gender
            self.residentIdentityCard = residentIdentityCard
            self.email = email
            self.address = address
            self.nickname = nickname
        }
        
        enum CodingKeys: String, CodingKey {
            case ip = "Ip"
            case channelSource = "ChannelSource"
            case platform = "Platform"
            case name = "Name"
            case age = "Age"
            case gender = "Gender"
            case residentIdentityCard = "ResidentIdentityCard"
            case email = "Email"
            case address = "Address"
            case nickname = "Nickname"
        }
    }
}
