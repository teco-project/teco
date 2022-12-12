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
    /// AllocateIp6AddressesBandwidth请求参数结构体
    public struct AllocateIp6AddressesBandwidthRequest: TCRequestModel {
        /// 需要开通公网访问能力的IPV6地址
        public let ip6Addresses: [String]
        
        /// 带宽，单位Mbps。默认是1Mbps
        public let internetMaxBandwidthOut: Int64?
        
        /// 网络计费模式。IPV6当前对标准账户类型支持"TRAFFIC_POSTPAID_BY_HOUR"，对传统账户类型支持"BANDWIDTH_PACKAGE"。默认网络计费模式是"TRAFFIC_POSTPAID_BY_HOUR"。
        public let internetChargeType: String?
        
        /// 带宽包id，上移账号，申请带宽包计费模式的ipv6地址需要传入.
        public let bandwidthPackageId: String?
        
        public init (ip6Addresses: [String], internetMaxBandwidthOut: Int64? = nil, internetChargeType: String? = nil, bandwidthPackageId: String? = nil) {
            self.ip6Addresses = ip6Addresses
            self.internetMaxBandwidthOut = internetMaxBandwidthOut
            self.internetChargeType = internetChargeType
            self.bandwidthPackageId = bandwidthPackageId
        }
        
        enum CodingKeys: String, CodingKey {
            case ip6Addresses = "Ip6Addresses"
            case internetMaxBandwidthOut = "InternetMaxBandwidthOut"
            case internetChargeType = "InternetChargeType"
            case bandwidthPackageId = "BandwidthPackageId"
        }
    }
    
    /// AllocateIp6AddressesBandwidth返回参数结构体
    public struct AllocateIp6AddressesBandwidthResponse: TCResponseModel {
        /// 弹性公网 IPV6 的唯一 ID 列表。
        public let addressSet: [String]
        
        /// 异步任务TaskId。可以使用[DescribeTaskResult](https://cloud.tencent.com/document/api/215/36271)接口查询任务状态。
        public let taskId: String
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case addressSet = "AddressSet"
            case taskId = "TaskId"
            case requestId = "RequestId"
        }
    }
    
    /// IPv6地址分配公网带宽
    ///
    /// 该接口用于给IPv6地址初次分配公网带宽
    @inlinable
    public func allocateIp6AddressesBandwidth(_ input: AllocateIp6AddressesBandwidthRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < AllocateIp6AddressesBandwidthResponse > {
        self.client.execute(action: "AllocateIp6AddressesBandwidth", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// IPv6地址分配公网带宽
    ///
    /// 该接口用于给IPv6地址初次分配公网带宽
    @inlinable
    public func allocateIp6AddressesBandwidth(_ input: AllocateIp6AddressesBandwidthRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AllocateIp6AddressesBandwidthResponse {
        try await self.client.execute(action: "AllocateIp6AddressesBandwidth", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
