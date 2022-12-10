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

extension Vpc {
    /// 下载VPN通道配置
    ///
    /// 本接口(DownloadCustomerGatewayConfiguration)用于下载VPN通道配置。
    @inlinable
    public func downloadCustomerGatewayConfiguration(_ input: DownloadCustomerGatewayConfigurationRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DownloadCustomerGatewayConfigurationResponse > {
        self.client.execute(action: "DownloadCustomerGatewayConfiguration", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 下载VPN通道配置
    ///
    /// 本接口(DownloadCustomerGatewayConfiguration)用于下载VPN通道配置。
    @inlinable
    public func downloadCustomerGatewayConfiguration(_ input: DownloadCustomerGatewayConfigurationRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DownloadCustomerGatewayConfigurationResponse {
        try await self.client.execute(action: "DownloadCustomerGatewayConfiguration", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DownloadCustomerGatewayConfiguration请求参数结构体
    public struct DownloadCustomerGatewayConfigurationRequest: TCRequestModel {
        /// VPN网关实例ID。
        public let vpnGatewayId: String
        
        /// VPN通道实例ID。形如：vpnx-f49l6u0z。
        public let vpnConnectionId: String
        
        /// 对端网关厂商信息对象，可通过DescribeCustomerGatewayVendors获取。
        public let customerGatewayVendor: CustomerGatewayVendor
        
        /// 通道接入设备物理接口名称。
        public let interfaceName: String
        
        public init (vpnGatewayId: String, vpnConnectionId: String, customerGatewayVendor: CustomerGatewayVendor, interfaceName: String) {
            self.vpnGatewayId = vpnGatewayId
            self.vpnConnectionId = vpnConnectionId
            self.customerGatewayVendor = customerGatewayVendor
            self.interfaceName = interfaceName
        }
        
        enum CodingKeys: String, CodingKey {
            case vpnGatewayId = "VpnGatewayId"
            case vpnConnectionId = "VpnConnectionId"
            case customerGatewayVendor = "CustomerGatewayVendor"
            case interfaceName = "InterfaceName"
        }
    }
    
    /// DownloadCustomerGatewayConfiguration返回参数结构体
    public struct DownloadCustomerGatewayConfigurationResponse: TCResponseModel {
        /// XML格式配置信息。
        public let customerGatewayConfiguration: String
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case customerGatewayConfiguration = "CustomerGatewayConfiguration"
            case requestId = "RequestId"
        }
    }
}