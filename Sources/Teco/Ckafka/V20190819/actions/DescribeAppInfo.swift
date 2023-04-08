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

extension Ckafka {
    /// DescribeAppInfo请求参数结构体
    public struct DescribeAppInfoRequest: TCPaginatedRequest {
        /// 偏移位置
        public let offset: Int64?

        /// 本次查询用户数目最大数量限制，最大值为50，默认50
        public let limit: Int64?

        public init(offset: Int64? = nil, limit: Int64? = nil) {
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case offset = "Offset"
            case limit = "Limit"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeAppInfoResponse) -> DescribeAppInfoRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeAppInfoRequest(offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit)
        }
    }

    /// DescribeAppInfo返回参数结构体
    public struct DescribeAppInfoResponse: TCPaginatedResponse {
        /// 返回的符合要求的App Id列表
        public let result: AppIdResponse

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [Int64] {
            self.result.appIdList ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.result.totalCount
        }
    }

    /// 查询用户列表
    @inlinable
    public func describeAppInfo(_ input: DescribeAppInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAppInfoResponse> {
        self.client.execute(action: "DescribeAppInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询用户列表
    @inlinable
    public func describeAppInfo(_ input: DescribeAppInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAppInfoResponse {
        try await self.client.execute(action: "DescribeAppInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询用户列表
    @inlinable
    public func describeAppInfo(offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAppInfoResponse> {
        self.describeAppInfo(.init(offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查询用户列表
    @inlinable
    public func describeAppInfo(offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAppInfoResponse {
        try await self.describeAppInfo(.init(offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查询用户列表
    @inlinable
    public func describeAppInfoPaginated(_ input: DescribeAppInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [Int64])> {
        self.client.paginate(input: input, region: region, command: self.describeAppInfo, logger: logger, on: eventLoop)
    }

    /// 查询用户列表
    @inlinable @discardableResult
    public func describeAppInfoPaginated(_ input: DescribeAppInfoRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeAppInfoResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeAppInfo, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询用户列表
    ///
    /// - Returns: `AsyncSequence`s of `Int64` and `DescribeAppInfoResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeAppInfoPaginator(_ input: DescribeAppInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeAppInfoRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeAppInfo, logger: logger, on: eventLoop)
    }
}
