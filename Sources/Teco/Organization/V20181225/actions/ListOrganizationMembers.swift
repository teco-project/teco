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

extension Organization {
    /// ListOrganizationMembers请求参数结构体
    public struct ListOrganizationMembersRequest: TCPaginatedRequest {
        /// 偏移量
        public let offset: UInt64?

        /// 限制数目
        public let limit: UInt64?

        public init(offset: UInt64? = nil, limit: UInt64? = nil) {
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case offset = "Offset"
            case limit = "Limit"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: ListOrganizationMembersResponse) -> ListOrganizationMembersRequest? {
            guard case let items = response.getItems(), !items.isEmpty, let totalCount = response.getTotalCount(), (self.offset ?? 0) + .init(items.count) >= totalCount else {
                return nil
            }
            return .init(offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit)
        }
    }

    /// ListOrganizationMembers返回参数结构体
    public struct ListOrganizationMembersResponse: TCPaginatedResponse {
        /// 成员列表
        public let members: [OrgMember]

        /// 总数目
        public let totalCount: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case members = "Members"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned ``OrgMember`` list from the paginated response.
        public func getItems() -> [OrgMember] {
            self.members
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 获取企业组织成员列表
    @inlinable
    public func listOrganizationMembers(_ input: ListOrganizationMembersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListOrganizationMembersResponse> {
        self.client.execute(action: "ListOrganizationMembers", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取企业组织成员列表
    @inlinable
    public func listOrganizationMembers(_ input: ListOrganizationMembersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListOrganizationMembersResponse {
        try await self.client.execute(action: "ListOrganizationMembers", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取企业组织成员列表
    @inlinable
    public func listOrganizationMembers(offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListOrganizationMembersResponse> {
        self.listOrganizationMembers(.init(offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 获取企业组织成员列表
    @inlinable
    public func listOrganizationMembers(offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListOrganizationMembersResponse {
        try await self.listOrganizationMembers(.init(offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 获取企业组织成员列表
    @inlinable
    public func listOrganizationMembersPaginated(_ input: ListOrganizationMembersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [OrgMember])> {
        self.client.paginate(input: input, region: region, command: self.listOrganizationMembers, logger: logger, on: eventLoop)
    }

    /// 获取企业组织成员列表
    @inlinable @discardableResult
    public func listOrganizationMembersPaginated(_ input: ListOrganizationMembersRequest, region: TCRegion? = nil, onResponse: @escaping (ListOrganizationMembersResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.listOrganizationMembers, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取企业组织成员列表
    ///
    /// - Returns: `AsyncSequence`s of ``OrgMember`` and ``ListOrganizationMembersResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func listOrganizationMembersPaginator(_ input: ListOrganizationMembersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<ListOrganizationMembersRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.listOrganizationMembers, logger: logger, on: eventLoop)
    }
}
