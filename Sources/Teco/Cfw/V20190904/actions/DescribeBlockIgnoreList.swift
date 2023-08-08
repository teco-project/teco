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

import Logging
import NIOCore
import TecoCore

extension Cfw {
    /// DescribeBlockIgnoreList请求参数结构体
    public struct DescribeBlockIgnoreListRequest: TCRequestModel {
        /// 单页数量
        public let limit: Int64

        /// 页偏移量
        public let offset: Int64

        /// 方向：1互联网入站，0互联网出站，3内网，空 全部方向
        public let direction: String

        /// 规则类型：1封禁，2放通
        public let ruleType: UInt64

        /// 排序类型：desc降序，asc正序
        public let order: String

        /// 排序列：EndTime结束时间，StartTime开始时间，MatchTimes命中次数
        public let by: String

        /// 搜索参数，json格式字符串，空则传"{}"，域名：domain，危险等级：level，放通原因：ignore_reason，安全事件来源：rule_source，地理位置：address，模糊搜索：common
        public let searchValue: String?

        public init(limit: Int64, offset: Int64, direction: String, ruleType: UInt64, order: String, by: String, searchValue: String? = nil) {
            self.limit = limit
            self.offset = offset
            self.direction = direction
            self.ruleType = ruleType
            self.order = order
            self.by = by
            self.searchValue = searchValue
        }

        enum CodingKeys: String, CodingKey {
            case limit = "Limit"
            case offset = "Offset"
            case direction = "Direction"
            case ruleType = "RuleType"
            case order = "Order"
            case by = "By"
            case searchValue = "SearchValue"
        }
    }

    /// DescribeBlockIgnoreList返回参数结构体
    public struct DescribeBlockIgnoreListResponse: TCResponseModel {
        /// 列表数据
        public let data: [BlockIgnoreRule]

        /// 查询结果总数，用于分页
        public let total: Int64

        /// 状态值，0：查询成功，非0：查询失败
        public let returnCode: Int64

        /// 状态信息，success：查询成功，fail：查询失败
        public let returnMsg: String

        /// 安全事件来源下拉框
        public let sourceList: [String]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case total = "Total"
            case returnCode = "ReturnCode"
            case returnMsg = "ReturnMsg"
            case sourceList = "SourceList"
            case requestId = "RequestId"
        }
    }

    /// 查询入侵防御放通封禁列表
    @inlinable
    public func describeBlockIgnoreList(_ input: DescribeBlockIgnoreListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBlockIgnoreListResponse> {
        self.client.execute(action: "DescribeBlockIgnoreList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询入侵防御放通封禁列表
    @inlinable
    public func describeBlockIgnoreList(_ input: DescribeBlockIgnoreListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBlockIgnoreListResponse {
        try await self.client.execute(action: "DescribeBlockIgnoreList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询入侵防御放通封禁列表
    @inlinable
    public func describeBlockIgnoreList(limit: Int64, offset: Int64, direction: String, ruleType: UInt64, order: String, by: String, searchValue: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBlockIgnoreListResponse> {
        self.describeBlockIgnoreList(.init(limit: limit, offset: offset, direction: direction, ruleType: ruleType, order: order, by: by, searchValue: searchValue), region: region, logger: logger, on: eventLoop)
    }

    /// 查询入侵防御放通封禁列表
    @inlinable
    public func describeBlockIgnoreList(limit: Int64, offset: Int64, direction: String, ruleType: UInt64, order: String, by: String, searchValue: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBlockIgnoreListResponse {
        try await self.describeBlockIgnoreList(.init(limit: limit, offset: offset, direction: direction, ruleType: ruleType, order: order, by: by, searchValue: searchValue), region: region, logger: logger, on: eventLoop)
    }
}
