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

extension Tcss {
    /// DescribeSecLogCleanSettingInfo请求参数结构体
    public struct DescribeSecLogCleanSettingInfoRequest: TCRequestModel {
        public init() {
        }
    }

    /// DescribeSecLogCleanSettingInfo返回参数结构体
    public struct DescribeSecLogCleanSettingInfoResponse: TCResponseModel {
        /// 触发清理的储量底线
        public let reservesLimit: UInt64

        /// 清理停止时的储量截至线
        public let reservesDeadline: UInt64

        /// 触发清理的存储天数
        public let dayLimit: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case reservesLimit = "ReservesLimit"
            case reservesDeadline = "ReservesDeadline"
            case dayLimit = "DayLimit"
            case requestId = "RequestId"
        }
    }

    /// 查询安全日志清理设置详情
    @inlinable
    public func describeSecLogCleanSettingInfo(_ input: DescribeSecLogCleanSettingInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSecLogCleanSettingInfoResponse> {
        self.client.execute(action: "DescribeSecLogCleanSettingInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询安全日志清理设置详情
    @inlinable
    public func describeSecLogCleanSettingInfo(_ input: DescribeSecLogCleanSettingInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSecLogCleanSettingInfoResponse {
        try await self.client.execute(action: "DescribeSecLogCleanSettingInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询安全日志清理设置详情
    @inlinable
    public func describeSecLogCleanSettingInfo(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSecLogCleanSettingInfoResponse> {
        self.describeSecLogCleanSettingInfo(.init(), region: region, logger: logger, on: eventLoop)
    }

    /// 查询安全日志清理设置详情
    @inlinable
    public func describeSecLogCleanSettingInfo(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSecLogCleanSettingInfoResponse {
        try await self.describeSecLogCleanSettingInfo(.init(), region: region, logger: logger, on: eventLoop)
    }
}
