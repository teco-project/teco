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
    /// DescribeCompliancePolicyItemAffectedAssetList请求参数结构体
    public struct DescribeCompliancePolicyItemAffectedAssetListRequest: TCPaginatedRequest {
        /// DescribeComplianceTaskPolicyItemSummaryList返回的CustomerPolicyItemId，表示检测项的ID。
        public let customerPolicyItemId: UInt64

        /// 起始偏移量，默认为0。
        public let offset: UInt64?

        /// 需要返回的数量，默认为10，最大值为100。
        public let limit: UInt64?

        /// 过滤条件。
        /// Name - String
        /// Name 可取值：NodeName, CheckResult
        public let filters: [ComplianceFilters]?

        public init(customerPolicyItemId: UInt64, offset: UInt64? = nil, limit: UInt64? = nil, filters: [ComplianceFilters]? = nil) {
            self.customerPolicyItemId = customerPolicyItemId
            self.offset = offset
            self.limit = limit
            self.filters = filters
        }

        enum CodingKeys: String, CodingKey {
            case customerPolicyItemId = "CustomerPolicyItemId"
            case offset = "Offset"
            case limit = "Limit"
            case filters = "Filters"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribeCompliancePolicyItemAffectedAssetListResponse) -> DescribeCompliancePolicyItemAffectedAssetListRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeCompliancePolicyItemAffectedAssetListRequest(customerPolicyItemId: self.customerPolicyItemId, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, filters: self.filters)
        }
    }

    /// DescribeCompliancePolicyItemAffectedAssetList返回参数结构体
    public struct DescribeCompliancePolicyItemAffectedAssetListResponse: TCPaginatedResponse {
        /// 返回各检测项所影响的资产的列表。
        public let affectedAssetList: [ComplianceAffectedAsset]

        /// 检测项影响的资产的总数。
        public let totalCount: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case affectedAssetList = "AffectedAssetList"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [ComplianceAffectedAsset] {
            self.affectedAssetList
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 安全合规查询检测项影响的资产列表
    ///
    /// 按照 检测项 → 资产 的两级层次展开的第二层级：资产层级。
    @inlinable
    public func describeCompliancePolicyItemAffectedAssetList(_ input: DescribeCompliancePolicyItemAffectedAssetListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCompliancePolicyItemAffectedAssetListResponse> {
        self.client.execute(action: "DescribeCompliancePolicyItemAffectedAssetList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 安全合规查询检测项影响的资产列表
    ///
    /// 按照 检测项 → 资产 的两级层次展开的第二层级：资产层级。
    @inlinable
    public func describeCompliancePolicyItemAffectedAssetList(_ input: DescribeCompliancePolicyItemAffectedAssetListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCompliancePolicyItemAffectedAssetListResponse {
        try await self.client.execute(action: "DescribeCompliancePolicyItemAffectedAssetList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 安全合规查询检测项影响的资产列表
    ///
    /// 按照 检测项 → 资产 的两级层次展开的第二层级：资产层级。
    @inlinable
    public func describeCompliancePolicyItemAffectedAssetList(customerPolicyItemId: UInt64, offset: UInt64? = nil, limit: UInt64? = nil, filters: [ComplianceFilters]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCompliancePolicyItemAffectedAssetListResponse> {
        let input = DescribeCompliancePolicyItemAffectedAssetListRequest(customerPolicyItemId: customerPolicyItemId, offset: offset, limit: limit, filters: filters)
        return self.client.execute(action: "DescribeCompliancePolicyItemAffectedAssetList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 安全合规查询检测项影响的资产列表
    ///
    /// 按照 检测项 → 资产 的两级层次展开的第二层级：资产层级。
    @inlinable
    public func describeCompliancePolicyItemAffectedAssetList(customerPolicyItemId: UInt64, offset: UInt64? = nil, limit: UInt64? = nil, filters: [ComplianceFilters]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCompliancePolicyItemAffectedAssetListResponse {
        let input = DescribeCompliancePolicyItemAffectedAssetListRequest(customerPolicyItemId: customerPolicyItemId, offset: offset, limit: limit, filters: filters)
        return try await self.client.execute(action: "DescribeCompliancePolicyItemAffectedAssetList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 安全合规查询检测项影响的资产列表
    ///
    /// 按照 检测项 → 资产 的两级层次展开的第二层级：资产层级。
    @inlinable
    public func describeCompliancePolicyItemAffectedAssetListPaginated(_ input: DescribeCompliancePolicyItemAffectedAssetListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [ComplianceAffectedAsset])> {
        self.client.paginate(input: input, region: region, command: self.describeCompliancePolicyItemAffectedAssetList, logger: logger, on: eventLoop)
    }

    /// 安全合规查询检测项影响的资产列表
    ///
    /// 按照 检测项 → 资产 的两级层次展开的第二层级：资产层级。
    @inlinable
    public func describeCompliancePolicyItemAffectedAssetListPaginated(_ input: DescribeCompliancePolicyItemAffectedAssetListRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeCompliancePolicyItemAffectedAssetListResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeCompliancePolicyItemAffectedAssetList, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 安全合规查询检测项影响的资产列表
    ///
    /// 按照 检测项 → 资产 的两级层次展开的第二层级：资产层级。
    @inlinable
    public func describeCompliancePolicyItemAffectedAssetListPaginator(_ input: DescribeCompliancePolicyItemAffectedAssetListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> (results: TCClient.Paginator<DescribeCompliancePolicyItemAffectedAssetListRequest, DescribeCompliancePolicyItemAffectedAssetListResponse>.ResultSequence, responses: TCClient.Paginator<DescribeCompliancePolicyItemAffectedAssetListRequest, DescribeCompliancePolicyItemAffectedAssetListResponse>.ResponseSequence) {
        let results = TCClient.Paginator<DescribeCompliancePolicyItemAffectedAssetListRequest, DescribeCompliancePolicyItemAffectedAssetListResponse>.ResultSequence(input: input, region: region, command: self.describeCompliancePolicyItemAffectedAssetList, logger: logger, on: eventLoop)
        let responses = TCClient.Paginator<DescribeCompliancePolicyItemAffectedAssetListRequest, DescribeCompliancePolicyItemAffectedAssetListResponse>.ResponseSequence(input: input, region: region, command: self.describeCompliancePolicyItemAffectedAssetList, logger: logger, on: eventLoop)
        return (results, responses)
    }
}
