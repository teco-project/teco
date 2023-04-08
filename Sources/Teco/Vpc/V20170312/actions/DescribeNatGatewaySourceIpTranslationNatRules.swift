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

extension Vpc {
    /// DescribeNatGatewaySourceIpTranslationNatRules请求参数结构体
    public struct DescribeNatGatewaySourceIpTranslationNatRulesRequest: TCPaginatedRequest {
        /// NAT网关统一 ID，形如：`nat-123xx454`。
        public let natGatewayId: String

        /// 过滤条件:
        /// <li> resource-id，Subnet的ID或者Cvm ID，如`subnet-0yi4hekt`</li>
        /// <li> public-ip-address，弹性IP，如`139.199.232.238`</li>
        /// <li>description，规则描述。</li>
        public let filters: [Filter]?

        /// 偏移量，默认为0。
        public let offset: Int64?

        /// 返回数量，默认为20，最大值为100。
        public let limit: Int64?

        public init(natGatewayId: String, filters: [Filter]? = nil, offset: Int64? = nil, limit: Int64? = nil) {
            self.natGatewayId = natGatewayId
            self.filters = filters
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case natGatewayId = "NatGatewayId"
            case filters = "Filters"
            case offset = "Offset"
            case limit = "Limit"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeNatGatewaySourceIpTranslationNatRulesResponse) -> DescribeNatGatewaySourceIpTranslationNatRulesRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeNatGatewaySourceIpTranslationNatRulesRequest(natGatewayId: self.natGatewayId, filters: self.filters, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit)
        }
    }

    /// DescribeNatGatewaySourceIpTranslationNatRules返回参数结构体
    public struct DescribeNatGatewaySourceIpTranslationNatRulesResponse: TCPaginatedResponse {
        /// NAT网关SNAT规则对象数组。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let sourceIpTranslationNatRuleSet: [SourceIpTranslationNatRule]?

        /// 符合条件的NAT网关端口转发规则对象数目。
        public let totalCount: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case sourceIpTranslationNatRuleSet = "SourceIpTranslationNatRuleSet"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [SourceIpTranslationNatRule] {
            self.sourceIpTranslationNatRuleSet ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 查询NAT网关SNAT转发规则
    ///
    /// 本接口（DescribeNatGatewaySourceIpTranslationNatRules）用于查询NAT网关SNAT转发规则对象数组。
    @inlinable
    public func describeNatGatewaySourceIpTranslationNatRules(_ input: DescribeNatGatewaySourceIpTranslationNatRulesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeNatGatewaySourceIpTranslationNatRulesResponse> {
        self.client.execute(action: "DescribeNatGatewaySourceIpTranslationNatRules", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询NAT网关SNAT转发规则
    ///
    /// 本接口（DescribeNatGatewaySourceIpTranslationNatRules）用于查询NAT网关SNAT转发规则对象数组。
    @inlinable
    public func describeNatGatewaySourceIpTranslationNatRules(_ input: DescribeNatGatewaySourceIpTranslationNatRulesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeNatGatewaySourceIpTranslationNatRulesResponse {
        try await self.client.execute(action: "DescribeNatGatewaySourceIpTranslationNatRules", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询NAT网关SNAT转发规则
    ///
    /// 本接口（DescribeNatGatewaySourceIpTranslationNatRules）用于查询NAT网关SNAT转发规则对象数组。
    @inlinable
    public func describeNatGatewaySourceIpTranslationNatRules(natGatewayId: String, filters: [Filter]? = nil, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeNatGatewaySourceIpTranslationNatRulesResponse> {
        self.describeNatGatewaySourceIpTranslationNatRules(.init(natGatewayId: natGatewayId, filters: filters, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查询NAT网关SNAT转发规则
    ///
    /// 本接口（DescribeNatGatewaySourceIpTranslationNatRules）用于查询NAT网关SNAT转发规则对象数组。
    @inlinable
    public func describeNatGatewaySourceIpTranslationNatRules(natGatewayId: String, filters: [Filter]? = nil, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeNatGatewaySourceIpTranslationNatRulesResponse {
        try await self.describeNatGatewaySourceIpTranslationNatRules(.init(natGatewayId: natGatewayId, filters: filters, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查询NAT网关SNAT转发规则
    ///
    /// 本接口（DescribeNatGatewaySourceIpTranslationNatRules）用于查询NAT网关SNAT转发规则对象数组。
    @inlinable
    public func describeNatGatewaySourceIpTranslationNatRulesPaginated(_ input: DescribeNatGatewaySourceIpTranslationNatRulesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [SourceIpTranslationNatRule])> {
        self.client.paginate(input: input, region: region, command: self.describeNatGatewaySourceIpTranslationNatRules, logger: logger, on: eventLoop)
    }

    /// 查询NAT网关SNAT转发规则
    ///
    /// 本接口（DescribeNatGatewaySourceIpTranslationNatRules）用于查询NAT网关SNAT转发规则对象数组。
    @inlinable @discardableResult
    public func describeNatGatewaySourceIpTranslationNatRulesPaginated(_ input: DescribeNatGatewaySourceIpTranslationNatRulesRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeNatGatewaySourceIpTranslationNatRulesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeNatGatewaySourceIpTranslationNatRules, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询NAT网关SNAT转发规则
    ///
    /// 本接口（DescribeNatGatewaySourceIpTranslationNatRules）用于查询NAT网关SNAT转发规则对象数组。
    ///
    /// - Returns: `AsyncSequence`s of `SourceIpTranslationNatRule` and `DescribeNatGatewaySourceIpTranslationNatRulesResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeNatGatewaySourceIpTranslationNatRulesPaginator(_ input: DescribeNatGatewaySourceIpTranslationNatRulesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeNatGatewaySourceIpTranslationNatRulesRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeNatGatewaySourceIpTranslationNatRules, logger: logger, on: eventLoop)
    }
}
