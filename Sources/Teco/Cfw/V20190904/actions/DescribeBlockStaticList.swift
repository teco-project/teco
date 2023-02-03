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

extension Cfw {
    /// DescribeBlockStaticList请求参数结构体
    public struct DescribeBlockStaticListRequest: TCRequestModel {
        /// 开始时间
        public let startTime: String

        /// 结束时间
        public let endTime: String

        /// 列表类型，只能是下面三种之一：port、address、ip
        public let queryType: String

        /// top数
        public let top: Int64

        /// 查询条件
        public let searchValue: String?

        public init(startTime: String, endTime: String, queryType: String, top: Int64, searchValue: String? = nil) {
            self.startTime = startTime
            self.endTime = endTime
            self.queryType = queryType
            self.top = top
            self.searchValue = searchValue
        }

        enum CodingKeys: String, CodingKey {
            case startTime = "StartTime"
            case endTime = "EndTime"
            case queryType = "QueryType"
            case top = "Top"
            case searchValue = "SearchValue"
        }
    }

    /// DescribeBlockStaticList返回参数结构体
    public struct DescribeBlockStaticListResponse: TCResponseModel {
        /// 无
        public let data: [StaticInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 告警中心柱形图
    ///
    /// DescribeBlockStaticList 告警中心柱形图
    @inlinable
    public func describeBlockStaticList(_ input: DescribeBlockStaticListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBlockStaticListResponse> {
        self.client.execute(action: "DescribeBlockStaticList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 告警中心柱形图
    ///
    /// DescribeBlockStaticList 告警中心柱形图
    @inlinable
    public func describeBlockStaticList(_ input: DescribeBlockStaticListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBlockStaticListResponse {
        try await self.client.execute(action: "DescribeBlockStaticList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 告警中心柱形图
    ///
    /// DescribeBlockStaticList 告警中心柱形图
    @inlinable
    public func describeBlockStaticList(startTime: String, endTime: String, queryType: String, top: Int64, searchValue: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBlockStaticListResponse> {
        let input = DescribeBlockStaticListRequest(startTime: startTime, endTime: endTime, queryType: queryType, top: top, searchValue: searchValue)
        return self.client.execute(action: "DescribeBlockStaticList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 告警中心柱形图
    ///
    /// DescribeBlockStaticList 告警中心柱形图
    @inlinable
    public func describeBlockStaticList(startTime: String, endTime: String, queryType: String, top: Int64, searchValue: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBlockStaticListResponse {
        let input = DescribeBlockStaticListRequest(startTime: startTime, endTime: endTime, queryType: queryType, top: top, searchValue: searchValue)
        return try await self.client.execute(action: "DescribeBlockStaticList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
