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

extension Tsf {
    /// DescribeLanes请求参数结构体
    public struct DescribeLanesRequest: TCPaginatedRequest {
        /// 每页展示的条数
        public let limit: Int64?

        /// 翻页偏移量
        public let offset: Int64?

        /// 搜索关键字
        public let searchWord: String?

        /// 无
        public let laneIdList: [String]?

        /// 无
        public let disableProgramAuthCheck: Bool?

        public init(limit: Int64? = nil, offset: Int64? = nil, searchWord: String? = nil, laneIdList: [String]? = nil, disableProgramAuthCheck: Bool? = nil) {
            self.limit = limit
            self.offset = offset
            self.searchWord = searchWord
            self.laneIdList = laneIdList
            self.disableProgramAuthCheck = disableProgramAuthCheck
        }

        enum CodingKeys: String, CodingKey {
            case limit = "Limit"
            case offset = "Offset"
            case searchWord = "SearchWord"
            case laneIdList = "LaneIdList"
            case disableProgramAuthCheck = "DisableProgramAuthCheck"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribeLanesResponse) -> DescribeLanesRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeLanesRequest(limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count), searchWord: self.searchWord, laneIdList: self.laneIdList, disableProgramAuthCheck: self.disableProgramAuthCheck)
        }
    }

    /// DescribeLanes返回参数结构体
    public struct DescribeLanesResponse: TCPaginatedResponse {
        /// 泳道列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: LaneInfos?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [LaneInfo] {
            self.result?.content ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.result?.totalCount
        }
    }

    /// 查询泳道列表
    @inlinable
    public func describeLanes(_ input: DescribeLanesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeLanesResponse> {
        self.client.execute(action: "DescribeLanes", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询泳道列表
    @inlinable
    public func describeLanes(_ input: DescribeLanesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLanesResponse {
        try await self.client.execute(action: "DescribeLanes", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询泳道列表
    @inlinable
    public func describeLanes(limit: Int64? = nil, offset: Int64? = nil, searchWord: String? = nil, laneIdList: [String]? = nil, disableProgramAuthCheck: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeLanesResponse> {
        let input = DescribeLanesRequest(limit: limit, offset: offset, searchWord: searchWord, laneIdList: laneIdList, disableProgramAuthCheck: disableProgramAuthCheck)
        return self.client.execute(action: "DescribeLanes", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询泳道列表
    @inlinable
    public func describeLanes(limit: Int64? = nil, offset: Int64? = nil, searchWord: String? = nil, laneIdList: [String]? = nil, disableProgramAuthCheck: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLanesResponse {
        let input = DescribeLanesRequest(limit: limit, offset: offset, searchWord: searchWord, laneIdList: laneIdList, disableProgramAuthCheck: disableProgramAuthCheck)
        return try await self.client.execute(action: "DescribeLanes", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询泳道列表
    @inlinable
    public func describeLanesPaginated(_ input: DescribeLanesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [LaneInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeLanes, logger: logger, on: eventLoop)
    }

    /// 查询泳道列表
    @inlinable
    public func describeLanesPaginated(_ input: DescribeLanesRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeLanesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeLanes, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询泳道列表
    @inlinable
    public func describeLanesPaginator(_ input: DescribeLanesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> (results: TCClient.Paginator<DescribeLanesRequest, DescribeLanesResponse>.ResultSequence, responses: TCClient.Paginator<DescribeLanesRequest, DescribeLanesResponse>.ResponseSequence) {
        let results = TCClient.Paginator<DescribeLanesRequest, DescribeLanesResponse>.ResultSequence(input: input, region: region, command: self.describeLanes, logger: logger, on: eventLoop)
        let responses = TCClient.Paginator<DescribeLanesRequest, DescribeLanesResponse>.ResponseSequence(input: input, region: region, command: self.describeLanes, logger: logger, on: eventLoop)
        return (results, responses)
    }
}
