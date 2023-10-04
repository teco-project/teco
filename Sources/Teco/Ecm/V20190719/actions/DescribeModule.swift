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

extension Ecm {
    /// DescribeModule请求参数结构体
    public struct DescribeModuleRequest: TCPaginatedRequest {
        /// 过滤条件。
        /// module-name - string - 是否必填：否 - （过滤条件）按照模块名称过滤。
        /// module-id - string - 是否必填：否 - （过滤条件）按照模块ID过滤。
        /// image-id      String      是否必填：否      （过滤条件）按照镜像ID过滤。
        /// instance-family      String      是否必填：否      （过滤条件）按照机型family过滤。
        /// security-group-id - string 是否必填：否 - （过滤条件）按照模块绑定的安全组id过滤。
        /// 每次请求的Filters的上限为10，Filter.Values的上限为5。
        public let filters: [Filter]?

        /// 偏移量，默认为0。关于Offset的更进一步介绍请参考 API 简介中的相关小节。
        public let offset: Int64?

        /// 返回数量，默认为20，最大值为100。关于Limit的更进一步介绍请参考 API 简介中的相关小节。
        public let limit: Int64?

        /// 指定排序字段。目前支持的可选值如下
        /// instance-num 按实例数量排序。
        /// node-num 按节点数量排序。
        /// timestamp 按实例创建时间排序。
        /// 如果不传，默认按实例创建时间排序
        public let orderByField: String?

        /// 指定排序是降序还是升序。0表示降序； 1表示升序。如果不传默认为降序
        public let orderDirection: Int64?

        public init(filters: [Filter]? = nil, offset: Int64? = nil, limit: Int64? = nil, orderByField: String? = nil, orderDirection: Int64? = nil) {
            self.filters = filters
            self.offset = offset
            self.limit = limit
            self.orderByField = orderByField
            self.orderDirection = orderDirection
        }

        enum CodingKeys: String, CodingKey {
            case filters = "Filters"
            case offset = "Offset"
            case limit = "Limit"
            case orderByField = "OrderByField"
            case orderDirection = "OrderDirection"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeModuleResponse) -> DescribeModuleRequest? {
            guard case let items = response.getItems(), !items.isEmpty, let totalCount = response.getTotalCount(), .init(self.offset ?? 0) + .init(items.count) >= totalCount else {
                return nil
            }
            return .init(filters: self.filters, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, orderByField: self.orderByField, orderDirection: self.orderDirection)
        }
    }

    /// DescribeModule返回参数结构体
    public struct DescribeModuleResponse: TCPaginatedResponse {
        /// 符合条件的模块数量。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let totalCount: Int64?

        /// 模块详情信息的列表。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let moduleItemSet: [ModuleItem]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case moduleItemSet = "ModuleItemSet"
            case requestId = "RequestId"
        }

        /// Extract the returned ``ModuleItem`` list from the paginated response.
        public func getItems() -> [ModuleItem] {
            self.moduleItemSet ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 获取模块列表
    @inlinable
    public func describeModule(_ input: DescribeModuleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeModuleResponse> {
        self.client.execute(action: "DescribeModule", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取模块列表
    @inlinable
    public func describeModule(_ input: DescribeModuleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeModuleResponse {
        try await self.client.execute(action: "DescribeModule", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取模块列表
    @inlinable
    public func describeModule(filters: [Filter]? = nil, offset: Int64? = nil, limit: Int64? = nil, orderByField: String? = nil, orderDirection: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeModuleResponse> {
        self.describeModule(.init(filters: filters, offset: offset, limit: limit, orderByField: orderByField, orderDirection: orderDirection), region: region, logger: logger, on: eventLoop)
    }

    /// 获取模块列表
    @inlinable
    public func describeModule(filters: [Filter]? = nil, offset: Int64? = nil, limit: Int64? = nil, orderByField: String? = nil, orderDirection: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeModuleResponse {
        try await self.describeModule(.init(filters: filters, offset: offset, limit: limit, orderByField: orderByField, orderDirection: orderDirection), region: region, logger: logger, on: eventLoop)
    }

    /// 获取模块列表
    @inlinable
    public func describeModulePaginated(_ input: DescribeModuleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [ModuleItem])> {
        self.client.paginate(input: input, region: region, command: self.describeModule, logger: logger, on: eventLoop)
    }

    /// 获取模块列表
    @inlinable @discardableResult
    public func describeModulePaginated(_ input: DescribeModuleRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeModuleResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeModule, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取模块列表
    ///
    /// - Returns: `AsyncSequence`s of ``ModuleItem`` and ``DescribeModuleResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeModulePaginator(_ input: DescribeModuleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeModuleRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeModule, logger: logger, on: eventLoop)
    }
}
