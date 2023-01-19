//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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
    /// DescribeRebateInfos请求参数结构体
    public struct DescribeRebateInfosRequest: TCRequestModel {
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

    /// DescribeRebateInfos返回参数结构体
    public struct DescribeRebateInfosResponse: TCResponseModel {
        /// 返佣信息列表
        public let rebateInfoSet: [RebateInfoElem]

        /// 符合查询条件返佣信息数目
        public let totalCount: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case rebateInfoSet = "RebateInfoSet"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }
    }

    /// 查询代理商返佣信息（禁止接入）
    ///
    /// 【该接口已下线，请切换使用升级版本DescribeRebateInfosNew】代理商可查询自己名下全部返佣信息
    @inlinable
    public func describeRebateInfos(_ input: DescribeRebateInfosRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRebateInfosResponse> {
        self.client.execute(action: "DescribeRebateInfos", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询代理商返佣信息（禁止接入）
    ///
    /// 【该接口已下线，请切换使用升级版本DescribeRebateInfosNew】代理商可查询自己名下全部返佣信息
    @inlinable
    public func describeRebateInfos(_ input: DescribeRebateInfosRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRebateInfosResponse {
        try await self.client.execute(action: "DescribeRebateInfos", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询代理商返佣信息（禁止接入）
    ///
    /// 【该接口已下线，请切换使用升级版本DescribeRebateInfosNew】代理商可查询自己名下全部返佣信息
    @inlinable
    public func describeRebateInfos(rebateMonth: String? = nil, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRebateInfosResponse> {
        self.describeRebateInfos(DescribeRebateInfosRequest(rebateMonth: rebateMonth, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查询代理商返佣信息（禁止接入）
    ///
    /// 【该接口已下线，请切换使用升级版本DescribeRebateInfosNew】代理商可查询自己名下全部返佣信息
    @inlinable
    public func describeRebateInfos(rebateMonth: String? = nil, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRebateInfosResponse {
        try await self.describeRebateInfos(DescribeRebateInfosRequest(rebateMonth: rebateMonth, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }
}
