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

extension Tcss {
    /// CreateNetworkFirewallPolicyDiscover请求参数结构体
    public struct CreateNetworkFirewallPolicyDiscoverRequest: TCRequest {
        /// 集群Id
        public let clusterId: String

        public init(clusterId: String) {
            self.clusterId = clusterId
        }

        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
        }
    }

    /// CreateNetworkFirewallPolicyDiscover返回参数结构体
    public struct CreateNetworkFirewallPolicyDiscoverResponse: TCResponse {
        /// 返回创建的集群检查任务的ID，为0表示创建失败。
        public let taskId: UInt64

        /// 创建检查任务的结果，"Succ"为成功，"Failed"为失败
        public let result: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 容器网络集群网络策略创建自动发现任务
    @inlinable
    public func createNetworkFirewallPolicyDiscover(_ input: CreateNetworkFirewallPolicyDiscoverRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateNetworkFirewallPolicyDiscoverResponse> {
        self.client.execute(action: "CreateNetworkFirewallPolicyDiscover", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 容器网络集群网络策略创建自动发现任务
    @inlinable
    public func createNetworkFirewallPolicyDiscover(_ input: CreateNetworkFirewallPolicyDiscoverRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateNetworkFirewallPolicyDiscoverResponse {
        try await self.client.execute(action: "CreateNetworkFirewallPolicyDiscover", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 容器网络集群网络策略创建自动发现任务
    @inlinable
    public func createNetworkFirewallPolicyDiscover(clusterId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateNetworkFirewallPolicyDiscoverResponse> {
        self.createNetworkFirewallPolicyDiscover(.init(clusterId: clusterId), region: region, logger: logger, on: eventLoop)
    }

    /// 容器网络集群网络策略创建自动发现任务
    @inlinable
    public func createNetworkFirewallPolicyDiscover(clusterId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateNetworkFirewallPolicyDiscoverResponse {
        try await self.createNetworkFirewallPolicyDiscover(.init(clusterId: clusterId), region: region, logger: logger, on: eventLoop)
    }
}
