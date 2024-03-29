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
    /// UnbindDocumentFromRoom请求参数结构体
    public struct UnbindDocumentFromRoomRequest: TCRequest {
        /// 房间ID。
        public let roomId: UInt64

        /// 文档ID。
        public let documentId: String

        public init(roomId: UInt64, documentId: String) {
            self.roomId = roomId
            self.documentId = documentId
        }

        enum CodingKeys: String, CodingKey {
            case roomId = "RoomId"
            case documentId = "DocumentId"
        }
    }

    /// UnbindDocumentFromRoom返回参数结构体
    public struct UnbindDocumentFromRoomResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 文档从房间解绑
    @inlinable @discardableResult
    public func unbindDocumentFromRoom(_ input: UnbindDocumentFromRoomRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UnbindDocumentFromRoomResponse> {
        self.client.execute(action: "UnbindDocumentFromRoom", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 文档从房间解绑
    @inlinable @discardableResult
    public func unbindDocumentFromRoom(_ input: UnbindDocumentFromRoomRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UnbindDocumentFromRoomResponse {
        try await self.client.execute(action: "UnbindDocumentFromRoom", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 文档从房间解绑
    @inlinable @discardableResult
    public func unbindDocumentFromRoom(roomId: UInt64, documentId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UnbindDocumentFromRoomResponse> {
        self.unbindDocumentFromRoom(.init(roomId: roomId, documentId: documentId), region: region, logger: logger, on: eventLoop)
    }

    /// 文档从房间解绑
    @inlinable @discardableResult
    public func unbindDocumentFromRoom(roomId: UInt64, documentId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UnbindDocumentFromRoomResponse {
        try await self.unbindDocumentFromRoom(.init(roomId: roomId, documentId: documentId), region: region, logger: logger, on: eventLoop)
    }
}
