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

extension Oceanus {
    /// DescribeJobConfigs请求参数结构体
    public struct DescribeJobConfigsRequest: TCPaginatedRequest {
        /// 作业Id
        public let jobId: String

        /// 作业配置版本
        public let jobConfigVersions: [UInt64]?

        /// 偏移量，默认0
        public let offset: Int64?

        /// 分页大小，默认20，最大100
        public let limit: UInt64?

        /// 过滤条件
        public let filters: [Filter]?

        /// true 表示只展示草稿
        public let onlyDraft: Bool?

        /// 工作空间 SerialId
        public let workSpaceId: String?

        public init(jobId: String, jobConfigVersions: [UInt64]? = nil, offset: Int64? = nil, limit: UInt64? = nil, filters: [Filter]? = nil, onlyDraft: Bool? = nil, workSpaceId: String? = nil) {
            self.jobId = jobId
            self.jobConfigVersions = jobConfigVersions
            self.offset = offset
            self.limit = limit
            self.filters = filters
            self.onlyDraft = onlyDraft
            self.workSpaceId = workSpaceId
        }

        enum CodingKeys: String, CodingKey {
            case jobId = "JobId"
            case jobConfigVersions = "JobConfigVersions"
            case offset = "Offset"
            case limit = "Limit"
            case filters = "Filters"
            case onlyDraft = "OnlyDraft"
            case workSpaceId = "WorkSpaceId"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribeJobConfigsResponse) -> DescribeJobConfigsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeJobConfigsRequest(jobId: self.jobId, jobConfigVersions: self.jobConfigVersions, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, filters: self.filters, onlyDraft: self.onlyDraft, workSpaceId: self.workSpaceId)
        }
    }

    /// DescribeJobConfigs返回参数结构体
    public struct DescribeJobConfigsResponse: TCPaginatedResponse {
        /// 总的配置版本数量
        public let totalCount: Int64

        /// 作业配置列表
        public let jobConfigSet: [JobConfig]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case jobConfigSet = "JobConfigSet"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [JobConfig] {
            self.jobConfigSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 查询作业配置
    ///
    /// 查询作业配置列表，一次最多查询100个
    @inlinable
    public func describeJobConfigs(_ input: DescribeJobConfigsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeJobConfigsResponse> {
        self.client.execute(action: "DescribeJobConfigs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询作业配置
    ///
    /// 查询作业配置列表，一次最多查询100个
    @inlinable
    public func describeJobConfigs(_ input: DescribeJobConfigsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeJobConfigsResponse {
        try await self.client.execute(action: "DescribeJobConfigs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询作业配置
    ///
    /// 查询作业配置列表，一次最多查询100个
    @inlinable
    public func describeJobConfigs(jobId: String, jobConfigVersions: [UInt64]? = nil, offset: Int64? = nil, limit: UInt64? = nil, filters: [Filter]? = nil, onlyDraft: Bool? = nil, workSpaceId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeJobConfigsResponse> {
        let input = DescribeJobConfigsRequest(jobId: jobId, jobConfigVersions: jobConfigVersions, offset: offset, limit: limit, filters: filters, onlyDraft: onlyDraft, workSpaceId: workSpaceId)
        return self.client.execute(action: "DescribeJobConfigs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询作业配置
    ///
    /// 查询作业配置列表，一次最多查询100个
    @inlinable
    public func describeJobConfigs(jobId: String, jobConfigVersions: [UInt64]? = nil, offset: Int64? = nil, limit: UInt64? = nil, filters: [Filter]? = nil, onlyDraft: Bool? = nil, workSpaceId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeJobConfigsResponse {
        let input = DescribeJobConfigsRequest(jobId: jobId, jobConfigVersions: jobConfigVersions, offset: offset, limit: limit, filters: filters, onlyDraft: onlyDraft, workSpaceId: workSpaceId)
        return try await self.client.execute(action: "DescribeJobConfigs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询作业配置
    ///
    /// 查询作业配置列表，一次最多查询100个
    @inlinable
    public func describeJobConfigsPaginated(_ input: DescribeJobConfigsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [JobConfig])> {
        self.client.paginate(input: input, region: region, command: self.describeJobConfigs, logger: logger, on: eventLoop)
    }

    /// 查询作业配置
    ///
    /// 查询作业配置列表，一次最多查询100个
    @inlinable @discardableResult
    public func describeJobConfigsPaginated(_ input: DescribeJobConfigsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeJobConfigsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeJobConfigs, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询作业配置
    ///
    /// 查询作业配置列表，一次最多查询100个
    @inlinable
    public func describeJobConfigsPaginator(_ input: DescribeJobConfigsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> (results: TCClient.Paginator<DescribeJobConfigsRequest, DescribeJobConfigsResponse>.ResultSequence, responses: TCClient.Paginator<DescribeJobConfigsRequest, DescribeJobConfigsResponse>.ResponseSequence) {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeJobConfigs, logger: logger, on: eventLoop)
    }
}
