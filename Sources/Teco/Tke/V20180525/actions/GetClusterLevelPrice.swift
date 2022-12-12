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

extension Tke {
    /// GetClusterLevelPrice请求参数结构体
    public struct GetClusterLevelPriceRequest: TCRequestModel {
        /// 集群规格，托管集群询价
        public let clusterLevel: String
        
        public init (clusterLevel: String) {
            self.clusterLevel = clusterLevel
        }
        
        enum CodingKeys: String, CodingKey {
            case clusterLevel = "ClusterLevel"
        }
    }
    
    /// GetClusterLevelPrice返回参数结构体
    public struct GetClusterLevelPriceResponse: TCResponseModel {
        /// 询价结果，单位：分，打折后
        public let cost: UInt64
        
        /// 询价结果，单位：分，折扣前
        public let totalCost: UInt64
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case cost = "Cost"
            case totalCost = "TotalCost"
            case requestId = "RequestId"
        }
    }
    
    /// 获取集群规模价格
    @inlinable
    public func getClusterLevelPrice(_ input: GetClusterLevelPriceRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < GetClusterLevelPriceResponse > {
        self.client.execute(action: "GetClusterLevelPrice", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 获取集群规模价格
    @inlinable
    public func getClusterLevelPrice(_ input: GetClusterLevelPriceRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetClusterLevelPriceResponse {
        try await self.client.execute(action: "GetClusterLevelPrice", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
