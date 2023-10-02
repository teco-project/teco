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

extension Waf {
    /// ModifyBotStatus请求参数结构体
    public struct ModifyBotStatusRequest: TCRequest {
        /// 域名
        public let domain: String

        /// 类别
        public let category: String

        /// 状态
        public let status: String

        /// 实例id
        public let instanceID: String?

        /// 是否是bot4.0版本
        public let isVersionFour: Bool?

        /// 传入Bot版本号，场景化版本为"4.1.0"
        public let botVersion: String?

        public init(domain: String, category: String, status: String, instanceID: String? = nil, isVersionFour: Bool? = nil, botVersion: String? = nil) {
            self.domain = domain
            self.category = category
            self.status = status
            self.instanceID = instanceID
            self.isVersionFour = isVersionFour
            self.botVersion = botVersion
        }

        enum CodingKeys: String, CodingKey {
            case domain = "Domain"
            case category = "Category"
            case status = "Status"
            case instanceID = "InstanceID"
            case isVersionFour = "IsVersionFour"
            case botVersion = "BotVersion"
        }
    }

    /// ModifyBotStatus返回参数结构体
    public struct ModifyBotStatusResponse: TCResponse {
        /// 正常情况为null
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// Bot_V2 bot总开关更新
    @inlinable
    public func modifyBotStatus(_ input: ModifyBotStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyBotStatusResponse> {
        self.client.execute(action: "ModifyBotStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Bot_V2 bot总开关更新
    @inlinable
    public func modifyBotStatus(_ input: ModifyBotStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyBotStatusResponse {
        try await self.client.execute(action: "ModifyBotStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// Bot_V2 bot总开关更新
    @inlinable
    public func modifyBotStatus(domain: String, category: String, status: String, instanceID: String? = nil, isVersionFour: Bool? = nil, botVersion: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyBotStatusResponse> {
        self.modifyBotStatus(.init(domain: domain, category: category, status: status, instanceID: instanceID, isVersionFour: isVersionFour, botVersion: botVersion), region: region, logger: logger, on: eventLoop)
    }

    /// Bot_V2 bot总开关更新
    @inlinable
    public func modifyBotStatus(domain: String, category: String, status: String, instanceID: String? = nil, isVersionFour: Bool? = nil, botVersion: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyBotStatusResponse {
        try await self.modifyBotStatus(.init(domain: domain, category: category, status: status, instanceID: instanceID, isVersionFour: isVersionFour, botVersion: botVersion), region: region, logger: logger, on: eventLoop)
    }
}