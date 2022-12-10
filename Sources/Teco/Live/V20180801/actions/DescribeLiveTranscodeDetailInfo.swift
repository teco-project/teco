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
    /// 查询直播转码统计信息
    ///
    /// 支持查询某天或某段时间的转码详细信息。
    @inlinable
    public func describeLiveTranscodeDetailInfo(_ input: DescribeLiveTranscodeDetailInfoRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeLiveTranscodeDetailInfoResponse > {
        self.client.execute(action: "DescribeLiveTranscodeDetailInfo", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询直播转码统计信息
    ///
    /// 支持查询某天或某段时间的转码详细信息。
    @inlinable
    public func describeLiveTranscodeDetailInfo(_ input: DescribeLiveTranscodeDetailInfoRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLiveTranscodeDetailInfoResponse {
        try await self.client.execute(action: "DescribeLiveTranscodeDetailInfo", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeLiveTranscodeDetailInfo请求参数结构体
    public struct DescribeLiveTranscodeDetailInfoRequest: TCRequestModel {
        /// 推流域名。
        public let pushDomain: String?
        
        /// 流名称。
        public let streamName: String?
        
        /// 查询时间，北京时间，
        /// 格式：yyyymmdd。
        /// 注意：支持查询近1个月内某天的详细数据，截止到昨天。
        public let dayTime: String?
        
        /// 页数，默认1，
        /// 不超过100页。
        public let pageNum: UInt64?
        
        /// 每页个数，默认20，
        /// 范围：[10,1000]。
        public let pageSize: UInt64?
        
        /// 起始天时间，北京时间，
        /// 格式：yyyymmdd。
        /// 注意：支持查询近1个月内的详细数据。
        public let startDayTime: String?
        
        /// 结束天时间，北京时间，
        /// 格式：yyyymmdd。
        /// 注意：支持查询近1个月内的详细数据，截止到昨天，注意DayTime 与（StartDayTime，EndDayTime）必须要传一个，如果都传，会以DayTime为准 。
        public let endDayTime: String?
        
        public init (pushDomain: String?, streamName: String?, dayTime: String?, pageNum: UInt64?, pageSize: UInt64?, startDayTime: String?, endDayTime: String?) {
            self.pushDomain = pushDomain
            self.streamName = streamName
            self.dayTime = dayTime
            self.pageNum = pageNum
            self.pageSize = pageSize
            self.startDayTime = startDayTime
            self.endDayTime = endDayTime
        }
        
        enum CodingKeys: String, CodingKey {
            case pushDomain = "PushDomain"
            case streamName = "StreamName"
            case dayTime = "DayTime"
            case pageNum = "PageNum"
            case pageSize = "PageSize"
            case startDayTime = "StartDayTime"
            case endDayTime = "EndDayTime"
        }
    }
    
    /// DescribeLiveTranscodeDetailInfo返回参数结构体
    public struct DescribeLiveTranscodeDetailInfoResponse: TCResponseModel {
        /// 统计数据列表。
        public let dataInfoList: [TranscodeDetailInfo]
        
        /// 页码。
        public let pageNum: UInt64
        
        /// 每页个数。
        public let pageSize: UInt64
        
        /// 总个数。
        public let totalNum: UInt64
        
        /// 总页数。
        public let totalPage: UInt64
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case dataInfoList = "DataInfoList"
            case pageNum = "PageNum"
            case pageSize = "PageSize"
            case totalNum = "TotalNum"
            case totalPage = "TotalPage"
            case requestId = "RequestId"
        }
    }
}
