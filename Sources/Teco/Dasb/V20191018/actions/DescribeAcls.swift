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
    /// 查询访问权限列表
    @inlinable
    public func describeAcls(_ input: DescribeAclsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeAclsResponse > {
        self.client.execute(action: "DescribeAcls", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询访问权限列表
    @inlinable
    public func describeAcls(_ input: DescribeAclsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAclsResponse {
        try await self.client.execute(action: "DescribeAcls", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeAcls请求参数结构体
    public struct DescribeAclsRequest: TCRequestModel {
        /// 访问权限ID集合
        public let idSet: [UInt64]?
        
        /// 访问权限名称，模糊查询，最长64字符
        public let name: String?
        
        /// 分页偏移位置，默认值为0
        public let offset: UInt64?
        
        /// 每页条目数量，默认20，最大500
        public let limit: UInt64?
        
        /// 是否根据Name进行精确查询，默认值false
        public let exact: Bool?
        
        /// 有访问权限的用户ID集合
        public let authorizedUserIdSet: [UInt64]?
        
        /// 有访问权限的资产ID集合
        public let authorizedDeviceIdSet: [UInt64]?
        
        /// 访问权限状态，1 - 已生效，2 - 未生效，3 - 已过期
        public let status: UInt64?
        
        /// 部门ID，用于过滤属于某个部门的访问权限
        public let departmentId: String?
        
        public init (idSet: [UInt64]?, name: String?, offset: UInt64?, limit: UInt64?, exact: Bool?, authorizedUserIdSet: [UInt64]?, authorizedDeviceIdSet: [UInt64]?, status: UInt64?, departmentId: String?) {
            self.idSet = idSet
            self.name = name
            self.offset = offset
            self.limit = limit
            self.exact = exact
            self.authorizedUserIdSet = authorizedUserIdSet
            self.authorizedDeviceIdSet = authorizedDeviceIdSet
            self.status = status
            self.departmentId = departmentId
        }
        
        enum CodingKeys: String, CodingKey {
            case idSet = "IdSet"
            case name = "Name"
            case offset = "Offset"
            case limit = "Limit"
            case exact = "Exact"
            case authorizedUserIdSet = "AuthorizedUserIdSet"
            case authorizedDeviceIdSet = "AuthorizedDeviceIdSet"
            case status = "Status"
            case departmentId = "DepartmentId"
        }
    }
    
    /// DescribeAcls返回参数结构体
    public struct DescribeAclsResponse: TCResponseModel {
        /// 访问权限总数
        public let totalCount: UInt64
        
        /// 访问权限列表
        public let aclSet: [Acl]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case aclSet = "AclSet"
            case requestId = "RequestId"
        }
    }
}
