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

extension Cdc {
    /// DescribeDedicatedClusterOverview请求参数结构体
    public struct DescribeDedicatedClusterOverviewRequest: TCRequestModel {
        /// 集群id
        public let dedicatedClusterId: String
        
        public init (dedicatedClusterId: String) {
            self.dedicatedClusterId = dedicatedClusterId
        }
        
        enum CodingKeys: String, CodingKey {
            case dedicatedClusterId = "DedicatedClusterId"
        }
    }
    
    /// DescribeDedicatedClusterOverview返回参数结构体
    public struct DescribeDedicatedClusterOverviewResponse: TCResponseModel {
        /// 云服务器数量
        public let cvmCount: UInt64
        
        /// 宿主机数量
        public let hostCount: UInt64
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case cvmCount = "CvmCount"
            case hostCount = "HostCount"
            case requestId = "RequestId"
        }
    }
    
    /// 专用集群概览信息
    @inlinable
    public func describeDedicatedClusterOverview(_ input: DescribeDedicatedClusterOverviewRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeDedicatedClusterOverviewResponse > {
        self.client.execute(action: "DescribeDedicatedClusterOverview", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 专用集群概览信息
    @inlinable
    public func describeDedicatedClusterOverview(_ input: DescribeDedicatedClusterOverviewRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDedicatedClusterOverviewResponse {
        try await self.client.execute(action: "DescribeDedicatedClusterOverview", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
