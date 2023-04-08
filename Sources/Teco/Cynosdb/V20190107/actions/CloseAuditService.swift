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

extension Cynosdb {
    /// CloseAuditService请求参数结构体
    public struct CloseAuditServiceRequest: TCRequestModel {
        /// 实例ID。
        public let instanceId: String

        public init(instanceId: String) {
            self.instanceId = instanceId
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
        }
    }

    /// CloseAuditService返回参数结构体
    public struct CloseAuditServiceResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 实例关闭审计服务
    ///
    /// TDSQL-C for MySQL实例关闭审计服务
    @inlinable @discardableResult
    public func closeAuditService(_ input: CloseAuditServiceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CloseAuditServiceResponse> {
        self.client.execute(action: "CloseAuditService", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 实例关闭审计服务
    ///
    /// TDSQL-C for MySQL实例关闭审计服务
    @inlinable @discardableResult
    public func closeAuditService(_ input: CloseAuditServiceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CloseAuditServiceResponse {
        try await self.client.execute(action: "CloseAuditService", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 实例关闭审计服务
    ///
    /// TDSQL-C for MySQL实例关闭审计服务
    @inlinable @discardableResult
    public func closeAuditService(instanceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CloseAuditServiceResponse> {
        self.closeAuditService(.init(instanceId: instanceId), region: region, logger: logger, on: eventLoop)
    }

    /// 实例关闭审计服务
    ///
    /// TDSQL-C for MySQL实例关闭审计服务
    @inlinable @discardableResult
    public func closeAuditService(instanceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CloseAuditServiceResponse {
        try await self.closeAuditService(.init(instanceId: instanceId), region: region, logger: logger, on: eventLoop)
    }
}
