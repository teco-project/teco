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

extension Asr {
    /// GetAsrVocabList请求参数结构体
    public struct GetAsrVocabListRequest: TCPaginatedRequest {
        /// 标签信息，格式为“$TagKey : $TagValue ”，中间分隔符为“空格”+“:”+“空格”
        public let tagInfos: [String]?

        /// 分页Offset
        public let offset: UInt64?

        /// 分页Limit
        public let limit: UInt64?

        public init(tagInfos: [String]? = nil, offset: UInt64? = nil, limit: UInt64? = nil) {
            self.tagInfos = tagInfos
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case tagInfos = "TagInfos"
            case offset = "Offset"
            case limit = "Limit"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: GetAsrVocabListResponse) -> GetAsrVocabListRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return GetAsrVocabListRequest(tagInfos: self.tagInfos, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit)
        }
    }

    /// GetAsrVocabList返回参数结构体
    public struct GetAsrVocabListResponse: TCPaginatedResponse {
        /// 热词表列表
        public let vocabList: [Vocab]

        /// 热词列表总数
        public let totalCount: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case vocabList = "VocabList"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [Vocab] {
            self.vocabList
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 列举热词表
    ///
    /// 用户通过该接口，可获得所有的热词表及其信息。
    @inlinable
    public func getAsrVocabList(_ input: GetAsrVocabListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetAsrVocabListResponse> {
        self.client.execute(action: "GetAsrVocabList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 列举热词表
    ///
    /// 用户通过该接口，可获得所有的热词表及其信息。
    @inlinable
    public func getAsrVocabList(_ input: GetAsrVocabListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetAsrVocabListResponse {
        try await self.client.execute(action: "GetAsrVocabList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 列举热词表
    ///
    /// 用户通过该接口，可获得所有的热词表及其信息。
    @inlinable
    public func getAsrVocabList(tagInfos: [String]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetAsrVocabListResponse> {
        let input = GetAsrVocabListRequest(tagInfos: tagInfos, offset: offset, limit: limit)
        return self.client.execute(action: "GetAsrVocabList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 列举热词表
    ///
    /// 用户通过该接口，可获得所有的热词表及其信息。
    @inlinable
    public func getAsrVocabList(tagInfos: [String]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetAsrVocabListResponse {
        let input = GetAsrVocabListRequest(tagInfos: tagInfos, offset: offset, limit: limit)
        return try await self.client.execute(action: "GetAsrVocabList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 列举热词表
    ///
    /// 用户通过该接口，可获得所有的热词表及其信息。
    @inlinable
    public func getAsrVocabListPaginated(_ input: GetAsrVocabListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [Vocab])> {
        self.client.paginate(input: input, region: region, command: self.getAsrVocabList, logger: logger, on: eventLoop)
    }

    /// 列举热词表
    ///
    /// 用户通过该接口，可获得所有的热词表及其信息。
    @inlinable
    public func getAsrVocabListPaginated(_ input: GetAsrVocabListRequest, region: TCRegion? = nil, onResponse: @escaping (GetAsrVocabListResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.getAsrVocabList, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 列举热词表
    ///
    /// 用户通过该接口，可获得所有的热词表及其信息。
    @inlinable
    public func getAsrVocabListPaginator(_ input: GetAsrVocabListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> (results: TCClient.Paginator<GetAsrVocabListRequest, GetAsrVocabListResponse>.ResultSequence, responses: TCClient.Paginator<GetAsrVocabListRequest, GetAsrVocabListResponse>.ResponseSequence) {
        let results = TCClient.Paginator<GetAsrVocabListRequest, GetAsrVocabListResponse>.ResultSequence(input: input, region: region, command: self.getAsrVocabList, logger: logger, on: eventLoop)
        let responses = TCClient.Paginator<GetAsrVocabListRequest, GetAsrVocabListResponse>.ResponseSequence(input: input, region: region, command: self.getAsrVocabList, logger: logger, on: eventLoop)
        return (results, responses)
    }
}
