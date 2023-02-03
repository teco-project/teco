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

extension Yinsuda {
    /// ApplyChorus请求参数结构体
    public struct ApplyChorusRequest: TCRequestModel {
        /// 应用名称。
        public let appName: String

        /// 用户标识。
        public let userId: String

        /// 房间号。
        public let roomId: String

        /// 歌曲 Id。
        public let musicId: String

        /// 最大合唱人数，默认值为 8，最大值为 20。
        public let maxChorusNum: UInt64?

        /// 合唱用户标识列表。
        public let chorusUserIds: [String]?

        public init(appName: String, userId: String, roomId: String, musicId: String, maxChorusNum: UInt64? = nil, chorusUserIds: [String]? = nil) {
            self.appName = appName
            self.userId = userId
            self.roomId = roomId
            self.musicId = musicId
            self.maxChorusNum = maxChorusNum
            self.chorusUserIds = chorusUserIds
        }

        enum CodingKeys: String, CodingKey {
            case appName = "AppName"
            case userId = "UserId"
            case roomId = "RoomId"
            case musicId = "MusicId"
            case maxChorusNum = "MaxChorusNum"
            case chorusUserIds = "ChorusUserIds"
        }
    }

    /// ApplyChorus返回参数结构体
    public struct ApplyChorusResponse: TCResponseModel {
        /// 合唱 Token。
        public let chorusToken: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case chorusToken = "ChorusToken"
            case requestId = "RequestId"
        }
    }

    /// 申请合唱
    ///
    /// 申请合唱相关信息，用于标记用户的演唱是在合唱场景下。
    @inlinable
    public func applyChorus(_ input: ApplyChorusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ApplyChorusResponse> {
        self.client.execute(action: "ApplyChorus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 申请合唱
    ///
    /// 申请合唱相关信息，用于标记用户的演唱是在合唱场景下。
    @inlinable
    public func applyChorus(_ input: ApplyChorusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ApplyChorusResponse {
        try await self.client.execute(action: "ApplyChorus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 申请合唱
    ///
    /// 申请合唱相关信息，用于标记用户的演唱是在合唱场景下。
    @inlinable
    public func applyChorus(appName: String, userId: String, roomId: String, musicId: String, maxChorusNum: UInt64? = nil, chorusUserIds: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ApplyChorusResponse> {
        let input = ApplyChorusRequest(appName: appName, userId: userId, roomId: roomId, musicId: musicId, maxChorusNum: maxChorusNum, chorusUserIds: chorusUserIds)
        return self.client.execute(action: "ApplyChorus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 申请合唱
    ///
    /// 申请合唱相关信息，用于标记用户的演唱是在合唱场景下。
    @inlinable
    public func applyChorus(appName: String, userId: String, roomId: String, musicId: String, maxChorusNum: UInt64? = nil, chorusUserIds: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ApplyChorusResponse {
        let input = ApplyChorusRequest(appName: appName, userId: userId, roomId: roomId, musicId: musicId, maxChorusNum: maxChorusNum, chorusUserIds: chorusUserIds)
        return try await self.client.execute(action: "ApplyChorus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
