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

extension Tag {
    /// 查询标签列表
    ///
    /// 用于查询已建立的标签列表。
    @inlinable
    public func describeTags(_ input: DescribeTagsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeTagsResponse > {
        self.client.execute(action: "DescribeTags", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询标签列表
    ///
    /// 用于查询已建立的标签列表。
    @inlinable
    public func describeTags(_ input: DescribeTagsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTagsResponse {
        try await self.client.execute(action: "DescribeTags", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeTags请求参数结构体
    public struct DescribeTagsRequest: TCRequestModel {
        /// 标签键,与标签值同时存在或同时不存在，不存在时表示查询该用户所有标签
        public let tagKey: String?
        
        /// 标签值,与标签键同时存在或同时不存在，不存在时表示查询该用户所有标签
        public let tagValue: String?
        
        /// 数据偏移量，默认为 0, 必须为Limit参数的整数倍
        public let offset: UInt64?
        
        /// 每页大小，默认为 15
        public let limit: UInt64?
        
        /// 创建者用户 Uin，不传或为空只将 Uin 作为条件查询
        public let createUin: UInt64?
        
        /// 标签键数组,与标签值同时存在或同时不存在，不存在时表示查询该用户所有标签,当与TagKey同时传递时只取本值
        public let tagKeys: [String]?
        
        /// 是否展现项目标签
        public let showProject: UInt64?
        
        public init (tagKey: String?, tagValue: String?, offset: UInt64?, limit: UInt64?, createUin: UInt64?, tagKeys: [String]?, showProject: UInt64?) {
            self.tagKey = tagKey
            self.tagValue = tagValue
            self.offset = offset
            self.limit = limit
            self.createUin = createUin
            self.tagKeys = tagKeys
            self.showProject = showProject
        }
        
        enum CodingKeys: String, CodingKey {
            case tagKey = "TagKey"
            case tagValue = "TagValue"
            case offset = "Offset"
            case limit = "Limit"
            case createUin = "CreateUin"
            case tagKeys = "TagKeys"
            case showProject = "ShowProject"
        }
    }
    
    /// DescribeTags返回参数结构体
    public struct DescribeTagsResponse: TCResponseModel {
        /// 结果总数
        public let totalCount: UInt64
        
        /// 数据位移偏量
        public let offset: UInt64
        
        /// 每页大小
        public let limit: UInt64
        
        /// 标签列表
        public let tags: [TagWithDelete]
        
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