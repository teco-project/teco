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
    /// CreateIPAlarmThresholdConfig请求参数结构体
    public struct CreateIPAlarmThresholdConfigRequest: TCRequest {
        /// IP告警阈值配置列表
        public let ipAlarmThresholdConfigList: [IPAlarmThresholdRelation]

        public init(ipAlarmThresholdConfigList: [IPAlarmThresholdRelation]) {
            self.ipAlarmThresholdConfigList = ipAlarmThresholdConfigList
        }

        enum CodingKeys: String, CodingKey {
            case ipAlarmThresholdConfigList = "IpAlarmThresholdConfigList"
        }
    }

    /// CreateIPAlarmThresholdConfig返回参数结构体
    public struct CreateIPAlarmThresholdConfigResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 设置单IP告警阈值配置
    @inlinable @discardableResult
    public func createIPAlarmThresholdConfig(_ input: CreateIPAlarmThresholdConfigRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateIPAlarmThresholdConfigResponse> {
        self.client.execute(action: "CreateIPAlarmThresholdConfig", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 设置单IP告警阈值配置
    @inlinable @discardableResult
    public func createIPAlarmThresholdConfig(_ input: CreateIPAlarmThresholdConfigRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateIPAlarmThresholdConfigResponse {
        try await self.client.execute(action: "CreateIPAlarmThresholdConfig", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 设置单IP告警阈值配置
    @inlinable @discardableResult
    public func createIPAlarmThresholdConfig(ipAlarmThresholdConfigList: [IPAlarmThresholdRelation], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateIPAlarmThresholdConfigResponse> {
        self.createIPAlarmThresholdConfig(.init(ipAlarmThresholdConfigList: ipAlarmThresholdConfigList), region: region, logger: logger, on: eventLoop)
    }

    /// 设置单IP告警阈值配置
    @inlinable @discardableResult
    public func createIPAlarmThresholdConfig(ipAlarmThresholdConfigList: [IPAlarmThresholdRelation], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateIPAlarmThresholdConfigResponse {
        try await self.createIPAlarmThresholdConfig(.init(ipAlarmThresholdConfigList: ipAlarmThresholdConfigList), region: region, logger: logger, on: eventLoop)
    }
}
