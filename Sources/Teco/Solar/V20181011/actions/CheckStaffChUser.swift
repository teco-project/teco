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

extension Solar {
    /// 员工渠道更改员工状态
    @inlinable
    public func checkStaffChUser(_ input: CheckStaffChUserRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CheckStaffChUserResponse > {
        self.client.execute(action: "CheckStaffChUser", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 员工渠道更改员工状态
    @inlinable
    public func checkStaffChUser(_ input: CheckStaffChUserRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CheckStaffChUserResponse {
        try await self.client.execute(action: "CheckStaffChUser", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// CheckStaffChUser请求参数结构体
    public struct CheckStaffChUserRequest: TCRequestModel {
        /// 员工ID
        public let userId: [String]
        
        /// 渠道状态：checkpass审核通过, checkreject审核拒绝, enableoperate启用, stopoperate停用
        public let operateType: String
        
        public init (userId: [String], operateType: String) {
            self.userId = userId
            self.operateType = operateType
        }
        
        enum CodingKeys: String, CodingKey {
            case userId = "UserId"
            case operateType = "OperateType"
        }
    }
    
    /// CheckStaffChUser返回参数结构体
    public struct CheckStaffChUserResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}
