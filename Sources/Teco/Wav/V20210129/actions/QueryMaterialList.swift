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
    /// QueryMaterialList请求参数结构体
    public struct QueryMaterialListRequest: TCPaginatedRequest {
        /// 素材类型：0-图片，1-视频，3-文章，10-车型，11-名片
        public let materialType: Int64

        /// 用于分页查询的游标，字符串类型，由上一次调用返回，首次调用可不填
        public let cursor: String?

        /// 返回的最大记录数，整型，最大值100，默认值50，超过最大值时取最大值
        public let limit: Int64?

        public init(materialType: Int64, cursor: String? = nil, limit: Int64? = nil) {
            self.materialType = materialType
            self.cursor = cursor
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case materialType = "MaterialType"
            case cursor = "Cursor"
            case limit = "Limit"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: QueryMaterialListResponse) -> QueryMaterialListRequest? {
            guard response.nextCursor != nil else {
                return nil
            }
            return QueryMaterialListRequest(materialType: self.materialType, cursor: response.nextCursor, limit: self.limit)
        }
    }

    /// QueryMaterialList返回参数结构体
    public struct QueryMaterialListResponse: TCPaginatedResponse {
        /// 分页游标，再下次请求时填写以获取之后分页的记录，如果已经没有更多的数据则返回空
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let nextCursor: String?

        /// 企业素材列表响应数据
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let pageData: [MaterialInfo]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case nextCursor = "NextCursor"
            case pageData = "PageData"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [MaterialInfo] {
            self.pageData ?? []
        }
    }

    /// 获取企业素材列表接口
    ///
    /// 通过接口按类型拉取租户当前的素材列表及关键信息
    @inlinable
    public func queryMaterialList(_ input: QueryMaterialListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<QueryMaterialListResponse> {
        self.client.execute(action: "QueryMaterialList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取企业素材列表接口
    ///
    /// 通过接口按类型拉取租户当前的素材列表及关键信息
    @inlinable
    public func queryMaterialList(_ input: QueryMaterialListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> QueryMaterialListResponse {
        try await self.client.execute(action: "QueryMaterialList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取企业素材列表接口
    ///
    /// 通过接口按类型拉取租户当前的素材列表及关键信息
    @inlinable
    public func queryMaterialList(materialType: Int64, cursor: String? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<QueryMaterialListResponse> {
        let input = QueryMaterialListRequest(materialType: materialType, cursor: cursor, limit: limit)
        return self.client.execute(action: "QueryMaterialList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取企业素材列表接口
    ///
    /// 通过接口按类型拉取租户当前的素材列表及关键信息
    @inlinable
    public func queryMaterialList(materialType: Int64, cursor: String? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> QueryMaterialListResponse {
        let input = QueryMaterialListRequest(materialType: materialType, cursor: cursor, limit: limit)
        return try await self.client.execute(action: "QueryMaterialList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
