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

extension Smh {
    /// 验证短信验证码
    ///
    /// 验证短信验证码以换绑官方云盘实例的超级管理员账号
    @inlinable
    public func verifySmsCode(_ input: VerifySmsCodeRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < VerifySmsCodeResponse > {
        self.client.execute(action: "VerifySmsCode", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 验证短信验证码
    ///
    /// 验证短信验证码以换绑官方云盘实例的超级管理员账号
    @inlinable
    public func verifySmsCode(_ input: VerifySmsCodeRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> VerifySmsCodeResponse {
        try await self.client.execute(action: "VerifySmsCode", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// VerifySmsCode请求参数结构体
    public struct VerifySmsCodeRequest: TCRequestModel {
        /// 验证码目的，当前支持换绑超级管理员账号，BindSuperAdmin；体验版企业升级验证ChannelUpdateVerify，等
        public let purpose: String
        
        /// 将作为超级管理员账号的手机号码
        public let phoneNumber: String
        
        /// 短信验证码
        public let code: String
        
        /// 官方云盘实例 ID
        public let instanceId: String?
        
        /// 将作为超级管理员账号的手机号码的国家代码。默认为 +86。
        public let countryCode: String?
        
        public init (purpose: String, phoneNumber: String, code: String, instanceId: String?, countryCode: String?) {
            self.purpose = purpose
            self.phoneNumber = phoneNumber
            self.code = code
            self.instanceId = instanceId
            self.countryCode = countryCode
        }
        
        enum CodingKeys: String, CodingKey {
            case purpose = "Purpose"
            case phoneNumber = "PhoneNumber"
            case code = "Code"
            case instanceId = "InstanceId"
            case countryCode = "CountryCode"
        }
    }
    
    /// VerifySmsCode返回参数结构体
    public struct VerifySmsCodeResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}