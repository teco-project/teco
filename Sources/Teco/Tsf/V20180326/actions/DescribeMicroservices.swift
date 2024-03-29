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

extension Tsf {
    /// DescribeMicroservices请求参数结构体
    public struct DescribeMicroservicesRequest: TCPaginatedRequest {
        /// 命名空间ID
        public let namespaceId: String

        /// 搜索字段
        public let searchWord: String?

        /// 排序字段
        public let orderBy: String?

        /// 排序类型
        public let orderType: Int64?

        /// 偏移量
        public let offset: Int64?

        /// 分页个数
        public let limit: Int64?

        /// 状态过滤，online、offline、single_online
        public let status: [String]?

        /// IdList
        public let microserviceIdList: [String]?

        /// 搜索的服务名列表
        public let microserviceNameList: [String]?

        public init(namespaceId: String, searchWord: String? = nil, orderBy: String? = nil, orderType: Int64? = nil, offset: Int64? = nil, limit: Int64? = nil, status: [String]? = nil, microserviceIdList: [String]? = nil, microserviceNameList: [String]? = nil) {
            self.namespaceId = namespaceId
            self.searchWord = searchWord
            self.orderBy = orderBy
            self.orderType = orderType
            self.offset = offset
            self.limit = limit
            self.status = status
            self.microserviceIdList = microserviceIdList
            self.microserviceNameList = microserviceNameList
        }

        enum CodingKeys: String, CodingKey {
            case namespaceId = "NamespaceId"
            case searchWord = "SearchWord"
            case orderBy = "OrderBy"
            case orderType = "OrderType"
            case offset = "Offset"
            case limit = "Limit"
            case status = "Status"
            case microserviceIdList = "MicroserviceIdList"
            case microserviceNameList = "MicroserviceNameList"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeMicroservicesResponse) -> DescribeMicroservicesRequest? {
            guard case let items = response.getItems(), !items.isEmpty, let totalCount = response.getTotalCount(), (self.offset ?? 0) + .init(items.count) >= totalCount else {
                return nil
            }
            return .init(namespaceId: self.namespaceId, searchWord: self.searchWord, orderBy: self.orderBy, orderType: self.orderType, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, status: self.status, microserviceIdList: self.microserviceIdList, microserviceNameList: self.microserviceNameList)
        }
    }

    /// DescribeMicroservices返回参数结构体
    public struct DescribeMicroservicesResponse: TCPaginatedResponse {
        /// 微服务分页列表信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: TsfPageMicroservice?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }

        /// Extract the returned ``Microservice`` list from the paginated response.
        public func getItems() -> [Microservice] {
            self.result?.content ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.result?.totalCount
        }
    }

    /// 获取微服务列表
    @inlinable
    public func describeMicroservices(_ input: DescribeMicroservicesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeMicroservicesResponse> {
        self.client.execute(action: "DescribeMicroservices", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取微服务列表
    @inlinable
    public func describeMicroservices(_ input: DescribeMicroservicesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeMicroservicesResponse {
        try await self.client.execute(action: "DescribeMicroservices", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取微服务列表
    @inlinable
    public func describeMicroservices(namespaceId: String, searchWord: String? = nil, orderBy: String? = nil, orderType: Int64? = nil, offset: Int64? = nil, limit: Int64? = nil, status: [String]? = nil, microserviceIdList: [String]? = nil, microserviceNameList: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeMicroservicesResponse> {
        self.describeMicroservices(.init(namespaceId: namespaceId, searchWord: searchWord, orderBy: orderBy, orderType: orderType, offset: offset, limit: limit, status: status, microserviceIdList: microserviceIdList, microserviceNameList: microserviceNameList), region: region, logger: logger, on: eventLoop)
    }

    /// 获取微服务列表
    @inlinable
    public func describeMicroservices(namespaceId: String, searchWord: String? = nil, orderBy: String? = nil, orderType: Int64? = nil, offset: Int64? = nil, limit: Int64? = nil, status: [String]? = nil, microserviceIdList: [String]? = nil, microserviceNameList: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeMicroservicesResponse {
        try await self.describeMicroservices(.init(namespaceId: namespaceId, searchWord: searchWord, orderBy: orderBy, orderType: orderType, offset: offset, limit: limit, status: status, microserviceIdList: microserviceIdList, microserviceNameList: microserviceNameList), region: region, logger: logger, on: eventLoop)
    }

    /// 获取微服务列表
    @inlinable
    public func describeMicroservicesPaginated(_ input: DescribeMicroservicesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [Microservice])> {
        self.client.paginate(input: input, region: region, command: self.describeMicroservices, logger: logger, on: eventLoop)
    }

    /// 获取微服务列表
    @inlinable @discardableResult
    public func describeMicroservicesPaginated(_ input: DescribeMicroservicesRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeMicroservicesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeMicroservices, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取微服务列表
    ///
    /// - Returns: `AsyncSequence`s of ``Microservice`` and ``DescribeMicroservicesResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeMicroservicesPaginator(_ input: DescribeMicroservicesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeMicroservicesRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeMicroservices, logger: logger, on: eventLoop)
    }
}
