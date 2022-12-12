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

extension Redis {
    /// InquiryPriceUpgradeInstance请求参数结构体
    public struct InquiryPriceUpgradeInstanceRequest: TCRequestModel {
        /// 实例Id
        public let instanceId: String
        
        /// 分片大小 单位 MB
        public let memSize: UInt64
        
        /// 分片数量，Redis2.8主从版、CKV主从版和Redis2.8单机版不需要填写
        public let redisShardNum: UInt64?
        
        /// 副本数量，Redis2.8主从版、CKV主从版和Redis2.8单机版不需要填写
        public let redisReplicasNum: UInt64?
        
        public init (instanceId: String, memSize: UInt64, redisShardNum: UInt64? = nil, redisReplicasNum: UInt64? = nil) {
            self.instanceId = instanceId
            self.memSize = memSize
            self.redisShardNum = redisShardNum
            self.redisReplicasNum = redisReplicasNum
        }
        
        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case memSize = "MemSize"
            case redisShardNum = "RedisShardNum"
            case redisReplicasNum = "RedisReplicasNum"
        }
    }
    
    /// InquiryPriceUpgradeInstance返回参数结构体
    public struct InquiryPriceUpgradeInstanceResponse: TCResponseModel {
        /// 价格，单位：分
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let price: Float?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case price = "Price"
            case requestId = "RequestId"
        }
    }
    
    /// 查询实例扩容价格
    @inlinable
    public func inquiryPriceUpgradeInstance(_ input: InquiryPriceUpgradeInstanceRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < InquiryPriceUpgradeInstanceResponse > {
        self.client.execute(action: "InquiryPriceUpgradeInstance", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询实例扩容价格
    @inlinable
    public func inquiryPriceUpgradeInstance(_ input: InquiryPriceUpgradeInstanceRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> InquiryPriceUpgradeInstanceResponse {
        try await self.client.execute(action: "InquiryPriceUpgradeInstance", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
