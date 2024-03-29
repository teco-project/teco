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
    /// ModifyExtension请求参数结构体
    public struct ModifyExtensionRequest: TCRequest {
        /// TCCC 实例应用 ID
        public let sdkAppId: UInt64

        /// 分机号
        public let extensionId: String

        /// 分机名称
        public let extensionName: String?

        /// 所属技能组列表
        public let skillGroupIds: [Int64]?

        /// 绑定坐席邮箱账号
        public let relation: String?

        public init(sdkAppId: UInt64, extensionId: String, extensionName: String? = nil, skillGroupIds: [Int64]? = nil, relation: String? = nil) {
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

    /// ModifyExtension返回参数结构体
    public struct ModifyExtensionResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改话机账号(绑定技能组、绑定坐席账号)
    @inlinable @discardableResult
    public func modifyExtension(_ input: ModifyExtensionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyExtensionResponse> {
        self.client.execute(action: "ModifyExtension", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改话机账号(绑定技能组、绑定坐席账号)
    @inlinable @discardableResult
    public func modifyExtension(_ input: ModifyExtensionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyExtensionResponse {
        try await self.client.execute(action: "ModifyExtension", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改话机账号(绑定技能组、绑定坐席账号)
    @inlinable @discardableResult
    public func modifyExtension(sdkAppId: UInt64, extensionId: String, extensionName: String? = nil, skillGroupIds: [Int64]? = nil, relation: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyExtensionResponse> {
        self.modifyExtension(.init(sdkAppId: sdkAppId, extensionId: extensionId, extensionName: extensionName, skillGroupIds: skillGroupIds, relation: relation), region: region, logger: logger, on: eventLoop)
    }

    /// 修改话机账号(绑定技能组、绑定坐席账号)
    @inlinable @discardableResult
    public func modifyExtension(sdkAppId: UInt64, extensionId: String, extensionName: String? = nil, skillGroupIds: [Int64]? = nil, relation: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyExtensionResponse {
        try await self.modifyExtension(.init(sdkAppId: sdkAppId, extensionId: extensionId, extensionName: extensionName, skillGroupIds: skillGroupIds, relation: relation), region: region, logger: logger, on: eventLoop)
    }
}
