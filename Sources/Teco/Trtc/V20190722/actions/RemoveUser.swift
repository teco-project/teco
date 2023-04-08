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

extension Trtc {
    /// RemoveUser请求参数结构体
    public struct RemoveUserRequest: TCRequestModel {
        /// TRTC的SDKAppId。
        public let sdkAppId: UInt64

        /// 房间号。
        public let roomId: UInt64

        /// 要移出的用户列表，最多10个。
        public let userIds: [String]

        public init(sdkAppId: UInt64, roomId: UInt64, userIds: [String]) {
            self.sdkAppId = sdkAppId
            self.roomId = roomId
            self.userIds = userIds
        }

        enum CodingKeys: String, CodingKey {
            case sdkAppId = "SdkAppId"
            case roomId = "RoomId"
            case userIds = "UserIds"
        }
    }

    /// RemoveUser返回参数结构体
    public struct RemoveUserResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 移出用户
    ///
    /// 接口说明：将用户从房间移出，适用于主播/房主/管理员踢人等场景。支持所有平台，Android、iOS、Windows 和 macOS 需升级到 TRTC SDK 6.6及以上版本。
    @inlinable @discardableResult
    public func removeUser(_ input: RemoveUserRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RemoveUserResponse> {
        self.client.execute(action: "RemoveUser", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 移出用户
    ///
    /// 接口说明：将用户从房间移出，适用于主播/房主/管理员踢人等场景。支持所有平台，Android、iOS、Windows 和 macOS 需升级到 TRTC SDK 6.6及以上版本。
    @inlinable @discardableResult
    public func removeUser(_ input: RemoveUserRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RemoveUserResponse {
        try await self.client.execute(action: "RemoveUser", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 移出用户
    ///
    /// 接口说明：将用户从房间移出，适用于主播/房主/管理员踢人等场景。支持所有平台，Android、iOS、Windows 和 macOS 需升级到 TRTC SDK 6.6及以上版本。
    @inlinable @discardableResult
    public func removeUser(sdkAppId: UInt64, roomId: UInt64, userIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RemoveUserResponse> {
        self.removeUser(.init(sdkAppId: sdkAppId, roomId: roomId, userIds: userIds), region: region, logger: logger, on: eventLoop)
    }

    /// 移出用户
    ///
    /// 接口说明：将用户从房间移出，适用于主播/房主/管理员踢人等场景。支持所有平台，Android、iOS、Windows 和 macOS 需升级到 TRTC SDK 6.6及以上版本。
    @inlinable @discardableResult
    public func removeUser(sdkAppId: UInt64, roomId: UInt64, userIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RemoveUserResponse {
        try await self.removeUser(.init(sdkAppId: sdkAppId, roomId: roomId, userIds: userIds), region: region, logger: logger, on: eventLoop)
    }
}
