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

extension Tiw {
    /// DescribeUserList请求参数结构体
    public struct DescribeUserListRequest: TCRequestModel {
        /// 白板应用的SdkAppId
        public let sdkAppId: Int64

        /// 需要查询用户列表的白板房间号
        public let roomId: String

        /// 查询时间段，Unix时间戳，单位毫秒，第一个值为开始时间戳，第二个值为结束时间
        public let timeRange: [Int64]

        /// 额外的查询条件
        public let query: String?

        /// 返回最大的数据条数，默认1000
        public let maxSize: Int64?

        public init(sdkAppId: Int64, roomId: String, timeRange: [Int64], query: String? = nil, maxSize: Int64? = nil) {
            self.sdkAppId = sdkAppId
            self.roomId = roomId
            self.timeRange = timeRange
            self.query = query
            self.maxSize = maxSize
        }

        enum CodingKeys: String, CodingKey {
            case sdkAppId = "SdkAppId"
            case roomId = "RoomId"
            case timeRange = "TimeRange"
            case query = "Query"
            case maxSize = "MaxSize"
        }
    }

    /// DescribeUserList返回参数结构体
    public struct DescribeUserListResponse: TCResponseModel {
        /// 房间内的用户列表
        public let userList: [UserListItem]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case userList = "UserList"
            case requestId = "RequestId"
        }
    }

    /// 查询白板用户列表
    @inlinable
    public func describeUserList(_ input: DescribeUserListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeUserListResponse> {
        self.client.execute(action: "DescribeUserList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询白板用户列表
    @inlinable
    public func describeUserList(_ input: DescribeUserListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeUserListResponse {
        try await self.client.execute(action: "DescribeUserList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询白板用户列表
    @inlinable
    public func describeUserList(sdkAppId: Int64, roomId: String, timeRange: [Int64], query: String? = nil, maxSize: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeUserListResponse> {
        self.describeUserList(.init(sdkAppId: sdkAppId, roomId: roomId, timeRange: timeRange, query: query, maxSize: maxSize), region: region, logger: logger, on: eventLoop)
    }

    /// 查询白板用户列表
    @inlinable
    public func describeUserList(sdkAppId: Int64, roomId: String, timeRange: [Int64], query: String? = nil, maxSize: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeUserListResponse {
        try await self.describeUserList(.init(sdkAppId: sdkAppId, roomId: roomId, timeRange: timeRange, query: query, maxSize: maxSize), region: region, logger: logger, on: eventLoop)
    }
}
