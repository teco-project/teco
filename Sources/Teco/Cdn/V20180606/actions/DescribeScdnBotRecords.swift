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
import TecoDateHelpers
import TecoPaginationHelpers

extension Cdn {
    /// DescribeScdnBotRecords请求参数结构体
    public struct DescribeScdnBotRecordsRequest: TCPaginatedRequest {
        /// BOT类型，取值为"UB","UCB","TCB"，分别表示：未知类型，自定义类型，公开类型
        public let botType: String

        /// 域名
        public let domain: String

        /// 开始时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var startTime: Date

        /// 结束时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var endTime: Date

        /// 分页参数
        public let offset: UInt64

        /// 分页参数
        public let limit: UInt64

        /// mainland 大陆地区 overseas境外地区
        public let area: String

        /// 排序参数
        public let sortBy: [BotSortBy]?

        /// BotType=UB时，表示需要过滤的预测标签，取值如下：
        ///                 "crawler_unregular",
        ///                 "crawler_regular",
        ///                 "request_repeat",
        ///                 "credential_miss_user",
        ///                 "credential_without_user",
        ///                 "credential_only_action",
        ///                 "credential_user_password",
        ///                 "credential_cracking",
        ///                 "credential_stuffing",
        ///                 "brush_sms",
        ///                 "brush_captcha",
        ///                 "reg_malicious"
        /// BotType=TCB时，表示需要过滤的Bot分类，取值如下：
        ///                 "Uncategorised",
        ///                 "Search engine bot",
        ///                 "Site monitor",
        ///                 "Screenshot creator",
        ///                 "Link checker",
        ///                 "Web scraper",
        ///                 "Vulnerability scanner",
        ///                 "Virus scanner",
        ///                 "Speed tester",
        ///                 "Feed Fetcher",
        ///                 "Tool",
        ///                 "Marketing"
        /// BotType=UCB时，取值如下：
        /// User-Agent为空或不存在
        /// User-Agent类型为BOT
        /// User-Agent类型为HTTP Library
        /// User-Agent类型为Framework
        /// User-Agent类型为Tools
        /// User-Agent类型为Unkonwn BOT
        /// User-Agent类型为Scanner
        /// Referer空或不存在
        /// Referer滥用(多个UA使用相同Referer)
        /// Cookie滥用(多个UA使用相同Cookie)
        /// Cookie空或不存在
        /// Connection空或不存在
        /// Accept空或不存在
        /// Accept-Language空或不存在
        /// Accept-Enconding空或不存在
        /// 使用HTTP HEAD方法
        /// HTTP协议为1.0或者更低
        /// IDC-IP 腾讯云
        /// IDC-IP 阿里云
        /// IDC-IP 华为云
        /// IDC-IP 金山云
        /// IDC-IP UCloud
        /// IDC-IP 百度云
        /// IDC-IP 京东云
        /// IDC-IP 青云
        /// IDC-IP Aws
        /// IDC-IP Azure
        /// IDC-IP Google
        ///
        /// 以上所有类型，FilterName为空时，表示不过滤，获取所有内容
        public let filterName: String?

        /// 目前支持的Action
        /// "intercept" 拦截
        /// "monitor"，监控
        /// "permit" 放行
        /// "redirect" 重定向
        ///
        /// 尚未支持的Action
        /// "captcha" 验证码
        public let filterAction: String?

        /// 过滤的IP
        public let filterIp: String?

        /// 域名列表，为空表示查询AppID维度数据
        public let domains: [String]?

        public init(botType: String, domain: String, startTime: Date, endTime: Date, offset: UInt64, limit: UInt64, area: String, sortBy: [BotSortBy]? = nil, filterName: String? = nil, filterAction: String? = nil, filterIp: String? = nil, domains: [String]? = nil) {
            self.botType = botType
            self.domain = domain
            self._startTime = .init(wrappedValue: startTime)
            self._endTime = .init(wrappedValue: endTime)
            self.offset = offset
            self.limit = limit
            self.area = area
            self.sortBy = sortBy
            self.filterName = filterName
            self.filterAction = filterAction
            self.filterIp = filterIp
            self.domains = domains
        }

        enum CodingKeys: String, CodingKey {
            case botType = "BotType"
            case domain = "Domain"
            case startTime = "StartTime"
            case endTime = "EndTime"
            case offset = "Offset"
            case limit = "Limit"
            case area = "Area"
            case sortBy = "SortBy"
            case filterName = "FilterName"
            case filterAction = "FilterAction"
            case filterIp = "FilterIp"
            case domains = "Domains"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeScdnBotRecordsResponse) -> DescribeScdnBotRecordsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeScdnBotRecordsRequest(botType: self.botType, domain: self.domain, startTime: self.startTime, endTime: self.endTime, offset: self.offset + .init(response.getItems().count), limit: self.limit, area: self.area, sortBy: self.sortBy, filterName: self.filterName, filterAction: self.filterAction, filterIp: self.filterIp, domains: self.domains)
        }
    }

    /// DescribeScdnBotRecords返回参数结构体
    public struct DescribeScdnBotRecordsResponse: TCPaginatedResponse {
        /// BOT拦截结果数组
        public let data: [BotRecord]

        /// 记录数量
        public let totalCount: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [BotRecord] {
            self.data
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 查询BOT会话记录列表
    @inlinable
    public func describeScdnBotRecords(_ input: DescribeScdnBotRecordsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeScdnBotRecordsResponse> {
        self.client.execute(action: "DescribeScdnBotRecords", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询BOT会话记录列表
    @inlinable
    public func describeScdnBotRecords(_ input: DescribeScdnBotRecordsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeScdnBotRecordsResponse {
        try await self.client.execute(action: "DescribeScdnBotRecords", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询BOT会话记录列表
    @inlinable
    public func describeScdnBotRecords(botType: String, domain: String, startTime: Date, endTime: Date, offset: UInt64, limit: UInt64, area: String, sortBy: [BotSortBy]? = nil, filterName: String? = nil, filterAction: String? = nil, filterIp: String? = nil, domains: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeScdnBotRecordsResponse> {
        let input = DescribeScdnBotRecordsRequest(botType: botType, domain: domain, startTime: startTime, endTime: endTime, offset: offset, limit: limit, area: area, sortBy: sortBy, filterName: filterName, filterAction: filterAction, filterIp: filterIp, domains: domains)
        return self.client.execute(action: "DescribeScdnBotRecords", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询BOT会话记录列表
    @inlinable
    public func describeScdnBotRecords(botType: String, domain: String, startTime: Date, endTime: Date, offset: UInt64, limit: UInt64, area: String, sortBy: [BotSortBy]? = nil, filterName: String? = nil, filterAction: String? = nil, filterIp: String? = nil, domains: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeScdnBotRecordsResponse {
        let input = DescribeScdnBotRecordsRequest(botType: botType, domain: domain, startTime: startTime, endTime: endTime, offset: offset, limit: limit, area: area, sortBy: sortBy, filterName: filterName, filterAction: filterAction, filterIp: filterIp, domains: domains)
        return try await self.client.execute(action: "DescribeScdnBotRecords", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询BOT会话记录列表
    @inlinable
    public func describeScdnBotRecordsPaginated(_ input: DescribeScdnBotRecordsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [BotRecord])> {
        self.client.paginate(input: input, region: region, command: self.describeScdnBotRecords, logger: logger, on: eventLoop)
    }

    /// 查询BOT会话记录列表
    @inlinable @discardableResult
    public func describeScdnBotRecordsPaginated(_ input: DescribeScdnBotRecordsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeScdnBotRecordsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeScdnBotRecords, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询BOT会话记录列表
    ///
    /// - Returns: `AsyncSequence`s of `BotRecord` and `DescribeScdnBotRecordsResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeScdnBotRecordsPaginator(_ input: DescribeScdnBotRecordsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeScdnBotRecordsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeScdnBotRecords, logger: logger, on: eventLoop)
    }
}
