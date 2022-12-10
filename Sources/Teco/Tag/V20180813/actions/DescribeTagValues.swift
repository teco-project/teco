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

extension Tag {
    /// 查询标签值
    ///
    /// 用于查询已建立的标签列表中的标签值。
    @inlinable
    public func describeTagValues(_ input: DescribeTagValuesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeTagValuesResponse > {
        self.client.execute(action: "DescribeTagValues", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询标签值
    ///
    /// 用于查询已建立的标签列表中的标签值。
    @inlinable
    public func describeTagValues(_ input: DescribeTagValuesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTagValuesResponse {
        try await self.client.execute(action: "DescribeTagValues", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeTagValues请求参数结构体
    public struct DescribeTagValuesRequest: TCRequestModel {
        /// 标签键列表
        public let tagKeys: [String]
        
        /// 创建者用户 Uin，不传或为空只将 Uin 作为条件查询
        public let createUin: UInt64?
        
        /// 数据偏移量，默认为 0, 必须为Limit参数的整数倍
        public let offset: UInt64?
        
        /// 每页大小，默认为 15
        public let limit: UInt64?
        
        public init (tagKeys: [String], createUin: UInt64?, offset: UInt64?, limit: UInt64?) {
            self.tagKeys = tagKeys
            self.createUin = createUin
            self.offset = offset
            self.limit = limit
        }
        
        enum CodingKeys: String, CodingKey {
            case tagKeys = "TagKeys"
            case createUin = "CreateUin"
            case offset = "Offset"
            case limit = "Limit"
        }
    }
    
    /// DescribeTagValues返回参数结构体
    public struct DescribeTagValuesResponse: TCResponseModel {
        /// 结果总数
        public let totalCount: UInt64
        
        /// 数据位移偏量
        public let offset: UInt64
        
        /// 每页大小
        public let limit: UInt64
        
        /// 标签列表
        public let tags: [Tag]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case offset = "Offset"
            case limit = "Limit"
            case tags = "Tags"
            case requestId = "RequestId"
        }
    }
}
