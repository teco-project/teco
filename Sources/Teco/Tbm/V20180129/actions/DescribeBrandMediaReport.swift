//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
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
import TecoDateHelpers

extension Tbm {
    /// DescribeBrandMediaReport请求参数结构体
    public struct DescribeBrandMediaReportRequest: TCRequestModel {
        /// 品牌ID
        public let brandId: String

        /// 查询开始时间
        ///
        /// **Important:** This has to be a `var` due to a property wrapper restriction, which is about to be removed in the future.
        /// For discussions, see [Allow Property Wrappers on Let Declarations](https://forums.swift.org/t/pitch-allow-property-wrappers-on-let-declarations/61750).
        ///
        /// Although mutating this property is possible for now, it may become a `let` variable at any time. Please don't rely on such behavior.
        @TCDateEncoding public var startDate: Date

        /// 查询结束时间
        ///
        /// **Important:** This has to be a `var` due to a property wrapper restriction, which is about to be removed in the future.
        /// For discussions, see [Allow Property Wrappers on Let Declarations](https://forums.swift.org/t/pitch-allow-property-wrappers-on-let-declarations/61750).
        ///
        /// Although mutating this property is possible for now, it may become a `let` variable at any time. Please don't rely on such behavior.
        @TCDateEncoding public var endDate: Date

        public init(brandId: String, startDate: Date, endDate: Date) {
            self.brandId = brandId
            self.startDate = startDate
            self.endDate = endDate
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
    public func describeBrandMediaReport(_ input: DescribeBrandMediaReportRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeBrandMediaReportResponse > {
        self.client.execute(action: "DescribeBrandMediaReport", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取品牌媒体报道数
    ///
    /// 监测品牌关键词出现在媒体网站（新闻媒体、网络门户、政府网站、微信公众号、天天快报等）发布资讯标题和正文中的报道数。按天输出结果。
    @inlinable
    public func describeBrandMediaReport(_ input: DescribeBrandMediaReportRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBrandMediaReportResponse {
        try await self.client.execute(action: "DescribeBrandMediaReport", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取品牌媒体报道数
    ///
    /// 监测品牌关键词出现在媒体网站（新闻媒体、网络门户、政府网站、微信公众号、天天快报等）发布资讯标题和正文中的报道数。按天输出结果。
    @inlinable
    public func describeBrandMediaReport(brandId: String, startDate: Date, endDate: Date, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeBrandMediaReportResponse > {
        self.describeBrandMediaReport(DescribeBrandMediaReportRequest(brandId: brandId, startDate: startDate, endDate: endDate), logger: logger, on: eventLoop)
    }

    /// 获取品牌媒体报道数
    ///
    /// 监测品牌关键词出现在媒体网站（新闻媒体、网络门户、政府网站、微信公众号、天天快报等）发布资讯标题和正文中的报道数。按天输出结果。
    @inlinable
    public func describeBrandMediaReport(brandId: String, startDate: Date, endDate: Date, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBrandMediaReportResponse {
        try await self.describeBrandMediaReport(DescribeBrandMediaReportRequest(brandId: brandId, startDate: startDate, endDate: endDate), logger: logger, on: eventLoop)
    }
}
