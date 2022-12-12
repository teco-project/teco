//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
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
    /// DescribeDeviceBindGateway请求参数结构体
    public struct DescribeDeviceBindGatewayRequest: TCRequestModel {
        /// 产品Id
        public let productId: String
        
        /// 设备名
        public let deviceName: String
        
        public init (productId: String, deviceName: String) {
            self.productId = productId
            self.deviceName = deviceName
        }
        
        enum CodingKeys: String, CodingKey {
            case productId = "ProductId"
            case deviceName = "DeviceName"
        }
    }
    
    /// DescribeDeviceBindGateway返回参数结构体
    public struct DescribeDeviceBindGatewayResponse: TCResponseModel {
        /// 网关产品ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let gatewayProductId: String?
        
        /// 网关设备名
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let gatewayDeviceName: String?
        
        /// 网关产品名称
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let gatewayName: String?
        
        /// 设备对应产品所属的主账号名称
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let gatewayProductOwnerName: String?
        
        /// 设备对应产品所属的主账号 UIN
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let gatewayProductOwnerUin: String?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case gatewayProductId = "GatewayProductId"
            case gatewayDeviceName = "GatewayDeviceName"
            case gatewayName = "GatewayName"
            case gatewayProductOwnerName = "GatewayProductOwnerName"
            case gatewayProductOwnerUin = "GatewayProductOwnerUin"
            case requestId = "RequestId"
        }
    }
    
    /// 查询设备绑定的网关设备
    @inlinable
    public func describeDeviceBindGateway(_ input: DescribeDeviceBindGatewayRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeDeviceBindGatewayResponse > {
        self.client.execute(action: "DescribeDeviceBindGateway", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询设备绑定的网关设备
    @inlinable
    public func describeDeviceBindGateway(_ input: DescribeDeviceBindGatewayRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDeviceBindGatewayResponse {
        try await self.client.execute(action: "DescribeDeviceBindGateway", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
