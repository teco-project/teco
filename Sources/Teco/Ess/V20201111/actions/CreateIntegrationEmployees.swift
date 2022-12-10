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

extension Ess {
    /// 创建员工
    @inlinable
    public func createIntegrationEmployees(_ input: CreateIntegrationEmployeesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateIntegrationEmployeesResponse > {
        self.client.execute(action: "CreateIntegrationEmployees", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 创建员工
    @inlinable
    public func createIntegrationEmployees(_ input: CreateIntegrationEmployeesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateIntegrationEmployeesResponse {
        try await self.client.execute(action: "CreateIntegrationEmployees", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// CreateIntegrationEmployees请求参数结构体
    public struct CreateIntegrationEmployeesRequest: TCRequestModel {
        /// 操作人信息，userId必填
        public let `operator`: UserInfo
        
        /// 待创建员工的信息，Mobile和DisplayName必填
        public let employees: [Staff]
        
        public init (`operator`: UserInfo, employees: [Staff]) {
            self.`operator` = `operator`
            self.employees = employees
        }
        
        enum CodingKeys: String, CodingKey {
            case `operator` = "Operator"
            case employees = "Employees"
        }
    }
    
    /// CreateIntegrationEmployees返回参数结构体
    public struct CreateIntegrationEmployeesResponse: TCResponseModel {
        /// 创建员工的结果
        public let createEmployeeResult: CreateStaffResult
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case createEmployeeResult = "CreateEmployeeResult"
            case requestId = "RequestId"
        }
    }
}
