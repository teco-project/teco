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
    /// DescribeBrandCommentCount请求参数结构体
    public struct DescribeBrandCommentCountRequest: TCRequestModel {
        /// 品牌ID
        public let brandId: String

        /// 查询开始日期
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCDateEncoding public var startDate: Date

        /// 查询结束日期
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCDateEncoding public var endDate: Date

        public init(brandId: String, startDate: Date, endDate: Date) {
            self.brandId = brandId
            self._startDate = .init(wrappedValue: startDate)
            self._endDate = .init(wrappedValue: endDate)
        }

        enum CodingKeys: String, CodingKey {
            case brandId = "BrandId"
            case startDate = "StartDate"
            case endDate = "EndDate"
        }
    }

    /// DescribeBrandCommentCount返回参数结构体
    public struct DescribeBrandCommentCountResponse: TCResponseModel {
        /// 按天统计好评/差评数
        public let commentSet: [Comment]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case commentSet = "CommentSet"
            case requestId = "RequestId"
        }
    }

    /// 获取品牌好差评数
    ///
    /// 通过分析用户在评价品牌时用词的正负面情绪评分，返回品牌好评与差评评价条数，按天输出结果。
    @inlinable
    public func describeBrandCommentCount(_ input: DescribeBrandCommentCountRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBrandCommentCountResponse> {
        self.client.execute(action: "DescribeBrandCommentCount", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取品牌好差评数
    ///
    /// 通过分析用户在评价品牌时用词的正负面情绪评分，返回品牌好评与差评评价条数，按天输出结果。
    @inlinable
    public func describeBrandCommentCount(_ input: DescribeBrandCommentCountRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBrandCommentCountResponse {
        try await self.client.execute(action: "DescribeBrandCommentCount", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取品牌好差评数
    ///
    /// 通过分析用户在评价品牌时用词的正负面情绪评分，返回品牌好评与差评评价条数，按天输出结果。
    @inlinable
    public func describeBrandCommentCount(brandId: String, startDate: Date, endDate: Date, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBrandCommentCountResponse> {
        self.describeBrandCommentCount(DescribeBrandCommentCountRequest(brandId: brandId, startDate: startDate, endDate: endDate), logger: logger, on: eventLoop)
    }

    /// 获取品牌好差评数
    ///
    /// 通过分析用户在评价品牌时用词的正负面情绪评分，返回品牌好评与差评评价条数，按天输出结果。
    @inlinable
    public func describeBrandCommentCount(brandId: String, startDate: Date, endDate: Date, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBrandCommentCountResponse {
        try await self.describeBrandCommentCount(DescribeBrandCommentCountRequest(brandId: brandId, startDate: startDate, endDate: endDate), logger: logger, on: eventLoop)
    }
}
