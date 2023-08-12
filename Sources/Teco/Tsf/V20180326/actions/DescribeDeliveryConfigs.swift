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

extension Tsf {
    /// DescribeDeliveryConfigs请求参数结构体
    public struct DescribeDeliveryConfigsRequest: TCPaginatedRequest {
        /// 关键字
        public let searchWord: String?

        /// 偏移
        public let offset: Int64?

        /// 搜索条数
        public let limit: Int64?

        public init(searchWord: String? = nil, offset: Int64? = nil, limit: Int64? = nil) {
            self.searchWord = searchWord
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case searchWord = "SearchWord"
            case offset = "Offset"
            case limit = "Limit"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeDeliveryConfigsResponse) -> DescribeDeliveryConfigsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeDeliveryConfigsRequest(searchWord: self.searchWord, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit)
        }
    }

    /// DescribeDeliveryConfigs返回参数结构体
    public struct DescribeDeliveryConfigsResponse: TCPaginatedResponse {
        /// 投递项关联部署组信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: DeliveryConfigBindGroups?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }

        /// Extract the returned ``DeliveryConfigBindGroup`` list from the paginated response.
        public func getItems() -> [DeliveryConfigBindGroup] {
            self.result?.content ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.result?.totalCount
        }
    }

    /// 获取多个投递项配置
    @inlinable
    public func describeDeliveryConfigs(_ input: DescribeDeliveryConfigsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDeliveryConfigsResponse> {
        self.client.execute(action: "DescribeDeliveryConfigs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取多个投递项配置
    @inlinable
    public func describeDeliveryConfigs(_ input: DescribeDeliveryConfigsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDeliveryConfigsResponse {
        try await self.client.execute(action: "DescribeDeliveryConfigs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取多个投递项配置
    @inlinable
    public func describeDeliveryConfigs(searchWord: String? = nil, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDeliveryConfigsResponse> {
        self.describeDeliveryConfigs(.init(searchWord: searchWord, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 获取多个投递项配置
    @inlinable
    public func describeDeliveryConfigs(searchWord: String? = nil, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDeliveryConfigsResponse {
        try await self.describeDeliveryConfigs(.init(searchWord: searchWord, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 获取多个投递项配置
    @inlinable
    public func describeDeliveryConfigsPaginated(_ input: DescribeDeliveryConfigsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [DeliveryConfigBindGroup])> {
        self.client.paginate(input: input, region: region, command: self.describeDeliveryConfigs, logger: logger, on: eventLoop)
    }

    /// 获取多个投递项配置
    @inlinable @discardableResult
    public func describeDeliveryConfigsPaginated(_ input: DescribeDeliveryConfigsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeDeliveryConfigsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeDeliveryConfigs, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取多个投递项配置
    ///
    /// - Returns: `AsyncSequence`s of ``DeliveryConfigBindGroup`` and ``DescribeDeliveryConfigsResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeDeliveryConfigsPaginator(_ input: DescribeDeliveryConfigsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeDeliveryConfigsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeDeliveryConfigs, logger: logger, on: eventLoop)
    }
}
