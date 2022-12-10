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
    /// 查询某段时间top n客户端ip汇总信息
    ///
    /// 查询某段时间top n客户端ip汇总信息（暂支持top 1000）
    @inlinable
    public func describeTopClientIpSumInfoList(_ input: DescribeTopClientIpSumInfoListRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeTopClientIpSumInfoListResponse > {
        self.client.execute(action: "DescribeTopClientIpSumInfoList", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询某段时间top n客户端ip汇总信息
    ///
    /// 查询某段时间top n客户端ip汇总信息（暂支持top 1000）
    @inlinable
    public func describeTopClientIpSumInfoList(_ input: DescribeTopClientIpSumInfoListRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTopClientIpSumInfoListResponse {
        try await self.client.execute(action: "DescribeTopClientIpSumInfoList", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeTopClientIpSumInfoList请求参数结构体
    public struct DescribeTopClientIpSumInfoListRequest: TCRequestModel {
        /// 起始时间点，格式为yyyy-mm-dd HH:MM:SS。
        public let startTime: String
        
        /// 结束时间点，格式为yyyy-mm-dd HH:MM:SS
        /// 时间跨度在[0,4小时]，支持最近1天数据查询。
        public let endTime: String
        
        /// 播放域名，默认为不填，表示求总体数据。
        public let playDomains: [String]?
        
        /// 页号，范围是[1,1000]，默认值是1。
        public let pageNum: UInt64?
        
        /// 每页个数，范围是[1,1000]，默认值是20。
        public let pageSize: UInt64?
        
        /// 排序指标，可选值包括TotalRequest（默认值），FailedRequest,TotalFlux。
        public let orderParam: String?
        
        /// 地域，可选值：Mainland，Oversea，China，Foreign，Global（默认值）；如果为空，查询总的数据；如果为“Mainland”，查询中国大陆的数据；如果为“Oversea”，则查询中国大陆以外的数据；如果为China，查询中国的数据（包括港澳台）；如果为Foreign，查询国外的数据（不包括港澳台）。
        public let mainlandOrOversea: String?
        
        /// 输出字段使用的语言，可选值：Chinese（默认值），English；目前国家，省份和运营商支持多语言。
        public let outLanguage: String?
        
        public init (startTime: String, endTime: String, playDomains: [String]?, pageNum: UInt64?, pageSize: UInt64?, orderParam: String?, mainlandOrOversea: String?, outLanguage: String?) {
            self.startTime = startTime
            self.endTime = endTime
            self.playDomains = playDomains
            self.pageNum = pageNum
            self.pageSize = pageSize
            self.orderParam = orderParam
            self.mainlandOrOversea = mainlandOrOversea
            self.outLanguage = outLanguage
        }
        
        enum CodingKeys: String, CodingKey {
            case startTime = "StartTime"
            case endTime = "EndTime"
            case playDomains = "PlayDomains"
            case pageNum = "PageNum"
            case pageSize = "PageSize"
            case orderParam = "OrderParam"
            case mainlandOrOversea = "MainlandOrOversea"
            case outLanguage = "OutLanguage"
        }
    }
    
    /// DescribeTopClientIpSumInfoList返回参数结构体
    public struct DescribeTopClientIpSumInfoListResponse: TCResponseModel {
        /// 页号，范围是[1,1000]，默认值是1。
        public let pageNum: UInt64
        
        /// 每页个数，范围是[1,1000]，默认值是20。
        public let pageSize: UInt64
        
        /// 排序指标，可选值包括”TotalRequest”，”FailedRequest”,“TotalFlux”。
        public let orderParam: String
        
        /// 记录总数。
        public let totalNum: UInt64
        
        /// 记录总页数。
        public let totalPage: UInt64
        
        /// 数据内容。
        public let dataInfoList: [ClientIpPlaySumInfo]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case pageNum = "PageNum"
            case pageSize = "PageSize"
            case orderParam = "OrderParam"
            case totalNum = "TotalNum"
            case totalPage = "TotalPage"
            case dataInfoList = "DataInfoList"
            case requestId = "RequestId"
        }
    }
}
