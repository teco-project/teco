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

extension Tiw {
    /// DescribeRoomList请求参数结构体
    public struct DescribeRoomListRequest: TCRequestModel {
        /// 白板应用的SdkAppId
        public let sdkAppId: Int64

        /// 查询时间段，Unix时间戳，单位毫秒，第一个值为开始时间戳，第二个值为结束时间
        public let timeRange: [Int64]

        /// 额外的查询条件
        public let query: String?

        /// 返回最大的数据条数，默认1000
        public let maxSize: Int64?

        public init(sdkAppId: Int64, timeRange: [Int64], query: String? = nil, maxSize: Int64? = nil) {
            self.sdkAppId = sdkAppId
            self.timeRange = timeRange
            self.query = query
            self.maxSize = maxSize
        }

        enum CodingKeys: String, CodingKey {
            case sdkAppId = "SdkAppId"
            case timeRange = "TimeRange"
            case query = "Query"
            case maxSize = "MaxSize"
        }
    }

    /// DescribeRoomList返回参数结构体
    public struct DescribeRoomListResponse: TCResponseModel {
        /// 白板房间列表
        public let roomList: [RoomListItem]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case roomList = "RoomList"
            case requestId = "RequestId"
        }
    }

    /// 查询白板房间列表
    @inlinable
    public func describeRoomList(_ input: DescribeRoomListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRoomListResponse> {
        self.client.execute(action: "DescribeRoomList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询白板房间列表
    @inlinable
    public func describeRoomList(_ input: DescribeRoomListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRoomListResponse {
        try await self.client.execute(action: "DescribeRoomList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询白板房间列表
    @inlinable
    public func describeRoomList(sdkAppId: Int64, timeRange: [Int64], query: String? = nil, maxSize: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRoomListResponse> {
        self.describeRoomList(.init(sdkAppId: sdkAppId, timeRange: timeRange, query: query, maxSize: maxSize), region: region, logger: logger, on: eventLoop)
    }

    /// 查询白板房间列表
    @inlinable
    public func describeRoomList(sdkAppId: Int64, timeRange: [Int64], query: String? = nil, maxSize: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRoomListResponse {
        try await self.describeRoomList(.init(sdkAppId: sdkAppId, timeRange: timeRange, query: query, maxSize: maxSize), region: region, logger: logger, on: eventLoop)
    }
}
