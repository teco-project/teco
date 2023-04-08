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

import TecoCore

extension Tiw {
    /// DescribeBoardSDKLog请求参数结构体
    public struct DescribeBoardSDKLogRequest: TCRequestModel {
        /// 白板应用的SdkAppId
        public let sdkAppId: Int64

        /// 需要查询日志的白板房间号
        public let roomId: String

        /// 需要查询日志的用户ID
        public let userId: String

        /// 查询时间段，Unix时间戳，单位毫秒，第一个值为开始时间戳，第二个值为结束时间
        public let timeRange: [Int64]

        /// 聚合日志条数查询的桶的时间范围，如5m, 1h, 4h等
        public let aggregationInterval: String

        /// 额外的查询条件
        public let query: String?

        /// 是否按时间升序排列
        public let ascending: Bool?

        /// 用于递归拉取的上下文Key，在上一次请求中返回
        public let context: String?

        public init(sdkAppId: Int64, roomId: String, userId: String, timeRange: [Int64], aggregationInterval: String, query: String? = nil, ascending: Bool? = nil, context: String? = nil) {
            self.sdkAppId = sdkAppId
            self.roomId = roomId
            self.userId = userId
            self.timeRange = timeRange
            self.aggregationInterval = aggregationInterval
            self.query = query
            self.ascending = ascending
            self.context = context
        }

        enum CodingKeys: String, CodingKey {
            case sdkAppId = "SdkAppId"
            case roomId = "RoomId"
            case userId = "UserId"
            case timeRange = "TimeRange"
            case aggregationInterval = "AggregationInterval"
            case query = "Query"
            case ascending = "Ascending"
            case context = "Context"
        }
    }

    /// DescribeBoardSDKLog返回参数结构体
    public struct DescribeBoardSDKLogResponse: TCResponseModel {
        /// 总共能查到日志条数
        public let total: Int64

        /// 日志详细内容
        public let sources: [String]

        /// 按时间段聚合后每个时间段的日志条数
        public let buckets: [String]

        /// 用于递归拉取的上下文Key，下一次请求的时候带上
        public let context: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case total = "Total"
            case sources = "Sources"
            case buckets = "Buckets"
            case context = "Context"
            case requestId = "RequestId"
        }
    }

    /// 查询白板日志
    ///
    /// 查询客户端白板日志
    @inlinable
    public func describeBoardSDKLog(_ input: DescribeBoardSDKLogRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBoardSDKLogResponse> {
        self.client.execute(action: "DescribeBoardSDKLog", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询白板日志
    ///
    /// 查询客户端白板日志
    @inlinable
    public func describeBoardSDKLog(_ input: DescribeBoardSDKLogRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBoardSDKLogResponse {
        try await self.client.execute(action: "DescribeBoardSDKLog", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询白板日志
    ///
    /// 查询客户端白板日志
    @inlinable
    public func describeBoardSDKLog(sdkAppId: Int64, roomId: String, userId: String, timeRange: [Int64], aggregationInterval: String, query: String? = nil, ascending: Bool? = nil, context: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBoardSDKLogResponse> {
        self.describeBoardSDKLog(.init(sdkAppId: sdkAppId, roomId: roomId, userId: userId, timeRange: timeRange, aggregationInterval: aggregationInterval, query: query, ascending: ascending, context: context), region: region, logger: logger, on: eventLoop)
    }

    /// 查询白板日志
    ///
    /// 查询客户端白板日志
    @inlinable
    public func describeBoardSDKLog(sdkAppId: Int64, roomId: String, userId: String, timeRange: [Int64], aggregationInterval: String, query: String? = nil, ascending: Bool? = nil, context: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBoardSDKLogResponse {
        try await self.describeBoardSDKLog(.init(sdkAppId: sdkAppId, roomId: roomId, userId: userId, timeRange: timeRange, aggregationInterval: aggregationInterval, query: query, ascending: ascending, context: context), region: region, logger: logger, on: eventLoop)
    }
}
