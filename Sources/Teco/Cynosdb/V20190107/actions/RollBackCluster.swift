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

import TecoCore

extension Cynosdb {
    /// RollBackCluster请求参数结构体
    public struct RollBackClusterRequest: TCRequestModel {
        /// 集群ID
        public let clusterId: String

        /// 回档策略 timeRollback-按时间点回档 snapRollback-按备份文件回档
        public let rollbackStrategy: String

        /// 回档ID
        public let rollbackId: UInt64

        /// 期望回档时间
        public let expectTime: String?

        /// 期望阈值（已废弃）
        public let expectTimeThresh: UInt64?

        /// 回档数据库列表
        public let rollbackDatabases: [RollbackDatabase]?

        /// 回档数据库表列表
        public let rollbackTables: [RollbackTable]?

        /// 按时间点回档模式，full: 普通; db: 快速; table: 极速  （默认是普通）
        public let rollbackMode: String?

        public init(clusterId: String, rollbackStrategy: String, rollbackId: UInt64, expectTime: String? = nil, expectTimeThresh: UInt64? = nil, rollbackDatabases: [RollbackDatabase]? = nil, rollbackTables: [RollbackTable]? = nil, rollbackMode: String? = nil) {
            self.clusterId = clusterId
            self.rollbackStrategy = rollbackStrategy
            self.rollbackId = rollbackId
            self.expectTime = expectTime
            self.expectTimeThresh = expectTimeThresh
            self.rollbackDatabases = rollbackDatabases
            self.rollbackTables = rollbackTables
            self.rollbackMode = rollbackMode
        }

        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case rollbackStrategy = "RollbackStrategy"
            case rollbackId = "RollbackId"
            case expectTime = "ExpectTime"
            case expectTimeThresh = "ExpectTimeThresh"
            case rollbackDatabases = "RollbackDatabases"
            case rollbackTables = "RollbackTables"
            case rollbackMode = "RollbackMode"
        }
    }

    /// RollBackCluster返回参数结构体
    public struct RollBackClusterResponse: TCResponseModel {
        /// 任务流ID
        public let flowId: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case flowId = "FlowId"
            case requestId = "RequestId"
        }
    }

    /// 回档集群
    ///
    /// 本接口（RollBackCluster）用于回档集群
    @inlinable
    public func rollBackCluster(_ input: RollBackClusterRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RollBackClusterResponse> {
        self.client.execute(action: "RollBackCluster", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 回档集群
    ///
    /// 本接口（RollBackCluster）用于回档集群
    @inlinable
    public func rollBackCluster(_ input: RollBackClusterRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RollBackClusterResponse {
        try await self.client.execute(action: "RollBackCluster", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 回档集群
    ///
    /// 本接口（RollBackCluster）用于回档集群
    @inlinable
    public func rollBackCluster(clusterId: String, rollbackStrategy: String, rollbackId: UInt64, expectTime: String? = nil, expectTimeThresh: UInt64? = nil, rollbackDatabases: [RollbackDatabase]? = nil, rollbackTables: [RollbackTable]? = nil, rollbackMode: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RollBackClusterResponse> {
        self.rollBackCluster(.init(clusterId: clusterId, rollbackStrategy: rollbackStrategy, rollbackId: rollbackId, expectTime: expectTime, expectTimeThresh: expectTimeThresh, rollbackDatabases: rollbackDatabases, rollbackTables: rollbackTables, rollbackMode: rollbackMode), region: region, logger: logger, on: eventLoop)
    }

    /// 回档集群
    ///
    /// 本接口（RollBackCluster）用于回档集群
    @inlinable
    public func rollBackCluster(clusterId: String, rollbackStrategy: String, rollbackId: UInt64, expectTime: String? = nil, expectTimeThresh: UInt64? = nil, rollbackDatabases: [RollbackDatabase]? = nil, rollbackTables: [RollbackTable]? = nil, rollbackMode: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RollBackClusterResponse {
        try await self.rollBackCluster(.init(clusterId: clusterId, rollbackStrategy: rollbackStrategy, rollbackId: rollbackId, expectTime: expectTime, expectTimeThresh: expectTimeThresh, rollbackDatabases: rollbackDatabases, rollbackTables: rollbackTables, rollbackMode: rollbackMode), region: region, logger: logger, on: eventLoop)
    }
}
