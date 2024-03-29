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

extension As {
    /// ClearLaunchConfigurationAttributes请求参数结构体
    public struct ClearLaunchConfigurationAttributesRequest: TCRequest {
        /// 启动配置ID。
        public let launchConfigurationId: String

        /// 是否清空数据盘信息，非必填，默认为 false。
        /// 填 true 代表清空“数据盘”信息，清空后基于此新创建的云主机将不含有任何数据盘。
        public let clearDataDisks: Bool?

        /// 是否清空云服务器主机名相关设置信息，非必填，默认为 false。
        /// 填 true 代表清空主机名设置信息，清空后基于此新创建的云主机将不设置主机名。
        public let clearHostNameSettings: Bool?

        /// 是否清空云服务器实例名相关设置信息，非必填，默认为 false。
        /// 填 true 代表清空主机名设置信息，清空后基于此新创建的云主机将按照“as-{{ 伸缩组AutoScalingGroupName }}”进行设置。
        public let clearInstanceNameSettings: Bool?

        /// 是否清空置放群组信息，非必填，默认为 false。
        /// 填 true 代表清空置放群组信息，清空后基于此新创建的云主机将不指定任何置放群组。
        public let clearDisasterRecoverGroupIds: Bool?

        public init(launchConfigurationId: String, clearDataDisks: Bool? = nil, clearHostNameSettings: Bool? = nil, clearInstanceNameSettings: Bool? = nil, clearDisasterRecoverGroupIds: Bool? = nil) {
            self.launchConfigurationId = launchConfigurationId
            self.clearDataDisks = clearDataDisks
            self.clearHostNameSettings = clearHostNameSettings
            self.clearInstanceNameSettings = clearInstanceNameSettings
            self.clearDisasterRecoverGroupIds = clearDisasterRecoverGroupIds
        }

        enum CodingKeys: String, CodingKey {
            case launchConfigurationId = "LaunchConfigurationId"
            case clearDataDisks = "ClearDataDisks"
            case clearHostNameSettings = "ClearHostNameSettings"
            case clearInstanceNameSettings = "ClearInstanceNameSettings"
            case clearDisasterRecoverGroupIds = "ClearDisasterRecoverGroupIds"
        }
    }

    /// ClearLaunchConfigurationAttributes返回参数结构体
    public struct ClearLaunchConfigurationAttributesResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 清除启动配置属性
    ///
    /// 本接口（ClearLaunchConfigurationAttributes）用于将启动配置内的特定属性完全清空。
    @inlinable @discardableResult
    public func clearLaunchConfigurationAttributes(_ input: ClearLaunchConfigurationAttributesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ClearLaunchConfigurationAttributesResponse> {
        self.client.execute(action: "ClearLaunchConfigurationAttributes", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 清除启动配置属性
    ///
    /// 本接口（ClearLaunchConfigurationAttributes）用于将启动配置内的特定属性完全清空。
    @inlinable @discardableResult
    public func clearLaunchConfigurationAttributes(_ input: ClearLaunchConfigurationAttributesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ClearLaunchConfigurationAttributesResponse {
        try await self.client.execute(action: "ClearLaunchConfigurationAttributes", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 清除启动配置属性
    ///
    /// 本接口（ClearLaunchConfigurationAttributes）用于将启动配置内的特定属性完全清空。
    @inlinable @discardableResult
    public func clearLaunchConfigurationAttributes(launchConfigurationId: String, clearDataDisks: Bool? = nil, clearHostNameSettings: Bool? = nil, clearInstanceNameSettings: Bool? = nil, clearDisasterRecoverGroupIds: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ClearLaunchConfigurationAttributesResponse> {
        self.clearLaunchConfigurationAttributes(.init(launchConfigurationId: launchConfigurationId, clearDataDisks: clearDataDisks, clearHostNameSettings: clearHostNameSettings, clearInstanceNameSettings: clearInstanceNameSettings, clearDisasterRecoverGroupIds: clearDisasterRecoverGroupIds), region: region, logger: logger, on: eventLoop)
    }

    /// 清除启动配置属性
    ///
    /// 本接口（ClearLaunchConfigurationAttributes）用于将启动配置内的特定属性完全清空。
    @inlinable @discardableResult
    public func clearLaunchConfigurationAttributes(launchConfigurationId: String, clearDataDisks: Bool? = nil, clearHostNameSettings: Bool? = nil, clearInstanceNameSettings: Bool? = nil, clearDisasterRecoverGroupIds: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ClearLaunchConfigurationAttributesResponse {
        try await self.clearLaunchConfigurationAttributes(.init(launchConfigurationId: launchConfigurationId, clearDataDisks: clearDataDisks, clearHostNameSettings: clearHostNameSettings, clearInstanceNameSettings: clearInstanceNameSettings, clearDisasterRecoverGroupIds: clearDisasterRecoverGroupIds), region: region, logger: logger, on: eventLoop)
    }
}
