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

extension Tcss {
    /// DescribeAutoAuthorizedRuleHost请求参数结构体
    public struct DescribeAutoAuthorizedRuleHostRequest: TCPaginatedRequest {
        /// 规则id
        public let ruleId: Int64

        /// 需要返回的数量，默认为全部；
        public let limit: UInt64?

        /// 偏移量，默认为0
        public let offset: UInt64?

        /// 排序字段
        public let order: String?

        /// 排序方式，asc，desc
        public let by: String?

        public init(ruleId: Int64, limit: UInt64? = nil, offset: UInt64? = nil, order: String? = nil, by: String? = nil) {
            self.ruleId = ruleId
            self.limit = limit
            self.offset = offset
            self.order = order
            self.by = by
        }

        enum CodingKeys: String, CodingKey {
            case ruleId = "RuleId"
            case limit = "Limit"
            case offset = "Offset"
            case order = "Order"
            case by = "By"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribeAutoAuthorizedRuleHostResponse) -> DescribeAutoAuthorizedRuleHostRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeAutoAuthorizedRuleHostRequest(ruleId: self.ruleId, limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count), order: self.order, by: self.by)
        }
    }

    /// DescribeAutoAuthorizedRuleHost返回参数结构体
    public struct DescribeAutoAuthorizedRuleHostResponse: TCPaginatedResponse {
        /// 镜像自动授权规则授权范围主机列表
        public let list: [AutoAuthorizedRuleHostInfo]

        /// 总数量
        public let totalCount: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case list = "List"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [AutoAuthorizedRuleHostInfo] {
            self.list
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 查询自动授权规则授权范围主机信息
    @inlinable
    public func describeAutoAuthorizedRuleHost(_ input: DescribeAutoAuthorizedRuleHostRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAutoAuthorizedRuleHostResponse> {
        self.client.execute(action: "DescribeAutoAuthorizedRuleHost", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询自动授权规则授权范围主机信息
    @inlinable
    public func describeAutoAuthorizedRuleHost(_ input: DescribeAutoAuthorizedRuleHostRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAutoAuthorizedRuleHostResponse {
        try await self.client.execute(action: "DescribeAutoAuthorizedRuleHost", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询自动授权规则授权范围主机信息
    @inlinable
    public func describeAutoAuthorizedRuleHost(ruleId: Int64, limit: UInt64? = nil, offset: UInt64? = nil, order: String? = nil, by: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAutoAuthorizedRuleHostResponse> {
        let input = DescribeAutoAuthorizedRuleHostRequest(ruleId: ruleId, limit: limit, offset: offset, order: order, by: by)
        return self.client.execute(action: "DescribeAutoAuthorizedRuleHost", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询自动授权规则授权范围主机信息
    @inlinable
    public func describeAutoAuthorizedRuleHost(ruleId: Int64, limit: UInt64? = nil, offset: UInt64? = nil, order: String? = nil, by: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAutoAuthorizedRuleHostResponse {
        let input = DescribeAutoAuthorizedRuleHostRequest(ruleId: ruleId, limit: limit, offset: offset, order: order, by: by)
        return try await self.client.execute(action: "DescribeAutoAuthorizedRuleHost", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询自动授权规则授权范围主机信息
    @inlinable
    public func describeAutoAuthorizedRuleHostPaginated(_ input: DescribeAutoAuthorizedRuleHostRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [AutoAuthorizedRuleHostInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeAutoAuthorizedRuleHost, logger: logger, on: eventLoop)
    }

    /// 查询自动授权规则授权范围主机信息
    @inlinable @discardableResult
    public func describeAutoAuthorizedRuleHostPaginated(_ input: DescribeAutoAuthorizedRuleHostRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeAutoAuthorizedRuleHostResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeAutoAuthorizedRuleHost, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询自动授权规则授权范围主机信息
    ///
    /// - Returns: `AsyncSequence`s of `AutoAuthorizedRuleHostInfo` and `DescribeAutoAuthorizedRuleHostResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeAutoAuthorizedRuleHostPaginator(_ input: DescribeAutoAuthorizedRuleHostRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeAutoAuthorizedRuleHostRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeAutoAuthorizedRuleHost, logger: logger, on: eventLoop)
    }
}
