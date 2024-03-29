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

extension As {
    /// DescribeLifecycleHooks请求参数结构体
    public struct DescribeLifecycleHooksRequest: TCPaginatedRequest {
        /// 按照一个或者多个生命周期挂钩ID查询。生命周期挂钩ID形如：`ash-8azjzxcl`。每次请求的上限为100。参数不支持同时指定`LifecycleHookIds`和`Filters`。
        public let lifecycleHookIds: [String]?

        /// 过滤条件。
        /// - lifecycle-hook-id - String - 是否必填：否 -（过滤条件）按照生命周期挂钩ID过滤。
        /// - lifecycle-hook-name - String - 是否必填：否 -（过滤条件）按照生命周期挂钩名称过滤。
        /// - auto-scaling-group-id - String - 是否必填：否 -（过滤条件）按照伸缩组ID过滤。
        ///
        /// 每次请求的`Filters`的上限为10，`Filter.Values`的上限为5。参数不支持同时指定`LifecycleHookIds `和`Filters`。
        public let filters: [Filter]?

        /// 返回数量，默认为20，最大值为100。关于`Limit`的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/api/213/15688)中的相关小节。
        public let limit: UInt64?

        /// 偏移量，默认为0。关于`Offset`的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/api/213/15688)中的相关小节。
        public let offset: UInt64?

        public init(lifecycleHookIds: [String]? = nil, filters: [Filter]? = nil, limit: UInt64? = nil, offset: UInt64? = nil) {
            self.lifecycleHookIds = lifecycleHookIds
            self.filters = filters
            self.limit = limit
            self.offset = offset
        }

        enum CodingKeys: String, CodingKey {
            case lifecycleHookIds = "LifecycleHookIds"
            case filters = "Filters"
            case limit = "Limit"
            case offset = "Offset"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeLifecycleHooksResponse) -> DescribeLifecycleHooksRequest? {
            guard case let items = response.getItems(), !items.isEmpty, let totalCount = response.getTotalCount(), .init(self.offset ?? 0) + .init(items.count) >= totalCount else {
                return nil
            }
            return .init(lifecycleHookIds: self.lifecycleHookIds, filters: self.filters, limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count))
        }
    }

    /// DescribeLifecycleHooks返回参数结构体
    public struct DescribeLifecycleHooksResponse: TCPaginatedResponse {
        /// 生命周期挂钩数组
        public let lifecycleHookSet: [LifecycleHook]

        /// 总体数量
        public let totalCount: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case lifecycleHookSet = "LifecycleHookSet"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned ``LifecycleHook`` list from the paginated response.
        public func getItems() -> [LifecycleHook] {
            self.lifecycleHookSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 查询生命周期挂钩
    ///
    /// 本接口（DescribeLifecycleHooks）用于查询生命周期挂钩信息。
    ///
    /// * 可以根据伸缩组ID、生命周期挂钩ID或者生命周期挂钩名称等信息来查询生命周期挂钩的详细信息。过滤信息详细请见过滤器`Filter`。
    /// * 如果参数为空，返回当前用户一定数量（`Limit`所指定的数量，默认为20）的生命周期挂钩。
    @inlinable
    public func describeLifecycleHooks(_ input: DescribeLifecycleHooksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeLifecycleHooksResponse> {
        self.client.execute(action: "DescribeLifecycleHooks", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询生命周期挂钩
    ///
    /// 本接口（DescribeLifecycleHooks）用于查询生命周期挂钩信息。
    ///
    /// * 可以根据伸缩组ID、生命周期挂钩ID或者生命周期挂钩名称等信息来查询生命周期挂钩的详细信息。过滤信息详细请见过滤器`Filter`。
    /// * 如果参数为空，返回当前用户一定数量（`Limit`所指定的数量，默认为20）的生命周期挂钩。
    @inlinable
    public func describeLifecycleHooks(_ input: DescribeLifecycleHooksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLifecycleHooksResponse {
        try await self.client.execute(action: "DescribeLifecycleHooks", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询生命周期挂钩
    ///
    /// 本接口（DescribeLifecycleHooks）用于查询生命周期挂钩信息。
    ///
    /// * 可以根据伸缩组ID、生命周期挂钩ID或者生命周期挂钩名称等信息来查询生命周期挂钩的详细信息。过滤信息详细请见过滤器`Filter`。
    /// * 如果参数为空，返回当前用户一定数量（`Limit`所指定的数量，默认为20）的生命周期挂钩。
    @inlinable
    public func describeLifecycleHooks(lifecycleHookIds: [String]? = nil, filters: [Filter]? = nil, limit: UInt64? = nil, offset: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeLifecycleHooksResponse> {
        self.describeLifecycleHooks(.init(lifecycleHookIds: lifecycleHookIds, filters: filters, limit: limit, offset: offset), region: region, logger: logger, on: eventLoop)
    }

    /// 查询生命周期挂钩
    ///
    /// 本接口（DescribeLifecycleHooks）用于查询生命周期挂钩信息。
    ///
    /// * 可以根据伸缩组ID、生命周期挂钩ID或者生命周期挂钩名称等信息来查询生命周期挂钩的详细信息。过滤信息详细请见过滤器`Filter`。
    /// * 如果参数为空，返回当前用户一定数量（`Limit`所指定的数量，默认为20）的生命周期挂钩。
    @inlinable
    public func describeLifecycleHooks(lifecycleHookIds: [String]? = nil, filters: [Filter]? = nil, limit: UInt64? = nil, offset: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLifecycleHooksResponse {
        try await self.describeLifecycleHooks(.init(lifecycleHookIds: lifecycleHookIds, filters: filters, limit: limit, offset: offset), region: region, logger: logger, on: eventLoop)
    }

    /// 查询生命周期挂钩
    ///
    /// 本接口（DescribeLifecycleHooks）用于查询生命周期挂钩信息。
    ///
    /// * 可以根据伸缩组ID、生命周期挂钩ID或者生命周期挂钩名称等信息来查询生命周期挂钩的详细信息。过滤信息详细请见过滤器`Filter`。
    /// * 如果参数为空，返回当前用户一定数量（`Limit`所指定的数量，默认为20）的生命周期挂钩。
    @inlinable
    public func describeLifecycleHooksPaginated(_ input: DescribeLifecycleHooksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [LifecycleHook])> {
        self.client.paginate(input: input, region: region, command: self.describeLifecycleHooks, logger: logger, on: eventLoop)
    }

    /// 查询生命周期挂钩
    ///
    /// 本接口（DescribeLifecycleHooks）用于查询生命周期挂钩信息。
    ///
    /// * 可以根据伸缩组ID、生命周期挂钩ID或者生命周期挂钩名称等信息来查询生命周期挂钩的详细信息。过滤信息详细请见过滤器`Filter`。
    /// * 如果参数为空，返回当前用户一定数量（`Limit`所指定的数量，默认为20）的生命周期挂钩。
    @inlinable @discardableResult
    public func describeLifecycleHooksPaginated(_ input: DescribeLifecycleHooksRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeLifecycleHooksResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeLifecycleHooks, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询生命周期挂钩
    ///
    /// 本接口（DescribeLifecycleHooks）用于查询生命周期挂钩信息。
    ///
    /// * 可以根据伸缩组ID、生命周期挂钩ID或者生命周期挂钩名称等信息来查询生命周期挂钩的详细信息。过滤信息详细请见过滤器`Filter`。
    /// * 如果参数为空，返回当前用户一定数量（`Limit`所指定的数量，默认为20）的生命周期挂钩。
    ///
    /// - Returns: `AsyncSequence`s of ``LifecycleHook`` and ``DescribeLifecycleHooksResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeLifecycleHooksPaginator(_ input: DescribeLifecycleHooksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeLifecycleHooksRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeLifecycleHooks, logger: logger, on: eventLoop)
    }
}
