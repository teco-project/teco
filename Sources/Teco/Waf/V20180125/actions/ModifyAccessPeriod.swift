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

extension Waf {
    /// ModifyAccessPeriod请求参数结构体
    public struct ModifyAccessPeriodRequest: TCRequestModel {
        /// 访问日志保存期限，范围为[1, 30]
        public let period: Int64

        /// 日志主题
        public let topicId: String

        public init(period: Int64, topicId: String) {
            self.period = period
            self.topicId = topicId
        }

        enum CodingKeys: String, CodingKey {
            case period = "Period"
            case topicId = "TopicId"
        }
    }

    /// ModifyAccessPeriod返回参数结构体
    public struct ModifyAccessPeriodResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改访问日志保存期限
    ///
    /// 本接口用于修改访问日志保存期限
    @inlinable @discardableResult
    public func modifyAccessPeriod(_ input: ModifyAccessPeriodRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyAccessPeriodResponse> {
        self.client.execute(action: "ModifyAccessPeriod", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改访问日志保存期限
    ///
    /// 本接口用于修改访问日志保存期限
    @inlinable @discardableResult
    public func modifyAccessPeriod(_ input: ModifyAccessPeriodRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyAccessPeriodResponse {
        try await self.client.execute(action: "ModifyAccessPeriod", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改访问日志保存期限
    ///
    /// 本接口用于修改访问日志保存期限
    @inlinable @discardableResult
    public func modifyAccessPeriod(period: Int64, topicId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyAccessPeriodResponse> {
        self.modifyAccessPeriod(.init(period: period, topicId: topicId), region: region, logger: logger, on: eventLoop)
    }

    /// 修改访问日志保存期限
    ///
    /// 本接口用于修改访问日志保存期限
    @inlinable @discardableResult
    public func modifyAccessPeriod(period: Int64, topicId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyAccessPeriodResponse {
        try await self.modifyAccessPeriod(.init(period: period, topicId: topicId), region: region, logger: logger, on: eventLoop)
    }
}
