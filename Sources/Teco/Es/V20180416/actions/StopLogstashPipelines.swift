//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Es {
    /// StopLogstashPipelines请求参数结构体
    public struct StopLogstashPipelinesRequest: TCRequestModel {
        /// 实例ID
        public let instanceId: String

        /// 管道ID列表
        public let pipelineIds: [String]

        public init(instanceId: String, pipelineIds: [String]) {
            self.instanceId = instanceId
            self.pipelineIds = pipelineIds
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case pipelineIds = "PipelineIds"
        }
    }

    /// StopLogstashPipelines返回参数结构体
    public struct StopLogstashPipelinesResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 停止Logstash管道
    ///
    /// 用于批量停止Logstash管道
    @inlinable
    public func stopLogstashPipelines(_ input: StopLogstashPipelinesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < StopLogstashPipelinesResponse > {
        self.client.execute(action: "StopLogstashPipelines", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 停止Logstash管道
    ///
    /// 用于批量停止Logstash管道
    @inlinable
    public func stopLogstashPipelines(_ input: StopLogstashPipelinesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StopLogstashPipelinesResponse {
        try await self.client.execute(action: "StopLogstashPipelines", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 停止Logstash管道
    ///
    /// 用于批量停止Logstash管道
    @inlinable
    public func stopLogstashPipelines(instanceId: String, pipelineIds: [String], logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < StopLogstashPipelinesResponse > {
        self.stopLogstashPipelines(StopLogstashPipelinesRequest(instanceId: instanceId, pipelineIds: pipelineIds), logger: logger, on: eventLoop)
    }

    /// 停止Logstash管道
    ///
    /// 用于批量停止Logstash管道
    @inlinable
    public func stopLogstashPipelines(instanceId: String, pipelineIds: [String], logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StopLogstashPipelinesResponse {
        try await self.stopLogstashPipelines(StopLogstashPipelinesRequest(instanceId: instanceId, pipelineIds: pipelineIds), logger: logger, on: eventLoop)
    }
}
