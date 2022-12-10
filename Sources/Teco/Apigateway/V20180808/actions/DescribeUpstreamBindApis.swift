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

extension Apigateway {
    /// 查询后端通道所绑定的API列表
    ///
    /// 查询后端通道所绑定的API列表
    @inlinable
    public func describeUpstreamBindApis(_ input: DescribeUpstreamBindApisRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeUpstreamBindApisResponse > {
        self.client.execute(action: "DescribeUpstreamBindApis", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询后端通道所绑定的API列表
    ///
    /// 查询后端通道所绑定的API列表
    @inlinable
    public func describeUpstreamBindApis(_ input: DescribeUpstreamBindApisRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeUpstreamBindApisResponse {
        try await self.client.execute(action: "DescribeUpstreamBindApis", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeUpstreamBindApis请求参数结构体
    public struct DescribeUpstreamBindApisRequest: TCRequestModel {
        /// 分页大小
        public let limit: UInt64
        
        /// 分页起始位置
        public let offset: UInt64
        
        /// 后端通道ID
        public let upstreamId: String
        
        /// ServiceId和ApiId过滤查询
        public let filters: [Filter]?
        
        public init (limit: UInt64, offset: UInt64, upstreamId: String, filters: [Filter]?) {
            self.limit = limit
            self.offset = offset
            self.upstreamId = upstreamId
            self.filters = filters
        }
        
        enum CodingKeys: String, CodingKey {
            case limit = "Limit"
            case offset = "Offset"
            case upstreamId = "UpstreamId"
            case filters = "Filters"
        }
    }
    
    /// DescribeUpstreamBindApis返回参数结构体
    public struct DescribeUpstreamBindApisResponse: TCResponseModel {
        /// 查询结果
        public let result: DescribeUpstreamBindApis
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }
}