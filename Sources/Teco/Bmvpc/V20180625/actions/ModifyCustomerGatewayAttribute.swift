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

extension Bmvpc {
    /// ModifyCustomerGatewayAttribute请求参数结构体
    public struct ModifyCustomerGatewayAttributeRequest: TCRequestModel {
        /// 对端网关ID，例如：bmcgw-2wqq41m9，可通过DescribeCustomerGateways接口查询对端网关。
        public let customerGatewayId: String

        /// 对端网关名称，可任意命名，但不得超过60个字符。
        public let customerGatewayName: String

        public init(customerGatewayId: String, customerGatewayName: String) {
            self.customerGatewayId = customerGatewayId
            self.customerGatewayName = customerGatewayName
        }

        enum CodingKeys: String, CodingKey {
            case customerGatewayId = "CustomerGatewayId"
            case customerGatewayName = "CustomerGatewayName"
        }
    }

    /// ModifyCustomerGatewayAttribute返回参数结构体
    public struct ModifyCustomerGatewayAttributeResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改对端网关
    ///
    /// 本接口（ModifyCustomerGatewayAttribute）用于修改对端网关信息。
    @inlinable
    public func modifyCustomerGatewayAttribute(_ input: ModifyCustomerGatewayAttributeRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ModifyCustomerGatewayAttributeResponse > {
        self.client.execute(action: "ModifyCustomerGatewayAttribute", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改对端网关
    ///
    /// 本接口（ModifyCustomerGatewayAttribute）用于修改对端网关信息。
    @inlinable
    public func modifyCustomerGatewayAttribute(_ input: ModifyCustomerGatewayAttributeRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyCustomerGatewayAttributeResponse {
        try await self.client.execute(action: "ModifyCustomerGatewayAttribute", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改对端网关
    ///
    /// 本接口（ModifyCustomerGatewayAttribute）用于修改对端网关信息。
    @inlinable
    public func modifyCustomerGatewayAttribute(customerGatewayId: String, customerGatewayName: String, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ModifyCustomerGatewayAttributeResponse > {
        self.modifyCustomerGatewayAttribute(ModifyCustomerGatewayAttributeRequest(customerGatewayId: customerGatewayId, customerGatewayName: customerGatewayName), logger: logger, on: eventLoop)
    }

    /// 修改对端网关
    ///
    /// 本接口（ModifyCustomerGatewayAttribute）用于修改对端网关信息。
    @inlinable
    public func modifyCustomerGatewayAttribute(customerGatewayId: String, customerGatewayName: String, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyCustomerGatewayAttributeResponse {
        try await self.modifyCustomerGatewayAttribute(ModifyCustomerGatewayAttributeRequest(customerGatewayId: customerGatewayId, customerGatewayName: customerGatewayName), logger: logger, on: eventLoop)
    }
}
