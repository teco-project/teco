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

extension Dts {
    /// ActivateSubscribe请求参数结构体
    public struct ActivateSubscribeRequest: TCRequest {
        /// 订阅实例ID。
        public let subscribeId: String

        /// 数据库实例ID
        public let instanceId: String

        /// 数据订阅类型0-全实例订阅，1数据订阅，2结构订阅，3数据订阅与结构订阅
        public let subscribeObjectType: Int64

        /// 订阅对象
        public let objects: SubscribeObject?

        /// 数据订阅服务所在子网。默认为数据库实例所在的子网内。
        public let uniqSubnetId: String?

        /// 订阅服务端口；默认为7507
        public let vport: Int64?

        public init(subscribeId: String, instanceId: String, subscribeObjectType: Int64, objects: SubscribeObject? = nil, uniqSubnetId: String? = nil, vport: Int64? = nil) {
            self.subscribeId = subscribeId
            self.instanceId = instanceId
            self.subscribeObjectType = subscribeObjectType
            self.objects = objects
            self.uniqSubnetId = uniqSubnetId
            self.vport = vport
        }

        enum CodingKeys: String, CodingKey {
            case subscribeId = "SubscribeId"
            case instanceId = "InstanceId"
            case subscribeObjectType = "SubscribeObjectType"
            case objects = "Objects"
            case uniqSubnetId = "UniqSubnetId"
            case vport = "Vport"
        }
    }

    /// ActivateSubscribe返回参数结构体
    public struct ActivateSubscribeResponse: TCResponse {
        /// 配置数据订阅任务ID。
        public let asyncRequestId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case asyncRequestId = "AsyncRequestId"
            case requestId = "RequestId"
        }
    }

    /// 配置数据订阅通道
    ///
    /// 本接口用于配置数据订阅，只有在未配置状态的订阅实例才能调用此接口。
    @inlinable
    public func activateSubscribe(_ input: ActivateSubscribeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ActivateSubscribeResponse> {
        self.client.execute(action: "ActivateSubscribe", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 配置数据订阅通道
    ///
    /// 本接口用于配置数据订阅，只有在未配置状态的订阅实例才能调用此接口。
    @inlinable
    public func activateSubscribe(_ input: ActivateSubscribeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ActivateSubscribeResponse {
        try await self.client.execute(action: "ActivateSubscribe", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 配置数据订阅通道
    ///
    /// 本接口用于配置数据订阅，只有在未配置状态的订阅实例才能调用此接口。
    @inlinable
    public func activateSubscribe(subscribeId: String, instanceId: String, subscribeObjectType: Int64, objects: SubscribeObject? = nil, uniqSubnetId: String? = nil, vport: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ActivateSubscribeResponse> {
        self.activateSubscribe(.init(subscribeId: subscribeId, instanceId: instanceId, subscribeObjectType: subscribeObjectType, objects: objects, uniqSubnetId: uniqSubnetId, vport: vport), region: region, logger: logger, on: eventLoop)
    }

    /// 配置数据订阅通道
    ///
    /// 本接口用于配置数据订阅，只有在未配置状态的订阅实例才能调用此接口。
    @inlinable
    public func activateSubscribe(subscribeId: String, instanceId: String, subscribeObjectType: Int64, objects: SubscribeObject? = nil, uniqSubnetId: String? = nil, vport: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ActivateSubscribeResponse {
        try await self.activateSubscribe(.init(subscribeId: subscribeId, instanceId: instanceId, subscribeObjectType: subscribeObjectType, objects: objects, uniqSubnetId: uniqSubnetId, vport: vport), region: region, logger: logger, on: eventLoop)
    }
}
