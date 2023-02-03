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

extension Wav {
    /// QueryClueInfoList请求参数结构体
    public struct QueryClueInfoListRequest: TCRequestModel {
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
    }

    /// QueryClueInfoList返回参数结构体
    public struct QueryClueInfoListResponse: TCResponseModel {
        /// 线索信息列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let pageData: [ClueInfoDetail]?

        /// 分页游标，下次调用带上该值，则从当前的位置继续往后拉，以实现增量拉取。
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
    }

    /// 查询线索列表接口
    ///
    /// 企业可通过此接口获取线索列表。
    @inlinable
    public func queryClueInfoList(_ input: QueryClueInfoListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<QueryClueInfoListResponse> {
        self.client.execute(action: "QueryClueInfoList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询线索列表接口
    ///
    /// 企业可通过此接口获取线索列表。
    @inlinable
    public func queryClueInfoList(_ input: QueryClueInfoListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> QueryClueInfoListResponse {
        try await self.client.execute(action: "QueryClueInfoList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询线索列表接口
    ///
    /// 企业可通过此接口获取线索列表。
    @inlinable
    public func queryClueInfoList(cursor: String? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<QueryClueInfoListResponse> {
        let input = QueryClueInfoListRequest(cursor: cursor, limit: limit)
        return self.client.execute(action: "QueryClueInfoList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询线索列表接口
    ///
    /// 企业可通过此接口获取线索列表。
    @inlinable
    public func queryClueInfoList(cursor: String? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> QueryClueInfoListResponse {
        let input = QueryClueInfoListRequest(cursor: cursor, limit: limit)
        return try await self.client.execute(action: "QueryClueInfoList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
