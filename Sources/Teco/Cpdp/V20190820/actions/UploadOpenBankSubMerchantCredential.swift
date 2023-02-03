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

extension Cpdp {
    /// UploadOpenBankSubMerchantCredential请求参数结构体
    public struct UploadOpenBankSubMerchantCredentialRequest: TCRequestModel {
        /// 渠道商户ID。
        public let channelMerchantId: String

        /// 渠道子商户ID。
        public let channelSubMerchantId: String

        /// 渠道名称。详见附录-枚举类型-ChannelName。
        public let channelName: String

        /// 外部序列进件号。
        public let outApplyId: String

        /// 资质类型，详见附录-枚举类型-CredentialType。
        public let credentialType: String

        /// 文件类型。
        /// 合利宝渠道，文件类型为PNG/JPG格式。
        public let fileType: String

        /// 支付方式。
        /// 合利宝渠道不需要传。
        public let paymentMethod: String?

        /// 资质文件内容。Base64编码，资质文件内容和链接二选一。
        /// 合利宝渠道，文件限制大小5M以内。
        public let credentialContent: String?

        /// 资质文件链接。资质文件内容和链接二选一。
        /// 合利宝渠道，文件限制大小5M以内。
        public let credentialUrl: String?

        /// 环境类型。
        /// __release__:生产环境
        /// __sandbox__:沙箱环境
        /// _不填默认为生产环境_
        public let environment: String?

        public init(channelMerchantId: String, channelSubMerchantId: String, channelName: String, outApplyId: String, credentialType: String, fileType: String, paymentMethod: String? = nil, credentialContent: String? = nil, credentialUrl: String? = nil, environment: String? = nil) {
            self.channelMerchantId = channelMerchantId
            self.channelSubMerchantId = channelSubMerchantId
            self.channelName = channelName
            self.outApplyId = outApplyId
            self.credentialType = credentialType
            self.fileType = fileType
            self.paymentMethod = paymentMethod
            self.credentialContent = credentialContent
            self.credentialUrl = credentialUrl
            self.environment = environment
        }

        enum CodingKeys: String, CodingKey {
            case channelMerchantId = "ChannelMerchantId"
            case channelSubMerchantId = "ChannelSubMerchantId"
            case channelName = "ChannelName"
            case outApplyId = "OutApplyId"
            case credentialType = "CredentialType"
            case fileType = "FileType"
            case paymentMethod = "PaymentMethod"
            case credentialContent = "CredentialContent"
            case credentialUrl = "CredentialUrl"
            case environment = "Environment"
        }
    }

    /// UploadOpenBankSubMerchantCredential返回参数结构体
    public struct UploadOpenBankSubMerchantCredentialResponse: TCResponseModel {
        /// 错误码。
        public let errCode: String

        /// 错误消息。
        public let errMessage: String

        /// 返回结果
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: UploadOpenBankSubMerchantCredentialResult?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case errCode = "ErrCode"
            case errMessage = "ErrMessage"
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 云企付-子商户资质文件上传
    @inlinable
    public func uploadOpenBankSubMerchantCredential(_ input: UploadOpenBankSubMerchantCredentialRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UploadOpenBankSubMerchantCredentialResponse> {
        self.client.execute(action: "UploadOpenBankSubMerchantCredential", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 云企付-子商户资质文件上传
    @inlinable
    public func uploadOpenBankSubMerchantCredential(_ input: UploadOpenBankSubMerchantCredentialRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UploadOpenBankSubMerchantCredentialResponse {
        try await self.client.execute(action: "UploadOpenBankSubMerchantCredential", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 云企付-子商户资质文件上传
    @inlinable
    public func uploadOpenBankSubMerchantCredential(channelMerchantId: String, channelSubMerchantId: String, channelName: String, outApplyId: String, credentialType: String, fileType: String, paymentMethod: String? = nil, credentialContent: String? = nil, credentialUrl: String? = nil, environment: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UploadOpenBankSubMerchantCredentialResponse> {
        let input = UploadOpenBankSubMerchantCredentialRequest(channelMerchantId: channelMerchantId, channelSubMerchantId: channelSubMerchantId, channelName: channelName, outApplyId: outApplyId, credentialType: credentialType, fileType: fileType, paymentMethod: paymentMethod, credentialContent: credentialContent, credentialUrl: credentialUrl, environment: environment)
        return self.client.execute(action: "UploadOpenBankSubMerchantCredential", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 云企付-子商户资质文件上传
    @inlinable
    public func uploadOpenBankSubMerchantCredential(channelMerchantId: String, channelSubMerchantId: String, channelName: String, outApplyId: String, credentialType: String, fileType: String, paymentMethod: String? = nil, credentialContent: String? = nil, credentialUrl: String? = nil, environment: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UploadOpenBankSubMerchantCredentialResponse {
        let input = UploadOpenBankSubMerchantCredentialRequest(channelMerchantId: channelMerchantId, channelSubMerchantId: channelSubMerchantId, channelName: channelName, outApplyId: outApplyId, credentialType: credentialType, fileType: fileType, paymentMethod: paymentMethod, credentialContent: credentialContent, credentialUrl: credentialUrl, environment: environment)
        return try await self.client.execute(action: "UploadOpenBankSubMerchantCredential", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
