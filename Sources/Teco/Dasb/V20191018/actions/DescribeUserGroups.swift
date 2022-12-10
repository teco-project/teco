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

extension Dasb {
    /// 查询用户组列表
    ///
    /// 查询用户组列表
    @inlinable
    public func describeUserGroups(_ input: DescribeUserGroupsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeUserGroupsResponse > {
        self.client.execute(action: "DescribeUserGroups", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询用户组列表
    ///
    /// 查询用户组列表
    @inlinable
    public func describeUserGroups(_ input: DescribeUserGroupsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeUserGroupsResponse {
        try await self.client.execute(action: "DescribeUserGroups", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeUserGroups请求参数结构体
    public struct DescribeUserGroupsRequest: TCRequestModel {
        /// 用户组ID集合
        public let idSet: [UInt64]?
        
        /// 用户组名，模糊查询,长度：0-64字符
        public let name: String?
        
        /// 分页偏移位置，默认值为0
        public let offset: UInt64?
        
        /// 每页条目数量，缺省20，最大500
        public let limit: UInt64?
        
        /// 部门ID，用于过滤属于某个部门的用户组
        public let departmentId: String?
        
        public init (idSet: [UInt64]?, name: String?, offset: UInt64?, limit: UInt64?, departmentId: String?) {
            self.idSet = idSet
            self.name = name
            self.offset = offset
            self.limit = limit
            self.departmentId = departmentId
        }
        
        enum CodingKeys: String, CodingKey {
            case idSet = "IdSet"
            case name = "Name"
            case offset = "Offset"
            case limit = "Limit"
            case departmentId = "DepartmentId"
        }
    }
    
    /// DescribeUserGroups返回参数结构体
    public struct DescribeUserGroupsResponse: TCResponseModel {
        /// 用户组总数
        public let totalCount: UInt64
        
        /// 用户组列表
        public let groupSet: [Group]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case groupSet = "GroupSet"
            case requestId = "RequestId"
        }
    }
}