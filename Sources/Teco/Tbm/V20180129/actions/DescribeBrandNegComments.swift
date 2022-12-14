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

@_exported import struct Foundation.Date
import TecoDateHelpers

extension Tbm {
    /// DescribeBrandNegComments请求参数结构体
    public struct DescribeBrandNegCommentsRequest: TCRequestModel {
        /// 品牌ID
        public let brandId: String
        
        /// 查询开始时间
        ///
        /// **Important:** This has to be a `var` due to a property wrapper restriction, which is about to be removed in the future.
        /// For discussions, see [Allow Property Wrappers on Let Declarations](https://forums.swift.org/t/pitch-allow-property-wrappers-on-let-declarations/61750).
        ///
        /// Although mutating this property is possible for now, it may become a `let` variable at any time. Please don't rely on such behavior.
        @TCDateEncoding public var startDate: Date
        
        /// 查询结束时间
        ///
        /// **Important:** This has to be a `var` due to a property wrapper restriction, which is about to be removed in the future.
        /// For discussions, see [Allow Property Wrappers on Let Declarations](https://forums.swift.org/t/pitch-allow-property-wrappers-on-let-declarations/61750).
        ///
        /// Although mutating this property is possible for now, it may become a `let` variable at any time. Please don't rely on such behavior.
        @TCDateEncoding public var endDate: Date
        
        /// 查询条数上限，默认20
        public let limit: UInt64?
        
        /// 查询偏移，默认从0开始
        public let offset: UInt64?
        
        public init (brandId: String, startDate: Date, endDate: Date, limit: UInt64? = nil, offset: UInt64? = nil) {
            self.brandId = brandId
            self.startDate = startDate
            self.endDate = endDate
            self.limit = limit
            self.offset = offset
        }
        
        enum CodingKeys: String, CodingKey {
            case brandId = "BrandId"
            case startDate = "StartDate"
            case endDate = "EndDate"
            case limit = "Limit"
            case offset = "Offset"
        }
    }
    
    /// DescribeBrandNegComments返回参数结构体
    public struct DescribeBrandNegCommentsResponse: TCResponseModel {
        /// 评论列表
        public let brandCommentSet: [CommentInfo]
        
        /// 总的差评个数
        public let totalComments: UInt64
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case brandCommentSet = "BrandCommentSet"
            case totalComments = "TotalComments"
            case requestId = "RequestId"
        }
    }
    
    /// 获取品牌用户差评列表
    ///
    /// 通过分析用户在评价品牌时用词的正负面情绪评分，返回品牌热门差评观点列表。
    @inlinable
    public func describeBrandNegComments(_ input: DescribeBrandNegCommentsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeBrandNegCommentsResponse > {
        self.client.execute(action: "DescribeBrandNegComments", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 获取品牌用户差评列表
    ///
    /// 通过分析用户在评价品牌时用词的正负面情绪评分，返回品牌热门差评观点列表。
    @inlinable
    public func describeBrandNegComments(_ input: DescribeBrandNegCommentsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBrandNegCommentsResponse {
        try await self.client.execute(action: "DescribeBrandNegComments", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// 获取品牌用户差评列表
    ///
    /// 通过分析用户在评价品牌时用词的正负面情绪评分，返回品牌热门差评观点列表。
    @inlinable
    public func describeBrandNegComments(brandId: String, startDate: Date, endDate: Date, limit: UInt64? = nil, offset: UInt64? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeBrandNegCommentsResponse > {
        self.describeBrandNegComments(DescribeBrandNegCommentsRequest(brandId: brandId, startDate: startDate, endDate: endDate, limit: limit, offset: offset), logger: logger, on: eventLoop)
    }
    
    /// 获取品牌用户差评列表
    ///
    /// 通过分析用户在评价品牌时用词的正负面情绪评分，返回品牌热门差评观点列表。
    @inlinable
    public func describeBrandNegComments(brandId: String, startDate: Date, endDate: Date, limit: UInt64? = nil, offset: UInt64? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBrandNegCommentsResponse {
        try await self.describeBrandNegComments(DescribeBrandNegCommentsRequest(brandId: brandId, startDate: startDate, endDate: endDate, limit: limit, offset: offset), logger: logger, on: eventLoop)
    }
}
