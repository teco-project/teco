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
    /// DeleteWebPageEventLog请求参数结构体
    public struct DeleteWebPageEventLogRequest: TCRequestModel {
        public init() {
        }
    }

    /// DeleteWebPageEventLog返回参数结构体
    public struct DeleteWebPageEventLogResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除事件记录
    ///
    /// 网站防篡改-删除事件记录
    @inlinable @discardableResult
    public func deleteWebPageEventLog(_ input: DeleteWebPageEventLogRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteWebPageEventLogResponse> {
        self.client.execute(action: "DeleteWebPageEventLog", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除事件记录
    ///
    /// 网站防篡改-删除事件记录
    @inlinable @discardableResult
    public func deleteWebPageEventLog(_ input: DeleteWebPageEventLogRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteWebPageEventLogResponse {
        try await self.client.execute(action: "DeleteWebPageEventLog", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除事件记录
    ///
    /// 网站防篡改-删除事件记录
    @inlinable @discardableResult
    public func deleteWebPageEventLog(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteWebPageEventLogResponse> {
        self.deleteWebPageEventLog(.init(), region: region, logger: logger, on: eventLoop)
    }

    /// 删除事件记录
    ///
    /// 网站防篡改-删除事件记录
    @inlinable @discardableResult
    public func deleteWebPageEventLog(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteWebPageEventLogResponse {
        try await self.deleteWebPageEventLog(.init(), region: region, logger: logger, on: eventLoop)
    }
}
