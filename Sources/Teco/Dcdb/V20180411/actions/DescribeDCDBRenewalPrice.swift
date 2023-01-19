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

extension Dcdb {
    /// DescribeDCDBRenewalPrice请求参数结构体
    public struct DescribeDCDBRenewalPriceRequest: TCRequestModel {
        /// 待续费的实例ID。形如：dcdbt-ow728lmc，可以通过 DescribeDCDBInstances 查询实例详情获得。
        public let instanceId: String

        /// 续费时长，单位：月。不传则默认为1个月。
        public let period: Int64?

        /// 价格金额单位，不传默认单位为分，取值：
        /// * pent：分
        /// * microPent：微分
        public let amountUnit: String?

        public init(instanceId: String, period: Int64? = nil, amountUnit: String? = nil) {
            self.instanceId = instanceId
            self.period = period
            self.amountUnit = amountUnit
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case period = "Period"
            case amountUnit = "AmountUnit"
        }
    }

    /// DescribeDCDBRenewalPrice返回参数结构体
    public struct DescribeDCDBRenewalPriceResponse: TCResponseModel {
        /// 原价
        /// * 单位：默认为分，若请求参数带有AmountUnit，参考AmountUnit描述
        /// * 币种：国内站为人民币，国际站为美元
        public let originalPrice: Int64

        /// 实际价格，受折扣等影响，可能和原价不同
        /// * 单位：默认为分，若请求参数带有AmountUnit，参考AmountUnit描述
        /// * 币种：国内站人民币，国际站美元
        public let price: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case originalPrice = "OriginalPrice"
            case price = "Price"
            case requestId = "RequestId"
        }
    }

    /// 续费实例询价
    ///
    /// 本接口（DescribeDCDBRenewalPrice）用于在续费分布式数据库实例时，查询续费的价格。
    @inlinable
    public func describeDCDBRenewalPrice(_ input: DescribeDCDBRenewalPriceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDCDBRenewalPriceResponse> {
        self.client.execute(action: "DescribeDCDBRenewalPrice", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 续费实例询价
    ///
    /// 本接口（DescribeDCDBRenewalPrice）用于在续费分布式数据库实例时，查询续费的价格。
    @inlinable
    public func describeDCDBRenewalPrice(_ input: DescribeDCDBRenewalPriceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDCDBRenewalPriceResponse {
        try await self.client.execute(action: "DescribeDCDBRenewalPrice", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 续费实例询价
    ///
    /// 本接口（DescribeDCDBRenewalPrice）用于在续费分布式数据库实例时，查询续费的价格。
    @inlinable
    public func describeDCDBRenewalPrice(instanceId: String, period: Int64? = nil, amountUnit: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDCDBRenewalPriceResponse> {
        self.describeDCDBRenewalPrice(DescribeDCDBRenewalPriceRequest(instanceId: instanceId, period: period, amountUnit: amountUnit), region: region, logger: logger, on: eventLoop)
    }

    /// 续费实例询价
    ///
    /// 本接口（DescribeDCDBRenewalPrice）用于在续费分布式数据库实例时，查询续费的价格。
    @inlinable
    public func describeDCDBRenewalPrice(instanceId: String, period: Int64? = nil, amountUnit: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDCDBRenewalPriceResponse {
        try await self.describeDCDBRenewalPrice(DescribeDCDBRenewalPriceRequest(instanceId: instanceId, period: period, amountUnit: amountUnit), region: region, logger: logger, on: eventLoop)
    }
}
