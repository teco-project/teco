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

extension Redis {
    /// UpgradeSmallVersion请求参数结构体
    public struct UpgradeSmallVersionRequest: TCRequest {
        /// 实例ID
        public let instanceId: String

        /// 当前redis版本
        public let currentRedisVersion: String

        /// 可升级的redis版本
        public let upgradeRedisVersion: String

        /// 1-立即升级   0-维护时间窗口升级
        public let instanceTypeUpgradeNow: Int64

        public init(instanceId: String, currentRedisVersion: String, upgradeRedisVersion: String, instanceTypeUpgradeNow: Int64) {
            self.instanceId = instanceId
            self.currentRedisVersion = currentRedisVersion
            self.upgradeRedisVersion = upgradeRedisVersion
            self.instanceTypeUpgradeNow = instanceTypeUpgradeNow
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case currentRedisVersion = "CurrentRedisVersion"
            case upgradeRedisVersion = "UpgradeRedisVersion"
            case instanceTypeUpgradeNow = "InstanceTypeUpgradeNow"
        }
    }

    /// UpgradeSmallVersion返回参数结构体
    public struct UpgradeSmallVersionResponse: TCResponse {
        /// 异步流程ID
        public let flowId: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case flowId = "FlowId"
            case requestId = "RequestId"
        }
    }

    /// 实例小版本升级接口
    ///
    /// 实例小版本升级
    @inlinable
    public func upgradeSmallVersion(_ input: UpgradeSmallVersionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpgradeSmallVersionResponse> {
        self.client.execute(action: "UpgradeSmallVersion", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 实例小版本升级接口
    ///
    /// 实例小版本升级
    @inlinable
    public func upgradeSmallVersion(_ input: UpgradeSmallVersionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpgradeSmallVersionResponse {
        try await self.client.execute(action: "UpgradeSmallVersion", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 实例小版本升级接口
    ///
    /// 实例小版本升级
    @inlinable
    public func upgradeSmallVersion(instanceId: String, currentRedisVersion: String, upgradeRedisVersion: String, instanceTypeUpgradeNow: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpgradeSmallVersionResponse> {
        self.upgradeSmallVersion(.init(instanceId: instanceId, currentRedisVersion: currentRedisVersion, upgradeRedisVersion: upgradeRedisVersion, instanceTypeUpgradeNow: instanceTypeUpgradeNow), region: region, logger: logger, on: eventLoop)
    }

    /// 实例小版本升级接口
    ///
    /// 实例小版本升级
    @inlinable
    public func upgradeSmallVersion(instanceId: String, currentRedisVersion: String, upgradeRedisVersion: String, instanceTypeUpgradeNow: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpgradeSmallVersionResponse {
        try await self.upgradeSmallVersion(.init(instanceId: instanceId, currentRedisVersion: currentRedisVersion, upgradeRedisVersion: upgradeRedisVersion, instanceTypeUpgradeNow: instanceTypeUpgradeNow), region: region, logger: logger, on: eventLoop)
    }
}
