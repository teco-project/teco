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

extension Bma {
    /// CreateCRUserVerify请求参数结构体
    public struct CreateCRUserVerifyRequest: TCRequestModel {
        /// 用户真实姓名
        public let userName: String

        /// 用户身份证号
        public let userID: String

        /// 用户手机号码
        public let userPhone: String

        /// 短信验证码，接口接入可以置空
        public let verificationCode: String?

        /// 字段已废弃，认证类型
        public let type: String?

        public init(userName: String, userID: String, userPhone: String, verificationCode: String? = nil, type: String? = nil) {
            self.userName = userName
            self.userID = userID
            self.userPhone = userPhone
            self.verificationCode = verificationCode
            self.type = type
        }

        enum CodingKeys: String, CodingKey {
            case userName = "UserName"
            case userID = "UserID"
            case userPhone = "UserPhone"
            case verificationCode = "VerificationCode"
            case type = "Type"
        }
    }

    /// CreateCRUserVerify返回参数结构体
    public struct CreateCRUserVerifyResponse: TCResponseModel {
        /// 认证状态：0-认证成功 1-认证失败
        public let status: Int64

        /// 认证状态说明，包括认证失败原因等
        public let note: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case status = "Status"
            case note = "Note"
            case requestId = "RequestId"
        }
    }

    /// 个人认证
    ///
    /// 本接口用于个人认证，新接入用户必须认证后才可以进行后续操作（个人认证和企业认证二选一），只需认证一次即可
    @inlinable
    public func createCRUserVerify(_ input: CreateCRUserVerifyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateCRUserVerifyResponse> {
        self.client.execute(action: "CreateCRUserVerify", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 个人认证
    ///
    /// 本接口用于个人认证，新接入用户必须认证后才可以进行后续操作（个人认证和企业认证二选一），只需认证一次即可
    @inlinable
    public func createCRUserVerify(_ input: CreateCRUserVerifyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateCRUserVerifyResponse {
        try await self.client.execute(action: "CreateCRUserVerify", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 个人认证
    ///
    /// 本接口用于个人认证，新接入用户必须认证后才可以进行后续操作（个人认证和企业认证二选一），只需认证一次即可
    @inlinable
    public func createCRUserVerify(userName: String, userID: String, userPhone: String, verificationCode: String? = nil, type: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateCRUserVerifyResponse> {
        self.createCRUserVerify(.init(userName: userName, userID: userID, userPhone: userPhone, verificationCode: verificationCode, type: type), region: region, logger: logger, on: eventLoop)
    }

    /// 个人认证
    ///
    /// 本接口用于个人认证，新接入用户必须认证后才可以进行后续操作（个人认证和企业认证二选一），只需认证一次即可
    @inlinable
    public func createCRUserVerify(userName: String, userID: String, userPhone: String, verificationCode: String? = nil, type: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateCRUserVerifyResponse {
        try await self.createCRUserVerify(.init(userName: userName, userID: userID, userPhone: userPhone, verificationCode: verificationCode, type: type), region: region, logger: logger, on: eventLoop)
    }
}
