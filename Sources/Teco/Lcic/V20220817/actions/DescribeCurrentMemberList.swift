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
    /// DescribeCurrentMemberList请求参数结构体
    public struct DescribeCurrentMemberListRequest: TCRequest {
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

    /// DescribeCurrentMemberList返回参数结构体
    public struct DescribeCurrentMemberListResponse: TCResponse {
        /// 记录总数。当前房间的总人数。
        public let total: UInt64

        /// 成员记录列表。
        public let memberRecords: [MemberRecord]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case total = "Total"
            case memberRecords = "MemberRecords"
            case requestId = "RequestId"
        }
    }

    /// 获取当前房间的成员列表
    ///
    /// 获取当前房间的成员列表，房间结束或过期后无法使用。
    @inlinable
    public func describeCurrentMemberList(_ input: DescribeCurrentMemberListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCurrentMemberListResponse> {
        self.client.execute(action: "DescribeCurrentMemberList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取当前房间的成员列表
    ///
    /// 获取当前房间的成员列表，房间结束或过期后无法使用。
    @inlinable
    public func describeCurrentMemberList(_ input: DescribeCurrentMemberListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCurrentMemberListResponse {
        try await self.client.execute(action: "DescribeCurrentMemberList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取当前房间的成员列表
    ///
    /// 获取当前房间的成员列表，房间结束或过期后无法使用。
    @inlinable
    public func describeCurrentMemberList(roomId: UInt64, page: UInt64, limit: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCurrentMemberListResponse> {
        self.describeCurrentMemberList(.init(roomId: roomId, page: page, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 获取当前房间的成员列表
    ///
    /// 获取当前房间的成员列表，房间结束或过期后无法使用。
    @inlinable
    public func describeCurrentMemberList(roomId: UInt64, page: UInt64, limit: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCurrentMemberListResponse {
        try await self.describeCurrentMemberList(.init(roomId: roomId, page: page, limit: limit), region: region, logger: logger, on: eventLoop)
    }
}
