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

extension Dasb {
    /// 查询堡垒机服务信息
    ///
    /// 查询用户购买的堡垒机服务信息，包括资源ID、授权点数、VPC、过期时间等。
    @inlinable
    public func describeResources(_ input: DescribeResourcesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeResourcesResponse > {
        self.client.execute(action: "DescribeResources", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询堡垒机服务信息
    ///
    /// 查询用户购买的堡垒机服务信息，包括资源ID、授权点数、VPC、过期时间等。
    @inlinable
    public func describeResources(_ input: DescribeResourcesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeResourcesResponse {
        try await self.client.execute(action: "DescribeResources", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeResources请求参数结构体
    public struct DescribeResourcesRequest: TCRequestModel {
        /// 地域码, 如: ap-guangzhou
        public let apCode: String?
        
        /// 按照堡垒机开通的 VPC 实例ID查询
        public let vpcId: String?
        
        /// 资源ID集合，当传入ID集合时忽略 ApCode 和 VpcId
        public let resourceIds: [String]?
        
        public init (apCode: String?, vpcId: String?, resourceIds: [String]?) {
            self.apCode = apCode
            self.vpcId = vpcId
            self.resourceIds = resourceIds
        }
        
        enum CodingKeys: String, CodingKey {
            case apCode = "ApCode"
            case vpcId = "VpcId"
            case resourceIds = "ResourceIds"
        }
    }
    
    /// DescribeResources返回参数结构体
    public struct DescribeResourcesResponse: TCResponseModel {
        /// 堡垒机资源列表
        public let resourceSet: [Resource]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case resourceSet = "ResourceSet"
            case requestId = "RequestId"
        }
    }
}
