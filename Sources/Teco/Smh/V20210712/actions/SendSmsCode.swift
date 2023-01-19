//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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

extension Smh {
    /// SendSmsCode请求参数结构体
    public struct SendSmsCodeRequest: TCRequestModel {
        /// 验证码目的，当前支持换绑超级管理员账号， BindSuperAdmin；体验版企业升级，ChannelUpdateVerify等
        public let purpose: String

        /// 将作为超级管理员账号的手机号码
        public let phoneNumber: String

        /// 官方云盘实例 ID
        public let instanceId: String?

        /// 将作为超级管理员账号的手机号码的国家代码。默认为 +86。
        public let countryCode: String?

        public init(purpose: String, phoneNumber: String, instanceId: String? = nil, countryCode: String? = nil) {
            self.purpose = purpose
            self.phoneNumber = phoneNumber
            self.instanceId = instanceId
            self.countryCode = countryCode
        }

        enum CodingKeys: String, CodingKey {
            case purpose = "Purpose"
            case phoneNumber = "PhoneNumber"
            case instanceId = "InstanceId"
            case countryCode = "CountryCode"
        }
    }

    /// SendSmsCode返回参数结构体
    public struct SendSmsCodeResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 发送短信验证码
    ///
    /// 发送用于换绑官方云盘实例的超级管理员账号的短信验证码
    @inlinable
    public func sendSmsCode(_ input: SendSmsCodeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SendSmsCodeResponse> {
        self.client.execute(action: "SendSmsCode", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 发送短信验证码
    ///
    /// 发送用于换绑官方云盘实例的超级管理员账号的短信验证码
    @inlinable
    public func sendSmsCode(_ input: SendSmsCodeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SendSmsCodeResponse {
        try await self.client.execute(action: "SendSmsCode", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 发送短信验证码
    ///
    /// 发送用于换绑官方云盘实例的超级管理员账号的短信验证码
    @inlinable
    public func sendSmsCode(purpose: String, phoneNumber: String, instanceId: String? = nil, countryCode: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SendSmsCodeResponse> {
        self.sendSmsCode(SendSmsCodeRequest(purpose: purpose, phoneNumber: phoneNumber, instanceId: instanceId, countryCode: countryCode), region: region, logger: logger, on: eventLoop)
    }

    /// 发送短信验证码
    ///
    /// 发送用于换绑官方云盘实例的超级管理员账号的短信验证码
    @inlinable
    public func sendSmsCode(purpose: String, phoneNumber: String, instanceId: String? = nil, countryCode: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SendSmsCodeResponse {
        try await self.sendSmsCode(SendSmsCodeRequest(purpose: purpose, phoneNumber: phoneNumber, instanceId: instanceId, countryCode: countryCode), region: region, logger: logger, on: eventLoop)
    }
}
