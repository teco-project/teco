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

import Logging
import NIOCore
import TecoCore

extension Ess {
    /// DescribeIntegrationDepartments请求参数结构体
    public struct DescribeIntegrationDepartmentsRequest: TCRequest {
        /// 执行本接口操作的员工信息。
        /// 注: `在调用此接口时，请确保指定的员工已获得组织架构管理权限，并具备接口传入的相应资源的数据权限。`
        public let `operator`: UserInfo

        /// 查询类型，支持以下类型：
        ///
        /// - **0**：查询单个部门节点列表，不包含子节点部门信息
        /// - **1**：查询单个部门节点级一级子节点部门信息列表
        public let queryType: UInt64

        /// 代理企业和员工的信息。
        /// 在集团企业代理子企业操作的场景中，需设置此参数。在此情境下，ProxyOrganizationId（子企业的组织ID）为必填项。
        public let agent: Agent?

        /// 查询的部门ID。
        /// 注：`如果同时指定了DeptId与DeptOpenId参数，系统将优先使用DeptId参数进行查询。当二者都未指定时，系统将返回根节点部门数据。`
        public let deptId: String?

        /// 查询的客户系统部门ID。
        /// 注：`如果同时指定了DeptId与DeptOpenId参数，系统将优先使用DeptId参数进行查询。当二者都未指定时，系统将返回根节点部门数据。`
        public let deptOpenId: String?

        public init(operator: UserInfo, queryType: UInt64, agent: Agent? = nil, deptId: String? = nil, deptOpenId: String? = nil) {
            self.operator = `operator`
            self.queryType = queryType
            self.agent = agent
            self.deptId = deptId
            self.deptOpenId = deptOpenId
        }

        enum CodingKeys: String, CodingKey {
            case `operator` = "Operator"
            case queryType = "QueryType"
            case agent = "Agent"
            case deptId = "DeptId"
            case deptOpenId = "DeptOpenId"
        }
    }

    /// DescribeIntegrationDepartments返回参数结构体
    public struct DescribeIntegrationDepartmentsResponse: TCResponse {
        /// 部门信息列表。部门信息根据部门排序号OrderNo降序排列，根据部门创建时间升序排列。
        public let departments: [IntegrationDepartment]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case departments = "Departments"
            case requestId = "RequestId"
        }
    }

    /// 获取企业部门信息列表
    ///
    /// 此接口（DescribeIntegrationDepartments）用于查询企业的部门信息列表，支持查询单个部门节点或单个部门节点及一级子节点部门列表。
    @inlinable
    public func describeIntegrationDepartments(_ input: DescribeIntegrationDepartmentsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeIntegrationDepartmentsResponse> {
        self.client.execute(action: "DescribeIntegrationDepartments", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取企业部门信息列表
    ///
    /// 此接口（DescribeIntegrationDepartments）用于查询企业的部门信息列表，支持查询单个部门节点或单个部门节点及一级子节点部门列表。
    @inlinable
    public func describeIntegrationDepartments(_ input: DescribeIntegrationDepartmentsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeIntegrationDepartmentsResponse {
        try await self.client.execute(action: "DescribeIntegrationDepartments", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取企业部门信息列表
    ///
    /// 此接口（DescribeIntegrationDepartments）用于查询企业的部门信息列表，支持查询单个部门节点或单个部门节点及一级子节点部门列表。
    @inlinable
    public func describeIntegrationDepartments(operator: UserInfo, queryType: UInt64, agent: Agent? = nil, deptId: String? = nil, deptOpenId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeIntegrationDepartmentsResponse> {
        self.describeIntegrationDepartments(.init(operator: `operator`, queryType: queryType, agent: agent, deptId: deptId, deptOpenId: deptOpenId), region: region, logger: logger, on: eventLoop)
    }

    /// 获取企业部门信息列表
    ///
    /// 此接口（DescribeIntegrationDepartments）用于查询企业的部门信息列表，支持查询单个部门节点或单个部门节点及一级子节点部门列表。
    @inlinable
    public func describeIntegrationDepartments(operator: UserInfo, queryType: UInt64, agent: Agent? = nil, deptId: String? = nil, deptOpenId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeIntegrationDepartmentsResponse {
        try await self.describeIntegrationDepartments(.init(operator: `operator`, queryType: queryType, agent: agent, deptId: deptId, deptOpenId: deptOpenId), region: region, logger: logger, on: eventLoop)
    }
}
