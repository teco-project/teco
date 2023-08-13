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

extension Tat {
    /// CancelInvocation请求参数结构体
    public struct CancelInvocationRequest: TCRequestModel {
        /// 执行活动ID
        public let invocationId: String

        /// 实例ID列表，上限100。支持实例类型：
        /// - CVM
        /// - LIGHTHOUSE
        public let instanceIds: [String]?

        public init(invocationId: String, instanceIds: [String]? = nil) {
            self.invocationId = invocationId
            self.instanceIds = instanceIds
        }

        enum CodingKeys: String, CodingKey {
            case invocationId = "InvocationId"
            case instanceIds = "InstanceIds"
        }
    }

    /// CancelInvocation返回参数结构体
    public struct CancelInvocationResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 取消命令执行
    ///
    /// 取消一台或多台CVM实例执行的命令
    ///
    /// * 如果命令还未下发到agent，任务状态处于处于PENDING、DELIVERING、DELIVER_DELAYED，取消后任务状态是CANCELLED
    /// * 如果命令已下发到agent，任务状态处于RUNNING， 取消后任务状态是TERMINATED
    @inlinable @discardableResult
    public func cancelInvocation(_ input: CancelInvocationRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CancelInvocationResponse> {
        self.client.execute(action: "CancelInvocation", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 取消命令执行
    ///
    /// 取消一台或多台CVM实例执行的命令
    ///
    /// * 如果命令还未下发到agent，任务状态处于处于PENDING、DELIVERING、DELIVER_DELAYED，取消后任务状态是CANCELLED
    /// * 如果命令已下发到agent，任务状态处于RUNNING， 取消后任务状态是TERMINATED
    @inlinable @discardableResult
    public func cancelInvocation(_ input: CancelInvocationRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CancelInvocationResponse {
        try await self.client.execute(action: "CancelInvocation", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 取消命令执行
    ///
    /// 取消一台或多台CVM实例执行的命令
    ///
    /// * 如果命令还未下发到agent，任务状态处于处于PENDING、DELIVERING、DELIVER_DELAYED，取消后任务状态是CANCELLED
    /// * 如果命令已下发到agent，任务状态处于RUNNING， 取消后任务状态是TERMINATED
    @inlinable @discardableResult
    public func cancelInvocation(invocationId: String, instanceIds: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CancelInvocationResponse> {
        self.cancelInvocation(.init(invocationId: invocationId, instanceIds: instanceIds), region: region, logger: logger, on: eventLoop)
    }

    /// 取消命令执行
    ///
    /// 取消一台或多台CVM实例执行的命令
    ///
    /// * 如果命令还未下发到agent，任务状态处于处于PENDING、DELIVERING、DELIVER_DELAYED，取消后任务状态是CANCELLED
    /// * 如果命令已下发到agent，任务状态处于RUNNING， 取消后任务状态是TERMINATED
    @inlinable @discardableResult
    public func cancelInvocation(invocationId: String, instanceIds: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CancelInvocationResponse {
        try await self.cancelInvocation(.init(invocationId: invocationId, instanceIds: instanceIds), region: region, logger: logger, on: eventLoop)
    }
}
