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
    /// SwitchClusterVpc请求参数结构体
    public struct SwitchClusterVpcRequest: TCRequest {
        /// 集群ID
        public let clusterId: String

        /// 字符串vpc id
        public let uniqVpcId: String

        /// 字符串子网id
        public let uniqSubnetId: String

        /// 旧地址回收时间
        public let oldIpReserveHours: Int64

        public init(clusterId: String, uniqVpcId: String, uniqSubnetId: String, oldIpReserveHours: Int64) {
            self.clusterId = clusterId
            self.uniqVpcId = uniqVpcId
            self.uniqSubnetId = uniqSubnetId
            self.oldIpReserveHours = oldIpReserveHours
        }

        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case uniqVpcId = "UniqVpcId"
            case uniqSubnetId = "UniqSubnetId"
            case oldIpReserveHours = "OldIpReserveHours"
        }
    }

    /// SwitchClusterVpc返回参数结构体
    public struct SwitchClusterVpcResponse: TCResponse {
        /// 异步任务id。
        public let flowId: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case flowId = "FlowId"
            case requestId = "RequestId"
        }
    }

    /// 更换集群vpc
    @inlinable
    public func switchClusterVpc(_ input: SwitchClusterVpcRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SwitchClusterVpcResponse> {
        self.client.execute(action: "SwitchClusterVpc", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 更换集群vpc
    @inlinable
    public func switchClusterVpc(_ input: SwitchClusterVpcRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SwitchClusterVpcResponse {
        try await self.client.execute(action: "SwitchClusterVpc", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 更换集群vpc
    @inlinable
    public func switchClusterVpc(clusterId: String, uniqVpcId: String, uniqSubnetId: String, oldIpReserveHours: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SwitchClusterVpcResponse> {
        self.switchClusterVpc(.init(clusterId: clusterId, uniqVpcId: uniqVpcId, uniqSubnetId: uniqSubnetId, oldIpReserveHours: oldIpReserveHours), region: region, logger: logger, on: eventLoop)
    }

    /// 更换集群vpc
    @inlinable
    public func switchClusterVpc(clusterId: String, uniqVpcId: String, uniqSubnetId: String, oldIpReserveHours: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SwitchClusterVpcResponse {
        try await self.switchClusterVpc(.init(clusterId: clusterId, uniqVpcId: uniqVpcId, uniqSubnetId: uniqSubnetId, oldIpReserveHours: oldIpReserveHours), region: region, logger: logger, on: eventLoop)
    }
}
