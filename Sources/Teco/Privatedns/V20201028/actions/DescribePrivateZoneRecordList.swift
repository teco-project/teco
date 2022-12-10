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

extension Privatedns {
    /// 获取私有域记录列表
    @inlinable
    public func describePrivateZoneRecordList(_ input: DescribePrivateZoneRecordListRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribePrivateZoneRecordListResponse > {
        self.client.execute(action: "DescribePrivateZoneRecordList", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 获取私有域记录列表
    @inlinable
    public func describePrivateZoneRecordList(_ input: DescribePrivateZoneRecordListRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePrivateZoneRecordListResponse {
        try await self.client.execute(action: "DescribePrivateZoneRecordList", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribePrivateZoneRecordList请求参数结构体
    public struct DescribePrivateZoneRecordListRequest: TCRequestModel {
        /// 私有域ID: zone-xxxxxx
        public let zoneId: String
        
        /// 过滤参数（支持使用Value、RecordType过滤）
        public let filters: [Filter]?
        
        /// 分页偏移量，从0开始
        public let offset: Int64?
        
        /// 分页限制数目， 最大200，默认20
        public let limit: Int64?
        
        public init (zoneId: String, filters: [Filter]?, offset: Int64?, limit: Int64?) {
            self.zoneId = zoneId
            self.filters = filters
            self.offset = offset
            self.limit = limit
        }
        
        enum CodingKeys: String, CodingKey {
            case zoneId = "ZoneId"
            case filters = "Filters"
            case offset = "Offset"
            case limit = "Limit"
        }
    }
    
    /// DescribePrivateZoneRecordList返回参数结构体
    public struct DescribePrivateZoneRecordListResponse: TCResponseModel {
        /// 解析记录数量
        public let totalCount: Int64
        
        /// 解析记录列表
        public let recordSet: [PrivateZoneRecord]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case recordSet = "RecordSet"
            case requestId = "RequestId"
        }
    }
}
