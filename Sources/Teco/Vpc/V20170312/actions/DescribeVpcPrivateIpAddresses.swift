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
    /// 查询VPC内网IP信息
    ///
    /// 本接口（DescribeVpcPrivateIpAddresses）用于查询VPC内网IP信息。<br />
    /// 只能查询已使用的IP信息，当查询未使用的IP时，本接口不会报错，但不会出现在返回结果里。
    @inlinable
    public func describeVpcPrivateIpAddresses(_ input: DescribeVpcPrivateIpAddressesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeVpcPrivateIpAddressesResponse > {
        self.client.execute(action: "DescribeVpcPrivateIpAddresses", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询VPC内网IP信息
    ///
    /// 本接口（DescribeVpcPrivateIpAddresses）用于查询VPC内网IP信息。<br />
    /// 只能查询已使用的IP信息，当查询未使用的IP时，本接口不会报错，但不会出现在返回结果里。
    @inlinable
    public func describeVpcPrivateIpAddresses(_ input: DescribeVpcPrivateIpAddressesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeVpcPrivateIpAddressesResponse {
        try await self.client.execute(action: "DescribeVpcPrivateIpAddresses", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeVpcPrivateIpAddresses请求参数结构体
    public struct DescribeVpcPrivateIpAddressesRequest: TCRequestModel {
        /// `VPC`实例`ID`，形如：`vpc-f49l6u0z`。
        public let vpcId: String
        
        /// 内网`IP`地址列表，批量查询单次请求最多支持`10`个。
        public let privateIpAddresses: [String]
        
        public init (vpcId: String, privateIpAddresses: [String]) {
            self.vpcId = vpcId
            self.privateIpAddresses = privateIpAddresses
        }
        
        enum CodingKeys: String, CodingKey {
            case vpcId = "VpcId"
            case privateIpAddresses = "PrivateIpAddresses"
        }
    }
    
    /// DescribeVpcPrivateIpAddresses返回参数结构体
    public struct DescribeVpcPrivateIpAddressesResponse: TCResponseModel {
        /// 内网`IP`地址信息列表。
        public let vpcPrivateIpAddressSet: [VpcPrivateIpAddress]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case vpcPrivateIpAddressSet = "VpcPrivateIpAddressSet"
            case requestId = "RequestId"
        }
    }
}
