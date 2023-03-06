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
    /// DescribeAppAccount请求参数结构体
    public struct DescribeAppAccountRequest: TCPaginatedRequest {
        /// 应用ID。
        public let applicationId: String

        /// 查询条件，支持多搜索条件组合、多数据范围匹配的搜索。同时支持查询信息内容全匹配、部分匹配、范围匹配等多种查询方式，具体查询方式为：双引号（“”）表示全匹配、以星号（*）结尾表示字段部分匹配。如果该字段为空，则默认查全量表。
        public let searchCondition: AppAccountSearchCriteria?

        /// 偏移量，默认为 0。
        public let offset: Int64?

        /// 返回数量，默认为 20，最大值为 100。
        public let limit: Int64?

        public init(applicationId: String, searchCondition: AppAccountSearchCriteria? = nil, offset: Int64? = nil, limit: Int64? = nil) {
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
        public func makeNextRequest(with response: DescribeAppAccountResponse) -> DescribeAppAccountRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeAppAccountRequest(applicationId: self.applicationId, searchCondition: self.searchCondition, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit)
        }
    }

    /// DescribeAppAccount返回参数结构体
    public struct DescribeAppAccountResponse: TCPaginatedResponse {
        /// 返回查询的总记录数。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let totalCount: Int64?

        /// 应用ID。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let applicationId: String?

        /// 返回符合条件的数据列表。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let appAccountList: [AppAccountInfo]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case applicationId = "ApplicationId"
            case appAccountList = "AppAccountList"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [AppAccountInfo] {
            self.appAccountList ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 查询应用账号列表
    @inlinable
    public func describeAppAccount(_ input: DescribeAppAccountRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAppAccountResponse> {
        self.client.execute(action: "DescribeAppAccount", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询应用账号列表
    @inlinable
    public func describeAppAccount(_ input: DescribeAppAccountRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAppAccountResponse {
        try await self.client.execute(action: "DescribeAppAccount", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询应用账号列表
    @inlinable
    public func describeAppAccount(applicationId: String, searchCondition: AppAccountSearchCriteria? = nil, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAppAccountResponse> {
        let input = DescribeAppAccountRequest(applicationId: applicationId, searchCondition: searchCondition, offset: offset, limit: limit)
        return self.client.execute(action: "DescribeAppAccount", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询应用账号列表
    @inlinable
    public func describeAppAccount(applicationId: String, searchCondition: AppAccountSearchCriteria? = nil, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAppAccountResponse {
        let input = DescribeAppAccountRequest(applicationId: applicationId, searchCondition: searchCondition, offset: offset, limit: limit)
        return try await self.client.execute(action: "DescribeAppAccount", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询应用账号列表
    @inlinable
    public func describeAppAccountPaginated(_ input: DescribeAppAccountRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [AppAccountInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeAppAccount, logger: logger, on: eventLoop)
    }

    /// 查询应用账号列表
    @inlinable @discardableResult
    public func describeAppAccountPaginated(_ input: DescribeAppAccountRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeAppAccountResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeAppAccount, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询应用账号列表
    ///
    /// - Returns: `AsyncSequence`s of `AppAccountInfo` and `DescribeAppAccountResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeAppAccountPaginator(_ input: DescribeAppAccountRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeAppAccountRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeAppAccount, logger: logger, on: eventLoop)
    }
}
