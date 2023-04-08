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

import TecoCore

extension Cloudaudit {
    /// StopLogging请求参数结构体
    public struct StopLoggingRequest: TCRequestModel {
        /// 跟踪集名称
        public let auditName: String

        public init(auditName: String) {
            self.auditName = auditName
        }

        enum CodingKeys: String, CodingKey {
            case auditName = "AuditName"
        }
    }

    /// StopLogging返回参数结构体
    public struct StopLoggingResponse: TCResponseModel {
        /// 是否关闭成功
        public let isSuccess: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case isSuccess = "IsSuccess"
            case requestId = "RequestId"
        }
    }

    /// 关闭跟踪集
    @inlinable
    public func stopLogging(_ input: StopLoggingRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StopLoggingResponse> {
        self.client.execute(action: "StopLogging", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 关闭跟踪集
    @inlinable
    public func stopLogging(_ input: StopLoggingRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StopLoggingResponse {
        try await self.client.execute(action: "StopLogging", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 关闭跟踪集
    @inlinable
    public func stopLogging(auditName: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StopLoggingResponse> {
        self.stopLogging(.init(auditName: auditName), region: region, logger: logger, on: eventLoop)
    }

    /// 关闭跟踪集
    @inlinable
    public func stopLogging(auditName: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StopLoggingResponse {
        try await self.stopLogging(.init(auditName: auditName), region: region, logger: logger, on: eventLoop)
    }
}
