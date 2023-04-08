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
    /// ListOrganizationInvitations请求参数结构体
    public struct ListOrganizationInvitationsRequest: TCPaginatedRequest {
        /// 是否被邀请。1：被邀请，0：发出的邀请
        public let invited: UInt64

        /// 偏移量
        public let offset: UInt64?

        /// 限制数目
        public let limit: UInt64?

        public init(invited: UInt64, offset: UInt64? = nil, limit: UInt64? = nil) {
            self.invited = invited
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case invited = "Invited"
            case offset = "Offset"
            case limit = "Limit"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: ListOrganizationInvitationsResponse) -> ListOrganizationInvitationsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return ListOrganizationInvitationsRequest(invited: self.invited, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit)
        }
    }

    /// ListOrganizationInvitations返回参数结构体
    public struct ListOrganizationInvitationsResponse: TCPaginatedResponse {
        /// 邀请信息列表
        public let invitations: [OrgInvitation]

        /// 总数目
        public let totalCount: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case invitations = "Invitations"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [OrgInvitation] {
            self.invitations
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 获取邀请信息列表
    @inlinable
    public func listOrganizationInvitations(_ input: ListOrganizationInvitationsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListOrganizationInvitationsResponse> {
        self.client.execute(action: "ListOrganizationInvitations", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取邀请信息列表
    @inlinable
    public func listOrganizationInvitations(_ input: ListOrganizationInvitationsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListOrganizationInvitationsResponse {
        try await self.client.execute(action: "ListOrganizationInvitations", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取邀请信息列表
    @inlinable
    public func listOrganizationInvitations(invited: UInt64, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListOrganizationInvitationsResponse> {
        self.listOrganizationInvitations(.init(invited: invited, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 获取邀请信息列表
    @inlinable
    public func listOrganizationInvitations(invited: UInt64, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListOrganizationInvitationsResponse {
        try await self.listOrganizationInvitations(.init(invited: invited, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 获取邀请信息列表
    @inlinable
    public func listOrganizationInvitationsPaginated(_ input: ListOrganizationInvitationsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [OrgInvitation])> {
        self.client.paginate(input: input, region: region, command: self.listOrganizationInvitations, logger: logger, on: eventLoop)
    }

    /// 获取邀请信息列表
    @inlinable @discardableResult
    public func listOrganizationInvitationsPaginated(_ input: ListOrganizationInvitationsRequest, region: TCRegion? = nil, onResponse: @escaping (ListOrganizationInvitationsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.listOrganizationInvitations, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取邀请信息列表
    ///
    /// - Returns: `AsyncSequence`s of `OrgInvitation` and `ListOrganizationInvitationsResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func listOrganizationInvitationsPaginator(_ input: ListOrganizationInvitationsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<ListOrganizationInvitationsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.listOrganizationInvitations, logger: logger, on: eventLoop)
    }
}
