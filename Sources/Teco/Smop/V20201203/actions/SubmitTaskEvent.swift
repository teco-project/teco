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

extension Smop {
    /// SubmitTaskEvent请求参数结构体
    public struct SubmitTaskEventRequest: TCRequest {
        /// 用户ID
        public let accountId: String

        /// 设备ID
        public let deviceId: String

        /// 订单ID
        public let orderId: String

        /// 任务事件Code
        public let code: String

        /// 同步异步方式：0为同步、1位异步
        public let async: Int64

        /// 产品ID
        public let productId: Int64

        /// 回调地址
        public let notifyURL: String?

        public init(accountId: String, deviceId: String, orderId: String, code: String, async: Int64, productId: Int64, notifyURL: String? = nil) {
            self.accountId = accountId
            self.deviceId = deviceId
            self.orderId = orderId
            self.code = code
            self.async = async
            self.productId = productId
            self.notifyURL = notifyURL
        }

        enum CodingKeys: String, CodingKey {
            case accountId = "AccountId"
            case deviceId = "DeviceId"
            case orderId = "OrderId"
            case code = "Code"
            case async = "Async"
            case productId = "ProductId"
            case notifyURL = "NotifyURL"
        }
    }

    /// SubmitTaskEvent返回参数结构体
    public struct SubmitTaskEventResponse: TCResponse {
        /// 订单ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let orderId: String?

        /// 信息码
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let code: Int64?

        /// success
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let message: String?

        /// 任务处理结果列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: [TaskEventData]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case orderId = "OrderId"
            case code = "Code"
            case message = "Message"
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 提交任务事件
    ///
    /// 提交任务事件接口
    @inlinable
    public func submitTaskEvent(_ input: SubmitTaskEventRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SubmitTaskEventResponse> {
        self.client.execute(action: "SubmitTaskEvent", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 提交任务事件
    ///
    /// 提交任务事件接口
    @inlinable
    public func submitTaskEvent(_ input: SubmitTaskEventRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SubmitTaskEventResponse {
        try await self.client.execute(action: "SubmitTaskEvent", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 提交任务事件
    ///
    /// 提交任务事件接口
    @inlinable
    public func submitTaskEvent(accountId: String, deviceId: String, orderId: String, code: String, async: Int64, productId: Int64, notifyURL: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SubmitTaskEventResponse> {
        self.submitTaskEvent(.init(accountId: accountId, deviceId: deviceId, orderId: orderId, code: code, async: async, productId: productId, notifyURL: notifyURL), region: region, logger: logger, on: eventLoop)
    }

    /// 提交任务事件
    ///
    /// 提交任务事件接口
    @inlinable
    public func submitTaskEvent(accountId: String, deviceId: String, orderId: String, code: String, async: Int64, productId: Int64, notifyURL: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SubmitTaskEventResponse {
        try await self.submitTaskEvent(.init(accountId: accountId, deviceId: deviceId, orderId: orderId, code: code, async: async, productId: productId, notifyURL: notifyURL), region: region, logger: logger, on: eventLoop)
    }
}
