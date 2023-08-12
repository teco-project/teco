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
    /// QueryExternalContactDetail请求参数结构体
    public struct QueryExternalContactDetailRequest: TCPaginatedRequest {
        /// 外部联系人的userid，注意不是企业成员的帐号
        public let externalUserId: String

        /// 用于分页查询的游标，字符串类型，由上一次调用返回，首次调用可不填。当客户在企业内的跟进人超过500人时需要使用cursor参数进行分页获取
        public let cursor: String?

        /// 当前接口Limit不需要传参， 保留Limit只是为了保持向后兼容性， Limit默认值为500，当返回结果超过500时， NextCursor才有返回值
        public let limit: UInt64?

        public init(externalUserId: String, cursor: String? = nil, limit: UInt64? = nil) {
            self.externalUserId = externalUserId
            self.cursor = cursor
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case externalUserId = "ExternalUserId"
            case cursor = "Cursor"
            case limit = "Limit"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: QueryExternalContactDetailResponse) -> QueryExternalContactDetailRequest? {
            guard response.nextCursor != nil else {
                return nil
            }
            return QueryExternalContactDetailRequest(externalUserId: self.externalUserId, cursor: response.nextCursor, limit: self.limit)
        }
    }

    /// QueryExternalContactDetail返回参数结构体
    public struct QueryExternalContactDetailResponse: TCPaginatedResponse {
        /// 分页游标，再下次请求时填写以获取之后分页的记录，如果已经没有更多的数据则返回空
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let nextCursor: String?

        /// 客户信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let customer: ExternalContact?

        /// 添加了此外部联系人的企业成员信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let followUser: [FollowUser]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case nextCursor = "NextCursor"
            case customer = "Customer"
            case followUser = "FollowUser"
            case requestId = "RequestId"
        }

        /// Extract the returned ``FollowUser`` list from the paginated response.
        public func getItems() -> [FollowUser] {
            self.followUser ?? []
        }
    }

    /// 查询外部联系人详情接口
    ///
    /// 企业可通过此接口，根据外部联系人的userid，拉取外部联系人详情
    @inlinable
    public func queryExternalContactDetail(_ input: QueryExternalContactDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<QueryExternalContactDetailResponse> {
        self.client.execute(action: "QueryExternalContactDetail", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询外部联系人详情接口
    ///
    /// 企业可通过此接口，根据外部联系人的userid，拉取外部联系人详情
    @inlinable
    public func queryExternalContactDetail(_ input: QueryExternalContactDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> QueryExternalContactDetailResponse {
        try await self.client.execute(action: "QueryExternalContactDetail", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询外部联系人详情接口
    ///
    /// 企业可通过此接口，根据外部联系人的userid，拉取外部联系人详情
    @inlinable
    public func queryExternalContactDetail(externalUserId: String, cursor: String? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<QueryExternalContactDetailResponse> {
        self.queryExternalContactDetail(.init(externalUserId: externalUserId, cursor: cursor, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查询外部联系人详情接口
    ///
    /// 企业可通过此接口，根据外部联系人的userid，拉取外部联系人详情
    @inlinable
    public func queryExternalContactDetail(externalUserId: String, cursor: String? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> QueryExternalContactDetailResponse {
        try await self.queryExternalContactDetail(.init(externalUserId: externalUserId, cursor: cursor, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查询外部联系人详情接口
    ///
    /// 企业可通过此接口，根据外部联系人的userid，拉取外部联系人详情
    @inlinable
    public func queryExternalContactDetailPaginated(_ input: QueryExternalContactDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Never?, [FollowUser])> {
        self.client.paginate(input: input, region: region, command: self.queryExternalContactDetail, logger: logger, on: eventLoop)
    }

    /// 查询外部联系人详情接口
    ///
    /// 企业可通过此接口，根据外部联系人的userid，拉取外部联系人详情
    @inlinable @discardableResult
    public func queryExternalContactDetailPaginated(_ input: QueryExternalContactDetailRequest, region: TCRegion? = nil, onResponse: @escaping (QueryExternalContactDetailResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.queryExternalContactDetail, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询外部联系人详情接口
    ///
    /// 企业可通过此接口，根据外部联系人的userid，拉取外部联系人详情
    ///
    /// - Returns: `AsyncSequence`s of `FollowUser` and `QueryExternalContactDetailResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func queryExternalContactDetailPaginator(_ input: QueryExternalContactDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<QueryExternalContactDetailRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.queryExternalContactDetail, logger: logger, on: eventLoop)
    }
}
