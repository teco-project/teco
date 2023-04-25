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

// Test PR teco-project/teco-code-generator#23.

import TecoCore

extension Apm {
    /// APM浮点数类型键值对
    public struct APMKV: TCOutputModel {
        /// Key值定义
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let key: String?

        /// Value值定义
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let value: Float?

        enum CodingKeys: String, CodingKey {
            case key = "Key"
            case value = "Value"
        }
    }

    /// Apm通用KV结构
    public struct APMKVItem: TCOutputModel {
        /// Key值定义
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let key: String?

        /// Value值定义
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let value: String?

        enum CodingKeys: String, CodingKey {
            case key = "Key"
            case value = "Value"
        }
    }

    /// apm Agent信息
    public struct ApmAgentInfo: TCOutputModel {
        /// Agent下载地址
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let agentDownloadURL: String?

        /// Collector上报地址
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let collectorURL: String?

        /// Token信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let token: String?

        /// 外网上报地址
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let publicCollectorURL: String?

        /// 自研VPC上报地址
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let innerCollectorURL: String?

        /// 内网上报地址(Private Link上报地址)
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let privateLinkCollectorURL: String?

        enum CodingKeys: String, CodingKey {
            case agentDownloadURL = "AgentDownloadURL"
            case collectorURL = "CollectorURL"
            case token = "Token"
            case publicCollectorURL = "PublicCollectorURL"
            case innerCollectorURL = "InnerCollectorURL"
            case privateLinkCollectorURL = "PrivateLinkCollectorURL"
        }
    }

    /// 指标维度信息
    public struct ApmField: TCOutputModel {
        /// 昨日同比指标值，已弃用，不建议使用
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let compareVal: String?

        /// Compare值结果数组，推荐使用
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let compareVals: [APMKVItem]?

        /// 指标值
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let value: Float?

        /// 指标所对应的单位
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let unit: String?

        /// 请求数
        public let key: String

        /// 同环比上周期具体数值
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let lastPeriodValue: [APMKV]?

        enum CodingKeys: String, CodingKey {
            case compareVal = "CompareVal"
            case compareVals = "CompareVals"
            case value = "Value"
            case unit = "Unit"
            case key = "Key"
            case lastPeriodValue = "LastPeriodValue"
        }
    }

    /// apm实例信息
    public struct ApmInstanceDetail: TCOutputModel {
        /// 存储使用量(MB)
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let amountOfUsedStorage: Float?

        /// 实例名
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let name: String?

        /// 实例所属tag列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let tags: [ApmTag]?

        /// 实例ID
        public let instanceId: String

        /// 创建人Uin
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let createUin: String?

        /// 该实例已上报的服务端应用数量
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let serviceCount: Int64?

        /// 日均上报Span数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let countOfReportSpanPerDay: Int64?

        /// AppId信息
        public let appId: Int64

        /// Trace数据保存时长
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let traceDuration: Int64?

        /// 实例描述信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let description: String?

        /// 实例状态
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let status: Int64?

        /// 实例所属地域
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let region: String?

        /// 实例上报额度
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let spanDailyCounters: Int64?

        /// 实例是否开通计费
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let billingInstance: Int64?

        /// 错误率阈值
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let errRateThreshold: Int64?

        /// 采样率阈值
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let sampleRate: Int64?

        /// 是否开启错误采样 0  关 1 开
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let errorSample: Int64?

        /// 慢调用保存阈值
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let slowRequestSavedThreshold: Int64?

        /// cls日志所在地域
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let logRegion: String?

        /// 日志来源
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let logSource: String?

        /// 日志功能开关 0 关 | 1 开
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let isRelatedLog: Int64?

        /// 日志主题ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let logTopicID: String?

        /// 该实例已上报的客户端应用数量
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let clientCount: Int64?

        /// 该实例已上报的总应用数量
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let totalCount: Int64?

        enum CodingKeys: String, CodingKey {
            case amountOfUsedStorage = "AmountOfUsedStorage"
            case name = "Name"
            case tags = "Tags"
            case instanceId = "InstanceId"
            case createUin = "CreateUin"
            case serviceCount = "ServiceCount"
            case countOfReportSpanPerDay = "CountOfReportSpanPerDay"
            case appId = "AppId"
            case traceDuration = "TraceDuration"
            case description = "Description"
            case status = "Status"
            case region = "Region"
            case spanDailyCounters = "SpanDailyCounters"
            case billingInstance = "BillingInstance"
            case errRateThreshold = "ErrRateThreshold"
            case sampleRate = "SampleRate"
            case errorSample = "ErrorSample"
            case slowRequestSavedThreshold = "SlowRequestSavedThreshold"
            case logRegion = "LogRegion"
            case logSource = "LogSource"
            case isRelatedLog = "IsRelatedLog"
            case logTopicID = "LogTopicID"
            case clientCount = "ClientCount"
            case totalCount = "TotalCount"
        }
    }

    /// 指标列表单元
    public struct ApmMetricRecord: TCOutputModel {
        /// field数组
        public let fields: [ApmField]

        /// tag数组
        public let tags: [ApmTag]

        enum CodingKeys: String, CodingKey {
            case fields = "Fields"
            case tags = "Tags"
        }
    }

    /// 维度（标签）对象
    public struct ApmTag: TCInputModel, TCOutputModel {
        /// 维度Key(列名，标签Key)
        public let key: String

        /// 维度值（标签值）
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

    /// 查询过滤参数
    public struct Filter: TCInputModel {
        /// 过滤方式（=, !=, in）
        public let type: String

        /// 过滤维度名
        public let key: String

        /// 过滤值，in过滤方式用逗号分割多个值
        public let value: String

        public init(type: String, key: String, value: String) {
            self.type = type
            self.key = key
            self.value = value
        }

        enum CodingKeys: String, CodingKey {
            case type = "Type"
            case key = "Key"
            case value = "Value"
        }
    }

    /// 查询过滤参数
    public struct GeneralFilter: TCInputModel {
        /// 过滤维度名
        public let key: String

        /// 过滤值
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

    /// 指标曲线数据
    public struct Line: TCOutputModel {
        /// 指标名
        public let metricName: String

        /// 指标中文名
        public let metricNameCN: String

        /// 时间序列
        public let timeSerial: [Int64]

        /// 数据序列
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let dataSerial: [Float]?

        /// 维度列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let tags: [ApmTag]?

        enum CodingKeys: String, CodingKey {
            case metricName = "MetricName"
            case metricNameCN = "MetricNameCN"
            case timeSerial = "TimeSerial"
            case dataSerial = "DataSerial"
            case tags = "Tags"
        }
    }

    /// sql排序字段
    public struct OrderBy: TCInputModel {
        /// 需要排序的字段
        public let key: String

        /// 顺序排序/倒序排序
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

    /// 查询
    public struct QueryMetricItem: TCInputModel {
        /// 指标名
        public let metricName: String

        /// 同比，已弃用，不建议使用
        public let compare: String?

        /// 同比，支持多种同比方式
        public let compares: [String]?

        public init(metricName: String, compare: String? = nil, compares: [String]? = nil) {
            self.metricName = metricName
            self.compare = compare
            self.compares = compares
        }

        enum CodingKeys: String, CodingKey {
            case metricName = "MetricName"
            case compare = "Compare"
            case compares = "Compares"
        }
    }
}
