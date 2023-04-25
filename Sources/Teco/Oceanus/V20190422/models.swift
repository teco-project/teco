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

extension Oceanus {
    /// 云联网描述信息
    public struct CCN: TCOutputModel {
        /// 私有网络 ID
        public let vpcId: String

        /// 子网 ID
        public let subnetId: String

        /// 云联网 ID，如 ccn-rahigzjd
        public let ccnId: String

        enum CodingKeys: String, CodingKey {
            case vpcId = "VpcId"
            case subnetId = "SubnetId"
            case ccnId = "CcnId"
        }
    }

    /// 描述用户创建的集群信息
    public struct Cluster: TCOutputModel {
        /// 集群 ID
        public let clusterId: String

        /// 集群名称
        public let name: String

        /// 地域
        public let region: String

        /// 用户 AppID
        public let appId: UInt64

        /// 主账号 UIN
        public let ownerUin: String

        /// 创建者 UIN
        public let creatorUin: String

        /// 集群状态, 1 未初始化,，3 初始化中，2 运行中
        public let status: Int64

        /// 描述
        public let remark: String

        /// 集群创建时间
        public let createTime: String

        /// 最后一次操作集群的时间
        public let updateTime: String

        /// CU 数量
        public let cuNum: UInt64

        /// CU 内存规格
        public let cuMem: UInt64

        /// 可用区
        public let zone: String

        /// 状态描述
        public let statusDesc: String

        /// 网络
        public let ccNs: [CCN]

        /// 网络
        public let netEnvironmentType: UInt64

        /// 空闲 CU
        public let freeCuNum: Int64

        /// 集群绑定的标签
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let tags: [Tag]?

        /// 集群隔离时间; 没隔离时间，则为 -
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let isolatedTime: String?

        /// 集群过期时间; 没过期概念，则为 -
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let expireTime: String?

        /// 距离过期还有多少秒; 没过期概念，则为 -
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let secondsUntilExpiry: String?

        /// 自动续费标记，0 表示默认状态 (用户未设置，即初始状态，用户开通了预付费不停服特权会进行自动续费)， 1 表示自动续费，2表示明确不自动续费(用户设置)
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let autoRenewFlag: Int64?

        /// 集群的默认 COS 存储桶
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let defaultCOSBucket: String?

        /// 集群的CLS 日志集 LogSet
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let clsLogSet: String?

        /// 集群的CLS 日志主题 TopicId
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let clsTopicId: String?

        /// 集群的CLS 日志集  名字
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let clsLogName: String?

        /// 集群的CLS 日志主题  名字
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let clsTopicName: String?

        /// 集群的版本信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let version: ClusterVersion?

        /// 细粒度资源下的空闲CU
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let freeCu: Float?

        /// 集群的默认日志采集配置
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let defaultLogCollectConf: String?

        /// 取值：0-没有设置，1-已设置，2-不允许设置
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let customizedDNSEnabled: Int64?

        /// 空间信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let correlations: [WorkSpaceClusterItem]?

        /// 运行CU
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let runningCu: Float?

        /// 0 后付费,1 预付费
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let payMode: Int64?

        /// 前端区分 集群是否需要2CU逻辑 因为历史集群 变配不需要, default 1  新集群都需要
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let isNeedManageNode: Int64?

        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case name = "Name"
            case region = "Region"
            case appId = "AppId"
            case ownerUin = "OwnerUin"
            case creatorUin = "CreatorUin"
            case status = "Status"
            case remark = "Remark"
            case createTime = "CreateTime"
            case updateTime = "UpdateTime"
            case cuNum = "CuNum"
            case cuMem = "CuMem"
            case zone = "Zone"
            case statusDesc = "StatusDesc"
            case ccNs = "CCNs"
            case netEnvironmentType = "NetEnvironmentType"
            case freeCuNum = "FreeCuNum"
            case tags = "Tags"
            case isolatedTime = "IsolatedTime"
            case expireTime = "ExpireTime"
            case secondsUntilExpiry = "SecondsUntilExpiry"
            case autoRenewFlag = "AutoRenewFlag"
            case defaultCOSBucket = "DefaultCOSBucket"
            case clsLogSet = "CLSLogSet"
            case clsTopicId = "CLSTopicId"
            case clsLogName = "CLSLogName"
            case clsTopicName = "CLSTopicName"
            case version = "Version"
            case freeCu = "FreeCu"
            case defaultLogCollectConf = "DefaultLogCollectConf"
            case customizedDNSEnabled = "CustomizedDNSEnabled"
            case correlations = "Correlations"
            case runningCu = "RunningCu"
            case payMode = "PayMode"
            case isNeedManageNode = "IsNeedManageNode"
        }
    }

    /// 集群的版本相关信息
    public struct ClusterVersion: TCOutputModel {
        /// 集群的Flink版本
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let flink: String?

        /// 集群支持的Flink版本
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let supportedFlink: [String]?

        enum CodingKeys: String, CodingKey {
            case flink = "Flink"
            case supportedFlink = "SupportedFlink"
        }
    }

    /// 复制作业单条明细
    public struct CopyJobItem: TCInputModel {
        public init() {
        }
    }

    /// 复制作业单条明细结果
    public struct CopyJobResult: TCOutputModel {
    }

    /// 树状结构资源列表对象
    public struct DescribeTreeResourcesRsp: TCOutputModel {
        /// 父节点ID
        public let parentId: String?

        /// 文件夹ID
        public let id: String?

        /// 文件夹名称
        public let name: String?

        /// 文件夹下资源数字
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let items: [TreeResourceItem]?

        /// 子节点
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let children: [DescribeTreeResourcesRsp]?

        /// 资源总数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let totalCount: Int64?

        enum CodingKeys: String, CodingKey {
            case parentId = "ParentId"
            case id = "Id"
            case name = "Name"
            case items = "Items"
            case children = "Children"
            case totalCount = "TotalCount"
        }
    }

    /// 查询作业列表时的过滤器
    public struct Filter: TCInputModel {
        /// 要过滤的字段
        public let name: String

        /// 字段的过滤值
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

    /// 作业配置详情
    public struct JobConfig: TCOutputModel {
        /// 作业Id
        public let jobId: String

        /// 主类
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let entrypointClass: String?

        /// 主类入参
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let programArgs: String?

        /// 备注
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let remark: String?

        /// 作业配置创建时间
        public let createTime: String

        /// 作业配置的版本号
        public let version: Int64

        /// 作业默认并行度
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let defaultParallelism: UInt64?

        /// 系统参数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let properties: [Property]?

        /// 引用资源
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let resourceRefDetails: [ResourceRefDetail]?

        /// 创建者uin
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let creatorUin: String?

        /// 作业配置上次启动时间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let updateTime: String?

        /// 作业绑定的存储桶
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let cosBucket: String?

        /// 是否启用日志收集，0-未启用，1-已启用，2-历史集群未设置日志集，3-历史集群已开启
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let logCollect: Int64?

        /// 作业的最大并行度
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let maxParallelism: UInt64?

        /// JobManager规格
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let jobManagerSpec: Float?

        /// TaskManager规格
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let taskManagerSpec: Float?

        /// CLS日志集ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let clsLogsetId: String?

        /// CLS日志主题ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let clsTopicId: String?

        /// pyflink作业运行的python版本
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let pythonVersion: String?

        /// Oceanus 平台恢复作业开关 1:开启 -1: 关闭
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let autoRecover: Int64?

        /// 日志级别
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let logLevel: String?

        enum CodingKeys: String, CodingKey {
            case jobId = "JobId"
            case entrypointClass = "EntrypointClass"
            case programArgs = "ProgramArgs"
            case remark = "Remark"
            case createTime = "CreateTime"
            case version = "Version"
            case defaultParallelism = "DefaultParallelism"
            case properties = "Properties"
            case resourceRefDetails = "ResourceRefDetails"
            case creatorUin = "CreatorUin"
            case updateTime = "UpdateTime"
            case cosBucket = "COSBucket"
            case logCollect = "LogCollect"
            case maxParallelism = "MaxParallelism"
            case jobManagerSpec = "JobManagerSpec"
            case taskManagerSpec = "TaskManagerSpec"
            case clsLogsetId = "ClsLogsetId"
            case clsTopicId = "ClsTopicId"
            case pythonVersion = "PythonVersion"
            case autoRecover = "AutoRecover"
            case logLevel = "LogLevel"
        }
    }

    /// Job详细信息
    public struct JobV1: TCOutputModel {
        /// 作业ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let jobId: String?

        /// 地域
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let region: String?

        /// 可用区
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let zone: String?

        /// 用户AppId
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let appId: Int64?

        /// 用户UIN
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let ownerUin: String?

        /// 创建者UIN
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let creatorUin: String?

        /// 作业名字
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let name: String?

        /// 作业类型，1：sql作业，2：Jar作业
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let jobType: Int64?

        /// 作业状态，1：未初始化，2：未发布，3：操作中，4：运行中，5：停止，6：暂停，-1：故障
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let status: Int64?

        /// 作业创建时间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let createTime: String?

        /// 作业启动时间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let startTime: String?

        /// 作业停止时间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let stopTime: String?

        /// 作业更新时间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let updateTime: String?

        /// 作业累计运行时间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let totalRunMillis: Int64?

        /// 备注信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let remark: String?

        /// 操作错误提示信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let lastOpResult: String?

        /// 集群名字
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let clusterName: String?

        /// 最新配置版本号
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let latestJobConfigVersion: Int64?

        /// 已发布的配置版本
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let publishedJobConfigVersion: Int64?

        /// 运行的CU数量
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let runningCuNum: Int64?

        /// 作业内存规格
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let cuMem: Int64?

        /// 作业状态描述
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let statusDesc: String?

        /// 运行状态时表示单次运行时间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let currentRunMillis: Int64?

        /// 作业所在的集群ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let clusterId: String?

        /// 作业管理WEB UI 入口
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let webUIUrl: String?

        /// 作业所在集群类型
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let schedulerType: Int64?

        /// 作业所在集群状态
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let clusterStatus: Int64?

        /// 细粒度下的运行的CU数量
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let runningCu: Float?

        /// 作业运行的 Flink 版本
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let flinkVersion: String?

        /// 工作空间 SerialId
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let workSpaceId: String?

        /// 工作空间名称
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let workSpaceName: String?

        enum CodingKeys: String, CodingKey {
            case jobId = "JobId"
            case region = "Region"
            case zone = "Zone"
            case appId = "AppId"
            case ownerUin = "OwnerUin"
            case creatorUin = "CreatorUin"
            case name = "Name"
            case jobType = "JobType"
            case status = "Status"
            case createTime = "CreateTime"
            case startTime = "StartTime"
            case stopTime = "StopTime"
            case updateTime = "UpdateTime"
            case totalRunMillis = "TotalRunMillis"
            case remark = "Remark"
            case lastOpResult = "LastOpResult"
            case clusterName = "ClusterName"
            case latestJobConfigVersion = "LatestJobConfigVersion"
            case publishedJobConfigVersion = "PublishedJobConfigVersion"
            case runningCuNum = "RunningCuNum"
            case cuMem = "CuMem"
            case statusDesc = "StatusDesc"
            case currentRunMillis = "CurrentRunMillis"
            case clusterId = "ClusterId"
            case webUIUrl = "WebUIUrl"
            case schedulerType = "SchedulerType"
            case clusterStatus = "ClusterStatus"
            case runningCu = "RunningCu"
            case flinkVersion = "FlinkVersion"
            case workSpaceId = "WorkSpaceId"
            case workSpaceName = "WorkSpaceName"
        }
    }

    /// 系统配置属性
    public struct Property: TCInputModel {
        /// 系统配置的Key
        public let key: String

        /// 系统配置的Value
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

    /// 依赖作业分状态计数信息
    public struct RefJobStatusCountItem: TCOutputModel {
        /// 作业状态
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let jobStatus: Int64?

        /// 作业数量
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let count: Int64?

        enum CodingKeys: String, CodingKey {
            case jobStatus = "JobStatus"
            case count = "Count"
        }
    }

    /// 描述资源配置的返回参数
    public struct ResourceConfigItem: TCOutputModel {
        /// 资源ID
        public let resourceId: String

        /// 资源类型
        public let resourceType: Int64

        /// 资源所属地域
        public let region: String

        /// 资源所属AppId
        public let appId: Int64

        /// 主账号Uin
        public let ownerUin: String

        /// 子账号Uin
        public let creatorUin: String

        /// 资源位置描述
        public let resourceLoc: ResourceLoc

        /// 资源创建时间
        public let createTime: String

        /// 资源版本
        public let version: Int64

        /// 资源描述
        public let remark: String

        /// 资源状态：0: 资源同步中，1:资源已就绪
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let status: Int64?

        /// 关联作业个数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let refJobCount: Int64?

        /// 分状态统计关联作业数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let refJobStatusCountSet: [RefJobStatusCountItem]?

        enum CodingKeys: String, CodingKey {
            case resourceId = "ResourceId"
            case resourceType = "ResourceType"
            case region = "Region"
            case appId = "AppId"
            case ownerUin = "OwnerUin"
            case creatorUin = "CreatorUin"
            case resourceLoc = "ResourceLoc"
            case createTime = "CreateTime"
            case version = "Version"
            case remark = "Remark"
            case status = "Status"
            case refJobCount = "RefJobCount"
            case refJobStatusCountSet = "RefJobStatusCountSet"
        }
    }

    /// 资源详细描述
    public struct ResourceItem: TCOutputModel {
        /// 资源ID
        public let resourceId: String?

        /// 资源名称
        public let name: String?

        /// 资源类型
        public let resourceType: UInt64?

        /// 资源位置
        public let resourceLoc: ResourceLoc?

        /// 资源地域
        public let region: String?

        /// 应用ID
        public let appId: UInt64?

        /// 主账号Uin
        public let ownerUin: String?

        /// 子账号Uin
        public let creatorUin: String?

        /// 资源创建时间
        public let createTime: String?

        /// 资源最后更新时间
        public let updateTime: String?

        /// 资源的资源版本ID
        public let latestResourceConfigVersion: Int64?

        /// 资源备注
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let remark: String?

        /// 版本个数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let versionCount: Int64?

        /// 关联作业数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let refJobCount: Int64?

        /// 作业运行状态
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let isJobRun: Int64?

        /// 文件名
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let fileName: String?

        /// 工作空间ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let workSpaceId: Int64?

        /// 分状态统计关联作业数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let refJobStatusCountSet: [RefJobStatusCountItem]?

        enum CodingKeys: String, CodingKey {
            case resourceId = "ResourceId"
            case name = "Name"
            case resourceType = "ResourceType"
            case resourceLoc = "ResourceLoc"
            case region = "Region"
            case appId = "AppId"
            case ownerUin = "OwnerUin"
            case creatorUin = "CreatorUin"
            case createTime = "CreateTime"
            case updateTime = "UpdateTime"
            case latestResourceConfigVersion = "LatestResourceConfigVersion"
            case remark = "Remark"
            case versionCount = "VersionCount"
            case refJobCount = "RefJobCount"
            case isJobRun = "IsJobRun"
            case fileName = "FileName"
            case workSpaceId = "WorkSpaceId"
            case refJobStatusCountSet = "RefJobStatusCountSet"
        }
    }

    /// 资源位置描述
    public struct ResourceLoc: TCInputModel, TCOutputModel {
        /// 资源位置的存储类型，目前只支持1:COS
        public let storageType: Int64

        /// 描述资源位置的json
        public let param: ResourceLocParam

        public init(storageType: Int64, param: ResourceLocParam) {
            self.storageType = storageType
            self.param = param
        }

        enum CodingKeys: String, CodingKey {
            case storageType = "StorageType"
            case param = "Param"
        }
    }

    /// 资源参数描述
    public struct ResourceLocParam: TCInputModel, TCOutputModel {
        /// 资源bucket
        public let bucket: String

        /// 资源路径
        public let path: String

        /// 资源所在地域，如果不填，则使用Resource的Region
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let region: String?

        public init(bucket: String, path: String, region: String? = nil) {
            self.bucket = bucket
            self.path = path
            self.region = region
        }

        enum CodingKeys: String, CodingKey {
            case bucket = "Bucket"
            case path = "Path"
            case region = "Region"
        }
    }

    /// 资源引用参数
    public struct ResourceRef: TCInputModel {
        /// 资源ID
        public let resourceId: String

        /// 资源版本ID，-1表示使用最新版本
        public let version: Int64

        /// 引用资源类型，例如主资源设置为1，代表main class所在的jar包
        public let type: Int64

        public init(resourceId: String, version: Int64, type: Int64) {
            self.resourceId = resourceId
            self.version = version
            self.type = type
        }

        enum CodingKeys: String, CodingKey {
            case resourceId = "ResourceId"
            case version = "Version"
            case type = "Type"
        }
    }

    /// JobConfig引用资源信息
    public struct ResourceRefDetail: TCOutputModel {
        /// 资源id
        public let resourceId: String

        /// 资源版本，-1表示使用最新版本
        public let version: Int64

        /// 资源名称
        public let name: String

        /// 1: 主资源
        public let type: Int64

        /// 1: 系统内置资源
        public let systemProvide: Int64

        enum CodingKeys: String, CodingKey {
            case resourceId = "ResourceId"
            case version = "Version"
            case name = "Name"
            case type = "Type"
            case systemProvide = "SystemProvide"
        }
    }

    /// 资源被Job 引用信息
    public struct ResourceRefJobInfo: TCOutputModel {
        /// Job id
        public let jobId: String

        /// Job配置版本
        public let jobConfigVersion: Int64

        /// 资源版本
        public let resourceVersion: Int64

        enum CodingKeys: String, CodingKey {
            case jobId = "JobId"
            case jobConfigVersion = "JobConfigVersion"
            case resourceVersion = "ResourceVersion"
        }
    }

    /// 作业启动详情
    public struct RunJobDescription: TCInputModel {
        /// 作业Id
        public let jobId: String

        /// 运行类型，1：启动，2：恢复
        public let runType: Int64

        /// 兼容旧版 SQL 类型作业启动参数：指定数据源消费起始时间点（例:T1557394288000）
        public let startMode: String?

        /// 当前作业的某个版本
        public let jobConfigVersion: UInt64?

        /// Savepoint路径
        public let savepointPath: String?

        /// Savepoint的Id
        public let savepointId: String?

        /// 使用历史版本系统依赖
        public let useOldSystemConnector: Bool?

        public init(jobId: String, runType: Int64, startMode: String? = nil, jobConfigVersion: UInt64? = nil, savepointPath: String? = nil, savepointId: String? = nil, useOldSystemConnector: Bool? = nil) {
            self.jobId = jobId
            self.runType = runType
            self.startMode = startMode
            self.jobConfigVersion = jobConfigVersion
            self.savepointPath = savepointPath
            self.savepointId = savepointId
            self.useOldSystemConnector = useOldSystemConnector
        }

        enum CodingKeys: String, CodingKey {
            case jobId = "JobId"
            case runType = "RunType"
            case startMode = "StartMode"
            case jobConfigVersion = "JobConfigVersion"
            case savepointPath = "SavepointPath"
            case savepointId = "SavepointId"
            case useOldSystemConnector = "UseOldSystemConnector"
        }
    }

    /// 描述Savepoint信息
    public struct Savepoint: TCOutputModel {
        /// 主键
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let id: Int64?

        /// 版本号
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let versionId: Int64?

        /// 状态 1: Active; 2: Expired; 3: InProgress; 4: Failed; 5: Timeout
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let status: Int64?

        /// 创建时间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let createTime: Int64?

        /// 更新时间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let updateTime: Int64?

        /// 路径
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let path: String?

        /// 大小
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let size: Int64?

        /// 快照类型 1: savepoint；2: checkpoint；3: cancelWithSavepoint
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let recordType: Int64?

        /// 运行作业实例的顺序 ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let jobRuntimeId: Int64?

        /// 描述
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let description: String?

        /// 固定超时时间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let timeout: Int64?

        /// 快照 serialId
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let serialId: String?

        /// 耗时
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let timeConsuming: Int64?

        /// 快照路径状态 1：可用；2：不可用；
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let pathStatus: Int64?

        enum CodingKeys: String, CodingKey {
            case id = "Id"
            case versionId = "VersionId"
            case status = "Status"
            case createTime = "CreateTime"
            case updateTime = "UpdateTime"
            case path = "Path"
            case size = "Size"
            case recordType = "RecordType"
            case jobRuntimeId = "JobRuntimeId"
            case description = "Description"
            case timeout = "Timeout"
            case serialId = "SerialId"
            case timeConsuming = "TimeConsuming"
            case pathStatus = "PathStatus"
        }
    }

    /// 停止作业的描述信息
    public struct StopJobDescription: TCInputModel {
        /// 作业Id
        public let jobId: String

        /// 停止类型，1 停止 2 暂停
        public let stopType: Int64

        public init(jobId: String, stopType: Int64) {
            self.jobId = jobId
            self.stopType = stopType
        }

        enum CodingKeys: String, CodingKey {
            case jobId = "JobId"
            case stopType = "StopType"
        }
    }

    /// 系统资源返回值
    public struct SystemResourceItem: TCOutputModel {
        /// 资源ID
        public let resourceId: String

        /// 资源名称
        public let name: String

        /// 资源类型。1 表示 JAR 包，目前只支持该值。
        public let resourceType: Int64

        /// 资源备注
        public let remark: String

        /// 资源所属地域
        public let region: String

        /// 资源的最新版本
        public let latestResourceConfigVersion: Int64

        enum CodingKeys: String, CodingKey {
            case resourceId = "ResourceId"
            case name = "Name"
            case resourceType = "ResourceType"
            case remark = "Remark"
            case region = "Region"
            case latestResourceConfigVersion = "LatestResourceConfigVersion"
        }
    }

    /// 标签
    public struct Tag: TCInputModel, TCOutputModel {
        /// 标签键
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let tagKey: String?

        /// 标签值
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let tagValue: String?

        public init(tagKey: String? = nil, tagValue: String? = nil) {
            self.tagKey = tagKey
            self.tagValue = tagValue
        }

        enum CodingKeys: String, CodingKey {
            case tagKey = "TagKey"
            case tagValue = "TagValue"
        }
    }

    /// 树状结构资源对象
    public struct TreeResourceItem: TCOutputModel {
        /// 资源ID
        public let resourceId: String

        /// 资源名称
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let name: String?

        /// 资源类型
        public let resourceType: Int64

        /// 备注
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let remark: String?

        /// 文件名
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let fileName: String?

        /// 目录ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let folderId: String?

        enum CodingKeys: String, CodingKey {
            case resourceId = "ResourceId"
            case name = "Name"
            case resourceType = "ResourceType"
            case remark = "Remark"
            case fileName = "FileName"
            case folderId = "FolderId"
        }
    }

    /// 空间和集群绑定关系
    public struct WorkSpaceClusterItem: TCOutputModel {
        /// 集群 ID
        public let clusterGroupId: Int64

        /// 集群 SerialId
        public let clusterGroupSerialId: String

        /// 集群名称
        public let clusterName: String

        /// 工作空间 SerialId
        public let workSpaceId: String

        /// 工作空间名称
        public let workSpaceName: String

        /// 绑定状态  2 绑定 1  解除绑定
        public let status: Int64

        /// 项目ID
        public let projectId: Int64

        /// 项目ID string类型
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let projectIdStr: String?

        enum CodingKeys: String, CodingKey {
            case clusterGroupId = "ClusterGroupId"
            case clusterGroupSerialId = "ClusterGroupSerialId"
            case clusterName = "ClusterName"
            case workSpaceId = "WorkSpaceId"
            case workSpaceName = "WorkSpaceName"
            case status = "Status"
            case projectId = "ProjectId"
            case projectIdStr = "ProjectIdStr"
        }
    }
}
