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

@_exported import struct Foundation.Date
import TecoCore
import TecoDateHelpers

extension Tbm {
    /// DescribeBrandMediaReport请求参数结构体
    public struct DescribeBrandMediaReportRequest: TCRequestModel {
        /// 品牌ID
        public let brandId: String

        /// 查询开始时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCDateEncoding public var startDate: Date

        /// 查询结束时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCDateEncoding public var endDate: Date

        public init(brandId: String, startDate: Date, endDate: Date) {
            self.brandId = brandId
            self._startDate = .init(wrappedValue: startDate)
            self._endDate = .init(wrappedValue: endDate)
        }

        enum CodingKeys: String, CodingKey {
            case brandId = "BrandId"
            case startDate = "StartDate"
            case endDate = "EndDate"
        }
    }

    /// DescribeBrandMediaReport返回参数结构体
    public struct DescribeBrandMediaReportResponse: TCResponseModel {
        /// 查询范围内文章总数
        public let totalCount: UInt64

        /// 按天计算的每天文章数
        public let dateCountSet: [DateCount]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case dateCountSet = "DateCountSet"
            case requestId = "RequestId"
        }
    }

    /// 获取品牌媒体报道数
    ///
    /// 监测品牌关键词出现在媒体网站（新闻媒体、网络门户、政府网站、微信公众号、天天快报等）发布资讯标题和正文中的报道数。按天输出结果。
    @inlinable
    public func describeBrandMediaReport(_ input: DescribeBrandMediaReportRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBrandMediaReportResponse> {
        self.client.execute(action: "DescribeBrandMediaReport", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取品牌媒体报道数
    ///
    /// 监测品牌关键词出现在媒体网站（新闻媒体、网络门户、政府网站、微信公众号、天天快报等）发布资讯标题和正文中的报道数。按天输出结果。
    @inlinable
    public func describeBrandMediaReport(_ input: DescribeBrandMediaReportRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBrandMediaReportResponse {
        try await self.client.execute(action: "DescribeBrandMediaReport", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取品牌媒体报道数
    ///
    /// 监测品牌关键词出现在媒体网站（新闻媒体、网络门户、政府网站、微信公众号、天天快报等）发布资讯标题和正文中的报道数。按天输出结果。
    @inlinable
    public func describeBrandMediaReport(brandId: String, startDate: Date, endDate: Date, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBrandMediaReportResponse> {
        self.describeBrandMediaReport(.init(brandId: brandId, startDate: startDate, endDate: endDate), region: region, logger: logger, on: eventLoop)
    }

    /// 获取品牌媒体报道数
    ///
    /// 监测品牌关键词出现在媒体网站（新闻媒体、网络门户、政府网站、微信公众号、天天快报等）发布资讯标题和正文中的报道数。按天输出结果。
    @inlinable
    public func describeBrandMediaReport(brandId: String, startDate: Date, endDate: Date, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBrandMediaReportResponse {
        try await self.describeBrandMediaReport(.init(brandId: brandId, startDate: startDate, endDate: endDate), region: region, logger: logger, on: eventLoop)
    }
}
