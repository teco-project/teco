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

extension Tke {
    /// 模板列表
    ///
    /// 拉取模板列表，默认模板将总是在最前面
    @inlinable
    public func describePrometheusTemplates(_ input: DescribePrometheusTemplatesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribePrometheusTemplatesResponse > {
        self.client.execute(action: "DescribePrometheusTemplates", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 模板列表
    ///
    /// 拉取模板列表，默认模板将总是在最前面
    @inlinable
    public func describePrometheusTemplates(_ input: DescribePrometheusTemplatesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePrometheusTemplatesResponse {
        try await self.client.execute(action: "DescribePrometheusTemplates", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribePrometheusTemplates请求参数结构体
    public struct DescribePrometheusTemplatesRequest: TCRequestModel {
        /// 模糊过滤条件，支持
        /// Level 按模板级别过滤
        /// Name 按名称过滤
        /// Describe 按描述过滤
        /// ID 按templateId过滤
        public let filters: [Filter]?
        
        /// 分页偏移
        public let offset: UInt64?
        
        /// 总数限制
        public let limit: UInt64?
        
        public init (filters: [Filter]?, offset: UInt64?, limit: UInt64?) {
            self.filters = filters
            self.offset = offset
            self.limit = limit
        }
        
        enum CodingKeys: String, CodingKey {
            case filters = "Filters"
            case offset = "Offset"
            case limit = "Limit"
        }
    }
    
    /// DescribePrometheusTemplates返回参数结构体
    public struct DescribePrometheusTemplatesResponse: TCResponseModel {
        /// 模板列表
        public let templates: [PrometheusTemplate]
        
        /// 总数
        public let total: UInt64
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case templates = "Templates"
            case total = "Total"
            case requestId = "RequestId"
        }
    }
}