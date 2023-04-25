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

// Test PR teco-project/teco-code-generator#23.

import Logging
import NIOCore
import TecoCore

extension Irp {
    /// ReportPortrait请求参数结构体
    public struct ReportPortraitRequest: TCRequestModel {
        /// 推荐平台上的业务id
        public let bid: String

        /// 上报的用户画像数组，数量不超过50
        public let portraitList: [PortraitInfo]

        public init(bid: String, portraitList: [PortraitInfo]) {
            self.bid = bid
            self.portraitList = portraitList
        }

        enum CodingKeys: String, CodingKey {
            case bid = "Bid"
            case portraitList = "PortraitList"
        }
    }

    /// ReportPortrait返回参数结构体
    public struct ReportPortraitResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 上报用户画像
    @inlinable @discardableResult
    public func reportPortrait(_ input: ReportPortraitRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ReportPortraitResponse> {
        self.client.execute(action: "ReportPortrait", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 上报用户画像
    @inlinable @discardableResult
    public func reportPortrait(_ input: ReportPortraitRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ReportPortraitResponse {
        try await self.client.execute(action: "ReportPortrait", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 上报用户画像
    @inlinable @discardableResult
    public func reportPortrait(bid: String, portraitList: [PortraitInfo], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ReportPortraitResponse> {
        self.reportPortrait(.init(bid: bid, portraitList: portraitList), region: region, logger: logger, on: eventLoop)
    }

    /// 上报用户画像
    @inlinable @discardableResult
    public func reportPortrait(bid: String, portraitList: [PortraitInfo], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ReportPortraitResponse {
        try await self.reportPortrait(.init(bid: bid, portraitList: portraitList), region: region, logger: logger, on: eventLoop)
    }
}
