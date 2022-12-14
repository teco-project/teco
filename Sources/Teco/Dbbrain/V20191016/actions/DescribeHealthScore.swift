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

@_exported import struct Foundation.Date
import TecoDateHelpers

extension Dbbrain {
    /// DescribeHealthScore请求参数结构体
    public struct DescribeHealthScoreRequest: TCRequestModel {
        /// 需要获取健康得分的实例ID。
        public let instanceId: String

        /// 获取健康得分的时间。
        ///
        /// **Important:** This has to be a `var` due to a property wrapper restriction, which is about to be removed in the future.
        /// For discussions, see [Allow Property Wrappers on Let Declarations](https://forums.swift.org/t/pitch-allow-property-wrappers-on-let-declarations/61750).
        ///
        /// Although mutating this property is possible for now, it may become a `let` variable at any time. Please don't rely on such behavior.
        @TCTimestampISO8601Encoding public var time: Date

        /// 服务产品类型，支持值包括： "mysql" - 云数据库 MySQL， "cynosdb" - 云数据库 TDSQL-C for MySQL，默认为"mysql"。
        public let product: String

        public init(instanceId: String, time: Date, product: String) {
            self.instanceId = instanceId
            self.time = time
            self.product = product
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case time = "Time"
            case product = "Product"
        }
    }

    /// DescribeHealthScore返回参数结构体
    public struct DescribeHealthScoreResponse: TCResponseModel {
        /// 健康得分以及异常扣分项。
        public let data: HealthScoreInfo

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 获取健康得分
    ///
    /// 根据实例ID获取指定时间段（30分钟）的健康得分，以及异常扣分项。
    @inlinable
    public func describeHealthScore(_ input: DescribeHealthScoreRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeHealthScoreResponse > {
        self.client.execute(action: "DescribeHealthScore", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取健康得分
    ///
    /// 根据实例ID获取指定时间段（30分钟）的健康得分，以及异常扣分项。
    @inlinable
    public func describeHealthScore(_ input: DescribeHealthScoreRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeHealthScoreResponse {
        try await self.client.execute(action: "DescribeHealthScore", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取健康得分
    ///
    /// 根据实例ID获取指定时间段（30分钟）的健康得分，以及异常扣分项。
    @inlinable
    public func describeHealthScore(instanceId: String, time: Date, product: String, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeHealthScoreResponse > {
        self.describeHealthScore(DescribeHealthScoreRequest(instanceId: instanceId, time: time, product: product), logger: logger, on: eventLoop)
    }

    /// 获取健康得分
    ///
    /// 根据实例ID获取指定时间段（30分钟）的健康得分，以及异常扣分项。
    @inlinable
    public func describeHealthScore(instanceId: String, time: Date, product: String, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeHealthScoreResponse {
        try await self.describeHealthScore(DescribeHealthScoreRequest(instanceId: instanceId, time: time, product: product), logger: logger, on: eventLoop)
    }
}
