//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project
//
// Copyright (c) 2023 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

import struct Foundation.Date
import Logging
import NIOCore
import TecoCore
import TecoDateHelpers

extension Tchd {
    /// DescribeEvents请求参数结构体
    public struct DescribeEventsRequest: TCRequest {
        /// 事件的发生日期
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the underlying
        /// string value (through `$eventDate`) in case the synthesized encoding is incorrect.
        @TCDateEncoding public var eventDate: Date

        /// 1. 不指定产品列表时将查询所有产品。
        /// 2. 产品ID示例：cvm、lb、cdb、cdn、crs
        public let productIds: [String]?

        /// 1. 不指定地域列表时将查询所有地域。
        /// 2. 查询非区域性产品事件时，地域ID指定为：non-regional
        /// 3. 其他地域ID取值请参考：https://cloud.tencent.com/document/api/213/15692
        public let regionIds: [String]?

        public init(eventDate: Date, productIds: [String]? = nil, regionIds: [String]? = nil) {
            self._eventDate = .init(wrappedValue: eventDate)
            self.productIds = productIds
            self.regionIds = regionIds
        }

        enum CodingKeys: String, CodingKey {
            case eventDate = "EventDate"
            case productIds = "ProductIds"
            case regionIds = "RegionIds"
        }
    }

    /// DescribeEvents返回参数结构体
    public struct DescribeEventsResponse: TCResponse {
        /// 事件详情列表
        public let data: ProductEventList

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 查看事件列表
    ///
    /// 本接口用于查询腾讯云健康看板的可用性事件信息，可以通过产品列表、地域列表和事件发生日期进行过滤查询。
    @inlinable
    public func describeEvents(_ input: DescribeEventsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeEventsResponse> {
        self.client.execute(action: "DescribeEvents", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查看事件列表
    ///
    /// 本接口用于查询腾讯云健康看板的可用性事件信息，可以通过产品列表、地域列表和事件发生日期进行过滤查询。
    @inlinable
    public func describeEvents(_ input: DescribeEventsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeEventsResponse {
        try await self.client.execute(action: "DescribeEvents", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查看事件列表
    ///
    /// 本接口用于查询腾讯云健康看板的可用性事件信息，可以通过产品列表、地域列表和事件发生日期进行过滤查询。
    @inlinable
    public func describeEvents(eventDate: Date, productIds: [String]? = nil, regionIds: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeEventsResponse> {
        self.describeEvents(.init(eventDate: eventDate, productIds: productIds, regionIds: regionIds), region: region, logger: logger, on: eventLoop)
    }

    /// 查看事件列表
    ///
    /// 本接口用于查询腾讯云健康看板的可用性事件信息，可以通过产品列表、地域列表和事件发生日期进行过滤查询。
    @inlinable
    public func describeEvents(eventDate: Date, productIds: [String]? = nil, regionIds: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeEventsResponse {
        try await self.describeEvents(.init(eventDate: eventDate, productIds: productIds, regionIds: regionIds), region: region, logger: logger, on: eventLoop)
    }
}
