//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project
//
// Copyright (c) 2022-2023 the Teco project authors
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
    /// DescribeUsers请求参数结构体
    public struct DescribeUsersRequest: TCRequestModel {
        /// 如果IdSet不为空，则忽略其他参数
        public let idSet: [UInt64]?

        /// 模糊查询，IdSet、UserName、Phone为空时才生效，对用户名和姓名进行模糊查询
        public let name: String?

        /// 分页偏移位置，默认值为0
        public let offset: UInt64?

        /// 每页条目数量，默认20, 最大500
        public let limit: UInt64?

        /// 精确查询，IdSet为空时才生效
        public let userName: String?

        /// 精确查询，IdSet、UserName为空时才生效。
        /// 大陆手机号直接填写，如果是其他国家、地区号码,按照"国家地区代码|手机号"的格式输入。如: "+852|xxxxxxxx"
        public let phone: String?

        /// 查询具有指定资产ID访问权限的用户
        public let authorizedDeviceIdSet: [UInt64]?

        /// 认证方式，0 - 本地, 1 - LDAP, 2 - OAuth, 不传为全部
        public let authTypeSet: [UInt64]?

        /// 部门ID，用于过滤属于某个部门的用户
        public let departmentId: String?

        public init(idSet: [UInt64]? = nil, name: String? = nil, offset: UInt64? = nil, limit: UInt64? = nil, userName: String? = nil, phone: String? = nil, authorizedDeviceIdSet: [UInt64]? = nil, authTypeSet: [UInt64]? = nil, departmentId: String? = nil) {
            self.idSet = idSet
            self.name = name
            self.offset = offset
            self.limit = limit
            self.userName = userName
            self.phone = phone
            self.authorizedDeviceIdSet = authorizedDeviceIdSet
            self.authTypeSet = authTypeSet
            self.departmentId = departmentId
        }

        enum CodingKeys: String, CodingKey {
            case idSet = "IdSet"
            case name = "Name"
            case offset = "Offset"
            case limit = "Limit"
            case userName = "UserName"
            case phone = "Phone"
            case authorizedDeviceIdSet = "AuthorizedDeviceIdSet"
            case authTypeSet = "AuthTypeSet"
            case departmentId = "DepartmentId"
        }
    }

    /// DescribeUsers返回参数结构体
    public struct DescribeUsersResponse: TCResponseModel {
        /// 用户总数
        public let totalCount: UInt64

        /// 用户列表
        public let userSet: [User]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case userSet = "UserSet"
            case requestId = "RequestId"
        }
    }

    /// 查询用户列表
    @inlinable
    public func describeUsers(_ input: DescribeUsersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeUsersResponse> {
        self.client.execute(action: "DescribeUsers", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询用户列表
    @inlinable
    public func describeUsers(_ input: DescribeUsersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeUsersResponse {
        try await self.client.execute(action: "DescribeUsers", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询用户列表
    @inlinable
    public func describeUsers(idSet: [UInt64]? = nil, name: String? = nil, offset: UInt64? = nil, limit: UInt64? = nil, userName: String? = nil, phone: String? = nil, authorizedDeviceIdSet: [UInt64]? = nil, authTypeSet: [UInt64]? = nil, departmentId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeUsersResponse> {
        let input = DescribeUsersRequest(idSet: idSet, name: name, offset: offset, limit: limit, userName: userName, phone: phone, authorizedDeviceIdSet: authorizedDeviceIdSet, authTypeSet: authTypeSet, departmentId: departmentId)
        return self.client.execute(action: "DescribeUsers", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询用户列表
    @inlinable
    public func describeUsers(idSet: [UInt64]? = nil, name: String? = nil, offset: UInt64? = nil, limit: UInt64? = nil, userName: String? = nil, phone: String? = nil, authorizedDeviceIdSet: [UInt64]? = nil, authTypeSet: [UInt64]? = nil, departmentId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeUsersResponse {
        let input = DescribeUsersRequest(idSet: idSet, name: name, offset: offset, limit: limit, userName: userName, phone: phone, authorizedDeviceIdSet: authorizedDeviceIdSet, authTypeSet: authTypeSet, departmentId: departmentId)
        return try await self.client.execute(action: "DescribeUsers", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
