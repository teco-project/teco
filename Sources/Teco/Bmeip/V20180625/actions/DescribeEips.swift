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

extension Bmeip {
    /// 黑石EIP查询接口
    ///
    /// 黑石EIP查询接口
    @inlinable
    public func describeEips(_ input: DescribeEipsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeEipsResponse > {
        self.client.execute(action: "DescribeEips", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 黑石EIP查询接口
    ///
    /// 黑石EIP查询接口
    @inlinable
    public func describeEips(_ input: DescribeEipsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeEipsResponse {
        try await self.client.execute(action: "DescribeEips", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeEips请求参数结构体
    public struct DescribeEipsRequest: TCRequestModel {
        /// EIP实例ID列表
        public let eipIds: [String]?
        
        /// EIP IP 列表
        public let eips: [String]?
        
        /// 主机实例ID 列表
        public let instanceIds: [String]?
        
        /// EIP名称,模糊匹配
        public let searchKey: String?
        
        /// 状态列表, 默认所有
        public let status: [Int64]?
        
        /// 偏移量，默认为0
        public let offset: Int64?
        
        /// 返回EIP数量，默认 20, 最大值 100
        public let limit: Int64?
        
        /// 排序字段，支持： EipId,Eip,Status, InstanceId,CreatedAt
        public let orderField: String?
        
        /// 排序方式 0:递增 1:递减(默认)
        public let order: Int64?
        
        /// 计费模式,流量：flow，带宽：bandwidth
        public let payMode: String?
        
        /// EIP归属VpcId，例如vpc-k7j1t2x1
        public let vpcId: String?
        
        /// 绑定类型，-1：未绑定，0：物理机，1：nat网关，2：虚拟IP, 3:托管机器
        public let bindTypes: [Int64]?
        
        /// 独占标志，0：共享，1：独占
        public let exclusiveTag: Int64?
        
        /// EIP ACL实例ID
        public let aclId: String?
        
        /// 搜索条件，是否绑定了EIP ACL， 0：未绑定，1：绑定
        public let bindAcl: Int64?
        
        public init (eipIds: [String]?, eips: [String]?, instanceIds: [String]?, searchKey: String?, status: [Int64]?, offset: Int64?, limit: Int64?, orderField: String?, order: Int64?, payMode: String?, vpcId: String?, bindTypes: [Int64]?, exclusiveTag: Int64?, aclId: String?, bindAcl: Int64?) {
            self.eipIds = eipIds
            self.eips = eips
            self.instanceIds = instanceIds
            self.searchKey = searchKey
            self.status = status
            self.offset = offset
            self.limit = limit
            self.orderField = orderField
            self.order = order
            self.payMode = payMode
            self.vpcId = vpcId
            self.bindTypes = bindTypes
            self.exclusiveTag = exclusiveTag
            self.aclId = aclId
            self.bindAcl = bindAcl
        }
        
        enum CodingKeys: String, CodingKey {
            case eipIds = "EipIds"
            case eips = "Eips"
            case instanceIds = "InstanceIds"
            case searchKey = "SearchKey"
            case status = "Status"
            case offset = "Offset"
            case limit = "Limit"
            case orderField = "OrderField"
            case order = "Order"
            case payMode = "PayMode"
            case vpcId = "VpcId"
            case bindTypes = "BindTypes"
            case exclusiveTag = "ExclusiveTag"
            case aclId = "AclId"
            case bindAcl = "BindAcl"
        }
    }
    
    /// DescribeEips返回参数结构体
    public struct DescribeEipsResponse: TCResponseModel {
        /// 返回EIP信息数组
        public let eipSet: [EipInfo]
        
        /// 返回EIP数量
        public let totalCount: UInt64
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case eipSet = "EipSet"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }
    }
}