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

extension Bmeip {
    /// 查询弹性公网IP ACL
    @inlinable
    public func describeEipAcls(_ input: DescribeEipAclsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeEipAclsResponse > {
        self.client.execute(action: "DescribeEipAcls", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询弹性公网IP ACL
    @inlinable
    public func describeEipAcls(_ input: DescribeEipAclsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeEipAclsResponse {
        try await self.client.execute(action: "DescribeEipAcls", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeEipAcls请求参数结构体
    public struct DescribeEipAclsRequest: TCRequestModel {
        /// ACL 名称，支持模糊查找
        public let aclName: String?
        
        /// ACL 实例 ID 列表，数组下标从 0 开始
        public let aclIds: [String]?
        
        /// 分页参数。偏移量，默认为 0
        public let offset: Int64?
        
        /// 分页参数。每一页的 EIPACL 列表数目
        public let limit: Int64?
        
        /// EIP实例ID列表
        public let eipIds: [String]?
        
        /// EIP IP地址列表
        public let eipIps: [String]?
        
        /// EIP名称列表
        public let eipNames: [String]?
        
        /// 排序字段
        public let orderField: String?
        
        /// 排序方式，取值：0:增序(默认)，1:降序
        public let order: UInt64?
        
        /// ACL名称列表，支持模糊查找
        public let aclNames: [String]?
        
        public init (aclName: String?, aclIds: [String]?, offset: Int64?, limit: Int64?, eipIds: [String]?, eipIps: [String]?, eipNames: [String]?, orderField: String?, order: UInt64?, aclNames: [String]?) {
            self.aclName = aclName
            self.aclIds = aclIds
            self.offset = offset
            self.limit = limit
            self.eipIds = eipIds
            self.eipIps = eipIps
            self.eipNames = eipNames
            self.orderField = orderField
            self.order = order
            self.aclNames = aclNames
        }
        
        enum CodingKeys: String, CodingKey {
            case aclName = "AclName"
            case aclIds = "AclIds"
            case offset = "Offset"
            case limit = "Limit"
            case eipIds = "EipIds"
            case eipIps = "EipIps"
            case eipNames = "EipNames"
            case orderField = "OrderField"
            case order = "Order"
            case aclNames = "AclNames"
        }
    }
    
    /// DescribeEipAcls返回参数结构体
    public struct DescribeEipAclsResponse: TCResponseModel {
        /// 返回 EIPACL 列表总数
        public let totalCount: Int64
        
        /// EIPACL列表
        public let eipAclList: [EipAcl]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case eipAclList = "EipAclList"
            case requestId = "RequestId"
        }
    }
}
