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
    /// DescribeVpcResource请求参数结构体
    public struct DescribeVpcResourceRequest: TCRequestModel {
        /// 私有网络实例ID
        public let vpcIds: [String]?
        
        /// 过滤条件，参数不支持同时指定SubnetIds和Filters。
        /// vpc-id - String - （过滤条件）私有网络实例ID，形如：vpc-f49l6u0z。
        /// vpc-name - String - （过滤条件）私有网络名称。
        /// zone - String - （过滤条件）可用区。
        /// state - String - （过滤条件）VPC状态。available: 运营中; pending: 创建中; failed: 创建失败; deleting: 删除中
        public let filters: [Filter]?
        
        /// 偏移量
        public let offset: UInt64?
        
        /// 返回数量
        public let limit: UInt64?
        
        /// 排序字段
        public let orderField: String?
        
        /// 排序方向, “asc”、“desc”
        public let orderDirection: String?
        
        public init (vpcIds: [String]? = nil, filters: [Filter]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, orderField: String? = nil, orderDirection: String? = nil) {
            self.vpcIds = vpcIds
            self.filters = filters
            self.offset = offset
            self.limit = limit
            self.orderField = orderField
            self.orderDirection = orderDirection
        }
        
        enum CodingKeys: String, CodingKey {
            case vpcIds = "VpcIds"
            case filters = "Filters"
            case offset = "Offset"
            case limit = "Limit"
            case orderField = "OrderField"
            case orderDirection = "OrderDirection"
        }
    }
    
    /// DescribeVpcResource返回参数结构体
    public struct DescribeVpcResourceResponse: TCResponseModel {
        /// VPC数据
        public let vpcResourceSet: [VpcResource]
        
        /// VPC个数
        public let totalCount: UInt64
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case vpcResourceSet = "VpcResourceSet"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }
    }
    
    /// 查询黑石私有网络关联资源
    @inlinable
    public func describeVpcResource(_ input: DescribeVpcResourceRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeVpcResourceResponse > {
        self.client.execute(action: "DescribeVpcResource", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询黑石私有网络关联资源
    @inlinable
    public func describeVpcResource(_ input: DescribeVpcResourceRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeVpcResourceResponse {
        try await self.client.execute(action: "DescribeVpcResource", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
