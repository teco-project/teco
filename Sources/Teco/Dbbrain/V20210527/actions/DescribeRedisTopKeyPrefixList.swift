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

@_exported import struct Foundation.Date

extension Dbbrain {
    /// 查询redis实例top key前缀列表
    ///
    /// 查询redis实例top key前缀列表。
    @inlinable
    public func describeRedisTopKeyPrefixList(_ input: DescribeRedisTopKeyPrefixListRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeRedisTopKeyPrefixListResponse > {
        self.client.execute(action: "DescribeRedisTopKeyPrefixList", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询redis实例top key前缀列表
    ///
    /// 查询redis实例top key前缀列表。
    @inlinable
    public func describeRedisTopKeyPrefixList(_ input: DescribeRedisTopKeyPrefixListRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRedisTopKeyPrefixListResponse {
        try await self.client.execute(action: "DescribeRedisTopKeyPrefixList", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeRedisTopKeyPrefixList请求参数结构体
    public struct DescribeRedisTopKeyPrefixListRequest: TCRequestModel {
        /// 实例ID。
        public let instanceId: String
        
        /// 查询日期，如2021-05-27，最早可为前30天的日期。
        // FIXME: Codable support not implemented for date yet.
        public let date: Date
        
        /// 服务产品类型，支持值包括 "redis" - 云数据库 Redis。
        public let product: String
        
        /// 查询数目，默认为20，最大值为100。
        public let limit: Int64?
        
        public init (instanceId: String, date: Date, product: String, limit: Int64?) {
            self.instanceId = instanceId
            self.date = date
            self.product = product
            self.limit = limit
        }
        
        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case date = "Date"
            case product = "Product"
            case limit = "Limit"
        }
    }
    
    /// DescribeRedisTopKeyPrefixList返回参数结构体
    public struct DescribeRedisTopKeyPrefixListResponse: TCResponseModel {
        /// top key前缀列表。
        public let items: [RedisPreKeySpaceData]
        
        /// 采集时间戳（秒）。
        public let timestamp: Int64
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case items = "Items"
            case timestamp = "Timestamp"
            case requestId = "RequestId"
        }
    }
}