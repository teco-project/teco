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
    /// DescribeEmergencyVulList请求参数结构体
    public struct DescribeEmergencyVulListRequest: TCPaginatedRequest {
        /// 返回数量，最大值为100。
        public let limit: UInt64?

        /// 偏移量，默认为0。
        public let offset: UInt64?

        /// 过滤条件。
        /// - Status - String - 是否必填：是 - 漏洞状态筛选，0//未检测 1有风险 ，2无风险 ，3 检查中展示progress
        /// - Level - String - 是否必填：否 - 漏洞等级筛选 1:低 2:中 3:高 4:提示
        /// - VulName- String - 是否必填：否 - 漏洞名称搜索
        /// - Uuids- String - 是否必填：否 - 主机uuid
        /// - IsSupportDefense - int- 是否必填：否 - 是否支持防御 0:不支持 1:支持
        public let filters: [Filters]?

        /// 排序方式 desc , asc
        public let order: String?

        /// 排序字段 PublishDate  LastScanTime HostCount
        public let by: String?

        /// 是否热点漏洞
        public let hotspotAttack: Bool?

        public init(limit: UInt64? = nil, offset: UInt64? = nil, filters: [Filters]? = nil, order: String? = nil, by: String? = nil, hotspotAttack: Bool? = nil) {
            self.limit = limit
            self.offset = offset
            self.filters = filters
            self.order = order
            self.by = by
            self.hotspotAttack = hotspotAttack
        }

        enum CodingKeys: String, CodingKey {
            case limit = "Limit"
            case offset = "Offset"
            case filters = "Filters"
            case order = "Order"
            case by = "By"
            case hotspotAttack = "HotspotAttack"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeEmergencyVulListResponse) -> DescribeEmergencyVulListRequest? {
            guard case let items = response.getItems(), !items.isEmpty, let totalCount = response.getTotalCount(), (self.offset ?? 0) + .init(items.count) >= totalCount else {
                return nil
            }
            return .init(limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count), filters: self.filters, order: self.order, by: self.by, hotspotAttack: self.hotspotAttack)
        }
    }

    /// DescribeEmergencyVulList返回参数结构体
    public struct DescribeEmergencyVulListResponse: TCPaginatedResponse {
        /// 漏洞列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let list: [EmergencyVul]?

        /// 漏洞总条数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let totalCount: UInt64?

        /// 是否存在风险
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let existsRisk: Bool?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case list = "List"
            case totalCount = "TotalCount"
            case existsRisk = "ExistsRisk"
            case requestId = "RequestId"
        }

        /// Extract the returned ``EmergencyVul`` list from the paginated response.
        public func getItems() -> [EmergencyVul] {
            self.list ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 应急漏洞列表
    ///
    /// 获取应急漏洞列表
    @inlinable
    public func describeEmergencyVulList(_ input: DescribeEmergencyVulListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeEmergencyVulListResponse> {
        self.client.execute(action: "DescribeEmergencyVulList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 应急漏洞列表
    ///
    /// 获取应急漏洞列表
    @inlinable
    public func describeEmergencyVulList(_ input: DescribeEmergencyVulListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeEmergencyVulListResponse {
        try await self.client.execute(action: "DescribeEmergencyVulList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 应急漏洞列表
    ///
    /// 获取应急漏洞列表
    @inlinable
    public func describeEmergencyVulList(limit: UInt64? = nil, offset: UInt64? = nil, filters: [Filters]? = nil, order: String? = nil, by: String? = nil, hotspotAttack: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeEmergencyVulListResponse> {
        self.describeEmergencyVulList(.init(limit: limit, offset: offset, filters: filters, order: order, by: by, hotspotAttack: hotspotAttack), region: region, logger: logger, on: eventLoop)
    }

    /// 应急漏洞列表
    ///
    /// 获取应急漏洞列表
    @inlinable
    public func describeEmergencyVulList(limit: UInt64? = nil, offset: UInt64? = nil, filters: [Filters]? = nil, order: String? = nil, by: String? = nil, hotspotAttack: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeEmergencyVulListResponse {
        try await self.describeEmergencyVulList(.init(limit: limit, offset: offset, filters: filters, order: order, by: by, hotspotAttack: hotspotAttack), region: region, logger: logger, on: eventLoop)
    }

    /// 应急漏洞列表
    ///
    /// 获取应急漏洞列表
    @inlinable
    public func describeEmergencyVulListPaginated(_ input: DescribeEmergencyVulListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [EmergencyVul])> {
        self.client.paginate(input: input, region: region, command: self.describeEmergencyVulList, logger: logger, on: eventLoop)
    }

    /// 应急漏洞列表
    ///
    /// 获取应急漏洞列表
    @inlinable @discardableResult
    public func describeEmergencyVulListPaginated(_ input: DescribeEmergencyVulListRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeEmergencyVulListResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeEmergencyVulList, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 应急漏洞列表
    ///
    /// 获取应急漏洞列表
    ///
    /// - Returns: `AsyncSequence`s of ``EmergencyVul`` and ``DescribeEmergencyVulListResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeEmergencyVulListPaginator(_ input: DescribeEmergencyVulListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeEmergencyVulListRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeEmergencyVulList, logger: logger, on: eventLoop)
    }
}
