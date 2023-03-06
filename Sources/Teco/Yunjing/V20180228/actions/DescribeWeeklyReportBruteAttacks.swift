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

@_exported import struct Foundation.Date
import TecoDateHelpers
import TecoPaginationHelpers

extension Yunjing {
    /// DescribeWeeklyReportBruteAttacks请求参数结构体
    public struct DescribeWeeklyReportBruteAttacksRequest: TCPaginatedRequest {
        /// 专业周报开始时间。
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCDateEncoding public var beginDate: Date

        /// 返回数量，默认为10，最大值为100。
        public let limit: UInt64?

        /// 偏移量，默认为0。
        public let offset: UInt64?

        public init(beginDate: Date, limit: UInt64? = nil, offset: UInt64? = nil) {
            self._beginDate = .init(wrappedValue: beginDate)
            self.limit = limit
            self.offset = offset
        }

        enum CodingKeys: String, CodingKey {
            case beginDate = "BeginDate"
            case limit = "Limit"
            case offset = "Offset"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribeWeeklyReportBruteAttacksResponse) -> DescribeWeeklyReportBruteAttacksRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeWeeklyReportBruteAttacksRequest(beginDate: self.beginDate, limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count))
        }
    }

    /// DescribeWeeklyReportBruteAttacks返回参数结构体
    public struct DescribeWeeklyReportBruteAttacksResponse: TCPaginatedResponse {
        /// 专业周报密码破解数组。
        public let weeklyReportBruteAttacks: [WeeklyReportBruteAttack]

        /// 记录总数。
        public let totalCount: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case weeklyReportBruteAttacks = "WeeklyReportBruteAttacks"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [WeeklyReportBruteAttack] {
            self.weeklyReportBruteAttacks
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 获取专业周报密码破解数据
    ///
    /// 本接口 (DescribeWeeklyReportBruteAttacks) 用于获取专业周报密码破解数据。
    @inlinable
    public func describeWeeklyReportBruteAttacks(_ input: DescribeWeeklyReportBruteAttacksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeWeeklyReportBruteAttacksResponse> {
        self.client.execute(action: "DescribeWeeklyReportBruteAttacks", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取专业周报密码破解数据
    ///
    /// 本接口 (DescribeWeeklyReportBruteAttacks) 用于获取专业周报密码破解数据。
    @inlinable
    public func describeWeeklyReportBruteAttacks(_ input: DescribeWeeklyReportBruteAttacksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeWeeklyReportBruteAttacksResponse {
        try await self.client.execute(action: "DescribeWeeklyReportBruteAttacks", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取专业周报密码破解数据
    ///
    /// 本接口 (DescribeWeeklyReportBruteAttacks) 用于获取专业周报密码破解数据。
    @inlinable
    public func describeWeeklyReportBruteAttacks(beginDate: Date, limit: UInt64? = nil, offset: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeWeeklyReportBruteAttacksResponse> {
        let input = DescribeWeeklyReportBruteAttacksRequest(beginDate: beginDate, limit: limit, offset: offset)
        return self.client.execute(action: "DescribeWeeklyReportBruteAttacks", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取专业周报密码破解数据
    ///
    /// 本接口 (DescribeWeeklyReportBruteAttacks) 用于获取专业周报密码破解数据。
    @inlinable
    public func describeWeeklyReportBruteAttacks(beginDate: Date, limit: UInt64? = nil, offset: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeWeeklyReportBruteAttacksResponse {
        let input = DescribeWeeklyReportBruteAttacksRequest(beginDate: beginDate, limit: limit, offset: offset)
        return try await self.client.execute(action: "DescribeWeeklyReportBruteAttacks", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
