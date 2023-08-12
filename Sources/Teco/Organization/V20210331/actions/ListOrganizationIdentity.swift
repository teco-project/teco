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

extension Organization {
    /// ListOrganizationIdentity请求参数结构体
    public struct ListOrganizationIdentityRequest: TCPaginatedRequest {
        /// 偏移量。取值是limit的整数倍。默认值 : 0。
        public let offset: UInt64

        /// 限制数目。取值范围：1~50。默认值：10。
        public let limit: UInt64

        /// 名称搜索关键字。
        public let searchKey: String?

        /// 身份ID搜索。
        public let identityId: UInt64?

        /// 身份类型。取值范围 1-预设, 2-自定义
        public let identityType: UInt64?

        public init(offset: UInt64, limit: UInt64, searchKey: String? = nil, identityId: UInt64? = nil, identityType: UInt64? = nil) {
            self.offset = offset
            self.limit = limit
            self.searchKey = searchKey
            self.identityId = identityId
            self.identityType = identityType
        }

        enum CodingKeys: String, CodingKey {
            case offset = "Offset"
            case limit = "Limit"
            case searchKey = "SearchKey"
            case identityId = "IdentityId"
            case identityType = "IdentityType"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: ListOrganizationIdentityResponse) -> ListOrganizationIdentityRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return ListOrganizationIdentityRequest(offset: self.offset + .init(response.getItems().count), limit: self.limit, searchKey: self.searchKey, identityId: self.identityId, identityType: self.identityType)
        }
    }

    /// ListOrganizationIdentity返回参数结构体
    public struct ListOrganizationIdentityResponse: TCPaginatedResponse {
        /// 总数。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let total: Int64?

        /// 条目详情。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let items: [OrgIdentity]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case total = "Total"
            case items = "Items"
            case requestId = "RequestId"
        }

        /// Extract the returned ``OrgIdentity`` list from the paginated response.
        public func getItems() -> [OrgIdentity] {
            self.items ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.total
        }
    }

    /// 获取组织成员访问身份列表
    @inlinable
    public func listOrganizationIdentity(_ input: ListOrganizationIdentityRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListOrganizationIdentityResponse> {
        self.client.execute(action: "ListOrganizationIdentity", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取组织成员访问身份列表
    @inlinable
    public func listOrganizationIdentity(_ input: ListOrganizationIdentityRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListOrganizationIdentityResponse {
        try await self.client.execute(action: "ListOrganizationIdentity", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取组织成员访问身份列表
    @inlinable
    public func listOrganizationIdentity(offset: UInt64, limit: UInt64, searchKey: String? = nil, identityId: UInt64? = nil, identityType: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListOrganizationIdentityResponse> {
        self.listOrganizationIdentity(.init(offset: offset, limit: limit, searchKey: searchKey, identityId: identityId, identityType: identityType), region: region, logger: logger, on: eventLoop)
    }

    /// 获取组织成员访问身份列表
    @inlinable
    public func listOrganizationIdentity(offset: UInt64, limit: UInt64, searchKey: String? = nil, identityId: UInt64? = nil, identityType: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListOrganizationIdentityResponse {
        try await self.listOrganizationIdentity(.init(offset: offset, limit: limit, searchKey: searchKey, identityId: identityId, identityType: identityType), region: region, logger: logger, on: eventLoop)
    }

    /// 获取组织成员访问身份列表
    @inlinable
    public func listOrganizationIdentityPaginated(_ input: ListOrganizationIdentityRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [OrgIdentity])> {
        self.client.paginate(input: input, region: region, command: self.listOrganizationIdentity, logger: logger, on: eventLoop)
    }

    /// 获取组织成员访问身份列表
    @inlinable @discardableResult
    public func listOrganizationIdentityPaginated(_ input: ListOrganizationIdentityRequest, region: TCRegion? = nil, onResponse: @escaping (ListOrganizationIdentityResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.listOrganizationIdentity, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取组织成员访问身份列表
    ///
    /// - Returns: `AsyncSequence`s of ``OrgIdentity`` and ``ListOrganizationIdentityResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func listOrganizationIdentityPaginator(_ input: ListOrganizationIdentityRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<ListOrganizationIdentityRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.listOrganizationIdentity, logger: logger, on: eventLoop)
    }
}
