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

extension Lcic {
    /// 注册用户
    ///
    /// 注册用户
    @inlinable
    public func registerUser(_ input: RegisterUserRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < RegisterUserResponse > {
        self.client.execute(action: "RegisterUser", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 注册用户
    ///
    /// 注册用户
    @inlinable
    public func registerUser(_ input: RegisterUserRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RegisterUserResponse {
        try await self.client.execute(action: "RegisterUser", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// RegisterUser请求参数结构体
    public struct RegisterUserRequest: TCRequestModel {
        /// 低代码互动课堂的SdkAppId。
        public let sdkAppId: UInt64
        
        /// 用户名称。
        public let name: String?
        
        /// 用户在客户系统的Id，需要在同一应用下唯一。
        public let originId: String?
        
        /// 用户头像。
        public let avatar: String?
        
        public init (sdkAppId: UInt64, name: String?, originId: String?, avatar: String?) {
            self.sdkAppId = sdkAppId
            self.name = name
            self.originId = originId
            self.avatar = avatar
        }
        
        enum CodingKeys: String, CodingKey {
            case sdkAppId = "SdkAppId"
            case name = "Name"
            case originId = "OriginId"
            case avatar = "Avatar"
        }
    }
    
    /// RegisterUser返回参数结构体
    public struct RegisterUserResponse: TCResponseModel {
        /// 用户Id。
        public let userId: String
        
        /// 登录/注册成功后返回登录态token。有效期7天。
        public let token: String
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case userId = "UserId"
            case token = "Token"
            case requestId = "RequestId"
        }
    }
}