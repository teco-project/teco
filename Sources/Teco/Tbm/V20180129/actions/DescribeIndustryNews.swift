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
    /// DescribeIndustryNews请求参数结构体
    public struct DescribeIndustryNewsRequest: TCRequestModel {
        /// 行业ID
        public let industryId: String

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

        /// 是否显示列表，若为 true，则返回文章列表
        public let showList: Bool?

        /// 查询偏移，默认从0开始
        public let offset: Int64?

        /// 查询条数上限，默认20
        public let limit: Int64?

        public init(industryId: String, startDate: Date, endDate: Date, showList: Bool? = nil, offset: Int64? = nil, limit: Int64? = nil) {
            self.industryId = industryId
            self._startDate = .init(wrappedValue: startDate)
            self._endDate = .init(wrappedValue: endDate)
            self.showList = showList
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case industryId = "IndustryId"
            case startDate = "StartDate"
            case endDate = "EndDate"
            case showList = "ShowList"
            case offset = "Offset"
            case limit = "Limit"
        }
    }

    /// DescribeIndustryNews返回参数结构体
    public struct DescribeIndustryNewsResponse: TCResponseModel {
        /// 总计文章数量
        public let newsCount: UInt64

        /// 总计来源数量
        public let fromCount: UInt64

        /// 总计疑似负面数量
        public let adverseCount: UInt64

        /// 文章列表
        public let newsSet: [IndustryNews]

        /// 按天统计的数量列表
        public let dateCountSet: [DateCount]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case newsCount = "NewsCount"
            case fromCount = "FromCount"
            case adverseCount = "AdverseCount"
            case newsSet = "NewsSet"
            case dateCountSet = "DateCountSet"
            case requestId = "RequestId"
        }
    }

    /// 获取定制任务媒体报道列表
    ///
    /// 根据客户定制的行业关键词，监测关键词出现在媒体网站（新闻媒体、网络门户、政府网站、微信公众号、天天快报等）发布资讯标题和正文中的报道数，以及文章列表、来源渠道、作者、发布时间等。
    @inlinable
    public func describeIndustryNews(_ input: DescribeIndustryNewsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeIndustryNewsResponse> {
        self.client.execute(action: "DescribeIndustryNews", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取定制任务媒体报道列表
    ///
    /// 根据客户定制的行业关键词，监测关键词出现在媒体网站（新闻媒体、网络门户、政府网站、微信公众号、天天快报等）发布资讯标题和正文中的报道数，以及文章列表、来源渠道、作者、发布时间等。
    @inlinable
    public func describeIndustryNews(_ input: DescribeIndustryNewsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeIndustryNewsResponse {
        try await self.client.execute(action: "DescribeIndustryNews", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取定制任务媒体报道列表
    ///
    /// 根据客户定制的行业关键词，监测关键词出现在媒体网站（新闻媒体、网络门户、政府网站、微信公众号、天天快报等）发布资讯标题和正文中的报道数，以及文章列表、来源渠道、作者、发布时间等。
    @inlinable
    public func describeIndustryNews(industryId: String, startDate: Date, endDate: Date, showList: Bool? = nil, offset: Int64? = nil, limit: Int64? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeIndustryNewsResponse> {
        self.describeIndustryNews(DescribeIndustryNewsRequest(industryId: industryId, startDate: startDate, endDate: endDate, showList: showList, offset: offset, limit: limit), logger: logger, on: eventLoop)
    }

    /// 获取定制任务媒体报道列表
    ///
    /// 根据客户定制的行业关键词，监测关键词出现在媒体网站（新闻媒体、网络门户、政府网站、微信公众号、天天快报等）发布资讯标题和正文中的报道数，以及文章列表、来源渠道、作者、发布时间等。
    @inlinable
    public func describeIndustryNews(industryId: String, startDate: Date, endDate: Date, showList: Bool? = nil, offset: Int64? = nil, limit: Int64? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeIndustryNewsResponse {
        try await self.describeIndustryNews(DescribeIndustryNewsRequest(industryId: industryId, startDate: startDate, endDate: endDate, showList: showList, offset: offset, limit: limit), logger: logger, on: eventLoop)
    }
}
