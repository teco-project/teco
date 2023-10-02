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

extension Trtc {
    /// DismissRoomByStrRoomId请求参数结构体
    public struct DismissRoomByStrRoomIdRequest: TCRequest {
        /// TRTC的SDKAppId。
        public let sdkAppId: UInt64

        /// 字符串类型房间号。
        /// 本接口仅支持解散字符串类型房间号，如需解散数字类型房间号，请使用：DismissRoom
        public let roomId: String

        public init(sdkAppId: UInt64, roomId: String) {
            self.sdkAppId = sdkAppId
            self.roomId = roomId
        }

        enum CodingKeys: String, CodingKey {
            case sdkAppId = "SdkAppId"
            case roomId = "RoomId"
        }
    }

    /// DismissRoomByStrRoomId返回参数结构体
    public struct DismissRoomByStrRoomIdResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 解散房间（字符串房间号）
    ///
    /// 接口说明：把房间所有用户从房间移出，解散房间。支持所有平台，Android、iOS、Windows 和 macOS 需升级到 TRTC SDK 6.6及以上版本。
    @inlinable @discardableResult
    public func dismissRoomByStrRoomId(_ input: DismissRoomByStrRoomIdRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DismissRoomByStrRoomIdResponse> {
        self.client.execute(action: "DismissRoomByStrRoomId", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 解散房间（字符串房间号）
    ///
    /// 接口说明：把房间所有用户从房间移出，解散房间。支持所有平台，Android、iOS、Windows 和 macOS 需升级到 TRTC SDK 6.6及以上版本。
    @inlinable @discardableResult
    public func dismissRoomByStrRoomId(_ input: DismissRoomByStrRoomIdRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DismissRoomByStrRoomIdResponse {
        try await self.client.execute(action: "DismissRoomByStrRoomId", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 解散房间（字符串房间号）
    ///
    /// 接口说明：把房间所有用户从房间移出，解散房间。支持所有平台，Android、iOS、Windows 和 macOS 需升级到 TRTC SDK 6.6及以上版本。
    @inlinable @discardableResult
    public func dismissRoomByStrRoomId(sdkAppId: UInt64, roomId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DismissRoomByStrRoomIdResponse> {
        self.dismissRoomByStrRoomId(.init(sdkAppId: sdkAppId, roomId: roomId), region: region, logger: logger, on: eventLoop)
    }

    /// 解散房间（字符串房间号）
    ///
    /// 接口说明：把房间所有用户从房间移出，解散房间。支持所有平台，Android、iOS、Windows 和 macOS 需升级到 TRTC SDK 6.6及以上版本。
    @inlinable @discardableResult
    public func dismissRoomByStrRoomId(sdkAppId: UInt64, roomId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DismissRoomByStrRoomIdResponse {
        try await self.dismissRoomByStrRoomId(.init(sdkAppId: sdkAppId, roomId: roomId), region: region, logger: logger, on: eventLoop)
    }
}
