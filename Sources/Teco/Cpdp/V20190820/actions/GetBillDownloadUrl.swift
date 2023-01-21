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
    /// GetBillDownloadUrl请求参数结构体
    public struct GetBillDownloadUrlRequest: TCRequestModel {
        /// 收单系统分配的开放ID
        public let openId: String

        /// 收单系统分配的密钥
        public let openKey: String

        /// 清算日期（YYYYMMDD，今天传昨天的日期，每日下午1点后出前一日的账单）
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

    /// GetBillDownloadUrl返回参数结构体
    public struct GetBillDownloadUrlResponse: TCResponseModel {
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

    /// 云支付-获取机构账单文件下载地址
    ///
    /// 调用该接口返回对账单下载地址，对账单下载URL通过GET方式访问，返回zip包，解压后为csv格式文件。文件首行如下：
    /// 订单号,订单归属日期,机构编号,订单描述,交易类型,订单状态,支付场景,原始金额,折扣金额,实际交易金额,支付渠道优惠金额,抹零金额,币种,下单时间,付款成功时间,商户编号,门店编号,付款方式编号,付款方式名称,商户手续费T1,商户扣率,是否信用卡交易,原始订单号,用户账号,外部订单号,订单备注
    @inlinable
    public func getBillDownloadUrl(_ input: GetBillDownloadUrlRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetBillDownloadUrlResponse> {
        self.client.execute(action: "GetBillDownloadUrl", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 云支付-获取机构账单文件下载地址
    ///
    /// 调用该接口返回对账单下载地址，对账单下载URL通过GET方式访问，返回zip包，解压后为csv格式文件。文件首行如下：
    /// 订单号,订单归属日期,机构编号,订单描述,交易类型,订单状态,支付场景,原始金额,折扣金额,实际交易金额,支付渠道优惠金额,抹零金额,币种,下单时间,付款成功时间,商户编号,门店编号,付款方式编号,付款方式名称,商户手续费T1,商户扣率,是否信用卡交易,原始订单号,用户账号,外部订单号,订单备注
    @inlinable
    public func getBillDownloadUrl(_ input: GetBillDownloadUrlRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetBillDownloadUrlResponse {
        try await self.client.execute(action: "GetBillDownloadUrl", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 云支付-获取机构账单文件下载地址
    ///
    /// 调用该接口返回对账单下载地址，对账单下载URL通过GET方式访问，返回zip包，解压后为csv格式文件。文件首行如下：
    /// 订单号,订单归属日期,机构编号,订单描述,交易类型,订单状态,支付场景,原始金额,折扣金额,实际交易金额,支付渠道优惠金额,抹零金额,币种,下单时间,付款成功时间,商户编号,门店编号,付款方式编号,付款方式名称,商户手续费T1,商户扣率,是否信用卡交易,原始订单号,用户账号,外部订单号,订单备注
    @inlinable
    public func getBillDownloadUrl(openId: String, openKey: String, day: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetBillDownloadUrlResponse> {
        self.getBillDownloadUrl(GetBillDownloadUrlRequest(openId: openId, openKey: openKey, day: day), region: region, logger: logger, on: eventLoop)
    }

    /// 云支付-获取机构账单文件下载地址
    ///
    /// 调用该接口返回对账单下载地址，对账单下载URL通过GET方式访问，返回zip包，解压后为csv格式文件。文件首行如下：
    /// 订单号,订单归属日期,机构编号,订单描述,交易类型,订单状态,支付场景,原始金额,折扣金额,实际交易金额,支付渠道优惠金额,抹零金额,币种,下单时间,付款成功时间,商户编号,门店编号,付款方式编号,付款方式名称,商户手续费T1,商户扣率,是否信用卡交易,原始订单号,用户账号,外部订单号,订单备注
    @inlinable
    public func getBillDownloadUrl(openId: String, openKey: String, day: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetBillDownloadUrlResponse {
        try await self.getBillDownloadUrl(GetBillDownloadUrlRequest(openId: openId, openKey: openKey, day: day), region: region, logger: logger, on: eventLoop)
    }
}
