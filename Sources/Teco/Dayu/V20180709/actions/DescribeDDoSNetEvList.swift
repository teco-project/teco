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
    /// 获取高防IP专业版资源的DDoS攻击事件列表
    ///
    /// 获取高防IP专业版资源的DDoS攻击事件列表
    @inlinable
    public func describeDDoSNetEvList(_ input: DescribeDDoSNetEvListRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeDDoSNetEvListResponse > {
        self.client.execute(action: "DescribeDDoSNetEvList", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 获取高防IP专业版资源的DDoS攻击事件列表
    ///
    /// 获取高防IP专业版资源的DDoS攻击事件列表
    @inlinable
    public func describeDDoSNetEvList(_ input: DescribeDDoSNetEvListRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDDoSNetEvListResponse {
        try await self.client.execute(action: "DescribeDDoSNetEvList", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeDDoSNetEvList请求参数结构体
    public struct DescribeDDoSNetEvListRequest: TCRequestModel {
        /// 大禹子产品代号（net表示高防IP专业版）
        public let business: String
        
        /// 资源ID
        public let id: String
        
        /// 开始时间
        // FIXME: Codable support not implemented for datetime yet.
        public let startTime: Date
        
        /// 结束时间
        // FIXME: Codable support not implemented for datetime yet.
        public let endTime: Date
        
        /// 一页条数，填0表示不分页
        public let limit: UInt64?
        
        /// 页起始偏移，取值为(页码-1)*一页条数
        public let offset: UInt64?
        
        public init (business: String, id: String, startTime: Date, endTime: Date, limit: UInt64?, offset: UInt64?) {
            self.business = business
            self.id = id
            self.startTime = startTime
            self.endTime = endTime
            self.limit = limit
            self.offset = offset
        }
        
        enum CodingKeys: String, CodingKey {
            case business = "Business"
            case id = "Id"
            case startTime = "StartTime"
            case endTime = "EndTime"
            case limit = "Limit"
            case offset = "Offset"
        }
    }
    
    /// DescribeDDoSNetEvList返回参数结构体
    public struct DescribeDDoSNetEvListResponse: TCResponseModel {
        /// 大禹子产品代号（net表示高防IP专业版）
        public let business: String
        
        /// 资源ID
        public let id: String
        
        /// 开始时间
        // FIXME: Codable support not implemented for datetime yet.
        public let startTime: Date
        
        /// 结束时间
        // FIXME: Codable support not implemented for datetime yet.
        public let endTime: Date
        
        /// DDoS攻击事件列表
        public let data: [DDoSEventRecord]
        
        /// 总记录数
        public let total: UInt64
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case business = "Business"
            case id = "Id"
            case startTime = "StartTime"
            case endTime = "EndTime"
            case data = "Data"
            case total = "Total"
            case requestId = "RequestId"
        }
    }
}