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
    /// GetEidToken请求参数结构体
    public struct GetEidTokenRequest: TCRequest {
        /// EID商户id，字段长度最长50位。
        public let merchantId: String

        /// 身份标识（未使用OCR服务时，必须传入）。
        /// 规则：a-zA-Z0-9组合。最长长度32位。
        public let idCard: String?

        /// 姓名。（未使用OCR服务时，必须传入）最长长度32位。中文请使用UTF-8编码。
        public let name: String?

        /// 透传字段，在获取验证结果时返回。最长长度1024位。
        public let extra: String?

        /// 小程序模式配置，包括如何传入姓名身份证的配置，以及是否使用意愿核身。
        public let config: GetEidTokenConfig?

        /// 最长长度1024位。用户从Url中进入核身认证结束后重定向的回调链接地址。EidToken会在该链接的query参数中。
        public let redirectUrl: String?

        /// 敏感数据加密信息。对传入信息（姓名、身份证号）有加密需求的用户可使用此参数，详情请点击左侧链接。
        public let encryption: Encryption?

        public init(merchantId: String, idCard: String? = nil, name: String? = nil, extra: String? = nil, config: GetEidTokenConfig? = nil, redirectUrl: String? = nil, encryption: Encryption? = nil) {
            self.merchantId = merchantId
            self.idCard = idCard
            self.name = name
            self.extra = extra
            self.config = config
            self.redirectUrl = redirectUrl
            self.encryption = encryption
        }

        enum CodingKeys: String, CodingKey {
            case merchantId = "MerchantId"
            case idCard = "IdCard"
            case name = "Name"
            case extra = "Extra"
            case config = "Config"
            case redirectUrl = "RedirectUrl"
            case encryption = "Encryption"
        }
    }

    /// GetEidToken返回参数结构体
    public struct GetEidTokenResponse: TCResponse {
        /// 一次核身流程的标识，有效时间为600秒；
        /// 完成核身后，可用该标识获取验证结果信息。
        public let eidToken: String

        /// 发起核身流程的URL，用于H5场景核身。
        public let url: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case eidToken = "EidToken"
            case url = "Url"
            case requestId = "RequestId"
        }
    }

    /// 获取E证通Token
    ///
    /// 每次调用E证通服务前，需先调用本接口获取EidToken，用来串联E证通流程，在验证完成后，用于获取E证通结果信息。
    @inlinable
    public func getEidToken(_ input: GetEidTokenRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetEidTokenResponse> {
        self.client.execute(action: "GetEidToken", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取E证通Token
    ///
    /// 每次调用E证通服务前，需先调用本接口获取EidToken，用来串联E证通流程，在验证完成后，用于获取E证通结果信息。
    @inlinable
    public func getEidToken(_ input: GetEidTokenRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetEidTokenResponse {
        try await self.client.execute(action: "GetEidToken", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取E证通Token
    ///
    /// 每次调用E证通服务前，需先调用本接口获取EidToken，用来串联E证通流程，在验证完成后，用于获取E证通结果信息。
    @inlinable
    public func getEidToken(merchantId: String, idCard: String? = nil, name: String? = nil, extra: String? = nil, config: GetEidTokenConfig? = nil, redirectUrl: String? = nil, encryption: Encryption? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetEidTokenResponse> {
        self.getEidToken(.init(merchantId: merchantId, idCard: idCard, name: name, extra: extra, config: config, redirectUrl: redirectUrl, encryption: encryption), region: region, logger: logger, on: eventLoop)
    }

    /// 获取E证通Token
    ///
    /// 每次调用E证通服务前，需先调用本接口获取EidToken，用来串联E证通流程，在验证完成后，用于获取E证通结果信息。
    @inlinable
    public func getEidToken(merchantId: String, idCard: String? = nil, name: String? = nil, extra: String? = nil, config: GetEidTokenConfig? = nil, redirectUrl: String? = nil, encryption: Encryption? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetEidTokenResponse {
        try await self.getEidToken(.init(merchantId: merchantId, idCard: idCard, name: name, extra: extra, config: config, redirectUrl: redirectUrl, encryption: encryption), region: region, logger: logger, on: eventLoop)
    }
}
