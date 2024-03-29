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

extension Gse {
    /// DeleteGameServerSessionQueue请求参数结构体
    public struct DeleteGameServerSessionQueueRequest: TCRequest {
        /// 游戏服务器会话队列名字，长度1~128
        public let name: String

        public init(name: String) {
            self.name = name
        }

        enum CodingKeys: String, CodingKey {
            case name = "Name"
        }
    }

    /// DeleteGameServerSessionQueue返回参数结构体
    public struct DeleteGameServerSessionQueueResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除游戏服务器会话队列
    ///
    /// 本接口（DeleteGameServerSessionQueue）用于删除游戏服务器会话队列。
    @available(*, unavailable, message: "此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持")
    @inlinable @discardableResult
    public func deleteGameServerSessionQueue(_ input: DeleteGameServerSessionQueueRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteGameServerSessionQueueResponse> {
        fatalError("'DeleteGameServerSessionQueue' is no longer available.")
    }

    /// 删除游戏服务器会话队列
    ///
    /// 本接口（DeleteGameServerSessionQueue）用于删除游戏服务器会话队列。
    @available(*, unavailable, message: "此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持")
    @inlinable @discardableResult
    public func deleteGameServerSessionQueue(_ input: DeleteGameServerSessionQueueRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteGameServerSessionQueueResponse {
        fatalError("'DeleteGameServerSessionQueue' is no longer available.")
    }

    /// 删除游戏服务器会话队列
    ///
    /// 本接口（DeleteGameServerSessionQueue）用于删除游戏服务器会话队列。
    @available(*, unavailable, message: "此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持")
    @inlinable @discardableResult
    public func deleteGameServerSessionQueue(name: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteGameServerSessionQueueResponse> {
        fatalError("'DeleteGameServerSessionQueue' is no longer available.")
    }

    /// 删除游戏服务器会话队列
    ///
    /// 本接口（DeleteGameServerSessionQueue）用于删除游戏服务器会话队列。
    @available(*, unavailable, message: "此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持")
    @inlinable @discardableResult
    public func deleteGameServerSessionQueue(name: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteGameServerSessionQueueResponse {
        fatalError("'DeleteGameServerSessionQueue' is no longer available.")
    }
}
