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

extension Ame {
    /// 获取分类内容下歌曲列表
    ///
    /// 该服务后续会停用，不再建议使用
    @inlinable
    public func describeItems(_ input: DescribeItemsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeItemsResponse > {
        self.client.execute(action: "DescribeItems", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 获取分类内容下歌曲列表
    ///
    /// 该服务后续会停用，不再建议使用
    @inlinable
    public func describeItems(_ input: DescribeItemsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeItemsResponse {
        try await self.client.execute(action: "DescribeItems", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeItems请求参数结构体
    public struct DescribeItemsRequest: TCRequestModel {
        /// offset (Default = 0)，(当前页-1) * Limit
        public let offset: UInt64
        
        /// 条数，必须大于0，最大值为30
        public let limit: UInt64
        
        /// （电台/歌单）ID，CategoryId和CategoryCode两个必传1个，可以从<a href="https://cloud.tencent.com/document/product/1155/40109">获取分类内容（Station）列表接口</a>中获取。
        public let categoryId: String?
        
        /// （电台/歌单）ID，CategoryId和CategoryCode两个必传1个，可以从<a href="https://cloud.tencent.com/document/product/1155/40109">获取分类内容（Station）列表接口</a>中获取。
        public let categoryCode: String?
        
        public init (offset: UInt64, limit: UInt64, categoryId: String?, categoryCode: String?) {
            self.offset = offset
            self.limit = limit
            self.categoryId = categoryId
            self.categoryCode = categoryCode
        }
        
        enum CodingKeys: String, CodingKey {
            case offset = "Offset"
            case limit = "Limit"
            case categoryId = "CategoryId"
            case categoryCode = "CategoryCode"
        }
    }
    
    /// DescribeItems返回参数结构体
    public struct DescribeItemsResponse: TCResponseModel {
        /// 分页偏移量
        public let offset: UInt64
        
        /// 当前页歌曲数量
        public let size: UInt64
        
        /// 总数据条数
        public let total: UInt64
        
        /// 剩余数量（total-offset-size），通过这个值判断是否
        /// 还有下一页
        public let haveMore: UInt64
        
        /// Items 歌曲列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let items: [Item]?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case offset = "Offset"
            case size = "Size"
            case total = "Total"
            case haveMore = "HaveMore"
            case items = "Items"
            case requestId = "RequestId"
        }
    }
}