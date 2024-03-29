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

import Logging
import NIOCore
import TecoCore

extension Dbbrain {
    /// OpenAuditService请求参数结构体
    public struct OpenAuditServiceRequest: TCRequest {
        /// 服务产品类型，支持值包括： "dcdb" - 云数据库 Tdsql， "mariadb" - 云数据库 MariaDB。
        public let product: String

        /// 与Product保持一致。如："dcdb" ,"mariadb"。
        public let nodeRequestType: String

        /// 实例ID。
        public let instanceId: String

        /// 日志保存总时长，只能是7,30,90,180,365,1095,1825。
        public let logExpireDay: Int64

        /// 高频日志保存时长，只能是7,30,90,180,365,1095,1825。
        public let hotLogExpireDay: Int64

        public init(product: String, nodeRequestType: String, instanceId: String, logExpireDay: Int64, hotLogExpireDay: Int64) {
            self.product = product
            self.nodeRequestType = nodeRequestType
            self.instanceId = instanceId
            self.logExpireDay = logExpireDay
            self.hotLogExpireDay = hotLogExpireDay
        }

        enum CodingKeys: String, CodingKey {
            case product = "Product"
            case nodeRequestType = "NodeRequestType"
            case instanceId = "InstanceId"
            case logExpireDay = "LogExpireDay"
            case hotLogExpireDay = "HotLogExpireDay"
        }
    }

    /// OpenAuditService返回参数结构体
    public struct OpenAuditServiceResponse: TCResponse {
        /// taskId 为0表示开通审计成功，否则开通失败
        public let taskId: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case requestId = "RequestId"
        }
    }

    /// 开通数据库审计
    ///
    /// 开启数据库审计服务
    @inlinable
    public func openAuditService(_ input: OpenAuditServiceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<OpenAuditServiceResponse> {
        self.client.execute(action: "OpenAuditService", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 开通数据库审计
    ///
    /// 开启数据库审计服务
    @inlinable
    public func openAuditService(_ input: OpenAuditServiceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> OpenAuditServiceResponse {
        try await self.client.execute(action: "OpenAuditService", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 开通数据库审计
    ///
    /// 开启数据库审计服务
    @inlinable
    public func openAuditService(product: String, nodeRequestType: String, instanceId: String, logExpireDay: Int64, hotLogExpireDay: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<OpenAuditServiceResponse> {
        self.openAuditService(.init(product: product, nodeRequestType: nodeRequestType, instanceId: instanceId, logExpireDay: logExpireDay, hotLogExpireDay: hotLogExpireDay), region: region, logger: logger, on: eventLoop)
    }

    /// 开通数据库审计
    ///
    /// 开启数据库审计服务
    @inlinable
    public func openAuditService(product: String, nodeRequestType: String, instanceId: String, logExpireDay: Int64, hotLogExpireDay: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> OpenAuditServiceResponse {
        try await self.openAuditService(.init(product: product, nodeRequestType: nodeRequestType, instanceId: instanceId, logExpireDay: logExpireDay, hotLogExpireDay: hotLogExpireDay), region: region, logger: logger, on: eventLoop)
    }
}
