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
    /// QueryShopOpenId请求参数结构体
    public struct QueryShopOpenIdRequest: TCRequestModel {
        /// 收单系统分配的开放ID
        public let openId: String

        /// 收单系统分配的密钥
        public let openKey: String

        /// 门店编号
        public let shopNo: String

        /// 沙箱环境填sandbox，正式环境不填
        public let profile: String?

        public init(openId: String, openKey: String, shopNo: String, profile: String? = nil) {
            self.openId = openId
            self.openKey = openKey
            self.shopNo = shopNo
            self.profile = profile
        }

        enum CodingKeys: String, CodingKey {
            case openId = "OpenId"
            case openKey = "OpenKey"
            case shopNo = "ShopNo"
            case profile = "Profile"
        }
    }

    /// QueryShopOpenId返回参数结构体
    public struct QueryShopOpenIdResponse: TCResponseModel {
        /// 业务系统返回消息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let errMessage: String?

        /// 业务系统返回码
        public let errCode: String

        /// 获取门店OpenId响应对象
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: QueryShopOpenIdResult?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case errMessage = "ErrMessage"
            case errCode = "ErrCode"
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 云支付-获取门店OpenId接口
    @inlinable
    public func queryShopOpenId(_ input: QueryShopOpenIdRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<QueryShopOpenIdResponse> {
        self.client.execute(action: "QueryShopOpenId", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 云支付-获取门店OpenId接口
    @inlinable
    public func queryShopOpenId(_ input: QueryShopOpenIdRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> QueryShopOpenIdResponse {
        try await self.client.execute(action: "QueryShopOpenId", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 云支付-获取门店OpenId接口
    @inlinable
    public func queryShopOpenId(openId: String, openKey: String, shopNo: String, profile: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<QueryShopOpenIdResponse> {
        self.queryShopOpenId(QueryShopOpenIdRequest(openId: openId, openKey: openKey, shopNo: shopNo, profile: profile), region: region, logger: logger, on: eventLoop)
    }

    /// 云支付-获取门店OpenId接口
    @inlinable
    public func queryShopOpenId(openId: String, openKey: String, shopNo: String, profile: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> QueryShopOpenIdResponse {
        try await self.queryShopOpenId(QueryShopOpenIdRequest(openId: openId, openKey: openKey, shopNo: shopNo, profile: profile), region: region, logger: logger, on: eventLoop)
    }
}
