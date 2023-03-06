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

extension Sqlserver {
    /// DescribePublishSubscribe请求参数结构体
    public struct DescribePublishSubscribeRequest: TCPaginatedRequest {
        /// 实例ID，形如mssql-j8kv137v
        public let instanceId: String

        /// 订阅/发布实例ID，与InstanceId是发布实例还是订阅实例有关；当InstanceId为发布实例时，本字段按照订阅实例ID做筛选；当InstanceId为订阅实例时，本字段按照发布实例ID做筛选；
        public let pubOrSubInstanceId: String?

        /// 订阅/发布实例内网IP，与InstanceId是发布实例还是订阅实例有关；当InstanceId为发布实例时，本字段按照订阅实例内网IP做筛选；当InstanceId为订阅实例时，本字段按照发布实例内网IP做筛选；
        public let pubOrSubInstanceIp: String?

        /// 订阅发布ID，用于筛选
        public let publishSubscribeId: UInt64?

        /// 订阅发布名字，用于筛选
        public let publishSubscribeName: String?

        /// 发布库名字，用于筛选
        public let publishDBName: String?

        /// 订阅库名字，用于筛选
        public let subscribeDBName: String?

        /// 分页，页数
        public let offset: UInt64?

        /// 分页，页大小
        public let limit: UInt64?

        public init(instanceId: String, pubOrSubInstanceId: String? = nil, pubOrSubInstanceIp: String? = nil, publishSubscribeId: UInt64? = nil, publishSubscribeName: String? = nil, publishDBName: String? = nil, subscribeDBName: String? = nil, offset: UInt64? = nil, limit: UInt64? = nil) {
            self.instanceId = instanceId
            self.pubOrSubInstanceId = pubOrSubInstanceId
            self.pubOrSubInstanceIp = pubOrSubInstanceIp
            self.publishSubscribeId = publishSubscribeId
            self.publishSubscribeName = publishSubscribeName
            self.publishDBName = publishDBName
            self.subscribeDBName = subscribeDBName
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case pubOrSubInstanceId = "PubOrSubInstanceId"
            case pubOrSubInstanceIp = "PubOrSubInstanceIp"
            case publishSubscribeId = "PublishSubscribeId"
            case publishSubscribeName = "PublishSubscribeName"
            case publishDBName = "PublishDBName"
            case subscribeDBName = "SubscribeDBName"
            case offset = "Offset"
            case limit = "Limit"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribePublishSubscribeResponse) -> DescribePublishSubscribeRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribePublishSubscribeRequest(instanceId: self.instanceId, pubOrSubInstanceId: self.pubOrSubInstanceId, pubOrSubInstanceIp: self.pubOrSubInstanceIp, publishSubscribeId: self.publishSubscribeId, publishSubscribeName: self.publishSubscribeName, publishDBName: self.publishDBName, subscribeDBName: self.subscribeDBName, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit)
        }
    }

    /// DescribePublishSubscribe返回参数结构体
    public struct DescribePublishSubscribeResponse: TCPaginatedResponse {
        /// 总数
        public let totalCount: UInt64

        /// 发布订阅列表
        public let publishSubscribeSet: [PublishSubscribe]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case publishSubscribeSet = "PublishSubscribeSet"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [PublishSubscribe] {
            self.publishSubscribeSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 查询订阅发布
    ///
    /// 本接口（DescribePublishSubscribe）用于查询发布订阅关系列表。
    @inlinable
    public func describePublishSubscribe(_ input: DescribePublishSubscribeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePublishSubscribeResponse> {
        self.client.execute(action: "DescribePublishSubscribe", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询订阅发布
    ///
    /// 本接口（DescribePublishSubscribe）用于查询发布订阅关系列表。
    @inlinable
    public func describePublishSubscribe(_ input: DescribePublishSubscribeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePublishSubscribeResponse {
        try await self.client.execute(action: "DescribePublishSubscribe", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询订阅发布
    ///
    /// 本接口（DescribePublishSubscribe）用于查询发布订阅关系列表。
    @inlinable
    public func describePublishSubscribe(instanceId: String, pubOrSubInstanceId: String? = nil, pubOrSubInstanceIp: String? = nil, publishSubscribeId: UInt64? = nil, publishSubscribeName: String? = nil, publishDBName: String? = nil, subscribeDBName: String? = nil, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePublishSubscribeResponse> {
        let input = DescribePublishSubscribeRequest(instanceId: instanceId, pubOrSubInstanceId: pubOrSubInstanceId, pubOrSubInstanceIp: pubOrSubInstanceIp, publishSubscribeId: publishSubscribeId, publishSubscribeName: publishSubscribeName, publishDBName: publishDBName, subscribeDBName: subscribeDBName, offset: offset, limit: limit)
        return self.client.execute(action: "DescribePublishSubscribe", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询订阅发布
    ///
    /// 本接口（DescribePublishSubscribe）用于查询发布订阅关系列表。
    @inlinable
    public func describePublishSubscribe(instanceId: String, pubOrSubInstanceId: String? = nil, pubOrSubInstanceIp: String? = nil, publishSubscribeId: UInt64? = nil, publishSubscribeName: String? = nil, publishDBName: String? = nil, subscribeDBName: String? = nil, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePublishSubscribeResponse {
        let input = DescribePublishSubscribeRequest(instanceId: instanceId, pubOrSubInstanceId: pubOrSubInstanceId, pubOrSubInstanceIp: pubOrSubInstanceIp, publishSubscribeId: publishSubscribeId, publishSubscribeName: publishSubscribeName, publishDBName: publishDBName, subscribeDBName: subscribeDBName, offset: offset, limit: limit)
        return try await self.client.execute(action: "DescribePublishSubscribe", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询订阅发布
    ///
    /// 本接口（DescribePublishSubscribe）用于查询发布订阅关系列表。
    @inlinable
    public func describePublishSubscribePaginated(_ input: DescribePublishSubscribeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [PublishSubscribe])> {
        self.client.paginate(input: input, region: region, command: self.describePublishSubscribe, logger: logger, on: eventLoop)
    }

    /// 查询订阅发布
    ///
    /// 本接口（DescribePublishSubscribe）用于查询发布订阅关系列表。
    @inlinable
    public func describePublishSubscribePaginated(_ input: DescribePublishSubscribeRequest, region: TCRegion? = nil, onResponse: @escaping (DescribePublishSubscribeResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describePublishSubscribe, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询订阅发布
    ///
    /// 本接口（DescribePublishSubscribe）用于查询发布订阅关系列表。
    @inlinable
    public func describePublishSubscribePaginator(_ input: DescribePublishSubscribeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> (results: TCClient.Paginator<DescribePublishSubscribeRequest, DescribePublishSubscribeResponse>.ResultSequence, responses: TCClient.Paginator<DescribePublishSubscribeRequest, DescribePublishSubscribeResponse>.ResponseSequence) {
        let results = TCClient.Paginator<DescribePublishSubscribeRequest, DescribePublishSubscribeResponse>.ResultSequence(input: input, region: region, command: self.describePublishSubscribe, logger: logger, on: eventLoop)
        let responses = TCClient.Paginator<DescribePublishSubscribeRequest, DescribePublishSubscribeResponse>.ResponseSequence(input: input, region: region, command: self.describePublishSubscribe, logger: logger, on: eventLoop)
        return (results, responses)
    }
}
