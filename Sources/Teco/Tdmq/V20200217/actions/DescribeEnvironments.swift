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

extension Tdmq {
    /// 获取命名空间列表
    ///
    /// 获取租户下命名空间列表
    @inlinable
    public func describeEnvironments(_ input: DescribeEnvironmentsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeEnvironmentsResponse > {
        self.client.execute(action: "DescribeEnvironments", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 获取命名空间列表
    ///
    /// 获取租户下命名空间列表
    @inlinable
    public func describeEnvironments(_ input: DescribeEnvironmentsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeEnvironmentsResponse {
        try await self.client.execute(action: "DescribeEnvironments", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeEnvironments请求参数结构体
    public struct DescribeEnvironmentsRequest: TCRequestModel {
        /// 命名空间名称，模糊搜索。
        public let environmentId: String?
        
        /// 起始下标，不填默认为0。
        public let offset: UInt64?
        
        /// 返回数量，不填则默认为10，最大值为20。
        public let limit: UInt64?
        
        /// Pulsar 集群的ID
        public let clusterId: String?
        
        /// * EnvironmentId
        /// 按照名称空间进行过滤，精确查询。
        /// 类型：String
        /// 必选：否
        public let filters: [Filter]?
        
        public init (environmentId: String?, offset: UInt64?, limit: UInt64?, clusterId: String?, filters: [Filter]?) {
            self.environmentId = environmentId
            self.offset = offset
            self.limit = limit
            self.clusterId = clusterId
            self.filters = filters
        }
        
        enum CodingKeys: String, CodingKey {
            case environmentId = "EnvironmentId"
            case offset = "Offset"
            case limit = "Limit"
            case clusterId = "ClusterId"
            case filters = "Filters"
        }
    }
    
    /// DescribeEnvironments返回参数结构体
    public struct DescribeEnvironmentsResponse: TCResponseModel {
        /// 命名空间记录数。
        public let totalCount: UInt64
        
        /// 命名空间集合数组。
        public let environmentSet: [Environment]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case environmentSet = "EnvironmentSet"
            case requestId = "RequestId"
        }
    }
}
