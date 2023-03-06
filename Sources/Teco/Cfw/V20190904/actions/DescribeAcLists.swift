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

extension Cfw {
    /// DescribeAcLists请求参数结构体
    public struct DescribeAcListsRequest: TCPaginatedRequest {
        /// 协议
        public let `protocol`: String?

        /// 策略
        public let strategy: String?

        /// 搜索值
        public let searchValue: String?

        /// 每页条数
        public let limit: UInt64?

        /// 偏移值
        public let offset: UInt64?

        /// 出站还是入站，1：入站，0：出站
        public let direction: UInt64?

        /// EdgeId值
        public let edgeId: String?

        /// 规则是否开启，'0': 未开启，'1': 开启, 默认为'0'
        public let status: String?

        /// 地域
        public let area: String?

        /// 实例ID
        public let instanceId: String?

        public init(protocol: String? = nil, strategy: String? = nil, searchValue: String? = nil, limit: UInt64? = nil, offset: UInt64? = nil, direction: UInt64? = nil, edgeId: String? = nil, status: String? = nil, area: String? = nil, instanceId: String? = nil) {
            self.protocol = `protocol`
            self.strategy = strategy
            self.searchValue = searchValue
            self.limit = limit
            self.offset = offset
            self.direction = direction
            self.edgeId = edgeId
            self.status = status
            self.area = area
            self.instanceId = instanceId
        }

        enum CodingKeys: String, CodingKey {
            case `protocol` = "Protocol"
            case strategy = "Strategy"
            case searchValue = "SearchValue"
            case limit = "Limit"
            case offset = "Offset"
            case direction = "Direction"
            case edgeId = "EdgeId"
            case status = "Status"
            case area = "Area"
            case instanceId = "InstanceId"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribeAcListsResponse) -> DescribeAcListsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeAcListsRequest(protocol: self.protocol, strategy: self.strategy, searchValue: self.searchValue, limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count), direction: self.direction, edgeId: self.edgeId, status: self.status, area: self.area, instanceId: self.instanceId)
        }
    }

    /// DescribeAcLists返回参数结构体
    public struct DescribeAcListsResponse: TCPaginatedResponse {
        /// 总条数
        public let total: UInt64

        /// 访问控制列表数据
        public let data: [AcListsData]

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

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [AcListsData] {
            self.data
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.total
        }
    }

    /// 访问控制列表
    @inlinable
    public func describeAcLists(_ input: DescribeAcListsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAcListsResponse> {
        self.client.execute(action: "DescribeAcLists", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 访问控制列表
    @inlinable
    public func describeAcLists(_ input: DescribeAcListsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAcListsResponse {
        try await self.client.execute(action: "DescribeAcLists", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 访问控制列表
    @inlinable
    public func describeAcLists(protocol: String? = nil, strategy: String? = nil, searchValue: String? = nil, limit: UInt64? = nil, offset: UInt64? = nil, direction: UInt64? = nil, edgeId: String? = nil, status: String? = nil, area: String? = nil, instanceId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAcListsResponse> {
        let input = DescribeAcListsRequest(protocol: `protocol`, strategy: strategy, searchValue: searchValue, limit: limit, offset: offset, direction: direction, edgeId: edgeId, status: status, area: area, instanceId: instanceId)
        return self.client.execute(action: "DescribeAcLists", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 访问控制列表
    @inlinable
    public func describeAcLists(protocol: String? = nil, strategy: String? = nil, searchValue: String? = nil, limit: UInt64? = nil, offset: UInt64? = nil, direction: UInt64? = nil, edgeId: String? = nil, status: String? = nil, area: String? = nil, instanceId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAcListsResponse {
        let input = DescribeAcListsRequest(protocol: `protocol`, strategy: strategy, searchValue: searchValue, limit: limit, offset: offset, direction: direction, edgeId: edgeId, status: status, area: area, instanceId: instanceId)
        return try await self.client.execute(action: "DescribeAcLists", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 访问控制列表
    @inlinable
    public func describeAcListsPaginated(_ input: DescribeAcListsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [AcListsData])> {
        self.client.paginate(input: input, region: region, command: self.describeAcLists, logger: logger, on: eventLoop)
    }

    /// 访问控制列表
    @inlinable @discardableResult
    public func describeAcListsPaginated(_ input: DescribeAcListsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeAcListsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeAcLists, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 访问控制列表
    @inlinable
    public func describeAcListsPaginator(_ input: DescribeAcListsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeAcListsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeAcLists, logger: logger, on: eventLoop)
    }
}
