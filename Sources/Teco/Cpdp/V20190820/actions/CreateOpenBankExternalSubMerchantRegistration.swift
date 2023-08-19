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

extension Cpdp {
    /// CreateOpenBankExternalSubMerchantRegistration请求参数结构体
    public struct CreateOpenBankExternalSubMerchantRegistrationRequest: TCRequest {
        /// 外部进件序列号。
        public let outRegistrationNo: String

        /// 渠道商户ID。
        public let channelMerchantId: String

        /// 外部子商户ID,平台侧商户唯一ID。
        public let outSubMerchantId: String

        /// 渠道名称。详见附录-云企付枚举类说明-ChannelName。
        /// __TENPAY__: 商企付
        /// __WECHAT__: 微信支付
        /// __ALIPAY__: 支付宝
        public let channelName: String

        /// 支付方式。详见附录-云企付枚举类说明-PaymentMethod。
        /// __EBANK_PAYMENT__: ebank支付
        /// __OPENBANK_PAYMENT__: openbank支付
        public let paymentMethod: String

        /// 社会信用代码。
        public let businessLicenseNumber: String

        /// 外部子商户名称。
        public let outSubMerchantName: String

        /// 法人姓名。
        public let legalName: String?

        /// 外部子商户简称。
        public let outSubMerchantShortName: String?

        /// 外部子商户描述。
        public let outSubMerchantDescription: String?

        /// 第三方子商户进件信息，为JSON格式字符串。详情见附录-复杂类型。
        public let externalSubMerchantRegistrationData: String?

        /// 通知地址。
        public let notifyUrl: String?

        /// 环境类型。
        /// __release__:生产环境
        /// __sandbox__:沙箱环境
        /// _不填默认为生产环境_
        public let environment: String?

        public init(outRegistrationNo: String, channelMerchantId: String, outSubMerchantId: String, channelName: String, paymentMethod: String, businessLicenseNumber: String, outSubMerchantName: String, legalName: String? = nil, outSubMerchantShortName: String? = nil, outSubMerchantDescription: String? = nil, externalSubMerchantRegistrationData: String? = nil, notifyUrl: String? = nil, environment: String? = nil) {
            self.outRegistrationNo = outRegistrationNo
            self.channelMerchantId = channelMerchantId
            self.outSubMerchantId = outSubMerchantId
            self.channelName = channelName
            self.paymentMethod = paymentMethod
            self.businessLicenseNumber = businessLicenseNumber
            self.outSubMerchantName = outSubMerchantName
            self.legalName = legalName
            self.outSubMerchantShortName = outSubMerchantShortName
            self.outSubMerchantDescription = outSubMerchantDescription
            self.externalSubMerchantRegistrationData = externalSubMerchantRegistrationData
            self.notifyUrl = notifyUrl
            self.environment = environment
        }

        enum CodingKeys: String, CodingKey {
            case outRegistrationNo = "OutRegistrationNo"
            case channelMerchantId = "ChannelMerchantId"
            case outSubMerchantId = "OutSubMerchantId"
            case channelName = "ChannelName"
            case paymentMethod = "PaymentMethod"
            case businessLicenseNumber = "BusinessLicenseNumber"
            case outSubMerchantName = "OutSubMerchantName"
            case legalName = "LegalName"
            case outSubMerchantShortName = "OutSubMerchantShortName"
            case outSubMerchantDescription = "OutSubMerchantDescription"
            case externalSubMerchantRegistrationData = "ExternalSubMerchantRegistrationData"
            case notifyUrl = "NotifyUrl"
            case environment = "Environment"
        }
    }

    /// CreateOpenBankExternalSubMerchantRegistration返回参数结构体
    public struct CreateOpenBankExternalSubMerchantRegistrationResponse: TCResponse {
        /// 错误码。
        /// __SUCCESS__: 成功
        /// __其他__: 见附录-错误码表
        public let errCode: String

        /// 错误消息。
        public let errMessage: String

        /// 返回结果。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: CreateOpenBankExternalSubMerchantRegistrationResult?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case errCode = "ErrCode"
            case errMessage = "ErrMessage"
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 云企付-子商户进件
    @inlinable
    public func createOpenBankExternalSubMerchantRegistration(_ input: CreateOpenBankExternalSubMerchantRegistrationRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateOpenBankExternalSubMerchantRegistrationResponse> {
        self.client.execute(action: "CreateOpenBankExternalSubMerchantRegistration", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 云企付-子商户进件
    @inlinable
    public func createOpenBankExternalSubMerchantRegistration(_ input: CreateOpenBankExternalSubMerchantRegistrationRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateOpenBankExternalSubMerchantRegistrationResponse {
        try await self.client.execute(action: "CreateOpenBankExternalSubMerchantRegistration", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 云企付-子商户进件
    @inlinable
    public func createOpenBankExternalSubMerchantRegistration(outRegistrationNo: String, channelMerchantId: String, outSubMerchantId: String, channelName: String, paymentMethod: String, businessLicenseNumber: String, outSubMerchantName: String, legalName: String? = nil, outSubMerchantShortName: String? = nil, outSubMerchantDescription: String? = nil, externalSubMerchantRegistrationData: String? = nil, notifyUrl: String? = nil, environment: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateOpenBankExternalSubMerchantRegistrationResponse> {
        self.createOpenBankExternalSubMerchantRegistration(.init(outRegistrationNo: outRegistrationNo, channelMerchantId: channelMerchantId, outSubMerchantId: outSubMerchantId, channelName: channelName, paymentMethod: paymentMethod, businessLicenseNumber: businessLicenseNumber, outSubMerchantName: outSubMerchantName, legalName: legalName, outSubMerchantShortName: outSubMerchantShortName, outSubMerchantDescription: outSubMerchantDescription, externalSubMerchantRegistrationData: externalSubMerchantRegistrationData, notifyUrl: notifyUrl, environment: environment), region: region, logger: logger, on: eventLoop)
    }

    /// 云企付-子商户进件
    @inlinable
    public func createOpenBankExternalSubMerchantRegistration(outRegistrationNo: String, channelMerchantId: String, outSubMerchantId: String, channelName: String, paymentMethod: String, businessLicenseNumber: String, outSubMerchantName: String, legalName: String? = nil, outSubMerchantShortName: String? = nil, outSubMerchantDescription: String? = nil, externalSubMerchantRegistrationData: String? = nil, notifyUrl: String? = nil, environment: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateOpenBankExternalSubMerchantRegistrationResponse {
        try await self.createOpenBankExternalSubMerchantRegistration(.init(outRegistrationNo: outRegistrationNo, channelMerchantId: channelMerchantId, outSubMerchantId: outSubMerchantId, channelName: channelName, paymentMethod: paymentMethod, businessLicenseNumber: businessLicenseNumber, outSubMerchantName: outSubMerchantName, legalName: legalName, outSubMerchantShortName: outSubMerchantShortName, outSubMerchantDescription: outSubMerchantDescription, externalSubMerchantRegistrationData: externalSubMerchantRegistrationData, notifyUrl: notifyUrl, environment: environment), region: region, logger: logger, on: eventLoop)
    }
}
