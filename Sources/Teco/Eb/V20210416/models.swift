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

extension Eb {
    /// APIGWParams描述
    public struct APIGWParams: TCInputModel, TCOutputModel {
        /// HTTPS
        public let `protocol`: String

        /// POST
        public let method: String

        public init(protocol: String, method: String) {
            self.`protocol` = `protocol`
            self.method = method
        }

        enum CodingKeys: String, CodingKey {
            case `protocol` = "Protocol"
            case method = "Method"
        }
    }

    /// 用来描述需要投递到kafka topic的参数
    public struct CkafkaDeliveryParams: TCInputModel, TCOutputModel {
        /// ckafka topic name
        public let topicName: String

        /// ckafka资源qcs六段式
        public let resourceDescription: String

        public init(topicName: String, resourceDescription: String) {
            self.topicName = topicName
            self.resourceDescription = resourceDescription
        }

        enum CodingKeys: String, CodingKey {
            case topicName = "TopicName"
            case resourceDescription = "ResourceDescription"
        }
    }

    /// Ckafka 连接器参数
    public struct CkafkaParams: TCInputModel, TCOutputModel {
        /// kafka offset
        public let offset: String

        /// ckafka  topic
        public let topicName: String

        public init(offset: String, topicName: String) {
            self.offset = offset
            self.topicName = topicName
        }

        enum CodingKeys: String, CodingKey {
            case offset = "Offset"
            case topicName = "TopicName"
        }
    }

    /// 用来描述ckafka投递目标
    public struct CkafkaTargetParams: TCInputModel, TCOutputModel {
        /// 要投递到的ckafka topic
        public let topicName: String

        /// 重试策略
        public let retryPolicy: RetryPolicy

        public init(topicName: String, retryPolicy: RetryPolicy) {
            self.topicName = topicName
            self.retryPolicy = retryPolicy
        }

        enum CodingKeys: String, CodingKey {
            case topicName = "TopicName"
            case retryPolicy = "RetryPolicy"
        }
    }

    /// Connection信息
    public struct Connection: TCOutputModel {
        /// 状态
        public let status: String

        /// 更新时间
        ///
        /// **Important:** This has to be a `var` due to a property wrapper restriction, which is about to be removed in the future.
        /// For discussions, see [Allow Property Wrappers on Let Declarations](https://forums.swift.org/t/pitch-allow-property-wrappers-on-let-declarations/61750).
        ///
        /// Although mutating this property is possible for now, it may become a `let` variable at any time. Please don't rely on such behavior.
        @TCTimestampISO8601Encoding public var modTime: Date

        /// 使能开关
        public let enable: Bool

        /// 描述
        public let description: String

        /// 创建时间
        ///
        /// **Important:** This has to be a `var` due to a property wrapper restriction, which is about to be removed in the future.
        /// For discussions, see [Allow Property Wrappers on Let Declarations](https://forums.swift.org/t/pitch-allow-property-wrappers-on-let-declarations/61750).
        ///
        /// Although mutating this property is possible for now, it may become a `let` variable at any time. Please don't rely on such behavior.
        @TCTimestampISO8601Encoding public var addTime: Date

        /// 连接器ID
        public let connectionId: String

        /// 事件集ID
        public let eventBusId: String

        /// 连接器描述
        public let connectionDescription: ConnectionDescription

        /// 连接器名称
        public let connectionName: String

        /// 类型
        public let type: String

        enum CodingKeys: String, CodingKey {
            case status = "Status"
            case modTime = "ModTime"
            case enable = "Enable"
            case description = "Description"
            case addTime = "AddTime"
            case connectionId = "ConnectionId"
            case eventBusId = "EventBusId"
            case connectionDescription = "ConnectionDescription"
            case connectionName = "ConnectionName"
            case type = "Type"
        }
    }

    /// ConnectionDescription描述
    public struct ConnectionDescription: TCInputModel, TCOutputModel {
        /// 资源qcs六段式，更多参考 [资源六段式](https://cloud.tencent.com/document/product/598/10606)
        public let resourceDescription: String

        /// apigw参数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let apigwParams: APIGWParams?

        /// ckafka参数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let ckafkaParams: CkafkaParams?

        public init(resourceDescription: String, apigwParams: APIGWParams? = nil, ckafkaParams: CkafkaParams? = nil) {
            self.resourceDescription = resourceDescription
            self.apigwParams = apigwParams
            self.ckafkaParams = ckafkaParams
        }

        enum CodingKeys: String, CodingKey {
            case resourceDescription = "ResourceDescription"
            case apigwParams = "APIGWParams"
            case ckafkaParams = "CkafkaParams"
        }
    }

    /// rule对应的dlq配置
    public struct DeadLetterConfig: TCInputModel, TCOutputModel {
        /// 支持dlq、丢弃、忽略错误继续传递三种模式, 分别对应: DLQ,DROP,IGNORE_ERROR
        public let disposeMethod: String

        /// 设置了DLQ方式后,此选项必填. 错误消息会被投递到对应的kafka topic中
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let ckafkaDeliveryParams: CkafkaDeliveryParams?

        public init(disposeMethod: String, ckafkaDeliveryParams: CkafkaDeliveryParams? = nil) {
            self.disposeMethod = disposeMethod
            self.ckafkaDeliveryParams = ckafkaDeliveryParams
        }

        enum CodingKeys: String, CodingKey {
            case disposeMethod = "DisposeMethod"
            case ckafkaDeliveryParams = "CkafkaDeliveryParams"
        }
    }

    /// 描述Es规则目标
    public struct ESTargetParams: TCInputModel {
        /// 网络连接类型
        public let netMode: String

        /// 索引前缀
        public let indexPrefix: String

        /// es日志轮换粒度
        public let rotationInterval: String

        /// DTS事件配置
        public let outputMode: String

        /// DTS索引配置
        public let indexSuffixMode: String

        /// es模版类型
        public let indexTemplateType: String?

        public init(netMode: String, indexPrefix: String, rotationInterval: String, outputMode: String, indexSuffixMode: String, indexTemplateType: String? = nil) {
            self.netMode = netMode
            self.indexPrefix = indexPrefix
            self.rotationInterval = rotationInterval
            self.outputMode = outputMode
            self.indexSuffixMode = indexSuffixMode
            self.indexTemplateType = indexTemplateType
        }

        enum CodingKeys: String, CodingKey {
            case netMode = "NetMode"
            case indexPrefix = "IndexPrefix"
            case rotationInterval = "RotationInterval"
            case outputMode = "OutputMode"
            case indexSuffixMode = "IndexSuffixMode"
            case indexTemplateType = "IndexTemplateType"
        }
    }

    /// 描述如何过滤数据
    public struct EtlFilter: TCInputModel, TCOutputModel {
        /// 语法Rule规则保持一致
        public let filter: String

        public init(filter: String) {
            self.filter = filter
        }

        enum CodingKeys: String, CodingKey {
            case filter = "Filter"
        }
    }

    /// eb event信息
    public struct Event: TCInputModel {
        /// 事件源的信息,新产品上报必须符合EB的规范
        public let source: String

        /// 事件数据，内容由创建事件的系统来控制，当前datacontenttype仅支持application/json;charset=utf-8，所以该字段是json字符串
        public let data: String

        /// 事件类型，可自定义，选填。云服务默认写 COS:Created:PostObject，用“：”分割类型字段
        public let type: String

        /// 事件来源详细描述，可自定义，选填。云服务默认为标准qcs资源表示语法：qcs::dts:ap-guangzhou:appid/uin:xxx
        public let subject: String

        /// 事件发生的毫秒时间戳，
        /// time.Now().UnixNano()/1e6
        public let time: Int64?

        public init(source: String, data: String, type: String, subject: String, time: Int64? = nil) {
            self.source = source
            self.data = data
            self.type = type
            self.subject = subject
            self.time = time
        }

        enum CodingKeys: String, CodingKey {
            case source = "Source"
            case data = "Data"
            case type = "Type"
            case subject = "Subject"
            case time = "Time"
        }
    }

    /// 事件集信息
    public struct EventBus: TCOutputModel {
        /// 更新时间
        ///
        /// **Important:** This has to be a `var` due to a property wrapper restriction, which is about to be removed in the future.
        /// For discussions, see [Allow Property Wrappers on Let Declarations](https://forums.swift.org/t/pitch-allow-property-wrappers-on-let-declarations/61750).
        ///
        /// Although mutating this property is possible for now, it may become a `let` variable at any time. Please don't rely on such behavior.
        @TCTimestampISO8601Encoding public var modTime: Date

        /// 事件集描述，不限字符类型，200字符描述以内
        public let description: String

        /// 创建时间
        ///
        /// **Important:** This has to be a `var` due to a property wrapper restriction, which is about to be removed in the future.
        /// For discussions, see [Allow Property Wrappers on Let Declarations](https://forums.swift.org/t/pitch-allow-property-wrappers-on-let-declarations/61750).
        ///
        /// Although mutating this property is possible for now, it may become a `let` variable at any time. Please don't rely on such behavior.
        @TCTimestampISO8601Encoding public var addTime: Date

        /// 事件集名称，只能包含字母、数字、下划线、连字符，以字母开头，以数字或字母结尾，2~60个字符
        public let eventBusName: String

        /// 事件集ID
        public let eventBusId: String

        /// 事件集类型
        public let type: String

        enum CodingKeys: String, CodingKey {
            case modTime = "ModTime"
            case description = "Description"
            case addTime = "AddTime"
            case eventBusName = "EventBusName"
            case eventBusId = "EventBusId"
            case type = "Type"
        }
    }

    /// 描述如何提取数据
    public struct Extraction: TCInputModel, TCOutputModel {
        /// JsonPath, 不指定则使用默认值$.
        public let extractionInputPath: String

        /// 取值: TEXT/JSON
        public let format: String

        /// 仅在Text需要传递
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let textParams: TextParams?

        public init(extractionInputPath: String, format: String, textParams: TextParams? = nil) {
            self.extractionInputPath = extractionInputPath
            self.format = format
            self.textParams = textParams
        }

        enum CodingKeys: String, CodingKey {
            case extractionInputPath = "ExtractionInputPath"
            case format = "Format"
            case textParams = "TextParams"
        }
    }

    /// 描述键值对过滤器，用于条件过滤查询。例如过滤ID、名称、状态等
    /// * 若存在多个Filter时，Filter间的关系为逻辑与（AND）关系。
    /// * 若同一个Filter存在多个Values，同一Filter下Values间的关系为逻辑或（OR）关系。
    public struct Filter: TCInputModel {
        /// 一个或者多个过滤值。
        public let values: [String]

        /// 过滤键的名称。
        public let name: String

        public init(values: [String], name: String) {
            self.values = values
            self.name = name
        }

        enum CodingKeys: String, CodingKey {
            case values = "Values"
            case name = "Name"
        }
    }

    /// Transform输出参数
    public struct OutputStructParam: TCInputModel, TCOutputModel {
        /// 对应输出json中的key
        public let key: String

        /// 可以填json-path也可以支持常量或者内置关键字date类型
        public let value: String

        /// value的数据类型, 可选值: STRING, NUMBER,BOOLEAN,NULL,SYS_VARIABLE,JSONPATH
        public let valueType: String

        public init(key: String, value: String, valueType: String) {
            self.key = key
            self.value = value
            self.valueType = valueType
        }

        enum CodingKeys: String, CodingKey {
            case key = "Key"
            case value = "Value"
            case valueType = "ValueType"
        }
    }

    /// 用来描述一个ckafka投递目标的重试策略
    public struct RetryPolicy: TCInputModel, TCOutputModel {
        /// 重试间隔 单位:秒
        public let retryInterval: UInt64

        /// 最大重试次数
        public let maxRetryAttempts: UInt64

        public init(retryInterval: UInt64, maxRetryAttempts: UInt64) {
            self.retryInterval = retryInterval
            self.maxRetryAttempts = maxRetryAttempts
        }

        enum CodingKeys: String, CodingKey {
            case retryInterval = "RetryInterval"
            case maxRetryAttempts = "MaxRetryAttempts"
        }
    }

    /// 规则信息
    public struct Rule: TCOutputModel {
        /// 状态
        public let status: String

        /// 修改时间
        ///
        /// **Important:** This has to be a `var` due to a property wrapper restriction, which is about to be removed in the future.
        /// For discussions, see [Allow Property Wrappers on Let Declarations](https://forums.swift.org/t/pitch-allow-property-wrappers-on-let-declarations/61750).
        ///
        /// Although mutating this property is possible for now, it may become a `let` variable at any time. Please don't rely on such behavior.
        @TCTimestampISO8601Encoding public var modTime: Date

        /// 使能开关
        public let enable: Bool

        /// 描述
        public let description: String

        /// 规则ID
        public let ruleId: String

        /// 创建时间
        ///
        /// **Important:** This has to be a `var` due to a property wrapper restriction, which is about to be removed in the future.
        /// For discussions, see [Allow Property Wrappers on Let Declarations](https://forums.swift.org/t/pitch-allow-property-wrappers-on-let-declarations/61750).
        ///
        /// Although mutating this property is possible for now, it may become a `let` variable at any time. Please don't rely on such behavior.
        @TCTimestampISO8601Encoding public var addTime: Date

        /// 事件集ID
        public let eventBusId: String

        /// 规则名称
        public let ruleName: String

        /// Target 简要信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let targets: [TargetBrief]?

        /// rule设置的dlq规则. 可能为null
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let deadLetterConfig: DeadLetterConfig?

        enum CodingKeys: String, CodingKey {
            case status = "Status"
            case modTime = "ModTime"
            case enable = "Enable"
            case description = "Description"
            case ruleId = "RuleId"
            case addTime = "AddTime"
            case eventBusId = "EventBusId"
            case ruleName = "RuleName"
            case targets = "Targets"
            case deadLetterConfig = "DeadLetterConfig"
        }
    }

    /// 云函数参数
    public struct SCFParams: TCInputModel {
        /// 批量投递最长等待时间
        public let batchTimeout: Int64?

        /// 批量投递最大事件条数
        public let batchEventCount: Int64?

        /// 开启批量投递使能
        public let enableBatchDelivery: Bool?

        public init(batchTimeout: Int64? = nil, batchEventCount: Int64? = nil, enableBatchDelivery: Bool? = nil) {
            self.batchTimeout = batchTimeout
            self.batchEventCount = batchEventCount
            self.enableBatchDelivery = enableBatchDelivery
        }

        enum CodingKeys: String, CodingKey {
            case batchTimeout = "BatchTimeout"
            case batchEventCount = "BatchEventCount"
            case enableBatchDelivery = "EnableBatchDelivery"
        }
    }

    /// Target信息
    public struct Target: TCOutputModel {
        /// 目标类型
        public let type: String

        /// 事件集ID
        public let eventBusId: String

        /// 目标ID
        public let targetId: String

        /// 目标描述
        public let targetDescription: TargetDescription

        /// 事件规则ID
        public let ruleId: String

        /// 开启批量投递使能
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let enableBatchDelivery: Bool?

        /// 批量投递最长等待时间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let batchTimeout: Int64?

        /// 批量投递最大事件条数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let batchEventCount: Int64?

        enum CodingKeys: String, CodingKey {
            case type = "Type"
            case eventBusId = "EventBusId"
            case targetId = "TargetId"
            case targetDescription = "TargetDescription"
            case ruleId = "RuleId"
            case enableBatchDelivery = "EnableBatchDelivery"
            case batchTimeout = "BatchTimeout"
            case batchEventCount = "BatchEventCount"
        }
    }

    /// 目标简要信息
    public struct TargetBrief: TCOutputModel {
        /// 目标ID
        public let targetId: String

        /// 目标类型
        public let type: String

        enum CodingKeys: String, CodingKey {
            case targetId = "TargetId"
            case type = "Type"
        }
    }

    /// TargetDescription描述
    public struct TargetDescription: TCInputModel, TCOutputModel {
        /// QCS资源六段式，更多参考 [资源六段式](https://cloud.tencent.com/document/product/598/10606)
        public let resourceDescription: String

        /// 云函数参数
        public let scfParams: SCFParams?

        /// Ckafka参数
        public let ckafkaTargetParams: CkafkaTargetParams?

        /// ElasticSearch参数
        public let esTargetParams: ESTargetParams?

        public init(resourceDescription: String, scfParams: SCFParams? = nil, ckafkaTargetParams: CkafkaTargetParams? = nil, esTargetParams: ESTargetParams? = nil) {
            self.resourceDescription = resourceDescription
            self.scfParams = scfParams
            self.ckafkaTargetParams = ckafkaTargetParams
            self.esTargetParams = esTargetParams
        }

        enum CodingKeys: String, CodingKey {
            case resourceDescription = "ResourceDescription"
            case scfParams = "SCFParams"
            case ckafkaTargetParams = "CkafkaTargetParams"
            case esTargetParams = "ESTargetParams"
        }
    }

    /// 描述如何切分数据
    public struct TextParams: TCInputModel, TCOutputModel {
        /// 逗号、| 、制表符、空格、换行符、%、#，限制长度为 1。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let separator: String?

        /// 填写正则表达式：长度128
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let regex: String?

        public init(separator: String? = nil, regex: String? = nil) {
            self.separator = separator
            self.regex = regex
        }

        enum CodingKeys: String, CodingKey {
            case separator = "Separator"
            case regex = "Regex"
        }
    }

    /// 描述如何数据转换
    public struct Transform: TCInputModel, TCOutputModel {
        /// 描述如何数据转换
        public let outputStructs: [OutputStructParam]

        public init(outputStructs: [OutputStructParam]) {
            self.outputStructs = outputStructs
        }

        enum CodingKeys: String, CodingKey {
            case outputStructs = "OutputStructs"
        }
    }

    /// 一个转换器
    public struct Transformation: TCInputModel, TCOutputModel {
        /// 描述如何提取数据
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let extraction: Extraction?

        /// 描述如何过滤数据
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let etlFilter: EtlFilter?

        /// 描述如何数据转换
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let transform: Transform?

        public init(extraction: Extraction? = nil, etlFilter: EtlFilter? = nil, transform: Transform? = nil) {
            self.extraction = extraction
            self.etlFilter = etlFilter
            self.transform = transform
        }

        enum CodingKeys: String, CodingKey {
            case extraction = "Extraction"
            case etlFilter = "EtlFilter"
            case transform = "Transform"
        }
    }
}
