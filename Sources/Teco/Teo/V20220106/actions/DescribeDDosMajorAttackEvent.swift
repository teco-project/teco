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

extension Teo {
    /// DescribeDDosMajorAttackEvent请求参数结构体
    public struct DescribeDDosMajorAttackEventRequest: TCRequestModel {
        /// 开始时间。
        // FIXME: Codable support not implemented for datetime_iso yet.
        public let startTime: Date
        
        /// 结束时间。
        // FIXME: Codable support not implemented for datetime_iso yet.
        public let endTime: Date
        
        /// 分页拉取的最大返回结果数。最大值：1000。
        public let pageSize: Int64
        
        /// 分页拉取的起始页号。最小值：1。
        public let pageNo: Int64
        
        /// ddos 策略组id集合，不填默认选择全部策略id。
        public let policyIds: [Int64]?
        
        /// 协议类型，取值有：
        /// <li>tcp ；</li>
        /// <li>udp ；</li>
        /// <li>all 。</li>
        public let protocolType: String?
        
        /// 站点id列表，不填默认选择全部站点。
        public let zoneIds: [String]?
        
        /// 数据归属地区，取值有：
        /// <li>overseas ：全球（除中国大陆地区）数据 ；</li>
        /// <li>mainland ：中国大陆地区数据 。</li>不填默认查询overseas。
        public let area: String?
        
        public init (startTime: Date, endTime: Date, pageSize: Int64, pageNo: Int64, policyIds: [Int64]? = nil, protocolType: String? = nil, zoneIds: [String]? = nil, area: String? = nil) {
            self.startTime = startTime
            self.endTime = endTime
            self.pageSize = pageSize
            self.pageNo = pageNo
            self.policyIds = policyIds
            self.protocolType = protocolType
            self.zoneIds = zoneIds
            self.area = area
        }
        
        enum CodingKeys: String, CodingKey {
            case startTime = "StartTime"
            case endTime = "EndTime"
            case pageSize = "PageSize"
            case pageNo = "PageNo"
            case policyIds = "PolicyIds"
            case protocolType = "ProtocolType"
            case zoneIds = "ZoneIds"
            case area = "Area"
        }
    }
    
    /// DescribeDDosMajorAttackEvent返回参数结构体
    public struct DescribeDDosMajorAttackEventResponse: TCResponseModel {
        /// DDos查询主攻击事件。
        public let data: DDosMajorAttackEventData
        
        /// 请求响应状态，取值有：
        /// <li>1 ：失败 ；</li>
        /// <li>0 ：成功 。</li>
        public let status: Int64
        
        /// 请求响应消息。
        public let msg: String
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case status = "Status"
            case msg = "Msg"
            case requestId = "RequestId"
        }
    }
    
    /// 查询DDos主攻击事件
    @inlinable
    public func describeDDosMajorAttackEvent(_ input: DescribeDDosMajorAttackEventRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeDDosMajorAttackEventResponse > {
        self.client.execute(action: "DescribeDDosMajorAttackEvent", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询DDos主攻击事件
    @inlinable
    public func describeDDosMajorAttackEvent(_ input: DescribeDDosMajorAttackEventRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDDosMajorAttackEventResponse {
        try await self.client.execute(action: "DescribeDDosMajorAttackEvent", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
