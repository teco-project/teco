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

extension Yunjing {
    /// DeleteReverseShellEvents请求参数结构体
    public struct DeleteReverseShellEventsRequest: TCRequest {
        /// ID数组，最大100条。
        public let ids: [UInt64]

        public init(ids: [UInt64]) {
            self.ids = ids
        }

        enum CodingKeys: String, CodingKey {
            case ids = "Ids"
        }
    }

    /// DeleteReverseShellEvents返回参数结构体
    public struct DeleteReverseShellEventsResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除反弹Shell事件
    ///
    /// 根据Ids删除反弹Shell事件
    @inlinable @discardableResult
    public func deleteReverseShellEvents(_ input: DeleteReverseShellEventsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteReverseShellEventsResponse> {
        self.client.execute(action: "DeleteReverseShellEvents", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除反弹Shell事件
    ///
    /// 根据Ids删除反弹Shell事件
    @inlinable @discardableResult
    public func deleteReverseShellEvents(_ input: DeleteReverseShellEventsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteReverseShellEventsResponse {
        try await self.client.execute(action: "DeleteReverseShellEvents", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除反弹Shell事件
    ///
    /// 根据Ids删除反弹Shell事件
    @inlinable @discardableResult
    public func deleteReverseShellEvents(ids: [UInt64], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteReverseShellEventsResponse> {
        self.deleteReverseShellEvents(.init(ids: ids), region: region, logger: logger, on: eventLoop)
    }

    /// 删除反弹Shell事件
    ///
    /// 根据Ids删除反弹Shell事件
    @inlinable @discardableResult
    public func deleteReverseShellEvents(ids: [UInt64], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteReverseShellEventsResponse {
        try await self.deleteReverseShellEvents(.init(ids: ids), region: region, logger: logger, on: eventLoop)
    }
}
