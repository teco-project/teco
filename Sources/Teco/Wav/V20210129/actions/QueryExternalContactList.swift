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

extension Wav {
    /// QueryExternalContactList请求参数结构体
    public struct QueryExternalContactListRequest: TCPaginatedRequest {
        /// 用于分页查询的游标，字符串类型，由上一次调用返回，首次调用可不填
        public let cursor: String?

        /// 返回的最大记录数，整型，最大值100，默认值50，超过最大值时取最大值
        public let limit: Int64?

        public init(cursor: String? = nil, limit: Int64? = nil) {
            self.cursor = cursor
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case cursor = "Cursor"
            case limit = "Limit"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: QueryExternalContactListResponse) -> QueryExternalContactListRequest? {
            guard response.nextCursor != nil else {
                return nil
            }
            return QueryExternalContactListRequest(cursor: response.nextCursor, limit: self.limit)
        }
    }

    /// QueryExternalContactList返回参数结构体
    public struct QueryExternalContactListResponse: TCPaginatedResponse {
        /// 外部联系人信息列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let pageData: [ExternalContactSimpleInfo]?

        /// 分页游标，再下次请求时填写以获取之后分页的记录，如果已经没有更多的数据则返回空
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let nextCursor: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case pageData = "PageData"
            case nextCursor = "NextCursor"
            case requestId = "RequestId"
        }

        /// Extract the returned ``ExternalContactSimpleInfo`` list from the paginated response.
        public func getItems() -> [ExternalContactSimpleInfo] {
            self.pageData ?? []
        }
    }

    /// 查询外部联系人列表接口
    ///
    /// 企业可通过此接口基于外部联系人获取指定成员添加的客户列表。客户是指配置了客户联系功能的成员所添加的外部联系人。没有配置客户联系功能的成员，所添加的外部联系人将不会作为客户返回。
    @inlinable
    public func queryExternalContactList(_ input: QueryExternalContactListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<QueryExternalContactListResponse> {
        self.client.execute(action: "QueryExternalContactList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询外部联系人列表接口
    ///
    /// 企业可通过此接口基于外部联系人获取指定成员添加的客户列表。客户是指配置了客户联系功能的成员所添加的外部联系人。没有配置客户联系功能的成员，所添加的外部联系人将不会作为客户返回。
    @inlinable
    public func queryExternalContactList(_ input: QueryExternalContactListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> QueryExternalContactListResponse {
        try await self.client.execute(action: "QueryExternalContactList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询外部联系人列表接口
    ///
    /// 企业可通过此接口基于外部联系人获取指定成员添加的客户列表。客户是指配置了客户联系功能的成员所添加的外部联系人。没有配置客户联系功能的成员，所添加的外部联系人将不会作为客户返回。
    @inlinable
    public func queryExternalContactList(cursor: String? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<QueryExternalContactListResponse> {
        self.queryExternalContactList(.init(cursor: cursor, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查询外部联系人列表接口
    ///
    /// 企业可通过此接口基于外部联系人获取指定成员添加的客户列表。客户是指配置了客户联系功能的成员所添加的外部联系人。没有配置客户联系功能的成员，所添加的外部联系人将不会作为客户返回。
    @inlinable
    public func queryExternalContactList(cursor: String? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> QueryExternalContactListResponse {
        try await self.queryExternalContactList(.init(cursor: cursor, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查询外部联系人列表接口
    ///
    /// 企业可通过此接口基于外部联系人获取指定成员添加的客户列表。客户是指配置了客户联系功能的成员所添加的外部联系人。没有配置客户联系功能的成员，所添加的外部联系人将不会作为客户返回。
    @inlinable
    public func queryExternalContactListPaginated(_ input: QueryExternalContactListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Never?, [ExternalContactSimpleInfo])> {
        self.client.paginate(input: input, region: region, command: self.queryExternalContactList, logger: logger, on: eventLoop)
    }

    /// 查询外部联系人列表接口
    ///
    /// 企业可通过此接口基于外部联系人获取指定成员添加的客户列表。客户是指配置了客户联系功能的成员所添加的外部联系人。没有配置客户联系功能的成员，所添加的外部联系人将不会作为客户返回。
    @inlinable @discardableResult
    public func queryExternalContactListPaginated(_ input: QueryExternalContactListRequest, region: TCRegion? = nil, onResponse: @escaping (QueryExternalContactListResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.queryExternalContactList, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询外部联系人列表接口
    ///
    /// 企业可通过此接口基于外部联系人获取指定成员添加的客户列表。客户是指配置了客户联系功能的成员所添加的外部联系人。没有配置客户联系功能的成员，所添加的外部联系人将不会作为客户返回。
    ///
    /// - Returns: `AsyncSequence`s of `ExternalContactSimpleInfo` and `QueryExternalContactListResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func queryExternalContactListPaginator(_ input: QueryExternalContactListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<QueryExternalContactListRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.queryExternalContactList, logger: logger, on: eventLoop)
    }
}
