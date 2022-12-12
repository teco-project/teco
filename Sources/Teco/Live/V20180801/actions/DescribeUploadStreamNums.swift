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
    /// DescribeUploadStreamNums请求参数结构体
    public struct DescribeUploadStreamNumsRequest: TCRequestModel {
        /// 起始时间点，格式为yyyy-mm-dd HH:MM:SS。
        public let startTime: String
        
        /// 结束时间点，格式为yyyy-mm-dd HH:MM:SS，起始和结束时间跨度不支持超过31天。支持最近31天的数据查询
        public let endTime: String
        
        /// 直播域名，若不填，表示总体数据。
        public let domains: [String]?
        
        /// 数据粒度，支持如下粒度：
        /// 5：5分钟粒度，（跨度不支持超过1天），
        /// 1440：天粒度（跨度不支持超过一个月）。
        /// 默认值：5。
        public let granularity: UInt64?
        
        public init (startTime: String, endTime: String, domains: [String]? = nil, granularity: UInt64? = nil) {
            self.startTime = startTime
            self.endTime = endTime
            self.domains = domains
            self.granularity = granularity
        }
        
        enum CodingKeys: String, CodingKey {
            case startTime = "StartTime"
            case endTime = "EndTime"
            case domains = "Domains"
            case granularity = "Granularity"
        }
    }
    
    /// DescribeUploadStreamNums返回参数结构体
    public struct DescribeUploadStreamNumsResponse: TCResponseModel {
        /// 明细数据信息
        public let dataInfoList: [ConcurrentRecordStreamNum]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case dataInfoList = "DataInfoList"
            case requestId = "RequestId"
        }
    }
    
    /// 直播上行路数查询
    @inlinable
    public func describeUploadStreamNums(_ input: DescribeUploadStreamNumsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeUploadStreamNumsResponse > {
        self.client.execute(action: "DescribeUploadStreamNums", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 直播上行路数查询
    @inlinable
    public func describeUploadStreamNums(_ input: DescribeUploadStreamNumsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeUploadStreamNumsResponse {
        try await self.client.execute(action: "DescribeUploadStreamNums", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
