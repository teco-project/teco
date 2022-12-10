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

extension Live {
    /// 按省份运营商查询播放信息
    ///
    /// 查询某省份某运营商下行播放数据，包括带宽，流量，请求数，并发连接数信息。
    @inlinable
    public func describeProvinceIspPlayInfoList(_ input: DescribeProvinceIspPlayInfoListRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeProvinceIspPlayInfoListResponse > {
        self.client.execute(action: "DescribeProvinceIspPlayInfoList", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 按省份运营商查询播放信息
    ///
    /// 查询某省份某运营商下行播放数据，包括带宽，流量，请求数，并发连接数信息。
    @inlinable
    public func describeProvinceIspPlayInfoList(_ input: DescribeProvinceIspPlayInfoListRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeProvinceIspPlayInfoListResponse {
        try await self.client.execute(action: "DescribeProvinceIspPlayInfoList", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeProvinceIspPlayInfoList请求参数结构体
    public struct DescribeProvinceIspPlayInfoListRequest: TCRequestModel {
        /// 起始时间点，当前使用北京时间，
        /// 例：2019-02-21 10:00:00。
        public let startTime: String
        
        /// 结束时间点，当前使用北京时间，
        /// 例：2019-02-21 12:00:00。
        /// 注：EndTime 和 StartTime 只支持最近1天的数据查询。
        public let endTime: String
        
        /// 支持如下粒度：
        /// 1：1分钟粒度（跨度不支持超过1天）
        public let granularity: UInt64
        
        /// 统计指标类型：
        /// “Bandwidth”：带宽
        /// “FluxPerSecond”：平均流量
        /// “Flux”：流量
        /// “Request”：请求数
        /// “Online”：并发连接数
        public let statType: String
        
        /// 播放域名列表。
        public let playDomains: [String]?
        
        /// 要查询的省份（地区）英文名称列表，如 Beijing。
        public let provinceNames: [String]?
        
        /// 要查询的运营商英文名称列表，如 China Mobile ，如果为空，查询所有运营商的数据。
        public let ispNames: [String]?
        
        /// 地域，可选值：Mainland，Oversea，China，Foreign，Global（默认值）；如果为空，查询总的数据；如果为“Mainland”，查询中国大陆的数据；如果为“Oversea”，则查询中国大陆以外的数据；如果为China，查询中国的数据（包括港澳台）；如果为Foreign，查询国外的数据（不包括港澳台）。
        public let mainlandOrOversea: String?
        
        /// ip类型：
        /// “Ipv6”：Ipv6数据
        /// 如果为空，查询总的数据；
        public let ipType: String?
        
        public init (startTime: String, endTime: String, granularity: UInt64, statType: String, playDomains: [String]?, provinceNames: [String]?, ispNames: [String]?, mainlandOrOversea: String?, ipType: String?) {
            self.startTime = startTime
            self.endTime = endTime
            self.granularity = granularity
            self.statType = statType
            self.playDomains = playDomains
            self.provinceNames = provinceNames
            self.ispNames = ispNames
            self.mainlandOrOversea = mainlandOrOversea
            self.ipType = ipType
        }
        
        enum CodingKeys: String, CodingKey {
            case startTime = "StartTime"
            case endTime = "EndTime"
            case granularity = "Granularity"
            case statType = "StatType"
            case playDomains = "PlayDomains"
            case provinceNames = "ProvinceNames"
            case ispNames = "IspNames"
            case mainlandOrOversea = "MainlandOrOversea"
            case ipType = "IpType"
        }
    }
    
    /// DescribeProvinceIspPlayInfoList返回参数结构体
    public struct DescribeProvinceIspPlayInfoListResponse: TCResponseModel {
        /// 播放信息列表。
        public let dataInfoList: [PlayStatInfo]
        
        /// 统计的类型，和输入参数保持一致。
        public let statType: String
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case dataInfoList = "DataInfoList"
            case statType = "StatType"
            case requestId = "RequestId"
        }
    }
}
