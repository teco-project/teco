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
    /// 查询用户组成员列表
    ///
    /// 查询用户组成员列表
    @inlinable
    public func describeUserGroupMembers(_ input: DescribeUserGroupMembersRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeUserGroupMembersResponse > {
        self.client.execute(action: "DescribeUserGroupMembers", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询用户组成员列表
    ///
    /// 查询用户组成员列表
    @inlinable
    public func describeUserGroupMembers(_ input: DescribeUserGroupMembersRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeUserGroupMembersResponse {
        try await self.client.execute(action: "DescribeUserGroupMembers", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeUserGroupMembers请求参数结构体
    public struct DescribeUserGroupMembersRequest: TCRequestModel {
        /// 用户组ID
        public let id: UInt64
        
        /// true - 查询已添加到该用户组的用户，false - 查询未添加到该用户组的用户
        public let bound: Bool
        
        /// 用户名或用户姓名，最长64个字符，模糊查询
        public let name: String?
        
        /// 分页偏移位置，默认值为0
        public let offset: UInt64?
        
        /// 每页条目数量，默认20, 最大500
        public let limit: UInt64?
        
        /// 所属部门ID
        public let departmentId: String?
        
        public init (id: UInt64, bound: Bool, name: String?, offset: UInt64?, limit: UInt64?, departmentId: String?) {
            self.id = id
            self.bound = bound
            self.name = name
            self.offset = offset
            self.limit = limit
            self.departmentId = departmentId
        }
        
        enum CodingKeys: String, CodingKey {
            case id = "Id"
            case bound = "Bound"
            case name = "Name"
            case offset = "Offset"
            case limit = "Limit"
            case departmentId = "DepartmentId"
        }
    }
    
    /// DescribeUserGroupMembers返回参数结构体
    public struct DescribeUserGroupMembersResponse: TCResponseModel {
        /// 用户组成员总数
        public let totalCount: UInt64
        
        /// 用户组成员列表
        public let userSet: [User]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case userSet = "UserSet"
            case requestId = "RequestId"
        }
    }
}