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
    /// 释放IPv6地址
    ///
    /// 本接口（UnassignIpv6Addresses）用于释放弹性网卡`IPv6`地址。<br />
    /// 本接口是异步完成，如需查询异步任务执行结果，请使用本接口返回的`RequestId`轮询`DescribeVpcTaskResult`接口。
    @inlinable
    public func unassignIpv6Addresses(_ input: UnassignIpv6AddressesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < UnassignIpv6AddressesResponse > {
        self.client.execute(action: "UnassignIpv6Addresses", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 释放IPv6地址
    ///
    /// 本接口（UnassignIpv6Addresses）用于释放弹性网卡`IPv6`地址。<br />
    /// 本接口是异步完成，如需查询异步任务执行结果，请使用本接口返回的`RequestId`轮询`DescribeVpcTaskResult`接口。
    @inlinable
    public func unassignIpv6Addresses(_ input: UnassignIpv6AddressesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UnassignIpv6AddressesResponse {
        try await self.client.execute(action: "UnassignIpv6Addresses", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// UnassignIpv6Addresses请求参数结构体
    public struct UnassignIpv6AddressesRequest: TCRequestModel {
        /// 弹性网卡实例`ID`，形如：`eni-m6dyj72l`。
        public let networkInterfaceId: String
        
        /// 指定的`IPv6`地址列表，单次最多指定10个。
        public let ipv6Addresses: [Ipv6Address]
        
        public init (networkInterfaceId: String, ipv6Addresses: [Ipv6Address]) {
            self.networkInterfaceId = networkInterfaceId
            self.ipv6Addresses = ipv6Addresses
        }
        
        enum CodingKeys: String, CodingKey {
            case networkInterfaceId = "NetworkInterfaceId"
            case ipv6Addresses = "Ipv6Addresses"
        }
    }
    
    /// UnassignIpv6Addresses返回参数结构体
    public struct UnassignIpv6AddressesResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}