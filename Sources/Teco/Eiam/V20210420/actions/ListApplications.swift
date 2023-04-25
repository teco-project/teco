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

// Test PR teco-project/teco-code-generator#23.

import Logging
import NIOCore
import TecoCore
import TecoPaginationHelpers

extension Eiam {
    /// ListApplications请求参数结构体
    public struct ListApplicationsRequest: TCPaginatedRequest {
        /// 模糊匹配搜索条件，支持多搜索条件组合、多数据范围匹配的搜索。同时支持查询信息内容全匹配、部分匹配、范围匹配等多种查询方式，具体查询方式为：双引号（""）表示全匹配、以星号（* ) 结尾表示字段部分匹配。模糊匹配搜索功能与精准匹配查询不会同时生效，如果SearchCondition与ApplicationIdList均不为空，则默认以ApplicationIdList进行精准查询。如果SearchCondition字段与ApplicationIdList字段均为空，则默认返回全部的应用信息。
        public let searchCondition: ApplicationInfoSearchCriteria?

        /// 排序条件集合。可排序的属性支持：应用名字（DisplayName）、创建时间（CreatedDate）、上次修改时间（LastModifiedDate）。如果该字段为空，则默认按照应用名字正向排序。
        public let sort: SortCondition?

        /// 排序条件集合。可排序的属性支持：应用名字（DisplayName）、创建时间（CreatedDate）、上次修改时间（LastModifiedDate）。如果该字段为空，则默认按照应用名字正向排序。
        public let offset: UInt64?

        /// 分页读取数量。Offset 和 Limit 两个字段需配合使用，即其中一个指定了，另一个必须指定。 如果不指定以上参数，则表示不进行分页查询。
        public let limit: UInt64?

        /// 应用ID列表，通过应用ID列表精准匹配对应的应用信息。模糊匹配搜索功能与精准匹配查询不会同时生效，如果SearchCondition与ApplicationIdList均不为空，则默认以ApplicationIdList进行精准查询。如果SearchCondition字段与ApplicationIdList字段均为空，则默认返回全部的应用信息。
        public let applicationIdList: [String]?

        public init(searchCondition: ApplicationInfoSearchCriteria? = nil, sort: SortCondition? = nil, offset: UInt64? = nil, limit: UInt64? = nil, applicationIdList: [String]? = nil) {
            self.searchCondition = searchCondition
            self.sort = sort
            self.offset = offset
            self.limit = limit
            self.applicationIdList = applicationIdList
        }

        enum CodingKeys: String, CodingKey {
            case searchCondition = "SearchCondition"
            case sort = "Sort"
            case offset = "Offset"
            case limit = "Limit"
            case applicationIdList = "ApplicationIdList"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: ListApplicationsResponse) -> ListApplicationsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return ListApplicationsRequest(searchCondition: self.searchCondition, sort: self.sort, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, applicationIdList: self.applicationIdList)
        }
    }

    /// ListApplications返回参数结构体
    public struct ListApplicationsResponse: TCPaginatedResponse {
        /// 返回的应用信息总数。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let totalCount: UInt64?

        /// 返回的应用信息列表。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let applicationInfoList: [ApplicationInformation]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case applicationInfoList = "ApplicationInfoList"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [ApplicationInformation] {
            self.applicationInfoList ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 获取应用列表信息
    ///
    /// 获取应用列表信息。
    @inlinable
    public func listApplications(_ input: ListApplicationsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListApplicationsResponse> {
        self.client.execute(action: "ListApplications", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取应用列表信息
    ///
    /// 获取应用列表信息。
    @inlinable
    public func listApplications(_ input: ListApplicationsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListApplicationsResponse {
        try await self.client.execute(action: "ListApplications", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取应用列表信息
    ///
    /// 获取应用列表信息。
    @inlinable
    public func listApplications(searchCondition: ApplicationInfoSearchCriteria? = nil, sort: SortCondition? = nil, offset: UInt64? = nil, limit: UInt64? = nil, applicationIdList: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListApplicationsResponse> {
        self.listApplications(.init(searchCondition: searchCondition, sort: sort, offset: offset, limit: limit, applicationIdList: applicationIdList), region: region, logger: logger, on: eventLoop)
    }

    /// 获取应用列表信息
    ///
    /// 获取应用列表信息。
    @inlinable
    public func listApplications(searchCondition: ApplicationInfoSearchCriteria? = nil, sort: SortCondition? = nil, offset: UInt64? = nil, limit: UInt64? = nil, applicationIdList: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListApplicationsResponse {
        try await self.listApplications(.init(searchCondition: searchCondition, sort: sort, offset: offset, limit: limit, applicationIdList: applicationIdList), region: region, logger: logger, on: eventLoop)
    }

    /// 获取应用列表信息
    ///
    /// 获取应用列表信息。
    @inlinable
    public func listApplicationsPaginated(_ input: ListApplicationsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [ApplicationInformation])> {
        self.client.paginate(input: input, region: region, command: self.listApplications, logger: logger, on: eventLoop)
    }

    /// 获取应用列表信息
    ///
    /// 获取应用列表信息。
    @inlinable @discardableResult
    public func listApplicationsPaginated(_ input: ListApplicationsRequest, region: TCRegion? = nil, onResponse: @escaping (ListApplicationsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.listApplications, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取应用列表信息
    ///
    /// 获取应用列表信息。
    ///
    /// - Returns: `AsyncSequence`s of `ApplicationInformation` and `ListApplicationsResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func listApplicationsPaginator(_ input: ListApplicationsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<ListApplicationsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.listApplications, logger: logger, on: eventLoop)
    }
}
