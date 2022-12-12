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
    /// DeleteCustomerGateway请求参数结构体
    public struct DeleteCustomerGatewayRequest: TCRequestModel {
        /// 对端网关ID，例如：cgw-2wqq41m9，可通过DescribeCustomerGateways接口查询对端网关。
        public let customerGatewayId: String
        
        public init (customerGatewayId: String) {
            self.customerGatewayId = customerGatewayId
        }
        
        enum CodingKeys: String, CodingKey {
            case customerGatewayId = "CustomerGatewayId"
        }
    }
    
    /// DeleteCustomerGateway返回参数结构体
    public struct DeleteCustomerGatewayResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
    
    /// 删除对端网关
    ///
    /// 本接口（DeleteCustomerGateway）用于删除对端网关。
    @inlinable
    public func deleteCustomerGateway(_ input: DeleteCustomerGatewayRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DeleteCustomerGatewayResponse > {
        self.client.execute(action: "DeleteCustomerGateway", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 删除对端网关
    ///
    /// 本接口（DeleteCustomerGateway）用于删除对端网关。
    @inlinable
    public func deleteCustomerGateway(_ input: DeleteCustomerGatewayRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteCustomerGatewayResponse {
        try await self.client.execute(action: "DeleteCustomerGateway", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
