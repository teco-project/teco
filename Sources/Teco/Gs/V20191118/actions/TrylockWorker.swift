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
    /// TrylockWorker请求参数结构体
    public struct TrylockWorkerRequest: TCRequestModel {
        /// 唯一用户身份标识，由业务方自定义，平台不予理解。（可根据业务需要决定使用用户的唯一身份标识或是使用时间戳随机生成；在用户重连时应保持UserId不变）
        public let userId: String

        /// 游戏ID
        public let gameId: String

        /// 游戏区域，ap-guangzhou、ap-shanghai、ap-beijing等，如果不为空，优先按照该区域进行调度分配机器
        public let gameRegion: String?

        /// 【废弃】资源池编号
        public let setNo: UInt64?

        /// 【必选】用户IP，用户客户端的公网IP，用于就近调度，不填将严重影响用户体验
        public let userIp: String?

        /// 分组ID
        public let groupId: String?

        public init(userId: String, gameId: String, gameRegion: String? = nil, setNo: UInt64? = nil, userIp: String? = nil, groupId: String? = nil) {
            self.userId = userId
            self.gameId = gameId
            self.gameRegion = gameRegion
            self.setNo = setNo
            self.userIp = userIp
            self.groupId = groupId
        }

        enum CodingKeys: String, CodingKey {
            case userId = "UserId"
            case gameId = "GameId"
            case gameRegion = "GameRegion"
            case setNo = "SetNo"
            case userIp = "UserIp"
            case groupId = "GroupId"
        }
    }

    /// TrylockWorker返回参数结构体
    public struct TrylockWorkerResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 尝试锁定机器
    @inlinable @discardableResult
    public func trylockWorker(_ input: TrylockWorkerRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<TrylockWorkerResponse> {
        self.client.execute(action: "TrylockWorker", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 尝试锁定机器
    @inlinable @discardableResult
    public func trylockWorker(_ input: TrylockWorkerRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> TrylockWorkerResponse {
        try await self.client.execute(action: "TrylockWorker", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 尝试锁定机器
    @inlinable @discardableResult
    public func trylockWorker(userId: String, gameId: String, gameRegion: String? = nil, setNo: UInt64? = nil, userIp: String? = nil, groupId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<TrylockWorkerResponse> {
        self.trylockWorker(.init(userId: userId, gameId: gameId, gameRegion: gameRegion, setNo: setNo, userIp: userIp, groupId: groupId), region: region, logger: logger, on: eventLoop)
    }

    /// 尝试锁定机器
    @inlinable @discardableResult
    public func trylockWorker(userId: String, gameId: String, gameRegion: String? = nil, setNo: UInt64? = nil, userIp: String? = nil, groupId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> TrylockWorkerResponse {
        try await self.trylockWorker(.init(userId: userId, gameId: gameId, gameRegion: gameRegion, setNo: setNo, userIp: userIp, groupId: groupId), region: region, logger: logger, on: eventLoop)
    }
}
