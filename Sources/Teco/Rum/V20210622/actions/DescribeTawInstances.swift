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

extension Rum {
    /// 查询实例信息
    @inlinable
    public func describeTawInstances(_ input: DescribeTawInstancesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeTawInstancesResponse > {
        self.client.execute(action: "DescribeTawInstances", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询实例信息
    @inlinable
    public func describeTawInstances(_ input: DescribeTawInstancesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTawInstancesResponse {
        try await self.client.execute(action: "DescribeTawInstances", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeTawInstances请求参数结构体
    public struct DescribeTawInstancesRequest: TCRequestModel {
        /// 计费状态
        public let chargeStatuses: [Int64]?
        
        /// 计费类型
        public let chargeTypes: [Int64]?
        
        /// 分页Limit
        public let limit: Int64?
        
        /// 分页Offset
        public let offset: Int64?
        
        /// 片区Id
        public let areaIds: [Int64]?
        
        /// 实例状态(1=创建中，2=运行中，3=异常，4=重启中，5=停止中，6=已停止，7=销毁中，8=已销毁), 该参数已废弃，请在Filters内注明
        public let instanceStatuses: [Int64]?
        
        /// 实例Id, 该参数已废弃，请在Filters内注明
        public let instanceIds: [String]?
        
        /// 过滤参数；demo模式传{"Name": "IsDemo", "Values":["1"]}
        public let filters: [Filter]?
        
        /// 该参数已废弃，demo模式请在Filters内注明
        public let isDemo: Int64?
        
        public init (chargeStatuses: [Int64]?, chargeTypes: [Int64]?, limit: Int64?, offset: Int64?, areaIds: [Int64]?, instanceStatuses: [Int64]?, instanceIds: [String]?, filters: [Filter]?, isDemo: Int64?) {
            self.chargeStatuses = chargeStatuses
            self.chargeTypes = chargeTypes
            self.limit = limit
            self.offset = offset
            self.areaIds = areaIds
            self.instanceStatuses = instanceStatuses
            self.instanceIds = instanceIds
            self.filters = filters
            self.isDemo = isDemo
        }
        
        enum CodingKeys: String, CodingKey {
            case chargeStatuses = "ChargeStatuses"
            case chargeTypes = "ChargeTypes"
            case limit = "Limit"
            case offset = "Offset"
            case areaIds = "AreaIds"
            case instanceStatuses = "InstanceStatuses"
            case instanceIds = "InstanceIds"
            case filters = "Filters"
            case isDemo = "IsDemo"
        }
    }
    
    /// DescribeTawInstances返回参数结构体
    public struct DescribeTawInstancesResponse: TCResponseModel {
        /// 实例列表
        public let instanceSet: [RumInstanceInfo]
        
        /// 实例总数
        public let totalCount: Int64
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case instanceSet = "InstanceSet"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }
    }
}
