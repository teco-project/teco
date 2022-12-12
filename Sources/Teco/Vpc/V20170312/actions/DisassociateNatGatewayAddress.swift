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

extension Vpc {
    /// DisassociateNatGatewayAddress请求参数结构体
    public struct DisassociateNatGatewayAddressRequest: TCRequestModel {
        /// NAT网关的ID，形如：`nat-df45454`。
        public let natGatewayId: String
        
        /// 待解绑NAT网关的弹性IP数组。
        public let publicIpAddresses: [String]
        
        public init (natGatewayId: String, publicIpAddresses: [String]) {
            self.natGatewayId = natGatewayId
            self.publicIpAddresses = publicIpAddresses
        }
        
        enum CodingKeys: String, CodingKey {
            case natGatewayId = "NatGatewayId"
            case publicIpAddresses = "PublicIpAddresses"
        }
    }
    
    /// DisassociateNatGatewayAddress返回参数结构体
    public struct DisassociateNatGatewayAddressResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
    
    /// NAT网关解绑弹性IP
    ///
    /// 本接口（DisassociateNatGatewayAddress）用于NAT网关解绑弹性IP。
    @inlinable
    public func disassociateNatGatewayAddress(_ input: DisassociateNatGatewayAddressRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DisassociateNatGatewayAddressResponse > {
        self.client.execute(action: "DisassociateNatGatewayAddress", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// NAT网关解绑弹性IP
    ///
    /// 本接口（DisassociateNatGatewayAddress）用于NAT网关解绑弹性IP。
    @inlinable
    public func disassociateNatGatewayAddress(_ input: DisassociateNatGatewayAddressRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DisassociateNatGatewayAddressResponse {
        try await self.client.execute(action: "DisassociateNatGatewayAddress", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
