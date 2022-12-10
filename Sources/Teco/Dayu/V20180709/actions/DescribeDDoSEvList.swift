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

@_exported import struct Foundation.Date

extension Dayu {
    /// 获取DDoS攻击事件列表
    ///
    /// 获取DDoS攻击事件列表
    @inlinable
    public func describeDDoSEvList(_ input: DescribeDDoSEvListRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeDDoSEvListResponse > {
        self.client.execute(action: "DescribeDDoSEvList", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 获取DDoS攻击事件列表
    ///
    /// 获取DDoS攻击事件列表
    @inlinable
    public func describeDDoSEvList(_ input: DescribeDDoSEvListRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDDoSEvListResponse {
        try await self.client.execute(action: "DescribeDDoSEvList", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeDDoSEvList请求参数结构体
    public struct DescribeDDoSEvListRequest: TCRequestModel {
        /// 大禹子产品代号（bgpip表示高防IP；bgp表示独享包；bgp-multip表示共享包；net表示高防IP专业版；basic表示DDoS基础防护）
        public let business: String
        
        /// 开始时间
        // FIXME: Codable support not implemented for datetime yet.
        public let startTime: Date
        
        /// 结束时间
        // FIXME: Codable support not implemented for datetime yet.
        public let endTime: Date
        
        /// 资源实例ID，当Business为basic时，此字段不用填写（因为基础防护没有资源实例）
        public let id: String?
        
        /// 资源的IP
        public let ipList: [String]?
        
        /// 是否超过弹性防护峰值，取值[yes(是)，no(否)]，填写空字符串时表示不进行过滤
        public let overLoad: String?
        
        /// 一页条数，填0表示不分页
        public let limit: UInt64?
        
        /// 页起始偏移，取值为(页码-1)*一页条数
        public let offset: UInt64?
        
        public init (business: String, startTime: Date, endTime: Date, id: String?, ipList: [String]?, overLoad: String?, limit: UInt64?, offset: UInt64?) {
            self.business = business
            self.startTime = startTime
            self.endTime = endTime
            self.id = id
            self.ipList = ipList
            self.overLoad = overLoad
            self.limit = limit
            self.offset = offset
        }
        
        enum CodingKeys: String, CodingKey {
            case business = "Business"
            case startTime = "StartTime"
            case endTime = "EndTime"
            case id = "Id"
            case ipList = "IpList"
            case overLoad = "OverLoad"
            case limit = "Limit"
            case offset = "Offset"
        }
    }
    
    /// DescribeDDoSEvList返回参数结构体
    public struct DescribeDDoSEvListResponse: TCResponseModel {
        /// 大禹子产品代号（bgpip表示高防IP；bgp表示独享包；bgp-multip表示共享包；net表示高防IP专业版；basic表示DDoS基础防护）
        public let business: String
        
        /// 资源ID
        public let id: String
        
        /// 资源的IP
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let ipList: [String]?
        
        /// 开始时间
        public let startTime: String
        
        /// 结束时间
        public let endTime: String
        
        /// DDoS攻击事件列表
        public let data: [DDoSEventRecord]
        
        /// 总记录数
        public let total: UInt64
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case business = "Business"
            case id = "Id"
            case ipList = "IpList"
            case startTime = "StartTime"
            case endTime = "EndTime"
            case data = "Data"
            case total = "Total"
            case requestId = "RequestId"
        }
    }
}