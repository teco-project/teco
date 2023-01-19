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

extension Bma {
    /// CreateCRCompanyVerify请求参数结构体
    public struct CreateCRCompanyVerifyRequest: TCRequestModel {
        /// 企业名称
        public let companyName: String

        /// 企业证件号码
        public let companyID: String?

        /// 企业法人姓名
        public let companyLegalName: String?

        /// 联系人姓名
        public let managerName: String?

        /// 联系人手机号
        public let managerPhone: String?

        /// 手机验证码，接口接入可以置空
        public let verificationCode: String?

        /// 字段已废弃，企业认证号码类型 1：社会信用代码 2：组织机构代码 3：企业工商注册码 4：其他 默认为1
        public let companyIDType: String?

        /// 字段已废弃，认证类型
        public let type: String?

        public init(companyName: String, companyID: String? = nil, companyLegalName: String? = nil, managerName: String? = nil, managerPhone: String? = nil, verificationCode: String? = nil, companyIDType: String? = nil, type: String? = nil) {
            self.companyName = companyName
            self.companyID = companyID
            self.companyLegalName = companyLegalName
            self.managerName = managerName
            self.managerPhone = managerPhone
            self.verificationCode = verificationCode
            self.companyIDType = companyIDType
            self.type = type
        }

        enum CodingKeys: String, CodingKey {
            case companyName = "CompanyName"
            case companyID = "CompanyID"
            case companyLegalName = "CompanyLegalName"
            case managerName = "ManagerName"
            case managerPhone = "ManagerPhone"
            case verificationCode = "VerificationCode"
            case companyIDType = "CompanyIDType"
            case type = "Type"
        }
    }

    /// CreateCRCompanyVerify返回参数结构体
    public struct CreateCRCompanyVerifyResponse: TCResponseModel {
        /// 认证状态：0-认证成功 1-认证失败
        public let status: Int64

        /// 认证状态说明，包括认证失败的原因
        public let note: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case status = "Status"
            case note = "Note"
            case requestId = "RequestId"
        }
    }

    /// 企业认证
    ///
    /// 本接口用于企业认证，新接入用户必须认证后才可以进行后续操作（个人认证和企业认证二选一），只需认证一次即可
    @inlinable
    public func createCRCompanyVerify(_ input: CreateCRCompanyVerifyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateCRCompanyVerifyResponse> {
        self.client.execute(action: "CreateCRCompanyVerify", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 企业认证
    ///
    /// 本接口用于企业认证，新接入用户必须认证后才可以进行后续操作（个人认证和企业认证二选一），只需认证一次即可
    @inlinable
    public func createCRCompanyVerify(_ input: CreateCRCompanyVerifyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateCRCompanyVerifyResponse {
        try await self.client.execute(action: "CreateCRCompanyVerify", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 企业认证
    ///
    /// 本接口用于企业认证，新接入用户必须认证后才可以进行后续操作（个人认证和企业认证二选一），只需认证一次即可
    @inlinable
    public func createCRCompanyVerify(companyName: String, companyID: String? = nil, companyLegalName: String? = nil, managerName: String? = nil, managerPhone: String? = nil, verificationCode: String? = nil, companyIDType: String? = nil, type: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateCRCompanyVerifyResponse> {
        self.createCRCompanyVerify(CreateCRCompanyVerifyRequest(companyName: companyName, companyID: companyID, companyLegalName: companyLegalName, managerName: managerName, managerPhone: managerPhone, verificationCode: verificationCode, companyIDType: companyIDType, type: type), region: region, logger: logger, on: eventLoop)
    }

    /// 企业认证
    ///
    /// 本接口用于企业认证，新接入用户必须认证后才可以进行后续操作（个人认证和企业认证二选一），只需认证一次即可
    @inlinable
    public func createCRCompanyVerify(companyName: String, companyID: String? = nil, companyLegalName: String? = nil, managerName: String? = nil, managerPhone: String? = nil, verificationCode: String? = nil, companyIDType: String? = nil, type: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateCRCompanyVerifyResponse {
        try await self.createCRCompanyVerify(CreateCRCompanyVerifyRequest(companyName: companyName, companyID: companyID, companyLegalName: companyLegalName, managerName: managerName, managerPhone: managerPhone, verificationCode: verificationCode, companyIDType: companyIDType, type: type), region: region, logger: logger, on: eventLoop)
    }
}
