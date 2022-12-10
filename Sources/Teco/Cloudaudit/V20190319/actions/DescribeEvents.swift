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

extension Cloudaudit {
    /// 查询云审计日志
    @inlinable
    public func describeEvents(_ input: DescribeEventsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeEventsResponse > {
        self.client.execute(action: "DescribeEvents", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询云审计日志
    @inlinable
    public func describeEvents(_ input: DescribeEventsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeEventsResponse {
        try await self.client.execute(action: "DescribeEvents", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeEvents请求参数结构体
    public struct DescribeEventsRequest: TCRequestModel {
        /// 起始时间戳（单位秒，不超过当前时间 90 天）
        public let startTime: UInt64
        
        /// 结束时间戳（单位秒，查询时间跨度小于 30 天）
        public let endTime: UInt64
        
        /// 查看更多日志的凭证
        public let nextToken: UInt64?
        
        /// 返回日志的最大条数（最大 50 条）
        public let maxResults: UInt64?
        
        /// 检索条件（目前支持 RequestId：请求 ID、EventName：事件名称、ActionType：操作类型（Write：写；Read：读）、PrincipalId：子账号、ResourceType：资源类型、ResourceName：资源名称、AccessKeyId：密钥 ID、SensitiveAction：是否敏感操作、ApiErrorCode：API 错误码、CamErrorCode：CAM 错误码、Tags：标签（AttributeValue格式：[{"key":"*","value":"*"}]））
        public let lookupAttributes: [LookupAttribute]?
        
        /// 是否返回 IP 归属地（1 返回，0 不返回）
        public let isReturnLocation: UInt64?
        
        public init (startTime: UInt64, endTime: UInt64, nextToken: UInt64?, maxResults: UInt64?, lookupAttributes: [LookupAttribute]?, isReturnLocation: UInt64?) {
            self.startTime = startTime
            self.endTime = endTime
            self.nextToken = nextToken
            self.maxResults = maxResults
            self.lookupAttributes = lookupAttributes
            self.isReturnLocation = isReturnLocation
        }
        
        enum CodingKeys: String, CodingKey {
            case startTime = "StartTime"
            case endTime = "EndTime"
            case nextToken = "NextToken"
            case maxResults = "MaxResults"
            case lookupAttributes = "LookupAttributes"
            case isReturnLocation = "IsReturnLocation"
        }
    }
    
    /// DescribeEvents返回参数结构体
    public struct DescribeEventsResponse: TCResponseModel {
        /// 日志集合是否结束。true表示结束，无需进行翻页。
        public let listOver: Bool
        
        /// 查看更多日志的凭证
        public let nextToken: UInt64
        
        /// 日志集合
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let events: [Event]?
        
        /// 此字段已经废弃。翻页请使用ListOver配合NextToken，在ListOver为false进行下一页数据读取。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let totalCount: UInt64?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case listOver = "ListOver"
            case nextToken = "NextToken"
            case events = "Events"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }
    }
}
