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

extension Cdb {
    /// SwitchForUpgrade请求参数结构体
    public struct SwitchForUpgradeRequest: TCRequest {
        /// 实例 ID，格式如：cdb-c1nl9rpv，与云数据库控制台页面中显示的实例 ID 相同。
        public let instanceId: String

        public init(instanceId: String) {
            self.instanceId = instanceId
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
        }
    }

    /// SwitchForUpgrade返回参数结构体
    public struct SwitchForUpgradeResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 切换访问新实例
    ///
    /// 本接口(SwitchForUpgrade)用于切换访问新实例，针对主升级中的实例处于待切换状态时，用户可主动发起该流程。
    @inlinable @discardableResult
    public func switchForUpgrade(_ input: SwitchForUpgradeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SwitchForUpgradeResponse> {
        self.client.execute(action: "SwitchForUpgrade", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 切换访问新实例
    ///
    /// 本接口(SwitchForUpgrade)用于切换访问新实例，针对主升级中的实例处于待切换状态时，用户可主动发起该流程。
    @inlinable @discardableResult
    public func switchForUpgrade(_ input: SwitchForUpgradeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SwitchForUpgradeResponse {
        try await self.client.execute(action: "SwitchForUpgrade", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 切换访问新实例
    ///
    /// 本接口(SwitchForUpgrade)用于切换访问新实例，针对主升级中的实例处于待切换状态时，用户可主动发起该流程。
    @inlinable @discardableResult
    public func switchForUpgrade(instanceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SwitchForUpgradeResponse> {
        self.switchForUpgrade(.init(instanceId: instanceId), region: region, logger: logger, on: eventLoop)
    }

    /// 切换访问新实例
    ///
    /// 本接口(SwitchForUpgrade)用于切换访问新实例，针对主升级中的实例处于待切换状态时，用户可主动发起该流程。
    @inlinable @discardableResult
    public func switchForUpgrade(instanceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SwitchForUpgradeResponse {
        try await self.switchForUpgrade(.init(instanceId: instanceId), region: region, logger: logger, on: eventLoop)
    }
}
