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

extension Iotexplorer {
    /// ModifyLoRaGateway请求参数结构体
    public struct ModifyLoRaGatewayRequest: TCRequest {
        /// 描述信息
        public let description: String

        /// LoRa网关Id
        public let gatewayId: String

        /// LoRa网关位置坐标
        public let location: LoRaGatewayLocation

        /// LoRa网关名称
        public let name: String

        /// 是否公开可见
        public let isPublic: Bool?

        /// 位置信息
        public let position: String?

        /// 位置详情
        public let positionDetails: String?

        /// 频点ID
        public let frequencyId: String?

        public init(description: String, gatewayId: String, location: LoRaGatewayLocation, name: String, isPublic: Bool? = nil, position: String? = nil, positionDetails: String? = nil, frequencyId: String? = nil) {
            self.description = description
            self.gatewayId = gatewayId
            self.location = location
            self.name = name
            self.isPublic = isPublic
            self.position = position
            self.positionDetails = positionDetails
            self.frequencyId = frequencyId
        }

        enum CodingKeys: String, CodingKey {
            case description = "Description"
            case gatewayId = "GatewayId"
            case location = "Location"
            case name = "Name"
            case isPublic = "IsPublic"
            case position = "Position"
            case positionDetails = "PositionDetails"
            case frequencyId = "FrequencyId"
        }
    }

    /// ModifyLoRaGateway返回参数结构体
    public struct ModifyLoRaGatewayResponse: TCResponse {
        /// 返回网关数据
        public let gateway: LoRaGatewayItem

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case gateway = "Gateway"
            case requestId = "RequestId"
        }
    }

    /// 修改 LoRa 网关信息
    @inlinable
    public func modifyLoRaGateway(_ input: ModifyLoRaGatewayRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyLoRaGatewayResponse> {
        self.client.execute(action: "ModifyLoRaGateway", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改 LoRa 网关信息
    @inlinable
    public func modifyLoRaGateway(_ input: ModifyLoRaGatewayRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyLoRaGatewayResponse {
        try await self.client.execute(action: "ModifyLoRaGateway", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改 LoRa 网关信息
    @inlinable
    public func modifyLoRaGateway(description: String, gatewayId: String, location: LoRaGatewayLocation, name: String, isPublic: Bool? = nil, position: String? = nil, positionDetails: String? = nil, frequencyId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyLoRaGatewayResponse> {
        self.modifyLoRaGateway(.init(description: description, gatewayId: gatewayId, location: location, name: name, isPublic: isPublic, position: position, positionDetails: positionDetails, frequencyId: frequencyId), region: region, logger: logger, on: eventLoop)
    }

    /// 修改 LoRa 网关信息
    @inlinable
    public func modifyLoRaGateway(description: String, gatewayId: String, location: LoRaGatewayLocation, name: String, isPublic: Bool? = nil, position: String? = nil, positionDetails: String? = nil, frequencyId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyLoRaGatewayResponse {
        try await self.modifyLoRaGateway(.init(description: description, gatewayId: gatewayId, location: location, name: name, isPublic: isPublic, position: position, positionDetails: positionDetails, frequencyId: frequencyId), region: region, logger: logger, on: eventLoop)
    }
}
