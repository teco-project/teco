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
    /// DescribeNetworkFirewallPolicyStatus请求参数结构体
    public struct DescribeNetworkFirewallPolicyStatusRequest: TCRequest {
        /// 任务ID
        public let taskId: UInt64

        public init(taskId: UInt64) {
            self.taskId = taskId
        }

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
        }
    }

    /// DescribeNetworkFirewallPolicyStatus返回参数结构体
    public struct DescribeNetworkFirewallPolicyStatusResponse: TCResponse {
        /// 任务状态，可能为：Task_Running,Task_Succ,Task_Error,Task_NoExist
        public let taskStatus: String

        /// NameRepeat,K8sRuleIngressPortError等
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let taskResult: [String]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case taskStatus = "TaskStatus"
            case taskResult = "TaskResult"
            case requestId = "RequestId"
        }
    }

    /// 容器网络查询网络策略策略执行状态
    @inlinable
    public func describeNetworkFirewallPolicyStatus(_ input: DescribeNetworkFirewallPolicyStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeNetworkFirewallPolicyStatusResponse> {
        self.client.execute(action: "DescribeNetworkFirewallPolicyStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 容器网络查询网络策略策略执行状态
    @inlinable
    public func describeNetworkFirewallPolicyStatus(_ input: DescribeNetworkFirewallPolicyStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeNetworkFirewallPolicyStatusResponse {
        try await self.client.execute(action: "DescribeNetworkFirewallPolicyStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 容器网络查询网络策略策略执行状态
    @inlinable
    public func describeNetworkFirewallPolicyStatus(taskId: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeNetworkFirewallPolicyStatusResponse> {
        self.describeNetworkFirewallPolicyStatus(.init(taskId: taskId), region: region, logger: logger, on: eventLoop)
    }

    /// 容器网络查询网络策略策略执行状态
    @inlinable
    public func describeNetworkFirewallPolicyStatus(taskId: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeNetworkFirewallPolicyStatusResponse {
        try await self.describeNetworkFirewallPolicyStatus(.init(taskId: taskId), region: region, logger: logger, on: eventLoop)
    }
}
