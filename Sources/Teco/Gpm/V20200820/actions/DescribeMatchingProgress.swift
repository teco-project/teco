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

import TecoCore

extension Gpm {
    /// DescribeMatchingProgress请求参数结构体
    public struct DescribeMatchingProgressRequest: TCRequestModel {
        /// 匹配票据 ID列表, 列表长度 12。
        public let matchTicketIds: [MTicket]

        public init(matchTicketIds: [MTicket]) {
            self.matchTicketIds = matchTicketIds
        }

        enum CodingKeys: String, CodingKey {
            case matchTicketIds = "MatchTicketIds"
        }
    }

    /// DescribeMatchingProgress返回参数结构体
    public struct DescribeMatchingProgressResponse: TCResponseModel {
        /// 匹配票据列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let matchTickets: [MatchTicket]?

        /// 错误码
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let errCode: UInt64?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case matchTickets = "MatchTickets"
            case errCode = "ErrCode"
            case requestId = "RequestId"
        }
    }

    /// 查询匹配进度
    ///
    /// 查询匹配进度。
    @available(*, unavailable, message: "此接口无法使用，游戏玩家匹配GPM已于6.1正式下架，感谢您的支持")
    @inlinable
    public func describeMatchingProgress(_ input: DescribeMatchingProgressRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeMatchingProgressResponse> {
        fatalError("DescribeMatchingProgress is no longer available.")
    }

    /// 查询匹配进度
    ///
    /// 查询匹配进度。
    @available(*, unavailable, message: "此接口无法使用，游戏玩家匹配GPM已于6.1正式下架，感谢您的支持")
    @inlinable
    public func describeMatchingProgress(_ input: DescribeMatchingProgressRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeMatchingProgressResponse {
        fatalError("DescribeMatchingProgress is no longer available.")
    }

    /// 查询匹配进度
    ///
    /// 查询匹配进度。
    @available(*, unavailable, message: "此接口无法使用，游戏玩家匹配GPM已于6.1正式下架，感谢您的支持")
    @inlinable
    public func describeMatchingProgress(matchTicketIds: [MTicket], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeMatchingProgressResponse> {
        fatalError("DescribeMatchingProgress is no longer available.")
    }

    /// 查询匹配进度
    ///
    /// 查询匹配进度。
    @available(*, unavailable, message: "此接口无法使用，游戏玩家匹配GPM已于6.1正式下架，感谢您的支持")
    @inlinable
    public func describeMatchingProgress(matchTicketIds: [MTicket], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeMatchingProgressResponse {
        fatalError("DescribeMatchingProgress is no longer available.")
    }
}
