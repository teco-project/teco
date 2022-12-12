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

extension Tcb {
    /// DescribeWxCloudBaseRunSubNets请求参数结构体
    public struct DescribeWxCloudBaseRunSubNetsRequest: TCRequestModel {
        /// VPC id
        public let vpcId: String
        
        /// 查询个数限制，不填或小于等于0，等于不限制
        public let limit: Int64?
        
        public init (vpcId: String, limit: Int64? = nil) {
            self.vpcId = vpcId
            self.limit = limit
        }
        
        enum CodingKeys: String, CodingKey {
            case vpcId = "VpcId"
            case limit = "Limit"
        }
    }
    
    /// DescribeWxCloudBaseRunSubNets返回参数结构体
    public struct DescribeWxCloudBaseRunSubNetsResponse: TCResponseModel {
        /// 子网Id列表
        public let subNetIds: [String]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case subNetIds = "SubNetIds"
            case requestId = "RequestId"
        }
    }
    
    /// 查询微信云托管子网
    @inlinable
    public func describeWxCloudBaseRunSubNets(_ input: DescribeWxCloudBaseRunSubNetsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeWxCloudBaseRunSubNetsResponse > {
        self.client.execute(action: "DescribeWxCloudBaseRunSubNets", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询微信云托管子网
    @inlinable
    public func describeWxCloudBaseRunSubNets(_ input: DescribeWxCloudBaseRunSubNetsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeWxCloudBaseRunSubNetsResponse {
        try await self.client.execute(action: "DescribeWxCloudBaseRunSubNets", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
