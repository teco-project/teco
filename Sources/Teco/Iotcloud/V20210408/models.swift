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

extension Iotcloud {
    /// 设备属性
    public struct Attribute: TCInputModel {
        /// 属性列表
        public let tags: [DeviceTag]?

        public init(tags: [DeviceTag]? = nil) {
            self.tags = tags
        }

        enum CodingKeys: String, CodingKey {
            case tags = "Tags"
        }
    }

    /// 子设备信息
    public struct BindDeviceInfo: TCOutputModel {
        /// 产品ID
        public let productId: String

        /// 设备名
        public let deviceName: String

        /// 设备Tag
        public let tags: [DeviceTag]

        /// 子设备绑定时间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let bindTime: UInt64?

        enum CodingKeys: String, CodingKey {
            case productId = "ProductId"
            case deviceName = "DeviceName"
            case tags = "Tags"
            case bindTime = "BindTime"
        }
    }

    /// 子产品信息
    public struct BindProductInfo: TCOutputModel {
        /// 产品ID
        public let productId: String

        /// 产品名
        public let productName: String

        enum CodingKeys: String, CodingKey {
            case productId = "ProductId"
            case productName = "ProductName"
        }
    }

    /// 代理订阅信息
    public struct BrokerSubscribe: TCInputModel {
        /// 产品ID
        public let productId: String

        /// 设备名
        public let deviceName: String

        public init(productId: String, deviceName: String) {
            self.productId = productId
            self.deviceName = deviceName
        }

        enum CodingKeys: String, CodingKey {
            case productId = "ProductId"
            case deviceName = "DeviceName"
        }
    }

    /// CLS日志
    public struct CLSLogItem: TCOutputModel {
        /// 日志内容
        public let content: String

        /// 设备名称
        public let deviceName: String

        /// 产品ID
        public let productId: String

        /// 请求ID
        public let requestId: String

        /// 结果
        public let result: String

        /// 模块
        public let scene: String

        /// 日志时间
        public let time: String

        /// 腾讯云账号
        public let userid: String

        enum CodingKeys: String, CodingKey {
            case content = "Content"
            case deviceName = "DeviceName"
            case productId = "ProductId"
            case requestId = "RequestId"
            case result = "Result"
            case scene = "Scene"
            case time = "Time"
            case userid = "Userid"
        }
    }

    /// X509证书信息
    public struct CertInfo: TCInputModel, TCOutputModel {
        /// 证书名称
        public let certName: String

        /// 证书的序列号，16进制编码
        public let certSN: String

        /// 证书颁发着名称
        public let issuerName: String

        /// 证书主题
        public let subject: String

        /// 证书创建时间，秒级时间戳
        public let createTime: UInt64

        /// 证书生效时间，秒级时间戳
        public let effectiveTime: UInt64

        /// 证书失效时间，秒级时间戳
        public let expireTime: UInt64

        /// X509证书内容
        public let certText: String

        public init(certName: String, certSN: String, issuerName: String, subject: String, createTime: UInt64, effectiveTime: UInt64, expireTime: UInt64, certText: String) {
            self.certName = certName
            self.certSN = certSN
            self.issuerName = issuerName
            self.subject = subject
            self.createTime = createTime
            self.effectiveTime = effectiveTime
            self.expireTime = expireTime
            self.certText = certText
        }

        enum CodingKeys: String, CodingKey {
            case certName = "CertName"
            case certSN = "CertSN"
            case issuerName = "IssuerName"
            case subject = "Subject"
            case createTime = "CreateTime"
            case effectiveTime = "EffectiveTime"
            case expireTime = "ExpireTime"
            case certText = "CertText"
        }
    }

    /// 设备详细信息
    public struct DeviceInfo: TCOutputModel {
        /// 设备名
        public let deviceName: String

        /// 设备是否在线，0不在线，1在线
        public let online: UInt64

        /// 设备登录时间
        public let loginTime: UInt64

        /// 设备版本
        public let version: String

        /// 设备证书，证书加密的设备返回
        public let deviceCert: String

        /// 设备密钥，密钥加密的设备返回
        public let devicePsk: String

        /// 设备属性
        public let tags: [DeviceTag]

        /// 设备类型
        public let deviceType: UInt64

        /// 国际移动设备识别码 IMEI
        public let imei: String

        /// 运营商类型
        public let isp: UInt64

        /// NB IOT运营商处的DeviceID
        public let nbiotDeviceID: String

        /// IP地址
        public let connIP: UInt64

        /// 设备最后更新时间
        public let lastUpdateTime: UInt64

        /// LoRa设备的dev eui
        public let loraDevEui: String

        /// LoRa设备的Mote type
        public let loraMoteType: UInt64

        /// 首次上线时间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let firstOnlineTime: UInt64?

        /// 最近下线时间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let lastOfflineTime: UInt64?

        /// 设备创建时间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let createTime: UInt64?

        /// 设备日志级别
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let logLevel: UInt64?

        /// 设备证书获取状态, 1 已获取过设备密钥，0 未获取过设备密钥
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let certState: UInt64?

        /// 设备可用状态，0禁用，1启用
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let enableState: UInt64?

        /// 设备标签
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let labels: [DeviceLabel]?

        /// MQTT客户端IP地址
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let clientIP: String?

        /// ota最后更新时间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let firmwareUpdateTime: UInt64?

        /// 创建者 Uin
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let createUserId: UInt64?

        enum CodingKeys: String, CodingKey {
            case deviceName = "DeviceName"
            case online = "Online"
            case loginTime = "LoginTime"
            case version = "Version"
            case deviceCert = "DeviceCert"
            case devicePsk = "DevicePsk"
            case tags = "Tags"
            case deviceType = "DeviceType"
            case imei = "Imei"
            case isp = "Isp"
            case nbiotDeviceID = "NbiotDeviceID"
            case connIP = "ConnIP"
            case lastUpdateTime = "LastUpdateTime"
            case loraDevEui = "LoraDevEui"
            case loraMoteType = "LoraMoteType"
            case firstOnlineTime = "FirstOnlineTime"
            case lastOfflineTime = "LastOfflineTime"
            case createTime = "CreateTime"
            case logLevel = "LogLevel"
            case certState = "CertState"
            case enableState = "EnableState"
            case labels = "Labels"
            case clientIP = "ClientIP"
            case firmwareUpdateTime = "FirmwareUpdateTime"
            case createUserId = "CreateUserId"
        }
    }

    /// 设备标签
    public struct DeviceLabel: TCInputModel, TCOutputModel {
        /// 标签标识
        public let key: String

        /// 标签值
        public let value: String

        public init(key: String, value: String) {
            self.key = key
            self.value = value
        }

        enum CodingKeys: String, CodingKey {
            case key = "Key"
            case value = "Value"
        }
    }

    /// 设备资源详细信息
    public struct DeviceResourceInfo: TCOutputModel {
        /// 产品ID
        public let productID: String

        /// 产品名
        public let productName: String

        /// 资源名称
        public let name: String

        /// 资源文件md5
        public let md5: String

        /// 资源文件大小
        public let size: UInt64

        /// 资源更新时间
        public let updateTime: String

        /// 设备名称
        public let deviceName: String

        /// 设备资源上传状态
        public let status: UInt64

        /// 设备资源上传百分比
        public let percent: UInt64

        enum CodingKeys: String, CodingKey {
            case productID = "ProductID"
            case productName = "ProductName"
            case name = "Name"
            case md5 = "Md5"
            case size = "Size"
            case updateTime = "UpdateTime"
            case deviceName = "DeviceName"
            case status = "Status"
            case percent = "Percent"
        }
    }

    /// 设备属性
    public struct DeviceTag: TCInputModel, TCOutputModel {
        /// 属性名称
        public let tag: String

        /// 属性值的类型，1 int，2 string
        public let type: UInt64

        /// 属性的值
        public let value: String

        /// 属性描述名称
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let name: String?

        public init(tag: String, type: UInt64, value: String, name: String? = nil) {
            self.tag = tag
            self.type = type
            self.value = value
            self.name = name
        }

        enum CodingKeys: String, CodingKey {
            case tag = "Tag"
            case type = "Type"
            case value = "Value"
            case name = "Name"
        }
    }

    /// 设备固件更新状态
    public struct DeviceUpdateStatus: TCOutputModel {
        /// 设备名
        public let deviceName: String

        /// 最后处理时间
        public let lastProcessTime: UInt64

        /// 状态
        public let status: UInt64

        /// 错误消息
        public let errMsg: String

        /// 返回码
        public let retcode: Int64

        /// 目标更新版本
        public let dstVersion: String

        /// 下载中状态时的下载进度
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let percent: UInt64?

        /// 原版本号
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let oriVersion: String?

        /// 任务ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let taskId: UInt64?

        enum CodingKeys: String, CodingKey {
            case deviceName = "DeviceName"
            case lastProcessTime = "LastProcessTime"
            case status = "Status"
            case errMsg = "ErrMsg"
            case retcode = "Retcode"
            case dstVersion = "DstVersion"
            case percent = "Percent"
            case oriVersion = "OriVersion"
            case taskId = "TaskId"
        }
    }

    /// 设备固件详细信息
    public struct FirmwareInfo: TCOutputModel {
        /// 固件版本
        public let version: String

        /// 固件MD5值
        public let md5sum: String

        /// 固件创建时间
        public let createTime: UInt64

        /// 产品名称
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let productName: String?

        /// 固件名称
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let name: String?

        /// 固件描述
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let description: String?

        /// 产品ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let productId: String?

        /// 固件类型
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let fwType: String?

        /// 创建者 Uin
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let createUserId: UInt64?

        enum CodingKeys: String, CodingKey {
            case version = "Version"
            case md5sum = "Md5sum"
            case createTime = "CreateTime"
            case productName = "ProductName"
            case name = "Name"
            case description = "Description"
            case productId = "ProductId"
            case fwType = "FwType"
            case createUserId = "CreateUserId"
        }
    }

    /// 固件升级任务信息
    public struct FirmwareTaskInfo: TCOutputModel {
        /// 任务ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let taskId: UInt64?

        /// 任务状态
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let status: Int64?

        /// 任务类型
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let type: Int64?

        /// 任务创建时间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let createTime: Int64?

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case status = "Status"
            case type = "Type"
            case createTime = "CreateTime"
        }
    }

    /// 内容日志项
    public struct PayloadLogItem: TCOutputModel {
        /// 账号id
        public let uin: String

        /// 产品id
        public let productId: String

        /// 设备名称
        public let deviceName: String

        /// 来源类型
        public let srcType: String

        /// 来源名称
        public let srcName: String

        /// 消息topic
        public let topic: String

        /// 内容格式类型
        public let payloadFormatType: String

        /// 内容信息
        public let payload: String

        /// 请求ID
        public let requestId: String

        /// 日期时间
        public let dateTime: String

        enum CodingKeys: String, CodingKey {
            case uin = "Uin"
            case productId = "ProductId"
            case deviceName = "DeviceName"
            case srcType = "SrcType"
            case srcName = "SrcName"
            case topic = "Topic"
            case payloadFormatType = "PayloadFormatType"
            case payload = "Payload"
            case requestId = "RequestId"
            case dateTime = "DateTime"
        }
    }

    /// 产品详细信息
    public struct ProductInfo: TCOutputModel {
        /// 产品ID
        public let productId: String

        /// 产品名
        public let productName: String

        /// 产品元数据
        public let productMetadata: ProductMetadata

        /// 产品属性
        public let productProperties: ProductProperties

        enum CodingKeys: String, CodingKey {
            case productId = "ProductId"
            case productName = "ProductName"
            case productMetadata = "ProductMetadata"
            case productProperties = "ProductProperties"
        }
    }

    /// 产品元数据
    public struct ProductMetadata: TCOutputModel {
        /// 产品创建时间
        public let creationDate: UInt64

        /// 创建者 Uin
        public let createUserId: UInt64

        /// 账号 Uin
        public let userId: UInt64

        enum CodingKeys: String, CodingKey {
            case creationDate = "CreationDate"
            case createUserId = "CreateUserId"
            case userId = "UserId"
        }
    }

    /// 产品属性
    public struct ProductProperties: TCInputModel, TCOutputModel {
        /// 产品描述
        public let productDescription: String?

        /// 加密类型，1表示证书认证，2表示签名认证。如不填写，默认值是1
        public let encryptionType: String?

        /// 产品所属区域，目前只支持广州（gz）
        public let region: String?

        /// 产品类型，各个类型值代表的节点-类型如下：
        /// 0 普通产品，2 NB-IoT产品，4 LoRa产品，3 LoRa网关产品，5 普通网关产品   默认值是0
        public let productType: UInt64?

        /// 数据格式，取值为json或者custom，默认值是json
        public let format: String?

        /// 产品所属平台，默认值是0
        public let platform: String?

        /// LoRa产品运营侧APPEUI，只有LoRa产品需要填写
        public let appeui: String?

        /// 产品绑定的物模型ID，-1表示不绑定
        public let modelId: String?

        /// 产品绑定的物模型名称
        public let modelName: String?

        /// 产品密钥，suite产品才会有
        public let productKey: String?

        /// 动态注册类型 0-关闭, 1-预定义设备名 2-动态定义设备名
        public let registerType: UInt64?

        /// 动态注册产品密钥
        public let productSecret: String?

        /// RegisterType为2时，设备动态创建的限制数量
        public let registerLimit: UInt64?

        /// 划归的产品，展示为源产品ID，其余为空
        public let originProductId: String?

        /// 私有CA名称
        public let privateCAName: String?

        /// 划归的产品，展示为源用户ID，其余为空
        public let originUserId: UInt64?

        /// 设备限制
        public let deviceLimit: UInt64?

        /// 产品禁用状态
        public let forbiddenStatus: UInt64?

        public init(productDescription: String? = nil, encryptionType: String? = nil, region: String? = nil, productType: UInt64? = nil, format: String? = nil, platform: String? = nil, appeui: String? = nil, modelId: String? = nil, modelName: String? = nil, productKey: String? = nil, registerType: UInt64? = nil, productSecret: String? = nil, registerLimit: UInt64? = nil, originProductId: String? = nil, privateCAName: String? = nil, originUserId: UInt64? = nil, deviceLimit: UInt64? = nil, forbiddenStatus: UInt64? = nil) {
            self.productDescription = productDescription
            self.encryptionType = encryptionType
            self.region = region
            self.productType = productType
            self.format = format
            self.platform = platform
            self.appeui = appeui
            self.modelId = modelId
            self.modelName = modelName
            self.productKey = productKey
            self.registerType = registerType
            self.productSecret = productSecret
            self.registerLimit = registerLimit
            self.originProductId = originProductId
            self.privateCAName = privateCAName
            self.originUserId = originUserId
            self.deviceLimit = deviceLimit
            self.forbiddenStatus = forbiddenStatus
        }

        enum CodingKeys: String, CodingKey {
            case productDescription = "ProductDescription"
            case encryptionType = "EncryptionType"
            case region = "Region"
            case productType = "ProductType"
            case format = "Format"
            case platform = "Platform"
            case appeui = "Appeui"
            case modelId = "ModelId"
            case modelName = "ModelName"
            case productKey = "ProductKey"
            case registerType = "RegisterType"
            case productSecret = "ProductSecret"
            case registerLimit = "RegisterLimit"
            case originProductId = "OriginProductId"
            case privateCAName = "PrivateCAName"
            case originUserId = "OriginUserId"
            case deviceLimit = "DeviceLimit"
            case forbiddenStatus = "ForbiddenStatus"
        }
    }

    /// 产品资源详细信息
    public struct ProductResourceInfo: TCOutputModel {
        /// 产品ID
        public let productID: String

        /// 产品名
        public let productName: String

        /// 资源名称
        public let name: String

        /// 资源文件md5
        public let md5: String

        /// 资源文件大小
        public let size: UInt64

        /// 资源文件描述
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let description: String?

        /// 资源创建时间
        public let createTime: String

        enum CodingKeys: String, CodingKey {
            case productID = "ProductID"
            case productName = "ProductName"
            case name = "Name"
            case md5 = "Md5"
            case size = "Size"
            case description = "Description"
            case createTime = "CreateTime"
        }
    }

    /// 产品级任务详细信息
    public struct ProductTaskInfo: TCOutputModel {
        /// 任务ID
        public let id: UInt64

        /// 任务类型 0-批量创建设备类型
        public let type: UInt64

        /// 任务状态 0-创建中 1-待执行 2-执行中 3-执行失败 4-子任务部分失败 5-执行成功
        public let state: UInt64

        /// 任务参数类型 cosfile-文件输入 random-随机生成
        public let parametersType: String

        /// 任务参数
        public let parameters: String

        /// 任务执行结果类型 cosfile-文件输出 errmsg-错误信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let resultType: String?

        /// 任务执行结果
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: String?

        /// 子任务总个数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let batchCount: UInt64?

        /// 子任务已执行个数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let batchOffset: UInt64?

        /// 任务创建时间
        public let createTime: UInt64

        /// 任务更新时间
        public let updateTime: UInt64

        /// 任务完成时间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let completeTime: UInt64?

        enum CodingKeys: String, CodingKey {
            case id = "Id"
            case type = "Type"
            case state = "State"
            case parametersType = "ParametersType"
            case parameters = "Parameters"
            case resultType = "ResultType"
            case result = "Result"
            case batchCount = "BatchCount"
            case batchOffset = "BatchOffset"
            case createTime = "CreateTime"
            case updateTime = "UpdateTime"
            case completeTime = "CompleteTime"
        }
    }

    /// 重置设备状态结果
    public struct ResetDeviceResult: TCOutputModel {
        /// 设备名
        public let deviceName: String

        /// 是否成功
        public let success: Bool

        /// 失败原因
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let reason: String?

        enum CodingKeys: String, CodingKey {
            case deviceName = "DeviceName"
            case success = "Success"
            case reason = "Reason"
        }
    }

    /// SDK日志项
    public struct SDKLogItem: TCOutputModel {
        /// 产品ID
        public let productId: String

        /// 设备名称
        public let deviceName: String

        /// 日志等级
        public let level: String

        /// 日志时间
        public let dateTime: String

        /// 日志内容
        public let content: String

        enum CodingKeys: String, CodingKey {
            case productId = "ProductId"
            case deviceName = "DeviceName"
            case level = "Level"
            case dateTime = "DateTime"
            case content = "Content"
        }
    }

    /// 搜索关键词
    public struct SearchKeyword: TCInputModel {
        /// 搜索条件的Key
        public let key: String

        /// 搜索条件的值
        public let value: String?

        public init(key: String, value: String? = nil) {
            self.key = key
            self.value = value
        }

        enum CodingKeys: String, CodingKey {
            case key = "Key"
            case value = "Value"
        }
    }

    /// 状态统计信息
    public struct StatusStatistic: TCOutputModel {
        /// 任务状态
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let status: UInt64?

        /// 统计总数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let total: UInt64?

        enum CodingKeys: String, CodingKey {
            case status = "Status"
            case total = "Total"
        }
    }

    /// 规则详细信息
    public struct TopicRuleInfo: TCOutputModel {
        /// 规则名称
        public let ruleName: String

        /// 规则描述
        public let description: String

        /// 创建时间
        public let createdAt: UInt64

        /// 不生效
        public let ruleDisabled: Bool

        /// 规则模式
        public let topicPattern: String

        enum CodingKeys: String, CodingKey {
            case ruleName = "RuleName"
            case description = "Description"
            case createdAt = "CreatedAt"
            case ruleDisabled = "RuleDisabled"
            case topicPattern = "TopicPattern"
        }
    }

    /// 创建规则请求包体
    public struct TopicRulePayload: TCInputModel {
        /// 规则的SQL语句，如： SELECT * FROM 'pid/dname/event'，然后对其进行base64编码，得：U0VMRUNUICogRlJPTSAncGlkL2RuYW1lL2V2ZW50Jw==
        public let sql: String

        /// 行为的JSON字符串，大部分种类举例如下：
        /// [
        ///     {
        ///         "republish": {
        ///             "topic": "TEST/test"
        ///         }
        ///     },
        ///     {
        ///         "forward": {
        ///             "api": "http://127.0.0.1:8080",
        ///             "token":"xxx"
        ///         }
        ///     },
        ///     {
        ///         "ckafka": {
        ///             "instance": {
        ///                 "id": "ckafka-test",
        ///                 "name": ""
        ///             },
        ///             "topic": {
        ///                 "id": "topic-test",
        ///                 "name": "test"
        ///             },
        ///             "region": "gz"
        ///         }
        ///     },
        ///     {
        ///         "cmqqueue": {
        ///             "queuename": "queue-test-TEST",
        ///             "region": "gz"
        ///         }
        ///     },
        ///     {
        ///         "mysql": {
        ///             "instanceid": "cdb-test",
        ///             "region": "gz",
        ///             "username": "test",
        ///             "userpwd": "*****",
        ///             "dbname": "d_mqtt",
        ///             "tablename": "t_test",
        ///             "fieldpairs": [
        ///                 {
        ///                     "field": "test",
        ///                     "value": "test"
        ///                 }
        ///             ],
        ///             "devicetype": "CUSTOM"
        ///         }
        ///     }
        /// ]
        public let actions: String?

        /// 规则描述
        public let description: String?

        /// 是否禁用规则
        public let ruleDisabled: Bool?

        public init(sql: String, actions: String? = nil, description: String? = nil, ruleDisabled: Bool? = nil) {
            self.sql = sql
            self.actions = actions
            self.description = description
            self.ruleDisabled = ruleDisabled
        }

        enum CodingKeys: String, CodingKey {
            case sql = "Sql"
            case actions = "Actions"
            case description = "Description"
            case ruleDisabled = "RuleDisabled"
        }
    }
}
