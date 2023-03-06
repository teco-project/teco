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

extension Wav {
    /// QueryVehicleInfoList请求参数结构体
    public struct QueryVehicleInfoListRequest: TCPaginatedRequest {
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
        public func getNextPaginatedRequest(with response: QueryVehicleInfoListResponse) -> QueryVehicleInfoListRequest? {
            guard response.hasMore == 1 else {
                return nil
            }
            return QueryVehicleInfoListRequest(cursor: response.nextCursor, limit: self.limit)
        }
    }

    /// QueryVehicleInfoList返回参数结构体
    public struct QueryVehicleInfoListResponse: TCPaginatedResponse {
        /// 车系车型信息列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let pageData: [VehicleInfo]?

        /// 分页游标，下次调用带上该值，则从当前的位置继续往后拉取新增的数据，以实现增量拉取。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let nextCursor: String?

        /// 是否还有更多数据。0-否；1-是。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let hasMore: UInt64?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case pageData = "PageData"
            case nextCursor = "NextCursor"
            case hasMore = "HasMore"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [VehicleInfo] {
            self.pageData ?? []
        }
    }

    /// 查询车系车型信息列表接口
    ///
    /// 企业可通过此接口获取企微SaaS平台上的车系车型信息。
    @inlinable
    public func queryVehicleInfoList(_ input: QueryVehicleInfoListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<QueryVehicleInfoListResponse> {
        self.client.execute(action: "QueryVehicleInfoList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询车系车型信息列表接口
    ///
    /// 企业可通过此接口获取企微SaaS平台上的车系车型信息。
    @inlinable
    public func queryVehicleInfoList(_ input: QueryVehicleInfoListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> QueryVehicleInfoListResponse {
        try await self.client.execute(action: "QueryVehicleInfoList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询车系车型信息列表接口
    ///
    /// 企业可通过此接口获取企微SaaS平台上的车系车型信息。
    @inlinable
    public func queryVehicleInfoList(cursor: String? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<QueryVehicleInfoListResponse> {
        let input = QueryVehicleInfoListRequest(cursor: cursor, limit: limit)
        return self.client.execute(action: "QueryVehicleInfoList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询车系车型信息列表接口
    ///
    /// 企业可通过此接口获取企微SaaS平台上的车系车型信息。
    @inlinable
    public func queryVehicleInfoList(cursor: String? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> QueryVehicleInfoListResponse {
        let input = QueryVehicleInfoListRequest(cursor: cursor, limit: limit)
        return try await self.client.execute(action: "QueryVehicleInfoList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询车系车型信息列表接口
    ///
    /// 企业可通过此接口获取企微SaaS平台上的车系车型信息。
    @inlinable
    public func queryVehicleInfoListPaginated(_ input: QueryVehicleInfoListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Never?, [VehicleInfo])> {
        self.client.paginate(input: input, region: region, command: self.queryVehicleInfoList, logger: logger, on: eventLoop)
    }

    /// 查询车系车型信息列表接口
    ///
    /// 企业可通过此接口获取企微SaaS平台上的车系车型信息。
    @inlinable @discardableResult
    public func queryVehicleInfoListPaginated(_ input: QueryVehicleInfoListRequest, region: TCRegion? = nil, onResponse: @escaping (QueryVehicleInfoListResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.queryVehicleInfoList, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询车系车型信息列表接口
    ///
    /// 企业可通过此接口获取企微SaaS平台上的车系车型信息。
    ///
    /// - Returns: `AsyncSequence`s of `VehicleInfo` and `QueryVehicleInfoListResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func queryVehicleInfoListPaginator(_ input: QueryVehicleInfoListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<QueryVehicleInfoListRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.queryVehicleInfoList, logger: logger, on: eventLoop)
    }
}
