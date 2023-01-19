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

extension Youmall {
    /// DescribeTrajectoryData请求参数结构体
    public struct DescribeTrajectoryDataRequest: TCRequestModel {
        /// 集团ID
        public let companyId: String

        /// 店铺ID
        public let shopId: Int64

        /// 开始日期，格式yyyy-MM-dd
        public let startDate: String

        /// 结束日期，格式yyyy-MM-dd
        public let endDate: String

        /// 限制返回数据的最大条数，最大 400（负数代为 400）
        public let limit: Int64

        /// 顾客性别顾虑，0是男，1是女，其它代表不分性别
        public let gender: Int64

        public init(companyId: String, shopId: Int64, startDate: String, endDate: String, limit: Int64, gender: Int64) {
            self.companyId = companyId
            self.shopId = shopId
            self.startDate = startDate
            self.endDate = endDate
            self.limit = limit
            self.gender = gender
        }

        enum CodingKeys: String, CodingKey {
            case companyId = "CompanyId"
            case shopId = "ShopId"
            case startDate = "StartDate"
            case endDate = "EndDate"
            case limit = "Limit"
            case gender = "Gender"
        }
    }

    /// DescribeTrajectoryData返回参数结构体
    public struct DescribeTrajectoryDataResponse: TCResponseModel {
        /// 集团ID
        public let companyId: String

        /// 店铺ID
        public let shopId: Int64

        /// 总人数
        public let totalPerson: Int64

        /// 总动迹数目
        public let totalTrajectory: Int64

        /// 返回动迹中的总人数
        public let person: Int64

        /// 返回动迹的数目
        public let trajectory: Int64

        /// 返回动迹的具体信息
        public let data: [TrajectorySunData]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case companyId = "CompanyId"
            case shopId = "ShopId"
            case totalPerson = "TotalPerson"
            case totalTrajectory = "TotalTrajectory"
            case person = "Person"
            case trajectory = "Trajectory"
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 获取动线轨迹信息
    @inlinable
    public func describeTrajectoryData(_ input: DescribeTrajectoryDataRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTrajectoryDataResponse> {
        self.client.execute(action: "DescribeTrajectoryData", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取动线轨迹信息
    @inlinable
    public func describeTrajectoryData(_ input: DescribeTrajectoryDataRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTrajectoryDataResponse {
        try await self.client.execute(action: "DescribeTrajectoryData", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取动线轨迹信息
    @inlinable
    public func describeTrajectoryData(companyId: String, shopId: Int64, startDate: String, endDate: String, limit: Int64, gender: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTrajectoryDataResponse> {
        self.describeTrajectoryData(DescribeTrajectoryDataRequest(companyId: companyId, shopId: shopId, startDate: startDate, endDate: endDate, limit: limit, gender: gender), region: region, logger: logger, on: eventLoop)
    }

    /// 获取动线轨迹信息
    @inlinable
    public func describeTrajectoryData(companyId: String, shopId: Int64, startDate: String, endDate: String, limit: Int64, gender: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTrajectoryDataResponse {
        try await self.describeTrajectoryData(DescribeTrajectoryDataRequest(companyId: companyId, shopId: shopId, startDate: startDate, endDate: endDate, limit: limit, gender: gender), region: region, logger: logger, on: eventLoop)
    }
}
