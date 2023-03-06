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

extension Bm {
    /// DescribePsaRegulations请求参数结构体
    public struct DescribePsaRegulationsRequest: TCPaginatedRequest {
        /// 数量限制
        public let limit: UInt64

        /// 偏移量
        public let offset: UInt64

        /// 规则ID过滤，支持模糊查询
        public let psaIds: [String]?

        /// 规则别名过滤，支持模糊查询
        public let psaNames: [String]?

        /// 标签过滤
        public let tags: [Tag]?

        /// 排序字段，取值支持：CreateTime
        public let orderField: String?

        /// 排序方式 0:递增(默认) 1:递减
        public let order: UInt64?

        public init(limit: UInt64, offset: UInt64, psaIds: [String]? = nil, psaNames: [String]? = nil, tags: [Tag]? = nil, orderField: String? = nil, order: UInt64? = nil) {
            self.limit = limit
            self.offset = offset
            self.psaIds = psaIds
            self.psaNames = psaNames
            self.tags = tags
            self.orderField = orderField
            self.order = order
        }

        enum CodingKeys: String, CodingKey {
            case limit = "Limit"
            case offset = "Offset"
            case psaIds = "PsaIds"
            case psaNames = "PsaNames"
            case tags = "Tags"
            case orderField = "OrderField"
            case order = "Order"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribePsaRegulationsResponse) -> DescribePsaRegulationsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribePsaRegulationsRequest(limit: self.limit, offset: self.offset + .init(response.getItems().count), psaIds: self.psaIds, psaNames: self.psaNames, tags: self.tags, orderField: self.orderField, order: self.order)
        }
    }

    /// DescribePsaRegulations返回参数结构体
    public struct DescribePsaRegulationsResponse: TCPaginatedResponse {
        /// 返回规则数量
        public let totalCount: UInt64

        /// 返回规则列表
        public let psaRegulations: [PsaRegulation]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case psaRegulations = "PsaRegulations"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [PsaRegulation] {
            self.psaRegulations
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 获取预授权规则列表
    @inlinable
    public func describePsaRegulations(_ input: DescribePsaRegulationsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePsaRegulationsResponse> {
        self.client.execute(action: "DescribePsaRegulations", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取预授权规则列表
    @inlinable
    public func describePsaRegulations(_ input: DescribePsaRegulationsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePsaRegulationsResponse {
        try await self.client.execute(action: "DescribePsaRegulations", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取预授权规则列表
    @inlinable
    public func describePsaRegulations(limit: UInt64, offset: UInt64, psaIds: [String]? = nil, psaNames: [String]? = nil, tags: [Tag]? = nil, orderField: String? = nil, order: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePsaRegulationsResponse> {
        let input = DescribePsaRegulationsRequest(limit: limit, offset: offset, psaIds: psaIds, psaNames: psaNames, tags: tags, orderField: orderField, order: order)
        return self.client.execute(action: "DescribePsaRegulations", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取预授权规则列表
    @inlinable
    public func describePsaRegulations(limit: UInt64, offset: UInt64, psaIds: [String]? = nil, psaNames: [String]? = nil, tags: [Tag]? = nil, orderField: String? = nil, order: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePsaRegulationsResponse {
        let input = DescribePsaRegulationsRequest(limit: limit, offset: offset, psaIds: psaIds, psaNames: psaNames, tags: tags, orderField: orderField, order: order)
        return try await self.client.execute(action: "DescribePsaRegulations", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取预授权规则列表
    @inlinable
    public func describePsaRegulationsPaginated(_ input: DescribePsaRegulationsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [PsaRegulation])> {
        self.client.paginate(input: input, region: region, command: self.describePsaRegulations, logger: logger, on: eventLoop)
    }

    /// 获取预授权规则列表
    @inlinable @discardableResult
    public func describePsaRegulationsPaginated(_ input: DescribePsaRegulationsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribePsaRegulationsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describePsaRegulations, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取预授权规则列表
    @inlinable
    public func describePsaRegulationsPaginator(_ input: DescribePsaRegulationsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> (results: TCClient.Paginator<DescribePsaRegulationsRequest, DescribePsaRegulationsResponse>.ResultSequence, responses: TCClient.Paginator<DescribePsaRegulationsRequest, DescribePsaRegulationsResponse>.ResponseSequence) {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describePsaRegulations, logger: logger, on: eventLoop)
    }
}
