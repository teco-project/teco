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

extension Essbasic {
    /// 个人用户通过实名认证
    ///
    /// 第三方应用可通过此接口（VerifyUser）将腾讯电子签个人用户的实名认证状态设为通过。
    /// 注：此接口为白名单接口，如您需要使用此能力，请提前与客户经理沟通或邮件至e-contract@tencent.com与我们联系。
    @inlinable
    public func verifyUser(_ input: VerifyUserRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < VerifyUserResponse > {
        self.client.execute(action: "VerifyUser", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 个人用户通过实名认证
    ///
    /// 第三方应用可通过此接口（VerifyUser）将腾讯电子签个人用户的实名认证状态设为通过。
    /// 注：此接口为白名单接口，如您需要使用此能力，请提前与客户经理沟通或邮件至e-contract@tencent.com与我们联系。
    @inlinable
    public func verifyUser(_ input: VerifyUserRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> VerifyUserResponse {
        try await self.client.execute(action: "VerifyUser", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// VerifyUser请求参数结构体
    public struct VerifyUserRequest: TCRequestModel {
        /// 调用方信息
        public let caller: Caller
        
        /// 电子签平台用户ID
        public let userId: String
        
        /// 是否需要下发个人长效证书，默认为false
        /// 注：如您有下发个人长效证书需求，请提前邮件至e-contract@oa.com进行申请。
        public let certificateRequired: Bool?
        
        public init (caller: Caller, userId: String, certificateRequired: Bool?) {
            self.caller = caller
            self.userId = userId
            self.certificateRequired = certificateRequired
        }
        
        enum CodingKeys: String, CodingKey {
            case caller = "Caller"
            case userId = "UserId"
            case certificateRequired = "CertificateRequired"
        }
    }
    
    /// VerifyUser返回参数结构体
    public struct VerifyUserResponse: TCResponseModel {
        /// 电子签平台用户ID
        public let userId: String
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case userId = "UserId"
            case requestId = "RequestId"
        }
    }
}