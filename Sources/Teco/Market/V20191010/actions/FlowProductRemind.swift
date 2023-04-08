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

extension Market {
    /// FlowProductRemind请求参数结构体
    public struct FlowProductRemindRequest: TCRequestModel {
        /// 服务商uin
        public let providerUin: String

        /// 服务商实例ID
        public let signId: String

        /// 云市场实例ID
        public let resourceId: String

        /// 实例总流量
        public let totalFlow: String

        /// 剩余流量
        public let leftFlow: String

        /// 流量单位
        public let flowUnit: String

        public init(providerUin: String, signId: String, resourceId: String, totalFlow: String, leftFlow: String, flowUnit: String) {
            self.providerUin = providerUin
            self.signId = signId
            self.resourceId = resourceId
            self.totalFlow = totalFlow
            self.leftFlow = leftFlow
            self.flowUnit = flowUnit
        }

        enum CodingKeys: String, CodingKey {
            case providerUin = "ProviderUin"
            case signId = "SignId"
            case resourceId = "ResourceId"
            case totalFlow = "TotalFlow"
            case leftFlow = "LeftFlow"
            case flowUnit = "FlowUnit"
        }
    }

    /// FlowProductRemind返回参数结构体
    public struct FlowProductRemindResponse: TCResponseModel {
        /// 是否成功
        public let success: String

        /// 流水号
        public let flowId: String

        /// 消息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let info: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case success = "Success"
            case flowId = "FlowId"
            case info = "Info"
            case requestId = "RequestId"
        }
    }

    /// 计量商品用量提醒
    ///
    /// 计量商品用量提醒，用于服务商调用云服务，云服务向客户发送提醒信息
    @inlinable
    public func flowProductRemind(_ input: FlowProductRemindRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<FlowProductRemindResponse> {
        self.client.execute(action: "FlowProductRemind", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 计量商品用量提醒
    ///
    /// 计量商品用量提醒，用于服务商调用云服务，云服务向客户发送提醒信息
    @inlinable
    public func flowProductRemind(_ input: FlowProductRemindRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> FlowProductRemindResponse {
        try await self.client.execute(action: "FlowProductRemind", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 计量商品用量提醒
    ///
    /// 计量商品用量提醒，用于服务商调用云服务，云服务向客户发送提醒信息
    @inlinable
    public func flowProductRemind(providerUin: String, signId: String, resourceId: String, totalFlow: String, leftFlow: String, flowUnit: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<FlowProductRemindResponse> {
        self.flowProductRemind(.init(providerUin: providerUin, signId: signId, resourceId: resourceId, totalFlow: totalFlow, leftFlow: leftFlow, flowUnit: flowUnit), region: region, logger: logger, on: eventLoop)
    }

    /// 计量商品用量提醒
    ///
    /// 计量商品用量提醒，用于服务商调用云服务，云服务向客户发送提醒信息
    @inlinable
    public func flowProductRemind(providerUin: String, signId: String, resourceId: String, totalFlow: String, leftFlow: String, flowUnit: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> FlowProductRemindResponse {
        try await self.flowProductRemind(.init(providerUin: providerUin, signId: signId, resourceId: resourceId, totalFlow: totalFlow, leftFlow: leftFlow, flowUnit: flowUnit), region: region, logger: logger, on: eventLoop)
    }
}
