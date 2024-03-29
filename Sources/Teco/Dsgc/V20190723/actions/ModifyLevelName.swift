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

extension Dsgc {
    /// ModifyLevelName请求参数结构体
    public struct ModifyLevelNameRequest: TCRequest {
        public init() {
        }
    }

    /// ModifyLevelName返回参数结构体
    public struct ModifyLevelNameResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改级别名称
    @inlinable @discardableResult
    public func modifyLevelName(_ input: ModifyLevelNameRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyLevelNameResponse> {
        self.client.execute(action: "ModifyLevelName", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改级别名称
    @inlinable @discardableResult
    public func modifyLevelName(_ input: ModifyLevelNameRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyLevelNameResponse {
        try await self.client.execute(action: "ModifyLevelName", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改级别名称
    @inlinable @discardableResult
    public func modifyLevelName(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyLevelNameResponse> {
        self.modifyLevelName(.init(), region: region, logger: logger, on: eventLoop)
    }

    /// 修改级别名称
    @inlinable @discardableResult
    public func modifyLevelName(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyLevelNameResponse {
        try await self.modifyLevelName(.init(), region: region, logger: logger, on: eventLoop)
    }
}
