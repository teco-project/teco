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

extension Tcss {
    /// DescribeComplianceTaskPolicyItemSummaryList请求参数结构体
    public struct DescribeComplianceTaskPolicyItemSummaryListRequest: TCPaginatedRequest {
        /// 资产类型。仅查询与指定资产类型相关的检测项。
        ///
        /// ASSET_CONTAINER, 容器
        ///
        /// ASSET_IMAGE, 镜像
        ///
        /// ASSET_HOST, 主机
        ///
        /// ASSET_K8S, K8S资产
        public let assetType: String?

        /// 起始偏移量，默认为0。
        public let offset: UInt64?

        /// 需要返回的数量，默认为10，最大值为100。
        public let limit: UInt64?

        /// 过滤条件。
        /// Name - String
        /// Name 可取值：ItemType, StandardId,  RiskLevel。
        /// 当为K8S资产时，还可取ClusterName。
        public let filters: [ComplianceFilters]?

        public init(assetType: String? = nil, offset: UInt64? = nil, limit: UInt64? = nil, filters: [ComplianceFilters]? = nil) {
            self.assetType = assetType
            self.offset = offset
            self.limit = limit
            self.filters = filters
        }

        enum CodingKeys: String, CodingKey {
            case assetType = "AssetType"
            case offset = "Offset"
            case limit = "Limit"
            case filters = "Filters"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeComplianceTaskPolicyItemSummaryListResponse) -> DescribeComplianceTaskPolicyItemSummaryListRequest? {
            guard case let items = response.getItems(), !items.isEmpty, let totalCount = response.getTotalCount(), (self.offset ?? 0) + .init(items.count) >= totalCount else {
                return nil
            }
            return .init(assetType: self.assetType, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, filters: self.filters)
        }
    }

    /// DescribeComplianceTaskPolicyItemSummaryList返回参数结构体
    public struct DescribeComplianceTaskPolicyItemSummaryListResponse: TCPaginatedResponse {
        /// 返回最近一次合规检查任务的ID。这个任务为本次所展示数据的来源。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let taskId: UInt64?

        /// 返回检测项的总数。
        public let totalCount: UInt64

        /// 返回各检测项对应的汇总信息的列表。
        public let policyItemSummaryList: [CompliancePolicyItemSummary]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case totalCount = "TotalCount"
            case policyItemSummaryList = "PolicyItemSummaryList"
            case requestId = "RequestId"
        }

        /// Extract the returned ``CompliancePolicyItemSummary`` list from the paginated response.
        public func getItems() -> [CompliancePolicyItemSummary] {
            self.policyItemSummaryList
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 安全合规查询上次任务的检测项的汇总信息列表
    ///
    /// 查询最近一次任务发现的检测项的汇总信息列表，按照 检测项 → 资产 的两级层次展开。
    @inlinable
    public func describeComplianceTaskPolicyItemSummaryList(_ input: DescribeComplianceTaskPolicyItemSummaryListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeComplianceTaskPolicyItemSummaryListResponse> {
        self.client.execute(action: "DescribeComplianceTaskPolicyItemSummaryList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 安全合规查询上次任务的检测项的汇总信息列表
    ///
    /// 查询最近一次任务发现的检测项的汇总信息列表，按照 检测项 → 资产 的两级层次展开。
    @inlinable
    public func describeComplianceTaskPolicyItemSummaryList(_ input: DescribeComplianceTaskPolicyItemSummaryListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeComplianceTaskPolicyItemSummaryListResponse {
        try await self.client.execute(action: "DescribeComplianceTaskPolicyItemSummaryList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 安全合规查询上次任务的检测项的汇总信息列表
    ///
    /// 查询最近一次任务发现的检测项的汇总信息列表，按照 检测项 → 资产 的两级层次展开。
    @inlinable
    public func describeComplianceTaskPolicyItemSummaryList(assetType: String? = nil, offset: UInt64? = nil, limit: UInt64? = nil, filters: [ComplianceFilters]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeComplianceTaskPolicyItemSummaryListResponse> {
        self.describeComplianceTaskPolicyItemSummaryList(.init(assetType: assetType, offset: offset, limit: limit, filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 安全合规查询上次任务的检测项的汇总信息列表
    ///
    /// 查询最近一次任务发现的检测项的汇总信息列表，按照 检测项 → 资产 的两级层次展开。
    @inlinable
    public func describeComplianceTaskPolicyItemSummaryList(assetType: String? = nil, offset: UInt64? = nil, limit: UInt64? = nil, filters: [ComplianceFilters]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeComplianceTaskPolicyItemSummaryListResponse {
        try await self.describeComplianceTaskPolicyItemSummaryList(.init(assetType: assetType, offset: offset, limit: limit, filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 安全合规查询上次任务的检测项的汇总信息列表
    ///
    /// 查询最近一次任务发现的检测项的汇总信息列表，按照 检测项 → 资产 的两级层次展开。
    @inlinable
    public func describeComplianceTaskPolicyItemSummaryListPaginated(_ input: DescribeComplianceTaskPolicyItemSummaryListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [CompliancePolicyItemSummary])> {
        self.client.paginate(input: input, region: region, command: self.describeComplianceTaskPolicyItemSummaryList, logger: logger, on: eventLoop)
    }

    /// 安全合规查询上次任务的检测项的汇总信息列表
    ///
    /// 查询最近一次任务发现的检测项的汇总信息列表，按照 检测项 → 资产 的两级层次展开。
    @inlinable @discardableResult
    public func describeComplianceTaskPolicyItemSummaryListPaginated(_ input: DescribeComplianceTaskPolicyItemSummaryListRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeComplianceTaskPolicyItemSummaryListResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeComplianceTaskPolicyItemSummaryList, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 安全合规查询上次任务的检测项的汇总信息列表
    ///
    /// 查询最近一次任务发现的检测项的汇总信息列表，按照 检测项 → 资产 的两级层次展开。
    ///
    /// - Returns: `AsyncSequence`s of ``CompliancePolicyItemSummary`` and ``DescribeComplianceTaskPolicyItemSummaryListResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeComplianceTaskPolicyItemSummaryListPaginator(_ input: DescribeComplianceTaskPolicyItemSummaryListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeComplianceTaskPolicyItemSummaryListRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeComplianceTaskPolicyItemSummaryList, logger: logger, on: eventLoop)
    }
}
