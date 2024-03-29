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
    /// DescribeRoomStatistics请求参数结构体
    public struct DescribeRoomStatisticsRequest: TCRequest {
        /// 房间Id。
        public let roomId: UInt64

        /// 分页查询当前页数，从1开始递增。
        public let page: UInt64

        /// 每页数据量，最大1000。
        public let limit: UInt64

        public init(roomId: UInt64, page: UInt64, limit: UInt64) {
            self.roomId = roomId
            self.page = page
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case roomId = "RoomId"
            case page = "Page"
            case limit = "Limit"
        }
    }

    /// DescribeRoomStatistics返回参数结构体
    public struct DescribeRoomStatisticsResponse: TCResponse {
        /// 峰值在线成员人数。
        public let peakMemberNumber: UInt64

        /// 累计在线人数。
        public let memberNumber: UInt64

        /// 记录总数。包含进入房间或者应到未到的。
        public let total: UInt64

        /// 成员记录列表。
        public let memberRecords: [MemberRecord]

        /// 秒级unix时间戳，实际房间开始时间。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let realStartTime: UInt64?

        /// 秒级unix时间戳，实际房间结束时间。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let realEndTime: UInt64?

        /// 房间消息总数。
        public let messageCount: UInt64

        /// 房间连麦总数。
        public let micCount: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case peakMemberNumber = "PeakMemberNumber"
            case memberNumber = "MemberNumber"
            case total = "Total"
            case memberRecords = "MemberRecords"
            case realStartTime = "RealStartTime"
            case realEndTime = "RealEndTime"
            case messageCount = "MessageCount"
            case micCount = "MicCount"
            case requestId = "RequestId"
        }
    }

    /// 获取房间统计信息
    ///
    /// 获取房间统计信息，仅可在房间结束后调用。
    @inlinable
    public func describeRoomStatistics(_ input: DescribeRoomStatisticsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRoomStatisticsResponse> {
        self.client.execute(action: "DescribeRoomStatistics", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取房间统计信息
    ///
    /// 获取房间统计信息，仅可在房间结束后调用。
    @inlinable
    public func describeRoomStatistics(_ input: DescribeRoomStatisticsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRoomStatisticsResponse {
        try await self.client.execute(action: "DescribeRoomStatistics", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取房间统计信息
    ///
    /// 获取房间统计信息，仅可在房间结束后调用。
    @inlinable
    public func describeRoomStatistics(roomId: UInt64, page: UInt64, limit: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRoomStatisticsResponse> {
        self.describeRoomStatistics(.init(roomId: roomId, page: page, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 获取房间统计信息
    ///
    /// 获取房间统计信息，仅可在房间结束后调用。
    @inlinable
    public func describeRoomStatistics(roomId: UInt64, page: UInt64, limit: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRoomStatisticsResponse {
        try await self.describeRoomStatistics(.init(roomId: roomId, page: page, limit: limit), region: region, logger: logger, on: eventLoop)
    }
}
