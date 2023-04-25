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

// Test PR teco-project/teco-code-generator#23.

import Logging
import NIOCore
import TecoCore
import TecoPaginationHelpers

extension Ame {
    /// DescribeAuthInfo请求参数结构体
    public struct DescribeAuthInfoRequest: TCPaginatedRequest {
        /// 偏移量：Offset=Offset+Limit
        public let offset: Int64?

        /// 数据条数
        public let limit: Int64?

        /// 搜索关键字
        public let key: String?

        public init(offset: Int64? = nil, limit: Int64? = nil, key: String? = nil) {
            self.offset = offset
            self.limit = limit
            self.key = key
        }

        enum CodingKeys: String, CodingKey {
            case offset = "Offset"
            case limit = "Limit"
            case key = "Key"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeAuthInfoResponse) -> DescribeAuthInfoRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeAuthInfoRequest(offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, key: self.key)
        }
    }

    /// DescribeAuthInfo返回参数结构体
    public struct DescribeAuthInfoResponse: TCPaginatedResponse {
        /// 授权项目列表
        public let authInfo: [AuthInfo]

        /// 总数
        public let totalCount: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case authInfo = "AuthInfo"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [AuthInfo] {
            self.authInfo
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 获取授权项目列表
    ///
    /// 获取授权项目信息列表
    @inlinable
    public func describeAuthInfo(_ input: DescribeAuthInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAuthInfoResponse> {
        self.client.execute(action: "DescribeAuthInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取授权项目列表
    ///
    /// 获取授权项目信息列表
    @inlinable
    public func describeAuthInfo(_ input: DescribeAuthInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAuthInfoResponse {
        try await self.client.execute(action: "DescribeAuthInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取授权项目列表
    ///
    /// 获取授权项目信息列表
    @inlinable
    public func describeAuthInfo(offset: Int64? = nil, limit: Int64? = nil, key: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAuthInfoResponse> {
        self.describeAuthInfo(.init(offset: offset, limit: limit, key: key), region: region, logger: logger, on: eventLoop)
    }

    /// 获取授权项目列表
    ///
    /// 获取授权项目信息列表
    @inlinable
    public func describeAuthInfo(offset: Int64? = nil, limit: Int64? = nil, key: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAuthInfoResponse {
        try await self.describeAuthInfo(.init(offset: offset, limit: limit, key: key), region: region, logger: logger, on: eventLoop)
    }

    /// 获取授权项目列表
    ///
    /// 获取授权项目信息列表
    @inlinable
    public func describeAuthInfoPaginated(_ input: DescribeAuthInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [AuthInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeAuthInfo, logger: logger, on: eventLoop)
    }

    /// 获取授权项目列表
    ///
    /// 获取授权项目信息列表
    @inlinable @discardableResult
    public func describeAuthInfoPaginated(_ input: DescribeAuthInfoRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeAuthInfoResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeAuthInfo, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取授权项目列表
    ///
    /// 获取授权项目信息列表
    ///
    /// - Returns: `AsyncSequence`s of `AuthInfo` and `DescribeAuthInfoResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeAuthInfoPaginator(_ input: DescribeAuthInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeAuthInfoRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeAuthInfo, logger: logger, on: eventLoop)
    }
}
