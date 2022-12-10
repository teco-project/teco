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

extension Vpc {
    /// 查询流日志集合
    ///
    /// 本接口（DescribeFlowLogs）用于查询获取流日志集合
    @inlinable
    public func describeFlowLogs(_ input: DescribeFlowLogsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeFlowLogsResponse > {
        self.client.execute(action: "DescribeFlowLogs", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询流日志集合
    ///
    /// 本接口（DescribeFlowLogs）用于查询获取流日志集合
    @inlinable
    public func describeFlowLogs(_ input: DescribeFlowLogsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeFlowLogsResponse {
        try await self.client.execute(action: "DescribeFlowLogs", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeFlowLogs请求参数结构体
    public struct DescribeFlowLogsRequest: TCRequestModel {
        /// 私用网络ID或者统一ID，建议使用统一ID
        public let vpcId: String?
        
        /// 流日志唯一ID
        public let flowLogId: String?
        
        /// 流日志实例名字
        public let flowLogName: String?
        
        /// 流日志所属资源类型，VPC|SUBNET|NETWORKINTERFACE
        public let resourceType: String?
        
        /// 资源唯一ID
        public let resourceId: String?
        
        /// 流日志采集类型，ACCEPT|REJECT|ALL
        public let trafficType: String?
        
        /// 流日志存储ID
        public let cloudLogId: String?
        
        /// 流日志存储ID状态
        public let cloudLogState: String?
        
        /// 按某个字段排序,支持字段：flowLogName,createTime，默认按createTime
        public let orderField: String?
        
        /// 升序（asc）还是降序（desc）,默认：desc
        public let orderDirection: String?
        
        /// 偏移量，默认为0。
        public let offset: UInt64?
        
        /// 每页行数，默认为10
        public let limit: UInt64?
        
        /// 过滤条件，参数不支持同时指定FlowLogIds和Filters。
        /// <li>tag-key - String -是否必填：否- （过滤条件）按照标签键进行过滤。</li>
        /// <li>tag:tag-key - String - 是否必填：否 - （过滤条件）按照标签键值对进行过滤。 tag-key使用具体的标签键进行替换。</li>
        public let filters: Filter
        
        /// 流日志存储ID对应的地域信息
        public let cloudLogRegion: String?
        
        public init (vpcId: String?, flowLogId: String?, flowLogName: String?, resourceType: String?, resourceId: String?, trafficType: String?, cloudLogId: String?, cloudLogState: String?, orderField: String?, orderDirection: String?, offset: UInt64?, limit: UInt64?, filters: Filter, cloudLogRegion: String?) {
            self.vpcId = vpcId
            self.flowLogId = flowLogId
            self.flowLogName = flowLogName
            self.resourceType = resourceType
            self.resourceId = resourceId
            self.trafficType = trafficType
            self.cloudLogId = cloudLogId
            self.cloudLogState = cloudLogState
            self.orderField = orderField
            self.orderDirection = orderDirection
            self.offset = offset
            self.limit = limit
            self.filters = filters
            self.cloudLogRegion = cloudLogRegion
        }
        
        enum CodingKeys: String, CodingKey {
            case vpcId = "VpcId"
            case flowLogId = "FlowLogId"
            case flowLogName = "FlowLogName"
            case resourceType = "ResourceType"
            case resourceId = "ResourceId"
            case trafficType = "TrafficType"
            case cloudLogId = "CloudLogId"
            case cloudLogState = "CloudLogState"
            case orderField = "OrderField"
            case orderDirection = "OrderDirection"
            case offset = "Offset"
            case limit = "Limit"
            case filters = "Filters"
            case cloudLogRegion = "CloudLogRegion"
        }
    }
    
    /// DescribeFlowLogs返回参数结构体
    public struct DescribeFlowLogsResponse: TCResponseModel {
        /// 流日志实例集合
        public let flowLog: [FlowLog]
        
        /// 流日志总数目
        public let totalNum: UInt64
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case flowLog = "FlowLog"
            case totalNum = "TotalNum"
            case requestId = "RequestId"
        }
    }
}
