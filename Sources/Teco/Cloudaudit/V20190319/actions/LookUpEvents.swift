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

extension Cloudaudit {
    /// LookUpEvents请求参数结构体
    public struct LookUpEventsRequest: TCPaginatedRequest {
        /// 开始时间
        public let startTime: Int64

        /// 结束时间
        public let endTime: Int64

        /// 检索条件
        public let lookupAttributes: [LookupAttribute]?

        /// 查看更多日志的凭证
        public let nextToken: String?

        /// 返回日志的最大条数
        public let maxResults: Int64?

        /// 云审计模式，有效值：standard | quick，其中standard是标准模式，quick是极速模式。默认为标准模式
        public let mode: String?

        public init(startTime: Int64, endTime: Int64, lookupAttributes: [LookupAttribute]? = nil, nextToken: String? = nil, maxResults: Int64? = nil, mode: String? = nil) {
            self.startTime = startTime
            self.endTime = endTime
            self.lookupAttributes = lookupAttributes
            self.nextToken = nextToken
            self.maxResults = maxResults
            self.mode = mode
        }

        enum CodingKeys: String, CodingKey {
            case startTime = "StartTime"
            case endTime = "EndTime"
            case lookupAttributes = "LookupAttributes"
            case nextToken = "NextToken"
            case maxResults = "MaxResults"
            case mode = "Mode"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: LookUpEventsResponse) -> LookUpEventsRequest? {
            guard response.nextToken != nil else {
                return nil
            }
            return .init(startTime: self.startTime, endTime: self.endTime, lookupAttributes: self.lookupAttributes, nextToken: response.nextToken, maxResults: self.maxResults, mode: self.mode)
        }
    }

    /// LookUpEvents返回参数结构体
    public struct LookUpEventsResponse: TCPaginatedResponse {
        /// 查看更多日志的凭证
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let nextToken: String?

        /// 日志集合
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let events: [Event]?

        /// 日志集合是否结束
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let listOver: Bool?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case nextToken = "NextToken"
            case events = "Events"
            case listOver = "ListOver"
            case requestId = "RequestId"
        }

        /// Extract the returned ``Event`` list from the paginated response.
        public func getItems() -> [Event] {
            self.events ?? []
        }
    }

    /// 检索日志
    ///
    /// 用于对操作日志进行检索，便于用户进行查询相关的操作信息。
    @inlinable
    public func lookUpEvents(_ input: LookUpEventsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<LookUpEventsResponse> {
        self.client.execute(action: "LookUpEvents", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 检索日志
    ///
    /// 用于对操作日志进行检索，便于用户进行查询相关的操作信息。
    @inlinable
    public func lookUpEvents(_ input: LookUpEventsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> LookUpEventsResponse {
        try await self.client.execute(action: "LookUpEvents", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 检索日志
    ///
    /// 用于对操作日志进行检索，便于用户进行查询相关的操作信息。
    @inlinable
    public func lookUpEvents(startTime: Int64, endTime: Int64, lookupAttributes: [LookupAttribute]? = nil, nextToken: String? = nil, maxResults: Int64? = nil, mode: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<LookUpEventsResponse> {
        self.lookUpEvents(.init(startTime: startTime, endTime: endTime, lookupAttributes: lookupAttributes, nextToken: nextToken, maxResults: maxResults, mode: mode), region: region, logger: logger, on: eventLoop)
    }

    /// 检索日志
    ///
    /// 用于对操作日志进行检索，便于用户进行查询相关的操作信息。
    @inlinable
    public func lookUpEvents(startTime: Int64, endTime: Int64, lookupAttributes: [LookupAttribute]? = nil, nextToken: String? = nil, maxResults: Int64? = nil, mode: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> LookUpEventsResponse {
        try await self.lookUpEvents(.init(startTime: startTime, endTime: endTime, lookupAttributes: lookupAttributes, nextToken: nextToken, maxResults: maxResults, mode: mode), region: region, logger: logger, on: eventLoop)
    }

    /// 检索日志
    ///
    /// 用于对操作日志进行检索，便于用户进行查询相关的操作信息。
    @inlinable
    public func lookUpEventsPaginated(_ input: LookUpEventsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Never?, [Event])> {
        self.client.paginate(input: input, region: region, command: self.lookUpEvents, logger: logger, on: eventLoop)
    }

    /// 检索日志
    ///
    /// 用于对操作日志进行检索，便于用户进行查询相关的操作信息。
    @inlinable @discardableResult
    public func lookUpEventsPaginated(_ input: LookUpEventsRequest, region: TCRegion? = nil, onResponse: @escaping (LookUpEventsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.lookUpEvents, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 检索日志
    ///
    /// 用于对操作日志进行检索，便于用户进行查询相关的操作信息。
    ///
    /// - Returns: `AsyncSequence`s of ``Event`` and ``LookUpEventsResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func lookUpEventsPaginator(_ input: LookUpEventsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<LookUpEventsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.lookUpEvents, logger: logger, on: eventLoop)
    }
}
