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

import struct Foundation.Date
import Logging
import NIOCore
import TecoCore
import TecoDateHelpers
import TecoPaginationHelpers

extension Dasb {
    /// SearchSessionCommand请求参数结构体
    public struct SearchSessionCommandRequest: TCPaginatedRequest {
        /// 检索的目标命令，为模糊搜索
        public let cmd: String

        /// 开始时间，不得早于当前时间的180天前
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampISO8601Encoding public var startTime: Date

        /// 分页偏移位置，默认值为0
        public let offset: UInt64?

        /// 默认值为20，最大200
        public let limit: UInt64?

        /// Cmd字段前端是否做base64加密
        /// 0：否，1：是
        public let encoding: UInt64?

        /// 结束时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampISO8601Encoding public var endTime: Date?

        public init(cmd: String, startTime: Date, offset: UInt64? = nil, limit: UInt64? = nil, encoding: UInt64? = nil, endTime: Date? = nil) {
            self.cmd = cmd
            self._startTime = .init(wrappedValue: startTime)
            self.offset = offset
            self.limit = limit
            self.encoding = encoding
            self._endTime = .init(wrappedValue: endTime)
        }

        enum CodingKeys: String, CodingKey {
            case cmd = "Cmd"
            case startTime = "StartTime"
            case offset = "Offset"
            case limit = "Limit"
            case encoding = "Encoding"
            case endTime = "EndTime"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: SearchSessionCommandResponse) -> SearchSessionCommandRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return SearchSessionCommandRequest(cmd: self.cmd, startTime: self.startTime, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, encoding: self.encoding, endTime: self.endTime)
        }
    }

    /// SearchSessionCommand返回参数结构体
    public struct SearchSessionCommandResponse: TCPaginatedResponse {
        /// 记录总数
        public let totalCount: UInt64

        /// 命令和所属会话
        public let commandSessionSet: [SessionCommand]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case commandSessionSet = "CommandSessionSet"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [SessionCommand] {
            self.commandSessionSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 命令检索
    @inlinable
    public func searchSessionCommand(_ input: SearchSessionCommandRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SearchSessionCommandResponse> {
        self.client.execute(action: "SearchSessionCommand", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 命令检索
    @inlinable
    public func searchSessionCommand(_ input: SearchSessionCommandRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SearchSessionCommandResponse {
        try await self.client.execute(action: "SearchSessionCommand", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 命令检索
    @inlinable
    public func searchSessionCommand(cmd: String, startTime: Date, offset: UInt64? = nil, limit: UInt64? = nil, encoding: UInt64? = nil, endTime: Date? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SearchSessionCommandResponse> {
        self.searchSessionCommand(.init(cmd: cmd, startTime: startTime, offset: offset, limit: limit, encoding: encoding, endTime: endTime), region: region, logger: logger, on: eventLoop)
    }

    /// 命令检索
    @inlinable
    public func searchSessionCommand(cmd: String, startTime: Date, offset: UInt64? = nil, limit: UInt64? = nil, encoding: UInt64? = nil, endTime: Date? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SearchSessionCommandResponse {
        try await self.searchSessionCommand(.init(cmd: cmd, startTime: startTime, offset: offset, limit: limit, encoding: encoding, endTime: endTime), region: region, logger: logger, on: eventLoop)
    }

    /// 命令检索
    @inlinable
    public func searchSessionCommandPaginated(_ input: SearchSessionCommandRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [SessionCommand])> {
        self.client.paginate(input: input, region: region, command: self.searchSessionCommand, logger: logger, on: eventLoop)
    }

    /// 命令检索
    @inlinable @discardableResult
    public func searchSessionCommandPaginated(_ input: SearchSessionCommandRequest, region: TCRegion? = nil, onResponse: @escaping (SearchSessionCommandResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.searchSessionCommand, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 命令检索
    ///
    /// - Returns: `AsyncSequence`s of `SessionCommand` and `SearchSessionCommandResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func searchSessionCommandPaginator(_ input: SearchSessionCommandRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<SearchSessionCommandRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.searchSessionCommand, logger: logger, on: eventLoop)
    }
}
