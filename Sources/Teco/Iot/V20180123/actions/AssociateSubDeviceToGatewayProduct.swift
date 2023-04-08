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
    /// AssociateSubDeviceToGatewayProduct请求参数结构体
    public struct AssociateSubDeviceToGatewayProductRequest: TCRequestModel {
        /// 子设备产品Id
        public let subDeviceProductId: String

        /// 网关产品Id
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

    /// AssociateSubDeviceToGatewayProduct返回参数结构体
    public struct AssociateSubDeviceToGatewayProductResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 关联子设备产品和网关产品
    @inlinable @discardableResult
    public func associateSubDeviceToGatewayProduct(_ input: AssociateSubDeviceToGatewayProductRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AssociateSubDeviceToGatewayProductResponse> {
        self.client.execute(action: "AssociateSubDeviceToGatewayProduct", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 关联子设备产品和网关产品
    @inlinable @discardableResult
    public func associateSubDeviceToGatewayProduct(_ input: AssociateSubDeviceToGatewayProductRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AssociateSubDeviceToGatewayProductResponse {
        try await self.client.execute(action: "AssociateSubDeviceToGatewayProduct", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 关联子设备产品和网关产品
    @inlinable @discardableResult
    public func associateSubDeviceToGatewayProduct(subDeviceProductId: String, gatewayProductId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AssociateSubDeviceToGatewayProductResponse> {
        self.associateSubDeviceToGatewayProduct(.init(subDeviceProductId: subDeviceProductId, gatewayProductId: gatewayProductId), region: region, logger: logger, on: eventLoop)
    }

    /// 关联子设备产品和网关产品
    @inlinable @discardableResult
    public func associateSubDeviceToGatewayProduct(subDeviceProductId: String, gatewayProductId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AssociateSubDeviceToGatewayProductResponse {
        try await self.associateSubDeviceToGatewayProduct(.init(subDeviceProductId: subDeviceProductId, gatewayProductId: gatewayProductId), region: region, logger: logger, on: eventLoop)
    }
}
