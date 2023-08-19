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

extension Gaap {
    /// ModifyRealServerName请求参数结构体
    public struct ModifyRealServerNameRequest: TCRequest {
        /// 源站名称
        public let realServerName: String

        /// 源站ID
        public let realServerId: String

        public init(realServerName: String, realServerId: String) {
            self.realServerName = realServerName
            self.realServerId = realServerId
        }

        enum CodingKeys: String, CodingKey {
            case realServerName = "RealServerName"
            case realServerId = "RealServerId"
        }
    }

    /// ModifyRealServerName返回参数结构体
    public struct ModifyRealServerNameResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改源站名称
    ///
    /// 本接口（ModifyRealServerName）用于修改源站的名称
    @inlinable @discardableResult
    public func modifyRealServerName(_ input: ModifyRealServerNameRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyRealServerNameResponse> {
        self.client.execute(action: "ModifyRealServerName", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改源站名称
    ///
    /// 本接口（ModifyRealServerName）用于修改源站的名称
    @inlinable @discardableResult
    public func modifyRealServerName(_ input: ModifyRealServerNameRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyRealServerNameResponse {
        try await self.client.execute(action: "ModifyRealServerName", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改源站名称
    ///
    /// 本接口（ModifyRealServerName）用于修改源站的名称
    @inlinable @discardableResult
    public func modifyRealServerName(realServerName: String, realServerId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyRealServerNameResponse> {
        self.modifyRealServerName(.init(realServerName: realServerName, realServerId: realServerId), region: region, logger: logger, on: eventLoop)
    }

    /// 修改源站名称
    ///
    /// 本接口（ModifyRealServerName）用于修改源站的名称
    @inlinable @discardableResult
    public func modifyRealServerName(realServerName: String, realServerId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyRealServerNameResponse {
        try await self.modifyRealServerName(.init(realServerName: realServerName, realServerId: realServerId), region: region, logger: logger, on: eventLoop)
    }
}
