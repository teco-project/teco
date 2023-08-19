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
    /// Delete5GInstance请求参数结构体
    public struct Delete5GInstanceRequest: TCRequest {
        public init() {
        }
    }

    /// Delete5GInstance返回参数结构体
    public struct Delete5GInstanceResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除5G入云服务
    @inlinable @discardableResult
    public func delete5GInstance(_ input: Delete5GInstanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Delete5GInstanceResponse> {
        self.client.execute(action: "Delete5GInstance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除5G入云服务
    @inlinable @discardableResult
    public func delete5GInstance(_ input: Delete5GInstanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> Delete5GInstanceResponse {
        try await self.client.execute(action: "Delete5GInstance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除5G入云服务
    @inlinable @discardableResult
    public func delete5GInstance(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Delete5GInstanceResponse> {
        self.delete5GInstance(.init(), region: region, logger: logger, on: eventLoop)
    }

    /// 删除5G入云服务
    @inlinable @discardableResult
    public func delete5GInstance(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> Delete5GInstanceResponse {
        try await self.delete5GInstance(.init(), region: region, logger: logger, on: eventLoop)
    }
}
