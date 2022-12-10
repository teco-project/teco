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

extension Ecm {
    /// 分配IPv6地址
    ///
    /// 本接口（AssignIpv6Addresses）用于弹性网卡申请IPv6地址。
    @inlinable
    public func assignIpv6Addresses(_ input: AssignIpv6AddressesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < AssignIpv6AddressesResponse > {
        self.client.execute(action: "AssignIpv6Addresses", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 分配IPv6地址
    ///
    /// 本接口（AssignIpv6Addresses）用于弹性网卡申请IPv6地址。
    @inlinable
    public func assignIpv6Addresses(_ input: AssignIpv6AddressesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AssignIpv6AddressesResponse {
        try await self.client.execute(action: "AssignIpv6Addresses", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// AssignIpv6Addresses请求参数结构体
    public struct AssignIpv6AddressesRequest: TCRequestModel {
        /// ECM 地域
        public let ecmRegion: String
        
        /// 弹性网卡实例ID，形如：eni-1snva0vd。目前只支持主网卡上分配。
        public let networkInterfaceId: String
        
        /// 指定的IPv6地址列表，单次最多指定10个。与入参Ipv6AddressCount合并计算配额。与Ipv6AddressCount必填一个。
        public let ipv6Addresses: [Ipv6Address]?
        
        /// 自动分配IPv6地址个数，内网IP地址个数总和不能超过配数。与入参Ipv6Addresses合并计算配额。与Ipv6Addresses必填一个。
        public let ipv6AddressCount: Int64?
        
        /// ipv6运营商如下：
        /// CTCC：中国电信
        /// CUCC：中国联通
        /// CMCC：中国移动
        public let ipv6ISP: String?
        
        public init (ecmRegion: String, networkInterfaceId: String, ipv6Addresses: [Ipv6Address]?, ipv6AddressCount: Int64?, ipv6ISP: String?) {
            self.ecmRegion = ecmRegion
            self.networkInterfaceId = networkInterfaceId
            self.ipv6Addresses = ipv6Addresses
            self.ipv6AddressCount = ipv6AddressCount
            self.ipv6ISP = ipv6ISP
        }
        
        enum CodingKeys: String, CodingKey {
            case ecmRegion = "EcmRegion"
            case networkInterfaceId = "NetworkInterfaceId"
            case ipv6Addresses = "Ipv6Addresses"
            case ipv6AddressCount = "Ipv6AddressCount"
            case ipv6ISP = "Ipv6ISP"
        }
    }
    
    /// AssignIpv6Addresses返回参数结构体
    public struct AssignIpv6AddressesResponse: TCResponseModel {
        /// 分配给弹性网卡的IPv6地址列表。
        public let ipv6AddressSet: [Ipv6Address]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case ipv6AddressSet = "Ipv6AddressSet"
            case requestId = "RequestId"
        }
    }
}
