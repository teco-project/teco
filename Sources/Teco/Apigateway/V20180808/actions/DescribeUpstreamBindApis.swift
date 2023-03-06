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

extension Apigateway {
    /// DescribeUpstreamBindApis请求参数结构体
    public struct DescribeUpstreamBindApisRequest: TCPaginatedRequest {
        /// 分页大小
        public let limit: UInt64

        /// 分页起始位置
        public let offset: UInt64

        /// 后端通道ID
        public let upstreamId: String

        /// ServiceId和ApiId过滤查询
        public let filters: [Filter]?

        public init(limit: UInt64, offset: UInt64, upstreamId: String, filters: [Filter]? = nil) {
            self.limit = limit
            self.offset = offset
            self.upstreamId = upstreamId
            self.filters = filters
        }

        enum CodingKeys: String, CodingKey {
            case limit = "Limit"
            case offset = "Offset"
            case upstreamId = "UpstreamId"
            case filters = "Filters"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribeUpstreamBindApisResponse) -> DescribeUpstreamBindApisRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeUpstreamBindApisRequest(limit: self.limit, offset: self.offset + .init(response.getItems().count), upstreamId: self.upstreamId, filters: self.filters)
        }
    }

    /// DescribeUpstreamBindApis返回参数结构体
    public struct DescribeUpstreamBindApisResponse: TCPaginatedResponse {
        /// 查询结果
        public let result: DescribeUpstreamBindApis

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [BindApiInfo] {
            self.result.bindApiSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.result.totalCount
        }
    }

    /// 查询后端通道所绑定的API列表
    @inlinable
    public func describeUpstreamBindApis(_ input: DescribeUpstreamBindApisRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeUpstreamBindApisResponse> {
        self.client.execute(action: "DescribeUpstreamBindApis", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询后端通道所绑定的API列表
    @inlinable
    public func describeUpstreamBindApis(_ input: DescribeUpstreamBindApisRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeUpstreamBindApisResponse {
        try await self.client.execute(action: "DescribeUpstreamBindApis", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询后端通道所绑定的API列表
    @inlinable
    public func describeUpstreamBindApis(limit: UInt64, offset: UInt64, upstreamId: String, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeUpstreamBindApisResponse> {
        let input = DescribeUpstreamBindApisRequest(limit: limit, offset: offset, upstreamId: upstreamId, filters: filters)
        return self.client.execute(action: "DescribeUpstreamBindApis", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询后端通道所绑定的API列表
    @inlinable
    public func describeUpstreamBindApis(limit: UInt64, offset: UInt64, upstreamId: String, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeUpstreamBindApisResponse {
        let input = DescribeUpstreamBindApisRequest(limit: limit, offset: offset, upstreamId: upstreamId, filters: filters)
        return try await self.client.execute(action: "DescribeUpstreamBindApis", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询后端通道所绑定的API列表
    @inlinable
    public func describeUpstreamBindApisPaginated(_ input: DescribeUpstreamBindApisRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [BindApiInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeUpstreamBindApis, logger: logger, on: eventLoop)
    }

    /// 查询后端通道所绑定的API列表
    @inlinable @discardableResult
    public func describeUpstreamBindApisPaginated(_ input: DescribeUpstreamBindApisRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeUpstreamBindApisResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeUpstreamBindApis, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询后端通道所绑定的API列表
    @inlinable
    public func describeUpstreamBindApisPaginator(_ input: DescribeUpstreamBindApisRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> (results: TCClient.Paginator<DescribeUpstreamBindApisRequest, DescribeUpstreamBindApisResponse>.ResultSequence, responses: TCClient.Paginator<DescribeUpstreamBindApisRequest, DescribeUpstreamBindApisResponse>.ResponseSequence) {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeUpstreamBindApis, logger: logger, on: eventLoop)
    }
}
