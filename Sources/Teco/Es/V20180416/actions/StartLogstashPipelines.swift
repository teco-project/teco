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

extension Es {
    /// StartLogstashPipelines请求参数结构体
    public struct StartLogstashPipelinesRequest: TCRequestModel {
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

    /// StartLogstashPipelines返回参数结构体
    public struct StartLogstashPipelinesResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 启动Logstash管道
    ///
    /// 用于启动Logstash管道
    @inlinable @discardableResult
    public func startLogstashPipelines(_ input: StartLogstashPipelinesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StartLogstashPipelinesResponse> {
        self.client.execute(action: "StartLogstashPipelines", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 启动Logstash管道
    ///
    /// 用于启动Logstash管道
    @inlinable @discardableResult
    public func startLogstashPipelines(_ input: StartLogstashPipelinesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StartLogstashPipelinesResponse {
        try await self.client.execute(action: "StartLogstashPipelines", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 启动Logstash管道
    ///
    /// 用于启动Logstash管道
    @inlinable @discardableResult
    public func startLogstashPipelines(instanceId: String, pipelineIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StartLogstashPipelinesResponse> {
        let input = StartLogstashPipelinesRequest(instanceId: instanceId, pipelineIds: pipelineIds)
        return self.client.execute(action: "StartLogstashPipelines", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 启动Logstash管道
    ///
    /// 用于启动Logstash管道
    @inlinable @discardableResult
    public func startLogstashPipelines(instanceId: String, pipelineIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StartLogstashPipelinesResponse {
        let input = StartLogstashPipelinesRequest(instanceId: instanceId, pipelineIds: pipelineIds)
        return try await self.client.execute(action: "StartLogstashPipelines", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
