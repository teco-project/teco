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

extension Dbbrain {
    /// UpdateAgentSwitch请求参数结构体
    public struct UpdateAgentSwitchRequest: TCRequest {
        /// Agent标识。
        public let agentId: String

        /// 停止或重连Agent，支持值包括："on" - 重连Agent， "off" - 停止Agent。
        public let `switch`: String

        /// 服务产品类型，仅支持 "dbbrain-mysql" - 自建MySQL。
        public let product: String

        public init(agentId: String, switch: String, product: String) {
            self.agentId = agentId
            self.switch = `switch`
            self.product = product
        }

        enum CodingKeys: String, CodingKey {
            case agentId = "AgentId"
            case `switch` = "Switch"
            case product = "Product"
        }
    }

    /// UpdateAgentSwitch返回参数结构体
    public struct UpdateAgentSwitchResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 更新Agent状态
    ///
    /// 更新agent状态（停止或重连Agent）
    @inlinable @discardableResult
    public func updateAgentSwitch(_ input: UpdateAgentSwitchRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateAgentSwitchResponse> {
        self.client.execute(action: "UpdateAgentSwitch", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 更新Agent状态
    ///
    /// 更新agent状态（停止或重连Agent）
    @inlinable @discardableResult
    public func updateAgentSwitch(_ input: UpdateAgentSwitchRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateAgentSwitchResponse {
        try await self.client.execute(action: "UpdateAgentSwitch", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 更新Agent状态
    ///
    /// 更新agent状态（停止或重连Agent）
    @inlinable @discardableResult
    public func updateAgentSwitch(agentId: String, switch: String, product: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateAgentSwitchResponse> {
        self.updateAgentSwitch(.init(agentId: agentId, switch: `switch`, product: product), region: region, logger: logger, on: eventLoop)
    }

    /// 更新Agent状态
    ///
    /// 更新agent状态（停止或重连Agent）
    @inlinable @discardableResult
    public func updateAgentSwitch(agentId: String, switch: String, product: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateAgentSwitchResponse {
        try await self.updateAgentSwitch(.init(agentId: agentId, switch: `switch`, product: product), region: region, logger: logger, on: eventLoop)
    }
}
