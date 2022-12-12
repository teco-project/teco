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

extension Tdmq {
    /// DescribeRoles请求参数结构体
    public struct DescribeRolesRequest: TCRequestModel {
        /// 角色名称，模糊查询
        public let roleName: String?
        
        /// 起始下标，不填默认为0。
        public let offset: Int64?
        
        /// 返回数量，不填则默认为10，最大值为20。
        public let limit: Int64?
        
        /// 必填字段，集群Id
        public let clusterId: String?
        
        /// * RoleName
        /// 按照角色名进行过滤，精确查询。
        /// 类型：String
        /// 必选：否
        public let filters: [Filter]?
        
        public init (roleName: String? = nil, offset: Int64? = nil, limit: Int64? = nil, clusterId: String? = nil, filters: [Filter]? = nil) {
            self.roleName = roleName
            self.offset = offset
            self.limit = limit
            self.clusterId = clusterId
            self.filters = filters
        }
        
        enum CodingKeys: String, CodingKey {
            case roleName = "RoleName"
            case offset = "Offset"
            case limit = "Limit"
            case clusterId = "ClusterId"
            case filters = "Filters"
        }
    }
    
    /// DescribeRoles返回参数结构体
    public struct DescribeRolesResponse: TCResponseModel {
        /// 记录数。
        public let totalCount: Int64
        
        /// 角色数组。
        public let roleSets: [Role]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case roleSets = "RoleSets"
            case requestId = "RequestId"
        }
    }
    
    /// 获取角色列表
    @inlinable
    public func describeRoles(_ input: DescribeRolesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeRolesResponse > {
        self.client.execute(action: "DescribeRoles", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 获取角色列表
    @inlinable
    public func describeRoles(_ input: DescribeRolesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRolesResponse {
        try await self.client.execute(action: "DescribeRoles", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
