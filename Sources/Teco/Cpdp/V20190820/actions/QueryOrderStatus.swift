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

extension Cpdp {
    /// QueryOrderStatus请求参数结构体
    public struct QueryOrderStatusRequest: TCRequestModel {
        /// 使用门店OpenId
        public let openId: String

        /// 使用门店OpenKey
        public let openKey: String

        /// 开发者流水号
        public let developerNo: String

        /// 付款订单号
        public let orderNo: String?

        /// 沙箱环境填sandbox，正式环境不填
        public let profile: String?

        public init(openId: String, openKey: String, developerNo: String, orderNo: String? = nil, profile: String? = nil) {
            self.openId = openId
            self.openKey = openKey
            self.developerNo = developerNo
            self.orderNo = orderNo
            self.profile = profile
        }

        enum CodingKeys: String, CodingKey {
            case openId = "OpenId"
            case openKey = "OpenKey"
            case developerNo = "DeveloperNo"
            case orderNo = "OrderNo"
            case profile = "Profile"
        }
    }

    /// QueryOrderStatus返回参数结构体
    public struct QueryOrderStatusResponse: TCResponseModel {
        /// 业务系统返回码，0表示成功，其他表示失败。
        public let errCode: String

        /// 业务系统返回消息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let errMessage: String?

        /// 查询订单付款状态结果
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: QueryOrderStatusResult?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case errCode = "ErrCode"
            case errMessage = "ErrMessage"
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 云支付-查询订单付款状态
    @inlinable
    public func queryOrderStatus(_ input: QueryOrderStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<QueryOrderStatusResponse> {
        self.client.execute(action: "QueryOrderStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 云支付-查询订单付款状态
    @inlinable
    public func queryOrderStatus(_ input: QueryOrderStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> QueryOrderStatusResponse {
        try await self.client.execute(action: "QueryOrderStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 云支付-查询订单付款状态
    @inlinable
    public func queryOrderStatus(openId: String, openKey: String, developerNo: String, orderNo: String? = nil, profile: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<QueryOrderStatusResponse> {
        self.queryOrderStatus(.init(openId: openId, openKey: openKey, developerNo: developerNo, orderNo: orderNo, profile: profile), region: region, logger: logger, on: eventLoop)
    }

    /// 云支付-查询订单付款状态
    @inlinable
    public func queryOrderStatus(openId: String, openKey: String, developerNo: String, orderNo: String? = nil, profile: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> QueryOrderStatusResponse {
        try await self.queryOrderStatus(.init(openId: openId, openKey: openKey, developerNo: developerNo, orderNo: orderNo, profile: profile), region: region, logger: logger, on: eventLoop)
    }
}
