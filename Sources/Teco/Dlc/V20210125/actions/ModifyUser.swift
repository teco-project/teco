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

extension Dlc {
    /// ModifyUser请求参数结构体
    public struct ModifyUserRequest: TCRequestModel {
        /// 用户Id，和CAM侧Uin匹配
        public let userId: String
        
        /// 用户描述
        public let userDescription: String
        
        public init (userId: String, userDescription: String) {
            self.userId = userId
            self.userDescription = userDescription
        }
        
        enum CodingKeys: String, CodingKey {
            case userId = "UserId"
            case userDescription = "UserDescription"
        }
    }
    
    /// ModifyUser返回参数结构体
    public struct ModifyUserResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
    
    /// 修改用户信息
    @inlinable
    public func modifyUser(_ input: ModifyUserRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ModifyUserResponse > {
        self.client.execute(action: "ModifyUser", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 修改用户信息
    @inlinable
    public func modifyUser(_ input: ModifyUserRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyUserResponse {
        try await self.client.execute(action: "ModifyUser", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
