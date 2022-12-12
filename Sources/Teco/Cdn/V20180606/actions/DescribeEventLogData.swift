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

extension Cdn {
    /// DescribeEventLogData请求参数结构体
    public struct DescribeEventLogDataRequest: TCRequestModel {
        /// 防护类型，映射如下：
        ///   waf = "Web攻击"
        ///   cc = "CC攻击"
        public let mode: String
        
        /// 开始时间
        public let startTime: String
        
        /// 结束时间，最长跨度为30分钟
        public let endTime: String
        
        /// 域名
        public let domain: String
        
        /// 执行动作，取值为：intercept/redirect/observe
        /// 分别表示：拦截/重定向/观察
        /// 参数放空，表示查询全部动作数据
        public let actionName: String
        
        /// 请求URL，支持URL开头和结尾使用\*表示通配
        /// 如：
        /// /files/* 表示所有以/files/开头的请求
        /// *.jpg 表示所有以.jpg结尾的请求
        public let url: String
        
        /// 地域 mainland 或者 overseas，为空时默认 mainland
        public let area: String?
        
        /// 来源产品，cdn 或者 ecdn，为空时默认 cdn
        public let source: String?
        
        public init (mode: String, startTime: String, endTime: String, domain: String, actionName: String, url: String, area: String? = nil, source: String? = nil) {
            self.mode = mode
            self.startTime = startTime
            self.endTime = endTime
            self.domain = domain
            self.actionName = actionName
            self.url = url
            self.area = area
            self.source = source
        }
        
        enum CodingKeys: String, CodingKey {
            case mode = "Mode"
            case startTime = "StartTime"
            case endTime = "EndTime"
            case domain = "Domain"
            case actionName = "ActionName"
            case url = "Url"
            case area = "Area"
            case source = "Source"
        }
    }
    
    /// DescribeEventLogData返回参数结构体
    public struct DescribeEventLogDataResponse: TCResponseModel {
        /// 统计曲线结果
        public let results: [EventLogStatsData]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case results = "Results"
            case requestId = "RequestId"
        }
    }
    
    /// 查询事件日志统计曲线
    ///
    /// DescribeEventLogData 用于查询事件日志统计曲线
    @inlinable
    public func describeEventLogData(_ input: DescribeEventLogDataRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeEventLogDataResponse > {
        self.client.execute(action: "DescribeEventLogData", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询事件日志统计曲线
    ///
    /// DescribeEventLogData 用于查询事件日志统计曲线
    @inlinable
    public func describeEventLogData(_ input: DescribeEventLogDataRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeEventLogDataResponse {
        try await self.client.execute(action: "DescribeEventLogData", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
