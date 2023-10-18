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

import struct Foundation.Date
import TecoCore
import TecoDateHelpers

extension Dbbrain {
    /// 联系人contact描述。
    public struct ContactItem: TCOutputModel {
        /// 联系人id。
        public let id: Int64

        /// 联系人姓名。
        public let name: String

        /// 联系人绑定的邮箱。
        public let mail: String

        enum CodingKeys: String, CodingKey {
            case id = "Id"
            case name = "Name"
            case mail = "Mail"
        }
    }

    /// 实例诊断历史事件
    public struct DiagHistoryEventItem: TCOutputModel {
        /// 诊断类型。
        public let diagType: String

        /// 结束时间。
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the underlying
        /// string value (through `$endTime`) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var endTime: Date

        /// 开始时间。
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the underlying
        /// string value (through `$startTime`) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var startTime: Date

        /// 事件 ID 。
        public let eventId: Int64

        /// 严重程度。严重程度分为5级，按影响程度从高至低分别为：1：致命，2：严重，3：告警，4：提示，5：健康。
        public let severity: Int64

        /// 概要。
        public let outline: String

        /// 诊断项。
        public let diagItem: String

        /// 实例 ID 。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let instanceId: String?

        /// 保留字段
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let metric: String?

        /// 地域
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let region: String?

        enum CodingKeys: String, CodingKey {
            case diagType = "DiagType"
            case endTime = "EndTime"
            case startTime = "StartTime"
            case eventId = "EventId"
            case severity = "Severity"
            case outline = "Outline"
            case diagItem = "DiagItem"
            case instanceId = "InstanceId"
            case metric = "Metric"
            case region = "Region"
        }
    }

    /// 异常事件信息。
    public struct EventInfo: TCOutputModel {
        /// 事件 ID 。
        public let eventId: Int64

        /// 诊断类型。
        public let diagType: String

        /// 开始时间。
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the underlying
        /// string value (through `$startTime`) in case the synthesized encoding is incorrect.
        @TCTimestampISO8601Encoding public var startTime: Date

        /// 结束时间。
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the underlying
        /// string value (through `$endTime`) in case the synthesized encoding is incorrect.
        @TCTimestampISO8601Encoding public var endTime: Date

        /// 概要。
        public let outline: String

        /// 严重程度。严重程度分为5级，按影响程度从高至低分别为：1：致命，2：严重，3：告警，4：提示，5：健康。
        public let severity: Int64

        /// 扣分。
        public let scoreLost: Int64

        /// 保留字段。
        public let metric: String

        /// 告警数目。
        public let count: Int64

        enum CodingKeys: String, CodingKey {
            case eventId = "EventId"
            case diagType = "DiagType"
            case startTime = "StartTime"
            case endTime = "EndTime"
            case outline = "Outline"
            case severity = "Severity"
            case scoreLost = "ScoreLost"
            case metric = "Metric"
            case count = "Count"
        }
    }

    /// 描述组信息。
    public struct GroupItem: TCOutputModel {
        /// 组id。
        public let id: Int64

        /// 组名称。
        public let name: String

        /// 组成员数量。
        public let memberCount: Int64

        enum CodingKeys: String, CodingKey {
            case id = "Id"
            case name = "Name"
            case memberCount = "MemberCount"
        }
    }

    /// 健康报告任务详情。
    public struct HealthReportTask: TCOutputModel {
        /// 异步任务请求 ID。
        public let asyncRequestId: Int64

        /// 任务的触发来源，支持的取值包括："DAILY_INSPECTION" - 实例巡检；"SCHEDULED" - 定时生成；"MANUAL" - 手动触发。
        public let source: String

        /// 任务完成进度，单位%。
        public let progress: Int64

        /// 任务创建时间。
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the underlying
        /// string value (through `$createTime`) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var createTime: Date

        /// 任务开始执行时间。
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the underlying
        /// string value (through `$startTime`) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var startTime: Date

        /// 任务完成执行时间。
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the underlying
        /// string value (through `$endTime`) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var endTime: Date

        /// 任务所属实例的基础信息。
        public let instanceInfo: InstanceBasicInfo

        /// 健康报告中的健康信息。
        public let healthStatus: HealthStatus

        enum CodingKeys: String, CodingKey {
            case asyncRequestId = "AsyncRequestId"
            case source = "Source"
            case progress = "Progress"
            case createTime = "CreateTime"
            case startTime = "StartTime"
            case endTime = "EndTime"
            case instanceInfo = "InstanceInfo"
            case healthStatus = "HealthStatus"
        }
    }

    /// 获取健康得分返回的详情。
    public struct HealthScoreInfo: TCOutputModel {
        /// 异常详情。
        public let issueTypes: [IssueTypeInfo]

        /// 异常事件总数。
        public let eventsTotalCount: Int64

        /// 健康得分。
        public let healthScore: Int64

        /// 健康等级, 如："HEALTH", "SUB_HEALTH", "RISK", "HIGH_RISK"。
        public let healthLevel: String

        enum CodingKeys: String, CodingKey {
            case issueTypes = "IssueTypes"
            case eventsTotalCount = "EventsTotalCount"
            case healthScore = "HealthScore"
            case healthLevel = "HealthLevel"
        }
    }

    /// 实例健康详情。
    public struct HealthStatus: TCOutputModel {
        /// 健康分数，满分100。
        public let healthScore: Int64

        /// 健康等级，取值包括："HEALTH" - 健康；"SUB_HEALTH" - 亚健康；"RISK"- 危险；"HIGH_RISK" - 高危。
        public let healthLevel: String

        /// 总扣分分数。
        public let scoreLost: Int64

        /// 扣分详情。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let scoreDetails: [ScoreDetail]?

        enum CodingKeys: String, CodingKey {
            case healthScore = "HealthScore"
            case healthLevel = "HealthLevel"
            case scoreLost = "ScoreLost"
            case scoreDetails = "ScoreDetails"
        }
    }

    /// 实例基础信息。
    public struct InstanceBasicInfo: TCOutputModel {
        /// 实例ID。
        public let instanceId: String

        /// 实例名称。
        public let instanceName: String

        /// 实例内网IP。
        public let vip: String

        /// 实例内网Port。
        public let vport: Int64

        /// 实例产品。
        public let product: String

        /// 实例引擎版本。
        public let engineVersion: String

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case instanceName = "InstanceName"
            case vip = "Vip"
            case vport = "Vport"
            case product = "Product"
            case engineVersion = "EngineVersion"
        }
    }

    /// 实例配置。
    public struct InstanceConfs: TCInputModel, TCOutputModel {
        /// 数据库巡检开关, Yes/No。
        public let dailyInspection: String?

        /// 实例概览开关，Yes/No。
        public let overviewDisplay: String?

        /// redis大key分析的自定义分割符，仅redis使用
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let keyDelimiters: [String]?

        public init(dailyInspection: String? = nil, overviewDisplay: String? = nil, keyDelimiters: [String]? = nil) {
            self.dailyInspection = dailyInspection
            self.overviewDisplay = overviewDisplay
            self.keyDelimiters = keyDelimiters
        }

        enum CodingKeys: String, CodingKey {
            case dailyInspection = "DailyInspection"
            case overviewDisplay = "OverviewDisplay"
            case keyDelimiters = "KeyDelimiters"
        }
    }

    /// 查询实例列表，返回实例的相关信息的对象。
    public struct InstanceInfo: TCOutputModel {
        /// 实例ID。
        public let instanceId: String

        /// 实例名称。
        public let instanceName: String

        /// 实例所属地域。
        public let region: String

        /// 健康得分。
        public let healthScore: Int64

        /// 所属产品。
        public let product: String

        /// 异常事件数量。
        public let eventCount: Int64

        /// 实例类型：1:MASTER；2:DR，3：RO，4:SDR。
        public let instanceType: Int64

        /// 核心数。
        public let cpu: Int64

        /// 内存，单位MB。
        public let memory: Int64

        /// 硬盘存储，单位GB。
        public let volume: Int64

        /// 数据库版本。
        public let engineVersion: String

        /// 内网地址。
        public let vip: String

        /// 内网端口。
        public let vport: Int64

        /// 接入来源。
        public let source: String

        /// 分组ID。
        public let groupId: String

        /// 分组组名。
        public let groupName: String

        /// 实例状态：0：发货中；1：运行正常；4：销毁中；5：隔离中。
        public let status: Int64

        /// 子网统一ID。
        public let uniqSubnetId: String

        /// cdb类型。
        public let deployMode: String

        /// cdb实例初始化标志：0：未初始化；1：已初始化。
        public let initFlag: Int64

        /// 任务状态。
        public let taskStatus: Int64

        /// 私有网络统一ID。
        public let uniqVpcId: String

        /// 实例巡检/概览的状态。
        public let instanceConf: InstanceConfs

        /// 资源到期时间。
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the underlying
        /// string value (through `$deadlineTime`) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var deadlineTime: Date

        /// 是否是DBbrain支持的实例。
        public let isSupported: Bool

        /// 实例安全审计日志开启状态：ON： 安全审计开启；OFF： 未开启安全审计。
        public let secAuditStatus: String

        /// 实例审计日志开启状态，ALL_AUDIT： 开启全审计；RULE_AUDIT： 开启规则审计；UNBOUND： 未开启审计。
        public let auditPolicyStatus: String

        /// 实例审计日志运行状态：normal： 运行中； paused： 欠费暂停。
        public let auditRunningStatus: String

        /// 内网vip。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let internalVip: String?

        /// 内网port。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let internalVport: Int64?

        /// 创建时间。
        public let createTime: String?

        /// 所属集群ID（仅对集群数据库产品该字段非空，如TDSQL-C）。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let clusterId: String?

        /// 所属集群名称（仅对集群数据库产品该字段非空，如TDSQL-C）。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let clusterName: String?

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case instanceName = "InstanceName"
            case region = "Region"
            case healthScore = "HealthScore"
            case product = "Product"
            case eventCount = "EventCount"
            case instanceType = "InstanceType"
            case cpu = "Cpu"
            case memory = "Memory"
            case volume = "Volume"
            case engineVersion = "EngineVersion"
            case vip = "Vip"
            case vport = "Vport"
            case source = "Source"
            case groupId = "GroupId"
            case groupName = "GroupName"
            case status = "Status"
            case uniqSubnetId = "UniqSubnetId"
            case deployMode = "DeployMode"
            case initFlag = "InitFlag"
            case taskStatus = "TaskStatus"
            case uniqVpcId = "UniqVpcId"
            case instanceConf = "InstanceConf"
            case deadlineTime = "DeadlineTime"
            case isSupported = "IsSupported"
            case secAuditStatus = "SecAuditStatus"
            case auditPolicyStatus = "AuditPolicyStatus"
            case auditRunningStatus = "AuditRunningStatus"
            case internalVip = "InternalVip"
            case internalVport = "InternalVport"
            case createTime = "CreateTime"
            case clusterId = "ClusterId"
            case clusterName = "ClusterName"
        }
    }

    /// 指标信息。
    public struct IssueTypeInfo: TCOutputModel {
        /// 指标分类：AVAILABILITY：可用性，MAINTAINABILITY：可维护性，PERFORMANCE，性能，RELIABILITY可靠性。
        public let issueType: String

        /// 异常事件。
        public let events: [EventInfo]

        /// 异常事件总数。
        public let totalCount: Int64

        enum CodingKeys: String, CodingKey {
            case issueType = "IssueType"
            case events = "Events"
            case totalCount = "TotalCount"
        }
    }

    /// 邮件发送配置
    public struct MailConfiguration: TCInputModel, TCOutputModel {
        /// 是否开启邮件发送: 0, 否; 1, 是。
        public let sendMail: Int64

        /// 地域配置, 如["ap-guangzhou", "ap-shanghai"]。巡检的邮件发送模版，配置需要发送巡检邮件的地域；订阅的邮件发送模版，配置当前订阅实例的所属地域。
        public let region: [String]

        /// 发送指定的健康等级的报告, 如["HEALTH", "SUB_HEALTH", "RISK", "HIGH_RISK"]。
        public let healthStatus: [String]

        /// 联系人id, 联系人/联系组不能都为空。
        public let contactPerson: [Int64]?

        /// 联系组id, 联系人/联系组不能都为空。
        public let contactGroup: [Int64]?

        public init(sendMail: Int64, region: [String], healthStatus: [String], contactPerson: [Int64]? = nil, contactGroup: [Int64]? = nil) {
            self.sendMail = sendMail
            self.region = region
            self.healthStatus = healthStatus
            self.contactPerson = contactPerson
            self.contactGroup = contactGroup
        }

        enum CodingKeys: String, CodingKey {
            case sendMail = "SendMail"
            case region = "Region"
            case healthStatus = "HealthStatus"
            case contactPerson = "ContactPerson"
            case contactGroup = "ContactGroup"
        }
    }

    /// 监控数据（浮点型）
    public struct MonitorFloatMetric: TCOutputModel {
        /// 指标名称。
        public let metric: String

        /// 指标单位。
        public let unit: String

        /// 指标值。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let values: [Float]?

        enum CodingKeys: String, CodingKey {
            case metric = "Metric"
            case unit = "Unit"
            case values = "Values"
        }
    }

    /// 单位时间间隔内的监控指标数据（浮点型）
    public struct MonitorFloatMetricSeriesData: TCOutputModel {
        /// 监控指标。
        public let series: [MonitorFloatMetric]

        /// 监控指标对应的时间戳。
        public let timestamp: [Int64]

        enum CodingKeys: String, CodingKey {
            case series = "Series"
            case timestamp = "Timestamp"
        }
    }

    /// 监控数据
    public struct MonitorMetric: TCOutputModel {
        /// 指标名称。
        public let metric: String

        /// 指标单位。
        public let unit: String

        /// 指标值。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let values: [Int64]?

        enum CodingKeys: String, CodingKey {
            case metric = "Metric"
            case unit = "Unit"
            case values = "Values"
        }
    }

    /// 单位时间间隔内的监控指标数据
    public struct MonitorMetricSeriesData: TCOutputModel {
        /// 监控指标。
        public let series: [MonitorMetric]

        /// 监控指标对应的时间戳。
        public let timestamp: [Int64]

        enum CodingKeys: String, CodingKey {
            case series = "Series"
            case timestamp = "Timestamp"
        }
    }

    /// 用户配置的信息
    public struct ProfileInfo: TCInputModel, TCOutputModel {
        /// 语言, 如"zh"。
        public let language: String

        /// 邮件模板的内容。
        public let mailConfiguration: MailConfiguration

        public init(language: String, mailConfiguration: MailConfiguration) {
            self.language = language
            self.mailConfiguration = mailConfiguration
        }

        enum CodingKeys: String, CodingKey {
            case language = "Language"
            case mailConfiguration = "MailConfiguration"
        }
    }

    /// SchemaItem数组
    public struct SchemaItem: TCInputModel {
        /// 数据库名称
        public let schema: String

        public init(schema: String) {
            self.schema = schema
        }

        enum CodingKeys: String, CodingKey {
            case schema = "Schema"
        }
    }

    /// 库空间统计数据。
    public struct SchemaSpaceData: TCOutputModel {
        /// 库名。
        public let tableSchema: String

        /// 数据空间（MB）。
        public let dataLength: Float

        /// 索引空间（MB）。
        public let indexLength: Float

        /// 碎片空间（MB）。
        public let dataFree: Float

        /// 总使用空间（MB）。
        public let totalLength: Float

        /// 碎片率（%）。
        public let fragRatio: Float

        /// 行数。
        public let tableRows: Int64

        /// 库中所有表对应的独立物理文件大小加和（MB）。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let physicalFileSize: Float?

        enum CodingKeys: String, CodingKey {
            case tableSchema = "TableSchema"
            case dataLength = "DataLength"
            case indexLength = "IndexLength"
            case dataFree = "DataFree"
            case totalLength = "TotalLength"
            case fragRatio = "FragRatio"
            case tableRows = "TableRows"
            case physicalFileSize = "PhysicalFileSize"
        }
    }

    /// 库空间时序数据
    public struct SchemaSpaceTimeSeries: TCOutputModel {
        /// 库名
        public let tableSchema: String

        /// 单位时间间隔内的空间指标数据。
        public let seriesData: MonitorMetricSeriesData

        enum CodingKeys: String, CodingKey {
            case tableSchema = "TableSchema"
            case seriesData = "SeriesData"
        }
    }

    /// 扣分详情。
    public struct ScoreDetail: TCOutputModel {
        /// 扣分项分类，取值包括：可用性、可维护性、性能及可靠性。
        public let issueType: String

        /// 扣分总分。
        public let scoreLost: Int64

        /// 扣分总分上限。
        public let scoreLostMax: Int64

        /// 扣分项列表。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let items: [ScoreItem]?

        enum CodingKeys: String, CodingKey {
            case issueType = "IssueType"
            case scoreLost = "ScoreLost"
            case scoreLostMax = "ScoreLostMax"
            case items = "Items"
        }
    }

    /// 诊断扣分项。
    public struct ScoreItem: TCOutputModel {
        /// 异常诊断项名称。
        public let diagItem: String

        /// 诊断项分类，取值包括：可用性、可维护性、性能及可靠性。
        public let issueType: String

        /// 健康等级，取值包括：信息、提示、告警、严重、致命。
        public let topSeverity: String

        /// 该异常诊断项出现次数。
        public let count: Int64

        /// 扣分分数。
        public let scoreLost: Int64

        enum CodingKeys: String, CodingKey {
            case diagItem = "DiagItem"
            case issueType = "IssueType"
            case topSeverity = "TopSeverity"
            case count = "Count"
            case scoreLost = "ScoreLost"
        }
    }

    /// 安全审计日志导出任务信息
    public struct SecLogExportTaskInfo: TCOutputModel {
        /// 异步任务Id。
        public let asyncRequestId: UInt64

        /// 任务开始时间。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the underlying
        /// string value (through `$startTime`) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var startTime: Date?

        /// 任务结束时间。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the underlying
        /// string value (through `$endTime`) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var endTime: Date?

        /// 任务创建时间。
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the underlying
        /// string value (through `$createTime`) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var createTime: Date

        /// 任务状态。
        public let status: String

        /// 任务执行进度。
        public let progress: UInt64

        /// 导出日志开始时间。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the underlying
        /// string value (through `$logStartTime`) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var logStartTime: Date?

        /// 导出日志结束时间。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the underlying
        /// string value (through `$logEndTime`) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var logEndTime: Date?

        /// 日志文件总大小，单位KB。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let totalSize: UInt64?

        /// 风险等级列表。0 无风险；1 低风险；2 中风险；3 高风险。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let dangerLevels: [UInt64]?

        enum CodingKeys: String, CodingKey {
            case asyncRequestId = "AsyncRequestId"
            case startTime = "StartTime"
            case endTime = "EndTime"
            case createTime = "CreateTime"
            case status = "Status"
            case progress = "Progress"
            case logStartTime = "LogStartTime"
            case logEndTime = "LogEndTime"
            case totalSize = "TotalSize"
            case dangerLevels = "DangerLevels"
        }
    }

    /// 慢日志来源地址详情。
    public struct SlowLogHost: TCOutputModel {
        /// 来源地址。
        public let userHost: String

        /// 该来源地址的慢日志数目占总数目的比例，单位%。
        public let ratio: Float

        /// 该来源地址的慢日志数目。
        public let count: Int64

        enum CodingKeys: String, CodingKey {
            case userHost = "UserHost"
            case ratio = "Ratio"
            case count = "Count"
        }
    }

    /// 慢日志TopSql
    public struct SlowLogTopSqlItem: TCOutputModel {
        /// sql总锁等待时间
        public let lockTime: Float

        /// 最大锁等待时间
        public let lockTimeMax: Float

        /// 最小锁等待时间
        public let lockTimeMin: Float

        /// 总扫描行数
        public let rowsExamined: Int64

        /// 最大扫描行数
        public let rowsExaminedMax: Int64

        /// 最小扫描行数
        public let rowsExaminedMin: Int64

        /// 总耗时
        public let queryTime: Float

        /// 最大执行时间
        public let queryTimeMax: Float

        /// 最小执行时间
        public let queryTimeMin: Float

        /// 总返回行数
        public let rowsSent: Int64

        /// 最大返回行数
        public let rowsSentMax: Int64

        /// 最小返回行数
        public let rowsSentMin: Int64

        /// 执行次数
        public let execTimes: Int64

        /// sql模板
        public let sqlTemplate: String

        /// 带参数SQL（随机）
        public let sqlText: String

        /// 数据库名
        public let schema: String

        /// 总耗时占比
        public let queryTimeRatio: Float

        /// sql总锁等待时间占比
        public let lockTimeRatio: Float

        /// 总扫描行数占比
        public let rowsExaminedRatio: Float

        /// 总返回行数占比
        public let rowsSentRatio: Float

        /// 平均执行时间
        public let queryTimeAvg: Float

        /// 平均返回行数
        public let rowsSentAvg: Float

        /// 平均锁等待时间
        public let lockTimeAvg: Float

        /// 平均扫描行数
        public let rowsExaminedAvg: Float

        /// SOL模板的MD5值
        public let md5: String?

        enum CodingKeys: String, CodingKey {
            case lockTime = "LockTime"
            case lockTimeMax = "LockTimeMax"
            case lockTimeMin = "LockTimeMin"
            case rowsExamined = "RowsExamined"
            case rowsExaminedMax = "RowsExaminedMax"
            case rowsExaminedMin = "RowsExaminedMin"
            case queryTime = "QueryTime"
            case queryTimeMax = "QueryTimeMax"
            case queryTimeMin = "QueryTimeMin"
            case rowsSent = "RowsSent"
            case rowsSentMax = "RowsSentMax"
            case rowsSentMin = "RowsSentMin"
            case execTimes = "ExecTimes"
            case sqlTemplate = "SqlTemplate"
            case sqlText = "SqlText"
            case schema = "Schema"
            case queryTimeRatio = "QueryTimeRatio"
            case lockTimeRatio = "LockTimeRatio"
            case rowsExaminedRatio = "RowsExaminedRatio"
            case rowsSentRatio = "RowsSentRatio"
            case queryTimeAvg = "QueryTimeAvg"
            case rowsSentAvg = "RowsSentAvg"
            case lockTimeAvg = "LockTimeAvg"
            case rowsExaminedAvg = "RowsExaminedAvg"
            case md5 = "Md5"
        }
    }

    /// 慢日志来源用户详情。
    public struct SlowLogUser: TCOutputModel {
        /// 来源用户名。
        public let userName: String?

        /// 该来源用户名的慢日志数目占总数目的比例，单位%。
        public let ratio: Float?

        /// 该来源用户名的慢日志数目。
        public let count: Int64?

        enum CodingKeys: String, CodingKey {
            case userName = "UserName"
            case ratio = "Ratio"
            case count = "Count"
        }
    }

    /// 库表空间统计数据。
    public struct TableSpaceData: TCOutputModel {
        /// 表名。
        public let tableName: String

        /// 库名。
        public let tableSchema: String

        /// 库表的存储引擎。
        public let engine: String

        /// 数据空间（MB）。
        public let dataLength: Float

        /// 索引空间（MB）。
        public let indexLength: Float

        /// 碎片空间（MB）。
        public let dataFree: Float

        /// 总使用空间（MB）。
        public let totalLength: Float

        /// 碎片率（%）。
        public let fragRatio: Float

        /// 行数。
        public let tableRows: Int64

        /// 表对应的独立物理文件大小（MB）。
        public let physicalFileSize: Float

        enum CodingKeys: String, CodingKey {
            case tableName = "TableName"
            case tableSchema = "TableSchema"
            case engine = "Engine"
            case dataLength = "DataLength"
            case indexLength = "IndexLength"
            case dataFree = "DataFree"
            case totalLength = "TotalLength"
            case fragRatio = "FragRatio"
            case tableRows = "TableRows"
            case physicalFileSize = "PhysicalFileSize"
        }
    }

    /// 库表空间时序数据
    public struct TableSpaceTimeSeries: TCOutputModel {
        /// 表名。
        public let tableName: String

        /// 库名。
        public let tableSchema: String

        /// 库表的存储引擎。
        public let engine: String

        /// 单位时间间隔内的空间指标数据。
        public let seriesData: MonitorFloatMetricSeriesData

        enum CodingKeys: String, CodingKey {
            case tableName = "TableName"
            case tableSchema = "TableSchema"
            case engine = "Engine"
            case seriesData = "SeriesData"
        }
    }

    /// 单位时间间隔内的慢日志统计
    public struct TimeSlice: TCOutputModel {
        /// 总数
        public let count: Int64

        /// 统计开始时间
        public let timestamp: Int64

        enum CodingKeys: String, CodingKey {
            case count = "Count"
            case timestamp = "Timestamp"
        }
    }

    /// 用户配置的相关信息，包括邮件配置。
    public struct UserProfile: TCOutputModel {
        /// 配置的id。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let profileId: String?

        /// 配置类型。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let profileType: String?

        /// 配置级别，"User"或"Instance"。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let profileLevel: String?

        /// 配置名称。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let profileName: String?

        /// 配置详情。
        public let profileInfo: ProfileInfo

        enum CodingKeys: String, CodingKey {
            case profileId = "ProfileId"
            case profileType = "ProfileType"
            case profileLevel = "ProfileLevel"
            case profileName = "ProfileName"
            case profileInfo = "ProfileInfo"
        }
    }
}
