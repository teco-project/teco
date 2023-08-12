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
import TecoPaginationHelpers

extension Iotvideoindustry {
    /// DescribeRecordDatesByLive请求参数结构体
    public struct DescribeRecordDatesByLiveRequest: TCPaginatedRequest {
        /// 直播频道ID
        public let liveChannelId: String

        /// 分页值，本地录制时参数无效
        public let offset: Int64

        /// 限制值，本地录制时参数无效
        public let limit: Int64

        public init(liveChannelId: String, offset: Int64, limit: Int64) {
            self.liveChannelId = liveChannelId
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case liveChannelId = "LiveChannelId"
            case offset = "Offset"
            case limit = "Limit"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeRecordDatesByLiveResponse) -> DescribeRecordDatesByLiveRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeRecordDatesByLiveRequest(liveChannelId: self.liveChannelId, offset: self.offset + .init(response.getItems().count), limit: self.limit)
        }
    }

    /// DescribeRecordDatesByLive返回参数结构体
    public struct DescribeRecordDatesByLiveResponse: TCPaginatedResponse {
        /// 录制日期数组
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let dates: [String]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case dates = "Dates"
            case requestId = "RequestId"
        }

        /// Extract the returned ``String`` list from the paginated response.
        public func getItems() -> [String] {
            self.dates ?? []
        }
    }

    /// 直播录像存储日期列表
    @inlinable
    public func describeRecordDatesByLive(_ input: DescribeRecordDatesByLiveRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRecordDatesByLiveResponse> {
        self.client.execute(action: "DescribeRecordDatesByLive", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 直播录像存储日期列表
    @inlinable
    public func describeRecordDatesByLive(_ input: DescribeRecordDatesByLiveRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRecordDatesByLiveResponse {
        try await self.client.execute(action: "DescribeRecordDatesByLive", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 直播录像存储日期列表
    @inlinable
    public func describeRecordDatesByLive(liveChannelId: String, offset: Int64, limit: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRecordDatesByLiveResponse> {
        self.describeRecordDatesByLive(.init(liveChannelId: liveChannelId, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 直播录像存储日期列表
    @inlinable
    public func describeRecordDatesByLive(liveChannelId: String, offset: Int64, limit: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRecordDatesByLiveResponse {
        try await self.describeRecordDatesByLive(.init(liveChannelId: liveChannelId, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 直播录像存储日期列表
    @inlinable
    public func describeRecordDatesByLivePaginated(_ input: DescribeRecordDatesByLiveRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Never?, [String])> {
        self.client.paginate(input: input, region: region, command: self.describeRecordDatesByLive, logger: logger, on: eventLoop)
    }

    /// 直播录像存储日期列表
    @inlinable @discardableResult
    public func describeRecordDatesByLivePaginated(_ input: DescribeRecordDatesByLiveRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeRecordDatesByLiveResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeRecordDatesByLive, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 直播录像存储日期列表
    ///
    /// - Returns: `AsyncSequence`s of `String` and `DescribeRecordDatesByLiveResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeRecordDatesByLivePaginator(_ input: DescribeRecordDatesByLiveRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeRecordDatesByLiveRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeRecordDatesByLive, logger: logger, on: eventLoop)
    }
}
