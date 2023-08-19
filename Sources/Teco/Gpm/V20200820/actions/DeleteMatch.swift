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

extension Gpm {
    /// DeleteMatch请求参数结构体
    public struct DeleteMatchRequest: TCRequest {
        /// 匹配code
        public let matchCode: String

        public init(matchCode: String) {
            self.matchCode = matchCode
        }

        enum CodingKeys: String, CodingKey {
            case matchCode = "MatchCode"
        }
    }

    /// DeleteMatch返回参数结构体
    public struct DeleteMatchResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除匹配
    @available(*, unavailable, message: "此接口无法使用，游戏玩家匹配GPM已于6.1正式下架，感谢您的支持")
    @inlinable @discardableResult
    public func deleteMatch(_ input: DeleteMatchRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteMatchResponse> {
        fatalError("DeleteMatch is no longer available.")
    }

    /// 删除匹配
    @available(*, unavailable, message: "此接口无法使用，游戏玩家匹配GPM已于6.1正式下架，感谢您的支持")
    @inlinable @discardableResult
    public func deleteMatch(_ input: DeleteMatchRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteMatchResponse {
        fatalError("DeleteMatch is no longer available.")
    }

    /// 删除匹配
    @available(*, unavailable, message: "此接口无法使用，游戏玩家匹配GPM已于6.1正式下架，感谢您的支持")
    @inlinable @discardableResult
    public func deleteMatch(matchCode: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteMatchResponse> {
        fatalError("DeleteMatch is no longer available.")
    }

    /// 删除匹配
    @available(*, unavailable, message: "此接口无法使用，游戏玩家匹配GPM已于6.1正式下架，感谢您的支持")
    @inlinable @discardableResult
    public func deleteMatch(matchCode: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteMatchResponse {
        fatalError("DeleteMatch is no longer available.")
    }
}
