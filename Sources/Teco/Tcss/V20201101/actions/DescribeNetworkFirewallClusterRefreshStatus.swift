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
    /// DescribeNetworkFirewallClusterRefreshStatus请求参数结构体
    public struct DescribeNetworkFirewallClusterRefreshStatusRequest: TCRequestModel {
        /// 任务ID
        public let taskId: UInt64

        public init(taskId: UInt64) {
            self.taskId = taskId
        }

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
        }
    }

    /// DescribeNetworkFirewallClusterRefreshStatus返回参数结构体
    public struct DescribeNetworkFirewallClusterRefreshStatusResponse: TCResponseModel {
        /// 任务状态，可能为：Task_Running,Task_Succ,Task_Error,Task_NoExist
        public let taskStatus: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case taskStatus = "TaskStatus"
            case requestId = "RequestId"
        }
    }

    /// 容器网络查询资产任务进度
    @inlinable
    public func describeNetworkFirewallClusterRefreshStatus(_ input: DescribeNetworkFirewallClusterRefreshStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeNetworkFirewallClusterRefreshStatusResponse> {
        self.client.execute(action: "DescribeNetworkFirewallClusterRefreshStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 容器网络查询资产任务进度
    @inlinable
    public func describeNetworkFirewallClusterRefreshStatus(_ input: DescribeNetworkFirewallClusterRefreshStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeNetworkFirewallClusterRefreshStatusResponse {
        try await self.client.execute(action: "DescribeNetworkFirewallClusterRefreshStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 容器网络查询资产任务进度
    @inlinable
    public func describeNetworkFirewallClusterRefreshStatus(taskId: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeNetworkFirewallClusterRefreshStatusResponse> {
        self.describeNetworkFirewallClusterRefreshStatus(DescribeNetworkFirewallClusterRefreshStatusRequest(taskId: taskId), region: region, logger: logger, on: eventLoop)
    }

    /// 容器网络查询资产任务进度
    @inlinable
    public func describeNetworkFirewallClusterRefreshStatus(taskId: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeNetworkFirewallClusterRefreshStatusResponse {
        try await self.describeNetworkFirewallClusterRefreshStatus(DescribeNetworkFirewallClusterRefreshStatusRequest(taskId: taskId), region: region, logger: logger, on: eventLoop)
    }
}
