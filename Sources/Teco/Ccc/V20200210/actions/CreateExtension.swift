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

extension Ccc {
    /// CreateExtension请求参数结构体
    public struct CreateExtensionRequest: TCRequest {
        /// TCCC 实例应用 ID
        public let sdkAppId: UInt64

        /// 分机号
        public let extensionId: String

        /// 分机名称
        public let extensionName: String

        /// 绑定的技能组列表
        public let skillGroupIds: [UInt64]?

        /// 绑定的坐席邮箱
        public let relation: String?

        public init(sdkAppId: UInt64, extensionId: String, extensionName: String, skillGroupIds: [UInt64]? = nil, relation: String? = nil) {
            self.sdkAppId = sdkAppId
            self.extensionId = extensionId
            self.extensionName = extensionName
            self.skillGroupIds = skillGroupIds
            self.relation = relation
        }

        enum CodingKeys: String, CodingKey {
            case sdkAppId = "SdkAppId"
            case extensionId = "ExtensionId"
            case extensionName = "ExtensionName"
            case skillGroupIds = "SkillGroupIds"
            case relation = "Relation"
        }
    }

    /// CreateExtension返回参数结构体
    public struct CreateExtensionResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 创建话机账号
    @inlinable @discardableResult
    public func createExtension(_ input: CreateExtensionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateExtensionResponse> {
        self.client.execute(action: "CreateExtension", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建话机账号
    @inlinable @discardableResult
    public func createExtension(_ input: CreateExtensionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateExtensionResponse {
        try await self.client.execute(action: "CreateExtension", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建话机账号
    @inlinable @discardableResult
    public func createExtension(sdkAppId: UInt64, extensionId: String, extensionName: String, skillGroupIds: [UInt64]? = nil, relation: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateExtensionResponse> {
        self.createExtension(.init(sdkAppId: sdkAppId, extensionId: extensionId, extensionName: extensionName, skillGroupIds: skillGroupIds, relation: relation), region: region, logger: logger, on: eventLoop)
    }

    /// 创建话机账号
    @inlinable @discardableResult
    public func createExtension(sdkAppId: UInt64, extensionId: String, extensionName: String, skillGroupIds: [UInt64]? = nil, relation: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateExtensionResponse {
        try await self.createExtension(.init(sdkAppId: sdkAppId, extensionId: extensionId, extensionName: extensionName, skillGroupIds: skillGroupIds, relation: relation), region: region, logger: logger, on: eventLoop)
    }
}
