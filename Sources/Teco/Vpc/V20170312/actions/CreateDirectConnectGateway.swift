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

extension Vpc {
    /// CreateDirectConnectGateway请求参数结构体
    public struct CreateDirectConnectGatewayRequest: TCRequestModel {
        /// 专线网关名称
        public let directConnectGatewayName: String

        /// 关联网络类型，可选值：
        /// <li>VPC - 私有网络</li>
        /// <li>CCN - 云联网</li>
        public let networkType: String

        /// <li>NetworkType 为 VPC 时，这里传值为私有网络实例ID</li>
        /// <li>NetworkType 为 CCN 时，这里传值为云联网实例ID</li>
        public let networkInstanceId: String

        /// 网关类型，可选值：
        /// <li>NORMAL - （默认）标准型，注：云联网只支持标准型</li>
        /// <li>NAT - NAT型</li>NAT类型支持网络地址转换配置，类型确定后不能修改；一个私有网络可以创建一个NAT类型的专线网关和一个非NAT类型的专线网关
        public let gatewayType: String?

        /// 云联网路由发布模式，可选值：`standard`（标准模式）、`exquisite`（精细模式）。只有云联网类型专线网关才支持`ModeType`。
        public let modeType: String?

        /// 专线网关可用区
        public let zone: String?

        /// 专线网关高可用区容灾组ID
        public let haZoneGroupId: String?

        public init(directConnectGatewayName: String, networkType: String, networkInstanceId: String, gatewayType: String? = nil, modeType: String? = nil, zone: String? = nil, haZoneGroupId: String? = nil) {
            self.directConnectGatewayName = directConnectGatewayName
            self.networkType = networkType
            self.networkInstanceId = networkInstanceId
            self.gatewayType = gatewayType
            self.modeType = modeType
            self.zone = zone
            self.haZoneGroupId = haZoneGroupId
        }

        enum CodingKeys: String, CodingKey {
            case directConnectGatewayName = "DirectConnectGatewayName"
            case networkType = "NetworkType"
            case networkInstanceId = "NetworkInstanceId"
            case gatewayType = "GatewayType"
            case modeType = "ModeType"
            case zone = "Zone"
            case haZoneGroupId = "HaZoneGroupId"
        }
    }

    /// CreateDirectConnectGateway返回参数结构体
    public struct CreateDirectConnectGatewayResponse: TCResponseModel {
        /// 专线网关对象。
        public let directConnectGateway: DirectConnectGateway

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case directConnectGateway = "DirectConnectGateway"
            case requestId = "RequestId"
        }
    }

    /// 创建专线网关
    ///
    /// 本接口（CreateDirectConnectGateway）用于创建专线网关。
    @inlinable
    public func createDirectConnectGateway(_ input: CreateDirectConnectGatewayRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateDirectConnectGatewayResponse> {
        self.client.execute(action: "CreateDirectConnectGateway", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建专线网关
    ///
    /// 本接口（CreateDirectConnectGateway）用于创建专线网关。
    @inlinable
    public func createDirectConnectGateway(_ input: CreateDirectConnectGatewayRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateDirectConnectGatewayResponse {
        try await self.client.execute(action: "CreateDirectConnectGateway", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建专线网关
    ///
    /// 本接口（CreateDirectConnectGateway）用于创建专线网关。
    @inlinable
    public func createDirectConnectGateway(directConnectGatewayName: String, networkType: String, networkInstanceId: String, gatewayType: String? = nil, modeType: String? = nil, zone: String? = nil, haZoneGroupId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateDirectConnectGatewayResponse> {
        self.createDirectConnectGateway(CreateDirectConnectGatewayRequest(directConnectGatewayName: directConnectGatewayName, networkType: networkType, networkInstanceId: networkInstanceId, gatewayType: gatewayType, modeType: modeType, zone: zone, haZoneGroupId: haZoneGroupId), region: region, logger: logger, on: eventLoop)
    }

    /// 创建专线网关
    ///
    /// 本接口（CreateDirectConnectGateway）用于创建专线网关。
    @inlinable
    public func createDirectConnectGateway(directConnectGatewayName: String, networkType: String, networkInstanceId: String, gatewayType: String? = nil, modeType: String? = nil, zone: String? = nil, haZoneGroupId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateDirectConnectGatewayResponse {
        try await self.createDirectConnectGateway(CreateDirectConnectGatewayRequest(directConnectGatewayName: directConnectGatewayName, networkType: networkType, networkInstanceId: networkInstanceId, gatewayType: gatewayType, modeType: modeType, zone: zone, haZoneGroupId: haZoneGroupId), region: region, logger: logger, on: eventLoop)
    }
}
