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

extension Tiw {
    /// ApplyTiwTrial请求参数结构体
    public struct ApplyTiwTrialRequest: TCRequestModel {
        public init() {
        }
    }

    /// ApplyTiwTrial返回参数结构体
    public struct ApplyTiwTrialResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 申请互动白板试用
    ///
    /// 申请互动白板试用，默认15天
    @inlinable @discardableResult
    public func applyTiwTrial(_ input: ApplyTiwTrialRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ApplyTiwTrialResponse> {
        self.client.execute(action: "ApplyTiwTrial", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 申请互动白板试用
    ///
    /// 申请互动白板试用，默认15天
    @inlinable @discardableResult
    public func applyTiwTrial(_ input: ApplyTiwTrialRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ApplyTiwTrialResponse {
        try await self.client.execute(action: "ApplyTiwTrial", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 申请互动白板试用
    ///
    /// 申请互动白板试用，默认15天
    @inlinable @discardableResult
    public func applyTiwTrial(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ApplyTiwTrialResponse> {
        self.applyTiwTrial(.init(), region: region, logger: logger, on: eventLoop)
    }

    /// 申请互动白板试用
    ///
    /// 申请互动白板试用，默认15天
    @inlinable @discardableResult
    public func applyTiwTrial(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ApplyTiwTrialResponse {
        try await self.applyTiwTrial(.init(), region: region, logger: logger, on: eventLoop)
    }
}
