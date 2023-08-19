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
    /// GetDistributeBillDownloadUrl请求参数结构体
    public struct GetDistributeBillDownloadUrlRequest: TCRequest {
        /// 收单系统分配的开放ID
        public let openId: String

        /// 收单系统分配的密钥
        public let openKey: String

        /// 分账日期（YYYYMMDD，今天传昨天的日期）
        public let day: String

        public init(openId: String, openKey: String, day: String) {
            self.openId = openId
            self.openKey = openKey
            self.day = day
        }

        enum CodingKeys: String, CodingKey {
            case openId = "OpenId"
            case openKey = "OpenKey"
            case day = "Day"
        }
    }

    /// GetDistributeBillDownloadUrl返回参数结构体
    public struct GetDistributeBillDownloadUrlResponse: TCResponse {
        /// 业务系统返回码
        public let errCode: String

        /// 业务系统返回消息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let errMessage: String?

        /// 账单文件下载地址响应对象
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: BillDownloadUrlResult?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case errCode = "ErrCode"
            case errMessage = "ErrMessage"
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 云支付-获取机构分账账单文件下载地址
    ///
    /// 调用该接口返回对账单下载地址，对账单下载URL通过GET方式访问，返回zip包，解压后为csv格式文件。文件首行如下：
    /// 商户号,订单号,支付订单号,分账订单总金额,分账详情（通过|分割每笔明细：商户号1#分账金额1|商户号2#分账金额2）,交易手续费承担方商户号,交易手续费,发起时间,分账状态,结算日期,非交易主体分账金额,商户退款订单号,商户分账单号
    @inlinable
    public func getDistributeBillDownloadUrl(_ input: GetDistributeBillDownloadUrlRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetDistributeBillDownloadUrlResponse> {
        self.client.execute(action: "GetDistributeBillDownloadUrl", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 云支付-获取机构分账账单文件下载地址
    ///
    /// 调用该接口返回对账单下载地址，对账单下载URL通过GET方式访问，返回zip包，解压后为csv格式文件。文件首行如下：
    /// 商户号,订单号,支付订单号,分账订单总金额,分账详情（通过|分割每笔明细：商户号1#分账金额1|商户号2#分账金额2）,交易手续费承担方商户号,交易手续费,发起时间,分账状态,结算日期,非交易主体分账金额,商户退款订单号,商户分账单号
    @inlinable
    public func getDistributeBillDownloadUrl(_ input: GetDistributeBillDownloadUrlRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetDistributeBillDownloadUrlResponse {
        try await self.client.execute(action: "GetDistributeBillDownloadUrl", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 云支付-获取机构分账账单文件下载地址
    ///
    /// 调用该接口返回对账单下载地址，对账单下载URL通过GET方式访问，返回zip包，解压后为csv格式文件。文件首行如下：
    /// 商户号,订单号,支付订单号,分账订单总金额,分账详情（通过|分割每笔明细：商户号1#分账金额1|商户号2#分账金额2）,交易手续费承担方商户号,交易手续费,发起时间,分账状态,结算日期,非交易主体分账金额,商户退款订单号,商户分账单号
    @inlinable
    public func getDistributeBillDownloadUrl(openId: String, openKey: String, day: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetDistributeBillDownloadUrlResponse> {
        self.getDistributeBillDownloadUrl(.init(openId: openId, openKey: openKey, day: day), region: region, logger: logger, on: eventLoop)
    }

    /// 云支付-获取机构分账账单文件下载地址
    ///
    /// 调用该接口返回对账单下载地址，对账单下载URL通过GET方式访问，返回zip包，解压后为csv格式文件。文件首行如下：
    /// 商户号,订单号,支付订单号,分账订单总金额,分账详情（通过|分割每笔明细：商户号1#分账金额1|商户号2#分账金额2）,交易手续费承担方商户号,交易手续费,发起时间,分账状态,结算日期,非交易主体分账金额,商户退款订单号,商户分账单号
    @inlinable
    public func getDistributeBillDownloadUrl(openId: String, openKey: String, day: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetDistributeBillDownloadUrlResponse {
        try await self.getDistributeBillDownloadUrl(.init(openId: openId, openKey: openKey, day: day), region: region, logger: logger, on: eventLoop)
    }
}
