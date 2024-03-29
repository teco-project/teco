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

extension Tat {
    /// 自动化助手客户端信息
    public struct AutomationAgentInfo: TCOutputModel {
        /// 实例ID。
        public let instanceId: String

        /// Agent 版本号。
        public let version: String

        /// 上次心跳时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the underlying
        /// string value (through `$lastHeartbeatTime`) in case the synthesized encoding is incorrect.
        @TCTimestampISO8601Encoding public var lastHeartbeatTime: Date

        /// Agent状态，取值范围：
        /// - Online：在线
        /// - Offline：离线
        public let agentStatus: String

        /// Agent运行环境，取值范围：
        /// - Linux：Linux实例
        /// - Windows：Windows实例
        public let environment: String

        /// Agent 支持的功能列表。
        public let supportFeatures: [String]?

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case version = "Version"
            case lastHeartbeatTime = "LastHeartbeatTime"
            case agentStatus = "AgentStatus"
            case environment = "Environment"
            case supportFeatures = "SupportFeatures"
        }
    }

    /// 命令详情。
    public struct Command: TCOutputModel {
        /// 命令ID。
        public let commandId: String

        /// 命令名称。
        public let commandName: String

        /// 命令描述。
        public let description: String

        /// Base64编码后的命令内容。
        public let content: String

        /// 命令类型。
        public let commandType: String

        /// 命令执行路径。
        public let workingDirectory: String

        /// 命令超时时间。
        public let timeout: UInt64

        /// 命令创建时间。
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the underlying
        /// string value (through `$createdTime`) in case the synthesized encoding is incorrect.
        @TCTimestampISO8601Encoding public var createdTime: Date

        /// 命令更新时间。
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the underlying
        /// string value (through `$updatedTime`) in case the synthesized encoding is incorrect.
        @TCTimestampISO8601Encoding public var updatedTime: Date

        /// 是否启用自定义参数功能。
        public let enableParameter: Bool

        /// 自定义参数的默认取值。
        public let defaultParameters: String

        /// 自定义参数的默认取值。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let defaultParameterConfs: [DefaultParameterConf]?

        /// 命令的结构化描述。公共命令有值，用户命令为空字符串。
        public let formattedDescription: String

        /// 命令创建者。TAT 代表公共命令，USER 代表个人命令。
        public let createdBy: String

        /// 命令关联的标签列表。
        public let tags: [Tag]

        /// 在实例上执行命令的用户名。
        public let username: String

        /// 日志上传的cos bucket 地址。
        public let outputCOSBucketUrl: String

        /// 日志在cos bucket中的目录。
        public let outputCOSKeyPrefix: String

        enum CodingKeys: String, CodingKey {
            case commandId = "CommandId"
            case commandName = "CommandName"
            case description = "Description"
            case content = "Content"
            case commandType = "CommandType"
            case workingDirectory = "WorkingDirectory"
            case timeout = "Timeout"
            case createdTime = "CreatedTime"
            case updatedTime = "UpdatedTime"
            case enableParameter = "EnableParameter"
            case defaultParameters = "DefaultParameters"
            case defaultParameterConfs = "DefaultParameterConfs"
            case formattedDescription = "FormattedDescription"
            case createdBy = "CreatedBy"
            case tags = "Tags"
            case username = "Username"
            case outputCOSBucketUrl = "OutputCOSBucketUrl"
            case outputCOSKeyPrefix = "OutputCOSKeyPrefix"
        }
    }

    /// 命令执行详情。
    public struct CommandDocument: TCOutputModel {
        /// Base64 编码后的执行命令。
        public let content: String

        /// 命令类型。
        public let commandType: String

        /// 超时时间。
        public let timeout: UInt64

        /// 执行路径。
        public let workingDirectory: String

        /// 执行用户。
        public let username: String

        /// 保存输出的 COS Bucket 链接。
        public let outputCOSBucketUrl: String?

        /// 保存输出的文件名称前缀。
        public let outputCOSKeyPrefix: String?

        enum CodingKeys: String, CodingKey {
            case content = "Content"
            case commandType = "CommandType"
            case timeout = "Timeout"
            case workingDirectory = "WorkingDirectory"
            case username = "Username"
            case outputCOSBucketUrl = "OutputCOSBucketUrl"
            case outputCOSKeyPrefix = "OutputCOSKeyPrefix"
        }
    }

    /// 自定义参数。
    public struct DefaultParameterConf: TCInputModel, TCOutputModel {
        /// 参数名。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let parameterName: String?

        /// 参数默认值。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let parameterValue: String?

        /// 参数描述。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let parameterDescription: String?

        public init(parameterName: String, parameterValue: String, parameterDescription: String? = nil) {
            self.parameterName = parameterName
            self.parameterValue = parameterValue
            self.parameterDescription = parameterDescription
        }

        enum CodingKeys: String, CodingKey {
            case parameterName = "ParameterName"
            case parameterValue = "ParameterValue"
            case parameterDescription = "ParameterDescription"
        }
    }

    /// >描述键值对过滤器，用于条件过滤查询。例如过滤ID、名称、状态等
    /// > * 若存在多个`Filter`时，`Filter`间的关系为逻辑与（`AND`）关系。
    /// > * 若同一个`Filter`存在多个`Values`，同一`Filter`下`Values`间的关系为逻辑或（`OR`）关系。
    /// >
    /// > 以[DescribeInstances](https://cloud.tencent.com/document/api/213/15728)接口的`Filter`为例。若我们需要查询可用区（`zone`）为广州一区 ***并且*** 实例计费模式（`instance-charge-type`）为包年包月 ***或者*** 按量计费的实例时，可如下实现：
    /// ```
    /// Filters.0.Name=zone
    /// &Filters.0.Values.0=ap-guangzhou-1
    /// &Filters.1.Name=instance-charge-type
    /// &Filters.1.Values.0=PREPAID
    /// &Filters.1.Values.1=POSTPAID_BY_HOUR
    /// ```
    public struct Filter: TCInputModel {
        /// 需要过滤的字段。
        public let name: String

        /// 字段的过滤值。
        public let values: [String]

        public init(name: String, values: [String]) {
            self.name = name
            self.values = values
        }

        enum CodingKeys: String, CodingKey {
            case name = "Name"
            case values = "Values"
        }
    }

    /// 执行活动详情。
    public struct Invocation: TCOutputModel {
        /// 执行活动ID。
        public let invocationId: String

        /// 命令ID。
        public let commandId: String

        /// 执行任务状态。取值范围：
        /// - PENDING：等待下发
        /// - RUNNING：命令运行中
        /// - SUCCESS：命令成功
        /// - FAILED：命令失败
        /// - TIMEOUT：命令超时
        /// - PARTIAL_FAILED：命令部分失败
        public let invocationStatus: String

        /// 执行任务信息列表。
        public let invocationTaskBasicInfoSet: [InvocationTaskBasicInfo]

        /// 执行活动描述。
        public let description: String

        /// 执行活动开始时间。
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the underlying
        /// string value (through `$startTime`) in case the synthesized encoding is incorrect.
        @TCTimestampISO8601Encoding public var startTime: Date

        /// 执行活动结束时间。
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the underlying
        /// string value (through `$endTime`) in case the synthesized encoding is incorrect.
        @TCTimestampISO8601Encoding public var endTime: Date

        /// 执行活动创建时间。
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the underlying
        /// string value (through `$createdTime`) in case the synthesized encoding is incorrect.
        @TCTimestampISO8601Encoding public var createdTime: Date

        /// 执行活动更新时间。
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the underlying
        /// string value (through `$updatedTime`) in case the synthesized encoding is incorrect.
        @TCTimestampISO8601Encoding public var updatedTime: Date

        /// 自定义参数取值。
        public let parameters: String

        /// 自定义参数的默认取值。
        public let defaultParameters: String

        /// 执行命令的实例类型，取值范围：CVM、LIGHTHOUSE。
        public let instanceKind: String

        /// 在实例上执行命令时使用的用户名。
        public let username: String

        /// 调用来源。
        public let invocationSource: String

        /// base64编码的命令内容
        public let commandContent: String

        /// 命令类型
        public let commandType: String

        /// 执行命令过期时间， 单位秒
        public let timeout: UInt64

        /// 执行命令的工作路径
        public let workingDirectory: String

        /// 日志上传的cos bucket 地址。
        public let outputCOSBucketUrl: String

        /// 日志在cos bucket中的目录。
        public let outputCOSKeyPrefix: String

        enum CodingKeys: String, CodingKey {
            case invocationId = "InvocationId"
            case commandId = "CommandId"
            case invocationStatus = "InvocationStatus"
            case invocationTaskBasicInfoSet = "InvocationTaskBasicInfoSet"
            case description = "Description"
            case startTime = "StartTime"
            case endTime = "EndTime"
            case createdTime = "CreatedTime"
            case updatedTime = "UpdatedTime"
            case parameters = "Parameters"
            case defaultParameters = "DefaultParameters"
            case instanceKind = "InstanceKind"
            case username = "Username"
            case invocationSource = "InvocationSource"
            case commandContent = "CommandContent"
            case commandType = "CommandType"
            case timeout = "Timeout"
            case workingDirectory = "WorkingDirectory"
            case outputCOSBucketUrl = "OutputCOSBucketUrl"
            case outputCOSKeyPrefix = "OutputCOSKeyPrefix"
        }
    }

    /// 执行任务。
    public struct InvocationTask: TCOutputModel {
        /// 执行活动ID。
        public let invocationId: String

        /// 执行任务ID。
        public let invocationTaskId: String

        /// 命令ID。
        public let commandId: String

        /// 执行任务状态。取值范围：
        /// - PENDING：等待下发
        /// - DELIVERING：下发中
        /// - DELIVER_DELAYED：延时下发
        /// - DELIVER_FAILED：下发失败
        /// - START_FAILED：命令启动失败
        /// - RUNNING：命令运行中
        /// - SUCCESS：命令成功
        /// - FAILED：命令执行失败，执行完退出码不为 0
        /// - TIMEOUT：命令超时
        /// - TASK_TIMEOUT：执行任务超时
        /// - CANCELLING：取消中
        /// - CANCELLED：已取消（命令启动前就被取消）
        /// - TERMINATED：已中止（命令执行期间被取消）
        public let taskStatus: String

        /// 实例ID。
        public let instanceId: String

        /// 执行结果。
        public let taskResult: TaskResult

        /// 执行任务开始时间。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the underlying
        /// string value (through `$startTime`) in case the synthesized encoding is incorrect.
        @TCTimestampISO8601Encoding public var startTime: Date?

        /// 执行任务结束时间。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the underlying
        /// string value (through `$endTime`) in case the synthesized encoding is incorrect.
        @TCTimestampISO8601Encoding public var endTime: Date?

        /// 创建时间。
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the underlying
        /// string value (through `$createdTime`) in case the synthesized encoding is incorrect.
        @TCTimestampISO8601Encoding public var createdTime: Date

        /// 更新时间。
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the underlying
        /// string value (through `$updatedTime`) in case the synthesized encoding is incorrect.
        @TCTimestampISO8601Encoding public var updatedTime: Date

        /// 执行任务所执行的命令详情。
        public let commandDocument: CommandDocument

        /// 执行任务失败时的错误信息。
        public let errorInfo: String

        /// 调用来源。
        public let invocationSource: String

        enum CodingKeys: String, CodingKey {
            case invocationId = "InvocationId"
            case invocationTaskId = "InvocationTaskId"
            case commandId = "CommandId"
            case taskStatus = "TaskStatus"
            case instanceId = "InstanceId"
            case taskResult = "TaskResult"
            case startTime = "StartTime"
            case endTime = "EndTime"
            case createdTime = "CreatedTime"
            case updatedTime = "UpdatedTime"
            case commandDocument = "CommandDocument"
            case errorInfo = "ErrorInfo"
            case invocationSource = "InvocationSource"
        }
    }

    /// 执行活动任务简介。
    public struct InvocationTaskBasicInfo: TCOutputModel {
        /// 执行任务ID。
        public let invocationTaskId: String

        /// 执行任务状态。取值范围：
        /// - PENDING：等待下发
        /// - DELIVERING：下发中
        /// - DELIVER_DELAYED：延时下发
        /// - DELIVER_FAILED：下发失败
        /// - START_FAILED：命令启动失败
        /// - RUNNING：命令运行中
        /// - SUCCESS：命令成功
        /// - FAILED：命令执行失败，执行完退出码不为 0
        /// - TIMEOUT：命令超时
        /// - TASK_TIMEOUT：执行任务超时
        /// - CANCELLING：取消中
        /// - CANCELLED：已取消（命令启动前就被取消）
        /// - TERMINATED：已中止（命令执行期间被取消）
        public let taskStatus: String

        /// 实例ID。
        public let instanceId: String

        enum CodingKeys: String, CodingKey {
            case invocationTaskId = "InvocationTaskId"
            case taskStatus = "TaskStatus"
            case instanceId = "InstanceId"
        }
    }

    /// 执行器信息。
    public struct Invoker: TCOutputModel {
        /// 执行器ID。
        public let invokerId: String

        /// 执行器名称。
        public let name: String

        /// 执行器类型。
        public let type: String

        /// 命令ID。
        public let commandId: String

        /// 用户名。
        public let username: String

        /// 自定义参数。
        public let parameters: String

        /// 实例ID列表。
        public let instanceIds: [String]

        /// 执行器是否启用。
        public let enable: Bool

        /// 执行器周期计划。周期执行器会返回此字段。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let scheduleSettings: ScheduleSettings?

        /// 创建时间。
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the underlying
        /// string value (through `$createdTime`) in case the synthesized encoding is incorrect.
        @TCTimestampISO8601Encoding public var createdTime: Date

        /// 修改时间。
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the underlying
        /// string value (through `$updatedTime`) in case the synthesized encoding is incorrect.
        @TCTimestampISO8601Encoding public var updatedTime: Date

        enum CodingKeys: String, CodingKey {
            case invokerId = "InvokerId"
            case name = "Name"
            case type = "Type"
            case commandId = "CommandId"
            case username = "Username"
            case parameters = "Parameters"
            case instanceIds = "InstanceIds"
            case enable = "Enable"
            case scheduleSettings = "ScheduleSettings"
            case createdTime = "CreatedTime"
            case updatedTime = "UpdatedTime"
        }
    }

    /// 执行器执行记录。
    public struct InvokerRecord: TCOutputModel {
        /// 执行器ID。
        public let invokerId: String

        /// 执行时间。
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the underlying
        /// string value (through `$invokeTime`) in case the synthesized encoding is incorrect.
        @TCTimestampISO8601Encoding public var invokeTime: Date

        /// 执行原因。
        public let reason: String

        /// 命令执行ID。
        public let invocationId: String

        /// 触发结果。
        public let result: String

        enum CodingKeys: String, CodingKey {
            case invokerId = "InvokerId"
            case invokeTime = "InvokeTime"
            case reason = "Reason"
            case invocationId = "InvocationId"
            case result = "Result"
        }
    }

    /// 描述单个地域信息
    public struct RegionInfo: TCOutputModel {
        /// 地域名称，例如，ap-guangzhou
        public let region: String

        /// 地域描述，例如: 广州
        public let regionName: String

        /// 地域是否可用状态，AVAILABLE 代表可用
        public let regionState: String

        enum CodingKeys: String, CodingKey {
            case region = "Region"
            case regionName = "RegionName"
            case regionState = "RegionState"
        }
    }

    /// 注册码信息。
    public struct RegisterCodeInfo: TCOutputModel {
        /// 注册码ID。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let registerCodeId: String?

        /// 注册码描述。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let description: String?

        /// 注册实例名称前缀。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let instanceNamePrefix: String?

        /// 该注册码允许注册的实列数目。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let registerLimit: Int64?

        /// 该注册码的过期时间，按照 ISO8601 标准表示，并且使用 UTC 时间。
        /// 格式为： YYYY-MM-DDThh:mm:ssZ。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the underlying
        /// string value (through `$expiredTime`) in case the synthesized encoding is incorrect.
        @TCTimestampISO8601Encoding public var expiredTime: Date?

        /// 该注册码限制tat_agent只能从IpAddressRange所描述公网出口进行注册。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let ipAddressRange: String?

        /// 该注册码是否可用。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let enabled: Bool?

        /// 该注册码已注册数目。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let registeredCount: Int64?

        /// 注册码创建时间，按照 ISO8601 标准表示，并且使用 UTC 时间。
        /// 格式为： YYYY-MM-DDThh:mm:ssZ。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the underlying
        /// string value (through `$createdTime`) in case the synthesized encoding is incorrect.
        @TCTimestampISO8601Encoding public var createdTime: Date?

        /// 注册码最近一次更新时间，按照 ISO8601 标准表示，并且使用 UTC 时间。
        /// 格式为： YYYY-MM-DDThh:mm:ssZ。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the underlying
        /// string value (through `$updatedTime`) in case the synthesized encoding is incorrect.
        @TCTimestampISO8601Encoding public var updatedTime: Date?

        enum CodingKeys: String, CodingKey {
            case registerCodeId = "RegisterCodeId"
            case description = "Description"
            case instanceNamePrefix = "InstanceNamePrefix"
            case registerLimit = "RegisterLimit"
            case expiredTime = "ExpiredTime"
            case ipAddressRange = "IpAddressRange"
            case enabled = "Enabled"
            case registeredCount = "RegisteredCount"
            case createdTime = "CreatedTime"
            case updatedTime = "UpdatedTime"
        }
    }

    /// 注册实例信息。
    public struct RegisterInstanceInfo: TCOutputModel {
        /// 注册码ID。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let registerCodeId: String?

        /// 实例ID。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let instanceId: String?

        /// 实例名。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let instanceName: String?

        /// 机器ID。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let machineId: String?

        /// 系统名。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let systemName: String?

        /// 主机IP。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let hostName: String?

        /// 内网IP。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let localIp: String?

        /// 公钥。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let publicKey: String?

        /// 托管状态。
        /// 返回Online表示实例正在托管，返回Offline表示实例未托管。
        public let status: String?

        /// 创建时间。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the underlying
        /// string value (through `$createdTime`) in case the synthesized encoding is incorrect.
        @TCTimestampISO8601Encoding public var createdTime: Date?

        /// 上次更新时间。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the underlying
        /// string value (through `$updatedTime`) in case the synthesized encoding is incorrect.
        @TCTimestampISO8601Encoding public var updatedTime: Date?

        enum CodingKeys: String, CodingKey {
            case registerCodeId = "RegisterCodeId"
            case instanceId = "InstanceId"
            case instanceName = "InstanceName"
            case machineId = "MachineId"
            case systemName = "SystemName"
            case hostName = "HostName"
            case localIp = "LocalIp"
            case publicKey = "PublicKey"
            case status = "Status"
            case createdTime = "CreatedTime"
            case updatedTime = "UpdatedTime"
        }
    }

    /// 周期执行器设置。
    public struct ScheduleSettings: TCInputModel, TCOutputModel {
        /// 执行策略：
        ///
        /// - ONCE：单次执行
        /// - RECURRENCE：周期执行
        public let policy: String

        /// 触发 Crontab 表达式。Policy 为 RECURRENCE 时，需要指定此字段。Crontab 按北京时间解析。
        public let recurrence: String?

        /// 执行器下次执行时间。Policy 为 ONCE 时，需要指定此字段。
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the underlying
        /// string value (through `$invokeTime`) in case the synthesized encoding is incorrect.
        @TCTimestampISO8601Encoding public var invokeTime: Date?

        public init(policy: String, recurrence: String? = nil, invokeTime: Date? = nil) {
            self.policy = policy
            self.recurrence = recurrence
            self._invokeTime = .init(wrappedValue: invokeTime)
        }

        enum CodingKeys: String, CodingKey {
            case policy = "Policy"
            case recurrence = "Recurrence"
            case invokeTime = "InvokeTime"
        }
    }

    /// 标签
    public struct Tag: TCInputModel, TCOutputModel {
        /// 标签键。
        public let key: String

        /// 标签值。
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

    /// 任务结果。
    public struct TaskResult: TCOutputModel {
        /// 命令执行ExitCode。
        public let exitCode: Int64

        /// Base64编码后的命令输出。最大长度24KB。
        public let output: String

        /// 命令执行开始时间。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the underlying
        /// string value (through `$execStartTime`) in case the synthesized encoding is incorrect.
        @TCTimestampISO8601Encoding public var execStartTime: Date?

        /// 命令执行结束时间。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the underlying
        /// string value (through `$execEndTime`) in case the synthesized encoding is incorrect.
        @TCTimestampISO8601Encoding public var execEndTime: Date?

        /// 命令最终输出被截断的字节数。
        public let dropped: UInt64

        /// 日志在cos中的地址
        public let outputUrl: String

        /// 日志上传cos的错误信息。
        public let outputUploadCOSErrorInfo: String

        enum CodingKeys: String, CodingKey {
            case exitCode = "ExitCode"
            case output = "Output"
            case execStartTime = "ExecStartTime"
            case execEndTime = "ExecEndTime"
            case dropped = "Dropped"
            case outputUrl = "OutputUrl"
            case outputUploadCOSErrorInfo = "OutputUploadCOSErrorInfo"
        }
    }
}
