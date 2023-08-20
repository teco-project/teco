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
    /// CreateIntegrationEmployees请求参数结构体
    public struct CreateIntegrationEmployeesRequest: TCRequest {
        /// 操作人信息，userId必填
        public let `operator`: UserInfo

        /// 待创建员工的信息，不超过20个。
        /// 所有类型的企业支持的入参：Mobile和DisplayName必填,OpenId、Email和Department.DepartmentId选填，其他字段暂不支持。
        /// 企微类型的企业特有支持的入参：WeworkOpenId，传入此字段无需在传入其他信息
        public let employees: [Staff]

        /// 代理相关应用信息，如集团主企业代子企业操作的场景中ProxyOrganizationId必填
        public let agent: Agent?

        public init(operator: UserInfo, employees: [Staff], agent: Agent? = nil) {
            self.operator = `operator`
            self.employees = employees
            self.agent = agent
        }

        enum CodingKeys: String, CodingKey {
            case `operator` = "Operator"
            case employees = "Employees"
            case agent = "Agent"
        }
    }

    /// CreateIntegrationEmployees返回参数结构体
    public struct CreateIntegrationEmployeesResponse: TCResponse {
        /// 创建员工的结果
        public let createEmployeeResult: CreateStaffResult

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case createEmployeeResult = "CreateEmployeeResult"
            case requestId = "RequestId"
        }
    }

    /// 创建企业员工
    ///
    /// 创建员工,此接口会发送提醒员工实名的短信，如果通过手机号发现员工已经创建，则不会重新创建，会发送短信提醒员工实名
    /// 注意：此接口支持企微组织架构的 openid 创建员工，这种场景下传递明文的企微 openid 到WeworkOpenId字段即可（企微明文的 openid 一定要在应用的可见范围内才行），通过企微创建的员工，会发送企微消息去提醒实名
    @inlinable
    public func createIntegrationEmployees(_ input: CreateIntegrationEmployeesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateIntegrationEmployeesResponse> {
        self.client.execute(action: "CreateIntegrationEmployees", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建企业员工
    ///
    /// 创建员工,此接口会发送提醒员工实名的短信，如果通过手机号发现员工已经创建，则不会重新创建，会发送短信提醒员工实名
    /// 注意：此接口支持企微组织架构的 openid 创建员工，这种场景下传递明文的企微 openid 到WeworkOpenId字段即可（企微明文的 openid 一定要在应用的可见范围内才行），通过企微创建的员工，会发送企微消息去提醒实名
    @inlinable
    public func createIntegrationEmployees(_ input: CreateIntegrationEmployeesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateIntegrationEmployeesResponse {
        try await self.client.execute(action: "CreateIntegrationEmployees", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建企业员工
    ///
    /// 创建员工,此接口会发送提醒员工实名的短信，如果通过手机号发现员工已经创建，则不会重新创建，会发送短信提醒员工实名
    /// 注意：此接口支持企微组织架构的 openid 创建员工，这种场景下传递明文的企微 openid 到WeworkOpenId字段即可（企微明文的 openid 一定要在应用的可见范围内才行），通过企微创建的员工，会发送企微消息去提醒实名
    @inlinable
    public func createIntegrationEmployees(operator: UserInfo, employees: [Staff], agent: Agent? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateIntegrationEmployeesResponse> {
        self.createIntegrationEmployees(.init(operator: `operator`, employees: employees, agent: agent), region: region, logger: logger, on: eventLoop)
    }

    /// 创建企业员工
    ///
    /// 创建员工,此接口会发送提醒员工实名的短信，如果通过手机号发现员工已经创建，则不会重新创建，会发送短信提醒员工实名
    /// 注意：此接口支持企微组织架构的 openid 创建员工，这种场景下传递明文的企微 openid 到WeworkOpenId字段即可（企微明文的 openid 一定要在应用的可见范围内才行），通过企微创建的员工，会发送企微消息去提醒实名
    @inlinable
    public func createIntegrationEmployees(operator: UserInfo, employees: [Staff], agent: Agent? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateIntegrationEmployeesResponse {
        try await self.createIntegrationEmployees(.init(operator: `operator`, employees: employees, agent: agent), region: region, logger: logger, on: eventLoop)
    }
}
