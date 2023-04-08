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
    /// PhoneVerificationCUCC请求参数结构体
    public struct PhoneVerificationCUCCRequest: TCRequestModel {
        /// 身份证号
        public let idCard: String

        /// 姓名
        public let name: String

        /// 手机号
        public let phone: String

        /// 敏感数据加密信息。对传入信息（姓名、身份证号、手机号）有加密需求的用户可使用此参数，详情请点击左侧链接。
        public let encryption: Encryption?

        public init(idCard: String, name: String, phone: String, encryption: Encryption? = nil) {
            self.idCard = idCard
            self.name = name
            self.phone = phone
            self.encryption = encryption
        }

        enum CodingKeys: String, CodingKey {
            case idCard = "IdCard"
            case name = "Name"
            case phone = "Phone"
            case encryption = "Encryption"
        }
    }

    /// PhoneVerificationCUCC返回参数结构体
    public struct PhoneVerificationCUCCResponse: TCResponseModel {
        /// 认证结果码，收费情况如下。
        /// 收费结果码：
        /// 0: 认证通过
        /// -4: 信息不一致（手机号已实名，但姓名和身份证号与实名信息不一致）
        /// 不收费结果码：
        /// -6: 手机号码不合法
        /// -7: 身份证号码有误
        /// -8: 姓名校验不通过
        /// -9: 没有记录
        /// -10: 认证未通过
        /// -11: 验证中心服务繁忙
        public let result: String

        /// 运营商名称。
        /// 取值范围为["移动","联通","电信",""]
        public let isp: String

        /// 业务结果描述。
        public let description: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case isp = "Isp"
            case description = "Description"
            case requestId = "RequestId"
        }
    }

    /// 手机号三要素核验（联通）
    ///
    /// 本接口用于校验中国联通手机号、姓名和身份证号的真实性和一致性。中国联通支持的手机号段详情请查阅<a href="https://cloud.tencent.com/document/product/1007/46063">运营商类</a>文档。
    @inlinable
    public func phoneVerificationCUCC(_ input: PhoneVerificationCUCCRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<PhoneVerificationCUCCResponse> {
        self.client.execute(action: "PhoneVerificationCUCC", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 手机号三要素核验（联通）
    ///
    /// 本接口用于校验中国联通手机号、姓名和身份证号的真实性和一致性。中国联通支持的手机号段详情请查阅<a href="https://cloud.tencent.com/document/product/1007/46063">运营商类</a>文档。
    @inlinable
    public func phoneVerificationCUCC(_ input: PhoneVerificationCUCCRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> PhoneVerificationCUCCResponse {
        try await self.client.execute(action: "PhoneVerificationCUCC", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 手机号三要素核验（联通）
    ///
    /// 本接口用于校验中国联通手机号、姓名和身份证号的真实性和一致性。中国联通支持的手机号段详情请查阅<a href="https://cloud.tencent.com/document/product/1007/46063">运营商类</a>文档。
    @inlinable
    public func phoneVerificationCUCC(idCard: String, name: String, phone: String, encryption: Encryption? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<PhoneVerificationCUCCResponse> {
        self.phoneVerificationCUCC(.init(idCard: idCard, name: name, phone: phone, encryption: encryption), region: region, logger: logger, on: eventLoop)
    }

    /// 手机号三要素核验（联通）
    ///
    /// 本接口用于校验中国联通手机号、姓名和身份证号的真实性和一致性。中国联通支持的手机号段详情请查阅<a href="https://cloud.tencent.com/document/product/1007/46063">运营商类</a>文档。
    @inlinable
    public func phoneVerificationCUCC(idCard: String, name: String, phone: String, encryption: Encryption? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> PhoneVerificationCUCCResponse {
        try await self.phoneVerificationCUCC(.init(idCard: idCard, name: name, phone: phone, encryption: encryption), region: region, logger: logger, on: eventLoop)
    }
}
