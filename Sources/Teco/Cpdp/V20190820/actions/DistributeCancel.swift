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

// Test PR teco-project/teco-code-generator#23.

import Logging
import NIOCore
import TecoCore

extension Cpdp {
    /// DistributeCancel请求参数结构体
    public struct DistributeCancelRequest: TCRequestModel {
        /// 使用门店OpenId
        public let openId: String

        /// 使用门店OpenKey
        public let openKey: String

        /// 平台交易订单号
        public let orderNo: String

        /// 商户分账单号，type为2时，和DistributeNo二者传其一
        public let outDistributeNo: String?

        /// 平台分账单号，type为2时，和OutDistributeNo二者传其一
        public let distributeNo: String?

        /// 沙箱环境填sandbox，正式环境不填
        public let profile: String?

        public init(openId: String, openKey: String, orderNo: String, outDistributeNo: String? = nil, distributeNo: String? = nil, profile: String? = nil) {
            self.openId = openId
            self.openKey = openKey
            self.orderNo = orderNo
            self.outDistributeNo = outDistributeNo
            self.distributeNo = distributeNo
            self.profile = profile
        }

        enum CodingKeys: String, CodingKey {
            case openId = "OpenId"
            case openKey = "OpenKey"
            case orderNo = "OrderNo"
            case outDistributeNo = "OutDistributeNo"
            case distributeNo = "DistributeNo"
            case profile = "Profile"
        }
    }

    /// DistributeCancel返回参数结构体
    public struct DistributeCancelResponse: TCResponseModel {
        /// 业务系统返回消息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let errMessage: String?

        /// 业务系统返回码
        public let errCode: String

        /// 分账撤销响应对象
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: DistributeCancelResult?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case errMessage = "ErrMessage"
            case errCode = "ErrCode"
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 云支付-分账撤销接口
    @inlinable
    public func distributeCancel(_ input: DistributeCancelRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DistributeCancelResponse> {
        self.client.execute(action: "DistributeCancel", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 云支付-分账撤销接口
    @inlinable
    public func distributeCancel(_ input: DistributeCancelRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DistributeCancelResponse {
        try await self.client.execute(action: "DistributeCancel", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 云支付-分账撤销接口
    @inlinable
    public func distributeCancel(openId: String, openKey: String, orderNo: String, outDistributeNo: String? = nil, distributeNo: String? = nil, profile: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DistributeCancelResponse> {
        self.distributeCancel(.init(openId: openId, openKey: openKey, orderNo: orderNo, outDistributeNo: outDistributeNo, distributeNo: distributeNo, profile: profile), region: region, logger: logger, on: eventLoop)
    }

    /// 云支付-分账撤销接口
    @inlinable
    public func distributeCancel(openId: String, openKey: String, orderNo: String, outDistributeNo: String? = nil, distributeNo: String? = nil, profile: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DistributeCancelResponse {
        try await self.distributeCancel(.init(openId: openId, openKey: openKey, orderNo: orderNo, outDistributeNo: outDistributeNo, distributeNo: distributeNo, profile: profile), region: region, logger: logger, on: eventLoop)
    }
}
