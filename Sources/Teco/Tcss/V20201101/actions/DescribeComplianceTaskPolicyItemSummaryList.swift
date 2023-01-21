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

extension Tcss {
    /// DescribeComplianceTaskPolicyItemSummaryList请求参数结构体
    public struct DescribeComplianceTaskPolicyItemSummaryListRequest: TCRequestModel {
        /// 资产类型。仅查询与指定资产类型相关的检测项。
        /// ASSET_CONTAINER, 容器
        /// ASSET_IMAGE, 镜像
        /// ASSET_HOST, 主机
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
    }

    /// DescribeComplianceTaskPolicyItemSummaryList返回参数结构体
    public struct DescribeComplianceTaskPolicyItemSummaryListResponse: TCResponseModel {
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
        self.describeComplianceTaskPolicyItemSummaryList(DescribeComplianceTaskPolicyItemSummaryListRequest(assetType: assetType, offset: offset, limit: limit, filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 安全合规查询上次任务的检测项的汇总信息列表
    ///
    /// 查询最近一次任务发现的检测项的汇总信息列表，按照 检测项 → 资产 的两级层次展开。
    @inlinable
    public func describeComplianceTaskPolicyItemSummaryList(assetType: String? = nil, offset: UInt64? = nil, limit: UInt64? = nil, filters: [ComplianceFilters]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeComplianceTaskPolicyItemSummaryListResponse {
        try await self.describeComplianceTaskPolicyItemSummaryList(DescribeComplianceTaskPolicyItemSummaryListRequest(assetType: assetType, offset: offset, limit: limit, filters: filters), region: region, logger: logger, on: eventLoop)
    }
}
