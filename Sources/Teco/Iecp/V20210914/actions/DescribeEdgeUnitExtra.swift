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
    /// 查询边缘单元额外信息
    @inlinable
    public func describeEdgeUnitExtra(_ input: DescribeEdgeUnitExtraRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeEdgeUnitExtraResponse > {
        self.client.execute(action: "DescribeEdgeUnitExtra", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询边缘单元额外信息
    @inlinable
    public func describeEdgeUnitExtra(_ input: DescribeEdgeUnitExtraRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeEdgeUnitExtraResponse {
        try await self.client.execute(action: "DescribeEdgeUnitExtra", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeEdgeUnitExtra请求参数结构体
    public struct DescribeEdgeUnitExtraRequest: TCRequestModel {
        /// IECP边缘单元ID
        public let edgeUnitId: UInt64
        
        public init (edgeUnitId: UInt64) {
            self.edgeUnitId = edgeUnitId
        }
        
        enum CodingKeys: String, CodingKey {
            case edgeUnitId = "EdgeUnitId"
        }
    }
    
    /// DescribeEdgeUnitExtra返回参数结构体
    public struct DescribeEdgeUnitExtraResponse: TCResponseModel {
        /// APIServer类型
        public let apiServerType: String
        
        /// 域名URL
        public let apiServerURL: String
        
        /// 域名URL对应的端口
        public let apiServerURLPort: String
        
        /// 域名URL对应的端口
        public let apiServerResolveIP: String
        
        /// 对外可访问的IP
        public let apiServerExposeAddress: String
        
        /// 是否开启监控
        public let isCreatePrometheus: Bool
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case apiServerType = "APIServerType"
            case apiServerURL = "APIServerURL"
            case apiServerURLPort = "APIServerURLPort"
            case apiServerResolveIP = "APIServerResolveIP"
            case apiServerExposeAddress = "APIServerExposeAddress"
            case isCreatePrometheus = "IsCreatePrometheus"
            case requestId = "RequestId"
        }
    }
}
