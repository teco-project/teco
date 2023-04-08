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

extension Wedata {
    /// RegisterEventListener请求参数结构体
    public struct RegisterEventListenerRequest: TCRequestModel {
        /// 关键字，如果是任务，则传任务Id
        public let key: String

        /// 事件名称
        public let eventName: String

        /// 项目id
        public let projectId: String

        /// 事件类型，默认 REST_API
        public let type: String?

        /// 配置信息，比如最长等待时间1天配置json：{"maxWaitEventTime":1,"maxWaitEventTimeUnit":"DAYS"}
        public let properties: String?

        public init(key: String, eventName: String, projectId: String, type: String? = nil, properties: String? = nil) {
            self.key = key
            self.eventName = eventName
            self.projectId = projectId
            self.type = type
            self.properties = properties
        }

        enum CodingKeys: String, CodingKey {
            case key = "Key"
            case eventName = "EventName"
            case projectId = "ProjectId"
            case type = "Type"
            case properties = "Properties"
        }
    }

    /// RegisterEventListener返回参数结构体
    public struct RegisterEventListenerResponse: TCResponseModel {
        /// 成功或者失败
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: BatchReturn?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 注册事件监听器【Beta版本】
    ///
    /// <p style="color:red;">[注意：该Beta版本只满足广州区部分白名单客户使用]</p>
    /// 注册事件监听器
    @inlinable
    public func registerEventListener(_ input: RegisterEventListenerRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RegisterEventListenerResponse> {
        self.client.execute(action: "RegisterEventListener", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 注册事件监听器【Beta版本】
    ///
    /// <p style="color:red;">[注意：该Beta版本只满足广州区部分白名单客户使用]</p>
    /// 注册事件监听器
    @inlinable
    public func registerEventListener(_ input: RegisterEventListenerRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RegisterEventListenerResponse {
        try await self.client.execute(action: "RegisterEventListener", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 注册事件监听器【Beta版本】
    ///
    /// <p style="color:red;">[注意：该Beta版本只满足广州区部分白名单客户使用]</p>
    /// 注册事件监听器
    @inlinable
    public func registerEventListener(key: String, eventName: String, projectId: String, type: String? = nil, properties: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RegisterEventListenerResponse> {
        self.registerEventListener(.init(key: key, eventName: eventName, projectId: projectId, type: type, properties: properties), region: region, logger: logger, on: eventLoop)
    }

    /// 注册事件监听器【Beta版本】
    ///
    /// <p style="color:red;">[注意：该Beta版本只满足广州区部分白名单客户使用]</p>
    /// 注册事件监听器
    @inlinable
    public func registerEventListener(key: String, eventName: String, projectId: String, type: String? = nil, properties: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RegisterEventListenerResponse {
        try await self.registerEventListener(.init(key: key, eventName: eventName, projectId: projectId, type: type, properties: properties), region: region, logger: logger, on: eventLoop)
    }
}
