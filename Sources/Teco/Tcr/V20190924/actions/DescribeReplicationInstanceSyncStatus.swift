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

extension Tcr {
    /// DescribeReplicationInstanceSyncStatus请求参数结构体
    public struct DescribeReplicationInstanceSyncStatusRequest: TCRequestModel {
        /// 主实例Id
        public let registryId: String

        /// 复制实例Id
        public let replicationRegistryId: String

        /// 复制实例的地域Id
        public let replicationRegionId: UInt64?

        /// 是否显示同步日志
        public let showReplicationLog: Bool?

        /// 日志页号, 默认0
        public let offset: Int64?

        /// 最大输出条数，默认5，最大为20
        public let limit: Int64?

        public init(registryId: String, replicationRegistryId: String, replicationRegionId: UInt64? = nil, showReplicationLog: Bool? = nil, offset: Int64? = nil, limit: Int64? = nil) {
            self.registryId = registryId
            self.replicationRegistryId = replicationRegistryId
            self.replicationRegionId = replicationRegionId
            self.showReplicationLog = showReplicationLog
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case registryId = "RegistryId"
            case replicationRegistryId = "ReplicationRegistryId"
            case replicationRegionId = "ReplicationRegionId"
            case showReplicationLog = "ShowReplicationLog"
            case offset = "Offset"
            case limit = "Limit"
        }
    }

    /// DescribeReplicationInstanceSyncStatus返回参数结构体
    public struct DescribeReplicationInstanceSyncStatusResponse: TCResponseModel {
        /// 同步状态
        public let replicationStatus: String

        /// 同步完成时间
        public let replicationTime: String

        /// 同步日志
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let replicationLog: ReplicationLog?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case replicationStatus = "ReplicationStatus"
            case replicationTime = "ReplicationTime"
            case replicationLog = "ReplicationLog"
            case requestId = "RequestId"
        }
    }

    /// 查询从实例同步状态
    @inlinable
    public func describeReplicationInstanceSyncStatus(_ input: DescribeReplicationInstanceSyncStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeReplicationInstanceSyncStatusResponse> {
        self.client.execute(action: "DescribeReplicationInstanceSyncStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询从实例同步状态
    @inlinable
    public func describeReplicationInstanceSyncStatus(_ input: DescribeReplicationInstanceSyncStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeReplicationInstanceSyncStatusResponse {
        try await self.client.execute(action: "DescribeReplicationInstanceSyncStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询从实例同步状态
    @inlinable
    public func describeReplicationInstanceSyncStatus(registryId: String, replicationRegistryId: String, replicationRegionId: UInt64? = nil, showReplicationLog: Bool? = nil, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeReplicationInstanceSyncStatusResponse> {
        self.describeReplicationInstanceSyncStatus(.init(registryId: registryId, replicationRegistryId: replicationRegistryId, replicationRegionId: replicationRegionId, showReplicationLog: showReplicationLog, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查询从实例同步状态
    @inlinable
    public func describeReplicationInstanceSyncStatus(registryId: String, replicationRegistryId: String, replicationRegionId: UInt64? = nil, showReplicationLog: Bool? = nil, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeReplicationInstanceSyncStatusResponse {
        try await self.describeReplicationInstanceSyncStatus(.init(registryId: registryId, replicationRegistryId: replicationRegistryId, replicationRegionId: replicationRegionId, showReplicationLog: showReplicationLog, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }
}
