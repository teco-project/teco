//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project
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

import Logging
import NIOCore
import TecoCore

extension Faceid {
    /// EncryptedPhoneVerification请求参数结构体
    public struct EncryptedPhoneVerificationRequest: TCRequestModel {
        /// 身份证号，加密方式以EncryptionMode为准
        public let idCard: String

        /// 姓名，加密方式以EncryptionMode为准
        public let name: String

        /// 手机号，加密方式以EncryptionMode为准
        public let phone: String

        /// 敏感信息的加密方式，目前支持明文、MD5和SHA256加密传输，参数取值：
        ///
        /// 0：明文，不加密
        /// 1:   使用MD5加密
        /// 2:   使用SHA256
        public let encryptionMode: String

        public init(idCard: String, name: String, phone: String, encryptionMode: String) {
            self.idCard = idCard
            self.name = name
            self.phone = phone
            self.encryptionMode = encryptionMode
        }

        enum CodingKeys: String, CodingKey {
            case idCard = "IdCard"
            case name = "Name"
            case phone = "Phone"
            case encryptionMode = "EncryptionMode"
        }
    }

    /// EncryptedPhoneVerification返回参数结构体
    public struct EncryptedPhoneVerificationResponse: TCResponseModel {
        /// 认证结果码:
        /// 【收费结果码】
        /// 0:   三要素信息一致
        /// -4:  三要素信息不一致
        ///
        /// 【不收费结果码】
        /// -7: 身份证号码有误
        /// -8: 参数错误
        /// -9: 没有记录
        /// -11: 验证中心服务繁忙
        public let result: String

        /// 业务结果描述。
        public let description: String

        /// 运营商名称。
        /// 取值范围为["移动","联通","电信",""]
        public let isp: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case description = "Description"
            case isp = "ISP"
            case requestId = "RequestId"
        }
    }

    /// 运营商三要素核验（加密）
    ///
    /// 本接口用于校验手机号、姓名和身份证号的真实性和一致性，入参支持明文、MD5和SHA256加密传输。
    @inlinable
    public func encryptedPhoneVerification(_ input: EncryptedPhoneVerificationRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<EncryptedPhoneVerificationResponse> {
        self.client.execute(action: "EncryptedPhoneVerification", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 运营商三要素核验（加密）
    ///
    /// 本接口用于校验手机号、姓名和身份证号的真实性和一致性，入参支持明文、MD5和SHA256加密传输。
    @inlinable
    public func encryptedPhoneVerification(_ input: EncryptedPhoneVerificationRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> EncryptedPhoneVerificationResponse {
        try await self.client.execute(action: "EncryptedPhoneVerification", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 运营商三要素核验（加密）
    ///
    /// 本接口用于校验手机号、姓名和身份证号的真实性和一致性，入参支持明文、MD5和SHA256加密传输。
    @inlinable
    public func encryptedPhoneVerification(idCard: String, name: String, phone: String, encryptionMode: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<EncryptedPhoneVerificationResponse> {
        self.encryptedPhoneVerification(.init(idCard: idCard, name: name, phone: phone, encryptionMode: encryptionMode), region: region, logger: logger, on: eventLoop)
    }

    /// 运营商三要素核验（加密）
    ///
    /// 本接口用于校验手机号、姓名和身份证号的真实性和一致性，入参支持明文、MD5和SHA256加密传输。
    @inlinable
    public func encryptedPhoneVerification(idCard: String, name: String, phone: String, encryptionMode: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> EncryptedPhoneVerificationResponse {
        try await self.encryptedPhoneVerification(.init(idCard: idCard, name: name, phone: phone, encryptionMode: encryptionMode), region: region, logger: logger, on: eventLoop)
    }
}
