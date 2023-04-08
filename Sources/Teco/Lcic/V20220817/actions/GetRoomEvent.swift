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

extension Lcic {
    /// GetRoomEvent请求参数结构体
    public struct GetRoomEventRequest: TCRequestModel {
        /// 房间Id。
        public let roomId: UInt64

        /// 应用Id。
        public let sdkAppId: UInt64

        /// 起始页，1开始。keyword为空时有效。
        public let page: UInt64

        /// 每页个数。keyword为空时有效。一次性最多200条。
        public let limit: UInt64

        /// 搜索事件类型。有以下事件类型:
        /// RoomStart:房间开始
        /// RoomEnd:房间结束
        /// MemberJoin:成员加入
        /// MemberQuit:成员退出
        /// RecordFinish:录制结束
        public let keyword: String?

        public init(roomId: UInt64, sdkAppId: UInt64, page: UInt64, limit: UInt64, keyword: String? = nil) {
            self.roomId = roomId
            self.sdkAppId = sdkAppId
            self.page = page
            self.limit = limit
            self.keyword = keyword
        }

        enum CodingKeys: String, CodingKey {
            case roomId = "RoomId"
            case sdkAppId = "SdkAppId"
            case page = "Page"
            case limit = "Limit"
            case keyword = "Keyword"
        }
    }

    /// GetRoomEvent返回参数结构体
    public struct GetRoomEventResponse: TCResponseModel {
        /// 该房间的事件总数，keyword搜索不影响该值。
        public let total: UInt64

        /// 详细事件内容。包含相应的类型、发生的时间戳。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let events: [EventInfo]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case total = "Total"
            case events = "Events"
            case requestId = "RequestId"
        }
    }

    /// 获取房间事件
    ///
    /// 获取房间事件,仅在课堂结束1小时内有效。
    @inlinable
    public func getRoomEvent(_ input: GetRoomEventRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetRoomEventResponse> {
        self.client.execute(action: "GetRoomEvent", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取房间事件
    ///
    /// 获取房间事件,仅在课堂结束1小时内有效。
    @inlinable
    public func getRoomEvent(_ input: GetRoomEventRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetRoomEventResponse {
        try await self.client.execute(action: "GetRoomEvent", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取房间事件
    ///
    /// 获取房间事件,仅在课堂结束1小时内有效。
    @inlinable
    public func getRoomEvent(roomId: UInt64, sdkAppId: UInt64, page: UInt64, limit: UInt64, keyword: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetRoomEventResponse> {
        self.getRoomEvent(.init(roomId: roomId, sdkAppId: sdkAppId, page: page, limit: limit, keyword: keyword), region: region, logger: logger, on: eventLoop)
    }

    /// 获取房间事件
    ///
    /// 获取房间事件,仅在课堂结束1小时内有效。
    @inlinable
    public func getRoomEvent(roomId: UInt64, sdkAppId: UInt64, page: UInt64, limit: UInt64, keyword: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetRoomEventResponse {
        try await self.getRoomEvent(.init(roomId: roomId, sdkAppId: sdkAppId, page: page, limit: limit, keyword: keyword), region: region, logger: logger, on: eventLoop)
    }
}
