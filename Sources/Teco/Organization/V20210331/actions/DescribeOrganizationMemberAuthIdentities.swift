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

extension Organization {
    /// DescribeOrganizationMemberAuthIdentities请求参数结构体
    public struct DescribeOrganizationMemberAuthIdentitiesRequest: TCPaginatedRequest {
        /// 偏移量。
        public let offset: Int64

        /// 限制数目。最大50
        public let limit: Int64

        /// 组织成员Uin。
        public let memberUin: Int64

        public init(offset: Int64, limit: Int64, memberUin: Int64) {
            self.offset = offset
            self.limit = limit
            self.memberUin = memberUin
        }

        enum CodingKeys: String, CodingKey {
            case offset = "Offset"
            case limit = "Limit"
            case memberUin = "MemberUin"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeOrganizationMemberAuthIdentitiesResponse) -> DescribeOrganizationMemberAuthIdentitiesRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeOrganizationMemberAuthIdentitiesRequest(offset: self.offset + .init(response.getItems().count), limit: self.limit, memberUin: self.memberUin)
        }
    }

    /// DescribeOrganizationMemberAuthIdentities返回参数结构体
    public struct DescribeOrganizationMemberAuthIdentitiesResponse: TCPaginatedResponse {
        /// 列表。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let items: [OrgMemberAuthIdentity]?

        /// 总数目。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let total: UInt64?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case items = "Items"
            case total = "Total"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [OrgMemberAuthIdentity] {
            self.items ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.total
        }
    }

    /// 获取组织成员可被管理的身份列表
    @inlinable
    public func describeOrganizationMemberAuthIdentities(_ input: DescribeOrganizationMemberAuthIdentitiesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeOrganizationMemberAuthIdentitiesResponse> {
        self.client.execute(action: "DescribeOrganizationMemberAuthIdentities", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取组织成员可被管理的身份列表
    @inlinable
    public func describeOrganizationMemberAuthIdentities(_ input: DescribeOrganizationMemberAuthIdentitiesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeOrganizationMemberAuthIdentitiesResponse {
        try await self.client.execute(action: "DescribeOrganizationMemberAuthIdentities", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取组织成员可被管理的身份列表
    @inlinable
    public func describeOrganizationMemberAuthIdentities(offset: Int64, limit: Int64, memberUin: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeOrganizationMemberAuthIdentitiesResponse> {
        self.describeOrganizationMemberAuthIdentities(.init(offset: offset, limit: limit, memberUin: memberUin), region: region, logger: logger, on: eventLoop)
    }

    /// 获取组织成员可被管理的身份列表
    @inlinable
    public func describeOrganizationMemberAuthIdentities(offset: Int64, limit: Int64, memberUin: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeOrganizationMemberAuthIdentitiesResponse {
        try await self.describeOrganizationMemberAuthIdentities(.init(offset: offset, limit: limit, memberUin: memberUin), region: region, logger: logger, on: eventLoop)
    }

    /// 获取组织成员可被管理的身份列表
    @inlinable
    public func describeOrganizationMemberAuthIdentitiesPaginated(_ input: DescribeOrganizationMemberAuthIdentitiesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [OrgMemberAuthIdentity])> {
        self.client.paginate(input: input, region: region, command: self.describeOrganizationMemberAuthIdentities, logger: logger, on: eventLoop)
    }

    /// 获取组织成员可被管理的身份列表
    @inlinable @discardableResult
    public func describeOrganizationMemberAuthIdentitiesPaginated(_ input: DescribeOrganizationMemberAuthIdentitiesRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeOrganizationMemberAuthIdentitiesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeOrganizationMemberAuthIdentities, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取组织成员可被管理的身份列表
    ///
    /// - Returns: `AsyncSequence`s of `OrgMemberAuthIdentity` and `DescribeOrganizationMemberAuthIdentitiesResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeOrganizationMemberAuthIdentitiesPaginator(_ input: DescribeOrganizationMemberAuthIdentitiesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeOrganizationMemberAuthIdentitiesRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeOrganizationMemberAuthIdentities, logger: logger, on: eventLoop)
    }
}
