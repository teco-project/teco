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
    /// CreatePayMerchant请求参数结构体
    public struct CreatePayMerchantRequest: TCRequestModel {
        /// 平台编号
        public let platformCode: String

        /// 渠道方收款商户编号，由渠道方(银行)提 供。
        public let channelMerchantNo: String

        /// 是否需要向渠道进行 商户信息验证 1:验证
        /// 0:不验证
        public let channelCheckFlag: String

        /// 收款商户名称
        public let merchantName: String

        /// 是否开通 B2B 支付 1:开通 0:不开通 缺省:1
        public let businessPayFlag: String?

        public init(platformCode: String, channelMerchantNo: String, channelCheckFlag: String, merchantName: String, businessPayFlag: String? = nil) {
            self.platformCode = platformCode
            self.channelMerchantNo = channelMerchantNo
            self.channelCheckFlag = channelCheckFlag
            self.merchantName = merchantName
            self.businessPayFlag = businessPayFlag
        }

        enum CodingKeys: String, CodingKey {
            case platformCode = "PlatformCode"
            case channelMerchantNo = "ChannelMerchantNo"
            case channelCheckFlag = "ChannelCheckFlag"
            case merchantName = "MerchantName"
            case businessPayFlag = "BusinessPayFlag"
        }
    }

    /// CreatePayMerchant返回参数结构体
    public struct CreatePayMerchantResponse: TCResponseModel {
        /// 分配给商户的 AppId。该 AppId 为后续各项 交易的商户标识。
        public let merchantAppId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case merchantAppId = "MerchantAppId"
            case requestId = "RequestId"
        }
    }

    /// 云鉴-商户新增接口
    ///
    /// 商户新增的接口
    @inlinable
    public func createPayMerchant(_ input: CreatePayMerchantRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreatePayMerchantResponse> {
        self.client.execute(action: "CreatePayMerchant", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 云鉴-商户新增接口
    ///
    /// 商户新增的接口
    @inlinable
    public func createPayMerchant(_ input: CreatePayMerchantRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreatePayMerchantResponse {
        try await self.client.execute(action: "CreatePayMerchant", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 云鉴-商户新增接口
    ///
    /// 商户新增的接口
    @inlinable
    public func createPayMerchant(platformCode: String, channelMerchantNo: String, channelCheckFlag: String, merchantName: String, businessPayFlag: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreatePayMerchantResponse> {
        self.createPayMerchant(.init(platformCode: platformCode, channelMerchantNo: channelMerchantNo, channelCheckFlag: channelCheckFlag, merchantName: merchantName, businessPayFlag: businessPayFlag), region: region, logger: logger, on: eventLoop)
    }

    /// 云鉴-商户新增接口
    ///
    /// 商户新增的接口
    @inlinable
    public func createPayMerchant(platformCode: String, channelMerchantNo: String, channelCheckFlag: String, merchantName: String, businessPayFlag: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreatePayMerchantResponse {
        try await self.createPayMerchant(.init(platformCode: platformCode, channelMerchantNo: channelMerchantNo, channelCheckFlag: channelCheckFlag, merchantName: merchantName, businessPayFlag: businessPayFlag), region: region, logger: logger, on: eventLoop)
    }
}
