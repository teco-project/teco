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

// Test PR teco-project/teco-code-generator#23.

import Logging
import NIOCore
import TecoCore

extension Cdb {
    /// OpenAuditService请求参数结构体
    public struct OpenAuditServiceRequest: TCRequestModel {
        /// CDB实例ID
        public let instanceId: String

        /// 审计日志保存时长。支持值包括：
        /// 7 - 一周
        /// 30 - 一个月；
        /// 180 - 六个月；
        /// 365 - 一年；
        /// 1095 - 三年；
        /// 1825 - 五年；
        public let logExpireDay: UInt64

        /// 高频审计日志保存时长。支持值包括：
        /// 7 - 一周
        /// 30 - 一个月；
        /// 180 - 六个月；
        /// 365 - 一年；
        /// 1095 - 三年；
        /// 1825 - 五年；
        public let highLogExpireDay: UInt64?

        public init(instanceId: String, logExpireDay: UInt64, highLogExpireDay: UInt64? = nil) {
            self.instanceId = instanceId
            self.logExpireDay = logExpireDay
            self.highLogExpireDay = highLogExpireDay
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case logExpireDay = "LogExpireDay"
            case highLogExpireDay = "HighLogExpireDay"
        }
    }

    /// OpenAuditService返回参数结构体
    public struct OpenAuditServiceResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 开通审计服务
    ///
    /// CDB实例开通审计服务
    @inlinable @discardableResult
    public func openAuditService(_ input: OpenAuditServiceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<OpenAuditServiceResponse> {
        self.client.execute(action: "OpenAuditService", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 开通审计服务
    ///
    /// CDB实例开通审计服务
    @inlinable @discardableResult
    public func openAuditService(_ input: OpenAuditServiceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> OpenAuditServiceResponse {
        try await self.client.execute(action: "OpenAuditService", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 开通审计服务
    ///
    /// CDB实例开通审计服务
    @inlinable @discardableResult
    public func openAuditService(instanceId: String, logExpireDay: UInt64, highLogExpireDay: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<OpenAuditServiceResponse> {
        self.openAuditService(.init(instanceId: instanceId, logExpireDay: logExpireDay, highLogExpireDay: highLogExpireDay), region: region, logger: logger, on: eventLoop)
    }

    /// 开通审计服务
    ///
    /// CDB实例开通审计服务
    @inlinable @discardableResult
    public func openAuditService(instanceId: String, logExpireDay: UInt64, highLogExpireDay: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> OpenAuditServiceResponse {
        try await self.openAuditService(.init(instanceId: instanceId, logExpireDay: logExpireDay, highLogExpireDay: highLogExpireDay), region: region, logger: logger, on: eventLoop)
    }
}
