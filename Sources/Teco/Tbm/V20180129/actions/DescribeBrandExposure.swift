//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project
//
// Copyright (c) 2022-2023 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

// Test PR teco-project/teco-code-generator#23.

import struct Foundation.Date
import Logging
import NIOCore
import TecoCore
import TecoDateHelpers

extension Tbm {
    /// DescribeBrandExposure请求参数结构体
    public struct DescribeBrandExposureRequest: TCRequestModel {
        /// 品牌ID
        public let brandId: String

        /// 查询开始时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCDateEncoding public var startDate: Date

        /// 查询结束时间
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

    /// DescribeBrandExposure返回参数结构体
    public struct DescribeBrandExposureResponse: TCResponseModel {
        /// 累计曝光量
        public let totalCount: UInt64

        /// 按天计算的统计数据
        public let dateCountSet: [DateCount]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case dateCountSet = "DateCountSet"
            case requestId = "RequestId"
        }
    }

    /// 获取品牌总热度
    ///
    /// 监测品牌关键词命中文章标题或全文的文章篇数，按天输出数据。
    @inlinable
    public func describeBrandExposure(_ input: DescribeBrandExposureRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBrandExposureResponse> {
        self.client.execute(action: "DescribeBrandExposure", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取品牌总热度
    ///
    /// 监测品牌关键词命中文章标题或全文的文章篇数，按天输出数据。
    @inlinable
    public func describeBrandExposure(_ input: DescribeBrandExposureRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBrandExposureResponse {
        try await self.client.execute(action: "DescribeBrandExposure", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取品牌总热度
    ///
    /// 监测品牌关键词命中文章标题或全文的文章篇数，按天输出数据。
    @inlinable
    public func describeBrandExposure(brandId: String, startDate: Date, endDate: Date, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBrandExposureResponse> {
        self.describeBrandExposure(.init(brandId: brandId, startDate: startDate, endDate: endDate), region: region, logger: logger, on: eventLoop)
    }

    /// 获取品牌总热度
    ///
    /// 监测品牌关键词命中文章标题或全文的文章篇数，按天输出数据。
    @inlinable
    public func describeBrandExposure(brandId: String, startDate: Date, endDate: Date, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBrandExposureResponse {
        try await self.describeBrandExposure(.init(brandId: brandId, startDate: startDate, endDate: endDate), region: region, logger: logger, on: eventLoop)
    }
}
