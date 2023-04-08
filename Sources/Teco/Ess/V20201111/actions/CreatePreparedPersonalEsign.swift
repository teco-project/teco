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

import TecoCore

extension Ess {
    /// CreatePreparedPersonalEsign请求参数结构体
    public struct CreatePreparedPersonalEsignRequest: TCRequestModel {
        /// 个人用户名称
        public let userName: String

        /// 身份证件号码
        public let idCardNumber: String

        /// 印章图片的base64
        public let sealImage: String

        /// 印章名称
        public let sealName: String

        /// 调用方用户信息，userId 必填。支持填入集团子公司经办人 userId代发合同。
        public let `operator`: UserInfo?

        /// 身份证件类型:
        /// ID_CARD 身份证
        /// PASSPORT 护照
        /// HONGKONG_AND_MACAO 中国香港
        /// FOREIGN_ID_CARD 境外身份
        /// HONGKONG_MACAO_AND_TAIWAN 中国台湾
        public let idCardType: String?

        /// 手机号码
        public let mobile: String?

        /// 是否需开通自动签
        public let enableAutoSign: Bool?

        public init(userName: String, idCardNumber: String, sealImage: String, sealName: String, operator: UserInfo? = nil, idCardType: String? = nil, mobile: String? = nil, enableAutoSign: Bool? = nil) {
            self.userName = userName
            self.idCardNumber = idCardNumber
            self.sealImage = sealImage
            self.sealName = sealName
            self.operator = `operator`
            self.idCardType = idCardType
            self.mobile = mobile
            self.enableAutoSign = enableAutoSign
        }

        enum CodingKeys: String, CodingKey {
            case userName = "UserName"
            case idCardNumber = "IdCardNumber"
            case sealImage = "SealImage"
            case sealName = "SealName"
            case `operator` = "Operator"
            case idCardType = "IdCardType"
            case mobile = "Mobile"
            case enableAutoSign = "EnableAutoSign"
        }
    }

    /// CreatePreparedPersonalEsign返回参数结构体
    public struct CreatePreparedPersonalEsignResponse: TCResponseModel {
        /// 导入生成的印章ID
        public let sealId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case sealId = "SealId"
            case requestId = "RequestId"
        }
    }

    /// 创建导入个人印章
    ///
    /// 本接口（CreatePreparedPersonalEsign）由于创建导入个人印章。
    @inlinable
    public func createPreparedPersonalEsign(_ input: CreatePreparedPersonalEsignRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreatePreparedPersonalEsignResponse> {
        self.client.execute(action: "CreatePreparedPersonalEsign", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建导入个人印章
    ///
    /// 本接口（CreatePreparedPersonalEsign）由于创建导入个人印章。
    @inlinable
    public func createPreparedPersonalEsign(_ input: CreatePreparedPersonalEsignRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreatePreparedPersonalEsignResponse {
        try await self.client.execute(action: "CreatePreparedPersonalEsign", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建导入个人印章
    ///
    /// 本接口（CreatePreparedPersonalEsign）由于创建导入个人印章。
    @inlinable
    public func createPreparedPersonalEsign(userName: String, idCardNumber: String, sealImage: String, sealName: String, operator: UserInfo? = nil, idCardType: String? = nil, mobile: String? = nil, enableAutoSign: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreatePreparedPersonalEsignResponse> {
        self.createPreparedPersonalEsign(.init(userName: userName, idCardNumber: idCardNumber, sealImage: sealImage, sealName: sealName, operator: `operator`, idCardType: idCardType, mobile: mobile, enableAutoSign: enableAutoSign), region: region, logger: logger, on: eventLoop)
    }

    /// 创建导入个人印章
    ///
    /// 本接口（CreatePreparedPersonalEsign）由于创建导入个人印章。
    @inlinable
    public func createPreparedPersonalEsign(userName: String, idCardNumber: String, sealImage: String, sealName: String, operator: UserInfo? = nil, idCardType: String? = nil, mobile: String? = nil, enableAutoSign: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreatePreparedPersonalEsignResponse {
        try await self.createPreparedPersonalEsign(.init(userName: userName, idCardNumber: idCardNumber, sealImage: sealImage, sealName: sealName, operator: `operator`, idCardType: idCardType, mobile: mobile, enableAutoSign: enableAutoSign), region: region, logger: logger, on: eventLoop)
    }
}