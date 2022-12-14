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

extension Cdn {
    /// ListScdnTopBotData请求参数结构体
    public struct ListScdnTopBotDataRequest: TCRequestModel {
        /// 获取Top量，取值范围[1-10]
        public let topCount: Int64
        
        /// 开始时间
        ///
        /// **Important:** This has to be a `var` due to a property wrapper restriction, which is about to be removed in the future.
        /// For discussions, see [Allow Property Wrappers on Let Declarations](https://forums.swift.org/t/pitch-allow-property-wrappers-on-let-declarations/61750).
        ///
        /// Although mutating this property is possible for now, it may become a `let` variable at any time. Please don't rely on such behavior.
        @TCTimestampEncoding public var startTime: Date
        
        /// 结束时间
        ///
        /// **Important:** This has to be a `var` due to a property wrapper restriction, which is about to be removed in the future.
        /// For discussions, see [Allow Property Wrappers on Let Declarations](https://forums.swift.org/t/pitch-allow-property-wrappers-on-let-declarations/61750).
        ///
        /// Although mutating this property is possible for now, it may become a `let` variable at any time. Please don't rely on such behavior.
        @TCTimestampEncoding public var endTime: Date
        
        /// mainland 大陆地区 overseas境外地区
        public let area: String
        
        /// session表示查询BOT会话的Top信息
        /// ip表示查询BOT客户端IP的Top信息
        /// 不填代表获取会话信息
        public let metric: String?
        
        /// 域名，仅当Metric=ip，并且Domain为空时有效，不填写表示获取AppID信息
        public let domains: [String]?
        
        public init (topCount: Int64, startTime: Date, endTime: Date, area: String, metric: String? = nil, domains: [String]? = nil) {
            self.topCount = topCount
            self.startTime = startTime
            self.endTime = endTime
            self.area = area
            self.metric = metric
            self.domains = domains
        }
        
        enum CodingKeys: String, CodingKey {
            case topCount = "TopCount"
            case startTime = "StartTime"
            case endTime = "EndTime"
            case area = "Area"
            case metric = "Metric"
            case domains = "Domains"
        }
    }
    
    /// ListScdnTopBotData返回参数结构体
    public struct ListScdnTopBotDataResponse: TCResponseModel {
        /// 域名BOT次数列表
        public let data: [BotStatisticsCount]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }
    
    /// 获取Bot攻击的Top数据列表
    @inlinable
    public func listScdnTopBotData(_ input: ListScdnTopBotDataRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ListScdnTopBotDataResponse > {
        self.client.execute(action: "ListScdnTopBotData", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 获取Bot攻击的Top数据列表
    @inlinable
    public func listScdnTopBotData(_ input: ListScdnTopBotDataRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListScdnTopBotDataResponse {
        try await self.client.execute(action: "ListScdnTopBotData", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// 获取Bot攻击的Top数据列表
    @inlinable
    public func listScdnTopBotData(topCount: Int64, startTime: Date, endTime: Date, area: String, metric: String? = nil, domains: [String]? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ListScdnTopBotDataResponse > {
        self.listScdnTopBotData(ListScdnTopBotDataRequest(topCount: topCount, startTime: startTime, endTime: endTime, area: area, metric: metric, domains: domains), logger: logger, on: eventLoop)
    }
    
    /// 获取Bot攻击的Top数据列表
    @inlinable
    public func listScdnTopBotData(topCount: Int64, startTime: Date, endTime: Date, area: String, metric: String? = nil, domains: [String]? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListScdnTopBotDataResponse {
        try await self.listScdnTopBotData(ListScdnTopBotDataRequest(topCount: topCount, startTime: startTime, endTime: endTime, area: area, metric: metric, domains: domains), logger: logger, on: eventLoop)
    }
}
