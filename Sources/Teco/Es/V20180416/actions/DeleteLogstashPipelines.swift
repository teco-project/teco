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

extension Es {
    /// DeleteLogstashPipelines请求参数结构体
    public struct DeleteLogstashPipelinesRequest: TCRequest {
        /// 实例ID
        public let instanceId: String

        /// 管道ID列表
        public let pipelineIds: [String]?

        public init(instanceId: String, pipelineIds: [String]? = nil) {
            self.instanceId = instanceId
            self.pipelineIds = pipelineIds
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case pipelineIds = "PipelineIds"
        }
    }

    /// DeleteLogstashPipelines返回参数结构体
    public struct DeleteLogstashPipelinesResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除Logstash管道
    ///
    /// 用于批量删除Logstash管道
    @inlinable @discardableResult
    public func deleteLogstashPipelines(_ input: DeleteLogstashPipelinesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteLogstashPipelinesResponse> {
        self.client.execute(action: "DeleteLogstashPipelines", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除Logstash管道
    ///
    /// 用于批量删除Logstash管道
    @inlinable @discardableResult
    public func deleteLogstashPipelines(_ input: DeleteLogstashPipelinesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteLogstashPipelinesResponse {
        try await self.client.execute(action: "DeleteLogstashPipelines", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除Logstash管道
    ///
    /// 用于批量删除Logstash管道
    @inlinable @discardableResult
    public func deleteLogstashPipelines(instanceId: String, pipelineIds: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteLogstashPipelinesResponse> {
        self.deleteLogstashPipelines(.init(instanceId: instanceId, pipelineIds: pipelineIds), region: region, logger: logger, on: eventLoop)
    }

    /// 删除Logstash管道
    ///
    /// 用于批量删除Logstash管道
    @inlinable @discardableResult
    public func deleteLogstashPipelines(instanceId: String, pipelineIds: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteLogstashPipelinesResponse {
        try await self.deleteLogstashPipelines(.init(instanceId: instanceId, pipelineIds: pipelineIds), region: region, logger: logger, on: eventLoop)
    }
}
