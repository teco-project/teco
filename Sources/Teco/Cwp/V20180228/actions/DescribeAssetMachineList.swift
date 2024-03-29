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
    /// DescribeAssetMachineList请求参数结构体
    public struct DescribeAssetMachineListRequest: TCPaginatedRequest {
        /// 过滤条件。
        /// - IpOrAlias - String - 是否必填：否 - 主机ip或别名筛选
        /// - OsType - String - 是否必填：否 - windows或linux
        /// - CpuLoad - Int - 是否必填：否 -
        ///   0: 未知  1: 低负载
        ///   2: 中负载  3: 高负载
        ///
        /// - DiskLoad - Int - 是否必填：否 -
        ///   0: 0%或未知  1: 0%～20%
        ///   2: 20%～50%  3: 50%～80%
        ///   4: 80%～100%
        ///
        /// - MemLoad - Int - 是否必填：否 -
        ///   0: 0%或未知  1: 0%～20%
        ///   2: 20%～50%  3: 50%～80%
        ///   4: 80%～100%
        ///
        /// - Quuid：主机Quuid
        /// - Os -String 是否必填: 否 - 操作系统( DescribeMachineOsList 接口 值 )
        public let filters: [Filter]?

        /// 需要返回的数量，默认为10，最大值为100
        public let limit: UInt64?

        /// 偏移量，默认为0。
        public let offset: UInt64?

        /// 排序方式，asc升序 或 desc降序
        public let order: String?

        /// 可选排序[FirstTime|PartitionCount]
        public let by: String?

        public init(filters: [Filter]? = nil, limit: UInt64? = nil, offset: UInt64? = nil, order: String? = nil, by: String? = nil) {
            self.filters = filters
            self.limit = limit
            self.offset = offset
            self.order = order
            self.by = by
        }

        enum CodingKeys: String, CodingKey {
            case filters = "Filters"
            case limit = "Limit"
            case offset = "Offset"
            case order = "Order"
            case by = "By"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeAssetMachineListResponse) -> DescribeAssetMachineListRequest? {
            guard case let items = response.getItems(), !items.isEmpty, let totalCount = response.getTotalCount(), (self.offset ?? 0) + .init(items.count) >= totalCount else {
                return nil
            }
            return .init(filters: self.filters, limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count), order: self.order, by: self.by)
        }
    }

    /// DescribeAssetMachineList返回参数结构体
    public struct DescribeAssetMachineListResponse: TCPaginatedResponse {
        /// 总数
        public let total: UInt64

        /// 记录列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let machines: [AssetMachineBaseInfo]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case total = "Total"
            case machines = "Machines"
            case requestId = "RequestId"
        }

        /// Extract the returned ``AssetMachineBaseInfo`` list from the paginated response.
        public func getItems() -> [AssetMachineBaseInfo] {
            self.machines ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.total
        }
    }

    /// 获取资源监控列表
    ///
    /// 获取资产指纹页面的资源监控列表
    @inlinable
    public func describeAssetMachineList(_ input: DescribeAssetMachineListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAssetMachineListResponse> {
        self.client.execute(action: "DescribeAssetMachineList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取资源监控列表
    ///
    /// 获取资产指纹页面的资源监控列表
    @inlinable
    public func describeAssetMachineList(_ input: DescribeAssetMachineListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAssetMachineListResponse {
        try await self.client.execute(action: "DescribeAssetMachineList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取资源监控列表
    ///
    /// 获取资产指纹页面的资源监控列表
    @inlinable
    public func describeAssetMachineList(filters: [Filter]? = nil, limit: UInt64? = nil, offset: UInt64? = nil, order: String? = nil, by: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAssetMachineListResponse> {
        self.describeAssetMachineList(.init(filters: filters, limit: limit, offset: offset, order: order, by: by), region: region, logger: logger, on: eventLoop)
    }

    /// 获取资源监控列表
    ///
    /// 获取资产指纹页面的资源监控列表
    @inlinable
    public func describeAssetMachineList(filters: [Filter]? = nil, limit: UInt64? = nil, offset: UInt64? = nil, order: String? = nil, by: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAssetMachineListResponse {
        try await self.describeAssetMachineList(.init(filters: filters, limit: limit, offset: offset, order: order, by: by), region: region, logger: logger, on: eventLoop)
    }

    /// 获取资源监控列表
    ///
    /// 获取资产指纹页面的资源监控列表
    @inlinable
    public func describeAssetMachineListPaginated(_ input: DescribeAssetMachineListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [AssetMachineBaseInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeAssetMachineList, logger: logger, on: eventLoop)
    }

    /// 获取资源监控列表
    ///
    /// 获取资产指纹页面的资源监控列表
    @inlinable @discardableResult
    public func describeAssetMachineListPaginated(_ input: DescribeAssetMachineListRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeAssetMachineListResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeAssetMachineList, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取资源监控列表
    ///
    /// 获取资产指纹页面的资源监控列表
    ///
    /// - Returns: `AsyncSequence`s of ``AssetMachineBaseInfo`` and ``DescribeAssetMachineListResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeAssetMachineListPaginator(_ input: DescribeAssetMachineListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeAssetMachineListRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeAssetMachineList, logger: logger, on: eventLoop)
    }
}
