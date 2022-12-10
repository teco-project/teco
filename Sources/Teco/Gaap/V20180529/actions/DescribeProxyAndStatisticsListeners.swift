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

extension Gaap {
    /// 查询统计通道和监听器信息
    ///
    /// 该接口为内部接口，用于查询可以获取统计数据的通道和监听器信息
    @inlinable
    public func describeProxyAndStatisticsListeners(_ input: DescribeProxyAndStatisticsListenersRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeProxyAndStatisticsListenersResponse > {
        self.client.execute(action: "DescribeProxyAndStatisticsListeners", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询统计通道和监听器信息
    ///
    /// 该接口为内部接口，用于查询可以获取统计数据的通道和监听器信息
    @inlinable
    public func describeProxyAndStatisticsListeners(_ input: DescribeProxyAndStatisticsListenersRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeProxyAndStatisticsListenersResponse {
        try await self.client.execute(action: "DescribeProxyAndStatisticsListeners", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeProxyAndStatisticsListeners请求参数结构体
    public struct DescribeProxyAndStatisticsListenersRequest: TCRequestModel {
        /// 项目ID
        public let projectId: UInt64
        
        public init (projectId: UInt64) {
            self.projectId = projectId
        }
        
        enum CodingKeys: String, CodingKey {
            case projectId = "ProjectId"
        }
    }
    
    /// DescribeProxyAndStatisticsListeners返回参数结构体
    public struct DescribeProxyAndStatisticsListenersResponse: TCResponseModel {
        /// 可以统计的通道信息
        public let proxySet: [ProxySimpleInfo]
        
        /// 通道数量
        public let totalCount: UInt64
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case proxySet = "ProxySet"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }
    }
}
