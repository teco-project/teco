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

extension Cwp {
    /// StopNoticeBanTips请求参数结构体
    public struct StopNoticeBanTipsRequest: TCRequestModel {
        public init() {
        }
    }

    /// StopNoticeBanTips返回参数结构体
    public struct StopNoticeBanTipsResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 不再提醒爆破阻断提示弹窗
    @inlinable @discardableResult
    public func stopNoticeBanTips(_ input: StopNoticeBanTipsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StopNoticeBanTipsResponse> {
        self.client.execute(action: "StopNoticeBanTips", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 不再提醒爆破阻断提示弹窗
    @inlinable @discardableResult
    public func stopNoticeBanTips(_ input: StopNoticeBanTipsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StopNoticeBanTipsResponse {
        try await self.client.execute(action: "StopNoticeBanTips", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 不再提醒爆破阻断提示弹窗
    @inlinable @discardableResult
    public func stopNoticeBanTips(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StopNoticeBanTipsResponse> {
        self.stopNoticeBanTips(.init(), region: region, logger: logger, on: eventLoop)
    }

    /// 不再提醒爆破阻断提示弹窗
    @inlinable @discardableResult
    public func stopNoticeBanTips(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StopNoticeBanTipsResponse {
        try await self.stopNoticeBanTips(.init(), region: region, logger: logger, on: eventLoop)
    }
}
