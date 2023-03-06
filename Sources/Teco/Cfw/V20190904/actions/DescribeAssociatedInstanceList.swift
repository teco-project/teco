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
    /// DescribeAssociatedInstanceList请求参数结构体
    public struct DescribeAssociatedInstanceListRequest: TCPaginatedRequest {
        /// 列表偏移量
        public let offset: UInt64

        /// 每页记录条数
        public let limit: UInt64

        /// 地域代码（例：ap-guangzhou）,支持腾讯云全地域
        public let area: String

        /// 额外检索条件（JSON字符串）
        public let searchValue: String?

        /// 排序字段
        public let by: String?

        /// 排序方式（asc:升序,desc:降序）
        public let order: String?

        /// 安全组ID
        public let securityGroupId: String?

        /// 实例类型,'3'是cvm实例,'4'是clb实例,'5'是eni实例,'6'是云数据库
        public let type: String?

        public init(offset: UInt64, limit: UInt64, area: String, searchValue: String? = nil, by: String? = nil, order: String? = nil, securityGroupId: String? = nil, type: String? = nil) {
            self.offset = offset
            self.limit = limit
            self.area = area
            self.searchValue = searchValue
            self.by = by
            self.order = order
            self.securityGroupId = securityGroupId
            self.type = type
        }

        enum CodingKeys: String, CodingKey {
            case offset = "Offset"
            case limit = "Limit"
            case area = "Area"
            case searchValue = "SearchValue"
            case by = "By"
            case order = "Order"
            case securityGroupId = "SecurityGroupId"
            case type = "Type"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribeAssociatedInstanceListResponse) -> DescribeAssociatedInstanceListRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeAssociatedInstanceListRequest(offset: self.offset + .init(response.getItems().count), limit: self.limit, area: self.area, searchValue: self.searchValue, by: self.by, order: self.order, securityGroupId: self.securityGroupId, type: self.type)
        }
    }

    /// DescribeAssociatedInstanceList返回参数结构体
    public struct DescribeAssociatedInstanceListResponse: TCPaginatedResponse {
        /// 实例数量
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let total: UInt64?

        /// 实例列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: [AssociatedInstanceInfo]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case total = "Total"
            case data = "Data"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [AssociatedInstanceInfo] {
            self.data ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.total
        }
    }

    /// 获取安全组关联实例列表
    @inlinable
    public func describeAssociatedInstanceList(_ input: DescribeAssociatedInstanceListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAssociatedInstanceListResponse> {
        self.client.execute(action: "DescribeAssociatedInstanceList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取安全组关联实例列表
    @inlinable
    public func describeAssociatedInstanceList(_ input: DescribeAssociatedInstanceListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAssociatedInstanceListResponse {
        try await self.client.execute(action: "DescribeAssociatedInstanceList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取安全组关联实例列表
    @inlinable
    public func describeAssociatedInstanceList(offset: UInt64, limit: UInt64, area: String, searchValue: String? = nil, by: String? = nil, order: String? = nil, securityGroupId: String? = nil, type: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAssociatedInstanceListResponse> {
        let input = DescribeAssociatedInstanceListRequest(offset: offset, limit: limit, area: area, searchValue: searchValue, by: by, order: order, securityGroupId: securityGroupId, type: type)
        return self.client.execute(action: "DescribeAssociatedInstanceList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取安全组关联实例列表
    @inlinable
    public func describeAssociatedInstanceList(offset: UInt64, limit: UInt64, area: String, searchValue: String? = nil, by: String? = nil, order: String? = nil, securityGroupId: String? = nil, type: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAssociatedInstanceListResponse {
        let input = DescribeAssociatedInstanceListRequest(offset: offset, limit: limit, area: area, searchValue: searchValue, by: by, order: order, securityGroupId: securityGroupId, type: type)
        return try await self.client.execute(action: "DescribeAssociatedInstanceList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取安全组关联实例列表
    @inlinable
    public func describeAssociatedInstanceListPaginated(_ input: DescribeAssociatedInstanceListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [AssociatedInstanceInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeAssociatedInstanceList, logger: logger, on: eventLoop)
    }

    /// 获取安全组关联实例列表
    @inlinable @discardableResult
    public func describeAssociatedInstanceListPaginated(_ input: DescribeAssociatedInstanceListRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeAssociatedInstanceListResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeAssociatedInstanceList, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取安全组关联实例列表
    @inlinable
    public func describeAssociatedInstanceListPaginator(_ input: DescribeAssociatedInstanceListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> (results: TCClient.Paginator<DescribeAssociatedInstanceListRequest, DescribeAssociatedInstanceListResponse>.ResultSequence, responses: TCClient.Paginator<DescribeAssociatedInstanceListRequest, DescribeAssociatedInstanceListResponse>.ResponseSequence) {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeAssociatedInstanceList, logger: logger, on: eventLoop)
    }
}
