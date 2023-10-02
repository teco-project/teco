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
    /// DismissRoom请求参数结构体
    public struct DismissRoomRequest: TCRequest {
        /// TRTC的SDKAppId。
        public let sdkAppId: UInt64

        /// 数字房间号。本接口仅支持解散数字类型房间号，如需解散字符串类型房间号，请使用DismissRoomByStrRoomId。
        public let roomId: UInt64

        public init(sdkAppId: UInt64, roomId: UInt64) {
            self.sdkAppId = sdkAppId
            self.roomId = roomId
        }

        enum CodingKeys: String, CodingKey {
            case sdkAppId = "SdkAppId"
            case roomId = "RoomId"
        }
    }

    /// DismissRoom返回参数结构体
    public struct DismissRoomResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 解散房间
    ///
    /// 接口说明：把房间所有用户从房间移出，解散房间。支持所有平台，Android、iOS、Windows 和 macOS 需升级到 TRTC SDK 6.6及以上版本。
    @inlinable @discardableResult
    public func dismissRoom(_ input: DismissRoomRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DismissRoomResponse> {
        self.client.execute(action: "DismissRoom", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 解散房间
    ///
    /// 接口说明：把房间所有用户从房间移出，解散房间。支持所有平台，Android、iOS、Windows 和 macOS 需升级到 TRTC SDK 6.6及以上版本。
    @inlinable @discardableResult
    public func dismissRoom(_ input: DismissRoomRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DismissRoomResponse {
        try await self.client.execute(action: "DismissRoom", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 解散房间
    ///
    /// 接口说明：把房间所有用户从房间移出，解散房间。支持所有平台，Android、iOS、Windows 和 macOS 需升级到 TRTC SDK 6.6及以上版本。
    @inlinable @discardableResult
    public func dismissRoom(sdkAppId: UInt64, roomId: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DismissRoomResponse> {
        self.dismissRoom(.init(sdkAppId: sdkAppId, roomId: roomId), region: region, logger: logger, on: eventLoop)
    }

    /// 解散房间
    ///
    /// 接口说明：把房间所有用户从房间移出，解散房间。支持所有平台，Android、iOS、Windows 和 macOS 需升级到 TRTC SDK 6.6及以上版本。
    @inlinable @discardableResult
    public func dismissRoom(sdkAppId: UInt64, roomId: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DismissRoomResponse {
        try await self.dismissRoom(.init(sdkAppId: sdkAppId, roomId: roomId), region: region, logger: logger, on: eventLoop)
    }
}
