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

extension Cfw {
    /// DescribeNatSwitchList请求参数结构体
    public struct DescribeNatSwitchListRequest: TCPaginatedRequest {
        /// 偏移量，分页用
        public let offset: Int64

        /// 条数，分页用
        public let limit: Int64

        /// 搜索值
        public let searchValue: String?

        /// 开关，1打开，0关闭
        public let status: Int64?

        /// 筛选NAT防火墙子网开关所属VPC
        public let vpcId: String?

        /// 筛选NAT防火墙子网开关所属NAT网关
        public let natId: String?

        /// 筛选NAT防火墙子网开关所属NAT防火墙实例
        public let natInsId: String?

        /// 筛选NAT防火墙子网开关所属地域
        public let area: String?

        public init(offset: Int64, limit: Int64, searchValue: String? = nil, status: Int64? = nil, vpcId: String? = nil, natId: String? = nil, natInsId: String? = nil, area: String? = nil) {
            self.offset = offset
            self.limit = limit
            self.searchValue = searchValue
            self.status = status
            self.vpcId = vpcId
            self.natId = natId
            self.natInsId = natInsId
            self.area = area
        }

        enum CodingKeys: String, CodingKey {
            case offset = "Offset"
            case limit = "Limit"
            case searchValue = "SearchValue"
            case status = "Status"
            case vpcId = "VpcId"
            case natId = "NatId"
            case natInsId = "NatInsId"
            case area = "Area"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeNatSwitchListResponse) -> DescribeNatSwitchListRequest? {
            guard case let items = response.getItems(), !items.isEmpty, let totalCount = response.getTotalCount(), self.offset + .init(items.count) >= totalCount else {
                return nil
            }
            return .init(offset: self.offset + .init(response.getItems().count), limit: self.limit, searchValue: self.searchValue, status: self.status, vpcId: self.vpcId, natId: self.natId, natInsId: self.natInsId, area: self.area)
        }
    }

    /// DescribeNatSwitchList返回参数结构体
    public struct DescribeNatSwitchListResponse: TCPaginatedResponse {
        /// 总数
        public let total: Int64

        /// NAT边界防火墙开关列表数据
        public let data: [NatSwitchListData]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case total = "Total"
            case data = "Data"
            case requestId = "RequestId"
        }

        /// Extract the returned ``NatSwitchListData`` list from the paginated response.
        public func getItems() -> [NatSwitchListData] {
            self.data
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.total
        }
    }

    /// 查询NAT边界防火墙开关列表
    @inlinable
    public func describeNatSwitchList(_ input: DescribeNatSwitchListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeNatSwitchListResponse> {
        self.client.execute(action: "DescribeNatSwitchList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询NAT边界防火墙开关列表
    @inlinable
    public func describeNatSwitchList(_ input: DescribeNatSwitchListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeNatSwitchListResponse {
        try await self.client.execute(action: "DescribeNatSwitchList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询NAT边界防火墙开关列表
    @inlinable
    public func describeNatSwitchList(offset: Int64, limit: Int64, searchValue: String? = nil, status: Int64? = nil, vpcId: String? = nil, natId: String? = nil, natInsId: String? = nil, area: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeNatSwitchListResponse> {
        self.describeNatSwitchList(.init(offset: offset, limit: limit, searchValue: searchValue, status: status, vpcId: vpcId, natId: natId, natInsId: natInsId, area: area), region: region, logger: logger, on: eventLoop)
    }

    /// 查询NAT边界防火墙开关列表
    @inlinable
    public func describeNatSwitchList(offset: Int64, limit: Int64, searchValue: String? = nil, status: Int64? = nil, vpcId: String? = nil, natId: String? = nil, natInsId: String? = nil, area: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeNatSwitchListResponse {
        try await self.describeNatSwitchList(.init(offset: offset, limit: limit, searchValue: searchValue, status: status, vpcId: vpcId, natId: natId, natInsId: natInsId, area: area), region: region, logger: logger, on: eventLoop)
    }

    /// 查询NAT边界防火墙开关列表
    @inlinable
    public func describeNatSwitchListPaginated(_ input: DescribeNatSwitchListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [NatSwitchListData])> {
        self.client.paginate(input: input, region: region, command: self.describeNatSwitchList, logger: logger, on: eventLoop)
    }

    /// 查询NAT边界防火墙开关列表
    @inlinable @discardableResult
    public func describeNatSwitchListPaginated(_ input: DescribeNatSwitchListRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeNatSwitchListResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeNatSwitchList, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询NAT边界防火墙开关列表
    ///
    /// - Returns: `AsyncSequence`s of ``NatSwitchListData`` and ``DescribeNatSwitchListResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeNatSwitchListPaginator(_ input: DescribeNatSwitchListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeNatSwitchListRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeNatSwitchList, logger: logger, on: eventLoop)
    }
}
