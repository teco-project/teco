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
    /// QueryMerchantPayWayList请求参数结构体
    public struct QueryMerchantPayWayListRequest: TCRequestModel {
        /// 使用门店OpenId
        public let openId: String

        /// 使用门店OpenKey
        public let openKey: String

        /// 支付类型，逗号分隔。1-现金，2-主扫，3-被扫，4-JSAPI。
        public let payType: String

        /// 沙箱环境填sandbox，正式环境不填
        public let profile: String?

        public init(openId: String, openKey: String, payType: String, profile: String? = nil) {
            self.openId = openId
            self.openKey = openKey
            self.payType = payType
            self.profile = profile
        }

        enum CodingKeys: String, CodingKey {
            case openId = "OpenId"
            case openKey = "OpenKey"
            case payType = "PayType"
            case profile = "Profile"
        }
    }

    /// QueryMerchantPayWayList返回参数结构体
    public struct QueryMerchantPayWayListResponse: TCResponseModel {
        /// 业务系统返回码，0表示成功，其他表示失败。
        public let errCode: String

        /// 业务系统返回消息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let errMessage: String?

        /// 查询商户支付方式列表结果
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: [MerchantPayWayData]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case errCode = "ErrCode"
            case errMessage = "ErrMessage"
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 云支付-查询商户支付方式列表
    ///
    /// 商户查询已开通的支付方式列表
    @inlinable
    public func queryMerchantPayWayList(_ input: QueryMerchantPayWayListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<QueryMerchantPayWayListResponse> {
        self.client.execute(action: "QueryMerchantPayWayList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 云支付-查询商户支付方式列表
    ///
    /// 商户查询已开通的支付方式列表
    @inlinable
    public func queryMerchantPayWayList(_ input: QueryMerchantPayWayListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> QueryMerchantPayWayListResponse {
        try await self.client.execute(action: "QueryMerchantPayWayList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 云支付-查询商户支付方式列表
    ///
    /// 商户查询已开通的支付方式列表
    @inlinable
    public func queryMerchantPayWayList(openId: String, openKey: String, payType: String, profile: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<QueryMerchantPayWayListResponse> {
        self.queryMerchantPayWayList(.init(openId: openId, openKey: openKey, payType: payType, profile: profile), region: region, logger: logger, on: eventLoop)
    }

    /// 云支付-查询商户支付方式列表
    ///
    /// 商户查询已开通的支付方式列表
    @inlinable
    public func queryMerchantPayWayList(openId: String, openKey: String, payType: String, profile: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> QueryMerchantPayWayListResponse {
        try await self.queryMerchantPayWayList(.init(openId: openId, openKey: openKey, payType: payType, profile: profile), region: region, logger: logger, on: eventLoop)
    }
}
