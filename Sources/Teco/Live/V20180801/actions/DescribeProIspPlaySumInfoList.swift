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
    /// 查询分省份分运营商播放汇总数据
    ///
    /// 查询某段时间内每个国家地区每个省份每个运营商的平均每秒流量，总流量，总请求数信息。
    @inlinable
    public func describeProIspPlaySumInfoList(_ input: DescribeProIspPlaySumInfoListRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeProIspPlaySumInfoListResponse > {
        self.client.execute(action: "DescribeProIspPlaySumInfoList", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询分省份分运营商播放汇总数据
    ///
    /// 查询某段时间内每个国家地区每个省份每个运营商的平均每秒流量，总流量，总请求数信息。
    @inlinable
    public func describeProIspPlaySumInfoList(_ input: DescribeProIspPlaySumInfoListRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeProIspPlaySumInfoListResponse {
        try await self.client.execute(action: "DescribeProIspPlaySumInfoList", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeProIspPlaySumInfoList请求参数结构体
    public struct DescribeProIspPlaySumInfoListRequest: TCRequestModel {
        /// 起始时间，北京时间，
        /// 格式：yyyy-mm-dd HH:MM:SS。
        public let startTime: String
        
        /// 结束时间，北京时间，
        /// 格式：yyyy-mm-dd HH:MM:SS。
        /// 注：EndTime 和 StartTime 只支持最近1天的数据查询。
        public let endTime: String
        
        /// 统计的类型，可选值：”Province”(省份)，”Isp”(运营商)，“CountryOrArea”(国家或地区)。
        public let statType: String
        
        /// 播放域名列表，不填则为全部。
        public let playDomains: [String]?
        
        /// 页号，范围是[1,1000]，默认值是1。
        public let pageNum: UInt64?
        
        /// 每页个数，范围是[1,1000]，默认值是20。
        public let pageSize: UInt64?
        
        /// 地域，可选值：Mainland，Oversea，China，Foreign，Global（默认值）；如果为空，查询总的数据；如果为“Mainland”，查询中国大陆的数据；如果为“Oversea”，则查询中国大陆以外的数据；如果为China，查询中国的数据（包括港澳台）；如果为Foreign，查询国外的数据（不包括港澳台）。
        public let mainlandOrOversea: String?
        
        /// 输出字段使用的语言，可选值：Chinese（默认值），English；目前国家，省份和运营商支持多语言。
        public let outLanguage: String?
        
        public init (startTime: String, endTime: String, statType: String, playDomains: [String]?, pageNum: UInt64?, pageSize: UInt64?, mainlandOrOversea: String?, outLanguage: String?) {
            self.startTime = startTime
            self.endTime = endTime
            self.statType = statType
            self.playDomains = playDomains
            self.pageNum = pageNum
            self.pageSize = pageSize
            self.mainlandOrOversea = mainlandOrOversea
            self.outLanguage = outLanguage
        }
        
        enum CodingKeys: String, CodingKey {
            case startTime = "StartTime"
            case endTime = "EndTime"
            case statType = "StatType"
            case playDomains = "PlayDomains"
            case pageNum = "PageNum"
            case pageSize = "PageSize"
            case mainlandOrOversea = "MainlandOrOversea"
            case outLanguage = "OutLanguage"
        }
    }
    
    /// DescribeProIspPlaySumInfoList返回参数结构体
    public struct DescribeProIspPlaySumInfoListResponse: TCResponseModel {
        /// 总流量。
        public let totalFlux: Float
        
        /// 总请求数。
        public let totalRequest: UInt64
        
        /// 统计的类型。
        public let statType: String
        
        /// 每页的记录数。
        public let pageSize: UInt64
        
        /// 页号。
        public let pageNum: UInt64
        
        /// 总记录数。
        public let totalNum: UInt64
        
        /// 总页数。
        public let totalPage: UInt64
        
        /// 省份，运营商，国家或地区汇总数据列表。
        public let dataInfoList: [ProIspPlaySumInfo]
        
        /// 下载速度，单位：MB/s，计算方式：总流量/总时长。
        public let avgFluxPerSecond: Float
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case totalFlux = "TotalFlux"
            case totalRequest = "TotalRequest"
            case statType = "StatType"
            case pageSize = "PageSize"
            case pageNum = "PageNum"
            case totalNum = "TotalNum"
            case totalPage = "TotalPage"
            case dataInfoList = "DataInfoList"
            case avgFluxPerSecond = "AvgFluxPerSecond"
            case requestId = "RequestId"
        }
    }
}
