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

extension Tcss {
    /// ConfirmNetworkFirewallPolicy请求参数结构体
    public struct ConfirmNetworkFirewallPolicyRequest: TCRequestModel {
        /// 集群Id
        public let clusterId: String

        /// 策略Id数组
        public let id: [UInt64]

        public init(clusterId: String, id: [UInt64]) {
            self.clusterId = clusterId
            self.id = id
        }

        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case id = "Id"
        }
    }

    /// ConfirmNetworkFirewallPolicy返回参数结构体
    public struct ConfirmNetworkFirewallPolicyResponse: TCResponseModel {
        /// 返回创建的任务的ID，为0表示创建失败。
        public let taskId: UInt64

        /// 创建确认任务的结果，"Succ"为成功，"Failed"为失败
        public let result: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 容器网络创建网络策略确认任务
    @inlinable
    public func confirmNetworkFirewallPolicy(_ input: ConfirmNetworkFirewallPolicyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ConfirmNetworkFirewallPolicyResponse> {
        self.client.execute(action: "ConfirmNetworkFirewallPolicy", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 容器网络创建网络策略确认任务
    @inlinable
    public func confirmNetworkFirewallPolicy(_ input: ConfirmNetworkFirewallPolicyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ConfirmNetworkFirewallPolicyResponse {
        try await self.client.execute(action: "ConfirmNetworkFirewallPolicy", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 容器网络创建网络策略确认任务
    @inlinable
    public func confirmNetworkFirewallPolicy(clusterId: String, id: [UInt64], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ConfirmNetworkFirewallPolicyResponse> {
        self.confirmNetworkFirewallPolicy(.init(clusterId: clusterId, id: id), region: region, logger: logger, on: eventLoop)
    }

    /// 容器网络创建网络策略确认任务
    @inlinable
    public func confirmNetworkFirewallPolicy(clusterId: String, id: [UInt64], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ConfirmNetworkFirewallPolicyResponse {
        try await self.confirmNetworkFirewallPolicy(.init(clusterId: clusterId, id: id), region: region, logger: logger, on: eventLoop)
    }
}
