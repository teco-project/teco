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

extension Tsf {
    /// 业务日志搜索
    @inlinable
    public func searchBusinessLog(_ input: SearchBusinessLogRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < SearchBusinessLogResponse > {
        self.client.execute(action: "SearchBusinessLog", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 业务日志搜索
    @inlinable
    public func searchBusinessLog(_ input: SearchBusinessLogRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SearchBusinessLogResponse {
        try await self.client.execute(action: "SearchBusinessLog", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// SearchBusinessLog请求参数结构体
    public struct SearchBusinessLogRequest: TCRequestModel {
        /// 日志配置项ID
        public let configId: String
        
        /// 机器实例ID，不传表示全部实例
        public let instanceIds: [String]?
        
        /// 开始时间
        public let startTime: Date?
        
        /// 结束时间
        public let endTime: Date?
        
        /// 请求偏移量，取值范围大于等于0，默认值为0
        public let offset: UInt64?
        
        /// 单页请求配置数量，取值范围[1, 200]，默认值为50
        public let limit: UInt64?
        
        /// 排序规则，默认值"time"
        public let orderBy: String?
        
        /// 排序方式，取值"asc"或"desc"，默认值"desc"
        public let orderType: String?
        
        /// 检索关键词
        public let searchWords: [String]?
        
        /// 部署组ID列表，不传表示全部部署组
        public let groupIds: [String]?
        
        /// 检索类型，取值"LUCENE", "REGEXP", "NORMAL"
        public let searchWordType: String?
        
        /// 批量请求类型，取值"page"或"scroll"
        public let batchType: String?
        
        /// 游标ID
        public let scrollId: String?
        
        public init (configId: String, instanceIds: [String]?, startTime: Date?, endTime: Date?, offset: UInt64?, limit: UInt64?, orderBy: String?, orderType: String?, searchWords: [String]?, groupIds: [String]?, searchWordType: String?, batchType: String?, scrollId: String?) {
            self.configId = configId
            self.instanceIds = instanceIds
            self.startTime = startTime
            self.endTime = endTime
            self.offset = offset
            self.limit = limit
            self.orderBy = orderBy
            self.orderType = orderType
            self.searchWords = searchWords
            self.groupIds = groupIds
            self.searchWordType = searchWordType
            self.batchType = batchType
            self.scrollId = scrollId
        }
        
        enum CodingKeys: String, CodingKey {
            case configId = "ConfigId"
            case instanceIds = "InstanceIds"
            case startTime = "StartTime"
            case endTime = "EndTime"
            case offset = "Offset"
            case limit = "Limit"
            case orderBy = "OrderBy"
            case orderType = "OrderType"
            case searchWords = "SearchWords"
            case groupIds = "GroupIds"
            case searchWordType = "SearchWordType"
            case batchType = "BatchType"
            case scrollId = "ScrollId"
        }
    }
    
    /// SearchBusinessLog返回参数结构体
    public struct SearchBusinessLogResponse: TCResponseModel {
        /// 业务日志列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: TsfPageBusinessLogV2
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }
}
