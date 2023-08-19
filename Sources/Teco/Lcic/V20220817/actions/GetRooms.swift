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

extension Lcic {
    /// GetRooms请求参数结构体
    public struct GetRoomsRequest: TCRequest {
        /// 低代码平台的SdkAppId。
        public let sdkAppId: UInt64

        /// 开始时间。默认以当前时间减去半小时作为开始时间。
        public let startTime: UInt64?

        /// 结束时间。默认以当前时间加上半小时作为结束时间。
        public let endTime: UInt64?

        /// 分页查询当前页数，从1开始递增
        public let page: UInt64?

        /// 默认是10条
        public let limit: UInt64?

        /// 课堂状态。默认展示所有课堂，0为未开始，1为正在上课，2为已结束，3为已过期
        public let status: [UInt64]?

        public init(sdkAppId: UInt64, startTime: UInt64? = nil, endTime: UInt64? = nil, page: UInt64? = nil, limit: UInt64? = nil, status: [UInt64]? = nil) {
            self.sdkAppId = sdkAppId
            self.startTime = startTime
            self.endTime = endTime
            self.page = page
            self.limit = limit
            self.status = status
        }

        enum CodingKeys: String, CodingKey {
            case sdkAppId = "SdkAppId"
            case startTime = "StartTime"
            case endTime = "EndTime"
            case page = "Page"
            case limit = "Limit"
            case status = "Status"
        }
    }

    /// GetRooms返回参数结构体
    public struct GetRoomsResponse: TCResponse {
        /// 总数
        public let total: UInt64

        /// 房间列表
        public let rooms: [RoomItem]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case total = "Total"
            case rooms = "Rooms"
            case requestId = "RequestId"
        }
    }

    /// 获取房间列表
    @inlinable
    public func getRooms(_ input: GetRoomsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetRoomsResponse> {
        self.client.execute(action: "GetRooms", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取房间列表
    @inlinable
    public func getRooms(_ input: GetRoomsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetRoomsResponse {
        try await self.client.execute(action: "GetRooms", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取房间列表
    @inlinable
    public func getRooms(sdkAppId: UInt64, startTime: UInt64? = nil, endTime: UInt64? = nil, page: UInt64? = nil, limit: UInt64? = nil, status: [UInt64]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetRoomsResponse> {
        self.getRooms(.init(sdkAppId: sdkAppId, startTime: startTime, endTime: endTime, page: page, limit: limit, status: status), region: region, logger: logger, on: eventLoop)
    }

    /// 获取房间列表
    @inlinable
    public func getRooms(sdkAppId: UInt64, startTime: UInt64? = nil, endTime: UInt64? = nil, page: UInt64? = nil, limit: UInt64? = nil, status: [UInt64]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetRoomsResponse {
        try await self.getRooms(.init(sdkAppId: sdkAppId, startTime: startTime, endTime: endTime, page: page, limit: limit, status: status), region: region, logger: logger, on: eventLoop)
    }
}
