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

extension Dcdb {
    /// DescribeSqlLogs请求参数结构体
    public struct DescribeSqlLogsRequest: TCRequestModel {
        /// 实例 ID，形如：dcdbt-ow728lmc，可以通过 DescribeDCDBInstances 查询实例详情获得。
        public let instanceId: String
        
        /// SQL日志偏移。
        public let offset: UInt64?
        
        /// 拉取数量（0-10000，为0时拉取总数信息）。
        public let limit: UInt64?
        
        public init (instanceId: String, offset: UInt64? = nil, limit: UInt64? = nil) {
            self.instanceId = instanceId
            self.offset = offset
            self.limit = limit
        }
        
        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case offset = "Offset"
            case limit = "Limit"
        }
    }
    
    /// DescribeSqlLogs返回参数结构体
    public struct DescribeSqlLogsResponse: TCResponseModel {
        /// 当前消息队列中的sql日志条目数。
        public let totalCount: UInt64
        
        /// 消息队列中的sql日志起始偏移。
        public let startOffset: UInt64
        
        /// 消息队列中的sql日志结束偏移。
        public let endOffset: UInt64
        
        /// 返回的第一条sql日志的偏移。
        public let offset: UInt64
        
        /// 返回的sql日志数量。
        public let count: UInt64
        
        /// Sql日志列表。
        public let sqlItems: [SqlLogItem]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case startOffset = "StartOffset"
            case endOffset = "EndOffset"
            case offset = "Offset"
            case count = "Count"
            case sqlItems = "SqlItems"
            case requestId = "RequestId"
        }
    }
    
    /// 获取SQL日志
    ///
    /// 本接口（DescribeSqlLogs）用于获取实例SQL日志。
    @inlinable
    public func describeSqlLogs(_ input: DescribeSqlLogsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeSqlLogsResponse > {
        self.client.execute(action: "DescribeSqlLogs", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 获取SQL日志
    ///
    /// 本接口（DescribeSqlLogs）用于获取实例SQL日志。
    @inlinable
    public func describeSqlLogs(_ input: DescribeSqlLogsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSqlLogsResponse {
        try await self.client.execute(action: "DescribeSqlLogs", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
