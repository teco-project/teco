//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Teco project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Cdn {
    /// DDoS统计数据查询
    ///
    /// DDoS统计数据查询
    @inlinable
    public func describeDDoSData(_ input: DescribeDDoSDataRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeDDoSDataResponse > {
        self.client.execute(action: "DescribeDDoSData", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// DDoS统计数据查询
    ///
    /// DDoS统计数据查询
    @inlinable
    public func describeDDoSData(_ input: DescribeDDoSDataRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDDoSDataResponse {
        try await self.client.execute(action: "DescribeDDoSData", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeDDoSData请求参数结构体
    public struct DescribeDDoSDataRequest: TCRequestModel {
        /// 查询起始时间，如：2018-09-04 10:40:00，返回结果大于等于指定时间
        public let startTime: String
        
        /// 查询结束时间，如：2018-09-04 10:40:00，返回结果小于等于指定时间
        public let endTime: String
        
        /// 时间粒度，支持以下几种模式：
        /// min：1 分钟粒度，指定查询区间 24 小时内（含 24 小时），可返回 1 分钟粒度明细数据
        /// 5min：5 分钟粒度，指定查询区间 31 天内（含 31 天），可返回 5 分钟粒度明细数据
        /// hour：1 小时粒度，指定查询区间 31 天内（含 31 天），可返回 1 小时粒度明细数据
        /// day：天粒度，指定查询区间大于 31 天，可返回天粒度明细数据
        public let interval: String
        
        public init (startTime: String, endTime: String, interval: String) {
            self.startTime = startTime
            self.endTime = endTime
            self.interval = interval
        }
        
        enum CodingKeys: String, CodingKey {
            case startTime = "StartTime"
            case endTime = "EndTime"
            case interval = "Interval"
        }
    }
    
    /// DescribeDDoSData返回参数结构体
    public struct DescribeDDoSDataResponse: TCResponseModel {
        /// DDoS统计数据数组
        public let data: [DDoSStatsData]
        
        /// 时间粒度：
        /// min：1 分钟粒度
        /// 5min：5 分钟粒度
        /// hour：1 小时粒度
        /// day：天粒度
        public let interval: String
        
        /// DDoS统计攻击带宽峰值数组
        public let attackBandwidthData: [DDoSAttackBandwidthData]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case interval = "Interval"
            case attackBandwidthData = "AttackBandwidthData"
            case requestId = "RequestId"
        }
    }
}