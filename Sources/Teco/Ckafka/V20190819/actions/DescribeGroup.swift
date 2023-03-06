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
    /// DescribeGroup请求参数结构体
    public struct DescribeGroupRequest: TCPaginatedRequest {
        /// 实例ID
        public let instanceId: String

        /// 搜索关键字
        public let searchWord: String?

        /// 偏移量
        public let offset: Int64?

        /// 最大返回数量
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
        public func getNextPaginatedRequest(with response: DescribeGroupResponse) -> DescribeGroupRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeGroupRequest(instanceId: self.instanceId, searchWord: self.searchWord, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit)
        }
    }

    /// DescribeGroup返回参数结构体
    public struct DescribeGroupResponse: TCPaginatedResponse {
        /// 返回结果集列表
        public let result: GroupResponse

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [DescribeGroup] {
            self.result.groupList ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.result.totalCount
        }
    }

    /// 枚举消费分组(精简版)
    @inlinable
    public func describeGroup(_ input: DescribeGroupRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeGroupResponse> {
        self.client.execute(action: "DescribeGroup", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 枚举消费分组(精简版)
    @inlinable
    public func describeGroup(_ input: DescribeGroupRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeGroupResponse {
        try await self.client.execute(action: "DescribeGroup", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 枚举消费分组(精简版)
    @inlinable
    public func describeGroup(instanceId: String, searchWord: String? = nil, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeGroupResponse> {
        let input = DescribeGroupRequest(instanceId: instanceId, searchWord: searchWord, offset: offset, limit: limit)
        return self.client.execute(action: "DescribeGroup", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 枚举消费分组(精简版)
    @inlinable
    public func describeGroup(instanceId: String, searchWord: String? = nil, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeGroupResponse {
        let input = DescribeGroupRequest(instanceId: instanceId, searchWord: searchWord, offset: offset, limit: limit)
        return try await self.client.execute(action: "DescribeGroup", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 枚举消费分组(精简版)
    @inlinable
    public func describeGroupPaginated(_ input: DescribeGroupRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [DescribeGroup])> {
        self.client.paginate(input: input, region: region, command: self.describeGroup, logger: logger, on: eventLoop)
    }

    /// 枚举消费分组(精简版)
    @inlinable @discardableResult
    public func describeGroupPaginated(_ input: DescribeGroupRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeGroupResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeGroup, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 枚举消费分组(精简版)
    @inlinable
    public func describeGroupPaginator(_ input: DescribeGroupRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> (results: TCClient.Paginator<DescribeGroupRequest, DescribeGroupResponse>.ResultSequence, responses: TCClient.Paginator<DescribeGroupRequest, DescribeGroupResponse>.ResponseSequence) {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeGroup, logger: logger, on: eventLoop)
    }
}
