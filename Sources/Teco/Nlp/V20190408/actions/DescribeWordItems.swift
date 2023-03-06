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

extension Nlp {
    /// DescribeWordItems请求参数结构体
    public struct DescribeWordItemsRequest: TCPaginatedRequest {
        /// 自定义词库ID。
        public let dictId: String

        /// 分页偏移量，从0开始，默认为0。
        public let offset: UInt64?

        /// 每页数据量，范围为1~100，默认为10。
        public let limit: UInt64?

        /// 待检索的词条文本，支持模糊匹配。
        public let text: String?

        public init(dictId: String, offset: UInt64? = nil, limit: UInt64? = nil, text: String? = nil) {
            self.dictId = dictId
            self.offset = offset
            self.limit = limit
            self.text = text
        }

        enum CodingKeys: String, CodingKey {
            case dictId = "DictId"
            case offset = "Offset"
            case limit = "Limit"
            case text = "Text"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribeWordItemsResponse) -> DescribeWordItemsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeWordItemsRequest(dictId: self.dictId, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, text: self.text)
        }
    }

    /// DescribeWordItems返回参数结构体
    public struct DescribeWordItemsResponse: TCPaginatedResponse {
        /// 词条记录总条数。
        public let totalCount: UInt64

        /// 词条信息列表。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let wordItems: [WordItem]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case wordItems = "WordItems"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [WordItem] {
            self.wordItems ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 查询指定词库的词条信息
    ///
    /// 依据自定义词库的ID，查询对应的词条信息。
    @inlinable
    public func describeWordItems(_ input: DescribeWordItemsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeWordItemsResponse> {
        self.client.execute(action: "DescribeWordItems", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询指定词库的词条信息
    ///
    /// 依据自定义词库的ID，查询对应的词条信息。
    @inlinable
    public func describeWordItems(_ input: DescribeWordItemsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeWordItemsResponse {
        try await self.client.execute(action: "DescribeWordItems", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询指定词库的词条信息
    ///
    /// 依据自定义词库的ID，查询对应的词条信息。
    @inlinable
    public func describeWordItems(dictId: String, offset: UInt64? = nil, limit: UInt64? = nil, text: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeWordItemsResponse> {
        let input = DescribeWordItemsRequest(dictId: dictId, offset: offset, limit: limit, text: text)
        return self.client.execute(action: "DescribeWordItems", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询指定词库的词条信息
    ///
    /// 依据自定义词库的ID，查询对应的词条信息。
    @inlinable
    public func describeWordItems(dictId: String, offset: UInt64? = nil, limit: UInt64? = nil, text: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeWordItemsResponse {
        let input = DescribeWordItemsRequest(dictId: dictId, offset: offset, limit: limit, text: text)
        return try await self.client.execute(action: "DescribeWordItems", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
