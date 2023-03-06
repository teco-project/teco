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

extension Eiam {
    /// ListApplicationAuthorizations请求参数结构体
    public struct ListApplicationAuthorizationsRequest: TCPaginatedRequest {
        /// 查询类型，包含用户（User）、用户组（UserGroup）、组织机构（OrgNode）。
        public let entityType: String

        /// 查询条件，支持多搜索条件组合、多数据范围匹配的搜索。同时支持查询信息内容全匹配、部分匹配、范围匹配等多种查询方式，具体查询方式为：双引号（""）表示全匹配、以星号（* ) 结尾表示字段部分匹配。如果该字段为空，则默认查全量表。
        public let searchCondition: AuthorizationInfoSearchCriteria?

        /// 排序条件集合。可排序的属性支持：上次修改时间（lastModifiedDate）。如果该字段为空，则默认按照应用名称正向排序。
        public let sort: SortCondition?

        /// 分页偏移量。Offset 和 Limit 两个字段需配合使用，即其中一个指定了，另一个必须指定。 如果不指定以上参数，则表示不进行分页查询。
        public let offset: UInt64?

        /// 分页读取数量。Offset 和 Limit 两个字段需配合使用，即其中一个指定了，另一个必须指定。 如果不指定以上参数，则表示不进行分页查询。
        public let limit: UInt64?

        public init(entityType: String, searchCondition: AuthorizationInfoSearchCriteria? = nil, sort: SortCondition? = nil, offset: UInt64? = nil, limit: UInt64? = nil) {
            self.entityType = entityType
            self.searchCondition = searchCondition
            self.sort = sort
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case entityType = "EntityType"
            case searchCondition = "SearchCondition"
            case sort = "Sort"
            case offset = "Offset"
            case limit = "Limit"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: ListApplicationAuthorizationsResponse) -> ListApplicationAuthorizationsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return ListApplicationAuthorizationsRequest(entityType: self.entityType, searchCondition: self.searchCondition, sort: self.sort, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit)
        }
    }

    /// ListApplicationAuthorizations返回参数结构体
    public struct ListApplicationAuthorizationsResponse: TCPaginatedResponse {
        /// 返回的应用授权信息列表。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let authorizationInfoList: [AuthorizationInfo]?

        /// 返回的应用信息总数。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let totalCount: UInt64?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case authorizationInfoList = "AuthorizationInfoList"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [AuthorizationInfo] {
            self.authorizationInfoList ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 应用授权关系列表信息
    ///
    /// 应用授权关系列表（含搜索条件匹配）。
    @inlinable
    public func listApplicationAuthorizations(_ input: ListApplicationAuthorizationsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListApplicationAuthorizationsResponse> {
        self.client.execute(action: "ListApplicationAuthorizations", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 应用授权关系列表信息
    ///
    /// 应用授权关系列表（含搜索条件匹配）。
    @inlinable
    public func listApplicationAuthorizations(_ input: ListApplicationAuthorizationsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListApplicationAuthorizationsResponse {
        try await self.client.execute(action: "ListApplicationAuthorizations", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 应用授权关系列表信息
    ///
    /// 应用授权关系列表（含搜索条件匹配）。
    @inlinable
    public func listApplicationAuthorizations(entityType: String, searchCondition: AuthorizationInfoSearchCriteria? = nil, sort: SortCondition? = nil, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListApplicationAuthorizationsResponse> {
        let input = ListApplicationAuthorizationsRequest(entityType: entityType, searchCondition: searchCondition, sort: sort, offset: offset, limit: limit)
        return self.client.execute(action: "ListApplicationAuthorizations", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 应用授权关系列表信息
    ///
    /// 应用授权关系列表（含搜索条件匹配）。
    @inlinable
    public func listApplicationAuthorizations(entityType: String, searchCondition: AuthorizationInfoSearchCriteria? = nil, sort: SortCondition? = nil, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListApplicationAuthorizationsResponse {
        let input = ListApplicationAuthorizationsRequest(entityType: entityType, searchCondition: searchCondition, sort: sort, offset: offset, limit: limit)
        return try await self.client.execute(action: "ListApplicationAuthorizations", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 应用授权关系列表信息
    ///
    /// 应用授权关系列表（含搜索条件匹配）。
    @inlinable
    public func listApplicationAuthorizationsPaginated(_ input: ListApplicationAuthorizationsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [AuthorizationInfo])> {
        self.client.paginate(input: input, region: region, command: self.listApplicationAuthorizations, logger: logger, on: eventLoop)
    }

    /// 应用授权关系列表信息
    ///
    /// 应用授权关系列表（含搜索条件匹配）。
    @inlinable @discardableResult
    public func listApplicationAuthorizationsPaginated(_ input: ListApplicationAuthorizationsRequest, region: TCRegion? = nil, onResponse: @escaping (ListApplicationAuthorizationsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.listApplicationAuthorizations, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 应用授权关系列表信息
    ///
    /// 应用授权关系列表（含搜索条件匹配）。
    ///
    /// - Returns: `AsyncSequence`s of `AuthorizationInfo` and `ListApplicationAuthorizationsResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func listApplicationAuthorizationsPaginator(_ input: ListApplicationAuthorizationsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<ListApplicationAuthorizationsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.listApplicationAuthorizations, logger: logger, on: eventLoop)
    }
}
