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

extension Mps {
    /// 获取智能审核模板列表
    ///
    /// 根据智能审核模板唯一标识，获取智能审核模板详情列表。返回结果包含符合条件的所有用户自定义模板及系统预置智能审核模板。
    @inlinable
    public func describeContentReviewTemplates(_ input: DescribeContentReviewTemplatesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeContentReviewTemplatesResponse > {
        self.client.execute(action: "DescribeContentReviewTemplates", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 获取智能审核模板列表
    ///
    /// 根据智能审核模板唯一标识，获取智能审核模板详情列表。返回结果包含符合条件的所有用户自定义模板及系统预置智能审核模板。
    @inlinable
    public func describeContentReviewTemplates(_ input: DescribeContentReviewTemplatesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeContentReviewTemplatesResponse {
        try await self.client.execute(action: "DescribeContentReviewTemplates", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeContentReviewTemplates请求参数结构体
    public struct DescribeContentReviewTemplatesRequest: TCRequestModel {
        /// 智能审核模板唯一标识过滤条件，数组长度限制：50。
        public let definitions: [Int64]?
        
        /// 分页偏移量，默认值：0。
        public let offset: UInt64?
        
        /// 返回记录条数，默认值：10，最大值：50。
        public let limit: UInt64?
        
        /// 模板类型过滤条件，不填则返回所有，可选值：
        /// * Preset：系统预置模板；
        /// * Custom：用户自定义模板。
        public let type: String?
        
        public init (definitions: [Int64]?, offset: UInt64?, limit: UInt64?, type: String?) {
            self.definitions = definitions
            self.offset = offset
            self.limit = limit
            self.type = type
        }
        
        enum CodingKeys: String, CodingKey {
            case definitions = "Definitions"
            case offset = "Offset"
            case limit = "Limit"
            case type = "Type"
        }
    }
    
    /// DescribeContentReviewTemplates返回参数结构体
    public struct DescribeContentReviewTemplatesResponse: TCResponseModel {
        /// 符合过滤条件的记录总数。
        public let totalCount: UInt64
        
        /// 内容审核模板详情列表。
        public let contentReviewTemplateSet: [ContentReviewTemplateItem]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case contentReviewTemplateSet = "ContentReviewTemplateSet"
            case requestId = "RequestId"
        }
    }
}
