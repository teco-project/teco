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

import Logging
import NIOCore
import TecoCore

extension Vpc {
    /// AssignIpv6Addresses请求参数结构体
    public struct AssignIpv6AddressesRequest: TCRequest {
        /// 弹性网卡实例`ID`，形如：`eni-m6dyj72l`。
        public let networkInterfaceId: String

        /// 指定的`IPv6`地址列表，单次最多指定10个。与入参`Ipv6AddressCount`合并计算配额。与Ipv6AddressCount必填一个。
        public let ipv6Addresses: [Ipv6Address]?

        /// 自动分配`IPv6`地址个数，内网IP地址个数总和不能超过配额数。与入参`Ipv6Addresses`合并计算配额。与Ipv6Addresses必填一个。
        public let ipv6AddressCount: UInt64?

        public init(networkInterfaceId: String, ipv6Addresses: [Ipv6Address]? = nil, ipv6AddressCount: UInt64? = nil) {
            self.networkInterfaceId = networkInterfaceId
            self.ipv6Addresses = ipv6Addresses
            self.ipv6AddressCount = ipv6AddressCount
        }

        enum CodingKeys: String, CodingKey {
            case networkInterfaceId = "NetworkInterfaceId"
            case ipv6Addresses = "Ipv6Addresses"
            case ipv6AddressCount = "Ipv6AddressCount"
        }
    }

    /// AssignIpv6Addresses返回参数结构体
    public struct AssignIpv6AddressesResponse: TCResponse {
        /// 分配给弹性网卡的`IPv6`地址列表。
        public let ipv6AddressSet: [Ipv6Address]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case ipv6AddressSet = "Ipv6AddressSet"
            case requestId = "RequestId"
        }
    }

    /// 分配IPv6地址
    ///
    /// 本接口（AssignIpv6Addresses）用于弹性网卡申请`IPv6`地址。
    ///
    /// 本接口是异步完成，如需查询异步任务执行结果，请使用本接口返回的`RequestId`轮询`DescribeVpcTaskResult`接口。
    /// * 一个弹性网卡支持绑定的IP地址是有限制的，更多资源限制信息详见[弹性网卡使用限制](/document/product/576/18527)。
    /// * 可以指定`IPv6`地址申请，地址类型不能为主`IP`，`IPv6`地址暂时只支持作为辅助`IP`。
    /// * 地址必须要在弹性网卡所在子网内，而且不能被占用。
    /// * 在弹性网卡上申请一个到多个辅助`IPv6`地址，接口会在弹性网卡所在子网段内返回指定数量的辅助`IPv6`地址。
    @inlinable
    public func assignIpv6Addresses(_ input: AssignIpv6AddressesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AssignIpv6AddressesResponse> {
        self.client.execute(action: "AssignIpv6Addresses", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 分配IPv6地址
    ///
    /// 本接口（AssignIpv6Addresses）用于弹性网卡申请`IPv6`地址。
    ///
    /// 本接口是异步完成，如需查询异步任务执行结果，请使用本接口返回的`RequestId`轮询`DescribeVpcTaskResult`接口。
    /// * 一个弹性网卡支持绑定的IP地址是有限制的，更多资源限制信息详见[弹性网卡使用限制](/document/product/576/18527)。
    /// * 可以指定`IPv6`地址申请，地址类型不能为主`IP`，`IPv6`地址暂时只支持作为辅助`IP`。
    /// * 地址必须要在弹性网卡所在子网内，而且不能被占用。
    /// * 在弹性网卡上申请一个到多个辅助`IPv6`地址，接口会在弹性网卡所在子网段内返回指定数量的辅助`IPv6`地址。
    @inlinable
    public func assignIpv6Addresses(_ input: AssignIpv6AddressesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AssignIpv6AddressesResponse {
        try await self.client.execute(action: "AssignIpv6Addresses", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 分配IPv6地址
    ///
    /// 本接口（AssignIpv6Addresses）用于弹性网卡申请`IPv6`地址。
    ///
    /// 本接口是异步完成，如需查询异步任务执行结果，请使用本接口返回的`RequestId`轮询`DescribeVpcTaskResult`接口。
    /// * 一个弹性网卡支持绑定的IP地址是有限制的，更多资源限制信息详见[弹性网卡使用限制](/document/product/576/18527)。
    /// * 可以指定`IPv6`地址申请，地址类型不能为主`IP`，`IPv6`地址暂时只支持作为辅助`IP`。
    /// * 地址必须要在弹性网卡所在子网内，而且不能被占用。
    /// * 在弹性网卡上申请一个到多个辅助`IPv6`地址，接口会在弹性网卡所在子网段内返回指定数量的辅助`IPv6`地址。
    @inlinable
    public func assignIpv6Addresses(networkInterfaceId: String, ipv6Addresses: [Ipv6Address]? = nil, ipv6AddressCount: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AssignIpv6AddressesResponse> {
        self.assignIpv6Addresses(.init(networkInterfaceId: networkInterfaceId, ipv6Addresses: ipv6Addresses, ipv6AddressCount: ipv6AddressCount), region: region, logger: logger, on: eventLoop)
    }

    /// 分配IPv6地址
    ///
    /// 本接口（AssignIpv6Addresses）用于弹性网卡申请`IPv6`地址。
    ///
    /// 本接口是异步完成，如需查询异步任务执行结果，请使用本接口返回的`RequestId`轮询`DescribeVpcTaskResult`接口。
    /// * 一个弹性网卡支持绑定的IP地址是有限制的，更多资源限制信息详见[弹性网卡使用限制](/document/product/576/18527)。
    /// * 可以指定`IPv6`地址申请，地址类型不能为主`IP`，`IPv6`地址暂时只支持作为辅助`IP`。
    /// * 地址必须要在弹性网卡所在子网内，而且不能被占用。
    /// * 在弹性网卡上申请一个到多个辅助`IPv6`地址，接口会在弹性网卡所在子网段内返回指定数量的辅助`IPv6`地址。
    @inlinable
    public func assignIpv6Addresses(networkInterfaceId: String, ipv6Addresses: [Ipv6Address]? = nil, ipv6AddressCount: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AssignIpv6AddressesResponse {
        try await self.assignIpv6Addresses(.init(networkInterfaceId: networkInterfaceId, ipv6Addresses: ipv6Addresses, ipv6AddressCount: ipv6AddressCount), region: region, logger: logger, on: eventLoop)
    }
}
