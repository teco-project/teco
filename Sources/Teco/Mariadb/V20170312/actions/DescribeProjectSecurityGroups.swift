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

extension Mariadb {
    /// DescribeProjectSecurityGroups请求参数结构体
    public struct DescribeProjectSecurityGroupsRequest: TCRequestModel {
        /// 数据库引擎名称，本接口取值：mariadb。
        public let product: String
        
        /// 项目ID。
        public let projectId: Int64?
        
        public init (product: String, projectId: Int64? = nil) {
            self.product = product
            self.projectId = projectId
        }
        
        enum CodingKeys: String, CodingKey {
            case product = "Product"
            case projectId = "ProjectId"
        }
    }
    
    /// DescribeProjectSecurityGroups返回参数结构体
    public struct DescribeProjectSecurityGroupsResponse: TCResponseModel {
        /// 安全组详情。
        public let groups: [SecurityGroup]
        
        /// 安全组总数。
        public let total: UInt64
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case groups = "Groups"
            case total = "Total"
            case requestId = "RequestId"
        }
    }
    
    /// 查询项目安全组信息
    ///
    /// 本接口（DescribeProjectSecurityGroups）用于查询项目安全组信息
    @inlinable
    public func describeProjectSecurityGroups(_ input: DescribeProjectSecurityGroupsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeProjectSecurityGroupsResponse > {
        self.client.execute(action: "DescribeProjectSecurityGroups", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询项目安全组信息
    ///
    /// 本接口（DescribeProjectSecurityGroups）用于查询项目安全组信息
    @inlinable
    public func describeProjectSecurityGroups(_ input: DescribeProjectSecurityGroupsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeProjectSecurityGroupsResponse {
        try await self.client.execute(action: "DescribeProjectSecurityGroups", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
