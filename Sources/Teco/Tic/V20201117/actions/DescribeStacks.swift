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

extension Tic {
    /// DescribeStacks请求参数结构体
    public struct DescribeStacksRequest: TCPaginatedRequest {
        /// 按照⼀个或者多个资源栈ID查询
        public let stackIds: [String]?

        /// 偏移量，默认为0。关于Offset的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/api/213/15688)中的相关小节。
        public let offset: Int64?

        /// 返回数量，默认为20，最大值为100。关于Limit的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/api/213/15688)中的相关小节。
        public let limit: Int64?

        public init(stackIds: [String]? = nil, offset: Int64? = nil, limit: Int64? = nil) {
            self.stackIds = stackIds
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case stackIds = "StackIds"
            case offset = "Offset"
            case limit = "Limit"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribeStacksResponse) -> DescribeStacksRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeStacksRequest(stackIds: self.stackIds, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit)
        }
    }

    /// DescribeStacks返回参数结构体
    public struct DescribeStacksResponse: TCPaginatedResponse {
        /// 符合条件的资源栈数量
        public let totalCount: Int64

        /// 资源栈详细信息列表
        public let stacks: [StackInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case stacks = "Stacks"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [StackInfo] {
            self.stacks
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 查询资源栈列表
    ///
    /// 本接口（DescribeStacks）用于查询一个或多个资源栈的详细信息。
    ///
    /// - 可以根据资源栈ID来查询感兴趣的资源栈信息
    /// - 若参数为空，返回当前用户一定数量（Limit所指定的数量，默认为20）的资源栈
    @inlinable
    public func describeStacks(_ input: DescribeStacksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeStacksResponse> {
        self.client.execute(action: "DescribeStacks", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询资源栈列表
    ///
    /// 本接口（DescribeStacks）用于查询一个或多个资源栈的详细信息。
    ///
    /// - 可以根据资源栈ID来查询感兴趣的资源栈信息
    /// - 若参数为空，返回当前用户一定数量（Limit所指定的数量，默认为20）的资源栈
    @inlinable
    public func describeStacks(_ input: DescribeStacksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeStacksResponse {
        try await self.client.execute(action: "DescribeStacks", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询资源栈列表
    ///
    /// 本接口（DescribeStacks）用于查询一个或多个资源栈的详细信息。
    ///
    /// - 可以根据资源栈ID来查询感兴趣的资源栈信息
    /// - 若参数为空，返回当前用户一定数量（Limit所指定的数量，默认为20）的资源栈
    @inlinable
    public func describeStacks(stackIds: [String]? = nil, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeStacksResponse> {
        let input = DescribeStacksRequest(stackIds: stackIds, offset: offset, limit: limit)
        return self.client.execute(action: "DescribeStacks", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询资源栈列表
    ///
    /// 本接口（DescribeStacks）用于查询一个或多个资源栈的详细信息。
    ///
    /// - 可以根据资源栈ID来查询感兴趣的资源栈信息
    /// - 若参数为空，返回当前用户一定数量（Limit所指定的数量，默认为20）的资源栈
    @inlinable
    public func describeStacks(stackIds: [String]? = nil, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeStacksResponse {
        let input = DescribeStacksRequest(stackIds: stackIds, offset: offset, limit: limit)
        return try await self.client.execute(action: "DescribeStacks", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询资源栈列表
    ///
    /// 本接口（DescribeStacks）用于查询一个或多个资源栈的详细信息。
    ///
    /// - 可以根据资源栈ID来查询感兴趣的资源栈信息
    /// - 若参数为空，返回当前用户一定数量（Limit所指定的数量，默认为20）的资源栈
    @inlinable
    public func describeStacksPaginated(_ input: DescribeStacksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [StackInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeStacks, logger: logger, on: eventLoop)
    }

    /// 查询资源栈列表
    ///
    /// 本接口（DescribeStacks）用于查询一个或多个资源栈的详细信息。
    ///
    /// - 可以根据资源栈ID来查询感兴趣的资源栈信息
    /// - 若参数为空，返回当前用户一定数量（Limit所指定的数量，默认为20）的资源栈
    @inlinable @discardableResult
    public func describeStacksPaginated(_ input: DescribeStacksRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeStacksResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeStacks, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询资源栈列表
    ///
    /// 本接口（DescribeStacks）用于查询一个或多个资源栈的详细信息。
    ///
    /// - 可以根据资源栈ID来查询感兴趣的资源栈信息
    /// - 若参数为空，返回当前用户一定数量（Limit所指定的数量，默认为20）的资源栈
    ///
    /// - Returns: `AsyncSequence`s of `StackInfo` and `DescribeStacksResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeStacksPaginator(_ input: DescribeStacksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeStacksRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeStacks, logger: logger, on: eventLoop)
    }
}
