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

extension Cam {
    /// UpdateUser请求参数结构体
    public struct UpdateUserRequest: TCRequestModel {
        /// 子用户用户名
        public let name: String
        
        /// 子用户备注
        public let remark: String?
        
        /// 子用户是否可以登录控制台。传0子用户无法登录控制台，传1子用户可以登录控制台。
        public let consoleLogin: UInt64?
        
        /// 子用户控制台登录密码，若未进行密码规则设置则默认密码规则为8位以上同时包含大小写字母、数字和特殊字符。只有可以登录控制台时才有效，如果传空并且上面指定允许登录控制台，则自动生成随机密码，随机密码规则为32位包含大小写字母、数字和特殊字符。
        public let password: String?
        
        /// 子用户是否要在下次登录时重置密码。传0子用户下次登录控制台不需重置密码，传1子用户下次登录控制台需要重置密码。
        public let needResetPassword: UInt64?
        
        /// 手机号
        public let phoneNum: String?
        
        /// 区号
        public let countryCode: String?
        
        /// 邮箱
        public let email: String?
        
        public init (name: String, remark: String? = nil, consoleLogin: UInt64? = nil, password: String? = nil, needResetPassword: UInt64? = nil, phoneNum: String? = nil, countryCode: String? = nil, email: String? = nil) {
            self.name = name
            self.remark = remark
            self.consoleLogin = consoleLogin
            self.password = password
            self.needResetPassword = needResetPassword
            self.phoneNum = phoneNum
            self.countryCode = countryCode
            self.email = email
        }
        
        enum CodingKeys: String, CodingKey {
            case name = "Name"
            case remark = "Remark"
            case consoleLogin = "ConsoleLogin"
            case password = "Password"
            case needResetPassword = "NeedResetPassword"
            case phoneNum = "PhoneNum"
            case countryCode = "CountryCode"
            case email = "Email"
        }
    }
    
    /// UpdateUser返回参数结构体
    public struct UpdateUserResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
    
    /// 更新子用户
    @inlinable
    public func updateUser(_ input: UpdateUserRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < UpdateUserResponse > {
        self.client.execute(action: "UpdateUser", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 更新子用户
    @inlinable
    public func updateUser(_ input: UpdateUserRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateUserResponse {
        try await self.client.execute(action: "UpdateUser", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
