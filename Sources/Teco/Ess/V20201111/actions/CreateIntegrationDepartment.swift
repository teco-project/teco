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
    /// CreateIntegrationDepartment请求参数结构体
    public struct CreateIntegrationDepartmentRequest: TCRequest {
        /// 操作人信息，UserId必填且需拥有组织架构管理权限
        public let `operator`: UserInfo

        /// 部门名称，不超过50个字符
        public let deptName: String

        /// 电子签父部门ID，与ParentDeptOpenId二选一,优先ParentDeptId,都为空时自动填充至根节点下
        public let parentDeptId: String?

        /// 第三方平台中父部门ID,与ParentDeptId二选一,优先ParentDeptId,都为空时自动填充至根节点下
        public let parentDeptOpenId: String?

        /// 客户系统部门ID，不超过64个字符
        public let deptOpenId: String?

        /// 排序号,1~30000范围内
        public let orderNo: UInt64?

        public init(operator: UserInfo, deptName: String, parentDeptId: String? = nil, parentDeptOpenId: String? = nil, deptOpenId: String? = nil, orderNo: UInt64? = nil) {
            self.operator = `operator`
            self.deptName = deptName
            self.parentDeptId = parentDeptId
            self.parentDeptOpenId = parentDeptOpenId
            self.deptOpenId = deptOpenId
            self.orderNo = orderNo
        }

        enum CodingKeys: String, CodingKey {
            case `operator` = "Operator"
            case deptName = "DeptName"
            case parentDeptId = "ParentDeptId"
            case parentDeptOpenId = "ParentDeptOpenId"
            case deptOpenId = "DeptOpenId"
            case orderNo = "OrderNo"
        }
    }

    /// CreateIntegrationDepartment返回参数结构体
    public struct CreateIntegrationDepartmentResponse: TCResponse {
        /// 电子签部门ID
        public let deptId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case deptId = "DeptId"
            case requestId = "RequestId"
        }
    }

    /// 创建企业部门
    ///
    /// 通过此接口，创建企业的部门，支持绑定客户系统部门ID。
    @inlinable
    public func createIntegrationDepartment(_ input: CreateIntegrationDepartmentRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateIntegrationDepartmentResponse> {
        self.client.execute(action: "CreateIntegrationDepartment", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建企业部门
    ///
    /// 通过此接口，创建企业的部门，支持绑定客户系统部门ID。
    @inlinable
    public func createIntegrationDepartment(_ input: CreateIntegrationDepartmentRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateIntegrationDepartmentResponse {
        try await self.client.execute(action: "CreateIntegrationDepartment", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建企业部门
    ///
    /// 通过此接口，创建企业的部门，支持绑定客户系统部门ID。
    @inlinable
    public func createIntegrationDepartment(operator: UserInfo, deptName: String, parentDeptId: String? = nil, parentDeptOpenId: String? = nil, deptOpenId: String? = nil, orderNo: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateIntegrationDepartmentResponse> {
        self.createIntegrationDepartment(.init(operator: `operator`, deptName: deptName, parentDeptId: parentDeptId, parentDeptOpenId: parentDeptOpenId, deptOpenId: deptOpenId, orderNo: orderNo), region: region, logger: logger, on: eventLoop)
    }

    /// 创建企业部门
    ///
    /// 通过此接口，创建企业的部门，支持绑定客户系统部门ID。
    @inlinable
    public func createIntegrationDepartment(operator: UserInfo, deptName: String, parentDeptId: String? = nil, parentDeptOpenId: String? = nil, deptOpenId: String? = nil, orderNo: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateIntegrationDepartmentResponse {
        try await self.createIntegrationDepartment(.init(operator: `operator`, deptName: deptName, parentDeptId: parentDeptId, parentDeptOpenId: parentDeptOpenId, deptOpenId: deptOpenId, orderNo: orderNo), region: region, logger: logger, on: eventLoop)
    }
}
