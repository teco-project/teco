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

extension Cwp {
    /// ModifyBanStatus请求参数结构体
    public struct ModifyBanStatusRequest: TCRequest {
        /// 阻断状态 0:关闭 1:开启
        public let status: UInt64

        public init(status: UInt64) {
            self.status = status
        }

        enum CodingKeys: String, CodingKey {
            case status = "Status"
        }
    }

    /// ModifyBanStatus返回参数结构体
    public struct ModifyBanStatusResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 设置阻断开关状态
    @inlinable @discardableResult
    public func modifyBanStatus(_ input: ModifyBanStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyBanStatusResponse> {
        self.client.execute(action: "ModifyBanStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 设置阻断开关状态
    @inlinable @discardableResult
    public func modifyBanStatus(_ input: ModifyBanStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyBanStatusResponse {
        try await self.client.execute(action: "ModifyBanStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 设置阻断开关状态
    @inlinable @discardableResult
    public func modifyBanStatus(status: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyBanStatusResponse> {
        self.modifyBanStatus(.init(status: status), region: region, logger: logger, on: eventLoop)
    }

    /// 设置阻断开关状态
    @inlinable @discardableResult
    public func modifyBanStatus(status: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyBanStatusResponse {
        try await self.modifyBanStatus(.init(status: status), region: region, logger: logger, on: eventLoop)
    }
}
