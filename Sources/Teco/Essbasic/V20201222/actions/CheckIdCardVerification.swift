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

extension Essbasic {
    /// CheckIdCardVerification请求参数结构体
    public struct CheckIdCardVerificationRequest: TCRequest {
        /// 调用方信息; 必选
        public let caller: Caller

        /// 姓名
        public let name: String

        /// 身份证件号码
        public let idCardNumber: String

        /// 身份证件类型; ID_CARD
        public let idCardType: String?

        public init(caller: Caller, name: String, idCardNumber: String, idCardType: String? = nil) {
            self.caller = caller
            self.name = name
            self.idCardNumber = idCardNumber
            self.idCardType = idCardType
        }

        enum CodingKeys: String, CodingKey {
            case caller = "Caller"
            case name = "Name"
            case idCardNumber = "IdCardNumber"
            case idCardType = "IdCardType"
        }
    }

    /// CheckIdCardVerification返回参数结构体
    public struct CheckIdCardVerificationResponse: TCResponse {
        /// 检测结果;
        /// 收费错误码:
        ///   0: 通过,
        ///   1: 姓名和身份证号不一致,
        /// 免费错误码:
        ///   101: 非法身份证号(长度,格式等不正确),
        ///   102: 非法姓名(长度,格式等不正确),
        ///   103: 验证平台异常,
        ///   104: 证件库中无此身份证记录
        public let result: Int64

        /// 结果描述; 未通过时必选
        public let description: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case description = "Description"
            case requestId = "RequestId"
        }
    }

    /// 身份证核验
    ///
    /// 该接口为第三方平台向电子签平台验证姓名和身份证信息
    @inlinable
    public func checkIdCardVerification(_ input: CheckIdCardVerificationRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CheckIdCardVerificationResponse> {
        self.client.execute(action: "CheckIdCardVerification", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 身份证核验
    ///
    /// 该接口为第三方平台向电子签平台验证姓名和身份证信息
    @inlinable
    public func checkIdCardVerification(_ input: CheckIdCardVerificationRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CheckIdCardVerificationResponse {
        try await self.client.execute(action: "CheckIdCardVerification", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 身份证核验
    ///
    /// 该接口为第三方平台向电子签平台验证姓名和身份证信息
    @inlinable
    public func checkIdCardVerification(caller: Caller, name: String, idCardNumber: String, idCardType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CheckIdCardVerificationResponse> {
        self.checkIdCardVerification(.init(caller: caller, name: name, idCardNumber: idCardNumber, idCardType: idCardType), region: region, logger: logger, on: eventLoop)
    }

    /// 身份证核验
    ///
    /// 该接口为第三方平台向电子签平台验证姓名和身份证信息
    @inlinable
    public func checkIdCardVerification(caller: Caller, name: String, idCardNumber: String, idCardType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CheckIdCardVerificationResponse {
        try await self.checkIdCardVerification(.init(caller: caller, name: name, idCardNumber: idCardNumber, idCardType: idCardType), region: region, logger: logger, on: eventLoop)
    }
}
