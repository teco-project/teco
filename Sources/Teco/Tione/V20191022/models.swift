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

extension Tione {
    /// 算法配置
    public struct AlgorithmSpecification: TCInputModel, TCOutputModel {
        /// 镜像名字
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let trainingImageName: String?

        /// 输入模式File|Pipe
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let trainingInputMode: String?

        /// 算法名字
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let algorithmName: String?

        public init(trainingImageName: String? = nil, trainingInputMode: String? = nil, algorithmName: String? = nil) {
            self.trainingImageName = trainingImageName
            self.trainingInputMode = trainingInputMode
            self.algorithmName = algorithmName
        }

        enum CodingKeys: String, CodingKey {
            case trainingImageName = "TrainingImageName"
            case trainingInputMode = "TrainingInputMode"
            case algorithmName = "AlgorithmName"
        }
    }

    /// 计费标签
    public struct BillingLabel: TCOutputModel {
        /// 计费项标识
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let label: String?

        /// 存储大小
        public let volumeSize: Int64

        /// 计费状态
        /// None: 不计费
        /// StorageOnly: 仅存储计费
        /// Computing: 计算和存储都计费
        public let status: String

        enum CodingKeys: String, CodingKey {
            case label = "Label"
            case volumeSize = "VolumeSize"
            case status = "Status"
        }
    }

    /// 接入CLS服务的配置
    public struct ClsConfig: TCInputModel, TCOutputModel {
        /// 接入类型，可选项为free、customer
        public let type: String

        /// 自定义CLS的日志集ID，只有当Type为customer时生效
        public let logSetId: String?

        /// 自定义CLS的日志主题ID，只有当Type为customer时生效
        public let topicId: String?

        public init(type: String, logSetId: String? = nil, topicId: String? = nil) {
            self.type = type
            self.logSetId = logSetId
            self.topicId = topicId
        }

        enum CodingKeys: String, CodingKey {
            case type = "Type"
            case logSetId = "LogSetId"
            case topicId = "TopicId"
        }
    }

    /// 存储库列表
    public struct CodeRepoSummary: TCOutputModel {
        /// 创建时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var creationTime: Date

        /// 更新时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var lastModifiedTime: Date

        /// 存储库名称
        public let codeRepositoryName: String

        /// Git配置
        public let gitConfig: GitConfig

        /// 是否有Git凭证
        public let noSecret: Bool

        enum CodingKeys: String, CodingKey {
            case creationTime = "CreationTime"
            case lastModifiedTime = "LastModifiedTime"
            case codeRepositoryName = "CodeRepositoryName"
            case gitConfig = "GitConfig"
            case noSecret = "NoSecret"
        }
    }

    /// cos路径
    public struct CosDataSource: TCInputModel, TCOutputModel {
        /// cos桶
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let bucket: String?

        /// cos文件key
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let keyPrefix: String?

        /// 分布式数据下载方式
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let dataDistributionType: String?

        /// 数据类型
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let dataType: String?

        public init(bucket: String, keyPrefix: String, dataDistributionType: String, dataType: String) {
            self.bucket = bucket
            self.keyPrefix = keyPrefix
            self.dataDistributionType = dataDistributionType
            self.dataType = dataType
        }

        enum CodingKeys: String, CodingKey {
            case bucket = "Bucket"
            case keyPrefix = "KeyPrefix"
            case dataDistributionType = "DataDistributionType"
            case dataType = "DataType"
        }
    }

    /// 数据源
    public struct DataSource: TCInputModel, TCOutputModel {
        /// cos数据源
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let cosDataSource: CosDataSource?

        /// 文件系统输入源
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let fileSystemDataSource: FileSystemDataSource?

        public init(cosDataSource: CosDataSource? = nil, fileSystemDataSource: FileSystemDataSource? = nil) {
            self.cosDataSource = cosDataSource
            self.fileSystemDataSource = fileSystemDataSource
        }

        enum CodingKeys: String, CodingKey {
            case cosDataSource = "CosDataSource"
            case fileSystemDataSource = "FileSystemDataSource"
        }
    }

    /// 环境变量
    public struct EnvConfig: TCInputModel, TCOutputModel {
        /// 名称
        public let name: String

        /// 值
        public let value: String

        public init(name: String, value: String) {
            self.name = name
            self.value = value
        }

        enum CodingKeys: String, CodingKey {
            case name = "Name"
            case value = "Value"
        }
    }

    /// 文件系统输入数据源
    public struct FileSystemDataSource: TCInputModel, TCOutputModel {
        /// 文件系统目录
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let directoryPath: String?

        /// 文件系统类型
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let fileSystemType: String?

        /// 文件系统访问模式
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let fileSystemAccessMode: String?

        /// 文件系统ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let fileSystemId: String?

        public init(directoryPath: String? = nil, fileSystemType: String? = nil, fileSystemAccessMode: String? = nil, fileSystemId: String? = nil) {
            self.directoryPath = directoryPath
            self.fileSystemType = fileSystemType
            self.fileSystemAccessMode = fileSystemAccessMode
            self.fileSystemId = fileSystemId
        }

        enum CodingKeys: String, CodingKey {
            case directoryPath = "DirectoryPath"
            case fileSystemType = "FileSystemType"
            case fileSystemAccessMode = "FileSystemAccessMode"
            case fileSystemId = "FileSystemId"
        }
    }

    /// 过滤器
    public struct Filter: TCInputModel {
        /// 过滤字段名称
        public let name: String?

        /// 过滤字段取值
        public let values: [String]?

        public init(name: String? = nil, values: [String]? = nil) {
            self.name = name
            self.values = values
        }

        enum CodingKeys: String, CodingKey {
            case name = "Name"
            case values = "Values"
        }
    }

    /// 存储库Git相关配置
    public struct GitConfig: TCInputModel, TCOutputModel {
        /// git地址
        public let repositoryUrl: String

        /// 代码分支
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let branch: String?

        public init(repositoryUrl: String, branch: String? = nil) {
            self.repositoryUrl = repositoryUrl
            self.branch = branch
        }

        enum CodingKeys: String, CodingKey {
            case repositoryUrl = "RepositoryUrl"
            case branch = "Branch"
        }
    }

    /// Git凭证
    public struct GitSecret: TCInputModel {
        /// 无秘钥，默认选项
        public let noSecret: Bool?

        /// Git用户名密码base64编码后的字符串
        /// 编码前的内容应为Json字符串，如
        /// {"UserName": "用户名", "Password":"密码"}
        public let secret: String?

        public init(noSecret: Bool? = nil, secret: String? = nil) {
            self.noSecret = noSecret
            self.secret = secret
        }

        enum CodingKeys: String, CodingKey {
            case noSecret = "NoSecret"
            case secret = "Secret"
        }
    }

    /// 输入数据配置
    public struct InputDataConfig: TCInputModel, TCOutputModel {
        /// 通道名
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let channelName: String?

        /// 数据源配置
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let dataSource: DataSource?

        /// 输入类型
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let inputMode: String?

        /// 文件类型
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let contentType: String?

        public init(channelName: String? = nil, dataSource: DataSource? = nil, inputMode: String? = nil, contentType: String? = nil) {
            self.channelName = channelName
            self.dataSource = dataSource
            self.inputMode = inputMode
            self.contentType = contentType
        }

        enum CodingKeys: String, CodingKey {
            case channelName = "ChannelName"
            case dataSource = "DataSource"
            case inputMode = "InputMode"
            case contentType = "ContentType"
        }
    }

    /// 模型输出
    public struct ModelArtifacts: TCOutputModel {
        /// cos输出路径
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let cosModelArtifacts: String?

        enum CodingKeys: String, CodingKey {
            case cosModelArtifacts = "CosModelArtifacts"
        }
    }

    /// notebook实例概览
    public struct NotebookInstanceSummary: TCOutputModel {
        /// 创建时间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var creationTime: Date?

        /// 最近修改时间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let lastModifiedTime: String?

        /// notebook实例名字
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let notebookInstanceName: String?

        /// notebook实例状态，取值范围：
        /// Pending: 创建中
        /// Inservice: 运行中
        /// Stopping: 停止中
        /// Stopped: 已停止
        /// Failed: 失败
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let notebookInstanceStatus: String?

        /// 算力类型
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let instanceType: String?

        /// 实例ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let instanceId: String?

        /// 启动时间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var startupTime: Date?

        /// 运行截止时间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var deadline: Date?

        /// 自动停止配置
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let stoppingCondition: StoppingCondition?

        /// 是否是预付费实例
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let prepay: Bool?

        /// 计费标识
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let billingLabel: BillingLabel?

        /// 运行时长，秒
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let runtimeInSeconds: Int64?

        /// 剩余时长，秒
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let remainTimeInSeconds: Int64?

        enum CodingKeys: String, CodingKey {
            case creationTime = "CreationTime"
            case lastModifiedTime = "LastModifiedTime"
            case notebookInstanceName = "NotebookInstanceName"
            case notebookInstanceStatus = "NotebookInstanceStatus"
            case instanceType = "InstanceType"
            case instanceId = "InstanceId"
            case startupTime = "StartupTime"
            case deadline = "Deadline"
            case stoppingCondition = "StoppingCondition"
            case prepay = "Prepay"
            case billingLabel = "BillingLabel"
            case runtimeInSeconds = "RuntimeInSeconds"
            case remainTimeInSeconds = "RemainTimeInSeconds"
        }
    }

    /// notebook生命周期脚本实例概览
    public struct NotebookLifecycleScriptsSummary: TCOutputModel {
        /// notebook生命周期脚本名称
        public let notebookLifecycleScriptsName: String

        /// 创建时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var creationTime: Date

        /// 修改时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var lastModifiedTime: Date

        enum CodingKeys: String, CodingKey {
            case notebookLifecycleScriptsName = "NotebookLifecycleScriptsName"
            case creationTime = "CreationTime"
            case lastModifiedTime = "LastModifiedTime"
        }
    }

    /// 输出数据配置
    public struct OutputDataConfig: TCInputModel, TCOutputModel {
        /// cos输出桶
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let cosOutputBucket: String?

        /// cos输出key前缀
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let cosOutputKeyPrefix: String?

        /// 文件系统输出，如果指定了文件系统，那么Cos输出会被忽略
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let fileSystemDataSource: FileSystemDataSource?

        public init(cosOutputBucket: String? = nil, cosOutputKeyPrefix: String? = nil, fileSystemDataSource: FileSystemDataSource? = nil) {
            self.cosOutputBucket = cosOutputBucket
            self.cosOutputKeyPrefix = cosOutputKeyPrefix
            self.fileSystemDataSource = fileSystemDataSource
        }

        enum CodingKeys: String, CodingKey {
            case cosOutputBucket = "CosOutputBucket"
            case cosOutputKeyPrefix = "CosOutputKeyPrefix"
            case fileSystemDataSource = "FileSystemDataSource"
        }
    }

    /// 计算资源配置
    public struct ResourceConfig: TCInputModel, TCOutputModel {
        /// 计算实例数量
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let instanceCount: UInt64?

        /// 计算实例类型
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let instanceType: String?

        /// 挂载CBS大小（GB）
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let volumeSizeInGB: UInt64?

        public init(instanceCount: UInt64, instanceType: String, volumeSizeInGB: UInt64? = nil) {
            self.instanceCount = instanceCount
            self.instanceType = instanceType
            self.volumeSizeInGB = volumeSizeInGB
        }

        enum CodingKeys: String, CodingKey {
            case instanceCount = "InstanceCount"
            case instanceType = "InstanceType"
            case volumeSizeInGB = "VolumeSizeInGB"
        }
    }

    ///  二级状态流水
    public struct SecondaryStatusTransition: TCOutputModel {
        /// 状态开始时间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var startTime: Date?

        /// 状态结束时间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var endTime: Date?

        /// 状态名
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let status: String?

        /// 状态详情
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let statusMessage: String?

        enum CodingKeys: String, CodingKey {
            case startTime = "StartTime"
            case endTime = "EndTime"
            case status = "Status"
            case statusMessage = "StatusMessage"
        }
    }

    /// 终止条件
    public struct StoppingCondition: TCInputModel, TCOutputModel {
        /// 最长运行运行时间（秒）
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let maxRuntimeInSeconds: UInt64?

        /// 最长等待运行时间（秒）
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let maxWaitTimeInSeconds: UInt64?

        public init(maxRuntimeInSeconds: UInt64? = nil, maxWaitTimeInSeconds: UInt64? = nil) {
            self.maxRuntimeInSeconds = maxRuntimeInSeconds
            self.maxWaitTimeInSeconds = maxWaitTimeInSeconds
        }

        enum CodingKeys: String, CodingKey {
            case maxRuntimeInSeconds = "MaxRuntimeInSeconds"
            case maxWaitTimeInSeconds = "MaxWaitTimeInSeconds"
        }
    }

    /// 训练任务概要
    public struct TrainingJobSummary: TCOutputModel {
        /// 任务创建时间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var creationTime: Date?

        /// 最近修改时间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var lastModifiedTime: Date?

        /// 训练任务名
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let trainingJobName: String?

        /// 训练任务状态，取值范围
        /// InProgress：运行中
        /// Completed: 已完成
        /// Failed: 失败
        /// Stopping: 停止中
        /// Stopped：已停止
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let trainingJobStatus: String?

        /// 完成时间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var trainingEndTime: Date?

        /// 算了实例Id
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let instanceId: String?

        /// 资源配置
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let resourceConfig: ResourceConfig?

        enum CodingKeys: String, CodingKey {
            case creationTime = "CreationTime"
            case lastModifiedTime = "LastModifiedTime"
            case trainingJobName = "TrainingJobName"
            case trainingJobStatus = "TrainingJobStatus"
            case trainingEndTime = "TrainingEndTime"
            case instanceId = "InstanceId"
            case resourceConfig = "ResourceConfig"
        }
    }

    /// VPC配置
    public struct VpcConfig: TCInputModel, TCOutputModel {
        /// 安全组id
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let securityGroupIds: [String]?

        /// 子网id
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let subnetId: String?

        public init(securityGroupIds: [String], subnetId: String) {
            self.securityGroupIds = securityGroupIds
            self.subnetId = subnetId
        }

        enum CodingKeys: String, CodingKey {
            case securityGroupIds = "SecurityGroupIds"
            case subnetId = "SubnetId"
        }
    }
}
