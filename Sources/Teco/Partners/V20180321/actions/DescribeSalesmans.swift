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

extension Partners {
    /// DescribeSalesmans请求参数结构体
    public struct DescribeSalesmansRequest: TCPaginatedRequest {
        /// 偏移量
        public let offset: UInt64

        /// 限制数目
        public let limit: UInt64

        /// 业务员姓名(模糊查询)
        public let salesName: String?

        /// 业务员ID
        public let salesUin: String?

        /// ASC/DESC， 不区分大小写，按创建通过时间排序
        public let orderDirection: String?

        public init(offset: UInt64, limit: UInt64, salesName: String? = nil, salesUin: String? = nil, orderDirection: String? = nil) {
            self.offset = offset
            self.limit = limit
            self.salesName = salesName
            self.salesUin = salesUin
            self.orderDirection = orderDirection
        }

        enum CodingKeys: String, CodingKey {
            case offset = "Offset"
            case limit = "Limit"
            case salesName = "SalesName"
            case salesUin = "SalesUin"
            case orderDirection = "OrderDirection"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeSalesmansResponse) -> DescribeSalesmansRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeSalesmansRequest(offset: self.offset + .init(response.getItems().count), limit: self.limit, salesName: self.salesName, salesUin: self.salesUin, orderDirection: self.orderDirection)
        }
    }

    /// DescribeSalesmans返回参数结构体
    public struct DescribeSalesmansResponse: TCPaginatedResponse {
        /// 业务员列表
        public let agentSalesmanSet: [AgentSalesmanElem]

        /// 符合条件的代客总数
        public let totalCount: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case agentSalesmanSet = "AgentSalesmanSet"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [AgentSalesmanElem] {
            self.agentSalesmanSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 代理商业务员查询接口
    ///
    /// 代理商查询名下业务员列表信息
    @inlinable
    public func describeSalesmans(_ input: DescribeSalesmansRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSalesmansResponse> {
        self.client.execute(action: "DescribeSalesmans", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 代理商业务员查询接口
    ///
    /// 代理商查询名下业务员列表信息
    @inlinable
    public func describeSalesmans(_ input: DescribeSalesmansRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSalesmansResponse {
        try await self.client.execute(action: "DescribeSalesmans", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 代理商业务员查询接口
    ///
    /// 代理商查询名下业务员列表信息
    @inlinable
    public func describeSalesmans(offset: UInt64, limit: UInt64, salesName: String? = nil, salesUin: String? = nil, orderDirection: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSalesmansResponse> {
        self.describeSalesmans(.init(offset: offset, limit: limit, salesName: salesName, salesUin: salesUin, orderDirection: orderDirection), region: region, logger: logger, on: eventLoop)
    }

    /// 代理商业务员查询接口
    ///
    /// 代理商查询名下业务员列表信息
    @inlinable
    public func describeSalesmans(offset: UInt64, limit: UInt64, salesName: String? = nil, salesUin: String? = nil, orderDirection: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSalesmansResponse {
        try await self.describeSalesmans(.init(offset: offset, limit: limit, salesName: salesName, salesUin: salesUin, orderDirection: orderDirection), region: region, logger: logger, on: eventLoop)
    }

    /// 代理商业务员查询接口
    ///
    /// 代理商查询名下业务员列表信息
    @inlinable
    public func describeSalesmansPaginated(_ input: DescribeSalesmansRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [AgentSalesmanElem])> {
        self.client.paginate(input: input, region: region, command: self.describeSalesmans, logger: logger, on: eventLoop)
    }

    /// 代理商业务员查询接口
    ///
    /// 代理商查询名下业务员列表信息
    @inlinable @discardableResult
    public func describeSalesmansPaginated(_ input: DescribeSalesmansRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeSalesmansResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeSalesmans, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 代理商业务员查询接口
    ///
    /// 代理商查询名下业务员列表信息
    ///
    /// - Returns: `AsyncSequence`s of `AgentSalesmanElem` and `DescribeSalesmansResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeSalesmansPaginator(_ input: DescribeSalesmansRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeSalesmansRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeSalesmans, logger: logger, on: eventLoop)
    }
}
