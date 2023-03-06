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

import TecoPaginationHelpers

extension Monitor {
    /// DescribePrometheusScrapeJobs请求参数结构体
    public struct DescribePrometheusScrapeJobsRequest: TCPaginatedRequest {
        /// 实例 ID
        public let instanceId: String

        /// Agent ID
        public let agentId: String

        /// 任务名
        public let name: String?

        /// 任务 ID 列表
        public let jobIds: [String]?

        /// 偏移量，默认为0
        public let offset: Int64?

        /// 返回数量，默认为20，最大值为100
        public let limit: Int64?

        public init(instanceId: String, agentId: String, name: String? = nil, jobIds: [String]? = nil, offset: Int64? = nil, limit: Int64? = nil) {
            self.instanceId = instanceId
            self.agentId = agentId
            self.name = name
            self.jobIds = jobIds
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case agentId = "AgentId"
            case name = "Name"
            case jobIds = "JobIds"
            case offset = "Offset"
            case limit = "Limit"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribePrometheusScrapeJobsResponse) -> DescribePrometheusScrapeJobsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribePrometheusScrapeJobsRequest(instanceId: self.instanceId, agentId: self.agentId, name: self.name, jobIds: self.jobIds, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit)
        }
    }

    /// DescribePrometheusScrapeJobs返回参数结构体
    public struct DescribePrometheusScrapeJobsResponse: TCPaginatedResponse {
        /// 任务列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let scrapeJobSet: [PrometheusScrapeJob]?

        /// 任务总量
        public let totalCount: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case scrapeJobSet = "ScrapeJobSet"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [PrometheusScrapeJob] {
            self.scrapeJobSet ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 列出 Prometheus 抓取任务
    @inlinable
    public func describePrometheusScrapeJobs(_ input: DescribePrometheusScrapeJobsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePrometheusScrapeJobsResponse> {
        self.client.execute(action: "DescribePrometheusScrapeJobs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 列出 Prometheus 抓取任务
    @inlinable
    public func describePrometheusScrapeJobs(_ input: DescribePrometheusScrapeJobsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePrometheusScrapeJobsResponse {
        try await self.client.execute(action: "DescribePrometheusScrapeJobs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 列出 Prometheus 抓取任务
    @inlinable
    public func describePrometheusScrapeJobs(instanceId: String, agentId: String, name: String? = nil, jobIds: [String]? = nil, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePrometheusScrapeJobsResponse> {
        let input = DescribePrometheusScrapeJobsRequest(instanceId: instanceId, agentId: agentId, name: name, jobIds: jobIds, offset: offset, limit: limit)
        return self.client.execute(action: "DescribePrometheusScrapeJobs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 列出 Prometheus 抓取任务
    @inlinable
    public func describePrometheusScrapeJobs(instanceId: String, agentId: String, name: String? = nil, jobIds: [String]? = nil, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePrometheusScrapeJobsResponse {
        let input = DescribePrometheusScrapeJobsRequest(instanceId: instanceId, agentId: agentId, name: name, jobIds: jobIds, offset: offset, limit: limit)
        return try await self.client.execute(action: "DescribePrometheusScrapeJobs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 列出 Prometheus 抓取任务
    @inlinable
    public func describePrometheusScrapeJobsPaginated(_ input: DescribePrometheusScrapeJobsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [PrometheusScrapeJob])> {
        self.client.paginate(input: input, region: region, command: self.describePrometheusScrapeJobs, logger: logger, on: eventLoop)
    }

    /// 列出 Prometheus 抓取任务
    @inlinable @discardableResult
    public func describePrometheusScrapeJobsPaginated(_ input: DescribePrometheusScrapeJobsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribePrometheusScrapeJobsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describePrometheusScrapeJobs, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 列出 Prometheus 抓取任务
    @inlinable
    public func describePrometheusScrapeJobsPaginator(_ input: DescribePrometheusScrapeJobsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribePrometheusScrapeJobsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describePrometheusScrapeJobs, logger: logger, on: eventLoop)
    }
}
