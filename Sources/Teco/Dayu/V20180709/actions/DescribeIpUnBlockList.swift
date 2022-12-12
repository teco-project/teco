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

extension Dayu {
    /// DescribeIpUnBlockList请求参数结构体
    public struct DescribeIpUnBlockListRequest: TCRequestModel {
        /// 开始时间
        // FIXME: Codable support not implemented for datetime yet.
        public let beginTime: Date
        
        /// 结束时间
        // FIXME: Codable support not implemented for datetime yet.
        public let endTime: Date
        
        /// IP（不为空时，进行IP过滤）
        public let ip: String?
        
        /// 分页参数（不为空时，进行分页查询），此字段后面会弃用，请用Limit和Offset字段代替；
        public let paging: Paging?
        
        /// 一页条数，填0表示不分页
        public let limit: UInt64?
        
        /// 页起始偏移，取值为(页码-1)*一页条数
        public let offset: UInt64?
        
        public init (beginTime: Date, endTime: Date, ip: String? = nil, paging: Paging? = nil, limit: UInt64? = nil, offset: UInt64? = nil) {
            self.beginTime = beginTime
            self.endTime = endTime
            self.ip = ip
            self.paging = paging
            self.limit = limit
            self.offset = offset
        }
        
        enum CodingKeys: String, CodingKey {
            case beginTime = "BeginTime"
            case endTime = "EndTime"
            case ip = "Ip"
            case paging = "Paging"
            case limit = "Limit"
            case offset = "Offset"
        }
    }
    
    /// DescribeIpUnBlockList返回参数结构体
    public struct DescribeIpUnBlockListResponse: TCResponseModel {
        /// 开始时间
        public let beginTime: String
        
        /// 结束时间
        public let endTime: String
        
        /// IP解封记录
        public let list: [IpUnBlockData]
        
        /// 总记录数
        public let total: UInt64
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case beginTime = "BeginTime"
            case endTime = "EndTime"
            case list = "List"
            case total = "Total"
            case requestId = "RequestId"
        }
    }
    
    /// 获取IP解封记录
    @inlinable
    public func describeIpUnBlockList(_ input: DescribeIpUnBlockListRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeIpUnBlockListResponse > {
        self.client.execute(action: "DescribeIpUnBlockList", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 获取IP解封记录
    @inlinable
    public func describeIpUnBlockList(_ input: DescribeIpUnBlockListRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeIpUnBlockListResponse {
        try await self.client.execute(action: "DescribeIpUnBlockList", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
