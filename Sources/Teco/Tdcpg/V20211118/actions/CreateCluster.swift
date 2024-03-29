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
    /// CreateCluster请求参数结构体
    public struct CreateClusterRequest: TCRequest {
        /// 可用区
        public let zone: String

        /// 数据库用户密码，必须满足 8-64个字符，至少包含 大写字母、小写字母、数字和符号~!@#$%^&*_-+=`|\(){}[]:;'<>,.?/中的任意三种
        public let masterUserPassword: String

        /// CPU核数。取值参考文档【购买指南】
        public let cpu: UInt64

        /// 内存大小，单位GiB。取值参考文档【购买指南】
        public let memory: UInt64

        /// 私有网络ID
        public let vpcId: String

        /// 已配置的私有网络中的子网ID
        public let subnetId: String

        /// 实例付费模式
        ///  - PREPAID：预付费，即包年包月
        ///  - POSTPAID_BY_HOUR：按小时后付费
        public let payMode: String

        /// 集群名，1-60个字符，可以包含中文、英文、数字和符号"-"、"_"、"."。不输入此参数时默认与ClusterId保持一致
        public let clusterName: String?

        /// TDSQL-C PostgreSQL 合入的社区版本号。
        /// 支持入参值为：10.17。当输入该参数时，会基于此版本号创建对应的最新DBKernelVersion数据库内核。
        /// 注：该参数与DBMajorVersion、DBKernelVersion只能传递一个，且需要传递一个。
        public let dbVersion: String?

        /// 项目Id，默认为0表示默认项目
        public let projectId: UInt64?

        /// 连接数据库时，Endpoint使用的端口。取值范围为[1,65534]，默认值为5432
        public let port: UInt64?

        /// 集群下实例数量。取值范围为[1,4]，默认值为1
        public let instanceCount: UInt64?

        /// 购买时长，单位：月。取值范围为[1,60]，默认值为1。
        /// 只有当PayMode为PREPAID时生效。
        public let period: UInt64?

        /// 是否自动续费，0-不 1-是。默认值为0，只有当PayMode为PREPAID时生效。
        public let autoRenewFlag: UInt64?

        /// TDSQL-C PostgreSQL 合入的社区主要版本号。
        /// 支持入参值为：10。当输入该参数时，会基于此版本号创建对应的最新DBKernelVersion数据库内核。
        /// 注：该参数和DBVersion、DBKernelVersion只能传递一个，且需要传递一个。
        public let dbMajorVersion: String?

        /// TDSQL-C PostgreSQL 内核版本号。
        /// 支持入参值为：v10.17_r1.4。当输入该参数时，会创建此版本号对应的数据库内核。
        /// 注：该参数和DBVersion、DBMajorVersion只能传递一个，且需要传递一个。
        public let dbKernelVersion: String?

        /// 存储付费模式
        ///  - PREPAID：预付费，即包年包月
        ///  - POSTPAID_BY_HOUR：按小时后付费
        /// 默认为POSTPAID_BY_HOUR，实例付费模式为按小时付费时，存储付费模式不支持包年包月
        public let storagePayMode: String?

        /// 存储最大使用量，单位GB。取值参考文档【购买指南】。存储使用预付费模式时必须设置，存储使用按小时后付费时不可设置
        public let storage: UInt64?

        public init(zone: String, masterUserPassword: String, cpu: UInt64, memory: UInt64, vpcId: String, subnetId: String, payMode: String, clusterName: String? = nil, dbVersion: String? = nil, projectId: UInt64? = nil, port: UInt64? = nil, instanceCount: UInt64? = nil, period: UInt64? = nil, autoRenewFlag: UInt64? = nil, dbMajorVersion: String? = nil, dbKernelVersion: String? = nil, storagePayMode: String? = nil, storage: UInt64? = nil) {
            self.zone = zone
            self.masterUserPassword = masterUserPassword
            self.cpu = cpu
            self.memory = memory
            self.vpcId = vpcId
            self.subnetId = subnetId
            self.payMode = payMode
            self.clusterName = clusterName
            self.dbVersion = dbVersion
            self.projectId = projectId
            self.port = port
            self.instanceCount = instanceCount
            self.period = period
            self.autoRenewFlag = autoRenewFlag
            self.dbMajorVersion = dbMajorVersion
            self.dbKernelVersion = dbKernelVersion
            self.storagePayMode = storagePayMode
            self.storage = storage
        }

        enum CodingKeys: String, CodingKey {
            case zone = "Zone"
            case masterUserPassword = "MasterUserPassword"
            case cpu = "CPU"
            case memory = "Memory"
            case vpcId = "VpcId"
            case subnetId = "SubnetId"
            case payMode = "PayMode"
            case clusterName = "ClusterName"
            case dbVersion = "DBVersion"
            case projectId = "ProjectId"
            case port = "Port"
            case instanceCount = "InstanceCount"
            case period = "Period"
            case autoRenewFlag = "AutoRenewFlag"
            case dbMajorVersion = "DBMajorVersion"
            case dbKernelVersion = "DBKernelVersion"
            case storagePayMode = "StoragePayMode"
            case storage = "Storage"
        }
    }

    /// CreateCluster返回参数结构体
    public struct CreateClusterResponse: TCResponse {
        /// 订单号
        public let dealNameSet: [String]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case dealNameSet = "DealNameSet"
            case requestId = "RequestId"
        }
    }

    /// 创建集群
    @inlinable
    public func createCluster(_ input: CreateClusterRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateClusterResponse> {
        self.client.execute(action: "CreateCluster", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建集群
    @inlinable
    public func createCluster(_ input: CreateClusterRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateClusterResponse {
        try await self.client.execute(action: "CreateCluster", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建集群
    @inlinable
    public func createCluster(zone: String, masterUserPassword: String, cpu: UInt64, memory: UInt64, vpcId: String, subnetId: String, payMode: String, clusterName: String? = nil, dbVersion: String? = nil, projectId: UInt64? = nil, port: UInt64? = nil, instanceCount: UInt64? = nil, period: UInt64? = nil, autoRenewFlag: UInt64? = nil, dbMajorVersion: String? = nil, dbKernelVersion: String? = nil, storagePayMode: String? = nil, storage: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateClusterResponse> {
        self.createCluster(.init(zone: zone, masterUserPassword: masterUserPassword, cpu: cpu, memory: memory, vpcId: vpcId, subnetId: subnetId, payMode: payMode, clusterName: clusterName, dbVersion: dbVersion, projectId: projectId, port: port, instanceCount: instanceCount, period: period, autoRenewFlag: autoRenewFlag, dbMajorVersion: dbMajorVersion, dbKernelVersion: dbKernelVersion, storagePayMode: storagePayMode, storage: storage), region: region, logger: logger, on: eventLoop)
    }

    /// 创建集群
    @inlinable
    public func createCluster(zone: String, masterUserPassword: String, cpu: UInt64, memory: UInt64, vpcId: String, subnetId: String, payMode: String, clusterName: String? = nil, dbVersion: String? = nil, projectId: UInt64? = nil, port: UInt64? = nil, instanceCount: UInt64? = nil, period: UInt64? = nil, autoRenewFlag: UInt64? = nil, dbMajorVersion: String? = nil, dbKernelVersion: String? = nil, storagePayMode: String? = nil, storage: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateClusterResponse {
        try await self.createCluster(.init(zone: zone, masterUserPassword: masterUserPassword, cpu: cpu, memory: memory, vpcId: vpcId, subnetId: subnetId, payMode: payMode, clusterName: clusterName, dbVersion: dbVersion, projectId: projectId, port: port, instanceCount: instanceCount, period: period, autoRenewFlag: autoRenewFlag, dbMajorVersion: dbMajorVersion, dbKernelVersion: dbKernelVersion, storagePayMode: storagePayMode, storage: storage), region: region, logger: logger, on: eventLoop)
    }
}
