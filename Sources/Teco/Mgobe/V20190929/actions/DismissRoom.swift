//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Mgobe {
    /// DismissRoom请求参数结构体
    public struct DismissRoomRequest: TCRequestModel {
        /// 表示游戏资源唯一 ID, 由后台自动分配, 无法修改。
        public let gameId: String
        
        /// 表示游戏房间唯一ID。
        public let roomId: String
        
        public init (gameId: String, roomId: String) {
            self.gameId = gameId
            self.roomId = roomId
        }
        
        enum CodingKeys: String, CodingKey {
            case gameId = "GameId"
            case roomId = "RoomId"
        }
    }
    
    /// DismissRoom返回参数结构体
    public struct DismissRoomResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
    
    /// 解散房间
    ///
    /// 通过game_id、room_id解散房间
    @inlinable
    public func dismissRoom(_ input: DismissRoomRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DismissRoomResponse > {
        self.client.execute(action: "DismissRoom", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 解散房间
    ///
    /// 通过game_id、room_id解散房间
    @inlinable
    public func dismissRoom(_ input: DismissRoomRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DismissRoomResponse {
        try await self.client.execute(action: "DismissRoom", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
