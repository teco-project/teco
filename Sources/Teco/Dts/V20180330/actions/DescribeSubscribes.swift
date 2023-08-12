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

extension Dts {
    /// DescribeSubscribes请求参数结构体
    public struct DescribeSubscribesRequest: TCPaginatedRequest {
        /// 数据订阅的实例ID
        public let subscribeId: String?

        /// 数据订阅的实例名称
        public let subscribeName: String?

        /// 绑定数据库实例的ID
        public let instanceId: String?

        /// 数据订阅实例的通道ID
        public let channelId: String?

        /// 计费模式筛选，可能的值：0-包年包月，1-按量计费
        public let payType: String?

        /// 订阅的数据库产品，如mysql
        public let product: String?

        /// 数据订阅实例的状态，creating - 创建中，normal - 正常运行，isolating - 隔离中，isolated - 已隔离，offlining - 下线中
        public let status: [String]?

        /// 数据订阅实例的配置状态，unconfigure - 未配置， configuring - 配置中，configured - 已配置
        public let subsStatus: [String]?

        /// 返回记录的起始偏移量，默认为0。请输入非负整数
        public let offset: Int64?

        /// 单次返回的记录数量，默认20。请输入1到100的整数
        public let limit: Int64?

        /// 排序方向，可选的值为"DESC"和"ASC"，默认为"DESC"，按创建时间逆序排序
        public let orderDirection: String?

        /// 标签过滤条件
        public let tagFilters: [TagFilter]?

        /// 订阅实例版本;txdts-旧版数据订阅，kafka-kafka版本数据订阅
        public let subscribeVersion: String?

        public init(subscribeId: String? = nil, subscribeName: String? = nil, instanceId: String? = nil, channelId: String? = nil, payType: String? = nil, product: String? = nil, status: [String]? = nil, subsStatus: [String]? = nil, offset: Int64? = nil, limit: Int64? = nil, orderDirection: String? = nil, tagFilters: [TagFilter]? = nil, subscribeVersion: String? = nil) {
            self.subscribeId = subscribeId
            self.subscribeName = subscribeName
            self.instanceId = instanceId
            self.channelId = channelId
            self.payType = payType
            self.product = product
            self.status = status
            self.subsStatus = subsStatus
            self.offset = offset
            self.limit = limit
            self.orderDirection = orderDirection
            self.tagFilters = tagFilters
            self.subscribeVersion = subscribeVersion
        }

        enum CodingKeys: String, CodingKey {
            case subscribeId = "SubscribeId"
            case subscribeName = "SubscribeName"
            case instanceId = "InstanceId"
            case channelId = "ChannelId"
            case payType = "PayType"
            case product = "Product"
            case status = "Status"
            case subsStatus = "SubsStatus"
            case offset = "Offset"
            case limit = "Limit"
            case orderDirection = "OrderDirection"
            case tagFilters = "TagFilters"
            case subscribeVersion = "SubscribeVersion"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeSubscribesResponse) -> DescribeSubscribesRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeSubscribesRequest(subscribeId: self.subscribeId, subscribeName: self.subscribeName, instanceId: self.instanceId, channelId: self.channelId, payType: self.payType, product: self.product, status: self.status, subsStatus: self.subsStatus, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, orderDirection: self.orderDirection, tagFilters: self.tagFilters, subscribeVersion: self.subscribeVersion)
        }
    }

    /// DescribeSubscribes返回参数结构体
    public struct DescribeSubscribesResponse: TCPaginatedResponse {
        /// 符合查询条件的实例总数
        public let totalCount: Int64

        /// 数据订阅实例的信息列表
        public let items: [SubscribeInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case items = "Items"
            case requestId = "RequestId"
        }

        /// Extract the returned ``SubscribeInfo`` list from the paginated response.
        public func getItems() -> [SubscribeInfo] {
            self.items
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 获取数据订阅实例列表
    ///
    /// 本接口(DescribeSubscribes)获取数据订阅实例信息列表，默认分页，每次返回20条
    @inlinable
    public func describeSubscribes(_ input: DescribeSubscribesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSubscribesResponse> {
        self.client.execute(action: "DescribeSubscribes", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取数据订阅实例列表
    ///
    /// 本接口(DescribeSubscribes)获取数据订阅实例信息列表，默认分页，每次返回20条
    @inlinable
    public func describeSubscribes(_ input: DescribeSubscribesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSubscribesResponse {
        try await self.client.execute(action: "DescribeSubscribes", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取数据订阅实例列表
    ///
    /// 本接口(DescribeSubscribes)获取数据订阅实例信息列表，默认分页，每次返回20条
    @inlinable
    public func describeSubscribes(subscribeId: String? = nil, subscribeName: String? = nil, instanceId: String? = nil, channelId: String? = nil, payType: String? = nil, product: String? = nil, status: [String]? = nil, subsStatus: [String]? = nil, offset: Int64? = nil, limit: Int64? = nil, orderDirection: String? = nil, tagFilters: [TagFilter]? = nil, subscribeVersion: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSubscribesResponse> {
        self.describeSubscribes(.init(subscribeId: subscribeId, subscribeName: subscribeName, instanceId: instanceId, channelId: channelId, payType: payType, product: product, status: status, subsStatus: subsStatus, offset: offset, limit: limit, orderDirection: orderDirection, tagFilters: tagFilters, subscribeVersion: subscribeVersion), region: region, logger: logger, on: eventLoop)
    }

    /// 获取数据订阅实例列表
    ///
    /// 本接口(DescribeSubscribes)获取数据订阅实例信息列表，默认分页，每次返回20条
    @inlinable
    public func describeSubscribes(subscribeId: String? = nil, subscribeName: String? = nil, instanceId: String? = nil, channelId: String? = nil, payType: String? = nil, product: String? = nil, status: [String]? = nil, subsStatus: [String]? = nil, offset: Int64? = nil, limit: Int64? = nil, orderDirection: String? = nil, tagFilters: [TagFilter]? = nil, subscribeVersion: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSubscribesResponse {
        try await self.describeSubscribes(.init(subscribeId: subscribeId, subscribeName: subscribeName, instanceId: instanceId, channelId: channelId, payType: payType, product: product, status: status, subsStatus: subsStatus, offset: offset, limit: limit, orderDirection: orderDirection, tagFilters: tagFilters, subscribeVersion: subscribeVersion), region: region, logger: logger, on: eventLoop)
    }

    /// 获取数据订阅实例列表
    ///
    /// 本接口(DescribeSubscribes)获取数据订阅实例信息列表，默认分页，每次返回20条
    @inlinable
    public func describeSubscribesPaginated(_ input: DescribeSubscribesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [SubscribeInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeSubscribes, logger: logger, on: eventLoop)
    }

    /// 获取数据订阅实例列表
    ///
    /// 本接口(DescribeSubscribes)获取数据订阅实例信息列表，默认分页，每次返回20条
    @inlinable @discardableResult
    public func describeSubscribesPaginated(_ input: DescribeSubscribesRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeSubscribesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeSubscribes, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取数据订阅实例列表
    ///
    /// 本接口(DescribeSubscribes)获取数据订阅实例信息列表，默认分页，每次返回20条
    ///
    /// - Returns: `AsyncSequence`s of `SubscribeInfo` and `DescribeSubscribesResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeSubscribesPaginator(_ input: DescribeSubscribesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeSubscribesRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeSubscribes, logger: logger, on: eventLoop)
    }
}
