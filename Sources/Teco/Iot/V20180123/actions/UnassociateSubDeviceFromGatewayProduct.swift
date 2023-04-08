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

import TecoCore

extension Iot {
    /// UnassociateSubDeviceFromGatewayProduct请求参数结构体
    public struct UnassociateSubDeviceFromGatewayProductRequest: TCRequestModel {
        /// 子设备产品Id
        public let subDeviceProductId: String

        /// 网关设备产品Id
        public let gatewayProductId: String

        public init(subDeviceProductId: String, gatewayProductId: String) {
            self.subDeviceProductId = subDeviceProductId
            self.gatewayProductId = gatewayProductId
        }

        enum CodingKeys: String, CodingKey {
            case subDeviceProductId = "SubDeviceProductId"
            case gatewayProductId = "GatewayProductId"
        }
    }

    /// UnassociateSubDeviceFromGatewayProduct返回参数结构体
    public struct UnassociateSubDeviceFromGatewayProductResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 取消子设备产品与网关设备产品的关联
    @inlinable @discardableResult
    public func unassociateSubDeviceFromGatewayProduct(_ input: UnassociateSubDeviceFromGatewayProductRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UnassociateSubDeviceFromGatewayProductResponse> {
        self.client.execute(action: "UnassociateSubDeviceFromGatewayProduct", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 取消子设备产品与网关设备产品的关联
    @inlinable @discardableResult
    public func unassociateSubDeviceFromGatewayProduct(_ input: UnassociateSubDeviceFromGatewayProductRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UnassociateSubDeviceFromGatewayProductResponse {
        try await self.client.execute(action: "UnassociateSubDeviceFromGatewayProduct", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 取消子设备产品与网关设备产品的关联
    @inlinable @discardableResult
    public func unassociateSubDeviceFromGatewayProduct(subDeviceProductId: String, gatewayProductId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UnassociateSubDeviceFromGatewayProductResponse> {
        self.unassociateSubDeviceFromGatewayProduct(.init(subDeviceProductId: subDeviceProductId, gatewayProductId: gatewayProductId), region: region, logger: logger, on: eventLoop)
    }

    /// 取消子设备产品与网关设备产品的关联
    @inlinable @discardableResult
    public func unassociateSubDeviceFromGatewayProduct(subDeviceProductId: String, gatewayProductId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UnassociateSubDeviceFromGatewayProductResponse {
        try await self.unassociateSubDeviceFromGatewayProduct(.init(subDeviceProductId: subDeviceProductId, gatewayProductId: gatewayProductId), region: region, logger: logger, on: eventLoop)
    }
}
