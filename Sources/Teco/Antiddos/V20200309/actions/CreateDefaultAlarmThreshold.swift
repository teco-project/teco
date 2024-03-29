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

extension Antiddos {
    /// CreateDefaultAlarmThreshold请求参数结构体
    public struct CreateDefaultAlarmThresholdRequest: TCRequest {
        /// 默认告警阈值配置
        public let defaultAlarmConfig: DefaultAlarmThreshold

        /// 产品类型，取值[
        /// bgp(表示高防包产品)
        /// bgpip(表示高防IP产品)
        /// ]
        public let instanceType: String

        public init(defaultAlarmConfig: DefaultAlarmThreshold, instanceType: String) {
            self.defaultAlarmConfig = defaultAlarmConfig
            self.instanceType = instanceType
        }

        enum CodingKeys: String, CodingKey {
            case defaultAlarmConfig = "DefaultAlarmConfig"
            case instanceType = "InstanceType"
        }
    }

    /// CreateDefaultAlarmThreshold返回参数结构体
    public struct CreateDefaultAlarmThresholdResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 设置单IP默认告警阈值配置
    @inlinable @discardableResult
    public func createDefaultAlarmThreshold(_ input: CreateDefaultAlarmThresholdRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateDefaultAlarmThresholdResponse> {
        self.client.execute(action: "CreateDefaultAlarmThreshold", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 设置单IP默认告警阈值配置
    @inlinable @discardableResult
    public func createDefaultAlarmThreshold(_ input: CreateDefaultAlarmThresholdRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateDefaultAlarmThresholdResponse {
        try await self.client.execute(action: "CreateDefaultAlarmThreshold", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 设置单IP默认告警阈值配置
    @inlinable @discardableResult
    public func createDefaultAlarmThreshold(defaultAlarmConfig: DefaultAlarmThreshold, instanceType: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateDefaultAlarmThresholdResponse> {
        self.createDefaultAlarmThreshold(.init(defaultAlarmConfig: defaultAlarmConfig, instanceType: instanceType), region: region, logger: logger, on: eventLoop)
    }

    /// 设置单IP默认告警阈值配置
    @inlinable @discardableResult
    public func createDefaultAlarmThreshold(defaultAlarmConfig: DefaultAlarmThreshold, instanceType: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateDefaultAlarmThresholdResponse {
        try await self.createDefaultAlarmThreshold(.init(defaultAlarmConfig: defaultAlarmConfig, instanceType: instanceType), region: region, logger: logger, on: eventLoop)
    }
}
