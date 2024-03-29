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

extension Cynosdb {
    /// RemoveClusterSlaveZone请求参数结构体
    public struct RemoveClusterSlaveZoneRequest: TCRequest {
        /// 集群ID
        public let clusterId: String

        /// 从可用区
        public let slaveZone: String

        public init(clusterId: String, slaveZone: String) {
            self.clusterId = clusterId
            self.slaveZone = slaveZone
        }

        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case slaveZone = "SlaveZone"
        }
    }

    /// RemoveClusterSlaveZone返回参数结构体
    public struct RemoveClusterSlaveZoneResponse: TCResponse {
        /// 异步FlowId
        public let flowId: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case flowId = "FlowId"
            case requestId = "RequestId"
        }
    }

    /// 关闭多可用区部署
    @inlinable
    public func removeClusterSlaveZone(_ input: RemoveClusterSlaveZoneRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RemoveClusterSlaveZoneResponse> {
        self.client.execute(action: "RemoveClusterSlaveZone", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 关闭多可用区部署
    @inlinable
    public func removeClusterSlaveZone(_ input: RemoveClusterSlaveZoneRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RemoveClusterSlaveZoneResponse {
        try await self.client.execute(action: "RemoveClusterSlaveZone", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 关闭多可用区部署
    @inlinable
    public func removeClusterSlaveZone(clusterId: String, slaveZone: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RemoveClusterSlaveZoneResponse> {
        self.removeClusterSlaveZone(.init(clusterId: clusterId, slaveZone: slaveZone), region: region, logger: logger, on: eventLoop)
    }

    /// 关闭多可用区部署
    @inlinable
    public func removeClusterSlaveZone(clusterId: String, slaveZone: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RemoveClusterSlaveZoneResponse {
        try await self.removeClusterSlaveZone(.init(clusterId: clusterId, slaveZone: slaveZone), region: region, logger: logger, on: eventLoop)
    }
}
