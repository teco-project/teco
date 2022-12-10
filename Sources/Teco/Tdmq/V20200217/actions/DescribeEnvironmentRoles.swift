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

extension Tdmq {
    /// 获取命名空间角色列表
    ///
    /// 获取命名空间角色列表
    @inlinable
    public func describeEnvironmentRoles(_ input: DescribeEnvironmentRolesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeEnvironmentRolesResponse > {
        self.client.execute(action: "DescribeEnvironmentRoles", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 获取命名空间角色列表
    ///
    /// 获取命名空间角色列表
    @inlinable
    public func describeEnvironmentRoles(_ input: DescribeEnvironmentRolesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeEnvironmentRolesResponse {
        try await self.client.execute(action: "DescribeEnvironmentRoles", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeEnvironmentRoles请求参数结构体
    public struct DescribeEnvironmentRolesRequest: TCRequestModel {
        /// 必填字段，环境（命名空间）名称。
        public let environmentId: String?
        
        /// 起始下标，不填默认为0。
        public let offset: Int64?
        
        /// 返回数量，不填则默认为10，最大值为20。
        public let limit: Int64?
        
        /// 必填字段，Pulsar 集群的ID
        public let clusterId: String?
        
        /// 角色名称
        public let roleName: String?
        
        /// * RoleName
        /// 按照角色名进行过滤，精确查询。
        /// 类型：String
        /// 必选：否
        public let filters: [Filter]?
        
        public init (environmentId: String?, offset: Int64?, limit: Int64?, clusterId: String?, roleName: String?, filters: [Filter]?) {
            self.environmentId = environmentId
            self.offset = offset
            self.limit = limit
            self.clusterId = clusterId
            self.roleName = roleName
            self.filters = filters
        }
        
        enum CodingKeys: String, CodingKey {
            case environmentId = "EnvironmentId"
            case offset = "Offset"
            case limit = "Limit"
            case clusterId = "ClusterId"
            case roleName = "RoleName"
            case filters = "Filters"
        }
    }
    
    /// DescribeEnvironmentRoles返回参数结构体
    public struct DescribeEnvironmentRolesResponse: TCResponseModel {
        /// 记录数。
        public let totalCount: Int64
        
        /// 命名空间角色集合。
        public let environmentRoleSets: [EnvironmentRole]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case environmentRoleSets = "EnvironmentRoleSets"
            case requestId = "RequestId"
        }
    }
}