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
    /// DescribeComplianceAssetPolicyItemList请求参数结构体
    public struct DescribeComplianceAssetPolicyItemListRequest: TCRequestModel {
        /// 客户资产的ID。
        public let customerAssetId: UInt64

        /// 起始偏移量，默认为0。
        public let offset: UInt64?

        /// 要获取的数据量，默认为10，最大为100。
        public let limit: UInt64?

        /// 过滤器列表。Name字段支持
        /// RiskLevel
        public let filters: [ComplianceFilters]?

        public init(customerAssetId: UInt64, offset: UInt64? = nil, limit: UInt64? = nil, filters: [ComplianceFilters]? = nil) {
            self.customerAssetId = customerAssetId
            self.offset = offset
            self.limit = limit
            self.filters = filters
        }

        enum CodingKeys: String, CodingKey {
            case customerAssetId = "CustomerAssetId"
            case offset = "Offset"
            case limit = "Limit"
            case filters = "Filters"
        }
    }

    /// DescribeComplianceAssetPolicyItemList返回参数结构体
    public struct DescribeComplianceAssetPolicyItemListResponse: TCResponseModel {
        /// 返回检测项的总数。如果用户未启用基线检查，此处返回0。
        public let totalCount: UInt64

        /// 返回某个资产下的检测项的列表。
        public let assetPolicyItemList: [ComplianceAssetPolicyItem]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case assetPolicyItemList = "AssetPolicyItemList"
            case requestId = "RequestId"
        }
    }

    /// 安全合规查询某资产下的检测项列表
    ///
    /// 查询某资产下的检测项列表
    @inlinable
    public func describeComplianceAssetPolicyItemList(_ input: DescribeComplianceAssetPolicyItemListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeComplianceAssetPolicyItemListResponse> {
        self.client.execute(action: "DescribeComplianceAssetPolicyItemList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 安全合规查询某资产下的检测项列表
    ///
    /// 查询某资产下的检测项列表
    @inlinable
    public func describeComplianceAssetPolicyItemList(_ input: DescribeComplianceAssetPolicyItemListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeComplianceAssetPolicyItemListResponse {
        try await self.client.execute(action: "DescribeComplianceAssetPolicyItemList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 安全合规查询某资产下的检测项列表
    ///
    /// 查询某资产下的检测项列表
    @inlinable
    public func describeComplianceAssetPolicyItemList(customerAssetId: UInt64, offset: UInt64? = nil, limit: UInt64? = nil, filters: [ComplianceFilters]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeComplianceAssetPolicyItemListResponse> {
        self.describeComplianceAssetPolicyItemList(DescribeComplianceAssetPolicyItemListRequest(customerAssetId: customerAssetId, offset: offset, limit: limit, filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 安全合规查询某资产下的检测项列表
    ///
    /// 查询某资产下的检测项列表
    @inlinable
    public func describeComplianceAssetPolicyItemList(customerAssetId: UInt64, offset: UInt64? = nil, limit: UInt64? = nil, filters: [ComplianceFilters]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeComplianceAssetPolicyItemListResponse {
        try await self.describeComplianceAssetPolicyItemList(DescribeComplianceAssetPolicyItemListRequest(customerAssetId: customerAssetId, offset: offset, limit: limit, filters: filters), region: region, logger: logger, on: eventLoop)
    }
}
