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

extension Batch {
    /// DescribeComputeEnvs请求参数结构体
    public struct DescribeComputeEnvsRequest: TCPaginatedRequest {
        /// 计算环境ID列表，与Filters参数不能同时指定。
        public let envIds: [String]?

        /// 过滤条件
        /// <li> zone - String - 是否必填：否 -（过滤条件）按照可用区过滤。</li>
        /// <li> env-id - String - 是否必填：否 -（过滤条件）按照计算环境ID过滤。</li>
        /// <li> env-name - String - 是否必填：否 -（过滤条件）按照计算环境名称过滤。</li>
        /// <li> resource-type - String - 是否必填：否 -（过滤条件）按照计算资源类型过滤，取值CVM或者CPM(黑石)。</li>
        /// <li> tag-key - String - 是否必填：否 -（过滤条件）按照标签键进行过滤。</li>
        /// <li>tag-value - String - 是否必填：否 -（过滤条件）按照标签值进行过滤。</li>
        /// <li>tag:tag-key - String - 是否必填：否 -（过滤条件）按照标签键值对进行过滤。 tag-key使用具体的标签键进行替换。</li>
        /// 与EnvIds参数不能同时指定。
        public let filters: [Filter]?

        /// 偏移量
        public let offset: UInt64?

        /// 返回数量
        public let limit: UInt64?

        public init(envIds: [String]? = nil, filters: [Filter]? = nil, offset: UInt64? = nil, limit: UInt64? = nil) {
            self.envIds = envIds
            self.filters = filters
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case envIds = "EnvIds"
            case filters = "Filters"
            case offset = "Offset"
            case limit = "Limit"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribeComputeEnvsResponse) -> DescribeComputeEnvsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeComputeEnvsRequest(envIds: self.envIds, filters: self.filters, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit)
        }
    }

    /// DescribeComputeEnvs返回参数结构体
    public struct DescribeComputeEnvsResponse: TCPaginatedResponse {
        /// 计算环境列表
        public let computeEnvSet: [ComputeEnvView]

        /// 计算环境数量
        public let totalCount: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case computeEnvSet = "ComputeEnvSet"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [ComputeEnvView] {
            self.computeEnvSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 获取计算环境列表
    ///
    /// 用于查看计算环境列表
    @inlinable
    public func describeComputeEnvs(_ input: DescribeComputeEnvsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeComputeEnvsResponse> {
        self.client.execute(action: "DescribeComputeEnvs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取计算环境列表
    ///
    /// 用于查看计算环境列表
    @inlinable
    public func describeComputeEnvs(_ input: DescribeComputeEnvsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeComputeEnvsResponse {
        try await self.client.execute(action: "DescribeComputeEnvs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取计算环境列表
    ///
    /// 用于查看计算环境列表
    @inlinable
    public func describeComputeEnvs(envIds: [String]? = nil, filters: [Filter]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeComputeEnvsResponse> {
        let input = DescribeComputeEnvsRequest(envIds: envIds, filters: filters, offset: offset, limit: limit)
        return self.client.execute(action: "DescribeComputeEnvs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取计算环境列表
    ///
    /// 用于查看计算环境列表
    @inlinable
    public func describeComputeEnvs(envIds: [String]? = nil, filters: [Filter]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeComputeEnvsResponse {
        let input = DescribeComputeEnvsRequest(envIds: envIds, filters: filters, offset: offset, limit: limit)
        return try await self.client.execute(action: "DescribeComputeEnvs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取计算环境列表
    ///
    /// 用于查看计算环境列表
    @inlinable
    public func describeComputeEnvsPaginated(_ input: DescribeComputeEnvsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [ComputeEnvView])> {
        self.client.paginate(input: input, region: region, command: self.describeComputeEnvs, logger: logger, on: eventLoop)
    }

    /// 获取计算环境列表
    ///
    /// 用于查看计算环境列表
    @inlinable
    public func describeComputeEnvsPaginated(_ input: DescribeComputeEnvsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeComputeEnvsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeComputeEnvs, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取计算环境列表
    ///
    /// 用于查看计算环境列表
    @inlinable
    public func describeComputeEnvsPaginator(_ input: DescribeComputeEnvsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> (results: TCClient.Paginator<DescribeComputeEnvsRequest, DescribeComputeEnvsResponse>.ResultSequence, responses: TCClient.Paginator<DescribeComputeEnvsRequest, DescribeComputeEnvsResponse>.ResponseSequence) {
        let results = TCClient.Paginator<DescribeComputeEnvsRequest, DescribeComputeEnvsResponse>.ResultSequence(input: input, region: region, command: self.describeComputeEnvs, logger: logger, on: eventLoop)
        let responses = TCClient.Paginator<DescribeComputeEnvsRequest, DescribeComputeEnvsResponse>.ResponseSequence(input: input, region: region, command: self.describeComputeEnvs, logger: logger, on: eventLoop)
        return (results, responses)
    }
}
