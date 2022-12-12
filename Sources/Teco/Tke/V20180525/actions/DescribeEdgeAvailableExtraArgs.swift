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
    /// DescribeEdgeAvailableExtraArgs请求参数结构体
    public struct DescribeEdgeAvailableExtraArgsRequest: TCRequestModel {
        /// 集群版本
        public let clusterVersion: String?
        
        public init (clusterVersion: String? = nil) {
            self.clusterVersion = clusterVersion
        }
        
        enum CodingKeys: String, CodingKey {
            case clusterVersion = "ClusterVersion"
        }
    }
    
    /// DescribeEdgeAvailableExtraArgs返回参数结构体
    public struct DescribeEdgeAvailableExtraArgsResponse: TCResponseModel {
        /// 集群版本
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let clusterVersion: String?
        
        /// 可用的自定义参数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let availableExtraArgs: EdgeAvailableExtraArgs?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case clusterVersion = "ClusterVersion"
            case availableExtraArgs = "AvailableExtraArgs"
            case requestId = "RequestId"
        }
    }
    
    /// 查询边缘容器集群可用的自定义参数
    @inlinable
    public func describeEdgeAvailableExtraArgs(_ input: DescribeEdgeAvailableExtraArgsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeEdgeAvailableExtraArgsResponse > {
        self.client.execute(action: "DescribeEdgeAvailableExtraArgs", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询边缘容器集群可用的自定义参数
    @inlinable
    public func describeEdgeAvailableExtraArgs(_ input: DescribeEdgeAvailableExtraArgsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeEdgeAvailableExtraArgsResponse {
        try await self.client.execute(action: "DescribeEdgeAvailableExtraArgs", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
