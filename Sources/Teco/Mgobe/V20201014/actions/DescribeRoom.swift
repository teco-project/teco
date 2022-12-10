//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Teco project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Mgobe {
    /// 查询房间信息
    ///
    /// 此接口无法使用，游戏联机对战引擎MGOBE已于6.1正式下架，感谢您的支持
    /// 该接口用于查询房间信息。支持两种用法，当房间Id不传的时候，玩家Id必传，传入玩家Id可以查询当前玩家所在的房间信息，当房间Id传入的时候，玩家Id可不传，按照房间Id查询房间信息。
    @inlinable
    public func describeRoom(_ input: DescribeRoomRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeRoomResponse > {
        self.client.execute(action: "DescribeRoom", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询房间信息
    ///
    /// 此接口无法使用，游戏联机对战引擎MGOBE已于6.1正式下架，感谢您的支持
    /// 该接口用于查询房间信息。支持两种用法，当房间Id不传的时候，玩家Id必传，传入玩家Id可以查询当前玩家所在的房间信息，当房间Id传入的时候，玩家Id可不传，按照房间Id查询房间信息。
    @inlinable
    public func describeRoom(_ input: DescribeRoomRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRoomResponse {
        try await self.client.execute(action: "DescribeRoom", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeRoom请求参数结构体
    public struct DescribeRoomRequest: TCRequestModel {
        /// 游戏资源Id。
        public let gameId: String
        
        /// 玩家Id。当房间Id不传的时候，玩家Id必传，传入玩家Id可以查询当前玩家所在的房间信息，当房间Id传入的时候，优先按照房间Id查询房间信息。
        public let playerId: String?
        
        /// 房间Id。
        public let roomId: String?
        
        public init (gameId: String, playerId: String?, roomId: String?) {
            self.gameId = gameId
            self.playerId = playerId
            self.roomId = roomId
        }
        
        enum CodingKeys: String, CodingKey {
            case gameId = "GameId"
            case playerId = "PlayerId"
            case roomId = "RoomId"
        }
    }
    
    /// DescribeRoom返回参数结构体
    public struct DescribeRoomResponse: TCResponseModel {
        /// 房间信息。
        public let room: Room
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case room = "Room"
            case requestId = "RequestId"
        }
    }
}