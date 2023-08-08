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

extension Ess {
    /// CreatePersonAuthCertificateImage请求参数结构体
    public struct CreatePersonAuthCertificateImageRequest: TCRequestModel {
        /// 操作人信息
        public let `operator`: UserInfo

        /// 个人用户名称
        public let userName: String

        /// 身份证件类型取值：
        /// ID_CARD 身居民身份证
        /// PASSPORT 护照
        /// HONGKONG_AND_MACAO 港澳居民来往内地通行证
        /// FOREIGN_ID_CARD 外国人永久居留身份证
        /// HONGKONG_MACAO_AND_TAIWAN 港澳台居民居住证(格式同居民身份证)
        public let idCardType: String

        /// 身份证件号码
        public let idCardNumber: String

        public init(operator: UserInfo, userName: String, idCardType: String, idCardNumber: String) {
            self.operator = `operator`
            self.userName = userName
            self.idCardType = idCardType
            self.idCardNumber = idCardNumber
        }

        enum CodingKeys: String, CodingKey {
            case `operator` = "Operator"
            case userName = "UserName"
            case idCardType = "IdCardType"
            case idCardNumber = "IdCardNumber"
        }
    }

    /// CreatePersonAuthCertificateImage返回参数结构体
    public struct CreatePersonAuthCertificateImageResponse: TCResponseModel {
        /// 个人用户证明证书的下载链接
        public let authCertUrl: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case authCertUrl = "AuthCertUrl"
            case requestId = "RequestId"
        }
    }

    /// 创建个人用户证书证明图片
    ///
    /// 本接口（CreatePersonAuthCertificateImage）用于创建个人用户证书证明图片
    @inlinable
    public func createPersonAuthCertificateImage(_ input: CreatePersonAuthCertificateImageRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreatePersonAuthCertificateImageResponse> {
        self.client.execute(action: "CreatePersonAuthCertificateImage", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建个人用户证书证明图片
    ///
    /// 本接口（CreatePersonAuthCertificateImage）用于创建个人用户证书证明图片
    @inlinable
    public func createPersonAuthCertificateImage(_ input: CreatePersonAuthCertificateImageRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreatePersonAuthCertificateImageResponse {
        try await self.client.execute(action: "CreatePersonAuthCertificateImage", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建个人用户证书证明图片
    ///
    /// 本接口（CreatePersonAuthCertificateImage）用于创建个人用户证书证明图片
    @inlinable
    public func createPersonAuthCertificateImage(operator: UserInfo, userName: String, idCardType: String, idCardNumber: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreatePersonAuthCertificateImageResponse> {
        self.createPersonAuthCertificateImage(.init(operator: `operator`, userName: userName, idCardType: idCardType, idCardNumber: idCardNumber), region: region, logger: logger, on: eventLoop)
    }

    /// 创建个人用户证书证明图片
    ///
    /// 本接口（CreatePersonAuthCertificateImage）用于创建个人用户证书证明图片
    @inlinable
    public func createPersonAuthCertificateImage(operator: UserInfo, userName: String, idCardType: String, idCardNumber: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreatePersonAuthCertificateImageResponse {
        try await self.createPersonAuthCertificateImage(.init(operator: `operator`, userName: userName, idCardType: idCardType, idCardNumber: idCardNumber), region: region, logger: logger, on: eventLoop)
    }
}