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
    /// BindDocumentToRoom请求参数结构体
    public struct BindDocumentToRoomRequest: TCRequestModel {
        /// 房间ID。
        public let roomId: UInt64

        /// 文档ID。
        public let documentId: String

        /// 绑定类型。后台可透传到客户端，默认为0。客户端可以根据这个字段实现业务逻辑。
        public let bindType: UInt64?

        public init(roomId: UInt64, documentId: String, bindType: UInt64? = nil) {
            self.roomId = roomId
            self.documentId = documentId
            self.bindType = bindType
        }

        enum CodingKeys: String, CodingKey {
            case roomId = "RoomId"
            case documentId = "DocumentId"
            case bindType = "BindType"
        }
    }

    /// BindDocumentToRoom返回参数结构体
    public struct BindDocumentToRoomResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 绑定文档到房间
    @inlinable @discardableResult
    public func bindDocumentToRoom(_ input: BindDocumentToRoomRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<BindDocumentToRoomResponse> {
        self.client.execute(action: "BindDocumentToRoom", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 绑定文档到房间
    @inlinable @discardableResult
    public func bindDocumentToRoom(_ input: BindDocumentToRoomRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BindDocumentToRoomResponse {
        try await self.client.execute(action: "BindDocumentToRoom", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 绑定文档到房间
    @inlinable @discardableResult
    public func bindDocumentToRoom(roomId: UInt64, documentId: String, bindType: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<BindDocumentToRoomResponse> {
        self.bindDocumentToRoom(.init(roomId: roomId, documentId: documentId, bindType: bindType), region: region, logger: logger, on: eventLoop)
    }

    /// 绑定文档到房间
    @inlinable @discardableResult
    public func bindDocumentToRoom(roomId: UInt64, documentId: String, bindType: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BindDocumentToRoomResponse {
        try await self.bindDocumentToRoom(.init(roomId: roomId, documentId: documentId, bindType: bindType), region: region, logger: logger, on: eventLoop)
    }
}
