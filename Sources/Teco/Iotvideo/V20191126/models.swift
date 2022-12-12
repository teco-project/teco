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

extension Iotvideo {
    /// 终端用户绑定的设备
    public struct BindDevInfo: TCOutputModel {
        /// 设备TID
        public let tid: String
        
        /// 设备名称
        public let deviceName: String
        
        /// 设备型号
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let deviceModel: String?
        
        /// 用户角色，owner：主人，guest：访客
        public let role: String
        
        enum CodingKeys: String, CodingKey {
            case tid = "Tid"
            case deviceName = "DeviceName"
            case deviceModel = "DeviceModel"
            case role = "Role"
        }
    }
    
    /// 设备绑定的终端用户
    public struct BindUsrInfo: TCOutputModel {
        /// IotVideo平台分配给终端用户的用户id
        public let accessId: String
        
        /// 用户角色，owner：主人，guest：访客
        public let role: String
        
        enum CodingKeys: String, CodingKey {
            case accessId = "AccessId"
            case role = "Role"
        }
    }
    
    /// 版本发布的描述信息，需要国际化，可以为空
    public struct Contents: TCInputModel, TCOutputModel {
        /// 英文，长度不超过300个字符
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let en: String?
        
        /// 中文简体，长度不超过300个字符
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let cn: String?
        
        /// 中文繁体(Traditional Chinese)，长度不超过300个字符
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let tc: String?
        
        /// 默认语言，最多不超过300个字符
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let `default`: String?
        
        public init (en: String? = nil, cn: String? = nil, tc: String? = nil, `default`: String? = nil) {
            self.en = en
            self.cn = cn
            self.tc = tc
            self.`default` = `default`
        }
        
        enum CodingKeys: String, CodingKey {
            case en = "En"
            case cn = "Cn"
            case tc = "Tc"
            case `default` = "Default"
        }
    }
    
    /// 接口DescribeStream输出参数
    public struct Data: TCOutputModel {
        /// 直播协议
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let `protocol`: String?
        
        /// 流媒体播放地址
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let uri: String?
        
        /// 流媒体地址过期时间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let expireTime: Int64?
        
        /// 视频编码
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let videoCodec: String?
        
        /// 音频编码
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let audioCodec: String?
        
        enum CodingKeys: String, CodingKey {
            case `protocol` = "Protocol"
            case uri = "URI"
            case expireTime = "ExpireTime"
            case videoCodec = "VideoCodec"
            case audioCodec = "AudioCodec"
        }
    }
    
    /// 用于终端用户临时访问设备的token授权信息
    public struct DevTokenInfo: TCOutputModel {
        /// 客户的终端用户在IotVideo上的唯一标识id
        public let accessId: String
        
        /// 设备TID
        public let tid: String
        
        /// IotVideo平台的accessToken
        public let accessToken: String
        
        /// Token的过期时间，单位秒(UTC时间)
        public let expireTime: UInt64
        
        enum CodingKeys: String, CodingKey {
            case accessId = "AccessId"
            case tid = "Tid"
            case accessToken = "AccessToken"
            case expireTime = "ExpireTime"
        }
    }
    
    /// 设备证书及密钥
    public struct DeviceCertificate: TCOutputModel {
        /// 设备TID
        public let tid: String
        
        /// 设备初始证书信息，base64编码
        public let certificate: String
        
        /// 设备私钥下载地址
        public let whiteBoxSoUrl: String
        
        enum CodingKeys: String, CodingKey {
            case tid = "Tid"
            case certificate = "Certificate"
            case whiteBoxSoUrl = "WhiteBoxSoUrl"
        }
    }
    
    /// 设备信息
    public struct DeviceData: TCOutputModel {
        /// 设备TID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let tid: String?
        
        /// 激活时间 0代表未激活
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let activeTime: UInt64?
        
        /// 设备是否被禁用
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let disabled: Bool?
        
        /// 固件版本
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let otaVersion: String?
        
        /// 设备在线状态
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let online: UInt64?
        
        /// 设备最后上线时间（mqtt连接成功时间），UNIX时间戳，单位秒
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let lastOnlineTime: UInt64?
        
        /// 物模型json数据
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let iotModel: String?
        
        /// 设备名称
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let deviceName: String?
        
        /// 产品ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let productId: String?
        
        /// 设备初始证书信息，base64编码
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let certificate: String?
        
        /// 设备私钥下载地址
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let whiteBoxSoUrl: String?
        
        /// 设备推流状态
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let streamStatus: Bool?
        
        enum CodingKeys: String, CodingKey {
            case tid = "Tid"
            case activeTime = "ActiveTime"
            case disabled = "Disabled"
            case otaVersion = "OtaVersion"
            case online = "Online"
            case lastOnlineTime = "LastOnlineTime"
            case iotModel = "IotModel"
            case deviceName = "DeviceName"
            case productId = "ProductId"
            case certificate = "Certificate"
            case whiteBoxSoUrl = "WhiteBoxSoUrl"
            case streamStatus = "StreamStatus"
        }
    }
    
    /// 设备物模型数据
    public struct DeviceModelData: TCOutputModel {
        /// 设备TID
        public let tid: String
        
        /// 物模型分支路径
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let branch: String?
        
        /// 物模型数据
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let iotModel: String?
        
        enum CodingKeys: String, CodingKey {
            case tid = "Tid"
            case branch = "Branch"
            case iotModel = "IotModel"
        }
    }
    
    /// 设备列表元素所包含的设备基本信息
    public struct DevicesData: TCOutputModel {
        /// 设备TID
        public let tid: String
        
        /// 设备名称
        public let deviceName: String
        
        /// 激活时间 0代表未激活
        public let activeTime: UInt64
        
        /// 设备是否被禁用
        public let disabled: Bool
        
        /// 设备推流状态
        public let streamStatus: Bool
        
        /// 固件版本
        public let otaVersion: String
        
        /// 设备在线状态
        public let online: UInt64
        
        /// 设备最后上线时间（mqtt连接成功时间），UNIX时间戳，单位秒
        public let lastOnlineTime: UInt64
        
        /// 物模型json数据
        public let iotModel: String
        
        /// 设备固件最新更新时间，UNIX时间戳，单位秒
        public let lastUpdateTime: UInt64
        
        enum CodingKeys: String, CodingKey {
            case tid = "Tid"
            case deviceName = "DeviceName"
            case activeTime = "ActiveTime"
            case disabled = "Disabled"
            case streamStatus = "StreamStatus"
            case otaVersion = "OtaVersion"
            case online = "Online"
            case lastOnlineTime = "LastOnlineTime"
            case iotModel = "IotModel"
            case lastUpdateTime = "LastUpdateTime"
        }
    }
    
    /// 物模型历史版本
    public struct IotModelData: TCOutputModel {
        /// 版本号
        public let revision: Int64
        
        /// 发布时间
        public let releaseTime: Int64
        
        enum CodingKeys: String, CodingKey {
            case revision = "Revision"
            case releaseTime = "ReleaseTime"
        }
    }
    
    /// 设备日志信息
    public struct LogData: TCOutputModel {
        /// 发生时间 UNIX时间戳，单位秒
        public let occurtime: UInt64
        
        /// 日志类型 1在线状态变更 2FP变更 3SP变更 4CO控制 5ST变更 6EV事件
        public let logType: UInt64
        
        /// 物模型对象索引
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let dataObject: String?
        
        /// 物模型旧值  json串
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let oldValue: String?
        
        /// 物模型新值  json串
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let newValue: String?
        
        enum CodingKeys: String, CodingKey {
            case occurtime = "Occurtime"
            case logType = "LogType"
            case dataObject = "DataObject"
            case oldValue = "OldValue"
            case newValue = "NewValue"
        }
    }
    
    /// 产品转发消息队列配置
    public struct MsgQueueData: TCOutputModel {
        /// 消息队列类型 1：CMQ 2：kafka
        public let msgQueueType: UInt64
        
        /// 消息类型列表，整型值（0-31）之间以“,”分隔
        public let msgType: String
        
        /// 主题名称
        public let topic: String
        
        /// 实例名称
        public let instance: String
        
        /// 消息地域
        public let msgRegion: String
        
        enum CodingKeys: String, CodingKey {
            case msgQueueType = "MsgQueueType"
            case msgType = "MsgType"
            case topic = "Topic"
            case instance = "Instance"
            case msgRegion = "MsgRegion"
        }
    }
    
    /// 操作系统信息
    public struct OsData: TCOutputModel {
        /// 芯片型号
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let chipId: String?
        
        /// 芯片厂商
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let chipManufacture: String?
        
        enum CodingKeys: String, CodingKey {
            case chipId = "ChipId"
            case chipManufacture = "ChipManufacture"
        }
    }
    
    /// 产品发布过的全部版本
    public struct OtaPubHistory: TCOutputModel {
        /// 版本名称
        public let otaVersion: String
        
        /// 发布时间，unix时间戳，单位：秒
        public let publishTime: UInt64
        
        enum CodingKeys: String, CodingKey {
            case otaVersion = "OtaVersion"
            case publishTime = "PublishTime"
        }
    }
    
    /// 产品信息摘要
    public struct ProductBase: TCOutputModel {
        /// 产品ID
        public let productId: String
        
        /// 产器型号(APP产品,为APP包名)
        public let productModel: String
        
        /// 产品名称
        public let productName: String
        
        /// 产品描述信息
        public let productDescription: String
        
        /// 创建时间，UNIX 时间戳，单位秒
        public let createTime: UInt64
        
        /// 物模型发布版本号,0代表物模型尚未发布
        public let iotModelRevision: UInt64
        
        /// 产品密钥
        public let secretKey: String
        
        /// 设备功能码
        /// ypsxth : 音频双向通话;	
        /// spdxth : 视频单向通话(监控);
        /// NVR0824 : NVR设备,大于8路，小于等于24路;
        /// WifiKeepalive : Wifi保活(低功耗产品);
        /// Alexa : Alexa接入;
        /// Google : Google接入;
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let funcCode: [String]?
        
        /// 产品类别，0 : 普通视频设备；1 : NVR设备
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let productCate: Int64?
        
        /// 产品地域
        /// China-Mainland（中国大陆）
        /// China-Hong Kong, Macao and Taiwan（港澳台地区）
        /// America（美国）
        /// Europe（欧洲）
        /// India（印度）
        /// Other-Overseas（其他境外地区）
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let productRegion: String?
        
        enum CodingKeys: String, CodingKey {
            case productId = "ProductId"
            case productModel = "ProductModel"
            case productName = "ProductName"
            case productDescription = "ProductDescription"
            case createTime = "CreateTime"
            case iotModelRevision = "IotModelRevision"
            case secretKey = "SecretKey"
            case funcCode = "FuncCode"
            case productCate = "ProductCate"
            case productRegion = "ProductRegion"
        }
    }
    
    /// 产品信息
    public struct ProductData: TCOutputModel {
        /// 产品ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let productId: String?
        
        /// 产品名称
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let productName: String?
        
        /// 产品描述信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let productDescription: String?
        
        /// 创建时间，UNIX 时间戳，单位秒
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let createTime: Int64?
        
        /// 物模型发布版本号,0代表物模型尚未发布
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let iotModelRevision: Int64?
        
        /// 产品密钥
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let secretKey: String?
        
        /// 设备功能码
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let features: [String]?
        
        /// 产器型号(APP产品,为APP包名)
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let productModel: String?
        
        /// 主芯片厂商id
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let chipManufactureId: String?
        
        /// 主芯片型号
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let chipId: String?
        
        /// 产品类别，0：普通视频设备；1：NVR设备
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let productCate: Int64?
        
        /// 产品地区
        /// China-Mainland（中国大陆）
        /// China-Hong Kong, Macao and Taiwan（港澳台地区）
        /// America（美国）
        /// Europe（欧洲）
        /// India（印度）
        /// Other-Overseas（其他境外地区）
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let productRegion: String?
        
        /// 接入模型，bit0是0：公版小程序未接入，bit0是1：公版小程序已接入
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let accessMode: Int64?
        
        /// linux,android,liteos
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let os: String?
        
        enum CodingKeys: String, CodingKey {
            case productId = "ProductId"
            case productName = "ProductName"
            case productDescription = "ProductDescription"
            case createTime = "CreateTime"
            case iotModelRevision = "IotModelRevision"
            case secretKey = "SecretKey"
            case features = "Features"
            case productModel = "ProductModel"
            case chipManufactureId = "ChipManufactureId"
            case chipId = "ChipId"
            case productCate = "ProductCate"
            case productRegion = "ProductRegion"
            case accessMode = "AccessMode"
            case os = "Os"
        }
    }
    
    /// 充值记录列表
    public struct RechargeRecord: TCOutputModel {
        /// 流水记录号。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let waterId: Int64?
        
        /// 充值前的余额，单位0.01元。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let balanceBeforeRecharge: Int64?
        
        /// 充值金额，单位0.01元。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let money: Int64?
        
        /// 充值时间, UTC值。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let operateTime: Int64?
        
        enum CodingKeys: String, CodingKey {
            case waterId = "WaterId"
            case balanceBeforeRecharge = "BalanceBeforeRecharge"
            case money = "Money"
            case operateTime = "OperateTime"
        }
    }
    
    /// 终端用户注册状态
    public struct RegisteredStatus: TCOutputModel {
        /// 终端用户的唯一ID
        public let cunionId: String
        
        /// 注册状态
        public let isRegisted: Bool
        
        enum CodingKeys: String, CodingKey {
            case cunionId = "CunionId"
            case isRegisted = "IsRegisted"
        }
    }
    
    /// 云存订单信息
    public struct StorageOrder: TCOutputModel {
        /// 定单唯一性ID
        public let orderId: String
        
        /// 云存套餐ID
        public let pkgId: String
        
        /// 定单服务状态
        /// 1;订单正在使用。
        /// 2:订单未开始。
        /// 3:订单已经使用过，现在暂时未开始使用(该订单从其他服务转移而来)。
        /// 4:订单已过期。
        /// 5:订单已被退订。
        /// 6:定单已被转移到其他云存服务。
        public let status: Int64
        
        /// 定单服务生效时间
        public let startTime: Int64
        
        /// 定单服务失效时间
        public let endTime: Int64
        
        enum CodingKeys: String, CodingKey {
            case orderId = "OrderId"
            case pkgId = "PkgId"
            case status = "Status"
            case startTime = "StartTime"
            case endTime = "EndTime"
        }
    }
    
    /// 系统类型
    public struct SystemType: TCOutputModel {
        /// 安卓系统
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let android: [OsData]?
        
        /// linux系统
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let linux: [OsData]?
        
        /// LiteOs系统
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let liteOs: [OsData]?
        
        enum CodingKeys: String, CodingKey {
            case android = "Android"
            case linux = "Linux"
            case liteOs = "LiteOs"
        }
    }
    
    /// 布尔值，标识指定设备是否在白名单中
    public struct TraceStatus: TCOutputModel {
        /// 设备TID
        public let tid: String
        
        /// 设备追踪状态
        public let isExist: Bool
        
        enum CodingKeys: String, CodingKey {
            case tid = "Tid"
            case isExist = "IsExist"
        }
    }
    
    /// 固件版本详细信息
    public struct VersionData: TCOutputModel {
        /// 产品ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let productId: String?
        
        /// 固件版本号
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let otaVersion: String?
        
        /// 版本类型 1未发布 2测试发布 3正式发布 4禁用
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let pubStatus: UInt64?
        
        /// 固件版本存储路径URL
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let versionUrl: String?
        
        /// 文件大小，byte
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let fileSize: UInt64?
        
        /// 文件校验码
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let md5: String?
        
        /// 指定的允许升级的旧版本，PubStatus=3时有效
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let oldVersions: String?
        
        /// 指定的允许升级的旧设备id，PubStatus=2时有效
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let tids: String?
        
        /// 灰度值（0-100）,PubStatus=3时有效，表示n%的升级总量
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let grayValue: UInt64?
        
        /// 最近一次发布时间，UNIX时间戳，单位秒
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let publishTime: UInt64?
        
        /// 此版本激活的设备总数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let activeCount: Int64?
        
        /// 此版本在线的设备总数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let onlineCount: Int64?
        
        /// 上传固件文件的时间，UNIX时间戳，单位秒
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let updateTime: UInt64?
        
        /// 发布记录的最后变更时间，UNIX时间戳，单位秒
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let uploadTime: UInt64?
        
        /// 该固件版本发布的变更次数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let modifyTimes: UInt64?
        
        /// 备注信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let remark: String?
        
        /// 版本发布的描述信息，需要国际化，可以为空
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let contents: Contents?
        
        /// 月活设备数，当月第一天开始有上线的设备数量。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let aliveInMonthCnt: UInt64?
        
        enum CodingKeys: String, CodingKey {
            case productId = "ProductId"
            case otaVersion = "OtaVersion"
            case pubStatus = "PubStatus"
            case versionUrl = "VersionUrl"
            case fileSize = "FileSize"
            case md5 = "Md5"
            case oldVersions = "OldVersions"
            case tids = "Tids"
            case grayValue = "GrayValue"
            case publishTime = "PublishTime"
            case activeCount = "ActiveCount"
            case onlineCount = "OnlineCount"
            case updateTime = "UpdateTime"
            case uploadTime = "UploadTime"
            case modifyTimes = "ModifyTimes"
            case remark = "Remark"
            case contents = "Contents"
            case aliveInMonthCnt = "AliveInMonthCnt"
        }
    }
}
