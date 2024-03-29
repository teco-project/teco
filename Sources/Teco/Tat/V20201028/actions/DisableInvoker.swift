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

extension Tat {
    /// DisableInvoker请求参数结构体
    public struct DisableInvokerRequest: TCRequest {
        /// 待停止的执行器ID。
        public let invokerId: String

        public init(invokerId: String) {
            self.invokerId = invokerId
        }

        enum CodingKeys: String, CodingKey {
            case invokerId = "InvokerId"
        }
    }

    /// DisableInvoker返回参数结构体
    public struct DisableInvokerResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 停用执行器
    ///
    /// 此接口用于停止执行器。
    @inlinable @discardableResult
    public func disableInvoker(_ input: DisableInvokerRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DisableInvokerResponse> {
        self.client.execute(action: "DisableInvoker", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 停用执行器
    ///
    /// 此接口用于停止执行器。
    @inlinable @discardableResult
    public func disableInvoker(_ input: DisableInvokerRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DisableInvokerResponse {
        try await self.client.execute(action: "DisableInvoker", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 停用执行器
    ///
    /// 此接口用于停止执行器。
    @inlinable @discardableResult
    public func disableInvoker(invokerId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DisableInvokerResponse> {
        self.disableInvoker(.init(invokerId: invokerId), region: region, logger: logger, on: eventLoop)
    }

    /// 停用执行器
    ///
    /// 此接口用于停止执行器。
    @inlinable @discardableResult
    public func disableInvoker(invokerId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DisableInvokerResponse {
        try await self.disableInvoker(.init(invokerId: invokerId), region: region, logger: logger, on: eventLoop)
    }
}
