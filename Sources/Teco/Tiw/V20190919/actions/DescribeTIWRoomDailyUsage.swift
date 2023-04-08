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

import struct Foundation.Date
import Logging
import NIOCore
import TecoCore
import TecoDateHelpers
import TecoPaginationHelpers

extension Tiw {
    /// DescribeTIWRoomDailyUsage请求参数结构体
    public struct DescribeTIWRoomDailyUsageRequest: TCPaginatedRequest {
        /// 互动白板应用SdkAppId
        public let sdkAppId: Int64

        /// 需要查询的子产品用量，支持传入以下值
        /// - sp_tiw_board: 互动白板时长，单位为分钟
        /// - sp_tiw_ric: 实时录制时长，单位分钟
        public let subProduct: String

        /// 开始时间，格式YYYY-MM-DD，查询结果里包括该天数据
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCDateEncoding public var startTime: Date

        /// 结束时间，格式YYYY-MM-DD，查询结果里包括该天数据，单次查询统计区间最多不能超过31天。
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCDateEncoding public var endTime: Date

        /// 需要查询的房间ID列表，不填默认查询全部房间
        public let roomIDs: [UInt64]?

        /// 查询偏移量，默认为0
        public let offset: UInt64?

        /// 每次查询返回条目限制，默认为20
        public let limit: UInt64?

        public init(sdkAppId: Int64, subProduct: String, startTime: Date, endTime: Date, roomIDs: [UInt64]? = nil, offset: UInt64? = nil, limit: UInt64? = nil) {
            self.sdkAppId = sdkAppId
            self.subProduct = subProduct
            self._startTime = .init(wrappedValue: startTime)
            self._endTime = .init(wrappedValue: endTime)
            self.roomIDs = roomIDs
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case sdkAppId = "SdkAppId"
            case subProduct = "SubProduct"
            case startTime = "StartTime"
            case endTime = "EndTime"
            case roomIDs = "RoomIDs"
            case offset = "Offset"
            case limit = "Limit"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeTIWRoomDailyUsageResponse) -> DescribeTIWRoomDailyUsageRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeTIWRoomDailyUsageRequest(sdkAppId: self.sdkAppId, subProduct: self.subProduct, startTime: self.startTime, endTime: self.endTime, roomIDs: self.roomIDs, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit)
        }
    }

    /// DescribeTIWRoomDailyUsage返回参数结构体
    public struct DescribeTIWRoomDailyUsageResponse: TCPaginatedResponse {
        /// 指定区间指定产品的房间用量列表
        public let usages: [RoomUsageDataItem]

        /// 用量列表总数
        public let total: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case usages = "Usages"
            case total = "Total"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [RoomUsageDataItem] {
            self.usages
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.total
        }
    }

    /// 查询房间维度每天计费用量
    ///
    /// 查询互动白板房间维度每天计费用量。
    /// 1. 单次查询统计区间最多不能超过31天。
    /// 2. 由于统计延迟等原因，暂时不支持查询当天数据，建议在次日上午7点以后再来查询前一天的用量，例如在10月27日上午7点后，再来查询到10月26日整天的用量
    @inlinable
    public func describeTIWRoomDailyUsage(_ input: DescribeTIWRoomDailyUsageRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTIWRoomDailyUsageResponse> {
        self.client.execute(action: "DescribeTIWRoomDailyUsage", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询房间维度每天计费用量
    ///
    /// 查询互动白板房间维度每天计费用量。
    /// 1. 单次查询统计区间最多不能超过31天。
    /// 2. 由于统计延迟等原因，暂时不支持查询当天数据，建议在次日上午7点以后再来查询前一天的用量，例如在10月27日上午7点后，再来查询到10月26日整天的用量
    @inlinable
    public func describeTIWRoomDailyUsage(_ input: DescribeTIWRoomDailyUsageRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTIWRoomDailyUsageResponse {
        try await self.client.execute(action: "DescribeTIWRoomDailyUsage", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询房间维度每天计费用量
    ///
    /// 查询互动白板房间维度每天计费用量。
    /// 1. 单次查询统计区间最多不能超过31天。
    /// 2. 由于统计延迟等原因，暂时不支持查询当天数据，建议在次日上午7点以后再来查询前一天的用量，例如在10月27日上午7点后，再来查询到10月26日整天的用量
    @inlinable
    public func describeTIWRoomDailyUsage(sdkAppId: Int64, subProduct: String, startTime: Date, endTime: Date, roomIDs: [UInt64]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTIWRoomDailyUsageResponse> {
        self.describeTIWRoomDailyUsage(.init(sdkAppId: sdkAppId, subProduct: subProduct, startTime: startTime, endTime: endTime, roomIDs: roomIDs, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查询房间维度每天计费用量
    ///
    /// 查询互动白板房间维度每天计费用量。
    /// 1. 单次查询统计区间最多不能超过31天。
    /// 2. 由于统计延迟等原因，暂时不支持查询当天数据，建议在次日上午7点以后再来查询前一天的用量，例如在10月27日上午7点后，再来查询到10月26日整天的用量
    @inlinable
    public func describeTIWRoomDailyUsage(sdkAppId: Int64, subProduct: String, startTime: Date, endTime: Date, roomIDs: [UInt64]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTIWRoomDailyUsageResponse {
        try await self.describeTIWRoomDailyUsage(.init(sdkAppId: sdkAppId, subProduct: subProduct, startTime: startTime, endTime: endTime, roomIDs: roomIDs, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查询房间维度每天计费用量
    ///
    /// 查询互动白板房间维度每天计费用量。
    /// 1. 单次查询统计区间最多不能超过31天。
    /// 2. 由于统计延迟等原因，暂时不支持查询当天数据，建议在次日上午7点以后再来查询前一天的用量，例如在10月27日上午7点后，再来查询到10月26日整天的用量
    @inlinable
    public func describeTIWRoomDailyUsagePaginated(_ input: DescribeTIWRoomDailyUsageRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [RoomUsageDataItem])> {
        self.client.paginate(input: input, region: region, command: self.describeTIWRoomDailyUsage, logger: logger, on: eventLoop)
    }

    /// 查询房间维度每天计费用量
    ///
    /// 查询互动白板房间维度每天计费用量。
    /// 1. 单次查询统计区间最多不能超过31天。
    /// 2. 由于统计延迟等原因，暂时不支持查询当天数据，建议在次日上午7点以后再来查询前一天的用量，例如在10月27日上午7点后，再来查询到10月26日整天的用量
    @inlinable @discardableResult
    public func describeTIWRoomDailyUsagePaginated(_ input: DescribeTIWRoomDailyUsageRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeTIWRoomDailyUsageResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeTIWRoomDailyUsage, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询房间维度每天计费用量
    ///
    /// 查询互动白板房间维度每天计费用量。
    /// 1. 单次查询统计区间最多不能超过31天。
    /// 2. 由于统计延迟等原因，暂时不支持查询当天数据，建议在次日上午7点以后再来查询前一天的用量，例如在10月27日上午7点后，再来查询到10月26日整天的用量
    ///
    /// - Returns: `AsyncSequence`s of `RoomUsageDataItem` and `DescribeTIWRoomDailyUsageResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeTIWRoomDailyUsagePaginator(_ input: DescribeTIWRoomDailyUsageRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeTIWRoomDailyUsageRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeTIWRoomDailyUsage, logger: logger, on: eventLoop)
    }
}
