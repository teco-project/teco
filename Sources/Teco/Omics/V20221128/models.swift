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

extension Omics {
    /// 云服务器配置。
    public struct CVMOption: TCInputModel {
        /// 云服务器可用区。
        public let zone: String?

        /// 云服务器实例规格。
        public let instanceType: String?

        public init(zone: String, instanceType: String) {
            self.zone = zone
            self.instanceType = instanceType
        }

        enum CodingKeys: String, CodingKey {
            case zone = "Zone"
            case instanceType = "InstanceType"
        }
    }

    /// 计算集群配置。
    public struct ClusterOption: TCInputModel {
        /// 计算集群可用区。
        public let zone: String?

        /// 计算集群类型，取值范围：
        /// - KUBERNETES
        public let type: String?

        public init(zone: String, type: String) {
            self.zone = zone
            self.type = type
        }

        enum CodingKeys: String, CodingKey {
            case zone = "Zone"
            case type = "Type"
        }
    }

    /// 数据库配置。
    public struct DatabaseOption: TCInputModel {
        /// 数据库可用区。
        public let zone: String?

        public init(zone: String) {
            self.zone = zone
        }

        enum CodingKeys: String, CodingKey {
            case zone = "Zone"
        }
    }

    /// 组学平台环境详情。
    public struct Environment: TCOutputModel {
        /// 环境ID。
        public let environmentId: String?

        /// 环境名称。
        public let name: String?

        /// 环境描述信息。
        public let description: String?

        /// 环境地域。
        public let region: String?

        /// 环境类型，取值范围：
        /// - KUBERNETES：Kubernetes容器集群
        /// - HPC：HPC高性能计算集群
        public let type: String?

        /// 环境状态，取值范围：
        /// - INITIALIZING：创建中
        /// - INITIALIZATION_ERROR：创建失败
        /// - RUNNING：运行中
        /// - ERROR：异常
        /// - DELETING：正在删除
        /// - DELETE_ERROR：删除失败
        public let status: String?

        /// 环境是否可用。环境需要可用才能投递计算任务。
        public let available: Bool?

        /// 环境信息。
        public let message: String?

        /// 云资源ID。
        public let resourceIds: ResourceIds?

        /// 上个工作流UUID。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let lastWorkflowUuid: String?

        /// 创建时间。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the underlying
        /// string value (through `$creationTime`) in case the synthesized encoding is incorrect.
        @TCTimestampISO8601Encoding public var creationTime: Date?

        enum CodingKeys: String, CodingKey {
            case environmentId = "EnvironmentId"
            case name = "Name"
            case description = "Description"
            case region = "Region"
            case type = "Type"
            case status = "Status"
            case available = "Available"
            case message = "Message"
            case resourceIds = "ResourceIds"
            case lastWorkflowUuid = "LastWorkflowUuid"
            case creationTime = "CreationTime"
        }
    }

    /// 环境配置。
    public struct EnvironmentConfig: TCInputModel {
        /// 私有网络配置。
        public let vpcOption: VPCOption?

        /// 计算集群配置。
        public let clusterOption: ClusterOption?

        /// 数据库配置。
        public let databaseOption: DatabaseOption?

        /// 存储配置。
        public let storageOption: StorageOption?

        /// 云服务器配置。
        public let cvmOption: CVMOption?

        public init(vpcOption: VPCOption, clusterOption: ClusterOption, databaseOption: DatabaseOption, storageOption: StorageOption, cvmOption: CVMOption) {
            self.vpcOption = vpcOption
            self.clusterOption = clusterOption
            self.databaseOption = databaseOption
            self.storageOption = storageOption
            self.cvmOption = cvmOption
        }

        enum CodingKeys: String, CodingKey {
            case vpcOption = "VPCOption"
            case clusterOption = "ClusterOption"
            case databaseOption = "DatabaseOption"
            case storageOption = "StorageOption"
            case cvmOption = "CVMOption"
        }
    }

    /// 执行时间。
    public struct ExecutionTime: TCOutputModel {
        /// 提交时间。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the underlying
        /// string value (through `$submitTime`) in case the synthesized encoding is incorrect.
        @TCTimestampISO8601Encoding public var submitTime: Date?

        /// 开始时间。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the underlying
        /// string value (through `$startTime`) in case the synthesized encoding is incorrect.
        @TCTimestampISO8601Encoding public var startTime: Date?

        /// 结束时间。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the underlying
        /// string value (through `$endTime`) in case the synthesized encoding is incorrect.
        @TCTimestampISO8601Encoding public var endTime: Date?

        enum CodingKeys: String, CodingKey {
            case submitTime = "SubmitTime"
            case startTime = "StartTime"
            case endTime = "EndTime"
        }
    }

    /// 描述键值对过滤器，用于条件过滤查询。
    ///
    /// - 若存在多个Filter时，Filter间的关系为逻辑与（AND）关系。
    /// - 若同一个Filter存在多个Values，同一Filter下Values间的关系为逻辑或（OR）关系。
    public struct Filter: TCInputModel {
        /// 过滤字段。
        public let name: String?

        /// 过滤字段值。
        public let values: [String]?

        public init(name: String, values: [String]) {
            self.name = name
            self.values = values
        }

        enum CodingKeys: String, CodingKey {
            case name = "Name"
            case values = "Values"
        }
    }

    /// 云资源ID。
    public struct ResourceIds: TCOutputModel {
        /// 私有网络ID。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let vpcId: String?

        /// 子网ID。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let subnetId: String?

        /// 安全组ID。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let securityGroupId: String?

        /// TDSQL-C Mysql版数据库ID。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let tdsqlcId: String?

        /// 文件存储ID。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let cfsId: String?

        /// 文件存储类型：取值范围：
        /// - SD：通用标准型
        /// - HP：通用性能型
        /// - TB：turbo标准型
        /// - TP：turbo性能型
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let cfsStorageType: String?

        /// 云服务器ID。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let cvmId: String?

        /// 弹性容器集群ID。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let eksId: String?

        enum CodingKeys: String, CodingKey {
            case vpcId = "VPCId"
            case subnetId = "SubnetId"
            case securityGroupId = "SecurityGroupId"
            case tdsqlcId = "TDSQLCId"
            case cfsId = "CFSId"
            case cfsStorageType = "CFSStorageType"
            case cvmId = "CVMId"
            case eksId = "EKSId"
        }
    }

    /// 任务。
    public struct Run: TCOutputModel {
        /// 任务UUID。
        public let runUuid: String?

        /// 项目ID。
        public let projectId: String?

        /// 应用ID。
        public let applicationId: String?

        /// 任务批次ID。
        public let runGroupId: String?

        /// 环境ID。
        public let environmentId: String?

        /// 用户定义ID，单例运行为空。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let userDefinedId: String?

        /// 表格ID，单例运行为空。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let tableId: String?

        /// 表格行UUID，单例运行为空。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let tableRowUuid: String?

        /// 任务状态。
        public let status: String?

        /// 任务输入。
        public let input: String?

        /// 运行选项。
        public let option: RunOption?

        /// 执行时间。
        public let executionTime: ExecutionTime?

        /// 错误信息。
        public let errorMessage: String?

        /// 创建时间。
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the underlying
        /// string value (through `$createTime`) in case the synthesized encoding is incorrect.
        @TCTimestampISO8601Encoding public var createTime: Date?

        /// 更新时间。
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the underlying
        /// string value (through `$updateTime`) in case the synthesized encoding is incorrect.
        @TCTimestampISO8601Encoding public var updateTime: Date?

        enum CodingKeys: String, CodingKey {
            case runUuid = "RunUuid"
            case projectId = "ProjectId"
            case applicationId = "ApplicationId"
            case runGroupId = "RunGroupId"
            case environmentId = "EnvironmentId"
            case userDefinedId = "UserDefinedId"
            case tableId = "TableId"
            case tableRowUuid = "TableRowUuid"
            case status = "Status"
            case input = "Input"
            case option = "Option"
            case executionTime = "ExecutionTime"
            case errorMessage = "ErrorMessage"
            case createTime = "CreateTime"
            case updateTime = "UpdateTime"
        }
    }

    /// 任务。
    public struct RunGroup: TCOutputModel {
        /// 任务批次ID。
        public let runGroupId: String?

        /// 项目ID。
        public let projectId: String?

        /// 项目名称。
        public let projectName: String?

        /// 应用ID。
        public let applicationId: String?

        /// 应用名称。
        public let applicationName: String?

        /// 应用类型。
        public let applicationType: String?

        /// 环境ID。
        public let environmentId: String?

        /// 环境名称。
        public let environmentName: String?

        /// 表格ID，单例运行为空。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let tableId: String?

        /// 任务名称。
        public let name: String?

        /// 任务描述。
        public let description: String?

        /// 任务状态。
        public let status: String?

        /// 任务输入。
        public let input: String?

        /// 运行选项。
        public let option: RunOption?

        /// 任务总数量。
        public let totalRun: UInt64?

        /// 各状态任务的数量。
        public let runStatusCounts: [RunStatusCount]?

        /// 执行时间。
        public let executionTime: ExecutionTime?

        /// 错误信息。
        public let errorMessage: String?

        /// 创建时间。
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the underlying
        /// string value (through `$createTime`) in case the synthesized encoding is incorrect.
        @TCTimestampISO8601Encoding public var createTime: Date?

        /// 更新时间。
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the underlying
        /// string value (through `$updateTime`) in case the synthesized encoding is incorrect.
        @TCTimestampISO8601Encoding public var updateTime: Date?

        enum CodingKeys: String, CodingKey {
            case runGroupId = "RunGroupId"
            case projectId = "ProjectId"
            case projectName = "ProjectName"
            case applicationId = "ApplicationId"
            case applicationName = "ApplicationName"
            case applicationType = "ApplicationType"
            case environmentId = "EnvironmentId"
            case environmentName = "EnvironmentName"
            case tableId = "TableId"
            case name = "Name"
            case description = "Description"
            case status = "Status"
            case input = "Input"
            case option = "Option"
            case totalRun = "TotalRun"
            case runStatusCounts = "RunStatusCounts"
            case executionTime = "ExecutionTime"
            case errorMessage = "ErrorMessage"
            case createTime = "CreateTime"
            case updateTime = "UpdateTime"
        }
    }

    /// 任务作业详情。
    public struct RunMetadata: TCOutputModel {
        /// 任务类型。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let runType: String?

        /// 任务ID。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let runId: String?

        /// 父层ID。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let parentId: String?

        /// 作业ID。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let jobId: String?

        /// 作业名称。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let callName: String?

        /// Scatter索引。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let scatterIndex: String?

        /// 输入。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let input: String?

        /// 输出。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let output: String?

        /// 状态
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let status: String?

        /// 错误信息。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let errorMessage: String?

        /// 开始时间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the underlying
        /// string value (through `$startTime`) in case the synthesized encoding is incorrect.
        @TCTimestampISO8601Encoding public var startTime: Date?

        /// 提交时间。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the underlying
        /// string value (through `$submitTime`) in case the synthesized encoding is incorrect.
        @TCTimestampISO8601Encoding public var submitTime: Date?

        /// 结束时间。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the underlying
        /// string value (through `$endTime`) in case the synthesized encoding is incorrect.
        @TCTimestampISO8601Encoding public var endTime: Date?

        /// 命令行。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let command: String?

        /// 运行时。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let runtime: String?

        /// 预处理。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let preprocess: Bool?

        /// 后处理。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let postProcess: Bool?

        /// Cache命中
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let callCached: Bool?

        /// 标准输出。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let stdout: String?

        /// 错误输出。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let stderr: String?

        enum CodingKeys: String, CodingKey {
            case runType = "RunType"
            case runId = "RunId"
            case parentId = "ParentId"
            case jobId = "JobId"
            case callName = "CallName"
            case scatterIndex = "ScatterIndex"
            case input = "Input"
            case output = "Output"
            case status = "Status"
            case errorMessage = "ErrorMessage"
            case startTime = "StartTime"
            case submitTime = "SubmitTime"
            case endTime = "EndTime"
            case command = "Command"
            case runtime = "Runtime"
            case preprocess = "Preprocess"
            case postProcess = "PostProcess"
            case callCached = "CallCached"
            case stdout = "Stdout"
            case stderr = "Stderr"
        }
    }

    /// 运行应用选项。
    public struct RunOption: TCInputModel, TCOutputModel {
        /// 运行失败模式，取值范围：
        /// - ContinueWhilePossible
        /// - NoNewCalls
        public let failureMode: String

        /// 是否使用Call-Caching功能。
        public let useCallCache: Bool

        /// 是否使用错误挂起功能。
        public let useErrorOnHold: Bool

        /// 输出归档COS路径。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let finalWorkflowOutputsDir: String?

        /// 是否使用相对目录归档输出。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let useRelativeOutputPaths: Bool?

        public init(failureMode: String, useCallCache: Bool, useErrorOnHold: Bool, finalWorkflowOutputsDir: String? = nil, useRelativeOutputPaths: Bool? = nil) {
            self.failureMode = failureMode
            self.useCallCache = useCallCache
            self.useErrorOnHold = useErrorOnHold
            self.finalWorkflowOutputsDir = finalWorkflowOutputsDir
            self.useRelativeOutputPaths = useRelativeOutputPaths
        }

        enum CodingKeys: String, CodingKey {
            case failureMode = "FailureMode"
            case useCallCache = "UseCallCache"
            case useErrorOnHold = "UseErrorOnHold"
            case finalWorkflowOutputsDir = "FinalWorkflowOutputsDir"
            case useRelativeOutputPaths = "UseRelativeOutputPaths"
        }
    }

    /// 任务运行状态。
    public struct RunStatusCount: TCOutputModel {
        /// 状态。
        public let status: String?

        /// 数量。
        public let count: UInt64?

        enum CodingKeys: String, CodingKey {
            case status = "Status"
            case count = "Count"
        }
    }

    /// 文件存储配置。
    public struct StorageOption: TCInputModel {
        /// 文件存储类型，取值范围：
        /// - SD：通用标准型
        /// - HP：通用性能型
        /// - TB：turbo标准型
        /// - TP：turbo性能型
        public let storageType: String?

        /// 文件存储可用区。
        public let zone: String?

        /// 文件系统容量，turbo系列必填，单位为GiB。
        /// - turbo标准型起售40TiB，即40960GiB；扩容步长20TiB，即20480 GiB。
        /// - turbo性能型起售20TiB，即20480 GiB；扩容步长10TiB，即10240 GiB。
        public let capacity: UInt64?

        public init(storageType: String, zone: String, capacity: UInt64? = nil) {
            self.storageType = storageType
            self.zone = zone
            self.capacity = capacity
        }

        enum CodingKeys: String, CodingKey {
            case storageType = "StorageType"
            case zone = "Zone"
            case capacity = "Capacity"
        }
    }

    /// 表格。
    public struct Table: TCOutputModel {
        /// 表格ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let tableId: String?

        /// 关联项目ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let projectId: String?

        /// 表格名称
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let name: String?

        /// 表格描述
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let description: String?

        /// 表格列
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let columns: [TableColumn]?

        /// 创建时间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let createTime: String?

        /// 创建人
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let creator: String?

        enum CodingKeys: String, CodingKey {
            case tableId = "TableId"
            case projectId = "ProjectId"
            case name = "Name"
            case description = "Description"
            case columns = "Columns"
            case createTime = "CreateTime"
            case creator = "Creator"
        }
    }

    /// 表格列。
    public struct TableColumn: TCOutputModel {
        /// 列名称
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let header: String?

        /// 列数据类型
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let dataType: String?

        enum CodingKeys: String, CodingKey {
            case header = "Header"
            case dataType = "DataType"
        }
    }

    /// 表格行。
    public struct TableRow: TCOutputModel {
        /// 表格行UUID。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let tableRowUuid: String?

        /// 表格行内容。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let content: [String]?

        enum CodingKeys: String, CodingKey {
            case tableRowUuid = "TableRowUuid"
            case content = "Content"
        }
    }

    /// 私有网络配置。
    public struct VPCOption: TCInputModel {
        /// 子网可用区。
        public let subnetZone: String?

        /// 私有网络CIDR。
        public let vpccidrBlock: String?

        /// 子网CIDR。
        public let subnetCIDRBlock: String?

        public init(subnetZone: String, vpccidrBlock: String, subnetCIDRBlock: String) {
            self.subnetZone = subnetZone
            self.vpccidrBlock = vpccidrBlock
            self.subnetCIDRBlock = subnetCIDRBlock
        }

        enum CodingKeys: String, CodingKey {
            case subnetZone = "SubnetZone"
            case vpccidrBlock = "VPCCIDRBlock"
            case subnetCIDRBlock = "SubnetCIDRBlock"
        }
    }
}
