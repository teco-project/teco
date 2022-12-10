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

extension Eiam {
    /// 创建应用账号
    @inlinable
    public func createAppAccount(_ input: CreateAppAccountRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateAppAccountResponse > {
        self.client.execute(action: "CreateAppAccount", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 创建应用账号
    @inlinable
    public func createAppAccount(_ input: CreateAppAccountRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateAppAccountResponse {
        try await self.client.execute(action: "CreateAppAccount", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// CreateAppAccount请求参数结构体
    public struct CreateAppAccountRequest: TCRequestModel {
        /// 应用ID
        public let applicationId: String
        
        /// 账号名称
        public let accountName: String
        
        /// 账号密码
        public let password: String?
        
        /// 描述
        public let description: String?
        
        public init (applicationId: String, accountName: String, password: String?, description: String?) {
            self.applicationId = applicationId
            self.accountName = accountName
            self.password = password
            self.description = description
        }
        
        enum CodingKeys: String, CodingKey {
            case applicationId = "ApplicationId"
            case accountName = "AccountName"
            case password = "Password"
            case description = "Description"
        }
    }
    
    /// CreateAppAccount返回参数结构体
    public struct CreateAppAccountResponse: TCResponseModel {
        /// 账号ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let accountId: String?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case accountId = "AccountId"
            case requestId = "RequestId"
        }
    }
}
