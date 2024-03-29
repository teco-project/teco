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
    /// IdCardOCRVerification请求参数结构体
    public struct IdCardOCRVerificationRequest: TCRequest {
        /// 身份证号
        /// 姓名和身份证号、ImageBase64、ImageUrl三者必须提供其中之一。若都提供了，则按照姓名和身份证号>ImageBase64>ImageUrl的优先级使用参数。
        public let idCard: String?

        /// 姓名
        public let name: String?

        /// 身份证人像面的 Base64 值
        /// 支持的图片格式：PNG、JPG、JPEG，暂不支持 GIF 格式。
        /// 支持的图片大小：所下载图片经Base64编码后不超过 3M。请使用标准的Base64编码方式(带=补位)，编码规范参考RFC4648。
        public let imageBase64: String?

        /// 身份证人像面的 Url 地址
        /// 支持的图片格式：PNG、JPG、JPEG，暂不支持 GIF 格式。
        /// 支持的图片大小：所下载图片经 Base64 编码后不超过 3M。图片下载时间不超过 3 秒。
        /// 图片存储于腾讯云的 Url 可保障更高的下载速度和稳定性，建议图片存储于腾讯云。
        /// 非腾讯云存储的 Url 速度和稳定性可能受一定影响。
        public let imageUrl: String?

        /// 敏感数据加密信息。对传入信息（姓名、身份证号）有加密需求的用户可使用此参数，详情请点击左侧链接。
        public let encryption: Encryption?

        public init(idCard: String? = nil, name: String? = nil, imageBase64: String? = nil, imageUrl: String? = nil, encryption: Encryption? = nil) {
            self.idCard = idCard
            self.name = name
            self.imageBase64 = imageBase64
            self.imageUrl = imageUrl
            self.encryption = encryption
        }

        enum CodingKeys: String, CodingKey {
            case idCard = "IdCard"
            case name = "Name"
            case imageBase64 = "ImageBase64"
            case imageUrl = "ImageUrl"
            case encryption = "Encryption"
        }
    }

    /// IdCardOCRVerification返回参数结构体
    public struct IdCardOCRVerificationResponse: TCResponse {
        /// 认证结果码，收费情况如下。
        /// 收费结果码：
        /// 0: 姓名和身份证号一致
        /// -1: 姓名和身份证号不一致
        /// 不收费结果码：
        /// -2: 非法身份证号（长度、校验位等不正确）
        /// -3: 非法姓名（长度、格式等不正确）
        /// -4: 证件库服务异常
        /// -5: 证件库中无此身份证记录
        /// -6: 权威比对系统升级中，请稍后再试
        /// -7: 认证次数超过当日限制
        public let result: String

        /// 业务结果描述。
        public let description: String

        /// 用于验证的姓名
        public let name: String

        /// 用于验证的身份证号
        public let idCard: String

        /// OCR得到的性别
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let sex: String?

        /// OCR得到的民族
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let nation: String?

        /// OCR得到的生日
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let birth: String?

        /// OCR得到的地址
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let address: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case description = "Description"
            case name = "Name"
            case idCard = "IdCard"
            case sex = "Sex"
            case nation = "Nation"
            case birth = "Birth"
            case address = "Address"
            case requestId = "RequestId"
        }
    }

    /// 身份证识别及信息核验
    ///
    /// 本接口用于校验姓名和身份证号的真实性和一致性，您可以通过输入姓名和身份证号或传入身份证人像面照片提供所需验证信息。
    @inlinable
    public func idCardOCRVerification(_ input: IdCardOCRVerificationRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<IdCardOCRVerificationResponse> {
        self.client.execute(action: "IdCardOCRVerification", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 身份证识别及信息核验
    ///
    /// 本接口用于校验姓名和身份证号的真实性和一致性，您可以通过输入姓名和身份证号或传入身份证人像面照片提供所需验证信息。
    @inlinable
    public func idCardOCRVerification(_ input: IdCardOCRVerificationRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> IdCardOCRVerificationResponse {
        try await self.client.execute(action: "IdCardOCRVerification", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 身份证识别及信息核验
    ///
    /// 本接口用于校验姓名和身份证号的真实性和一致性，您可以通过输入姓名和身份证号或传入身份证人像面照片提供所需验证信息。
    @inlinable
    public func idCardOCRVerification(idCard: String? = nil, name: String? = nil, imageBase64: String? = nil, imageUrl: String? = nil, encryption: Encryption? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<IdCardOCRVerificationResponse> {
        self.idCardOCRVerification(.init(idCard: idCard, name: name, imageBase64: imageBase64, imageUrl: imageUrl, encryption: encryption), region: region, logger: logger, on: eventLoop)
    }

    /// 身份证识别及信息核验
    ///
    /// 本接口用于校验姓名和身份证号的真实性和一致性，您可以通过输入姓名和身份证号或传入身份证人像面照片提供所需验证信息。
    @inlinable
    public func idCardOCRVerification(idCard: String? = nil, name: String? = nil, imageBase64: String? = nil, imageUrl: String? = nil, encryption: Encryption? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> IdCardOCRVerificationResponse {
        try await self.idCardOCRVerification(.init(idCard: idCard, name: name, imageBase64: imageBase64, imageUrl: imageUrl, encryption: encryption), region: region, logger: logger, on: eventLoop)
    }
}
