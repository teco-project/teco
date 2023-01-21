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

extension Iotexplorer {
    /// DeleteLoRaGateway请求参数结构体
    public struct DeleteLoRaGatewayRequest: TCRequestModel {
        /// LoRa 网关 Id
        public let gatewayId: String

        public init(gatewayId: String) {
            self.gatewayId = gatewayId
        }

        enum CodingKeys: String, CodingKey {
            case gatewayId = "GatewayId"
        }
    }

    /// DeleteLoRaGateway返回参数结构体
    public struct DeleteLoRaGatewayResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除 LoRa 网关
    ///
    /// 删除  LoRa 网关的接口
    @inlinable @discardableResult
    public func deleteLoRaGateway(_ input: DeleteLoRaGatewayRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteLoRaGatewayResponse> {
        self.client.execute(action: "DeleteLoRaGateway", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除 LoRa 网关
    ///
    /// 删除  LoRa 网关的接口
    @inlinable @discardableResult
    public func deleteLoRaGateway(_ input: DeleteLoRaGatewayRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteLoRaGatewayResponse {
        try await self.client.execute(action: "DeleteLoRaGateway", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除 LoRa 网关
    ///
    /// 删除  LoRa 网关的接口
    @inlinable @discardableResult
    public func deleteLoRaGateway(gatewayId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteLoRaGatewayResponse> {
        self.deleteLoRaGateway(DeleteLoRaGatewayRequest(gatewayId: gatewayId), region: region, logger: logger, on: eventLoop)
    }

    /// 删除 LoRa 网关
    ///
    /// 删除  LoRa 网关的接口
    @inlinable @discardableResult
    public func deleteLoRaGateway(gatewayId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteLoRaGatewayResponse {
        try await self.deleteLoRaGateway(DeleteLoRaGatewayRequest(gatewayId: gatewayId), region: region, logger: logger, on: eventLoop)
    }
}
