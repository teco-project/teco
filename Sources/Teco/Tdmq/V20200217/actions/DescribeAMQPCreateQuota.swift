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

extension Tdmq {
    /// 获取用户配额
    ///
    /// 获取用户的配额，如Queue容量，Exchange容量，Vhost容量，单Vhost Tps数,剩余可创建集群数
    @inlinable
    public func describeAMQPCreateQuota(_ input: DescribeAMQPCreateQuotaRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeAMQPCreateQuotaResponse > {
        self.client.execute(action: "DescribeAMQPCreateQuota", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 获取用户配额
    ///
    /// 获取用户的配额，如Queue容量，Exchange容量，Vhost容量，单Vhost Tps数,剩余可创建集群数
    @inlinable
    public func describeAMQPCreateQuota(_ input: DescribeAMQPCreateQuotaRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAMQPCreateQuotaResponse {
        try await self.client.execute(action: "DescribeAMQPCreateQuota", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeAMQPCreateQuota请求参数结构体
    public struct DescribeAMQPCreateQuotaRequest: TCRequestModel {
        public init () {
        }
    }
    
    /// DescribeAMQPCreateQuota返回参数结构体
    public struct DescribeAMQPCreateQuotaResponse: TCResponseModel {
        /// 租户总共可使用集群数量
        public let maxClusterNum: UInt64
        
        /// 租户已创建集群数量
        public let usedClusterNum: UInt64
        
        /// Exchange容量
        public let exchangeCapacity: UInt64
        
        /// Queue容量
        public let queueCapacity: UInt64
        
        /// 单Vhost TPS
        public let maxTpsPerVHost: UInt64
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case maxClusterNum = "MaxClusterNum"
            case usedClusterNum = "UsedClusterNum"
            case exchangeCapacity = "ExchangeCapacity"
            case queueCapacity = "QueueCapacity"
            case maxTpsPerVHost = "MaxTpsPerVHost"
            case requestId = "RequestId"
        }
    }
}