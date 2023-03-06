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
    /// DescribeTopicDetail请求参数结构体
    public struct DescribeTopicDetailRequest: TCPaginatedRequest {
        /// 实例id
        public let instanceId: String

        /// （过滤条件）按照topicName过滤，支持模糊查询
        public let searchWord: String?

        /// 偏移量，不填默认为0
        public let offset: Int64?

        /// 返回数量，不填则默认 10，最大值20，取值要大于0
        public let limit: Int64?

        /// Acl预设策略名称
        public let aclRuleName: String?

        public init(instanceId: String, searchWord: String? = nil, offset: Int64? = nil, limit: Int64? = nil, aclRuleName: String? = nil) {
            self.instanceId = instanceId
            self.searchWord = searchWord
            self.offset = offset
            self.limit = limit
            self.aclRuleName = aclRuleName
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case searchWord = "SearchWord"
            case offset = "Offset"
            case limit = "Limit"
            case aclRuleName = "AclRuleName"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribeTopicDetailResponse) -> DescribeTopicDetailRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeTopicDetailRequest(instanceId: self.instanceId, searchWord: self.searchWord, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, aclRuleName: self.aclRuleName)
        }
    }

    /// DescribeTopicDetail返回参数结构体
    public struct DescribeTopicDetailResponse: TCPaginatedResponse {
        /// 返回的主题详情实体
        public let result: TopicDetailResponse

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [TopicDetail] {
            self.result.topicList ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.result.totalCount
        }
    }

    /// 获取主题列表详情
    ///
    /// 获取主题列表详情（仅控制台调用）
    @inlinable
    public func describeTopicDetail(_ input: DescribeTopicDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTopicDetailResponse> {
        self.client.execute(action: "DescribeTopicDetail", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取主题列表详情
    ///
    /// 获取主题列表详情（仅控制台调用）
    @inlinable
    public func describeTopicDetail(_ input: DescribeTopicDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTopicDetailResponse {
        try await self.client.execute(action: "DescribeTopicDetail", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取主题列表详情
    ///
    /// 获取主题列表详情（仅控制台调用）
    @inlinable
    public func describeTopicDetail(instanceId: String, searchWord: String? = nil, offset: Int64? = nil, limit: Int64? = nil, aclRuleName: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTopicDetailResponse> {
        let input = DescribeTopicDetailRequest(instanceId: instanceId, searchWord: searchWord, offset: offset, limit: limit, aclRuleName: aclRuleName)
        return self.client.execute(action: "DescribeTopicDetail", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取主题列表详情
    ///
    /// 获取主题列表详情（仅控制台调用）
    @inlinable
    public func describeTopicDetail(instanceId: String, searchWord: String? = nil, offset: Int64? = nil, limit: Int64? = nil, aclRuleName: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTopicDetailResponse {
        let input = DescribeTopicDetailRequest(instanceId: instanceId, searchWord: searchWord, offset: offset, limit: limit, aclRuleName: aclRuleName)
        return try await self.client.execute(action: "DescribeTopicDetail", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取主题列表详情
    ///
    /// 获取主题列表详情（仅控制台调用）
    @inlinable
    public func describeTopicDetailPaginated(_ input: DescribeTopicDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [TopicDetail])> {
        self.client.paginate(input: input, region: region, command: self.describeTopicDetail, logger: logger, on: eventLoop)
    }

    /// 获取主题列表详情
    ///
    /// 获取主题列表详情（仅控制台调用）
    @inlinable @discardableResult
    public func describeTopicDetailPaginated(_ input: DescribeTopicDetailRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeTopicDetailResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeTopicDetail, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取主题列表详情
    ///
    /// 获取主题列表详情（仅控制台调用）
    ///
    /// - Returns: `AsyncSequence`s of `TopicDetail` and `DescribeTopicDetailResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeTopicDetailPaginator(_ input: DescribeTopicDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeTopicDetailRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeTopicDetail, logger: logger, on: eventLoop)
    }
}
