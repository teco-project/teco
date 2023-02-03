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

extension Domain {
    /// DescribeDomainPriceList请求参数结构体
    public struct DescribeDomainPriceListRequest: TCRequestModel {
        /// 查询价格的后缀列表。默认则为全部后缀
        public let tldList: [String]?

        /// 查询购买的年份，默认会列出所有年份的价格
        public let year: [Int64]?

        /// 域名的购买类型：new  新购，renew 续费，redem 赎回，tran 转入
        public let operation: [String]?

        public init(tldList: [String]? = nil, year: [Int64]? = nil, operation: [String]? = nil) {
            self.tldList = tldList
            self.year = year
            self.operation = operation
        }

        enum CodingKeys: String, CodingKey {
            case tldList = "TldList"
            case year = "Year"
            case operation = "Operation"
        }
    }

    /// DescribeDomainPriceList返回参数结构体
    public struct DescribeDomainPriceListResponse: TCResponseModel {
        /// 域名价格列表
        public let priceList: [PriceInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case priceList = "PriceList"
            case requestId = "RequestId"
        }
    }

    /// 域名价格列表
    ///
    /// 按照域名后缀获取对应的价格列表
    @inlinable
    public func describeDomainPriceList(_ input: DescribeDomainPriceListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDomainPriceListResponse> {
        self.client.execute(action: "DescribeDomainPriceList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 域名价格列表
    ///
    /// 按照域名后缀获取对应的价格列表
    @inlinable
    public func describeDomainPriceList(_ input: DescribeDomainPriceListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDomainPriceListResponse {
        try await self.client.execute(action: "DescribeDomainPriceList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 域名价格列表
    ///
    /// 按照域名后缀获取对应的价格列表
    @inlinable
    public func describeDomainPriceList(tldList: [String]? = nil, year: [Int64]? = nil, operation: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDomainPriceListResponse> {
        let input = DescribeDomainPriceListRequest(tldList: tldList, year: year, operation: operation)
        return self.client.execute(action: "DescribeDomainPriceList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 域名价格列表
    ///
    /// 按照域名后缀获取对应的价格列表
    @inlinable
    public func describeDomainPriceList(tldList: [String]? = nil, year: [Int64]? = nil, operation: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDomainPriceListResponse {
        let input = DescribeDomainPriceListRequest(tldList: tldList, year: year, operation: operation)
        return try await self.client.execute(action: "DescribeDomainPriceList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
