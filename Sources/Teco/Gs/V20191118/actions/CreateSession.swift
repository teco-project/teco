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

extension Gs {
    /// CreateSession请求参数结构体
    public struct CreateSessionRequest: TCRequestModel {
        /// 客户端session信息，从JSSDK请求中获得
        public let clientSession: String

        /// 唯一用户身份标识，由业务方自定义，平台不予理解。（可根据业务需要决定使用用户的唯一身份标识或是使用时间戳随机生成；在用户重连时应保持UserId不变）
        public let userId: String

        /// 游戏ID
        public let gameId: String

        /// 【已废弃】只在TrylockWorker时生效
        public let gameRegion: String?

        /// 游戏参数
        public let gameParas: String?

        /// 分辨率,，可设置为1080p或720p或1920x1080格式
        public let resolution: String?

        /// 背景图url，格式为png或jpeg，宽高1920*1080
        public let imageUrl: String?

        /// 【已废弃】
        public let setNo: UInt64?

        /// 单位Mbps，固定码率建议值，有一定浮动范围，后端不动态调整(MaxBitrate和MinBitrate将无效)
        public let bitrate: UInt64?

        /// 单位Mbps，动态调整最大码率建议值，会按实际情况调整
        public let maxBitrate: UInt64?

        /// 单位Mbps，动态调整最小码率建议值，会按实际情况调整
        public let minBitrate: UInt64?

        /// 帧率，可设置为30、45、60、90、120、144
        public let fps: UInt64?

        /// 【必选】用户IP，用户客户端的公网IP，用于就近调度，不填将严重影响用户体验
        public let userIp: String?

        /// 【已废弃】优化项，便于客户灰度开启新的优化项，默认为0
        public let optimization: UInt64?

        /// 【互动云游】游戏主机用户ID
        public let hostUserId: String?

        /// 【互动云游】角色；Player表示玩家；Viewer表示观察者
        public let role: String?

        /// 游戏相关参数
        public let gameContext: String?

        /// 云端运行模式。
        /// RunWithoutClient：允许无客户端连接的情况下仍保持云端 App 运行
        /// 默认值（空）：要求必须有客户端连接才会保持云端 App 运行。
        public let runMode: String?

        public init(clientSession: String, userId: String, gameId: String, gameRegion: String? = nil, gameParas: String? = nil, resolution: String? = nil, imageUrl: String? = nil, setNo: UInt64? = nil, bitrate: UInt64? = nil, maxBitrate: UInt64? = nil, minBitrate: UInt64? = nil, fps: UInt64? = nil, userIp: String? = nil, optimization: UInt64? = nil, hostUserId: String? = nil, role: String? = nil, gameContext: String? = nil, runMode: String? = nil) {
            self.clientSession = clientSession
            self.userId = userId
            self.gameId = gameId
            self.gameRegion = gameRegion
            self.gameParas = gameParas
            self.resolution = resolution
            self.imageUrl = imageUrl
            self.setNo = setNo
            self.bitrate = bitrate
            self.maxBitrate = maxBitrate
            self.minBitrate = minBitrate
            self.fps = fps
            self.userIp = userIp
            self.optimization = optimization
            self.hostUserId = hostUserId
            self.role = role
            self.gameContext = gameContext
            self.runMode = runMode
        }

        enum CodingKeys: String, CodingKey {
            case clientSession = "ClientSession"
            case userId = "UserId"
            case gameId = "GameId"
            case gameRegion = "GameRegion"
            case gameParas = "GameParas"
            case resolution = "Resolution"
            case imageUrl = "ImageUrl"
            case setNo = "SetNo"
            case bitrate = "Bitrate"
            case maxBitrate = "MaxBitrate"
            case minBitrate = "MinBitrate"
            case fps = "Fps"
            case userIp = "UserIp"
            case optimization = "Optimization"
            case hostUserId = "HostUserId"
            case role = "Role"
            case gameContext = "GameContext"
            case runMode = "RunMode"
        }
    }

    /// CreateSession返回参数结构体
    public struct CreateSessionResponse: TCResponseModel {
        /// 服务端session信息，返回给JSSDK
        public let serverSession: String

        /// 【已废弃】
        public let roleNumber: String

        /// 【互动云游】角色；Player表示玩家；Viewer表示观察者
        public let role: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case serverSession = "ServerSession"
            case roleNumber = "RoleNumber"
            case role = "Role"
            case requestId = "RequestId"
        }
    }

    /// 创建会话
    @inlinable
    public func createSession(_ input: CreateSessionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateSessionResponse> {
        self.client.execute(action: "CreateSession", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建会话
    @inlinable
    public func createSession(_ input: CreateSessionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateSessionResponse {
        try await self.client.execute(action: "CreateSession", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建会话
    @inlinable
    public func createSession(clientSession: String, userId: String, gameId: String, gameRegion: String? = nil, gameParas: String? = nil, resolution: String? = nil, imageUrl: String? = nil, setNo: UInt64? = nil, bitrate: UInt64? = nil, maxBitrate: UInt64? = nil, minBitrate: UInt64? = nil, fps: UInt64? = nil, userIp: String? = nil, optimization: UInt64? = nil, hostUserId: String? = nil, role: String? = nil, gameContext: String? = nil, runMode: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateSessionResponse> {
        let input = CreateSessionRequest(clientSession: clientSession, userId: userId, gameId: gameId, gameRegion: gameRegion, gameParas: gameParas, resolution: resolution, imageUrl: imageUrl, setNo: setNo, bitrate: bitrate, maxBitrate: maxBitrate, minBitrate: minBitrate, fps: fps, userIp: userIp, optimization: optimization, hostUserId: hostUserId, role: role, gameContext: gameContext, runMode: runMode)
        return self.client.execute(action: "CreateSession", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建会话
    @inlinable
    public func createSession(clientSession: String, userId: String, gameId: String, gameRegion: String? = nil, gameParas: String? = nil, resolution: String? = nil, imageUrl: String? = nil, setNo: UInt64? = nil, bitrate: UInt64? = nil, maxBitrate: UInt64? = nil, minBitrate: UInt64? = nil, fps: UInt64? = nil, userIp: String? = nil, optimization: UInt64? = nil, hostUserId: String? = nil, role: String? = nil, gameContext: String? = nil, runMode: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateSessionResponse {
        let input = CreateSessionRequest(clientSession: clientSession, userId: userId, gameId: gameId, gameRegion: gameRegion, gameParas: gameParas, resolution: resolution, imageUrl: imageUrl, setNo: setNo, bitrate: bitrate, maxBitrate: maxBitrate, minBitrate: minBitrate, fps: fps, userIp: userIp, optimization: optimization, hostUserId: hostUserId, role: role, gameContext: gameContext, runMode: runMode)
        return try await self.client.execute(action: "CreateSession", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
