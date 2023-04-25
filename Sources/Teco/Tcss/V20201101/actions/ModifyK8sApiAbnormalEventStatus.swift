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

extension Tcss {
    /// ModifyK8sApiAbnormalEventStatus请求参数结构体
    public struct ModifyK8sApiAbnormalEventStatusRequest: TCRequestModel {
        /// 事件ID集合
        public let eventIDSet: [UInt64]

        /// 状态
        public let status: String

        /// 备注
        public let remark: String?

        public init(eventIDSet: [UInt64], status: String, remark: String? = nil) {
            self.eventIDSet = eventIDSet
            self.status = status
            self.remark = remark
        }

        enum CodingKeys: String, CodingKey {
            case eventIDSet = "EventIDSet"
            case status = "Status"
            case remark = "Remark"
        }
    }

    /// ModifyK8sApiAbnormalEventStatus返回参数结构体
    public struct ModifyK8sApiAbnormalEventStatusResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改k8sapi异常事件状态
    @inlinable @discardableResult
    public func modifyK8sApiAbnormalEventStatus(_ input: ModifyK8sApiAbnormalEventStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyK8sApiAbnormalEventStatusResponse> {
        self.client.execute(action: "ModifyK8sApiAbnormalEventStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改k8sapi异常事件状态
    @inlinable @discardableResult
    public func modifyK8sApiAbnormalEventStatus(_ input: ModifyK8sApiAbnormalEventStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyK8sApiAbnormalEventStatusResponse {
        try await self.client.execute(action: "ModifyK8sApiAbnormalEventStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改k8sapi异常事件状态
    @inlinable @discardableResult
    public func modifyK8sApiAbnormalEventStatus(eventIDSet: [UInt64], status: String, remark: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyK8sApiAbnormalEventStatusResponse> {
        self.modifyK8sApiAbnormalEventStatus(.init(eventIDSet: eventIDSet, status: status, remark: remark), region: region, logger: logger, on: eventLoop)
    }

    /// 修改k8sapi异常事件状态
    @inlinable @discardableResult
    public func modifyK8sApiAbnormalEventStatus(eventIDSet: [UInt64], status: String, remark: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyK8sApiAbnormalEventStatusResponse {
        try await self.modifyK8sApiAbnormalEventStatus(.init(eventIDSet: eventIDSet, status: status, remark: remark), region: region, logger: logger, on: eventLoop)
    }
}
