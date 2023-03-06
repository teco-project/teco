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
    /// DescribeUser请求参数结构体
    public struct DescribeUserRequest: TCPaginatedRequest {
        /// 实例Id
        public let instanceId: String

        /// 按照名称过滤
        public let searchWord: String?

        /// 偏移
        public let offset: Int64?

        /// 本次返回个数
        public let limit: Int64?

        public init(instanceId: String, searchWord: String? = nil, offset: Int64? = nil, limit: Int64? = nil) {
            self.instanceId = instanceId
            self.searchWord = searchWord
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case searchWord = "SearchWord"
            case offset = "Offset"
            case limit = "Limit"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribeUserResponse) -> DescribeUserRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeUserRequest(instanceId: self.instanceId, searchWord: self.searchWord, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit)
        }
    }

    /// DescribeUser返回参数结构体
    public struct DescribeUserResponse: TCPaginatedResponse {
        /// 返回结果列表
        public let result: UserResponse

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [User] {
            self.result.users ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.result.totalCount
        }
    }

    /// 查询用户信息
    @inlinable
    public func describeUser(_ input: DescribeUserRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeUserResponse> {
        self.client.execute(action: "DescribeUser", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询用户信息
    @inlinable
    public func describeUser(_ input: DescribeUserRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeUserResponse {
        try await self.client.execute(action: "DescribeUser", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询用户信息
    @inlinable
    public func describeUser(instanceId: String, searchWord: String? = nil, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeUserResponse> {
        let input = DescribeUserRequest(instanceId: instanceId, searchWord: searchWord, offset: offset, limit: limit)
        return self.client.execute(action: "DescribeUser", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询用户信息
    @inlinable
    public func describeUser(instanceId: String, searchWord: String? = nil, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeUserResponse {
        let input = DescribeUserRequest(instanceId: instanceId, searchWord: searchWord, offset: offset, limit: limit)
        return try await self.client.execute(action: "DescribeUser", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询用户信息
    @inlinable
    public func describeUserPaginated(_ input: DescribeUserRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [User])> {
        self.client.paginate(input: input, region: region, command: self.describeUser, logger: logger, on: eventLoop)
    }

    /// 查询用户信息
    @inlinable @discardableResult
    public func describeUserPaginated(_ input: DescribeUserRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeUserResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeUser, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询用户信息
    @inlinable
    public func describeUserPaginator(_ input: DescribeUserRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> (results: TCClient.Paginator<DescribeUserRequest, DescribeUserResponse>.ResultSequence, responses: TCClient.Paginator<DescribeUserRequest, DescribeUserResponse>.ResponseSequence) {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeUser, logger: logger, on: eventLoop)
    }
}
