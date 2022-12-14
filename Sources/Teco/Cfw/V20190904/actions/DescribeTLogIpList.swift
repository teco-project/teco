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

extension Cfw {
    /// DescribeTLogIpList请求参数结构体
    public struct DescribeTLogIpListRequest: TCRequestModel {
        /// 开始时间
        public let startTime: String

        /// 结束时间
        public let endTime: String

        /// 类型 1 告警 2阻断
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

    /// DescribeTLogIpList返回参数结构体
    public struct DescribeTLogIpListResponse: TCResponseModel {
        /// 数据集合
        public let data: [StaticInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 告警中心IP柱形图
    ///
    /// DescribeTLogIpList告警中心IP柱形图
    @inlinable
    public func describeTLogIpList(_ input: DescribeTLogIpListRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeTLogIpListResponse > {
        self.client.execute(action: "DescribeTLogIpList", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 告警中心IP柱形图
    ///
    /// DescribeTLogIpList告警中心IP柱形图
    @inlinable
    public func describeTLogIpList(_ input: DescribeTLogIpListRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTLogIpListResponse {
        try await self.client.execute(action: "DescribeTLogIpList", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 告警中心IP柱形图
    ///
    /// DescribeTLogIpList告警中心IP柱形图
    @inlinable
    public func describeTLogIpList(startTime: String, endTime: String, queryType: String, top: Int64, searchValue: String? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeTLogIpListResponse > {
        self.describeTLogIpList(DescribeTLogIpListRequest(startTime: startTime, endTime: endTime, queryType: queryType, top: top, searchValue: searchValue), logger: logger, on: eventLoop)
    }

    /// 告警中心IP柱形图
    ///
    /// DescribeTLogIpList告警中心IP柱形图
    @inlinable
    public func describeTLogIpList(startTime: String, endTime: String, queryType: String, top: Int64, searchValue: String? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTLogIpListResponse {
        try await self.describeTLogIpList(DescribeTLogIpListRequest(startTime: startTime, endTime: endTime, queryType: queryType, top: top, searchValue: searchValue), logger: logger, on: eventLoop)
    }
}
