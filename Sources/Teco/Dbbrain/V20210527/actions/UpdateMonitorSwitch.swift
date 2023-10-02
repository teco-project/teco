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
    /// UpdateMonitorSwitch请求参数结构体
    public struct UpdateMonitorSwitchRequest: TCRequest {
        /// 停止或重连Agent实例，支持值包括："on" - 重连实例， "off" - 停止实例。
        public let `switch`: String

        /// 实例ID。
        public let instanceId: String

        /// 服务产品类型，仅支持 "dbbrain-mysql" - 自建MySQL。
        public let product: String

        public init(switch: String, instanceId: String, product: String) {
            self.switch = `switch`
            self.instanceId = instanceId
            self.product = product
        }

        enum CodingKeys: String, CodingKey {
            case `switch` = "Switch"
            case instanceId = "InstanceId"
            case product = "Product"
        }
    }

    /// UpdateMonitorSwitch返回参数结构体
    public struct UpdateMonitorSwitchResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 更新Agent实例状态
    ///
    /// 更新Agent实例状态（停止或重连实例）
    @inlinable @discardableResult
    public func updateMonitorSwitch(_ input: UpdateMonitorSwitchRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateMonitorSwitchResponse> {
        self.client.execute(action: "UpdateMonitorSwitch", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 更新Agent实例状态
    ///
    /// 更新Agent实例状态（停止或重连实例）
    @inlinable @discardableResult
    public func updateMonitorSwitch(_ input: UpdateMonitorSwitchRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateMonitorSwitchResponse {
        try await self.client.execute(action: "UpdateMonitorSwitch", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 更新Agent实例状态
    ///
    /// 更新Agent实例状态（停止或重连实例）
    @inlinable @discardableResult
    public func updateMonitorSwitch(switch: String, instanceId: String, product: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateMonitorSwitchResponse> {
        self.updateMonitorSwitch(.init(switch: `switch`, instanceId: instanceId, product: product), region: region, logger: logger, on: eventLoop)
    }

    /// 更新Agent实例状态
    ///
    /// 更新Agent实例状态（停止或重连实例）
    @inlinable @discardableResult
    public func updateMonitorSwitch(switch: String, instanceId: String, product: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateMonitorSwitchResponse {
        try await self.updateMonitorSwitch(.init(switch: `switch`, instanceId: instanceId, product: product), region: region, logger: logger, on: eventLoop)
    }
}
