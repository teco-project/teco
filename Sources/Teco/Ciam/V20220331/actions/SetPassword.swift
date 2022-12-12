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

extension Ciam {
    /// SetPassword请求参数结构体
    public struct SetPasswordRequest: TCRequestModel {
        /// 用户目录ID
        public let userStoreId: String
        
        /// 用户ID
        public let userId: String
        
        /// 密码
        public let password: String
        
        public init (userStoreId: String, userId: String, password: String) {
            self.userStoreId = userStoreId
            self.userId = userId
            self.password = password
        }
        
        enum CodingKeys: String, CodingKey {
            case userStoreId = "UserStoreId"
            case userId = "UserId"
            case password = "Password"
        }
    }
    
    /// SetPassword返回参数结构体
    public struct SetPasswordResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
    
    /// 设置用户密码
    @inlinable
    public func setPassword(_ input: SetPasswordRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < SetPasswordResponse > {
        self.client.execute(action: "SetPassword", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 设置用户密码
    @inlinable
    public func setPassword(_ input: SetPasswordRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SetPasswordResponse {
        try await self.client.execute(action: "SetPassword", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
