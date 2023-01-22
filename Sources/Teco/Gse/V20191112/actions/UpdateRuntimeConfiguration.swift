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

extension Gse {
    /// UpdateRuntimeConfiguration请求参数结构体
    public struct UpdateRuntimeConfigurationRequest: TCRequestModel {
        /// 服务器舰队Id
        public let fleetId: String

        /// 服务器舰队配置
        public let runtimeConfiguration: RuntimeConfiguration?

        public init(fleetId: String, runtimeConfiguration: RuntimeConfiguration? = nil) {
            self.fleetId = fleetId
            self.runtimeConfiguration = runtimeConfiguration
        }

        enum CodingKeys: String, CodingKey {
            case fleetId = "FleetId"
            case runtimeConfiguration = "RuntimeConfiguration"
        }
    }

    /// UpdateRuntimeConfiguration返回参数结构体
    public struct UpdateRuntimeConfigurationResponse: TCResponseModel {
        /// 服务器舰队配置
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let runtimeConfiguration: RuntimeConfiguration?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case runtimeConfiguration = "RuntimeConfiguration"
            case requestId = "RequestId"
        }
    }

    /// 更新服务器舰队配置
    ///
    /// 此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持
    ///
    /// 本接口（UpdateRuntimeConfiguration）用于更新服务器舰队配置。
    @inlinable
    public func updateRuntimeConfiguration(_ input: UpdateRuntimeConfigurationRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateRuntimeConfigurationResponse> {
        self.client.execute(action: "UpdateRuntimeConfiguration", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 更新服务器舰队配置
    ///
    /// 此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持
    ///
    /// 本接口（UpdateRuntimeConfiguration）用于更新服务器舰队配置。
    @inlinable
    public func updateRuntimeConfiguration(_ input: UpdateRuntimeConfigurationRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateRuntimeConfigurationResponse {
        try await self.client.execute(action: "UpdateRuntimeConfiguration", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 更新服务器舰队配置
    ///
    /// 此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持
    ///
    /// 本接口（UpdateRuntimeConfiguration）用于更新服务器舰队配置。
    @inlinable
    public func updateRuntimeConfiguration(fleetId: String, runtimeConfiguration: RuntimeConfiguration? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateRuntimeConfigurationResponse> {
        self.updateRuntimeConfiguration(UpdateRuntimeConfigurationRequest(fleetId: fleetId, runtimeConfiguration: runtimeConfiguration), region: region, logger: logger, on: eventLoop)
    }

    /// 更新服务器舰队配置
    ///
    /// 此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持
    ///
    /// 本接口（UpdateRuntimeConfiguration）用于更新服务器舰队配置。
    @inlinable
    public func updateRuntimeConfiguration(fleetId: String, runtimeConfiguration: RuntimeConfiguration? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateRuntimeConfigurationResponse {
        try await self.updateRuntimeConfiguration(UpdateRuntimeConfigurationRequest(fleetId: fleetId, runtimeConfiguration: runtimeConfiguration), region: region, logger: logger, on: eventLoop)
    }
}
