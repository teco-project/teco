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

import Logging
import NIOCore
import TecoCore

extension Tdcpg {
    /// CloneClusterToPointInTime请求参数结构体
    public struct CloneClusterToPointInTimeRequest: TCRequestModel {
        /// 可用区
        public let zone: String

        /// 数据库版本，目前仅支持 10.17
        public let dbVersion: String

        /// CPU核数。取值参考文档【购买指南】
        public let cpu: UInt64

        /// 内存大小，单位GiB。取值参考文档【购买指南】
        public let memory: UInt64

        /// 私有网络ID
        public let vpcId: String

        /// 已配置的私有网络中的子网ID
        public let subnetId: String

        /// 集群付费模式
        /// - PREPAID：预付费，即包年包月
        /// - POSTPAID_BY_HOUR：按小时后付费
        public let payMode: String

        /// 对应的备份数据来源集群ID
        public let sourceClusterId: String

        /// 对应的备份数据时间点。按照RFC3339标准表示，并且使用东八区时区时间。格式为：YYYY-MM-DDThh:mm:ss+08:00。
        public let sourceDataPoint: String

        /// 集群名，1-60个字符，可以包含中文、英文、数字和符号"-"、"_"、"."。不输入此参数时默认与ClusterId保持一致。
        public let clusterName: String?

        /// 项目Id，默认为0表示默认项目
        public let projectId: UInt64?

        /// 连接数据库时，Endpoint使用的端口。取值范围为[1,65534]，默认值为5432
        public let port: UInt64?

        /// 集群下实例数量。取值范围为[1,4]，默认值为1
        public let instanceCount: UInt64?

        /// 购买时长，单位：月。取值范围为[1,60]，默认值为1。
        /// 只有当PayMode为PREPAID时生效。
        public let period: UInt64?

        /// 是否自动续费，0-不 1-是。默认为0，只有当PayMode为PREPAID时生效。
        public let autoRenewFlag: UInt64?

        /// 存储付费模式
        ///  - PREPAID：预付费，即包年包月
        ///  - POSTPAID_BY_HOUR：按小时后付费
        /// 默认为POSTPAID_BY_HOUR，实例付费模式为按小时付费时，存储付费模式不支持包年包月
        public let storagePayMode: String?

        /// 存储最大使用量，单位GB。取值参考文档【购买指南】。存储使用预付费模式时必须设置，存储使用按小时后付费时不可设置
        public let storage: UInt64?

        public init(zone: String, dbVersion: String, cpu: UInt64, memory: UInt64, vpcId: String, subnetId: String, payMode: String, sourceClusterId: String, sourceDataPoint: String, clusterName: String? = nil, projectId: UInt64? = nil, port: UInt64? = nil, instanceCount: UInt64? = nil, period: UInt64? = nil, autoRenewFlag: UInt64? = nil, storagePayMode: String? = nil, storage: UInt64? = nil) {
            self.zone = zone
            self.dbVersion = dbVersion
            self.cpu = cpu
            self.memory = memory
            self.vpcId = vpcId
            self.subnetId = subnetId
            self.payMode = payMode
            self.sourceClusterId = sourceClusterId
            self.sourceDataPoint = sourceDataPoint
            self.clusterName = clusterName
            self.projectId = projectId
            self.port = port
            self.instanceCount = instanceCount
            self.period = period
            self.autoRenewFlag = autoRenewFlag
            self.storagePayMode = storagePayMode
            self.storage = storage
        }

        enum CodingKeys: String, CodingKey {
            case zone = "Zone"
            case dbVersion = "DBVersion"
            case cpu = "CPU"
            case memory = "Memory"
            case vpcId = "VpcId"
            case subnetId = "SubnetId"
            case payMode = "PayMode"
            case sourceClusterId = "SourceClusterId"
            case sourceDataPoint = "SourceDataPoint"
            case clusterName = "ClusterName"
            case projectId = "ProjectId"
            case port = "Port"
            case instanceCount = "InstanceCount"
            case period = "Period"
            case autoRenewFlag = "AutoRenewFlag"
            case storagePayMode = "StoragePayMode"
            case storage = "Storage"
        }
    }

    /// CloneClusterToPointInTime返回参数结构体
    public struct CloneClusterToPointInTimeResponse: TCResponseModel {
        /// 订单号
        public let dealNameSet: [String]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case dealNameSet = "DealNameSet"
            case requestId = "RequestId"
        }
    }

    /// 克隆集群
    ///
    /// 使用指定时间点的备份克隆一个新的集群
    @inlinable
    public func cloneClusterToPointInTime(_ input: CloneClusterToPointInTimeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CloneClusterToPointInTimeResponse> {
        self.client.execute(action: "CloneClusterToPointInTime", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 克隆集群
    ///
    /// 使用指定时间点的备份克隆一个新的集群
    @inlinable
    public func cloneClusterToPointInTime(_ input: CloneClusterToPointInTimeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CloneClusterToPointInTimeResponse {
        try await self.client.execute(action: "CloneClusterToPointInTime", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 克隆集群
    ///
    /// 使用指定时间点的备份克隆一个新的集群
    @inlinable
    public func cloneClusterToPointInTime(zone: String, dbVersion: String, cpu: UInt64, memory: UInt64, vpcId: String, subnetId: String, payMode: String, sourceClusterId: String, sourceDataPoint: String, clusterName: String? = nil, projectId: UInt64? = nil, port: UInt64? = nil, instanceCount: UInt64? = nil, period: UInt64? = nil, autoRenewFlag: UInt64? = nil, storagePayMode: String? = nil, storage: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CloneClusterToPointInTimeResponse> {
        self.cloneClusterToPointInTime(.init(zone: zone, dbVersion: dbVersion, cpu: cpu, memory: memory, vpcId: vpcId, subnetId: subnetId, payMode: payMode, sourceClusterId: sourceClusterId, sourceDataPoint: sourceDataPoint, clusterName: clusterName, projectId: projectId, port: port, instanceCount: instanceCount, period: period, autoRenewFlag: autoRenewFlag, storagePayMode: storagePayMode, storage: storage), region: region, logger: logger, on: eventLoop)
    }

    /// 克隆集群
    ///
    /// 使用指定时间点的备份克隆一个新的集群
    @inlinable
    public func cloneClusterToPointInTime(zone: String, dbVersion: String, cpu: UInt64, memory: UInt64, vpcId: String, subnetId: String, payMode: String, sourceClusterId: String, sourceDataPoint: String, clusterName: String? = nil, projectId: UInt64? = nil, port: UInt64? = nil, instanceCount: UInt64? = nil, period: UInt64? = nil, autoRenewFlag: UInt64? = nil, storagePayMode: String? = nil, storage: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CloneClusterToPointInTimeResponse {
        try await self.cloneClusterToPointInTime(.init(zone: zone, dbVersion: dbVersion, cpu: cpu, memory: memory, vpcId: vpcId, subnetId: subnetId, payMode: payMode, sourceClusterId: sourceClusterId, sourceDataPoint: sourceDataPoint, clusterName: clusterName, projectId: projectId, port: port, instanceCount: instanceCount, period: period, autoRenewFlag: autoRenewFlag, storagePayMode: storagePayMode, storage: storage), region: region, logger: logger, on: eventLoop)
    }
}
