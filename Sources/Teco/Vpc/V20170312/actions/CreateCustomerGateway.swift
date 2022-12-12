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
    /// CreateCustomerGateway请求参数结构体
    public struct CreateCustomerGatewayRequest: TCRequestModel {
        /// 对端网关名称，可任意命名，但不得超过60个字符。
        public let customerGatewayName: String
        
        /// 对端网关公网IP。
        public let ipAddress: String
        
        /// 指定绑定的标签列表，例如：[{"Key": "city", "Value": "shanghai"}]
        public let tags: [Tag]?
        
        public init (customerGatewayName: String, ipAddress: String, tags: [Tag]? = nil) {
            self.customerGatewayName = customerGatewayName
            self.ipAddress = ipAddress
            self.tags = tags
        }
        
        enum CodingKeys: String, CodingKey {
            case customerGatewayName = "CustomerGatewayName"
            case ipAddress = "IpAddress"
            case tags = "Tags"
        }
    }
    
    /// CreateCustomerGateway返回参数结构体
    public struct CreateCustomerGatewayResponse: TCResponseModel {
        /// 对端网关对象
        public let customerGateway: CustomerGateway
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case customerGateway = "CustomerGateway"
            case requestId = "RequestId"
        }
    }
    
    /// 创建对端网关
    ///
    /// 本接口（CreateCustomerGateway）用于创建对端网关。
    @inlinable
    public func createCustomerGateway(_ input: CreateCustomerGatewayRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateCustomerGatewayResponse > {
        self.client.execute(action: "CreateCustomerGateway", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 创建对端网关
    ///
    /// 本接口（CreateCustomerGateway）用于创建对端网关。
    @inlinable
    public func createCustomerGateway(_ input: CreateCustomerGatewayRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateCustomerGatewayResponse {
        try await self.client.execute(action: "CreateCustomerGateway", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
