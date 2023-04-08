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
    /// CancelMatching请求参数结构体
    public struct CancelMatchingRequest: TCRequestModel {
        /// 匹配 Code
        public let matchCode: String

        /// 要取消的匹配匹配票据 ID
        public let matchTicketId: String

        public init(matchCode: String, matchTicketId: String) {
            self.matchCode = matchCode
            self.matchTicketId = matchTicketId
        }

        enum CodingKeys: String, CodingKey {
            case matchCode = "MatchCode"
            case matchTicketId = "MatchTicketId"
        }
    }

    /// CancelMatching返回参数结构体
    public struct CancelMatchingResponse: TCResponseModel {
        /// 错误码
        public let errCode: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case errCode = "ErrCode"
            case requestId = "RequestId"
        }
    }

    /// 取消匹配
    ///
    /// 取消匹配。
    @available(*, unavailable, message: "此接口无法使用，游戏玩家匹配GPM已于6.1正式下架，感谢您的支持")
    @inlinable
    public func cancelMatching(_ input: CancelMatchingRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CancelMatchingResponse> {
        fatalError("CancelMatching is no longer available.")
    }

    /// 取消匹配
    ///
    /// 取消匹配。
    @available(*, unavailable, message: "此接口无法使用，游戏玩家匹配GPM已于6.1正式下架，感谢您的支持")
    @inlinable
    public func cancelMatching(_ input: CancelMatchingRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CancelMatchingResponse {
        fatalError("CancelMatching is no longer available.")
    }

    /// 取消匹配
    ///
    /// 取消匹配。
    @available(*, unavailable, message: "此接口无法使用，游戏玩家匹配GPM已于6.1正式下架，感谢您的支持")
    @inlinable
    public func cancelMatching(matchCode: String, matchTicketId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CancelMatchingResponse> {
        fatalError("CancelMatching is no longer available.")
    }

    /// 取消匹配
    ///
    /// 取消匹配。
    @available(*, unavailable, message: "此接口无法使用，游戏玩家匹配GPM已于6.1正式下架，感谢您的支持")
    @inlinable
    public func cancelMatching(matchCode: String, matchTicketId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CancelMatchingResponse {
        fatalError("CancelMatching is no longer available.")
    }
}
