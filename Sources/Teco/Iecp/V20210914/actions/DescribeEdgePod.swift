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

extension Iecp {
    /// 查询边缘单元Pod
    @inlinable
    public func describeEdgePod(_ input: DescribeEdgePodRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeEdgePodResponse > {
        self.client.execute(action: "DescribeEdgePod", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询边缘单元Pod
    @inlinable
    public func describeEdgePod(_ input: DescribeEdgePodRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeEdgePodResponse {
        try await self.client.execute(action: "DescribeEdgePod", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeEdgePod请求参数结构体
    public struct DescribeEdgePodRequest: TCRequestModel {
        /// IECP边缘单元ID
        public let edgeUnitId: UInt64
        
        /// 命名空间
        public let namespace: String
        
        /// Pod名称
        public let name: String
        
        public init (edgeUnitId: UInt64, namespace: String, name: String) {
            self.edgeUnitId = edgeUnitId
            self.namespace = namespace
            self.name = name
        }
        
        enum CodingKeys: String, CodingKey {
            case edgeUnitId = "EdgeUnitId"
            case namespace = "Namespace"
            case name = "Name"
        }
    }
    
    /// DescribeEdgePod返回参数结构体
    public struct DescribeEdgePodResponse: TCResponseModel {
        /// Pod详情信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let pod: EdgeNodePodInfo
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case pod = "Pod"
            case requestId = "RequestId"
        }
    }
}
