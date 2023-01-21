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

extension Redis {
    /// UpgradeProxyVersion请求参数结构体
    public struct UpgradeProxyVersionRequest: TCRequestModel {
        /// 实例ID
        public let instanceId: String

        /// 当前proxy版本
        public let currentProxyVersion: String

        /// 可升级的redis版本
        public let upgradeProxyVersion: String

        /// 1-立即升级   0-维护时间窗口升级
        public let instanceTypeUpgradeNow: Int64

        public init(instanceId: String, currentProxyVersion: String, upgradeProxyVersion: String, instanceTypeUpgradeNow: Int64) {
            self.instanceId = instanceId
            self.currentProxyVersion = currentProxyVersion
            self.upgradeProxyVersion = upgradeProxyVersion
            self.instanceTypeUpgradeNow = instanceTypeUpgradeNow
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case currentProxyVersion = "CurrentProxyVersion"
            case upgradeProxyVersion = "UpgradeProxyVersion"
            case instanceTypeUpgradeNow = "InstanceTypeUpgradeNow"
        }
    }

    /// UpgradeProxyVersion返回参数结构体
    public struct UpgradeProxyVersionResponse: TCResponseModel {
        /// 异步流程ID
        public let flowId: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case flowId = "FlowId"
            case requestId = "RequestId"
        }
    }

    /// 实例proxy版本升级接口
    ///
    /// 实例proxy版本升级
    @inlinable
    public func upgradeProxyVersion(_ input: UpgradeProxyVersionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpgradeProxyVersionResponse> {
        self.client.execute(action: "UpgradeProxyVersion", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 实例proxy版本升级接口
    ///
    /// 实例proxy版本升级
    @inlinable
    public func upgradeProxyVersion(_ input: UpgradeProxyVersionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpgradeProxyVersionResponse {
        try await self.client.execute(action: "UpgradeProxyVersion", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 实例proxy版本升级接口
    ///
    /// 实例proxy版本升级
    @inlinable
    public func upgradeProxyVersion(instanceId: String, currentProxyVersion: String, upgradeProxyVersion: String, instanceTypeUpgradeNow: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpgradeProxyVersionResponse> {
        self.upgradeProxyVersion(UpgradeProxyVersionRequest(instanceId: instanceId, currentProxyVersion: currentProxyVersion, upgradeProxyVersion: upgradeProxyVersion, instanceTypeUpgradeNow: instanceTypeUpgradeNow), region: region, logger: logger, on: eventLoop)
    }

    /// 实例proxy版本升级接口
    ///
    /// 实例proxy版本升级
    @inlinable
    public func upgradeProxyVersion(instanceId: String, currentProxyVersion: String, upgradeProxyVersion: String, instanceTypeUpgradeNow: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpgradeProxyVersionResponse {
        try await self.upgradeProxyVersion(UpgradeProxyVersionRequest(instanceId: instanceId, currentProxyVersion: currentProxyVersion, upgradeProxyVersion: upgradeProxyVersion, instanceTypeUpgradeNow: instanceTypeUpgradeNow), region: region, logger: logger, on: eventLoop)
    }
}
