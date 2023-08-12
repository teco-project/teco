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
import TecoPaginationHelpers

extension Ckafka {
    /// DescribeTopic请求参数结构体
    public struct DescribeTopicRequest: TCPaginatedRequest {
        /// 实例 ID
        public let instanceId: String

        /// 过滤条件，按照 topicName 过滤，支持模糊查询
        public let searchWord: String?

        /// 偏移量，不填默认为0
        public let offset: Int64?

        /// 返回数量，不填则默认为20，最大值为50
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
        public func makeNextRequest(with response: DescribeTopicResponse) -> DescribeTopicRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeTopicRequest(instanceId: self.instanceId, searchWord: self.searchWord, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, aclRuleName: self.aclRuleName)
        }
    }

    /// DescribeTopic返回参数结构体
    public struct DescribeTopicResponse: TCPaginatedResponse {
        /// 返回的结果
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: TopicResult?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }

        /// Extract the returned ``Topic`` list from the paginated response.
        public func getItems() -> [Topic] {
            self.result?.topicList ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.result?.totalCount
        }
    }

    /// 获取主题列表
    ///
    /// 接口请求域名：https://ckafka.tencentcloudapi.com
    /// 本接口（DescribeTopic）用于在用户获取消息队列 CKafka 实例的主题列表
    @inlinable
    public func describeTopic(_ input: DescribeTopicRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTopicResponse> {
        self.client.execute(action: "DescribeTopic", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取主题列表
    ///
    /// 接口请求域名：https://ckafka.tencentcloudapi.com
    /// 本接口（DescribeTopic）用于在用户获取消息队列 CKafka 实例的主题列表
    @inlinable
    public func describeTopic(_ input: DescribeTopicRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTopicResponse {
        try await self.client.execute(action: "DescribeTopic", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取主题列表
    ///
    /// 接口请求域名：https://ckafka.tencentcloudapi.com
    /// 本接口（DescribeTopic）用于在用户获取消息队列 CKafka 实例的主题列表
    @inlinable
    public func describeTopic(instanceId: String, searchWord: String? = nil, offset: Int64? = nil, limit: Int64? = nil, aclRuleName: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTopicResponse> {
        self.describeTopic(.init(instanceId: instanceId, searchWord: searchWord, offset: offset, limit: limit, aclRuleName: aclRuleName), region: region, logger: logger, on: eventLoop)
    }

    /// 获取主题列表
    ///
    /// 接口请求域名：https://ckafka.tencentcloudapi.com
    /// 本接口（DescribeTopic）用于在用户获取消息队列 CKafka 实例的主题列表
    @inlinable
    public func describeTopic(instanceId: String, searchWord: String? = nil, offset: Int64? = nil, limit: Int64? = nil, aclRuleName: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTopicResponse {
        try await self.describeTopic(.init(instanceId: instanceId, searchWord: searchWord, offset: offset, limit: limit, aclRuleName: aclRuleName), region: region, logger: logger, on: eventLoop)
    }

    /// 获取主题列表
    ///
    /// 接口请求域名：https://ckafka.tencentcloudapi.com
    /// 本接口（DescribeTopic）用于在用户获取消息队列 CKafka 实例的主题列表
    @inlinable
    public func describeTopicPaginated(_ input: DescribeTopicRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [Topic])> {
        self.client.paginate(input: input, region: region, command: self.describeTopic, logger: logger, on: eventLoop)
    }

    /// 获取主题列表
    ///
    /// 接口请求域名：https://ckafka.tencentcloudapi.com
    /// 本接口（DescribeTopic）用于在用户获取消息队列 CKafka 实例的主题列表
    @inlinable @discardableResult
    public func describeTopicPaginated(_ input: DescribeTopicRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeTopicResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeTopic, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取主题列表
    ///
    /// 接口请求域名：https://ckafka.tencentcloudapi.com
    /// 本接口（DescribeTopic）用于在用户获取消息队列 CKafka 实例的主题列表
    ///
    /// - Returns: `AsyncSequence`s of ``Topic`` and ``DescribeTopicResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeTopicPaginator(_ input: DescribeTopicRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeTopicRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeTopic, logger: logger, on: eventLoop)
    }
}
