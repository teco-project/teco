//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project
//
// Copyright (c) 2023 the Teco project authors
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

extension Csxg {
    /// Modify5GInstanceAttribute请求参数结构体
    public struct Modify5GInstanceAttributeRequest: TCRequest {
        public init() {
        }
    }

    /// Modify5GInstanceAttribute返回参数结构体
    public struct Modify5GInstanceAttributeResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改5G入云服务
    @inlinable @discardableResult
    public func modify5GInstanceAttribute(_ input: Modify5GInstanceAttributeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Modify5GInstanceAttributeResponse> {
        self.client.execute(action: "Modify5GInstanceAttribute", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改5G入云服务
    @inlinable @discardableResult
    public func modify5GInstanceAttribute(_ input: Modify5GInstanceAttributeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> Modify5GInstanceAttributeResponse {
        try await self.client.execute(action: "Modify5GInstanceAttribute", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改5G入云服务
    @inlinable @discardableResult
    public func modify5GInstanceAttribute(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Modify5GInstanceAttributeResponse> {
        self.modify5GInstanceAttribute(.init(), region: region, logger: logger, on: eventLoop)
    }

    /// 修改5G入云服务
    @inlinable @discardableResult
    public func modify5GInstanceAttribute(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> Modify5GInstanceAttributeResponse {
        try await self.modify5GInstanceAttribute(.init(), region: region, logger: logger, on: eventLoop)
    }
}
