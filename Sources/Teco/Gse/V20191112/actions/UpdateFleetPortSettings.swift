//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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
    /// UpdateFleetPortSettings请求参数结构体
    public struct UpdateFleetPortSettingsRequest: TCRequestModel {
        /// 服务器舰队 Id
        public let fleetId: String

        /// 新增安全组
        public let inboundPermissionAuthorizations: [InboundPermissionAuthorization]?

        /// 移除安全组
        public let inboundPermissionRevocations: [InboundPermissionRevocations]?

        public init(fleetId: String, inboundPermissionAuthorizations: [InboundPermissionAuthorization]? = nil, inboundPermissionRevocations: [InboundPermissionRevocations]? = nil) {
            self.fleetId = fleetId
            self.inboundPermissionAuthorizations = inboundPermissionAuthorizations
            self.inboundPermissionRevocations = inboundPermissionRevocations
        }

        enum CodingKeys: String, CodingKey {
            case fleetId = "FleetId"
            case inboundPermissionAuthorizations = "InboundPermissionAuthorizations"
            case inboundPermissionRevocations = "InboundPermissionRevocations"
        }
    }

    /// UpdateFleetPortSettings返回参数结构体
    public struct UpdateFleetPortSettingsResponse: TCResponseModel {
        /// 服务部署 Id
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let fleetId: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case fleetId = "FleetId"
            case requestId = "RequestId"
        }
    }

    /// 更新服务器舰队安全组
    ///
    /// 此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持
    /// 本接口（UpdateFleetPortSettings）用于更新服务器舰队安全组。
    @inlinable
    public func updateFleetPortSettings(_ input: UpdateFleetPortSettingsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateFleetPortSettingsResponse> {
        self.client.execute(action: "UpdateFleetPortSettings", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 更新服务器舰队安全组
    ///
    /// 此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持
    /// 本接口（UpdateFleetPortSettings）用于更新服务器舰队安全组。
    @inlinable
    public func updateFleetPortSettings(_ input: UpdateFleetPortSettingsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateFleetPortSettingsResponse {
        try await self.client.execute(action: "UpdateFleetPortSettings", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 更新服务器舰队安全组
    ///
    /// 此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持
    /// 本接口（UpdateFleetPortSettings）用于更新服务器舰队安全组。
    @inlinable
    public func updateFleetPortSettings(fleetId: String, inboundPermissionAuthorizations: [InboundPermissionAuthorization]? = nil, inboundPermissionRevocations: [InboundPermissionRevocations]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateFleetPortSettingsResponse> {
        self.updateFleetPortSettings(UpdateFleetPortSettingsRequest(fleetId: fleetId, inboundPermissionAuthorizations: inboundPermissionAuthorizations, inboundPermissionRevocations: inboundPermissionRevocations), region: region, logger: logger, on: eventLoop)
    }

    /// 更新服务器舰队安全组
    ///
    /// 此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持
    /// 本接口（UpdateFleetPortSettings）用于更新服务器舰队安全组。
    @inlinable
    public func updateFleetPortSettings(fleetId: String, inboundPermissionAuthorizations: [InboundPermissionAuthorization]? = nil, inboundPermissionRevocations: [InboundPermissionRevocations]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateFleetPortSettingsResponse {
        try await self.updateFleetPortSettings(UpdateFleetPortSettingsRequest(fleetId: fleetId, inboundPermissionAuthorizations: inboundPermissionAuthorizations, inboundPermissionRevocations: inboundPermissionRevocations), region: region, logger: logger, on: eventLoop)
    }
}
