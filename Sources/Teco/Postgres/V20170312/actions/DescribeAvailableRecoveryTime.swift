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

extension Postgres {
    /// DescribeAvailableRecoveryTime请求参数结构体
    public struct DescribeAvailableRecoveryTimeRequest: TCRequestModel {
        /// 实例ID
        public let dbInstanceId: String

        public init(dbInstanceId: String) {
            self.dbInstanceId = dbInstanceId
        }

        enum CodingKeys: String, CodingKey {
            case dbInstanceId = "DBInstanceId"
        }
    }

    /// DescribeAvailableRecoveryTime返回参数结构体
    public struct DescribeAvailableRecoveryTimeResponse: TCResponseModel {
        /// 可恢复的最早时间，时区为东八区（UTC+8）。
        public let recoveryBeginTime: String

        /// 可恢复的最晚时间，时区为东八区（UTC+8）。
        public let recoveryEndTime: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case recoveryBeginTime = "RecoveryBeginTime"
            case recoveryEndTime = "RecoveryEndTime"
            case requestId = "RequestId"
        }
    }

    /// 查询实例可恢复的时间范围
    ///
    /// 本接口（DescribeAvailableRecoveryTime）用于查询实例可恢复的时间范围。
    @inlinable
    public func describeAvailableRecoveryTime(_ input: DescribeAvailableRecoveryTimeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAvailableRecoveryTimeResponse> {
        self.client.execute(action: "DescribeAvailableRecoveryTime", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询实例可恢复的时间范围
    ///
    /// 本接口（DescribeAvailableRecoveryTime）用于查询实例可恢复的时间范围。
    @inlinable
    public func describeAvailableRecoveryTime(_ input: DescribeAvailableRecoveryTimeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAvailableRecoveryTimeResponse {
        try await self.client.execute(action: "DescribeAvailableRecoveryTime", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询实例可恢复的时间范围
    ///
    /// 本接口（DescribeAvailableRecoveryTime）用于查询实例可恢复的时间范围。
    @inlinable
    public func describeAvailableRecoveryTime(dbInstanceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAvailableRecoveryTimeResponse> {
        let input = DescribeAvailableRecoveryTimeRequest(dbInstanceId: dbInstanceId)
        return self.client.execute(action: "DescribeAvailableRecoveryTime", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询实例可恢复的时间范围
    ///
    /// 本接口（DescribeAvailableRecoveryTime）用于查询实例可恢复的时间范围。
    @inlinable
    public func describeAvailableRecoveryTime(dbInstanceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAvailableRecoveryTimeResponse {
        let input = DescribeAvailableRecoveryTimeRequest(dbInstanceId: dbInstanceId)
        return try await self.client.execute(action: "DescribeAvailableRecoveryTime", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
