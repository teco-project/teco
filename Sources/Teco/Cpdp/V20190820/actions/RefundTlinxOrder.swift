//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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
    /// RefundTlinxOrder请求参数结构体
    public struct RefundTlinxOrderRequest: TCRequestModel {
        /// 使用门店OpenId
        public let openId: String

        /// 使用门店OpenKey
        public let openKey: String

        /// 原始订单的开发者交易流水号
        public let developerNo: String

        /// 新退款订单的开发者流水号，同一门店内唯一
        public let refundOutNo: String

        /// 退款订单名称，可以为空
        public let refundOrderName: String

        /// 退款金额（以分为单位，没有小数点）
        public let refundAmount: String

        /// 主管密码，对密码进行SHA-1加密，默认为123456
        public let shopPassword: String

        /// 退款备注
        public let remark: String?

        /// 沙箱环境填sandbox，正式环境不填
        public let profile: String?

        public init(openId: String, openKey: String, developerNo: String, refundOutNo: String, refundOrderName: String, refundAmount: String, shopPassword: String, remark: String? = nil, profile: String? = nil) {
            self.openId = openId
            self.openKey = openKey
            self.developerNo = developerNo
            self.refundOutNo = refundOutNo
            self.refundOrderName = refundOrderName
            self.refundAmount = refundAmount
            self.shopPassword = shopPassword
            self.remark = remark
            self.profile = profile
        }

        enum CodingKeys: String, CodingKey {
            case openId = "OpenId"
            case openKey = "OpenKey"
            case developerNo = "DeveloperNo"
            case refundOutNo = "RefundOutNo"
            case refundOrderName = "RefundOrderName"
            case refundAmount = "RefundAmount"
            case shopPassword = "ShopPassword"
            case remark = "Remark"
            case profile = "Profile"
        }
    }

    /// RefundTlinxOrder返回参数结构体
    public struct RefundTlinxOrderResponse: TCResponseModel {
        /// 业务系统返回码，0表示成功，其他表示失败。
        public let errCode: String

        /// 业务系统返回消息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let errMessage: String?

        /// 退款响应对象
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: RefundOrderResult?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case errCode = "ErrCode"
            case errMessage = "ErrMessage"
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 云支付-订单退款接口
    ///
    /// 云支付订单退款接口
    @inlinable
    public func refundTlinxOrder(_ input: RefundTlinxOrderRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RefundTlinxOrderResponse> {
        self.client.execute(action: "RefundTlinxOrder", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 云支付-订单退款接口
    ///
    /// 云支付订单退款接口
    @inlinable
    public func refundTlinxOrder(_ input: RefundTlinxOrderRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RefundTlinxOrderResponse {
        try await self.client.execute(action: "RefundTlinxOrder", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 云支付-订单退款接口
    ///
    /// 云支付订单退款接口
    @inlinable
    public func refundTlinxOrder(openId: String, openKey: String, developerNo: String, refundOutNo: String, refundOrderName: String, refundAmount: String, shopPassword: String, remark: String? = nil, profile: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RefundTlinxOrderResponse> {
        self.refundTlinxOrder(RefundTlinxOrderRequest(openId: openId, openKey: openKey, developerNo: developerNo, refundOutNo: refundOutNo, refundOrderName: refundOrderName, refundAmount: refundAmount, shopPassword: shopPassword, remark: remark, profile: profile), region: region, logger: logger, on: eventLoop)
    }

    /// 云支付-订单退款接口
    ///
    /// 云支付订单退款接口
    @inlinable
    public func refundTlinxOrder(openId: String, openKey: String, developerNo: String, refundOutNo: String, refundOrderName: String, refundAmount: String, shopPassword: String, remark: String? = nil, profile: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RefundTlinxOrderResponse {
        try await self.refundTlinxOrder(RefundTlinxOrderRequest(openId: openId, openKey: openKey, developerNo: developerNo, refundOutNo: refundOutNo, refundOrderName: refundOrderName, refundAmount: refundAmount, shopPassword: shopPassword, remark: remark, profile: profile), region: region, logger: logger, on: eventLoop)
    }
}
