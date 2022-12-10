//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Teco project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Iotexplorer {
    /// 批量解绑子产品
    ///
    /// 批量解绑子产品
    @inlinable
    public func unbindProducts(_ input: UnbindProductsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < UnbindProductsResponse > {
        self.client.execute(action: "UnbindProducts", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 批量解绑子产品
    ///
    /// 批量解绑子产品
    @inlinable
    public func unbindProducts(_ input: UnbindProductsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UnbindProductsResponse {
        try await self.client.execute(action: "UnbindProducts", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// UnbindProducts请求参数结构体
    public struct UnbindProductsRequest: TCRequestModel {
        /// 网关产品ID
        public let gatewayProductId: String
        
        /// 待解绑的子产品ID数组
        public let productIds: [String]
        
        public init (gatewayProductId: String, productIds: [String]) {
            self.gatewayProductId = gatewayProductId
            self.productIds = productIds
        }
        
        enum CodingKeys: String, CodingKey {
            case gatewayProductId = "GatewayProductId"
            case productIds = "ProductIds"
        }
    }
    
    /// UnbindProducts返回参数结构体
    public struct UnbindProductsResponse: TCResponseModel {
        /// 绑定了待解绑的LoRa产品下的设备的网关设备列表
        public let gatewayDeviceNames: [String]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case gatewayDeviceNames = "GatewayDeviceNames"
            case requestId = "RequestId"
        }
    }
}