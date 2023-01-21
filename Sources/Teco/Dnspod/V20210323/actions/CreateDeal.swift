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

extension Dnspod {
    /// CreateDeal请求参数结构体
    public struct CreateDealRequest: TCRequestModel {
        /// 询价类型，1 新购，2 续费，3 套餐升级（增值服务暂时只支持新购）
        public let dealType: UInt64

        /// 商品类型，1 域名套餐 2 增值服务
        public let goodsType: UInt64

        /// 套餐类型：
        /// DP_PLUS：专业版
        /// DP_EXPERT：企业版
        /// DP_ULTRA：尊享版
        /// 增值服务类型
        /// LB：负载均衡
        /// URL：URL转发
        /// DMONITOR_TASKS：D监控任务数
        /// DMONITOR_IP：D监控备用 IP 数
        /// CUSTOMLINE：自定义线路数
        public let goodsChildType: String

        /// 增值服务购买数量，如果是域名套餐固定为1，如果是增值服务则按以下规则：
        /// 负载均衡、D监控任务数、D监控备用 IP 数、自定义线路数、URL 转发（必须是5的正整数倍，如 5、10、15 等）
        public let goodsNum: UInt64

        /// 是否开启自动续费，1 开启，2 不开启（增值服务暂不支持自动续费），默认值为 2 不开启
        public let autoRenew: UInt64

        /// 需要绑定套餐的域名，如 dnspod.cn，如果是续费或升级，domain 参数必须要传，新购可不传。
        public let domain: String?

        /// 套餐时长：
        /// 1. 套餐以月为单位（按月只能是 3、6 还有 12 的倍数），套餐例如购买一年则传12，最大120 。（续费最低一年）
        /// 2. 升级套餐时不需要传。
        /// 3. 增值服务的时长单位为年，买一年传1（增值服务新购按年只能是 1，增值服务续费最大为 10）
        public let timeSpan: UInt64?

        /// 套餐类型，需要升级到的套餐类型，只有升级时需要。
        public let newPackageType: String?

        public init(dealType: UInt64, goodsType: UInt64, goodsChildType: String, goodsNum: UInt64, autoRenew: UInt64, domain: String? = nil, timeSpan: UInt64? = nil, newPackageType: String? = nil) {
            self.dealType = dealType
            self.goodsType = goodsType
            self.goodsChildType = goodsChildType
            self.goodsNum = goodsNum
            self.autoRenew = autoRenew
            self.domain = domain
            self.timeSpan = timeSpan
            self.newPackageType = newPackageType
        }

        enum CodingKeys: String, CodingKey {
            case dealType = "DealType"
            case goodsType = "GoodsType"
            case goodsChildType = "GoodsChildType"
            case goodsNum = "GoodsNum"
            case autoRenew = "AutoRenew"
            case domain = "Domain"
            case timeSpan = "TimeSpan"
            case newPackageType = "NewPackageType"
        }
    }

    /// CreateDeal返回参数结构体
    public struct CreateDealResponse: TCResponseModel {
        /// 大订单号，一个大订单号下可以有多个子订单，说明是同一次下单
        public let bigDealId: String

        /// 子订单列表
        public let dealList: [Deals]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case bigDealId = "BigDealId"
            case dealList = "DealList"
            case requestId = "RequestId"
        }
    }

    /// 商品下单
    ///
    /// DNSPod商品下单
    @inlinable
    public func createDeal(_ input: CreateDealRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateDealResponse> {
        self.client.execute(action: "CreateDeal", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 商品下单
    ///
    /// DNSPod商品下单
    @inlinable
    public func createDeal(_ input: CreateDealRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateDealResponse {
        try await self.client.execute(action: "CreateDeal", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 商品下单
    ///
    /// DNSPod商品下单
    @inlinable
    public func createDeal(dealType: UInt64, goodsType: UInt64, goodsChildType: String, goodsNum: UInt64, autoRenew: UInt64, domain: String? = nil, timeSpan: UInt64? = nil, newPackageType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateDealResponse> {
        self.createDeal(CreateDealRequest(dealType: dealType, goodsType: goodsType, goodsChildType: goodsChildType, goodsNum: goodsNum, autoRenew: autoRenew, domain: domain, timeSpan: timeSpan, newPackageType: newPackageType), region: region, logger: logger, on: eventLoop)
    }

    /// 商品下单
    ///
    /// DNSPod商品下单
    @inlinable
    public func createDeal(dealType: UInt64, goodsType: UInt64, goodsChildType: String, goodsNum: UInt64, autoRenew: UInt64, domain: String? = nil, timeSpan: UInt64? = nil, newPackageType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateDealResponse {
        try await self.createDeal(CreateDealRequest(dealType: dealType, goodsType: goodsType, goodsChildType: goodsChildType, goodsNum: goodsNum, autoRenew: autoRenew, domain: domain, timeSpan: timeSpan, newPackageType: newPackageType), region: region, logger: logger, on: eventLoop)
    }
}
