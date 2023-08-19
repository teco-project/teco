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

extension Sqlserver {
    /// CompleteExpansion请求参数结构体
    public struct CompleteExpansionRequest: TCRequest {
        /// 实例ID，形如mssql-j8kv137v
        public let instanceId: String

        public init(instanceId: String) {
            self.instanceId = instanceId
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
        }
    }

    /// CompleteExpansion返回参数结构体
    public struct CompleteExpansionResponse: TCResponse {
        /// 流程ID，可通过接口DescribeFlowStatus查询立即切换升级任务的状态。
        public let flowId: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case flowId = "FlowId"
            case requestId = "RequestId"
        }
    }

    /// 立刻完成扩容任务
    ///
    /// 本接口（CompleteExpansion）在实例发起扩容后，实例状态处于“升级待切换”时，可立即完成实例升级切换操作，无需等待可维护时间窗。本接口需要在实例低峰时调用，在完全切换成功前，存在部分库不可访问的风险。
    @inlinable
    public func completeExpansion(_ input: CompleteExpansionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CompleteExpansionResponse> {
        self.client.execute(action: "CompleteExpansion", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 立刻完成扩容任务
    ///
    /// 本接口（CompleteExpansion）在实例发起扩容后，实例状态处于“升级待切换”时，可立即完成实例升级切换操作，无需等待可维护时间窗。本接口需要在实例低峰时调用，在完全切换成功前，存在部分库不可访问的风险。
    @inlinable
    public func completeExpansion(_ input: CompleteExpansionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CompleteExpansionResponse {
        try await self.client.execute(action: "CompleteExpansion", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 立刻完成扩容任务
    ///
    /// 本接口（CompleteExpansion）在实例发起扩容后，实例状态处于“升级待切换”时，可立即完成实例升级切换操作，无需等待可维护时间窗。本接口需要在实例低峰时调用，在完全切换成功前，存在部分库不可访问的风险。
    @inlinable
    public func completeExpansion(instanceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CompleteExpansionResponse> {
        self.completeExpansion(.init(instanceId: instanceId), region: region, logger: logger, on: eventLoop)
    }

    /// 立刻完成扩容任务
    ///
    /// 本接口（CompleteExpansion）在实例发起扩容后，实例状态处于“升级待切换”时，可立即完成实例升级切换操作，无需等待可维护时间窗。本接口需要在实例低峰时调用，在完全切换成功前，存在部分库不可访问的风险。
    @inlinable
    public func completeExpansion(instanceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CompleteExpansionResponse {
        try await self.completeExpansion(.init(instanceId: instanceId), region: region, logger: logger, on: eventLoop)
    }
}
