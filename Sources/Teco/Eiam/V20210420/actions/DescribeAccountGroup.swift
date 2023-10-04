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

extension Eiam {
    /// DescribeAccountGroup请求参数结构体
    public struct DescribeAccountGroupRequest: TCPaginatedRequest {
        /// 应用ID。
        public let applicationId: String

        /// 查询条件，支持多搜索条件组合、多数据范围匹配的搜索。同时支持查询信息内容全匹配、部分匹配、范围匹配等多种查询方式，具体查询方式为：双引号（“”）表示全匹配、以星号（*）结尾表示字段部分匹配。如果该字段为空，则默认查全量表。
        public let searchCondition: AccountGroupSearchCriteria?

        /// 偏移量，默认为 0。
        public let offset: Int64?

        /// 返回数量，默认为 20，最大值为 100。
        public let limit: Int64?

        public init(applicationId: String, searchCondition: AccountGroupSearchCriteria? = nil, offset: Int64? = nil, limit: Int64? = nil) {
            self.applicationId = applicationId
            self.searchCondition = searchCondition
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case applicationId = "ApplicationId"
            case searchCondition = "SearchCondition"
            case offset = "Offset"
            case limit = "Limit"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeAccountGroupResponse) -> DescribeAccountGroupRequest? {
            guard case let items = response.getItems(), !items.isEmpty, let totalCount = response.getTotalCount(), .init(self.offset ?? 0) + .init(items.count) >= totalCount else {
                return nil
            }
            return .init(applicationId: self.applicationId, searchCondition: self.searchCondition, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit)
        }
    }

    /// DescribeAccountGroup返回参数结构体
    public struct DescribeAccountGroupResponse: TCPaginatedResponse {
        /// 返回查询的总记录数。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let totalCount: Int64?

        /// 应用ID。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let applicationId: String?

        /// 返回符合条件的数据列表。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let accountGroupList: [AccountGroupInfo]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case applicationId = "ApplicationId"
            case accountGroupList = "AccountGroupList"
            case requestId = "RequestId"
        }

        /// Extract the returned ``AccountGroupInfo`` list from the paginated response.
        public func getItems() -> [AccountGroupInfo] {
            self.accountGroupList ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 查询账号组列表
    @inlinable
    public func describeAccountGroup(_ input: DescribeAccountGroupRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAccountGroupResponse> {
        self.client.execute(action: "DescribeAccountGroup", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询账号组列表
    @inlinable
    public func describeAccountGroup(_ input: DescribeAccountGroupRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAccountGroupResponse {
        try await self.client.execute(action: "DescribeAccountGroup", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询账号组列表
    @inlinable
    public func describeAccountGroup(applicationId: String, searchCondition: AccountGroupSearchCriteria? = nil, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAccountGroupResponse> {
        self.describeAccountGroup(.init(applicationId: applicationId, searchCondition: searchCondition, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查询账号组列表
    @inlinable
    public func describeAccountGroup(applicationId: String, searchCondition: AccountGroupSearchCriteria? = nil, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAccountGroupResponse {
        try await self.describeAccountGroup(.init(applicationId: applicationId, searchCondition: searchCondition, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查询账号组列表
    @inlinable
    public func describeAccountGroupPaginated(_ input: DescribeAccountGroupRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [AccountGroupInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeAccountGroup, logger: logger, on: eventLoop)
    }

    /// 查询账号组列表
    @inlinable @discardableResult
    public func describeAccountGroupPaginated(_ input: DescribeAccountGroupRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeAccountGroupResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeAccountGroup, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询账号组列表
    ///
    /// - Returns: `AsyncSequence`s of ``AccountGroupInfo`` and ``DescribeAccountGroupResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeAccountGroupPaginator(_ input: DescribeAccountGroupRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeAccountGroupRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeAccountGroup, logger: logger, on: eventLoop)
    }
}
