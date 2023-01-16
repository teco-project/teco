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

@_exported import struct Foundation.Date
import TecoDateHelpers

extension Iot {
    /// 规则引擎转发动作
    public struct Action: TCInputModel, TCOutputModel {
        /// 转发至topic
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let topic: TopicAction?

        /// 转发至第三发
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let service: ServiceAction?

        /// 转发至第三发Ckafka
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let ckafka: CkafkaAction?

        public init(topic: TopicAction? = nil, service: ServiceAction? = nil, ckafka: CkafkaAction? = nil) {
            self.topic = topic
            self.service = service
            self.ckafka = ckafka
        }

        enum CodingKeys: String, CodingKey {
            case topic = "Topic"
            case service = "Service"
            case ckafka = "Ckafka"
        }
    }

    /// 绑定设备
    public struct AppDevice: TCOutputModel {
        /// 设备Id
        public let deviceId: String

        /// 所属产品Id
        public let productId: String

        /// 设备名称
        public let deviceName: String

        /// 别名
        public let aliasName: String

        /// 地区
        public let region: String

        /// 创建时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var createTime: Date

        /// 更新时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var updateTime: Date

        enum CodingKeys: String, CodingKey {
            case deviceId = "DeviceId"
            case productId = "ProductId"
            case deviceName = "DeviceName"
            case aliasName = "AliasName"
            case region = "Region"
            case createTime = "CreateTime"
            case updateTime = "UpdateTime"
        }
    }

    /// 绑定设备详情
    public struct AppDeviceDetail: TCOutputModel {
        /// 设备Id
        public let deviceId: String

        /// 所属产品Id
        public let productId: String

        /// 设备名称
        public let deviceName: String

        /// 别名
        public let aliasName: String

        /// 地区
        public let region: String

        /// 创建时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var createTime: Date

        /// 更新时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var updateTime: Date

        /// 设备信息（json）
        public let deviceInfo: String

        /// 数据模板
        public let dataTemplate: [DataTemplate]

        enum CodingKeys: String, CodingKey {
            case deviceId = "DeviceId"
            case productId = "ProductId"
            case deviceName = "DeviceName"
            case aliasName = "AliasName"
            case region = "Region"
            case createTime = "CreateTime"
            case updateTime = "UpdateTime"
            case deviceInfo = "DeviceInfo"
            case dataTemplate = "DataTemplate"
        }
    }

    /// 应用用户
    public struct AppUser: TCOutputModel {
        /// 应用Id
        public let applicationId: String

        /// 用户名
        public let userName: String

        /// 昵称
        public let nickName: String

        /// 创建时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCDateEncoding public var createTime: Date

        /// 修改时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCDateEncoding public var updateTime: Date

        enum CodingKeys: String, CodingKey {
            case applicationId = "ApplicationId"
            case userName = "UserName"
            case nickName = "NickName"
            case createTime = "CreateTime"
            case updateTime = "UpdateTime"
        }
    }

    /// 布尔类型数据
    public struct BoolData: TCInputModel, TCOutputModel {
        /// 名称
        public let name: String

        /// 描述
        public let desc: String

        /// 读写模式
        public let mode: String

        /// 取值列表
        public let range: [Bool]

        public init(name: String, desc: String, mode: String, range: [Bool]) {
            self.name = name
            self.desc = desc
            self.mode = mode
            self.range = range
        }

        enum CodingKeys: String, CodingKey {
            case name = "Name"
            case desc = "Desc"
            case mode = "Mode"
            case range = "Range"
        }
    }

    /// 转发至Ckafka
    public struct CkafkaAction: TCInputModel, TCOutputModel {
        /// 实例Id
        public let instanceId: String

        /// topic名称
        public let topicName: String

        /// 地域
        public let region: String

        public init(instanceId: String, topicName: String, region: String) {
            self.instanceId = instanceId
            self.topicName = topicName
            self.region = region
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case topicName = "TopicName"
            case region = "Region"
        }
    }

    /// 数据历史条目
    public struct DataHistoryEntry: TCOutputModel {
        /// 日志id
        public let id: String

        /// 时间戳
        public let timestamp: UInt64

        /// 设备名称
        public let deviceName: String

        /// 数据
        public let data: String

        enum CodingKeys: String, CodingKey {
            case id = "Id"
            case timestamp = "Timestamp"
            case deviceName = "DeviceName"
            case data = "Data"
        }
    }

    /// 数据模版
    public struct DataTemplate: TCInputModel, TCOutputModel {
        /// 数字类型
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let number: NumberData?

        /// 字符串类型
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let string: StringData?

        /// 枚举类型
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let `enum`: EnumData?

        /// 布尔类型
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let bool: BoolData?

        public init(number: NumberData? = nil, string: StringData? = nil, enum: EnumData? = nil, bool: BoolData? = nil) {
            self.number = number
            self.string = string
            self.`enum` = `enum`
            self.bool = bool
        }

        enum CodingKeys: String, CodingKey {
            case number = "Number"
            case string = "String"
            case `enum` = "Enum"
            case bool = "Bool"
        }
    }

    /// 设备日志条目
    public struct DebugLogEntry: TCOutputModel {
        /// 日志id
        public let id: String

        /// 行为（事件）
        public let event: String

        /// shadow/action/mqtt, 分别表示：影子/规则引擎/上下线日志
        public let logType: String

        /// 时间戳
        public let timestamp: UInt64

        /// success/fail
        public let result: String

        /// 日志详细内容
        public let data: String

        /// 数据来源topic
        public let topic: String

        /// 设备名称
        public let deviceName: String

        enum CodingKeys: String, CodingKey {
            case id = "Id"
            case event = "Event"
            case logType = "LogType"
            case timestamp = "Timestamp"
            case result = "Result"
            case data = "Data"
            case topic = "Topic"
            case deviceName = "DeviceName"
        }
    }

    /// 设备
    public struct Device: TCOutputModel {
        /// 产品Id
        public let productId: String

        /// 设备名称
        public let deviceName: String

        /// 设备密钥
        public let deviceSecret: String

        /// 更新时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var updateTime: Date

        /// 创建时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var createTime: Date

        /// 设备信息（json）
        public let deviceInfo: String

        enum CodingKeys: String, CodingKey {
            case productId = "ProductId"
            case deviceName = "DeviceName"
            case deviceSecret = "DeviceSecret"
            case updateTime = "UpdateTime"
            case createTime = "CreateTime"
            case deviceInfo = "DeviceInfo"
        }
    }

    /// 设备条目
    public struct DeviceEntry: TCOutputModel {
        /// 产品Id
        public let productId: String

        /// 设备名称
        public let deviceName: String

        /// 设备密钥
        public let deviceSecret: String

        /// 创建时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var createTime: Date

        enum CodingKeys: String, CodingKey {
            case productId = "ProductId"
            case deviceName = "DeviceName"
            case deviceSecret = "DeviceSecret"
            case createTime = "CreateTime"
        }
    }

    /// 设备日志条目
    public struct DeviceLogEntry: TCOutputModel {
        /// 日志id
        public let id: String

        /// 日志内容
        public let msg: String

        /// 状态码
        public let code: String

        /// 时间戳
        public let timestamp: UInt64

        /// 设备名称
        public let deviceName: String

        /// 设备动作
        public let method: String

        enum CodingKeys: String, CodingKey {
            case id = "Id"
            case msg = "Msg"
            case code = "Code"
            case timestamp = "Timestamp"
            case deviceName = "DeviceName"
            case method = "Method"
        }
    }

    /// 设备签名
    public struct DeviceSignature: TCOutputModel {
        /// 设备名称
        public let deviceName: String

        /// 设备签名
        public let deviceSignature: String

        enum CodingKeys: String, CodingKey {
            case deviceName = "DeviceName"
            case deviceSignature = "DeviceSignature"
        }
    }

    /// 设备统计数据
    public struct DeviceStatData: TCOutputModel {
        /// 时间点
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var datetime: Date

        /// 在线设备数
        public let deviceOnline: UInt64

        /// 激活设备数
        public let deviceActive: UInt64

        /// 设备总数
        public let deviceTotal: UInt64

        enum CodingKeys: String, CodingKey {
            case datetime = "Datetime"
            case deviceOnline = "DeviceOnline"
            case deviceActive = "DeviceActive"
            case deviceTotal = "DeviceTotal"
        }
    }

    /// 设备状态
    public struct DeviceStatus: TCOutputModel {
        /// 设备名称
        public let deviceName: String

        /// 设备状态（inactive, online, offline）
        public let status: String

        /// 首次上线时间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var firstOnline: Date?

        /// 最后上线时间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var lastOnline: Date?

        /// 上线次数
        public let onlineTimes: UInt64

        enum CodingKeys: String, CodingKey {
            case deviceName = "DeviceName"
            case status = "Status"
            case firstOnline = "FirstOnline"
            case lastOnline = "LastOnline"
            case onlineTimes = "OnlineTimes"
        }
    }

    /// 枚举类型数据
    public struct EnumData: TCInputModel, TCOutputModel {
        /// 名称
        public let name: String

        /// 描述
        public let desc: String

        /// 读写模式
        public let mode: String

        /// 取值列表
        public let range: [String]

        public init(name: String, desc: String, mode: String, range: [String]) {
            self.name = name
            self.desc = desc
            self.mode = mode
            self.range = range
        }

        enum CodingKeys: String, CodingKey {
            case name = "Name"
            case desc = "Desc"
            case mode = "Mode"
            case range = "Range"
        }
    }

    /// 数字类型数据
    public struct NumberData: TCInputModel, TCOutputModel {
        /// 名称
        public let name: String

        /// 描述
        public let desc: String

        /// 读写模式
        public let mode: String

        /// 取值范围
        public let range: [Float]

        public init(name: String, desc: String, mode: String, range: [Float]) {
            self.name = name
            self.desc = desc
            self.mode = mode
            self.range = range
        }

        enum CodingKeys: String, CodingKey {
            case name = "Name"
            case desc = "Desc"
            case mode = "Mode"
            case range = "Range"
        }
    }

    /// 产品
    public struct Product: TCOutputModel {
        /// 产品Id
        public let productId: String

        /// 产品Key
        public let productKey: String

        /// AppId
        public let appId: UInt64

        /// 产品名称
        public let name: String

        /// 产品描述
        public let description: String

        /// 连接域名
        public let domain: String

        /// 产品规格
        public let standard: UInt64

        /// 鉴权类型（0：直连，1：Token）
        public let authType: UInt64

        /// 删除（0未删除）
        public let deleted: UInt64

        /// 备注
        public let message: String

        /// 创建时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var createTime: Date

        /// 更新时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var updateTime: Date

        /// 数据模版
        public let dataTemplate: [DataTemplate]

        /// 数据协议（native/template）
        public let dataProtocol: String

        /// 直连用户名
        public let username: String

        /// 直连密码
        public let password: String

        /// 通信方式
        public let commProtocol: String

        /// qps
        public let qps: UInt64

        /// 地域
        public let region: String

        /// 产品的设备类型
        public let deviceType: String

        /// 关联的产品列表
        public let associatedProducts: [String]

        enum CodingKeys: String, CodingKey {
            case productId = "ProductId"
            case productKey = "ProductKey"
            case appId = "AppId"
            case name = "Name"
            case description = "Description"
            case domain = "Domain"
            case standard = "Standard"
            case authType = "AuthType"
            case deleted = "Deleted"
            case message = "Message"
            case createTime = "CreateTime"
            case updateTime = "UpdateTime"
            case dataTemplate = "DataTemplate"
            case dataProtocol = "DataProtocol"
            case username = "Username"
            case password = "Password"
            case commProtocol = "CommProtocol"
            case qps = "Qps"
            case region = "Region"
            case deviceType = "DeviceType"
            case associatedProducts = "AssociatedProducts"
        }
    }

    /// 产品条目
    public struct ProductEntry: TCOutputModel {
        /// 产品Id
        public let productId: String

        /// 产品Key
        public let productKey: String

        /// AppId
        public let appId: UInt64

        /// 产品名称
        public let name: String

        /// 产品描述
        public let description: String

        /// 连接域名
        public let domain: String

        /// 鉴权类型（0：直连，1：Token）
        public let authType: UInt64

        /// 数据协议（native/template）
        public let dataProtocol: String

        /// 删除（0未删除）
        public let deleted: UInt64

        /// 备注
        public let message: String

        /// 创建时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var createTime: Date

        /// 通信方式
        public let commProtocol: String

        /// 地域
        public let region: String

        /// 设备类型
        public let deviceType: String

        enum CodingKeys: String, CodingKey {
            case productId = "ProductId"
            case productKey = "ProductKey"
            case appId = "AppId"
            case name = "Name"
            case description = "Description"
            case domain = "Domain"
            case authType = "AuthType"
            case dataProtocol = "DataProtocol"
            case deleted = "Deleted"
            case message = "Message"
            case createTime = "CreateTime"
            case commProtocol = "CommProtocol"
            case region = "Region"
            case deviceType = "DeviceType"
        }
    }

    /// 规则
    public struct Rule: TCOutputModel {
        /// 规则Id
        public let ruleId: String

        /// AppId
        public let appId: UInt64

        /// 名称
        public let name: String

        /// 描述
        public let description: String

        /// 查询
        public let query: RuleQuery

        /// 转发
        public let actions: [Action]

        /// 已启动
        public let active: UInt64

        /// 已删除
        public let deleted: UInt64

        /// 创建时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var createTime: Date

        /// 更新时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var updateTime: Date

        /// 消息顺序
        public let msgOrder: UInt64

        /// 数据类型（0：文本，1：二进制）
        public let dataType: UInt64

        enum CodingKeys: String, CodingKey {
            case ruleId = "RuleId"
            case appId = "AppId"
            case name = "Name"
            case description = "Description"
            case query = "Query"
            case actions = "Actions"
            case active = "Active"
            case deleted = "Deleted"
            case createTime = "CreateTime"
            case updateTime = "UpdateTime"
            case msgOrder = "MsgOrder"
            case dataType = "DataType"
        }
    }

    /// 查询
    public struct RuleQuery: TCInputModel, TCOutputModel {
        /// 字段
        public let field: String

        /// 过滤规则
        public let condition: String

        /// Topic
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let topic: String?

        /// 产品Id
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let productId: String?

        public init(field: String, condition: String, topic: String? = nil, productId: String? = nil) {
            self.field = field
            self.condition = condition
            self.topic = topic
            self.productId = productId
        }

        enum CodingKeys: String, CodingKey {
            case field = "Field"
            case condition = "Condition"
            case topic = "Topic"
            case productId = "ProductId"
        }
    }

    /// 转发到第三方http(s)服务
    public struct ServiceAction: TCInputModel, TCOutputModel {
        /// 服务url地址
        public let url: String

        public init(url: String) {
            self.url = url
        }

        enum CodingKeys: String, CodingKey {
            case url = "Url"
        }
    }

    /// 数字类型数据
    public struct StringData: TCInputModel, TCOutputModel {
        /// 名称
        public let name: String

        /// 描述
        public let desc: String

        /// 读写模式
        public let mode: String

        /// 长度范围
        public let range: [UInt64]

        public init(name: String, desc: String, mode: String, range: [UInt64]) {
            self.name = name
            self.desc = desc
            self.mode = mode
            self.range = range
        }

        enum CodingKeys: String, CodingKey {
            case name = "Name"
            case desc = "Desc"
            case mode = "Mode"
            case range = "Range"
        }
    }

    /// Topic
    public struct Topic: TCOutputModel {
        /// TopicId
        public let topicId: String

        /// Topic名称
        public let topicName: String

        /// 产品Id
        public let productId: String

        /// 消息最大生命周期
        public let msgLife: UInt64

        /// 消息最大大小
        public let msgSize: UInt64

        /// 消息最大数量
        public let msgCount: UInt64

        /// 已删除
        public let deleted: UInt64

        /// Topic完整路径
        public let path: String

        /// 创建时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var createTime: Date

        /// 更新时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var updateTime: Date

        enum CodingKeys: String, CodingKey {
            case topicId = "TopicId"
            case topicName = "TopicName"
            case productId = "ProductId"
            case msgLife = "MsgLife"
            case msgSize = "MsgSize"
            case msgCount = "MsgCount"
            case deleted = "Deleted"
            case path = "Path"
            case createTime = "CreateTime"
            case updateTime = "UpdateTime"
        }
    }

    /// 转发到topic动作
    public struct TopicAction: TCInputModel, TCOutputModel {
        /// 目标topic
        public let topic: String

        public init(topic: String) {
            self.topic = topic
        }

        enum CodingKeys: String, CodingKey {
            case topic = "Topic"
        }
    }
}
