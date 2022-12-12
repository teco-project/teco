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

extension Ecm {
    /// DescribePeakNetworkOverview请求参数结构体
    public struct DescribePeakNetworkOverviewRequest: TCRequestModel {
        /// 开始时间（xxxx-xx-xx）如2019-08-14，默认为一周之前的日期，不应与当前日期间隔超过30天。
        public let startTime: String?
        
        /// 结束时间（xxxx-xx-xx）如2019-08-14，默认为昨天，不应与当前日期间隔超过30天。当开始与结束间隔不超过1天时会返回1分钟粒度的数据，不超过7天时返回5分钟粒度的数据，否则返回1小时粒度的数据。
        public let endTime: String?
        
        /// 过滤条件。
        /// region    String      是否必填：否     （过滤条件）按照region过滤，不支持模糊匹配。注意 region 填上需要查询ecm region才能返回数据。
        /// area       String      是否必填：否     （过滤条件）按照大区过滤，不支持模糊匹配。大区包括：china-central、china-east等等，可以通过DescribeNode获得所有大区；也可使用ALL_REGION表示所有地区。
        /// isp         String      是否必填：否     （过滤条件）按照运营商过滤大区流量，运营商包括CTCC、CUCC和CMCC。只和area同时使用，且一次只能指定一种运营商。
        /// region和area只应填写一个。
        public let filters: [Filter]?
        
        /// 统计周期，单位秒。取值60/300。
        public let period: Int64?
        
        public init (startTime: String? = nil, endTime: String? = nil, filters: [Filter]? = nil, period: Int64? = nil) {
            self.startTime = startTime
            self.endTime = endTime
            self.filters = filters
            self.period = period
        }
        
        enum CodingKeys: String, CodingKey {
            case startTime = "StartTime"
            case endTime = "EndTime"
            case filters = "Filters"
            case period = "Period"
        }
    }
    
    /// DescribePeakNetworkOverview返回参数结构体
    public struct DescribePeakNetworkOverviewResponse: TCResponseModel {
        /// 网络峰值数组。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let peakNetworkRegionSet: [PeakNetworkRegionInfo]?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case peakNetworkRegionSet = "PeakNetworkRegionSet"
            case requestId = "RequestId"
        }
    }
    
    /// 获取网络峰值数据
    @inlinable
    public func describePeakNetworkOverview(_ input: DescribePeakNetworkOverviewRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribePeakNetworkOverviewResponse > {
        self.client.execute(action: "DescribePeakNetworkOverview", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 获取网络峰值数据
    @inlinable
    public func describePeakNetworkOverview(_ input: DescribePeakNetworkOverviewRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePeakNetworkOverviewResponse {
        try await self.client.execute(action: "DescribePeakNetworkOverview", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
