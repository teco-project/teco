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
    /// UpdatePrometheusScrapeJob请求参数结构体
    public struct UpdatePrometheusScrapeJobRequest: TCRequest {
        /// Prometheus 实例 ID，例如：prom-abcd1234
        public let instanceId: String

        /// Agent ID，例如：agent-abcd1234，可在控制台 Agent 管理中获取
        public let agentId: String

        /// 抓取任务 ID，例如：job-abcd1234，可在控制台 Agent 管理-抓取任务配置中获取
        public let jobId: String

        /// 抓取任务配置，格式：job_name:xx
        public let config: String

        public init(instanceId: String, agentId: String, jobId: String, config: String) {
            self.instanceId = instanceId
            self.agentId = agentId
            self.jobId = jobId
            self.config = config
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case agentId = "AgentId"
            case jobId = "JobId"
            case config = "Config"
        }
    }

    /// UpdatePrometheusScrapeJob返回参数结构体
    public struct UpdatePrometheusScrapeJobResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 更新 Prometheus 抓取任务
    @inlinable @discardableResult
    public func updatePrometheusScrapeJob(_ input: UpdatePrometheusScrapeJobRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdatePrometheusScrapeJobResponse> {
        self.client.execute(action: "UpdatePrometheusScrapeJob", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 更新 Prometheus 抓取任务
    @inlinable @discardableResult
    public func updatePrometheusScrapeJob(_ input: UpdatePrometheusScrapeJobRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdatePrometheusScrapeJobResponse {
        try await self.client.execute(action: "UpdatePrometheusScrapeJob", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 更新 Prometheus 抓取任务
    @inlinable @discardableResult
    public func updatePrometheusScrapeJob(instanceId: String, agentId: String, jobId: String, config: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdatePrometheusScrapeJobResponse> {
        self.updatePrometheusScrapeJob(.init(instanceId: instanceId, agentId: agentId, jobId: jobId, config: config), region: region, logger: logger, on: eventLoop)
    }

    /// 更新 Prometheus 抓取任务
    @inlinable @discardableResult
    public func updatePrometheusScrapeJob(instanceId: String, agentId: String, jobId: String, config: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdatePrometheusScrapeJobResponse {
        try await self.updatePrometheusScrapeJob(.init(instanceId: instanceId, agentId: agentId, jobId: jobId, config: config), region: region, logger: logger, on: eventLoop)
    }
}
