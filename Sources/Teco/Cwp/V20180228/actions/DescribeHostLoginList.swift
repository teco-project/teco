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

extension Cwp {
    /// DescribeHostLoginList请求参数结构体
    public struct DescribeHostLoginListRequest: TCPaginatedRequest {
        /// 需要返回的数量，最大值为100
        public let limit: UInt64?

        /// 偏移量，默认为0。
        public let offset: UInt64?

        /// 过滤条件。
        /// - IpOrAlias - String - 是否必填：否 - 主机ip或别名筛选
        /// - Uuid - String - 是否必填：否 - 主机安全唯一Uuid
        /// - Quuid - String - 是否必填：否 - 云服务器uuid
        /// - UserName - String - 是否必填：否 - 用户名筛选
        /// - LoginTimeBegin - String - 是否必填：否 - 按照修改时间段筛选，开始时间
        /// - LoginTimeEnd - String - 是否必填：否 - 按照修改时间段筛选，结束时间
        /// - SrcIp - String - 是否必填：否 - 来源ip筛选
        /// - Status - int - 是否必填：否 - 状态筛选1:正常登录；5：已加白,14:已处理，15：已忽略
        /// - RiskLevel - int - 是否必填：否 - 状态筛选0:高危；1：可疑
        public let filters: [Filter]?

        /// 排序方式：根据请求次数排序：asc-升序/desc-降序
        public let order: String?

        /// 排序字段：LoginTime-发生时间
        public let by: String?

        public init(limit: UInt64? = nil, offset: UInt64? = nil, filters: [Filter]? = nil, order: String? = nil, by: String? = nil) {
            self.limit = limit
            self.offset = offset
            self.filters = filters
            self.order = order
            self.by = by
        }

        enum CodingKeys: String, CodingKey {
            case limit = "Limit"
            case offset = "Offset"
            case filters = "Filters"
            case order = "Order"
            case by = "By"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeHostLoginListResponse) -> DescribeHostLoginListRequest? {
            guard case let items = response.getItems(), !items.isEmpty, let totalCount = response.getTotalCount(), (self.offset ?? 0) + .init(items.count) >= totalCount else {
                return nil
            }
            return .init(limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count), filters: self.filters, order: self.order, by: self.by)
        }
    }

    /// DescribeHostLoginList返回参数结构体
    public struct DescribeHostLoginListResponse: TCPaginatedResponse {
        /// 总数
        public let totalCount: UInt64

        /// 登录审计列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let hostLoginList: [HostLoginList]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case hostLoginList = "HostLoginList"
            case requestId = "RequestId"
        }

        /// Extract the returned ``HostLoginList`` list from the paginated response.
        public func getItems() -> [HostLoginList] {
            self.hostLoginList ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 获取登录审计列表
    @inlinable
    public func describeHostLoginList(_ input: DescribeHostLoginListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeHostLoginListResponse> {
        self.client.execute(action: "DescribeHostLoginList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取登录审计列表
    @inlinable
    public func describeHostLoginList(_ input: DescribeHostLoginListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeHostLoginListResponse {
        try await self.client.execute(action: "DescribeHostLoginList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取登录审计列表
    @inlinable
    public func describeHostLoginList(limit: UInt64? = nil, offset: UInt64? = nil, filters: [Filter]? = nil, order: String? = nil, by: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeHostLoginListResponse> {
        self.describeHostLoginList(.init(limit: limit, offset: offset, filters: filters, order: order, by: by), region: region, logger: logger, on: eventLoop)
    }

    /// 获取登录审计列表
    @inlinable
    public func describeHostLoginList(limit: UInt64? = nil, offset: UInt64? = nil, filters: [Filter]? = nil, order: String? = nil, by: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeHostLoginListResponse {
        try await self.describeHostLoginList(.init(limit: limit, offset: offset, filters: filters, order: order, by: by), region: region, logger: logger, on: eventLoop)
    }

    /// 获取登录审计列表
    @inlinable
    public func describeHostLoginListPaginated(_ input: DescribeHostLoginListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [HostLoginList])> {
        self.client.paginate(input: input, region: region, command: self.describeHostLoginList, logger: logger, on: eventLoop)
    }

    /// 获取登录审计列表
    @inlinable @discardableResult
    public func describeHostLoginListPaginated(_ input: DescribeHostLoginListRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeHostLoginListResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeHostLoginList, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取登录审计列表
    ///
    /// - Returns: `AsyncSequence`s of ``HostLoginList`` and ``DescribeHostLoginListResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeHostLoginListPaginator(_ input: DescribeHostLoginListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeHostLoginListRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeHostLoginList, logger: logger, on: eventLoop)
    }
}
