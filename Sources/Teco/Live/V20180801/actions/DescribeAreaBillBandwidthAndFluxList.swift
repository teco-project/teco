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

extension Live {
    /// 海外分区直播播放带宽和流量数据查询
    ///
    /// 海外分区直播播放带宽和流量数据查询。
    @inlinable
    public func describeAreaBillBandwidthAndFluxList(_ input: DescribeAreaBillBandwidthAndFluxListRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeAreaBillBandwidthAndFluxListResponse > {
        self.client.execute(action: "DescribeAreaBillBandwidthAndFluxList", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 海外分区直播播放带宽和流量数据查询
    ///
    /// 海外分区直播播放带宽和流量数据查询。
    @inlinable
    public func describeAreaBillBandwidthAndFluxList(_ input: DescribeAreaBillBandwidthAndFluxListRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAreaBillBandwidthAndFluxListResponse {
        try await self.client.execute(action: "DescribeAreaBillBandwidthAndFluxList", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeAreaBillBandwidthAndFluxList请求参数结构体
    public struct DescribeAreaBillBandwidthAndFluxListRequest: TCRequestModel {
        /// 起始时间点，格式为yyyy-mm-dd HH:MM:SS。
        public let startTime: String
        
        /// 结束时间点，格式为yyyy-mm-dd HH:MM:SS，起始和结束时间跨度不支持超过1天。
        public let endTime: String
        
        /// 直播播放域名，若不填，表示总体数据。
        public let playDomains: [String]?
        
        public init (startTime: String, endTime: String, playDomains: [String]?) {
            self.startTime = startTime
            self.endTime = endTime
            self.playDomains = playDomains
        }
        
        enum CodingKeys: String, CodingKey {
            case startTime = "StartTime"
            case endTime = "EndTime"
            case playDomains = "PlayDomains"
        }
    }
    
    /// DescribeAreaBillBandwidthAndFluxList返回参数结构体
    public struct DescribeAreaBillBandwidthAndFluxListResponse: TCResponseModel {
        /// 明细数据信息。
        public let dataInfoList: [BillAreaInfo]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case dataInfoList = "DataInfoList"
            case requestId = "RequestId"
        }
    }
}