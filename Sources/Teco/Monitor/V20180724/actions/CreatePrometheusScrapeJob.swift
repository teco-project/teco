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

extension Monitor {
    /// CreatePrometheusScrapeJob请求参数结构体
    public struct CreatePrometheusScrapeJobRequest: TCRequest {
        /// Prometheus 实例 ID，例如：prom-abcd1234
        public let instanceId: String

        /// Agent ID，例如：agent-abcd1234，可在控制台 Agent 管理中获取
        public let agentId: String

        /// 抓取任务配置，格式：job_name:xx
        public let config: String?

        public init(instanceId: String, agentId: String, config: String? = nil) {
            self.instanceId = instanceId
            self.agentId = agentId
            self.config = config
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case agentId = "AgentId"
            case config = "Config"
        }
    }

    /// CreatePrometheusScrapeJob返回参数结构体
    public struct CreatePrometheusScrapeJobResponse: TCResponse {
        /// 成功创建抓取任务 Id
        public let jobId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case jobId = "JobId"
            case requestId = "RequestId"
        }
    }

    /// 创建 Prometheus 抓取任务
    @inlinable
    public func createPrometheusScrapeJob(_ input: CreatePrometheusScrapeJobRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreatePrometheusScrapeJobResponse> {
        self.client.execute(action: "CreatePrometheusScrapeJob", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建 Prometheus 抓取任务
    @inlinable
    public func createPrometheusScrapeJob(_ input: CreatePrometheusScrapeJobRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreatePrometheusScrapeJobResponse {
        try await self.client.execute(action: "CreatePrometheusScrapeJob", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建 Prometheus 抓取任务
    @inlinable
    public func createPrometheusScrapeJob(instanceId: String, agentId: String, config: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreatePrometheusScrapeJobResponse> {
        self.createPrometheusScrapeJob(.init(instanceId: instanceId, agentId: agentId, config: config), region: region, logger: logger, on: eventLoop)
    }

    /// 创建 Prometheus 抓取任务
    @inlinable
    public func createPrometheusScrapeJob(instanceId: String, agentId: String, config: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreatePrometheusScrapeJobResponse {
        try await self.createPrometheusScrapeJob(.init(instanceId: instanceId, agentId: agentId, config: config), region: region, logger: logger, on: eventLoop)
    }
}
