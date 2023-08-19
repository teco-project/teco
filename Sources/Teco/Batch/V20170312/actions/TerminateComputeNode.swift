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

extension Batch {
    /// TerminateComputeNode请求参数结构体
    public struct TerminateComputeNodeRequest: TCRequest {
        /// 计算环境ID
        public let envId: String

        /// 计算节点ID
        public let computeNodeId: String

        public init(envId: String, computeNodeId: String) {
            self.envId = envId
            self.computeNodeId = computeNodeId
        }

        enum CodingKeys: String, CodingKey {
            case envId = "EnvId"
            case computeNodeId = "ComputeNodeId"
        }
    }

    /// TerminateComputeNode返回参数结构体
    public struct TerminateComputeNodeResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 销毁计算节点
    ///
    /// 用于销毁计算节点。
    /// 对于状态为CREATED、CREATION_FAILED、RUNNING和ABNORMAL的节点，允许销毁处理。
    @inlinable @discardableResult
    public func terminateComputeNode(_ input: TerminateComputeNodeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<TerminateComputeNodeResponse> {
        self.client.execute(action: "TerminateComputeNode", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 销毁计算节点
    ///
    /// 用于销毁计算节点。
    /// 对于状态为CREATED、CREATION_FAILED、RUNNING和ABNORMAL的节点，允许销毁处理。
    @inlinable @discardableResult
    public func terminateComputeNode(_ input: TerminateComputeNodeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> TerminateComputeNodeResponse {
        try await self.client.execute(action: "TerminateComputeNode", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 销毁计算节点
    ///
    /// 用于销毁计算节点。
    /// 对于状态为CREATED、CREATION_FAILED、RUNNING和ABNORMAL的节点，允许销毁处理。
    @inlinable @discardableResult
    public func terminateComputeNode(envId: String, computeNodeId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<TerminateComputeNodeResponse> {
        self.terminateComputeNode(.init(envId: envId, computeNodeId: computeNodeId), region: region, logger: logger, on: eventLoop)
    }

    /// 销毁计算节点
    ///
    /// 用于销毁计算节点。
    /// 对于状态为CREATED、CREATION_FAILED、RUNNING和ABNORMAL的节点，允许销毁处理。
    @inlinable @discardableResult
    public func terminateComputeNode(envId: String, computeNodeId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> TerminateComputeNodeResponse {
        try await self.terminateComputeNode(.init(envId: envId, computeNodeId: computeNodeId), region: region, logger: logger, on: eventLoop)
    }
}
