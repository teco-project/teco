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
    /// DescribeDefaultSubnet请求参数结构体
    public struct DescribeDefaultSubnetRequest: TCRequestModel {
        /// ECM地域
        public let ecmRegion: String
        
        /// ECM可用区
        public let zone: String
        
        public init (ecmRegion: String, zone: String) {
            self.ecmRegion = ecmRegion
            self.zone = zone
        }
        
        enum CodingKeys: String, CodingKey {
            case ecmRegion = "EcmRegion"
            case zone = "Zone"
        }
    }
    
    /// DescribeDefaultSubnet返回参数结构体
    public struct DescribeDefaultSubnetResponse: TCResponseModel {
        /// 默认子网信息，若无子网，则为空数据。
        public let subnet: Subnet
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case subnet = "Subnet"
            case requestId = "RequestId"
        }
    }
    
    /// 查询可用区的默认子网
    @inlinable
    public func describeDefaultSubnet(_ input: DescribeDefaultSubnetRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeDefaultSubnetResponse > {
        self.client.execute(action: "DescribeDefaultSubnet", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询可用区的默认子网
    @inlinable
    public func describeDefaultSubnet(_ input: DescribeDefaultSubnetRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDefaultSubnetResponse {
        try await self.client.execute(action: "DescribeDefaultSubnet", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
