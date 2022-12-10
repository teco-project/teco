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

extension Cdn {
    /// 计费数据查询
    ///
    /// DescribeBillingData 用于查询实际计费数据明细。
    @inlinable
    public func describeBillingData(_ input: DescribeBillingDataRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeBillingDataResponse > {
        self.client.execute(action: "DescribeBillingData", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 计费数据查询
    ///
    /// DescribeBillingData 用于查询实际计费数据明细。
    @inlinable
    public func describeBillingData(_ input: DescribeBillingDataRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBillingDataResponse {
        try await self.client.execute(action: "DescribeBillingData", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeBillingData请求参数结构体
    public struct DescribeBillingDataRequest: TCRequestModel {
        /// 查询起始时间，如：2018-09-04 10:40:00，返回结果大于等于指定时间
        /// 根据指定时间粒度参数不同，会进行向前取整，如指定起始时间为 2018-09-04 10:40:00 按小时粒度查询，返回的第一个数据对应时间点为 2018-09-04 10:00:00
        /// 起始时间与结束时间间隔小于等于 90 天
        // FIXME: Codable support not implemented for datetime yet.
        public let startTime: Date
        
        /// 查询结束时间，如：2018-09-04 10:40:00，返回结果小于等于指定时间
        /// 根据指定时间粒度参数不同，会进行向前取整，如指定结束时间为  2018-09-04 10:40:00 按小时粒度查询时，返回的最后一个数据对应时间点为 2018-09-04 10:00:00
        /// 起始时间与结束时间间隔小于等于 90 天
        // FIXME: Codable support not implemented for datetime yet.
        public let endTime: Date
        
        /// 时间粒度，支持模式如下：
        /// min：1 分钟粒度，查询区间需要小于等于 24 小时
        /// 5min：5 分钟粒度，查询区间需要小于等于 31 天(计费数据粒度)
        /// hour：1 小时粒度，查询区间需要小于等于 31 天内
        /// day：天粒度，查询区间需要大于 31 天
        /// Area 字段为 overseas 时暂不支持1分钟粒度数据查询
        public let interval: String?
        
        /// 指定域名查询计费数据
        public let domain: String?
        
        /// 指定项目 ID 查询，[前往查看项目 ID](https://console.cloud.tencent.com/project)
        /// 若 Domain 参数填充了具体域名信息，则返回该域名的计费数据，而非指定项目计费数据
        public let project: Int64?
        
        /// 指定加速区域查询计费数据：
        /// mainland：中国境内
        /// overseas：中国境外
        /// 不填充时，默认为 mainland
        public let area: String?
        
        /// Area 为 overseas 时，指定国家/地区查询
        /// 省份、国家/地区编码可以查看 [省份编码映射](https://cloud.tencent.com/document/product/228/6316#.E7.9C.81.E4.BB.BD.E6.98.A0.E5.B0.84)
        /// 不填充时，查询所有国家/地区
        public let district: Int64?
        
        /// 计费统计类型
        /// flux：计费流量
        /// bandwidth：计费带宽
        /// 默认为 bandwidth
        public let metric: String?
        
        /// 指定查询的产品数据，可选为cdn或者ecdn，默认为cdn
        public let product: String?
        
        /// 指定查询时间的时区，默认UTC+08:00
        public let timeZone: String?
        
        public init (startTime: Date, endTime: Date, interval: String?, domain: String?, project: Int64?, area: String?, district: Int64?, metric: String?, product: String?, timeZone: String?) {
            self.startTime = startTime
            self.endTime = endTime
            self.interval = interval
            self.domain = domain
            self.project = project
            self.area = area
            self.district = district
            self.metric = metric
            self.product = product
            self.timeZone = timeZone
        }
        
        enum CodingKeys: String, CodingKey {
            case startTime = "StartTime"
            case endTime = "EndTime"
            case interval = "Interval"
            case domain = "Domain"
            case project = "Project"
            case area = "Area"
            case district = "District"
            case metric = "Metric"
            case product = "Product"
            case timeZone = "TimeZone"
        }
    }
    
    /// DescribeBillingData返回参数结构体
    public struct DescribeBillingDataResponse: TCResponseModel {
        /// 时间粒度，根据查询时传递参数指定：
        /// min：1 分钟粒度
        /// 5min：5 分钟粒度
        /// hour：1 小时粒度
        /// day：天粒度
        public let interval: String
        
        /// 数据明细
        public let data: [ResourceBillingData]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case interval = "Interval"
            case data = "Data"
            case requestId = "RequestId"
        }
    }
}
