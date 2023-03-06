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

extension Teo {
    /// DescribeClientRuleList请求参数结构体
    public struct DescribeClientRuleListRequest: TCPaginatedRequest {
        /// 查询的站点ID.
        public let zoneId: String

        /// 查询的子域名。
        public let domain: String

        /// 规则类型，取值有：
        /// <li>acl：自定义规则；</li>
        /// <li>rate：限速规则。</li>不填表示查询所有规则。
        public let ruleType: String?

        /// 规则ID。
        public let ruleId: Int64?

        /// 客户端IP。
        public let sourceClientIp: String?

        /// 分页查询的限制数目，默认值为20，最大查询条目为1000。
        public let limit: Int64?

        /// 分页的偏移量，默认值为0。
        public let offset: Int64?

        /// 数据归属地区，取值有：
        /// <li>overseas：全球（除中国大陆地区）数据；</li>
        /// <li>mainland：中国大陆地区数据。</li>不填将根据用户所在地智能选择地区。
        public let area: String?

        public init(zoneId: String, domain: String, ruleType: String? = nil, ruleId: Int64? = nil, sourceClientIp: String? = nil, limit: Int64? = nil, offset: Int64? = nil, area: String? = nil) {
            self.zoneId = zoneId
            self.domain = domain
            self.ruleType = ruleType
            self.ruleId = ruleId
            self.sourceClientIp = sourceClientIp
            self.limit = limit
            self.offset = offset
            self.area = area
        }

        enum CodingKeys: String, CodingKey {
            case zoneId = "ZoneId"
            case domain = "Domain"
            case ruleType = "RuleType"
            case ruleId = "RuleId"
            case sourceClientIp = "SourceClientIp"
            case limit = "Limit"
            case offset = "Offset"
            case area = "Area"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeClientRuleListResponse) -> DescribeClientRuleListRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeClientRuleListRequest(zoneId: self.zoneId, domain: self.domain, ruleType: self.ruleType, ruleId: self.ruleId, sourceClientIp: self.sourceClientIp, limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count), area: self.area)
        }
    }

    /// DescribeClientRuleList返回参数结构体
    public struct DescribeClientRuleListResponse: TCPaginatedResponse {
        /// 封禁客户端数据列表。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: [ClientRule]?

        /// 查询结果的总条数。
        public let totalCount: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [ClientRule] {
            self.data ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 查询封禁客户端信息列表
    ///
    /// 本接口（DescribeClientRuleList）用于查询封禁客户端信息列表。
    @inlinable
    public func describeClientRuleList(_ input: DescribeClientRuleListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeClientRuleListResponse> {
        self.client.execute(action: "DescribeClientRuleList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询封禁客户端信息列表
    ///
    /// 本接口（DescribeClientRuleList）用于查询封禁客户端信息列表。
    @inlinable
    public func describeClientRuleList(_ input: DescribeClientRuleListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeClientRuleListResponse {
        try await self.client.execute(action: "DescribeClientRuleList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询封禁客户端信息列表
    ///
    /// 本接口（DescribeClientRuleList）用于查询封禁客户端信息列表。
    @inlinable
    public func describeClientRuleList(zoneId: String, domain: String, ruleType: String? = nil, ruleId: Int64? = nil, sourceClientIp: String? = nil, limit: Int64? = nil, offset: Int64? = nil, area: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeClientRuleListResponse> {
        let input = DescribeClientRuleListRequest(zoneId: zoneId, domain: domain, ruleType: ruleType, ruleId: ruleId, sourceClientIp: sourceClientIp, limit: limit, offset: offset, area: area)
        return self.client.execute(action: "DescribeClientRuleList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询封禁客户端信息列表
    ///
    /// 本接口（DescribeClientRuleList）用于查询封禁客户端信息列表。
    @inlinable
    public func describeClientRuleList(zoneId: String, domain: String, ruleType: String? = nil, ruleId: Int64? = nil, sourceClientIp: String? = nil, limit: Int64? = nil, offset: Int64? = nil, area: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeClientRuleListResponse {
        let input = DescribeClientRuleListRequest(zoneId: zoneId, domain: domain, ruleType: ruleType, ruleId: ruleId, sourceClientIp: sourceClientIp, limit: limit, offset: offset, area: area)
        return try await self.client.execute(action: "DescribeClientRuleList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询封禁客户端信息列表
    ///
    /// 本接口（DescribeClientRuleList）用于查询封禁客户端信息列表。
    @inlinable
    public func describeClientRuleListPaginated(_ input: DescribeClientRuleListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [ClientRule])> {
        self.client.paginate(input: input, region: region, command: self.describeClientRuleList, logger: logger, on: eventLoop)
    }

    /// 查询封禁客户端信息列表
    ///
    /// 本接口（DescribeClientRuleList）用于查询封禁客户端信息列表。
    @inlinable @discardableResult
    public func describeClientRuleListPaginated(_ input: DescribeClientRuleListRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeClientRuleListResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeClientRuleList, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询封禁客户端信息列表
    ///
    /// 本接口（DescribeClientRuleList）用于查询封禁客户端信息列表。
    ///
    /// - Returns: `AsyncSequence`s of `ClientRule` and `DescribeClientRuleListResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeClientRuleListPaginator(_ input: DescribeClientRuleListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeClientRuleListRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeClientRuleList, logger: logger, on: eventLoop)
    }
}
