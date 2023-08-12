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
import TecoPaginationHelpers

extension Cfw {
    /// DescribeSecurityGroupList请求参数结构体
    public struct DescribeSecurityGroupListRequest: TCPaginatedRequest {
        /// 0: 出站规则，1：入站规则
        public let direction: UInt64

        /// 地域代码（例: ap-guangzhou),支持腾讯云全部地域
        public let area: String

        /// 搜索值
        public let searchValue: String?

        /// 每页条数，默认为10
        public let limit: UInt64?

        /// 偏移值，默认为0
        public let offset: UInt64?

        /// 状态，'': 全部，'0'：筛选停用规则，'1'：筛选启用规则
        public let status: String?

        /// 0: 不过滤，1：过滤掉正常规则，保留下发异常规则
        public let filter: UInt64?

        public init(direction: UInt64, area: String, searchValue: String? = nil, limit: UInt64? = nil, offset: UInt64? = nil, status: String? = nil, filter: UInt64? = nil) {
            self.direction = direction
            self.area = area
            self.searchValue = searchValue
            self.limit = limit
            self.offset = offset
            self.status = status
            self.filter = filter
        }

        enum CodingKeys: String, CodingKey {
            case direction = "Direction"
            case area = "Area"
            case searchValue = "SearchValue"
            case limit = "Limit"
            case offset = "Offset"
            case status = "Status"
            case filter = "Filter"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeSecurityGroupListResponse) -> DescribeSecurityGroupListRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeSecurityGroupListRequest(direction: self.direction, area: self.area, searchValue: self.searchValue, limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count), status: self.status, filter: self.filter)
        }
    }

    /// DescribeSecurityGroupList返回参数结构体
    public struct DescribeSecurityGroupListResponse: TCPaginatedResponse {
        /// 列表当前规则总条数
        public let total: UInt64

        /// 安全组规则列表数据
        public let data: [SecurityGroupListData]

        /// 不算筛选条数的总条数
        public let allTotal: UInt64

        /// 访问控制规则全部启用/全部停用
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let enable: UInt64?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case total = "Total"
            case data = "Data"
            case allTotal = "AllTotal"
            case enable = "Enable"
            case requestId = "RequestId"
        }

        /// Extract the returned ``SecurityGroupListData`` list from the paginated response.
        public func getItems() -> [SecurityGroupListData] {
            self.data
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.total
        }
    }

    /// 查询安全组规则列表
    @inlinable
    public func describeSecurityGroupList(_ input: DescribeSecurityGroupListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSecurityGroupListResponse> {
        self.client.execute(action: "DescribeSecurityGroupList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询安全组规则列表
    @inlinable
    public func describeSecurityGroupList(_ input: DescribeSecurityGroupListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSecurityGroupListResponse {
        try await self.client.execute(action: "DescribeSecurityGroupList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询安全组规则列表
    @inlinable
    public func describeSecurityGroupList(direction: UInt64, area: String, searchValue: String? = nil, limit: UInt64? = nil, offset: UInt64? = nil, status: String? = nil, filter: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSecurityGroupListResponse> {
        self.describeSecurityGroupList(.init(direction: direction, area: area, searchValue: searchValue, limit: limit, offset: offset, status: status, filter: filter), region: region, logger: logger, on: eventLoop)
    }

    /// 查询安全组规则列表
    @inlinable
    public func describeSecurityGroupList(direction: UInt64, area: String, searchValue: String? = nil, limit: UInt64? = nil, offset: UInt64? = nil, status: String? = nil, filter: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSecurityGroupListResponse {
        try await self.describeSecurityGroupList(.init(direction: direction, area: area, searchValue: searchValue, limit: limit, offset: offset, status: status, filter: filter), region: region, logger: logger, on: eventLoop)
    }

    /// 查询安全组规则列表
    @inlinable
    public func describeSecurityGroupListPaginated(_ input: DescribeSecurityGroupListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [SecurityGroupListData])> {
        self.client.paginate(input: input, region: region, command: self.describeSecurityGroupList, logger: logger, on: eventLoop)
    }

    /// 查询安全组规则列表
    @inlinable @discardableResult
    public func describeSecurityGroupListPaginated(_ input: DescribeSecurityGroupListRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeSecurityGroupListResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeSecurityGroupList, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询安全组规则列表
    ///
    /// - Returns: `AsyncSequence`s of ``SecurityGroupListData`` and ``DescribeSecurityGroupListResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeSecurityGroupListPaginator(_ input: DescribeSecurityGroupListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeSecurityGroupListRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeSecurityGroupList, logger: logger, on: eventLoop)
    }
}
