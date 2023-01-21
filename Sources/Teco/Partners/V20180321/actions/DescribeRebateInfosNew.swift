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

extension Partners {
    /// DescribeRebateInfosNew请求参数结构体
    public struct DescribeRebateInfosNewRequest: TCRequestModel {
        /// 返佣月份，如2018-02
        public let rebateMonth: String?

        /// 偏移量
        public let offset: UInt64?

        /// 限制数目
        public let limit: UInt64?

        public init(rebateMonth: String? = nil, offset: UInt64? = nil, limit: UInt64? = nil) {
            self.rebateMonth = rebateMonth
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case rebateMonth = "RebateMonth"
            case offset = "Offset"
            case limit = "Limit"
        }
    }

    /// DescribeRebateInfosNew返回参数结构体
    public struct DescribeRebateInfosNewResponse: TCResponseModel {
        /// 返佣信息列表
        public let rebateInfoSet: [RebateInfoElemNew]

        /// 符合查询条件返佣信息数目
        public let totalCount: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case rebateInfoSet = "RebateInfoSet"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }
    }

    /// 查询代理商返佣信息V2
    ///
    /// 代理商可查询自己名下全部返佣信息
    @inlinable
    public func describeRebateInfosNew(_ input: DescribeRebateInfosNewRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRebateInfosNewResponse> {
        self.client.execute(action: "DescribeRebateInfosNew", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询代理商返佣信息V2
    ///
    /// 代理商可查询自己名下全部返佣信息
    @inlinable
    public func describeRebateInfosNew(_ input: DescribeRebateInfosNewRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRebateInfosNewResponse {
        try await self.client.execute(action: "DescribeRebateInfosNew", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询代理商返佣信息V2
    ///
    /// 代理商可查询自己名下全部返佣信息
    @inlinable
    public func describeRebateInfosNew(rebateMonth: String? = nil, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRebateInfosNewResponse> {
        self.describeRebateInfosNew(DescribeRebateInfosNewRequest(rebateMonth: rebateMonth, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查询代理商返佣信息V2
    ///
    /// 代理商可查询自己名下全部返佣信息
    @inlinable
    public func describeRebateInfosNew(rebateMonth: String? = nil, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRebateInfosNewResponse {
        try await self.describeRebateInfosNew(DescribeRebateInfosNewRequest(rebateMonth: rebateMonth, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }
}
