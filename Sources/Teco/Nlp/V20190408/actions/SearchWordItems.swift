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

extension Nlp {
    /// SearchWordItems请求参数结构体
    public struct SearchWordItemsRequest: TCRequestModel {
        /// 自定义词库ID。
        public let dictId: String

        /// 待检索的词条集合。
        public let wordItems: [WordItem]

        public init(dictId: String, wordItems: [WordItem]) {
            self.dictId = dictId
            self.wordItems = wordItems
        }

        enum CodingKeys: String, CodingKey {
            case dictId = "DictId"
            case wordItems = "WordItems"
        }
    }

    /// SearchWordItems返回参数结构体
    public struct SearchWordItemsResponse: TCResponseModel {
        /// 词条检索结果集合。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let results: [SearchResult]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case results = "Results"
            case requestId = "RequestId"
        }
    }

    /// 检索词条
    ///
    /// 查询指定自定义词库中的词条是否存在。
    @inlinable
    public func searchWordItems(_ input: SearchWordItemsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SearchWordItemsResponse> {
        self.client.execute(action: "SearchWordItems", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 检索词条
    ///
    /// 查询指定自定义词库中的词条是否存在。
    @inlinable
    public func searchWordItems(_ input: SearchWordItemsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SearchWordItemsResponse {
        try await self.client.execute(action: "SearchWordItems", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 检索词条
    ///
    /// 查询指定自定义词库中的词条是否存在。
    @inlinable
    public func searchWordItems(dictId: String, wordItems: [WordItem], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SearchWordItemsResponse> {
        let input = SearchWordItemsRequest(dictId: dictId, wordItems: wordItems)
        return self.client.execute(action: "SearchWordItems", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 检索词条
    ///
    /// 查询指定自定义词库中的词条是否存在。
    @inlinable
    public func searchWordItems(dictId: String, wordItems: [WordItem], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SearchWordItemsResponse {
        let input = SearchWordItemsRequest(dictId: dictId, wordItems: wordItems)
        return try await self.client.execute(action: "SearchWordItems", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
