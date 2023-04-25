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

// Test PR teco-project/teco-code-generator#23.

import Logging
import NIOCore
import TecoCore

extension Gme {
    /// DescribeUserInAndOutTime请求参数结构体
    public struct DescribeUserInAndOutTimeRequest: TCRequestModel {
        /// 应用ID
        public let bizId: Int64

        /// 房间ID
        public let roomId: Int64

        /// 用户ID
        public let userId: Int64

        /// 字符串类型用户ID
        public let userIdStr: String?

        /// 字符串类型房间ID
        public let roomIdStr: String?

        public init(bizId: Int64, roomId: Int64, userId: Int64, userIdStr: String? = nil, roomIdStr: String? = nil) {
            self.bizId = bizId
            self.roomId = roomId
            self.userId = userId
            self.userIdStr = userIdStr
            self.roomIdStr = roomIdStr
        }

        enum CodingKeys: String, CodingKey {
            case bizId = "BizId"
            case roomId = "RoomId"
            case userId = "UserId"
            case userIdStr = "UserIdStr"
            case roomIdStr = "RoomIdStr"
        }
    }

    /// DescribeUserInAndOutTime返回参数结构体
    public struct DescribeUserInAndOutTimeResponse: TCResponseModel {
        /// 用户在房间得进出时间列表
        public let inOutList: [InOutTimeInfo]

        /// 用户在房间中总时长
        public let duration: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case inOutList = "InOutList"
            case duration = "Duration"
            case requestId = "RequestId"
        }
    }

    /// 拉取用户在房间得进出时间
    @inlinable
    public func describeUserInAndOutTime(_ input: DescribeUserInAndOutTimeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeUserInAndOutTimeResponse> {
        self.client.execute(action: "DescribeUserInAndOutTime", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 拉取用户在房间得进出时间
    @inlinable
    public func describeUserInAndOutTime(_ input: DescribeUserInAndOutTimeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeUserInAndOutTimeResponse {
        try await self.client.execute(action: "DescribeUserInAndOutTime", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 拉取用户在房间得进出时间
    @inlinable
    public func describeUserInAndOutTime(bizId: Int64, roomId: Int64, userId: Int64, userIdStr: String? = nil, roomIdStr: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeUserInAndOutTimeResponse> {
        self.describeUserInAndOutTime(.init(bizId: bizId, roomId: roomId, userId: userId, userIdStr: userIdStr, roomIdStr: roomIdStr), region: region, logger: logger, on: eventLoop)
    }

    /// 拉取用户在房间得进出时间
    @inlinable
    public func describeUserInAndOutTime(bizId: Int64, roomId: Int64, userId: Int64, userIdStr: String? = nil, roomIdStr: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeUserInAndOutTimeResponse {
        try await self.describeUserInAndOutTime(.init(bizId: bizId, roomId: roomId, userId: userId, userIdStr: userIdStr, roomIdStr: roomIdStr), region: region, logger: logger, on: eventLoop)
    }
}
