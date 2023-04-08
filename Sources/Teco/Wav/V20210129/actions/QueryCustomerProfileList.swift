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

import TecoCore
import TecoPaginationHelpers

extension Wav {
    /// QueryCustomerProfileList请求参数结构体
    public struct QueryCustomerProfileListRequest: TCPaginatedRequest {
        /// 分页，预期请求的数据量，取值范围 1 ~ 1000
        public let limit: Int64

        /// 查询开始时间， 单位秒
        public let beginTime: UInt64

        /// 查询结束时间， 单位秒
        public let endTime: UInt64

        /// 用于分页查询的游标，字符串类型，由上一次调用返回，首次调用可不填
        public let cursor: String?

        public init(limit: Int64, beginTime: UInt64, endTime: UInt64, cursor: String? = nil) {
            self.limit = limit
            self.beginTime = beginTime
            self.endTime = endTime
            self.cursor = cursor
        }

        enum CodingKeys: String, CodingKey {
            case limit = "Limit"
            case beginTime = "BeginTime"
            case endTime = "EndTime"
            case cursor = "Cursor"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: QueryCustomerProfileListResponse) -> QueryCustomerProfileListRequest? {
            guard response.nextCursor != nil else {
                return nil
            }
            return QueryCustomerProfileListRequest(limit: self.limit, beginTime: self.beginTime, endTime: self.endTime, cursor: response.nextCursor)
        }
    }

    /// QueryCustomerProfileList返回参数结构体
    public struct QueryCustomerProfileListResponse: TCPaginatedResponse {
        /// 分页游标，下次调用带上该值，则从当前的位置继续往后拉，以实现增量拉取。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let nextCursor: String?

        /// 潜客客户存档信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let pageData: [CustomerProfile]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case nextCursor = "NextCursor"
            case pageData = "PageData"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [CustomerProfile] {
            self.pageData ?? []
        }
    }

    /// 查询潜客客户档案列表接口
    ///
    /// 通过接口拉取租户已有潜客客户档案列表信息
    @inlinable
    public func queryCustomerProfileList(_ input: QueryCustomerProfileListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<QueryCustomerProfileListResponse> {
        self.client.execute(action: "QueryCustomerProfileList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询潜客客户档案列表接口
    ///
    /// 通过接口拉取租户已有潜客客户档案列表信息
    @inlinable
    public func queryCustomerProfileList(_ input: QueryCustomerProfileListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> QueryCustomerProfileListResponse {
        try await self.client.execute(action: "QueryCustomerProfileList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询潜客客户档案列表接口
    ///
    /// 通过接口拉取租户已有潜客客户档案列表信息
    @inlinable
    public func queryCustomerProfileList(limit: Int64, beginTime: UInt64, endTime: UInt64, cursor: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<QueryCustomerProfileListResponse> {
        self.queryCustomerProfileList(.init(limit: limit, beginTime: beginTime, endTime: endTime, cursor: cursor), region: region, logger: logger, on: eventLoop)
    }

    /// 查询潜客客户档案列表接口
    ///
    /// 通过接口拉取租户已有潜客客户档案列表信息
    @inlinable
    public func queryCustomerProfileList(limit: Int64, beginTime: UInt64, endTime: UInt64, cursor: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> QueryCustomerProfileListResponse {
        try await self.queryCustomerProfileList(.init(limit: limit, beginTime: beginTime, endTime: endTime, cursor: cursor), region: region, logger: logger, on: eventLoop)
    }

    /// 查询潜客客户档案列表接口
    ///
    /// 通过接口拉取租户已有潜客客户档案列表信息
    @inlinable
    public func queryCustomerProfileListPaginated(_ input: QueryCustomerProfileListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Never?, [CustomerProfile])> {
        self.client.paginate(input: input, region: region, command: self.queryCustomerProfileList, logger: logger, on: eventLoop)
    }

    /// 查询潜客客户档案列表接口
    ///
    /// 通过接口拉取租户已有潜客客户档案列表信息
    @inlinable @discardableResult
    public func queryCustomerProfileListPaginated(_ input: QueryCustomerProfileListRequest, region: TCRegion? = nil, onResponse: @escaping (QueryCustomerProfileListResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.queryCustomerProfileList, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询潜客客户档案列表接口
    ///
    /// 通过接口拉取租户已有潜客客户档案列表信息
    ///
    /// - Returns: `AsyncSequence`s of `CustomerProfile` and `QueryCustomerProfileListResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func queryCustomerProfileListPaginator(_ input: QueryCustomerProfileListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<QueryCustomerProfileListRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.queryCustomerProfileList, logger: logger, on: eventLoop)
    }
}
