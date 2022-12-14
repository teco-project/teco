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
    /// ModifyPrivateIpAddressesAttribute请求参数结构体
    public struct ModifyPrivateIpAddressesAttributeRequest: TCRequestModel {
        /// 弹性网卡实例ID，例如：eni-m6dyj72l。
        public let networkInterfaceId: String

        /// 指定的内网IP信息。
        public let privateIpAddresses: [PrivateIpAddressSpecification]

        public init(networkInterfaceId: String, privateIpAddresses: [PrivateIpAddressSpecification]) {
            self.networkInterfaceId = networkInterfaceId
            self.privateIpAddresses = privateIpAddresses
        }

        enum CodingKeys: String, CodingKey {
            case networkInterfaceId = "NetworkInterfaceId"
            case privateIpAddresses = "PrivateIpAddresses"
        }
    }

    /// ModifyPrivateIpAddressesAttribute返回参数结构体
    public struct ModifyPrivateIpAddressesAttributeResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改弹性网卡内网IP信息
    ///
    /// 本接口（ModifyPrivateIpAddressesAttribute）用于修改弹性网卡内网IP属性。
    @inlinable
    public func modifyPrivateIpAddressesAttribute(_ input: ModifyPrivateIpAddressesAttributeRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ModifyPrivateIpAddressesAttributeResponse > {
        self.client.execute(action: "ModifyPrivateIpAddressesAttribute", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改弹性网卡内网IP信息
    ///
    /// 本接口（ModifyPrivateIpAddressesAttribute）用于修改弹性网卡内网IP属性。
    @inlinable
    public func modifyPrivateIpAddressesAttribute(_ input: ModifyPrivateIpAddressesAttributeRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyPrivateIpAddressesAttributeResponse {
        try await self.client.execute(action: "ModifyPrivateIpAddressesAttribute", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改弹性网卡内网IP信息
    ///
    /// 本接口（ModifyPrivateIpAddressesAttribute）用于修改弹性网卡内网IP属性。
    @inlinable
    public func modifyPrivateIpAddressesAttribute(networkInterfaceId: String, privateIpAddresses: [PrivateIpAddressSpecification], logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ModifyPrivateIpAddressesAttributeResponse > {
        self.modifyPrivateIpAddressesAttribute(ModifyPrivateIpAddressesAttributeRequest(networkInterfaceId: networkInterfaceId, privateIpAddresses: privateIpAddresses), logger: logger, on: eventLoop)
    }

    /// 修改弹性网卡内网IP信息
    ///
    /// 本接口（ModifyPrivateIpAddressesAttribute）用于修改弹性网卡内网IP属性。
    @inlinable
    public func modifyPrivateIpAddressesAttribute(networkInterfaceId: String, privateIpAddresses: [PrivateIpAddressSpecification], logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyPrivateIpAddressesAttributeResponse {
        try await self.modifyPrivateIpAddressesAttribute(ModifyPrivateIpAddressesAttributeRequest(networkInterfaceId: networkInterfaceId, privateIpAddresses: privateIpAddresses), logger: logger, on: eventLoop)
    }
}
